std::string *RIO_MTLX::FileSearchPath::find@<X0>(RIO_MTLX::FileSearchPath *this@<X0>, __int128 **a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(this + 1);
  v6 = *this;
  v7 = *a2;
  v8 = a2[1];
  if (*this == v5 || v7 == v8)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    result = std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a3, v7, v8, 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3));
    v11 = a2 + 3;
LABEL_14:
    *(a3 + 24) = *v11;
    return result;
  }

  v11 = a2 + 3;
  if (*(a2 + 6))
  {
LABEL_13:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    result = std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a3, v7, v8, 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3));
    goto LABEL_14;
  }

  while (1)
  {
    RIO_MTLX::FilePath::operator/(v6, a2, a3);
    result = RIO_MTLX::FilePath::exists(a3);
    if (result)
    {
      return result;
    }

    v12 = a3;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
    v6 += 32;
    if (v6 == v5)
    {
      v7 = *a2;
      v8 = a2[1];
      goto LABEL_13;
    }
  }
}

void sub_247550064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL RIO_MTLX::TreeIterator::operator!=(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(a2 + 16);
  if (v2 - v3 != *(a2 + 24) - v4)
  {
    return 1;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4 || *(v3 + 2) != v4[2])
    {
      return 1;
    }

    v3 += 24;
    v4 += 3;
  }

  return *(a1 + 40) != *(a2 + 40);
}

uint64_t *std::vector<RIO_MTLX::FilePath>::__init_with_size[abi:ne200100]<RIO_MTLX::FilePath*,RIO_MTLX::FilePath*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<RIO_MTLX::FilePath>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_247550158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<RIO_MTLX::FilePath>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

realityio::BuilderRegistry *realityio::BuilderRegistry::BuilderRegistry(realityio::BuilderRegistry *this)
{
  v43[4] = *MEMORY[0x277D85DE8];
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 9) = 0;
  *(this + 8) = this + 72;
  *(this + 14) = 1065353216;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 15) = 0;
  *(this + 14) = this + 120;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  v43[0] = &unk_28594D8D0;
  v43[3] = v43;
  realityio::BuilderRegistry::registerBuilder(this, v43);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v43);
  v42[0] = &unk_28594D950;
  v42[3] = v42;
  realityio::BuilderRegistry::registerBuilder(this, v42);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v42);
  v41[0] = &unk_28594DA20;
  v41[3] = v41;
  realityio::BuilderRegistry::registerBuilder(this, v41);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v41);
  v40[0] = &unk_28594DAF0;
  v40[3] = v40;
  realityio::BuilderRegistry::registerBuilder(this, v40);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v40);
  v39[0] = &unk_28594DBC0;
  v39[3] = v39;
  realityio::BuilderRegistry::registerBuilder(this, v39);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v39);
  v38[0] = &unk_28594DC90;
  v38[3] = v38;
  realityio::BuilderRegistry::registerBuilder(this, v38);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v38);
  v37[0] = &unk_28594DD10;
  v37[3] = v37;
  realityio::BuilderRegistry::registerBuilder(this, v37);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v37);
  v36[0] = &unk_28594DD90;
  v36[3] = v36;
  realityio::BuilderRegistry::registerBuilder(this, v36);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v36);
  v35[0] = &unk_28594DE60;
  v35[3] = v35;
  realityio::BuilderRegistry::registerBuilder(this, v35);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v35);
  v34[0] = &unk_28594DF30;
  v34[3] = v34;
  realityio::BuilderRegistry::registerBuilder(this, v34);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v34);
  v33[0] = &unk_28594E000;
  v33[3] = v33;
  realityio::BuilderRegistry::registerBuilder(this, v33);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v33);
  v32[0] = &unk_28594E0D0;
  v32[3] = v32;
  realityio::BuilderRegistry::registerBuilder(this, v32);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v32);
  v31[0] = &unk_28594E150;
  v31[3] = v31;
  realityio::BuilderRegistry::registerBuilder(this, v31);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v31);
  v30[0] = &unk_28594E1D0;
  v30[3] = v30;
  realityio::BuilderRegistry::registerBuilder(this, v30);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v30);
  v29[0] = &unk_28594E250;
  v29[3] = v29;
  realityio::BuilderRegistry::registerBuilder(this, v29);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v29);
  v28[0] = &unk_28594E2D0;
  v28[3] = v28;
  realityio::BuilderRegistry::registerBuilder(this, v28);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v28);
  v27[0] = &unk_28594E3A0;
  v27[3] = v27;
  realityio::BuilderRegistry::registerBuilder(this, v27);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v27);
  v26[0] = &unk_28594E470;
  v26[3] = v26;
  realityio::BuilderRegistry::registerBuilder(this, v26);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v26);
  v25[0] = &unk_28594E540;
  v25[3] = v25;
  realityio::BuilderRegistry::registerBuilder(this, v25);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v25);
  v24[0] = &unk_28594E610;
  v24[3] = v24;
  realityio::BuilderRegistry::registerBuilder(this, v24);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v24);
  v23[0] = &unk_28594E6E0;
  v23[3] = v23;
  realityio::BuilderRegistry::registerBuilder(this, v23);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v23);
  v22[0] = &unk_28594E7B0;
  v22[3] = v22;
  realityio::BuilderRegistry::registerBuilder(this, v22);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v22);
  v21[0] = &unk_28594E880;
  v21[3] = v21;
  realityio::BuilderRegistry::registerBuilder(this, v21);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v21);
  v20[0] = &unk_28594E950;
  v20[3] = v20;
  realityio::BuilderRegistry::registerBuilder(this, v20);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v20);
  v19[0] = &unk_28594E9D0;
  v19[3] = v19;
  realityio::BuilderRegistry::registerBuilder(this, v19);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v19);
  v18[0] = &unk_28594EA50;
  v18[3] = v18;
  realityio::BuilderRegistry::registerBuilder(this, v18);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v18);
  v17[0] = &unk_28594EAD0;
  v17[3] = v17;
  realityio::BuilderRegistry::registerBuilder(this, v17);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v17);
  v16[0] = &unk_28594EBA0;
  v16[3] = v16;
  realityio::BuilderRegistry::registerBuilder(this, v16);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v16);
  v15[0] = &unk_28594EC70;
  v15[3] = v15;
  realityio::BuilderRegistry::registerBuilder(this, v15);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v15);
  v14[0] = &unk_28594ED40;
  v14[3] = v14;
  realityio::BuilderRegistry::registerBuilder(this, v14);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v14);
  v13[0] = &unk_28594EE10;
  v13[3] = v13;
  realityio::BuilderRegistry::registerBuilder(this, v13);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v13);
  v12[0] = &unk_28594EE90;
  v12[3] = v12;
  realityio::BuilderRegistry::registerBuilder(this, v12);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v12);
  v11[0] = &unk_28594EF10;
  v11[3] = v11;
  realityio::BuilderRegistry::registerBuilder(this, v11);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v11);
  v10[0] = &unk_28594EF90;
  v10[3] = v10;
  realityio::BuilderRegistry::registerBuilder(this, v10);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v10);
  v9[0] = &unk_28594F010;
  v9[3] = v9;
  realityio::BuilderRegistry::registerBuilder(this, v9);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v9);
  v8[0] = &unk_28594F0E0;
  v8[3] = v8;
  realityio::BuilderRegistry::registerBuilder(this, v8);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v8);
  v7[0] = &unk_28594F1B0;
  v7[3] = v7;
  realityio::BuilderRegistry::registerBuilder(this, v7);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v7);
  v6[0] = &unk_28594F280;
  v6[3] = v6;
  realityio::BuilderRegistry::registerBuilder(this, v6);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v6);
  v5[0] = &unk_28594F300;
  v5[3] = v5;
  realityio::BuilderRegistry::registerBuilder(this, v5);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v5);
  v4[0] = &unk_28594F380;
  v4[3] = v4;
  realityio::BuilderRegistry::registerBuilder(this, v4);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v4);
  v3[0] = &unk_28594F400;
  v3[3] = v3;
  realityio::BuilderRegistry::registerBuilder(this, v3);
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v3);
  return this;
}

void sub_247550B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, char a10)
{
  std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](&a10);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>>>::destroy(v12, *(v10 + 120));
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>>>::destroy(v11, *(v10 + 72));
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>>>::~__hash_table((v10 + 24));
  a9 = v10;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t realityio::BuilderRegistry::registerBuilder(uint64_t *a1, uint64_t a2)
{
  v16[18] = *MEMORY[0x277D85DE8];
  if (!*(a2 + 24))
  {
    return 0;
  }

  v16[0] = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  v4 = *(a2 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v4 + 48))(&v14);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v16);
  (*(*v14 + 24))(&v13);
  (*(*v14 + 32))(&v11);
  v5 = *a1;
  v6 = a1[1];
  if (*a1 == v6)
  {
LABEL_9:
    operator new();
  }

  while (1)
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *v8 ^ v13;
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      if (v9 < 8)
      {
        break;
      }

      goto LABEL_8;
    }

    if ((*v8 ^ v13) < 8)
    {
      break;
    }

LABEL_8:
    v5 += 16;
    if (v5 == v6)
    {
      goto LABEL_9;
    }
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  return 0;
}

void sub_247551754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void **a20)
{
  v22 = 136;
  while (1)
  {
    v23 = *(v20 + v22);
    if ((v23 & 7) != 0)
    {
      atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v22 -= 8;
    if (v22 == -8)
    {
      __cxa_guard_abort(&_MergedGlobals_13);
      a20 = &a10;
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&a20);
      if (a14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a14);
      }

      if (a16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a16);
      }

      if ((a17 & 7) != 0)
      {
        atomic_fetch_add_explicit((a17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (a19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a19);
      }

      _Unwind_Resume(a1);
    }
  }
}

uint64_t realityio::BuilderRegistry::unregisterBuilder(pxrInternal__aapl__pxrReserved__::TfToken *a1, void *__s1)
{
  v3 = a1;
  v4 = *a1;
  if (*(a1 + 1) != *a1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = v4 + v5;
      v8 = *(v4 + v5);
      v9 = *(v7 + 8);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = *v8 & 0xFFFFFFFFFFFFFFF8;
      if (v10)
      {
        EmptyString = v10 + 16;
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
      }

      v12 = *(__s1 + 23);
      v13 = __s1;
      if ((v12 & 0x8000000000000000) != 0)
      {
        v13 = *__s1;
        v12 = __s1[1];
      }

      v14 = *(EmptyString + 23);
      if (v14 >= 0)
      {
        v15 = *(EmptyString + 23);
      }

      else
      {
        v15 = *(EmptyString + 8);
      }

      if (v14 >= 0)
      {
        v16 = EmptyString;
      }

      else
      {
        v16 = *EmptyString;
      }

      if (v15 >= v12)
      {
        v17 = v12;
      }

      else
      {
        v17 = v15;
      }

      a1 = memcmp(v13, v16, v17);
      if (v15 == v12 && a1 == 0)
      {
        v24 = *(v3 + 1);
        v25 = (*v3 + v5);
        v26 = v25 + 1;
        if (v25 + 1 != v24)
        {
          do
          {
            v27 = *v26;
            *v26 = 0;
            *(v26 + 1) = 0;
            v28 = *(v26 - 1);
            *(v26 - 1) = v27;
            if (v28)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v28);
            }

            ++v26;
          }

          while (v26 != v24);
          v24 = *(v3 + 1);
          v25 = v26 - 1;
        }

        while (v24 != v25)
        {
          v29 = *(v24 - 1);
          if (v29)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v29);
          }

          --v24;
        }

        *(v3 + 1) = v25;
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }

        return 1;
      }

      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      ++v6;
      v4 = *v3;
      v5 += 16;
    }

    while (v6 < (*(v3 + 1) - *v3) >> 4);
  }

  MEMORY[0x24C1A5E00](&v42, __s1);
  v19 = v42;
  v20 = *(v3 + 32);
  if (!*&v20)
  {
    goto LABEL_83;
  }

  v21 = bswap64(0x9E3779B97F4A7C55 * (v42 & 0xFFFFFFFFFFFFFFF8));
  v22 = vcnt_s8(v20);
  v22.i16[0] = vaddlv_u8(v22);
  if (v22.u32[0] > 1uLL)
  {
    v23 = v21;
    if (v21 >= *&v20)
    {
      v23 = v21 % *&v20;
    }
  }

  else
  {
    v23 = v21 & (*&v20 - 1);
  }

  v30 = *(v3 + 3);
  v31 = *(v30 + 8 * v23);
  if (!v31)
  {
    goto LABEL_83;
  }

  v32 = *v31;
  if (!*v31)
  {
    goto LABEL_83;
  }

  v33 = *&v20 - 1;
  while (1)
  {
    v34 = v32[1];
    if (v34 == v21)
    {
      break;
    }

    if (v22.u32[0] > 1uLL)
    {
      if (v34 >= *&v20)
      {
        v34 %= *&v20;
      }
    }

    else
    {
      v34 &= v33;
    }

    if (v34 != v23)
    {
      goto LABEL_83;
    }

LABEL_53:
    v32 = *v32;
    if (!v32)
    {
      goto LABEL_83;
    }
  }

  if ((v32[2] ^ v42) >= 8)
  {
    goto LABEL_53;
  }

  v35 = *v32;
  if (v22.u32[0] > 1uLL)
  {
    if (v21 >= *&v20)
    {
      v21 %= *&v20;
    }
  }

  else
  {
    v21 &= v33;
  }

  v36 = *(v30 + 8 * v21);
  do
  {
    v37 = v36;
    v36 = *v36;
  }

  while (v36 != v32);
  if (v37 == (v3 + 40))
  {
    goto LABEL_72;
  }

  v38 = v37[1];
  if (v22.u32[0] > 1uLL)
  {
    if (v38 >= *&v20)
    {
      v38 %= *&v20;
    }
  }

  else
  {
    v38 &= v33;
  }

  if (v38 == v21)
  {
LABEL_74:
    if (v35)
    {
      v39 = v35[1];
      goto LABEL_76;
    }
  }

  else
  {
LABEL_72:
    if (!v35)
    {
      goto LABEL_73;
    }

    v39 = v35[1];
    if (v22.u32[0] > 1uLL)
    {
      v40 = v35[1];
      if (v39 >= *&v20)
      {
        v40 = v39 % *&v20;
      }
    }

    else
    {
      v40 = v39 & v33;
    }

    if (v40 != v21)
    {
LABEL_73:
      *(v30 + 8 * v21) = 0;
      v35 = *v32;
      goto LABEL_74;
    }

LABEL_76:
    if (v22.u32[0] > 1uLL)
    {
      if (v39 >= *&v20)
      {
        v39 %= *&v20;
      }
    }

    else
    {
      v39 &= v33;
    }

    if (v39 != v21)
    {
      *(*(v3 + 3) + 8 * v39) = v37;
      v35 = *v32;
    }
  }

  *v37 = v35;
  *v32 = 0;
  --*(v3 + 6);
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>,void *>>>::operator()[abi:ne200100](1, v32);
  v19 = v42;
LABEL_83:
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return 1;
}

void sub_247551C54(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::builderIdentifierToken<realityio::AnimationSceneAssetBuilder>()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  operator new();
}

void anonymous namespace::builderIdentifierToken<realityio::EntityBuilder>()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  operator new();
}

void anonymous namespace::builderIdentifierToken<realityio::MaterialAssetBuilder>()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  operator new();
}

void anonymous namespace::builderIdentifierToken<realityio::InstancedEntityBuilder>()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  operator new();
}

void anonymous namespace::builderIdentifierToken<realityio::MeshAssetBuilder>()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  operator new();
}

void anonymous namespace::builderIdentifierToken<realityio::MeshComponentBuilder>()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  operator new();
}

void anonymous namespace::builderIdentifierToken<realityio::MeshModelDescriptorBuilder>()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  operator new();
}

void anonymous namespace::builderIdentifierToken<realityio::SkeletalAnimationAssetBuilder>()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  operator new();
}

void anonymous namespace::builderIdentifierToken<realityio::SkeletonPoseDefinitionBuilder>()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  operator new();
}

void anonymous namespace::builderIdentifierToken<realityio::SkeletalAnimationAggregationBuilder>()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  operator new();
}

void anonymous namespace::builderIdentifierToken<realityio::StageMetersPerUnitBuilder>()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  operator new();
}

void anonymous namespace::builderIdentifierToken<realityio::StageSceneLibraryAssetBuilder>()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  operator new();
}

void anonymous namespace::builderIdentifierToken<realityio::StageTimeCodeBuilder>()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  operator new();
}

void anonymous namespace::builderIdentifierToken<realityio::StageUpAxisBuilder>()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  operator new();
}

void anonymous namespace::builderIdentifierToken<realityio::TextureBuilder>()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  operator new();
}

void anonymous namespace::builderIdentifierToken<realityio::TransformAnimationAssetBuilder>()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  operator new();
}

void anonymous namespace::builderIdentifierToken<realityio::TransformAnimationAggregationBuilder>()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  operator new();
}

void anonymous namespace::builderIdentifierToken<realityio::TransformComponentBuilder>()
{
  v0 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  operator new();
}

void std::__shared_ptr_emplace<realityio::AnimationSceneAssetBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D380;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::EntityBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D3D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::MaterialAssetBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D420;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::InstancedEntityBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D470;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::MeshAssetBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D4C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::MeshComponentBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D510;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::MeshModelDescriptorBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D560;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::SkeletonPoseDefinitionBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D5B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::SkeletalAnimationAggregationBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D600;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::StageMetersPerUnitBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D650;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::StageSceneLibraryAssetBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D6A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::StageTimeCodeBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D6F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::StageUpAxisBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D740;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::TextureBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D790;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::TransformAnimationAssetBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D7E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::TransformAnimationAggregationBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D830;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::TransformComponentBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D880;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t *std::set<pxrInternal__aapl__pxrReserved__::TfToken>::set[abi:ne200100](uint64_t *result, uint64_t a2)
{
  qword_27EE52EA8 = 0;
  qword_27EE52EA0 = 0;
  qword_27EE52E98 = &qword_27EE52EA0;
  if (a2)
  {
    v2 = result;
    v3 = 0;
    v4 = &result[a2];
    v5 = &qword_27EE52EA0;
    while (v5 != &qword_27EE52EA0)
    {
      if (v3)
      {
        do
        {
          v6 = v3;
          v3 = *(v3 + 8);
        }

        while (v3);
      }

      else
      {
        v8 = &qword_27EE52EA0;
        do
        {
          v6 = v8[2];
          v9 = *v6 == v8;
          v8 = v6;
        }

        while (v9);
      }

      result = std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](&qword_27EE52E98, v6 + 4, v2);
      if (result)
      {
        if (!qword_27EE52EA0)
        {
LABEL_13:
          v10 = &qword_27EE52EA0;
LABEL_16:
          std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::__construct_node<pxrInternal__aapl__pxrReserved__::TfToken const&>();
        }

        goto LABEL_8;
      }

      result = std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(&qword_27EE52E98, &v10, v2);
      v7 = result;
LABEL_15:
      if (!*v7)
      {
        goto LABEL_16;
      }

      if (++v2 == v4)
      {
        return result;
      }

      v5 = qword_27EE52E98;
      v3 = qword_27EE52EA0;
    }

    v6 = &qword_27EE52EA0;
    if (!v3)
    {
      goto LABEL_13;
    }

LABEL_8:
    v10 = v6;
    v7 = v6 + 1;
    goto LABEL_15;
  }

  return result;
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = a2[4];
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a2);
  }
}

void sub_247553D7C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_0,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_0>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_247553EDC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_1,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_1>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::ArbitraryComponentBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594D9C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_2475540D8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_2,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_2>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::ArbitraryComponentStructBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594DA90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_2475542D4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_3,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_3>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::CameraComponentBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594DB60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_2475544D0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_4,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_4>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::EndOfUpdateBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594DC30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_2475546CC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_5,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_5>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_24755482C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_6,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_6>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_24755498C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_7,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_7>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::DirectionalLightComponentBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594DE00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_247554B88(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_8,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_8>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::GeomSubsetBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594DED0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_247554D84(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_9,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_9>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::IBLComponentBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594DFA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_247554F80(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_10,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_10>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::IBLCubeMapAssetBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594E070;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_24755517C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_11,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_11>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2475552DC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_12,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_12>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_24755543C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_13,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_13>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_24755559C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_14,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_14>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2475556FC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_15,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_15>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::PhysicsColliderAssetBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594E340;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_2475558F8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_16,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_16>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::PhysicsColliderComponentBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594E410;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_247555AF4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_17,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_17>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::PhysicsMaterialAssetBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594E4E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_247555CF0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_18,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_18>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::PhysicsRigidBodyComponentBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594E5B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_247555EEC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_19,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_19>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::PhysicsSceneGroundPlaneComponentBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594E680;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_2475560E8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_20,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_20>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::RectAreaLightComponentBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594E750;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_2475562E4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_21,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_21>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::SceneAssetBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594E820;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_2475564E0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_22,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_22>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::ShadowComponentBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594E8F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_2475566DC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_23,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_23>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_24755683C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_24,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_24>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_24755699C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_25,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_25>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_247556AFC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_26,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_26>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::SpatialAudioFileAssetBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594EB40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_247556CF8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_27,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_27>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::SpatialAudioComponentBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594EC10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_247556EF4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_28,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_28>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::AcousticMeshComponentBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594ECE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_2475570F0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_29,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_29>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::SpotOrPointOrAmbientLightComponentBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594EDB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_2475572EC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_30,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_30>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_24755744C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_31,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_31>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2475575AC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_32,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_32>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_24755770C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_33,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_33>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_24755786C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_34,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_34>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::TextComponentBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594F080;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_247557A68(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_35,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_35>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::TextEntityBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594F150;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_247557C64(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_36,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_36>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::TextMeshAssetBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594F220;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void sub_247557E60(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_37,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_37>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_247557FC0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_38,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_38>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_247558120(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_39,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_39>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_247558280(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::BuilderRegistry::BuilderRegistry(void)::$_40,std::allocator<realityio::BuilderRegistry::BuilderRegistry(void)::$_40>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<realityio::BuilderRegistrationInfo *,std::shared_ptr<realityio::BuilderRegistrationInfo>::__shared_ptr_default_delete<realityio::BuilderRegistrationInfo,realityio::BuilderRegistrationInfo>,std::allocator<realityio::BuilderRegistrationInfo>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__shared_ptr_pointer<realityio::BuilderRegistrationInfo *,std::shared_ptr<realityio::BuilderRegistrationInfo>::__shared_ptr_default_delete<realityio::BuilderRegistrationInfo,realityio::BuilderRegistrationInfo>,std::allocator<realityio::BuilderRegistrationInfo>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::default_delete<realityio::BuilderRegistrationInfo>::operator()[abi:ne200100](void *result)
{
  if (result)
  {
    v1 = result;
    std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100]((result + 3));
    v2 = v1[2];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    if ((*v1 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = __p[2];
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  operator delete(__p);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[6];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = __p[4];
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::__count_unique<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = 1;
    do
    {
      if (!std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](a1, a2, v2 + 4))
      {
        if (!std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](a1, v2 + 4, a2))
        {
          return v5;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

void *RIO_MTLX::readFromXmlFile(std::string **a1, uint64_t a2, RIO_MTLX::FileSearchPath *a3, uint64_t a4)
{
  v32[11] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, RIO_MTLX::PATH_LIST_SEPARATOR);
  RIO_MTLX::getEnvironmentPath(&v22, __p);
  v8 = v22;
  v9 = v23;
  while (v8 != v9)
  {
    std::vector<RIO_MTLX::FilePath>::push_back[abi:ne200100](a3, v8);
    v8 = (v8 + 32);
  }

  __str.__r_.__value_.__r.__words[0] = &v22;
  std::vector<RIO_MTLX::FilePath>::__destroy_vector::operator()[abi:ne200100](&__str);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  RIO_MTLX::FileSearchPath::find(a3, a2, &v22);
  if (&v22 != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(a2, v22, v23, 0xAAAAAAAAAAAAAAABLL * ((v23 - v22) >> 3));
  }

  *(a2 + 24) = v25;
  __p[0] = &v22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  v25 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0x7FD8uLL;
  v27 = 10241;
  v32[0] = &v24;
  v32[1] = 32728;
  v32[2] = 0;
  v32[3] = 0;
  v22 = &v27;
  v23 = 0;
  v31 = 0;
  v30 = &v27;
  v24 = v32;
  RIO_MTLX::FilePath::asString(a2, 1, &__str);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  v11 = 116;
  if (a4)
  {
    if (*a4)
    {
      v11 = 118;
    }

    else
    {
      v11 = 116;
    }
  }

  pugi::xml_document::load_file(&v22, p_str, v11, 0, __p);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (!a4 || (v13 = *(a4 + 40), v13 == *(a4 + 48)))
  {
    v14 = *a1;
    RIO_MTLX::FilePath::asString(a2, 1, &__str);
    std::string::operator=(v14 + 3, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::string::operator=(*a1 + 3, v13);
  }

  v15 = *a1;
  v16 = a1[1];
  v18[0] = v15;
  v18[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  return pugi::xml_document::_destroy(&v22);
}

void sub_247558884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  pugi::xml_document::_destroy(&a24);
  _Unwind_Resume(a1);
}

uint64_t RIO_MTLX::XmlReadOptions::XmlReadOptions(uint64_t this)
{
  *this = 256;
  *(this + 8) = &unk_28594F4F8;
  *(this + 16) = RIO_MTLX::readFromXmlFile;
  *(this + 32) = this + 8;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  return this;
}

void RIO_MTLX::anonymous namespace::validateParseResult(RIO_MTLX::_anonymous_namespace_ *this, char **a2, const RIO_MTLX::FilePath *a3)
{
  if (*this)
  {
    v5 = pugi::xml_parse_result::description(this);
    std::string::basic_string[abi:ne200100]<0>(&v27, v5);
    std::to_string(&v26, *(this + 1));
    std::string::basic_string[abi:ne200100]<0>(&v25, "XML parse error");
    if (*a2 != a2[1])
    {
      RIO_MTLX::FilePath::asString(a2, 1, &v22);
      v6 = std::string::insert(&v22, 0, " in ");
      v7 = *&v6->__r_.__value_.__l.__data_;
      v24 = v6->__r_.__value_.__r.__words[2];
      *__p = v7;
      v6->__r_.__value_.__l.__size_ = 0;
      v6->__r_.__value_.__r.__words[2] = 0;
      v6->__r_.__value_.__r.__words[0] = 0;
      if (v24 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      if (v24 >= 0)
      {
        v9 = HIBYTE(v24);
      }

      else
      {
        v9 = __p[1];
      }

      std::string::append(&v25, v8, v9);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }
    }

    std::operator+<char>();
    v10 = std::string::append(&v20, " at character ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v26;
    }

    else
    {
      v12 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v26.__r_.__value_.__l.__size_;
    }

    v14 = std::string::append(&v21, v12, size);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = std::string::append(&v22, ")");
    v17 = *&v16->__r_.__value_.__l.__data_;
    v24 = v16->__r_.__value_.__r.__words[2];
    *__p = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    if (v24 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    if (v24 >= 0)
    {
      v19 = HIBYTE(v24);
    }

    else
    {
      v19 = __p[1];
    }

    std::string::append(&v25, v18, v19);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (v28 < 0)
    {
      operator delete(v27);
    }
  }
}

void sub_247558B98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v35 - 65) < 0)
  {
    operator delete(*(v35 - 88));
  }

  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
  }

  if (*(v35 - 17) < 0)
  {
    operator delete(*(v35 - 40));
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::anonymous namespace::documentFromXml(std::__shared_weak_count **a1, pugi::xml_node *a2, RIO_MTLX::FileSearchPath *a3, _BYTE *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = RIO_MTLX::Document::CATEGORY(a1);
  if (v7[23] >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = *v7;
  }

  v19.__r_.__value_.__r.__words[0] = pugi::xml_node::child(a2, v8);
  if (!pugi::xml_node::operator void (*)(pugi::xml_node***)(&v19))
  {
    goto LABEL_38;
  }

  v9 = a1[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  memset(v22, 0, 24);
  if (a4)
  {
    std::__function::__value_func<void ()(std::shared_ptr<RIO_MTLX::Document>,RIO_MTLX::FilePath const&,RIO_MTLX::FileSearchPath const&,RIO_MTLX::XmlReadOptions const*)>::__value_func[abi:ne200100](v24, (a4 + 8));
  }

  else
  {
    v24[0] = &unk_28594F4F8;
    v24[1] = RIO_MTLX::readFromXmlFile;
    v25 = v24;
  }

  v10 = v19.__r_.__value_.__r.__words[0];
  if (v19.__r_.__value_.__r.__words[0])
  {
    v10 = *(v19.__r_.__value_.__r.__words[0] + 32);
  }

  v21 = v10;
  while (pugi::xml_node::operator void (*)(pugi::xml_node***)(&v21))
  {
    v11 = v21;
    if (v21)
    {
      v12 = v21[1];
      if (!v12)
      {
        v12 = &str_16;
      }

      if (v12 != "xi:include")
      {
        v13 = v21[6];
        goto LABEL_21;
      }

LABEL_22:
      if (v25)
      {
        v14 = pugi::xml_node::attribute(&v21, "href");
        if (v14)
        {
          if (*(v14 + 16))
          {
            v15 = *(v14 + 16);
          }

          else
          {
            v15 = &str_16;
          }
        }

        else
        {
          v15 = &str_16;
        }

        v16 = std::string::basic_string[abi:ne200100]<0>(&__p, v15);
        RIO_MTLX::Document::createDocument<RIO_MTLX::Document>(v16);
      }

      v23 = v21;
      if (v21)
      {
        v11 = v21[6];
      }

      v21 = v11;
      pugi::xml_node::remove_child(&v19, &v23);
    }

    else
    {
      if (&str_16 == "xi:include")
      {
        goto LABEL_22;
      }

      v13 = 0;
LABEL_21:
      v21 = v13;
    }
  }

  std::__function::__value_func<void ()(std::shared_ptr<RIO_MTLX::Document>,RIO_MTLX::FilePath const&,RIO_MTLX::FileSearchPath const&,RIO_MTLX::XmlReadOptions const*)>::~__value_func[abi:ne200100](v24);
  v23 = v22;
  std::vector<RIO_MTLX::FilePath>::__destroy_vector::operator()[abi:ne200100](&v23);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v17 = a1[1];
  v18[0] = *a1;
  v18[1] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

LABEL_38:
  if (!a4 || a4[1] == 1)
  {
    RIO_MTLX::Document::upgradeVersion(*a1);
  }
}

void sub_2475593E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, std::__shared_weak_count *a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t **a46, uint64_t a47)
{
  a46 = &a19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a46);
  a19 = &a23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  if (a32 < 0)
  {
    operator delete(__p);
  }

  RIO_MTLX::XmlReadOptions::~XmlReadOptions((v47 - 200));
  if (a35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a35);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  std::__function::__value_func<void ()(std::shared_ptr<RIO_MTLX::Document>,RIO_MTLX::FilePath const&,RIO_MTLX::FileSearchPath const&,RIO_MTLX::XmlReadOptions const*)>::~__value_func[abi:ne200100](v47 - 136);
  *(v47 - 200) = &a43;
  std::vector<RIO_MTLX::FilePath>::__destroy_vector::operator()[abi:ne200100]((v47 - 200));
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(a1);
}

void *RIO_MTLX::readFromXmlStream(std::__shared_weak_count **a1, void *a2, RIO_MTLX::FileSearchPath *a3, _BYTE *a4)
{
  v31[11] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, RIO_MTLX::PATH_LIST_SEPARATOR);
  RIO_MTLX::getEnvironmentPath(&v21, __p);
  v8 = v21;
  v9 = v22;
  while (v8 != v9)
  {
    std::vector<RIO_MTLX::FilePath>::push_back[abi:ne200100](a3, v8);
    v8 += 32;
  }

  v19[0] = &v21;
  std::vector<RIO_MTLX::FilePath>::__destroy_vector::operator()[abi:ne200100](v19);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  v24 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0x7FD8uLL;
  v26 = 10241;
  v31[0] = &v23;
  v31[1] = 32728;
  v31[2] = 0;
  v31[3] = 0;
  v21 = &v26;
  v22 = 0;
  v30 = 0;
  v29 = &v26;
  v10 = 116;
  v23 = v31;
  if (a4)
  {
    if (*a4)
    {
      v10 = 118;
    }

    else
    {
      v10 = 116;
    }
  }

  pugi::xml_document::load(&v21, a2, v10, 0, v19);
  __p[0] = 0;
  __p[1] = 0;
  v18 = 0;
  v17 = 0;
  v20 = __p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v20);
  v12 = *a1;
  v13 = a1[1];
  v15[0] = v12;
  v15[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return pugi::xml_document::_destroy(&v21);
}

void sub_247559714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIO_MTLX::readFromXmlString(std::__shared_weak_count **a1, const std::string *a2, uint64_t *a3, _BYTE *a4)
{
  std::istringstream::basic_istringstream[abi:ne200100](v12, a2, 8);
  v7 = *a1;
  v8 = a1[1];
  v11[0] = v7;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  memset(v10, 0, sizeof(v10));
  std::vector<RIO_MTLX::FilePath>::__init_with_size[abi:ne200100]<RIO_MTLX::FilePath*,RIO_MTLX::FilePath*>(v10, *a3, a3[1], (a3[1] - *a3) >> 5);
  RIO_MTLX::readFromXmlStream(v11, v12, v10, a4);
  v17 = v10;
  std::vector<RIO_MTLX::FilePath>::__destroy_vector::operator()[abi:ne200100](&v17);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v12[0] = *MEMORY[0x277D82820];
  *(v12 + *(v12[0] - 24)) = *(MEMORY[0x277D82820] + 24);
  v13 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::istream::~istream();
  return MEMORY[0x24C1A9110](&v16);
}

void sub_24755993C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  *(v31 - 40) = v30;
  std::vector<RIO_MTLX::FilePath>::__destroy_vector::operator()[abi:ne200100]((v31 - 40));
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  std::istringstream::~istringstream(&a14, MEMORY[0x277D82820]);
  MEMORY[0x24C1A9110](&a29);
  _Unwind_Resume(a1);
}

uint64_t *std::istringstream::basic_istringstream[abi:ne200100](uint64_t *a1, const std::string *a2, int a3)
{
  a1[21] = 0;
  v6 = MEMORY[0x277D82898] + 64;
  a1[15] = MEMORY[0x277D82898] + 64;
  v7 = *(MEMORY[0x277D82820] + 16);
  v8 = *(MEMORY[0x277D82820] + 8);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  a1[1] = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, a1 + 2);
  v10 = MEMORY[0x277D82898] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  *a1 = v10;
  a1[15] = v6;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_247559AE0(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x24C1A9110](v1);
  _Unwind_Resume(a1);
}

void *RIO_MTLX::writeToXmlStream(std::__shared_weak_count_vtbl **a1, uint64_t a2, unsigned __int8 *a3)
{
  v22[11] = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v20 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0x7FD8uLL;
  v16 = 10241;
  v22[0] = &v13;
  v22[1] = 32728;
  v22[2] = 0;
  v22[3] = 0;
  v12[0] = &v16;
  v12[1] = 0;
  v21 = 0;
  v19 = &v16;
  v13 = v22;
  appended = pugi::xml_node::append_child(v12, 2u);
  v11[0] = appended;
  pugi::xml_node::set_name(v11, "materialx");
  v7 = *a1;
  v8 = a1[1];
  v10.__vftable = v7;
  v10.__shared_owners_ = v8;
  v10.__shared_weak_owners_ = appended;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v11[0] = &unk_285955E40;
  v11[1] = a2;
  v11[2] = 0;
  pugi::xml_document::save(v12, v11);
  return pugi::xml_document::_destroy(v12);
}

void sub_247559C64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t RIO_MTLX::anonymous namespace::elementToXml(std::__shared_weak_count *a1, pugi::xml_node *a2, unsigned __int8 *a3)
{
  v5 = a1;
  v57 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = *a3;
    a1 = *(a3 + 4);
    if (a1)
    {
      if (a1 == (a3 + 8))
      {
        v56 = v55;
        a1 = (a1->__get_deleter)(a1, v55);
      }

      else
      {
        a1 = (a1->__on_zero_shared)(a1);
        v56 = a1;
      }
    }

    else
    {
      v56 = 0;
    }
  }

  else
  {
    v56 = 0;
    v6 = 1;
  }

  v7 = *v5;
  v8 = *v5 + 48;
  if (*(*v5 + 71) < 0)
  {
    if (!*(v7 + 7))
    {
      goto LABEL_17;
    }

    v8 = *v8;
  }

  else if (!*(*v5 + 71))
  {
    goto LABEL_17;
  }

  v9 = RIO_MTLX::Element::NAME_ATTRIBUTE(a1);
  if (v9[23] >= 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = *v9;
  }

  appended = pugi::xml_node::append_attribute(a2, v10);
  a1 = pugi::xml_attribute::set_value(&appended, v8);
  v7 = *v5;
LABEL_17:
  v12 = *(v7 + 25);
  v11 = *(v7 + 26);
  if (v12 != v11)
  {
    do
    {
      v13 = v12;
      if (v12[23] < 0)
      {
        v13 = *v12;
      }

      appended = pugi::xml_node::append_attribute(a2, v13);
      v14 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(*v5 + 20, v12);
      if (v14)
      {
        v15 = (v14 + 5);
      }

      else
      {
        v15 = RIO_MTLX::EMPTY_STRING(0);
      }

      if (v15[23] < 0)
      {
        v15 = *v15;
      }

      a1 = pugi::xml_attribute::set_value(&appended, v15);
      v12 += 24;
    }

    while (v12 != v11);
    v7 = *v5;
  }

  v54[0] = 0;
  v54[1] = 0;
  v53 = v54;
  v16 = *(v7 + 17);
  v17 = *(v7 + 18);
  if (v16 == v17)
  {
    v42 = 0;
    goto LABEL_102;
  }

  do
  {
    v18 = *v16;
    v19 = v16[1];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!v56)
      {
        goto LABEL_37;
      }

      v51 = v18;
      v52 = v19;
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      a1 = v56;
      if (!v56)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }
    }

    else
    {
      a1 = v56;
      if (!v56)
      {
        goto LABEL_37;
      }

      v51 = *v16;
      v52 = 0;
    }

    v20 = (a1->__vftable[1].~__shared_weak_count_0)(a1, &v51);
    a1 = v52;
    if (v52)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v52);
    }

    if (v20)
    {
LABEL_37:
      if (v6)
      {
        if (*(v18 + 95) < 0)
        {
          v21 = *(v18 + 80);
          if (v21)
          {
            std::string::__init_copy_ctor_external(&v50, *(v18 + 72), v21);
            goto LABEL_43;
          }
        }

        else if (*(v18 + 95))
        {
          v50 = *(v18 + 72);
LABEL_43:
          RIO_MTLX::Element::getDocument(&appended, *v5);
          if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v50.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v50.__r_.__value_.__l.__size_;
          }

          v23 = appended[95];
          v24 = v23;
          if ((v23 & 0x80u) != 0)
          {
            v23 = *(appended + 10);
          }

          if (size == v23)
          {
            if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v25 = &v50;
            }

            else
            {
              v25 = v50.__r_.__value_.__r.__words[0];
            }

            if (v24 >= 0)
            {
              v26 = appended + 72;
            }

            else
            {
              v26 = *(appended + 9);
            }

            v27 = memcmp(v25, v26, size) != 0;
          }

          else
          {
            v27 = 1;
          }

          a1 = v47;
          if (v47)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v47);
          }

          if (v27)
          {
            a1 = std::__tree<std::string>::__count_unique<std::string>(&v53, &v50.__r_.__value_.__l.__data_);
            if (!a1)
            {
              if (!pugi::xml_node::attribute(a2, "xmlns:xi"))
              {
                appended = pugi::xml_node::append_attribute(a2, "xmlns:xi");
                pugi::xml_attribute::set_value(&appended, "http://www.w3.org/2001/XInclude");
              }

              v28 = pugi::xml_node::append_child(a2, 2u);
              appended = v28;
              pugi::xml_node::set_name(&appended, "xi:include");
              v49 = v28;
              v48 = pugi::xml_node::append_attribute(&v49, "href");
              RIO_MTLX::FilePath::FilePath(&appended, &v50);
              RIO_MTLX::FilePath::asString(&appended, 1, &v44.__shared_weak_owners_);
              if (v45 >= 0)
              {
                p_shared_weak_owners = &v44.__shared_weak_owners_;
              }

              else
              {
                p_shared_weak_owners = v44.__shared_weak_owners_;
              }

              pugi::xml_attribute::set_value(&v48, p_shared_weak_owners);
              if (v45 < 0)
              {
                operator delete(v44.__shared_weak_owners_);
              }

              std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v53, &v50.__r_.__value_.__l.__data_, &v50);
              v44.__shared_weak_owners_ = &appended;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v44.__shared_weak_owners_);
            }

            if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v50.__r_.__value_.__l.__data_);
            }

            goto LABEL_97;
          }

          if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v50.__r_.__value_.__l.__data_);
          }
        }
      }

      v30 = RIO_MTLX::CommentElement::CATEGORY(a1);
      v31 = (v18 + 24);
      v32 = *(v18 + 47);
      if (v32 >= 0)
      {
        v33 = *(v18 + 47);
      }

      else
      {
        v33 = *(v18 + 32);
      }

      v34 = *(v30 + 23);
      v35 = v34;
      if ((v34 & 0x80u) != 0)
      {
        v34 = v30[1];
      }

      if (v33 != v34)
      {
        goto LABEL_85;
      }

      v36 = *v31;
      if (v32 >= 0)
      {
        v36 = (v18 + 24);
      }

      v37 = v35 >= 0 ? v30 : *v30;
      if (!memcmp(v36, v37, v33))
      {
        appended = pugi::xml_node::append_child(a2, 5u);
        v39 = RIO_MTLX::Element::DOC_ATTRIBUTE(appended);
        v40 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v18 + 160), v39);
        if (v40)
        {
          v41 = (v40 + 5);
        }

        else
        {
          v41 = RIO_MTLX::EMPTY_STRING(0);
        }

        if (v41[23] < 0)
        {
          v41 = *v41;
        }

        a1 = pugi::xml_node::set_value(&appended, v41);
      }

      else
      {
LABEL_85:
        if (v32 < 0)
        {
          v31 = *v31;
        }

        v38 = pugi::xml_node::append_child(a2, 2u);
        appended = v38;
        pugi::xml_node::set_name(&appended, v31);
        v50.__r_.__value_.__r.__words[0] = v38;
        v44.__vftable = v18;
        v44.__shared_owners_ = v19;
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }
      }
    }

LABEL_97:
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    v16 += 2;
  }

  while (v16 != v17);
  v42 = v54[0];
LABEL_102:
  std::__tree<std::string>::destroy(&v53, v42);
  return std::__function::__value_func<BOOL ()(std::shared_ptr<RIO_MTLX::Element const>)>::~__value_func[abi:ne200100](v55);
}

void sub_24755A350(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::anonymous namespace::elementFromXml(std::string *a1, RIO_MTLX::Element **a2, _BYTE *a3)
{
  v5 = a1->__r_.__value_.__r.__words[0];
  if (!a1->__r_.__value_.__r.__words[0])
  {
    goto LABEL_27;
  }

  v6 = *(v5 + 56);
  if (!v6)
  {
    goto LABEL_26;
  }

  v7 = a1;
  do
  {
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = &str_16;
    }

    v9 = RIO_MTLX::Element::NAME_ATTRIBUTE(a1);
    v10 = strlen(v8);
    v11 = *(v9 + 23);
    if (v11 < 0)
    {
      if (v10 == v9[1])
      {
        if (v10 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v9 = *v9;
LABEL_13:
        a1 = memcmp(v9, v8, v10);
        if (!a1)
        {
          goto LABEL_24;
        }
      }
    }

    else if (v10 == v11)
    {
      goto LABEL_13;
    }

    v12 = *a2;
    if (v6[1])
    {
      v13 = v6[1];
    }

    else
    {
      v13 = &str_16;
    }

    std::string::basic_string[abi:ne200100]<0>(&v46, v13);
    if (v6[2])
    {
      v14 = v6[2];
    }

    else
    {
      v14 = &str_16;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, v14);
    a1 = RIO_MTLX::Element::setAttribute(v12, &v46, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v47 < 0)
    {
      operator delete(v46);
    }

LABEL_24:
    v6 = v6[4];
  }

  while (v6);
  v5 = v7->__r_.__value_.__r.__words[0];
  if (v7->__r_.__value_.__r.__words[0])
  {
LABEL_26:
    v15 = *(v5 + 32);
    goto LABEL_28;
  }

LABEL_27:
  v15 = 0;
LABEL_28:
  v43 = v15;
  v44 = v5;
  while (v15)
  {
    if (v15[1])
    {
      v31 = v15[1];
    }

    else
    {
      v31 = &str_16;
    }

    v32 = std::string::basic_string[abi:ne200100]<0>(&v46, v31);
    memset(&__p, 0, sizeof(__p));
    for (i = v15[7]; i; i = i[4])
    {
      if (i[1])
      {
        v34 = i[1];
      }

      else
      {
        v34 = &str_16;
      }

      v35 = RIO_MTLX::Element::NAME_ATTRIBUTE(v32);
      v32 = strlen(v34);
      v36 = *(v35 + 23);
      if (v36 < 0)
      {
        if (v32 != v35[1])
        {
          continue;
        }

        if (v32 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v35 = *v35;
      }

      else if (v32 != v36)
      {
        continue;
      }

      v32 = memcmp(v35, v34, v32);
      if (!v32)
      {
        if (i[2])
        {
          v37 = i[2];
        }

        else
        {
          v37 = &str_16;
        }

        MEMORY[0x24C1A8D40](&__p, v37);
        break;
      }
    }

LABEL_31:
    v16 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(*a2 + 12, &__p);
    if (v16)
    {
      v17 = v16[5];
      v18 = v16[6];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v17)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = *a2;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v41, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v41 = __p;
    }

    RIO_MTLX::Element::addChildOfCategory(v19, &v46, &v41, &v42);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    v20 = *(&v42 + 1);
    v40 = v42;
    if (*(&v42 + 1))
    {
      atomic_fetch_add_explicit((*(&v42 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (a3 && *a3 == 1)
    {
      v22 = v47;
      if ((v47 & 0x80u) != 0)
      {
        v22 = *(&v46 + 1);
      }

      if (!v22)
      {
        v23 = *a2;
        v24 = *(&v42 + 1);
        v39 = v42;
        if (*(&v42 + 1))
        {
          atomic_fetch_add_explicit((*(&v42 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v25 = RIO_MTLX::CommentElement::CATEGORY(v21);
        RIO_MTLX::Element::changeChildCategory(v23, &v39, v25, &v38);
        v26 = *(&v42 + 1);
        v42 = *&v38.__r_.__value_.__l.__data_;
        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }

        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        v27 = v42;
        if (v15)
        {
          if (v15[2])
          {
            v28 = v15[2];
          }

          else
          {
            v28 = &str_16;
          }
        }

        else
        {
          v28 = &str_16;
        }

        v29 = std::string::basic_string[abi:ne200100]<0>(&v38, v28);
        v30 = RIO_MTLX::Element::DOC_ATTRIBUTE(v29);
        RIO_MTLX::Element::setAttribute(v27, v30, &v38);
        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__r_.__value_.__l.__data_);
        }
      }
    }

    if (*(&v42 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v42 + 1));
    }

LABEL_66:
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v47 < 0)
    {
      operator delete(v46);
    }

    v15 = v43[6];
    v43 = v15;
  }

  if (v44 != v5)
  {
    std::string::basic_string[abi:ne200100]<0>(&v46, &str_16);
    memset(&__p, 0, sizeof(__p));
    goto LABEL_31;
  }
}

void sub_24755A74C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (*(v37 - 81) < 0)
  {
    operator delete(*(v37 - 104));
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::XmlReadOptions::~XmlReadOptions(RIO_MTLX::XmlReadOptions *this)
{
  v2 = (this + 40);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__function::__value_func<void ()(std::shared_ptr<RIO_MTLX::Document>,RIO_MTLX::FilePath const&,RIO_MTLX::FileSearchPath const&,RIO_MTLX::XmlReadOptions const*)>::~__value_func[abi:ne200100](this + 8);
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<RIO_MTLX::Document>,RIO_MTLX::FilePath const&,RIO_MTLX::FileSearchPath const&,RIO_MTLX::XmlReadOptions const*)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::vector<RIO_MTLX::FilePath>::__assign_with_size[abi:ne200100]<RIO_MTLX::FilePath*,RIO_MTLX::FilePath*>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = a1[2];
  v9 = *a1;
  if (a4 > (v8 - *a1) >> 5)
  {
    if (v9)
    {
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v9)
      {
        do
        {
          v10 -= 4;
          v18 = v10;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v18);
        }

        while (v10 != v9);
        v11 = *a1;
      }

      a1[1] = v9;
      operator delete(v11);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 59))
    {
      v12 = v8 >> 4;
      if (v8 >> 4 <= a4)
      {
        v12 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFE0)
      {
        v13 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      std::vector<RIO_MTLX::FilePath>::__vallocate[abi:ne200100](a1, v13);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  v14 = a1[1] - v9;
  if (a4 <= v14 >> 5)
  {
    std::__copy_impl::operator()[abi:ne200100]<RIO_MTLX::FilePath *,RIO_MTLX::FilePath *,RIO_MTLX::FilePath *>(&v18, a2, a3, v9);
    v16 = v15;
    v17 = a1[1];
    if (v17 != v15)
    {
      do
      {
        v17 -= 4;
        v18 = v17;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v18);
      }

      while (v17 != v16);
    }

    a1[1] = v16;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<RIO_MTLX::FilePath *,RIO_MTLX::FilePath *,RIO_MTLX::FilePath *>(&v18, a2, a2 + v14, v9);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<RIO_MTLX::FilePath>,RIO_MTLX::FilePath*,RIO_MTLX::FilePath*,RIO_MTLX::FilePath*>(a1, a2 + v14, a3, a1[1]);
  }
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<RIO_MTLX::Document>,RIO_MTLX::FilePath const&,RIO_MTLX::FileSearchPath const&,RIO_MTLX::XmlReadOptions const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::istringstream::~istringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

void *std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(uint64_t **a1, const void **a2, uint64_t a3)
{
  result = *std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!result)
  {
    std::__tree<std::string>::__construct_node<std::string const&>();
  }

  return result;
}

uint64_t std::__function::__value_func<BOOL ()(std::shared_ptr<RIO_MTLX::Element const>)>::~__value_func[abi:ne200100](uint64_t a1)
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

void RIO_MTLX::Element::addChild<RIO_MTLX::Node>(RIO_MTLX::Node *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *a2, *(a2 + 8));
  }

  else
  {
    v13 = *a2;
  }

  size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v13.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v5 = RIO_MTLX::Node::CATEGORY(a1);
    v6 = v5;
    if (v5[23] >= 0)
    {
      v7 = v5[23];
    }

    else
    {
      v7 = *(v5 + 1);
    }

    v8 = __p;
    std::string::basic_string[abi:ne200100](__p, v7 + 1);
    if (v11 < 0)
    {
      v8 = __p[0];
    }

    if (v7)
    {
      if (v6[23] >= 0)
      {
        v9 = v6;
      }

      else
      {
        v9 = *v6;
      }

      memmove(v8, v9, v7);
    }

    *(v8 + v7) = 49;
    RIO_MTLX::Element::createValidChildName(a1, __p, &v12);
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    v13 = v12;
    *(&v12.__r_.__value_.__s + 23) = 0;
    v12.__r_.__value_.__s.__data_[0] = 0;
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&v12, a1 + 1);
  std::allocate_shared[abi:ne200100]<RIO_MTLX::Node,std::allocator<RIO_MTLX::Node>,std::shared_ptr<RIO_MTLX::Element>,std::string &,0>();
}

void sub_24755AEA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<RIO_MTLX::Node>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<RIO_MTLX::Element>,std::string &,std::allocator<RIO_MTLX::Node>,0>(void *a1, __int128 *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285945308;
  std::allocator<RIO_MTLX::Node>::construct[abi:ne200100]<RIO_MTLX::Node,std::shared_ptr<RIO_MTLX::Element>,std::string &>(&v5, (a1 + 3), a2, a3);
  return a1;
}

void std::allocator<RIO_MTLX::Node>::construct[abi:ne200100]<RIO_MTLX::Node,std::shared_ptr<RIO_MTLX::Element>,std::string &>(uint64_t a1, RIO_MTLX::Node *a2, __int128 *a3, uint64_t a4)
{
  v4 = *a3;
  *a3 = 0uLL;
  RIO_MTLX::Node::Node(a2, &v4, a4);
  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }
}

void sub_24755B05C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<void (*)(std::shared_ptr<RIO_MTLX::Document>,RIO_MTLX::FilePath,RIO_MTLX::FileSearchPath,RIO_MTLX::XmlReadOptions const*),std::allocator<void (*)(std::shared_ptr<RIO_MTLX::Document>,RIO_MTLX::FilePath,RIO_MTLX::FileSearchPath,RIO_MTLX::XmlReadOptions const*)>,void ()(std::shared_ptr<RIO_MTLX::Document>,RIO_MTLX::FilePath const&,RIO_MTLX::FileSearchPath const&,RIO_MTLX::XmlReadOptions const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28594F4F8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void (*)(std::shared_ptr<RIO_MTLX::Document>,RIO_MTLX::FilePath,RIO_MTLX::FileSearchPath,RIO_MTLX::XmlReadOptions const*),std::allocator<void (*)(std::shared_ptr<RIO_MTLX::Document>,RIO_MTLX::FilePath,RIO_MTLX::FileSearchPath,RIO_MTLX::XmlReadOptions const*)>,void ()(std::shared_ptr<RIO_MTLX::Document>,RIO_MTLX::FilePath const&,RIO_MTLX::FileSearchPath const&,RIO_MTLX::XmlReadOptions const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v8 = *(a1 + 8);
  v9 = a2[1];
  v13 = *a2;
  v14 = v9;
  *a2 = 0;
  a2[1] = 0;
  memset(&v11, 0, sizeof(v11));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v11, *a3, *(a3 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 8) - *a3) >> 3));
  v12 = *(a3 + 24);
  memset(v10, 0, sizeof(v10));
  std::vector<RIO_MTLX::FilePath>::__init_with_size[abi:ne200100]<RIO_MTLX::FilePath*,RIO_MTLX::FilePath*>(v10, *a4, a4[1], (a4[1] - *a4) >> 5);
  v8(&v13, &v11, v10, *a5);
  v15 = v10;
  std::vector<RIO_MTLX::FilePath>::__destroy_vector::operator()[abi:ne200100](&v15);
  v15 = &v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v15);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }
}

void sub_24755B1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  *(v18 - 56) = v17;
  std::vector<RIO_MTLX::FilePath>::__destroy_vector::operator()[abi:ne200100]((v18 - 56));
  *(v18 - 56) = &a12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v18 - 56));
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void (*)(std::shared_ptr<RIO_MTLX::Document>,RIO_MTLX::FilePath,RIO_MTLX::FileSearchPath,RIO_MTLX::XmlReadOptions const*),std::allocator<void (*)(std::shared_ptr<RIO_MTLX::Document>,RIO_MTLX::FilePath,RIO_MTLX::FileSearchPath,RIO_MTLX::XmlReadOptions const*)>,void ()(std::shared_ptr<RIO_MTLX::Document>,RIO_MTLX::FilePath const&,RIO_MTLX::FileSearchPath const&,RIO_MTLX::XmlReadOptions const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1A90A0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_24755B32C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdUtilsCreateTopLevelEntityFromStage(uint64_t *a1)
{
  v154 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::USDInitializeConfiguration(&v143);
  pxrInternal__aapl__pxrReserved__::usd_initialize();
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::~USDInitializeConfiguration(&v143);
  pxrInternal__aapl__pxrReserved__::UsdStage::CreateInMemory();
  v108 = 0;
  v109 = 0;
  v110 = 0;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a1 + 2);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&v105, v2);
  v3 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&v105);
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetRealPath(v3);
  v143 = 0uLL;
  *&v144 = 0;
  v140.n128_u64[1] = 0;
  *&v141 = 0;
  v140.n128_u64[0] = &v140.n128_u64[1];
  pxrInternal__aapl__pxrReserved__::SdfLayer::CreateAnonymous();
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v140, v140.n128_u64[1]);
  if (SBYTE7(v144) < 0)
  {
    operator delete(v143);
  }

  pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v143, &v107);
  pxrInternal__aapl__pxrReserved__::UsdStage::Open();
  v4 = *(&v143 + 1);
  if (*(&v143 + 1) && atomic_fetch_add_explicit((*(&v143 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v4 + 8))(v4);
  }

  v133 = 0;
  v134 = 0;
  v135 = 0;
  v132[0] = 0;
  v132[1] = 0;
  v131 = v132;
  std::string::basic_string[abi:ne200100]<0>(__p, "relocated");
  MEMORY[0x24C1A5E00](&v128, __p);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v136);
  EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v5);
  pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(EditTarget);
  pxrInternal__aapl__pxrReserved__::SdfLayer::InsertSubLayerPath();
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v136);
  PseudoRoot = pxrInternal__aapl__pxrReserved__::UsdStage::GetPseudoRoot(&v140, v7);
  UsdPrimDefaultPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(PseudoRoot);
  v11 = *UsdPrimDefaultPredicate;
  v10 = UsdPrimDefaultPredicate[1];
  v12 = UsdPrimDefaultPredicate[2];
  if ((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL() & 1) == 0 && ((v11 & 0x2000) != 0 || (v10 & 0x2000) == 0))
  {
    v11 |= 0x2000uLL;
    v10 &= ~0x2000uLL;
  }

  *&v137 = v11;
  *(&v137 + 1) = v10;
  *&v138 = v12;
  pxrInternal__aapl__pxrReserved__::UsdPrim::_MakeSiblingRange(&v140, &v137, &v143);
  if ((BYTE8(v141) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v141 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  v100 = a1;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v141);
  if (v140.n128_u64[1])
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v140.n128_i64[1]);
  }

  v140.n128_u64[0] = v143;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v140.n128_u32[2], &v143 + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v140.n128_u32[3], &v143 + 3);
  v141 = v144;
  v142 = v145;
  *&v137 = v146;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v137 + 2, &v147);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v137 + 3, &v148);
  v138 = v149;
  v139 = v150;
  while (*&v140 != v137 || !pxrInternal__aapl__pxrReserved__::operator==(&v141, &v138))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::dereference(&v151, &v140);
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v124, &v151);
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::push_back[abi:ne200100](&v108, &v124);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v124);
    if ((BYTE8(v152) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v152 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v152);
    if (*(&v151 + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v151 + 1));
    }

    pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::increment(&v140);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v137 + 8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v140.n128_i64[1]);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v147);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v143 + 8);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v136);
  pxrInternal__aapl__pxrReserved__::UsdStage::TraverseAll(&v140, v13);
  pxrInternal__aapl__pxrReserved__::UsdPrimRange::begin(&v124, &v140);
  v121.__r_.__value_.__r.__words[0] = v140.n128_u64[1];
  v121.__r_.__value_.__l.__size_ = &v140;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  v122 = 0;
  v123 = 0;
  while (1)
  {
    v14 = v124.__r_.__value_.__l.__size_ == v121.__r_.__value_.__l.__size_ && v124.__r_.__value_.__r.__words[0] == v121.__r_.__value_.__r.__words[0];
    if (v14 && v124.__r_.__value_.__r.__words[2] == v121.__r_.__value_.__r.__words[2] && v125 == v122 && v126 == v123 && v127 == HIBYTE(v123))
    {
      break;
    }

    *&v143 = v124.__r_.__value_.__r.__words[0];
    if (v124.__r_.__value_.__r.__words[0])
    {
      atomic_fetch_add_explicit((v124.__r_.__value_.__r.__words[0] + 48), 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v117, &v143, &v124.__r_.__value_.__r.__words[2]);
    if (v143)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v143);
    }

    IsInstanceable = pxrInternal__aapl__pxrReserved__::UsdPrim::IsInstanceable(&v117);
    if (IsInstanceable)
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomGprim::_GetStaticTfType(IsInstanceable);
      pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
      IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
      if (IsA)
      {
        v17 = pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(IsA);
        v19 = *v17;
        v18 = v17[1];
        v20 = v17[2];
        if ((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL() & 1) == 0 && ((v19 & 0x2000) != 0 || (v18 & 0x2000) == 0))
        {
          v19 |= 0x2000uLL;
          v18 &= ~0x2000uLL;
        }

        *&v137 = v19;
        *(&v137 + 1) = v18;
        *&v138 = v20;
        pxrInternal__aapl__pxrReserved__::UsdPrim::_MakeSiblingRange(&v117, &v137, &v143);
        *&v137 = v143;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v137 + 2, &v143 + 2);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v137 + 3, &v143 + 3);
        v138 = v144;
        v139 = v145;
        *&v151 = v146;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v151 + 2, &v147);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v151 + 3, &v148);
        v152 = v149;
        v153 = v150;
        if (v137 == v151)
        {
          v21 = pxrInternal__aapl__pxrReserved__::operator==(&v138, &v152);
        }

        else
        {
          v21 = 0;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v151 + 8);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v137 + 8);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v147);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v143 + 8);
        if (v21)
        {
          pxrInternal__aapl__pxrReserved__::UsdPrim::SetInstanceable(&v117, 0);
        }
      }
    }

    pxrInternal__aapl__pxrReserved__::UsdPrim::GetRelationships(&v137, &v117);
    v101 = *(&v137 + 1);
    for (i = v137; i != v101; i += 32)
    {
      v151 = 0uLL;
      *&v152 = 0;
      pxrInternal__aapl__pxrReserved__::UsdRelationship::GetTargets();
      v23 = *(&v151 + 1);
      v24 = v151;
      if (v151 != *(&v151 + 1))
      {
        v102 = i;
        v103 = *(&v151 + 1);
        do
        {
          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v115, &v117);
          pxrInternal__aapl__pxrReserved__::SdfPath::GetPrefixes(&v143, &v115);
          v25 = v143;
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v116, v143);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v116 + 1, (v25 + 4));
          v112 = &v143;
          std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v112);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v115);
          pxrInternal__aapl__pxrReserved__::SdfPath::GetPrefixes(&v143, v24);
          v26 = v143;
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v115, v143);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v115 + 1, (v26 + 4));
          v112 = &v143;
          std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v112);
          if (v116 != v115)
          {
            v27 = v134;
            if (v134 >= v135)
            {
              v31 = (v134 - v133) >> 5;
              if ((v31 + 1) >> 59)
              {
                std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
              }

              v32 = (v135 - v133) >> 4;
              if (v32 <= v31 + 1)
              {
                v32 = v31 + 1;
              }

              if (v135 - v133 >= 0x7FFFFFFFFFFFFFE0)
              {
                v33 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v33 = v32;
              }

              if (v33)
              {
                if (!(v33 >> 59))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v34 = 32 * v31;
              *v34 = *i;
              v35 = *(i + 8);
              *(v34 + 8) = v35;
              if (v35)
              {
                atomic_fetch_add_explicit((v35 + 48), 1uLL, memory_order_relaxed);
              }

              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v34 + 16), (i + 16));
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v34 + 20), (i + 20));
              v36 = *(i + 24);
              *(32 * v31 + 0x18) = v36;
              if ((v36 & 7) != 0 && (atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
              {
                *(32 * v31 + 0x18) &= 0xFFFFFFFFFFFFFFF8;
              }

              v37 = v133;
              v38 = v134;
              v39 = v34 + v133 - v134;
              if (v134 != v133)
              {
                v40 = 0;
                do
                {
                  v41 = v39 + v40;
                  v42 = &v37[v40];
                  *v41 = *&v37[v40];
                  *(v41 + 8) = *&v37[v40 + 8];
                  *&v37[v40 + 8] = 0;
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v39 + v40 + 16), &v37[v40 + 16]);
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v39 + v40 + 20), &v37[v40 + 20]);
                  *(v41 + 24) = *&v37[v40 + 24];
                  *(v42 + 3) = 0;
                  v40 += 32;
                }

                while (v42 + 32 != v38);
                do
                {
                  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdRelationship>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdRelationship,0>(v37);
                  v37 += 32;
                }

                while (v37 != v38);
                v37 = v133;
              }

              v30 = (v34 + 32);
              v133 = v39;
              v134 = (v34 + 32);
              v135 = 0;
              if (v37)
              {
                operator delete(v37);
              }
            }

            else
            {
              *v134 = *i;
              v28 = *(i + 8);
              *(v27 + 1) = v28;
              if (v28)
              {
                atomic_fetch_add_explicit((v28 + 48), 1uLL, memory_order_relaxed);
              }

              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v27 + 4, (i + 16));
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v27 + 5, (i + 20));
              v29 = *(i + 24);
              *(v27 + 3) = v29;
              if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
              {
                *(v27 + 3) &= 0xFFFFFFFFFFFFFFF8;
              }

              v30 = v27 + 32;
            }

            v23 = v103;
            v134 = v30;
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v112, &v115);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v112 + 1, &v115 + 1);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v113, &v116);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v114, &v116 + 1);
            i = v102;
            std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdRelationship&,pxrInternal__aapl__pxrReserved__::SdfPath&,0>(&v143, v102, v24);
            v43 = std::map<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair,std::less<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>>,std::allocator<std::pair<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath> const,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair>>>::operator[](&v131, &v143);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v43, &v112);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v43 + 4, &v112 + 1);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=((v43 + 1), &v113);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v43 + 12, &v114);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v145);
            if ((BYTE8(v144) & 7) != 0)
            {
              atomic_fetch_add_explicit((*(&v144 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v144);
            if (*(&v143 + 1))
            {
              pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v143 + 1));
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v113);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v112);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v115);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v116);
          v24 = (v24 + 8);
        }

        while (v24 != v23);
      }

      *&v143 = &v151;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v143);
    }

    *&v143 = &v137;
    std::vector<pxrInternal__aapl__pxrReserved__::UsdRelationship>::__destroy_vector::operator()[abi:ne200100](&v143);
    if ((v120 & 7) != 0)
    {
      atomic_fetch_add_explicit((v120 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v119);
    if (v118)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v118);
    }

    pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::increment(&v124);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v121.__r_.__value_.__r.__words[2]);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v124.__r_.__value_.__r.__words[2]);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v141);
  v44 = v133;
  for (j = v134; v44 != j; v44 += 32)
  {
    v140.n128_u32[0] = *v44;
    v45 = *(v44 + 1);
    v140.n128_u64[1] = v45;
    if (v45)
    {
      atomic_fetch_add_explicit((v45 + 48), 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v141, v44 + 4);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v141 + 1, v44 + 5);
    v46 = *(v44 + 3);
    *(&v141 + 1) = v46;
    if ((v46 & 7) != 0 && (atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *(&v141 + 1) &= 0xFFFFFFFFFFFFFFF8;
    }

    v137 = 0uLL;
    *&v138 = 0;
    pxrInternal__aapl__pxrReserved__::UsdRelationship::GetTargets();
    v151 = 0uLL;
    *&v152 = 0;
    v48 = *(&v137 + 1);
    v47 = v137;
    if (v137 != *(&v137 + 1))
    {
      do
      {
        std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdRelationship&,pxrInternal__aapl__pxrReserved__::SdfPath&,0>(&v143, &v140, v47);
        v49 = std::map<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair,std::less<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>>,std::allocator<std::pair<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath> const,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair>>>::operator[](&v131, &v143);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v117, v49);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v117 + 1, v49 + 1);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v118, v49 + 2);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v118 + 1, v49 + 3);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v145);
        if ((BYTE8(v144) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v144 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v144);
        if (*(&v143 + 1))
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v143 + 1));
        }

        pxrInternal__aapl__pxrReserved__::SdfPath::GetPrefixes(&v143, v47);
        v50 = v143;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v112, v143);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v112 + 1, (v50 + 4));
        v124.__r_.__value_.__r.__words[0] = &v143;
        std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v124);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v116, &v118);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v116 + 1, &v118 + 1);
        String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(&v116);
        v52 = String;
        if (*(String + 23) >= 0)
        {
          v53 = *(String + 23);
        }

        else
        {
          v53 = *(String + 8);
        }

        std::string::basic_string[abi:ne200100](&v121, v53 + 1);
        if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v54 = &v121;
        }

        else
        {
          v54 = v121.__r_.__value_.__r.__words[0];
        }

        if (v53)
        {
          if (v52[23] >= 0)
          {
            v55 = v52;
          }

          else
          {
            v55 = *v52;
          }

          memmove(v54, v55, v53);
        }

        *(&v54->__r_.__value_.__l.__data_ + v53) = 47;
        if ((v130 & 0x80u) == 0)
        {
          v56 = __p;
        }

        else
        {
          v56 = __p[0];
        }

        if ((v130 & 0x80u) == 0)
        {
          v57 = v130;
        }

        else
        {
          v57 = __p[1];
        }

        v58 = std::string::append(&v121, v56, v57);
        v59 = *&v58->__r_.__value_.__l.__data_;
        v124.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
        *&v124.__r_.__value_.__l.__data_ = v59;
        v58->__r_.__value_.__l.__size_ = 0;
        v58->__r_.__value_.__r.__words[2] = 0;
        v58->__r_.__value_.__r.__words[0] = 0;
        v60 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v47);
        v61 = *(v60 + 23);
        if (v61 >= 0)
        {
          v62 = v60;
        }

        else
        {
          v62 = *v60;
        }

        if (v61 >= 0)
        {
          v63 = *(v60 + 23);
        }

        else
        {
          v63 = *(v60 + 8);
        }

        v64 = std::string::append(&v124, v62, v63);
        v65 = *&v64->__r_.__value_.__l.__data_;
        *&v144 = *(&v64->__r_.__value_.__l + 2);
        v143 = v65;
        v64->__r_.__value_.__l.__size_ = 0;
        v64->__r_.__value_.__r.__words[2] = 0;
        v64->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v124.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v121.__r_.__value_.__l.__data_);
        }

        MEMORY[0x24C1A5D70](&v124, &v143);
        std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::push_back[abi:ne200100](&v151, &v124);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v124);
        if (SBYTE7(v144) < 0)
        {
          operator delete(v143);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v116);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v112);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v118);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v117);
        v47 = (v47 + 8);
      }

      while (v47 != v48);
      if (v151 != *(&v151 + 1))
      {
        pxrInternal__aapl__pxrReserved__::UsdRelationship::SetTargets();
      }
    }

    *&v143 = &v151;
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v143);
    *&v143 = &v137;
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v143);
    if ((BYTE8(v141) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v141 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v141);
    if (v140.n128_u64[1])
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v140.n128_i64[1]);
    }
  }

  v66 = v131;
  if (v131 != v132)
  {
    do
    {
      LODWORD(v143) = *(v66 + 8);
      v67 = v66[5];
      *(&v143 + 1) = v67;
      if (v67)
      {
        atomic_fetch_add_explicit((v67 + 48), 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v144, v66 + 12);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v144 + 1, v66 + 13);
      v68 = v66[7];
      *(&v144 + 1) = v68;
      if ((v68 & 7) != 0 && (atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *(&v144 + 1) &= 0xFFFFFFFFFFFFFFF8;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v145, v66 + 16);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v145 + 1, v66 + 17);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v146, v66 + 18);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v146 + 1, v66 + 19);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v147, v66 + 20);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v148, v66 + 21);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v124, &v146);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v124.__r_.__value_.__r.__words + 1, &v146 + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v121, &v147);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v121.__r_.__value_.__r.__words + 1, &v148);
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v136);
      v70 = v69;
      pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v151, &v121, &v128);
      NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(&v124);
      pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v137, &v151, NameToken);
      pxrInternal__aapl__pxrReserved__::UsdStage::OverridePrim(&v140, v70, &v137);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v137);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v151);
      pxrInternal__aapl__pxrReserved__::UsdPrim::GetReferences(&v137, &v140);
      pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(&v151, 0.0, 1.0);
      pxrInternal__aapl__pxrReserved__::UsdReferences::AddInternalReference();
      if ((BYTE8(v138) & 7) != 0)
      {
        atomic_fetch_add_explicit((*(&v138 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v138);
      if (*(&v137 + 1))
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v137 + 1));
      }

      if ((BYTE8(v141) & 7) != 0)
      {
        atomic_fetch_add_explicit((*(&v141 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v141);
      if (v140.n128_u64[1])
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v140.n128_i64[1]);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v121);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v124);
      std::pair<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath> const,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair>::~pair(&v143);
      v72 = v66[1];
      if (v72)
      {
        do
        {
          v73 = v72;
          v72 = *v72;
        }

        while (v72);
      }

      else
      {
        do
        {
          v73 = v66[2];
          v14 = *v73 == v66;
          v66 = v73;
        }

        while (!v14);
      }

      v66 = v73;
    }

    while (v73 != v132);
  }

  if ((v128 & 7) != 0)
  {
    atomic_fetch_add_explicit((v128 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v130 < 0)
  {
    operator delete(__p[0]);
  }

  std::__tree<std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair>,std::__map_value_compare<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair>,std::less<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>>,true>,std::allocator<std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair>>>::destroy(v132[0]);
  *&v143 = &v133;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdRelationship>::__destroy_vector::operator()[abi:ne200100](&v143);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v136);
  v74 = v106;
  if (v106 && atomic_fetch_add_explicit((v106 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v74 + 8))(v74);
  }

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v100 + 2);
  RootLayer = pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&v137, v75);
  pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(RootLayer);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v111);
  v78 = pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&v151, v77);
  pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v78);
  *&v143 = &unk_28594F618;
  *(&v143 + 1) = tleShouldCopyValue;
  *(&v144 + 1) = &v143;
  v140.n128_u64[0] = &unk_28594F6C8;
  v140.n128_u64[1] = tleShouldCopyChildren;
  *(&v141 + 1) = &v140;
  pxrInternal__aapl__pxrReserved__::SdfCopySpec();
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *)>::~__value_func[abi:ne200100](&v140);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfSpecType,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *)>::~__value_func[abi:ne200100](&v143);
  v79 = *(&v151 + 1);
  if (*(&v151 + 1) && atomic_fetch_add_explicit((*(&v151 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v79 + 8))(v79);
  }

  v80 = *(&v137 + 1);
  if (*(&v137 + 1) && atomic_fetch_add_explicit((*(&v137 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v80 + 8))(v80);
  }

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v111);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&v143, v81);
  v82 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&v143);
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetCustomLayerData(&v121, v82);
  v83 = *(&v143 + 1);
  if (*(&v143 + 1) && atomic_fetch_add_explicit((*(&v143 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v83 + 8))(v83);
  }

  *(&v151 + 1) = &unk_285946C7B;
  LOBYTE(v151) = 1;
  std::string::basic_string[abi:ne200100]<0>(&v143, "RealityKit");
  pxrInternal__aapl__pxrReserved__::VtDictionary::erase();
  if (SBYTE7(v144) < 0)
  {
    operator delete(v143);
  }

  std::string::basic_string[abi:ne200100]<0>(&v143, "RealityKit:requireEntityAPI");
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath();
  if (SBYTE7(v144) < 0)
  {
    operator delete(v143);
  }

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v111);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&v143, v84);
  v85 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&v143);
  pxrInternal__aapl__pxrReserved__::SdfLayer::SetCustomLayerData(v85, &v121);
  v86 = *(&v143 + 1);
  if (*(&v143 + 1) && atomic_fetch_add_explicit((*(&v143 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v86 + 8))(v86);
  }

  LODWORD(v143) = 1;
  *(&v143 + 1) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  *(&v144 + 1) = 0;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v111);
  v88 = v87;
  std::string::basic_string[abi:ne200100]<0>(&v137, "/model");
  MEMORY[0x24C1A5D70](&v124, &v137);
  v117 = 0;
  pxrInternal__aapl__pxrReserved__::UsdStage::DefinePrim(&v140, v88, &v124, &v117);
  LODWORD(v143) = v140.n128_u32[0];
  if (*(&v143 + 1))
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v143 + 1));
  }

  *(&v143 + 1) = v140.n128_u64[1];
  v140.n128_u64[1] = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v144, &v141);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v144 + 4, &v141 + 1);
  if ((BYTE8(v144) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v144 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *(&v144 + 1) = *(&v141 + 1);
  *(&v141 + 1) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v141);
  if (v140.n128_u64[1])
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v140.n128_i64[1]);
  }

  if ((v117 & 7) != 0)
  {
    atomic_fetch_add_explicit((v117 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v124);
  if (SBYTE7(v138) < 0)
  {
    operator delete(v137);
  }

  if (v109 != v108)
  {
    v89 = atomic_load(MEMORY[0x277D86540]);
    if (v89)
    {
      MEMORY[0x24C1A5DE0](&v140, "RealityKit:entityName");
      v90 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v108);
      pxrInternal__aapl__pxrReserved__::UsdObject::_SetMetadataImpl<pxrInternal__aapl__pxrReserved__::TfToken>(&v143, (v89 + 72), v90, &v140);
    }

    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType>>::_TryToCreateData(MEMORY[0x277D86540]);
  }

  markPrimAsEntityProducing(&v143, 1, 0);
  v91 = v100[3];
  v92 = v111;
  v111 = 0;
  v140.n128_u64[0] = v92;
  v140.n128_u64[1] = v91;
  if (v91)
  {
    CFRetain(v91);
  }

  v93 = v100[4];
  v100[4] = 0;
  *&v141 = v93;
  v94 = RIOPxrUsdStageCreate<realityio::RIOPxrUsdStageData>(&v140);
  v96 = v95;
  v97 = v141;
  *&v141 = 0;
  if (v97)
  {
    (*(*v97 + 8))(v97, v94);
  }

  realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(&v140.n128_u64[1]);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v140);
  if ((BYTE8(v144) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v144 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v144);
  if (*(&v143 + 1))
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v143 + 1));
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v151);
  v98 = v121.__r_.__value_.__r.__words[0];
  v121.__r_.__value_.__r.__words[0] = 0;
  if (v98)
  {
    std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v98, *(v98 + 8));
    MEMORY[0x24C1A91B0](v98, 0x1020C4062D53EE8);
  }

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(&v107);
  *&v143 = &v108;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v143);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v111);
  return v96;
}

void sub_24755CB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, atomic_uint *a16, __int16 a17, uint64_t a18, uint64_t a19, atomic_uint *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __int16 *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&a54);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim((v54 - 224));
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v54 - 144));
  pxrInternal__aapl__pxrReserved__::VtDictionary::~VtDictionary(&a29);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(&a16);
  a33 = &a17;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&a33);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&a20);
  _Unwind_Resume(a1);
}

BOOL tleShouldCopyValue(uint64_t a1, void *a2)
{
  MEMORY[0x24C1A5DE0](&v8, "defaultPrim");
  v3 = v8;
  if ((v8 ^ *a2) < 8)
  {
    result = 0;
  }

  else
  {
    MEMORY[0x24C1A5DE0](&v7, "subLayerOffsets");
    v4 = v7;
    if ((v7 ^ *a2) < 8)
    {
      result = 0;
    }

    else
    {
      MEMORY[0x24C1A5DE0](&v6, "subLayers");
      result = (v6 ^ *a2) > 7;
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v4 = v7;
    }

    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 = v8;
  }

  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

__n128 RIOPxrUsdStageCreate<realityio::RIOPxrUsdStageData>(__n128 *a1)
{
  if (RIOPxrUsdStageGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrUsdStageGetTypeID::onceToken, &__block_literal_global_23);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    result = *a1;
    Instance[1] = *a1;
    a1->n128_u64[0] = 0;
    a1->n128_u64[1] = 0;
    v4 = a1[1].n128_u64[0];
    a1[1].n128_u64[0] = 0;
    Instance[2].n128_u64[0] = v4;
  }

  return result;
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, a2);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(*(a1 + 8), a2);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v4 + 4), a2 + 1);
    result = v4 + 8;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrim::IsInstanceable(pxrInternal__aapl__pxrReserved__::UsdPrim *this)
{
  v5 = 0;
  v2 = atomic_load(MEMORY[0x277D86540]);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType>>::_TryToCreateData(MEMORY[0x277D86540]);
  }

  v6 = 0;
  Metadata = pxrInternal__aapl__pxrReserved__::UsdObject::_GetMetadataImpl<BOOL>(this, (v2 + 200), &v5, &v6);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return (Metadata & v5);
}

void pxrInternal__aapl__pxrReserved__::UsdPrim::SetInstanceable(pxrInternal__aapl__pxrReserved__::UsdPrim *this, char a2)
{
  v4 = a2;
  v3 = atomic_load(MEMORY[0x277D86540]);
  if (v3)
  {
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::UsdObject::_SetMetadataImpl<BOOL>(this, (v3 + 200), &v4, &v5);
  }

  pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType>>::_TryToCreateData(MEMORY[0x277D86540]);
}

uint64_t *std::map<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair,std::less<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>>,std::allocator<std::pair<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath> const,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair>>>::operator[](uint64_t **a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2)
{
  v4 = a1 + 1;
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_11;
  }

  while (1)
  {
    while (1)
    {
      v5 = v3;
      if ((pxrInternal__aapl__pxrReserved__::operator<(a2, (v3 + 4)) & 1) == 0 && ((pxrInternal__aapl__pxrReserved__::operator<((v5 + 4), a2) & 1) != 0 || !pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a2 + 4, v5 + 8)))
      {
        break;
      }

      v3 = *v5;
      v4 = v5;
      if (!*v5)
      {
        goto LABEL_11;
      }
    }

    if ((pxrInternal__aapl__pxrReserved__::operator<((v5 + 4), a2) & 1) == 0 && ((pxrInternal__aapl__pxrReserved__::operator<(a2, (v5 + 4)) & 1) != 0 || !pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v5 + 8, a2 + 4)))
    {
      break;
    }

    v4 = v5 + 1;
    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  if (!*v4)
  {
LABEL_11:
    operator new();
  }

  return *v4 + 9;
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>::~pair(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 32);
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3);
  }

  return a1;
}

uint64_t makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair::~toFromRootPair(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t std::pair<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath> const,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair>::~pair(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 48);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 40);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 32);
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3);
  }

  return a1;
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfPath>(uint64_t a1, _DWORD *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>(a1, v7);
  }

  v14 = 0;
  v15 = 8 * v2;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((8 * v2), a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((8 * v2 + 4), a2 + 1);
  v16 = (8 * v2 + 8);
  v8 = *(a1 + 8);
  v9 = (8 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<pxrInternal__aapl__pxrReserved__::SdfPath>::~__split_buffer(&v14);
  return v13;
}

void sub_24755DAF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<pxrInternal__aapl__pxrReserved__::SdfPath>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdObject::_GetMetadataImpl<BOOL>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (!v4 || (*(v4 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  return pxrInternal__aapl__pxrReserved__::UsdStage::_GetStrongestResolvedMetadata();
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfAbstractDataTypedValue<BOOL>::_StoreVtValueImpl<pxrInternal__aapl__pxrReserved__::VtValue const&>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = a2;
  *(a1 + 24) = 0;
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<BOOL>(a2))
  {
    v4 = *(v2 + 1);
    if ((v4 & 4) != 0)
    {
      v2 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    **(a1 + 8) = *v2;
    return 1;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::SdfValueBlock>(v2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdObject::_SetMetadataImpl<BOOL>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (!v4 || (*(v4 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetMetadataImpl<pxrInternal__aapl__pxrReserved__::SdfAbstractDataConstValue>();
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfAbstractDataConstTypedValue<BOOL>::GetValue(uint64_t a1, uint64_t a2)
{
  v3 = **(a1 + 8);
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = (*(a2 + 8) & 3) == 3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 32))(a2);
  }

  *(a2 + 8) = &unk_285946C7B;
  *a2 = v3;
  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfAbstractDataConstTypedValue<BOOL>::IsEqual(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = a2;
  result = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<BOOL>(a2);
  if (result)
  {
    v5 = *(v2 + 1);
    if ((v5 & 4) != 0)
    {
      v2 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    return *v2 == **(a1 + 8);
  }

  return result;
}

uint64_t std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdRelationship>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdRelationship,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 16);
  result = *(a1 + 8);
  if (result)
  {

    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::operator<(pxrInternal__aapl__pxrReserved__::UsdObject *a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v6, a1);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v5, a2);
  v3 = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(&v6, &v5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v6);
  return v3;
}

void sub_24755DE9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a9);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdRelationship&,pxrInternal__aapl__pxrReserved__::SdfPath&,0>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a1 = *a2;
  v6 = *(a2 + 8);
  *(a1 + 8) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 16), (a2 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 20), (a2 + 20));
  v7 = *(a2 + 24);
  *(a1 + 24) = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 32), a3);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 36), a3 + 1);
  return a1;
}

void std::__tree<std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair>,std::__map_value_compare<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair>,std::less<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>>,true>,std::allocator<std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair>,std::__map_value_compare<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair>,std::less<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>>,true>,std::allocator<std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair>>>::destroy(*a1);
    std::__tree<std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair>,std::__map_value_compare<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair>,std::less<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>>,true>,std::allocator<std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath>,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair>>>::destroy(a1[1]);
    std::pair<std::pair<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::SdfPath> const,makeReferencable(std::string const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> &)::toFromRootPair>::~pair((a1 + 4));

    operator delete(a1);
  }
}

void realityio::RIOPxrUsdStageData::~RIOPxrUsdStageData(realityio::RIOPxrUsdStageData *this)
{
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(this + 1);

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(this);
}

uint64_t std::__function::__func<BOOL (*)(pxrInternal__aapl__pxrReserved__::SdfSpecType,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *),std::allocator<BOOL (*)(pxrInternal__aapl__pxrReserved__::SdfSpecType,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *)>,BOOL ()(pxrInternal__aapl__pxrReserved__::SdfSpecType,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28594F618;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL (*)(pxrInternal__aapl__pxrReserved__::SdfSpecType,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *),std::allocator<BOOL (*)(pxrInternal__aapl__pxrReserved__::SdfSpecType,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *)>,BOOL ()(pxrInternal__aapl__pxrReserved__::SdfSpecType,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfSpecType,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<BOOL (*)(pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *),std::allocator<BOOL (*)(pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *)>,BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28594F6C8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL (*)(pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *),std::allocator<BOOL (*)(pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *)>,BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void sub_24755E3F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *(v11 + 8);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Document::Document(RIO_MTLX::Document *a1, uint64_t *a2, __int128 *a3)
{
  v5 = a2[1];
  v7 = *a2;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = RIO_MTLX::Document::CATEGORY(a1);
  RIO_MTLX::GraphElement::GraphElement(a1, &v7, v6, a3);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *a1 = &unk_28594F778;
  operator new();
}

void RIO_MTLX::Document::~Document(RIO_MTLX::Document *this)
{
  *this = &unk_28594F778;
  v2 = *(this + 34);
  *(this + 34) = 0;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>>>::__deallocate_node(*(v2 + 184));
    v3 = *(v2 + 168);
    *(v2 + 168) = 0;
    if (v3)
    {
      operator delete(v3);
    }

    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>>>::__deallocate_node(*(v2 + 144));
    v4 = *(v2 + 128);
    *(v2 + 128) = 0;
    if (v4)
    {
      operator delete(v4);
    }

    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>>>::__deallocate_node(*(v2 + 104));
    v5 = *(v2 + 88);
    *(v2 + 88) = 0;
    if (v5)
    {
      operator delete(v5);
    }

    std::mutex::~mutex((v2 + 16));
    v6 = *(v2 + 8);
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }

    MEMORY[0x24C1A91B0](v2, 0x10A0C40A0B08605);
  }

  RIO_MTLX::Element::~Element(this);
}

{
  RIO_MTLX::Document::~Document(this);

  JUMPOUT(0x24C1A91B0);
}

void RIO_MTLX::Document::initialize(RIO_MTLX::Document *this)
{
  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&v9, this + 1);
  v3 = v9;
  v2 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(this + 31);
  *(this + 30) = v3;
  *(this + 31) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
    v2 = v10;
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  RIO_MTLX::Element::getDocument(&v9, this);
  v5 = *(this + 34);
  v7 = v9;
  v6 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = v5[1];
  *v5 = v7;
  v5[1] = v6;
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  RIO_MTLX::Element::clearContent(this);
  RIO_MTLX::InterfaceElement::setVersionIntegers(this, 1, 38);
}

void sub_24755E740(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Document::importLibrary(uint64_t a1, RIO_MTLX::Element **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(v2 + 17);
    v4 = *(v2 + 18);
    if (v3 != v4)
    {
      while (1)
      {
        v8 = *v3;
        v7 = *(v3 + 8);
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        RIO_MTLX::Element::getQualifiedName(v8, &v8[2], &__p);
        v9 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 96), &__p);
        if (!v9)
        {
          break;
        }

        v10 = v9[5];
        v11 = v9[6];
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!v10)
        {
          goto LABEL_11;
        }

LABEL_43:
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if (!v7)
          {
            goto LABEL_48;
          }

LABEL_47:
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
          goto LABEL_48;
        }

        if (v7)
        {
          goto LABEL_47;
        }

LABEL_48:
        v3 += 16;
        if (v3 == v4)
        {
          return;
        }
      }

      v11 = 0;
LABEL_11:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v48, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v48 = __p;
      }

      RIO_MTLX::Element::addChildOfCategory(a1, &v8[1].__r_.__value_.__l.__data_, &v48, &v49);
      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      v12 = v49;
      v46 = v8;
      v47 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      RIO_MTLX::Element::copyContentFrom(v12, &v46);
      v13 = v47;
      if (v47)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v47);
      }

      v14 = v49;
      v15 = RIO_MTLX::Element::FILE_PREFIX_ATTRIBUTE(v13);
      v16 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(&v14[6].__r_.__value_.__r.__words[2], v15);
      if (!v16)
      {
        v17 = *a2;
        v18 = RIO_MTLX::Element::FILE_PREFIX_ATTRIBUTE(0);
        v16 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v17 + 20, v18);
        if (v16)
        {
          v19 = v49;
          FilePrefix = RIO_MTLX::Element::getFilePrefix(*a2);
          v21 = RIO_MTLX::Element::FILE_PREFIX_ATTRIBUTE(FilePrefix);
          v16 = RIO_MTLX::Element::setAttribute(v19, v21, FilePrefix);
        }
      }

      v22 = v49;
      v23 = RIO_MTLX::Element::GEOM_PREFIX_ATTRIBUTE(v16);
      v24 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(&v22[6].__r_.__value_.__r.__words[2], v23);
      if (!v24)
      {
        v25 = *a2;
        v26 = RIO_MTLX::Element::GEOM_PREFIX_ATTRIBUTE(0);
        v24 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v25 + 20, v26);
        if (v24)
        {
          v27 = v49;
          GeomPrefix = RIO_MTLX::Element::getGeomPrefix(*a2);
          v29 = RIO_MTLX::Element::GEOM_PREFIX_ATTRIBUTE(GeomPrefix);
          v24 = RIO_MTLX::Element::setAttribute(v27, v29, GeomPrefix);
        }
      }

      v30 = v49;
      v31 = RIO_MTLX::Element::COLOR_SPACE_ATTRIBUTE(v24);
      v32 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(&v30[6].__r_.__value_.__r.__words[2], v31);
      if (!v32)
      {
        v33 = *a2;
        v34 = RIO_MTLX::Element::COLOR_SPACE_ATTRIBUTE(0);
        v32 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v33 + 20, v34);
        if (v32)
        {
          v35 = v49;
          ColorSpace = RIO_MTLX::Element::getColorSpace(*a2);
          v37 = RIO_MTLX::Element::COLOR_SPACE_ATTRIBUTE(ColorSpace);
          v32 = RIO_MTLX::Element::setAttribute(v35, v37, ColorSpace);
        }
      }

      v38 = v49;
      v39 = RIO_MTLX::Element::NAMESPACE_ATTRIBUTE(v32);
      if (!std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(&v38[6].__r_.__value_.__r.__words[2], v39))
      {
        v40 = *a2;
        v41 = RIO_MTLX::Element::NAMESPACE_ATTRIBUTE(0);
        if (std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v40 + 20, v41))
        {
          v42 = v49;
          Namespace = RIO_MTLX::Element::getNamespace(*a2);
          v44 = RIO_MTLX::Element::NAMESPACE_ATTRIBUTE(Namespace);
          RIO_MTLX::Element::setAttribute(v42, v44, Namespace);
        }
      }

      if ((SHIBYTE(v49[3].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        if (v49[3].__r_.__value_.__l.__size_)
        {
          goto LABEL_41;
        }
      }

      else if (*(&v49[3].__r_.__value_.__s + 23))
      {
        goto LABEL_41;
      }

      v45 = *a2;
      if ((*(*a2 + 95) & 0x8000000000000000) != 0)
      {
        if (!*(v45 + 10))
        {
          goto LABEL_41;
        }
      }

      else if (!*(*a2 + 95))
      {
LABEL_41:
        if (v50)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v50);
        }

        goto LABEL_43;
      }

      std::string::operator=(v49 + 3, v45 + 3);
      goto LABEL_41;
    }
  }
}

void sub_24755EA5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(exception_object);
}

const void **RIO_MTLX::Element::getColorSpace(RIO_MTLX::Element *this)
{
  v2 = RIO_MTLX::Element::COLOR_SPACE_ATTRIBUTE(this);
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(this + 20, v2);
  if (v3)
  {
    return v3 + 5;
  }

  return RIO_MTLX::EMPTY_STRING(0);
}

void RIO_MTLX::Document::getReferencedSourceUris(RIO_MTLX::Document *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  *a2 = a2 + 8;
  RIO_MTLX::Element::traverseTree(this, &v13);
  *(&v17 + 1) = 0;
  v9 = v13;
  v10 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  memset(v11, 0, sizeof(v11));
  v3 = std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(v11, v15, v16, 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 3));
  v12 = v17;
  RIO_MTLX::NULL_TREE_ITERATOR(v3);
  v6 = RIO_MTLX::NULL_TREE_ITERATOR(void)::v;
  if (*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1))
  {
    atomic_fetch_add_explicit((*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1) + 8), 1uLL, memory_order_relaxed);
  }

  memset(v7, 0, sizeof(v7));
  std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(v7, qword_27EE52740, unk_27EE52748, 0xAAAAAAAAAAAAAAABLL * ((unk_27EE52748 - qword_27EE52740) >> 3));
  v8 = xmmword_27EE52758;
  while (RIO_MTLX::TreeIterator::operator!=(&v9, &v6))
  {
    v4 = v9;
    v5 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if ((*(v4 + 95) & 0x8000000000000000) != 0)
    {
      if (!*(v4 + 80))
      {
        goto LABEL_14;
      }

LABEL_13:
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a2, (v4 + 72), v4 + 72);
      goto LABEL_14;
    }

    if (*(v4 + 95))
    {
      goto LABEL_13;
    }

LABEL_14:
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    RIO_MTLX::TreeIterator::operator++(&v9);
  }

  RIO_MTLX::TreeIterator::~TreeIterator(&v6);
  RIO_MTLX::TreeIterator::~TreeIterator(&v9);
  RIO_MTLX::TreeIterator::~TreeIterator(&v13);
}

void sub_24755ECAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  RIO_MTLX::TreeIterator::~TreeIterator(va);
  RIO_MTLX::TreeIterator::~TreeIterator((v17 - 88));
  std::__tree<std::string>::destroy(v16, *(v16 + 8));
  _Unwind_Resume(a1);
}

unint64_t RIO_MTLX::Document::getVersionIntegers(RIO_MTLX::Document *this)
{
  v2 = RIO_MTLX::InterfaceElement::VERSION_ATTRIBUTE(this);
  if (!std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(this + 20, v2))
  {
    return 0x2600000001;
  }

  return RIO_MTLX::InterfaceElement::getVersionIntegers(this);
}

void **RIO_MTLX::Document::getMatchingPorts@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  RIO_MTLX::Document::Cache::refresh(*(a1 + 272));
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>>>::__equal_range_multi<std::string>((*(a1 + 272) + 88), a2);
  v7 = result;
  v9 = v8;
  while (v7 != v9)
  {
    result = std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](a3, (v7 + 5));
    v7 = *v7;
  }

  return result;
}

void sub_24755EDFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void RIO_MTLX::Document::Cache::refresh(RIO_MTLX::Document::Cache *this)
{
  std::mutex::lock((this + 16));
  if ((*(this + 80) & 1) == 0)
  {
    if (*(this + 14))
    {
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>>>::__deallocate_node(*(this + 13));
      *(this + 13) = 0;
      v2 = *(this + 12);
      if (v2)
      {
        for (i = 0; i != v2; ++i)
        {
          *(*(this + 11) + 8 * i) = 0;
        }
      }

      *(this + 14) = 0;
    }

    if (*(this + 19))
    {
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>>>::__deallocate_node(*(this + 18));
      *(this + 18) = 0;
      v4 = *(this + 17);
      if (v4)
      {
        for (j = 0; j != v4; ++j)
        {
          *(*(this + 16) + 8 * j) = 0;
        }
      }

      *(this + 19) = 0;
    }

    if (*(this + 24))
    {
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>>>::__deallocate_node(*(this + 23));
      *(this + 23) = 0;
      v6 = *(this + 22);
      if (v6)
      {
        for (k = 0; k != v6; ++k)
        {
          *(*(this + 21) + 8 * k) = 0;
        }
      }

      *(this + 24) = 0;
    }

    v29 = this + 168;
    v8 = *(this + 1);
    if (v8)
    {
      v8 = std::__shared_weak_count::lock(v8);
      v9 = v8;
      if (v8)
      {
        v8 = *this;
      }
    }

    else
    {
      v9 = 0;
    }

    RIO_MTLX::Element::traverseTree(v8, &v44);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    *(&v48 + 1) = 0;
    v40 = v44;
    v41 = v45;
    if (v45)
    {
      atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    memset(v42, 0, sizeof(v42));
    v10 = std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(v42, v46, v47, 0xAAAAAAAAAAAAAAABLL * ((v47 - v46) >> 3));
    v43 = v48;
    RIO_MTLX::NULL_TREE_ITERATOR(v10);
    v37 = RIO_MTLX::NULL_TREE_ITERATOR(void)::v;
    if (*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1))
    {
      atomic_fetch_add_explicit((*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1) + 8), 1uLL, memory_order_relaxed);
    }

    memset(v38, 0, sizeof(v38));
    std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(v38, qword_27EE52740, unk_27EE52748, 0xAAAAAAAAAAAAAAABLL * ((unk_27EE52748 - qword_27EE52740) >> 3));
    v39 = xmmword_27EE52758;
    while (1)
    {
      v11 = RIO_MTLX::TreeIterator::operator!=(&v40, &v37);
      if (!v11)
      {
        RIO_MTLX::TreeIterator::~TreeIterator(&v37);
        RIO_MTLX::TreeIterator::~TreeIterator(&v40);
        RIO_MTLX::TreeIterator::~TreeIterator(&v44);
        *(this + 80) = 1;
        break;
      }

      v13 = v40;
      v12 = v41;
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = RIO_MTLX::PortElement::NODE_NAME_ATTRIBUTE(v11);
      v15 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v13 + 160), v14);
      if (v15)
      {
        v16 = (v15 + 40);
      }

      else
      {
        v15 = RIO_MTLX::EMPTY_STRING(0);
        v16 = v15;
      }

      v17 = RIO_MTLX::NodeDef::NODE_ATTRIBUTE(v15);
      v18 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v13 + 160), v17);
      if (v18)
      {
        v19 = (v18 + 40);
      }

      else
      {
        v18 = RIO_MTLX::EMPTY_STRING(0);
        v19 = v18;
      }

      v20 = RIO_MTLX::InterfaceElement::NODE_DEF_ATTRIBUTE(v18);
      v21 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v13 + 160), v20);
      if (v21)
      {
        v22 = (v21 + 5);
      }

      else
      {
        v22 = RIO_MTLX::EMPTY_STRING(0);
      }

      if ((*(v16 + 23) & 0x8000000000000000) != 0)
      {
        if (!*(v16 + 1))
        {
          goto LABEL_48;
        }
      }

      else if (!*(v16 + 23))
      {
        goto LABEL_48;
      }

      RIO_MTLX::Element::asA<RIO_MTLX::PortElement>(v13, &v35);
      if (v35)
      {
        RIO_MTLX::Element::getQualifiedName(v35, v16, &__p);
        operator new();
      }

      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }

LABEL_48:
      if ((*(v19 + 23) & 0x8000000000000000) != 0)
      {
        if (!*(v19 + 1))
        {
          goto LABEL_56;
        }
      }

      else if (!*(v19 + 23))
      {
        goto LABEL_56;
      }

      RIO_MTLX::Element::asA<RIO_MTLX::NodeDef>(v13, &v35);
      if (v35)
      {
        RIO_MTLX::Element::getQualifiedName(v35, v19, &__p);
        operator new();
      }

      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }

LABEL_56:
      if ((*(v22 + 23) & 0x8000000000000000) != 0)
      {
        if (!v22[1])
        {
          goto LABEL_78;
        }
      }

      else if (!*(v22 + 23))
      {
        goto LABEL_78;
      }

      RIO_MTLX::Element::asA<RIO_MTLX::InterfaceElement>(v13, &v35);
      v24 = v35;
      if (v35)
      {
        v25 = RIO_MTLX::EMPTY_STRING(v23);
        if (RIO_MTLX::Element::isA<RIO_MTLX::NodeGraph>(v24, v25))
        {
          RIO_MTLX::Element::getQualifiedName(v35, v22, &v49);
          std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::InterfaceElement>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::InterfaceElement>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::InterfaceElement>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::InterfaceElement>>>>::__emplace_multi<std::string,std::shared_ptr<RIO_MTLX::InterfaceElement>&>(v29, &v49, &v35);
        }

        RIO_MTLX::Element::asA<RIO_MTLX::Implementation>(v35, &v32);
        if (v32)
        {
          NodeGraph = RIO_MTLX::Implementation::getNodeGraph(v32);
          v27 = NodeGraph;
          v28 = *(NodeGraph + 23);
          if (v28 < 0)
          {
            v28 = NodeGraph[1];
          }

          if (!v28)
          {
            RIO_MTLX::Element::getQualifiedName(v35, v22, &v49);
            std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::InterfaceElement>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::InterfaceElement>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::InterfaceElement>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::InterfaceElement>>>>::__emplace_multi<std::string,std::shared_ptr<RIO_MTLX::InterfaceElement>&>(v29, &v49, &v35);
          }

          RIO_MTLX::Element::getDocument(&v49, v32);
          RIO_MTLX::Element::getChildOfType<RIO_MTLX::NodeGraph>(v49.__r_.__value_.__l.__data_, v27, &v30);
          if (v49.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v49.__r_.__value_.__l.__size_);
          }

          if (v30)
          {
            RIO_MTLX::Element::getQualifiedName(v35, v22, &__p);
            operator new();
          }

          if (v31)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v31);
          }
        }

        if (v33)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v33);
        }
      }

      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }

LABEL_78:
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      RIO_MTLX::TreeIterator::operator++(&v40);
    }
  }

  std::mutex::unlock((this + 16));
}

void sub_24755FD84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, char a31, std::__shared_weak_count *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  RIO_MTLX::TreeIterator::~TreeIterator(&a38);
  RIO_MTLX::TreeIterator::~TreeIterator((v39 - 168));
  std::mutex::unlock((a14 + 16));
  _Unwind_Resume(a1);
}

void RIO_MTLX::Document::getGeomPropValue(RIO_MTLX *a1, uint64_t a2, uint64_t *a3, RIO_MTLX *a4)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  v8 = RIO_MTLX::EMPTY_STRING(a1);
  RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::GeomInfo>(a2, v8, &v21);
  v10 = v21;
  v9 = v22;
  if (v21 == v22)
  {
    v12 = 0;
    goto LABEL_21;
  }

  v11 = 0;
  v12 = 0;
  do
  {
    v14 = *v10;
    v13 = *(v10 + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    RIO_MTLX::GeomElement::getActiveGeom(&__p, v14);
    v15 = RIO_MTLX::geomStringsMatch(a4, &__p, 0);
    v16 = v15;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v16 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if ((v15 & 1) == 0)
    {
      goto LABEL_16;
    }

    RIO_MTLX::Element::getChildOfType<RIO_MTLX::GeomProp>(&__p, v14, a3);
    if (__p.__r_.__value_.__r.__words[0])
    {
      RIO_MTLX::ValueElement::getValue(__p.__r_.__value_.__l.__data_, &v18);
      v12 = v18;
      v17 = v19;
      v18 = 0;
      v19 = 0;
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }
      }

      v11 = v17;
    }

    if (__p.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
    }

LABEL_16:
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    v10 += 16;
  }

  while (v10 != v9);
  *(a1 + 1) = v11;
LABEL_21:
  *a1 = v12;
  __p.__r_.__value_.__r.__words[0] = &v21;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_2475600AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char *__p, std::__shared_weak_count *a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  *a10 = v21;
  a10[1] = v19;
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  __p = &a19;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  _Unwind_Resume(a1);
}

void **RIO_MTLX::Document::getMatchingNodeDefs@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  RIO_MTLX::Document::Cache::refresh(*(a1 + 272));
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>>>::__equal_range_multi<std::string>((*(a1 + 272) + 128), a2);
  v7 = result;
  v9 = v8;
  while (v7 != v9)
  {
    result = std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](a3, (v7 + 5));
    v7 = *v7;
  }

  return result;
}

void sub_2475601A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **RIO_MTLX::Document::getMatchingImplementations@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  RIO_MTLX::Document::Cache::refresh(*(a1 + 272));
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>>>::__equal_range_multi<std::string>((*(a1 + 272) + 168), a2);
  v7 = result;
  v9 = v8;
  while (v7 != v9)
  {
    result = std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](a3, (v7 + 5));
    v7 = *v7;
  }

  return result;
}

void sub_24756023C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t RIO_MTLX::Document::validate(uint64_t a1, std::string *a2)
{
  v18 = 1;
  v4 = (*(*a1 + 64))(a1);
  v6 = v4 != 1 || SHIDWORD(v4) > 37;
  v7 = v4 >= 1 && v6;
  std::string::basic_string[abi:ne200100]<0>(__p, "Unsupported document version");
  RIO_MTLX::Element::validateRequire(a1, v7, &v18, a2, __p);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = (*(*a1 + 64))(a1);
  v10 = v8 != 1 || SHIDWORD(v8) < 39;
  v11 = v8 <= 1 && v10;
  std::string::basic_string[abi:ne200100]<0>(v14, "Future document version");
  RIO_MTLX::Element::validateRequire(a1, v11, &v18, a2, v14);
  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  v12 = RIO_MTLX::Element::validate(a1, a2);
  return (v12 & v18);
}

void sub_24756039C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Document::upgradeVersion(uint64_t **this)
{
  v964 = *MEMORY[0x277D85DE8];
  v1 = ((*this)[8])(this);
  v2 = v1 >= 1 && v1 == 1;
  if (!v2 || SHIDWORD(v1) > 37)
  {
    return;
  }

  if (HIDWORD(v1) == 22)
  {
    RIO_MTLX::Element::traverseTree(this, &v959);
    *&v961[8] = 0;
    *&v955.__r_.__value_.__l.__data_ = *&v959.__r_.__value_.__l.__data_;
    if (v959.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((v959.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    }

    v956 = 0;
    v955.__r_.__value_.__r.__words[2] = 0;
    v957 = 0;
    v3 = std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v955.__r_.__value_.__r.__words[2], v959.__r_.__value_.__r.__words[2], v960, 0xAAAAAAAAAAAAAAABLL * ((v960 - v959.__r_.__value_.__r.__words[2]) >> 3));
    v958 = *v961;
    RIO_MTLX::NULL_TREE_ITERATOR(v3);
    v950 = RIO_MTLX::NULL_TREE_ITERATOR(void)::v;
    if (*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1))
    {
      atomic_fetch_add_explicit((*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v952 = 0;
    v951 = 0;
    v953 = 0;
    std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v951, qword_27EE52740, unk_27EE52748, 0xAAAAAAAAAAAAAAABLL * ((unk_27EE52748 - qword_27EE52740) >> 3));
    v954 = xmmword_27EE52758;
    while (1)
    {
      v4 = RIO_MTLX::TreeIterator::operator!=(&v955, &v950);
      if (!v4)
      {
        RIO_MTLX::TreeIterator::~TreeIterator(&v950);
        RIO_MTLX::TreeIterator::~TreeIterator(&v955);
        RIO_MTLX::TreeIterator::~TreeIterator(&v959);
LABEL_39:
        RIO_MTLX::Element::traverseTree(this, &v959);
        *&v961[8] = 0;
        *&v955.__r_.__value_.__l.__data_ = *&v959.__r_.__value_.__l.__data_;
        if (v959.__r_.__value_.__l.__size_)
        {
          atomic_fetch_add_explicit((v959.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
        }

        v956 = 0;
        v955.__r_.__value_.__r.__words[2] = 0;
        v957 = 0;
        v12 = std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v955.__r_.__value_.__r.__words[2], v959.__r_.__value_.__r.__words[2], v960, 0xAAAAAAAAAAAAAAABLL * ((v960 - v959.__r_.__value_.__r.__words[2]) >> 3));
        v958 = *v961;
        RIO_MTLX::NULL_TREE_ITERATOR(v12);
        v950 = RIO_MTLX::NULL_TREE_ITERATOR(void)::v;
        if (*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1))
        {
          atomic_fetch_add_explicit((*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v952 = 0;
        v951 = 0;
        v953 = 0;
        std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v951, qword_27EE52740, unk_27EE52748, 0xAAAAAAAAAAAAAAABLL * ((unk_27EE52748 - qword_27EE52740) >> 3));
        v954 = xmmword_27EE52758;
        while (2)
        {
          if (RIO_MTLX::TreeIterator::operator!=(&v955, &v950))
          {
            v13 = *&v955.__r_.__value_.__l.__data_;
            if (v955.__r_.__value_.__l.__size_)
            {
              atomic_fetch_add_explicit((v955.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
            }

            v14 = (v13 + 24);
            v15 = *(v13 + 47);
            if (v15 < 0)
            {
              if (*(v13 + 32) != 6)
              {
                goto LABEL_56;
              }

              v14 = *v14;
            }

            else if (v15 != 6)
            {
              goto LABEL_56;
            }

            v16 = *v14;
            v17 = *(v14 + 2);
            if (v16 == 1684105331 && v17 == 29285)
            {
              std::string::basic_string[abi:ne200100]<0>(&__str, "shadername");
              v23 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v13 + 160), &__str);
              v24 = v23;
              if (SBYTE7(__str_16) < 0)
              {
                operator delete(__str);
              }

              if (v24)
              {
                v25 = RIO_MTLX::NodeDef::NODE_ATTRIBUTE(v23);
                std::string::basic_string[abi:ne200100]<0>(&__str, "shadername");
                v26 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v13 + 160), &__str);
                if (v26)
                {
                  v27 = (v26 + 5);
                }

                else
                {
                  v27 = RIO_MTLX::EMPTY_STRING(0);
                }

                RIO_MTLX::Element::setAttribute(v13, v25, v27);
                if (SBYTE7(__str_16) < 0)
                {
                  operator delete(__str);
                }

                std::string::basic_string[abi:ne200100]<0>(&__str, "shadername");
                RIO_MTLX::Element::removeAttribute(v13, &__str);
                if (SBYTE7(__str_16) < 0)
                {
                  operator delete(__str);
                }
              }
            }

LABEL_56:
            std::string::basic_string[abi:ne200100]<0>(&__p, "assign");
            RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Element>(&__str, this[17], this[18], &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v19 = *(&__str + 1);
            v20 = __str;
LABEL_59:
            if (v20 == v19)
            {
              __p.__r_.__value_.__r.__words[0] = &__str;
              std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&__p);
              if (*(&v13 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
              }

              RIO_MTLX::TreeIterator::operator++(&v955);
              continue;
            }

            v21 = *v20;
            v22 = *(v20 + 8);
            if (v22)
            {
              atomic_fetch_add_explicit(&v22->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
              atomic_fetch_add_explicit(&v22->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
            }

            v947[1] = v22;
            v947[0] = v21;
            std::string::basic_string[abi:ne200100]<0>(&__p, "materialassign");
            RIO_MTLX::Element::changeChildCategory(v13, v947, &__p.__r_.__value_.__l.__data_, v948);
            if (v949)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v949);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              if (v22)
              {
LABEL_66:
                std::__shared_weak_count::__release_shared[abi:ne200100](v22);
                std::__shared_weak_count::__release_shared[abi:ne200100](v22);
              }
            }

            else if (v22)
            {
              goto LABEL_66;
            }

            v20 += 16;
            goto LABEL_59;
          }

          break;
        }

        RIO_MTLX::TreeIterator::~TreeIterator(&v950);
        RIO_MTLX::TreeIterator::~TreeIterator(&v955);
        RIO_MTLX::TreeIterator::~TreeIterator(&v959);
LABEL_84:
        RIO_MTLX::Element::traverseTree(this, &v959);
        *&v961[8] = 0;
        *&v955.__r_.__value_.__l.__data_ = *&v959.__r_.__value_.__l.__data_;
        if (v959.__r_.__value_.__l.__size_)
        {
          atomic_fetch_add_explicit((v959.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
        }

        v956 = 0;
        v955.__r_.__value_.__r.__words[2] = 0;
        v957 = 0;
        v28 = std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v955.__r_.__value_.__r.__words[2], v959.__r_.__value_.__r.__words[2], v960, 0xAAAAAAAAAAAAAAABLL * ((v960 - v959.__r_.__value_.__r.__words[2]) >> 3));
        v958 = *v961;
        RIO_MTLX::NULL_TREE_ITERATOR(v28);
        v950 = RIO_MTLX::NULL_TREE_ITERATOR(void)::v;
        if (*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1))
        {
          atomic_fetch_add_explicit((*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v952 = 0;
        v951 = 0;
        v953 = 0;
        std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v951, qword_27EE52740, unk_27EE52748, 0xAAAAAAAAAAAAAAABLL * ((unk_27EE52748 - qword_27EE52740) >> 3));
        v954 = xmmword_27EE52758;
        while (2)
        {
          v29 = RIO_MTLX::TreeIterator::operator!=(&v955, &v950);
          if (!v29)
          {
            RIO_MTLX::TreeIterator::~TreeIterator(&v950);
            RIO_MTLX::TreeIterator::~TreeIterator(&v955);
            RIO_MTLX::TreeIterator::~TreeIterator(&v959);
            goto LABEL_111;
          }

          v30 = *&v955.__r_.__value_.__l.__data_;
          if (v955.__r_.__value_.__l.__size_)
          {
            atomic_fetch_add_explicit((v955.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
          }

          v31 = RIO_MTLX::EMPTY_STRING(v29);
          if (!RIO_MTLX::Element::isA<RIO_MTLX::Input>(v30, v31))
          {
            goto LABEL_105;
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "graphname");
          v32 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v30 + 160), &__str);
          v33 = v32;
          if (SBYTE7(__str_16) < 0)
          {
            operator delete(__str);
            if (!v33)
            {
              goto LABEL_105;
            }
          }

          else if (!v32)
          {
            goto LABEL_105;
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "opgraph");
          std::string::basic_string[abi:ne200100]<0>(&__p, "graphname");
          v34 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v30 + 160), &__p);
          if (v34)
          {
            v35 = (v34 + 5);
          }

          else
          {
            v35 = RIO_MTLX::EMPTY_STRING(0);
          }

          RIO_MTLX::Element::setAttribute(v30, &__str, v35);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SBYTE7(__str_16) < 0)
          {
            operator delete(__str);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "graphname");
          RIO_MTLX::Element::removeAttribute(v30, &__str);
          if (SBYTE7(__str_16) < 0)
          {
            operator delete(__str);
            if (*(&v30 + 1))
            {
LABEL_106:
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v30 + 1));
            }
          }

          else
          {
LABEL_105:
            if (*(&v30 + 1))
            {
              goto LABEL_106;
            }
          }

          RIO_MTLX::TreeIterator::operator++(&v955);
          continue;
        }
      }

      v5 = *&v955.__r_.__value_.__l.__data_;
      if (v955.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v955.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      }

      v6 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v4);
      v7 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v5 + 160), v6);
      if (v7)
      {
        v8 = (v7 + 5);
      }

      else
      {
        v8 = RIO_MTLX::EMPTY_STRING(0);
      }

      v9 = *(v8 + 23);
      if (v9 < 0)
      {
        if (v8[1] != 6)
        {
          goto LABEL_30;
        }

        v8 = *v8;
      }

      else if (v9 != 6)
      {
        goto LABEL_30;
      }

      if (*v8 == 1952671094 && *(v8 + 2) == 29295)
      {
        v11 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v8);
        RIO_MTLX::TypedValue<RIO_MTLX::Vector3>::TYPE();
        RIO_MTLX::Element::setAttribute(v5, v11, &RIO_MTLX::TypedValue<RIO_MTLX::Vector3>::TYPE(void)::v);
      }

LABEL_30:
      if (*(&v5 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v5 + 1));
      }

      RIO_MTLX::TreeIterator::operator++(&v955);
    }
  }

  if (SHIDWORD(v1) <= 25)
  {
    if (HIDWORD(v1) == 23)
    {
      goto LABEL_39;
    }

    if (HIDWORD(v1) == 24)
    {
      goto LABEL_84;
    }

    if (HIDWORD(v1) != 25)
    {
      goto LABEL_488;
    }

LABEL_111:
    RIO_MTLX::Element::traverseTree(this, &v959);
    *&v961[8] = 0;
    *&v955.__r_.__value_.__l.__data_ = *&v959.__r_.__value_.__l.__data_;
    if (v959.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((v959.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    }

    v956 = 0;
    v955.__r_.__value_.__r.__words[2] = 0;
    v957 = 0;
    v36 = std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v955.__r_.__value_.__r.__words[2], v959.__r_.__value_.__r.__words[2], v960, 0xAAAAAAAAAAAAAAABLL * ((v960 - v959.__r_.__value_.__r.__words[2]) >> 3));
    v958 = *v961;
    RIO_MTLX::NULL_TREE_ITERATOR(v36);
    v950 = RIO_MTLX::NULL_TREE_ITERATOR(void)::v;
    if (*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1))
    {
      atomic_fetch_add_explicit((*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v952 = 0;
    v951 = 0;
    v953 = 0;
    std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v951, qword_27EE52740, unk_27EE52748, 0xAAAAAAAAAAAAAAABLL * ((unk_27EE52748 - qword_27EE52740) >> 3));
    v954 = xmmword_27EE52758;
    while (1)
    {
      if (!RIO_MTLX::TreeIterator::operator!=(&v955, &v950))
      {
        RIO_MTLX::TreeIterator::~TreeIterator(&v950);
        RIO_MTLX::TreeIterator::~TreeIterator(&v955);
        RIO_MTLX::TreeIterator::~TreeIterator(&v959);
        goto LABEL_141;
      }

      v37 = *&v955.__r_.__value_.__l.__data_;
      if (v955.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v955.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      }

      v38 = (v37 + 24);
      v39 = *(v37 + 47);
      if (v39 < 0)
      {
        if (*(v37 + 32) != 8)
        {
          goto LABEL_137;
        }

        v38 = *v38;
      }

      else if (v39 != 8)
      {
        goto LABEL_137;
      }

      if (*v38 != 0x746E6174736E6F63)
      {
        goto LABEL_137;
      }

      std::string::basic_string[abi:ne200100]<0>(&__str, "color");
      v40 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v37 + 96), &__str);
      if (v40)
      {
        v42 = v40[5];
        v41 = v40[6];
        if (v41)
        {
          atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v41 = 0;
        v42 = 0;
      }

      if (SBYTE7(__str_16) < 0)
      {
        operator delete(__str);
        if (v42)
        {
LABEL_133:
          std::string::basic_string[abi:ne200100]<0>(&__str, "value");
          RIO_MTLX::Element::setName(v42, &__str);
          if (SBYTE7(__str_16) < 0)
          {
            operator delete(__str);
          }
        }
      }

      else if (v42)
      {
        goto LABEL_133;
      }

      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      }

LABEL_137:
      if (*(&v37 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v37 + 1));
      }

      RIO_MTLX::TreeIterator::operator++(&v955);
    }
  }

  if (SHIDWORD(v1) <= 34)
  {
    if (HIDWORD(v1) != 26)
    {
      if (HIDWORD(v1) == 34)
      {
        goto LABEL_510;
      }

      goto LABEL_488;
    }

LABEL_141:
    RIO_MTLX::Element::traverseTree(this, &v959);
    *&v961[8] = 0;
    *&v955.__r_.__value_.__l.__data_ = *&v959.__r_.__value_.__l.__data_;
    if (v959.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((v959.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    }

    v956 = 0;
    v955.__r_.__value_.__r.__words[2] = 0;
    v957 = 0;
    v43 = std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v955.__r_.__value_.__r.__words[2], v959.__r_.__value_.__r.__words[2], v960, 0xAAAAAAAAAAAAAAABLL * ((v960 - v959.__r_.__value_.__r.__words[2]) >> 3));
    v958 = *v961;
    RIO_MTLX::NULL_TREE_ITERATOR(v43);
    v950 = RIO_MTLX::NULL_TREE_ITERATOR(void)::v;
    if (*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1))
    {
      atomic_fetch_add_explicit((*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v952 = 0;
    v951 = 0;
    v953 = 0;
    std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v951, qword_27EE52740, unk_27EE52748, 0xAAAAAAAAAAAAAAABLL * ((unk_27EE52748 - qword_27EE52740) >> 3));
    v954 = xmmword_27EE52758;
LABEL_146:
    if (RIO_MTLX::TreeIterator::operator!=(&v955, &v950))
    {
      v44 = *&v955.__r_.__value_.__l.__data_;
      if (v955.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v955.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      }

      __str = 0uLL;
      *&__str_16 = 0;
      size = std::vector<std::shared_ptr<RIO_MTLX::Element>>::__init_with_size[abi:ne200100]<std::shared_ptr<RIO_MTLX::Element>*,std::shared_ptr<RIO_MTLX::Element>*>(&__str, *(v44 + 136), *(v44 + 144), (*(v44 + 144) - *(v44 + 136)) >> 4);
      v46 = *(&__str + 1);
      for (i = __str; ; i += 2)
      {
        if (i == v46)
        {
          __p.__r_.__value_.__r.__words[0] = &__str;
          std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&__p);
          if (*(&v44 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v44 + 1));
          }

          RIO_MTLX::TreeIterator::operator++(&v955);
          goto LABEL_146;
        }

        v48 = *i;
        v49 = i[1];
        if (v49)
        {
          atomic_fetch_add_explicit(&v49->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v50 = (v48 + 24);
        if (*(v48 + 47) < 0)
        {
          v52 = *(v48 + 32);
          if (v52 == 6)
          {
            v50 = *v50;
LABEL_187:
            v62 = *v50;
            v63 = *(v50 + 2);
            if (v62 != 1684105331 || v63 != 29285)
            {
              goto LABEL_250;
            }

            v943[0] = v48;
            v943[1] = v49;
            if (v49)
            {
              atomic_fetch_add_explicit(&v49->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
            }

            std::string::basic_string[abi:ne200100]<0>(&__p, "nodedef");
            RIO_MTLX::Element::changeChildCategory(v44, v943, &__p.__r_.__value_.__l.__data_, &v899);
            RIO_MTLX::Element::asA<RIO_MTLX::NodeDef>(v899.__r_.__value_.__l.__data_, &v901);
            if (v899.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v899.__r_.__value_.__l.__size_);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              if (v49)
              {
LABEL_198:
                std::__shared_weak_count::__release_shared[abi:ne200100](v49);
              }
            }

            else if (v49)
            {
              goto LABEL_198;
            }

            v65 = v901.__r_.__value_.__r.__words[0];
            std::string::basic_string[abi:ne200100]<0>(&__p, "shadertype");
            v66 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v65 + 160), &__p);
            v67 = v66;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              if (!v67)
              {
                goto LABEL_215;
              }
            }

            else if (!v66)
            {
              goto LABEL_215;
            }

            v71 = v901.__r_.__value_.__r.__words[0];
            v72 = RIO_MTLX::SURFACE_SHADER_TYPE_STRING(v66);
            v73 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v72);
            RIO_MTLX::Element::setAttribute(v71, v73, v72);
            v74 = v901.__r_.__value_.__r.__words[0];
            std::string::basic_string[abi:ne200100]<0>(&__p, "shadertype");
            RIO_MTLX::Element::removeAttribute(v74, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

LABEL_215:
            v75 = v901.__r_.__value_.__r.__words[0];
            std::string::basic_string[abi:ne200100]<0>(&__p, "shaderprogram");
            v76 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v75 + 160), &__p);
            v77 = v76;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              if (!v77)
              {
                goto LABEL_248;
              }
            }

            else if (!v76)
            {
LABEL_248:
              size = v901.__r_.__value_.__l.__size_;
              if (v901.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v901.__r_.__value_.__l.__size_);
              }

              goto LABEL_250;
            }

            v78 = v901.__r_.__value_.__r.__words[0];
            std::string::basic_string[abi:ne200100]<0>(&__p, "shaderprogram");
            v79 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v78 + 20, &__p);
            if (v79)
            {
              v80 = (v79 + 40);
            }

            else
            {
              v79 = RIO_MTLX::EMPTY_STRING(0);
              v80 = v79;
            }

            v88 = RIO_MTLX::NodeDef::NODE_ATTRIBUTE(v79);
            RIO_MTLX::Element::setAttribute(v78, v88, v80);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v89 = v901.__r_.__value_.__r.__words[0];
            std::string::basic_string[abi:ne200100]<0>(&__p, "shaderprogram");
            RIO_MTLX::Element::removeAttribute(v89, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            goto LABEL_248;
          }

          if (v52 != 7)
          {
            if (v52 != 9)
            {
              goto LABEL_250;
            }

            v50 = *v50;
            goto LABEL_162;
          }

          v50 = *v50;
        }

        else
        {
          v51 = *(v48 + 47);
          if (v51 == 6)
          {
            goto LABEL_187;
          }

          if (v51 != 7)
          {
            if (v51 != 9)
            {
              goto LABEL_250;
            }

LABEL_162:
            if (*v50 == 0x6572726564616873 && *(v50 + 8) == 102)
            {
              std::string::basic_string[abi:ne200100]<0>(&__p, "shadertype");
              size = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v48 + 160), &__p);
              v68 = size;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
                if (!v68)
                {
                  goto LABEL_250;
                }
              }

              else if (!size)
              {
                goto LABEL_250;
              }

              v69 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(size);
              v70 = RIO_MTLX::SURFACE_SHADER_TYPE_STRING(v69);
              RIO_MTLX::Element::setAttribute(v48, v69, v70);
              std::string::basic_string[abi:ne200100]<0>(&__p, "shadertype");
              RIO_MTLX::Element::removeAttribute(v48, &__p);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              goto LABEL_250;
            }

            v54 = *v50;
            v55 = *(v50 + 8);
            if (v54 != 0x6574656D61726170 || v55 != 114)
            {
              goto LABEL_250;
            }

            v57 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(size);
            v58 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v48 + 160), v57);
            size = v58 ? (v58 + 5) : RIO_MTLX::EMPTY_STRING(0);
            v81 = *(size + 23);
            if (v81 < 0)
            {
              if (size[1] != 11)
              {
                goto LABEL_250;
              }

              size = *size;
            }

            else if (v81 != 11)
            {
              goto LABEL_250;
            }

            if (*size != 0x6E6870617267706FLL || *(size + 3) != 0x65646F6E68706172)
            {
LABEL_250:
              if (!v49)
              {
                continue;
              }

              goto LABEL_251;
            }

            v83 = RIO_MTLX::EMPTY_STRING(size);
            v84 = RIO_MTLX::Element::isA<RIO_MTLX::Node>(v44, v83);
            if (v84)
            {
              v942[0] = v48;
              v942[1] = v49;
              if (v49)
              {
                atomic_fetch_add_explicit(&v49->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
              }

              std::string::basic_string[abi:ne200100]<0>(&__p, "input");
              RIO_MTLX::Element::changeChildCategory(v44, v942, &__p.__r_.__value_.__l.__data_, &v899);
              RIO_MTLX::Element::asA<RIO_MTLX::Input>(v899.__r_.__value_.__l.__data_, &v901);
              if (v899.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v899.__r_.__value_.__l.__size_);
              }

              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (v49)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v49);
              }

              v85 = v901.__r_.__value_.__r.__words[0];
              std::string::basic_string[abi:ne200100]<0>(&__p, "value");
              v86 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v85 + 20, &__p);
              if (v86)
              {
                v87 = (v86 + 40);
              }

              else
              {
                v86 = RIO_MTLX::EMPTY_STRING(0);
                v87 = v86;
              }

              v93 = RIO_MTLX::PortElement::NODE_NAME_ATTRIBUTE(v86);
              RIO_MTLX::Element::setAttribute(v85, v93, v87);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v94 = v901.__r_.__value_.__r.__words[0];
              std::string::basic_string[abi:ne200100]<0>(&__p, "value");
              RIO_MTLX::Element::removeAttribute(v94, &__p);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              (*(*v901.__r_.__value_.__l.__data_ + 64))(&__p);
              v95 = __p.__r_.__value_.__r.__words[0];
              if (__p.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
              }

              v96 = v901.__r_.__value_.__r.__words[0];
              if (v95)
              {
                (*(*v901.__r_.__value_.__l.__data_ + 64))(&__p, v901.__r_.__value_.__r.__words[0]);
                v97 = (*(*__p.__r_.__value_.__l.__data_ + 56))(__p.__r_.__value_.__r.__words[0]);
                v98 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v97);
                RIO_MTLX::Element::setAttribute(v96, v98, v97);
                if (__p.__r_.__value_.__l.__size_)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
                }
              }

              else
              {
                v99 = RIO_MTLX::TypedValue<RIO_MTLX::Color3>::TYPE();
                v100 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v99);
                RIO_MTLX::Element::setAttribute(v96, v100, &RIO_MTLX::TypedValue<RIO_MTLX::Color3>::TYPE(void)::v);
              }

              goto LABEL_248;
            }

            v90 = RIO_MTLX::EMPTY_STRING(v84);
            size = RIO_MTLX::Element::isA<RIO_MTLX::Output>(v44, v90);
            if (!size)
            {
              goto LABEL_250;
            }

            v91 = *(v48 + 71);
            if (v91 < 0)
            {
              if (*(v48 + 56) != 2)
              {
LABEL_278:
                RIO_MTLX::Element::removeChild(v44, (v48 + 48));
                goto LABEL_250;
              }

              v92 = *(v48 + 48);
            }

            else
            {
              v92 = (v48 + 48);
              if (v91 != 2)
              {
                goto LABEL_278;
              }
            }

            if (*v92 == 28265)
            {
              std::string::basic_string[abi:ne200100]<0>(&__p, "nodename");
              std::string::basic_string[abi:ne200100]<0>(&v901, "value");
              v101 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v48 + 160), &v901);
              if (v101)
              {
                v102 = (v101 + 5);
              }

              else
              {
                v102 = RIO_MTLX::EMPTY_STRING(0);
              }

              RIO_MTLX::Element::setAttribute(v44, &__p, v102);
              if (SHIBYTE(v901.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v901.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            goto LABEL_278;
          }
        }

        v59 = *v50;
        v60 = *(v50 + 3);
        if (v59 != 1919381615 || v60 != 1752195442)
        {
          goto LABEL_250;
        }

        v944[0] = v48;
        v944[1] = v49;
        if (v49)
        {
          atomic_fetch_add_explicit(&v49->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "nodegraph");
        RIO_MTLX::Element::changeChildCategory(v44, v944, &__p.__r_.__value_.__l.__data_, v945);
        size = v946;
        if (v946)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v946);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if (!v49)
          {
            continue;
          }

LABEL_206:
          std::__shared_weak_count::__release_shared[abi:ne200100](v49);
LABEL_251:
          std::__shared_weak_count::__release_shared[abi:ne200100](v49);
          continue;
        }

        if (v49)
        {
          goto LABEL_206;
        }
      }
    }

    RIO_MTLX::TreeIterator::~TreeIterator(&v950);
    RIO_MTLX::TreeIterator::~TreeIterator(&v955);
    RIO_MTLX::TreeIterator::~TreeIterator(&v959);
    std::string::basic_string[abi:ne200100]<0>(&v955, "material");
    RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Element>(&v959, this[17], this[18], &v955);
    if (SHIBYTE(v955.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v955.__r_.__value_.__l.__data_);
    }

    v104 = v959.__r_.__value_.__l.__size_;
    for (j = v959.__r_.__value_.__r.__words[0]; j != v104; j += 2)
    {
      v106 = *j;
      v105 = j[1];
      if (v105)
      {
        atomic_fetch_add_explicit(&v105->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(&v950, "shaderref");
      RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Element>(&v955, *(v106 + 136), *(v106 + 144), &v950);
      if (SHIBYTE(v951) < 0)
      {
        operator delete(v950);
      }

      v107 = v955.__r_.__value_.__l.__size_;
      for (k = v955.__r_.__value_.__r.__words[0]; k != v107; k += 16)
      {
        v110 = *k;
        v109 = *(k + 8);
        if (v109)
        {
          atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v941[0] = v110;
        v941[1] = v109;
        v111 = v950;
        if (*(&v950 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v950 + 1));
        }

        if (v109)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v109);
        }

        if (!v111)
        {
          RIO_MTLX::Element::getChildOfType<RIO_MTLX::NodeDef>(this, v110 + 6, &v950);
          if (v950)
          {
            v113 = RIO_MTLX::InterfaceElement::NODE_DEF_ATTRIBUTE(v112);
            v114 = RIO_MTLX::Element::setAttribute(v110, v113, (v950 + 48));
            v115 = RIO_MTLX::NodeDef::NODE_ATTRIBUTE(v114);
            NodeString = RIO_MTLX::NodeDef::getNodeString(v950);
            RIO_MTLX::Element::setAttribute(v110, v115, NodeString);
          }

          if (*(&v950 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v950 + 1));
          }
        }

        if (v109)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v109);
        }
      }

      *&v950 = &v955;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v950);
      if (v105)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v105);
      }
    }

    v955.__r_.__value_.__r.__words[0] = &v959;
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v955);
    std::string::basic_string[abi:ne200100]<0>(&v959, "material");
    RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Element>(&__str, this[17], this[18], &v959);
    if (SHIBYTE(v959.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v959.__r_.__value_.__l.__data_);
    }

    v118 = RIO_MTLX::EMPTY_STRING(v117);
    RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::NodeDef>(this, v118, &v959);
    v783 = v959.__r_.__value_.__l.__size_;
    v119 = v959.__r_.__value_.__r.__words[0];
    if (v959.__r_.__value_.__r.__words[0] != v959.__r_.__value_.__l.__size_)
    {
      while (1)
      {
        v121 = *v119;
        v120 = *(v119 + 8);
        v786 = v119;
        if (v120)
        {
          atomic_fetch_add_explicit(&v120->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v789 = v120;
        RIO_MTLX::InterfaceElement::getActiveInputs(&v955.__r_.__value_.__l.__data_, v121);
        v122 = v955.__r_.__value_.__l.__size_;
        v791 = v955.__r_.__value_.__l.__size_;
        v123 = v955.__r_.__value_.__r.__words[0];
        if (v955.__r_.__value_.__r.__words[0] != v955.__r_.__value_.__l.__size_)
        {
          break;
        }

LABEL_382:
        *&v950 = &v955;
        std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v950);
        if (v789)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v789);
        }

        v119 = v786 + 16;
        if (v786 + 16 == v783)
        {
          goto LABEL_385;
        }
      }

      while (1)
      {
        v125 = *v123;
        v124 = v123[1];
        if (v124)
        {
          atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v796 = v124;
        std::string::basic_string[abi:ne200100]<0>(&v950, "opgraph");
        if (std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v125 + 160), &v950))
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "graphoutput");
          v126 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v125 + 160), &__p) != 0;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v126 = 0;
        }

        if (SHIBYTE(v951) < 0)
        {
          operator delete(v950);
          if (!v126)
          {
            goto LABEL_379;
          }
        }

        else if (!v126)
        {
          goto LABEL_379;
        }

        v794 = v123;
        v127 = *(&__str + 1);
        v801 = *(&__str + 1);
        v128 = __str;
LABEL_325:
        if (v128 != v127)
        {
          break;
        }

        std::string::basic_string[abi:ne200100]<0>(&v950, "opgraph");
        RIO_MTLX::Element::removeAttribute(v125, &v950);
        v122 = v791;
        v123 = v794;
        if (SHIBYTE(v951) < 0)
        {
          operator delete(v950);
        }

        std::string::basic_string[abi:ne200100]<0>(&v950, "graphoutput");
        RIO_MTLX::Element::removeAttribute(v125, &v950);
        if (SHIBYTE(v951) < 0)
        {
          operator delete(v950);
        }

LABEL_379:
        if (v796)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v796);
        }

        v123 += 2;
        if (v123 == v122)
        {
          goto LABEL_382;
        }
      }

      v130 = v128->__r_.__value_.__r.__words[0];
      v129 = v128->__r_.__value_.__l.__size_;
      if (v129)
      {
        atomic_fetch_add_explicit(&v129->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      __src = v129;
      std::string::basic_string[abi:ne200100]<0>(&__p, "shaderref");
      RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Element>(&v950, *(v130 + 136), *(v130 + 144), &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v132 = *(&v950 + 1);
      for (m = v950; ; m += 2)
      {
        if (m == v132)
        {
          __p.__r_.__value_.__r.__words[0] = &v950;
          std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&__p);
          if (__src)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](__src);
          }

          v128 = (v128 + 16);
          v127 = v801;
          goto LABEL_325;
        }

        v134 = *m;
        v133 = m[1];
        if (v133)
        {
          atomic_fetch_add_explicit(&v133->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v133->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v940[0] = v134;
        v940[1] = v133;
        if (__p.__r_.__value_.__l.__data_ != v121)
        {
          v135 = 0;
          goto LABEL_341;
        }

        v136 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v134 + 96), (v125 + 48));
        if (v136)
        {
          v138 = v136[5];
          v137 = v136[6];
          if (v137)
          {
            atomic_fetch_add_explicit(&v137->__shared_owners_, 1uLL, memory_order_relaxed);
            v135 = v138 == 0;
            std::__shared_weak_count::__release_shared[abi:ne200100](v137);
            goto LABEL_341;
          }
        }

        else
        {
          v138 = 0;
        }

        v135 = v138 == 0;
LABEL_341:
        if (__p.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
        }

        if (v133)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v133);
        }

        if (v135)
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "bindinput");
          if (*(v125 + 71) < 0)
          {
            std::string::__init_copy_ctor_external(&v939, *(v125 + 48), *(v125 + 56));
          }

          else
          {
            v939 = *(v125 + 48);
          }

          RIO_MTLX::Element::addChildOfCategory(v134, &__p.__r_.__value_.__l.__data_, &v939, &v899);
          if (SHIBYTE(v939.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v939.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v140 = v899.__r_.__value_.__r.__words[0];
          v141 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v139);
          v142 = (*(*v125 + 56))(v125);
          RIO_MTLX::Element::setAttribute(v140, v141, v142);
          v143 = v899.__r_.__value_.__r.__words[0];
          std::string::basic_string[abi:ne200100]<0>(&__p, "nodegraph");
          std::string::basic_string[abi:ne200100]<0>(&v901, "opgraph");
          v144 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v125 + 160), &v901);
          if (v144)
          {
            v145 = (v144 + 5);
          }

          else
          {
            v145 = RIO_MTLX::EMPTY_STRING(0);
          }

          RIO_MTLX::Element::setAttribute(v143, &__p, v145);
          if (SHIBYTE(v901.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v901.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v146 = v899.__r_.__value_.__r.__words[0];
          std::string::basic_string[abi:ne200100]<0>(&__p, "output");
          std::string::basic_string[abi:ne200100]<0>(&v901, "graphoutput");
          v147 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v125 + 160), &v901);
          if (v147)
          {
            v148 = (v147 + 5);
          }

          else
          {
            v148 = RIO_MTLX::EMPTY_STRING(0);
          }

          RIO_MTLX::Element::setAttribute(v146, &__p, v148);
          if (SHIBYTE(v901.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v901.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v899.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v899.__r_.__value_.__l.__size_);
          }
        }

        if (v133)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v133);
        }
      }
    }

LABEL_385:
    v955.__r_.__value_.__r.__words[0] = &v959;
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v955);
    v150 = RIO_MTLX::EMPTY_STRING(v149);
    RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::GeomInfo>(this, v150, &v959);
    v152 = v959.__r_.__value_.__l.__size_;
    v151 = v959.__r_.__value_.__r.__words[0];
    if (v959.__r_.__value_.__r.__words[0] == v959.__r_.__value_.__l.__size_)
    {
      goto LABEL_405;
    }

    do
    {
      v154 = *v151;
      v153 = v151[1];
      if (v153)
      {
        atomic_fetch_add_explicit(&v153->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(&v950, "geomattr");
      RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Element>(&v955, *(v154 + 136), *(v154 + 144), &v950);
      if (SHIBYTE(v951) < 0)
      {
        operator delete(v950);
      }

      v155 = v955.__r_.__value_.__l.__size_;
      for (n = v955.__r_.__value_.__r.__words[0]; n != v155; n += 16)
      {
        v157 = *n;
        v158 = *(n + 8);
        if (v158)
        {
          atomic_fetch_add_explicit(&v158->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v158->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v936[1] = v158;
        v936[0] = v157;
        std::string::basic_string[abi:ne200100]<0>(&v950, "geomprop");
        RIO_MTLX::Element::changeChildCategory(v154, v936, &v950, v937);
        if (v938)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v938);
        }

        if ((SHIBYTE(v951) & 0x80000000) == 0)
        {
          if (!v158)
          {
            continue;
          }

LABEL_398:
          std::__shared_weak_count::__release_shared[abi:ne200100](v158);
          std::__shared_weak_count::__release_shared[abi:ne200100](v158);
          continue;
        }

        operator delete(v950);
        if (v158)
        {
          goto LABEL_398;
        }
      }

      *&v950 = &v955;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v950);
      if (v153)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v153);
      }

      v151 += 2;
    }

    while (v151 != v152);
LABEL_405:
    v955.__r_.__value_.__r.__words[0] = &v959;
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v955);
    v159 = std::string::basic_string[abi:ne200100]<0>(&v959, "udim");
    v160 = RIO_MTLX::UNIVERSAL_GEOM_NAME(v159);
    RIO_MTLX::Document::getGeomPropValue(&v950, this, &v959, v160);
    if (v950)
    {
      v161 = std::string::basic_string[abi:ne200100]<0>(&v955, "udimset");
      v162 = RIO_MTLX::UNIVERSAL_GEOM_NAME(v161);
      RIO_MTLX::Document::getGeomPropValue(&__p, this, &v955, v162);
      v163 = __p.__r_.__value_.__r.__words[0] == 0;
      if (__p.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
      }

      if (SHIBYTE(v955.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v955.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v163 = 0;
    }

    v164 = *(&v950 + 1);
    if (*(&v950 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v950 + 1));
    }

    if (SHIBYTE(v959.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v959.__r_.__value_.__l.__data_);
      if (!v163)
      {
        goto LABEL_509;
      }
    }

    else if (!v163)
    {
LABEL_509:
      v959.__r_.__value_.__r.__words[0] = &__str;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v959);
LABEL_510:
      RIO_MTLX::Element::traverseTree(this, &v959);
      *&v961[8] = 0;
      *&v955.__r_.__value_.__l.__data_ = *&v959.__r_.__value_.__l.__data_;
      if (v959.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v959.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      }

      v956 = 0;
      v955.__r_.__value_.__r.__words[2] = 0;
      v957 = 0;
      v208 = std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v955.__r_.__value_.__r.__words[2], v959.__r_.__value_.__r.__words[2], v960, 0xAAAAAAAAAAAAAAABLL * ((v960 - v959.__r_.__value_.__r.__words[2]) >> 3));
      v958 = *v961;
      RIO_MTLX::NULL_TREE_ITERATOR(v208);
      v950 = RIO_MTLX::NULL_TREE_ITERATOR(void)::v;
      if (*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1))
      {
        atomic_fetch_add_explicit((*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v952 = 0;
      v951 = 0;
      v953 = 0;
      std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v951, qword_27EE52740, unk_27EE52748, 0xAAAAAAAAAAAAAAABLL * ((unk_27EE52748 - qword_27EE52740) >> 3));
      v954 = xmmword_27EE52758;
      while (2)
      {
        v209 = RIO_MTLX::TreeIterator::operator!=(&v955, &v950);
        if (v209)
        {
          v210 = *&v955.__r_.__value_.__l.__data_;
          if (v955.__r_.__value_.__l.__size_)
          {
            atomic_fetch_add_explicit((v955.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
          }

          v211 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v209);
          v212 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v210 + 160), v211);
          if (v212)
          {
            v213 = (v212 + 5);
          }

          else
          {
            v213 = RIO_MTLX::EMPTY_STRING(0);
          }

          v214 = *(v213 + 23);
          if (v214 < 0)
          {
            if (v213[1] != 6)
            {
              goto LABEL_532;
            }

            v213 = *v213;
          }

          else if (v214 != 6)
          {
            goto LABEL_532;
          }

          if (*v213 == 1920229741 && *(v213 + 2) == 30825)
          {
            v216 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v213);
            RIO_MTLX::TypedValue<RIO_MTLX::Matrix44>::TYPE();
            RIO_MTLX::Element::setAttribute(v210, v216, &RIO_MTLX::TypedValue<RIO_MTLX::Matrix44>::TYPE(void)::v);
          }

LABEL_532:
          std::string::basic_string[abi:ne200100]<0>(&__str, "default");
          v217 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v210 + 160), &__str);
          if (v217)
          {
            v218 = RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(v217);
            v219 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v210 + 160), v218);
            v220 = v219;
            if (SBYTE7(__str_16) < 0)
            {
              operator delete(__str);
              if (!v220)
              {
                goto LABEL_537;
              }
            }

            else if (!v219)
            {
LABEL_537:
              v221 = RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(v219);
              std::string::basic_string[abi:ne200100]<0>(&__str, "default");
              v222 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v210 + 160), &__str);
              if (v222)
              {
                v223 = (v222 + 5);
              }

              else
              {
                v223 = RIO_MTLX::EMPTY_STRING(0);
              }

              RIO_MTLX::Element::setAttribute(v210, v221, v223);
              if (SBYTE7(__str_16) < 0)
              {
                operator delete(__str);
              }

              std::string::basic_string[abi:ne200100]<0>(&__str, "default");
              RIO_MTLX::Element::removeAttribute(v210, &__str);
              goto LABEL_543;
            }
          }

          else
          {
LABEL_543:
            if (SBYTE7(__str_16) < 0)
            {
              operator delete(__str);
            }
          }

          RIO_MTLX::Element::asA<RIO_MTLX::MaterialAssign>(v210, &__str);
          v225 = __str;
          if (__str)
          {
            v226 = RIO_MTLX::MaterialAssign::MATERIAL_ATTRIBUTE(v224);
            RIO_MTLX::Element::setAttribute(v225, v226, v225 + 2);
          }

          if (*(&__str + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&__str + 1));
          }

          if (*(&v210 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v210 + 1));
          }

          RIO_MTLX::TreeIterator::operator++(&v955);
          continue;
        }

        break;
      }

      RIO_MTLX::TreeIterator::~TreeIterator(&v950);
      RIO_MTLX::TreeIterator::~TreeIterator(&v955);
      RIO_MTLX::TreeIterator::~TreeIterator(&v959);
LABEL_553:
      RIO_MTLX::Element::traverseTree(this, &v959);
      *&v961[8] = 0;
      *&v955.__r_.__value_.__l.__data_ = *&v959.__r_.__value_.__l.__data_;
      if (v959.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v959.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      }

      v956 = 0;
      v955.__r_.__value_.__r.__words[2] = 0;
      v957 = 0;
      v227 = std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v955.__r_.__value_.__r.__words[2], v959.__r_.__value_.__r.__words[2], v960, 0xAAAAAAAAAAAAAAABLL * ((v960 - v959.__r_.__value_.__r.__words[2]) >> 3));
      v958 = *v961;
      RIO_MTLX::NULL_TREE_ITERATOR(v227);
      v950 = RIO_MTLX::NULL_TREE_ITERATOR(void)::v;
      if (*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1))
      {
        atomic_fetch_add_explicit((*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v952 = 0;
      v951 = 0;
      v953 = 0;
      std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v951, qword_27EE52740, unk_27EE52748, 0xAAAAAAAAAAAAAAABLL * ((unk_27EE52748 - qword_27EE52740) >> 3));
      v954 = xmmword_27EE52758;
      while (2)
      {
        if (RIO_MTLX::TreeIterator::operator!=(&v955, &v950))
        {
          v228 = v955.__r_.__value_.__l.__size_;
          v229 = v955.__r_.__value_.__r.__words[0];
          if (v955.__r_.__value_.__l.__size_)
          {
            atomic_fetch_add_explicit((v955.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
          }

          RIO_MTLX::Element::asA<RIO_MTLX::Look>(v229, v896);
          RIO_MTLX::Element::asA<RIO_MTLX::GeomInfo>(v229, &v894);
          v231 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v230);
          v232 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v229 + 160), v231);
          if (v232)
          {
            v233 = (v232 + 40);
          }

          else
          {
            v232 = RIO_MTLX::EMPTY_STRING(0);
            v233 = v232;
          }

          v234 = RIO_MTLX::GEOMNAME_TYPE_STRING(v232);
          v235 = *(v233 + 23);
          if (v235 >= 0)
          {
            v236 = *(v233 + 23);
          }

          else
          {
            v236 = *(v233 + 1);
          }

          v237 = HIBYTE(v234->__r_.__value_.__r.__words[2]);
          v238 = v237;
          if ((v237 & 0x80u) != 0)
          {
            v237 = v234->__r_.__value_.__l.__size_;
          }

          if (v236 == v237)
          {
            v239 = v235 >= 0 ? v233 : *v233;
            v240 = v238 >= 0 ? v234 : v234->__r_.__value_.__r.__words[0];
            v234 = memcmp(v239, v240, v236);
            if (!v234)
            {
              v262 = RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(v234);
              v263 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v229 + 160), v262);
              if (v263)
              {
                v234 = (v263 + 5);
              }

              else
              {
                v234 = RIO_MTLX::EMPTY_STRING(0);
              }

              v264 = SHIBYTE(v234->__r_.__value_.__r.__words[2]);
              if (v264 < 0)
              {
                if (v234->__r_.__value_.__l.__size_ != 1)
                {
                  goto LABEL_577;
                }

                v234 = v234->__r_.__value_.__r.__words[0];
              }

              else if (v264 != 1)
              {
                goto LABEL_577;
              }

              if (v234->__r_.__value_.__s.__data_[0] == 42)
              {
                v265 = RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(v234);
                v266 = RIO_MTLX::UNIVERSAL_GEOM_NAME(v265);
                v234 = RIO_MTLX::Element::setAttribute(v229, v265, v266);
              }
            }
          }

LABEL_577:
          v241 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v234);
          v242 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v229 + 160), v241);
          if (v242)
          {
            v243 = (v242 + 40);
          }

          else
          {
            v242 = RIO_MTLX::EMPTY_STRING(0);
            v243 = v242;
          }

          v244 = RIO_MTLX::FILENAME_TYPE_STRING(v242);
          v245 = *(v243 + 23);
          if (v245 >= 0)
          {
            v246 = *(v243 + 23);
          }

          else
          {
            v246 = *(v243 + 1);
          }

          v247 = *(v244 + 23);
          v248 = v247;
          if ((v247 & 0x80u) != 0)
          {
            v247 = v244[1];
          }

          v790 = v228;
          if (v246 == v247)
          {
            v249 = v245 >= 0 ? v243 : *v243;
            v250 = v248 >= 0 ? v244 : *v244;
            v251 = memcmp(v249, v250, v246);
            if (!v251)
            {
              __str = 0u;
              __str_16 = 0u;
              LODWORD(v827) = 1065353216;
              v252 = RIO_MTLX::UDIM_TOKEN(v251);
              std::string::basic_string[abi:ne200100]<0>(&__p, "%UDIM");
              v901.__r_.__value_.__r.__words[0] = &__p;
              v253 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__str, &__p, &v901);
              v254 = std::string::operator=((v253 + 5), v252);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v255 = RIO_MTLX::UV_TILE_TOKEN(v254);
              std::string::basic_string[abi:ne200100]<0>(&__p, "%UVTILE");
              v901.__r_.__value_.__r.__words[0] = &__p;
              v256 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&__str, &__p, &v901);
              v257 = std::string::operator=((v256 + 5), v255);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v258 = RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(v257);
              v259 = RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(v258);
              v260 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v229 + 160), v259);
              if (v260)
              {
                v261 = (v260 + 5);
              }

              else
              {
                v261 = RIO_MTLX::EMPTY_STRING(0);
              }

              if (*(v261 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&v935, *v261, v261[1]);
              }

              else
              {
                v267 = *v261;
                v935.__r_.__value_.__r.__words[2] = v261[2];
                *&v935.__r_.__value_.__l.__data_ = v267;
              }

              RIO_MTLX::replaceSubstrings(&__p, &v935, &__str);
              RIO_MTLX::Element::setAttribute(v229, v258, &__p);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v935.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v935.__r_.__value_.__l.__data_);
              }

              std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&__str);
            }
          }

          __str = 0uLL;
          *&__str_16 = 0;
          std::vector<std::shared_ptr<RIO_MTLX::Element>>::__init_with_size[abi:ne200100]<std::shared_ptr<RIO_MTLX::Element>*,std::shared_ptr<RIO_MTLX::Element>*>(&__str, *(v229 + 136), *(v229 + 144), (*(v229 + 144) - *(v229 + 136)) >> 4);
          v795 = *(&__str + 1);
          v268 = __str;
          if (__str == *(&__str + 1))
          {
LABEL_755:
            __p.__r_.__value_.__r.__words[0] = &__str;
            std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&__p);
            if (v894.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v894.__r_.__value_.__l.__size_);
            }

            if (v896[1])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v896[1]);
            }

            if (v228)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v228);
            }

            RIO_MTLX::TreeIterator::operator++(&v955);
            continue;
          }

          v798 = (v229 + 24);
          v784 = v229;
          while (2)
          {
            v270 = *v268;
            v269 = v268[1];
            if (v269)
            {
              atomic_fetch_add_explicit(&v269->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            __srca = v269;
            v271 = *(v229 + 47);
            if (*(v229 + 47) < 0)
            {
              if (*(v229 + 32) != 8)
              {
                goto LABEL_637;
              }

              v272 = *v798;
            }

            else
            {
              v272 = v798;
              if (v271 != 8)
              {
                goto LABEL_637;
              }
            }

            if (*v272 == 0x6C6169726574616DLL)
            {
              v274 = (v270 + 24);
              v275 = *(v270 + 47);
              if (v275 < 0)
              {
                if (*(v270 + 32) != 8)
                {
                  goto LABEL_628;
                }

                v274 = *v274;
              }

              else if (v275 != 8)
              {
                goto LABEL_628;
              }

              if (*v274 == 0x656469727265766FLL)
              {
                std::string::basic_string[abi:ne200100]<0>(&v901, "shaderref");
                RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Element>(&__p, *(v229 + 136), *(v229 + 144), &v901);
                v787 = v268;
                if (SHIBYTE(v901.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v901.__r_.__value_.__l.__data_);
                }

                v793 = __p.__r_.__value_.__l.__size_;
                v285 = __p.__r_.__value_.__r.__words[0];
                if (__p.__r_.__value_.__r.__words[0] != __p.__r_.__value_.__l.__size_)
                {
                  while (1)
                  {
                    v286 = *v285;
                    v287 = v285[1];
                    if (v287)
                    {
                      atomic_fetch_add_explicit(&v287->__shared_owners_, 1uLL, memory_order_relaxed);
                      atomic_fetch_add_explicit(&v287->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    v934[0] = v286;
                    v934[1] = v287;
                    if (v287)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v287);
                    }

                    v802 = v287;
                    if (v892.__r_.__value_.__r.__words[0])
                    {
                      break;
                    }

LABEL_731:
                    if (v892.__r_.__value_.__l.__size_)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v892.__r_.__value_.__l.__size_);
                    }

                    if (v802)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v802);
                    }

                    v285 += 2;
                    if (v285 == v793)
                    {
                      goto LABEL_736;
                    }
                  }

                  RIO_MTLX::InterfaceElement::getActiveValueElements(&v901.__r_.__value_.__l.__data_, v892.__r_.__value_.__l.__data_);
                  v288 = v901.__r_.__value_.__l.__size_;
                  v289 = v901.__r_.__value_.__r.__words[0];
                  while (2)
                  {
                    if (v289 == v288)
                    {
                      v899.__r_.__value_.__r.__words[0] = &v901;
                      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v899);
                      v228 = v790;
                      goto LABEL_731;
                    }

                    v291 = *v289;
                    v290 = v289[1];
                    if (v290)
                    {
                      atomic_fetch_add_explicit(&v290->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    std::string::basic_string[abi:ne200100]<0>(&v899, "publicname");
                    v292 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v291 + 160), &v899);
                    if (v292)
                    {
                      v293 = (v292 + 5);
                    }

                    else
                    {
                      v293 = RIO_MTLX::EMPTY_STRING(0);
                    }

                    shared_weak_owners_high = SHIBYTE(v293->__shared_weak_owners_);
                    if (shared_weak_owners_high >= 0)
                    {
                      shared_owners = HIBYTE(v293->__shared_weak_owners_);
                    }

                    else
                    {
                      shared_owners = v293->__shared_owners_;
                    }

                    v296 = *(v270 + 71);
                    v297 = v296;
                    if ((v296 & 0x80u) != 0)
                    {
                      v296 = *(v270 + 56);
                    }

                    if (shared_owners != v296)
                    {
                      goto LABEL_683;
                    }

                    if (shared_weak_owners_high < 0)
                    {
                      v293 = v293->__vftable;
                    }

                    v298 = v297 >= 0 ? (v270 + 48) : *(v270 + 48);
                    v293 = memcmp(v293, v298, shared_owners);
                    if (v293)
                    {
LABEL_683:
                      v299 = 0;
                      goto LABEL_684;
                    }

                    v293 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v286 + 96), (v270 + 48));
                    if (v293)
                    {
                      shared_weak_owners = v293[1].__shared_weak_owners_;
                      v293 = v293[2].__vftable;
                      if (v293)
                      {
                        atomic_fetch_add_explicit(&v293->__shared_owners_, 1uLL, memory_order_relaxed);
                        v299 = shared_weak_owners == 0;
                        std::__shared_weak_count::__release_shared[abi:ne200100](v293);
                        goto LABEL_684;
                      }
                    }

                    else
                    {
                      shared_weak_owners = 0;
                    }

                    v299 = shared_weak_owners == 0;
LABEL_684:
                    if (SHIBYTE(v899.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v899.__r_.__value_.__l.__data_);
                      if (v299)
                      {
                        goto LABEL_688;
                      }
                    }

                    else
                    {
                      if (!v299)
                      {
                        goto LABEL_727;
                      }

LABEL_688:
                      v300 = v291 + 24;
                      v301 = *(v291 + 47);
                      if (v301 < 0)
                      {
                        if (*(v291 + 32) != 9)
                        {
                          goto LABEL_700;
                        }

                        v300 = *v300;
                      }

                      else if (v301 != 9)
                      {
                        goto LABEL_700;
                      }

                      v303 = *v300;
                      v304 = *(v300 + 8);
                      if (v303 == 0x6574656D61726170 && v304 == 114)
                      {
                        std::string::basic_string[abi:ne200100]<0>(&v899, "bindparam");
                        if (*(v291 + 71) < 0)
                        {
                          std::string::__init_copy_ctor_external(&v933, *(v291 + 48), *(v291 + 56));
                        }

                        else
                        {
                          v933 = *(v291 + 48);
                        }

                        RIO_MTLX::Element::addChildOfCategory(v286, &v899.__r_.__value_.__l.__data_, &v933, &v890);
                        if (SHIBYTE(v933.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v933.__r_.__value_.__l.__data_);
                        }

                        if (SHIBYTE(v899.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v899.__r_.__value_.__l.__data_);
                        }

                        v317 = v890.__r_.__value_.__r.__words[0];
                        v318 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v316);
                        v319 = (*(*v291 + 56))(v291);
                        v320 = RIO_MTLX::Element::setAttribute(v317, v318, v319);
                        v312 = v890.__r_.__value_.__r.__words[0];
                        v313 = RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(v320);
                        std::string::basic_string[abi:ne200100]<0>(&v899, "value");
                        v321 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v270 + 160), &v899);
                        if (v321)
                        {
                          v315 = (v321 + 5);
                          goto LABEL_723;
                        }

LABEL_722:
                        v315 = RIO_MTLX::EMPTY_STRING(0);
                        goto LABEL_723;
                      }

LABEL_700:
                      v306 = RIO_MTLX::EMPTY_STRING(v293);
                      if (RIO_MTLX::Element::isA<RIO_MTLX::Input>(v291, v306))
                      {
                        std::string::basic_string[abi:ne200100]<0>(&v899, "bindinput");
                        if (*(v291 + 71) < 0)
                        {
                          std::string::__init_copy_ctor_external(&v932, *(v291 + 48), *(v291 + 56));
                        }

                        else
                        {
                          v932 = *(v291 + 48);
                        }

                        RIO_MTLX::Element::addChildOfCategory(v286, &v899.__r_.__value_.__l.__data_, &v932, &v890);
                        if (SHIBYTE(v932.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v932.__r_.__value_.__l.__data_);
                        }

                        if (SHIBYTE(v899.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v899.__r_.__value_.__l.__data_);
                        }

                        v308 = v890.__r_.__value_.__r.__words[0];
                        v309 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v307);
                        v310 = (*(*v291 + 56))(v291);
                        v311 = RIO_MTLX::Element::setAttribute(v308, v309, v310);
                        v312 = v890.__r_.__value_.__r.__words[0];
                        v313 = RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(v311);
                        std::string::basic_string[abi:ne200100]<0>(&v899, "value");
                        v314 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v270 + 160), &v899);
                        if (v314)
                        {
                          v315 = (v314 + 5);
LABEL_723:
                          RIO_MTLX::Element::setAttribute(v312, v313, v315);
                          if (SHIBYTE(v899.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(v899.__r_.__value_.__l.__data_);
                          }

                          if (v890.__r_.__value_.__l.__size_)
                          {
                            std::__shared_weak_count::__release_shared[abi:ne200100](v890.__r_.__value_.__l.__size_);
                          }

                          goto LABEL_727;
                        }

                        goto LABEL_722;
                      }
                    }

LABEL_727:
                    if (v290)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v290);
                    }

                    v289 += 2;
                    continue;
                  }
                }

LABEL_736:
                v901.__r_.__value_.__r.__words[0] = &__p;
                std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v901);
                v229 = v784;
                v268 = v787;
LABEL_740:
                RIO_MTLX::Element::removeChild(v229, (v270 + 48));
                goto LABEL_741;
              }
            }

LABEL_628:
            if ((v271 & 0x80) != 0)
            {
              if (*(v229 + 32) != 8)
              {
                goto LABEL_637;
              }

              v273 = *v798;
            }

            else
            {
              v273 = v798;
              if (v271 != 8)
              {
                goto LABEL_637;
              }
            }

            if (*v273 != 0x6C6169726574616DLL)
            {
              goto LABEL_637;
            }

            v283 = (v270 + 24);
            v284 = *(v270 + 47);
            if (v284 < 0)
            {
              if (*(v270 + 32) != 15)
              {
                goto LABEL_637;
              }

              v283 = *v283;
            }

            else if (v284 != 15)
            {
              goto LABEL_637;
            }

            v323 = *v283;
            v324 = *(v283 + 7);
            if (v323 == 0x6C6169726574616DLL && v324 == 0x74697265686E696CLL)
            {
              std::string::basic_string[abi:ne200100]<0>(&__p, "material");
              v281 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v270 + 160), &__p);
              if (!v281)
              {
                goto LABEL_737;
              }

              v282 = (v281 + 40);
            }

            else
            {
LABEL_637:
              if (!v896[0])
              {
                goto LABEL_741;
              }

              v276 = (v270 + 24);
              v277 = *(v270 + 47);
              if (v277 < 0)
              {
                if (*(v270 + 32) != 11)
                {
                  goto LABEL_741;
                }

                v276 = *v276;
              }

              else if (v277 != 11)
              {
                goto LABEL_741;
              }

              v278 = *v276;
              v279 = *(v276 + 3);
              if (v278 != 0x65686E696B6F6F6CLL || v279 != 0x74697265686E696BLL)
              {
LABEL_741:
                if (__srca)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](__srca);
                }

                v268 += 2;
                if (v268 == v795)
                {
                  goto LABEL_755;
                }

                continue;
              }

              std::string::basic_string[abi:ne200100]<0>(&__p, "look");
              v281 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v270 + 160), &__p);
              if (v281)
              {
                v282 = (v281 + 40);
                break;
              }

LABEL_737:
              v281 = RIO_MTLX::EMPTY_STRING(0);
              v282 = v281;
            }

            break;
          }

          v322 = RIO_MTLX::Element::INHERIT_ATTRIBUTE(v281);
          RIO_MTLX::Element::setAttribute(v229, v322, v282);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          goto LABEL_740;
        }

        break;
      }

      RIO_MTLX::TreeIterator::~TreeIterator(&v950);
      RIO_MTLX::TreeIterator::~TreeIterator(&v955);
      RIO_MTLX::TreeIterator::~TreeIterator(&v959);
LABEL_763:
      v326 = RIO_MTLX::EMPTY_STRING(v1);
      RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::NodeDef>(this, v326, &v959);
      v329 = v959.__r_.__value_.__l.__size_;
      v328 = v959.__r_.__value_.__r.__words[0];
      if (v959.__r_.__value_.__r.__words[0] != v959.__r_.__value_.__l.__size_)
      {
        while (2)
        {
          v331 = *v328;
          v330 = *(v328 + 8);
          if (v330)
          {
            atomic_fetch_add_explicit(&v330->__shared_owners_, 1uLL, memory_order_relaxed);
            atomic_fetch_add_explicit(&v330->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v331)
          {
            v332 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v327);
            v327 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v331 + 20, v332);
            if (v327)
            {
              v333 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v327);
              v334 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v331 + 20, v333);
              if (v334)
              {
                v335 = (v334 + 5);
              }

              else
              {
                v335 = RIO_MTLX::EMPTY_STRING(0);
              }

              if (*(v335 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&v955, *v335, v335[1]);
              }

              else
              {
                v336 = *v335;
                v955.__r_.__value_.__r.__words[2] = v335[2];
                *&v955.__r_.__value_.__l.__data_ = v336;
              }

              v337 = HIBYTE(v955.__r_.__value_.__r.__words[2]);
              if ((v955.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v337 = v955.__r_.__value_.__l.__size_;
              }

              if (!v337)
              {
                goto LABEL_793;
              }

              v338 = RIO_MTLX::MULTI_OUTPUT_TYPE_STRING(v335);
              if ((v955.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v339 = HIBYTE(v955.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v339 = v955.__r_.__value_.__l.__size_;
              }

              v340 = *(v338 + 23);
              v341 = v340;
              if (v340 < 0)
              {
                v340 = v338[1];
              }

              if (v339 != v340 || ((v955.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v342 = &v955) : (v342 = v955.__r_.__value_.__r.__words[0]), v341 >= 0 ? (v343 = v338) : (v343 = *v338), v335 = memcmp(v342, v343, v339), v335))
              {
                std::string::basic_string[abi:ne200100]<0>(&v950, "out");
                RIO_MTLX::Element::getChildOfType<RIO_MTLX::Output>(v331, &v950, &__str);
                v344 = *(&__str + 1);
                v345 = __str;
                __str = 0uLL;
                if (SHIBYTE(v951) < 0)
                {
                  operator delete(v950);
                  if (!v345)
                  {
LABEL_795:
                    std::string::basic_string[abi:ne200100]<0>(&v950, "out");
                    RIO_MTLX::InterfaceElement::addOutput(v331, &v950);
                  }
                }

                else if (!v345)
                {
                  goto LABEL_795;
                }
              }

              else
              {
LABEL_793:
                v344 = 0;
                v345 = 0;
              }

              v346 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v335);
              RIO_MTLX::Element::removeAttribute(v331, v346);
              v348 = RIO_MTLX::Output::DEFAULT_INPUT_ATTRIBUTE(v347);
              v349 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v331 + 20, v348);
              if (v349)
              {
                v350 = (v349 + 40);
                if (!v345)
                {
                  goto LABEL_805;
                }
              }

              else
              {
                v349 = RIO_MTLX::EMPTY_STRING(0);
                v350 = v349;
                if (!v345)
                {
                  goto LABEL_805;
                }
              }

              if ((*(v350 + 23) & 0x8000000000000000) != 0)
              {
                if (!*(v350 + 1))
                {
                  goto LABEL_805;
                }
              }

              else if (!*(v350 + 23))
              {
LABEL_805:
                v352 = RIO_MTLX::Output::DEFAULT_INPUT_ATTRIBUTE(v349);
                RIO_MTLX::Element::removeAttribute(v331, v352);
                if (v344)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v344);
                }

                if ((SHIBYTE(v955.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  break;
                }

                operator delete(v955.__r_.__value_.__l.__data_);
                if (!v330)
                {
LABEL_810:
                  v328 += 16;
                  if (v328 == v329)
                  {
                    goto LABEL_814;
                  }

                  continue;
                }

LABEL_809:
                std::__shared_weak_count::__release_shared[abi:ne200100](v330);
                std::__shared_weak_count::__release_shared[abi:ne200100](v330);
                goto LABEL_810;
              }

              v351 = RIO_MTLX::Output::DEFAULT_INPUT_ATTRIBUTE(v349);
              v349 = RIO_MTLX::Element::setAttribute(v345, v351, v350);
              goto LABEL_805;
            }
          }

          break;
        }

        if (!v330)
        {
          goto LABEL_810;
        }

        goto LABEL_809;
      }

LABEL_814:
      v955.__r_.__value_.__r.__words[0] = &v959;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v955);
      v354 = RIO_MTLX::EMPTY_STRING(v353);
      RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::NodeDef>(this, v354, &v959);
      v356 = v959.__r_.__value_.__l.__size_;
      v355 = v959.__r_.__value_.__r.__words[0];
      if (v959.__r_.__value_.__r.__words[0] != v959.__r_.__value_.__l.__size_)
      {
        while (2)
        {
          v358 = *v355;
          v357 = *(v355 + 8);
          if (v357)
          {
            atomic_fetch_add_explicit(&v357->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v359 = (*(*v358 + 56))(v358);
          v360 = *(v359 + 23);
          if (v360 < 0)
          {
            if (*(v359 + 8) != 7)
            {
              goto LABEL_828;
            }

            v359 = *v359;
          }

          else if (v360 != 7)
          {
            goto LABEL_828;
          }

          if (*v359 == 1718777203 && *(v359 + 3) == 1701011814)
          {
            RIO_MTLX::Element::removeChildOfType<RIO_MTLX::NodeDef>(this, v358 + 6);
          }

LABEL_828:
          if (v357)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v357);
          }

          v355 += 16;
          if (v355 == v356)
          {
            break;
          }

          continue;
        }
      }

      v955.__r_.__value_.__r.__words[0] = &v959;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v955);
      v363 = RIO_MTLX::EMPTY_STRING(v362);
      RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::GeomInfo>(this, v363, &v959);
      v365 = v959.__r_.__value_.__l.__size_;
      v364 = v959.__r_.__value_.__r.__words[0];
      if (v959.__r_.__value_.__r.__words[0] == v959.__r_.__value_.__l.__size_)
      {
        goto LABEL_851;
      }

      while (2)
      {
        v367 = *v364;
        v366 = v364[1];
        if (v366)
        {
          atomic_fetch_add_explicit(&v366->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(&v950, "geomattr");
        RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Element>(&v955, *(v367 + 136), *(v367 + 144), &v950);
        if (SHIBYTE(v951) < 0)
        {
          operator delete(v950);
        }

        v368 = v955.__r_.__value_.__l.__size_;
        v369 = v955.__r_.__value_.__r.__words[0];
        while (2)
        {
          if (v369 != v368)
          {
            v370 = *v369;
            v371 = *(v369 + 8);
            if (v371)
            {
              atomic_fetch_add_explicit(&v371->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
              atomic_fetch_add_explicit(&v371->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
            }

            v929[1] = v371;
            v929[0] = v370;
            std::string::basic_string[abi:ne200100]<0>(&v950, "geomprop");
            RIO_MTLX::Element::changeChildCategory(v367, v929, &v950, v930);
            if (v931)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v931);
            }

            if (SHIBYTE(v951) < 0)
            {
              operator delete(v950);
              if (v371)
              {
LABEL_844:
                std::__shared_weak_count::__release_shared[abi:ne200100](v371);
                std::__shared_weak_count::__release_shared[abi:ne200100](v371);
              }
            }

            else if (v371)
            {
              goto LABEL_844;
            }

            v369 += 16;
            continue;
          }

          break;
        }

        *&v950 = &v955;
        std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v950);
        if (v366)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v366);
        }

        v364 += 2;
        if (v364 != v365)
        {
          continue;
        }

        break;
      }

LABEL_851:
      v955.__r_.__value_.__r.__words[0] = &v959;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v955);
      RIO_MTLX::Element::traverseTree(this, &v959);
      *&v961[8] = 0;
      *&v955.__r_.__value_.__l.__data_ = *&v959.__r_.__value_.__l.__data_;
      if (v959.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v959.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      }

      v956 = 0;
      v955.__r_.__value_.__r.__words[2] = 0;
      v957 = 0;
      v372 = std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v955.__r_.__value_.__r.__words[2], v959.__r_.__value_.__r.__words[2], v960, 0xAAAAAAAAAAAAAAABLL * ((v960 - v959.__r_.__value_.__r.__words[2]) >> 3));
      v958 = *v961;
      RIO_MTLX::NULL_TREE_ITERATOR(v372);
      v950 = RIO_MTLX::NULL_TREE_ITERATOR(void)::v;
      if (*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1))
      {
        atomic_fetch_add_explicit((*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v952 = 0;
      v951 = 0;
      v953 = 0;
      std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v951, qword_27EE52740, unk_27EE52748, 0xAAAAAAAAAAAAAAABLL * ((unk_27EE52748 - qword_27EE52740) >> 3));
      v954 = xmmword_27EE52758;
      while (2)
      {
        if (RIO_MTLX::TreeIterator::operator!=(&v955, &v950))
        {
          v373 = *&v955.__r_.__value_.__l.__data_;
          if (v955.__r_.__value_.__l.__size_)
          {
            atomic_fetch_add_explicit((v955.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
          }

          RIO_MTLX::Element::asA<RIO_MTLX::Node>(v373, &v901);
          if (!v901.__r_.__value_.__r.__words[0])
          {
            goto LABEL_869;
          }

          v374 = (v901.__r_.__value_.__r.__words[0] + 24);
          v375 = *(v901.__r_.__value_.__r.__words[0] + 47);
          if (v375 < 0)
          {
            if (*(v901.__r_.__value_.__r.__words[0] + 32) != 13)
            {
LABEL_869:
              if (v901.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v901.__r_.__value_.__l.__size_);
              }

              if (*(&v373 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v373 + 1));
              }

              RIO_MTLX::TreeIterator::operator++(&v955);
              continue;
            }

            v376 = v374->__r_.__value_.__r.__words[0];
          }

          else
          {
            v376 = (v901.__r_.__value_.__r.__words[0] + 24);
            if (v375 != 13)
            {
              goto LABEL_869;
            }
          }

          v377 = *v376;
          v378 = *(v376 + 5);
          if (v377 == 0x727474616D6F6567 && v378 == 0x65756C6176727474)
          {
            std::string::basic_string[abi:ne200100]<0>(&__str, "geompropvalue");
            std::string::operator=(v374, &__str);
            if (SBYTE7(__str_16) < 0)
            {
              operator delete(__str);
            }

            v380 = v901.__r_.__value_.__r.__words[0];
            std::string::basic_string[abi:ne200100]<0>(&__str, "attrname");
            v381 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v380 + 160), &__str);
            if (SBYTE7(__str_16) < 0)
            {
              operator delete(__str);
            }

            if (v381)
            {
              v382 = v901.__r_.__value_.__r.__words[0];
              std::string::basic_string[abi:ne200100]<0>(&__str, "geomprop");
              v383 = v901.__r_.__value_.__r.__words[0];
              std::string::basic_string[abi:ne200100]<0>(&__p, "attrname");
              v384 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v383 + 160), &__p);
              if (v384)
              {
                v385 = (v384 + 5);
              }

              else
              {
                v385 = RIO_MTLX::EMPTY_STRING(0);
              }

              RIO_MTLX::Element::setAttribute(v382, &__str, v385);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SBYTE7(__str_16) < 0)
              {
                operator delete(__str);
              }

              v386 = v901.__r_.__value_.__r.__words[0];
              std::string::basic_string[abi:ne200100]<0>(&__str, "attrname");
              RIO_MTLX::Element::removeAttribute(v386, &__str);
              if (SBYTE7(__str_16) < 0)
              {
                operator delete(__str);
              }
            }
          }

          goto LABEL_869;
        }

        break;
      }

      RIO_MTLX::TreeIterator::~TreeIterator(&v950);
      RIO_MTLX::TreeIterator::~TreeIterator(&v955);
      RIO_MTLX::TreeIterator::~TreeIterator(&v959);
      RIO_MTLX::Element::traverseTree(this, &v959);
      *&v961[8] = 0;
      *&v955.__r_.__value_.__l.__data_ = *&v959.__r_.__value_.__l.__data_;
      if (v959.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v959.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      }

      v956 = 0;
      v955.__r_.__value_.__r.__words[2] = 0;
      v957 = 0;
      v387 = std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v955.__r_.__value_.__r.__words[2], v959.__r_.__value_.__r.__words[2], v960, 0xAAAAAAAAAAAAAAABLL * ((v960 - v959.__r_.__value_.__r.__words[2]) >> 3));
      v958 = *v961;
      RIO_MTLX::NULL_TREE_ITERATOR(v387);
      v950 = RIO_MTLX::NULL_TREE_ITERATOR(void)::v;
      if (*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1))
      {
        atomic_fetch_add_explicit((*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v952 = 0;
      v951 = 0;
      v953 = 0;
      std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v951, qword_27EE52740, unk_27EE52748, 0xAAAAAAAAAAAAAAABLL * ((unk_27EE52748 - qword_27EE52740) >> 3));
      v954 = xmmword_27EE52758;
      while (2)
      {
        if (RIO_MTLX::TreeIterator::operator!=(&v955, &v950))
        {
          v388 = *&v955.__r_.__value_.__l.__data_;
          if (v955.__r_.__value_.__l.__size_)
          {
            atomic_fetch_add_explicit((v955.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
          }

          RIO_MTLX::Element::asA<RIO_MTLX::Node>(v388, v896);
          v390 = v896[0];
          if (!v896[0])
          {
            goto LABEL_1187;
          }

          v391 = v896[0] + 24;
          if (*(v896[0] + 47) < 0)
          {
            if (*(v896[0] + 4) == 6)
            {
              v393 = *v391;
              goto LABEL_902;
            }
          }

          else
          {
            v392 = *(v896[0] + 47);
            v393 = v896[0] + 24;
            if (v392 != 6)
            {
LABEL_907:
              v397 = 0;
              if (v392 > 7)
              {
                if (v392 != 8)
                {
                  if (v392 != 14)
                  {
                    if (v392 == 15)
                    {
                      if (*v391 != 0x726F66736E617274 || *(v390 + 31) != 0x726F746365766D72)
                      {
                        v399 = *(v390 + 31);
                        v400 = *v391 == 0x726F66736E617274;
                        v401 = 0x6C616D726F6E6D72;
                        goto LABEL_965;
                      }

                      goto LABEL_1010;
                    }

LABEL_1007:
                    if (v397)
                    {
LABEL_1008:
                      if (*(v390 + 4) == 8)
                      {
                        v391 = *v391;
LABEL_1073:
                        if (*v391 == 0x706F72646B636162)
                        {
                          if (*(v896[0] + 71) < 0)
                          {
                            std::string::__init_copy_ctor_external(&__str, *(v896[0] + 6), *(v896[0] + 7));
                          }

                          else
                          {
                            __str = *(v896[0] + 3);
                            *&__str_16 = *(v896[0] + 8);
                          }

                          v493 = BYTE7(__str_16);
                          if (SBYTE7(__str_16) < 0)
                          {
                            v493 = *(&__str + 1);
                          }

                          if (!v493)
                          {
                            v494 = RIO_MTLX::Backdrop::CATEGORY(v389);
                            v495 = v494;
                            if (v494[23] >= 0)
                            {
                              v496 = v494[23];
                            }

                            else
                            {
                              v496 = *(v494 + 1);
                            }

                            std::string::basic_string[abi:ne200100](&v901, v496 + 1);
                            if ((v901.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                            {
                              v497 = &v901;
                            }

                            else
                            {
                              v497 = v901.__r_.__value_.__r.__words[0];
                            }

                            if (v496)
                            {
                              if (v495[23] >= 0)
                              {
                                v498 = v495;
                              }

                              else
                              {
                                v498 = *v495;
                              }

                              memmove(v497, v498, v496);
                            }

                            *(&v497->__r_.__value_.__l.__data_ + v496) = 49;
                            RIO_MTLX::Element::createValidChildName(this, &v901, &__p);
                            if (SBYTE7(__str_16) < 0)
                            {
                              operator delete(__str);
                            }

                            __str = *&__p.__r_.__value_.__l.__data_;
                            *&__str_16 = *(&__p.__r_.__value_.__l + 2);
                            *(&__p.__r_.__value_.__s + 23) = 0;
                            __p.__r_.__value_.__s.__data_[0] = 0;
                            if (SHIBYTE(v901.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v901.__r_.__value_.__l.__data_);
                            }
                          }

                          std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&v899, this + 1);
                          operator new();
                        }
                      }
                    }

                    else if (v392 == 8)
                    {
                      goto LABEL_1073;
                    }

LABEL_1187:
                    if (v896[1])
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v896[1]);
                    }

                    if (*(&v388 + 1))
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v388 + 1));
                    }

                    RIO_MTLX::TreeIterator::operator++(&v955);
                    continue;
                  }

                  v399 = *(v390 + 30);
                  v400 = *v391 == 0x726F66736E617274;
                  v401 = 0x746E696F706D726FLL;
LABEL_965:
                  if (!v400 || v399 != v401)
                  {
                    goto LABEL_1187;
                  }

LABEL_1010:
                  v440 = v896[0];
                  std::string::basic_string[abi:ne200100]<0>(&__str, "fromspace");
                  v441 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v440 + 12, &__str);
                  if (v441)
                  {
                    v442 = v441[5];
                    v443 = v441[6];
                    if (v443)
                    {
                      atomic_fetch_add_explicit(&v443->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    if (v442)
                    {
                      v444 = 0;
                      goto LABEL_1102;
                    }
                  }

                  else
                  {
                    v443 = 0;
                  }

                  v468 = v896[0];
                  std::string::basic_string[abi:ne200100]<0>(&__p, "tospace");
                  v469 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v468 + 12, &__p);
                  if (v469)
                  {
                    v471 = v469[5];
                    v470 = v469[6];
                    if (v470)
                    {
                      atomic_fetch_add_explicit(&v470->__shared_owners_, 1uLL, memory_order_relaxed);
                      std::__shared_weak_count::__release_shared[abi:ne200100](v470);
                    }
                  }

                  else
                  {
                    v471 = 0;
                  }

                  v444 = v471 == 0;
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

LABEL_1102:
                  if (v443)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v443);
                  }

                  if (SBYTE7(__str_16) < 0)
                  {
                    operator delete(__str);
                    if (!v444)
                    {
                      goto LABEL_1187;
                    }
                  }

                  else if (!v444)
                  {
                    goto LABEL_1187;
                  }

                  v484 = v896[0];
                  std::string::basic_string[abi:ne200100]<0>(&__str, "transformmatrix");
                  std::string::operator=(v484 + 1, &__str);
LABEL_1185:
                  if (SBYTE7(__str_16) < 0)
                  {
                    operator delete(__str);
                  }

                  goto LABEL_1187;
                }

                v422 = v390 + 24;
LABEL_1006:
                if (*v422 != 0x6574617261706573)
                {
                  goto LABEL_1007;
                }

                v445 = v896[0];
                std::string::basic_string[abi:ne200100]<0>(&__str, "in");
                RIO_MTLX::Element::getChildOfType<RIO_MTLX::Input>(v445, &__str, &__p);
                if (SBYTE7(__str_16) < 0)
                {
                  operator delete(__str);
                }

                if (__p.__r_.__value_.__r.__words[0])
                {
                  v446 = (*(*__p.__r_.__value_.__l.__data_ + 56))(__p.__r_.__value_.__r.__words[0]);
                  RIO_MTLX::TypedValue<RIO_MTLX::Vector4>::TYPE();
                  v447 = *(v446 + 23);
                  if (v447 >= 0)
                  {
                    v448 = *(v446 + 23);
                  }

                  else
                  {
                    v448 = *(v446 + 8);
                  }

                  v449 = byte_27EE524CF;
                  if (byte_27EE524CF < 0)
                  {
                    v449 = qword_27EE524C0;
                  }

                  if (v448 == v449)
                  {
                    v450 = v447 >= 0 ? v446 : *v446;
                    v451 = byte_27EE524CF >= 0 ? &RIO_MTLX::TypedValue<RIO_MTLX::Vector4>::TYPE(void)::v : RIO_MTLX::TypedValue<RIO_MTLX::Vector4>::TYPE(void)::v;
                    if (!memcmp(v450, v451, v448))
                    {
                      goto LABEL_1172;
                    }
                  }

                  RIO_MTLX::TypedValue<RIO_MTLX::Color4>::TYPE();
                  v452 = *(v446 + 23);
                  if (v452 >= 0)
                  {
                    v453 = *(v446 + 23);
                  }

                  else
                  {
                    v453 = *(v446 + 8);
                  }

                  v454 = byte_27EE5243F;
                  if (byte_27EE5243F < 0)
                  {
                    v454 = qword_27EE52430;
                  }

                  if (v453 == v454 && (v452 >= 0 ? (v455 = v446) : (v455 = *v446), byte_27EE5243F >= 0 ? (v456 = &RIO_MTLX::TypedValue<RIO_MTLX::Color4>::TYPE(void)::v) : (v456 = RIO_MTLX::TypedValue<RIO_MTLX::Color4>::TYPE(void)::v), !memcmp(v455, v456, v453)))
                  {
LABEL_1172:
                    v503 = v896[0];
                    std::string::basic_string[abi:ne200100]<0>(&__str, "separate4");
                    std::string::operator=(v503 + 1, &__str);
                  }

                  else
                  {
                    RIO_MTLX::TypedValue<RIO_MTLX::Vector3>::TYPE();
                    v457 = *(v446 + 23);
                    if (v457 >= 0)
                    {
                      v458 = *(v446 + 23);
                    }

                    else
                    {
                      v458 = *(v446 + 8);
                    }

                    v459 = byte_27EE5249F;
                    if (byte_27EE5249F < 0)
                    {
                      v459 = qword_27EE52490;
                    }

                    if (v458 == v459)
                    {
                      v460 = v457 >= 0 ? v446 : *v446;
                      v461 = byte_27EE5249F >= 0 ? &RIO_MTLX::TypedValue<RIO_MTLX::Vector3>::TYPE(void)::v : RIO_MTLX::TypedValue<RIO_MTLX::Vector3>::TYPE(void)::v;
                      if (!memcmp(v460, v461, v458))
                      {
                        goto LABEL_1173;
                      }
                    }

                    RIO_MTLX::TypedValue<RIO_MTLX::Color3>::TYPE();
                    v462 = *(v446 + 23);
                    if (v462 >= 0)
                    {
                      v463 = *(v446 + 23);
                    }

                    else
                    {
                      v463 = *(v446 + 8);
                    }

                    v464 = byte_27EE5240F;
                    if (byte_27EE5240F < 0)
                    {
                      v464 = qword_27EE52400;
                    }

                    if (v463 == v464 && (v462 >= 0 ? (v465 = v446) : (v465 = *v446), byte_27EE5240F >= 0 ? (v466 = &RIO_MTLX::TypedValue<RIO_MTLX::Color3>::TYPE(void)::v) : (v466 = RIO_MTLX::TypedValue<RIO_MTLX::Color3>::TYPE(void)::v), !memcmp(v465, v466, v463)))
                    {
LABEL_1173:
                      v504 = v896[0];
                      std::string::basic_string[abi:ne200100]<0>(&__str, "separate3");
                      std::string::operator=(v504 + 1, &__str);
                    }

                    else
                    {
                      v467 = v896[0];
                      std::string::basic_string[abi:ne200100]<0>(&__str, "separate2");
                      std::string::operator=(v467 + 1, &__str);
                    }
                  }

                  if (SBYTE7(__str_16) < 0)
                  {
                    operator delete(__str);
                  }
                }

LABEL_1176:
                if (__p.__r_.__value_.__l.__size_)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
                }

                goto LABEL_1187;
              }

              if (v392 != 6)
              {
                if (v392 != 7)
                {
                  goto LABEL_1007;
                }

                if (*v391 != 1886220131 || *(v390 + 27) != 1701994864)
                {
                  v392 = 7;
                  v403 = (v390 + 24);
                  goto LABEL_930;
                }

LABEL_984:
                v431 = v896[0];
                std::string::basic_string[abi:ne200100]<0>(&__str, "ifgreatereq");
                std::string::operator=(v431 + 1, &__str);
                if (SBYTE7(__str_16) < 0)
                {
                  operator delete(__str);
                }

                v432 = v896[0];
                std::string::basic_string[abi:ne200100]<0>(&__str, "intest");
                RIO_MTLX::Element::getChildOfType<RIO_MTLX::Input>(v432, &__str, &__p);
                if (SBYTE7(__str_16) < 0)
                {
                  operator delete(__str);
                }

                v433 = __p.__r_.__value_.__r.__words[0];
                if (__p.__r_.__value_.__r.__words[0])
                {
                  std::string::basic_string[abi:ne200100]<0>(&__str, "value1");
                  RIO_MTLX::Element::setName(v433, &__str);
                  if (SBYTE7(__str_16) < 0)
                  {
                    operator delete(__str);
                  }
                }

                v434 = v896[0];
                std::string::basic_string[abi:ne200100]<0>(&__str, "cutoff");
                v435 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v434 + 12, &__str);
                if (v435)
                {
                  v437 = v435[5];
                  v436 = v435[6];
                  if (v436)
                  {
                    atomic_fetch_add_explicit(&v436->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
                  }
                }

                else
                {
                  v436 = 0;
                  v437 = 0;
                }

                if (SBYTE7(__str_16) < 0)
                {
                  operator delete(__str);
                  if (!v437)
                  {
                    goto LABEL_1123;
                  }

LABEL_1112:
                  v485 = v896[0];
                  v928[0] = v437;
                  v928[1] = v436;
                  if (v436)
                  {
                    atomic_fetch_add_explicit(&v436->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
                  }

                  std::string::basic_string[abi:ne200100]<0>(&__str, "input");
                  RIO_MTLX::Element::changeChildCategory(v485, v928, &__str, &v901);
                  v487 = v901.__r_.__value_.__l.__size_;
                  v486 = v901.__r_.__value_.__r.__words[0];
                  if (v436)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v436);
                  }

                  if (SBYTE7(__str_16) < 0)
                  {
                    operator delete(__str);
                  }

                  if (v436)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v436);
                  }

                  std::string::basic_string[abi:ne200100]<0>(&__str, "value2");
                  RIO_MTLX::Element::setName(v486, &__str);
                  if (SBYTE7(__str_16) < 0)
                  {
                    operator delete(__str);
                  }
                }

                else
                {
                  if (v437)
                  {
                    goto LABEL_1112;
                  }

LABEL_1123:
                  v487 = v436;
                }

                v488 = v896[0];
                std::string::basic_string[abi:ne200100]<0>(&__str, "in1");
                RIO_MTLX::Element::getChildOfType<RIO_MTLX::Input>(v488, &__str, &v901);
                if (SBYTE7(__str_16) < 0)
                {
                  operator delete(__str);
                }

                v489 = v896[0];
                std::string::basic_string[abi:ne200100]<0>(&__str, "in2");
                RIO_MTLX::Element::getChildOfType<RIO_MTLX::Input>(v489, &__str, &v899);
                if (SBYTE7(__str_16) < 0)
                {
                  operator delete(__str);
                }

                v490 = v901.__r_.__value_.__r.__words[0];
                if (v901.__r_.__value_.__r.__words[0] && v899.__r_.__value_.__r.__words[0])
                {
                  std::string::basic_string[abi:ne200100]<0>(v926, "temp");
                  RIO_MTLX::Element::createValidChildName(this, v926, &__str);
                  RIO_MTLX::Element::setName(v490, &__str);
                  if (SBYTE7(__str_16) < 0)
                  {
                    operator delete(__str);
                  }

                  if (v927 < 0)
                  {
                    operator delete(v926[0]);
                  }

                  v491 = v899.__r_.__value_.__r.__words[0];
                  std::string::basic_string[abi:ne200100]<0>(&__str, "in1");
                  RIO_MTLX::Element::setName(v491, &__str);
                  if (SBYTE7(__str_16) < 0)
                  {
                    operator delete(__str);
                  }

                  v492 = v901.__r_.__value_.__r.__words[0];
                  std::string::basic_string[abi:ne200100]<0>(&__str, "in2");
                  RIO_MTLX::Element::setName(v492, &__str);
                  if (SBYTE7(__str_16) < 0)
                  {
                    operator delete(__str);
                  }
                }

                if (v899.__r_.__value_.__l.__size_)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v899.__r_.__value_.__l.__size_);
                }

                if (v901.__r_.__value_.__l.__size_)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v901.__r_.__value_.__l.__size_);
                }

                if (v487)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v487);
                }

                goto LABEL_1176;
              }

              if (*v391 != 1635020658 || *(v390 + 14) != 25972)
              {
                goto LABEL_1187;
              }

LABEL_1080:
              v472 = v896[0];
              v473 = (*(*v896[0] + 56))(v896[0]);
              RIO_MTLX::TypedValue<RIO_MTLX::Vector2>::TYPE();
              v474 = *(v473 + 23);
              if (v474 >= 0)
              {
                v475 = *(v473 + 23);
              }

              else
              {
                v475 = *(v473 + 8);
              }

              v476 = byte_27EE5246F;
              if (byte_27EE5246F < 0)
              {
                v476 = qword_27EE52460;
              }

              v477 = "rotate3d";
              if (v475 == v476)
              {
                if (v474 >= 0)
                {
                  v478 = v473;
                }

                else
                {
                  v478 = *v473;
                }

                if (byte_27EE5246F >= 0)
                {
                  v479 = &RIO_MTLX::TypedValue<RIO_MTLX::Vector2>::TYPE(void)::v;
                }

                else
                {
                  v479 = RIO_MTLX::TypedValue<RIO_MTLX::Vector2>::TYPE(void)::v;
                }

                if (!memcmp(v478, v479, v475))
                {
                  v477 = "rotate2d";
                }

                else
                {
                  v477 = "rotate3d";
                }
              }

              std::string::basic_string[abi:ne200100]<0>(&__str, v477);
              std::string::operator=(v472 + 1, &__str);
              goto LABEL_1185;
            }

LABEL_902:
            v394 = *v393;
            v395 = *(v393 + 2);
            if (v394 == 1702260329 && v395 == 29810)
            {
              v409 = (*(*v896[0] + 56))(v896[0]);
              RIO_MTLX::TypedValue<RIO_MTLX::Matrix33>::TYPE();
              v410 = *(v409 + 23);
              if (v410 >= 0)
              {
                v411 = *(v409 + 23);
              }

              else
              {
                v411 = *(v409 + 8);
              }

              v412 = byte_27EE524FF;
              if (byte_27EE524FF < 0)
              {
                v412 = qword_27EE524F0;
              }

              if (v411 == v412)
              {
                v413 = v410 >= 0 ? v409 : *v409;
                v414 = byte_27EE524FF >= 0 ? &RIO_MTLX::TypedValue<RIO_MTLX::Matrix33>::TYPE(void)::v : RIO_MTLX::TypedValue<RIO_MTLX::Matrix33>::TYPE(void)::v;
                if (!memcmp(v413, v414, v411))
                {
                  goto LABEL_962;
                }
              }

              v415 = (*(*v896[0] + 56))(v896[0]);
              v389 = RIO_MTLX::TypedValue<RIO_MTLX::Matrix44>::TYPE();
              v416 = *(v415 + 23);
              if (v416 >= 0)
              {
                v417 = *(v415 + 23);
              }

              else
              {
                v417 = *(v415 + 8);
              }

              v418 = byte_27EE5252F;
              if (byte_27EE5252F < 0)
              {
                v418 = qword_27EE52520;
              }

              if (v417 == v418)
              {
                v419 = v416 >= 0 ? v415 : *v415;
                v420 = byte_27EE5252F >= 0 ? &RIO_MTLX::TypedValue<RIO_MTLX::Matrix44>::TYPE(void)::v : RIO_MTLX::TypedValue<RIO_MTLX::Matrix44>::TYPE(void)::v;
                v389 = memcmp(v419, v420, v417);
                if (!v389)
                {
LABEL_962:
                  v421 = v896[0];
                  std::string::basic_string[abi:ne200100]<0>(&__str, "invertmatrix");
                  std::string::operator=(v421 + 1, &__str);
                  goto LABEL_1185;
                }
              }
            }
          }

          v392 = v390[47];
          if ((v390[47] & 0x80000000) == 0)
          {
            goto LABEL_907;
          }

          v404 = *(v390 + 4);
          if (v404 <= 13)
          {
            if (v404 == 6 && **v391 == 1635020658 && *(*v391 + 4) == 25972)
            {
              goto LABEL_1080;
            }

            if (v404 == 7)
            {
              v403 = *v391;
              if (**v391 == 1886220131 && *(*v391 + 3) == 1701994864)
              {
                goto LABEL_984;
              }

LABEL_930:
              v406 = *v403;
              v407 = *(v403 + 3);
              if (v406 == 1651339107 && v407 == 1701734754)
              {
                v480 = v896[0];
                std::string::basic_string[abi:ne200100]<0>(&__str, "in4");
                v481 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v480 + 12, &__str);
                if (v481)
                {
                  v483 = v481[5];
                  v482 = v481[6];
                  if (v482)
                  {
                    atomic_fetch_add_explicit(&v482->__shared_owners_, 1uLL, memory_order_relaxed);
                    std::__shared_weak_count::__release_shared[abi:ne200100](v482);
                  }
                }

                else
                {
                  v483 = 0;
                }

                if (SBYTE7(__str_16) < 0)
                {
                  operator delete(__str);
                }

                v499 = v896[0];
                if (v483)
                {
                  std::string::basic_string[abi:ne200100]<0>(&__str, "combine4");
                  std::string::operator=(v499 + 1, &__str);
                }

                else
                {
                  std::string::basic_string[abi:ne200100]<0>(&__str, "in3");
                  v500 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v499[4].__r_.__value_.__r.__words, &__str);
                  if (v500)
                  {
                    v502 = v500[5];
                    v501 = v500[6];
                    if (v501)
                    {
                      atomic_fetch_add_explicit(&v501->__shared_owners_, 1uLL, memory_order_relaxed);
                      std::__shared_weak_count::__release_shared[abi:ne200100](v501);
                    }
                  }

                  else
                  {
                    v502 = 0;
                  }

                  if (SBYTE7(__str_16) < 0)
                  {
                    operator delete(__str);
                  }

                  v505 = v896[0];
                  if (v502)
                  {
                    std::string::basic_string[abi:ne200100]<0>(&__str, "combine3");
                  }

                  else
                  {
                    std::string::basic_string[abi:ne200100]<0>(&__str, "combine2");
                  }

                  std::string::operator=(v505 + 1, &__str);
                }

                goto LABEL_1185;
              }

              if ((v392 & 0x80) == 0)
              {
                goto LABEL_1187;
              }
            }

LABEL_1004:
            if (*(v390 + 4) != 8)
            {
              goto LABEL_1008;
            }

            v422 = *v391;
            v397 = 1;
            goto LABEL_1006;
          }

          if (v404 == 14)
          {
            v428 = *(*v391 + 6);
            v429 = **v391 == 0x726F66736E617274;
            v430 = 0x746E696F706D726FLL;
          }

          else
          {
            if (v404 != 15)
            {
              goto LABEL_1004;
            }

            v425 = *v391;
            if (**v391 == 0x726F66736E617274 && *(*v391 + 7) == 0x726F746365766D72)
            {
              goto LABEL_1010;
            }

            v427 = *v425;
            v428 = *(v425 + 7);
            v429 = v427 == 0x726F66736E617274;
            v430 = 0x6C616D726F6E6D72;
          }

          if (v429 && v428 == v430)
          {
            goto LABEL_1010;
          }

          goto LABEL_1004;
        }

        break;
      }

      RIO_MTLX::TreeIterator::~TreeIterator(&v950);
      RIO_MTLX::TreeIterator::~TreeIterator(&v955);
      RIO_MTLX::TreeIterator::~TreeIterator(&v959);
      std::string::basic_string[abi:ne200100]<0>(v506, "ND_backdrop");
      RIO_MTLX::Element::removeChildOfType<RIO_MTLX::NodeDef>(this, &v959);
      if (SHIBYTE(v959.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v959.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v959, "ND_invert_matrix33");
      RIO_MTLX::Element::removeChildOfType<RIO_MTLX::NodeDef>(this, &v959);
      if (SHIBYTE(v959.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v959.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v959, "ND_invert_matrix44");
      RIO_MTLX::Element::removeChildOfType<RIO_MTLX::NodeDef>(this, &v959);
      if (SHIBYTE(v959.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v959.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v959, "ND_rotate_vector2");
      RIO_MTLX::Element::removeChildOfType<RIO_MTLX::NodeDef>(this, &v959);
      if (SHIBYTE(v959.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v959.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v959, "ND_rotate_vector3");
      RIO_MTLX::Element::removeChildOfType<RIO_MTLX::NodeDef>(this, &v959);
      if (SHIBYTE(v959.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v959.__r_.__value_.__l.__data_);
      }

LABEL_1202:
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(&v959, "r", "x");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(&v961[8], "a", "y");
      v507 = 0;
      memset(v924, 0, sizeof(v924));
      v925 = 1065353216;
      while (2)
      {
        v508 = std::__string_hash<char>::operator()[abi:ne200100](v924, (&v959 + v507));
        v509 = v508;
        v510 = *(&v924[0] + 1);
        if (!*(&v924[0] + 1))
        {
          goto LABEL_1219;
        }

        v511 = vcnt_s8(*(v924 + 8));
        v511.i16[0] = vaddlv_u8(v511);
        v512 = v511.u32[0];
        if (v511.u32[0] > 1uLL)
        {
          v513 = v508;
          if (v508 >= *(&v924[0] + 1))
          {
            v513 = v508 % *(&v924[0] + 1);
          }
        }

        else
        {
          v513 = (*(&v924[0] + 1) - 1) & v508;
        }

        v514 = *(*&v924[0] + 8 * v513);
        if (!v514 || (v515 = *v514) == 0)
        {
LABEL_1219:
          operator new();
        }

LABEL_1210:
        v516 = v515[1];
        if (v516 == v509)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100](v924, v515 + 2, (&v959.__r_.__value_.__l.__data_ + v507)))
          {
            v507 += 48;
            if (v507 != 96)
            {
              continue;
            }

            for (ii = 0; ii != -12; ii -= 6)
            {
              v518 = (&v959.__r_.__value_.__l.__data_ + ii * 8);
              if (SHIBYTE(v963.__r_.__value_.__r.__words[ii + 2]) < 0)
              {
                operator delete(v518[9]);
              }

              if (*(v518 + 71) < 0)
              {
                operator delete(v518[6]);
              }
            }

            RIO_MTLX::Element::traverseTree(this, &v959);
            *&v961[8] = 0;
            *&v955.__r_.__value_.__l.__data_ = *&v959.__r_.__value_.__l.__data_;
            if (v959.__r_.__value_.__l.__size_)
            {
              atomic_fetch_add_explicit((v959.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
            }

            v956 = 0;
            v955.__r_.__value_.__r.__words[2] = 0;
            v957 = 0;
            v519 = std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v955.__r_.__value_.__r.__words[2], v959.__r_.__value_.__r.__words[2], v960, 0xAAAAAAAAAAAAAAABLL * ((v960 - v959.__r_.__value_.__r.__words[2]) >> 3));
            v958 = *v961;
            RIO_MTLX::NULL_TREE_ITERATOR(v519);
            v950 = RIO_MTLX::NULL_TREE_ITERATOR(void)::v;
            if (*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1))
            {
              atomic_fetch_add_explicit((*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1) + 8), 1uLL, memory_order_relaxed);
            }

            v952 = 0;
            v951 = 0;
            v953 = 0;
            std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v951, qword_27EE52740, unk_27EE52748, 0xAAAAAAAAAAAAAAABLL * ((unk_27EE52748 - qword_27EE52740) >> 3));
            v954 = xmmword_27EE52758;
            while (1)
            {
              v520 = RIO_MTLX::TreeIterator::operator!=(&v955, &v950);
              if (!v520)
              {
                break;
              }

              v521 = *&v955.__r_.__value_.__l.__data_;
              if (v955.__r_.__value_.__l.__size_)
              {
                atomic_fetch_add_explicit((v955.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
              }

              v522 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v520);
              v523 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v521 + 160), v522);
              if (v523)
              {
                v524 = (v523 + 5);
              }

              else
              {
                v524 = RIO_MTLX::EMPTY_STRING(0);
              }

              v525 = *(v524 + 23);
              if (v525 < 0)
              {
                if (v524[1] != 6)
                {
                  goto LABEL_1317;
                }

                v524 = *v524;
              }

              else if (v525 != 6)
              {
                goto LABEL_1317;
              }

              if (*v524 == 1869377379 && *(v524 + 2) == 12914)
              {
                v527 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v524);
                RIO_MTLX::TypedValue<RIO_MTLX::Vector2>::TYPE();
                RIO_MTLX::Element::setAttribute(v521, v527, &RIO_MTLX::TypedValue<RIO_MTLX::Vector2>::TYPE(void)::v);
                v528 = *(v521 + 232);
                if (v528)
                {
                  v528 = std::__shared_weak_count::lock(v528);
                  v529 = v528;
                  if (v528)
                  {
                    v528 = *(v521 + 224);
                  }
                }

                else
                {
                  v529 = 0;
                }

                RIO_MTLX::Element::asA<RIO_MTLX::Node>(v528, &v899);
                if (v529)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v529);
                }

                if (!v899.__r_.__value_.__r.__words[0])
                {
                  goto LABEL_1315;
                }

                RIO_MTLX::Node::getDownstreamPorts(&__str, v899.__r_.__value_.__l.__data_);
                v531 = *(&__str + 1);
                v532 = __str;
                while (2)
                {
                  if (v532 == v531)
                  {
                    __p.__r_.__value_.__r.__words[0] = &__str;
                    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&__p);
                    v546 = v899.__r_.__value_.__r.__words[0];
                    std::string::basic_string[abi:ne200100]<0>(&__str, "channels");
                    v547 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v546 + 96), &__str);
                    if (v547)
                    {
                      v549 = v547[5];
                      v548 = v547[6];
                      if (v548)
                      {
                        atomic_fetch_add_explicit(&v548->__shared_owners_, 1uLL, memory_order_relaxed);
                      }
                    }

                    else
                    {
                      v548 = 0;
                      v549 = 0;
                    }

                    if (SBYTE7(__str_16) < 0)
                    {
                      operator delete(__str);
                      if (v549)
                      {
                        goto LABEL_1297;
                      }
                    }

                    else
                    {
                      if (!v549)
                      {
                        goto LABEL_1313;
                      }

LABEL_1297:
                      v550 = RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(v547);
                      v551 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v549 + 20, v550);
                      if (v551)
                      {
                        v552 = RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(v551);
                        v553 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v549 + 20, v552);
                        if (v553)
                        {
                          v554 = (v553 + 5);
                        }

                        else
                        {
                          v554 = RIO_MTLX::EMPTY_STRING(0);
                        }

                        if (*(v554 + 23) < 0)
                        {
                          std::string::__init_copy_ctor_external(&__str, *v554, v554[1]);
                        }

                        else
                        {
                          v555 = *v554;
                          *&__str_16 = v554[2];
                          __str = v555;
                        }

                        if (SBYTE7(__str_16) < 0)
                        {
                          std::string::__init_copy_ctor_external(&v921, __str, *(&__str + 1));
                        }

                        else
                        {
                          *&v921.__r_.__value_.__l.__data_ = __str;
                          v921.__r_.__value_.__r.__words[2] = __str_16;
                        }

                        RIO_MTLX::replaceSubstrings(&__p, &v921, v924);
                        if (SBYTE7(__str_16) < 0)
                        {
                          operator delete(__str);
                        }

                        __str = *&__p.__r_.__value_.__l.__data_;
                        *&__str_16 = *(&__p.__r_.__value_.__l + 2);
                        *(&__p.__r_.__value_.__s + 23) = 0;
                        __p.__r_.__value_.__s.__data_[0] = 0;
                        if (SHIBYTE(v921.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v921.__r_.__value_.__l.__data_);
                        }

                        v557 = RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(v556);
                        RIO_MTLX::Element::setAttribute(v549, v557, &__str);
                        if (SBYTE7(__str_16) < 0)
                        {
                          operator delete(__str);
                        }
                      }
                    }

LABEL_1313:
                    if (v548)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v548);
                    }

LABEL_1315:
                    if (v899.__r_.__value_.__l.__size_)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v899.__r_.__value_.__l.__size_);
                    }

                    break;
                  }

                  v534 = *v532;
                  v533 = *(v532 + 8);
                  if (v533)
                  {
                    atomic_fetch_add_explicit(&v533->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v535 = RIO_MTLX::PortElement::CHANNELS_ATTRIBUTE(v530);
                  v536 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v534 + 20, v535);
                  if (v536)
                  {
                    Channels = RIO_MTLX::PortElement::getChannels(v534);
                    if (*(Channels + 23) < 0)
                    {
                      std::string::__init_copy_ctor_external(&__p, *Channels, Channels[1]);
                    }

                    else
                    {
                      v538 = *Channels;
                      __p.__r_.__value_.__r.__words[2] = Channels[2];
                      *&__p.__r_.__value_.__l.__data_ = v538;
                    }

                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      std::string::__init_copy_ctor_external(&v923, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      v923 = __p;
                    }

                    RIO_MTLX::replaceSubstrings(&v901, &v923, v924);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    __p = v901;
                    *(&v901.__r_.__value_.__s + 23) = 0;
                    v901.__r_.__value_.__s.__data_[0] = 0;
                    if (SHIBYTE(v923.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v923.__r_.__value_.__l.__data_);
                    }

                    v540 = RIO_MTLX::PortElement::CHANNELS_ATTRIBUTE(v539);
                    v536 = RIO_MTLX::Element::setAttribute(v534, v540, &__p);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }
                  }

                  v541 = RIO_MTLX::PortElement::OUTPUT_ATTRIBUTE(v536);
                  v530 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v534 + 20, v541);
                  if (!v530)
                  {
                    goto LABEL_1284;
                  }

                  OutputString = RIO_MTLX::PortElement::getOutputString(v534);
                  if (*(OutputString + 23) < 0)
                  {
                    std::string::__init_copy_ctor_external(&__p, *OutputString, OutputString[1]);
                  }

                  else
                  {
                    v543 = *OutputString;
                    __p.__r_.__value_.__r.__words[2] = OutputString[2];
                    *&__p.__r_.__value_.__l.__data_ = v543;
                  }

                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v922, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v922 = __p;
                  }

                  RIO_MTLX::replaceSubstrings(&v901, &v922, v924);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  __p = v901;
                  *(&v901.__r_.__value_.__s + 23) = 0;
                  v901.__r_.__value_.__s.__data_[0] = 0;
                  if (SHIBYTE(v922.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v922.__r_.__value_.__l.__data_);
                  }

                  v545 = RIO_MTLX::PortElement::OUTPUT_ATTRIBUTE(v544);
                  v530 = RIO_MTLX::Element::setAttribute(v534, v545, &__p);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                    if (v533)
                    {
LABEL_1285:
                      std::__shared_weak_count::__release_shared[abi:ne200100](v533);
                    }
                  }

                  else
                  {
LABEL_1284:
                    if (v533)
                    {
                      goto LABEL_1285;
                    }
                  }

                  v532 += 16;
                  continue;
                }
              }

LABEL_1317:
              if (*(&v521 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v521 + 1));
              }

              RIO_MTLX::TreeIterator::operator++(&v955);
            }

            RIO_MTLX::TreeIterator::~TreeIterator(&v950);
            RIO_MTLX::TreeIterator::~TreeIterator(&v955);
            RIO_MTLX::TreeIterator::~TreeIterator(&v959);
            std::string::basic_string[abi:ne200100]<0>(v558, "material");
            RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Element>(&__str, this[17], this[18], &v959);
            if (SHIBYTE(v959.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v959.__r_.__value_.__l.__data_);
            }

            v785 = *(&__str + 1);
            v559 = __str;
            if (__str != *(&__str + 1))
            {
              do
              {
                v560 = *v559;
                v561 = v559[1];
                if (v561)
                {
                  atomic_fetch_add_explicit(&v561->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                std::string::basic_string[abi:ne200100]<0>(&v959, "shaderref");
                RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Element>(&__p, *(v560 + 136), *(v560 + 144), &v959);
                if (SHIBYTE(v959.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v959.__r_.__value_.__l.__data_);
                }

                v788 = v559;
                if (__p.__r_.__value_.__r.__words[0] != __p.__r_.__value_.__l.__size_)
                {
                  v562 = *__p.__r_.__value_.__l.__data_;
                  v563 = *(__p.__r_.__value_.__r.__words[0] + 8);
                  if (v563)
                  {
                    atomic_fetch_add_explicit(&v563->__shared_owners_, 1uLL, memory_order_relaxed);
                    atomic_fetch_add_explicit(&v563->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v920[0] = v562;
                  v920[1] = v563;
                  if (v563)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v563);
                  }

                  if (v884[0])
                  {
                    v564 = (*(*v884[0] + 56))(v884[0]);
                  }

                  else
                  {
                    v564 = RIO_MTLX::SURFACE_SHADER_TYPE_STRING(0);
                  }

                  if (*(v564 + 23) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v901, *v564, v564[1]);
                  }

                  else
                  {
                    v565 = *v564;
                    v901.__r_.__value_.__r.__words[2] = v564[2];
                    *&v901.__r_.__value_.__l.__data_ = v565;
                  }

                  if (v884[0])
                  {
                    v566 = RIO_MTLX::NodeDef::getNodeString(v884[0]);
                  }

                  else
                  {
                    v567 = RIO_MTLX::NodeDef::NODE_ATTRIBUTE(0);
                    v568 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v562 + 160), v567);
                    if (v568)
                    {
                      v566 = (v568 + 5);
                    }

                    else
                    {
                      v566 = RIO_MTLX::EMPTY_STRING(0);
                    }
                  }

                  if (v566[23] < 0)
                  {
                    std::string::__init_copy_ctor_external(&v899, *v566, *(v566 + 1));
                  }

                  else
                  {
                    v569 = *v566;
                    v899.__r_.__value_.__r.__words[2] = *(v566 + 2);
                    *&v899.__r_.__value_.__l.__data_ = v569;
                  }

                  if (*(v562 + 71) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v919, *(v562 + 48), *(v562 + 56));
                  }

                  else
                  {
                    v919 = *(v562 + 48);
                  }

                  RIO_MTLX::Element::createValidChildName(this, &v919, v896);
                  if (SHIBYTE(v919.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v919.__r_.__value_.__l.__data_);
                  }

                  RIO_MTLX::GraphElement::addNode(this, &v899, v896);
                }

                v959.__r_.__value_.__r.__words[0] = &__p;
                std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v959);
                RIO_MTLX::Element::removeChild(this, (v560 + 48));
                if (v561)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v561);
                }

                v559 += 2;
              }

              while (v788 + 2 != v785);
            }

            v959.__r_.__value_.__r.__words[0] = &__str;
            std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v959);
            std::string::basic_string[abi:ne200100]<0>(v917, "atan2");
            std::string::basic_string[abi:ne200100]<0>(&v916, "in1");
            std::string::basic_string[abi:ne200100]<0>(&v915, "in2");
            std::string::basic_string[abi:ne200100]<0>(v913, "rotate3d");
            std::string::basic_string[abi:ne200100]<0>(v911, "axis");
            std::string::basic_string[abi:ne200100]<0>(v909, "1.0");
            RIO_MTLX::Document::getMatchingNodeDefs(this, v917, &v959);
            v571 = v959.__r_.__value_.__l.__size_;
            v570 = v959.__r_.__value_.__r.__words[0];
            if (v959.__r_.__value_.__r.__words[0] != v959.__r_.__value_.__l.__size_)
            {
              __srcb = 0;
              while (1)
              {
                v573 = *v570;
                v572 = v570[1];
                if (v572)
                {
                  atomic_fetch_add_explicit(&v572->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                RIO_MTLX::Element::getChildOfType<RIO_MTLX::Input>(v573, &v916, &v950);
                RIO_MTLX::Element::getChildOfType<RIO_MTLX::Input>(v573, &v915, &__str);
                ValueString = RIO_MTLX::ValueElement::getValueString(v950);
                if (*(ValueString + 23) < 0)
                {
                  std::string::__init_copy_ctor_external(&v955, *ValueString, ValueString[1]);
                }

                else
                {
                  v575 = *ValueString;
                  v955.__r_.__value_.__r.__words[2] = ValueString[2];
                  *&v955.__r_.__value_.__l.__data_ = v575;
                }

                v576 = HIBYTE(v955.__r_.__value_.__r.__words[2]);
                if ((v955.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v577 = HIBYTE(v955.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v577 = v955.__r_.__value_.__l.__size_;
                }

                v578 = v910;
                if ((v910 & 0x80u) != 0)
                {
                  v578 = v909[1];
                }

                if (v577 == v578)
                {
                  v579 = (v955.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v955 : v955.__r_.__value_.__r.__words[0];
                  v580 = (v910 & 0x80u) == 0 ? v909 : v909[0];
                  if (!memcmp(v579, v580, v577))
                  {
                    break;
                  }
                }

                if (v576 < 0)
                {
                  goto LABEL_1376;
                }

LABEL_1377:
                if (*(&__str + 1))
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](*(&__str + 1));
                }

                if (*(&v950 + 1))
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](*(&v950 + 1));
                }

                if (v572)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v572);
                }

                v570 += 2;
                if (v570 == v571)
                {
                  goto LABEL_1388;
                }
              }

              v581 = v950;
              v582 = RIO_MTLX::ValueElement::getValueString(__str);
              v583 = RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(v582);
              v584 = RIO_MTLX::Element::setAttribute(v581, v583, v582);
              v585 = __str;
              v586 = RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(v584);
              RIO_MTLX::Element::setAttribute(v585, v586, &v955);
              __srcb = 1;
              if ((*(&v955.__r_.__value_.__s + 23) & 0x80) == 0)
              {
                goto LABEL_1377;
              }

LABEL_1376:
              operator delete(v955.__r_.__value_.__l.__data_);
              goto LABEL_1377;
            }

            __srcb = 0;
LABEL_1388:
            v955.__r_.__value_.__r.__words[0] = &v959;
            std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v955);
            RIO_MTLX::Document::getMatchingNodeDefs(this, v913, &v959);
            v588 = v959.__r_.__value_.__l.__size_;
            for (jj = v959.__r_.__value_.__r.__words[0]; jj != v588; jj += 16)
            {
              v590 = *jj;
              v589 = *(jj + 8);
              if (v589)
              {
                atomic_fetch_add_explicit(&v589->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v591 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v590 + 12, v911);
              if (!v591)
              {
                goto LABEL_1405;
              }

              v592 = v591[5];
              v593 = v591[6];
              if (v593)
              {
                atomic_fetch_add_explicit(&v593->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!v592)
                {
                  goto LABEL_1404;
                }

                v905 = v592;
                v906 = v593;
                atomic_fetch_add_explicit(&v593->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              else
              {
                if (!v592)
                {
                  goto LABEL_1405;
                }

                v905 = v591[5];
                v906 = 0;
              }

              std::string::basic_string[abi:ne200100]<0>(&v955, "input");
              RIO_MTLX::Element::changeChildCategory(v590, &v905, &v955.__r_.__value_.__l.__data_, v907);
              if (v908)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v908);
              }

              if ((SHIBYTE(v955.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                if (!v593)
                {
                  goto LABEL_1405;
                }

LABEL_1403:
                std::__shared_weak_count::__release_shared[abi:ne200100](v593);
LABEL_1404:
                std::__shared_weak_count::__release_shared[abi:ne200100](v593);
                goto LABEL_1405;
              }

              operator delete(v955.__r_.__value_.__l.__data_);
              if (v593)
              {
                goto LABEL_1403;
              }

LABEL_1405:
              if (v589)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v589);
              }
            }

            v955.__r_.__value_.__r.__words[0] = &v959;
            std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v955);
            std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[16],char const(&)[16],0>(&__p, "dielectric_brdf", "dielectric_bsdf");
            std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[16],char const(&)[16],0>(&v901, "dielectric_btdf", "dielectric_bsdf");
            std::string::basic_string[abi:ne200100]<0>(&v899, "generalized_schlick_brdf");
            std::string::basic_string[abi:ne200100]<0>(&v900, "generalized_schlick_bsdf");
            std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[15],char const(&)[15],0>(v896, "conductor_brdf", "conductor_bsdf");
            std::string::basic_string[abi:ne200100]<0>(&v894, "sheen_brdf");
            std::string::basic_string[abi:ne200100]<0>(&v895, "sheen_bsdf");
            std::string::basic_string[abi:ne200100]<0>(&v892, "diffuse_brdf");
            std::string::basic_string[abi:ne200100]<0>(&v893, "oren_nayar_diffuse_bsdf");
            std::string::basic_string[abi:ne200100]<0>(&v890, "burley_diffuse_brdf");
            std::string::basic_string[abi:ne200100]<0>(&v891, "burley_diffuse_bsdf");
            std::string::basic_string[abi:ne200100]<0>(v887, "diffuse_btdf");
            std::string::basic_string[abi:ne200100]<0>(&v889, "translucent_bsdf");
            std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[16],char const(&)[16],0>(v884, "subsurface_brdf", "subsurface_bsdf");
            std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[15],char const(&)[15],0>(v881, "thin_film_brdf", "thin_film_bsdf");
            std::string::basic_string[abi:ne200100]<0>(&__s, "scatter_mode");
            std::string::basic_string[abi:ne200100]<0>(&v879, "BSDF");
            std::string::basic_string[abi:ne200100]<0>(&v877, "layer");
            std::string::basic_string[abi:ne200100]<0>(&v876, "top");
            std::string::basic_string[abi:ne200100]<0>(&v874, "base");
            std::string::basic_string[abi:ne200100]<0>(v872, "interior");
            std::string::basic_string[abi:ne200100]<0>(&v871, "artistic_ior");
            std::string::basic_string[abi:ne200100]<0>(v869, "complex_ior");
            std::string::basic_string[abi:ne200100]<0>(&v867, "reflectivity");
            std::string::basic_string[abi:ne200100]<0>(&v865, "edge_color");
            std::string::basic_string[abi:ne200100]<0>(v863, "ior");
            std::string::basic_string[abi:ne200100]<0>(v861, "extinction");
            std::string::basic_string[abi:ne200100]<0>(&v860, "color3");
            std::string::basic_string[abi:ne200100]<0>(&v857, "vector3");
            std::string::basic_string[abi:ne200100]<0>(&v856, "convert");
            std::string::basic_string[abi:ne200100]<0>(&v854, "in");
            if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v853, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
            }

            else
            {
              v853 = __s;
            }

            RIO_MTLX::Element::getChildOfType<RIO_MTLX::NodeDef>(this, &__p, &v851);
            RIO_MTLX::Document::upgradeVersion(void)::$_0::operator()(&v853, &v851, &v904);
            if (v852)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v852);
            }

            RIO_MTLX::Element::getChildOfType<RIO_MTLX::NodeDef>(this, &v899, &v849);
            RIO_MTLX::Document::upgradeVersion(void)::$_0::operator()(&v853, &v849, &v900);
            if (v850)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v850);
            }

            RIO_MTLX::Element::getChildOfType<RIO_MTLX::NodeDef>(this, v896, &v847);
            if (v847)
            {
              RIO_MTLX::Element::setName(v847, &v898);
            }

            if (v848)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v848);
            }

            RIO_MTLX::Element::getChildOfType<RIO_MTLX::NodeDef>(this, &v894, &v845);
            if (v845)
            {
              RIO_MTLX::Element::setName(v845, &v895);
            }

            if (v846)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v846);
            }

            RIO_MTLX::Element::getChildOfType<RIO_MTLX::NodeDef>(this, &v892, &v843);
            if (v843)
            {
              RIO_MTLX::Element::setName(v843, &v893);
            }

            if (v844)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v844);
            }

            RIO_MTLX::Element::getChildOfType<RIO_MTLX::NodeDef>(this, &v890, &v841);
            if (v841)
            {
              RIO_MTLX::Element::setName(v841, &v891);
            }

            if (v842)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v842);
            }

            RIO_MTLX::Element::getChildOfType<RIO_MTLX::NodeDef>(this, v887, &v839);
            if (v839)
            {
              RIO_MTLX::Element::setName(v839, &v889);
            }

            if (v840)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v840);
            }

            RIO_MTLX::Element::getChildOfType<RIO_MTLX::NodeDef>(this, v884, &v837);
            if (v837)
            {
              RIO_MTLX::Element::setName(v837, &v886);
            }

            if (v838)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v838);
            }

            RIO_MTLX::Element::getChildOfType<RIO_MTLX::NodeDef>(this, v881, &v835);
            if (v835)
            {
              RIO_MTLX::Element::setName(v835, &v883);
            }

            if (v836)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v836);
            }

            RIO_MTLX::Element::removeChildOfType<RIO_MTLX::NodeDef>(this, &v901);
            RIO_MTLX::Element::removeChildOfType<RIO_MTLX::NodeDef>(this, v869);
            if (SHIBYTE(v876.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v959, v876.__r_.__value_.__l.__data_, v876.__r_.__value_.__l.__size_);
            }

            else
            {
              v959 = v876;
            }

            if (SHIBYTE(v875) < 0)
            {
              std::string::__init_copy_ctor_external(&v960, v874, *(&v874 + 1));
            }

            else
            {
              v960 = v874;
              *v961 = v875;
            }

            if (SHIBYTE(v878) < 0)
            {
              std::string::__init_copy_ctor_external(&v961[8], v877, *(&v877 + 1));
            }

            else
            {
              *&v961[8] = v877;
              v962 = v878;
            }

            if (SHIBYTE(v879.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v963, v879.__r_.__value_.__l.__data_, v879.__r_.__value_.__l.__size_);
            }

            else
            {
              v963 = v879;
            }

            v832 = 0;
            v833 = 0;
            v834 = 0;
            v829 = 0;
            v830 = 0;
            v831 = 0;
            RIO_MTLX::Element::traverseTree(this, &v955);
            *(&v958 + 1) = 0;
            v950 = *&v955.__r_.__value_.__l.__data_;
            if (v955.__r_.__value_.__l.__size_)
            {
              atomic_fetch_add_explicit((v955.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
            }

            v952 = 0;
            v951 = 0;
            v953 = 0;
            v594 = std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v951, v955.__r_.__value_.__r.__words[2], v956, 0xAAAAAAAAAAAAAAABLL * ((v956 - v955.__r_.__value_.__r.__words[2]) >> 3));
            v954 = v958;
            RIO_MTLX::NULL_TREE_ITERATOR(v594);
            __str = RIO_MTLX::NULL_TREE_ITERATOR(void)::v;
            if (*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1))
            {
              atomic_fetch_add_explicit((*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1) + 8), 1uLL, memory_order_relaxed);
            }

            __str_16 = 0uLL;
            v827 = 0;
            std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&__str_16, qword_27EE52740, unk_27EE52748, 0xAAAAAAAAAAAAAAABLL * ((unk_27EE52748 - qword_27EE52740) >> 3));
            v828 = xmmword_27EE52758;
            while (RIO_MTLX::TreeIterator::operator!=(&v950, &__str))
            {
              v595 = v950;
              if (*(&v950 + 1))
              {
                atomic_fetch_add_explicit((*(&v950 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              RIO_MTLX::Element::asA<RIO_MTLX::Node>(v595, &v823);
              v597 = v823;
              if (!v823)
              {
                goto LABEL_1720;
              }

              v598 = (v823 + 24);
              v599 = *(v823 + 47);
              if (__srcb)
              {
                v600 = *(v823 + 4);
                if ((v599 & 0x80u) == 0)
                {
                  v601 = *(v823 + 47);
                }

                else
                {
                  v601 = *(v823 + 4);
                }

                v602 = v918;
                if ((v918 & 0x80u) != 0)
                {
                  v602 = v917[1];
                }

                if (v601 == v602)
                {
                  v603 = (v599 & 0x80u) == 0 ? (v823 + 24) : *v598;
                  v604 = (v918 & 0x80u) == 0 ? v917 : v917[0];
                  v596 = memcmp(v603, v604, v601);
                  if (!v596)
                  {
                    RIO_MTLX::Element::getChildOfType<RIO_MTLX::Input>(v597, &v916, &v818);
                    RIO_MTLX::Element::getChildOfType<RIO_MTLX::Input>(v823, &v915, v810);
                    v606 = v818.__r_.__value_.__r.__words[0];
                    if (v818.__r_.__value_.__r.__words[0])
                    {
                      if (v810[0])
                      {
                        v607 = RIO_MTLX::EMPTY_STRING(v605);
                        RIO_MTLX::Element::setName(v606, v607);
                        RIO_MTLX::Element::setName(v810[0], &v916);
                        RIO_MTLX::Element::setName(v818.__r_.__value_.__l.__data_, &v915);
LABEL_1739:
                        if (v810[1])
                        {
                          std::__shared_weak_count::__release_shared[abi:ne200100](v810[1]);
                        }

                        v596 = v818.__r_.__value_.__l.__size_;
                        if (!v818.__r_.__value_.__l.__size_)
                        {
                          goto LABEL_1633;
                        }

LABEL_1632:
                        std::__shared_weak_count::__release_shared[abi:ne200100](v596);
                        goto LABEL_1633;
                      }

                      RIO_MTLX::Element::setName(v818.__r_.__value_.__l.__data_, &v915);
                    }

                    if (v810[0])
                    {
                      RIO_MTLX::Element::setName(v810[0], &v916);
                    }

                    goto LABEL_1739;
                  }
                }
              }

              else
              {
                v600 = *(v823 + 4);
              }

              if ((v599 & 0x80u) == 0)
              {
                v608 = v599;
              }

              else
              {
                v608 = v600;
              }

              v609 = v914;
              if ((v914 & 0x80u) != 0)
              {
                v609 = v913[1];
              }

              if (v608 == v609 && ((v599 & 0x80u) == 0 ? (v610 = v597 + 1) : (v610 = *v598), (v914 & 0x80u) == 0 ? (v611 = v913) : (v611 = v913[0]), v596 = memcmp(v610, v611, v608), !v596))
              {
                v596 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v597[4].__r_.__value_.__r.__words, v911);
                if (v596)
                {
                  v653 = *(v596 + 40);
                  v654 = *(v596 + 48);
                  if (v654)
                  {
                    atomic_fetch_add_explicit(&v654->__shared_owners_, 1uLL, memory_order_relaxed);
                    if (v653)
                    {
                      v655 = v823;
                      v819 = v653;
                      v820 = v654;
                      atomic_fetch_add_explicit(&v654->__shared_owners_, 1uLL, memory_order_relaxed);
                      goto LABEL_1730;
                    }
                  }

                  else
                  {
                    if (!v653)
                    {
                      goto LABEL_1633;
                    }

                    v655 = v823;
                    v819 = *(v596 + 40);
                    v820 = 0;
LABEL_1730:
                    std::string::basic_string[abi:ne200100]<0>(&v818, "input");
                    RIO_MTLX::Element::changeChildCategory(v655, &v819, &v818.__r_.__value_.__l.__data_, v821);
                    v596 = v822;
                    if (v822)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v822);
                    }

                    if (SHIBYTE(v818.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v818.__r_.__value_.__l.__data_);
                    }

                    if (!v654)
                    {
                      goto LABEL_1633;
                    }

                    std::__shared_weak_count::__release_shared[abi:ne200100](v654);
                  }

LABEL_1631:
                  v596 = v654;
                  goto LABEL_1632;
                }
              }

              else
              {
                v612 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v612 = __p.__r_.__value_.__l.__size_;
                }

                if (v608 == v612)
                {
                  v613 = (v599 & 0x80u) == 0 ? &v597[1] : *v598;
                  v614 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
                  v596 = memcmp(v613, v614, v608);
                  if (!v596)
                  {
                    std::string::operator=(v597 + 1, &v904);
                    v654 = v824;
                    v817[0] = v823;
                    v817[1] = v824;
                    if (v824)
                    {
                      atomic_fetch_add_explicit(&v824->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
                    }

                    RIO_MTLX::Document::upgradeVersion(void)::$_1::operator()(&v959, v817);
LABEL_1630:
                    if (v654)
                    {
                      goto LABEL_1631;
                    }

                    goto LABEL_1633;
                  }
                }

                v615 = HIBYTE(v901.__r_.__value_.__r.__words[2]);
                if ((v901.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v615 = v901.__r_.__value_.__l.__size_;
                }

                if (v608 == v615)
                {
                  v616 = (v599 & 0x80u) == 0 ? &v597[1] : *v598;
                  v617 = (v901.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v901 : v901.__r_.__value_.__r.__words[0];
                  v596 = memcmp(v616, v617, v608);
                  if (!v596)
                  {
                    std::string::operator=(v597 + 1, &v902);
                    RIO_MTLX::Element::removeChildOfType<RIO_MTLX::Input>(v823, v872);
                    v656 = v823;
                    RIO_MTLX::STRING_TYPE_STRING(v657);
                    RIO_MTLX::InterfaceElement::addInput(v656, &__s);
                  }
                }

                v618 = HIBYTE(v899.__r_.__value_.__r.__words[2]);
                if ((v899.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v618 = v899.__r_.__value_.__l.__size_;
                }

                if (v608 == v618)
                {
                  v619 = (v599 & 0x80u) == 0 ? &v597[1] : *v598;
                  v620 = (v899.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v899 : v899.__r_.__value_.__r.__words[0];
                  v596 = memcmp(v619, v620, v608);
                  if (!v596)
                  {
                    std::string::operator=(v597 + 1, &v900);
                    v654 = v824;
                    v816[0] = v823;
                    v816[1] = v824;
                    if (v824)
                    {
                      atomic_fetch_add_explicit(&v824->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
                    }

                    RIO_MTLX::Document::upgradeVersion(void)::$_1::operator()(&v959, v816);
                    goto LABEL_1630;
                  }
                }

                v621 = HIBYTE(v894.__r_.__value_.__r.__words[2]);
                if ((v894.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v621 = v894.__r_.__value_.__l.__size_;
                }

                if (v608 == v621)
                {
                  v622 = (v599 & 0x80u) == 0 ? &v597[1] : *v598;
                  v623 = (v894.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v894 : v894.__r_.__value_.__r.__words[0];
                  v596 = memcmp(v622, v623, v608);
                  if (!v596)
                  {
                    std::string::operator=(v597 + 1, &v895);
                    v654 = v824;
                    v815[0] = v823;
                    v815[1] = v824;
                    if (v824)
                    {
                      atomic_fetch_add_explicit(&v824->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
                    }

                    RIO_MTLX::Document::upgradeVersion(void)::$_1::operator()(&v959, v815);
                    goto LABEL_1630;
                  }
                }

                v624 = v882;
                if ((v882 & 0x80u) != 0)
                {
                  v624 = v881[1];
                }

                if (v608 == v624)
                {
                  v625 = (v599 & 0x80u) == 0 ? &v597[1] : *v598;
                  v626 = (v882 & 0x80u) == 0 ? v881 : v881[0];
                  v596 = memcmp(v625, v626, v608);
                  if (!v596)
                  {
                    std::string::operator=(v597 + 1, &v883);
                    v654 = v824;
                    v814[0] = v823;
                    v814[1] = v824;
                    if (v824)
                    {
                      atomic_fetch_add_explicit(&v824->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
                    }

                    RIO_MTLX::Document::upgradeVersion(void)::$_1::operator()(&v959, v814);
                    goto LABEL_1630;
                  }
                }

                v627 = v897;
                if ((v897 & 0x80u) != 0)
                {
                  v627 = v896[1];
                }

                if (v608 == v627)
                {
                  v628 = (v599 & 0x80u) == 0 ? &v597[1] : *v598;
                  v629 = (v897 & 0x80u) == 0 ? v896 : v896[0];
                  v596 = memcmp(v628, v629, v608);
                  if (!v596)
                  {
                    std::string::operator=(v597 + 1, &v898);
                    v694 = v823;
                    v695 = *(v823 + 29);
                    if (v695)
                    {
                      v695 = std::__shared_weak_count::lock(v695);
                      v696 = v695;
                      if (v695)
                      {
                        v695 = *(v694 + 28);
                      }
                    }

                    else
                    {
                      v696 = 0;
                    }

                    RIO_MTLX::Element::asA<RIO_MTLX::GraphElement>(v695, &v812);
                    if (v696)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v696);
                    }

                    v697 = v812;
                    v698 = v823;
                    if (*(v823 + 71) >= 0)
                    {
                      v699 = *(v823 + 71);
                    }

                    else
                    {
                      v699 = *(v823 + 7);
                    }

                    std::string::basic_string[abi:ne200100](&v818, v699 + 14);
                    if ((v818.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v700 = &v818;
                    }

                    else
                    {
                      v700 = v818.__r_.__value_.__r.__words[0];
                    }

                    if (v699)
                    {
                      if (*(v698 + 71) >= 0)
                      {
                        v701 = v698 + 48;
                      }

                      else
                      {
                        v701 = *(v698 + 6);
                      }

                      memmove(v700, v701, v699);
                    }

                    strcpy(v700 + v699, "__artistic_ior");
                    std::string::basic_string[abi:ne200100]<0>(v810, "multioutput");
                    RIO_MTLX::GraphElement::addNode(v697, &v871, &v818);
                  }
                }

                if ((v599 & 0x80u) == 0)
                {
                  v630 = v599;
                }

                else
                {
                  v630 = v600;
                }

                v631 = HIBYTE(v892.__r_.__value_.__r.__words[2]);
                if ((v892.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v631 = v892.__r_.__value_.__l.__size_;
                }

                if (v630 != v631 || ((v599 & 0x80u) == 0 ? (v632 = v597 + 1) : (v632 = *v598), (v892.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v633 = &v892) : (v633 = v892.__r_.__value_.__r.__words[0]), v596 = memcmp(v632, v633, v630), v634 = &v893, v596))
                {
                  v635 = HIBYTE(v890.__r_.__value_.__r.__words[2]);
                  if ((v890.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v635 = v890.__r_.__value_.__l.__size_;
                  }

                  if (v630 != v635 || ((v599 & 0x80u) == 0 ? (v636 = v597 + 1) : (v636 = *v598), (v890.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v637 = &v890) : (v637 = v890.__r_.__value_.__r.__words[0]), v596 = memcmp(v636, v637, v630), v634 = &v891, v596))
                  {
                    v638 = v888;
                    if ((v888 & 0x80u) != 0)
                    {
                      v638 = v887[1];
                    }

                    if (v630 != v638 || ((v599 & 0x80u) == 0 ? (v639 = v597 + 1) : (v639 = *v598), (v888 & 0x80u) == 0 ? (v640 = v887) : (v640 = v887[0]), v596 = memcmp(v639, v640, v630), v634 = &v889, v596))
                    {
                      v641 = v885;
                      if ((v885 & 0x80u) != 0)
                      {
                        v641 = v884[1];
                      }

                      if (v630 != v641 || ((v599 & 0x80u) == 0 ? (v642 = v597 + 1) : (v642 = *v598), (v885 & 0x80u) == 0 ? (v643 = v884) : (v643 = v884[0]), v596 = memcmp(v642, v643, v630), v634 = &v886, v596))
                      {
                        v644 = HIBYTE(v871.__r_.__value_.__r.__words[2]);
                        if ((v871.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                        {
                          v644 = v871.__r_.__value_.__l.__size_;
                        }

                        if (v630 != v644)
                        {
                          goto LABEL_1633;
                        }

                        v645 = (v599 & 0x80u) == 0 ? &v597[1] : *v598;
                        v646 = (v871.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v871 : v871.__r_.__value_.__r.__words[0];
                        v596 = memcmp(v645, v646, v630);
                        if (v596)
                        {
                          goto LABEL_1633;
                        }

                        RIO_MTLX::Element::getChildOfType<RIO_MTLX::Output>(v597, v863, &v818);
                        v648 = v818.__r_.__value_.__r.__words[0];
                        if (v818.__r_.__value_.__r.__words[0])
                        {
                          v649 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v647);
                          RIO_MTLX::Element::setAttribute(v648, v649, &v860);
                        }

                        RIO_MTLX::Element::getChildOfType<RIO_MTLX::Output>(v823, v861, v810);
                        v651 = v810[0];
                        if (v810[0])
                        {
                          v652 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v650);
                          RIO_MTLX::Element::setAttribute(v651, v652, &v860);
                        }

                        goto LABEL_1739;
                      }
                    }
                  }
                }

                v596 = std::string::operator=(v597 + 1, v634);
              }

LABEL_1633:
              v658 = v823;
              v659 = RIO_MTLX::EMPTY_STRING(v596);
              RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Input>(v658, v659, &v818);
              v661 = v818.__r_.__value_.__l.__size_;
              for (kk = v818.__r_.__value_.__r.__words[0]; kk != v661; kk += 16)
              {
                v662 = *kk;
                v663 = *(kk + 8);
                v810[0] = *kk;
                v810[1] = v663;
                if (v663)
                {
                  atomic_fetch_add_explicit(v663 + 1, 1uLL, memory_order_relaxed);
                }

                v664 = RIO_MTLX::PortElement::getOutputString(v662);
                v665 = *(v664 + 23);
                if (v665 >= 0)
                {
                  v666 = *(v664 + 23);
                }

                else
                {
                  v666 = v664[1];
                }

                v667 = v864;
                if ((v864 & 0x80u) != 0)
                {
                  v667 = v863[1];
                }

                if (v666 != v667)
                {
                  goto LABEL_1660;
                }

                if (v665 < 0)
                {
                  v664 = *v664;
                }

                v668 = (v864 & 0x80u) == 0 ? v863 : v863[0];
                if (memcmp(v664, v668, v666))
                {
                  goto LABEL_1660;
                }

                v669 = (*(*v810[0] + 56))(v810[0]);
                v670 = *(v669 + 23);
                if (v670 >= 0)
                {
                  v671 = *(v669 + 23);
                }

                else
                {
                  v671 = v669[1];
                }

                v672 = v859;
                if ((v859 & 0x80u) != 0)
                {
                  v672 = v858;
                }

                if (v671 != v672)
                {
                  goto LABEL_1660;
                }

                if (v670 < 0)
                {
                  v669 = *v669;
                }

                v673 = (v859 & 0x80u) == 0 ? &v857 : v857;
                if (!memcmp(v669, v673, v671))
                {
                  (*(*v810[0] + 64))(&v812);
                  if (v812)
                  {
                    v689 = *(v812 + 47);
                    if (v689 >= 0)
                    {
                      v690 = *(v812 + 47);
                    }

                    else
                    {
                      v690 = v812[4];
                    }

                    v691 = HIBYTE(v871.__r_.__value_.__r.__words[2]);
                    if ((v871.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v691 = v871.__r_.__value_.__l.__size_;
                    }

                    if (v690 == v691)
                    {
                      v692 = v689 >= 0 ? (v812 + 3) : v812[3];
                      v693 = (v871.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v871 : v871.__r_.__value_.__r.__words[0];
                      if (!memcmp(v692, v693, v690))
                      {
                        std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](&v832, v810);
                      }
                    }
                  }
                }

                else
                {
LABEL_1660:
                  v674 = RIO_MTLX::PortElement::getOutputString(v810[0]);
                  v675 = *(v674 + 23);
                  if (v675 >= 0)
                  {
                    v676 = *(v674 + 23);
                  }

                  else
                  {
                    v676 = v674[1];
                  }

                  v677 = v862;
                  if ((v862 & 0x80u) != 0)
                  {
                    v677 = v861[1];
                  }

                  if (v676 != v677)
                  {
                    goto LABEL_1716;
                  }

                  if (v675 < 0)
                  {
                    v674 = *v674;
                  }

                  v678 = (v862 & 0x80u) == 0 ? v861 : v861[0];
                  if (memcmp(v674, v678, v676))
                  {
                    goto LABEL_1716;
                  }

                  v679 = (*(*v810[0] + 56))(v810[0]);
                  v680 = *(v679 + 23);
                  if (v680 >= 0)
                  {
                    v681 = *(v679 + 23);
                  }

                  else
                  {
                    v681 = v679[1];
                  }

                  v682 = v859;
                  if ((v859 & 0x80u) != 0)
                  {
                    v682 = v858;
                  }

                  if (v681 != v682)
                  {
                    goto LABEL_1716;
                  }

                  if (v680 < 0)
                  {
                    v679 = *v679;
                  }

                  v683 = (v859 & 0x80u) == 0 ? &v857 : v857;
                  if (memcmp(v679, v683, v681))
                  {
                    goto LABEL_1716;
                  }

                  (*(*v810[0] + 64))(&v812);
                  if (v812)
                  {
                    v684 = *(v812 + 47);
                    if (v684 >= 0)
                    {
                      v685 = *(v812 + 47);
                    }

                    else
                    {
                      v685 = v812[4];
                    }

                    v686 = HIBYTE(v871.__r_.__value_.__r.__words[2]);
                    if ((v871.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v686 = v871.__r_.__value_.__l.__size_;
                    }

                    if (v685 == v686)
                    {
                      v687 = v684 >= 0 ? (v812 + 3) : v812[3];
                      v688 = (v871.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v871 : v871.__r_.__value_.__r.__words[0];
                      if (!memcmp(v687, v688, v685))
                      {
                        std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](&v829, v810);
                      }
                    }
                  }
                }

                if (v813)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v813);
                }

LABEL_1716:
                if (v810[1])
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v810[1]);
                }
              }

              v810[0] = &v818;
              std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](v810);
LABEL_1720:
              if (v824)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v824);
              }

              if (*(&v595 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v595 + 1));
              }

              RIO_MTLX::TreeIterator::operator++(&v950);
            }

            RIO_MTLX::TreeIterator::~TreeIterator(&__str);
            RIO_MTLX::TreeIterator::~TreeIterator(&v950);
            RIO_MTLX::TreeIterator::~TreeIterator(&v955);
            if (v832 != v833)
            {
              v704 = *v832;
              v703 = v832[1];
              if (v703)
              {
                atomic_fetch_add_explicit((v703 + 8), 1uLL, memory_order_relaxed);
              }

              (*(*v704 + 64))(&v950, v704);
              v705 = v704[29];
              if (v705)
              {
                if (std::__shared_weak_count::lock(v705))
                {
                  v706 = v704[28];
                }

                else
                {
                  v706 = 0;
                }
              }

              else
              {
                v706 = 0;
              }

              v707 = *(v706 + 232);
              if (v707)
              {
                v707 = std::__shared_weak_count::lock(v707);
                v708 = v707;
                if (v707)
                {
                  v707 = *(v706 + 224);
                }
              }

              else
              {
                v708 = 0;
              }

              RIO_MTLX::Element::asA<RIO_MTLX::GraphElement>(v707, &__str);
              if (v708)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v708);
              }

              v709 = __str;
              if (*(v706 + 71) >= 0)
              {
                v710 = *(v706 + 71);
              }

              else
              {
                v710 = *(v706 + 56);
              }

              std::string::basic_string[abi:ne200100](&v955, v710 + 13);
              if ((v955.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v711 = &v955;
              }

              else
              {
                v711 = v955.__r_.__value_.__r.__words[0];
              }

              if (v710)
              {
                if (*(v706 + 71) >= 0)
                {
                  v712 = (v706 + 48);
                }

                else
                {
                  v712 = *(v706 + 48);
                }

                memmove(v711, v712, v710);
              }

              strcpy(v711 + v710, "__convert_ior");
              RIO_MTLX::GraphElement::addNode(v709, &v856, &v955);
            }

            if (v829 != v830)
            {
              v714 = *v829;
              v713 = v829[1];
              if (v713)
              {
                atomic_fetch_add_explicit((v713 + 8), 1uLL, memory_order_relaxed);
              }

              (*(*v714 + 64))(&v950, v714);
              v715 = v714[29];
              if (v715)
              {
                if (std::__shared_weak_count::lock(v715))
                {
                  v716 = v714[28];
                }

                else
                {
                  v716 = 0;
                }
              }

              else
              {
                v716 = 0;
              }

              v717 = *(v716 + 232);
              if (v717)
              {
                v717 = std::__shared_weak_count::lock(v717);
                v718 = v717;
                if (v717)
                {
                  v717 = *(v716 + 224);
                }
              }

              else
              {
                v718 = 0;
              }

              RIO_MTLX::Element::asA<RIO_MTLX::GraphElement>(v717, &__str);
              if (v718)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v718);
              }

              v719 = __str;
              if (*(v716 + 71) >= 0)
              {
                v720 = *(v716 + 71);
              }

              else
              {
                v720 = *(v716 + 56);
              }

              std::string::basic_string[abi:ne200100](&v955, v720 + 20);
              if ((v955.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v721 = &v955;
              }

              else
              {
                v721 = v955.__r_.__value_.__r.__words[0];
              }

              if (v720)
              {
                if (*(v716 + 71) >= 0)
                {
                  v722 = (v716 + 48);
                }

                else
                {
                  v722 = *(v716 + 48);
                }

                memmove(v721, v722, v720);
              }

              strcpy(v721 + v720, "__convert_extinction");
              RIO_MTLX::GraphElement::addNode(v719, &v856, &v955);
            }

            v723 = RIO_MTLX::EMPTY_STRING(v702);
            RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::NodeGraph>(this, v723, &v955);
            v799 = v955.__r_.__value_.__l.__size_;
            v725 = v955.__r_.__value_.__r.__words[0];
            if (v955.__r_.__value_.__r.__words[0] != v955.__r_.__value_.__l.__size_)
            {
              do
              {
                v803 = v725;
                v727 = *v725;
                v726 = *(v725 + 8);
                if (v726)
                {
                  atomic_fetch_add_explicit(&v726->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                __srcc = v726;
                v728 = RIO_MTLX::InterfaceElement::VERSION_ATTRIBUTE(v724);
                RIO_MTLX::Element::removeAttribute(v727, v728);
                *(&v950 + 1) = 0;
                v951 = 0;
                *&v950 = &v950 + 8;
                v730 = *(v727 + 17);
                v729 = *(v727 + 18);
                if (v730 != v729)
                {
                  do
                  {
                    v731 = *v730;
                    v732 = v730[1];
                    if (v732)
                    {
                      atomic_fetch_add_explicit(&v732->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    RIO_MTLX::Element::asA<RIO_MTLX::Node>(v731, &v818);
                    v734 = v818.__r_.__value_.__r.__words[0];
                    if (v818.__r_.__value_.__r.__words[0])
                    {
                      v735 = RIO_MTLX::EMPTY_STRING(v733);
                      RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::ValueElement>(v734, v735, &__str);
                      v736 = *(&__str + 1);
                      for (mm = __str; mm != v736; mm += 16)
                      {
                        v738 = *mm;
                        v739 = *(mm + 8);
                        if (v739)
                        {
                          atomic_fetch_add_explicit(&v739->__shared_owners_, 1uLL, memory_order_relaxed);
                        }

                        InterfaceName = RIO_MTLX::ValueElement::getInterfaceName(v738);
                        v741 = *(InterfaceName + 23);
                        if ((v741 & 0x80u) != 0)
                        {
                          v741 = InterfaceName[1];
                        }

                        if (v741)
                        {
                          std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v950, InterfaceName, InterfaceName);
                        }

                        if (v739)
                        {
                          std::__shared_weak_count::__release_shared[abi:ne200100](v739);
                        }
                      }

                      v810[0] = &__str;
                      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](v810);
                    }

                    if (v818.__r_.__value_.__l.__size_)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v818.__r_.__value_.__l.__size_);
                    }

                    if (v732)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v732);
                    }

                    v730 += 2;
                  }

                  while (v730 != v729);
                  v742 = v950;
                  if (v950 != (&v950 + 8))
                  {
                    do
                    {
                      if (*(v742 + 55) < 0)
                      {
                        std::string::__init_copy_ctor_external(&__str, *(v742 + 4), *(v742 + 5));
                      }

                      else
                      {
                        __str = v742[2];
                        *&__str_16 = *(v742 + 6);
                      }

                      RIO_MTLX::Element::getChildOfType<RIO_MTLX::Node>(v727, &__str, &v823);
                      if (v823)
                      {
                        if (SBYTE7(__str_16) < 0)
                        {
                          std::string::__init_copy_ctor_external(&v809, __str, *(&__str + 1));
                        }

                        else
                        {
                          *&v809.__r_.__value_.__l.__data_ = __str;
                          v809.__r_.__value_.__r.__words[2] = __str_16;
                        }

                        RIO_MTLX::Element::createValidChildName(v727, &v809, &v818);
                        if (SHIBYTE(v809.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v809.__r_.__value_.__l.__data_);
                        }

                        RIO_MTLX::Node::getDownstreamPorts(v810, v823);
                        v743 = v810[0];
                        v744 = v810[1];
                        while (v743 != v744)
                        {
                          v746 = *v743;
                          v745 = *(v743 + 1);
                          if (v745)
                          {
                            atomic_fetch_add_explicit(&v745->__shared_owners_, 1uLL, memory_order_relaxed);
                          }

                          NodeName = RIO_MTLX::PortElement::getNodeName(v746);
                          v748 = *(NodeName + 23);
                          if (v748 >= 0)
                          {
                            v749 = *(NodeName + 23);
                          }

                          else
                          {
                            v749 = NodeName[1];
                          }

                          v750 = BYTE7(__str_16);
                          if (SBYTE7(__str_16) < 0)
                          {
                            v750 = *(&__str + 1);
                          }

                          if (v749 == v750)
                          {
                            if (v748 < 0)
                            {
                              NodeName = *NodeName;
                            }

                            if ((SBYTE7(__str_16) & 0x80u) == 0)
                            {
                              p_str = &__str;
                            }

                            else
                            {
                              p_str = __str;
                            }

                            v752 = memcmp(NodeName, p_str, v749);
                            if (!v752)
                            {
                              v753 = RIO_MTLX::PortElement::NODE_NAME_ATTRIBUTE(v752);
                              RIO_MTLX::Element::setAttribute(v746, v753, &v818);
                            }
                          }

                          if (v745)
                          {
                            std::__shared_weak_count::__release_shared[abi:ne200100](v745);
                          }

                          v743 = (v743 + 16);
                        }

                        RIO_MTLX::Element::setName(v823, &v818);
                        v812 = v810;
                        std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v812);
                        if (SHIBYTE(v818.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v818.__r_.__value_.__l.__data_);
                        }
                      }

                      if (v824)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v824);
                      }

                      if (SBYTE7(__str_16) < 0)
                      {
                        operator delete(__str);
                      }

                      v754 = *(v742 + 1);
                      if (v754)
                      {
                        do
                        {
                          v755 = v754;
                          v754 = *v754;
                        }

                        while (v754);
                      }

                      else
                      {
                        do
                        {
                          v755 = *(v742 + 2);
                          v2 = *v755 == v742;
                          v742 = v755;
                        }

                        while (!v2);
                      }

                      v742 = v755;
                    }

                    while (v755 != (&v950 + 8));
                  }
                }

                std::__tree<std::string>::destroy(&v950, *(&v950 + 1));
                v724 = __srcc;
                if (__srcc)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](__srcc);
                }

                v725 = &v803->__r_.__value_.__r.__words[2];
              }

              while (&v803->__r_.__value_.__r.__words[2] != v799);
            }

            *&v950 = &v955;
            std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v950);
            RIO_MTLX::Element::traverseTree(this, &v955);
            *(&v958 + 1) = 0;
            v950 = *&v955.__r_.__value_.__l.__data_;
            if (v955.__r_.__value_.__l.__size_)
            {
              atomic_fetch_add_explicit((v955.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
            }

            v952 = 0;
            v951 = 0;
            v953 = 0;
            v756 = std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v951, v955.__r_.__value_.__r.__words[2], v956, 0xAAAAAAAAAAAAAAABLL * ((v956 - v955.__r_.__value_.__r.__words[2]) >> 3));
            v954 = v958;
            RIO_MTLX::NULL_TREE_ITERATOR(v756);
            __str = RIO_MTLX::NULL_TREE_ITERATOR(void)::v;
            if (*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1))
            {
              atomic_fetch_add_explicit((*(&RIO_MTLX::NULL_TREE_ITERATOR(void)::v + 1) + 8), 1uLL, memory_order_relaxed);
            }

            __str_16 = 0uLL;
            v827 = 0;
            std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&__str_16, qword_27EE52740, unk_27EE52748, 0xAAAAAAAAAAAAAAABLL * ((unk_27EE52748 - qword_27EE52740) >> 3));
            v828 = xmmword_27EE52758;
            while (2)
            {
              v757 = RIO_MTLX::TreeIterator::operator!=(&v950, &__str);
              if (!v757)
              {
                RIO_MTLX::TreeIterator::~TreeIterator(&__str);
                RIO_MTLX::TreeIterator::~TreeIterator(&v950);
                RIO_MTLX::TreeIterator::~TreeIterator(&v955);
                v955.__r_.__value_.__r.__words[0] = &v829;
                std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v955);
                v955.__r_.__value_.__r.__words[0] = &v832;
                std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v955);
                if (SHIBYTE(v963.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v963.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v962) < 0)
                {
                  operator delete(*&v961[8]);
                }

                if ((v961[7] & 0x80000000) != 0)
                {
                  operator delete(v960);
                }

                if (SHIBYTE(v959.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v959.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v853.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v853.__r_.__value_.__l.__data_);
                }

                if (v855 < 0)
                {
                  operator delete(v854);
                }

                if (SHIBYTE(v856.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v856.__r_.__value_.__l.__data_);
                }

                if (v859 < 0)
                {
                  operator delete(v857);
                }

                if (SHIBYTE(v860.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v860.__r_.__value_.__l.__data_);
                }

                if (v862 < 0)
                {
                  operator delete(v861[0]);
                }

                if (v864 < 0)
                {
                  operator delete(v863[0]);
                }

                if (v866 < 0)
                {
                  operator delete(v865);
                }

                if (v868 < 0)
                {
                  operator delete(v867);
                }

                if (v870 < 0)
                {
                  operator delete(v869[0]);
                }

                if (SHIBYTE(v871.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v871.__r_.__value_.__l.__data_);
                }

                if (v873 < 0)
                {
                  operator delete(v872[0]);
                }

                if (SHIBYTE(v875) < 0)
                {
                  operator delete(v874);
                }

                if (SHIBYTE(v876.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v876.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v878) < 0)
                {
                  operator delete(v877);
                }

                if (SHIBYTE(v879.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v879.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__s.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v883.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v883.__r_.__value_.__l.__data_);
                }

                if (v882 < 0)
                {
                  operator delete(v881[0]);
                }

                if (SHIBYTE(v886.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v886.__r_.__value_.__l.__data_);
                }

                if (v885 < 0)
                {
                  operator delete(v884[0]);
                }

                if (SHIBYTE(v889.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v889.__r_.__value_.__l.__data_);
                }

                if (v888 < 0)
                {
                  operator delete(v887[0]);
                }

                if (SHIBYTE(v891.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v891.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v890.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v890.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v893.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v893.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v892.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v892.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v895.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v895.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v894.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v894.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v898.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v898.__r_.__value_.__l.__data_);
                }

                if (v897 < 0)
                {
                  operator delete(v896[0]);
                }

                if (SHIBYTE(v900.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v900.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v899.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v899.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v902.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v902.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v901.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v901.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v904.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v904.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (v910 < 0)
                {
                  operator delete(v909[0]);
                }

                if (v912 < 0)
                {
                  operator delete(v911[0]);
                }

                if (v914 < 0)
                {
                  operator delete(v913[0]);
                }

                if (SHIBYTE(v915.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v915.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v916.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v916.__r_.__value_.__l.__data_);
                }

                if (v918 < 0)
                {
                  operator delete(v917[0]);
                }

                std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v924);
                RIO_MTLX::InterfaceElement::setVersionIntegers(this, 1, 38);
                return;
              }

              v758 = v950;
              if (*(&v950 + 1))
              {
                atomic_fetch_add_explicit((*(&v950 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              v759 = RIO_MTLX::EMPTY_STRING(v757);
              RIO_MTLX::Element::asA<RIO_MTLX::InterfaceElement>(v758, &v818);
              v760 = v818.__r_.__value_.__r.__words[0];
              if (v818.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v818.__r_.__value_.__l.__size_);
              }

              if (v760)
              {
                v761 = *(v759 + 23);
                v762 = v761 >= 0 ? *(v759 + 23) : v759[1];
                if (!v762)
                {
                  goto LABEL_1904;
                }

                v763 = *(v758 + 47);
                v764 = v763;
                if ((v763 & 0x80u) != 0)
                {
                  v763 = *(v758 + 32);
                }

                if (v763 == v762)
                {
                  v765 = v764 >= 0 ? (v758 + 24) : *(v758 + 24);
                  v766 = v761 >= 0 ? v759 : *v759;
                  if (!memcmp(v765, v766, v762))
                  {
LABEL_1904:
                    std::string::basic_string[abi:ne200100]<0>(v810, "parameter");
                    RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Element>(&v818, *(v758 + 136), *(v758 + 144), v810);
                    if (v811 < 0)
                    {
                      operator delete(v810[0]);
                    }

                    v768 = v818.__r_.__value_.__l.__size_;
                    v767 = v818.__r_.__value_.__r.__words[0];
                    if (v818.__r_.__value_.__r.__words[0] != v818.__r_.__value_.__l.__size_)
                    {
                      while (1)
                      {
                        v769 = *v767;
                        v770 = *(v767 + 8);
                        if (v770)
                        {
                          atomic_fetch_add_explicit(&v770->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
                          atomic_fetch_add_explicit(&v770->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
                        }

                        v808[0] = v769;
                        v808[1] = v770;
                        std::string::basic_string[abi:ne200100]<0>(v810, "input");
                        RIO_MTLX::Element::changeChildCategory(v758, v808, v810, &v812);
                        RIO_MTLX::Element::asA<RIO_MTLX::Input>(v812, &v823);
                        v771 = v813;
                        if (v813)
                        {
                          std::__shared_weak_count::__release_shared[abi:ne200100](v813);
                        }

                        if (v811 < 0)
                        {
                          break;
                        }

                        if (v770)
                        {
                          goto LABEL_1913;
                        }

LABEL_1914:
                        v772 = RIO_MTLX::EMPTY_STRING(v771);
                        RIO_MTLX::Element::asA<RIO_MTLX::NodeDef>(v758, v810);
                        v774 = v810[0];
                        v773 = v810[1];
                        if (v810[1])
                        {
                          std::__shared_weak_count::__release_shared[abi:ne200100](v810[1]);
                        }

                        if (v774)
                        {
                          v775 = *(v772 + 23);
                          v776 = v775 >= 0 ? *(v772 + 23) : v772[1];
                          if (!v776)
                          {
                            goto LABEL_1931;
                          }

                          v777 = *(v758 + 47);
                          v778 = v777;
                          if ((v777 & 0x80u) != 0)
                          {
                            v777 = *(v758 + 32);
                          }

                          if (v777 == v776)
                          {
                            v779 = v778 >= 0 ? (v758 + 24) : *(v758 + 24);
                            v780 = v775 >= 0 ? v772 : *v772;
                            v773 = memcmp(v779, v780, v776);
                            if (!v773)
                            {
LABEL_1931:
                              v781 = v823;
                              LOBYTE(v810[0]) = 1;
                              v782 = RIO_MTLX::ValueElement::UNIFORM_ATTRIBUTE(v773);
                              RIO_MTLX::Element::setTypedAttribute<BOOL>(v781, v782, v810);
                            }
                          }
                        }

                        if (v824)
                        {
                          std::__shared_weak_count::__release_shared[abi:ne200100](v824);
                        }

                        if (v770)
                        {
                          std::__shared_weak_count::__release_shared[abi:ne200100](v770);
                        }

                        v767 += 16;
                        if (v767 == v768)
                        {
                          goto LABEL_1940;
                        }
                      }

                      operator delete(v810[0]);
                      if (!v770)
                      {
                        goto LABEL_1914;
                      }

LABEL_1913:
                      std::__shared_weak_count::__release_shared[abi:ne200100](v770);
                      goto LABEL_1914;
                    }

LABEL_1940:
                    v810[0] = &v818;
                    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](v810);
                  }
                }
              }

              if (*(&v758 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v758 + 1));
              }

              RIO_MTLX::TreeIterator::operator++(&v950);
              continue;
            }
          }
        }

        else
        {
          if (v512 > 1)
          {
            if (v516 >= v510)
            {
              v516 %= v510;
            }
          }

          else
          {
            v516 &= v510 - 1;
          }

          if (v516 != v513)
          {
            goto LABEL_1219;
          }
        }

        break;
      }

      v515 = *v515;
      if (!v515)
      {
        goto LABEL_1219;
      }

      goto LABEL_1210;
    }

    *&__p.__r_.__value_.__r.__words[1] = 0uLL;
    __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__l.__size_;
    v165 = RIO_MTLX::EMPTY_STRING(v164);
    RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::GeomInfo>(this, v165, &v959);
    v792 = v959.__r_.__value_.__l.__size_;
    v167 = v959.__r_.__value_.__r.__words[0];
    if (v959.__r_.__value_.__r.__words[0] == v959.__r_.__value_.__l.__size_)
    {
LABEL_465:
      v955.__r_.__value_.__r.__words[0] = &v959;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v955);
      memset(&v901, 0, sizeof(v901));
      v193 = __p.__r_.__value_.__r.__words[0];
      if (__p.__r_.__value_.__l.__data_ != &__p.__r_.__value_.__r.__words[1])
      {
        do
        {
          v194 = HIBYTE(v901.__r_.__value_.__r.__words[2]);
          if ((v901.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v194 = v901.__r_.__value_.__l.__size_;
          }

          if (v194)
          {
            std::operator+<char>();
            if ((v959.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v195 = &v959;
            }

            else
            {
              v195 = v959.__r_.__value_.__r.__words[0];
            }

            if ((v959.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v196 = HIBYTE(v959.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v196 = v959.__r_.__value_.__l.__size_;
            }

            v192 = std::string::append(&v901, v195, v196);
            if (SHIBYTE(v959.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v959.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v192 = std::string::operator=(&v901, (v193 + 32));
          }

          v197 = *(v193 + 8);
          if (v197)
          {
            do
            {
              v198 = v197;
              v197 = v197->__r_.__value_.__r.__words[0];
            }

            while (v197);
          }

          else
          {
            do
            {
              v198 = *(v193 + 16);
              v2 = v198->__r_.__value_.__r.__words[0] == v193;
              v193 = v198;
            }

            while (!v2);
          }

          v193 = v198;
        }

        while (v198 != &__p.__r_.__value_.__r.__words[1]);
      }

      v199 = RIO_MTLX::EMPTY_STRING(v192);
      v200 = RIO_MTLX::UNIVERSAL_GEOM_NAME(v199);
      if (*(v199 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v959, *v199, v199[1]);
      }

      else
      {
        v201 = *v199;
        v959.__r_.__value_.__r.__words[2] = v199[2];
        *&v959.__r_.__value_.__l.__data_ = v201;
      }

      v202 = HIBYTE(v959.__r_.__value_.__r.__words[2]);
      if ((v959.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v202 = v959.__r_.__value_.__l.__size_;
      }

      if (!v202)
      {
        v203 = RIO_MTLX::GeomInfo::CATEGORY(v200);
        v204 = v203;
        if (v203[23] >= 0)
        {
          v205 = v203[23];
        }

        else
        {
          v205 = *(v203 + 1);
        }

        v206 = &v950;
        std::string::basic_string[abi:ne200100](&v950, v205 + 1);
        if (v951 < 0)
        {
          v206 = v950;
        }

        if (v205)
        {
          if (v204[23] >= 0)
          {
            v207 = v204;
          }

          else
          {
            v207 = *v204;
          }

          memmove(v206, v207, v205);
        }

        *(v206 + v205) = 49;
        RIO_MTLX::Element::createValidChildName(this, &v950, &v955);
        if (SHIBYTE(v959.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v959.__r_.__value_.__l.__data_);
        }

        v959 = v955;
        *(&v955.__r_.__value_.__s + 23) = 0;
        v955.__r_.__value_.__s.__data_[0] = 0;
        if (SHIBYTE(v951) < 0)
        {
          operator delete(v950);
        }
      }

      std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&v899, this + 1);
      operator new();
    }

    while (1)
    {
      v168 = *v167;
      v169 = v167[1];
      if (v169)
      {
        atomic_fetch_add_explicit(&v169->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v170 = RIO_MTLX::EMPTY_STRING(v166);
      v172 = *(v168 + 136);
      v171 = *(v168 + 144);
      memset(&v955, 0, sizeof(v955));
      if (v172 != v171)
      {
        v173 = v170;
        v797 = v167;
        do
        {
          v175 = *v172;
          v174 = v172[1];
          if (v174)
          {
            atomic_fetch_add_explicit(&v174->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          RIO_MTLX::Element::asA<RIO_MTLX::GeomProp>(v175, &v950);
          if (v950)
          {
            v176 = *(v173 + 23);
            v177 = v176 >= 0 ? *(v173 + 23) : v173[1];
            if (!v177)
            {
              goto LABEL_443;
            }

            v178 = *(v175 + 47);
            v179 = v178;
            if ((v178 & 0x80u) != 0)
            {
              v178 = *(v175 + 32);
            }

            if (v178 == v177)
            {
              v182 = *(v175 + 24);
              v181 = v175 + 24;
              v180 = v182;
              v183 = (v179 >= 0 ? v181 : v180);
              v184 = v176 >= 0 ? v173 : *v173;
              if (!memcmp(v183, v184, v177))
              {
LABEL_443:
                operator new();
              }
            }
          }

          if (*(&v950 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v950 + 1));
          }

          if (v174)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v174);
          }

          v172 += 2;
        }

        while (v172 != v171);
        v186 = v955.__r_.__value_.__l.__size_;
        v185 = v955.__r_.__value_.__r.__words[0];
        v167 = v797;
        if (v955.__r_.__value_.__r.__words[0] != v955.__r_.__value_.__l.__size_)
        {
          break;
        }
      }

LABEL_462:
      *&v950 = &v955;
      std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&v950);
      if (v169)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v169);
      }

      v167 += 2;
      if (v167 == v792)
      {
        goto LABEL_465;
      }
    }

    while (1)
    {
      v187 = *v185;
      v188 = v185[1];
      if (v188)
      {
        atomic_fetch_add_explicit(&v188->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v189 = (v187 + 48);
      v190 = *(v187 + 71);
      if (v190 < 0)
      {
        if (*(v187 + 56) == 4)
        {
          v189 = *v189;
LABEL_457:
          if (*v189 == 1835623541)
          {
            v191 = RIO_MTLX::ValueElement::getValueString(v187);
            std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&__p, v191, v191);
          }
        }
      }

      else if (v190 == 4)
      {
        goto LABEL_457;
      }

      if (v188)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v188);
      }

      v185 += 2;
      if (v185 == v186)
      {
        goto LABEL_462;
      }
    }
  }

  if (HIDWORD(v1) == 35)
  {
    goto LABEL_553;
  }

  if (HIDWORD(v1) == 36)
  {
    goto LABEL_763;
  }

LABEL_488:
  if (SHIDWORD(v1) >= 37)
  {
    goto LABEL_1202;
  }
}