void ZinIrNEConvUnitInfo::ZinIrNEConvUnitInfo(ZinIrNEConvUnitInfo *this, const ZinIrNEConvUnitInfo *a2)
{
  *this = &unk_1F1A2EA30;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v4;
  }

  v5 = *(a2 + 8);
  *(this + 5) = 0;
  *(this + 8) = v5;
  *(this + 6) = 0;
  *(this + 7) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 5, *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 3));
  *(this + 4) = *(a2 + 4);
  *this = &unk_1F19D1078;
  std::__optional_copy_base<ZinIrGOCUnitInfo,false>::__optional_copy_base[abi:ne200100](this + 80, a2 + 80);
  std::__optional_copy_base<ZinIrNeuronUnitInfo,false>::__optional_copy_base[abi:ne200100](this + 240, a2 + 240);
  *(this + 45) = *(a2 + 45);
  *this = &unk_1F19ECE48;
  ZinIrConvUnitInfo::ZinIrConvUnitInfo((this + 368), (a2 + 368));
}

uint64_t DimensionOrderHint::DimensionOrderHint(uint64_t a1, char **a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  if (a1 != a2)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  *(a1 + 24) = 0;
  return a1;
}

void sub_1A6983C08(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *DefaultDimensionOrderToVector@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  if (result == 2)
  {
    v4 = 4;
    v2 = &xmmword_1A75D3FEC;
    goto LABEL_5;
  }

  if (result == 1)
  {
    v4 = 4;
    v2 = &xmmword_1A75D3FD8;
LABEL_5:
    v3 = *v2;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    return std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(a2, &v3, &v5, 5uLL);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t DimensionOrderHint::DimensionOrderHint(uint64_t a1, uint64_t *a2)
{
  DefaultDimensionOrderToVector(a2, __p);
  DimensionOrderHint::DimensionOrderHint(a1, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1A6983D30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DimensionOrderHint::DimensionOrderHint(uint64_t a1, char **a2, int a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  if (a1 != a2)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  *(a1 + 24) = a3;
  return a1;
}

void sub_1A6983DA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DimensionOrderHint::DimensionOrderHint(uint64_t a1, uint64_t *a2, int a3)
{
  DefaultDimensionOrderToVector(a2, __p);
  DimensionOrderHint::DimensionOrderHint(a1, __p, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1A6983E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *DimensionOrderHint::GetOrder@<X0>(uint64_t *__return_ptr a1@<X8>, DimensionOrderHint *this@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(a1, *this, *(this + 1), (*(this + 1) - *this) >> 2);
}

BOOL DimensionOrderHint::IsSupported(DimensionOrderHint *this)
{
  if (*(this + 1) - *this != 20)
  {
    return 0;
  }

  DimensionOrderHint::GetAllSupportedDimensionOrders(*(this + 6), &v5);
  v2 = std::__find[abi:ne200100]<std::vector<ZinIrDimension> const*,std::vector<ZinIrDimension> const*,std::vector<ZinIrDimension>,std::__identity>(v5, v6, this);
  v3 = v2 != v6;
  v7 = &v5;
  std::vector<std::vector<ZinIrOpLayer *>>::__destroy_vector::operator()[abi:ne200100](&v7);
  return v3;
}

void sub_1A6983EE4(_Unwind_Exception *a1)
{
  *(v2 - 24) = v1;
  std::vector<std::vector<ZinIrOpLayer *>>::__destroy_vector::operator()[abi:ne200100]((v2 - 24));
  _Unwind_Resume(a1);
}

void DimensionOrderHint::GetAllSupportedDimensionOrders(unsigned int a1@<W0>, uint64_t *a2@<X8>)
{
  v151 = *MEMORY[0x1E69E9840];
  if (a1 >= 2)
  {
    if (a1 != 2)
    {
      ZinAssertImpl("Invalid un-specified TensorLayout");
    }

    v76 = xmmword_1A75D3DF8;
    v77 = 2;
    v81 = 0;
    v79 = 0;
    v80 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v79, &v76, &v78, 5uLL);
    v74 = 2;
    v73 = xmmword_1A75D3E0C;
    v84 = 0;
    v82 = 0;
    v83 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v82, &v73, v75, 5uLL);
    v71 = 2;
    v70 = xmmword_1A75D3E20;
    v87 = 0;
    v85 = 0;
    v86 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v85, &v70, v72, 5uLL);
    v68 = 2;
    v67 = xmmword_1A75D3E34;
    v90 = 0;
    v88 = 0;
    v89 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v88, &v67, v69, 5uLL);
    v65 = 2;
    v64 = xmmword_1A75D3E48;
    v93 = 0;
    v91 = 0;
    v92 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v91, &v64, v66, 5uLL);
    v62 = 2;
    v61 = xmmword_1A75D3E5C;
    v96 = 0;
    v94 = 0;
    v95 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v94, &v61, v63, 5uLL);
    v59 = 2;
    v58 = xmmword_1A75D3E70;
    v99 = 0;
    v97 = 0;
    v98 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v97, &v58, v60, 5uLL);
    v56 = 2;
    v55 = xmmword_1A75D3E84;
    v102 = 0;
    v100 = 0;
    v101 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v100, &v55, v57, 5uLL);
    v53 = 2;
    v52 = xmmword_1A75D3E98;
    v105 = 0;
    v103 = 0;
    v104 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v103, &v52, v54, 5uLL);
    v50 = 2;
    v49 = xmmword_1A75D3EAC;
    v108 = 0;
    v106 = 0;
    v107 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v106, &v49, v51, 5uLL);
    v47 = 2;
    v46 = xmmword_1A75D3EC0;
    v111 = 0;
    v109 = 0;
    v110 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v109, &v46, v48, 5uLL);
    v44 = 2;
    v43 = xmmword_1A75D3ED4;
    v114 = 0;
    v112 = 0;
    v113 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v112, &v43, v45, 5uLL);
    v41 = 2;
    v40 = xmmword_1A75D3EE8;
    v117 = 0;
    v115 = 0;
    v116 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v115, &v40, v42, 5uLL);
    v38 = 2;
    v37 = xmmword_1A75D3EFC;
    v120 = 0;
    v118 = 0;
    v119 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v118, &v37, v39, 5uLL);
    v35 = 2;
    v34 = xmmword_1A75D3F10;
    v123 = 0;
    v121 = 0;
    v122 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v121, &v34, v36, 5uLL);
    v32 = 2;
    v31 = xmmword_1A75D3F24;
    v126 = 0;
    v124 = 0;
    v125 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v124, &v31, v33, 5uLL);
    v29 = 2;
    v28 = xmmword_1A75D3F38;
    v129 = 0;
    v127 = 0;
    v128 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v127, &v28, v30, 5uLL);
    v26 = 2;
    v25 = xmmword_1A75D3F4C;
    v132 = 0;
    v130 = 0;
    v131 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v130, &v25, v27, 5uLL);
    v23 = 2;
    v22 = xmmword_1A75D3FC4;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v133, &v22, v24, 5uLL);
    v20 = 2;
    v19 = xmmword_1A75D3F60;
    v138 = 0;
    v136 = 0;
    v137 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v136, &v19, v21, 5uLL);
    v17 = 2;
    v16 = xmmword_1A75D3F74;
    v141 = 0;
    v139 = 0;
    v140 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v139, &v16, v18, 5uLL);
    v14 = 2;
    v13 = xmmword_1A75D3F88;
    v144 = 0;
    v142 = 0;
    v143 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v142, &v13, v15, 5uLL);
    v11 = 2;
    v10 = xmmword_1A75D3F9C;
    v145 = 0;
    v147 = 0;
    v146 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v145, &v10, v12, 5uLL);
    v8 = 2;
    v7 = xmmword_1A75D3FB0;
    v148 = 0;
    v150 = 0;
    v149 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v148, &v7, v9, 5uLL);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    std::vector<std::vector<ZinIrDimension>>::__init_with_size[abi:ne200100]<std::vector<ZinIrDimension> const*,std::vector<ZinIrDimension> const*>(a2, &v79, &v151, 0x18uLL);
    v5 = 576;
    do
    {
      v6 = *(&v76 + v5);
      if (v6)
      {
        *(&v76 + v5 + 8) = v6;
        operator delete(v6);
      }

      v5 -= 24;
    }

    while (v5);
  }

  else
  {
    v76 = xmmword_1A75D3FEC;
    v77 = 4;
    v81 = 0;
    v79 = 0;
    v80 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v79, &v76, &v78, 5uLL);
    v74 = 4;
    v73 = xmmword_1A75D3C40;
    v84 = 0;
    v82 = 0;
    v83 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v82, &v73, v75, 5uLL);
    v71 = 4;
    v70 = xmmword_1A75D3C54;
    v87 = 0;
    v85 = 0;
    v86 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v85, &v70, v72, 5uLL);
    v68 = 4;
    v67 = xmmword_1A75D3C68;
    v90 = 0;
    v88 = 0;
    v89 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v88, &v67, v69, 5uLL);
    v65 = 4;
    v64 = xmmword_1A75D3C7C;
    v93 = 0;
    v91 = 0;
    v92 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v91, &v64, v66, 5uLL);
    v62 = 4;
    v61 = xmmword_1A75D3C90;
    v96 = 0;
    v94 = 0;
    v95 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v94, &v61, v63, 5uLL);
    v59 = 4;
    v58 = xmmword_1A75D3CA4;
    v99 = 0;
    v97 = 0;
    v98 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v97, &v58, v60, 5uLL);
    v56 = 4;
    v55 = xmmword_1A75D3CB8;
    v102 = 0;
    v100 = 0;
    v101 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v100, &v55, v57, 5uLL);
    v53 = 4;
    v52 = xmmword_1A75D3CCC;
    v105 = 0;
    v103 = 0;
    v104 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v103, &v52, v54, 5uLL);
    v50 = 4;
    v49 = xmmword_1A75D3CE0;
    v108 = 0;
    v106 = 0;
    v107 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v106, &v49, v51, 5uLL);
    v47 = 4;
    v46 = xmmword_1A75D3CF4;
    v111 = 0;
    v109 = 0;
    v110 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v109, &v46, v48, 5uLL);
    v44 = 4;
    v43 = xmmword_1A75D3D08;
    v114 = 0;
    v112 = 0;
    v113 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v112, &v43, v45, 5uLL);
    v41 = 4;
    v40 = xmmword_1A75D3D1C;
    v117 = 0;
    v115 = 0;
    v116 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v115, &v40, v42, 5uLL);
    v38 = 4;
    v37 = xmmword_1A75D3D30;
    v120 = 0;
    v118 = 0;
    v119 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v118, &v37, v39, 5uLL);
    v35 = 4;
    v34 = xmmword_1A75D3D44;
    v123 = 0;
    v121 = 0;
    v122 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v121, &v34, v36, 5uLL);
    v32 = 4;
    v31 = xmmword_1A75D3D58;
    v126 = 0;
    v124 = 0;
    v125 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v124, &v31, v33, 5uLL);
    v29 = 4;
    v28 = xmmword_1A75D3D6C;
    v129 = 0;
    v127 = 0;
    v128 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v127, &v28, v30, 5uLL);
    v26 = 4;
    v25 = xmmword_1A75D3D80;
    v132 = 0;
    v130 = 0;
    v131 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v130, &v25, v27, 5uLL);
    v23 = 4;
    v22 = xmmword_1A75D3FD8;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v133, &v22, v24, 5uLL);
    v20 = 4;
    v19 = xmmword_1A75D3D94;
    v138 = 0;
    v136 = 0;
    v137 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v136, &v19, v21, 5uLL);
    v17 = 4;
    v16 = xmmword_1A75D3DA8;
    v141 = 0;
    v139 = 0;
    v140 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v139, &v16, v18, 5uLL);
    v14 = 4;
    v13 = xmmword_1A75D3DBC;
    v144 = 0;
    v142 = 0;
    v143 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v142, &v13, v15, 5uLL);
    v11 = 4;
    v10 = xmmword_1A75D3DD0;
    v145 = 0;
    v147 = 0;
    v146 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v145, &v10, v12, 5uLL);
    v8 = 4;
    v7 = xmmword_1A75D3DE4;
    v148 = 0;
    v150 = 0;
    v149 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v148, &v7, v9, 5uLL);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    std::vector<std::vector<ZinIrDimension>>::__init_with_size[abi:ne200100]<std::vector<ZinIrDimension> const*,std::vector<ZinIrDimension> const*>(a2, &v79, &v151, 0x18uLL);
    v3 = 576;
    do
    {
      v4 = *(&v76 + v3);
      if (v4)
      {
        *(&v76 + v3 + 8) = v4;
        operator delete(v4);
      }

      v3 -= 24;
    }

    while (v3);
  }
}

void DimensionOrderHint::GetDimensionsFromOrder(const void **__return_ptr a1@<X8>, DimensionOrderHint *this@<X0>, const ZinTensorDimensions *a3@<X1>)
{
  v5 = *this;
  v6 = *(this + 1);
  v7 = v6 - *this;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (v7 == 20)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&v21, v5, v6, 5uLL);
    v8 = v21;
    v9 = v22;
    if (v21 != v22)
    {
      do
      {
        ValueAt = GetValueAtDimension<ZinTensorDimensions>(a3, *v8);
        v12 = a1[1];
        v11 = a1[2];
        if (v12 >= v11)
        {
          v14 = *a1;
          v15 = v12 - *a1;
          v16 = v15 >> 3;
          v17 = (v15 >> 3) + 1;
          if (v17 >> 61)
          {
            std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
          }

          v18 = v11 - v14;
          if (v18 >> 2 > v17)
          {
            v17 = v18 >> 2;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFF8)
          {
            v19 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v17;
          }

          if (v19)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v19);
          }

          *(8 * v16) = ValueAt;
          v13 = (8 * v16 + 8);
          memcpy(0, v14, v15);
          v20 = *a1;
          *a1 = 0;
          a1[1] = v13;
          a1[2] = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v12 = ValueAt;
          v13 = v12 + 8;
        }

        a1[1] = v13;
        ++v8;
      }

      while (v8 != v9);
      v8 = v21;
    }

    if (v8)
    {
      v22 = v8;
      operator delete(v8);
    }
  }
}

void sub_1A6984EA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DimensionOrderHint::TransposeDimensionOrder@<X0>(int **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memset(v17, 0, sizeof(v17));
  v18 = 1065353216;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*a2 != v6)
  {
    do
    {
      v7 = v5[1];
      __p = v5;
      *(std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrDimension>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDimension>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDimension>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrDimension>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(v17, v5, &std::piecewise_construct, &__p) + 5) = v7;
      v5 += 2;
    }

    while (v5 != v6);
  }

  __p = 0;
  v15 = 0;
  v16 = 0;
  v8 = *a1;
  v9 = a1[1];
  while (v8 != v9)
  {
    v10 = std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::find<ZinIrDimension>(v17, v8);
    v11 = v8;
    if (v10)
    {
      v12 = std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::find<ZinIrDimension>(v17, v8);
      if (!v12)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v11 = v12 + 5;
    }

    std::vector<unsigned int>::push_back[abi:ne200100](&__p, v11);
    ++v8;
  }

  DimensionOrderHint::DimensionOrderHint(a3, &__p);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v17);
}

void sub_1A6984FF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void DimensionOrderHint::SwappedBetweenWidthLastAndChannelLast(void *__return_ptr a1@<X8>, DimensionOrderHint *this@<X0>)
{
  v3 = *(this + 6) == 0;
  __p = 0;
  v8 = 0;
  v9 = 0;
  v4 = *this;
  v5 = *(this + 1);
  if (*this != v5)
  {
    do
    {
      if (*v4 == 2)
      {
        v6 = 4;
        std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v6);
      }

      else if (*v4 == 4)
      {
        v6 = 2;
        std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v6);
      }

      else
      {
        std::vector<unsigned int>::push_back[abi:ne200100](&__p, v4);
      }

      ++v4;
    }

    while (v4 != v5);
  }

  DimensionOrderHint::DimensionOrderHint(a1, &__p, 2 * v3);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }
}

void sub_1A69850F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DimensionOrderHint::GetCompatibleDimOrders(uint64_t *__return_ptr a1@<X8>, DimensionOrderHint *this@<X0>, const ZinTensorDimensions *a3@<X1>)
{
  if (*(this + 1) == *this)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      DimensionOrderHint::GetCompatibleDimOrders();
    }

    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    v5 = this;
    v57 = 0u;
    v58 = 0u;
    v59 = 1065353216;
    v6 = *(a3 + 3);
    LODWORD(v54) = 4;
    __p = &v54;
    *(std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(&v57, &v54, &std::piecewise_construct, &__p) + 20) = v6 == 1;
    v7 = *(a3 + 2);
    LODWORD(v54) = 3;
    __p = &v54;
    *(std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(&v57, &v54, &std::piecewise_construct, &__p) + 20) = v7 == 1;
    v8 = *(a3 + 1);
    LODWORD(v54) = 2;
    __p = &v54;
    *(std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(&v57, &v54, &std::piecewise_construct, &__p) + 20) = v8 == 1;
    v9 = *(a3 + 4);
    LODWORD(v54) = 1;
    __p = &v54;
    *(std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(&v57, &v54, &std::piecewise_construct, &__p) + 20) = v9 == 1;
    v10 = *a3;
    LODWORD(v54) = 0;
    __p = &v54;
    *(std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinTensorDimensionException>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(&v57, &v54, &std::piecewise_construct, &__p) + 20) = v10 == 1;
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&v54, *v5, *(v5 + 1), (*(v5 + 1) - *v5) >> 2);
    memset(&v50, 0, sizeof(v50));
    v43 = a1;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&v50, *v5, *(v5 + 1), (*(v5 + 1) - *v5) >> 2);
    DimensionOrderHint::DimensionOrderHint(&__p, &v50.__r_.__value_.__l.__data_);
    std::vector<DimensionOrderHint>::push_back[abi:ne200100](a1, &__p);
    if (__p)
    {
      v52 = __p;
      operator delete(__p);
    }

    if (v50.__r_.__value_.__r.__words[0])
    {
      v50.__r_.__value_.__l.__size_ = v50.__r_.__value_.__r.__words[0];
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    memset(&v50, 0, sizeof(v50));
    for (i = v58; i; i = *i)
    {
      if (*(i + 20) == 1)
      {
        v12 = std::remove[abi:ne200100]<std::__wrap_iter<ZinIrDimension *>,ZinIrDimension>(v54, v55, i + 4);
        if (v12 != v55)
        {
          v55 = v12;
        }
      }
    }

    v13 = v54;
    v14 = v55;
    if (v54 != v55)
    {
      do
      {
        DimensionToString(*v13, &__p);
        if (v53 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        std::string::push_back(&v50, *p_p);
        if (SHIBYTE(v53) < 0)
        {
          operator delete(__p);
        }

        ++v13;
      }

      while (v13 != v14);
    }

    DimensionOrderHint::GetAllSupportedDimensionOrders(*(v5 + 6), &v48);
    v16 = v48;
    v17 = v49;
    if (v48 != v49)
    {
      v42 = v5;
      while (1)
      {
        v45 = 0;
        v46 = 0;
        v47 = 0;
        std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&v45, *v16, *(v16 + 8), (*(v16 + 8) - *v16) >> 2);
        __p = 0;
        v52 = 0;
        v53 = 0;
        std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&__p, *v5, *(v5 + 1), (*(v5 + 1) - *v5) >> 2);
        v18 = v45;
        if (v52 - __p != v46 - v45)
        {
          break;
        }

        if (__p != v52)
        {
          v19 = __p + 4;
          do
          {
            v20 = *v18++;
            v21 = *(v19 - 1) == v20;
            v22 = *(v19 - 1) != v20 || v19 == v52;
            v19 += 4;
          }

          while (!v22);
LABEL_30:
          if (!__p)
          {
            goto LABEL_32;
          }

LABEL_31:
          v52 = __p;
          operator delete(__p);
          goto LABEL_32;
        }

        v21 = 1;
        if (__p)
        {
          goto LABEL_31;
        }

LABEL_32:
        if (!v21)
        {
          for (j = v58; j; j = *j)
          {
            if (*(j + 20) == 1)
            {
              v24 = std::remove[abi:ne200100]<std::__wrap_iter<ZinIrDimension *>,ZinIrDimension>(v45, v46, j + 4);
              if (v24 != v46)
              {
                v46 = v24;
              }
            }
          }

          memset(&v44, 0, sizeof(v44));
          v25 = v45;
          v26 = v46;
          if (v45 == v46)
          {
            size = 0;
            v30 = 0;
            v28 = 0;
          }

          else
          {
            do
            {
              DimensionToString(*v25, &__p);
              if (v53 >= 0)
              {
                v27 = &__p;
              }

              else
              {
                v27 = __p;
              }

              std::string::push_back(&v44, *v27);
              if (SHIBYTE(v53) < 0)
              {
                operator delete(__p);
              }

              ++v25;
            }

            while (v25 != v26);
            v28 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
            size = v44.__r_.__value_.__l.__size_;
            v30 = v44.__r_.__value_.__r.__words[0];
          }

          v31 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
          if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v32 = &v50;
          }

          else
          {
            v32 = v50.__r_.__value_.__r.__words[0];
          }

          if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v31 = v50.__r_.__value_.__l.__size_;
          }

          if ((v28 & 0x80u) == 0)
          {
            v33 = &v44;
          }

          else
          {
            v33 = v30;
          }

          if ((v28 & 0x80u) == 0)
          {
            v34 = v28;
          }

          else
          {
            v34 = size;
          }

          if (v34)
          {
            if (v31 >= v34)
            {
              v35 = v17;
              v36 = v32 + v31;
              v37 = v33->__r_.__value_.__s.__data_[0];
              v38 = v32;
              do
              {
                v39 = v31 - v34;
                if (v39 == -1)
                {
                  break;
                }

                v40 = memchr(v38, v37, v39 + 1);
                if (!v40)
                {
                  break;
                }

                v41 = v40;
                if (!memcmp(v40, v33, v34))
                {
                  if (v41 != v36)
                  {
                    v22 = v41 - v32 == -1;
                    v17 = v35;
                    v5 = v42;
                    a1 = v43;
                    if (v22)
                    {
                      goto LABEL_73;
                    }

                    goto LABEL_70;
                  }

                  break;
                }

                v38 = (v41 + 1);
                v31 = v36 - (v41 + 1);
              }

              while (v31 >= v34);
              v17 = v35;
              v5 = v42;
              a1 = v43;
              if ((v28 & 0x80) == 0)
              {
                goto LABEL_75;
              }

LABEL_74:
              operator delete(v44.__r_.__value_.__l.__data_);
              goto LABEL_75;
            }
          }

          else
          {
LABEL_70:
            DimensionOrderHint::DimensionOrderHint(&__p, v16);
            std::vector<DimensionOrderHint>::push_back[abi:ne200100](a1, &__p);
            if (__p)
            {
              v52 = __p;
              operator delete(__p);
            }

            LOBYTE(v28) = *(&v44.__r_.__value_.__s + 23);
          }

LABEL_73:
          if ((v28 & 0x80) != 0)
          {
            goto LABEL_74;
          }
        }

LABEL_75:
        if (v45)
        {
          v46 = v45;
          operator delete(v45);
        }

        v16 += 24;
        if (v16 == v17)
        {
          goto LABEL_81;
        }
      }

      v21 = 0;
      goto LABEL_30;
    }

LABEL_81:
    __p = &v48;
    std::vector<std::vector<ZinIrOpLayer *>>::__destroy_vector::operator()[abi:ne200100](&__p);
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (v54)
    {
      v55 = v54;
      operator delete(v54);
    }

    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v57);
  }
}

void sub_1A69856E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a37)
  {
    a38 = a37;
    operator delete(a37);
  }

  std::vector<DimensionOrderHint>::__destroy_vector::operator()[abi:ne200100](&a37);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v38 - 144);
  _Unwind_Resume(a1);
}

uint64_t std::vector<DimensionOrderHint>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<DimensionOrderHint>::__emplace_back_slow_path<DimensionOrderHint>(a1, a2);
  }

  else
  {
    std::vector<DimensionOrderHint>::__construct_one_at_end[abi:ne200100]<DimensionOrderHint>(a1, a2);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

void **DimensionOrderHint::GetL2Default@<X0>(uint64_t *__return_ptr a1@<X8>, DimensionOrderHint *this@<X0>)
{
  v9 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(a1, *this, *(this + 1), (*(this + 1) - *this) >> 2);
  v4 = *(this + 6);
  *(a1 + 6) = v4;
  if (v4 == 2)
  {
    v7 = 2;
    v6 = xmmword_1A75D3FC4;
  }

  else
  {
    v7 = 4;
    v6 = xmmword_1A75D3FD8;
  }

  return std::vector<ZinTensorFormat>::__assign_with_size[abi:ne200100]<ZinTensorFormat const*,ZinTensorFormat const*>(a1, &v6, v8, 5uLL);
}

void sub_1A6985950(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void **DimensionOrderHint::GetDRAMDefault@<X0>(uint64_t *__return_ptr a1@<X8>, DimensionOrderHint *this@<X0>)
{
  v9 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(a1, *this, *(this + 1), (*(this + 1) - *this) >> 2);
  v4 = *(this + 6);
  *(a1 + 6) = v4;
  if (v4 == 2)
  {
    ZinAssertImpl("ChannelLast in DRAM currently not supported");
  }

  v7 = 4;
  v6 = xmmword_1A75D3FEC;
  return std::vector<ZinTensorFormat>::__assign_with_size[abi:ne200100]<ZinTensorFormat const*,ZinTensorFormat const*>(a1, &v6, v8, 5uLL);
}

void sub_1A6985A34(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DimensionOrderHint::DebugPrint@<X0>(_BYTE *a1@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v7);
  if ((v14 & 0x10) != 0)
  {
    v3 = v13;
    if (v13 < v10)
    {
      v13 = v10;
      v3 = v10;
    }

    locale = v9[4].__locale_;
  }

  else
  {
    if ((v14 & 8) == 0)
    {
      v2 = 0;
      a1[23] = 0;
      goto LABEL_14;
    }

    locale = v9[1].__locale_;
    v3 = v9[3].__locale_;
  }

  v2 = v3 - locale;
  if ((v3 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v2 >= 0x17)
  {
    operator new();
  }

  a1[23] = v2;
  if (v2)
  {
    memmove(a1, locale, v2);
  }

LABEL_14:
  a1[v2] = 0;
  v7[0] = *MEMORY[0x1E69E54D8];
  v5 = *(MEMORY[0x1E69E54D8] + 72);
  *(v7 + *(v7[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v7[2] = v5;
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v12 < 0)
  {
    operator delete(__p);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC559F60](&v15);
}

void sub_1A6985C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a10, MEMORY[0x1E69E54D8]);
  MEMORY[0x1AC559F60](&a26);
  _Unwind_Resume(a1);
}

void Intersection(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    return;
  }

  do
  {
    v7 = *a2;
    v8 = a2[1];
    v14 = 0;
    v15 = 0;
    __p = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
    v16 = *(v3 + 24);
    if (v7 == v8)
    {
LABEL_10:
      v12 = 0;
      if (__p)
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    while (1)
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      if ((v9 - *v7) == (v14 - __p))
      {
        break;
      }

LABEL_9:
      v7 += 32;
      if (v7 == v8)
      {
        goto LABEL_10;
      }
    }

    if (v10 != v9)
    {
      v11 = __p;
      while (*v10 == *v11)
      {
        ++v10;
        ++v11;
        if (v10 == v9)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_9;
    }

LABEL_12:
    v12 = 1;
    if (__p)
    {
LABEL_13:
      v14 = __p;
      operator delete(__p);
    }

LABEL_14:
    if (v12)
    {
      std::vector<DimensionOrderHint>::push_back[abi:ne200100](a3, v3);
    }

    v3 += 32;
  }

  while (v3 != v4);
}

void sub_1A6985DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<DimensionOrderHint>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void Union(uint64_t *a1@<X1>, uint64_t *a2@<X8>, uint64_t *a3@<X0>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<DimensionOrderHint>::__init_with_size[abi:ne200100]<DimensionOrderHint*,DimensionOrderHint*>(a2, *a3, a3[1], (a3[1] - *a3) >> 5);
  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    v7 = *a2;
    v8 = a2[1];
    v13 = 0;
    v14 = 0;
    __p = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&__p, *v5, *(v5 + 8), (*(v5 + 8) - *v5) >> 2);
    v15 = *(v5 + 24);
    if (v7 == v8)
    {
LABEL_11:
      v11 = 1;
      if (__p)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

    while (1)
    {
      v9 = *v7;
      if (v13 - __p == *(v7 + 8) - *v7)
      {
        break;
      }

LABEL_10:
      v7 += 32;
      if (v7 == v8)
      {
        goto LABEL_11;
      }
    }

    if (__p != v13)
    {
      v10 = __p;
      while (*v10 == *v9)
      {
        ++v10;
        ++v9;
        if (v10 == v13)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_10;
    }

LABEL_13:
    v11 = 0;
    if (__p)
    {
LABEL_14:
      v13 = __p;
      operator delete(__p);
    }

LABEL_15:
    if (v11)
    {
      std::vector<DimensionOrderHint>::push_back[abi:ne200100](a2, v5);
    }

    v5 += 32;
  }
}

void sub_1A6985EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<DimensionOrderHint>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__find[abi:ne200100]<std::vector<ZinIrDimension> const*,std::vector<ZinIrDimension> const*,std::vector<ZinIrDimension>,std::__identity>(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (; result != a2; result += 24)
  {
    v4 = *result;
    v3 = *(result + 8);
    if ((v3 - *result) == (*(a3 + 8) - *a3))
    {
      if (v4 == v3)
      {
        return result;
      }

      for (i = *a3; *v4 == *i; ++i)
      {
        if (++v4 == v3)
        {
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t *std::vector<std::vector<ZinIrDimension>>::__init_with_size[abi:ne200100]<std::vector<ZinIrDimension> const*,std::vector<ZinIrDimension> const*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<unsigned long>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A6985FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<ZinIrOpLayer *>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<ZinIrDimension>>,std::vector<ZinIrDimension> const*,std::vector<ZinIrDimension> const*,std::vector<ZinIrDimension>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 2);
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<ZinIrDimension>>,std::vector<ZinIrDimension>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<ZinIrDimension>>,std::vector<ZinIrDimension>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<ZinIrOpLayer *>>,std::vector<ZinIrOpLayer *>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t *std::vector<DimensionOrderHint>::__construct_one_at_end[abi:ne200100]<DimensionOrderHint>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  result = std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(v4, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  *(v4 + 24) = *(a2 + 24);
  *(a1 + 8) = v4 + 32;
  return result;
}

uint64_t std::vector<DimensionOrderHint>::__emplace_back_slow_path<DimensionOrderHint>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<DimensionOrderHint>>(a1, v7);
  }

  v8 = 32 * v2;
  v15 = 0;
  v16 = v8;
  v17 = v8;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(v8, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  *(v8 + 24) = *(a2 + 24);
  *&v17 = v17 + 32;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DimensionOrderHint>,DimensionOrderHint*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<std::pair<std::vector<ZinIrKernel *>,unsigned long>>::~__split_buffer(&v15);
  return v14;
}

void sub_1A6986254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<std::pair<std::vector<ZinIrKernel *>,unsigned long>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DimensionOrderHint>,DimensionOrderHint*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(v4, *v7, *(v7 + 8), (*(v7 + 8) - *v7) >> 2);
      *(v4 + 24) = *(v7 + 24);
      v7 += 32;
      v4 = v13 + 32;
      v13 += 32;
    }

    while (v7 != a3);
    v11 = 1;
    while (v6 != a3)
    {
      v8 = *v6;
      if (*v6)
      {
        *(v6 + 8) = v8;
        operator delete(v8);
      }

      v6 += 32;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<DimensionOrderHint>,DimensionOrderHint*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

_DWORD *std::remove[abi:ne200100]<std::__wrap_iter<ZinIrDimension *>,ZinIrDimension>(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  result = a2;
  if (a1 != a2)
  {
    result = a1;
    while (*result != *a3)
    {
      if (++result == a2)
      {
        result = a2;
        break;
      }
    }

    if (result != a2)
    {
      for (i = result + 1; i != a2; ++i)
      {
        if (*i != *a3)
        {
          *result++ = *i;
        }
      }
    }
  }

  return result;
}

uint64_t *std::vector<DimensionOrderHint>::__init_with_size[abi:ne200100]<DimensionOrderHint*,DimensionOrderHint*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<DimensionOrderHint>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A698641C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<DimensionOrderHint>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<DimensionOrderHint>,DimensionOrderHint*,DimensionOrderHint*,DimensionOrderHint*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 2);
      *(v4 + 24) = *(v6 + 24);
      v6 += 32;
      v4 = v11 + 32;
      v11 += 32;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<DimensionOrderHint>,DimensionOrderHint*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void l2a::alloc_buffer(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  __p = 0;
  v37 = 0;
  v38 = 0;
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&__p, *a1, *(a1 + 8), (*(a1 + 8) - *a1) >> 2);
  v33 = 0;
  v34 = 0;
  v35 = 0;
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&v33, __p, v37, (v37 - __p) >> 2);
  v4 = v33;
  if (v33 != v34)
  {
    while (*v4 != 4)
    {
      v4 += 4;
      if (v4 == v34)
      {
        goto LABEL_7;
      }
    }
  }

  if (v4 != v34)
  {
    v34 -= 4;
  }

LABEL_7:
  v5 = 0;
  v32 = (a1 + 112);
  v39 = xmmword_1A75D4000;
  v6 = (a1 + 100);
  do
  {
    v7 = v33;
    if (v33 != v34)
    {
      while (*v7 != *(&v39 + v5))
      {
        v7 += 4;
        if (v7 == v34)
        {
          goto LABEL_13;
        }
      }
    }

    if (v7 == v34)
    {
LABEL_13:
      v8 = *(&v39 + v5);
      if (v8 <= 1)
      {
        v9 = (a1 + 100);
        if (v8)
        {
          v9 = (a1 + 108);
          if (v8 != 1)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
        v9 = (a1 + 104);
        if (v8 != 2)
        {
          if (v8 == 3)
          {
            v9 = (a1 + 112);
          }

          else
          {
            v9 = (a1 + 96);
            if (v8 != 4)
            {
              goto LABEL_24;
            }
          }
        }
      }

      if (*v9 == 1)
      {
        std::vector<unsigned int>::push_back[abi:ne200100](&v33, (&v39 + v5));
      }
    }

LABEL_24:
    v5 += 4;
  }

  while (v5 != 16);
  *(a2 + 3) = 0;
  *(a2 + 1) = 0;
  v10 = (*(a1 + 28) & 0xFFFFFFFE) == 2;
  v11 = 1 << v10;
  v12 = *(a1 + 96);
  v13 = v12 << v10;
  v14 = v13 + 15;
  v25 = v13 < -15;
  v15 = v13 + 30;
  if (!v25)
  {
    v15 = v14;
  }

  v16 = v15 >> 4;
  v17 = v33;
  v18 = v34;
  if (v34 != v33)
  {
    v27 = v11;
    v28 = *(a1 + 96);
    v31 = (a1 + 108);
    v29 = a2;
    v19 = 0;
    v20 = 0;
    v30 = 0;
    v21 = 0;
    while (1)
    {
      v23 = *(v18 - 1);
      v18 -= 4;
      v22 = v23;
      if (v23 > 1)
      {
        break;
      }

      if (!v22)
      {
        v26 = *v6;
        if (*v6 >= 2)
        {
          v30 = l2a::get_pad(a1 + 64) + v16;
          v16 = v30 * v26;
        }

        goto LABEL_48;
      }

      if (v22 == 1)
      {
        v24 = *v31;
        v25 = *v31 <= 1;
        if (*v31 > 1)
        {
          v20 = v16;
        }

LABEL_44:
        if (v25)
        {
          v24 = 1;
        }

        v16 *= v24;
      }

LABEL_48:
      if (v18 == v17)
      {
        a2 = v29;
        v29[2] = v19;
        v29[3] = v20;
        v29[1] = v30;
        v11 = v27;
        v12 = v28;
        goto LABEL_51;
      }
    }

    if (v22 != 2)
    {
      if (v22 == 3 && ((*(a1 + 24) & 1) != 0 || *v32 >= 2))
      {
        v21 = l2a::get_pad(a1 + 32) + v16;
        v16 = *v32 * v21;
      }

      goto LABEL_48;
    }

    v24 = *(a1 + 104);
    v25 = v24 <= 1;
    if (v24 > 1)
    {
      v19 = v16;
    }

    goto LABEL_44;
  }

  v21 = 0;
LABEL_51:
  *a2 = v21;
  a2[5] = v16;
  a2[6] = v11;
  a2[7] = v12;
  *(a2 + 2) = *v6;
  if (v17)
  {
    v34 = v17;
    operator delete(v17);
  }

  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }
}

void sub_1A6986950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void l2a::Sizes::~Sizes(l2a::Sizes *this)
{
  v3 = (this + 72);
  std::vector<CachePrefetchGroup>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 40);
  std::vector<CachePrefetchGroup>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *this;
  if (*this)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

_DWORD *l2a::pe_modify_src(_DWORD *result, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
  if (a4 == 1)
  {
    result[24] = 1;
  }

  if (a5 == 1)
  {
    result[25] = 1;
  }

  if (a6 == 1)
  {
    result[26] = 1;
  }

  if (a7 == 1)
  {
    result[28] = 1;
  }

  if (a10 == 3)
  {
    v10 = 0x100000001;
LABEL_14:
    *(result + 12) = v10;
    goto LABEL_15;
  }

  if (a2 == 4 && a10 == 2)
  {
    v10 = 0x200000001;
    goto LABEL_14;
  }

  if (a2 == 8 && a10 == 2)
  {
    *(result + 12) = 0x100000001;
    result[26] = 1;
  }

LABEL_15:
  if (a8 == 1)
  {
    v11 = result[28];
    result[28] = result[24];
  }

  else
  {
    v11 = result[24];
  }

  result[24] = a9 % (0x10u >> ((a3 & 0xFFFFFFFE) == 2)) + v11;
  return result;
}

uint64_t l2a::dma_logical_interleave(uint64_t this, unsigned int a2)
{
  if (a2 >= 1)
  {
    do
    {
      this = this - (a2 & 1);
      v2 = a2 > 1;
      a2 >>= 1;
    }

    while (v2);
  }

  return this;
}

void l2a::ne_alloc_nonresident_src(uint64_t *__return_ptr a1@<X8>, int a2@<W0>, int a3@<W1>, int a4@<W2>, int a5@<W3>, int a6@<W4>, int a7@<W5>, int a8@<W6>, int a9@<W7>, int a10, int a11, int a12, int a13, int a14, int a15, char a16, __int16 a17, char a18, __int16 a19, char a20, int a21, uint64_t a22, int a23, int a24, l2a *a25, int a26, int a27, char **a28, uint64_t a29, int a30, int a31)
{
  v31 = a8;
  v33 = 0x10u >> ((a7 & 0xFFFFFFFE) == 2);
  if (a29 <= 17)
  {
    v31 = a8 % a10 + a8;
  }

  v34 = a24;
  if (a26 == 1)
  {
    if (a27)
    {
      v35 = 16;
    }

    else
    {
      v35 = 32;
    }
  }

  else
  {
    if (a25)
    {
      if (a25 == 1)
      {
        v35 = 32;
      }

      else
      {
        if (a25 == 2)
        {
          v35 = 16;
          goto LABEL_16;
        }

        v35 = 16 * (a25 == 3);
      }
    }

    else
    {
      v35 = 64;
    }

    if (HIDWORD(a25) != 3)
    {
      v35 /= SHIDWORD(a25);
    }
  }

LABEL_16:
  v36 = a12;
  v37 = ((16 * a10 * v33 / (1 << (a20 + a16))) << a18);
  v38 = v33;
  v39 = (ceil((a24 % v33 + a2) / v33) * v33);
  if (a29 > 17)
  {
    if (!a15)
    {
      if (v35 <= v33)
      {
        v41 = 0x10u >> ((a7 & 0xFFFFFFFE) == 2);
      }

      else
      {
        v41 = v35;
      }

      v42 = a24 % v41;
      v74 = 0x10u >> ((a7 & 0xFFFFFFFE) == 2);
      if (HIDWORD(a29))
      {
        v43 = v35;
        printf("x=%d w=%d px=%d kw=%d sx=%d l2g=%d dmag=%d compressed=%d win=%d\n", v42, v37, a12, v31, a10, v33, v35, a26, a2);
        v36 = a12;
        v35 = v43;
        v33 = v74;
      }

      v44 = 0;
      v45 = 0;
      v39 = 0;
      v73 = v31 - (v36 + a10) + v42;
      v46 = v35;
      v47 = v42 + a2;
      v71 = v36 + a10 - v31 - v42;
      v72 = v42 - v36;
      do
      {
        v48 = ((v71 + v44) / v37) & ~(((v71 + v44) / v37) >> 31);
        v49 = v73 + v37 + v48 * v37;
        v34 = l2a::dma_push_round((ceil((v49 - v44) / v46) * v46), v33, a26);
        v44 += v34;
        if (v47 >= v44)
        {
          v50 = v44;
        }

        else
        {
          v50 = v42 + a2;
        }

        v51 = v50;
        v52 = v48 * v37 + v72;
        v53 = (ceil(v51 / v38) * v38);
        if (v42 <= v52)
        {
          v54 = v48 * v37 + v72;
        }

        else
        {
          v54 = v42;
        }

        v55 = v53 - (floor(v54 / v38) * v38);
        if (v39 <= v55)
        {
          v39 = v55;
        }

        if (HIDWORD(a29))
        {
          v34 = printf("%d: n=%d right=%d fetch=%d left=%d nr_width = %d fetched = %d max_nr_width = %d\n", v45, v48, v49, v34, v52, v55, v44, v39);
        }

        if (v49 >= v47)
        {
          break;
        }

        v59 = v45++ == 2;
        v33 = v74;
      }

      while (!v59);
    }
  }

  else
  {
    if (a29 > 15)
    {
      v34 = l2a::dma_projection_v2(a24, v37, a12, v31, a10, v33, v35, a26, SHIDWORD(a29), v63);
    }

    else
    {
      v34 = l2a::dma_projection_v1(v37, a12, v31, v33, v35, a7, v35, a9, v62);
    }

    v56 = v40 + v39 - (HIDWORD(v34) + v34);
    if (v56 <= v34)
    {
      v56 = v34;
    }

    if (v34 <= v40)
    {
      v57 = v40;
    }

    else
    {
      v57 = v34;
    }

    if (HIDWORD(v34) + v34 < v39)
    {
      v58 = v57;
    }

    else
    {
      v58 = v56;
    }

    if (v34 >= v39)
    {
      v58 = v39;
    }

    v59 = a29 <= 13 || a15 == 0;
    if (v59)
    {
      v60 = v58;
    }

    else
    {
      v60 = v39;
    }

    if (HIDWORD(a29))
    {
      v34 = printf("ne_alloc_nonresident_src() first_fetch=%0d inner_fetch=%0d nr_width=%0d res_width=%0d nr_width=%0d\n", v34, HIDWORD(v34), v40, v39, v60);
    }

    v39 = v60;
  }

  l2a::GetHGDCW(v34);
  v83 = 0;
  v84 = 0;
  v85 = 0;
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&v83, l2a::GetHGDCW(void)::HGDCW, qword_1EB291060, (qword_1EB291060 - l2a::GetHGDCW(void)::HGDCW) >> 2);
  v86[0] = 0;
  v86[8] = 1;
  memset(&v86[12], 0, 24);
  v87 = 0;
  v88[0] = 1;
  memset(&v88[4], 0, 24);
  *&v61 = 0x100000001;
  *(&v61 + 1) = 0x100000001;
  *&v90[4] = v61;
  *&v86[4] = a7;
  v89 = 0;
  *v90 = v39;
  *&v90[4] = l2a::src_slice_height(0, a3, a6, a9, a11, a13, a14, a21, a22, SHIDWORD(a22), a23, 0, a29);
  *&v90[8] = a4;
  *&v90[12] = 1;
  *&v90[16] = a5;
  if (&v83 != a28)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v83, *a28, a28[1], (a28[1] - *a28) >> 2);
  }

  v86[0] = 1;
  v76 = 0;
  v77 = 0;
  __p = 0;
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&__p, v83, v84, (v84 - v83) >> 2);
  v78 = *v86;
  memset(v79, 0, 24);
  std::vector<l2a::AccessPattern>::__init_with_size[abi:ne200100]<l2a::AccessPattern*,l2a::AccessPattern*>(v79, *&v86[16], *&v86[24], (*&v86[24] - *&v86[16]) >> 5);
  v79[3] = *v88;
  memset(v80, 0, sizeof(v80));
  std::vector<l2a::AccessPattern>::__init_with_size[abi:ne200100]<l2a::AccessPattern*,l2a::AccessPattern*>(v80, *&v88[8], *&v88[16], (*&v88[16] - *&v88[8]) >> 5);
  v81 = *v90;
  v82 = *&v90[16];
  l2a::alloc_buffer(&__p, a1);
  v91[0] = v80;
  std::vector<CachePrefetchGroup>::__destroy_vector::operator()[abi:ne200100](v91);
  v91[0] = v79;
  std::vector<CachePrefetchGroup>::__destroy_vector::operator()[abi:ne200100](v91);
  if (__p)
  {
    v76 = __p;
    operator delete(__p);
  }

  v91[0] = &v88[8];
  std::vector<CachePrefetchGroup>::__destroy_vector::operator()[abi:ne200100](v91);
  v91[0] = &v86[16];
  std::vector<CachePrefetchGroup>::__destroy_vector::operator()[abi:ne200100](v91);
  if (v83)
  {
    v84 = v83;
    operator delete(v83);
  }
}

void sub_1A6987030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32)
{
  l2a::Sizes::~Sizes(&__p);
  l2a::Sizes::~Sizes((v32 - 232));
  _Unwind_Resume(a1);
}

unint64_t l2a::dma_projection_v1(l2a *this, int a2, int a3, uint64_t a4, int a5, int a6, int a7, int a8, int a9)
{
  v9 = (ceil((~a2 + a3 + this) / a5) * a5);
  if (v9)
  {
    v10 = a4;
    if (v9 > a4)
    {
      v10 = 2 * a4;
      if (2 * a4 < v9)
      {
        v10 = (ceil(v9 / (4 * a4)) * (4 * a4));
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = (ceil(this / a5) * a5);
  if (v11)
  {
    v12 = a4;
    if (v11 > a4)
    {
      v12 = (2 * a4);
      if (v12 < v11)
      {
        v12 = (ceil(v11 / (4 * a4)) * (4 * a4));
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v10 | (v12 << 32);
}

unint64_t l2a::dma_projection_v2(l2a *this, int a2, int a3, int a4, int a5, uint64_t a6, int a7, int a8, int a9, int a10)
{
  if (a7 <= a6)
  {
    v15 = a6;
  }

  else
  {
    v15 = a7;
  }

  v16 = this % v15;
  v17 = a5 + a3;
  v18 = this % v15 + a4;
  v19 = a7;
  v20 = l2a::dma_push_round((ceil((v18 + a2 - (a5 + a3)) / a7) * a7), a6, a8);
  v27 = (floor(v16 / a6) * a6);
  v21 = (v17 - v18 + v20) / a2;
  v22 = (floor((v16 - a3 + v21 * a2) / a6) * a6);
  v23 = l2a::dma_push_round((ceil(a2 / v19) * v19), a6, a8);
  if (a9)
  {
    printf("dma_projection_v2() x=%0d w=%0d px=%0d kw=%0d sx=%0d l2g=%0d dmag=%0d comp=%0d\n", v16, a2, a3, a4, a5, a6, a7, a8);
    printf("dma_projection_v2() fetch1=%0d fetch2=%0d left1=%0d n=%0d left2=%0d\n", v20, v23, v27, v21, v22);
  }

  return (v20 - v27) | (v23 << 32);
}

uint64_t l2a::src_slice_height(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, int a11, int a12, int a13)
{
  if (a1 || a13 > 17)
  {
    if (a4 <= a5)
    {
      v17 = a5;
    }

    else
    {
      v17 = a4;
    }
  }

  else
  {
    v17 = a4 % a5 + a4;
  }

  v30[0] = a3;
  v30[1] = a8;
  v18 = v17 + (a8 - 1) * a5;
  v30[2] = a9;
  v30[3] = a10;
  v30[4] = a11;
  v30[5] = a12;
  v30[6] = -a10;
  if (v18 < 1)
  {
    return 0;
  }

  v19 = 0;
  v20 = v17 - a6;
  do
  {
    if (!l2a::SliceGen::next(v30, v29))
    {
      break;
    }

    v21 = v29[0] * a5 - a6;
    v22 = v20 + (v29[1] - 1) * a5;
    if (a7)
    {
      v23 = v22 - a2;
      v24 = ~(v23 & ~(v23 >> 31)) + a2;
      if (v24 >= v21)
      {
        v24 = v29[0] * a5 - a6;
      }

      if (v23 >= 1)
      {
        v25 = v24;
      }

      else
      {
        v25 = v29[0] * a5 - a6;
      }

      if (v21 < 0)
      {
        v26 = 1 - v21;
        if (v22 <= v26)
        {
          v22 = v26;
        }
      }
    }

    else
    {
      v25 = v29[0] * a5 - a6;
    }

    if (v22 >= a2)
    {
      v22 = a2;
    }

    v27 = v22 - (v25 & ~(v25 >> 31));
    v19 = v27 <= v19 ? v19 : v27;
  }

  while (v19 < v18);
  return v19;
}

uint64_t l2a::ne_alloc_fifo_src@<X0>(uint64_t *__return_ptr a1@<X8>, int a2@<W0>, int a3@<W1>, int a4@<W2>, int a5@<W3>, int a6@<W4>, int a7@<W5>, int a8@<W6>, int a9@<W7>, int a10, int a11, int a12, int a13, int a14, int a15, int a16, char a17, __int16 a18, char a19, __int16 a20, char a21, int a22, int a23, int a24, int a25, l2a *a26, int a27, int a28, char a29, int a30, int a31)
{
  v34 = a30;
  v35 = a31;
  v36 = HIDWORD(a26);
  v37 = a27;
  v38 = a22;
  v39 = a14;
  v40 = a15;
  v41 = a12;
  v42 = a10;
  v61 = a8 & 0xFFFFFFFE;
  v43 = 0x10u >> ((a8 & 0xFFFFFFFE) == 2);
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  v44 = (16 * v43) >> (a21 + a17) << a19;
  *a1 = 0u;
  if (a16 || v44 >= a6)
  {
    v48 = ceil((a26 % v43 + a2) / v43) * v43;
    v46 = v48;
    if (a31)
    {
      v49 = a3;
      v58 = v48;
      printf("ne_alloc_fifo_src() single_tile unretained_width=%0d l2_retain=%0d\n", v48, 0);
      v42 = a10;
      v46 = v58;
      v41 = a12;
      v40 = a15;
      v38 = a22;
      v34 = a30;
      v39 = a14;
      a3 = v49;
      v35 = 0;
    }
  }

  else
  {
    v45 = a3;
    if (a30 <= 17)
    {
      a9 += a9 % a11;
    }

    v46 = v44 * a11;
    v47 = l2a::calc_l2_retain(a26, v44 * a11, a13, a9, a11, v43, a2, a6, a15, a31, v57);
    v35 = v47;
    if (a31)
    {
      printf("ne_alloc_fifo_src() multi_tile unretained_width=%0d l2_retain=%0d\n", v46, v47);
    }

    a3 = v45;
    v38 = a22;
    v40 = a15;
    v34 = a30;
    v39 = a14;
    v42 = a10;
    v41 = a12;
  }

  if (a27 >= 1)
  {
    do
    {
      v36 -= v37 & 1;
      v50 = v37 > 1;
      v37 >>= 1;
    }

    while (v50);
  }

  v51 = v36 << a29;
  result = l2a::src_slice_height(0, a3, a7, v42, v41, v39, v40, v38, a23, a24, a25, 0, v34);
  v53 = result;
  v54 = (ceil((a28 + a5) / (2 * v51)) * (2 * v51));
  *(a1 + 4) = v35 / v43;
  v55 = (v46 + v35 * a4 * (v54 / 2 / (v36 << a29))) / v43;
  *(a1 + 1) = v55;
  if (v36 << a29 > 1)
  {
    *a1 = v55 * result;
  }

  v56 = vcvtd_n_s64_f64(ceil(vcvtd_n_f64_s32(2 * result * v51 * v55, 6uLL)), 6uLL);
  *(a1 + 5) = v56;
  if (a31)
  {
    result = printf("ne_alloc_fifo_src() tile_width=%0d log_ileave=%0d channels_per_buffer=%0d height=%0d cin_pad=%0d row=%0d size=%0d\n", (16 * v43) >> (a21 + a17) << a19, v36, v51, result, v54, v55, v56);
  }

  *(a1 + 6) = 1 << (v61 == 2);
  *(a1 + 7) = v35 + v46;
  *(a1 + 8) = v53;
  return result;
}

uint64_t l2a::calc_l2_retain(l2a *this, int a2, int a3, int a4, int a5, unsigned int a6, int a7, int a8, int a9, int a10, int a11)
{
  v17 = this;
  if (a10)
  {
    printf("x=%d w=%d px=%d kw=%d sx=%d l2g=%d win=%d wout=%d reflectPadding=%d\n", this, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  v18 = (((v17 + a4 - (a3 + a5) + a6 + 31) & -a6) - ((v17 - a3 + 32) & -a6)) / a6;
  if (a9)
  {
    if (a7 >= 2)
    {
      v20 = 2 * a7 - 2;
      v21 = (~a3 + a4 + (a8 - 1) * a5) % v20;
      v19 = (v20 & (v21 >> 31)) + v21;
      v22 = v20 - v19;
      if (v19 >= a7)
      {
        v19 = v22;
      }
    }

    else
    {
      v19 = 0;
    }

    v23 = (v17 + a7 - 1) / a6 - (v19 + v17) / a6;
    if (v18 <= v23 + 1)
    {
      v18 = v23 + 1;
    }
  }

  return v18 * a6;
}

void l2a::ne_alloc_nonresident_dst(uint64_t *__return_ptr a1@<X8>, l2a *a2@<X0>, l2a *a3@<X1>, int a4@<W2>, int a5@<W3>, int a6@<W4>, int a7@<W5>, int a8@<W6>, int a9@<W7>, int a10, int a11, char a12, __int16 a13, char a14, __int16 a15, char a16, int a17, int a18, unsigned int a19, l2a *a20, int a21, int a22, char **a23, uint64_t a24, int a25, int a26)
{
  v28 = a5;
  v31 = 0x10u >> ((a7 & 0xFFFFFFFE) == 2);
  v32 = a8 * a2;
  v33 = v31;
  if (a18 == 1)
  {
    v34 = (ceil(a5 / v33) * v33);
    v28 = a8 * a2;
    goto LABEL_21;
  }

  if (a11 && a24 > 13)
  {
    v34 = (ceil(v32 / v33) * v33);
    goto LABEL_21;
  }

  if (a21 == 1)
  {
    if (a22)
    {
      v35 = 16;
    }

    else
    {
      v35 = 32;
    }

    goto LABEL_20;
  }

  if (!a20)
  {
    v36 = 64;
    goto LABEL_17;
  }

  if (a20 == 1)
  {
    v36 = 32;
    goto LABEL_17;
  }

  if (a20 != 2)
  {
    v36 = 16 * (a20 == 3);
LABEL_17:
    if (HIDWORD(a20) == 3)
    {
      v35 = v36;
    }

    else
    {
      v35 = v36 / SHIDWORD(a20);
    }

    goto LABEL_20;
  }

  v35 = 16;
LABEL_20:
  a2 = l2a::calc_nr_width_dst(a19, ((16 * a8 * (0x10u >> ((a6 & 0xFFFFFFFE) == 2))) / (1 << (a16 + a12))) << a14, v31, v35, a21, v32, a24, SHIDWORD(a24), v38);
  v34 = a2;
LABEL_21:
  l2a::GetHGDCW(a2);
  v48 = 0;
  v49 = 0;
  v50 = 0;
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&v48, l2a::GetHGDCW(void)::HGDCW, qword_1EB291060, (qword_1EB291060 - l2a::GetHGDCW(void)::HGDCW) >> 2);
  v51[0] = 0;
  v51[8] = 1;
  memset(&v51[12], 0, 24);
  v52 = 0;
  v53[0] = 1;
  memset(&v53[4], 0, 24);
  *&v37 = 0x100000001;
  *(&v37 + 1) = 0x100000001;
  *&v55[4] = v37;
  *&v51[4] = a7;
  v54 = 0;
  *v55 = v34;
  *&v55[4] = l2a::dst_slice_height(a3, a9, a17, 0, 0, 0, 0);
  *&v55[8] = a10 * a4;
  *&v55[12] = 1;
  *&v55[16] = v28;
  if (&v48 != a23)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v48, *a23, a23[1], (a23[1] - *a23) >> 2);
  }

  v51[0] = 1;
  v41 = 0;
  v42 = 0;
  __p = 0;
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&__p, v48, v49, (v49 - v48) >> 2);
  v43 = *v51;
  memset(v44, 0, 24);
  std::vector<l2a::AccessPattern>::__init_with_size[abi:ne200100]<l2a::AccessPattern*,l2a::AccessPattern*>(v44, *&v51[16], *&v51[24], (*&v51[24] - *&v51[16]) >> 5);
  v44[3] = *v53;
  memset(v45, 0, sizeof(v45));
  std::vector<l2a::AccessPattern>::__init_with_size[abi:ne200100]<l2a::AccessPattern*,l2a::AccessPattern*>(v45, *&v53[8], *&v53[16], (*&v53[16] - *&v53[8]) >> 5);
  v46 = *v55;
  v47 = *&v55[16];
  l2a::alloc_buffer(&__p, a1);
  v56[0] = v45;
  std::vector<CachePrefetchGroup>::__destroy_vector::operator()[abi:ne200100](v56);
  v56[0] = v44;
  std::vector<CachePrefetchGroup>::__destroy_vector::operator()[abi:ne200100](v56);
  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  v56[0] = &v53[8];
  std::vector<CachePrefetchGroup>::__destroy_vector::operator()[abi:ne200100](v56);
  v56[0] = &v51[16];
  std::vector<CachePrefetchGroup>::__destroy_vector::operator()[abi:ne200100](v56);
  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }
}

void sub_1A6987BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  l2a::Sizes::~Sizes(&__p);
  l2a::Sizes::~Sizes(va);
  _Unwind_Resume(a1);
}

uint64_t l2a::calc_nr_width_dst(l2a *this, int a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, int a9)
{
  v15 = this % a4;
  if (a8)
  {
    printf("x=%d w=%d l2g=%d dmagran=%d compressionEn=%d wout=%d arch_ver=%d\n", this, a2, a3, a4, a5, a6, a7);
  }

  v16 = v15 + a6;
  if (v15 + a6 < 1)
  {
    return 0;
  }

  v32 = a5;
  v33 = a7;
  v17 = 0;
  v18 = 0;
  LODWORD(v19) = 0;
  v20 = a4;
  v31 = a3;
  v30 = (ceil(a6 / a3) * a3);
  v21 = 1;
  do
  {
    v22 = ((v17 - v15) & ~((v17 - v15) >> 31)) / a2;
    v23 = v22 * a2;
    if (v16 >= a2 + v15 + v22 * a2)
    {
      v24 = a2 + v15 + v22 * a2;
    }

    else
    {
      v24 = v16;
    }

    v25 = l2a::dma_push_round((ceil((v24 - v17) / v20) * v20), v31, v32);
    v17 += v25;
    v26 = (ceil((v17 - v15) / a2) * a2);
    v27 = v30;
    if (v30 >= v26)
    {
      v27 = v26;
    }

    if (v33 > 13)
    {
      v26 = v27;
    }

    if (v19 <= v26 - v23)
    {
      v19 = (v26 - v23);
    }

    else
    {
      v19 = v19;
    }

    if (a8)
    {
      printf("i=%d n=%d right_tile=%d width_dma=%d left_l2=%d right_l2=%d nr_width=%d\n", v18, v22, v24, v25, v22 * a2, v26, v26 - v23);
    }

    v28 = (v17 < v16) & v21;
    v18 = 1;
    v21 = 0;
  }

  while ((v28 & 1) != 0);
  return v19;
}

uint64_t l2a::dst_slice_height(l2a *this, int a2, int a3, int a4, int a5, int a6, int a7)
{
  v13[0] = this;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v13[6] = -a5;
  if (a3 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      if (!l2a::SliceGen::next(v13, &v11))
      {
        break;
      }

      if (v12 - v11 > v9)
      {
        v9 = v12 - v11;
      }
    }

    while (v9 < a3);
  }

  return (v9 * a2);
}

uint64_t l2a::ne_alloc_fifo_dst@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, char a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, char a10, int a11, char a12, int a13, int a14, int a15)
{
  *(a9 + 16) = 0u;
  *(a9 + 32) = 0u;
  *a9 = 0u;
  v15 = a8 + a7 + a10 + a12;
  v16 = result & 0xFFFFFFFE;
  v17 = a2 & 0xFFFFFFFE;
  v18 = (a2 & 0xFFFFFFFE) == 2;
  if (a13 == 1)
  {
    v19 = 1 << v18 << v15;
    if (v19 <= 16)
    {
      v19 = 16;
    }

    if (a11)
    {
      v20 = 128;
    }

    else
    {
      v20 = 0x100u >> ((result & 0xFFFFFFFE) == 2);
    }

    if (a5 == 1)
    {
      v20 = 64;
    }

    v21 = 2 * a3 * a4 * v19 * v20;
    if (((a3 * a4 * v19 * v20) & 0x40000000) != 0)
    {
      v21 += 15;
    }

    *(a9 + 20) = v21 >> 4;
    if (a15)
    {
      return printf("stride=%d comp_per_chan=%d\n");
    }

    return result;
  }

  if (!a5)
  {
    if (v16 != 2 || v17 == 2)
    {
      if (v16 != 2 && v17 == 2)
      {
        v25 = 9;
      }

      else
      {
        v25 = 8;
      }

      v22 = a3 << v25;
    }

    else
    {
      v22 = a3 << 7;
      if (a14 < 16)
      {
        v22 = 256;
      }
    }

    v23 = v22 == 128 && a8 == 0;
    goto LABEL_38;
  }

  if (a5 == 1)
  {
    if (a6 <= 2 && a14 > 13)
    {
      v22 = a3 << 6 << v18;
      goto LABEL_40;
    }

    v23 = v17 == 2 && a3 == 2;
    v22 = 128;
LABEL_38:
    if (v23)
    {
      v22 = 256;
    }

    goto LABEL_40;
  }

  v22 = a3 << 9;
LABEL_40:
  if (a11)
  {
    v26 = 2;
  }

  else
  {
    v26 = 1;
  }

  *(a9 + 20) = ((2 * a4 * v22) << v15) / v26 / 16;
  if (a15)
  {
    return printf("cstride=%d oy=%d total_ocg=%d\n");
  }

  return result;
}

void l2a::pe_alloc_nonresident_src(l2a *a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, _DWORD *a9@<X8>, int a10, int a11, int a12, int a13, char a14, int a15, int a16, int a17, int a18, int a19, int a20, int a21, int a22, int a23, int a24, int a25, int a26, int a27, int a28, int a29, int a30, int a31, char **a32, int a33, int a34)
{
  v35 = a1;
  l2a::GetHGDCW(a1);
  v52 = 0;
  v53 = 0;
  v54 = 0;
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&v52, l2a::GetHGDCW(void)::HGDCW, qword_1EB291060, (qword_1EB291060 - l2a::GetHGDCW(void)::HGDCW) >> 2);
  v55[0] = 0;
  v55[8] = 1;
  memset(&v55[12], 0, 24);
  v56 = 0;
  v57[0] = 1;
  memset(&v57[4], 0, 24);
  *&v36 = 0x100000001;
  *(&v36 + 1) = 0x100000001;
  *&v59[4] = v36;
  *&v55[4] = a20;
  v58 = 0;
  *v59 = a2;
  *&v59[4] = l2a::src_slice_height(v35, a3, a6, a8, a11, a13, 0, a15, a16, a17, a18, a19, a33);
  *&v59[8] = a4;
  *&v59[16] = a5;
  *&v59[12] = 1;
  if (&v52 != a32)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v52, *a32, a32[1], (a32[1] - *a32) >> 2);
  }

  v55[0] = 1;
  if (a33 <= 14)
  {
    l2a::reduce_pe_src_width(&v52, a7, a10, a12, a14, a20, a22, a27, a28, a29, a30, a33, a34);
  }

  l2a::pe_modify_src(&v52, v35, a20, a23, a24, a25, a26, a21, a22, a31);
  if (!a21 && a33 >= 15 && (a17 + a6 + a18 <= a15 || a24 != 1 && (a31 != 2 || v35 != 4 && v35 != 8)))
  {
    l2a::reduce_pe_src_width(&v52, a7, a10, a12, a14, a20, a22, a27, a28, a29, a30, a33, a34);
  }

  __p = 0;
  v45 = 0;
  v46 = 0;
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&__p, v52, v53, (v53 - v52) >> 2);
  v47 = *v55;
  memset(v48, 0, 24);
  std::vector<l2a::AccessPattern>::__init_with_size[abi:ne200100]<l2a::AccessPattern*,l2a::AccessPattern*>(v48, *&v55[16], *&v55[24], (*&v55[24] - *&v55[16]) >> 5);
  v48[3] = *v57;
  memset(v49, 0, sizeof(v49));
  std::vector<l2a::AccessPattern>::__init_with_size[abi:ne200100]<l2a::AccessPattern*,l2a::AccessPattern*>(v49, *&v57[8], *&v57[16], (*&v57[16] - *&v57[8]) >> 5);
  v50 = *v59;
  v51 = *&v59[16];
  l2a::alloc_buffer(&__p, a9);
  v60[0] = v49;
  std::vector<CachePrefetchGroup>::__destroy_vector::operator()[abi:ne200100](v60);
  v60[0] = v48;
  std::vector<CachePrefetchGroup>::__destroy_vector::operator()[abi:ne200100](v60);
  if (__p)
  {
    v45 = __p;
    operator delete(__p);
  }

  v60[0] = &v57[8];
  std::vector<CachePrefetchGroup>::__destroy_vector::operator()[abi:ne200100](v60);
  v60[0] = &v55[16];
  std::vector<CachePrefetchGroup>::__destroy_vector::operator()[abi:ne200100](v60);
  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }
}

void sub_1A698836C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  l2a::Sizes::~Sizes(&__p);
  l2a::Sizes::~Sizes(va);
  _Unwind_Resume(a1);
}

unint64_t l2a::reduce_pe_src_width(uint64_t a1, int a2, int a3, int a4, char a5, int a6, l2a *this, int a8, int a9, int a10, int a11, int a12, int a13)
{
  if (a10 == 1)
  {
    if (a11)
    {
      v14 = 16;
    }

    else
    {
      v14 = 32;
    }

    goto LABEL_14;
  }

  if (a8)
  {
    if (a8 == 1)
    {
      v14 = 32;
    }

    else
    {
      if (a8 == 2)
      {
        v14 = 16;
        goto LABEL_14;
      }

      v14 = 16 * (a8 == 3);
    }
  }

  else
  {
    v14 = 64;
  }

  if (a9 != 3)
  {
    v14 /= a9;
  }

LABEL_14:
  v15 = (a6 & 0xFFFFFFFE) == 2;
  v16 = 0x10u >> v15;
  if (a12 > 15)
  {
    result = l2a::dma_projection_v2(this, a3 << a5, a4, a2, a3, 0x10u >> v15, v14, a10, a13, v24);
  }

  else
  {
    result = l2a::dma_projection_v1((a3 << a5), a4, a2, 0x10u >> v15, v14, a6, this, a10, v23);
  }

  v19 = (ceil(*(a1 + 96) / v16) * v16);
  v20 = v18 - (HIDWORD(result) + result) + v19;
  if (v20 <= result)
  {
    v20 = result;
  }

  if (result <= v18)
  {
    v21 = v18;
  }

  else
  {
    v21 = result;
  }

  if (HIDWORD(result) + result < v19)
  {
    v22 = v21;
  }

  else
  {
    v22 = v20;
  }

  if (result < v19)
  {
    v19 = v22;
  }

  *(a1 + 96) = v19;
  return result;
}

void l2a::pe_alloc_fifo_src(l2a *a1@<X0>, int a2@<W1>, int a3@<W2>, unsigned int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, int a10, int a11, int a12, int a13, int a14, char a15, int a16, int a17, int a18, int a19, int a20, int a21, int a22, int a23, int a24, int a25, int a26, int a27, int a28, int a29, int a30, char a31, int a32, int a33, int a34)
{
  v54 = a1;
  l2a::GetHGDCW(a1);
  __p = 0;
  v59 = 0;
  v60 = 0;
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&__p, l2a::GetHGDCW(void)::HGDCW, qword_1EB291060, (qword_1EB291060 - l2a::GetHGDCW(void)::HGDCW) >> 2);
  v61 = 0;
  v63 = 1;
  memset(v64, 0, sizeof(v64));
  v65 = 0;
  v66 = 1;
  memset(v67, 0, sizeof(v67));
  *&v37 = 0x100000001;
  *(&v37 + 1) = 0x100000001;
  v70 = v37;
  v62 = a21;
  v68 = 0;
  v69 = a2;
  v38 = a3;
  v56 = a7;
  v39 = l2a::src_slice_height(v54, v38, a7, a10, a12, a14, 0, a16, a17, a18, a19, a20, a33);
  v41 = a29;
  *&v70 = __PAIR64__(a4, v39);
  DWORD2(v70) = 1;
  HIDWORD(v70) = a5;
  v61 = 1;
  l2a::pe_modify_src(&__p, v54, a21, a24, a25, a26, a27, a22, a23, a32);
  v42 = 0x10u >> ((a21 & 0xFFFFFFFE) == 2);
  if (a22 || 1 << a15 >= a6 || a18 + v56 + a19 > a16 && (a25 == 1 || a32 == 2 && (v54 == 4 || v54 == 8)))
  {
    v43 = 0;
    v44 = (ceil(v69 / v42) * v42);
  }

  else
  {
    v44 = a11 << a15;
    v43 = l2a::calc_l2_retain(a23, a11 << a15, a13, a8, a11, v42, a2, a6, 0, a34, v50);
  }

  *(a9 + 16) = 0u;
  *(a9 + 32) = 0u;
  *a9 = 0u;
  if (a29 >= 1)
  {
    do
    {
      a28 -= v41 & 1;
      v45 = v41 > 1;
      v41 >>= 1;
    }

    while (v45);
  }

  v46 = v70;
  v47 = (2 * (a28 << a31));
  v48 = ceil((HIDWORD(v70) + a30) / v47);
  *(a9 + 16) = v43 / v42;
  v49 = (v44 + v43 * a4 * ((v48 * v47) / 2 / (a28 << a31))) / v42;
  *(a9 + 4) = v49;
  if (a28 << a31 > 1)
  {
    *a9 = v49 * v46;
  }

  *(a9 + 20) = vcvtd_n_s64_f64(ceil(vcvtd_n_f64_s32(2 * v46 * (a28 << a31) * v49, 6uLL)), 6uLL);
  *(a9 + 24) = 1 << ((a21 & 0xFFFFFFFE) == 2);
  *(a9 + 28) = v43 + v44;
  *(a9 + 32) = v46;
  v71[0] = (v67 + 4);
  std::vector<CachePrefetchGroup>::__destroy_vector::operator()[abi:ne200100](v71);
  v71[0] = (v64 + 4);
  std::vector<CachePrefetchGroup>::__destroy_vector::operator()[abi:ne200100](v71);
  if (__p)
  {
    v59 = __p;
    operator delete(__p);
  }
}

void sub_1A6988834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  l2a::Sizes::~Sizes(va);
  _Unwind_Resume(a1);
}

void l2a::pe_alloc_nonresident_dst(uint64_t *__return_ptr a1@<X8>, l2a *a2@<X0>, int a3@<W1>, l2a *a4@<X2>, int a5@<W3>, int a6@<W4>, int a7@<W5>, char a8@<W6>, int a9@<W7>, int a10, unsigned int a11, l2a *a12, int a13, int a14, char **a15, uint64_t a16, int a17, int a18)
{
  v25 = a2;
  l2a::GetHGDCW(a2);
  v42 = 0;
  v43 = 0;
  v44 = 0;
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&v42, l2a::GetHGDCW(void)::HGDCW, qword_1EB291060, (qword_1EB291060 - l2a::GetHGDCW(void)::HGDCW) >> 2);
  v45[0] = 0;
  v45[8] = 1;
  memset(&v45[12], 0, 24);
  v46 = 0;
  v47[0] = 1;
  memset(&v47[4], 0, 24);
  *&v26 = 0x100000001;
  *(&v26 + 1) = 0x100000001;
  *&v49[4] = v26;
  *&v45[4] = a7;
  v48 = 0;
  *v49 = a3;
  *&v49[4] = l2a::dst_slice_height(a4, 1, a9, 0, 0, 0, 0);
  *&v49[8] = a5;
  *&v49[12] = 1;
  *&v49[16] = a6;
  if (&v42 != a15)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v42, *a15, a15[1], (a15[1] - *a15) >> 2);
  }

  v45[0] = 1;
  if ((v25 - 5) <= 1)
  {
    *v49 = 0x100000001;
    *&v49[8] = 1;
  }

  v27 = *v49;
  if (a10 == 1)
  {
    v28 = *&v49[16];
    *v49 = *&v49[16];
    *&v49[16] = v27;
    v27 = v28;
  }

  v29 = 0x10u >> ((a7 & 0xFFFFFFFE) == 2);
  v30 = (ceil(v27 / v29) * v29);
  if ((v25 - 5) >= 2 && !a10)
  {
    if (a13 == 1)
    {
      if (a14)
      {
        v31 = 16;
      }

      else
      {
        v31 = 32;
      }

      goto LABEL_22;
    }

    if (a12)
    {
      if (a12 == 1)
      {
        v31 = 32;
      }

      else
      {
        if (a12 == 2)
        {
          v31 = 16;
LABEL_22:
          v30 = l2a::calc_nr_width_dst(a11, 1 << a8, v29, v31, a13, v27, a16, SHIDWORD(a16), v32);
          goto LABEL_23;
        }

        v31 = 16 * (a12 == 3);
      }
    }

    else
    {
      v31 = 64;
    }

    if (HIDWORD(a12) != 3)
    {
      v31 /= SHIDWORD(a12);
    }

    goto LABEL_22;
  }

LABEL_23:
  *v49 = v30;
  v35 = 0;
  v36 = 0;
  __p = 0;
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&__p, v42, v43, (v43 - v42) >> 2);
  v37 = *v45;
  memset(v38, 0, 24);
  std::vector<l2a::AccessPattern>::__init_with_size[abi:ne200100]<l2a::AccessPattern*,l2a::AccessPattern*>(v38, *&v45[16], *&v45[24], (*&v45[24] - *&v45[16]) >> 5);
  v38[3] = *v47;
  memset(v39, 0, sizeof(v39));
  std::vector<l2a::AccessPattern>::__init_with_size[abi:ne200100]<l2a::AccessPattern*,l2a::AccessPattern*>(v39, *&v47[8], *&v47[16], (*&v47[16] - *&v47[8]) >> 5);
  v40 = *v49;
  v41 = *&v49[16];
  l2a::alloc_buffer(&__p, a1);
  v50[0] = v39;
  std::vector<CachePrefetchGroup>::__destroy_vector::operator()[abi:ne200100](v50);
  v50[0] = v38;
  std::vector<CachePrefetchGroup>::__destroy_vector::operator()[abi:ne200100](v50);
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  v50[0] = &v47[8];
  std::vector<CachePrefetchGroup>::__destroy_vector::operator()[abi:ne200100](v50);
  v50[0] = &v45[16];
  std::vector<CachePrefetchGroup>::__destroy_vector::operator()[abi:ne200100](v50);
  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }
}

void sub_1A6988B44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  l2a::Sizes::~Sizes(&__p);
  l2a::Sizes::~Sizes(va);
  _Unwind_Resume(a1);
}

uint64_t l2a::pe_alloc_fifo_dst@<X0>(uint64_t result@<X0>, int a2@<W1>, char a3@<W2>, char a4@<W3>, int a5@<W4>, unsigned int a6@<W5>, int a7@<W6>, uint64_t a8@<X8>)
{
  *(a8 + 16) = 0u;
  *(a8 + 32) = 0u;
  *a8 = 0u;
  if (a6 >= 1)
  {
    do
    {
      a5 -= a6 & 1;
      v8 = a6 > 1;
      a6 >>= 1;
    }

    while (v8);
  }

  if ((result - 5) > 1 || a7 < 15)
  {
    v10 = a3 + a4;
    if ((a2 & 0xFFFFFFFE) == 2)
    {
      ++v10;
    }

    v9 = (2 * a5) << (v10 - 4);
  }

  else
  {
    v9 = 2 * a5;
  }

  *(a8 + 20) = v9;
  return result;
}

void l2a::np_alloc_chained(uint64_t *__return_ptr a1@<X8>, uint64_t a2@<X0>, unsigned int a3@<W1>, int a4@<W2>, int a5@<W3>, int a6@<W4>, int a7@<W5>, int a8@<W6>, int a9@<W7>, int a10, int a11, char a12, __int16 a13, char a14, __int16 a15, char a16, int a17, int a18, int a19, int a20, int a21, int a22, int a23, int a24, int a25, int a26, char a27, int a28, int a29, int a30, int a31, char **a32, int a33)
{
  v46 = a1;
  v35 = (a7 & 0xFFFFFFFE) == 2;
  v36 = a8 * a2;
  if (a21 == 1)
  {
    v37 = a5;
  }

  else
  {
    v37 = a8 * a2;
  }

  v38 = 1;
  if (a29 != 1)
  {
    v38 = (a30 == 1 || a31 == 2 && (a22 == 8 || a22 == 4)) && a28 < a23;
  }

  if (a11 && a33 > 13)
  {
    v39 = 1;
  }

  else
  {
    v39 = a21 == 1 || v38;
    if (a33 <= 14)
    {
      v39 = 0;
    }
  }

  v40 = 0x10u >> v35;
  if (v39)
  {
    v41 = (ceil(v37 / v40) * v40);
  }

  else
  {
    v42 = a24 << a27;
    v43 = (((16 * a8 * (0x10u >> ((a6 & 0xFFFFFFFE) == 2))) / (1 << (a16 + a12))) << a14);
    if (a33 > 17)
    {
      a2 = l2a::calc_cbuf_width_v2(v43, v42, a25, a24, a26, v37, v40, a9, v46, SHIDWORD(v46));
    }

    else
    {
      a2 = l2a::calc_cbuf_width_v1(v43, v42, a25, a26, v37, v40, a8, a9, v46);
    }

    v41 = a2;
  }

  l2a::GetHGDCW(a2);
  v58 = 0;
  v59 = 0;
  v60 = 0;
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&v58, l2a::GetHGDCW(void)::HGDCW, qword_1EB291060, (qword_1EB291060 - l2a::GetHGDCW(void)::HGDCW) >> 2);
  v61[0] = 0;
  v61[8] = 1;
  memset(&v61[12], 0, 24);
  v62 = 0;
  v63[0] = 1;
  memset(&v63[4], 0, 24);
  *&v44 = 0x100000001;
  *(&v44 + 1) = 0x100000001;
  *&v65[4] = v44;
  *&v61[4] = a7;
  v64 = 0;
  *v65 = v41;
  *&v65[4] = l2a::dst_slice_height(a3, a9, a17, a18, a19, a20, 0);
  *&v65[8] = a10 * a4;
  if (a21 == 1)
  {
    v45 = v36;
  }

  else
  {
    v45 = a5;
  }

  *&v65[16] = v45;
  *&v65[12] = 1;
  if (&v58 != a32)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v58, *a32, a32[1], (a32[1] - *a32) >> 2);
  }

  v61[0] = 1;
  v51 = 0;
  v52 = 0;
  __p = 0;
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&__p, v58, v59, (v59 - v58) >> 2);
  v53 = *v61;
  memset(v54, 0, 24);
  std::vector<l2a::AccessPattern>::__init_with_size[abi:ne200100]<l2a::AccessPattern*,l2a::AccessPattern*>(v54, *&v61[16], *&v61[24], (*&v61[24] - *&v61[16]) >> 5);
  v54[3] = *v63;
  memset(v55, 0, sizeof(v55));
  std::vector<l2a::AccessPattern>::__init_with_size[abi:ne200100]<l2a::AccessPattern*,l2a::AccessPattern*>(v55, *&v63[8], *&v63[16], (*&v63[16] - *&v63[8]) >> 5);
  v56 = *v65;
  v57 = *&v65[16];
  l2a::alloc_buffer(&__p, v46);
  v66[0] = v55;
  std::vector<CachePrefetchGroup>::__destroy_vector::operator()[abi:ne200100](v66);
  v66[0] = v54;
  std::vector<CachePrefetchGroup>::__destroy_vector::operator()[abi:ne200100](v66);
  if (__p)
  {
    v51 = __p;
    operator delete(__p);
  }

  v66[0] = &v63[8];
  std::vector<CachePrefetchGroup>::__destroy_vector::operator()[abi:ne200100](v66);
  v66[0] = &v61[16];
  std::vector<CachePrefetchGroup>::__destroy_vector::operator()[abi:ne200100](v66);
  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }
}

void sub_1A6988F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  l2a::Sizes::~Sizes(&__p);
  l2a::Sizes::~Sizes(va);
  _Unwind_Resume(a1);
}

uint64_t l2a::calc_cbuf_width_v1(l2a *this, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9)
{
  v9 = ~a4 + a3;
  v10 = this;
  v11 = (ceil((v9 + a2) / this) * this);
  v12 = (ceil(a4 / a6) * a6) + v11;
  v13 = (ceil((a4 + a2) / a6) * a6) + (ceil(v9 / this) * this);
  if (v12 > v13)
  {
    v13 = v12;
  }

  result = (ceil(a5 / a6) * a6);
  if (v11 < result)
  {
    v15 = v11 + (ceil(a2 / v10) * v10);
    v16 = __OFSUB__(result, v15);
    v17 = result - v15;
    if ((v17 < 0) ^ v16 | (v17 == 0))
    {
      v18 = v17 + v13;
      if (v18 <= v11)
      {
        return v11;
      }

      else
      {
        return v18;
      }
    }

    else if (v11 <= v13)
    {
      return v13;
    }

    else
    {
      return v11;
    }
  }

  return result;
}

uint64_t l2a::calc_cbuf_width_v2(uint64_t this, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
  if (a6 < 1)
  {
    return 0;
  }

  v10 = this;
  v11 = 0;
  LODWORD(this) = 0;
  v12 = v10;
  v13 = 1;
  v14 = a3 - (a5 + a4) + a2;
  do
  {
    v15 = (((a5 + a4 - a3 + v11) / a2) & ~(((a5 + a4 - a3 + v11) / a2) >> 31)) * a2;
    v16 = v14 + v15;
    if (v14 + v15 >= a6)
    {
      v16 = a6;
    }

    v17 = (v15 - a5) & ~((v15 - a5) >> 31);
    v11 += (ceil((v16 - v11) / v12) * v12);
    if (v11 >= a6)
    {
      v18 = a6;
    }

    else
    {
      v18 = v11;
    }

    v19 = (ceil(v18 / a7) * a7) - (floor(v17 / a7) * a7);
    if (this <= v19)
    {
      this = v19;
    }

    else
    {
      this = this;
    }

    if ((v13 & 1) == 0)
    {
      break;
    }

    v13 = 0;
  }

  while (v11 < a6);
  return this;
}

void l2a::pn_alloc_chained(uint64_t *__return_ptr a1@<X8>, l2a *a2@<X0>, int a3@<W1>, char a4@<W2>, int a5@<W3>, int a6@<W4>, int a7@<W5>, int a8@<W6>, int a9@<W7>, int a10, int a11, int a12, int a13, int a14, int a15, int a16, int a17, int a18, int a19, char a20, __int16 a21, char a22, __int16 a23, char a24, char **a25, int a26)
{
  v32 = a2;
  v42 = a1;
  v33 = (a14 & 0xFFFFFFFE) == 2;
  if (a26 <= 17)
  {
    v34 = a15 % a16 + a15;
  }

  else
  {
    v34 = a15;
  }

  if (!a19 || (v35 = 1, a26 <= 13))
  {
    v35 = a10 == 1 && a26 > 14;
  }

  v37 = 0x10u >> v33;
  if (v35)
  {
    v38 = (ceil(a11 / v37) * v37);
  }

  else
  {
    v39 = ((16 * a16 * v37) / (1 << (a24 + a20))) << a22;
    v40 = (1 << a4);
    if (a26 > 17)
    {
      a2 = l2a::calc_cbuf_width_v2(v40, v39, v34, a16, a17, a11, v37, a9, a1, SHIDWORD(a1));
    }

    else
    {
      a2 = l2a::calc_cbuf_width_v1(v40, v39, v34, a17, a11, 0x10u >> v33, v37, a9, a1);
    }

    v38 = a2;
  }

  l2a::GetHGDCW(a2);
  v52 = 0;
  v53 = 0;
  v54 = 0;
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&v52, l2a::GetHGDCW(void)::HGDCW, qword_1EB291060, (qword_1EB291060 - l2a::GetHGDCW(void)::HGDCW) >> 2);
  v55[0] = 0;
  v55[8] = 1;
  memset(&v55[12], 0, 24);
  v56 = 0;
  v57[0] = 1;
  memset(&v57[4], 0, 24);
  *&v41 = 0x100000001;
  *(&v41 + 1) = 0x100000001;
  *&v59[4] = v41;
  *&v55[4] = a3;
  v58 = 0;
  *v59 = v38;
  *&v59[4] = l2a::dst_slice_height(v32, 1, a5, a6, a7, a8, a9);
  *&v59[8] = a12;
  *&v59[12] = 1;
  *&v59[16] = a13;
  if (&v52 != a25)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v52, *a25, a25[1], (a25[1] - *a25) >> 2);
  }

  v55[0] = 1;
  v45 = 0;
  v46 = 0;
  __p = 0;
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&__p, v52, v53, (v53 - v52) >> 2);
  v47 = *v55;
  memset(v48, 0, 24);
  std::vector<l2a::AccessPattern>::__init_with_size[abi:ne200100]<l2a::AccessPattern*,l2a::AccessPattern*>(v48, *&v55[16], *&v55[24], (*&v55[24] - *&v55[16]) >> 5);
  v48[3] = *v57;
  memset(v49, 0, sizeof(v49));
  std::vector<l2a::AccessPattern>::__init_with_size[abi:ne200100]<l2a::AccessPattern*,l2a::AccessPattern*>(v49, *&v57[8], *&v57[16], (*&v57[16] - *&v57[8]) >> 5);
  v50 = *v59;
  v51 = *&v59[16];
  l2a::alloc_buffer(&__p, v42);
  v60[0] = v49;
  std::vector<CachePrefetchGroup>::__destroy_vector::operator()[abi:ne200100](v60);
  v60[0] = v48;
  std::vector<CachePrefetchGroup>::__destroy_vector::operator()[abi:ne200100](v60);
  if (__p)
  {
    v45 = __p;
    operator delete(__p);
  }

  v60[0] = &v57[8];
  std::vector<CachePrefetchGroup>::__destroy_vector::operator()[abi:ne200100](v60);
  v60[0] = &v55[16];
  std::vector<CachePrefetchGroup>::__destroy_vector::operator()[abi:ne200100](v60);
  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }
}

void sub_1A698940C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  l2a::Sizes::~Sizes(&__p);
  l2a::Sizes::~Sizes(va);
  _Unwind_Resume(a1);
}

void std::vector<l2a::AccessPattern>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<l2a::AccessPattern>>(a1, a2);
  }

  std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<l2a::AccessPattern>,l2a::AccessPattern*,l2a::AccessPattern*,l2a::AccessPattern*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = *v6;
      v4[2] = 0;
      v4[3] = 0;
      v4[1] = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v4 + 1, *(v6 + 8), *(v6 + 16), (*(v6 + 16) - *(v6 + 8)) >> 3);
      v6 += 32;
      v4 = v11 + 4;
      v11 += 4;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<l2a::AccessPattern>,l2a::AccessPattern*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<l2a::AccessPattern>,l2a::AccessPattern*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<LayerSourcePair>,LayerSourcePair*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<l2a::AccessPattern>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t l2a::get_pad(uint64_t a1)
{
  if (*a1)
  {
    return *(a1 + 4);
  }

  result = 0;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  while (v4 != v3)
  {
    v5 = v4;
    while (1)
    {
      v6 = *(v5 + 8);
      v7 = *(v5 + 16);
      if (v6 != v7)
      {
        break;
      }

LABEL_24:
      v5 += 32;
      if (v5 == v3)
      {
        return result;
      }
    }

    v8 = *v5;
    v9 = *(v5 + 4) * result;
    while (1)
    {
      v10 = *v6;
      v11 = v6[1];
      memset(v25, 0, sizeof(v25));
      if (v11 < 1)
      {
        v14 = 1;
      }

      else
      {
        v12 = 0;
        v13 = 0;
        v14 = 1;
        do
        {
          v15 = v10;
          v16 = v13;
          if (v10 >= 1)
          {
            do
            {
              v17 = *(v25 + v16);
              *(v25 + v16) = v17 + 1;
              if (v17 + 1 > v14)
              {
                v14 = v17 + 1;
              }

              v18 = v16 + 1;
              v19 = -v18 < 0;
              v20 = -v18 & 0x3F;
              v16 = v18 & 0x3F;
              if (!v19)
              {
                v16 = -v20;
              }

              --v15;
            }

            while (v15);
          }

          v21 = v13 + v9;
          v22 = v21 & 0x3F;
          v23 = -v21;
          v19 = v23 < 0;
          v24 = v23 & 0x3F;
          if (v19)
          {
            v13 = v22;
          }

          else
          {
            v13 = -v24;
          }

          ++v12;
        }

        while (v12 != v11);
      }

      if (v14 > v8)
      {
        break;
      }

      v6 += 2;
      if (v6 == v7)
      {
        goto LABEL_24;
      }
    }

    result = (result + 1);
    if (result == 64)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return 0;
}

uint64_t *std::vector<l2a::AccessPattern>::__init_with_size[abi:ne200100]<l2a::AccessPattern*,l2a::AccessPattern*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<l2a::AccessPattern>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A6989770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<CachePrefetchGroup>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t l2a::dma_push_round(l2a *this, uint64_t a2, int a3)
{
  if (a3 == 1)
  {
    v3 = this;
    v4 = a2;
    return (ceil(v3 / v4) * v4);
  }

  if (!this)
  {
    return 0;
  }

  if (this <= a2)
  {
    return a2;
  }

  v5 = (2 * a2);
  if (v5 < this)
  {
    v3 = this;
    v4 = (4 * a2);
    return (ceil(v3 / v4) * v4);
  }

  return v5;
}

BOOL l2a::SliceGen::next(int *a1, int *a2)
{
  v2 = a1[6];
  v3 = a1[4] + *a1;
  if (v2 < v3)
  {
    v4 = v2 & ~(v2 >> 31);
    *a2 = v4;
    v5 = *a1;
    v6 = a1[1] + v2;
    if (*a1 >= v6)
    {
      v7 = a1[1] + v2;
    }

    else
    {
      v7 = *a1;
    }

    a2[1] = v7;
    if (a1[5])
    {
      v8 = v6 - v5;
      if (a1[4] < v6 - v5)
      {
        v8 = a1[4];
      }

      if (v2 < 0)
      {
        if (v7 <= 1 - v2)
        {
          v7 = 1 - v2;
        }

        a2[1] = v7;
      }

      if (v8 >= 1)
      {
        v9 = v5 + ~(v8 & ~(v8 >> 31));
        if (v9 < v4)
        {
          v4 = v9;
        }

        *a2 = v4;
      }
    }

    a1[6] = v6 - a1[2];
  }

  return v2 < v3;
}

void *ZinLiveInParamLayer::ZinLiveInParamLayer(void *a1, uint64_t *a2, uint64_t *a3, __int128 *a4)
{
  v5 = a3[1];
  v8 = *a3;
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = 0;
  ZinIrOpLayer::ZinIrOpLayer(a1, a2, &v8, a4, &v7);
  std::unique_ptr<ZinIrKernel>::~unique_ptr[abi:ne200100](&v7);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  *a1 = &unk_1F19F23A8;
  return a1;
}

void sub_1A6989914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ZinIrKernel *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  std::unique_ptr<ZinIrKernel>::~unique_ptr[abi:ne200100](&a10);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

double ANEDebugInfo::DebugInfoInMem::DebugInfoInMem(ANEDebugInfo::DebugInfoInMem *this)
{
  __asm { FMOV            V0.2D, #-1.0 }

  *this = _Q0;
  *(this + 1) = _Q0;
  *(this + 4) = 0xBFF0000000000000;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  result = 0.0;
  *(this + 92) = 0u;
  *(this + 108) = 0u;
  *(this + 124) = 0x3F80000000000000;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 17) = 0;
  *(this + 159) = 0;
  return result;
}

uint64_t ANEDebugInfo::DebugInfoInMem::DebugInfoInMem(uint64_t a1, uint64_t a2, uint64_t a3, __int16 *a4)
{
  __asm { FMOV            V0.2D, #-1.0 }

  *a1 = _Q0;
  *(a1 + 16) = _Q0;
  *(a1 + 32) = 0xBFF0000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 92) = 0u;
  *(a1 + 108) = 0u;
  *(a1 + 124) = 0x3F80000000000000;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 159) = 0;
  *(a1 + 64) = ANEDebugInfo::DebugInfoInMem::EncodeString(a1, a2);
  *(a1 + 68) = ANEDebugInfo::DebugInfoInMem::EncodeString(a1, a3);
  v12 = *a4;
  *(a1 + 162) = *(a4 + 2);
  *(a1 + 160) = v12;
  return a1;
}

void sub_1A6989A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table((v3 + 96));
  std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ANEDebugInfo::DebugInfoInMem::EncodeString(uint64_t a1, uint64_t a2)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,long>>>::find<std::string>((a1 + 96), a2);
  if (v4)
  {
    return *(v4 + 10);
  }

  v5 = -1431655765 * ((*(a1 + 144) - *(a1 + 136)) >> 3);
  std::vector<std::string>::push_back[abi:ne200100](a1 + 136, a2);
  v9 = a2;
  *(std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 96), a2, &std::piecewise_construct, &v9, &v8) + 10) = v5;
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  *(a1 + 92) += v6 + 1;
  return v5;
}

void ANEDebugInfo::DebugInfoInMem::GetString(std::string *__return_ptr a1@<X8>, ANEDebugInfo::DebugInfoInMem *this@<X0>, unsigned int a3@<W1>)
{
  v3 = *(this + 17);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 18) - v3) >> 3) <= a3)
  {
    *(&a1->__r_.__value_.__s + 23) = 21;
    strcpy(a1, "STR_TBL_OUT_OF_BOUND!");
  }

  else
  {
    v4 = (v3 + 24 * a3);
    if (*(v4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a1, *v4, *(v4 + 1));
    }

    else
    {
      v5 = *v4;
      a1->__r_.__value_.__r.__words[2] = *(v4 + 2);
      *&a1->__r_.__value_.__l.__data_ = v5;
    }
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v14 + 2, a2))
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_1A6989DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,PerfTracerCategory>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A6989EB0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,PerfTracerCategory>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t ANECTensorDescToZinTensorInfo(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = ANECFormatToZinTensorFormat(*a1);
  *a2 = v6;
  result = CheckValidDMAFormat(a3[1324], a3[1325], a3[1326], a3[1668], v6);
  if (result)
  {
    v12[0] = 0;
    v12[1] = 0;
    v13 = 0;
    if (ZinGetString(*a1, v12))
    {
      v11 = v12;
      if (v13 < 0)
      {
        v11 = v12[0];
      }

      ZinAssertImpl("Error: Invalid tensor format: %s", v11);
    }

    ZinAssertImpl("Error: cannot retrieve the ANEC format data_type string");
  }

  v8 = *(a1 + 40);
  v9 = *(a1 + 24);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = v9;
  *(a2 + 40) = v8;
  *(a2 + 50) = *(a1 + 57);
  v10 = *(a1 + 48);
  if ((*(a2 + 64) & 1) == 0)
  {
    *(a2 + 64) = 1;
  }

  *(a2 + 56) = v10;
  *(a2 + 48) = *(a1 + 56);
  return result;
}

void sub_1A6989FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float ANECTensorValueDescToValues(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1[1] * *a1 * a1[2] * a1[3] * a1[4] != 5)
  {
    ZinAssertImpl("Tensor dimension exceeds max number of elements ANECTensorValueDesc can hold\n", a2, a3, v3, v4);
  }

  for (i = 0; i != 20; i += 4)
  {
    result = *(a1 + i + 40);
    *(a3 + i) = result;
  }

  return result;
}

uint64_t ZinValidator::Init(ZinValidator *this, CFStringRef theString, const ZinIrCompilerParameters *a3)
{
  if (theString)
  {
    __p[0] = 0;
    __p[1] = 0;
    v11 = 0;
    if (ZinGetString(theString, __p))
    {
      ZinIrHalCreator::CreateHalFromString(__p, &v9);
      v4 = v9;
      v9 = 0;
      v5 = *this;
      *this = v4;
      if (v5)
      {
        (*(*v5 + 8))(v5);
        v6 = v9;
        v9 = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        v4 = *this;
      }

      if (v4)
      {
        operator new();
      }

      v8 = __p;
      if (v11 < 0)
      {
        v8 = __p[0];
      }

      ZinAssertImpl("Could not create HAL params for arch %s", v8);
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 10;
}

void sub_1A698A1BC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  MEMORY[0x1AC55A070](v17, 0x1032C402B085F16, a3, a4, a5, a6, a7, a8);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *ZinValidator::GetValidationBacking(ZinValidator *this)
{
  {
    ZinValidator::GetValidationBacking(void)const::backing = &unk_1F19EEAA0;
    *algn_1EB2947D8 = 0;
    dword_1EB2947E0 = -1;
    std::string::basic_string[abi:ne200100]<0>(&algn_1EB2947E4[4], "");
    ZinValidator::GetValidationBacking(void)const::backing = &unk_1F19E2DF8;
    __cxa_atexit(ZinIrFileBacking::~ZinIrFileBacking, &ZinValidator::GetValidationBacking(void)const::backing, &dword_1A617D000);
  }

  return &ZinValidator::GetValidationBacking(void)const::backing;
}

uint64_t ZinValidator::ValidateConcatLayer(uint64_t *a1, _OWORD *a2, __int128 *a3, unint64_t a4, void *a5, void *a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v12 = (*(**a1 + 16))(*a1);
  v13 = a1[1];
  v18[0] = v12;
  v18[1] = v13;
  v20 = 0;
  v21 = 0;
  __p = 0;
  v22 = 0;
  ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>::ZinConcatValidator(v17, v18, a2, a3, a4);
  ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>::Validate(v17);
  ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>::ZinConcatValidator(v23, v17);
  memset(v16, 0, sizeof(v16));
  std::vector<ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>>::__init_with_size[abi:ne200100]<ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc> const*,ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc> const*>(v16, v23, &v24, 1uLL);
  ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>::~ZinConcatValidator(v23);
  UnitAlternatesWithMultiple = ZinGetUnitAlternatesWithMultipleInputs<ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>,ANECConcatLayerDescAlternate>(v16, a1 + 1875, a1 + 2037, a5, a6);
  v23[0] = v16;
  std::vector<ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>>::__destroy_vector::operator()[abi:ne200100](v23);
  ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>::~ZinConcatValidator(v17);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }

  return UnitAlternatesWithMultiple;
}

void sub_1A698A444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34)
{
  std::vector<ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>>::__destroy_vector::operator()[abi:ne200100](&a34);
  ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>::~ZinConcatValidator(&a12);
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>::Validate(uint64_t a1)
{
  v2 = **(a1 + 32);
  ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>::ValidateBottomInfo(a1);
  if (IsConcatInWidthDim<ANECConcatLayerDesc>(*(a1 + 56)))
  {
    v95 = 0;
    v96 = 0;
    v97 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v3 = ANECFormatToZinTensorFormat(**(a1 + 40));
    v72 = 0;
    v71 = 0;
    v73 = 0;
    memset(&v74[1], 0, 24);
    v76 = 0u;
    v77 = 0u;
    v78 = -1;
    v74[0] = &unk_1F1A34078;
    v80 = 0;
    v79 = 2;
    v75 = 3;
    v81 = 0;
    v82 = 0;
    memset(&v83[1], 0, 24);
    v84 = 0;
    v86 = 0u;
    v85 = 0u;
    v87 = -1;
    v43 = v2;
    BYTE8(v91) = 0;
    v83[0] = &unk_1F1A33FB0;
    v88 = 0;
    v90 = 0;
    v89 = 0;
    LOBYTE(v91) = 0;
    if (*(a1 + 48))
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = *(a1 + 40) + v4;
        v50 = *(v6 + 8);
        v51 = *(v6 + 24);
        v52 = *(v6 + 40);
        std::vector<ZinTensorDimensions>::push_back[abi:ne200100](&v95, &v50);
        v7 = *(*(a1 + 40) + v4 + 48);
        v8 = v93;
        if (v93 >= v94)
        {
          v10 = (v93 - v92) >> 4;
          v11 = v10 + 1;
          if ((v10 + 1) >> 60)
          {
            std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
          }

          v12 = v94 - v92;
          if ((v94 - v92) >> 3 > v11)
          {
            v11 = v12 >> 3;
          }

          if (v12 >= 0x7FFFFFFFFFFFFFF0)
          {
            v13 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v13 = v11;
          }

          if (v13)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::optional<unsigned long>>>(&v92, v13);
          }

          v14 = 16 * v10;
          *v14 = v7;
          *(v14 + 8) = 1;
          v9 = 16 * v10 + 16;
          v15 = (v14 - (v93 - v92));
          memcpy(v15, v92, v93 - v92);
          v16 = v92;
          v92 = v15;
          v93 = v9;
          v94 = 0;
          if (v16)
          {
            operator delete(v16);
          }

          v2 = v43;
        }

        else
        {
          *v93 = v7;
          *(v8 + 8) = 1;
          v9 = (v8 + 1);
        }

        v93 = v9;
        ++v5;
        v4 += 64;
      }

      while (*(a1 + 48) > v5);
    }

    ZinConcatLayerUtils::DecomposeWidthConcat(&v95, &v92, v3, v2, &v71);
    v17 = *(v2 + 560);
    v18 = v72;
    v19 = v71;
    if (v72 != v71)
    {
      do
      {
        v53[0] = 0;
        v55 = 0;
        v56 = 0;
        __p = 0;
        v57 = 5;
        v58 = 0;
        v59 = v3;
        v20 = *(v19 + 104);
        v21 = *(v95 + 4);
        v22 = *(v95 + 1);
        v60 = *v95;
        v62 = v21;
        v61 = v22;
        v63 = 0;
        v64 = 0;
        v65 = v20;
        v66 = 0;
        v67 = 0;
        ZinTensorAxisTypePacked::ZinTensorAxisTypePacked(&v68, v53);
        if (__p)
        {
          v55 = __p;
          operator delete(__p);
        }

        ZinTransposeValidator<ZinIrTransposeUnitInfo,ZinIrTensorInfo>::ZinTransposeValidator(&v50, *(a1 + 32), v19, &v59);
        ZinTransposeValidator<ZinIrTransposeUnitInfo,ZinIrTensorInfo>::Validate(&v50);
        if (*(&v51 + 1))
        {
          v98[0] = @"InvalidInputWidth";
          std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(a1 + 8, v98, v98);
          v17 = *(v2 + 560);
        }

        ZinTransposeValidator<ZinIrTransposeUnitInfo,ZinIrTensorInfo>::~ZinTransposeValidator(&v50);
        if (v69)
        {
          v70 = v69;
          operator delete(v69);
        }

        v19 += 120;
      }

      while (v19 != v18);
      v23 = v95;
      v24 = *v95;
      v25 = *(v95 + 8);
      v26 = *(v95 + 4);
      if (v95 == v96)
      {
        v27 = 0;
      }

      else
      {
        v27 = 0;
        do
        {
          v27 += *(v23 + 3);
          v23 += 40;
        }

        while (v23 != v96);
      }

      v44[0] = 0;
      v46 = 0;
      v47 = 0;
      v45 = 0;
      v48 = 5;
      v49 = 0;
      v59 = v3;
      *&v60 = v24;
      *(&v60 + 1) = v27;
      v61 = vextq_s8(v25, v25, 8uLL);
      v62 = v26;
      v63 = 0;
      v64 = 0;
      v65 = v91;
      v66 = 0;
      v67 = 0;
      ZinTensorAxisTypePacked::ZinTensorAxisTypePacked(&v68, v44);
      if (v45)
      {
        v46 = v45;
        operator delete(v45);
      }

      ZinTransposeValidator<ZinIrTransposeUnitInfo,ZinIrTensorInfo>::ZinTransposeValidator(&v50, *(a1 + 32), v83, &v59);
      ZinTransposeValidator<ZinIrTransposeUnitInfo,ZinIrTensorInfo>::Validate(&v50);
      if (*(&v51 + 1))
      {
        v98[0] = @"InvalidInputWidth";
        std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(a1 + 8, v98, v98);
        v17 = *(v43 + 560);
      }

      ZinTransposeValidator<ZinIrTransposeUnitInfo,ZinIrTensorInfo>::~ZinTransposeValidator(&v50);
      if (v69)
      {
        v70 = v69;
        operator delete(v69);
      }
    }

    if (*(a1 + 48))
    {
      v28 = 0;
      v29 = 32;
      do
      {
        *(*(a1 + 80) + v29) = ZinAlign(*(*(a1 + 40) + v29), v17);
        ++v28;
        v29 += 64;
      }

      while (*(a1 + 48) > v28);
    }

    v83[0] = &unk_1F1A33FB0;
    if (v88)
    {
      v89 = v88;
      operator delete(v88);
    }

    ZinIrUnitInfo::~ZinIrUnitInfo(v83);
    ZinIrUnitInfo::~ZinIrUnitInfo(v74);
    *&v50 = &v71;
    std::vector<ZinConcatLayerUtils::DecomposedConcatUnits::TransposeUnit>::__destroy_vector::operator()[abi:ne200100](&v50);
    if (v92)
    {
      v93 = v92;
      operator delete(v92);
    }

    if (v95)
    {
      v96 = v95;
      operator delete(v95);
    }
  }

  result = IsConcatInterleaved<ANECConcatLayerDesc>(*(a1 + 56));
  if (result)
  {
    result = IsConcatInChannelDim<ANECConcatLayerDesc>(*(a1 + 56));
    if ((result & 1) == 0)
    {
      v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v31)
      {
        ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>::Validate(v31, v32, v33, v34, v35, v36, v37, v38);
      }

      *&v50 = @"InvalidUnitConcatType";
      result = std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(a1 + 8, &v50, &v50);
    }

    v39 = *(a1 + 48);
    if (v39)
    {
      v40 = 0;
      v41 = 16;
      v42 = MEMORY[0x1E69E9C10];
      do
      {
        if (*(*(a1 + 40) + 16) != *(*(a1 + 40) + v41))
        {
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
          {
            ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>::Validate(&v71, &v71 + 1);
          }

          *&v50 = @"InvalidUnitConcatType";
          result = std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(a1 + 8, &v50, &v50);
          v39 = *(a1 + 48);
        }

        ++v40;
        v41 += 64;
      }

      while (v39 > v40);
    }
  }

  return result;
}

void sub_1A698AA70(_Unwind_Exception *a1)
{
  v3 = STACK[0x2F0];
  if (STACK[0x2F0])
  {
    STACK[0x2F8] = v3;
    operator delete(v3);
  }

  ZinConcatLayerUtils::DecomposedConcatUnits::~DecomposedConcatUnits(&STACK[0x310]);
  v4 = *(v1 - 152);
  if (v4)
  {
    *(v1 - 144) = v4;
    operator delete(v4);
  }

  v5 = *(v1 - 128);
  if (v5)
  {
    *(v1 - 120) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t ZinGetUnitAlternatesWithMultipleInputs<ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>,ANECConcatLayerDescAlternate>(uint64_t *a1, uint64_t *a2, uint64_t *a3, void *a4, void *a5)
{
  result = ZinGetUnitErrors<ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>>(a1);
  *a4 = 0;
  *a5 = 0;
  if (result == 6)
  {
    a2[1] = *a2;
    std::vector<ANECConcatLayerDescAlternate>::reserve(a2, 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3));
    std::vector<std::vector<ZinIrOpLayer *>>::clear[abi:ne200100](a3);
    std::vector<std::vector<ANECTensorDesc>>::reserve(a3, 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3));
    v11 = *a1;
    v12 = a1[1];
    if (*a1 != v12)
    {
      do
      {
        ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>::ZinConcatValidator(v45, v11);
        if (v47[1])
        {
          __p = 0uLL;
          v44 = 0;
          std::vector<ANECTensorDesc>::__init_with_size[abi:ne200100]<ANECTensorDesc*,ANECTensorDesc*>(&__p, v49, v50, (v50 - v49) >> 6);
          *&__src[65] = v48;
          __src[68] = __p;
          __src[67] = (*(&__p + 1) - __p) >> 6;
          v13 = v46;
          if (v46 == v47)
          {
            v14 = 0;
          }

          else
          {
            v14 = 0;
            while (1)
            {
              __src[v14 + 1] = v13[4];
              if (v14 == 63)
              {
                break;
              }

              v15 = v13[1];
              if (v15)
              {
                do
                {
                  v16 = v15;
                  v15 = *v15;
                }

                while (v15);
              }

              else
              {
                do
                {
                  v16 = v13[2];
                  v17 = *v16 == v13;
                  v13 = v16;
                }

                while (!v17);
              }

              ++v14;
              v13 = v16;
              if (v16 == v47)
              {
                goto LABEL_16;
              }
            }

            v14 = 64;
          }

LABEL_16:
          __src[0] = v14;
          v18 = a3[1];
          v19 = a3[2];
          if (v18 >= v19)
          {
            v21 = 0xAAAAAAAAAAAAAAABLL * ((v18 - *a3) >> 3);
            v22 = v21 + 1;
            if (v21 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
            }

            v23 = 0xAAAAAAAAAAAAAAABLL * ((v19 - *a3) >> 3);
            if (2 * v23 > v22)
            {
              v22 = 2 * v23;
            }

            if (v23 >= 0x555555555555555)
            {
              v24 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v24 = v22;
            }

            v51[4] = a3;
            if (v24)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<ZinPerfUtil::TaskStats>>>(a3, v24);
            }

            v25 = 24 * v21;
            *v25 = 0;
            *(v25 + 8) = 0;
            *(v25 + 16) = 0;
            *v25 = __p;
            *(v25 + 16) = v44;
            __p = 0uLL;
            v44 = 0;
            v20 = 24 * v21 + 24;
            v26 = a3[1] - *a3;
            v27 = 24 * v21 - v26;
            memcpy((v25 - v26), *a3, v26);
            v28 = *a3;
            *a3 = v27;
            a3[1] = v20;
            v29 = a3[2];
            a3[2] = 0;
            v51[2] = v28;
            v51[3] = v29;
            v51[0] = v28;
            v51[1] = v28;
            std::__split_buffer<std::vector<ZinIrOpLayer *>>::~__split_buffer(v51);
          }

          else
          {
            *v18 = 0;
            v18[1] = 0;
            v18[2] = 0;
            *v18 = __p;
            v18[2] = v44;
            __p = 0uLL;
            v44 = 0;
            v20 = (v18 + 3);
          }

          a3[1] = v20;
          v31 = a2[1];
          v30 = a2[2];
          if (v31 >= v30)
          {
            v33 = 0xF128CFC4A33F128DLL * ((v31 - *a2) >> 3);
            v34 = v33 + 1;
            if (v33 + 1 > 0x76B981DAE6076BLL)
            {
              std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
            }

            v35 = 0xF128CFC4A33F128DLL * ((v30 - *a2) >> 3);
            if (2 * v35 > v34)
            {
              v34 = 2 * v35;
            }

            if (v35 >= 0x3B5CC0ED7303B5)
            {
              v36 = 0x76B981DAE6076BLL;
            }

            else
            {
              v36 = v34;
            }

            if (v36)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<ANECConcatLayerDescAlternate>>(a2, v36);
            }

            v37 = 552 * v33;
            memcpy(v37, __src, 0x228uLL);
            v32 = v37 + 552;
            v38 = a2[1] - *a2;
            v39 = (v37 - v38);
            memcpy(v39, *a2, v38);
            v40 = *a2;
            *a2 = v39;
            a2[1] = v32;
            a2[2] = 0;
            if (v40)
            {
              operator delete(v40);
            }
          }

          else
          {
            memcpy(a2[1], __src, 0x228uLL);
            v32 = v31 + 552;
          }

          a2[1] = v32;
          if (__p)
          {
            *(&__p + 1) = __p;
            operator delete(__p);
          }
        }

        ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>::~ZinConcatValidator(v45);
        v11 += 104;
      }

      while (v11 != v12);
    }

    v41 = *a2;
    *a4 = 0xF128CFC4A33F128DLL * ((a2[1] - *a2) >> 3);
    *a5 = v41;
    return 6;
  }

  return result;
}

void sub_1A698AF44(_Unwind_Exception *a1)
{
  v3 = STACK[0x240];
  if (STACK[0x240])
  {
    STACK[0x248] = v3;
    operator delete(v3);
  }

  ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>::~ZinConcatValidator(v1 - 240);
  _Unwind_Resume(a1);
}

uint64_t ZinValidator::ValidateConvLayer(uint64_t *a1, __int128 *a2, __int128 *a3, void *a4, void *a5)
{
  v10 = (*(**a1 + 16))(*a1);
  v11 = a1[1];
  v44[0] = v10;
  v44[1] = v11;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  v48 = 0;
  v28[2] = v44;
  v12 = a3[1];
  v29 = *a3;
  v30 = v12;
  v13 = a3[3];
  v31 = a3[2];
  v32 = v13;
  v14 = a2[10];
  v42 = a2[9];
  v43 = v14;
  v15 = a2[8];
  v17 = a2[5];
  v16 = a2[6];
  v40 = a2[7];
  v41 = v15;
  v18 = a2[2];
  v36 = a2[3];
  v37 = a2[4];
  v38 = v17;
  v39 = v16;
  v19 = a2[1];
  v33 = *a2;
  v34 = v19;
  v28[3] = a3;
  v28[4] = a2;
  v35 = v18;
  v26 = &unk_1F19F0A88;
  v27 = v28;
  v28[0] = 0;
  v28[1] = 0;
  v24 = 0uLL;
  v25 = 0;
  ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::Validate(&v26, &v22);
  std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__vdeallocate(&v24);
  v24 = v22;
  v25 = v23;
  v23 = 0;
  v22 = 0uLL;
  v49 = &v22;
  std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__destroy_vector::operator()[abi:ne200100](&v49);
  Unit = ZinGetUnitAlternates<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>,ANECConvLayerDescAlternate>(&v24, a1 + 392, a4, a5);
  *&v22 = &v24;
  std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__destroy_vector::operator()[abi:ne200100](&v22);
  v26 = &unk_1F19CCBB0;
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v27, v28[0]);
  if (SHIBYTE(v47) < 0)
  {
    operator delete(v45);
  }

  return Unit;
}

void sub_1A698B13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19)
{
  a9 = &a13;
  std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__destroy_vector::operator()[abi:ne200100](&a9);
  a17 = &unk_1F19CCBB0;
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v19 + 8, a19);
  if (*(v20 - 81) < 0)
  {
    operator delete(*(v20 - 104));
  }

  _Unwind_Resume(a1);
}

void ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::Validate(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v77[0] = *MEMORY[0x1E69E9840];
  v4 = (a1 + 40);
  ZinUnitValidator::ValidateInput<ANECTensorDesc>(a1, *(a1 + 40), a1 + 56);
  if (ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateMinTensorSize(a1))
  {
    if (*(a1 + 200) <= 2 && *(a1 + 204) <= 2 && *(a1 + 208) < 3)
    {
      if (!ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::IsLargeKernelSize(a1) || IsDilatedConv<ANECConvLayerDesc>(*(a1 + 48)) || IsDeconv<ANECConvLayerDesc>(*(a1 + 48)) || *(a1 + 24))
      {
        if (IsDilatedConv<ANECConvLayerDesc>(*(a1 + 48)))
        {

          ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateDilatedConv(a1, a2);
        }

        else
        {
          ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateSteps(a1);
          ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateKernelFormat(a1);
          ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateKernelSize(a1);
          ZinUnitValidator::ValidatePadNonNegative<ZinIrPadding>(a1, (*(a1 + 48) + 92), (a1 + 212));
          ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidatePaddingMode(a1);
          ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateNumGroups(a1);
          ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateOutputChannel(a1);
          ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateKernelAndInputChannel(a1);
          ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateKernelAndOutputChannel(a1);
          ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateKernelQuantizationParameters(a1);
          ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidatePaletteVectorSize(a1);
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v51 = 0;
          v52 = 0;
          v53 = 0;
          a2[1] = 0;
          a2[2] = 0;
          *a2 = 0;
          v31 = a2;
          std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::reserve(&v54, 1uLL);
          std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::reserve(&v51, 1uLL);
          std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::reserve(a2, 1uLL);
          std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::push_back[abi:ne200100](&v54, a1);
          v13 = v52;
          v14 = v54;
          v30 = v55;
          if (v54 != v55)
          {
            do
            {
              v32 = v13;
              v34 = *(v14 + 80);
              v35 = *(v14 + 64);
              v15 = *(v14 + 96);
              v16 = *(v14 + 152);
              v33 = *(v14 + 212);
              v17 = *(v14 + 228);
              v19 = *(v14 + 240);
              v18 = *(v14 + 248);
              v20 = *(v14 + 256);
              v22 = *(a1 + 200);
              v21 = *(a1 + 204);
              v23 = *(a1 + 208);
              v49 = 0x100000001;
              v50 = 1;
              v47 = 0x100000001;
              v48 = 1;
              if (IsDeconv<ANECConvLayerDesc>(*(a1 + 48)))
              {
                LODWORD(v47) = v22;
                v25 = &v48;
                v24 = &v47 + 4;
              }

              else
              {
                LODWORD(v49) = v22;
                v25 = &v50;
                v24 = &v49 + 4;
              }

              *v24 = v21;
              *v25 = v23;
              v45 = *(a1 + 176);
              v46 = *(a1 + 192);
              v44[0] = v19;
              v44[1] = v18;
              v44[2] = v20;
              v42 = v33;
              v43 = v17;
              v40[1] = v34;
              v40[0] = v35;
              v41 = v15;
              ZinGetOutputTensorDimension(v40, &v45, &v49, &v47, &v42, v16, v44, v38);
              v59 = v38[0];
              v60 = v38[1];
              *&v61 = v39;
              a2 = v31;
              ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateOCGSize(v14, &v58, &v36);
              std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>*>,std::__wrap_iter<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>*>>(&v51, v32, v36, v37, 0x14C1BACF914C1BADLL * ((v37 - v36) >> 3));
              v13 = v52;
              v57 = &v36;
              std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__destroy_vector::operator()[abi:ne200100](&v57);
              v14 += 296;
            }

            while (v14 != v30);
            v13 = v52;
          }

          v26 = v51;
          if (v51 != v13)
          {
            v27 = a2[1];
            do
            {
              ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateKernelFootprint(v26, &v58);
              std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>*>,std::__wrap_iter<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>*>>(a2, v27, v58, v59, 0x14C1BACF914C1BADLL * ((v59 - v58) >> 3));
              v27 = a2[1];
              v28 = v58;
              v29 = v59;
              while (v28 != v29)
              {
                if (v28[3])
                {
                  ZinUnitValidator::AddErrors(a1, v28 + 1);
                }

                v28 += 37;
              }

              *&v40[0] = &v58;
              std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__destroy_vector::operator()[abi:ne200100](v40);
              v26 += 296;
            }

            while (v26 != v13);
          }

          v58 = &v51;
          std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__destroy_vector::operator()[abi:ne200100](&v58);
          v58 = &v54;
          std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__destroy_vector::operator()[abi:ne200100](&v58);
        }
      }

      else
      {

        ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateUnitWithLargeKernelSize(a1, a2);
      }
    }

    else
    {

      ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateUnitWithLargeKernelStrides(a1, a2);
    }
  }

  else
  {
    v58 = &unk_1F19CCBB0;
    std::set<__CFString const*>::set[abi:ne200100](&v59, a1 + 8);
    *(&v60 + 1) = *(a1 + 32);
    v5 = v4[15];
    v75 = v4[14];
    v76 = v5;
    v6 = v4[13];
    v73 = v4[12];
    v74 = v6;
    v7 = v4[9];
    v69 = v4[8];
    v70 = v7;
    v8 = v4[11];
    v71 = v4[10];
    v72 = v8;
    v9 = v4[5];
    v65 = v4[4];
    v66 = v9;
    v10 = v4[7];
    v67 = v4[6];
    v68 = v10;
    v11 = v4[1];
    v61 = *v4;
    v62 = v11;
    v12 = v4[3];
    v63 = v4[2];
    v58 = &unk_1F19F0A88;
    v64 = v12;
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__init_with_size[abi:ne200100]<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc> const*,ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc> const*>(a2, &v58, v77, 1uLL);
    v58 = &unk_1F19CCBB0;
    std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v59, *(&v59 + 1));
  }
}

void sub_1A698B754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, void **a57)
{
  a57 = a15;
  std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__destroy_vector::operator()[abi:ne200100](&a57);
  a57 = &a50;
  std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__destroy_vector::operator()[abi:ne200100](&a57);
  a57 = &a53;
  std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__destroy_vector::operator()[abi:ne200100](&a57);
  _Unwind_Resume(a1);
}

uint64_t ZinGetUnitAlternates<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>,ANECConvLayerDescAlternate>(uint64_t *a1, uint64_t *a2, void *a3, void *a4)
{
  result = ZinGetUnitErrors<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>(a1);
  *a3 = 0;
  *a4 = 0;
  if (result == 6)
  {
    v35 = a4;
    a2[1] = *a2;
    std::vector<ANECConvLayerDescAlternate>::reserve(a2, 0x14C1BACF914C1BADLL * ((a1[1] - *a1) >> 3));
    v9 = *a1;
    v10 = a1[1];
    if (*a1 != v10)
    {
      do
      {
        v37 = &unk_1F19CCBB0;
        std::set<__CFString const*>::set[abi:ne200100](v38, v9 + 8);
        v38[3] = *(v9 + 32);
        v37 = &unk_1F19F0A88;
        v11 = *(v9 + 56);
        v12 = *(v9 + 88);
        v13 = *(v9 + 40);
        v41 = *(v9 + 72);
        v42 = v12;
        v39 = v13;
        v40 = v11;
        v14 = *(v9 + 120);
        v15 = *(v9 + 152);
        v16 = *(v9 + 104);
        v45 = *(v9 + 136);
        v46 = v15;
        v43 = v16;
        v44 = v14;
        v17 = *(v9 + 184);
        v18 = *(v9 + 216);
        v19 = *(v9 + 168);
        v49 = *(v9 + 200);
        v50 = v18;
        v47 = v19;
        v48 = v17;
        v20 = *(v9 + 248);
        v21 = *(v9 + 280);
        v22 = *(v9 + 232);
        v53 = *(v9 + 264);
        v54 = v21;
        v51 = v22;
        v52 = v20;
        if (v38[2])
        {
          ZinGetUnitAlternate<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>,ANECConvLayerDescAlternate>(&v37, __src);
          v24 = a2[1];
          v23 = a2[2];
          if (v24 >= v23)
          {
            v26 = 0x4E25B9EFD4E25B9FLL * ((v24 - *a2) >> 3);
            v27 = v26 + 1;
            if ((v26 + 1) > 0x563B48C20563B4)
            {
              std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
            }

            v28 = 0x4E25B9EFD4E25B9FLL * ((v23 - *a2) >> 3);
            if (2 * v28 > v27)
            {
              v27 = 2 * v28;
            }

            if (v28 >= 0x2B1DA46102B1DALL)
            {
              v29 = 0x563B48C20563B4;
            }

            else
            {
              v29 = v27;
            }

            if (v29)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<ANECConvLayerDescAlternate>>(a2, v29);
            }

            v30 = 760 * v26;
            memcpy(v30, __src, 0x2F8uLL);
            v25 = v30 + 760;
            v31 = a2[1] - *a2;
            v32 = (v30 - v31);
            memcpy(v32, *a2, v31);
            v33 = *a2;
            *a2 = v32;
            a2[1] = v25;
            a2[2] = 0;
            if (v33)
            {
              operator delete(v33);
            }
          }

          else
          {
            memcpy(a2[1], __src, 0x2F8uLL);
            v25 = v24 + 760;
          }

          a2[1] = v25;
        }

        v37 = &unk_1F19CCBB0;
        std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v38, v38[1]);
        v9 += 296;
      }

      while (v9 != v10);
    }

    v34 = *a2;
    *a3 = 0x4E25B9EFD4E25B9FLL * ((a2[1] - *a2) >> 3);
    *v35 = v34;
    return 6;
  }

  return result;
}

void sub_1A698BAB0(_Unwind_Exception *a1)
{
  STACK[0x310] = v1;
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v2 + 8, STACK[0x320]);
  _Unwind_Resume(a1);
}

void ZinValidator::~ZinValidator(ZinValidator *this)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  while (v2 != v3)
  {
    CFRelease(*v2++);
  }

  v4 = *(this + 3780);
  if (v4)
  {
    *(this + 3781) = v4;
    operator delete(v4);
  }

  v5 = *(this + 3175);
  if (v5)
  {
    *(this + 3176) = v5;
    operator delete(v5);
  }

  v10 = (this + 17512);
  std::vector<std::vector<ZinIrOpLayer *>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v10 = (this + 16296);
  std::vector<std::vector<ZinIrOpLayer *>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v6 = *(this + 1875);
  if (v6)
  {
    *(this + 1876) = v6;
    operator delete(v6);
  }

  v7 = *(this + 392);
  if (v7)
  {
    *(this + 393) = v7;
    operator delete(v7);
  }

  v8 = *(this + 2);
  if (v8)
  {
    *(this + 3) = v8;
    operator delete(v8);
  }

  std::unique_ptr<ZinIrCompilerParameters>::reset[abi:ne200100](this + 1, 0);
  v9 = *this;
  *this = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }
}

__n128 ANECKernelSizeToZinIrKernelSize@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  return result;
}

double ANECPaddingToZinIrPadding@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

char *ZinValidator::AssignAlternate<ANECGOCLayerDescAlternate>(void *a1, void *__src)
{
  v4 = a1[3176];
  v5 = a1[3177];
  if (v4 >= v5)
  {
    v7 = a1[3175];
    v8 = 0x14C1BACF914C1BADLL * ((v4 - v7) >> 4);
    if ((v8 + 1) > 0x6EB3E45306EB3ELL)
    {
      std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0x14C1BACF914C1BADLL * ((v5 - v7) >> 4);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x3759F22983759FLL)
    {
      v11 = 0x6EB3E45306EB3ELL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ANECGOCLayerDescAlternate>>((a1 + 3175), v11);
    }

    v12 = 592 * v8;
    memcpy(v12, __src, 0x250uLL);
    v6 = v12 + 592;
    v13 = a1[3175];
    v14 = a1[3176] - v13;
    v15 = v12 - v14;
    memcpy((v12 - v14), v13, v14);
    v16 = a1[3175];
    a1[3175] = v15;
    a1[3176] = v12 + 592;
    a1[3177] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    memcpy(a1[3176], __src, 0x250uLL);
    v6 = v4 + 592;
  }

  a1[3176] = v6;
  return (v6 - 592);
}

char *ZinValidator::AssignAlternate<ANECDropoutLayerDescAlternate>(void *a1, void *__src)
{
  v4 = a1[3781];
  v5 = a1[3782];
  if (v4 >= v5)
  {
    v7 = a1[3780];
    v8 = 0x86BCA1AF286BCA1BLL * ((v4 - v7) >> 5);
    if (v8 + 1 > 0x6BCA1AF286BCA1)
    {
      std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0x86BCA1AF286BCA1BLL * ((v5 - v7) >> 5);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x35E50D79435E50)
    {
      v11 = 0x6BCA1AF286BCA1;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ANECDropoutLayerDescAlternate>>((a1 + 3780), v11);
    }

    v12 = 608 * v8;
    memcpy(v12, __src, 0x260uLL);
    v6 = v12 + 608;
    v13 = a1[3780];
    v14 = a1[3781] - v13;
    v15 = v12 - v14;
    memcpy((v12 - v14), v13, v14);
    v16 = a1[3780];
    a1[3780] = v15;
    a1[3781] = v12 + 608;
    a1[3782] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    memcpy(a1[3781], __src, 0x260uLL);
    v6 = v4 + 608;
  }

  a1[3781] = v6;
  return (v6 - 608);
}

void ANECTextureInfoToZin(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = (a1 + 8);
    do
    {
      v19 = 0;
      v6 = CFStringToZinIrCoordinate(*(v5 - 1), &v19 + 1);
      v7 = CFStringToZinIrSamplingGridMode(*v5, &v19);
      if (!v6 || !v7)
      {
        ZinAssertImpl("Invalid sampling grid mode");
      }

      v9 = *(a3 + 8);
      v8 = *(a3 + 16);
      if (v9 >= v8)
      {
        v11 = (v9 - *a3) >> 3;
        if ((v11 + 1) >> 61)
        {
          std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
        }

        v12 = v8 - *a3;
        v13 = v12 >> 2;
        if (v12 >> 2 <= (v11 + 1))
        {
          v13 = v11 + 1;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a3, v14);
        }

        v15 = (8 * v11);
        *v15 = HIDWORD(v19) | (v19 << 32);
        v10 = 8 * v11 + 8;
        v16 = *(a3 + 8) - *a3;
        v17 = v15 - v16;
        memcpy(v15 - v16, *a3, v16);
        v18 = *a3;
        *a3 = v17;
        *(a3 + 8) = v10;
        *(a3 + 16) = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v9 = HIDWORD(v19) | (v19 << 32);
        v10 = (v9 + 1);
      }

      *(a3 + 8) = v10;
      v5 += 2;
      --v4;
    }

    while (v4);
  }
}

{
  if (a2)
  {
    v4 = a2;
    v5 = (a1 + 8);
    do
    {
      v19 = 0;
      v6 = CFStringToZinIrCoordinate(*(v5 - 1), &v19 + 1);
      v7 = CFStringToZinIrSamplingMethod(*v5, &v19);
      if (!v6 || !v7)
      {
        ZinAssertImpl("Invalid sampling method information");
      }

      v9 = *(a3 + 8);
      v8 = *(a3 + 16);
      if (v9 >= v8)
      {
        v11 = (v9 - *a3) >> 3;
        if ((v11 + 1) >> 61)
        {
          std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
        }

        v12 = v8 - *a3;
        v13 = v12 >> 2;
        if (v12 >> 2 <= (v11 + 1))
        {
          v13 = v11 + 1;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a3, v14);
        }

        v15 = (8 * v11);
        *v15 = HIDWORD(v19) | (v19 << 32);
        v10 = 8 * v11 + 8;
        v16 = *(a3 + 8) - *a3;
        v17 = v15 - v16;
        memcpy(v15 - v16, *a3, v16);
        v18 = *a3;
        *a3 = v17;
        *(a3 + 8) = v10;
        *(a3 + 16) = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v9 = HIDWORD(v19) | (v19 << 32);
        v10 = (v9 + 1);
      }

      *(a3 + 8) = v10;
      v5 += 2;
      --v4;
    }

    while (v4);
  }
}

{
  if (a2)
  {
    v4 = a2;
    v5 = (a1 + 8);
    do
    {
      v19 = 0;
      v6 = CFStringToZinIrCoordinate(*(v5 - 1), &v19 + 1);
      v7 = CFStringToZinIrTEPaddingMode(*v5, &v19);
      if (!v6 || !v7)
      {
        ZinAssertImpl("Invalid padding information");
      }

      v9 = *(a3 + 8);
      v8 = *(a3 + 16);
      if (v9 >= v8)
      {
        v11 = (v9 - *a3) >> 3;
        if ((v11 + 1) >> 61)
        {
          std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
        }

        v12 = v8 - *a3;
        v13 = v12 >> 2;
        if (v12 >> 2 <= (v11 + 1))
        {
          v13 = v11 + 1;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a3, v14);
        }

        v15 = (8 * v11);
        *v15 = HIDWORD(v19) | (v19 << 32);
        v10 = 8 * v11 + 8;
        v16 = *(a3 + 8) - *a3;
        v17 = v15 - v16;
        memcpy(v15 - v16, *a3, v16);
        v18 = *a3;
        *a3 = v17;
        *(a3 + 8) = v10;
        *(a3 + 16) = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v9 = HIDWORD(v19) | (v19 << 32);
        v10 = (v9 + 1);
      }

      *(a3 + 8) = v10;
      v5 += 2;
      --v4;
    }

    while (v4);
  }
}

{
  if (a2)
  {
    v4 = a2;
    v5 = (a1 + 8);
    do
    {
      v19 = 0;
      v6 = CFStringToZinIrCoordinate(*(v5 - 1), &v19 + 1);
      v7 = CFStringToZinIrCoordinateType(*v5, &v19);
      if (!v6 || !v7)
      {
        ZinAssertImpl("Invalid coordinate type information");
      }

      v9 = *(a3 + 8);
      v8 = *(a3 + 16);
      if (v9 >= v8)
      {
        v11 = (v9 - *a3) >> 3;
        if ((v11 + 1) >> 61)
        {
          std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
        }

        v12 = v8 - *a3;
        v13 = v12 >> 2;
        if (v12 >> 2 <= (v11 + 1))
        {
          v13 = v11 + 1;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a3, v14);
        }

        v15 = (8 * v11);
        *v15 = HIDWORD(v19) | (v19 << 32);
        v10 = 8 * v11 + 8;
        v16 = *(a3 + 8) - *a3;
        v17 = v15 - v16;
        memcpy(v15 - v16, *a3, v16);
        v18 = *a3;
        *a3 = v17;
        *(a3 + 8) = v10;
        *(a3 + 16) = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v9 = HIDWORD(v19) | (v19 << 32);
        v10 = (v9 + 1);
      }

      *(a3 + 8) = v10;
      v5 += 2;
      --v4;
    }

    while (v4);
  }
}

void ANECTextureInfoToZin(uint64_t a1, uint64_t a2, const void **a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = (a1 + 16);
    do
    {
      v24 = 0;
      v23 = 0;
      v6 = CFStringToZinIrCoordinate(*(v5 - 2), &v24 + 1);
      v7 = CFStringToZinIrNormalizedCoordinateRange(*(v5 - 1), &v24);
      v8 = CFStringToZinIrCoordinateMode(*v5, &v23);
      v9 = !v6 || !v7;
      if (v9 || !v8)
      {
        ZinAssertImpl("Invalid coordinate type information");
      }

      v10 = v24;
      v11 = v23;
      v13 = a3[1];
      v12 = a3[2];
      if (v13 >= v12)
      {
        v15 = *a3;
        v16 = v13 - *a3;
        v17 = 0xAAAAAAAAAAAAAAABLL * (v16 >> 2) + 1;
        if (v17 > 0x1555555555555555)
        {
          std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
        }

        v18 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v15) >> 2);
        if (2 * v18 > v17)
        {
          v17 = 2 * v18;
        }

        if (v18 >= 0xAAAAAAAAAAAAAAALL)
        {
          v19 = 0x1555555555555555;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ANEDebugInfo::DebugInfoInMem::Layer>>(a3, v19);
        }

        v20 = (4 * (v16 >> 2));
        *v20 = HIDWORD(v24);
        v20[1] = v10;
        v20[2] = v11;
        v14 = v20 + 3;
        v21 = v20 - v16;
        memcpy(v20 - v16, v15, v16);
        v22 = *a3;
        *a3 = v21;
        a3[1] = v14;
        a3[2] = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v13 = HIDWORD(v24);
        *(v13 + 1) = v10;
        v14 = v13 + 12;
        *(v13 + 2) = v11;
      }

      a3[1] = v14;
      v5 += 3;
      --v4;
    }

    while (v4);
  }
}

uint64_t ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>::ZinConcatValidator(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F19CCBB0;
  std::set<__CFString const*>::set[abi:ne200100]((a1 + 8), a2 + 8);
  *(a1 + 32) = *(a2 + 32);
  *a1 = &unk_1F19F2520;
  v4 = *(a2 + 40);
  v5 = *(a2 + 56);
  v6 = *(a2 + 72);
  *(a1 + 80) = 0;
  *(a1 + 72) = v6;
  *(a1 + 56) = v5;
  *(a1 + 40) = v4;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<ANECTensorDesc>::__init_with_size[abi:ne200100]<ANECTensorDesc*,ANECTensorDesc*>((a1 + 80), *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 6);
  return a1;
}

void sub_1A698C870(_Unwind_Exception *a1)
{
  *v1 = v2;
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v1 + 8, *(v1 + 16));
  _Unwind_Resume(a1);
}

void ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>::~ZinConcatValidator(uint64_t a1)
{
  ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>::~ZinConcatValidator(a1);

  JUMPOUT(0x1AC55A070);
}

uint64_t *std::vector<ANECTensorDesc>::__init_with_size[abi:ne200100]<ANECTensorDesc*,ANECTensorDesc*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ANECTensorDesc>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A698C924(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ANECTensorDesc>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ANECTensorDesc>>(a1, a2);
  }

  std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::vector<ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>>::__init_with_size[abi:ne200100]<ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc> const*,ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc> const*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A698C9E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  std::vector<ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>>>(a1, a2);
  }

  std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>>,ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc> const*,ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc> const*,ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>::ZinConcatValidator(a4 + v7, v6);
      v6 += 104;
      v7 += 104;
    }

    while (v6 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1A698CB10(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>>,ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc> const*,ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc> const*,ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>*>(v1 + v2, v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 13;
      v7 = v4 - 13;
      v8 = v4 - 13;
      do
      {
        v9 = *v8;
        v8 -= 13;
        (*v9)(v7);
        v6 -= 13;
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

void std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__vdeallocate(void *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      v5 = v3 - 37;
      v6 = v3 - 37;
      do
      {
        (**v6)(v6);
        v5 -= 37;
        v7 = v6 == v1;
        v6 -= 37;
      }

      while (!v7);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ANECDropoutLayerDescAlternate>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x6BCA1AF286BCA2)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

ZinIrCompilerParameters *std::unique_ptr<ZinIrCompilerParameters>::reset[abi:ne200100](ZinIrCompilerParameters **a1, ZinIrCompilerParameters *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ZinIrCompilerParameters::~ZinIrCompilerParameters(result);

    JUMPOUT(0x1AC55A070);
  }

  return result;
}

uint64_t ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>::ZinConcatValidator(uint64_t a1, uint64_t a2, _OWORD *a3, __int128 *a4, unint64_t a5)
{
  *(a1 + 16) = 0;
  v6 = a1 + 16;
  *(a1 + 8) = a1 + 16;
  v7 = a1 + 8;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *(a1 + 80) = 0;
  v8 = a1 + 80;
  *a1 = &unk_1F19F2520;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 40) = a4;
  *(a1 + 48) = a5;
  *(a1 + 56) = a3;
  *(a1 + 64) = *a3;
  v11 = 0uLL;
  v12 = 0;
  std::vector<ANECTensorDesc>::__init_with_size[abi:ne200100]<ANECTensorDesc const*,ANECTensorDesc const*>(&v11, a4, &a4[4 * a5], a5);
  v9 = *v8;
  if (*v8)
  {
    *(a1 + 88) = v9;
    operator delete(v9);
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
  }

  *(a1 + 80) = v11;
  *(a1 + 96) = v12;
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v7, *(a1 + 16));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = v6;
  return a1;
}

void sub_1A698CE04(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 88) = v5;
    operator delete(v5);
  }

  *v1 = &unk_1F19CCBB0;
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v2, *(v1 + 16));
  _Unwind_Resume(a1);
}

uint64_t *std::vector<ANECTensorDesc>::__init_with_size[abi:ne200100]<ANECTensorDesc const*,ANECTensorDesc const*>(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ANECTensorDesc>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A698CEAC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>::~ZinConcatValidator(uint64_t a1)
{
  *a1 = &unk_1F19F2520;
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  *a1 = &unk_1F19CCBB0;
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(a1 + 8, *(a1 + 16));
  return a1;
}

uint64_t ZinGetUnitErrors<ZinConcatValidator<ANECConcatLayerDesc,ANECTensorDesc>>(uint64_t *a1)
{
  v1 = *a1;
  if (a1[1] - *a1 != 104)
  {
    return 6;
  }

  if (!*(v1 + 24))
  {
    return 0;
  }

  v4 = *(v1 + 16);
  v2 = v1 + 16;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 32);
    v7 = v6 >= @"UnsupportedUnit";
    v8 = v6 < @"UnsupportedUnit";
    if (v7)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * v8);
  }

  while (v3);
  if (v5 == v2 || *(v5 + 32) > @"UnsupportedUnit")
  {
LABEL_11:
    v5 = v2;
  }

  if (v5 == v2)
  {
    return 6;
  }

  else
  {
    return 7;
  }
}

void std::vector<ANECConcatLayerDescAlternate>::reserve(void *a1, unint64_t a2)
{
  if (0xF128CFC4A33F128DLL * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0x76B981DAE6076CLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ANECConcatLayerDescAlternate>>(a1, a2);
    }

    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }
}

const void **std::vector<std::vector<ANECTensorDesc>>::reserve(const void **result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<ZinPerfUtil::TaskStats>>>(result, a2);
    }

    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

BOOL ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateMinTensorSize(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 48);
  v3 = *(a1 + 40);
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = IsDeconv<ANECConvLayerDesc>(*(a1 + 48));
  v7 = v5 << v6;
  v8 = *v2;
  v9 = (v4 << v6) + (*v2)[25] + (*v2)[26];
  v10 = *(*v2 + 8);
  v11 = *v2;
  v12 = v9 >= v10;
  if (v9 < v10)
  {
    *v17 = @"InvalidKernelHeight";
    std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(a1 + 8, v17, v17);
    v13 = *(*(a1 + 40) + 24) + v8[25] + v8[26];
    *(a1 + 184) = v13;
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v11 = *(a1 + 48);
    if (v14)
    {
      v16 = *(v11 + 8);
      *v17 = 134218240;
      *&v17[4] = v13;
      v18 = 2048;
      v19 = v16;
      _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Conv padded input tensor height %ld is smaller than the kernel height %ld\n", v17, 0x16u);
      v11 = *v2;
    }
  }

  if (v7 + v8[23] + v8[24] < *(v11 + 7))
  {
    *v17 = @"InvalidKernelWidth";
    std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(a1 + 8, v17, v17);
    *(a1 + 176) = *(*(a1 + 40) + 32) + v8[23] + v8[24];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateMinTensorSize();
    }

    return 0;
  }

  return v12;
}

void ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateUnitWithLargeKernelStrides(uint64_t a1@<X0>, void *a2@<X8>)
{
  v156 = &unk_1F19CCBB0;
  std::set<__CFString const*>::set[abi:ne200100](v157, a1 + 8);
  v158 = *(a1 + 32);
  v156 = &unk_1F19F0A88;
  v4 = *(a1 + 280);
  v173 = *(a1 + 264);
  v174 = v4;
  v171 = *(a1 + 232);
  v172 = *(a1 + 248);
  v167 = *(a1 + 168);
  v168 = *(a1 + 184);
  v169 = *(a1 + 200);
  v170 = *(a1 + 216);
  v163 = *(a1 + 104);
  v164 = *(a1 + 120);
  v165 = *(a1 + 136);
  v166 = *(a1 + 152);
  v159 = *(a1 + 40);
  v160 = *(a1 + 56);
  v161 = *(a1 + 72);
  v162 = *(a1 + 88);
  v5 = *v158;
  v6 = *(a1 + 200);
  if (v6 < 3)
  {
    v7 = *(a1 + 204);
    if (v7 <= 2 && *(a1 + 208) <= 2)
    {
      ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::Validate(&v156, a2);
      goto LABEL_43;
    }

    v155 = a1;
    if (v6 < 1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v155 = a1;
    v7 = *(a1 + 204);
  }

  if (v7 < 1 || *(a1 + 208) <= 0)
  {
LABEL_10:
    ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateUnitWithLargeKernelStrides(void)::{lambda(ZinIrHalParameters const&)#1}::operator()(&v155, a2);
    goto LABEL_43;
  }

  memset(&v125[1], 0, 24);
  v126 = 0;
  v127 = 0u;
  v128 = 0u;
  v129 = -1;
  v130 = 0;
  v131 = -1;
  v132 = -1;
  v133 = -1;
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v134 = -1;
  v138 = 0;
  v139 = 1;
  v140 = 0;
  v141 = 0;
  v142 = -1;
  v143 = -1;
  v144 = -1;
  v145 = -1;
  v146 = 0x3F80000000000006;
  v147 = 0;
  v125[0] = &unk_1F1A33E10;
  v148 = 0;
  v149 = 0;
  *v150 = vdupq_n_s64(1uLL);
  *&v150[16] = *v150;
  *&v8 = 0x100000001;
  *(&v8 + 1) = 0x100000001;
  *v151 = v8;
  *&v151[16] = 0x100000001;
  v153 = 0;
  v152 = 0uLL;
  v154 = 1;
  ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::Desc2UnitInfo(a1, a1 + 120, v125);
  v124 = ANECFormatToZinTensorFormat(*(a1 + 56));
  DWORD2(v128) = v124;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v96 = 0u;
  v97 = 0u;
  v98 = 0;
  v90 = 0;
  v91 = 0;
  v99 = vdupq_n_s64(1uLL);
  v100 = v99;
  v101 = v99;
  v102 = v99;
  v103 = v99;
  v106 = 0;
  v105 = 0uLL;
  v107 = xmmword_1A759E250;
  v110 = 0;
  v111 = 1;
  v112 = 0;
  LOBYTE(v117) = 0;
  v123 = 0;
  v115 = 0;
  v116 = 0;
  v113 = 0;
  v114 = 0;
  *&v9 = 0x100000001;
  *(&v9 + 1) = 0x100000001;
  *v104 = v9;
  *&v104[16] = 0x100000001;
  if ((v148 - 5) >= 0xFFFFFFFE)
  {
    *&v104[12] = *&v151[12];
    *&v104[20] = *&v151[20];
  }

  else
  {
    *v104 = *&v151[12];
    *&v104[8] = *&v151[20];
  }

  v105 = v152;
  v106 = v153;
  LODWORD(v107) = v154;
  *(&v107 + 1) = *v151;
  v108 = *&v151[8];
  v109 = *v150;
  LOBYTE(v116) = (((v148 - 5) > 0xFFFFFFFD) << 6) | (v149 << 7);
  v100 = vextq_s8(*&v150[8], *&v150[8], 8uLL);
  v101.i64[0] = *&v150[24];
  v10 = *(a1 + 80);
  v87 = *(a1 + 64);
  v88 = v10;
  v89 = *(a1 + 96);
  memset(&v53[1], 0, 24);
  v54 = 0;
  v55 = 0u;
  v56 = 0u;
  v57 = -1;
  v58 = 0;
  v59 = -1;
  v60 = -1;
  v61 = -1;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = -1;
  v66 = 0;
  v67 = 1;
  v68 = 0;
  v69 = 0;
  v70 = -1;
  v71 = -1;
  v72 = -1;
  v73 = -1;
  v74 = 0x3F80000000000006;
  v75 = 0;
  v53[0] = &unk_1F1A33E10;
  v76 = 0;
  v77 = 0;
  v78 = vdupq_n_s64(1uLL);
  v79 = 1;
  v80 = 1;
  *&v11 = 0x100000001;
  *(&v11 + 1) = 0x100000001;
  v81 = v11;
  v82 = 0x100000001;
  v85 = 0;
  v83 = 0;
  v84 = 0;
  v86 = 1;
  if (IsDeconv<ANECConvLayerDesc>((a1 + 120)) && (*(a1 + 176) > ZinIrHalParameters::GetMaxSmallKernelWidth(v5, v124) && *(a1 + 200) > 2 || *(a1 + 184) > *(v5 + 104) && *(a1 + 204) > 2 || *(a1 + 192) > *(v5 + 120) && *(a1 + 208) >= 3))
  {
    ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateUnitWithLargeKernelStrides(void)::{lambda(ZinIrHalParameters const&)#1}::operator()(&v155, a2);
  }

  else
  {
    v12 = IsDeconv<ANECConvLayerDesc>((a1 + 120));
    v13 = *(a1 + 152);
    v14 = *(a1 + 32);
    if (v12)
    {
      KernelFormat = ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::GetKernelFormat(a1);
      v16 = ValidateLargeKernelStridesForDeconv(v125, &v90, &v124, &v87, v13, v14, KernelFormat, *(a1 + 112), *(a1 + 113), *(a1 + 104), 1, v53);
    }

    else
    {
      v17 = ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::GetKernelFormat(a1);
      v16 = ValidateLargeKernelStridesForConv(v125, &v90, &v124, &v87, v13, v14, v17, *(a1 + 112), *(a1 + 113), *(a1 + 104), 1, v53);
    }

    if (v16)
    {
      memset(v52, 0, sizeof(v52));
      v41 = vdupq_n_s64(1uLL);
      v42 = 1;
      *&v18 = 0x100000001;
      *(&v18 + 1) = 0x100000001;
      v43 = v18;
      v44 = 0x100000001;
      v45 = 0;
      v46 = 0;
      v48 = v18;
      v47 = 0;
      v49 = 1;
      v50 = 0;
      v51 = 0;
      ZinIrConvUnit::CreateConvInfo(v53, &v41);
      ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::SetConvDesc(a1, &v41, v124, v40, v76);
      v19 = *(a1 + 72);
      *v38 = *(a1 + 56);
      *&v38[16] = v19;
      v39 = *(a1 + 104);
      *&v38[8] = v87;
      *&v38[24] = v88;
      *&v38[40] = v89;
      v22[2] = *(a1 + 32);
      v22[3] = v38;
      v22[4] = v40;
      v23 = *v38;
      v24 = *&v38[16];
      v25 = *&v38[32];
      v26 = v39;
      v36 = v40[9];
      v37 = v40[10];
      v27 = v40[0];
      v28 = v40[1];
      v29 = v40[2];
      v33 = v40[6];
      v32 = v40[5];
      v31 = v40[4];
      v30 = v40[3];
      v35 = v40[8];
      v34 = v40[7];
      v20 = &unk_1F19F0A88;
      v21 = v22;
      v22[0] = 0;
      v22[1] = 0;
      ZinUnitValidator::AddErrors(&v20, (a1 + 8));
      ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::Validate(&v20, a2);
      v20 = &unk_1F19CCBB0;
      std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v21, v22[0]);
      v20 = v52;
      std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__destroy_vector::operator()[abi:ne200100](&v20);
    }

    else
    {
      ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateUnitWithLargeKernelStrides(void)::{lambda(ZinIrHalParameters const&)#1}::operator()(&v155, a2);
    }
  }

  v53[0] = &unk_1F1A2EAA0;
  if (v65)
  {
    *(&v65 + 1) = v65;
    operator delete(v65);
  }

  if (*(&v63 + 1))
  {
    *&v64 = *(&v63 + 1);
    operator delete(*(&v63 + 1));
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(v53);
  if (v123 == 1)
  {
    if (v121)
    {
      v122 = v121;
      operator delete(v121);
    }

    if (v119)
    {
      v120 = v119;
      operator delete(v119);
    }

    if (v117)
    {
      v118 = v117;
      operator delete(v117);
    }
  }

  v125[0] = &unk_1F1A2EAA0;
  if (v137)
  {
    *(&v137 + 1) = v137;
    operator delete(v137);
  }

  if (*(&v135 + 1))
  {
    *&v136 = *(&v135 + 1);
    operator delete(*(&v135 + 1));
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(v125);
LABEL_43:
  v156 = &unk_1F19CCBB0;
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v157, v157[1]);
}

void sub_1A698DB4C(_Unwind_Exception *a1)
{
  ZinIrConvUnitInfo::~ZinIrConvUnitInfo(&STACK[0x2C0]);
  ZinKernelDescriptor::~ZinKernelDescriptor(&STACK[0x438]);
  ZinIrConvUnitInfo::~ZinIrConvUnitInfo(&STACK[0x5B0]);
  STACK[0x708] = v1;
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v2 + 8, STACK[0x718]);
  _Unwind_Resume(a1);
}

BOOL ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::IsLargeKernelSize(uint64_t a1)
{
  v2 = **(a1 + 32);
  v3 = ANECFormatToZinTensorFormat(**(a1 + 40));
  MaxLogicalKernelWidthForLargeKernelMode = GetMaxLogicalKernelWidthForLargeKernelMode(v2, v3);
  MaxLogicalKernelHeightForLargeKernelMode = GetMaxLogicalKernelHeightForLargeKernelMode(v2);
  return *(a1 + 176) > MaxLogicalKernelWidthForLargeKernelMode || *(a1 + 184) > MaxLogicalKernelHeightForLargeKernelMode;
}

void ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateUnitWithLargeKernelSize(uint64_t a1@<X0>, void *a2@<X8>)
{
  v211 = &unk_1F19CCBB0;
  std::set<__CFString const*>::set[abi:ne200100](v212, a1 + 8);
  v213 = *(a1 + 32);
  v211 = &unk_1F19F0A88;
  v4 = *(a1 + 280);
  v228 = *(a1 + 264);
  v229 = v4;
  v226 = *(a1 + 232);
  v227 = *(a1 + 248);
  v222 = *(a1 + 168);
  v223 = *(a1 + 184);
  v224 = *(a1 + 200);
  v225 = *(a1 + 216);
  v218 = *(a1 + 104);
  v219 = *(a1 + 120);
  v220 = *(a1 + 136);
  v221 = *(a1 + 152);
  v214 = *(a1 + 40);
  v215 = *(a1 + 56);
  v216 = *(a1 + 72);
  v217 = *(a1 + 88);
  v44 = *v213;
  if (ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::IsLargeKernelSize(a1))
  {
    memset(&v177[1], 0, 24);
    v178 = 0;
    v179 = 0u;
    v180 = 0u;
    v181 = -1;
    v182 = 0;
    v183 = -1;
    v184 = -1;
    v185 = -1;
    v187 = 0u;
    v188 = 0u;
    v189 = 0u;
    v186 = -1;
    v190 = 0;
    v191 = 1;
    v192 = 0;
    v193 = 0;
    v194 = -1;
    v195 = -1;
    v196 = -1;
    v197 = -1;
    v198 = 0x3F80000000000006;
    v199 = 0;
    v177[0] = &unk_1F1A33E10;
    v200 = 0;
    v201 = 0;
    v202 = vdupq_n_s64(1uLL);
    v203 = 1;
    v204 = 1;
    *&v5 = 0x100000001;
    *(&v5 + 1) = 0x100000001;
    v205 = v5;
    v206 = 0x100000001;
    v209 = 0;
    v207 = 0;
    v208 = 0;
    v210 = 1;
    ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::Desc2UnitInfo(a1, a1 + 120, v177);
    v6 = ANECFormatToZinTensorFormat(*(a1 + 56));
    DWORD2(v180) = v6;
    v168 = vdupq_n_s64(1uLL);
    v169 = 1;
    *&v7 = 0x100000001;
    *(&v7 + 1) = 0x100000001;
    v170 = v7;
    v171 = 0x100000001;
    memset(v172, 0, sizeof(v172));
    v173 = v7;
    v174 = 1;
    v175 = 0;
    v176 = 0;
    ZinIrConvUnit::CreateConvInfo(v177, &v168);
    v8 = *(a1 + 80);
    v166[0] = *(a1 + 64);
    v166[1] = v8;
    v167 = *(a1 + 96);
    v164 = 0x100000001;
    v165 = 1;
    v153 = vdupq_n_s64(1uLL);
    v154 = 1;
    *&v9 = 0x100000001;
    *(&v9 + 1) = 0x100000001;
    v155 = v9;
    v156 = 0x100000001;
    v157 = 0;
    v158 = 0;
    v160 = v9;
    v159 = 0;
    v161 = 1;
    v162 = 0;
    v163 = 0;
    v152[1] = 0;
    v152[0] = 0;
    v151 = v152;
    v150[1] = 0;
    v150[0] = 0;
    v149 = v150;
    ZinGetOutputTensorDimension(v166, &v168, &v170, &v170 + 3, v172, *(a1 + 152), &v173, v148);
    v43 = a2;
    if (!ZinLargeKernelSizeUtils::DecomposeLargeKernelConvDesc(v166, v148, &v168, v6, v44, &v164, &v153, &v151, &v149))
    {
      goto LABEL_52;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "unshuffle");
    v10 = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(&v151, __p.i8);
    if (SHIBYTE(v60) < 0)
    {
      operator delete(__p.i64[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "shuffle");
    v41 = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(&v151, __p.i8);
    if (SHIBYTE(v60) < 0)
    {
      operator delete(__p.i64[0]);
    }

    v138 = 0;
    v139 = 0;
    v140 = 0;
    v141 = 0;
    v142 = 0;
    v145 = 0;
    v143 = 0;
    v144 = 0;
    v136 = 0u;
    memset(v137, 0, 27);
    v146 = 5;
    v147 = 0;
    v125 = 0;
    v126 = 0;
    v127 = 0;
    v128 = 0;
    v129 = 0;
    v132 = 0;
    v130 = 0;
    v131 = 0;
    v123 = 0;
    v124 = 0;
    v133 = 5;
    v134 = 0;
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v113 = 0;
    v116 = 0;
    v114 = 0;
    v115 = 0;
    v107 = 0u;
    memset(v108, 0, 27);
    v117 = 5;
    v118 = 0;
    v96 = 0;
    v97 = 0;
    v98 = 0;
    v99 = 0;
    v100 = 0;
    v103 = 0;
    v101 = 0;
    v102 = 0;
    v94 = 0u;
    memset(v95, 0, 27);
    v104 = 5;
    v105 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v90 = 0;
    v88 = 0;
    v89 = 0;
    v81 = 0u;
    memset(v82, 0, 27);
    v91 = 5;
    v92 = 0;
    LODWORD(p_p) = v6;
    v119 = v6;
    v106 = v6;
    v93 = v6;
    v80 = v6;
    v11 = *(a1 + 96);
    v12 = *(a1 + 80);
    v120 = *(a1 + 64);
    v121 = v12;
    v122 = v11;
    std::string::basic_string[abi:ne200100]<0>(&__p, "pad");
    v13 = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(&v151, __p.i8);
    if (SHIBYTE(v60) < 0)
    {
      operator delete(__p.i64[0]);
    }

    if (v152 == v13)
    {
      v19 = 1;
    }

    else
    {
      v14 = *(a1 + 96);
      v15 = *(a1 + 80);
      v136 = *(a1 + 64);
      v137[0] = v15;
      *&v137[1] = v14;
      std::string::basic_string[abi:ne200100]<0>(&__p, "pad");
      *&v48 = &__p;
      v16 = std::__tree<std::__value_type<std::string,ZinTensorDimensions>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinTensorDimensions>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinTensorDimensions>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v149, &__p, &std::piecewise_construct, &v48);
      if (SHIBYTE(v60) < 0)
      {
        operator delete(__p.i64[0]);
      }

      v17 = *(v16 + 88);
      v18 = *(v16 + 72);
      v120 = *(v16 + 56);
      v121 = v18;
      v122 = v17;
      ZinPadValidator<ZinIrPadUnitInfo,ZinIrTensorInfo>::ZinPadValidator(&__p, *(a1 + 32), (v13 + 8), &p_p);
      ZinPadValidator<ZinIrPadUnitInfo,ZinIrTensorInfo>::Validate(&__p);
      v19 = v61 == 0;
      ZinPadValidator<ZinIrPadUnitInfo,ZinIrTensorInfo>::~ZinPadValidator(&__p);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "conv");
    *&v48 = &__p;
    v20 = std::__tree<std::__value_type<std::string,ZinTensorDimensions>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinTensorDimensions>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinTensorDimensions>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v149, &__p, &std::piecewise_construct, &v48);
    if (SHIBYTE(v60) < 0)
    {
      operator delete(__p.i64[0]);
    }

    v21 = *(v20 + 88);
    v107 = *(v20 + 56);
    v108[0] = *(v20 + 72);
    *&v108[1] = v21;
    ZinPixelUnshuffleValidator<ZinIrPixelUnshuffleUnitInfo,ZinIrTensorInfo>::ZinPixelUnshuffleValidator(&v48, *(a1 + 32), v10 + 64, &v119);
    ZinPixelShuffleValidator<ZinIrPixelShuffleUnitInfo,ZinIrTensorInfo>::ZinPixelShuffleValidator(v46, *(a1 + 32), v41 + 64, &v106);
    ZinPixelUnshuffleValidator<ZinIrPixelShuffleUnitInfo,ZinIrTensorInfo>::Validate(&v48);
    ZinPixelShuffleValidator<ZinIrPixelShuffleUnitInfo,ZinIrTensorInfo>::Validate(v46);
    if (*&v46[24] | *(&v49 + 1))
    {
      v22 = 0;
    }

    else
    {
      v22 = v19;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "shuffle");
    v230[0] = &__p;
    v23 = std::__tree<std::__value_type<std::string,ZinTensorDimensions>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinTensorDimensions>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinTensorDimensions>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v149, &__p, &std::piecewise_construct, v230);
    if (SHIBYTE(v60) < 0)
    {
      operator delete(__p.i64[0]);
    }

    v24 = *(v23 + 88);
    v81 = *(v23 + 56);
    v82[0] = *(v23 + 72);
    *&v82[1] = v24;
    std::string::basic_string[abi:ne200100]<0>(&__p, "view_h");
    v25 = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(&v151, __p.i8);
    if (SHIBYTE(v60) < 0)
    {
      operator delete(__p.i64[0]);
    }

    if (v152 != v25)
    {
      v26 = *(v23 + 88);
      v27 = *(v23 + 72);
      v94 = *(v23 + 56);
      v95[0] = v27;
      *&v95[1] = v26;
      ZinInputViewValidator<ZinIrInputViewUnitInfo,ZinIrTensorInfo>::ZinInputViewValidator(&__p, *(a1 + 32), (v25 + 8), &v93);
      ZinInputViewValidator<ZinIrInputViewUnitInfo,ZinIrTensorInfo>::Validate(&__p);
      if (v61)
      {
        v22 = 0;
      }

      ZinInputViewValidator<ZinIrInputViewUnitInfo,ZinIrTensorInfo>::~ZinInputViewValidator(&__p);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "view_w");
    v28 = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(&v151, __p.i8);
    if (SHIBYTE(v60) < 0)
    {
      operator delete(__p.i64[0]);
    }

    if (v152 != v28)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "view_h");
      v230[0] = &__p;
      v29 = std::__tree<std::__value_type<std::string,ZinTensorDimensions>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinTensorDimensions>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinTensorDimensions>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v149, &__p, &std::piecewise_construct, v230);
      if (SHIBYTE(v60) < 0)
      {
        operator delete(__p.i64[0]);
      }

      v30 = *(v29 + 88);
      v81 = *(v29 + 56);
      v82[0] = *(v29 + 72);
      *&v82[1] = v30;
      ZinInputViewValidator<ZinIrInputViewUnitInfo,ZinIrTensorInfo>::ZinInputViewValidator(&__p, *(a1 + 32), (v28 + 8), &v80);
      ZinInputViewValidator<ZinIrInputViewUnitInfo,ZinIrTensorInfo>::Validate(&__p);
      if (v61)
      {
        v22 = 0;
      }

      ZinInputViewValidator<ZinIrInputViewUnitInfo,ZinIrTensorInfo>::~ZinInputViewValidator(&__p);
    }

    ZinPixelShuffleValidator<ZinIrPixelShuffleUnitInfo,ZinIrTensorInfo>::~ZinPixelShuffleValidator(v46);
    ZinPixelUnshuffleValidator<ZinIrPixelUnshuffleUnitInfo,ZinIrTensorInfo>::~ZinPixelUnshuffleValidator(&v48);
    if (v88)
    {
      v89 = v88;
      operator delete(v88);
    }

    if (v101)
    {
      v102 = v101;
      operator delete(v101);
    }

    if (v114)
    {
      v115 = v114;
      operator delete(v114);
    }

    if (v130)
    {
      v131 = v130;
      operator delete(v130);
    }

    if (v143)
    {
      v144 = v143;
      operator delete(v143);
    }

    if (v22)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "conv");
      v31 = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(&v151, __p.i8);
      if (SHIBYTE(v60) < 0)
      {
        operator delete(__p.i64[0]);
      }

      ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::SetConvDesc(a1, &v153, v6, &v48, *(v31 + 304));
      v32 = *(a1 + 72);
      *v46 = *(a1 + 56);
      *&v46[16] = v32;
      v33 = *(a1 + 104);
      *&v46[32] = *(a1 + 88);
      v47 = v33;
      std::string::basic_string[abi:ne200100]<0>(&__p, "unshuffle");
      p_p = &__p;
      v34 = std::__tree<std::__value_type<std::string,ZinTensorDimensions>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinTensorDimensions>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinTensorDimensions>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v149, &__p, &std::piecewise_construct, &p_p);
      v35 = *(v34 + 56);
      v36 = *(v34 + 72);
      v37 = *(v34 + 88);
      if (SHIBYTE(v60) < 0)
      {
        v45 = *(v34 + 56);
        v42 = *(v34 + 72);
        operator delete(__p.i64[0]);
        v36 = v42;
        v35 = v45;
      }

      *&v46[8] = v35;
      *&v46[24] = v36;
      *&v46[40] = v37;
      v62 = *(a1 + 32);
      v63 = v46;
      v64 = &v48;
      v65 = *v46;
      v66 = *&v46[16];
      v67 = *&v46[32];
      v68 = v47;
      v78 = v57;
      v79 = v58;
      v69 = v48;
      v70 = v49;
      v71 = v50;
      v75 = v54;
      v74 = v53;
      v73 = v52;
      v72 = v51;
      v77 = v56;
      v76 = v55;
      __p.i64[0] = &unk_1F19F0A88;
      __p.i64[1] = &v60;
      v61 = 0;
      v60 = 0;
      ZinUnitValidator::AddErrors(&__p, (a1 + 8));
      ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::Validate(&__p, v43);
      __p.i64[0] = &unk_1F19CCBB0;
      std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&__p.i64[1], v60);
    }

    else
    {
LABEL_52:
      v38 = ANECFormatToZinTensorFormat(**(a1 + 40));
      MaxLogicalKernelWidthForLargeKernelMode = GetMaxLogicalKernelWidthForLargeKernelMode(v44, v38);
      MaxLogicalKernelHeightForLargeKernelMode = GetMaxLogicalKernelHeightForLargeKernelMode(v44);
      if (*(a1 + 176) > MaxLogicalKernelWidthForLargeKernelMode)
      {
        __p.i64[0] = @"InvalidKernelWidth";
        std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(a1 + 8, &__p, &__p);
      }

      if (*(a1 + 184) > MaxLogicalKernelHeightForLargeKernelMode)
      {
        __p.i64[0] = @"InvalidKernelHeight";
        std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(a1 + 8, &__p, &__p);
      }

      if (!*(a1 + 24))
      {
        __p.i64[0] = @"InvalidKernelDimensions";
        std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(a1 + 8, &__p, &__p);
      }

      ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::Validate(a1, v43);
    }

    std::__tree<std::string>::destroy(&v149, v150[0]);
    std::__tree<std::__value_type<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>>>::destroy(&v151, v152[0]);
    v177[0] = &unk_1F1A2EAA0;
    if (v189)
    {
      *(&v189 + 1) = v189;
      operator delete(v189);
    }

    if (*(&v187 + 1))
    {
      *&v188 = *(&v187 + 1);
      operator delete(*(&v187 + 1));
    }

    ZinIrUnitInfo::~ZinIrUnitInfo(v177);
  }

  else
  {
    ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::Validate(&v211, a2);
  }

  v211 = &unk_1F19CCBB0;
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v212, v212[1]);
}

void sub_1A698E7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  if (SLOBYTE(STACK[0x29F]) < 0)
  {
    operator delete(STACK[0x288]);
  }

  std::__tree<std::string>::destroy(&STACK[0x860], STACK[0x868]);
  std::__tree<std::__value_type<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc>>>::destroy(&STACK[0x878], STACK[0x880]);
  ZinIrConvUnitInfo::~ZinIrConvUnitInfo(&STACK[0x9A8]);
  STACK[0xAF8] = a14;
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v14 + 8, STACK[0xB08]);
  _Unwind_Resume(a1);
}

void ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateDilatedConv(uint64_t a1@<X0>, void *a2@<X8>)
{
  v213 = *MEMORY[0x1E69E9840];
  v3 = **(a1 + 32);
  if (*(*(a1 + 48) + 116) == 1)
  {
    *(a1 + 236) = 0;
    v182.i64[0] = @"InvalidKernelMode";
    std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(a1 + 8, &v182, &v182);
  }

  ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateKernelDilationFactor(a1);
  v67 = (a1 + 56);
  v4 = ANECFormatToZinTensorFormat(*(a1 + 56));
  v172 = vdupq_n_s64(1uLL);
  v173 = 1;
  *&v5 = 0x100000001;
  *(&v5 + 1) = 0x100000001;
  v174 = v5;
  v175 = 0x100000001;
  memset(v176, 0, sizeof(v176));
  v177 = v5;
  v178 = 1;
  v179 = 0;
  v180 = 0;
  memset(&v138[1], 0, 24);
  v139 = 0;
  v140 = 0u;
  v141 = 0u;
  v142 = -1;
  v143 = 0;
  v144 = -1;
  v145 = -1;
  v146 = -1;
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v147 = -1;
  v151 = 0;
  v152 = 1;
  v153 = 0;
  v154 = 0;
  v155 = -1;
  v156 = -1;
  v157 = -1;
  v158 = -1;
  v159 = 0x3F80000000000006;
  v160 = 0;
  v138[0] = &unk_1F1A33E10;
  v161 = 0;
  v162 = 0;
  v163 = v172;
  v164 = 1;
  v165 = 1;
  v166 = v5;
  v167 = 0x100000001;
  v170 = 0;
  v168 = 0;
  v169 = 0;
  v171 = 1;
  ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::Desc2UnitInfo(a1, a1 + 120, v138);
  DWORD2(v141) = v4;
  ZinIrConvUnit::CreateConvInfo(v138, &v172);
  v6 = *(a1 + 80);
  v136[0] = *(a1 + 64);
  v136[1] = v6;
  v137 = *(a1 + 96);
  ZinGetOutputTensorDimension(v136, &v172, &v174, &v174 + 3, v176, *(a1 + 152), &v177, v135);
  v133 = 0;
  v132 = 0;
  v134 = 0;
  v130 = 0;
  v129 = 0;
  v131 = 0;
  ANECFormatToZinTensorFormat(**(a1 + 40));
  ZinMirDilatedConv::DecomposeDilationFactorX(v3, *(*(a1 + 48) + 120), &v124);
  if (v126 == v125 || (v7 = (v125 + 8 * (v127 >> 10)), v8 = *v7, v9 = &(*v7)[4 * (v127 & 0x3FF)], v10 = *(v125 + (((v128 + v127) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v128 + v127) & 0x3FF), v9 == v10))
  {
    v11 = 1;
  }

  else
  {
    v11 = 1;
    do
    {
      v13 = *v9;
      v9 += 4;
      v12 = v13;
      if (v9 - v8 == 4096)
      {
        v14 = v7[1];
        ++v7;
        v8 = v14;
        v9 = v14;
      }

      v11 *= v12;
    }

    while (v9 != v10);
  }

  v182.i64[0] = __PAIR64__(DWORD1(v177), v11);
  v182.i32[2] = 1;
  v123 = 0;
  v121 = 0;
  v122 = 0;
  std::vector<ZinIrDims3D>::__init_with_size[abi:ne200100]<ZinIrDims3D const*,ZinIrDims3D const*>(&v121, v182.i64, (&v182.i64[1] + 4), 1uLL);
  KernelFormat = ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::GetKernelFormat(a1);
  v64 = (a1 + 120);
  if (ZinMirDilatedConv::DecomposeDilatedConv(v136, v135, v4, v172.i32, KernelFormat, *(a1 + 32), &v121, &v129, &v132) || (v25 = v132, v133 == v132))
  {
    v16 = 0;
    goto LABEL_13;
  }

  v26 = 0;
  v27 = 0;
  v28 = 0;
  v65 = 0;
  v29 = 1;
  do
  {
    ZinMirDilatedConv::DilatedConvDecomposedDesc::DilatedConvDecomposedDesc(&v202, (v25 + v26));
    if (v202 > 33)
    {
      switch(v202)
      {
        case '""':
          v68[56] = 0;
          v68[64] = 0;
          LOBYTE(v69) = 0;
          BYTE4(v70) = 0;
          BYTE8(v70) = 0;
          *&v72 = 0;
          v71 = 0uLL;
          memset(&v68[8], 0, 43);
          DWORD2(v72) = 5;
          BYTE12(v72) = 0;
          *v68 = v4;
          v36 = *(v129 + v27 + 32);
          v37 = *(v129 + v27 + 16);
          *&v68[8] = *(v129 + v27);
          *&v68[24] = v37;
          *&v68[40] = v36;
          if (v27)
          {
            v68[50] = 0;
            v38 = 1;
          }

          else
          {
            v68[48] = *(a1 + 112);
            v68[50] = *(a1 + 113);
            v38 = *(a1 + 104);
          }

          v68[64] = 1;
          *&v68[56] = v38;
          ZinSpaceToBatchValidator<ZinIrSpaceToBatchUnitInfo,ZinIrTensorInfo>::ZinSpaceToBatchValidator(&v182, *(a1 + 32), &v202 + 8, v68);
          ZinSpaceToBatchValidator<ZinIrSpaceToBatchUnitInfo,ZinIrTensorInfo>::Validate(&v182);
          v45 = v184 == 0;
          ZinSpaceToBatchValidator<ZinIrSpaceToBatchUnitInfo,ZinIrTensorInfo>::~ZinSpaceToBatchValidator(&v182);
          break;
        case '#':
          v68[56] = 0;
          v68[64] = 0;
          LOBYTE(v69) = 0;
          BYTE4(v70) = 0;
          BYTE8(v70) = 0;
          *&v72 = 0;
          v71 = 0uLL;
          memset(&v68[8], 0, 43);
          DWORD2(v72) = 5;
          BYTE12(v72) = 0;
          *v68 = v4;
          v39 = *(v129 + v27 + 32);
          v40 = *(v129 + v27 + 16);
          *&v68[8] = *(v129 + v27);
          *&v68[24] = v40;
          *&v68[40] = v39;
          if (v27)
          {
            v68[50] = 0;
            v41 = 1;
          }

          else
          {
            v68[48] = *(a1 + 112);
            v68[50] = *(a1 + 113);
            v41 = *(a1 + 104);
          }

          v68[64] = 1;
          *&v68[56] = v41;
          ZinBatchToSpaceValidator<ZinIrBatchToSpaceUnitInfo,ZinIrTensorInfo>::ZinBatchToSpaceValidator(&v182, *(a1 + 32), &v202 + 8, v68);
          ZinBatchToSpaceValidator<ZinIrBatchToSpaceUnitInfo,ZinIrTensorInfo>::Validate(&v182);
          v45 = v184 == 0;
          ZinBatchToSpaceValidator<ZinIrBatchToSpaceUnitInfo,ZinIrTensorInfo>::~ZinBatchToSpaceValidator(&v182);
          break;
        case ',':
          v68[56] = 0;
          v68[64] = 0;
          LOBYTE(v69) = 0;
          BYTE4(v70) = 0;
          BYTE8(v70) = 0;
          *&v72 = 0;
          v71 = 0uLL;
          memset(&v68[8], 0, 43);
          DWORD2(v72) = 5;
          BYTE12(v72) = 0;
          *v68 = v4;
          v30 = *(v129 + v27 + 32);
          v31 = *(v129 + v27 + 16);
          *&v68[8] = *(v129 + v27);
          *&v68[24] = v31;
          *&v68[40] = v30;
          if (v27)
          {
            v68[50] = 0;
            v32 = 1;
          }

          else
          {
            v68[48] = *(a1 + 112);
            v68[50] = *(a1 + 113);
            v32 = *(a1 + 104);
          }

          v68[64] = 1;
          *&v68[56] = v32;
          ZinPadValidator<ZinIrPadUnitInfo,ZinIrTensorInfo>::ZinPadValidator(&v182, *(a1 + 32), &v202 + 8, v68);
          ZinPadValidator<ZinIrPadUnitInfo,ZinIrTensorInfo>::Validate(&v182);
          v45 = v184 == 0;
          ZinPadValidator<ZinIrPadUnitInfo,ZinIrTensorInfo>::~ZinPadValidator(&v182);
          break;
        default:
          goto LABEL_54;
      }

LABEL_51:
      if (v71)
      {
        *(&v71 + 1) = v71;
        operator delete(v71);
      }

      v29 &= v45;
      goto LABEL_54;
    }

    if (v202 != 1)
    {
      if (v202 != 17)
      {
        goto LABEL_54;
      }

      v68[56] = 0;
      v68[64] = 0;
      LOBYTE(v69) = 0;
      BYTE4(v70) = 0;
      BYTE8(v70) = 0;
      *&v72 = 0;
      v71 = 0uLL;
      memset(&v68[8], 0, 43);
      DWORD2(v72) = 5;
      BYTE12(v72) = 0;
      *v68 = v4;
      v33 = *(v129 + v27 + 32);
      v34 = *(v129 + v27 + 16);
      *&v68[8] = *(v129 + v27);
      *&v68[24] = v34;
      *&v68[40] = v33;
      if (v27)
      {
        v68[50] = 0;
        v35 = 1;
      }

      else
      {
        v68[48] = *(a1 + 112);
        v68[50] = *(a1 + 113);
        v35 = *(a1 + 104);
      }

      v68[64] = 1;
      *&v68[56] = v35;
      ZinInputViewValidator<ZinIrInputViewUnitInfo,ZinIrTensorInfo>::ZinInputViewValidator(&v182, *(a1 + 32), &v202 + 8, v68);
      ZinInputViewValidator<ZinIrInputViewUnitInfo,ZinIrTensorInfo>::Validate(&v182);
      v45 = v184 == 0;
      ZinInputViewValidator<ZinIrInputViewUnitInfo,ZinIrTensorInfo>::~ZinInputViewValidator(&v182);
      goto LABEL_51;
    }

    LOBYTE(v111) = 0;
    v112 = 0;
    v113 = 0;
    v114 = 0;
    v115 = 0;
    v117 = 0;
    v118 = 0;
    __p = 0;
    v109 = 0u;
    memset(v110, 0, 27);
    v119 = 5;
    v120 = 0;
    v108 = v4;
    v42 = *(v129 + v27 + 32);
    v43 = *(v129 + v27 + 16);
    v109 = *(v129 + v27);
    v110[0] = v43;
    *&v110[1] = v42;
    if (v27)
    {
      BYTE10(v110[1]) = 0;
      v44 = 1;
    }

    else
    {
      BYTE8(v110[1]) = *(a1 + 112);
      BYTE10(v110[1]) = *(a1 + 113);
      v44 = *(a1 + 104);
    }

    v112 = 1;
    v111 = v44;
    ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>::ZinConvValidator(&v182, *(a1 + 32), &v202 + 8, &v108);
    ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>::Validate(&v182, v107);
    v46 = v4;
    v47 = std::__any_of[abi:ne200100]<std::__wrap_iter<ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo> const*>,std::__wrap_iter<ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo> const*>,std::__identity,ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>::ValidateDilatedConv(void)::{lambda(std::__wrap_iter<ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo> const*>)#1}>(v107[0], v107[1]);
    v48 = v47;
    v49 = v28;
    if (v47)
    {
      v50 = *(a1 + 72);
      *v105 = *v67;
      *&v105[16] = v50;
      v106 = *(a1 + 104);
      *&v105[8] = v109;
      *&v105[24] = v110[0];
      *&v105[40] = *&v110[1];
      v83 = vdupq_n_s64(1uLL);
      v84 = 1;
      *&v51 = 0x100000001;
      *(&v51 + 1) = 0x100000001;
      v85 = v51;
      v86 = 0x100000001;
      v88 = 0;
      v89 = 0;
      v87 = 0;
      v90 = v51;
      v91 = 1;
      v92 = 0;
      v93 = 0;
      ZinIrConvUnit::CreateConvInfo(&v202 + 8, &v83);
      ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::SetConvDesc(a1, &v83, v46, &v94, v212);
      v181 = @"InvalidDilationFactor";
      std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(a1 + 8, &v181, &v181);
      *&v68[32] = *(a1 + 32);
      *&v68[40] = v105;
      *&v68[48] = &v94;
      *&v68[56] = *v105;
      v69 = *&v105[16];
      v70 = *&v105[32];
      v71 = v106;
      v72 = v94;
      v73 = v95;
      v76 = v98;
      v77 = v99;
      v74 = v96;
      v75 = v97;
      v81 = v103;
      v82 = v104;
      v79 = v101;
      v80 = v102;
      v78 = v100;
      *v68 = &unk_1F19F0A88;
      *&v68[8] = &v68[16];
      *&v68[16] = 0uLL;
      ZinUnitValidator::AddErrors(v68, (a1 + 8));
      ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::Validate(v68, a2);
      *v68 = &unk_1F19CCBB0;
      std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v68[8], *&v68[16]);
      v29 = 0;
      v49 = v65;
    }

    *v68 = v107;
    std::vector<ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>>::__destroy_vector::operator()[abi:ne200100](v68);
    ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>::~ZinConvValidator(&v182);
    if (__p)
    {
      v117 = __p;
      operator delete(__p);
    }

    v65 = v49;
    v4 = v46;
    if (v48)
    {
      ZinMirDilatedConv::DilatedConvDecomposedDesc::~DilatedConvDecomposedDesc(&v202);
      goto LABEL_61;
    }

LABEL_54:
    ZinMirDilatedConv::DilatedConvDecomposedDesc::~DilatedConvDecomposedDesc(&v202);
    ++v28;
    v25 = v132;
    v27 += 40;
    v26 += 344;
  }

  while (0x82FA0BE82FA0BE83 * ((v133 - v132) >> 3) > v28);
  v16 = v65;
  if ((v29 & 1) == 0)
  {
LABEL_14:
    v17 = *(a1 + 72);
    *v68 = *v67;
    *&v68[16] = v17;
    v18 = *(a1 + 104);
    *&v68[32] = *(a1 + 88);
    *&v68[48] = v18;
    v19 = *(a1 + 264);
    *&v209[16] = *(a1 + 248);
    v210 = v19;
    v211 = *(a1 + 280);
    v20 = *(a1 + 200);
    v206 = *(a1 + 184);
    v207 = v20;
    v21 = *(a1 + 216);
    *v209 = *(a1 + 232);
    v208 = v21;
    v22 = *(a1 + 136);
    v202 = *v64;
    v203 = v22;
    v23 = *(a1 + 152);
    v205 = *(a1 + 168);
    v204 = v23;
    *&v209[8] = vdupq_n_s64(1uLL);
    *&v209[24] = 1;
    if (IsChannelWise<ANECConvLayerDesc>(*(a1 + 48)))
    {
      v24 = 2;
    }

    else
    {
      v24 = 1;
    }

    ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::SetConvType(a1, &v202, v24);
    *(&v184 + 1) = *(a1 + 32);
    v185 = v68;
    v186 = &v202;
    v187 = *v68;
    v188 = *&v68[16];
    v189 = *&v68[32];
    v190 = *&v68[48];
    v200 = v210;
    v201 = v211;
    v191 = v202;
    v192 = v203;
    v193 = v204;
    v197 = v208;
    v196 = v207;
    v195 = v206;
    v194 = v205;
    v199 = *&v209[16];
    v198 = *v209;
    v182.i64[0] = &unk_1F19F0A88;
    v182.i64[1] = &v183;
    *&v184 = 0;
    v183 = 0;
    ZinUnitValidator::AddErrors(&v182, (a1 + 8));
    ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::Validate(&v182, a2);
    goto LABEL_60;
  }

LABEL_13:
  if (*(a1 + 24))
  {
    goto LABEL_14;
  }

  v52 = *(a1 + 72);
  *v68 = *v67;
  *&v68[16] = v52;
  v53 = *(a1 + 104);
  *&v68[32] = *(a1 + 88);
  *&v68[48] = v53;
  v54 = *(a1 + 264);
  *&v209[16] = *(a1 + 248);
  v210 = v54;
  v211 = *(a1 + 280);
  v55 = *(a1 + 200);
  v206 = *(a1 + 184);
  v207 = v55;
  v56 = *(a1 + 216);
  *v209 = *(a1 + 232);
  v208 = v56;
  v57 = *(a1 + 136);
  v202 = *v64;
  v203 = v57;
  v58 = *(a1 + 152);
  v205 = *(a1 + 168);
  v204 = v58;
  if (v133 != v132)
  {
    v59 = v132 + 344 * v16;
    v94 = 0uLL;
    *&v95 = 0;
    v182 = vdupq_n_s64(1uLL);
    v183 = 1;
    *&v60 = 0x100000001;
    *(&v60 + 1) = 0x100000001;
    v184 = v60;
    v185 = 0x100000001;
    v186 = 0;
    v187 = 0uLL;
    v188 = v60;
    *&v189 = 1;
    WORD4(v189) = 0;
    HIDWORD(v189) = 0;
    ZinIrConvUnit::CreateConvInfo(v59 + 8, &v182);
    ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::SetConvDesc(a1, &v182, v4, &v202, *(v59 + 248));
    v61 = v129 + 40 * v16;
    v62 = *(v61 + 4);
    v63 = *(v61 + 1);
    *&v68[8] = *v61;
    *&v68[24] = v63;
    *&v68[40] = v62;
    v182.i64[0] = &v94;
    std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__destroy_vector::operator()[abi:ne200100](&v182);
  }

  *(&v184 + 1) = *(a1 + 32);
  v185 = v68;
  v186 = &v202;
  v187 = *v68;
  v188 = *&v68[16];
  v189 = *&v68[32];
  v190 = *&v68[48];
  v200 = v210;
  v201 = v211;
  v191 = v202;
  v192 = v203;
  v193 = v204;
  v197 = v208;
  v196 = v207;
  v195 = v206;
  v194 = v205;
  v199 = *&v209[16];
  v198 = *v209;
  v182.i64[0] = &unk_1F19F0A88;
  v182.i64[1] = &v183;
  *&v184 = 0;
  v183 = 0;
  ZinUnitValidator::AddErrors(&v182, (a1 + 8));
  ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::Validate(&v182, a2);
LABEL_60:
  v182.i64[0] = &unk_1F19CCBB0;
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v182.i64[1], v183);
LABEL_61:
  if (v121)
  {
    v122 = v121;
    operator delete(v121);
  }

  std::deque<int>::~deque[abi:ne200100](&v124);
  if (v129)
  {
    v130 = v129;
    operator delete(v129);
  }

  v182.i64[0] = &v132;
  std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>::__destroy_vector::operator()[abi:ne200100](&v182);
  v138[0] = &unk_1F1A2EAA0;
  if (v150)
  {
    *(&v150 + 1) = v150;
    operator delete(v150);
  }

  if (*(&v148 + 1))
  {
    *&v149 = *(&v148 + 1);
    operator delete(*(&v148 + 1));
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(v138);
}

void sub_1A698F77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x610] = &a65;
  std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x610]);
  v66 = STACK[0x378];
  if (STACK[0x378])
  {
    STACK[0x380] = v66;
    operator delete(v66);
  }

  std::deque<int>::~deque[abi:ne200100](&STACK[0x390]);
  v67 = STACK[0x3C8];
  if (STACK[0x3C8])
  {
    STACK[0x3D0] = v67;
    operator delete(v67);
  }

  STACK[0x610] = &STACK[0x3E0];
  std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>::__destroy_vector::operator()[abi:ne200100](&STACK[0x610]);
  ZinIrConvUnitInfo::~ZinIrConvUnitInfo(&STACK[0x450]);
  _Unwind_Resume(a1);
}

void *ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateSteps(uint64_t a1)
{
  v2 = **(a1 + 32);
  ZinUnitValidator::limits<int>(a1, 1, v2[44], *(*(a1 + 48) + 80), (a1 + 200), @"InvalidStepX");
  ZinUnitValidator::limits<int>(a1, 1, v2[46], *(*(a1 + 48) + 84), (a1 + 204), @"InvalidStepY");
  v3 = v2[48];
  v4 = *(*(a1 + 48) + 88);

  return ZinUnitValidator::limits<int>(a1, 1, v3, v4, (a1 + 208), @"InvalidStepZ");
}

void *ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateKernelSize(uint64_t a1)
{
  v2 = **(a1 + 32);
  v3 = ANECFormatToZinTensorFormat(**(a1 + 40));
  MaxSmallKernelWidth = ZinIrHalParameters::GetMaxSmallKernelWidth(v2, v3);
  v5 = *(v2 + 104);
  v6 = *(v2 + 120);
  v7 = ANECFormatToZinTensorFormat(**(a1 + 40));
  MaxLogicalKernelWidthForLargeKernelMode = GetMaxLogicalKernelWidthForLargeKernelMode(v2, v7);
  MaxLogicalKernelHeightForLargeKernelMode = GetMaxLogicalKernelHeightForLargeKernelMode(v2);
  MaxLogicalKernelDepthForLargeKernelMode = GetMaxLogicalKernelDepthForLargeKernelMode(v2);
  ZinUnitValidator::limits<long>(a1, 1, MaxLogicalKernelWidthForLargeKernelMode, *(*(a1 + 48) + 56), (a1 + 176), @"InvalidKernelWidth");
  ZinUnitValidator::limits<long>(a1, 1, MaxLogicalKernelHeightForLargeKernelMode, *(*(a1 + 48) + 64), (a1 + 184), @"InvalidKernelHeight");
  ZinUnitValidator::limits<long>(a1, 1, MaxLogicalKernelDepthForLargeKernelMode, *(*(a1 + 48) + 72), (a1 + 192), @"InvalidKernelDepth");
  result = IsDeconv<ANECConvLayerDesc>(*(a1 + 48));
  if (result)
  {
    v12 = *(a1 + 48);
    if (*(v12 + 80) >= 2)
    {
      result = ZinUnitValidator::limits<long>(a1, 1, MaxSmallKernelWidth, *(v12 + 56), (a1 + 176), @"InvalidKernelWidth");
      v12 = *(a1 + 48);
    }

    if (*(v12 + 84) >= 2)
    {
      result = ZinUnitValidator::limits<long>(a1, 1, v5, *(v12 + 64), (a1 + 184), @"InvalidKernelHeight");
      v12 = *(a1 + 48);
    }

    if (*(v12 + 88) >= 2)
    {
      v13 = *(v12 + 72);

      return ZinUnitValidator::limits<long>(a1, 1, v6, v13, (a1 + 192), @"InvalidKernelDepth");
    }
  }

  return result;
}

void *ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateNumGroups(uint64_t a1)
{
  ZinUnitValidator::limits<long>(a1, *(**(a1 + 32) + 368), *(**(a1 + 32) + 376), *(*(a1 + 48) + 40), (a1 + 160), @"InvalidGroupConfiguration");
  result = IsChannelWise<ANECConvLayerDesc>(*(a1 + 48));
  if (result)
  {
    result = ZinUnitValidator::limits<long>(a1, *(*(a1 + 40) + 16), *(*(a1 + 40) + 16), *(*(a1 + 48) + 40), (a1 + 160), @"InvalidGroupConfiguration");
  }

  v3 = *(*(a1 + 48) + 40);
  if (v3 != 1 && (*(a1 + 72) % v3 || *(a1 + 152) % v3))
  {

    return ZinUnitValidator::limits<long>(a1, 1, 1, v3, (a1 + 160), @"InvalidGroupConfiguration");
  }

  return result;
}

void *ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateOutputChannel(uint64_t a1)
{
  ZinUnitValidator::limits<long>(a1, *(**(a1 + 32) + 352), *(**(a1 + 32) + 360), *(*(a1 + 48) + 32), (a1 + 152), @"InvalidOutputChannels");
  result = IsChannelWise<ANECConvLayerDesc>(*(a1 + 48));
  if (result)
  {
    v3 = *(a1 + 72);
    v4 = *(*(a1 + 48) + 32);

    return ZinUnitValidator::limits<long>(a1, v3, v3, v4, (a1 + 152), @"InvalidOutputChannels");
  }

  return result;
}

void *ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateKernelAndInputChannel(uint64_t a1)
{
  v2 = **(a1 + 32);
  v10 = *(a1 + 200);
  v11 = *(a1 + 208);
  v8 = *(a1 + 176);
  v9 = *(a1 + 192);
  v3 = ANECFormatToZinTensorFormat(*(a1 + 56));
  v4 = IsDeconv<ANECConvLayerDesc>(*(a1 + 48));
  ZinKernelComputeStrideExpansion(v2, &v10, &v8, v3, v4, v7);
  v6 = *(a1 + 72) / *(a1 + 160) * v7[1] * v7[0] * v7[2];
  ZinUnitValidator::limits<long>(a1, v2[44], v2[45], *(*(a1 + 48) + 32), (a1 + 152), @"InvalidOutputChannels");
  return ZinUnitValidator::limits<long>(a1, v2[44], v2[45], v6, &v6, @"InvalidChannels");
}

void *ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateKernelAndOutputChannel(uint64_t a1)
{
  v2 = **(a1 + 32);
  v10 = *(a1 + 200);
  v11 = *(a1 + 208);
  v8 = *(a1 + 176);
  v9 = *(a1 + 192);
  v3 = ANECFormatToZinTensorFormat(*(a1 + 56));
  v4 = IsDeconv<ANECConvLayerDesc>(*(a1 + 48));
  ZinKernelComputeStrideExpansion(v2, &v10, &v8, v3, v4, v7);
  v6 = *(a1 + 152) * v7[4] * v7[3] * v7[5];
  ZinUnitValidator::limits<long>(a1, v2[44], v2[45], *(*(a1 + 48) + 32), (a1 + 152), @"InvalidOutputChannels");
  return ZinUnitValidator::limits<long>(a1, 1, v2[45], v6, &v6, @"InvalidChannels");
}

void ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateKernelQuantizationParameters(uint64_t a1)
{
  memset(&v61[1], 0, 24);
  v62 = 0;
  v63 = 0u;
  v64 = 0u;
  v65 = -1;
  v66 = 0;
  v67 = -1;
  v68 = -1;
  v69 = -1;
  v70 = -1;
  *v71 = 0u;
  v72 = 0u;
  __p = 0u;
  v74 = 0;
  v75 = 1;
  v76 = 0;
  v77 = 0;
  v78 = -1;
  v79 = -1;
  v80 = -1;
  v81 = -1;
  v82 = 0x3F80000000000006;
  v83 = 0;
  v61[0] = &unk_1F1A33E10;
  v84 = 0;
  v85 = 0;
  v86 = vdupq_n_s64(1uLL);
  v87 = 1;
  v88 = 1;
  *&v2 = 0x100000001;
  *(&v2 + 1) = 0x100000001;
  v89 = v2;
  v90 = 0x100000001;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  v94 = 1;
  ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::Desc2UnitInfo(a1, *(a1 + 48), v61);
  v3 = v77;
  if (v77 != 1)
  {
LABEL_4:
    if ((v3 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_5;
  }

  if ((v82 | 2) == 6)
  {
    v3 = 1;
    goto LABEL_4;
  }

  v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v45)
  {
    ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateKernelQuantizationParameters(v45, v46, v47, v48, v49, v50, v51, v52);
  }

  v95 = @"InvalidKernelQuantizationParams";
  std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(a1 + 8, &v95, &v95);
  ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::SetValidDescKernelPerCoutScaleFormat(a1, 6u);
  if (v77)
  {
LABEL_5:
    if (*(&v82 + 1) != 1.0)
    {
      v4 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v4)
      {
        ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateKernelQuantizationParameters(v4, v5, v6, v7, v8, v9, v10, v11);
      }

      v95 = @"InvalidKernelQuantizationParams";
      std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(a1 + 8, &v95, &v95);
      ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ResetValidDescQuantizationScale(a1, 1);
    }
  }

LABEL_9:
  if (HIBYTE(v77) == 1 && v83)
  {
    v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v12)
    {
      ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateKernelQuantizationParameters(v12, v13, v14, v15, v16, v17, v18, v19);
    }

    v95 = @"InvalidKernelQuantizationParams";
    std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(a1 + 8, &v95, &v95);
    ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ResetValidDescQuantizationZeroPoint(a1, 1);
  }

  if (!ZinIrKernelQuantizationInfo::HasDefaultQuantizationScalarScale(&v77) || !ZinIrKernelQuantizationInfo::HasDefaultQuantizationScalarZeroPoint(&v77))
  {
    if (v76 == 1)
    {
      v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v20)
      {
        ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateKernelQuantizationParameters(v20, v21, v22, v23, v24, v25, v26, v27);
      }

      v95 = @"InvalidKernelQuantizationParams";
      std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(a1 + 8, &v95, &v95);
      ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ResetValidDescQuantizationScale(a1, 0);
      ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ResetValidDescQuantizationZeroPoint(a1, 0);
    }

    if ((ZinKernelFormatIsQuantizationCompatible(HIDWORD(v66)) & 1) == 0)
    {
      v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v28)
      {
        ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateKernelQuantizationParameters(v28, v29, v30, v31, v32, v33, v34, v35);
      }

      v95 = @"InvalidKernelType";
      std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(a1 + 8, &v95, &v95);
      ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::SetValidDescKernelFormat(a1, 1u);
    }

    v36 = HIDWORD(v66);
    if (HIDWORD(v66) == 1)
    {
      if ((v77 & 0x100) != 0)
      {
        goto LABEL_41;
      }

      if (!ZinInRange<signed char>(v83))
      {
        v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v53)
        {
          ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateKernelQuantizationParameters(v53, v54, v55, v56, v57, v58, v59, v60);
        }

        goto LABEL_40;
      }

      v36 = HIDWORD(v66);
    }

    if (v36 == 2 && (v77 & 0x100) == 0 && !ZinInRange<unsigned char>(v83))
    {
      v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v37)
      {
        ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateKernelQuantizationParameters(v37, v38, v39, v40, v41, v42, v43, v44);
      }

LABEL_40:
      v95 = @"InvalidKernelQuantizationParams";
      std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(a1 + 8, &v95, &v95);
      ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ResetValidDescQuantizationZeroPoint(a1, 1);
    }
  }

LABEL_41:
  v61[0] = &unk_1F1A2EAA0;
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  if (v71[1])
  {
    *&v72 = v71[1];
    operator delete(v71[1]);
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(v61);
}

void sub_1A6990294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ZinIrConvUnitInfo::~ZinIrConvUnitInfo(va);
  _Unwind_Resume(a1);
}

void ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidatePaletteVectorSize(uint64_t a1)
{
  memset(&v76[1], 0, 24);
  v77 = 0;
  v78 = 0u;
  v79 = 0u;
  v80 = -1;
  v81 = 0;
  v82 = -1;
  v83 = -1;
  v84 = -1;
  v86 = 0u;
  v87 = 0u;
  __p = 0u;
  v85 = -1;
  v89 = 0;
  v90 = 1;
  v91 = 0;
  v92 = 0;
  v93 = -1;
  v94 = -1;
  v95 = -1;
  v96 = -1;
  v97 = 0x3F80000000000006;
  v98 = 0;
  v76[0] = &unk_1F1A33E10;
  v99 = 0;
  v100 = 0;
  v101 = vdupq_n_s64(1uLL);
  v102 = 1;
  v103 = 1;
  *&v2 = 0x100000001;
  *(&v2 + 1) = 0x100000001;
  v104 = v2;
  v105 = 0x100000001;
  v107 = 0;
  v108 = 0;
  v106 = 0;
  v109 = 1;
  ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::Desc2UnitInfo(a1, *(a1 + 48), v76);
  if ((HIDWORD(v81) - 7) > 0x14)
  {
    goto LABEL_33;
  }

  v3 = 0;
  while (v90 != 1 << v3)
  {
    if (*(**(a1 + 32) + 1656) + 1 == ++v3)
    {
      v72 = @"InvalidKernelPaletteVectorSize";
      std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(a1 + 8, &v72, &v72);
      *(a1 + 288) = 1;
      v4 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v4)
      {
        ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidatePaletteVectorSize(v4, v5, v6, v7, v8, v9, v10, v11);
      }

      break;
    }
  }

  if (v101.i64[0] < 2)
  {
    goto LABEL_11;
  }

  v12 = v90;
  if (v80 / v101.i64[0] % v90)
  {
    v72 = @"InvalidKernelPaletteVectorSize";
    std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(a1 + 8, &v72, &v72);
    *(a1 + 288) = 1;
    v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v13)
    {
      ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidatePaletteVectorSize(v13, v14, v15, v16, v17, v18, v19, v20);
    }

LABEL_11:
    v12 = v90;
  }

  if (v12 >= 2)
  {
    if ((*(**(a1 + 32) + 1654) & 1) == 0)
    {
      v72 = @"InvalidKernelPaletteVectorSize";
      std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(a1 + 8, &v72, &v72);
      *(a1 + 288) = 1;
      v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v21)
      {
        ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidatePaletteVectorSize(v21, v22, v23, v24, v25, v26, v27, v28);
      }
    }

    if (v91 == 1)
    {
      v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v29)
      {
        ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidatePaletteVectorSize(v29, v30, v31, v32, v33, v34, v35, v36);
      }

      v72 = @"InvalidKernelPaletteVectorSize";
      std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(a1 + 8, &v72, &v72);
      *(a1 + 288) = 1;
    }

    v37 = **(a1 + 32);
    v38 = ANECFormatToZinTensorFormat(*(a1 + 56));
    v39 = IsDeconv<ANECConvLayerDesc>(*(a1 + 48));
    ZinKernelComputeStrideExpansion(v37, &v104 + 3, &v101.u64[1], v38, v39, &v72);
    if (v74 * v73 * v75 != 1)
    {
      v110 = @"InvalidKernelPaletteVectorSize";
      std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(a1 + 8, &v110, &v110);
      *(a1 + 288) = 1;
      v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v40)
      {
        ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidatePaletteVectorSize(v40, v41, v42, v43, v44, v45, v46, v47);
      }
    }

    if (IsChannelWise<ANECConvLayerDesc>(*(a1 + 48)))
    {
      v110 = @"InvalidKernelPaletteVectorSize";
      std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(a1 + 8, &v110, &v110);
      *(a1 + 288) = 1;
      v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v48)
      {
        ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidatePaletteVectorSize(v48, v49, v50, v51, v52, v53, v54, v55);
      }
    }

    v12 = v90;
  }

  v110 = 0;
  if (ZinKernelGetPaletteLUTSize(SHIDWORD(v81), v12, &v110))
  {
    v72 = @"InvalidKernelType";
    std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(a1 + 8, &v72, &v72);
    ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::SetValidDescKernelFormat(a1, 9u);
    v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v56)
    {
      ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidatePaletteVectorSize(v56, v57, v58, v59, v60, v61, v62, v63);
    }
  }

  if (v110 > *(**(a1 + 32) + 520))
  {
    v72 = @"InvalidKernelPaletteVectorSize";
    std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(a1 + 8, &v72, &v72);
    *(a1 + 288) = 1;
    v64 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v64)
    {
      ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidatePaletteVectorSize(v64, v65, v66, v67, v68, v69, v70, v71);
    }
  }

LABEL_33:
  v76[0] = &unk_1F1A2EAA0;
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  if (*(&v86 + 1))
  {
    *&v87 = *(&v86 + 1);
    operator delete(*(&v86 + 1));
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(v76);
}

void sub_1A6990720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ZinIrConvUnitInfo::~ZinIrConvUnitInfo(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::reserve(uint64_t *result, unint64_t a2)
{
  if (0x14C1BACF914C1BADLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xDD67C8A60DD67DLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>>(result, a2);
    }

    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1A6990818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__emplace_back_slow_path<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc> const&>(a1, a2);
  }

  else
  {
    std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__construct_one_at_end[abi:ne200100]<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc> const&>(a1, a2);
    result = v3 + 296;
  }

  *(a1 + 8) = result;
  return result;
}

void ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateOCGSize(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = **(a1 + 32);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::reserve(a3, 1uLL);
  v104 = &unk_1F19CCBB0;
  std::set<__CFString const*>::set[abi:ne200100](v105, a1 + 8);
  v105[3] = *(a1 + 32);
  v104 = &unk_1F19F0A88;
  v7 = (a1 + 40);
  v8 = *(a1 + 280);
  v115[5] = *(a1 + 264);
  v115[6] = v8;
  v109 = *(a1 + 88);
  v108 = *(a1 + 72);
  v113 = *(a1 + 152);
  v112 = *(a1 + 136);
  v111 = *(a1 + 120);
  v110 = *(a1 + 104);
  v115[2] = *(a1 + 216);
  v115[1] = *(a1 + 200);
  v115[0] = *(a1 + 184);
  v114 = *(a1 + 168);
  v115[4] = *(a1 + 248);
  v115[3] = *(a1 + 232);
  v106 = *(a1 + 40);
  v107 = *(a1 + 56);
  if (*(*(a1 + 48) + 72) < 2)
  {
    goto LABEL_47;
  }

  v102 = *(a1 + 200);
  v103 = *(a1 + 208);
  v100 = *(a1 + 176);
  v101 = *(a1 + 192);
  v9 = IsDeconv<ANECConvLayerDesc>((a1 + 120));
  v10 = ANECFormatToZinTensorFormat(*(a1 + 56));
  ZinKernelComputeStrideExpansion(v6, &v102, &v100, v10, v9, &v96);
  v94 = v96;
  v95 = v97;
  v92 = v98;
  v93 = v99;
  v90 = *(a1 + 212);
  v91 = *(a1 + 228);
  v11 = *(a1 + 160);
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v51 = 0;
  v52 = 0;
  v57 = 0u;
  v58 = 0u;
  v60 = vdupq_n_s64(1uLL);
  v61 = vextq_s8(v100, v100, 8uLL);
  v59 = 0;
  v62 = v101;
  v63 = v60;
  v64 = v60;
  v65 = 1;
  v66 = v96;
  v67 = v97;
  v69 = v99;
  v68 = v98;
  v71 = v91;
  v70 = v90;
  v72[0] = GetPadMode<ANECConvLayerDesc>(a1 + 120);
  v72[1] = 0;
  v73 = vmovn_s64(*(a1 + 240));
  v74 = *(a1 + 256);
  v75 = v11;
  v76 = 0;
  v77 = 1;
  v78 = 0;
  v81 = 0;
  v79 = 0;
  v80 = 0;
  if (v9)
  {
    v12 = 64;
  }

  else
  {
    v12 = 0;
  }

  v82 = v12 | (*(a1 + 168) << 7);
  LOBYTE(v83) = 0;
  v89 = 0;
  v13 = IsCompressed<ANECConvLayerDesc>(a1 + 120);
  v14 = *(a1 + 80);
  v49[0] = *(a1 + 64);
  v49[1] = v14;
  v50 = *(a1 + 96);
  v15 = *(a2 + 24);
  v47[0] = *(a2 + 8);
  v47[1] = v15;
  v48 = *(a2 + 40);
  v16 = *(*(a1 + 32) + 8);
  v17 = *(v16 + 473);
  v18 = *(v16 + 617);
  v19 = ANECFormatToZinTensorFormat(**(a1 + 40));
  if (ZinMirConvUtils::CheckForHWLimits(v49, v47, v19, &v100, &v94, &v92, &v90, v72, v11, *(a1 + 32), v13, v17, 0, 0))
  {
    if (((*(a1 + 236) | v13) & 1) == 0)
    {
      Zin3DDeConvUtils::DeconvSplit::DeconvSplit(v32);
      v20 = ANECFormatToZinTensorFormat(**v7);
      if (Zin3DDeConvUtils::Decompose3DDeConv(v49, v47, v20, &v51, *(a1 + 32), v17, v18, v32))
      {
        if (v46 == 1)
        {
          if (__p)
          {
            v45 = __p;
            operator delete(__p);
          }

          if (v42)
          {
            v43 = v42;
            operator delete(v42);
          }

          if (v40)
          {
            v41 = v40;
            operator delete(v40);
          }
        }

        if (v39 == 1)
        {
          if (v37)
          {
            v38 = v37;
            operator delete(v37);
          }

          if (v35)
          {
            v36 = v35;
            operator delete(v35);
          }

          if (v33)
          {
            v34 = v33;
            operator delete(v33);
          }
        }
      }

      else
      {
        KernelFormat = ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::GetKernelFormat(a1);
        v30 = ANECFormatToZinTensorFormat(**v7);
        v21 = ValidateParts(v32, v49, &KernelFormat, &v30, *(a1 + 112), *(a1 + 113), *(a1 + 104), 1, *(a1 + 32));
        if (v46 == 1)
        {
          if (__p)
          {
            v45 = __p;
            operator delete(__p);
          }

          if (v42)
          {
            v43 = v42;
            operator delete(v42);
          }

          if (v40)
          {
            v41 = v40;
            operator delete(v40);
          }
        }

        if (v39 == 1)
        {
          if (v37)
          {
            v38 = v37;
            operator delete(v37);
          }

          if (v35)
          {
            v36 = v35;
            operator delete(v35);
          }

          if (v33)
          {
            v34 = v33;
            operator delete(v33);
          }
        }

        if (!v21)
        {
          goto LABEL_40;
        }
      }
    }

    v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v22)
    {
      ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateOCGSize(v22, v23, v24, v25, v26, v27, v28, v29);
    }

    ZinUnitValidator::limits<long>(&v104, 1, 1, *(a1 + 192), v115 + 1, @"InvalidKernelDepth");
  }

LABEL_40:
  if (v89 == 1)
  {
    if (v87)
    {
      v88 = v87;
      operator delete(v87);
    }

    if (v85)
    {
      v86 = v85;
      operator delete(v85);
    }

    if (v83)
    {
      v84 = v83;
      operator delete(v83);
    }
  }

LABEL_47:
  std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::push_back[abi:ne200100](a3, &v104);
  v104 = &unk_1F19CCBB0;
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v105, v105[1]);
}

void sub_1A6990DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  Zin3DDeConvUtils::DeconvSplit::~DeconvSplit(va);
  ZinKernelDescriptor::~ZinKernelDescriptor(&STACK[0x3F0]);
  STACK[0x5D8] = a15;
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v16 + 8, STACK[0x5E8]);
  std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateUnitWithLargeKernelStrides(void)::{lambda(ZinIrHalParameters const&)#1}::operator()(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 56);
  v5 = *(*a1 + 88);
  v42 = *(*a1 + 72);
  v43 = v5;
  v44 = *(v3 + 104);
  v6 = *(v3 + 168);
  v7 = *(v3 + 216);
  v8 = *(v3 + 200);
  v34 = *(v3 + 184);
  v35 = v8;
  v9 = *(v3 + 264);
  v40 = *(v3 + 280);
  v41 = v4;
  v38 = *(v3 + 248);
  v39 = v9;
  v10 = *(v3 + 232);
  v36 = v7;
  v37 = v10;
  v11 = *(v3 + 136);
  v30 = *(v3 + 120);
  v31 = v11;
  v32 = *(v3 + 152);
  v33 = v6;
  ZinUnitValidator::limits<int>(v3, 1, 2, *(*(v3 + 48) + 80), &v35, @"InvalidStepX");
  ZinUnitValidator::limits<int>(v3, 1, 2, *(*(v3 + 48) + 84), &v35 + 1, @"InvalidStepY");
  ZinUnitValidator::limits<int>(v3, 1, 2, *(*(v3 + 48) + 88), &v35 + 2, @"InvalidStepZ");
  v14[2] = *(v3 + 32);
  v15 = v41;
  v16 = v42;
  v17 = v43;
  v18 = v44;
  v28 = v39;
  v29 = v40;
  v26 = v37;
  v27 = v38;
  v22 = v33;
  v23 = v34;
  v24 = v35;
  v25 = v36;
  v19 = v30;
  v20 = v31;
  v14[3] = &v41;
  v14[4] = &v30;
  v21 = v32;
  v12 = &unk_1F19F0A88;
  v13 = v14;
  v14[0] = 0;
  v14[1] = 0;
  ZinUnitValidator::AddErrors(&v12, (v3 + 8));
  ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::Validate(&v12, a2);
  v12 = &unk_1F19CCBB0;
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v13, v14[0]);
}

uint64_t ValidateLargeKernelStridesForConv(ZinConvLayerUtils *a1, uint64_t a2, int *a3, void *a4, uint64_t a5, uint64_t *a6, int a7, char a8, char a9, uint64_t a10, char a11, uint64_t a12)
{
  v221 = vextq_s8(*(a2 + 88), *(a2 + 88), 8uLL);
  v222 = *(a2 + 104);
  ZinGetOutputTensorDimension(a4, &v221, (a2 + 152), (a2 + 164), (a2 + 176), a5, (a2 + 208), v218);
  v215 = 0;
  v216 = 0;
  v217 = 0;
  v212 = 0;
  v213 = 0;
  v214 = 0;
  v209 = 0;
  v210 = 0;
  v211 = 0;
  v152 = a3;
  v153 = a6;
  if (ZinConvLargeStrides::DecomposeConvWithLargeStride(a4, v218, *a3, a2, a7, *a6, &v209, &v215))
  {
    if (ZinConvPoolLargeStride::DecomposeLargeStrideConv(*a3, a1, *a6, a4, a5, &v209, &v212))
    {
      goto LABEL_161;
    }

    v18 = v212;
    if (v213 == v212)
    {
      goto LABEL_161;
    }

    if ((799063683 * ((v213 - v212) >> 3)) < 1)
    {
      LOBYTE(v24) = 1;
      goto LABEL_162;
    }

    v19 = 0;
    v20 = 0;
    v148 = (a12 + 240);
    v21 = 248;
    v22 = 0uLL;
    v23 = 1;
    while (1)
    {
      LOBYTE(v24) = 0;
      v25 = *(v18 + v21 - 248);
      if (v25 > 16)
      {
        break;
      }

      if (v25 != 1)
      {
        if (v25 != 3)
        {
          goto LABEL_162;
        }

        v194 = 0uLL;
        *v195 = 0;
        *&v195[16] = v22;
        *v196 = v22;
        *&v196[16] = -1;
        v193 = &unk_1F1A34078;
        BYTE4(v197) = 0;
        LODWORD(v197) = 2;
        *&v195[8] = 3;
        std::string::operator=(&v194, (v18 + v21 - 232));
        *&v195[8] = *(v18 + v21 - 208);
        if ((v18 + v21 - 240) != &v193)
        {
          std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&v195[16], *(v18 + v21 - 200), *(v18 + v21 - 192), 0xAAAAAAAAAAAAAAABLL * ((*(v18 + v21 - 192) - *(v18 + v21 - 200)) >> 3));
        }

        *&v196[8] = *(v18 + v21 - 176);
        v26 = *(v18 + v21 - 160);
        BYTE4(v197) = *(v18 + v21 - 156);
        LODWORD(v197) = v26;
        if (v26 == 3)
        {
          v27 = &v219;
        }

        else
        {
          v27 = &v220;
        }

        v28 = *v27;
        v158[0] = 0;
        v158[8] = 0;
        v158[16] = 0;
        BYTE12(v159) = 0;
        LOBYTE(v160) = 0;
        *v161 = 0;
        *&v161[8] = 0;
        *(&v160 + 1) = 0;
        v156 = 0u;
        memset(v157, 0, 27);
        *&v161[16] = 5;
        v161[20] = 0;
        LODWORD(v155) = *v152;
        v29 = *&v209[v19];
        v30 = *&v209[v19 + 16];
        *&v157[16] = *&v209[v19 + 32];
        *v157 = v30;
        v156 = v29;
        v31 = a8;
        if (v21 != 248)
        {
          v31 = 0;
        }

        v157[24] = v31;
        v32 = a9;
        if (v21 != 248)
        {
          v32 = 0;
        }

        v157[26] = v32;
        v33 = a10;
        if (v21 == 248)
        {
          v34 = a11;
        }

        else
        {
          v34 = 1;
        }

        if (v21 != 248)
        {
          v33 = 1;
        }

        *v158 = v33;
        v158[8] = v34;
        std::vector<ZinIrTensorInfo>::vector[abi:ne200100](&v180, v28, &v155);
        ZinConcatValidator<ZinIrConcatUnitInfo,ZinIrTensorInfo>::ZinConcatValidator(&v171, v153, &v193, v180, 0xF0F0F0F0F0F0F0F1 * ((v181 - v180) >> 3));
        ZinConcatValidator<ZinIrConcatUnitInfo,ZinIrTensorInfo>::Validate(&v171);
        v35 = v172.__r_.__value_.__r.__words[2];
        ZinConcatValidator<ZinIrConcatUnitInfo,ZinIrTensorInfo>::~ZinConcatValidator(&v171);
        v171 = &v180;
        std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100](&v171);
        if (*(&v160 + 1))
        {
          *v161 = *(&v160 + 1);
          operator delete(*(&v160 + 1));
        }

        v36 = &v193;
        goto LABEL_83;
      }

      v156 = 0uLL;
      *&v157[8] = 0;
      *v157 = 0;
      *&v157[16] = v22;
      *v158 = v22;
      *&v158[16] = -1;
      *&v159 = 0;
      DWORD2(v159) = -1;
      *&v160 = -1;
      DWORD2(v160) = -1;
      *v161 = -1;
      *&v161[8] = v22;
      v162 = v22;
      v163 = v22;
      v164 = 0;
      LODWORD(v165) = 1;
      BYTE4(v165) = 0;
      WORD4(v165) = 0;
      LODWORD(v166) = -1;
      *(&v166 + 1) = -1;
      *v167 = -1;
      *&v167[8] = -1;
      *&v167[16] = 0x3F80000000000006;
      *&v167[24] = 0;
      v155 = &unk_1F1A33E10;
      *v168 = 0;
      v168[4] = 0;
      *&v168[8] = vdupq_n_s64(1uLL);
      *&v168[24] = 1;
      *v169 = 1;
      *&v45 = 0x100000001;
      *(&v45 + 1) = 0x100000001;
      *&v169[8] = v45;
      *&v169[24] = 0x100000001;
      memset(v170, 0, 24);
      *&v170[24] = 1;
      std::string::operator=(&v156, (v18 + v21 - 232));
      *&v157[8] = *(v18 + v21 - 208);
      if ((v18 + v21 - 240) == &v155)
      {
        *&v158[8] = *(v18 + v21 - 176);
        v55 = *(v18 + v21 - 160);
        v56 = *(v18 + v21 - 128);
        v160 = *(v18 + v21 - 144);
        *v161 = v56;
        v159 = v55;
      }

      else
      {
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&v157[16], *(v18 + v21 - 200), *(v18 + v21 - 192), 0xAAAAAAAAAAAAAAABLL * ((*(v18 + v21 - 192) - *(v18 + v21 - 200)) >> 3));
        *&v158[8] = *(v18 + v21 - 176);
        v46 = *(v18 + v21 - 160);
        v47 = *(v18 + v21 - 128);
        v160 = *(v18 + v21 - 144);
        *v161 = v47;
        v159 = v46;
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v161[16], *(v18 + v21 - 112), *(v18 + v21 - 104), (*(v18 + v21 - 104) - *(v18 + v21 - 112)) >> 2);
        std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v163, *(v18 + v21 - 88), *(v18 + v21 - 80), (*(v18 + v21 - 80) - *(v18 + v21 - 88)) >> 3);
      }

      v57 = *(v18 + v21 - 64);
      v58 = *(v18 + v21 - 48);
      v59 = *(v18 + v21 - 32);
      *&v167[12] = *(v18 + v21 - 20);
      v166 = v58;
      *v167 = v59;
      v165 = v57;
      v61 = *(v18 + v21 + 48);
      v60 = *(v18 + v21 + 64);
      v62 = *(v18 + v21 + 32);
      *&v170[12] = *(v18 + v21 + 76);
      *&v169[16] = v61;
      *v170 = v60;
      *v169 = v62;
      v63 = *(v18 + v21 + 16);
      *v168 = *(v18 + v21);
      *&v168[16] = v63;
      v196[0] = 0;
      v196[8] = 0;
      v196[16] = 0;
      BYTE12(v197) = 0;
      LOBYTE(v198) = 0;
      v199 = 0uLL;
      *(&v198 + 1) = 0;
      v194 = 0u;
      memset(v195, 0, 27);
      *v200 = 5;
      v200[4] = 0;
      LODWORD(v193) = *v152;
      v64 = *&v209[v19];
      v65 = *&v209[v19 + 16];
      *&v195[16] = *&v209[v19 + 32];
      *v195 = v65;
      v194 = v64;
      v66 = a8;
      if (v21 != 248)
      {
        v66 = 0;
      }

      v195[24] = v66;
      v67 = a9;
      if (v21 != 248)
      {
        v67 = 0;
      }

      v195[26] = v67;
      v68 = a10;
      if (v21 == 248)
      {
        v69 = a11;
      }

      else
      {
        v69 = 1;
      }

      if (v21 != 248)
      {
        v68 = 1;
      }

      *v196 = v68;
      v196[8] = v69;
      std::string::operator=((a12 + 8), &v156);
      *(a12 + 32) = *&v157[8];
      if (&v155 == a12)
      {
        v72 = v159;
        *(a12 + 64) = *&v158[8];
        *(a12 + 80) = v72;
        v73 = *v161;
        *(a12 + 96) = v160;
        *(a12 + 112) = v73;
      }

      else
      {
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a12 + 40), *&v157[16], *&v157[24], 0xAAAAAAAAAAAAAAABLL * ((*&v157[24] - *&v157[16]) >> 3));
        v70 = v159;
        *(a12 + 64) = *&v158[8];
        *(a12 + 80) = v70;
        v71 = *v161;
        *(a12 + 96) = v160;
        *(a12 + 112) = v71;
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a12 + 128), *&v161[16], v162, (v162 - *&v161[16]) >> 2);
        std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>((a12 + 152), v163, *(&v163 + 1), (*(&v163 + 1) - v163) >> 3);
      }

      v74 = v166;
      *(a12 + 176) = v165;
      *(a12 + 192) = v74;
      *(a12 + 208) = *v167;
      *(a12 + 220) = *&v167[12];
      v75 = *&v169[16];
      *(a12 + 272) = *v169;
      *(a12 + 288) = v75;
      *(a12 + 304) = *v170;
      *(a12 + 316) = *&v170[12];
      v76 = *&v168[16];
      *v148 = *v168;
      *(a12 + 256) = v76;
      *v148 = *(a1 + 60);
      ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>::ZinConvValidator(&v171, v153, &v155, &v193);
      ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>::Validate(&v171, v154);
      v180 = v154;
      std::vector<ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>>::__destroy_vector::operator()[abi:ne200100](&v180);
      v35 = v172.__r_.__value_.__r.__words[2];
      ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>::~ZinConvValidator(&v171);
      if (*(&v198 + 1))
      {
        *&v199 = *(&v198 + 1);
        operator delete(*(&v198 + 1));
      }

      v155 = &unk_1F1A2EAA0;
      if (v163)
      {
        *(&v163 + 1) = v163;
        operator delete(v163);
      }

      v54 = *&v161[16];
      if (*&v161[16])
      {
        *&v162 = *&v161[16];
LABEL_81:
        operator delete(v54);
      }

LABEL_82:
      v36 = &v155;
LABEL_83:
      ZinIrUnitInfo::~ZinIrUnitInfo(v36);
LABEL_84:
      v23 &= v35 == 0;
      ++v20;
      v18 = v212;
      v21 += 344;
      v19 += 40;
      LOBYTE(v24) = v23;
      v22 = 0uLL;
      if (v20 >= (799063683 * ((v213 - v212) >> 3)))
      {
        goto LABEL_162;
      }
    }

    if (v25 != 17)
    {
      if (v25 != 44)
      {
        goto LABEL_162;
      }

      v194 = 0uLL;
      *&v195[8] = 0;
      *v195 = 0;
      *&v195[16] = v22;
      *v196 = v22;
      *&v196[16] = -1;
      v197 = v22;
      v198 = v22;
      v199 = v22;
      *v200 = v22;
      *&v200[10] = v22;
      v193 = &unk_1F1A33FD0;
      v201 = v22;
      v202 = v22;
      v203 = 0;
      v204 = 0;
      v205 = 0;
      v207 = 0;
      v206 = 0;
      ZinIrPadUnitInfo::operator=(&v193, v18 + v21 - 240);
      LOBYTE(v183) = 0;
      v184 = 0;
      v185 = 0;
      v186 = 0;
      v187 = 0;
      v189 = 0;
      v190 = 0;
      v188 = 0;
      v181 = 0u;
      memset(v182, 0, 27);
      v191 = 5;
      v192 = 0;
      LODWORD(v180) = *v152;
      v37 = *&v209[v19 + 32];
      v38 = *&v209[v19 + 16];
      v181 = *&v209[v19];
      *&v182[1] = v37;
      v182[0] = v38;
      v39 = a8;
      if (v21 != 248)
      {
        v39 = 0;
      }

      BYTE8(v182[1]) = v39;
      v40 = a9;
      if (v21 != 248)
      {
        v40 = 0;
      }

      BYTE10(v182[1]) = v40;
      v41 = a10;
      if (v21 == 248)
      {
        v42 = a11;
      }

      else
      {
        v42 = 1;
      }

      if (v21 != 248)
      {
        v41 = 1;
      }

      v183 = v41;
      v184 = v42;
      ZinPadValidator<ZinIrPadUnitInfo,ZinIrTensorInfo>::ZinPadValidator(&v171, v153, &v193, &v180);
      ZinPadValidator<ZinIrPadUnitInfo,ZinIrTensorInfo>::Validate(&v171);
      v43 = v172.__r_.__value_.__r.__words[2];
      ZinPadValidator<ZinIrPadUnitInfo,ZinIrTensorInfo>::ZinPadValidator(&v155, v153, &v193, &v180);
      ZinPadValidator<ZinIrPadUnitInfo,ZinIrTensorInfo>::Validate(&v155);
      v44 = *v157;
      ZinPadValidator<ZinIrPadUnitInfo,ZinIrTensorInfo>::~ZinPadValidator(&v155);
      ZinPadValidator<ZinIrPadUnitInfo,ZinIrTensorInfo>::~ZinPadValidator(&v171);
      if (v188)
      {
        v189 = v188;
        operator delete(v188);
      }

      v193 = &unk_1F1A33FD0;
      if (v204)
      {
        v205 = v204;
        operator delete(v204);
      }

      v35 = v44 | v43;
      ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(&v193);
      goto LABEL_84;
    }

    v156 = 0uLL;
    *&v157[8] = 0;
    *v157 = 0;
    *&v157[16] = v22;
    *v158 = v22;
    *&v158[16] = -1;
    v155 = &unk_1F1A33F90;
    v159 = xmmword_1A75A34F0;
    LOBYTE(v160) = 0;
    LOBYTE(v163) = 0;
    std::string::operator=(&v156, (v18 + v21 - 232));
    *&v157[8] = *(v18 + v21 - 208);
    if ((v18 + v21 - 240) != &v155)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&v157[16], *(v18 + v21 - 200), *(v18 + v21 - 192), 0xAAAAAAAAAAAAAAABLL * ((*(v18 + v21 - 192) - *(v18 + v21 - 200)) >> 3));
    }

    *&v158[8] = *(v18 + v21 - 176);
    v159 = *(v18 + v21 - 160);
    std::__optional_storage_base<ZinIrDynamicInputViewData,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<ZinIrDynamicInputViewData,false> const&>(&v160, (v18 + v21 - 144));
    v196[0] = 0;
    v196[8] = 0;
    v196[16] = 0;
    BYTE12(v197) = 0;
    LOBYTE(v198) = 0;
    v199 = 0uLL;
    *(&v198 + 1) = 0;
    v194 = 0u;
    memset(v195, 0, 27);
    *v200 = 5;
    v200[4] = 0;
    LODWORD(v193) = *v152;
    v48 = *&v209[v19 + 32];
    v49 = *&v209[v19 + 16];
    v194 = *&v209[v19];
    *&v195[16] = v48;
    *v195 = v49;
    v50 = a8;
    if (v21 != 248)
    {
      v50 = 0;
    }

    v195[24] = v50;
    v51 = a9;
    if (v21 != 248)
    {
      v51 = 0;
    }

    v195[26] = v51;
    v52 = a10;
    if (v21 == 248)
    {
      v53 = a11;
    }

    else
    {
      v53 = 1;
    }

    if (v21 != 248)
    {
      v52 = 1;
    }

    *v196 = v52;
    v196[8] = v53;
    ZinInputViewValidator<ZinIrInputViewUnitInfo,ZinIrTensorInfo>::ZinInputViewValidator(&v171, v153, &v155, &v193);
    ZinInputViewValidator<ZinIrInputViewUnitInfo,ZinIrTensorInfo>::Validate(&v171);
    v35 = v172.__r_.__value_.__r.__words[2];
    ZinInputViewValidator<ZinIrInputViewUnitInfo,ZinIrTensorInfo>::~ZinInputViewValidator(&v171);
    if (*(&v198 + 1))
    {
      *&v199 = *(&v198 + 1);
      operator delete(*(&v198 + 1));
    }

    v155 = &unk_1F1A33F90;
    if (v163 != 1)
    {
      goto LABEL_82;
    }

    if (SBYTE7(v162) < 0)
    {
      operator delete(*&v161[8]);
    }

    if ((v161[7] & 0x80000000) == 0)
    {
      goto LABEL_82;
    }

    v54 = v160;
    goto LABEL_81;
  }

  v77 = v215;
  if (v216 == v215)
  {
    goto LABEL_161;
  }

  v78 = 0;
  v79 = 0;
  v149 = (a12 + 240);
  v80 = 248;
  v81 = 0uLL;
  v24 = 1;
  do
  {
    v82 = *(v77 + v80 - 248);
    if (v82 <= 31)
    {
      if (v82 == 1)
      {
        v156 = 0uLL;
        *&v157[8] = 0;
        *v157 = 0;
        *&v157[16] = v81;
        *v158 = v81;
        *&v158[16] = -1;
        *&v159 = 0;
        DWORD2(v159) = -1;
        *&v160 = -1;
        DWORD2(v160) = -1;
        *v161 = -1;
        *&v161[8] = v81;
        v162 = v81;
        v163 = v81;
        v164 = 0;
        LODWORD(v165) = 1;
        BYTE4(v165) = 0;
        WORD4(v165) = 0;
        LODWORD(v166) = -1;
        *(&v166 + 1) = -1;
        *v167 = -1;
        *&v167[8] = -1;
        *&v167[16] = 0x3F80000000000006;
        *&v167[24] = 0;
        v155 = &unk_1F1A33E10;
        *v168 = 0;
        v168[4] = 0;
        *&v168[8] = vdupq_n_s64(1uLL);
        *&v168[24] = 1;
        *v169 = 1;
        *&v99 = 0x100000001;
        *(&v99 + 1) = 0x100000001;
        *&v169[8] = v99;
        *&v169[24] = 0x100000001;
        memset(v170, 0, 24);
        *&v170[24] = 1;
        std::string::operator=(&v156, (v77 + v80 - 232));
        *&v157[8] = *(v77 + v80 - 208);
        if ((v77 + v80 - 240) == &v155)
        {
          *&v158[8] = *(v77 + v80 - 176);
          v113 = *(v77 + v80 - 160);
          v114 = *(v77 + v80 - 128);
          v160 = *(v77 + v80 - 144);
          *v161 = v114;
          v159 = v113;
        }

        else
        {
          std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&v157[16], *(v77 + v80 - 200), *(v77 + v80 - 192), 0xAAAAAAAAAAAAAAABLL * ((*(v77 + v80 - 192) - *(v77 + v80 - 200)) >> 3));
          *&v158[8] = *(v77 + v80 - 176);
          v100 = *(v77 + v80 - 160);
          v101 = *(v77 + v80 - 128);
          v160 = *(v77 + v80 - 144);
          *v161 = v101;
          v159 = v100;
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v161[16], *(v77 + v80 - 112), *(v77 + v80 - 104), (*(v77 + v80 - 104) - *(v77 + v80 - 112)) >> 2);
          std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v163, *(v77 + v80 - 88), *(v77 + v80 - 80), (*(v77 + v80 - 80) - *(v77 + v80 - 88)) >> 3);
        }

        v115 = *(v77 + v80 - 64);
        v116 = *(v77 + v80 - 48);
        v117 = *(v77 + v80 - 32);
        *&v167[12] = *(v77 + v80 - 20);
        v166 = v116;
        *v167 = v117;
        v165 = v115;
        v119 = *(v77 + v80 + 48);
        v118 = *(v77 + v80 + 64);
        v120 = *(v77 + v80 + 32);
        *&v170[12] = *(v77 + v80 + 76);
        *&v169[16] = v119;
        *v170 = v118;
        *v169 = v120;
        v121 = *(v77 + v80 + 16);
        *v168 = *(v77 + v80);
        *&v168[16] = v121;
        v196[0] = 0;
        v196[8] = 0;
        v196[16] = 0;
        BYTE12(v197) = 0;
        LOBYTE(v198) = 0;
        v199 = 0uLL;
        *(&v198 + 1) = 0;
        v194 = 0u;
        memset(v195, 0, 27);
        *v200 = 5;
        v200[4] = 0;
        LODWORD(v193) = *a3;
        v122 = *&v209[v78];
        v123 = *&v209[v78 + 16];
        *&v195[16] = *&v209[v78 + 32];
        *v195 = v123;
        v194 = v122;
        v124 = a8;
        if (v80 != 248)
        {
          v124 = 0;
        }

        v195[24] = v124;
        v125 = a9;
        if (v80 != 248)
        {
          v125 = 0;
        }

        v195[26] = v125;
        v126 = a10;
        if (v80 == 248)
        {
          v127 = a11;
        }

        else
        {
          v126 = 1;
          v127 = 1;
        }

        *v196 = v126;
        v196[8] = v127;
        std::string::operator=((a12 + 8), &v156);
        *(a12 + 32) = *&v157[8];
        if (&v155 == a12)
        {
          v130 = v159;
          *(a12 + 64) = *&v158[8];
          *(a12 + 80) = v130;
          v131 = *v161;
          *(a12 + 96) = v160;
          *(a12 + 112) = v131;
        }

        else
        {
          std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a12 + 40), *&v157[16], *&v157[24], 0xAAAAAAAAAAAAAAABLL * ((*&v157[24] - *&v157[16]) >> 3));
          v128 = v159;
          *(a12 + 64) = *&v158[8];
          *(a12 + 80) = v128;
          v129 = *v161;
          *(a12 + 96) = v160;
          *(a12 + 112) = v129;
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a12 + 128), *&v161[16], v162, (v162 - *&v161[16]) >> 2);
          std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>((a12 + 152), v163, *(&v163 + 1), (*(&v163 + 1) - v163) >> 3);
        }

        v132 = v166;
        *(a12 + 176) = v165;
        *(a12 + 192) = v132;
        *(a12 + 208) = *v167;
        *(a12 + 220) = *&v167[12];
        v133 = *&v169[16];
        *(a12 + 272) = *v169;
        *(a12 + 288) = v133;
        *(a12 + 304) = *v170;
        *(a12 + 316) = *&v170[12];
        v134 = *&v168[16];
        *v149 = *v168;
        *(a12 + 256) = v134;
        *v149 = *(a1 + 60);
        ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>::ZinConvValidator(&v171, v153, &v155, &v193);
        ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>::Validate(&v171, v208);
        v180 = v208;
        std::vector<ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>>::__destroy_vector::operator()[abi:ne200100](&v180);
        v89 = v172.__r_.__value_.__r.__words[2] == 0;
        ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>::~ZinConvValidator(&v171);
        if (*(&v198 + 1))
        {
          *&v199 = *(&v198 + 1);
          operator delete(*(&v198 + 1));
        }

        v155 = &unk_1F1A2EAA0;
        if (v163)
        {
          *(&v163 + 1) = v163;
          operator delete(v163);
        }

        v90 = *&v161[16];
        if (!*&v161[16])
        {
          goto LABEL_154;
        }

        *&v162 = *&v161[16];
      }

      else
      {
        if (v82 != 17)
        {
          goto LABEL_157;
        }

        v156 = 0uLL;
        *&v157[8] = 0;
        *v157 = 0;
        *&v157[16] = v81;
        *v158 = v81;
        *&v158[16] = -1;
        v155 = &unk_1F1A33F90;
        v159 = xmmword_1A75A34F0;
        LOBYTE(v160) = 0;
        LOBYTE(v163) = 0;
        std::string::operator=(&v156, (v77 + v80 - 232));
        *&v157[8] = *(v77 + v80 - 208);
        if ((v77 + v80 - 240) != &v155)
        {
          std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&v157[16], *(v77 + v80 - 200), *(v77 + v80 - 192), 0xAAAAAAAAAAAAAAABLL * ((*(v77 + v80 - 192) - *(v77 + v80 - 200)) >> 3));
        }

        *&v158[8] = *(v77 + v80 - 176);
        v159 = *(v77 + v80 - 160);
        std::__optional_storage_base<ZinIrDynamicInputViewData,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<ZinIrDynamicInputViewData,false> const&>(&v160, (v77 + v80 - 144));
        v196[0] = 0;
        v196[8] = 0;
        v196[16] = 0;
        BYTE12(v197) = 0;
        LOBYTE(v198) = 0;
        v199 = 0uLL;
        *(&v198 + 1) = 0;
        v194 = 0u;
        memset(v195, 0, 27);
        *v200 = 5;
        v200[4] = 0;
        LODWORD(v193) = *a3;
        v83 = *&v209[v78 + 32];
        v84 = *&v209[v78 + 16];
        v194 = *&v209[v78];
        *&v195[16] = v83;
        *v195 = v84;
        v85 = a8;
        if (v80 != 248)
        {
          v85 = 0;
        }

        v195[24] = v85;
        v86 = a9;
        if (v80 != 248)
        {
          v86 = 0;
        }

        v195[26] = v86;
        v87 = a10;
        if (v80 == 248)
        {
          v88 = a11;
        }

        else
        {
          v87 = 1;
          v88 = 1;
        }

        *v196 = v87;
        v196[8] = v88;
        ZinInputViewValidator<ZinIrInputViewUnitInfo,ZinIrTensorInfo>::ZinInputViewValidator(&v171, v153, &v155, &v193);
        ZinInputViewValidator<ZinIrInputViewUnitInfo,ZinIrTensorInfo>::Validate(&v171);
        v89 = v172.__r_.__value_.__r.__words[2] == 0;
        ZinInputViewValidator<ZinIrInputViewUnitInfo,ZinIrTensorInfo>::~ZinInputViewValidator(&v171);
        if (*(&v198 + 1))
        {
          *&v199 = *(&v198 + 1);
          operator delete(*(&v198 + 1));
        }

        v155 = &unk_1F1A33F90;
        if (v163 != 1)
        {
          goto LABEL_154;
        }

        if (SBYTE7(v162) < 0)
        {
          operator delete(*&v161[8]);
        }

        if ((v161[7] & 0x80000000) == 0)
        {
          goto LABEL_154;
        }

        v90 = v160;
      }

      operator delete(v90);
LABEL_154:
      v24 &= v89;
      v112 = &v155;
LABEL_155:
      ZinIrUnitInfo::~ZinIrUnitInfo(v112);
      goto LABEL_156;
    }

    if (v82 == 32)
    {
      v194 = 0uLL;
      *v195 = 0;
      *&v195[16] = v81;
      *v196 = v81;
      *&v196[16] = -1;
      v193 = &unk_1F1A33EC8;
      *&v197 = 0x100000001;
      DWORD2(v197) = 1;
      *&v195[8] = 31;
      v171 = &unk_1F1A2EA30;
      v102 = (v77 + v80 - 232);
      if (*(v77 + v80 - 209) < 0)
      {
        std::string::__init_copy_ctor_external(&v172, *v102, *(v77 + v80 - 224));
      }

      else
      {
        v103 = *v102;
        v172.__r_.__value_.__r.__words[2] = *(v77 + v80 - 216);
        *&v172.__r_.__value_.__l.__data_ = v103;
      }

      v104 = v77 + v80;
      v173 = *(v104 - 208);
      *v175 = 0;
      v176 = 0;
      __str = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&__str, *(v104 - 200), *(v104 - 192), 0xAAAAAAAAAAAAAAABLL * ((*(v104 - 192) - *(v104 - 200)) >> 3));
      v177 = *(v104 - 176);
      v171 = &unk_1F1A33EC8;
      v178 = 0x100000001;
      v179 = 1;
      v173 = 31;
      std::string::operator=(&v194, &v172);
      *&v195[8] = v173;
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&v195[16], __str, *v175, 0xAAAAAAAAAAAAAAABLL * ((*v175 - __str) >> 3));
      *&v196[8] = v177;
      *&v197 = v178;
      DWORD2(v197) = v179;
      ZinIrUnitInfo::~ZinIrUnitInfo(&v171);
      v158[0] = 0;
      v158[8] = 0;
      v158[16] = 0;
      BYTE12(v159) = 0;
      LOBYTE(v160) = 0;
      *v161 = 0;
      *&v161[8] = 0;
      *(&v160 + 1) = 0;
      v156 = 0u;
      memset(v157, 0, 27);
      *&v161[16] = 5;
      v161[20] = 0;
      LODWORD(v155) = *a3;
      v106 = *&v209[v78];
      v105 = *&v209[v78 + 16];
      *&v157[16] = *&v209[v78 + 32];
      v156 = v106;
      *v157 = v105;
      v107 = a8;
      if (v80 != 248)
      {
        v107 = 0;
      }

      v157[24] = v107;
      v108 = a9;
      if (v80 != 248)
      {
        v108 = 0;
      }

      v157[26] = v108;
      v109 = a10;
      if (v80 == 248)
      {
        v110 = a11;
      }

      else
      {
        v109 = 1;
        v110 = 1;
      }

      *v158 = v109;
      v158[8] = v110;
      ZinPixelUnshuffleValidator<ZinIrPixelShuffleUnitInfo,ZinIrTensorInfo>::ZinPixelUnshuffleValidator(&v171, v153, &v193, &v155);
      ZinPixelUnshuffleValidator<ZinIrPixelShuffleUnitInfo,ZinIrTensorInfo>::Validate(&v171);
      v111 = v172.__r_.__value_.__r.__words[2] == 0;
      ZinPixelUnshuffleValidator<ZinIrPixelShuffleUnitInfo,ZinIrTensorInfo>::~ZinPixelUnshuffleValidator(&v171);
      if (*(&v160 + 1))
      {
        *v161 = *(&v160 + 1);
        operator delete(*(&v160 + 1));
      }

      v24 &= v111;
      v112 = &v193;
      goto LABEL_155;
    }

    if (v82 != 44)
    {
      goto LABEL_157;
    }

    v194 = 0uLL;
    *&v195[8] = 0;
    *v195 = 0;
    *&v195[16] = v81;
    *v196 = v81;
    *&v196[16] = -1;
    v197 = v81;
    v198 = v81;
    v199 = v81;
    *v200 = v81;
    *&v200[10] = v81;
    v193 = &unk_1F1A33FD0;
    v201 = v81;
    v202 = v81;
    v203 = 0;
    v204 = 0;
    v205 = 0;
    v207 = 0;
    v206 = 0;
    ZinIrPadUnitInfo::operator=(&v193, v77 + v80 - 240);
    LOBYTE(v183) = 0;
    v184 = 0;
    v185 = 0;
    v186 = 0;
    v187 = 0;
    v189 = 0;
    v190 = 0;
    v188 = 0;
    v181 = 0u;
    memset(v182, 0, 27);
    v191 = 5;
    v192 = 0;
    LODWORD(v180) = *a3;
    v91 = *&v209[v78 + 32];
    v92 = *&v209[v78 + 16];
    v181 = *&v209[v78];
    *&v182[1] = v91;
    v182[0] = v92;
    v93 = a8;
    if (v80 != 248)
    {
      v93 = 0;
    }

    BYTE8(v182[1]) = v93;
    v94 = a9;
    if (v80 != 248)
    {
      v94 = 0;
    }

    BYTE10(v182[1]) = v94;
    v95 = a10;
    if (v80 == 248)
    {
      v96 = a11;
    }

    else
    {
      v95 = 1;
      v96 = 1;
    }

    v183 = v95;
    v184 = v96;
    ZinPadValidator<ZinIrPadUnitInfo,ZinIrTensorInfo>::ZinPadValidator(&v171, v153, &v193, &v180);
    ZinPadValidator<ZinIrPadUnitInfo,ZinIrTensorInfo>::Validate(&v171);
    v97 = v172.__r_.__value_.__r.__words[2];
    ZinPadValidator<ZinIrPadUnitInfo,ZinIrTensorInfo>::ZinPadValidator(&v155, v153, &v193, &v180);
    ZinPadValidator<ZinIrPadUnitInfo,ZinIrTensorInfo>::Validate(&v155);
    v98 = (*v157 | v97) == 0;
    ZinPadValidator<ZinIrPadUnitInfo,ZinIrTensorInfo>::~ZinPadValidator(&v155);
    ZinPadValidator<ZinIrPadUnitInfo,ZinIrTensorInfo>::~ZinPadValidator(&v171);
    if (v188)
    {
      v189 = v188;
      operator delete(v188);
    }

    v193 = &unk_1F1A33FD0;
    if (v204)
    {
      v205 = v204;
      operator delete(v204);
    }

    v24 &= v98;
    ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(&v193);
LABEL_156:
    v81 = 0uLL;
LABEL_157:
    ++v79;
    v77 = v215;
    v135 = v216;
    v78 += 40;
    v80 += 344;
  }

  while (0x82FA0BE82FA0BE83 * ((v216 - v215) >> 3) > v79);
  if (*(v216 - 344) == 1)
  {
    std::string::operator=((a12 + 8), (v216 - 328));
    *(a12 + 32) = *(v135 - 304);
    if (v135 - 336 == a12)
    {
      *(a12 + 64) = *(v135 - 272);
      v139 = *(v135 - 256);
      v140 = *(v135 - 224);
      *(a12 + 96) = *(v135 - 240);
      *(a12 + 112) = v140;
      *(a12 + 80) = v139;
    }

    else
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a12 + 40), *(v135 - 296), *(v135 - 288), 0xAAAAAAAAAAAAAAABLL * ((*(v135 - 288) - *(v135 - 296)) >> 3));
      *(a12 + 64) = *(v135 - 272);
      v136 = *(v135 - 256);
      v137 = *(v135 - 224);
      *(a12 + 96) = *(v135 - 240);
      *(a12 + 112) = v137;
      *(a12 + 80) = v136;
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a12 + 128), *(v135 - 208), *(v135 - 200), (*(v135 - 200) - *(v135 - 208)) >> 2);
      std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>((a12 + 152), *(v135 - 184), *(v135 - 176), (*(v135 - 176) - *(v135 - 184)) >> 3);
    }

    v141 = *(v135 - 160);
    v142 = *(v135 - 144);
    v143 = *(v135 - 128);
    *(a12 + 220) = *(v135 - 116);
    *(a12 + 192) = v142;
    *(a12 + 208) = v143;
    *(a12 + 176) = v141;
    v145 = *(v135 - 48);
    v144 = *(v135 - 32);
    v146 = *(v135 - 64);
    *(a12 + 316) = *(v135 - 20);
    *(a12 + 288) = v145;
    *(a12 + 304) = v144;
    *(a12 + 272) = v146;
    v147 = *(v135 - 80);
    *v149 = *(v135 - 96);
    *(a12 + 256) = v147;
    goto LABEL_162;
  }

LABEL_161:
  LOBYTE(v24) = 0;
LABEL_162:
  if (v209)
  {
    v210 = v209;
    operator delete(v209);
  }

  v171 = &v212;
  std::vector<LargeStrideConvPoolDecomposedDesc>::__destroy_vector::operator()[abi:ne200100](&v171);
  v171 = &v215;
  std::vector<ZinConvLargeStrides::ConvLargeStrideDecomposedDesc>::__destroy_vector::operator()[abi:ne200100](&v171);
  return v24 & 1;
}