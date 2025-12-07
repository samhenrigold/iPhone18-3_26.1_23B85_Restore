void sub_18F84C1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 *a16)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&STACK[0x238]);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(a16);
  _Unwind_Resume(a1);
}

void sub_18F84C718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

void APAC::ImmersiveRendererData_V2JSON(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v148 = *MEMORY[0x1E69E9840];
  if (*v1 != 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = "Unsupported ImmersiveRendererData version";
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v4 = v1;
  *v2 = 0;
  *(v2 + 8) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v3);
  v5 = *v4;
  v109[0] = 6;
  v110 = v5;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v109);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v109);
  v6 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v3, "mVersion");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v109);
  v7 = *v6;
  *v6 = 6;
  v109[0] = v7;
  v8 = *(v6 + 1);
  *(v6 + 1) = v5;
  v110 = v8;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v109);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v110, v7);
  v9 = v4[1];
  v107[0] = 6;
  v108 = v9;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v107);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v107);
  v10 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v3, "mNumberOfSARCs");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v107);
  v11 = *v10;
  *v10 = 6;
  v107[0] = v11;
  v12 = *(v10 + 1);
  *(v10 + 1) = v9;
  v108 = v12;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v10);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v107);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v108, v11);
  v13 = v4[2];
  v105[0] = 6;
  v106 = v13;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v105);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v105);
  v14 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v3, "mDataByteSize");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v105);
  v15 = *v14;
  *v14 = 6;
  v105[0] = v15;
  v16 = *(v14 + 1);
  *(v14 + 1) = v13;
  v106 = v16;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v14);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v105);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v106, v15);
  v17 = v4[3];
  v103[0] = 6;
  v104 = v17;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v103);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v103);
  v18 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v3, "mData");
  v19 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v18, "mLayoutSize");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v103);
  v20 = *v19;
  *v19 = 6;
  v103[0] = v20;
  v21 = *(v19 + 1);
  *(v19 + 1) = v17;
  v104 = v21;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v103);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v104, v20);
  v22 = v4[4];
  v101[0] = 6;
  v102 = v22;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v101);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v101);
  v23 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v3, "mData");
  v24 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v23, "mNumRendererDescriptions");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v101);
  v25 = *v24;
  *v24 = 6;
  v101[0] = v25;
  v26 = *(v24 + 1);
  *(v24 + 1) = v22;
  v102 = v26;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v24);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v101);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v102, v25);
  v27 = v4[5];
  v99[0] = 6;
  v100 = v27;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v99);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v99);
  v28 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v3, "mData");
  v29 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v28, "mEABLConfigSize");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v99);
  v30 = *v29;
  *v29 = 6;
  v99[0] = v30;
  v31 = *(v29 + 1);
  *(v29 + 1) = v27;
  v100 = v31;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v29);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v99);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v100, v30);
  *v111 = 0;
  v112 = 0;
  v113 = 0;
  v114 = 0;
  v116 = 0;
  v115 = 0;
  v117 = 4;
  v118 = 0;
  v119 = 1065353216;
  v120 = 0;
  memset(&v122[28], 0, 181);
  v122[340] = 0;
  v123 = 0;
  v124 = 0;
  v125 = 0;
  v126 = 0;
  v134[0] = 0;
  *(v134 + 5) = 0;
  v135 = 0;
  *(v136 + 5) = 0;
  v136[0] = 0;
  v137 = 0;
  v138 = 0;
  v139 = 0;
  v140 = 0;
  v141 = 0;
  v142 = 0;
  v121 = 0u;
  memset(v122, 0, 19);
  memset(&v122[344], 0, 13);
  memset(v133, 0, sizeof(v133));
  v132 = 0u;
  v131 = 0u;
  v130 = 0u;
  v129 = 0u;
  v128 = 0u;
  v127 = 0u;
  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v147 = 0;
  APAC::ImmersiveRendererData_V2_Manager::getMetadataConfig(v4, v111);
  if ((v32 & 1) == 0)
  {
    APAC::MetadataConfigJSON(v111, v97);
    v33 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v3, "mData");
    v34 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v33, "data");
    v35 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v34, "EABLMetadataConfig");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v97);
    v36 = *v35;
    *v35 = v97[0];
    v97[0] = v36;
    v37 = *(v35 + 8);
    *(v35 + 8) = v98;
    v98 = v37;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v35);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v97);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v98, v97[0]);
  }

  if (*v4 != 2)
  {
    __assert_rtn("getACLByteSize", "APACImmersiveRendererDataV2.cpp", 50, "inIRD.mVersion == kIRDVersion");
  }

  v38 = v4[3];
  if (v38)
  {
    operator new();
  }

  ACLPointer = APAC::ImmersiveRendererData_V2_Manager::getACLPointer(v4);
  memcpy(0, ACLPointer, v38);
  v40 = v3;
  ImmersiveRendererDescriptionPointer = APAC::ImmersiveRendererData_V2_Manager::getImmersiveRendererDescriptionPointer(v4);
  if (ImmersiveRendererDescriptionPointer && v4[4])
  {
    v42 = 0;
    v43 = (ImmersiveRendererDescriptionPointer + 8);
    do
    {
      v44 = v4;
      v45 = *(v43 - 2);
      v95[0] = 6;
      v96 = v45;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v95);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v95);
      v46 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v3, "mData");
      v47 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v46, "data");
      v48 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v47, "ImmersiveRendererDescriptions");
      v49 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v48, v42);
      v50 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v49, "mStartChannel");
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v95);
      v51 = *v50;
      *v50 = 6;
      v95[0] = v51;
      v52 = *(v50 + 1);
      *(v50 + 1) = v45;
      v96 = v52;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v50);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v95);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v96, v51);
      v53 = *(v43 - 1);
      v93[0] = 6;
      v94 = v53;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v93);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v93);
      v54 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v40, "mData");
      v55 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v54, "data");
      v56 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v55, "ImmersiveRendererDescriptions");
      v57 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v56, v42);
      v58 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v57, "mEndChannel");
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v93);
      v59 = *v58;
      *v58 = 6;
      v93[0] = v59;
      v60 = *(v58 + 1);
      *(v58 + 1) = v53;
      v94 = v60;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v58);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v93);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v94, v59);
      v61 = *v43;
      v91[0] = 5;
      v92 = v61;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v91);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v91);
      v62 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v40, "mData");
      v63 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v62, "data");
      v64 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v63, "ImmersiveRendererDescriptions");
      v65 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v64, v42);
      v66 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v65, "mRendererType");
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v91);
      v67 = *v66;
      *v66 = 5;
      v91[0] = v67;
      v68 = *(v66 + 1);
      *(v66 + 1) = v61;
      v92 = v68;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v66);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v91);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v92, v67);
      v69 = v43[1];
      v89[0] = 6;
      v90 = v69;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v89);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v89);
      v70 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v40, "mData");
      v71 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v70, "data");
      v72 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v71, "ImmersiveRendererDescriptions");
      v73 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v72, v42);
      v74 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v73, "mRendererSubType");
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v89);
      v75 = *v74;
      *v74 = 6;
      v89[0] = v75;
      v76 = *(v74 + 1);
      *(v74 + 1) = v69;
      v90 = v76;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v74);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v89);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v90, v75);
      v77 = v43[2];
      v87[0] = 6;
      v88 = v77;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v87);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v87);
      v78 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v40, "mData");
      v79 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v78, "data");
      v80 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v79, "ImmersiveRendererDescriptions");
      v81 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v80, v42);
      v82 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v81, "mRendererVersion");
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v87);
      v83 = *v82;
      *v82 = 6;
      v87[0] = v83;
      v84 = *(v82 + 1);
      *(v82 + 1) = v77;
      v88 = v84;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v82);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v87);
      v85 = v83;
      v3 = v40;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v88, v85);
      ++v42;
      v4 = v44;
      v43 += 5;
    }

    while (v42 < v44[4]);
  }

  APAC::Metadata::RendererMetadataConfig::~RendererMetadataConfig(&v112);
}

void sub_18F84D240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, char a31, uint64_t a32, char a33, uint64_t a34, char a35, uint64_t a36, char a37, uint64_t a38, char a39, uint64_t a40, char a41)
{
  APAC::Metadata::RendererMetadataConfig::~RendererMetadataConfig((v41 + 8));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v42);
  _Unwind_Resume(a1);
}

void APAC::Metadata::RendererMetadataConfig::~RendererMetadataConfig(APAC::Metadata::RendererMetadataConfig *this)
{
  v2 = *(this + 600);
  if (v2)
  {
    v3 = *(this + 601);
    v4 = *(this + 600);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 32);
        if (v5)
        {
          *(v3 - 24) = v5;
          operator delete(v5);
        }

        v6 = *(v3 - 248);
        if (v6)
        {
          *(v3 - 240) = v6;
          operator delete(v6);
        }

        v7 = *(v3 - 272);
        if (v7)
        {
          *(v3 - 264) = v7;
          operator delete(v7);
        }

        v8 = *(v3 - 312);
        if (v8)
        {
          *(v3 - 304) = v8;
          operator delete(v8);
        }

        v9 = *(v3 - 336);
        if (v9)
        {
          *(v3 - 328) = v9;
          operator delete(v9);
        }

        v10 = *(v3 - 360);
        if (v10)
        {
          *(v3 - 352) = v10;
          operator delete(v10);
        }

        v11 = *(v3 - 384);
        if (v11)
        {
          *(v3 - 376) = v11;
          operator delete(v11);
        }

        v12 = *(v3 - 408);
        if (v12)
        {
          *(v3 - 400) = v12;
          operator delete(v12);
        }

        v13 = *(v3 - 432);
        if (v13)
        {
          *(v3 - 424) = v13;
          operator delete(v13);
        }

        v3 -= 1248;
      }

      while (v3 != v2);
      v4 = *(this + 600);
    }

    *(this + 601) = v2;
    operator delete(v4);
  }

  v14 = *(this + 597);
  if (v14)
  {
    v15 = *(this + 598);
    v16 = *(this + 597);
    if (v15 != v14)
    {
      do
      {
        v17 = *(v15 - 24);
        if (v17)
        {
          *(v15 - 16) = v17;
          operator delete(v17);
        }

        v15 -= 48;
      }

      while (v15 != v14);
      v16 = *(this + 597);
    }

    *(this + 598) = v14;
    operator delete(v16);
  }

  v18 = *(this + 594);
  if (v18)
  {
    *(this + 595) = v18;
    operator delete(v18);
  }

  v19 = *(this + 579);
  if (v19)
  {
    *(this + 580) = v19;
    operator delete(v19);
  }

  v20 = *(this + 576);
  if (v20)
  {
    *(this + 577) = v20;
    operator delete(v20);
  }

  v21 = *(this + 573);
  if (v21)
  {
    *(this + 574) = v21;
    operator delete(v21);
  }

  v22 = *(this + 570);
  if (v22)
  {
    *(this + 571) = v22;
    operator delete(v22);
  }

  v23 = *(this + 567);
  if (v23)
  {
    *(this + 568) = v23;
    operator delete(v23);
  }
}

void sub_18F84D57C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

uint64_t GetMagicCookieSizeFromISOSampleEntry(uint64_t a1, unsigned int a2, int *a3)
{
  v3 = *(a1 + 4);
  if (v3 == 1936552548)
  {
    if (a2 < 0x2C)
    {
      return 2003329396;
    }

    v3 = *(a1 + 40);
  }

  v5 = bswap32(v3);
  if (v5 <= 1702061170)
  {
    if (v5 <= 1684103986)
    {
      if (v5 != 1633889587)
      {
        v9 = a2 - 72;
        if (a2 - 96 >= 0xFFFFFFC4)
        {
          v10 = 0;
        }

        else
        {
          v10 = 48;
        }

        if (v9 >= 0xFFFFFFDC)
        {
          v11 = 2003329396;
        }

        else
        {
          v11 = 0;
        }

        if (v9 >= 0x18)
        {
          v12 = v10;
        }

        else
        {
          v12 = 24;
        }

        if (v5 == 1634492771)
        {
          result = v11;
        }

        else
        {
          result = 0;
        }

        if (v5 == 1634492771)
        {
          v6 = v12;
        }

        else
        {
          v6 = 0;
        }

        goto LABEL_46;
      }
    }

    else if (v5 != 1684103987)
    {
      if (v5 != 1684366131)
      {
        result = 0;
        v6 = 0;
        if (v5 != 1700998451)
        {
          goto LABEL_46;
        }
      }

      goto LABEL_14;
    }

    v13 = a2 - 36;
    v14 = a2 - 36 > 0xB;
LABEL_40:
    if (v14)
    {
      result = 561213539;
    }

    else
    {
      result = 0;
    }

    if (v14)
    {
      v6 = 0;
    }

    else
    {
      v6 = v13;
    }

    goto LABEL_46;
  }

  if (v5 > 1836069984)
  {
    result = 0;
    if (v5 == 1935767394 || v5 == 1935764850)
    {
      v6 = 47;
      goto LABEL_46;
    }

    v6 = 0;
    v7 = 1836069985;
    goto LABEL_38;
  }

  if (v5 == 1702061171)
  {
LABEL_39:
    v13 = a2 - 48;
    v14 = a2 - 48 > 0x1000;
    goto LABEL_40;
  }

  if (v5 == 1716281667)
  {
LABEL_14:
    result = 0;
    v6 = a2 - 36;
    goto LABEL_46;
  }

  result = 0;
  v6 = 0;
  v7 = 1832149349;
LABEL_38:
  if (v5 == v7)
  {
    goto LABEL_39;
  }

LABEL_46:
  *a3 = v6;
  return result;
}

uint64_t GetMagicCookieFromISOSampleEntry(int *a1, unsigned int a2, _DWORD *a3, uint64_t a4)
{
  v4 = 561211770;
  if (a3)
  {
    LODWORD(__n[0]) = 0;
    if (GetMagicCookieSizeFromISOSampleEntry(a1, a2, __n))
    {
      return 2003329396;
    }

    v9 = __n[0];
    if (*a3 < LODWORD(__n[0]))
    {
      return v4;
    }

    v10 = a1[1];
    if (v10 == 1936552548)
    {
      v4 = 2003329396;
      if (a2 < 0x2C)
      {
        return v4;
      }

      v10 = a1[10];
    }

    v11 = bswap32(v10);
    v4 = 1718449215;
    if (v11 > 1702061170)
    {
      if (v11 > 1836069984)
      {
        if (v11 == 1935767394 || v11 == 1935764850)
        {
          *a4 = 0x616D72660C000000;
          *(a4 + 8) = bswap32(v11);
          *(a4 + 12) = 0x61646E650A000000;
          *(a4 + 20) = 0;
          v18 = *(a1 + 52);
          v19 = *(a1 + 11);
          *(a4 + 22) = a1[9];
          *(a4 + 26) = 1919770980;
          *(a4 + 30) = v19;
          *(a4 + 38) = v18;
          *(a4 + 39) = 0x8000000;
          goto LABEL_30;
        }

        v12 = 1836069985;
        goto LABEL_21;
      }

      if (v11 == 1702061171)
      {
LABEL_22:
        v13 = a1 + 12;
LABEL_29:
        memcpy(a4, v13, LODWORD(__n[0]));
        goto LABEL_30;
      }

      if (v11 != 1716281667)
      {
        v12 = 1832149349;
LABEL_21:
        if (v11 != v12)
        {
          return v4;
        }

        goto LABEL_22;
      }

      goto LABEL_28;
    }

    if (v11 <= 1684103986)
    {
      if (v11 != 1633889587)
      {
        if (v11 != 1634492771)
        {
          return v4;
        }

        v14 = *a1;
        v15 = *(a1 + 3);
        *(a4 + 16) = *(a1 + 8);
        *a4 = v15;
        if (v14 == 1610612736 && a1[19] == 1851877475)
        {
          v16 = *(a1 + 18);
          *(a4 + 40) = *(a1 + 11);
          *(a4 + 24) = v16;
        }

LABEL_30:
        v4 = 0;
        *a3 = v9;
        return v4;
      }

      goto LABEL_28;
    }

    if (v11 == 1684103987 || v11 == 1684366131 || v11 == 1700998451)
    {
LABEL_28:
      v13 = a1 + 9;
      goto LABEL_29;
    }
  }

  return v4;
}

void DSPGraph::IsoGroup::addBefore(DSPGraph::IsoGroup *this, DSPGraph::Box *a2, DSPGraph::Box *a3)
{
  v28 = a2;
  std::__hash_table<DSPGraph::Box *,std::hash<DSPGraph::Box *>,std::equal_to<DSPGraph::Box *>,std::allocator<DSPGraph::Box *>>::__emplace_unique_key_args<DSPGraph::Box *,DSPGraph::Box * const&>(this + 4, a2, &v28);
  *(a2 + 2) = this;
  v7 = *(this + 28);
  v6 = *(this + 29);
  v8 = v7;
  if (v7 != v6)
  {
    while (*v8 != a3)
    {
      if (++v8 == v6)
      {
        v8 = *(this + 29);
        break;
      }
    }
  }

  v9 = *(this + 30);
  if (v6 >= v9)
  {
    v12 = v6 - v7 + 1;
    if (v12 >> 61)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v13 = v8 - v7;
    v14 = v9 - v7;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      std::allocator<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> *>::allocate_at_least[abi:ne200100](v15);
    }

    v17 = (8 * v16);
    v18 = 8 * v16;
    if (!v16)
    {
      if (v13 < 1)
      {
        if (v8 == v7)
        {
          v21 = 1;
        }

        else
        {
          v21 = v13 >> 2;
        }

        std::allocator<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> *>::allocate_at_least[abi:ne200100](v21);
      }

      v17 = (v17 - (((v13 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
      v18 = v17;
    }

    *v17 = a2;
    v22 = v18 + 8;
    memcpy((v18 + 8), v8, *(this + 29) - v8);
    v23 = *(this + 28);
    v27 = (v22 + *(this + 29) - v8);
    *(this + 29) = v8;
    v24 = v8 - v23;
    v25 = v17 - (v8 - v23);
    memcpy(v25, v23, v24);
    v26 = *(this + 28);
    *(this + 28) = v25;
    *(this + 232) = v27;
    if (v26)
    {

      operator delete(v26);
    }
  }

  else if (v8 == v6)
  {
    *v6 = a2;
    *(this + 29) = v6 + 1;
  }

  else
  {
    v10 = v8 + 1;
    if (v6 < 8)
    {
      v11 = *(this + 29);
    }

    else
    {
      *v6 = *(v6 - 1);
      v11 = v6 + 1;
    }

    *(this + 29) = v11;
    if (v6 != v10)
    {
      memmove(v8 + 1, v8, v6 - v10);
      v11 = *(this + 29);
    }

    v19 = v11 <= &v28 || v8 > &v28;
    v20 = 8;
    if (v19)
    {
      v20 = 0;
    }

    *v8 = *(&v28 + v20);
  }
}

void sub_18F84DBE4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

os_log_t ___ZN8DSPGraph6getLogEv_block_invoke_10792()
{
  result = os_log_create("com.apple.coreaudio", "DSPGraph");
  DSPGraph::getLog(void)::gLog = result;
  return result;
}

uint64_t DSPGraph::IsoGroup::uninitializeBoxes(uint64_t this)
{
  v1 = *(this + 224);
  v2 = *(this + 232);
  while (v1 != v2)
  {
    v3 = *v1++;
    this = (*(*v3 + 584))(v3);
  }

  return this;
}

uint64_t DSPGraph::IsoGroup::initializePropertyTaps(uint64_t this)
{
  v1 = *(this + 224);
  v2 = *(this + 232);
  while (v1 != v2)
  {
    v3 = *v1++;
    this = (*(*v3 + 608))(v3);
  }

  return this;
}

uint64_t DSPGraph::IsoGroup::uninitializePropertyTaps(uint64_t this)
{
  v1 = *(this + 224);
  v2 = *(this + 232);
  while (v1 != v2)
  {
    v3 = *v1++;
    this = (*(*v3 + 616))(v3);
  }

  return this;
}

void *DSPGraph::IsoGroup::reset(void *this)
{
  this[32] = 0;
  this[36] = 0;
  v1 = this[28];
  v2 = this[29];
  while (v1 != v2)
  {
    v3 = *v1++;
    this = (*(*v3 + 632))(v3);
  }

  return this;
}

void DSPGraph::IsoGroup::sortUpstream(uint64_t a1, void **a2)
{
  for (i = *(a1 + 112); i; i = *i)
  {
    DSPGraph::IsoGroup::topologicalSort(*(i[2] + 848), a2);
  }
}

void DSPGraph::IsoGroup::addInput(DSPGraph::IsoGroup *this, DSPGraph::FCBox *a2)
{
  v4 = a2;
  std::__hash_table<DSPGraph::FCBox *,std::hash<DSPGraph::FCBox *>,std::equal_to<DSPGraph::FCBox *>,std::allocator<DSPGraph::FCBox *>>::__emplace_unique_key_args<DSPGraph::FCBox *,DSPGraph::FCBox * const&>(this + 24, a2, &v4);
  *(a2 + 107) = this;
}

void DSPGraph::IsoGroup::addOutput(DSPGraph::IsoGroup *this, DSPGraph::FCBox *a2)
{
  v4 = a2;
  std::__hash_table<DSPGraph::FCBox *,std::hash<DSPGraph::FCBox *>,std::equal_to<DSPGraph::FCBox *>,std::allocator<DSPGraph::FCBox *>>::__emplace_unique_key_args<DSPGraph::FCBox *,DSPGraph::FCBox * const&>(this + 34, a2, &v4);
  *(a2 + 106) = this;
}

UInt32 AudioComponentCount(const AudioComponentDescription *inDesc)
{
  if (!inDesc)
  {
    return 0;
  }

  v6 = *inDesc;
  GlobalComponentPluginMgr(v5);
  v2 = *v5[1]->__m_.__opaque;
  if (v2)
  {
    v3 = 0;
    do
    {
      v3 += AudioComponentMgr_Base::match(v2, &v6, v1);
      v2 = *(v2 + 3);
    }

    while (v2);
  }

  else
  {
    v3 = 0;
  }

  if (v5[0])
  {
    std::recursive_mutex::unlock(v5[0]);
  }

  return v3;
}

void sub_18F84DEEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::recursive_mutex *a9)
{
  if (a9)
  {
    std::recursive_mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

void instantiate(uint64_t (***a1)(void), uint64_t a2, int a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1 && (v7 = (**a1)(a1)) != 0)
  {
    v8 = v7;
    (*(*v7 + 104))(&v14);
    if (shouldLoadV2OutOfProcess((v8 + 36), a2, &v14))
    {
      v9 = -1;
      if (a3 == 2 && (*(v8 + 48) & 0xC) == 0)
      {
        if (!gAudioComponentLogCategory)
        {
          operator new();
        }

        v10 = *gAudioComponentLogCategory;
        v12 = os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_DEFAULT);
        v9 = 0;
        if (v12)
        {
          buf[0] = 136315394;
          *&buf[1] = "AudioComponentAPI.cpp";
          v16 = 1024;
          v17 = 250;
          _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Opening v2 AU out-of-process, synchronously.", buf, 0x12u);
          v9 = 0;
        }
      }

      APComponent::name(&cf, *(v8 + 64));
      create_shared_APComponent_RemoteV2(buf, v8 + 36, v9, &cf, *(v8 + 56), &v14);
    }

    (*(*v8 + 88))(v8, a2, a3 == 1, a4);
    if (v14)
    {
      CFRelease(v14);
    }
  }

  else
  {
    v11 = *(a4 + 16);

    v11(a4, 0, 4294964296);
  }
}

void sub_18F84E1F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ArrayRef::~ArrayRef(va);
  _Unwind_Resume(a1);
}

uint64_t AudioUnitConnectToInstance(uint64_t a1, CFTypeRef cf, void *a3, uint64_t a4)
{
  if (a1)
  {
    v4 = a3;
    if (cf)
    {
      CFRetain(cf);
      cfa = cf;
      v7 = CFGetTypeID(cf);
      if (v7 != CFStringGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      if (v4)
      {
        goto LABEL_5;
      }
    }

    else
    {
      cfa = 0;
      if (a3)
      {
LABEL_5:
        xpc_retain(v4);
LABEL_9:
        if (object_getClass(v4) == MEMORY[0x1E69E9E90])
        {
          xpc_retain(v4);
          v9 = v4;
LABEL_12:
          xpc_release(v4);
          v12 = v9;
          xpc_null_create();
          v11 = cfa;
          cfa = 0;
          create_shared_APComponent_RemoteV2WithExistingConnection(&v13, a1, &v12, &v11);
        }

LABEL_10:
        v9 = xpc_null_create();
        goto LABEL_12;
      }
    }

    v4 = xpc_null_create();
    if (!v4)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  return 4294956418;
}

void sub_18F84E3F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14)
{
  __cxa_free_exception(v14);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a14);
  _Unwind_Resume(a1);
}

uint64_t AudioComponentInstanceNew_OutOfProcess(OpaqueAudioComponent *a1, void *a2)
{
  if (!a2)
  {
    return 4294967246;
  }

  *a2 = 0;
  memset(&v17, 0, sizeof(v17));
  Impl_AudioGetComponentInfo(a1, &v17, 0);
  if ((v17.componentFlags & 0xC) != 0)
  {
    return 4294900553;
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __AudioComponentInstanceNew_OutOfProcess_block_invoke;
  v8[3] = &unk_1E72C1C68;
  v8[5] = &v9;
  v8[6] = a2;
  v8[4] = &v13;
  instantiate(a1, 1, 2, v8);
  if (v10[3])
  {
    v4 = *(v14 + 6);
  }

  else
  {
    v5 = CADefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_FAULT, "AudioComponentInstanceNew_OutOfProcess ran async!", v7, 2u);
    }

    v4 = 4294956420;
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  return v4;
}

void sub_18F84E5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 72), 8);
  _Unwind_Resume(a1);
}

BOOL AllowUnsafeMainThreadServicing(const char *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = getenv("CA_AllowUnsafeMainThreadServicing");
  if (v2)
  {
    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v3 = *gAudioComponentLogCategory;
    if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = "AudioComponentAPI.cpp";
      v8 = 1024;
      v9 = 367;
      v10 = 2080;
      v11 = a1;
      _os_log_impl(&dword_18F5DF000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Allowing unsafe servicing of main thread (%s).", &v6, 0x1Cu);
    }
  }

  return v2 != 0;
}

OSStatus AudioComponentGetVersion(AudioComponent inComponent, UInt32 *outVersion)
{
  result = -50;
  if (inComponent && outVersion)
  {
    v5 = (**inComponent)(inComponent);
    if (v5)
    {
      v6 = (**v5)(v5);
      result = 0;
      *outVersion = *(v6 + 56);
    }

    else
    {
      return -3000;
    }
  }

  return result;
}

uint64_t AudioComponentCopyTagsInfo(uint64_t (***a1)(void), void *a2)
{
  result = 4294967246;
  if (a1 && a2)
  {
    *a2 = 0;
    v5 = (**a1)(a1);
    if (v5)
    {
      v6 = *(v5 + 120);
      if (v6)
      {
        CFRetain(*(v5 + 120));
        if (CFArrayGetCount(v6))
        {
          *a2 = v6;
          CFRetain(v6);
        }

        CFRelease(v6);
      }

      return 0;
    }

    else
    {
      return 4294964296;
    }
  }

  return result;
}

void sub_18F84E8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ArrayRef::~ArrayRef(va);
  _Unwind_Resume(a1);
}

OSStatus AudioComponentValidate(AudioComponent inComponent, CFDictionaryRef inValidationParameters, AudioComponentValidationResult *outValidationResult)
{
  result = -50;
  if (inComponent && outValidationResult)
  {
    *outValidationResult = kAudioComponentValidationResult_Unknown;
    v7 = (**inComponent)(inComponent);
    if (!v7)
    {
      return -3000;
    }

    v8 = v7;
    v17 = 0;
    if (!inValidationParameters)
    {
      goto LABEL_11;
    }

    v15 = inValidationParameters;
    v16 = 0;
    v14 = 0;
    CACFDictionary::GetBool(&v15, @"clearInfoHelperCache", &v14);
    if (v14)
    {
      memset(&v13, 0, sizeof(v13));
      clearConfigInfoCache(&v13, 0);
      *(v8 + 128) = 0;
      *(v8 + 132) = 1;
      CACFDictionary::~CACFDictionary(&v15);
      return 0;
    }

    if ((CACFDictionary::GetBool(&v15, @"ForceValidation", &v17) & 1) == 0)
    {
      v17 = 0;
    }

    CACFDictionary::~CACFDictionary(&v15);
    if (!v17)
    {
LABEL_11:
      if (*(v8 + 128) == 1)
      {
        *outValidationResult = *(v8 + 132);
        return 0;
      }
    }

    v9 = (**inComponent)(inComponent);
    if (v9)
    {
      v13 = *((**v9)(v9) + 36);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __AudioComponentValidate_block_invoke;
    v11[3] = &__block_descriptor_tmp_12;
    v12 = v13;
    v11[4] = v8;
    v11[5] = inValidationParameters;
    v11[6] = outValidationResult;
    Synchronously(v11);
    v10 = *outValidationResult;
    if (*outValidationResult != kAudioComponentValidationResult_TimedOut)
    {
      *(v8 + 128) = 1;
      *(v8 + 132) = v10;
    }

    return 0;
  }

  return result;
}

void __AudioComponentValidate_block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 72);
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 56);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __AudioComponentValidate_block_invoke_2;
  v5[3] = &unk_1E72C1CE0;
  v4 = *(a1 + 48);
  v5[4] = a2;
  v5[5] = v4;
  validateComponent(&v6, v3, v2, v5);
}

OSStatus AudioComponentValidateWithResults(AudioComponent inComponent, CFDictionaryRef inValidationParameters, void *inCompletionHandler)
{
  if (!inComponent)
  {
    return -50;
  }

  v6 = (**inComponent)(inComponent);
  if (!v6)
  {
    return -3000;
  }

  v7 = v6;
  if (!inValidationParameters)
  {
    goto LABEL_9;
  }

  v17 = inValidationParameters;
  v18 = 0;
  v16 = 0;
  CACFDictionary::GetBool(&v17, @"clearInfoHelperCache", &v16);
  if (!v16)
  {
    CACFDictionary::~CACFDictionary(&v17);
LABEL_9:
    v13 = 0uLL;
    v14 = 0;
    v9 = (**inComponent)(inComponent);
    if (v9)
    {
      v10 = (**v9)(v9);
      v13 = *(v10 + 36);
      v14 = *(v10 + 52);
    }

    v11 = *(v7 + 56);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = __AudioComponentValidateWithResults_block_invoke;
    v12[3] = &unk_1E72C1D28;
    v12[4] = inCompletionHandler;
    v12[5] = v7;
    validateComponent(&v13, v11, inValidationParameters, v12);
    return 0;
  }

  memset(&v15, 0, sizeof(v15));
  clearConfigInfoCache(&v15, 0);
  *(v7 + 128) = 0;
  *(v7 + 132) = 1;
  (*(inCompletionHandler + 2))(inCompletionHandler, 0, 0);
  CACFDictionary::~CACFDictionary(&v17);
  return 0;
}

uint64_t __AudioComponentValidateWithResults_block_invoke(uint64_t a1, int a2)
{
  if (a2 != 3)
  {
    v2 = *(a1 + 40);
    *(v2 + 128) = 1;
    *(v2 + 132) = a2;
  }

  return (*(*(a1 + 32) + 16))();
}

OSStatus AudioComponentCopyConfigurationInfo(AudioComponent inComponent, CFDictionaryRef *outConfigurationInfo)
{
  if (!outConfigurationInfo)
  {
    return -50;
  }

  *outConfigurationInfo = 0;
  if (!inComponent)
  {
    return -3000;
  }

  v3 = (**inComponent)(inComponent);
  if (!v3)
  {
    return -3000;
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __AudioComponentCopyConfigurationInfo_block_invoke;
  v5[3] = &__block_descriptor_tmp_16_10841;
  v5[4] = v3;
  v5[5] = outConfigurationInfo;
  Synchronously(v5);
  if (*outConfigurationInfo)
  {
    return 0;
  }

  else
  {
    return 1668445032;
  }
}

uint64_t __AudioComponentCopyConfigurationInfo_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __AudioComponentCopyConfigurationInfo_block_invoke_2;
  v6[3] = &unk_1E72C1D50;
  v4 = *(a1 + 40);
  v6[4] = a2;
  v6[5] = v4;
  return getConfigurationInfo((v2 + 36), v3, v6);
}

void non-virtual thunk toIPCAURegistrar::~IPCAURegistrar(IPCAURegistrar *this)
{
  IPCAURegistrar::~IPCAURegistrar((this - 80));

  JUMPOUT(0x193ADF220);
}

{
  IPCAURegistrar::~IPCAURegistrar((this - 80));
}

void IPCAURegistrar::~IPCAURegistrar(IPCAURegistrar *this)
{
  *this = &unk_1F0336C80;
  v2 = (this + 80);
  *(this + 10) = &unk_1F0336CC8;
  v3 = *(this + 37);
  if (v3)
  {
    *(this + 38) = v3;
    operator delete(v3);
  }

  OwnedPtrVector<PublishedAU_Registrar *>::~OwnedPtrVector(this + 256);
  v4 = *(this + 29);
  if (v4)
  {
    *(this + 30) = v4;
    operator delete(v4);
  }

  v5 = *(this + 28);
  if (v5)
  {
    dispatch_release(v5);
  }

  *this = MEMORY[0x1E69E5070] + 16;
  *(this + 10) = MEMORY[0x1E69E5070] + 88;
  v6 = *(this + 25);
  if (v6)
  {
    *(this + 26) = v6;
    operator delete(v6);
  }

  MEMORY[0x193ADE250](this + 112);
  CADeprecated::XMachPortDeathListener::~XMachPortDeathListener(v2);

  CADeprecated::XBasicMIGServer::~XBasicMIGServer(this);
}

{
  IPCAURegistrar::~IPCAURegistrar(this);

  JUMPOUT(0x193ADF220);
}

uint64_t OwnedPtrVector<PublishedAU_Registrar *>::~OwnedPtrVector(uint64_t a1)
{
  *a1 = &unk_1F0336D70;
  OwnedPtrVector<PublishedAU_Registrar *>::erase(a1, *(a1 + 8), *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

void *OwnedPtrVector<PublishedAU_Registrar *>::erase(void *result, uint64_t *__dst, uint64_t *__src)
{
  if (__src != __dst)
  {
    v5 = result;
    v6 = __dst;
    do
    {
      result = *v6;
      if (*v6)
      {
        result = (*(*result + 8))(result);
      }

      ++v6;
    }

    while (v6 != __src);
    v7 = v5[2];
    v8 = v7 - __src;
    if (v7 != __src)
    {
      result = memmove(__dst, __src, v7 - __src);
    }

    v5[2] = __dst + v8;
  }

  return result;
}

void OwnedPtrVector<PublishedAU_Registrar *>::~OwnedPtrVector(uint64_t a1)
{
  OwnedPtrVector<PublishedAU_Registrar *>::~OwnedPtrVector(a1);

  JUMPOUT(0x193ADF220);
}

void IPCAURegistrar::ClientDied(IPCAURegistrar *this, CADeprecated::XMachServer::Client *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 2);
  if (*(v4 + 176) == a2)
  {
    *(v4 + 176) = 0;
    if (kInterAppAudioScope)
    {
      v5 = *kInterAppAudioScope;
      if (!*kInterAppAudioScope)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_23;
    }

    *buf = 136315394;
    v37 = "IPCAURegistrar.mm";
    v38 = 1024;
    v39 = 1130;
    v6 = "%25s:%-5d server port";
    goto LABEL_22;
  }

  if (*(v4 + 184) != a2)
  {
    if (*(v4 + 192) != a2)
    {
      goto LABEL_23;
    }

    *(v4 + 192) = 0;
    if (kInterAppAudioScope)
    {
      v5 = *kInterAppAudioScope;
      if (!*kInterAppAudioScope)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_23;
    }

    *buf = 136315394;
    v37 = "IPCAURegistrar.mm";
    v38 = 1024;
    v39 = 1136;
    v6 = "%25s:%-5d extension port";
LABEL_22:
    _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_DEBUG, v6, buf, 0x12u);
    goto LABEL_23;
  }

  *(v4 + 184) = 0;
  if (!kInterAppAudioScope)
  {
    v5 = MEMORY[0x1E69E9C10];
    goto LABEL_17;
  }

  v5 = *kInterAppAudioScope;
  if (*kInterAppAudioScope)
  {
LABEL_17:
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_23;
    }

    *buf = 136315394;
    v37 = "IPCAURegistrar.mm";
    v38 = 1024;
    v39 = 1133;
    v6 = "%25s:%-5d client port";
    goto LABEL_22;
  }

LABEL_23:
  (*(*a2 + 8))(a2);
  v7 = *(v4 + 176);
  if (v7 && *(v7 + 12))
  {
    return;
  }

  v8 = *(v4 + 184);
  if (v8)
  {
    if (*(v8 + 12))
    {
      return;
    }
  }

  if (*(v4 + 192))
  {
    return;
  }

  v9 = *(v4 + 12);
  if (!kInterAppAudioScope)
  {
    v10 = MEMORY[0x1E69E9C10];
    goto LABEL_32;
  }

  v10 = *kInterAppAudioScope;
  if (*kInterAppAudioScope)
  {
LABEL_32:
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      MEMORY[0x193ADE470](__p, v9);
      v11 = v35 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v37 = "IPCAURegistrar.mm";
      v38 = 1024;
      v39 = 1147;
      v40 = 2080;
      v41 = v11;
      _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d found process '%s'", buf, 0x1Cu);
      if (v35 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v12 = *(this + 38);
  v13 = 0xAAAAAAAAAAAAAAABLL * (&v12[-*(this + 37)] >> 3);
  if (v13 >= 1)
  {
    v14 = v13 & 0x7FFFFFFF;
    v15 = v14 + 1;
    v16 = 24 * v14;
    v17 = -24 * v14;
    do
    {
      v18 = *(this + 37);
      v19 = (v18 + v16);
      if (*(v18 + v16 - 4) == v9 || *(v18 + v16 - 8) == v9)
      {
        v21 = v19 - 24;
        v22 = &v12[v17 - v18];
        if (v19 != v12)
        {
          memmove(v19 - 24, v19, &v12[v17 - v18]);
        }

        v12 = &v21[v22];
        *(this + 38) = &v21[v22];
      }

      --v15;
      v16 -= 24;
      v17 += 24;
    }

    while (v15 > 1);
  }

  v23 = *(this + 34) - *(this + 33);
  if ((v23 >> 3) >= 1)
  {
    v24 = (v23 >> 3) & 0x7FFFFFFF;
    while (1)
    {
      v25 = *(*(this + 33) + 8 * (v24 - 1));
      if (*(v25 + 64) == v4)
      {
        break;
      }

LABEL_52:
      if (v24-- <= 1)
      {
        goto LABEL_65;
      }
    }

    IPCAURegistrar::UnpublishAU(this, *(v25 + 8), (v25 + 24));
    v27 = *(this + 29);
    v28 = *(this + 30);
    while (1)
    {
      if (v27 == v28)
      {
        goto LABEL_52;
      }

      v29 = *v27;
      if (*v27 != v4)
      {
        break;
      }

LABEL_64:
      ++v27;
    }

    if (std::__hash_table<RegistrarClientProcess *,std::hash<RegistrarClientProcess *>,std::equal_to<RegistrarClientProcess *>,std::allocator<RegistrarClientProcess *>>::find<RegistrarClientProcess *>(v29 + 10, v4))
    {
      std::__hash_table<RegistrarClientProcess *,std::hash<RegistrarClientProcess *>,std::equal_to<RegistrarClientProcess *>,std::allocator<RegistrarClientProcess *>>::__erase_unique<RegistrarClientProcess *>(v29 + 10, v4);
      v30 = v29 + 5;
      if (!std::__hash_table<RegistrarClientProcess *,std::hash<RegistrarClientProcess *>,std::equal_to<RegistrarClientProcess *>,std::allocator<RegistrarClientProcess *>>::find<RegistrarClientProcess *>(v29 + 5, v4))
      {
        goto LABEL_63;
      }
    }

    else
    {
      v30 = v29 + 5;
      if (!std::__hash_table<RegistrarClientProcess *,std::hash<RegistrarClientProcess *>,std::equal_to<RegistrarClientProcess *>,std::allocator<RegistrarClientProcess *>>::find<RegistrarClientProcess *>(v29 + 5, v4))
      {
        goto LABEL_64;
      }
    }

    std::__hash_table<RegistrarClientProcess *,std::hash<RegistrarClientProcess *>,std::equal_to<RegistrarClientProcess *>,std::allocator<RegistrarClientProcess *>>::__erase_unique<RegistrarClientProcess *>(v30, v4);
LABEL_63:
    RegistrarClientProcess::CheckProcessAssertion(v29);
    goto LABEL_64;
  }

LABEL_65:
  v32 = *(this + 29);
  v31 = *(this + 30);
  while (v32 != v31)
  {
    if (*v32 == v4)
    {
      v33 = v31 - (v32 + 8);
      if (v31 != v32 + 8)
      {
        memmove(v32, v32 + 8, v31 - (v32 + 8));
      }

      *(this + 30) = &v32[v33];
      break;
    }

    v32 += 8;
  }

  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

uint64_t IPCAURegistrar::UnpublishAU(IPCAURegistrar *this, uint64_t a2, const AudioComponentDescription *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (kInterAppAudioScope)
  {
    v6 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    MEMORY[0x193ADE470](__p, a2);
    v7 = v20;
    v8 = __p[0];
    CAFormatter::CAFormatter(&v18, a3);
    v9 = __p;
    if (v7 < 0)
    {
      v9 = v8;
    }

    *buf = 136315906;
    v22 = "IPCAURegistrar.mm";
    v23 = 1024;
    v24 = 785;
    v25 = 2080;
    v26 = v9;
    v27 = 2080;
    v28 = v18;
    _os_log_impl(&dword_18F5DF000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d process '%s', %s", buf, 0x26u);
    if (v18)
    {
      free(v18);
    }

    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_12:
  v11 = *(this + 33);
  v10 = *(this + 34);
  if (v11 == v10)
  {
    return 4294967246;
  }

  while (1)
  {
    v12 = *v11;
    if (*&a3->componentType == *(*v11 + 24) && a3->componentManufacturer == *(*v11 + 32))
    {
      break;
    }

    if (++v11 == v10)
    {
      return 4294967246;
    }
  }

  if (*(v12 + 8) != a2)
  {
    if (kInterAppAudioScope)
    {
      v16 = *kInterAppAudioScope;
      if (!*kInterAppAudioScope)
      {
        return 4294967246;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v22 = "IPCAURegistrar.mm";
      v23 = 1024;
      v24 = 791;
      _os_log_impl(&dword_18F5DF000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d error: wrong pid", buf, 0x12u);
    }

    return 4294967246;
  }

  if (*(v12 + 60) != 1)
  {
    if (v12)
    {
      (*(*v12 + 8))(v12);
      v10 = *(this + 34);
    }

    v17 = v10 - (v11 + 1);
    if (v10 != v11 + 1)
    {
      memmove(v11, v11 + 1, v10 - (v11 + 1));
    }

    *(this + 34) = v11 + v17;
    IPCAURegistrar::NotifySubscribers(this);
    return 0;
  }

  *(v12 + 8) = 0;
  *(v12 + 61) = 1;
  *(v12 + 64) = 0;
  *(v12 + 80) = *(v12 + 72);
  if (kInterAppAudioScope)
  {
    v15 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      return 0;
    }
  }

  else
  {
    v15 = MEMORY[0x1E69E9C10];
  }

  result = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    *buf = 136315394;
    v22 = "IPCAURegistrar.mm";
    v23 = 1024;
    v24 = 802;
    _os_log_impl(&dword_18F5DF000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d checked out registration", buf, 0x12u);
    return 0;
  }

  return result;
}

void sub_18F84F974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<RegistrarClientProcess *,std::hash<RegistrarClientProcess *>,std::equal_to<RegistrarClientProcess *>,std::allocator<RegistrarClientProcess *>>::find<RegistrarClientProcess *>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
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
      if (result[2] == a2)
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

void std::__hash_table<RegistrarClientProcess *,std::hash<RegistrarClientProcess *>,std::equal_to<RegistrarClientProcess *>,std::allocator<RegistrarClientProcess *>>::__erase_unique<RegistrarClientProcess *>(uint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
    v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
    v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    v6 = vcnt_s8(v2);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      v7 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
      if (v5 >= *&v2)
      {
        v7 = v5 % *&v2;
      }
    }

    else
    {
      v7 = v5 & (*&v2 - 1);
    }

    v8 = *a1;
    v9 = *(*a1 + 8 * v7);
    if (v9)
    {
      v10 = *v9;
      if (v10)
      {
        v11 = *&v2 - 1;
        do
        {
          v12 = v10[1];
          if (v12 == v5)
          {
            if (v10[2] == a2)
            {
              v13 = v10[1];
              if (v6.u32[0] > 1uLL)
              {
                if (v13 >= *&v2)
                {
                  v13 %= *&v2;
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
              if (v15 == a1 + 2)
              {
                goto LABEL_36;
              }

              v16 = v15[1];
              if (v6.u32[0] > 1uLL)
              {
                if (v16 >= *&v2)
                {
                  v16 %= *&v2;
                }
              }

              else
              {
                v16 &= v11;
              }

              if (v16 != v13)
              {
LABEL_36:
                if (!*v10)
                {
                  goto LABEL_37;
                }

                v17 = *(*v10 + 8);
                if (v6.u32[0] > 1uLL)
                {
                  if (v17 >= *&v2)
                  {
                    v17 %= *&v2;
                  }
                }

                else
                {
                  v17 &= v11;
                }

                if (v17 != v13)
                {
LABEL_37:
                  *(v8 + 8 * v13) = 0;
                }
              }

              v18 = *v10;
              if (*v10)
              {
                v19 = *(v18 + 8);
                if (v6.u32[0] > 1uLL)
                {
                  if (v19 >= *&v2)
                  {
                    v19 %= *&v2;
                  }
                }

                else
                {
                  v19 &= v11;
                }

                if (v19 != v13)
                {
                  *(*a1 + 8 * v19) = v15;
                  v18 = *v10;
                }
              }

              *v15 = v18;
              *v10 = 0;
              --a1[3];
              operator delete(v10);
              return;
            }
          }

          else
          {
            if (v6.u32[0] > 1uLL)
            {
              if (v12 >= *&v2)
              {
                v12 %= *&v2;
              }
            }

            else
            {
              v12 &= v11;
            }

            if (v12 != v7)
            {
              return;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }
}

void RegistrarClientProcess::CheckProcessAssertion(RegistrarClientProcess *this)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = mach_absolute_time();
  v3 = *(this + 13) != 0;
  if (*(this + 8))
  {
    v4 = RegistrarClientProcess::BeingDebugged(*(this + 3)) ? 14400000000 : 1440000000;
    v6 = *(this + 25);
    v5 = *(this + 26);
    if (v6 != v5)
    {
      v7 = 0;
      while (1)
      {
        v8 = *(*(*v6 + 8) + 24) + *(*(*v6 + 8) + 96);
        v9 = *(v8 + 2168) + v4;
        if (v9 > v2)
        {
          if (v7 <= v9)
          {
            v7 = *(v8 + 2168) + v4;
          }

          v3 = 1;
          goto LABEL_19;
        }

        if ((*(v8 + 2176) & 1) == 0)
        {
          break;
        }

LABEL_19:
        v6 += 8;
        if (v6 == v5)
        {
          goto LABEL_22;
        }
      }

      if (kInterAppAudioScope)
      {
        v10 = *kInterAppAudioScope;
        if (!*kInterAppAudioScope)
        {
LABEL_18:
          *(v8 + 2176) = 1;
          goto LABEL_19;
        }
      }

      else
      {
        v10 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(this + 3);
        *buf = 136315650;
        v25 = "IPCAURegistrar.mm";
        v26 = 1024;
        v27 = 431;
        v28 = 1024;
        LODWORD(v29) = v11;
        _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d host has failed to render pid %d recently; dropping process assertion", buf, 0x18u);
        v5 = *(this + 26);
      }

      goto LABEL_18;
    }
  }

  v7 = 0;
LABEL_22:
  v12 = *(this + 15);
  if (v2 >= v12)
  {
    if (v3)
    {
      goto LABEL_27;
    }

    if (*(this + 128) != 1)
    {
      return;
    }

    if (kInterAppAudioScope)
    {
      v14 = *kInterAppAudioScope;
      if (!*kInterAppAudioScope)
      {
LABEL_53:
        RegistrarClientProcess::GetProcessAssertion(this);
        SBSProcessAssertionSetFlags();
        *(this + 128) = 0;
        XOSTransactor::endTransaction((this + 144));
        return;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      MEMORY[0x193ADE470](__p, *(this + 3));
      v19 = v23 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v25 = "IPCAURegistrar.mm";
      v26 = 1024;
      v27 = 459;
      v28 = 2080;
      v29 = v19;
      _os_log_impl(&dword_18F5DF000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d IPCAURegistrar: releasing process assertion for process '%s'", buf, 0x1Cu);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }

    goto LABEL_53;
  }

  if (v7 <= v12)
  {
    v7 = *(this + 15);
  }

LABEL_27:
  if (*(this + 128))
  {
    goto LABEL_43;
  }

  if (!kInterAppAudioScope)
  {
    v13 = MEMORY[0x1E69E9C10];
    goto LABEL_36;
  }

  v13 = *kInterAppAudioScope;
  if (*kInterAppAudioScope)
  {
LABEL_36:
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      MEMORY[0x193ADE470](__p, *(this + 3));
      v15 = v23 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v25 = "IPCAURegistrar.mm";
      v26 = 1024;
      v27 = 442;
      v28 = 2080;
      v29 = v15;
      _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d IPCAURegistrar: taking process assertion for process '%s'", buf, 0x1Cu);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  RegistrarClientProcess::GetProcessAssertion(this);
  SBSProcessAssertionSetFlags();
  *(this + 128) = 1;
  XOSTransactor::beginTransaction((this + 144));
LABEL_43:
  if ((*(this + 129) & 1) == 0)
  {
    if (v7)
    {
      v16 = *(this + 2);
      *(this + 129) = 1;
      v17 = dispatch_time(v7, 0);
      v18 = *(CADeprecated::TSingleton<IPCAURegistrar>::instance() + 224);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ZN22RegistrarClientProcess21CheckProcessAssertionEv_block_invoke;
      block[3] = &__block_descriptor_36_e5_v8__0l;
      v21 = v16;
      dispatch_after(v17, v18, block);
    }
  }
}

void sub_18F850078(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t RegistrarClientProcess::BeingDebugged(RegistrarClientProcess *this)
{
  v8 = *MEMORY[0x1E69E9840];
  *v5 = 0xE00000001;
  v6 = 1;
  v7 = this;
  v2 = 648;
  if (sysctl(v5, 4u, v3, &v2, 0, 0) >= 0)
  {
    return (v4 >> 11) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t RegistrarClientProcess::GetProcessAssertion(RegistrarClientProcess *this)
{
  result = *(this + 17);
  if (!result)
  {
    v3 = *(this + 3);
    MEMORY[0x193ADE470](__p, v3);
    if (v7 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    v5 = CFStringCreateWithFormat(0, 0, @"IPCAU process %d-'%s'", v3, v4);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    *(this + 17) = SBSProcessAssertionCreateForPID();
    CFRelease(v5);
    SBSProcessAssertionSetInvalidationCallBack();
    return *(this + 17);
  }

  return result;
}

void sub_18F8501E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CADeprecated::TSingleton<IPCAURegistrar>::instance()
{
  if (atomic_load_explicit(&CADeprecated::TSingleton<IPCAURegistrar>::sOnce, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&CADeprecated::TSingleton<IPCAURegistrar>::sOnce, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<CADeprecated::TSingleton<IPCAURegistrar>::instance(void)::{lambda(void)#1} &&>>);
  }

  return CADeprecated::TSingleton<IPCAURegistrar>::sInstance;
}

void ___ZN22RegistrarClientProcess21CheckProcessAssertionEv_block_invoke(uint64_t a1)
{
  v1 = BaseOpaqueObject::ResolveOpaqueRef();
  if (v1)
  {
    *(v1 + 129) = 0;

    RegistrarClientProcess::CheckProcessAssertion(v1);
  }
}

void CADeprecated::XMachServer::~XMachServer(CADeprecated::XMachServer *this)
{
  *this = MEMORY[0x1E69E5070] + 16;
  v2 = (this + 80);
  *(this + 10) = MEMORY[0x1E69E5070] + 88;
  v3 = *(this + 25);
  if (v3)
  {
    *(this + 26) = v3;
    operator delete(v3);
  }

  MEMORY[0x193ADE250](this + 112);
  CADeprecated::XMachPortDeathListener::~XMachPortDeathListener(v2);

  CADeprecated::XBasicMIGServer::~XBasicMIGServer(this);
}

uint64_t IPCAURegistrar::RecordApplicationActiveTime(CFMutableDictionaryRef *this, const __CFString *a2)
{
  valuePtr = CFAbsoluteTimeGetCurrent();
  v4 = CFNumberCreate(0, kCFNumberFloat64Type, &valuePtr);
  CFDictionarySetValue(this[36], a2, v4);
  CFRelease(v4);
  CFPreferencesSetAppValue(@"InterAppProcessActiveTimes", this[36], @"com.apple.coreaudio");
  return CFPreferencesSynchronize(@"com.apple.coreaudio", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
}

void ___Z19IPCAURegistrarQueuev_block_invoke()
{
  inactive = dispatch_workloop_create_inactive("IPCAURegistrarQueue WL");
  dispatch_workloop_set_scheduler_priority();
  dispatch_activate(inactive);
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v2 = dispatch_queue_create_with_target_V2("IPCAURegistrarQueue", initially_inactive, inactive);
  v3 = IPCAURegistrarQueue(void)::gIPCAURegistrarQueue;
  IPCAURegistrarQueue(void)::gIPCAURegistrarQueue = v2;
  if (v3)
  {
    dispatch_release(v3);
    v2 = IPCAURegistrarQueue(void)::gIPCAURegistrarQueue;
  }

  dispatch_set_qos_class_floor(v2, QOS_CLASS_DEFAULT, 0);
  dispatch_activate(IPCAURegistrarQueue(void)::gIPCAURegistrarQueue);

  dispatch_release(inactive);
}

uint64_t RegistrarClientProcess::ProcessAssertionInvalidated(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (kInterAppAudioScope)
  {
    v3 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    MEMORY[0x193ADE470](__p, *(a2 + 12));
    if (v7 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315650;
    v9 = "IPCAURegistrar.mm";
    v10 = 1024;
    v11 = 256;
    v12 = 2080;
    v13 = v4;
    _os_log_impl(&dword_18F5DF000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d IPCAURegistrar: ProcessAssertionInvalidated: process '%s'", buf, 0x1Cu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_11:
  *(a2 + 136) = 0;
  *(a2 + 128) = 0;
  return XOSTransactor::endTransaction((a2 + 144));
}

void IPCAURegistrar::NotifySubscribers(IPCAURegistrar *this)
{
  v9 = *MEMORY[0x1E69E9840];
  if (kInterAppAudioScope)
  {
    v2 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v8.msgh_bits = 136315394;
    *&v8.msgh_size = "IPCAURegistrar.mm";
    LOWORD(v8.msgh_local_port) = 1024;
    *(&v8.msgh_local_port + 2) = 615;
    _os_log_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d IPCAURegistrar::NotifySubscribers", &v8, 0x12u);
  }

LABEL_7:
  v4 = *(this + 29);
  v3 = *(this + 30);
  if (v4 != v3)
  {
    v5 = MEMORY[0x1E69E9A60];
    do
    {
      v6 = *v4;
      if (*(*v4 + 32) == 1 && (*(v6 + 33) & 1) == 0)
      {
        *(v6 + 33) = 1;
        v7 = *(v6 + 184);
        if (v7)
        {
          LODWORD(v7) = *(v7 + 12);
        }

        v8.msgh_local_port = 0;
        v8.msgh_size = 0;
        v8.msgh_bits = 19;
        v8.msgh_remote_port = v7;
        *&v8.msgh_voucher_port = 0x15FF400000000;
        if (MEMORY[0x1EEE9AC50])
        {
          voucher_mach_msg_set(&v8);
        }

        if (mach_msg(&v8, 17, 0x18u, 0, 0, gMediaServerTimeout, 0) == 268435460)
        {
          if ((v8.msgh_bits & 0x1F00) == 0x1100)
          {
            mach_port_deallocate(*v5, v8.msgh_local_port);
          }

          mach_msg_destroy(&v8);
        }
      }

      ++v4;
    }

    while (v4 != v3);
  }
}

uint64_t AURegistrationServerConnection::ServerPortDied(mach_port_t *this)
{
  v13 = *MEMORY[0x1E69E9840];
  if (kInterAppAudioScope)
  {
    v2 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315394;
    v9 = "IPCAURegistrar.mm";
    v10 = 1024;
    v11 = 1244;
    _os_log_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d AURegistrationServerConnection::ServerPortDied", &v8, 0x12u);
  }

LABEL_7:
  v3 = 4;
  do
  {
    v4 = v3;
    sleep(2u);
    result = AURegistrationServerConnection::Connect(this);
    if (!result)
    {
      break;
    }

    v3 = v4 - 1;
  }

  while (v4);
  v7 = *(this + 21);
  v6 = *(this + 22);
  while (v7 != v6)
  {
    std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](&v8, v7);
    if (!v12)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v12 + 48))(v12);
    result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v8);
    v7 += 32;
  }

  return result;
}

uint64_t AURegistrationServerConnection::Connect(mach_port_t *this)
{
  v20 = *MEMORY[0x1E69E9840];
  sp = 0;
  special_port[0] = 0;
  v2 = MEMORY[0x1E69E9A60];
  task_get_special_port(*MEMORY[0x1E69E9A60], 4, special_port);
  v3 = bootstrap_look_up(special_port[0], *(this + 5), &sp);
  if (v3)
  {
    v4 = v3;
    if (kInterAppAudioScope)
    {
      v5 = *kInterAppAudioScope;
      if (!*kInterAppAudioScope)
      {
        return v4;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      special_port[0] = 136315906;
      *&special_port[1] = "IPCAURegistrar.mm";
      LOWORD(special_port[3]) = 1024;
      *(&special_port[3] + 2) = 1228;
      HIWORD(special_port[4]) = 2080;
      *&special_port[5] = "com.apple.audio.AudioUnitServer";
      LOWORD(special_port[7]) = 1024;
      *(&special_port[7] + 2) = v4;
      v9 = "%25s:%-5d IPCAUClient: can't locate server %s (%d)";
      v10 = v5;
      v11 = 34;
LABEL_43:
      _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_ERROR, v9, special_port, v11);
      return v4;
    }

    return v4;
  }

  CADeprecated::XRemoteMachServer::SetServerPort(this);
  v6 = this[12];
  memset(&special_port[1], 0, 44);
  reply_port = mig_get_reply_port();
  special_port[2] = v6;
  special_port[3] = reply_port;
  special_port[0] = 5395;
  *&special_port[4] = 0x15F9000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(special_port);
    v8 = special_port[3];
  }

  else
  {
    v8 = reply_port;
  }

  v12 = mach_msg(special_port, 275, 0x18u, 0x30u, v8, gMediaServerTimeout, 0);
  v4 = v12;
  if ((v12 - 268435458) <= 0xE && ((1 << (v12 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(special_port[3]);
    goto LABEL_27;
  }

  if (!v12)
  {
    if (special_port[5] == 71)
    {
      v4 = 4294966988;
    }

    else if (special_port[5] == 90100)
    {
      if ((special_port[0] & 0x80000000) == 0)
      {
        if (special_port[1] == 40)
        {
          if (!special_port[2])
          {
            v4 = special_port[8];
            if (!special_port[8])
            {
              v16 = special_port[9];
              goto LABEL_46;
            }

            goto LABEL_35;
          }
        }

        else if (special_port[1] == 36)
        {
          if (special_port[2])
          {
            v13 = 1;
          }

          else
          {
            v13 = special_port[8] == 0;
          }

          if (v13)
          {
            v4 = 4294966996;
          }

          else
          {
            v4 = special_port[8];
          }

          goto LABEL_35;
        }
      }

      v4 = 4294966996;
    }

    else
    {
      v4 = 4294966995;
    }

LABEL_35:
    mach_msg_destroy(special_port);
    goto LABEL_36;
  }

  mig_dealloc_reply_port(special_port[3]);
LABEL_27:
  if (v4 != 268435460)
  {
LABEL_36:
    if (v4)
    {
      goto LABEL_37;
    }

    v16 = 0;
LABEL_46:
    this[13] = v16;
    if (kInterAppAudioScope)
    {
      v4 = *kInterAppAudioScope;
      if (!*kInterAppAudioScope)
      {
        return v4;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v17 = this[12];
      special_port[0] = 136315906;
      *&special_port[1] = "IPCAURegistrar.mm";
      LOWORD(special_port[3]) = 1024;
      *(&special_port[3] + 2) = 1238;
      HIWORD(special_port[4]) = 1024;
      special_port[5] = v17;
      LOWORD(special_port[6]) = 1024;
      *(&special_port[6] + 2) = v16;
      _os_log_impl(&dword_18F5DF000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d AURegistrationServerConnection: in client, using port 0x%x in server process %d", special_port, 0x1Eu);
    }

    return 0;
  }

  if ((special_port[0] & 0x1F00) == 0x1100)
  {
    mach_port_deallocate(*v2, special_port[3]);
  }

  mach_msg_destroy(special_port);
  v4 = 268435460;
LABEL_37:
  if (kInterAppAudioScope)
  {
    v14 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      return v4;
    }
  }

  else
  {
    v14 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    special_port[0] = 136315650;
    *&special_port[1] = "IPCAURegistrar.mm";
    LOWORD(special_port[3]) = 1024;
    *(&special_port[3] + 2) = 1234;
    HIWORD(special_port[4]) = 1024;
    special_port[5] = v4;
    v9 = "%25s:%-5d IPCAUClient: can't connect to server (%d)";
    v10 = v14;
    v11 = 24;
    goto LABEL_43;
  }

  return v4;
}

void AURegistrationServerConnection::~AURegistrationServerConnection(AURegistrationServerConnection *this)
{
  *this = &unk_1F0336CF8;
  v2 = (this + 168);
  MEMORY[0x193ADE1B0](this + 192);
  v3 = v2;
  std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:ne200100](&v3);
  CADeprecated::XRemoteMachServer::~XRemoteMachServer(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0336CF8;
  v2 = (this + 168);
  MEMORY[0x193ADE1B0](this + 192);
  v3 = v2;
  std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:ne200100](&v3);

  CADeprecated::XRemoteMachServer::~XRemoteMachServer(this);
}

void std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void PublishedAU::~PublishedAU(CFTypeRef *this)
{
  PublishedAU::~PublishedAU(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0336D30;
  CFRelease(this[6]);
  CFRelease(this[2]);
}

void IPCAURegistrar_InitServer()
{
  CADeprecated::TSingleton<IPCAURegistrar>::instance();
  global_queue = dispatch_get_global_queue(0, 0);

  dispatch_async(global_queue, &__block_literal_global_10885);
}

uint64_t IPCAURegistrar_IsActiveHost(int a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = CADeprecated::TSingleton<IPCAURegistrar>::instance();
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = *(v2 + 224);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN14IPCAURegistrar12IsActiveHostEi_block_invoke;
  block[3] = &unk_1E72C1DB8;
  v9 = a1;
  block[4] = &v10;
  block[5] = v2;
  dispatch_sync(v3, block);
  if (kInterAppAudioScope)
  {
    v4 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(v11 + 24);
    *buf = 136315906;
    v15 = "IPCAURegistrar.mm";
    v16 = 1024;
    v17 = 547;
    v18 = 1024;
    v19 = a1;
    v20 = 1024;
    v21 = v5;
    _os_log_impl(&dword_18F5DF000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d IsActiveHost(%d): %d", buf, 0x1Eu);
  }

LABEL_7:
  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t ___ZN14IPCAURegistrar12IsActiveHostEi_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 296);
  v3 = *(v1 + 304);
  if (v2 != v3)
  {
    while (*(v2 + 16) != *(result + 48))
    {
      v2 += 24;
      if (v2 == v3)
      {
        return result;
      }
    }

    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void *IPCAURegistrar::FindOrCreateClientProcess(void *a1, int a2, int a3, int a4, const void *a5, uint64_t a6)
{
  if (!a3)
  {
    return 0;
  }

  for (i = a1[29]; ; i += 8)
  {
    if (i == a1[30])
    {
      operator new();
    }

    v7 = *i;
    if (*(*i + 12) == a4)
    {
      break;
    }
  }

  if (a2)
  {
    if (a2 == 2)
    {
      if (!v7[24])
      {
        operator new();
      }
    }

    else
    {
      v9 = v7[22];
      if (!v9 || !*(v9 + 12))
      {
        operator new();
      }
    }
  }

  else
  {
    v8 = v7[23];
    if (!v8 || !*(v8 + 12))
    {
      operator new();
    }
  }

  return v7;
}

void RegistrarClientProcess::ClientPort::~ClientPort(RegistrarClientProcess::ClientPort *this)
{
  *this = &unk_1F0336E10;
  MEMORY[0x193ADE1F0](this + 12);
  BaseOpaqueObject::~BaseOpaqueObject(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0336E10;
  MEMORY[0x193ADE1F0](this + 12);

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

void CADeprecated::XMachServer::Client::~Client(CADeprecated::XMachServer::Client *this)
{
  *this = &unk_1F0336E10;
  MEMORY[0x193ADE1F0](this + 12);
  BaseOpaqueObject::~BaseOpaqueObject(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0336E10;
  MEMORY[0x193ADE1F0](this + 12);

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

void std::vector<std::unique_ptr<RegistrarClientProcess::SharedMemoryBlock>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          std::default_delete<RegistrarClientProcess::SharedMemoryBlock>::operator()[abi:ne200100](v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::default_delete<RegistrarClientProcess::SharedMemoryBlock>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x193ADF220);
}

void RegistrarClientProcess::~RegistrarClientProcess(RegistrarClientProcess *this)
{
  RegistrarClientProcess::~RegistrarClientProcess(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0336DB0;
  v2 = *(this + 17);
  if (v2)
  {
    CFRelease(v2);
  }

  CFRelease(*(this + 2));
  CFRelease(*(this + 3));
  v3 = (this + 200);
  std::vector<std::unique_ptr<RegistrarClientProcess::SharedMemoryBlock>>::__destroy_vector::operator()[abi:ne200100](&v3);
  XOSTransactor::endTransaction((this + 144));

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

void IPCAURegistrar::RegisterAUsFrom1App(IPCAURegistrar *this, CFTypeRef cf, void *a3, void *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = CFGetTypeID(cf);
  if (v7 != CFArrayGetTypeID())
  {
    return;
  }

  Count = CFArrayGetCount(cf);
  if (Count < 1)
  {
    return;
  }

  v9 = Count;
  v10 = 0;
  v25 = *MEMORY[0x1E698D020];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(cf, v10);
    v12 = CFGetTypeID(ValueAtIndex);
    if (v12 == CFDictionaryGetTypeID())
    {
      break;
    }

    if (++v10 == v9)
    {
      return;
    }
  }

  if (kInterAppAudioScope)
  {
    v13 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v30 = "IPCAURegistrar.mm";
    v31 = 1024;
    v32 = 677;
    v33 = 2112;
    *v34 = this;
    *&v34[8] = 2112;
    *&v34[10] = ValueAtIndex;
    _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d %@ %@", buf, 0x26u);
  }

LABEL_11:
  cfa = 0;
  memset(inDesc, 0, sizeof(inDesc));
  if (!Get4CCOrNumber(ValueAtIndex, @"type", inDesc) || !Get4CCOrNumber(ValueAtIndex, @"subtype", &inDesc[4]) || !Get4CCOrNumber(ValueAtIndex, @"manufacturer", &inDesc[8]) || !GetString(ValueAtIndex, @"name", &cfa) || (GetNumber(ValueAtIndex, @"version", &inDesc[20]) & 1) == 0)
  {
    if (kInterAppAudioScope)
    {
      v19 = *kInterAppAudioScope;
      if (!*kInterAppAudioScope)
      {
        return;
      }
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136315650;
    v30 = "IPCAURegistrar.mm";
    v31 = 1024;
    v32 = 690;
    v33 = 2112;
    *v34 = this;
    v20 = "%25s:%-5d Missing required key(s) in AudioComponents for %@";
    v21 = v19;
    v22 = 28;
LABEL_34:
    _os_log_impl(&dword_18F5DF000, v21, OS_LOG_TYPE_ERROR, v20, buf, v22);
    return;
  }

  v14 = *inDesc;
  if ((*inDesc - 1635086951) > 0x11 || ((1 << (inDesc[0] - 103)) & 0x20045) == 0)
  {
    if (kInterAppAudioScope)
    {
      v24 = *kInterAppAudioScope;
      if (!*kInterAppAudioScope)
      {
        return;
      }
    }

    else
    {
      v24 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136315906;
    v30 = "IPCAURegistrar.mm";
    v31 = 1024;
    v32 = 701;
    v33 = 1024;
    *v34 = v14;
    *&v34[4] = 2112;
    *&v34[6] = this;
    v20 = "%25s:%-5d Cannot register AudioComponent with type '%d' as requested by %@";
    v21 = v24;
    v22 = 34;
    goto LABEL_34;
  }

  if (!AudioComponentFindNext(0, inDesc))
  {
    v15 = NSClassFromString(&cfstr_Bksapplication.isa);
    if (v15)
    {
      v16 = objc_alloc_init(v15);
      v17 = [objc_msgSend(objc_msgSend(v16 applicationInfoForApplication:{this), "objectForKeyedSubscript:", v25), "intValue"}];

      if (v17 >= 1)
      {
          ;
        }
      }
    }

    operator new();
  }

  if (kInterAppAudioScope)
  {
    v23 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      return;
    }
  }

  else
  {
    v23 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    CAFormatter::CAFormatter(&v26, inDesc);
    *buf = 136315906;
    v30 = "IPCAURegistrar.mm";
    v31 = 1024;
    v32 = 708;
    v33 = 2080;
    *v34 = v26;
    *&v34[8] = 2112;
    *&v34[10] = this;
    _os_log_impl(&dword_18F5DF000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot register duplicate AudioComponent description '%s' as requested by %@", buf, 0x26u);
    if (v26)
    {
      free(v26);
    }
  }
}

uint64_t Get4CCOrNumber(const __CFDictionary *a1, const __CFString *a2, unsigned int *a3)
{
  *a3 = 0;
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    if (v6 == CFStringGetTypeID())
    {
      if (CFStringGetLength(v5) == 4)
      {
        CFStringGetCString(v5, buffer, 5, 0x600u);
        *a3 = bswap32(*buffer);
        return 1;
      }
    }

    else
    {
      v7 = CFGetTypeID(v5);
      if (v7 == CFNumberGetTypeID())
      {
        return CFNumberGetValue(v5, kCFNumberSInt32Type, a3) != 0;
      }
    }

    return 0;
  }

  return result;
}

void PublishedAU_Registrar::~PublishedAU_Registrar(PublishedAU_Registrar *this)
{
  PublishedAU_Registrar::~PublishedAU_Registrar(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0336E40;
  v2 = *(this + 8);
  if (v2)
  {
    --*(v2 + 36);
  }

  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
  }

  PublishedAU::~PublishedAU(this);
}

void ___ZN14IPCAURegistrar25RegisterAUsFromAppBundlesEPK14__CFDictionary_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  OwnedPtrVector<PublishedAU_Registrar *>::erase((v2 + 256), *(v2 + 264), *(v2 + 272));
  CFDictionaryApplyFunction(*(a1 + 40), IPCAURegistrar::RegisterAUsFrom1App, v2);

  IPCAURegistrar::NotifySubscribers(v2);
}

void ___ZN14IPCAURegistrar19CheckLaunchAUServerEiRK25AudioComponentDescriptionjRi_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (kInterAppAudioScope)
    {
      v5 = *kInterAppAudioScope;
      if (!*kInterAppAudioScope)
      {
LABEL_13:
        v9 = *(*(a1 + 48) + 184);
        if (v9)
        {
          v10 = *(v9 + 12);
        }

        else
        {
          v10 = 0;
        }

        v11 = *(a1 + 64);
        v12 = 0;
LABEL_17:
        IPCAUCallbackSender_LaunchRequestComplete(v10, v11, v12);
        return;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "IPCAURegistrar.mm";
      *&buf[12] = 1024;
      *&buf[14] = 944;
      *&buf[18] = 2112;
      *&buf[20] = a2;
      _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d launch failed, error %@", buf, 0x1Cu);
    }

    goto LABEL_13;
  }

  if (a3 < 1)
  {
    if (kInterAppAudioScope)
    {
      v13 = *kInterAppAudioScope;
      if (!*kInterAppAudioScope)
      {
LABEL_35:
        PublishedAU_Registrar::AddCheckinPing(*(a1 + 56), *(a1 + 68), *(a1 + 64));
        return;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "IPCAURegistrar.mm";
      *&buf[12] = 1024;
      *&buf[14] = 961;
      _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d launching, will wait for checkin", buf, 0x12u);
    }

    goto LABEL_35;
  }

  v7 = *(a1 + 56);
  if (*(v7 + 64))
  {
    if (kInterAppAudioScope)
    {
      v8 = *kInterAppAudioScope;
      if (!*kInterAppAudioScope)
      {
LABEL_28:
        v15 = *(*(a1 + 48) + 184);
        if (v15)
        {
          v10 = *(v15 + 12);
        }

        else
        {
          v10 = 0;
        }

        v11 = *(a1 + 64);
        v12 = 1;
        goto LABEL_17;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "IPCAURegistrar.mm";
      *&buf[12] = 1024;
      *&buf[14] = 947;
      *&buf[18] = 1024;
      *&buf[20] = a3;
      _os_log_impl(&dword_18F5DF000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d already running[%d] and checked in", buf, 0x18u);
    }

    goto LABEL_28;
  }

  if (*(v7 + 61) == 1)
  {
    if (kInterAppAudioScope)
    {
      v14 = *kInterAppAudioScope;
      if (!*kInterAppAudioScope)
      {
LABEL_42:
        *(*(*(a1 + 32) + 8) + 24) = -3000;
        return;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(v7 + 16);
      *buf = 136315906;
      *&buf[4] = "IPCAURegistrar.mm";
      *&buf[12] = 1024;
      *&buf[14] = 950;
      *&buf[18] = 2112;
      *&buf[20] = v17;
      *&buf[28] = 1024;
      *&buf[30] = a3;
      _os_log_impl(&dword_18F5DF000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Node app '%@' already running[%d], but has explicitly unpublished itself. Failing.", buf, 0x22u);
    }

    goto LABEL_42;
  }

  if (kInterAppAudioScope)
  {
    v16 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v16 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "IPCAURegistrar.mm";
    *&buf[12] = 1024;
    *&buf[14] = 953;
    *&buf[18] = 1024;
    *&buf[20] = a3;
    _os_log_impl(&dword_18F5DF000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d already running[%d], not checked in (server crashed?); will wake and wait for checkin", buf, 0x18u);
    v7 = *(a1 + 56);
  }

LABEL_46:
  PublishedAU_Registrar::AddCheckinPing(v7, *(a1 + 68), *(a1 + 64));
  v18 = CFStringCreateWithFormat(0, 0, @"IPCAU process %d:wake", a3);
  v19 = SBSProcessAssertionCreateForPID();
  CFRelease(v18);
  if (!kInterAppAudioScope)
  {
    v20 = MEMORY[0x1E69E9C10];
    goto LABEL_50;
  }

  v20 = *kInterAppAudioScope;
  if (*kInterAppAudioScope)
  {
LABEL_50:
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      MEMORY[0x193ADE470](__p, a3);
      v21 = v25 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *&buf[4] = "IPCAURegistrar.mm";
      *&buf[12] = 1024;
      *&buf[14] = 989;
      *&buf[18] = 2080;
      *&buf[20] = v21;
      _os_log_impl(&dword_18F5DF000, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d waking sleeping node '%s'", buf, 0x1Cu);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  SBSProcessAssertionSetFlags();
  v22 = dispatch_time(0, 10000000000);
  global_queue = dispatch_get_global_queue(0, 0);
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___ZN14IPCAURegistrar18WakeSleepingServerEi_block_invoke;
  *&buf[24] = &__block_descriptor_44_e5_v8__0l;
  *&buf[32] = v19;
  v27 = a3;
  dispatch_after(v22, global_queue, buf);
}

void PublishedAU_Registrar::AddCheckinPing(PublishedAU_Registrar *this, unsigned int a2, uint64_t a3)
{
  v6 = *(this + 9);
  v7 = *(this + 10);
  while (v6 != v7)
  {
    if (*v6 == a2)
    {
      v8 = v7 - (v6 + 8);
      if (v8)
      {
        memmove(v6, v6 + 8, v8);
      }

      v7 = &v6[v8];
      *(this + 10) = v7;
      break;
    }

    v6 += 8;
  }

  v9 = *(this + 11);
  if (v7 >= v9)
  {
    v11 = *(this + 9);
    v12 = v7 - v11;
    v13 = (v7 - v11) >> 3;
    v14 = v13 + 1;
    if ((v13 + 1) >> 61)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v15 = v9 - v11;
    if (v15 >> 2 > v14)
    {
      v14 = v15 >> 2;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      v16 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      if (!(v16 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v17 = v13;
    v18 = (8 * v13);
    v19 = a2 | (a3 << 32);
    v20 = &v18[-v17];
    *v18 = v19;
    v10 = v18 + 1;
    memcpy(v20, v11, v12);
    *(this + 9) = v20;
    *(this + 10) = v10;
    *(this + 11) = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    *v7 = a2 | (a3 << 32);
    v10 = v7 + 8;
  }

  *(this + 10) = v10;
}

void ___ZN14IPCAURegistrar18WakeSleepingServerEi_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  SBSProcessAssertionSetFlags();
  CFRelease(*(a1 + 32));
  if (kInterAppAudioScope)
  {
    v2 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      return;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    MEMORY[0x193ADE470](__p, *(a1 + 40));
    if (v5 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    *buf = 136315650;
    v7 = "IPCAURegistrar.mm";
    v8 = 1024;
    v9 = 997;
    v10 = 2080;
    v11 = v3;
    _os_log_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d released assertion on sleeping node '%s'", buf, 0x1Cu);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t IPCAURegistrar::SetProcessWakeState(IPCAURegistrar *this, int a2, RegistrarClientProcess *a3, int a4, int *a5)
{
  v27 = *MEMORY[0x1E69E9840];
  if (kInterAppAudioScope)
  {
    v10 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    MEMORY[0x193ADE470](__p, a3);
    if (v19 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    *buf = 136315906;
    *&buf[4] = "IPCAURegistrar.mm";
    v21 = 1024;
    v22 = 1054;
    v23 = 2080;
    v24 = v11;
    v25 = 1024;
    v26 = a4;
    _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d process '%s', state %d", buf, 0x22u);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_11:
  v12 = *(this + 29);
  v13 = *(this + 30);
  if (v12 == v13)
  {
    return 4294967246;
  }

  v14 = *(this + 29);
  while (1)
  {
    v15 = *v14;
    if (*(*v14 + 3) == a2)
    {
      break;
    }

    if (++v14 == v13)
    {
      return 4294967246;
    }
  }

  while (1)
  {
    v17 = *v12;
    if (*(*v12 + 3) == a3)
    {
      break;
    }

    if (++v12 == v13)
    {
      return 4294967246;
    }
  }

  if (a4)
  {
    *a5 = 0;
    return RegistrarClientProcess::SetProcessWakeState(v17, a4, v15);
  }

  else
  {
    *a5 = RegistrarClientProcess::BeingDebugged(a3);
    *buf = v15;
    std::__hash_table<RegistrarClientProcess *,std::hash<RegistrarClientProcess *>,std::equal_to<RegistrarClientProcess *>,std::allocator<RegistrarClientProcess *>>::__emplace_unique_key_args<RegistrarClientProcess *,RegistrarClientProcess * const&>(v17 + 20, v15, buf);
    RegistrarClientProcess::CheckProcessAssertion(v17);
    return 0;
  }
}

uint64_t RegistrarClientProcess::SetProcessWakeState(RegistrarClientProcess *this, int a2, RegistrarClientProcess *a3)
{
  v7 = a3;
  result = 4294967246;
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 != 3)
      {
        return result;
      }

      v5 = (this + 40);
      goto LABEL_8;
    }

    v6 = (this + 40);
LABEL_11:
    std::__hash_table<RegistrarClientProcess *,std::hash<RegistrarClientProcess *>,std::equal_to<RegistrarClientProcess *>,std::allocator<RegistrarClientProcess *>>::__emplace_unique_key_args<RegistrarClientProcess *,RegistrarClientProcess * const&>(v6, a3, &v7);
    goto LABEL_12;
  }

  if (!a2)
  {
    v6 = (this + 80);
    goto LABEL_11;
  }

  if (a2 != 1)
  {
    return result;
  }

  v5 = (this + 80);
LABEL_8:
  std::__hash_table<RegistrarClientProcess *,std::hash<RegistrarClientProcess *>,std::equal_to<RegistrarClientProcess *>,std::allocator<RegistrarClientProcess *>>::__erase_unique<RegistrarClientProcess *>(v5, a3);
LABEL_12:
  RegistrarClientProcess::CheckProcessAssertion(this);
  return 0;
}

void std::__hash_table<RegistrarClientProcess *,std::hash<RegistrarClientProcess *>,std::equal_to<RegistrarClientProcess *>,std::allocator<RegistrarClientProcess *>>::__emplace_unique_key_args<RegistrarClientProcess *,RegistrarClientProcess * const&>(float *a1, unint64_t a2, void *a3)
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

uint64_t AURegistrationServerConnection::RegisterExtensionProcess(uint64_t this)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = (this + 192);
  if (!atomic_load_explicit((this + 192), memory_order_acquire))
  {
    v2 = this;
    CADeprecated::XMachReceivePort::CreateMachPort((this + 192));
    explicit = atomic_load_explicit(v1, memory_order_acquire);
    MainBundle = CFBundleGetMainBundle();
    if (MainBundle)
    {
      v5 = MainBundle;
      Identifier = CFBundleGetIdentifier(MainBundle);
      MainBundle = CFBundleGetValueForInfoDictionaryKey(v5, *MEMORY[0x1E695E120]);
      v14 = MainBundle;
      if (Identifier)
      {
        if (MainBundle)
        {
          goto LABEL_5;
        }

LABEL_10:
        v14 = &stru_1F0340B48;
LABEL_5:
        CASerializer::CASerializer(&theData, 0);
        operator<<();
        operator<<();
        v6 = *(v2 + 48);
        Length = theData;
        if (theData)
        {
          BytePtr = CFDataGetBytePtr(theData);
          Length = theData;
          if (theData)
          {
            Length = CFDataGetLength(theData);
          }
        }

        else
        {
          BytePtr = 0;
        }

        memset(&msg[4], 0, 32);
        *&msg[24] = 2;
        *&msg[28] = explicit;
        v17 = 1245184;
        v18 = BytePtr;
        v19 = 16777472;
        v20 = Length;
        v21 = *MEMORY[0x1E69E99E0];
        v22 = Length;
        reply_port = mig_get_reply_port();
        *&msg[8] = v6;
        *&msg[12] = reply_port;
        *msg = -2147478253;
        *&msg[16] = 0x15F9100000000;
        if (MEMORY[0x1EEE9AC50])
        {
          voucher_mach_msg_set(msg);
          v10 = *&msg[12];
        }

        else
        {
          v10 = reply_port;
        }

        v11 = mach_msg(msg, 275, 0x44u, 0x2Cu, v10, gMediaServerTimeout, 0);
        v12 = v11;
        if ((v11 - 268435458) <= 0xE && ((1 << (v11 - 2)) & 0x4003) != 0)
        {
          mig_put_reply_port(*&msg[12]);
        }

        else
        {
          if (!v11)
          {
            if (*&msg[20] == 90101 && (*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8] && !*&msg[32])
            {
              return MEMORY[0x193ADE2A0](&theData);
            }

            goto LABEL_29;
          }

          mig_dealloc_reply_port(*&msg[12]);
        }

        if (v12 != 268435460)
        {
          return MEMORY[0x193ADE2A0](&theData);
        }

        if ((*msg & 0x1F00) == 0x1100)
        {
          mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
        }

LABEL_29:
        mach_msg_destroy(msg);
        return MEMORY[0x193ADE2A0](&theData);
      }
    }

    else
    {
      v14 = 0;
    }

    Identifier = &stru_1F0340B48;
    if (MainBundle)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  return this;
}

void AURegistrationServerConnection::WakeExtension(AURegistrationServerConnection *this, int a2, int a3)
{
  v3 = this;
  *&msg[20] = 0u;
  v10 = 0;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x1E69E99E0];
  *&msg[32] = a2;
  LODWORD(v10) = a3;
  reply_port = mig_get_reply_port();
  *&msg[8] = v3;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x15F9C00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v5 = *&msg[12];
  }

  else
  {
    v5 = reply_port;
  }

  v6 = mach_msg(msg, 275, 0x28u, 0x2Cu, v5, gMediaServerTimeout, 0);
  v7 = v6;
  if ((v6 - 268435458) <= 0xE && ((1 << (v6 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
LABEL_17:
    if (v7 != 268435460)
    {
      return;
    }

    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_20;
  }

  if (v6)
  {
    mig_dealloc_reply_port(*&msg[12]);
    goto LABEL_17;
  }

  if (*&msg[20] != 90112 || (*msg & 0x80000000) != 0 || *&msg[4] != 36 || *&msg[8] || *&msg[32])
  {
LABEL_20:
    mach_msg_destroy(msg);
  }
}

uint64_t AURegistrationServerConnection_Connect()
{
  v0 = CADeprecated::TSingleton<AURegistrationServerConnection>::instance();

  return AURegistrationServerConnection::Connect(v0);
}

uint64_t IPCAURegServer_PublishAU(audit_token_t *a1, int a2, const AudioComponentDescription *a3, const void *a4, unsigned int a5, int a6)
{
  v67 = *MEMORY[0x1E69E9840];
  pidp = 0;
  v11 = 4294900548;
  if (!ClientHasInterAppAudioEntitlement(a1, &pidp))
  {
    return 4294900548;
  }

  v50 = 0;
  cf = 0;
  v49 = 0;
  v47 = a5;
  CADeserializer::CADeserializer(&v48, a4);
  v46 = a4;
  operator>>();
  operator>>();
  operator>>();
  v12 = cf;
  v13 = 4294967246;
  if (cf && v50 && v49)
  {
    v14 = CADeprecated::TSingleton<IPCAURegistrar>::instance();
    v15 = pidp;
    v17 = v49;
    v16 = v50;
    v18 = cf;
    if (kInterAppAudioScope)
    {
      v19 = *kInterAppAudioScope;
      if (!*kInterAppAudioScope)
      {
LABEL_17:
        ClientProcess = IPCAURegistrar::FindOrCreateClientProcess(v14, 1, a2, v15, v16, v17);
        v25 = v14[33];
        v24 = v14[34];
        if (v25 != v24)
        {
          v26 = ClientProcess;
          while (1)
          {
            v27 = *v25;
            if (*&a3->componentType != *(*v25 + 24) || a3->componentManufacturer != *(*v25 + 32))
            {
              goto LABEL_26;
            }

            if (CFEqual(v16, *(v27 + 16)))
            {
              break;
            }

            v24 = v14[34];
LABEL_26:
            v25 = (v25 + 8);
            if (v25 == v24)
            {
              goto LABEL_27;
            }
          }

          *(v27 + 8) = v15;
          *(v27 + 61) = 0;
          *(v27 + 64) = v26;
          if (kInterAppAudioScope)
          {
            v30 = *kInterAppAudioScope;
            if (!*kInterAppAudioScope)
            {
LABEL_39:
              v32 = *(v27 + 72);
              v33 = *(v27 + 80);
              if (v32 == v33)
              {
                goto LABEL_56;
              }

              while (1)
              {
                v34 = v14[29];
                v35 = v14[30];
                if (v34 == v35)
                {
LABEL_43:
                  v36 = 0;
                  v37 = 0;
                }

                else
                {
                  while (1)
                  {
                    v36 = *v34;
                    if (*(*v34 + 12) == *v32)
                    {
                      break;
                    }

                    v34 = (v34 + 8);
                    if (v34 == v35)
                    {
                      goto LABEL_43;
                    }
                  }

                  v38 = *(v36 + 184);
                  v39 = v38 ? *(v38 + 12) : 0;
                  v37 = IPCAUCallbackSender_LaunchRequestComplete(v39, v32[1], 1);
                }

                if (!kInterAppAudioScope)
                {
                  break;
                }

                v40 = *kInterAppAudioScope;
                if (*kInterAppAudioScope)
                {
                  goto LABEL_52;
                }

LABEL_54:
                v32 += 2;
                if (v32 == v33)
                {
                  v32 = *(v27 + 72);
LABEL_56:
                  *(v27 + 80) = v32;
                  IPCAURegistrar::RecordApplicationActiveTime(v14, v16);
                  v11 = 0;
                  goto LABEL_57;
                }
              }

              v40 = MEMORY[0x1E69E9C10];
LABEL_52:
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
              {
                v41 = *v32;
                v42 = v32[1];
                *buf = 136316418;
                v57 = "IPCAURegistrar.mm";
                v58 = 1024;
                v59 = 754;
                v60 = 1024;
                *v61 = v41;
                *&v61[4] = 2048;
                *&v61[6] = v36;
                v62 = 1024;
                *v63 = v42;
                *&v63[4] = 1024;
                *&v63[6] = v37;
                _os_log_impl(&dword_18F5DF000, v40, OS_LOG_TYPE_DEBUG, "%25s:%-5d ping pid %d, rcp %p, token %d, ret = 0x%x", buf, 0x2Eu);
              }

              goto LABEL_54;
            }
          }

          else
          {
            v30 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            v31 = (*(v27 + 80) - *(v27 + 72)) >> 3;
            *buf = 136315650;
            v57 = "IPCAURegistrar.mm";
            v58 = 1024;
            v59 = 745;
            v60 = 1024;
            *v61 = v31;
            _os_log_impl(&dword_18F5DF000, v30, OS_LOG_TYPE_DEBUG, "%25s:%-5d checked in previous registration, %d pings", buf, 0x18u);
          }

          goto LABEL_39;
        }

LABEL_27:
        if (kInterAppAudioScope)
        {
          v29 = *kInterAppAudioScope;
          if (!*kInterAppAudioScope)
          {
            goto LABEL_57;
          }
        }

        else
        {
          v29 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v57 = "IPCAURegistrar.mm";
          v58 = 1024;
          v59 = 763;
          _os_log_impl(&dword_18F5DF000, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d App is trying to publish an AudioComponent without an Info.plist registration.", buf, 0x12u);
        }

LABEL_57:
        v12 = cf;
        v13 = v11;
        goto LABEL_58;
      }
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v45 = v17;
      MEMORY[0x193ADE470](__p, v15);
      v44 = v15;
      v20 = v55;
      v21 = __p[0];
      CAFormatter::CAFormatter(&v53, a3);
      v22 = __p;
      *buf = 136316674;
      if (v20 < 0)
      {
        v22 = v21;
      }

      v57 = "IPCAURegistrar.mm";
      v58 = 1024;
      v59 = 733;
      v60 = 2080;
      *v61 = v22;
      *&v61[8] = 1024;
      *&v61[10] = a2;
      v62 = 2080;
      *v63 = v53;
      *&v63[8] = 2112;
      v64 = v18;
      v65 = 1024;
      v66 = a6;
      _os_log_impl(&dword_18F5DF000, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d process '%s', port 0x%x, %s, '%@', version %d", buf, 0x3Cu);
      if (v53)
      {
        free(v53);
      }

      LODWORD(v15) = v44;
      v17 = v45;
      if (v55 < 0)
      {
        operator delete(__p[0]);
      }
    }

    goto LABEL_17;
  }

LABEL_58:
  if (v12)
  {
    CFRelease(v12);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (!v13)
  {
    mig_deallocate(v46, v47);
  }

  MEMORY[0x193ADE3E0](&v48);
  return v13;
}

void sub_18F853B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x193ADE3E0](&a16, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

BOOL ClientHasInterAppAudioEntitlement(audit_token_t *a1, pid_t *pidp)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = *&a1->val[4];
  *atoken.val = *a1->val;
  *&atoken.val[4] = v4;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, pidp, 0, 0);
  if (ClientHasInterAppAudioEntitlement(audit_token_t &,int &)::bypassEntitlementCheck < 0)
  {
    ClientHasInterAppAudioEntitlement(audit_token_t &,int &)::bypassEntitlementCheck = 0;
    CASmartPreferences::Read(@"BypassInterAppEntitlementCheck", @"com.apple.coreaudio", &ClientHasInterAppAudioEntitlement(audit_token_t &,int &)::bypassEntitlementCheck, v5);
  }

  if (ClientHasInterAppAudioEntitlement(audit_token_t &,int &)::bypassEntitlementCheck)
  {
    return 1;
  }

  v7 = *&a1->val[4];
  *atoken.val = *a1->val;
  *&atoken.val[4] = v7;
  v8 = SecTaskCreateWithAuditToken(0, &atoken);
  if (v8)
  {
    v9 = v8;
    v10 = SecTaskCopyValueForEntitlement(v8, @"inter-app-audio", 0);
    if (v10)
    {
      v11 = v10;
      v12 = CFGetTypeID(v10);
      if (v12 == CFBooleanGetTypeID())
      {
        Value = CFBooleanGetValue(v11);
        CFRelease(v11);
        CFRelease(v9);
        if (!Value)
        {
          goto LABEL_13;
        }

        return 1;
      }

      CFRelease(v11);
    }

    CFRelease(v9);
  }

LABEL_13:
  if (kInterAppAudioScope)
  {
    v14 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      return 0;
    }
  }

  else
  {
    v14 = MEMORY[0x1E69E9C10];
  }

  result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
  if (!result)
  {
    return result;
  }

  v15 = *pidp;
  atoken.val[0] = 136315650;
  *&atoken.val[1] = "IPCAURegistrar.mm";
  LOWORD(atoken.val[3]) = 1024;
  *(&atoken.val[3] + 2) = 1330;
  HIWORD(atoken.val[4]) = 1024;
  atoken.val[5] = v15;
  _os_log_impl(&dword_18F5DF000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d process %d does not have the 'inter-app-audio' entitlement", &atoken, 0x18u);
  return 0;
}

uint64_t IPCAURegServer_CreateSharedBuffer(audit_token_t *a1, const AudioStreamBasicDescription *a2, uint64_t a3, int a4, uint64_t a5, _DWORD *a6)
{
  v18 = *MEMORY[0x1E69E9840];
  pidp = 0;
  if (ClientHasInterAppAudioEntitlement(a1, &pidp))
  {
    v7 = CADeprecated::TSingleton<IPCAURegistrar>::instance();
    v8 = *(v7 + 232);
    for (i = *(v7 + 240); v8 != i; v8 += 8)
    {
      if (*(*v8 + 12) == pidp)
      {
        operator new();
      }
    }

    if (kInterAppAudioScope)
    {
      v10 = *kInterAppAudioScope;
      if (!*kInterAppAudioScope)
      {
LABEL_13:
        v11 = 4294967246;
        *a6 = 0;
        return v11;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "IPCAURegistrar.mm";
      v16 = 1024;
      v17 = 818;
      _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d unknown process", buf, 0x12u);
    }

    goto LABEL_13;
  }

  return 4294900548;
}

void sub_18F854124(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPCAURegServer_SubscribeToAUList(audit_token_t *a1, int a2, const void *a3, unsigned int a4)
{
  v33 = *MEMORY[0x1E69E9840];
  pidp = 0;
  if (!ClientHasInterAppAudioEntitlement(a1, &pidp))
  {
    return 4294900548;
  }

  v20 = 0;
  cf = 0;
  CADeserializer::CADeserializer(&v19, a3);
  operator>>();
  operator>>();
  v7 = cf;
  if (cf)
  {
    v8 = v20 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (v8)
  {
    v15 = 4294967246;
    if (!cf)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v10 = CADeprecated::TSingleton<IPCAURegistrar>::instance();
  v11 = pidp;
  v13 = v20;
  v12 = cf;
  if (kInterAppAudioScope)
  {
    v14 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v14 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    MEMORY[0x193ADE470](__p, v11);
    v16 = v24 >= 0 ? __p : __p[0];
    *buf = 136315906;
    v26 = "IPCAURegistrar.mm";
    v27 = 1024;
    v28 = 860;
    v29 = 2080;
    v30 = v16;
    v31 = 1024;
    v32 = a2;
    _os_log_impl(&dword_18F5DF000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d process '%s', port 0x%x", buf, 0x22u);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_22:
  ClientProcess = IPCAURegistrar::FindOrCreateClientProcess(v10, 0, a2, v11, v12, v13);
  v15 = 0;
  *(ClientProcess + 32) = 1;
  v7 = cf;
  if (cf)
  {
LABEL_23:
    CFRelease(v7);
  }

LABEL_24:
  if (v20)
  {
    CFRelease(v20);
  }

  if (v9)
  {
    mig_deallocate(a3, a4);
  }

  MEMORY[0x193ADE3E0](&v19);
  return v15;
}

void sub_18F85437C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x193ADE3E0](va, a2);
  _Unwind_Resume(a1);
}

uint64_t MIGVariableLengthRefs::Write(MIGVariableLengthRefs *this, const void *a2, vm_size_t size)
{
  v6 = *(this + 4);
  if (v6 && *(this + 1) >= size)
  {
    *v6 = size;
    goto LABEL_8;
  }

  v7 = *(this + 5);
  address = 0;
  result = vm_allocate(*MEMORY[0x1E69E9A60], &address, size, 1);
  v9 = address;
  if (result)
  {
    v9 = 0;
  }

  *v7 = v9;
  if (!result)
  {
    **(this + 6) = size;
    *(this + 16) = 1;
LABEL_8:
    v10 = *(this + 5);
    if (!*v10)
    {
      v10 = (this + 24);
    }

    memcpy(*v10, a2, size);
    return 0;
  }

  return result;
}

uint64_t IPCAURegServer_RegisterExtensionProcess(_OWORD *a1, int a2, const void *a3, unsigned int a4)
{
  pidp = 0;
  v7 = a1[1];
  *&atoken.var0 = *a1;
  *&atoken.var2 = v7;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
  v16 = 0;
  cf = 0;
  CADeserializer::CADeserializer(&atoken, a3);
  operator>>();
  operator>>();
  v8 = v16;
  if (v16)
  {
    v9 = cf == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (v9)
  {
    v12 = 4294967246;
    if (!v16)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v11 = CADeprecated::TSingleton<IPCAURegistrar>::instance();
  IPCAURegistrar::FindOrCreateClientProcess(v11, 2, a2, pidp, v16, cf);
  v12 = 0;
  v8 = v16;
  if (v16)
  {
LABEL_11:
    CFRelease(v8);
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    mig_deallocate(a3, a4);
  }

  MEMORY[0x193ADE3E0](&atoken);
  return v12;
}

void sub_18F854580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MEMORY[0x193ADE3E0](va, a2, a3);
  _Unwind_Resume(a1);
}

void AudioUnitURLOpen(const __CFURL *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = CFURLGetBytes(a1, v11, 256);
    v2 = 5;
    v3 = MEMORY[0x1E69E99E0];
    while (1)
    {
      v4 = *(CADeprecated::TSingleton<AURegistrationServerConnection>::instance() + 48);
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      memset(msg, 0, sizeof(msg));
      *&msg[24] = *v3;
      if (v1 > 0x100)
      {
        return;
      }

      v5 = MEMORY[0x1EEE9AC50];
      __memcpy_chk();
      LODWORD(v13) = v1;
      reply_port = mig_get_reply_port();
      *&msg[12] = reply_port;
      *msg = 5395;
      *&msg[8] = v4;
      *&msg[16] = 0x15F9D00000000;
      if (v5)
      {
        voucher_mach_msg_set(msg);
        v7 = *&msg[12];
      }

      else
      {
        v7 = reply_port;
      }

      v8 = mach_msg(msg, 275, ((v1 + 3) & 0x3FC) + 36, 0x2Cu, v7, gMediaServerTimeout, 0);
      v9 = v8;
      if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
      {
        mig_put_reply_port(*&msg[12]);
      }

      else
      {
        if (!v8)
        {
          if (*&msg[20] == 71)
          {
            v9 = -308;
          }

          else if (*&msg[20] == 90113)
          {
            v9 = -300;
            if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
            {
              v9 = v13;
              if (!v13)
              {
                return;
              }
            }
          }

          else
          {
            v9 = -301;
          }

          goto LABEL_24;
        }

        mig_dealloc_reply_port(*&msg[12]);
      }

      if (v9 != 268435460)
      {
        goto LABEL_25;
      }

      v9 = 268435460;
      if ((*msg & 0x1F00) == 0x1100)
      {
        mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
      }

LABEL_24:
      mach_msg_destroy(msg);
LABEL_25:
      if (v9 == 268435459)
      {
        sleep(1u);
        v10 = CADeprecated::TSingleton<AURegistrationServerConnection>::instance();
        AURegistrationServerConnection::Connect(v10);
        if (--v2)
        {
          continue;
        }
      }

      return;
    }
  }
}

void sub_18F854B80(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t MPEGAudioFile::ScanForPackets(MPEGAudioFile *this, uint64_t a2, DataSource *a3, int a4)
{
  v5 = a3;
  v34.mStartOffset = 0;
  *&v34.mVariableFramesInPacket = 0;
  v30 = 0;
  v31 = 0;
  if (!a3)
  {
    v5 = *(this + 13);
  }

  if ((*(this + 140) & 1) == 0)
  {
    v8 = *(this + 15);
    if (!v8)
    {
      operator new();
    }

    v9 = *(v8 + 24);
    if (a2 == -1 || v9 < a2)
    {
      v33 = 0;
      v32 = 0;
      v10 = (*(*v5 + 24))(v5, &v30);
      if (v10)
      {
        return v10;
      }

      if (*(this + 93) == 1)
      {
        v12 = v30 - 128;
      }

      else
      {
        v12 = v30;
      }

      v23 = v12;
      v24 = *(this + 9);
      v13 = *(this + 15);
      if (v13 && (v14 = *(v13 + 24)) != 0)
      {
        CompressedPacketTable::operator[](&v25, v8, v14 - 1);
        FPosForNextMatchingSyncWordDS = GetFPosForNextMatchingSyncWordDS(v5, this + 93, *(this + 3), *(this + 13), *(this + 36), *(this + 37), v25 + DWORD1(v26) + v24, v30, &v31);
        if (FPosForNextMatchingSyncWordDS)
        {
LABEL_17:
          v10 = FPosForNextMatchingSyncWordDS;
LABEL_18:
          if (v10 != -39 && v10 != 0)
          {
            AudioFileObject::DeletePacketTable(this);
            return v10;
          }

          return 0;
        }
      }

      else
      {
        (*(*this + 656))(this, 0);
        v31 = v24;
      }

      if (a2 == -1)
      {
        v18 = -1;
      }

      else
      {
        v17 = *(this + 15);
        if (v17)
        {
          v17 = *(v17 + 24);
        }

        v18 = a2 - v17;
      }

      while (1)
      {
        v19 = v31;
        v34.mStartOffset = v31 - v24;
        FPosForNextMatchingSyncWordDS = (*(*v5 + 48))(v5, 0, v31, 4, &v33, &v32);
        if (FPosForNextMatchingSyncWordDS)
        {
          goto LABEL_17;
        }

        v29 = 0u;
        v28 = 0u;
        v27 = 0u;
        v26 = 0u;
        if ((ParseMPEGSyncWord(bswap32(v33), &v26) & 1) == 0)
        {
          return 1685348671;
        }

        v20 = DWORD2(v26);
        v34.mDataByteSize = DWORD2(v26);
        if (v20 > (*(*this + 640))(this))
        {
          (*(*this + 656))(this, v20);
        }

        if (v19 + v20 > v23)
        {
          break;
        }

        v31 = v19 + v20;
        v21 = GetFPosForNextMatchingSyncWordDS(v5, this + 93, *(this + 3), *(this + 13), *(this + 36), *(this + 37), v19 + v20, v30, &v31);
        if (v21 == -39 || (v10 = v21, v21) && v9 >= 10)
        {
          v22 = 0;
          *(this + 140) = a4;
        }

        else
        {
          if (v21)
          {
            goto LABEL_18;
          }

          v22 = 1;
        }

        *(this + 25) += DWORD1(v27);
        AudioFileObject::AppendPacket(this, &v34);
        if (v18 == -1)
        {
          v18 = -1;
        }

        else
        {
          --v18;
        }

        if (v18)
        {
          ++v9;
          if (v22)
          {
            continue;
          }
        }

        if ((*(this + 140) & 1) == 0)
        {
          return 0;
        }

LABEL_49:
        MPEGAudioFile::PacketParsingComplete(this);
        return 0;
      }

      *(this + 140) = a4;
      if (!a4)
      {
        return 0;
      }

      goto LABEL_49;
    }
  }

  return 0;
}

uint64_t GetFPosForNextMatchingSyncWordDS(DataSource *a1, unsigned __int16 *a2, double a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v23 = 0.0;
  *v24 = 0;
  v22 = 0;
  v18 = 10;
  while (1)
  {
    result = GetFPosForNextSyncWordDS(a1, a2, a7, a8, a9, &v24[1], v24, 0, &v23, &v22);
    if (result)
    {
      break;
    }

    if (v24[1] == a5 && v24[0] == a6 && v23 == a3 && v22 == a4)
    {
      return 0;
    }

    a7 = *a9 + 1;
    if (!--v18)
    {
      return 1685348671;
    }
  }

  return result;
}

uint64_t MPEGAudioFile::PacketParsingComplete(uint64_t this)
{
  if (*(this + 400) == -1 && *(this + 392) == 1)
  {
    v1 = *(this + 384);
    *(this + 408) = v1;
    v2 = *(this + 388);
    *(this + 400) = v2;
    v3 = *(this + 120);
    if (v3)
    {
      v3 = *(v3 + 24);
    }

    *(this + 412) = (v3 * *(this + 44) - (v2 + v1)) & ~((v3 * *(this + 44) - (v2 + v1)) >> 31);
  }

  return this;
}

uint64_t GetFPosForNextSyncWordDS(DataSource *a1, unsigned __int16 *a2, int64_t a3, int64_t a4, uint64_t *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8, double *a9, unsigned int *a10)
{
  v46 = *MEMORY[0x1E69E9840];
  v39 = 0;
  CADeprecated::CAAutoFree<unsigned char>::allocBytes(&v39, 0x403uLL, 1);
  v18 = v39;
  if (v39)
  {
    if (a3 < a4)
    {
      v37 = a5;
      v19 = a4 - 128;
      v36 = a7;
      v38 = a2;
      while (1)
      {
        v20 = *a2;
        v21 = v20 != 1 || a3 < v19;
        if (!v21 || (a3 + 1027 <= a4 ? (v22 = 1027) : (v22 = (a4 - a3)), v40 = v22, v22 < 4))
        {
LABEL_32:
          v24 = 4294967257;
LABEL_33:
          if (v18)
          {
            goto LABEL_51;
          }

          return v24;
        }

        if (a3 + v22 > v19 && v20 == 0xFFFF)
        {
          *a2 = ID3v1TagExistsDS(a1);
          v22 = v40;
        }

        v24 = (*(*a1 + 48))(a1, 0, a3, v22, v18, &v40);
        if (v24)
        {
          goto LABEL_33;
        }

        if (!v40)
        {
          goto LABEL_32;
        }

        if (v40 >= 4)
        {
          break;
        }

        v25 = 0;
LABEL_31:
        a3 += v25;
        if (a3 >= a4)
        {
          goto LABEL_32;
        }
      }

      v26 = a6;
      v27 = 0;
      v28 = v40 - 3;
      v29 = v40 - 1;
      while (1)
      {
        v45 = 0u;
        v44 = 0u;
        v43 = 0u;
        *&v42[4] = 0u;
        v30 = v18[v27];
        v31 = ParseMPEGSyncWord(_byteswap_ulong(*&v18[v27]), &v42[4]);
        if (v30 == 255 && v31 != 0)
        {
          v33 = v42[9];
          if (v42[9] - 1 <= 2)
          {
            break;
          }
        }

        ++v27;
        v40 = v29--;
        if (v28 == v27)
        {
          v25 = v27;
          a6 = v26;
          v19 = a4 - 128;
          a2 = v38;
          goto LABEL_31;
        }
      }

      if (v26)
      {
        *v26 = v42[8];
      }

      if (v36)
      {
        *v36 = v33;
      }

      if (a8)
      {
        *a8 = *&v42[12];
      }

      if (a9)
      {
        *a9 = *(&v43 + 1);
      }

      if (a10)
      {
        *a10 = DWORD1(v45);
      }

      v34 = a3 + v27;
      if (!*v38 || v34 + *&v42[12] <= a4 - 128)
      {
        v24 = 0;
        *v37 = v34;
        goto LABEL_51;
      }
    }

    v24 = 4294967257;
LABEL_51:
    free(v18);
  }

  else
  {
    v24 = 1685348671;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *v42 = "MP3AudioFile.cpp";
      *&v42[8] = 1024;
      *&v42[10] = 158;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  could not make space", buf, 0x12u);
    }
  }

  return v24;
}

void sub_18F855DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  if (a17)
  {
    free(a17);
  }

  _Unwind_Resume(exception_object);
}

BOOL ID3v1TagExistsDS(DataSource *a1)
{
  v5 = 0;
  (*(*a1 + 24))(a1, &v5);
  result = 0;
  if (v5 >= 128)
  {
    v3 = 0;
    if (!(*(*a1 + 48))(a1, 2, -128, 4, v4, &v3) && v4[0] == 84 && v4[1] == 65 && v4[2] == 71)
    {
      return 1;
    }
  }

  return result;
}

uint64_t MPEGAudioFile::GetLyrics(MPEGAudioFile *this, const __CFString **a2)
{
  if (!a2)
  {
    return 2003334207;
  }

  v4 = 1667787583;
  *a2 = 0;
  v8 = 12;
  v9 = 1431522388;
  if (!ID3ParserGetProperty(*(this + 20), 8, &v9, 1718185574, &v8, v10))
  {
    theDict = 0;
    v8 = 8;
    if (!ID3ParserGetProperty(*(this + 20), 4, &v11, 1717854580, &v8, &theDict))
    {
      Value = CFDictionaryGetValue(theDict, @"text");
      *a2 = Value;
      if (Value)
      {
        CFRetain(Value);
      }

      CFRelease(theDict);
      return 0;
    }
  }

  return v4;
}

uint64_t MPEGAudioFile::GetEstimatedDuration(MPEGAudioFile *this, double *a2)
{
  if (*(this + 140) != 1)
  {
    if (*(this + 27))
    {
      goto LABEL_5;
    }

    (*(*this + 696))(this, 10, 0, 1);
    *(this + 24) = 0;
    v8 = *(this + 15);
    if (!v8)
    {
      goto LABEL_5;
    }

    if (*(v8 + 24) < 1)
    {
      goto LABEL_5;
    }

    v20 = 0;
    v9 = *(this + 9);
    CompressedPacketTable::operator[](v19, v8, 0);
    if ((*(**(this + 13) + 48))(*(this + 13), 0, v19[0] + v9, 4, &v20, &v20 + 4))
    {
      goto LABEL_5;
    }

    v10 = *(this + 3);
    v11 = gaSamplesPerFrame[3 * (*(this + 36) - 1) + *(this + 37) - 1];
    v12 = (*(*this + 232))(this);
    if (!v12)
    {
      goto LABEL_5;
    }

    v13 = *(this + 15);
    if (v13)
    {
      v13 = *(v13 + 24);
    }

    v14 = v10;
    v15 = *(this + 37);
    v16 = *(this + 25) / v13;
    if (v15 == 1)
    {
      v18 = 48000.0;
    }

    else if (v15 == 3)
    {
      v18 = v16;
      if (*(this + 36) == 1)
      {
        LODWORD(v16) = 144000;
      }

      else
      {
        LODWORD(v16) = 72000;
      }
    }

    else
    {
      v17 = 1.0;
      if (v15 != 2)
      {
        goto LABEL_23;
      }

      v18 = 144000.0;
    }

    v17 = v18 * v16 / v14;
    if (v17 <= 0.0)
    {
LABEL_5:
      v6 = *(this + 24);
      goto LABEL_7;
    }

LABEL_23:
    *(this + 24) = v11 / v14 * (v12 / v17);
    goto LABEL_5;
  }

  v4 = *(this + 11);
  if (v4)
  {
    v5 = *(this + 3);
    v6 = ((*(*this + 248))(this) * v4) / v5;
  }

  else
  {
    v6 = 0.0;
  }

LABEL_7:
  *a2 = v6;
  return 0;
}

uint64_t MPEGAudioFile::SetLoudnessInfo(MPEGAudioFile *this, CACFDictionary *a2)
{
  v4 = *(this + 21);
  if (v4)
  {
    if (!*(v4 + 44))
    {
      v15 = *(this + 15);
      if (v15)
      {
        if (*(v15 + 24) > 0)
        {
          return 1869640813;
        }
      }
    }
  }

  if (!*(this + 55))
  {
    v14 = *(this + 15);
    if (v14)
    {
      if (*(v14 + 24) > 0)
      {
        return 1869640813;
      }
    }
  }

  v50 = 0;
  v5 = LoudnessMethodsCountFromLID(a2, &v50);
  v6 = v5;
  v7 = 4 * v5 + 4;
  v8 = *(this + 55);
  if (v8)
  {
    if (v7 != *(this + 112))
    {
      return 2003334207;
    }

    free(v8);
    *(this + 55) = 0;
  }

  *(this + 112) = v7;
  v9 = malloc_type_malloc(0, 0x68C7938AuLL);
  *(this + 55) = v9;
  v9[3] = v6;
  v10 = v9 + 4;
  v53 = 0.0;
  v11 = 0;
  if (CACFDictionary::HasKey(a2, @"dialogue anchor parameters"))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v52 = 257;
    CACFDictionary::GetCACFDictionary(a2, @"dialogue anchor parameters", &Mutable);
    if (CACFDictionary::HasKey(&Mutable, @"aa itu loudness"))
    {
      CACFDictionary::GetFloat32(&Mutable, @"aa itu loudness", &v53);
      *v10 = 5;
      v12 = v53 + -6.0;
      if ((v53 + -6.0) <= -63.75)
      {
        LOBYTE(v13) = -1;
      }

      else if (v12 <= 0.0)
      {
        v13 = ((-v12 * 4.0) + 0.5);
      }

      else
      {
        LOBYTE(v13) = 0;
      }

      v9[5] = v13;
      v11 = 1;
    }

    else
    {
      v11 = 0;
    }

    CACFDictionary::~CACFDictionary(&Mutable);
  }

  if (CACFDictionary::HasKey(a2, @"main loudness parameters"))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v52 = 257;
    CACFDictionary::GetCACFDictionary(a2, @"main loudness parameters", &Mutable);
    if (CACFDictionary::HasKey(&Mutable, @"aa itu loudness"))
    {
      v17 = &v10[2 * v11];
      *v17 = 4;
      CACFDictionary::GetFloat32(&Mutable, @"aa itu loudness", &v53);
      v18 = v53 + -6.0;
      if ((v53 + -6.0) <= -63.75)
      {
        LOBYTE(v19) = -1;
      }

      else if (v18 <= 0.0)
      {
        v19 = ((-v18 * 4.0) + 0.5);
      }

      else
      {
        LOBYTE(v19) = 0;
      }

      v17[1] = v19;
      ++v11;
    }

    if (CACFDictionary::HasKey(&Mutable, @"aa ebu loudness range"))
    {
      v20 = &v10[2 * v11];
      *v20 = 6;
      CACFDictionary::GetFloat32(&Mutable, @"aa ebu loudness range", &v53);
      v20[1] = CompressLoudnessRange(v53);
      ++v11;
    }

    if (CACFDictionary::HasKey(&Mutable, @"aa ebu top of loudness range"))
    {
      v21 = &v10[2 * v11];
      *v21 = 1;
      CACFDictionary::GetFloat32(&Mutable, @"aa ebu top of loudness range", &v53);
      v22 = v53 + -6.0;
      if ((v53 + -6.0) <= -63.75)
      {
        LOBYTE(v23) = -1;
      }

      else if (v22 <= 0.0)
      {
        v23 = ((-v22 * 4.0) + 0.5);
      }

      else
      {
        LOBYTE(v23) = 0;
      }

      v21[1] = v23;
      ++v11;
    }

    if (CACFDictionary::HasKey(&Mutable, @"aa ebu max momentary loudness"))
    {
      v24 = &v10[2 * v11];
      *v24 = 2;
      CACFDictionary::GetFloat32(&Mutable, @"aa ebu max momentary loudness", &v53);
      v25 = v53 + -6.0;
      if ((v53 + -6.0) <= -63.75)
      {
        LOBYTE(v26) = -1;
      }

      else if (v25 <= 0.0)
      {
        v26 = ((-v25 * 4.0) + 0.5);
      }

      else
      {
        LOBYTE(v26) = 0;
      }

      v24[1] = v26;
      ++v11;
    }

    if (CACFDictionary::HasKey(&Mutable, @"aa ebu max short-term loudness"))
    {
      v27 = &v10[2 * v11];
      *v27 = 3;
      CACFDictionary::GetFloat32(&Mutable, @"aa ebu max short-term loudness", &v53);
      v28 = v53 + -6.0;
      if ((v53 + -6.0) <= -63.75)
      {
        LOBYTE(v29) = -1;
      }

      else if (v28 <= 0.0)
      {
        v29 = ((-v28 * 4.0) + 0.5);
      }

      else
      {
        LOBYTE(v29) = 0;
      }

      v27[1] = v29;
    }

    CACFDictionary::~CACFDictionary(&Mutable);
  }

  HIDWORD(v50) = 0;
  if (!CACFDictionary::HasKey(a2, @"main loudness parameters"))
  {
    goto LABEL_61;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v52 = 257;
  CACFDictionary::GetCACFDictionary(a2, @"main loudness parameters", &Mutable);
  if (!CACFDictionary::HasKey(&Mutable, @"aa itu true peak"))
  {
    CACFDictionary::~CACFDictionary(&Mutable);
LABEL_61:
    LOWORD(v30) = -1;
    goto LABEL_62;
  }

  CACFDictionary::GetFloat32(&Mutable, @"aa itu true peak", &v50 + 1);
  CACFDictionary::~CACFDictionary(&Mutable);
  if (*(&v50 + 1) >= 128.0)
  {
    LOWORD(v30) = 0x7FFF;
  }

  else if (*(&v50 + 1) <= -127.99)
  {
    LOWORD(v30) = -2;
  }

  else
  {
    v30 = ((fabsf(*(&v50 + 1)) * 256.0) + 0.5);
  }

  if (*(&v50 + 1) < 0.0)
  {
    LOWORD(v30) = v30 ^ 0x8000;
  }

LABEL_62:
  v31 = *(this + 55);
  *v31 = v30;
  *(v31 + 2) = 0;
  if (CACFDictionary::HasKey(a2, @"media kind"))
  {
    *(*(this + 55) + 2) = GetStoreItemKindFromLID(a2);
  }

  if (CACFDictionary::HasKey(a2, @"sound check info"))
  {
    v32 = *(this + 54);
    if (v32)
    {
      CACFDictionary::~CACFDictionary(v32);
      MEMORY[0x193ADF220]();
      *(this + 54) = 0;
    }

    Mutable = 0;
    CACFDictionary::GetDictionary(a2, @"sound check info", &Mutable);
    operator new();
  }

  v33 = *(this + 21);
  if (!v33)
  {
    operator new();
  }

  v34 = *(v33 + 44);
  if (v34)
  {
    v35 = *(this + 112);
    if (*(v33 + 48) == v35)
    {
      v36 = *(v33 + 16) + v34;
      v37 = *(v33 + 32);
      if (*(v33 + 28) <= 2u)
      {
        v38 = 19;
      }

      else
      {
        v38 = 23;
      }

      memcpy((v36 + (v37 + v38)), *(this + 55), v35);
      goto LABEL_78;
    }

    return 2003334207;
  }

  result = MPEGAudioFile::AddLoudnessInfoToID3Tag(this);
  if (result)
  {
    return result;
  }

LABEL_78:
  if (!*(*(this + 21) + 40))
  {
    result = MPEGAudioFile::AddSoundCheckToID3Tag(this);
    if (result)
    {
      return result;
    }

    goto LABEL_91;
  }

  v39 = *(this + 13);
  v40 = malloc_type_malloc((45 * v39), 0x79C7E0A8uLL);
  v41 = v40;
  if (v39 && !v40)
  {
    exception = __cxa_allocate_exception(8uLL);
    v49 = std::bad_alloc::bad_alloc(exception);
  }

  bzero(v40, (45 * v39));
  MPEGAudioFile::GetSCString(this, v41);
  v42 = *(this + 21);
  v43 = *(v42 + 40);
  if (v43)
  {
    v44 = *(v42 + 16) + v43;
    v45 = *(v42 + 32);
    if (*(v42 + 28) <= 2u)
    {
      v46 = 19;
    }

    else
    {
      v46 = 23;
    }

    memcpy((v44 + (v45 + v46)), v41, (45 * v39));
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  if (!(result | v34))
  {
LABEL_91:
    v47 = *(this + 20);
    if (v47)
    {
      ID3ParserClose(v47);
      *(this + 20) = 0;
    }

    result = MPEGAudioFile::SerializeID3TagToFile(this);
    if (!result)
    {
      MPEGAudioFile::ParseID3Tags(this);
      return 0;
    }
  }

  return result;
}

uint64_t MPEGAudioFile::AddLoudnessInfoToID3Tag(MPEGAudioFile *this)
{
  v1 = *(this + 55);
  if (!v1)
  {
    return 0;
  }

  if (!*(this + 21))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 2 * (*(this + 112) + *(v1 + 3));
  v4 = (v3 + 3);
  LODWORD(__n) = v3 + 3;
  v5 = malloc_type_malloc(v4, 0x7D7DDA6EuLL);
  if (!v5)
  {
    exception = __cxa_allocate_exception(8uLL);
    v11 = std::bad_alloc::bad_alloc(exception);
  }

  v6 = v5;
  bzero(v5, v4);
  if (MPEGAudioFile::CreateLoudnessInfoString(this, v6, &__n))
  {
    v8 = 0xFFFFFFFFLL;
  }

  else
  {
    v8 = ID3Creator::AddCommentFrame(*(this + 21), v6, __n, "iTunLOUD", v7);
  }

  free(v6);
  return v8;
}

uint64_t MPEGAudioFile::AddSoundCheckToID3Tag(MPEGAudioFile *this)
{
  if (!*(this + 54))
  {
    return 0;
  }

  if (!*(this + 21))
  {
    return 2003334207;
  }

  v2 = (45 * *(this + 13) + 1);
  v3 = malloc_type_malloc(v2, 0x22495A78uLL);
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2 == 0;
  }

  if (!v4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_alloc::bad_alloc(exception);
  }

  v5 = v3;
  bzero(v3, v2);
  MPEGAudioFile::GetSCString(this, v5);
  v7 = ID3Creator::AddCommentFrame(*(this + 21), v5, v2, "iTunNORM", v6);
  free(v5);
  return v7;
}

uint64_t MPEGAudioFile::SerializeID3TagToFile(MPEGAudioFile *this)
{
  v2 = *(*(this + 21) + 24);
  v3 = malloc_type_malloc(v2, 0xDF49C89EuLL);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_alloc::bad_alloc(exception);
  }

  v5 = v3;
  result = 2003334207;
  v7 = *(this + 21);
  if (*(v7 + 8) == 1)
  {
    v8 = *(v7 + 24);
    if (v8 <= v2)
    {
      memcpy(v5, *(v7 + 16), v8);
      v11 = 0;
      result = (*(**(this + 13) + 56))(*(this + 13), 0, 0, v2, v5, &v11);
      *(this + 9) = v2;
    }
  }

  return result;
}

void MPEGAudioFile::GetSCString(MPEGAudioFile *this, char *a2)
{
  v4 = *(this + 13);
  v5 = malloc_type_malloc(20 * v4, 0x26B0A009uLL);
  if (20 * v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_alloc::bad_alloc(exception);
  }

  v7 = v5;
  bzero(v5, 20 * v4);
  if (!GetSCFields(*(this + 54), v7, v4))
  {
    FillSCString(v7, v4, a2);
  }

  free(v7);
}

uint64_t MPEGAudioFile::ParseID3Tags(MPEGAudioFile *this)
{
  v3 = 0;
  (*(**(this + 13) + 24))(*(this + 13), &v3);
  *(this + 93) = ID3v1TagExistsDS(*(this + 13));
  result = ID3ParserOpen(this, MP3ID3CallbackProc, this + 20);
  if (result && *(this + 93))
  {
    *(this + 19) = v3 - 128;
    result = ID3ParserOpen(this, MP3ID3CallbackProc, this + 20);
    if (result)
    {
      *(this + 19) = 0;
    }
  }

  else
  {
    *(this + 92) = 1;
  }

  return result;
}

uint64_t MP3ID3CallbackProc(void *a1, int a2, unsigned int a3, int a4, void **a5, unsigned int *a6)
{
  if (a2 == 1)
  {
    v14 = a1[22];
    if (v14)
    {
      free(v14);
    }

    result = 0;
    a1[22] = 0;
  }

  else
  {
    if (a2)
    {
      return 0;
    }

    LODWORD(v9) = a4;
    v25 = 0;
    (*(*a1[13] + 24))(a1[13], &v25);
    v11 = a1[19];
    v12 = v25;
    if ((v9 + a3 + v11) > v25)
    {
      return 4294967272;
    }

    if (v9 <= 0x400)
    {
      LODWORD(v9) = 1024;
    }

    v15 = a1[20];
    if (v15)
    {
      v23 = 4;
      v24 = 0;
      result = ID3ParserGetProperty(v15, 0, 0, 1953720698, &v23, &v24);
      if (result)
      {
        return result;
      }

      if (v24 <= a3)
      {
        return 4294967272;
      }

      if (v9 >= v24 - a3)
      {
        LODWORD(v9) = v24 - a3;
      }

      v11 = a1[19];
      v12 = v25;
    }

    v16 = v11 + v9;
    v17 = v12 - v11;
    if (v16 <= v12)
    {
      v9 = v9;
    }

    else
    {
      v9 = v17;
    }

    v18 = malloc_type_malloc(v9, 0x8EE2B16uLL);
    if (v18)
    {
      v19 = 1;
    }

    else
    {
      v19 = v9 == 0;
    }

    if (!v19)
    {
      exception = __cxa_allocate_exception(8uLL);
      v22 = std::bad_alloc::bad_alloc(exception);
    }

    v20 = v18;
    bzero(v18, v9);
    a1[22] = v20;
    v24 = 0;
    result = (*(*a1[13] + 48))(a1[13], 0, a1[19] + a3, v9, v20, &v24);
    if (!result)
    {
      *a5 = a1[22];
      *a6 = v24;
    }
  }

  return result;
}

uint64_t MPEGAudioFile::CreateLoudnessInfoString(MPEGAudioFile *this, char *a2, unsigned int *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = *(this + 55);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (!*(this + 21))
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 2 * (*(this + 112) + *(v3 + 3)) + 3;
  if (*a3 < v5)
  {
    return 0xFFFFFFFFLL;
  }

  *a3 = v5;
  v8 = *v3;
  *a2 = 808464432;
  snprintf(__str, 0x20uLL, "%X", v8);
  v9 = strlen(__str);
  memcpy(&a2[-v9 + 4], __str, v9);
  a2[4] = 32;
  v10 = *(*(this + 55) + 2);
  *(a2 + 5) = 12336;
  snprintf(__str, 0x20uLL, "%X", v10);
  v11 = strlen(__str);
  memcpy(&a2[-v11 + 7], __str, v11);
  a2[7] = 32;
  v12 = *(*(this + 55) + 3);
  *(a2 + 4) = 12336;
  snprintf(__str, 0x20uLL, "%X", v12);
  v13 = strlen(__str);
  memcpy(&a2[-v13 + 10], __str, v13);
  a2[10] = 32;
  v14 = *(this + 55);
  if (*(v14 + 3))
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = v16;
      v19 = &a2[v16];
      v20 = *(v14 + v15 + 4);
      *&a2[v16 + 11] = 12336;
      snprintf(__str, 0x20uLL, "%X", v20);
      v21 = strlen(__str);
      memcpy(&v19[-v21 + 13], __str, v21);
      v19[13] = 32;
      v22 = *(*(this + 55) + v15 + 5);
      *(v19 + 7) = 12336;
      snprintf(__str, 0x20uLL, "%X", v22);
      v23 = strlen(__str);
      memcpy(&v19[-v23 + 16], __str, v23);
      v19[16] = 32;
      ++v17;
      v14 = *(this + 55);
      v16 = v18 + 6;
      v15 += 2;
    }

    while (v17 < *(v14 + 3));
    v24 = (v18 + 16);
  }

  else
  {
    v24 = 10;
  }

  result = 0;
  a2[v24] = 0;
  return result;
}

uint64_t MPEGAudioFile::GetLoudnessInfo(MPEGAudioFile *this, CACFDictionary *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = *(this + 20);
  v24 = 0;
  v19 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v18 = 257;
  if (!GetSoundCheckDictionaryFromID3(v3, &Mutable, 0))
  {
    CACFDictionary::AddDictionary(a2, @"sound check info", Mutable);
  }

  v19 = 4;
  if (!ID3ParserGetProperty(v3, 0, 0, 1717792372, &v19, &v24))
  {
    v19 = 12;
    if (v24)
    {
      v4 = 1;
      do
      {
        v20 = 1129270605;
        v21 = v4 - 1;
        v19 = 12;
        if (ID3ParserGetProperty(v3, 8, &v20, 1718185574, &v19, v22) || (theDict = 0, v19 = 8, ID3ParserGetProperty(v3, 4, v23, 1717854580, &v19, &theDict)))
        {
          v5 = 0;
        }

        else
        {
          Value = CFDictionaryGetValue(theDict, @"identifier");
          v9 = CFDictionaryGetValue(theDict, @"text");
          v5 = 0;
          if (Value)
          {
            v10 = v9;
            if (v9)
            {
              if (CFStringCompare(Value, @"iTunLOUD", 0))
              {
                v5 = 0;
              }

              else
              {
                if (CFStringGetCString(v10, buffer, 128, 0x201u))
                {
                  ParseiTunesLOUDData(buffer, 0x80u, a2);
                }

                v5 = 1;
              }
            }
          }

          CFRelease(theDict);
        }
      }

      while (v4++ < v24 && v5 == 0);
    }

    *buffer = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v26 = 257;
    if (v24)
    {
      for (i = 0; i < v24; ++i)
      {
        if (CACFDictionary::Size(buffer) > 3)
        {
          break;
        }

        v20 = 1415075928;
        v21 = i;
        v19 = 12;
        if (!ID3ParserGetProperty(v3, 8, &v20, 1718185574, &v19, v22))
        {
          theDict = 0;
          v19 = 8;
          if (!ID3ParserGetProperty(v3, 4, v23, 1717854580, &v19, &theDict))
          {
            v12 = CFDictionaryGetValue(theDict, @"identifier");
            v13 = CFDictionaryGetValue(theDict, @"text");
            if (v12 && v13)
            {
              AddTextToReplayGainDict(v12, v13, buffer);
            }

            CFRelease(theDict);
          }
        }
      }
    }

    if (CACFDictionary::Size(buffer))
    {
      CACFDictionary::AddDictionary(a2, @"REPLAYGAIN", *buffer);
    }

    CACFDictionary::~CACFDictionary(buffer);
  }

  if (CACFDictionary::Size(a2))
  {
    v14 = 0;
  }

  else
  {
    v14 = 2003334207;
  }

  CACFDictionary::~CACFDictionary(&Mutable);
  return v14;
}

void sub_18F857694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  CACFDictionary::~CACFDictionary(va);
  _Unwind_Resume(a1);
}

uint64_t MPEGAudioFile::SetSoundCheckDictionary(MPEGAudioFile *this, CACFDictionary *a2)
{
  if (!*(this + 55) || !*(this + 54))
  {
    v4 = *(this + 21);
    if (v4)
    {
      if (!*(v4 + 40))
      {
        v7 = *(this + 15);
        if (v7)
        {
          if (*(v7 + 24) > 0)
          {
            return 1869640813;
          }
        }
      }
    }

    v5 = *(this + 54);
    if (v5)
    {
      CACFDictionary::~CACFDictionary(v5);
      MEMORY[0x193ADF220]();
      *(this + 54) = 0;
    }

    else
    {
      v6 = *(this + 15);
      if (v6 && *(v6 + 24) > 0)
      {
        return 1869640813;
      }
    }

    operator new();
  }

  return 2003334207;
}

uint64_t MPEGAudioFile::GetSoundCheckDictionarySize(MPEGAudioFile *this, unsigned int *a2, unsigned int *a3)
{
  if (a2)
  {
    *a2 = 8;
  }

  if (a3)
  {
    *a3 = *(this + 100) & 2;
  }

  return 0;
}

uint64_t MPEGAudioFile::GetInfoDictionary(MPEGAudioFile *this, CACFDictionary *a2)
{
  v4 = *(this + 20);
  if (v4)
  {
    FillInfoDictionaryFromID3Parser(a2, v4);
  }

  v7 = 0.0;
  v5 = (*(*this + 552))(this, &v7);
  if (!v5)
  {
    AudioFileObject::AddDurationToInfoDictionary(v5, a2, &v7);
  }

  return 0;
}

uint64_t MPEGAudioFile::PacketToDependencyInfo(MPEGAudioFile *this, AudioPacketDependencyInfoTranslation *a2)
{
  v3 = (*(*this + 680))(this);
  mPacket = a2->mPacket;
  if (a2->mPacket >= v3)
  {
    LODWORD(mPacket) = v3;
  }

  a2->mIsIndependentlyDecodable = 1;
  a2->mNumberPrerollPackets = mPacket;
  return 0;
}

uint64_t MPEGAudioFile::GetNumPackets(MPEGAudioFile *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    return (*(*this + 232))(this) / v2;
  }

  result = *(this + 27);
  if (result)
  {
    if ((*(this + 140) & 1) == 0)
    {
      return result;
    }
  }

  else if ((*(this + 140) & 1) == 0)
  {
    (*(*this + 696))(this, -1, 0, 1);
  }

  v4 = *(this + 15);
  if (v4)
  {
    return *(v4 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t MPEGAudioFile::GetNumBytes(MPEGAudioFile *this)
{
  v4 = 0;
  v2 = (*(**(this + 13) + 24))(*(this + 13), &v4);
  result = v4;
  if (!v2)
  {
    if (*(this + 93) == 1)
    {
      return v4 - *(this + 9) - 128;
    }

    else
    {
      return v4 - *(this + 9);
    }
  }

  return result;
}

uint64_t MPEGAudioFile::SetProperty(MPEGAudioFile *this, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 == 1936158068)
  {
    v6 = 1869627199;
    if ((*(this + 100) & 2) != 0)
    {
      v7 = *(this + 15);
      if (!v7 || !*(v7 + 24))
      {
        if (a3 == 4)
        {
          v6 = 0;
          *(this + 425) = *a4 != 0;
        }

        else
        {
          return 561211770;
        }
      }
    }

    return v6;
  }

  if (a2 == 1768174452)
  {
    v5 = *(this + 15);
    if (v5)
    {
      if (*(v5 + 24) > 0)
      {
        return 1869640813;
      }

      if ((*(this + 100) & 2) == 0)
      {
        return 1886547263;
      }

      v9 = *(v5 + 24) > 0;
    }

    else
    {
      if ((*(this + 100) & 2) == 0)
      {
        return 1886547263;
      }

      v9 = 0;
    }

    v6 = 2003334207;
    if (a3 >= 0xA && !v9)
    {
      v11 = &unk_1F0337350;
      v12 = 0;
      v15[0] = v15;
      v15[1] = v15;
      v15[2] = 0;
      v16 = 0;
      v18[0] = 0;
      v17 = 0;
      *(v18 + 7) = 0;
      v13 = *a4;
      v14 = *(a4 + 4);
      if (ID3TagBase::Init(&v11))
      {
        v10 = *(this + 21);
        if (v10)
        {
          (*(*v10 + 8))(v10);
          *(this + 21) = 0;
        }

        operator new();
      }

      v11 = &unk_1F0337350;
      std::__list_imp<ID3FrameInfo>::clear(v15);
    }

    return v6;
  }

  return AudioFileObject::SetProperty(this, a2, a3, a4);
}

uint64_t MPEGAudioFile::GetProperty(MPEGAudioFile *this, int a2, unsigned int *a3, uint64_t *a4)
{
  v6 = this;
  if (a2 <= 1835296111)
  {
    if (a2 != 1651663220)
    {
      if (a2 == 1768174447)
      {
        result = 1886681407;
        if (*(v6 + 92) != 1 && *(v6 + 93) != 1 || (*(v6 + 100) & 2) != 0)
        {
          return result;
        }

        if (*a3 >= 8)
        {
          result = 0;
          *a4 = *(v6 + 19);
          v8 = 8;
          goto LABEL_43;
        }
      }

      else
      {
        if (a2 != 1768174452)
        {
          goto LABEL_35;
        }

        v9 = *(this + 20);
        if (v9)
        {
          v12 = 4;
          v13 = 0;
          ID3ParserGetProperty(v9, 0, 0, 1953720698, &v12, &v13);
          if (v13 && *a3 >= v13)
          {
            return (*(**(v6 + 13) + 48))(*(v6 + 13), 0, *(v6 + 19));
          }
        }

        else
        {
          if (!*(v6 + 93))
          {
            return 2003334207;
          }

          if (*a3 >= 0x80)
          {
            v11 = *(**(v6 + 13) + 48);

            return v11();
          }
        }
      }

      return 561211770;
    }

    if (*a3 != 4)
    {
      return 561211770;
    }

    LODWORD(v10) = *(this + 57);
    if (!v10 || (*(this + 140) & 1) != 0)
    {
      (*(*this + 696))(this, 10, 0, 1);
      v10 = *(v6 + 15);
      if (v10)
      {
        v10 = *(v10 + 24);
        if (v10 < 1)
        {
          LODWORD(v10) = 0;
        }

        else
        {
          LODWORD(v10) = 1000 * (*(v6 + 25) / v10);
        }
      }
    }

    goto LABEL_28;
  }

  if (a2 > 1886616164)
  {
    if (a2 == 1886616165)
    {
      if (*a3 != 4)
      {
        return 561211770;
      }

      if (!*(this + 10) && (*(this + 140) & 1) == 0)
      {
        (*(*this + 696))(this, -1, 0, 1);
      }

      this = v6;
      a2 = 1886616165;
LABEL_35:

      return AudioFileObject::GetProperty(this, a2, a3, a4);
    }

    if (a2 != 1936158068)
    {
      goto LABEL_35;
    }

    if (*a3 != 4)
    {
      return 561211770;
    }

    result = 0;
    LODWORD(v10) = *(v6 + 425);
LABEL_29:
    *a4 = v10;
    return result;
  }

  if (a2 == 1835296112)
  {
    if (*a3 != 4)
    {
      return 561211770;
    }

    LODWORD(v10) = (*(*this + 680))(this);
LABEL_28:
    result = 0;
    goto LABEL_29;
  }

  if (a2 != 1886283375)
  {
    goto LABEL_35;
  }

  if (*a3 < 0x10)
  {
    return 561211770;
  }

  if (*(this + 50) != -1)
  {
    result = 0;
    *a4 = *(v6 + 25);
    v8 = 16;
LABEL_43:
    *a3 = v8;
    return result;
  }

  return 1667787583;
}

uint64_t MPEGAudioFile::GetPropertyInfo(MPEGAudioFile *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2 <= 1835296111)
  {
    if (a2 == 1768174447)
    {
      if (!a3)
      {
        goto LABEL_25;
      }

      v7 = 8;
LABEL_24:
      *a3 = v7;
LABEL_25:
      if (a4)
      {
        result = 0;
        *a4 = 0;
        return result;
      }

      return 0;
    }

    if (a2 != 1768174452)
    {
      goto LABEL_28;
    }

    if (a4)
    {
      v10 = 0;
      (*(**(this + 13) + 24))(*(this + 13), &v10);
      *a4 = (v10 == 0) & (*(this + 100) >> 1);
    }

    if (a3)
    {
      v8 = *(this + 20);
      if (v8)
      {
        LODWORD(v10) = 4;
        if (ID3ParserGetProperty(v8, 0, 0, 1953720698, &v10, a3))
        {
          return 2003334207;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (*(this + 93))
        {
          *a3 = 128;
        }

        else
        {
          *a3 = 0;
        }
      }

      return result;
    }

    return 0;
  }

  switch(a2)
  {
    case 1835296112:
      if (!a3)
      {
        goto LABEL_25;
      }

      v7 = 4;
      goto LABEL_24;
    case 1936158068:
      if (a3)
      {
        *a3 = 4;
      }

      if (a4)
      {
        v10 = 0;
        (*(**(this + 13) + 24))(*(this + 13), &v10);
        result = 0;
        *a4 = (v10 == 0) & (*(this + 100) >> 1);
        return result;
      }

      return 0;
    case 1886283375:
      if (!a3)
      {
        goto LABEL_25;
      }

      v7 = 16;
      goto LABEL_24;
  }

LABEL_28:

  return AudioFileObject::GetPropertyInfo(this, a2, a3, a4);
}

uint64_t MPEGAudioFile::WritePackets(MPEGAudioFile *this, uint64_t a2, uint64_t a3, const AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, void *a7)
{
  v49 = *MEMORY[0x1E69E9840];
  v14 = *(this + 10);
  v15 = *(this + 9);
  v45 = 0;
  p_mDataByteSize = &a4->mDataByteSize;
  if (a5 || (v18 = *(this + 15)) != 0 && *(v18 + 24) || (*(this + 425) & 1) != 0)
  {
LABEL_2:
    if (v14)
    {
      return AudioFileObject::WritePackets(this, a2, a3, a4, a5, a6, a7);
    }

    if (a6)
    {
      if (*a6)
      {
        v20 = p_mDataByteSize;
        *v46 = 0;
        *&v46[8] = 0;
        (*(*this + 696))(this, -1, 0, 1);
        v21 = *(this + 15);
        if (v21)
        {
          if (*(v21 + 24) == a5)
          {
            if (!a4)
            {
              v17 = 1885563711;
              if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                return v17;
              }

              *buf = 136315394;
              *&buf[4] = "MP3AudioFile.cpp";
              LOWORD(v48[0]) = 1024;
              *(v48 + 2) = 1022;
              v23 = MEMORY[0x1E69E9C10];
              v24 = "%25s:%-5d  Packet Descriptions were not provided";
              goto LABEL_30;
            }

            v22 = *(v21 + 24);
            if (v22)
            {
              CompressedPacketTable::operator[](buf, v21, v22 - 1);
              v15 += *buf + v48[0];
            }

            v17 = (*(**(this + 13) + 56))(*(this + 13), 0, v15, a3, a7, &v45);
            if (v17)
            {
              if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                return v17;
              }

              *buf = 136315394;
              *&buf[4] = "MP3AudioFile.cpp";
              LOWORD(v48[0]) = 1024;
              *(v48 + 2) = 1032;
              v23 = MEMORY[0x1E69E9C10];
              v24 = "%25s:%-5d  GetDataSource()->WriteBytes Failed";
LABEL_30:
              _os_log_impl(&dword_18F5DF000, v23, OS_LOG_TYPE_ERROR, v24, buf, 0x12u);
              return v17;
            }

            if (a5)
            {
              CompressedPacketTable::operator[](buf, v21, 0);
              v20 = v48;
            }

            if (*a6)
            {
              v34 = 0;
              v35 = *v20;
              v36 = &a4->mDataByteSize;
              do
              {
                v37 = *(this + 15);
                if (v37)
                {
                  v37 = *(v37 + 24);
                  if (v37)
                  {
                    CompressedPacketTable::operator[](buf, v21, v37 - 1);
                    v37 = *buf + v48[0];
                  }
                }

                *v46 = v37;
                v38 = *v36;
                *&v46[8] = 0;
                *&v46[12] = v38;
                AudioFileObject::AppendPacket(this, v46);
                if (*(this + 424) == 1 && v38 != v35)
                {
                  *(this + 424) = 0;
                }

                ++v34;
                v36 += 4;
              }

              while (v34 < *a6);
            }

            return 0;
          }
        }

        else if (!a5)
        {
          operator new();
        }

        return 1885563711;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 136315394;
      *&buf[4] = "MP3AudioFile.cpp";
      LOWORD(v48[0]) = 1024;
      *(v48 + 2) = 1009;
      v25 = MEMORY[0x1E69E9C10];
      v26 = "%25s:%-5d  WritePackets Failed - *ioNumPackets == 0";
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 136315394;
      *&buf[4] = "MP3AudioFile.cpp";
      LOWORD(v48[0]) = 1024;
      *(v48 + 2) = 1008;
      v25 = MEMORY[0x1E69E9C10];
      v26 = "%25s:%-5d  WritePackets Failed - ioNumPackets == NULL";
    }

    _os_log_impl(&dword_18F5DF000, v25, OS_LOG_TYPE_ERROR, v26, buf, 0x12u);
    return 0;
  }

  MPEGPacketParser::MPEGPacketParser(buf, a7, a3);
  v43 = p_mDataByteSize;
  if (buf[0] != 1)
  {
    goto LABEL_49;
  }

  *(this + 104) = v15;
  if (v14)
  {
    v41 = 1231971951;
    v19 = v14;
  }

  else
  {
    v19 = *p_mDataByteSize;
    v41 = 1483304551;
  }

  v27 = v19;
  CADeprecated::CAAutoFree<unsigned char>::CAAutoFree(&v44, v19, 1);
  v40 = v15;
  v28 = v48[12];
  v42 = v27;
  bzero(v44, v27);
  *v44 = *a7;
  v29 = bswap32(v41);
  *(this + 105) = 4;
  if (LOBYTE(v48[0]) == 1 && v28 == 2)
  {
    v30 = 36;
    v31 = 36;
  }

  else
  {
    v31 = 21;
    if (LOBYTE(v48[0]) != 1 && v28 == 1)
    {
      v30 = 13;
    }

    else
    {
      v30 = 21;
    }

    if (LOBYTE(v48[0]) != 1 && v28 == 1)
    {
      v31 = 13;
    }
  }

  v15 = v40;
  *(this + 105) = v30;
  v32 = v44 + v31;
  *v32 = v29;
  *(v32 + 1) = 0;
  *(v32 + 1) = 0;
  v17 = (*(**(this + 13) + 56))(*(this + 13), 0, v40, v27, v44, &v45);
  if (v17)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v46 = 136315394;
      *&v46[4] = "MP3AudioFile.cpp";
      *&v46[12] = 1024;
      *&v46[14] = 992;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  WritePackets: Failed to Write Xing Packet", v46, 0x12u);
    }
  }

  else
  {
    v15 = v40 + v42;
    *(this + 9) = v40 + v42;
  }

  if (v44)
  {
    free(v44);
  }

  if (!v17)
  {
LABEL_49:
    p_mDataByteSize = v43;
    goto LABEL_2;
  }

  return v17;
}

void sub_18F858E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a13)
  {
    free(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MPEGAudioFile::ReadPackets(MPEGAudioFile *this, uint64_t a2, unsigned int *a3, AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, char *a7)
{
  v7 = a7;
  v59 = *MEMORY[0x1E69E9840];
  if (!*(this + 10))
  {
    if (a4)
    {
      v12 = a7 == 0;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v54 = v13;
    if (!a6 || (v14 = *a6, !v14))
    {
      v17 = 2003334207;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "MP3AudioFile.cpp";
        LOWORD(v58[0]) = 1024;
        *(v58 + 2) = 837;
        _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  invalid num packets parameter", buf, 0x12u);
      }

      return v17;
    }

    v16 = (*(*this + 696))(this, v14 + a5, 0, 1);
    if (v16)
    {
      if (v16 == -39)
      {
        return 0;
      }

      else
      {
        return v16;
      }
    }

    v46 = a5;
    v18 = *(this + 15);
    if (!v18)
    {
      return 1685348671;
    }

    v19 = *(v18 + 24);
    v20 = a5;
    v48 = a6;
    if (v19 <= a5)
    {
      if (a3)
      {
        *a3 = 0;
      }

      v17 = 0;
      *a6 = 0;
      return v17;
    }

    v51 = *a6;
    if (v51 + a5 > v19)
    {
      LODWORD(v51) = v19 - a5;
      *a6 = v19 - a5;
    }

    if (v54)
    {
      v50 = 0;
    }

    else
    {
      v47 = v18;
      v56 = 0;
      if (v51)
      {
        v21 = 0;
        v50 = 0;
        v22 = a5;
        v23 = v51;
        while (1)
        {
          v49 = v21;
          v24 = *(this + 15);
          v25 = *(v24 + 24);
          v52 = v23;
          v26 = v22 + v23 >= v25 ? v25 - v22 : v23;
          if (v25 <= v22)
          {
            LODWORD(v29) = 0;
            v27 = 0;
          }

          else
          {
            CompressedPacketTable::operator[](buf, v24, v22);
            v27 = v58[0];
            if (v26 < 2)
            {
              LODWORD(v29) = 1;
            }

            else
            {
              v28 = *buf;
              v29 = 1;
              v30 = v58[0];
              do
              {
                CompressedPacketTable::operator[](buf, v24, v29 + v22);
                v31 = v28 + v30;
                v28 = *buf;
                if (v31 < *buf)
                {
                  break;
                }

                v30 = v58[0];
                v29 = (v29 + 1);
                v27 += v58[0];
              }

              while (v26 > v29);
            }
          }

          CompressedPacketTable::operator[](buf, v47, v22);
          v56 = v27;
          v32 = (*(*this + 72))(this, a2, *buf, &v56, v7);
          v17 = v32;
          if (v32 != -39 && v32 != 0)
          {
            return v17;
          }

          v23 = v52 - v29;
          v21 = v29 + v49;
          v7 += v56;
          v50 += v56;
          v22 += v29;
          if (v29 + v49 >= *v48)
          {
            goto LABEL_51;
          }
        }
      }

      v50 = 0;
      v21 = 0;
LABEL_51:
      LODWORD(v51) = v21;
      v20 = v46;
      v18 = v47;
      if (!a4)
      {
        goto LABEL_65;
      }
    }

    v34 = v18;
    CompressedPacketTable::operator[](buf, v18, v20);
    if (v51)
    {
      v35 = *buf;
      v36 = v46 + 1;
      v37 = v58[0];
      p_mDataByteSize = &a4->mDataByteSize;
      v39 = 1;
      v40 = v51;
      v41 = *buf;
      do
      {
        if (v54)
        {
          v42 = 0;
        }

        else
        {
          v42 = v35;
        }

        *(p_mDataByteSize - 3) = v41 - v42;
        *(p_mDataByteSize - 1) = 0;
        *p_mDataByteSize = v37;
        if (v39 < v51)
        {
          CompressedPacketTable::operator[](buf, v34, v36);
          v43 = v41 + v37;
          v41 = *buf;
          v37 = v58[0];
          v44 = __OFSUB__(*buf, v43);
          v45 = *buf - v43;
          if ((v45 < 0) ^ v44 | (v45 == 0))
          {
            v45 = 0;
          }

          v35 += v45;
        }

        ++v36;
        ++v39;
        p_mDataByteSize += 4;
        --v40;
      }

      while (v40);
    }

    else
    {
      LODWORD(v51) = 0;
    }

LABEL_65:
    if (a3)
    {
      *a3 = v50;
    }

    v17 = 0;
    *v48 = v51;
    return v17;
  }

  return AudioFileObject::ReadPackets(this, a2, a3, a4, a5, a6, a7);
}

uint64_t MPEGAudioFile::Close(MPEGAudioFile *this)
{
  if ((*(this + 100) & 2) == 0)
  {
    return 0;
  }

  v12 = v1;
  v13 = v2;
  if (*(this + 425))
  {
    return 0;
  }

  v10 = 0;
  v5 = *this;
  if (*(this + 424))
  {
    v6 = 0;
    v7 = 1231971951;
    v8 = 0x2000000;
  }

  else
  {
    v6 = (*(*this + 248))(this);
    v5 = *this;
    v7 = 1483304551;
    v8 = 50331648;
  }

  v9 = (*(v5 + 232))(this);
  v11[0] = bswap32(v7);
  v11[1] = v8;
  v11[2] = bswap32(v6);
  v11[3] = bswap32(v9);
  return (*(**(this + 13) + 56))(*(this + 13), 0, (*(this + 105) + *(this + 104)), 16, v11, &v10);
}

uint64_t MPEGAudioFile::InitializeDataSource(MPEGAudioFile *this, const AudioStreamBasicDescription *a2)
{
  result = 1718449215;
  mFormatID = a2->mFormatID;
  v5 = *(this + 21);
  if ((mFormatID != 778924083 || v5 == 1297106739) && (mFormatID != 778924082 || v5 == 1297106738))
  {
    if (mFormatID != 778924081 || v5 == 1297106737)
    {
      return 0;
    }

    else
    {
      return 1718449215;
    }
  }

  return result;
}

uint64_t MPEGAudioFile::OpenFromDataSource(MPEGAudioFile *this)
{
  v1 = this;
  v84[6] = *MEMORY[0x1E69E9840];
  v66 = 0;
  MPEGAudioFile::ParseID3Tags(this);
  v65 = 0;
  v64 = v1;
  if (*(v1 + 92) && (v2 = *(v1 + 20)) != 0)
  {
    v75[0] = 4;
    ID3ParserGetProperty(v2, 0, 0, 1953720698, v75, &v65);
    v3 = v65;
    *buf = 0;
    if ((*(**(v1 + 13) + 24))(*(v1 + 13), buf))
    {
      v4 = 0;
    }

    else
    {
      v5 = 0;
      for (i = v3; ; i += v7)
      {
        *v77 = 10;
        if ((*(**(v64 + 13) + 48))(*(v64 + 13), 0, i, 10, v82, v77) || v82[0] != 73 || v82[1] != 68 || v82[2] != 51)
        {
          break;
        }

        v7 = ID3Size(0xAu, v82, &v70);
        v5 += v7;
      }

      v4 = v5;
    }

    v1 = v64;
    v63 = v4 + v3;
  }

  else
  {
    v63 = 0;
  }

  v8 = (*(**(v1 + 13) + 24))(*(v1 + 13), &v66);
  if (v8)
  {
    goto LABEL_74;
  }

  v9 = 0;
  v62 = 0;
  v10 = *(v64 + 13);
  v11 = v66;
  *v77 = 0;
  v12 = 2;
  v68 = 0;
  *v67 = 0;
  while (1)
  {
    while (1)
    {
      while (v12 == 3)
      {
        v14 = v67[1];
        v13 = v68;
        *buf = v9;
        LODWORD(v73) = 0;
        v76[1] = 0;
        *&v70 = 0;
        v69 = 0;
        if ((*(*v10 + 48))(v10, 0, v9, 4, &v73, &v76[1]))
        {
LABEL_18:
          v12 = 1;
        }

        else
        {
          v82[0] = 0;
          *&v83[4] = 0u;
          memset(v84, 0, 48);
          if (ParseMPEGSyncWord(bswap32(v73), &v83[4]))
          {
            v15 = 0;
            v16 = 0;
            v75[0] = v83[8];
            v74[0] = v83[9];
            v17 = *&v84[1];
            v18 = HIDWORD(v84[4]);
            v76[0] = *&v83[12];
            v19 = v9 + *&v83[12];
LABEL_21:
            while (1)
            {
              v20 = 5;
              while (1)
              {
                while (1)
                {
                  while (v20 <= 7)
                  {
                    if (v20 > 5)
                    {
                      if (v20 == 6)
                      {
                        if (v75[0] == v13)
                        {
                          v20 = 7;
                        }

                        else
                        {
                          v20 = 9;
                        }
                      }

                      else if (v74[0] == v14)
                      {
                        v20 = 8;
                      }

                      else
                      {
                        v20 = 9;
                      }
                    }

                    else
                    {
                      if (v20 == 4)
                      {
                        v19 += v76[0];
                        goto LABEL_21;
                      }

                      if (GetFPosForNextSyncWordDS(v10, v64 + 93, v19, v11, buf, v75, v74, v76, &v70, &v69) == -39)
                      {
                        goto LABEL_18;
                      }

                      v20 = 6;
                      if (v19 != *buf)
                      {
                        v19 = *buf;
                        v21 = v15++ >= 3;
                        if (v21)
                        {
                          goto LABEL_51;
                        }
                      }
                    }
                  }

                  if (v20 <= 9)
                  {
                    break;
                  }

                  if (v20 == 10)
                  {
                    ++v16;
                    v20 = 4;
                    if (v16 == 4)
                    {
                      goto LABEL_18;
                    }
                  }

                  else if (v18 == v69)
                  {
                    v20 = 10;
                  }

                  else
                  {
                    v20 = 9;
                  }
                }

                if (v20 != 8)
                {
                  break;
                }

                if (v17 == *&v70)
                {
                  v20 = 11;
                }

                else
                {
                  v20 = 9;
                }
              }

              if (++v15 > 3)
              {
                break;
              }

              ++v19;
            }
          }

LABEL_51:
          v12 = 0;
        }
      }

      if (!v12)
      {
        break;
      }

      if (v12 == 1)
      {
        *(v64 + 9) = v63;
        *v76 = 0;
        v73 = 0;
        *v74 = 0;
        v72 = 0;
        v70 = 0u;
        v71 = 0u;
        v8 = (*(**(v64 + 13) + 24))(*(v64 + 13), v74);
        if (v8)
        {
          goto LABEL_71;
        }

        v22 = *(v64 + 9);
        *v75 = v22;
        v23 = *(v64 + 93) == 1 ? *v74 - 128 : *v74;
        v8 = (*(**(v64 + 13) + 48))(*(v64 + 13), 0, v22, 4, &v76[1], v76);
        if (v8)
        {
          goto LABEL_71;
        }

        v8 = 1685348671;
        memset(v84, 0, 48);
        *&v83[4] = 0u;
        v24 = ParseMPEGSyncWord(bswap32(v76[1]), &v83[4]);
        v82[0] = v24;
        if (!v24)
        {
          goto LABEL_69;
        }

        v25 = *&v83[12];
        if (!*&v83[12] || v22 + *&v83[12] > v23)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
LABEL_69:
            v27 = 1685348671;
LABEL_70:
            v8 = v27;
            goto LABEL_71;
          }

          *buf = 136315394;
          *&buf[4] = "MP3AudioFile.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1378;
          v26 = MEMORY[0x1E69E9C10];
LABEL_68:
          _os_log_impl(&dword_18F5DF000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d  Invalid Packet Size", buf, 0x12u);
          goto LABEL_69;
        }

        v31 = v83[9];
        *(v64 + 36) = v83[8];
        *(v64 + 37) = v31;
        v32 = *&v83[16] + 8;
        *(v64 + 52) = *&v83[16] + 8;
        if (v25 > v32)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_69;
          }

          *buf = 136315394;
          *&buf[4] = "MP3AudioFile.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1384;
          v26 = MEMORY[0x1E69E9C10];
          goto LABEL_68;
        }

        v33 = MPEGAudioMaximumNumberOfDependentPackets(&v84[1], HIDWORD(v84[0]));
        (*(*v64 + 688))(v64, v33);
        v70 = *&v84[1];
        v71 = *&v84[3];
        v72 = v84[5];
        if (*&v84[1] <= 0.0)
        {
          goto LABEL_69;
        }

        v27 = (*(*v64 + 184))(v64, &v70, *&v84[1]);
        if (v27)
        {
          goto LABEL_70;
        }

        v34 = *(v64 + 20);
        if (v34)
        {
          GetPacketTableInfoFromID3(v34, v64 + 25);
        }

        CADeprecated::CAAutoFree<unsigned char>::allocBytes(&v73, v25, 0);
        v35 = v73;
        FPosForNextMatchingSyncWordDS = (*(**(v64 + 13) + 48))(*(v64 + 13), 0, v22, v25, v73, v76);
        if (FPosForNextMatchingSyncWordDS)
        {
          goto LABEL_87;
        }

        if (!GetMetaHeader(v64 + 232, v35, v25))
        {
          if (!ParseVBRIPacket(v35, v25, v64 + 216))
          {
            if (*(v64 + 50) != -1)
            {
LABEL_136:
              v8 = 0;
              goto LABEL_88;
            }

            v44 = 0;
LABEL_126:
            *buf = v35;
            *&buf[8] = v35;
            *&buf[16] = &v35[v25];
            v81 = 0;
            if ((v35 & 3) != 0)
            {
              v51 = 0;
              v52 = v35 + 1;
              v53 = -8;
              v54 = v35;
              do
              {
                HIDWORD(v81) = v53 + 16;
                if (v54 >= &v35[v25])
                {
                  v55 = 255;
                }

                else
                {
                  v55 = *v54;
                }

                v51 = v55 | (v51 << 8);
                *buf = ++v54;
                v53 += 8;
              }

              while ((v52++ & 3) != 0);
              LODWORD(v81) = v51 << (24 - v53);
            }

            if ((v44 & MPEGAudioOFLInfo::Deserialize(v64 + 384, buf)) == 1)
            {
              v57 = *(v64 + 192);
              *(v64 + 102) = v57;
              v58 = *(v64 + 97);
              *(v64 + 50) = v58;
              *(v64 + 103) = (*(v64 + 54) * *(v64 + 11) - (v58 + v57)) & ~((*(v64 + 54) * *(v64 + 11) - (v58 + v57)) >> 31);
            }

            goto LABEL_136;
          }

          v46 = *(v64 + 27);
          if (v46)
          {
            *(v64 + 27) = --v46;
          }

          v45 = v64;
          v47 = *(v64 + 56);
          if (v47 > v25)
          {
            *(v64 + 56) = v47 - v25;
          }

          v37 = *(v64 + 3);
          *(v64 + 24) = (v46 * *(v64 + 11)) / v37;
          goto LABEL_114;
        }

        v38 = *(v64 + 60);
        if ((v38 & 2) != 0)
        {
          v39 = *(v64 + 62);
          v21 = v39 >= v25;
          v40 = v39 - v25;
          if (!v21)
          {
            v40 = 0;
          }

          *(v64 + 56) = v40;
        }

        if (v38)
        {
          v45 = v64;
          v48 = *(v64 + 61);
          *(v64 + 27) = v48;
          v37 = v48;
          *(v64 + 24) = gaSamplesPerFrame[3 * (*(v64 + 36) - 1) + *(v64 + 37) - 1] / *&v70 * v48;
          if (*(v64 + 50) != -1 || (v38 & 0x20) == 0)
          {
            goto LABEL_114;
          }

          v42 = *(v64 + 186);
          *(v64 + 102) = v42;
          v43 = *(v64 + 187);
          *(v64 + 103) = v43;
        }

        else
        {
          if ((v38 & 0x10) != 0)
          {
            *v77 = v22 + v25;
            FPosForNextMatchingSyncWordDS = GetFPosForNextMatchingSyncWordDS(*(v64 + 13), v64 + 93, *(v64 + 3), *(v64 + 13), *(v64 + 36), *(v64 + 37), v22 + v25, *v74, v77);
            if (FPosForNextMatchingSyncWordDS)
            {
              goto LABEL_87;
            }

            FPosForNextMatchingSyncWordDS = (*(**(v64 + 13) + 48))(*(v64 + 13), 0, *v77, 4, &v76[1], v76);
            if (FPosForNextMatchingSyncWordDS)
            {
              goto LABEL_87;
            }

            MPEGPacketParser::MPEGPacketParser(buf, &v76[1], 4u);
            if (buf[0] != 1)
            {
              goto LABEL_88;
            }

            v38 = *(v64 + 60);
            v41 = (v38 & 2) == 0;
            if ((v38 & 2) != 0)
            {
              LODWORD(v59) = *(v64 + 56);
              v61 = v59 / vcvtd_n_f64_u32(v81, 3uLL);
              *(v64 + 24) = v61;
              LODWORD(v60) = DWORD1(v71);
              v37 = *&v70 / v60;
              *(v64 + 27) = vcvtpd_u64_f64(v61 * v37);
            }
          }

          else
          {
            v41 = 1;
          }

          if (*(v64 + 50) != -1 || (v38 & 0x20) == 0)
          {
            v45 = v64;
            if (v41)
            {
              v44 = 0;
              goto LABEL_117;
            }

            goto LABEL_114;
          }

          v42 = *(v64 + 186);
          *(v64 + 102) = v42;
          v43 = *(v64 + 187);
          *(v64 + 103) = v43;
          if (v41)
          {
            v44 = 0;
            v45 = v64;
            goto LABEL_117;
          }
        }

        v45 = v64;
        *(v64 + 50) = *(v64 + 27) * *(v64 + 11) - (v43 + v42);
LABEL_114:
        v49 = *(v45 + 24);
        if (v49 > 0.0)
        {
          LODWORD(v37) = *(v45 + 56);
          *(v45 + 57) = (*&v37 * 8.0 / v49);
        }

        v44 = 1;
LABEL_117:
        *v75 = v22 + v25;
        FPosForNextMatchingSyncWordDS = GetFPosForNextMatchingSyncWordDS(*(v45 + 13), v45 + 93, *(v45 + 3), *(v45 + 13), *(v45 + 36), *(v45 + 37), v22 + v25, *v74, v75);
        v50 = *v75;
        *(v64 + 9) = *v75;
        if (*(v64 + 50) == -1)
        {
          FPosForNextMatchingSyncWordDS = (*(**(v64 + 13) + 48))(*(v64 + 13), 0, v50, 4, &v76[1], v76);
          if (!FPosForNextMatchingSyncWordDS)
          {
            MPEGPacketParser::MPEGPacketParser(buf, &v76[1], 4u);
            if ((buf[0] & 1) == 0)
            {
              goto LABEL_88;
            }

            v25 = *&buf[16];
            if (!*&buf[16] || v50 + *&buf[16] > v23)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *v77 = 136315394;
                *&v77[4] = "MP3AudioFile.cpp";
                v78 = 1024;
                v79 = 1512;
                _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Invalid Packet Size", v77, 0x12u);
              }

LABEL_88:
              if (v35)
              {
                free(v35);
              }

              if (!v8)
              {
                return v8;
              }

LABEL_71:
              if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_74;
              }

              *v82 = 136315394;
              *v83 = "MP3AudioFile.cpp";
              *&v83[8] = 1024;
              *&v83[10] = 1571;
              v28 = MEMORY[0x1E69E9C10];
              v29 = "%25s:%-5d  ParseFirstPacket Failed";
              goto LABEL_73;
            }

            CADeprecated::CAAutoFree<unsigned char>::reallocBytes(&v73, *&buf[16]);
            v35 = v73;
            v8 = (*(**(v64 + 13) + 48))(*(v64 + 13), 0, v50, v25, v73, v76);
            if (v8)
            {
              goto LABEL_88;
            }

            goto LABEL_126;
          }
        }

LABEL_87:
        v8 = FPosForNextMatchingSyncWordDS;
        goto LABEL_88;
      }

      if (GetFPosForNextSyncWordDS(v10, v64 + 93, v63, v11, v77, &v68, &v67[1], v67, 0, 0))
      {
        goto LABEL_77;
      }

      v12 = 3;
      v9 = *v77;
      v63 = *v77;
    }

    if (++v62 > 9)
    {
      break;
    }

    ++v63;
    v12 = 2;
  }

LABEL_77:
  v8 = 1685348671;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v82 = 136315394;
    *v83 = "MP3AudioFile.cpp";
    *&v83[8] = 1024;
    *&v83[10] = 1565;
    v28 = MEMORY[0x1E69E9C10];
    v29 = "%25s:%-5d  Problem scanning for packets";
LABEL_73:
    _os_log_impl(&dword_18F5DF000, v28, OS_LOG_TYPE_ERROR, v29, v82, 0x12u);
  }

LABEL_74:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v82 = 136315394;
    *v83 = "MP3AudioFile.cpp";
    *&v83[8] = 1024;
    *&v83[10] = 1067;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  MPEGAudioFile::OpenFromDataSource failed", v82, 0x12u);
  }

  return v8;
}

void sub_18F85A1E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  if (a25)
  {
    free(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MPEGAudioFile::Create(MPEGAudioFile *this, const __CFURL *a2, const AudioStreamBasicDescription *a3)
{
  mFormatID = a3->mFormatID;
  v4 = *(this + 21);
  v5 = mFormatID != 778924083 || v4 == 1297106739;
  if (v5 && (mFormatID == 778924082 ? (v6 = v4 == 1297106738) : (v6 = 1), v6 && (mFormatID != 778924081 || v4 == 1297106737)))
  {
    return AudioFileObject::Create(this, a2, a3);
  }

  else
  {
    return 1718449215;
  }
}

void MPEGAudioFile::~MPEGAudioFile(MPEGAudioFile *this)
{
  MPEGAudioFile::~MPEGAudioFile(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0336FB0;
  v2 = *(this + 20);
  if (v2)
  {
    ID3ParserClose(v2);
  }

  v3 = *(this + 54);
  if (v3)
  {
    CACFDictionary::~CACFDictionary(v3);
    MEMORY[0x193ADF220]();
  }

  v4 = *(this + 21);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 20);
  if (v5)
  {
    ID3ParserClose(v5);
  }

  v6 = *(this + 55);
  if (v6)
  {
    free(v6);
  }

  AudioFileObject::~AudioFileObject(this);
}

uint64_t MPEGAudioFormat::GetHFSCodes(MPEGAudioFormat *this, unsigned int *a2, void *a3)
{
  v6 = *(this + 2) - 1297106737;
  if (v6 > 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = dword_18F917BAC[v6];
  }

  std::vector<unsigned int>::vector[abi:ne200100](__src, v7);
  v8 = *(this + 2);
  v9 = __src[0];
  if (v8 == 1297106739)
  {
    *__src[0] = xmmword_18F901C20;
    v9[2] = 0x4D5033206D706733;
  }

  else
  {
    if (v8 == 1297106738)
    {
      v10 = 0x4D5047324D703220;
    }

    else
    {
      if (v8 != 1297106737)
      {
        goto LABEL_11;
      }

      v10 = 0x4D5047314D703120;
    }

    *__src[0] = v10;
  }

LABEL_11:
  v11 = *a2 >> 2;
  if (v11 >= v7)
  {
    v11 = v7;
  }

  v12 = 4 * v11;
  *a2 = v12;
  if (a3)
  {
    memcpy(a3, v9, v12);
  }

  if (v9)
  {
    __src[1] = v9;
    operator delete(v9);
  }

  return 0;
}

uint64_t MPEGAudioFormat::GetAvailableStreamDescriptions(MPEGAudioFormat *this, int a2, unsigned int *a3, void *__dst)
{
  v6 = *(this + 2);
  if (v6 == 1297106738)
  {
    v7 = 778924082;
  }

  else
  {
    v7 = 778924083;
  }

  if (v6 == 1297106737)
  {
    v8 = 778924081;
  }

  else
  {
    v8 = v7;
  }

  if (v8 == a2)
  {
    v13 = v4;
    v14 = v5;
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    DWORD2(v11[0]) = 778924083;
    if (*a3 >= 0x28)
    {
      v9 = 40;
    }

    else
    {
      v9 = 0;
    }

    *a3 = v9;
    if (__dst)
    {
      memcpy(__dst, v11, v9);
    }

    return 0;
  }

  else
  {
    *a3 = 0;
    return 1718449215;
  }
}

uint64_t MPEGAudioFormat::GetAvailableFormatIDs(MPEGAudioFormat *this, unsigned int *a2, void *__dst)
{
  v3 = *(this + 2);
  if (v3 == 1297106738)
  {
    v4 = 778924082;
  }

  else
  {
    v4 = 778924083;
  }

  if (v3 == 1297106737)
  {
    v5 = 778924081;
  }

  else
  {
    v5 = v4;
  }

  __src = v5;
  v6 = 4 * (*a2 > 3);
  *a2 = v6;
  if (__dst)
  {
    memcpy(__dst, &__src, v6);
  }

  return 0;
}

void MPEGAudioFormat::GetFileTypeName(MPEGAudioFormat *this, const __CFString **a2)
{
  CABundleLocker::CABundleLocker(&v7);
  v4 = sAudioToolboxBundle;
  if (sAudioToolboxBundle != -1)
  {
    if (sAudioToolboxBundle)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = CFRetain(@"MPEG");
    goto LABEL_7;
  }

  pthread_once(&sOnce, InitGetAudioToolboxBundle);
  v4 = sAudioToolboxBundle;
  if (!sAudioToolboxBundle)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = *(this + 2) - 1297106737;
  if (v5 < 3)
  {
    v6 = CFBundleCopyLocalizedString(v4, *(&off_1E72C1E60 + v5), *(&off_1E72C1E60 + v5), @"FileTypeNames");
LABEL_7:
    *a2 = v6;
  }

  CABundleLocker::~CABundleLocker(&v7);
}

CFArrayRef MPEGAudioFormat::GetMIMETypes(CFArrayRef this, const __CFArray **a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *(this + 2);
  if ((v3 - 1297106737) >= 2)
  {
    if (v3 != 1297106739)
    {
      return this;
    }

    v7 = @"audio/mp3";
    v8 = @"audio/x-mp3";
    v9 = @"audio/x-mpeg3";
    v10 = @"audio/x-mpeg";
    v11 = @"audio/mpeg";
    v12 = @"audio/mpeg3";
    v13 = @"audio/mpg";
    v14 = @"audio/x-mpg";
    v15 = @"audio/mpa";
    v4 = *MEMORY[0x1E695E480];
    v5 = MEMORY[0x1E695E9C0];
    v6 = 9;
  }

  else
  {
    v7 = @"audio/mpeg";
    v8 = @"audio/x-mpeg";
    v9 = @"audio/mpg";
    v10 = @"audio/x-mpg";
    v11 = @"audio/mpa";
    v4 = *MEMORY[0x1E695E480];
    v5 = MEMORY[0x1E695E9C0];
    v6 = 5;
  }

  this = CFArrayCreate(v4, &v7, v6, v5);
  *a2 = this;
  return this;
}

const __CFArray *MPEGAudioFormat::GetUTIs(MPEGAudioFormat *this, const __CFArray **a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v3 = *(this + 2);
  switch(v3)
  {
    case 1297106739:
      v4 = @"public.mp3";
      goto LABEL_7;
    case 1297106738:
      v4 = @"public.mp2";
      goto LABEL_7;
    case 1297106737:
      v4 = @"public.mp1";
LABEL_7:
      v6[0] = v4;
      break;
  }

  result = CFArrayCreate(*MEMORY[0x1E695E480], v6, 1, MEMORY[0x1E695E9C0]);
  *a2 = result;
  return result;
}

const __CFArray *MPEGAudioFormat::GetExtensions(MPEGAudioFormat *this, const __CFArray **a2)
{
  v6[5] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v3 = *(this + 2);
  switch(v3)
  {
    case 1297106739:
      v4 = @"mp3";
      goto LABEL_7;
    case 1297106738:
      v4 = @"mp2";
      goto LABEL_7;
    case 1297106737:
      v4 = @"mp1";
LABEL_7:
      v6[0] = v4;
      break;
  }

  v6[1] = @"mpeg";
  v6[2] = @"mpa";
  v6[3] = @"m1a";
  v6[4] = @"m2a";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v6, 5, MEMORY[0x1E695E9C0]);
  *a2 = result;
  return result;
}

uint64_t MPEGAudioFormat::FileDataIsThisFormat(MPEGAudioFormat *this, unsigned int a2, unsigned int *a3)
{
  MPEGPacketParser::MPEGPacketParser(v9, a3, a2);
  if (v9[0] == 1 && ((v4 = *(this + 2), v4 == 1297106738) ? (v5 = 778924082) : (v5 = 778924083), v4 != 1297106737 ? (v6 = v5) : (v6 = 778924081), v10 - 1 <= 2 ? (v7 = (v10 - 1) + 778924081 == v6) : (v7 = 0), v7))
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

BOOL MPEGAudioFormat::ExtensionIsThisFormat(MPEGAudioFormat *this, CFStringRef theString1)
{
  v3 = *(this + 2);
  if (v3 == 1297106738)
  {
    v4 = @"mp2";
  }

  else
  {
    v4 = @"mp3";
  }

  if (v3 == 1297106737)
  {
    v5 = @"mp1";
  }

  else
  {
    v5 = v4;
  }

  v6 = 1;
  if (CFStringCompare(theString1, v5, 1uLL))
  {
    v6 = 1;
    if (CFStringCompare(theString1, @"mpeg", 1uLL))
    {
      v6 = 1;
      if (CFStringCompare(theString1, @"mpa", 1uLL))
      {
        v6 = 1;
        if (CFStringCompare(theString1, @"m1a", 1uLL))
        {
          return CFStringCompare(theString1, @"m2a", 1uLL) == kCFCompareEqualTo;
        }
      }
    }
  }

  return v6;
}

UIImage *__cdecl AudioComponentGetIcon(AudioComponent comp, float desiredPointSize)
{
  v8 = desiredPointSize;
  v9 = 0;
  GlobalComponentPluginMgr(&v6);
  (*(*v7 + 48))(v7, comp, &v8);
  if (v6)
  {
    std::recursive_mutex::unlock(v6);
  }

  v3 = v9;
  v4 = v9;

  return v3;
}

void sub_18F85AE0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::recursive_mutex *a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a9)
  {
    std::recursive_mutex::unlock(a9);
  }

  _Unwind_Resume(a1);
}

UIImage *__cdecl AudioComponentCopyIcon(AudioComponent comp)
{
  v6 = 0;
  v7 = 0;
  GlobalComponentPluginMgr(&v4);
  (*(*v5 + 48))(v5, comp, &v6);
  if (v4)
  {
    std::recursive_mutex::unlock(v4);
  }

  v2 = v7;

  return v2;
}

uint64_t AudioAnalyzerNew(CFArrayRef theArray, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    if (!theArray)
    {
      return 4294963435;
    }

    if (a4)
    {
      v5 = 0;
      do
      {
        if (v5 >= CFArrayGetCount(theArray))
        {
          operator new();
        }

        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5++);
      }

      while (KeyIsValid(ValueAtIndex));
      return 4294963435;
    }
  }

  return 4294967246;
}

uint64_t AudioAnalyzerNewWithBlock(CFArrayRef theArray, uint64_t a2, void *a3)
{
  if (a2)
  {
    if (!theArray)
    {
      return 4294963435;
    }

    if (a3)
    {
      v4 = 0;
      do
      {
        if (v4 >= CFArrayGetCount(theArray))
        {
          operator new();
        }

        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4++);
      }

      while (KeyIsValid(ValueAtIndex));
      return 4294963435;
    }
  }

  return 4294967246;
}

uint64_t AudioAnalyzerDispose(unsigned int a1)
{
  v1 = BaseOpaqueObject::ResolveOpaqueRef();
  if (!v1)
  {
    return 4294967246;
  }

  (*(*v1 + 8))(v1);
  return 0;
}

uint64_t AudioAnalyzerPrepare(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    return 4294967246;
  }

  if (a6 < 0)
  {
    return 4294967246;
  }

  v6 = BaseOpaqueObject::ResolveOpaqueRef();
  if (!v6)
  {
    return 4294967246;
  }

  v7 = *(*v6 + 32);

  return v7();
}

uint64_t AudioAnalyzerPrepareWithFileStream(unsigned int a1)
{
  v1 = BaseOpaqueObject::ResolveOpaqueRef();
  if (!v1)
  {
    return 4294967246;
  }

  v2 = *(*v1 + 40);

  return v2();
}

uint64_t AudioAnalyzerPrepareWithFile(unsigned int a1)
{
  v1 = BaseOpaqueObject::ResolveOpaqueRef();
  if (!v1)
  {
    return 4294967246;
  }

  v2 = *(*v1 + 48);

  return v2();
}

uint64_t AudioAnalyzerPushAudio(unsigned int a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 4294967246;
  }

  v3 = BaseOpaqueObject::ResolveOpaqueRef();
  if (!v3)
  {
    return 4294967246;
  }

  if (v3[12] == 1)
  {
    v4 = *(*v3 + 64);

    return v4();
  }

  else
  {
    v6 = *(*v3 + 56);

    return v6();
  }
}

uint64_t AudioAnalyzerCompleteAnalysis(unsigned int a1)
{
  v1 = BaseOpaqueObject::ResolveOpaqueRef();
  if (!v1)
  {
    return 4294967246;
  }

  v2 = *(*v1 + 72);

  return v2();
}

uint64_t AudioAnalyzerCompleteAnalysisWithBlock(unsigned int a1)
{
  v1 = BaseOpaqueObject::ResolveOpaqueRef();
  if (!v1)
  {
    return 4294967246;
  }

  v2 = *(*v1 + 72);

  return v2();
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<auoop::TrackedWorkgroup *,auoop::TrackedWorkgroup *,auoop::TrackedWorkgroup *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (a1 == a2)
  {
    return a1;
  }

  v5 = a2;
  do
  {
    *a3 = *v4;
    WeakRetained = objc_loadWeakRetained((v4 + 16));
    objc_storeWeak((a3 + 16), WeakRetained);

    a3 += 24;
    v4 += 24;
  }

  while (v4 != v5);
  return v5;
}

uint64_t std::__split_buffer<auoop::TrackedWorkgroup>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    objc_destroyWeak((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<auoop::TrackedWorkgroup>,auoop::TrackedWorkgroup*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = a1;
    do
    {
      *a3 = *v6;
      objc_moveWeak((a3 + 16), (v6 + 16));
      v6 += 24;
      a3 += 24;
    }

    while (v6 != a2);
    do
    {
      objc_destroyWeak((v5 + 16));
      v5 += 24;
    }

    while (v5 != a2);
  }
}

__n128 std::__function::__func<auoop::WorkgroupManager_iOS::addRemoteIOWorkgroup(unsigned int,caulk::mach::os_workgroup_managed)::$_0,std::allocator<auoop::WorkgroupManager_iOS::addRemoteIOWorkgroup(unsigned int,caulk::mach::os_workgroup_managed)::$_0>,BOOL ()(auoop::WorkgroupManager_Base::State &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F03373C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<auoop::WorkgroupManager_iOS::removeRemoteIOWorkgroup(unsigned int)::$_0,std::allocator<auoop::WorkgroupManager_iOS::removeRemoteIOWorkgroup(unsigned int)::$_0>,BOOL ()(auoop::WorkgroupManager_Base::State &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F0337408;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<auoop::WorkgroupManager_Base::newWorkIntervalCreated(caulk::mach::os_workgroup_managed const&)::$_0,std::allocator<auoop::WorkgroupManager_Base::newWorkIntervalCreated(caulk::mach::os_workgroup_managed const&)::$_0>,BOOL ()(auoop::WorkgroupManager_Base::State &)>::operator()(uint64_t a1, auoop::WorkgroupManager_Base::State *a2)
{
  v3 = *(*(a1 + 8) + 8);
  applesauce::dispatch::v1::queue::operator*(v3);
  objc_claimAutoreleasedReturnValue();
  auoop::WorkgroupManager_Base::State::addWorkgroup(a2, 0, v3);

  return 1;
}

uint64_t std::__function::__func<auoop::WorkgroupManager_Base::newWorkIntervalCreated(caulk::mach::os_workgroup_managed const&)::$_0,std::allocator<auoop::WorkgroupManager_Base::newWorkIntervalCreated(caulk::mach::os_workgroup_managed const&)::$_0>,BOOL ()(auoop::WorkgroupManager_Base::State &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F0337378;
  a2[1] = v2;
  return result;
}

void auoop::WorkgroupMirror::update(auoop::WorkgroupMirror *this, const applesauce::xpc::dict *a2)
{
  v81 = *MEMORY[0x1E69E9840];
  if (!kAUExtensionScope)
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
    goto LABEL_5;
  }

  v4 = *kAUExtensionScope;
  if (v4)
  {
LABEL_5:
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AUOOPWorkgroups.mm";
      *&buf[12] = 1024;
      *&buf[14] = 356;
      _os_log_impl(&dword_18F5DF000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUOOPWorkgroupManager: Updating workgroups", buf, 0x12u);
    }
  }

  os_unfair_lock_lock(this);
  *buf = a2;
  *&buf[8] = "remove";
  applesauce::xpc::dict::object_proxy::operator applesauce::xpc::array(&v56, buf);
  *buf = a2;
  *&buf[8] = "add";
  applesauce::xpc::dict::object_proxy::operator applesauce::xpc::array(&xarray, buf);
  v6 = v56;
  applesauce::xpc::object::object(buf, v56);
  applesauce::xpc::object::object(&v70, *buf);
  v71 = 0;
  v7 = *buf;
  *buf = 0;

  applesauce::xpc::object::object(buf, v6);
  if (object_getClass(v6) == MEMORY[0x1E69E9E50])
  {
    count = xpc_array_get_count(v6);
  }

  else
  {
    count = 0;
  }

  applesauce::xpc::object::object(&v66, *buf);
  v67 = count;
  v9 = *buf;
  *buf = 0;

  v10 = v71;
  v11 = MEMORY[0x1E69E9C10];
  while (v10 != v67)
  {
LABEL_15:
    v62 = &v70;
    v63 = v10;
    v15 = applesauce::xpc::array::object_proxy::operator*(&v62);
    value = xpc_uint64_get_value(v15);

    *buf = this + 56;
    buf[8] = 1;
    std::mutex::lock((this + 56));
    v17 = atomic_load(this + 2);
    if (v17)
    {
      SlotForKey = caulk::concurrent::guarded_lookup_hash_table<unsigned long,caulk::mach::os_workgroup_managed,(caulk::concurrent::guarded_lookup_hash_table_options)0,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long>>::table_impl::findSlotForKey(v17, value);
      if (SlotForKey)
      {
        v20 = v19;
        atomic_store(0xFFFFFFFFFFFFFFFFLL, (v17 + 8 * HIDWORD(SlotForKey) + 16));
        if (v19)
        {
          v21 = atomic_load(this + 6);
          if (v21 >= 1)
          {
            do
            {
              __ns.__rep_ = 50000;
              std::this_thread::sleep_for (&__ns);
              v22 = atomic_load(this + 6);
            }

            while (v22 > 0);
          }

          if (atomic_load(v20))
          {
            if ((buf[8] & 1) == 0)
            {
              std::__throw_system_error(1, "unique_lock::unlock: not locked");
              __break(1u);
            }

            std::mutex::unlock(*buf);
            buf[8] = 0;
            while (atomic_load(v20))
            {
              __ns.__rep_ = 500000;
              std::this_thread::sleep_for (&__ns);
            }

            std::unique_lock<std::mutex>::lock[abi:ne200100](buf);
            v17 = atomic_load(this + 2);
          }

          caulk::concurrent::guarded_lookup_hash_table<unsigned long,caulk::mach::os_workgroup_managed,(caulk::concurrent::guarded_lookup_hash_table_options)0,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long>>::element_t::release(v20);
          v25 = *(this + 2) - 1;
          *(this + 2) = v25;
          if (v17)
          {
            v26 = 16 * v25;
            v27 = *(v17 + 8);
            if (v26 / v27 <= 2 && v27 >= 9)
            {
              caulk::concurrent::guarded_lookup_hash_table<unsigned long,caulk::mach::os_workgroup_managed,(caulk::concurrent::guarded_lookup_hash_table_options)0,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long>>::rehash(this + 1, v27 >> 1);
            }
          }
        }
      }
    }

    v29 = atomic_load(this + 6);
    if (v29 <= 0)
    {
      std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned long,caulk::mach::os_workgroup_managed,(caulk::concurrent::guarded_lookup_hash_table_options)0,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned long,caulk::mach::os_workgroup_managed,(caulk::concurrent::guarded_lookup_hash_table_options)0,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long>>::table_impl>>>::__base_destruct_at_end[abi:ne200100](this + 32, *(this + 4));
    }

    if (buf[8] == 1)
    {
      std::mutex::unlock(*buf);
    }

    if (kAUExtensionScope)
    {
      v30 = *kAUExtensionScope;
      if (!v30)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v31 = v11;
      v30 = v11;
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "AUOOPWorkgroups.mm";
      *&buf[12] = 1024;
      *&buf[14] = 366;
      v75 = 2048;
      v76 = value;
      _os_log_impl(&dword_18F5DF000, v30, OS_LOG_TYPE_DEBUG, "%25s:%-5d wg mirror remove %p", buf, 0x1Cu);
    }

LABEL_44:
    v10 = ++v71;
  }

  v12 = v70;
  v13 = v66;
  v14 = v12 == v13;

  if (!v14)
  {
    v10 = v71;
    goto LABEL_15;
  }

  v32 = v66;
  v66 = 0;

  v33 = v70;
  v70 = 0;

  if (object_getClass(xarray) == MEMORY[0x1E69E9E50])
  {
    v34 = xpc_array_get_count(xarray);
    if (v34)
    {
      v53 = v34;
      v54 = v34 - 1;
      v35 = 1;
      do
      {
        *buf = &xarray;
        *&buf[8] = v35 - 1;
        v36 = applesauce::xpc::array::object_proxy::operator*(buf);
        v37 = xpc_uint64_get_value(v36);

        if (v35 - 1 >= v54 || !v37)
        {
          goto LABEL_68;
        }

        *buf = &xarray;
        *&buf[8] = v35;
        v38 = applesauce::xpc::array::object_proxy::operator*(buf);
        v39 = xpc_mach_send_copy_right();

        BYTE3(v76) = 0;
        buf[0] = 0;
        caulk::mach::os_workgroup_managed::make();
        if (SBYTE3(v76) < 0)
        {
          operator delete(*buf);
        }

        v58 = MEMORY[0x1E69E3C18] + 16;
        v59 = caulk::mach::details::retain_os_object(v63, v40);
        v60 = v64;
        v61[0] = v65[0];
        *(v61 + 9) = *(v65 + 9);
        v66 = (MEMORY[0x1E69E3C18] + 16);
        v67 = caulk::mach::details::retain_os_object(v59, v41);
        v68 = v60;
        v69[0] = v61[0];
        *(v69 + 9) = *(v61 + 9);
        std::mutex::lock((this + 56));
        v43 = atomic_load(this + 2);
        v44 = *(this + 2) + 1;
        *(this + 2) = v44;
        if (v43)
        {
          v45 = 16 * v44;
          v46 = *(v43 + 8);
          if (v45 / v46 < 0xB)
          {
            goto LABEL_57;
          }

          v47 = 2 * v46;
        }

        else
        {
          v47 = 8;
        }

        v43 = caulk::concurrent::guarded_lookup_hash_table<unsigned long,caulk::mach::os_workgroup_managed,(caulk::concurrent::guarded_lookup_hash_table_options)0,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long>>::rehash(this + 1, v47);
LABEL_57:
        v70 = (MEMORY[0x1E69E3C18] + 16);
        v71 = caulk::mach::details::retain_os_object(v67, v42);
        v72 = v68;
        v73[0] = v69[0];
        *(v73 + 9) = *(v69 + 9);
        if ((caulk::concurrent::guarded_lookup_hash_table<unsigned long,caulk::mach::os_workgroup_managed,(caulk::concurrent::guarded_lookup_hash_table_options)0,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long>>::table_impl::findSlotForKey(v43, v37) & 1) == 0)
        {
          operator new();
        }

        caulk::mach::os_workgroup_managed::~os_workgroup_managed(&v70);
        --*(this + 2);
        std::mutex::unlock((this + 56));
        caulk::mach::os_workgroup_managed::~os_workgroup_managed(&v66);
        caulk::mach::os_workgroup_managed::~os_workgroup_managed(&v58);
        if (!kAUExtensionScope)
        {
          v48 = MEMORY[0x1E69E9C10];
          v49 = MEMORY[0x1E69E9C10];
LABEL_64:
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            v50 = v63;
            *buf = 136316162;
            *&buf[4] = "AUOOPWorkgroups.mm";
            *&buf[12] = 1024;
            *&buf[14] = 379;
            v75 = 2048;
            v76 = v37;
            v77 = 2048;
            v78 = v37;
            v79 = 2048;
            v80 = v50;
            _os_log_impl(&dword_18F5DF000, v48, OS_LOG_TYPE_DEBUG, "%25s:%-5d wg mirror add %p (%lu) -> %p", buf, 0x30u);
          }

          goto LABEL_67;
        }

        v48 = *kAUExtensionScope;
        if (v48)
        {
          goto LABEL_64;
        }

LABEL_67:
        mach_port_deallocate(*MEMORY[0x1E69E9A60], v39);
        caulk::mach::os_workgroup_managed::~os_workgroup_managed(&v62);
LABEL_68:
        v51 = v35 + 1;
        v35 += 2;
      }

      while (v51 < v53);
    }
  }

  v52 = xarray;
  xarray = 0;

  os_unfair_lock_unlock(this);
}

void applesauce::xpc::dict::object_proxy::operator applesauce::xpc::array(xpc_object_t *a1, uint64_t a2)
{
  v3 = applesauce::xpc::dict::object_proxy::operator*(a2);
  v6 = v3;
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  v4 = v3;
  v5 = v4;
  *a1 = v4;
  if (!v4 || object_getClass(v4) != MEMORY[0x1E69E9E50])
  {
    *a1 = xpc_null_create();
  }
}

id applesauce::xpc::array::object_proxy::operator*(uint64_t a1)
{
  v2 = **a1;
  v3 = applesauce::dispatch::v1::queue::operator*(v2);
  v4 = xpc_array_get_value(v3, *(a1 + 8));

  return v4;
}

unint64_t caulk::concurrent::guarded_lookup_hash_table<unsigned long,caulk::mach::os_workgroup_managed,(caulk::concurrent::guarded_lookup_hash_table_options)0,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long>>::rehash(unint64_t *a1, unsigned int a2)
{
  v4 = atomic_load(a1 + 1);
  v5 = operator new(8 * (a2 - 1) + 24);
  v6 = v5;
  *v5 = a1;
  *(v5 + 2) = a2;
  *(v5 + 2) = 0;
  v7 = v5 + 16;
  if (a2)
  {
    v8 = a2 + 1;
    v9 = (v5 + 16);
    do
    {
      atomic_store(0, v9++);
      --v8;
    }

    while (v8 > 1);
  }

  if (v4)
  {
    v10 = *(v4 + 8);
    if (v10)
    {
      v11 = (v4 + 16);
      do
      {
        v12 = *v11;
        if (*v11 + 1 >= 2)
        {
          SlotForKey = caulk::concurrent::guarded_lookup_hash_table<unsigned long,caulk::mach::os_workgroup_managed,(caulk::concurrent::guarded_lookup_hash_table_options)0,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long>>::table_impl::findSlotForKey(v6, *(v12 + 8));
          if ((SlotForKey & 1) == 0)
          {
            atomic_fetch_add(v12, 0x10000u);
            atomic_store(v12, &v7[8 * HIDWORD(SlotForKey)]);
          }
        }

        ++v11;
        --v10;
      }

      while (v10);
    }

    atomic_store(v6, a1 + 1);
    v15 = a1[4];
    v14 = a1[5];
    if (v15 >= v14)
    {
      v17 = a1[3];
      v18 = v15 - v17;
      v19 = (v15 - v17) >> 3;
      v20 = v19 + 1;
      if ((v19 + 1) >> 61)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v21 = v14 - v17;
      if (v21 >> 2 > v20)
      {
        v20 = v21 >> 2;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFF8)
      {
        v22 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        if (!(v22 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v23 = (v15 - v17) >> 3;
      v24 = (8 * v19);
      v25 = (8 * v19 - 8 * v23);
      *v24 = v4;
      v16 = (v24 + 1);
      memcpy(v25, v17, v18);
      a1[3] = v25;
      a1[4] = v16;
      a1[5] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v15 = v4;
      v16 = (v15 + 1);
    }

    a1[4] = v16;
  }

  else
  {
    atomic_store(v5, a1 + 1);
  }

  return v6;
}

uint64_t MP4BoxParser_MediaHeader::Init(MP4BoxParser **this)
{
  result = MP4BoxParser_Full::Initialize(this);
  if (!result)
  {
    if (*(this + 5) != 1835296868)
    {
      return 4294967294;
    }

    if (*(this + 56))
    {
      if (*(this + 56) != 1)
      {
        return 0xFFFFFFFFLL;
      }

      v3 = 16;
    }

    else
    {
      v3 = 8;
    }

    v4 = (*(*this + 3))(this);
    result = MP4BoxParser::ReadDataSourceBytes(this[1], v3 + v4, 4uLL, this + 60);
    if (!result)
    {
      v5 = *(this + 15);
      *(this + 15) = bswap32(v5);
      if (v5)
      {
        return 0;
      }

      else
      {
        return 1717660012;
      }
    }
  }

  return result;
}

void MP4BoxParser_MediaHeader::~MP4BoxParser_MediaHeader(MP4BoxParser_MediaHeader *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x193ADF220);
}

{
  v2 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

uint64_t CA::ADMBuilder::Impl::parse_content(CA::ADMBuilder::Impl *this, char *__s1, std::string **a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = *(*this + 32);
  if (!strcmp(__s1, "audioContentLabel"))
  {
    v8 = *(v6 - 16);
    CA::ADMBuilder::Impl::label_from_attributes(buf, a3);
    std::vector<CA::ADMLabel>::push_back[abi:ne200100]((v8 + 96), buf);
    if (v52 < 0)
    {
      operator delete(__p);
    }

    if (BYTE4(v50) == 1 && SBYTE3(v50) < 0)
    {
      operator delete(*buf);
    }

    operator new();
  }

  if (!strcmp(__s1, "audioObjectIDRef"))
  {
    operator new();
  }

  if (!strcmp(__s1, "loudnessMetadata"))
  {
    CA::ADMBuilder::Impl::loudness_metadata_from_attributes(buf, a3);
  }

  v7 = strcmp(__s1, "dialogue");
  if (v7)
  {
    if (!strcmp(__s1, "alternativeValueSetIDRef"))
    {
      operator new();
    }

    return 1;
  }

  v9 = *(v6 - 16);
  if (*(v9 + 171) != 1)
  {
    *(v9 + 168) = 0x1000000;
    if (!a3 || (v13 = *a3) == 0)
    {
LABEL_107:
      operator new();
    }

    v14 = (a3 + 2);
    while (1)
    {
      v15 = *(v14 - 1);
      v16 = strcmp(v13, "nonDialogueContentKind");
      if (!v16)
      {
        v22 = *(v6 - 16);
        if (*(v22 + 169) == 1 && *(v22 + 168))
        {
          v23 = CA::ADMBuilder::Impl::log(v16);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v45, *(v6 - 16), "");
            v24 = &v45;
            if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v24 = v45.__r_.__value_.__r.__words[0];
            }

            *buf = 136315650;
            *&buf[4] = "ADMBuilderParseContent.cpp";
            v47 = 1024;
            v48 = 42;
            v49 = 2080;
            v50 = v24;
            v25 = v23;
LABEL_83:
            _os_log_impl(&dword_18F5DF000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d Conflicting dialogue type in content '%s'", buf, 0x1Cu);
            if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v45.__r_.__value_.__l.__data_);
            }
          }

LABEL_85:
          *(this + 158) = -66602;
          goto LABEL_106;
        }

        *(v22 + 168) = 256;
        std::string::basic_string[abi:ne200100]<0>(buf, v15);
        v26 = CA::ADMBuilder::Impl::parse_uint(this, buf);
        v27 = v26;
        if (SBYTE3(v50) < 0)
        {
          operator delete(*buf);
        }

        if (!(v27 >> 32))
        {
          goto LABEL_106;
        }

        if (v27 > 3)
        {
          switch(v27)
          {
            case 4:
              v31 = *(v6 - 16);
              v32 = 4;
              break;
            case 5:
              v31 = *(v6 - 16);
              v32 = 5;
              break;
            case 6:
              v31 = *(v6 - 16);
              v32 = 6;
              break;
            default:
LABEL_91:
              v40 = CA::ADMBuilder::Impl::log(v26);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v45, *(v6 - 16), "");
                v41 = &v45;
                if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v41 = v45.__r_.__value_.__r.__words[0];
                }

                *buf = 136315650;
                *&buf[4] = "ADMBuilderParseContent.cpp";
                v47 = 1024;
                v48 = 82;
                v49 = 2080;
                v50 = v41;
                _os_log_impl(&dword_18F5DF000, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown non-dialogue kind in content '%s'", buf, 0x1Cu);
                if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v45.__r_.__value_.__l.__data_);
                }
              }

              v37 = -66601;
              goto LABEL_105;
          }

          goto LABEL_98;
        }

        if (v27)
        {
          if (v27 != 1)
          {
            if (v27 != 2)
            {
              goto LABEL_91;
            }

            goto LABEL_89;
          }

LABEL_61:
          v31 = *(v6 - 16);
          v32 = 1;
LABEL_98:
          *(v31 + 170) = v32;
          goto LABEL_106;
        }

        goto LABEL_70;
      }

      v17 = strcmp(v13, "dialogueContentKind");
      if (!v17)
      {
        break;
      }

      v18 = strcmp(v13, "mixedContentKind");
      if (!v18)
      {
        v19 = *(v6 - 16);
        if (*(v19 + 169) == 1 && *(v19 + 168) != 2)
        {
          v38 = CA::ADMBuilder::Impl::log(v18);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v45, *(v6 - 16), "");
            v39 = &v45;
            if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v39 = v45.__r_.__value_.__r.__words[0];
            }

            *buf = 136315650;
            *&buf[4] = "ADMBuilderParseContent.cpp";
            v47 = 1024;
            v48 = 130;
            v49 = 2080;
            v50 = v39;
            v25 = v38;
            goto LABEL_83;
          }

          goto LABEL_85;
        }

        *(v19 + 168) = 258;
        std::string::basic_string[abi:ne200100]<0>(buf, v15);
        v20 = CA::ADMBuilder::Impl::parse_uint(this, buf);
        v21 = v20;
        if (SBYTE3(v50) < 0)
        {
          operator delete(*buf);
        }

        if (!(v21 >> 32))
        {
          goto LABEL_106;
        }

        if (v21 > 1)
        {
          if (v21 != 2)
          {
            if (v21 != 3)
            {
LABEL_99:
              v42 = CA::ADMBuilder::Impl::log(v20);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v45, *(v6 - 16), "");
                v43 = &v45;
                if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v43 = v45.__r_.__value_.__r.__words[0];
                }

                *buf = 136315650;
                *&buf[4] = "ADMBuilderParseContent.cpp";
                v47 = 1024;
                v48 = 156;
                v49 = 2080;
                v50 = v43;
                _os_log_impl(&dword_18F5DF000, v42, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown dialogue kind in content '%s'", buf, 0x1Cu);
                if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v45.__r_.__value_.__l.__data_);
                }
              }

              v37 = -66599;
LABEL_105:
              *(this + 158) = v37;
              goto LABEL_106;
            }

            goto LABEL_88;
          }

LABEL_89:
          v31 = *(v6 - 16);
          v32 = 2;
          goto LABEL_98;
        }

        if (v21)
        {
          if (v21 != 1)
          {
            goto LABEL_99;
          }

          goto LABEL_61;
        }

LABEL_70:
        *(*(v6 - 16) + 170) = 0;
      }

LABEL_106:
      v44 = *v14;
      v14 += 2;
      v13 = v44;
      if (!v44)
      {
        goto LABEL_107;
      }
    }

    v28 = *(v6 - 16);
    if (*(v28 + 169) == 1 && *(v28 + 168) != 1)
    {
      v33 = CA::ADMBuilder::Impl::log(v17);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v45, *(v6 - 16), "");
        v34 = &v45;
        if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v34 = v45.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *&buf[4] = "ADMBuilderParseContent.cpp";
        v47 = 1024;
        v48 = 93;
        v49 = 2080;
        v50 = v34;
        v25 = v33;
        goto LABEL_83;
      }

      goto LABEL_85;
    }

    *(v28 + 168) = 257;
    std::string::basic_string[abi:ne200100]<0>(buf, v15);
    v29 = CA::ADMBuilder::Impl::parse_uint(this, buf);
    v30 = v29;
    if (SBYTE3(v50) < 0)
    {
      operator delete(*buf);
    }

    if (!(v30 >> 32))
    {
      goto LABEL_106;
    }

    if (v30 > 1)
    {
      if (v30 == 2)
      {
        goto LABEL_89;
      }

      if (v30 != 3)
      {
LABEL_73:
        v35 = CA::ADMBuilder::Impl::log(v29);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v45, *(v6 - 16), "");
          v36 = &v45;
          if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v36 = v45.__r_.__value_.__r.__words[0];
          }

          *buf = 136315650;
          *&buf[4] = "ADMBuilderParseContent.cpp";
          v47 = 1024;
          v48 = 119;
          v49 = 2080;
          v50 = v36;
          _os_log_impl(&dword_18F5DF000, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown dialogue kind in content '%s'", buf, 0x1Cu);
          if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v45.__r_.__value_.__l.__data_);
          }
        }

        v37 = -66600;
        goto LABEL_105;
      }

LABEL_88:
      v31 = *(v6 - 16);
      v32 = 3;
      goto LABEL_98;
    }

    if (v30)
    {
      if (v30 != 1)
      {
        goto LABEL_73;
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  v10 = CA::ADMBuilder::Impl::log(v7);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v45, *(v6 - 16), "");
    v11 = (v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v45 : v45.__r_.__value_.__r.__words[0];
    *buf = 136315650;
    *&buf[4] = "ADMBuilderParseContent.cpp";
    v47 = 1024;
    v48 = 29;
    v49 = 2080;
    v50 = v11;
    _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Multiple dialogue sub-elements for content '%s'", buf, 0x1Cu);
    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }
  }

  *(this + 158) = -66590;
  return 1;
}