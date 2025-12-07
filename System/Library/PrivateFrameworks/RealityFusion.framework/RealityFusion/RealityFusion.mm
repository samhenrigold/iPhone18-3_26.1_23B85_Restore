uint64_t rf::data_flow::provider::AnchorDataProvider::AnchorDataProvider(uint64_t a1, _BYTE *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_287407BB0;
  *(a1 + 24) = *a2;
  v3 = rf::AnchorDefinitionComponent::instance(a1);
  v15 = &unk_287407C80;
  v16 = a1;
  v18 = &v15;
  std::__function::__value_func<void ()(REComponent *)>::swap[abi:ne200100](&v15, v3 + 1);
  v4 = std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](&v15);
  v5 = rf::AnchorDefinitionComponent::instance(v4);
  v15 = &unk_287407D10;
  v16 = a1;
  v18 = &v15;
  std::__function::__value_func<void ()(REComponent *)>::swap[abi:ne200100](&v15, v5 + 5);
  v6 = std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](&v15);
  v7 = rf::AnchorDefinitionComponent::instance(v6);
  v15 = &unk_287407D90;
  v16 = a1;
  v18 = &v15;
  std::__function::__value_func<void ()(REComponent *)>::swap[abi:ne200100](&v15, v7 + 9);
  v8 = std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](&v15);
  v9 = rf::AnchorDefinitionComponent::instance(v8);
  v15 = &unk_287407E10;
  v16 = a1;
  v18 = &v15;
  std::__function::__value_func<void ()(REComponent *)>::swap[abi:ne200100](&v15, v9 + 13);
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](&v15);
  std::string::basic_string[abi:ne200100]<0>(&v15, "");
  rf::UserDefaults::UserDefaults(&v14, &v15);
  std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.re.printAddedAnchorDefinitionComponent");
  v10 = rf::UserDefaults::BOOLValue(&v14, __p);
  if ((v10 & 0x100) == 0)
  {
    LOBYTE(v10) = *(a1 + 24);
  }

  *(a1 + 24) = v10 & 1;
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  rf::UserDefaults::~UserDefaults(&v14);
  if (v17 < 0)
  {
    operator delete(v15);
  }

  return a1;
}

void sub_2617CC6F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  rf::UserDefaults::~UserDefaults(&a16);
  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

uint64_t rf::data_flow::provider::AnchorDataProvider::unregisterCallbackFromComponent(rf::data_flow::provider::AnchorDataProvider *this)
{
  v1 = rf::AnchorDefinitionComponent::instance(this);
  v2 = std::__function::__value_func<void ()(REComponent *)>::operator=[abi:ne200100](v1 + 8);
  v3 = rf::AnchorDefinitionComponent::instance(v2) + 40;

  return std::__function::__value_func<void ()(REComponent *)>::operator=[abi:ne200100](v3);
}

void rf::data_flow::provider::AnchorDataProvider::~AnchorDataProvider(rf::data_flow::provider::AnchorDataProvider *this)
{
  rf::data_flow::provider::AnchorDataProvider::unregisterCallbackFromComponent(this);
}

{
  rf::data_flow::provider::AnchorDataProvider::unregisterCallbackFromComponent(this);

  JUMPOUT(0x26670D060);
}

void *rf::data_flow::provider::AnchorDataProvider::addAnchor(uint64_t a1, uint64_t a2)
{
  v80 = *MEMORY[0x277D85DE8];
  rf::data_flow::validateAnchor(a2);
  RFUUIDFromAnchor = rf::helpers::getRFUUIDFromAnchor(a2, v78);
  v5 = rf::realityFusionLogObject(RFUUIDFromAnchor);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    rf::data_flow::RFUUID::string(__p, v78);
    v6 = (SBYTE7(v13) & 0x80u) == 0 ? __p : __p[0];
    *buf = 136446210;
    v77 = v6;
    _os_log_impl(&dword_2617CB000, v5, OS_LOG_TYPE_DEFAULT, "AnchorDataProvider: Adding local anchor %{public}s", buf, 0xCu);
    if (SBYTE7(v13) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v18 = 0;
  v19 = 0;
  *__p = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 1065353216;
  v26 = 0;
  v46 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v51 = 0;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::push_back[abi:ne200100](v16 + 1, a2);
  LOBYTE(v66) = 1;
  v7 = *(a1 + 8);
  if (v7 && (rf::Session::consumeInputFromProvider(v7, __p), (v8 = *(a1 + 8)) != 0))
  {
    if (v79)
    {
      v9 = v78[0];
    }

    else
    {
      v9 = v78;
    }

    AnchorPtrWithIdentifier = rf::ARState::getAnchorPtrWithIdentifier(v8, v9);
  }

  else
  {
    AnchorPtrWithIdentifier = 0;
  }

  rf::data_flow::provider::InputData::~InputData(__p);
  return AnchorPtrWithIdentifier;
}

uint64_t *rf::data_flow::RFUUID::string@<X0>(uint64_t *__return_ptr a1@<X8>, rf::data_flow::RFUUID *this@<X0>)
{
  v5 = *MEMORY[0x277D85DE8];
  if (*(this + 16) == 1)
  {
    this = *this;
  }

  snprintf(__str, 0x25uLL, "%02hhX%02hhX%02hhX%02hhX-%02hhX%02hhX-%02hhX%02hhX-%02hhX%02hhX-%02hhX%02hhX%02hhX%02hhX%02hhX%02hhX", *this, *(this + 1), *(this + 2), *(this + 3), *(this + 4), *(this + 5), *(this + 6), *(this + 7), *(this + 8), *(this + 9), *(this + 10), *(this + 11), *(this + 12), *(this + 13), *(this + 14), *(this + 15));
  return std::string::basic_string[abi:ne200100]<0>(a1, __str);
}

uint64_t std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::push_back[abi:ne200100](unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__emplace_back_slow_path<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>(a1, a2);
  }

  else
  {
    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](a1[1], a2);
    result = v3 + 272;
    a1[1] = v3 + 272;
  }

  a1[1] = result;
  return result;
}

void rf::data_flow::provider::AnchorDataProvider::updateAnchor(uint64_t a1, uint64_t a2)
{
  v66 = *MEMORY[0x277D85DE8];
  rf::data_flow::validateAnchor(a2);
  v8 = 0;
  v9 = 0;
  memset(v5, 0, sizeof(v5));
  memset(v6, 0, sizeof(v6));
  v7 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 1065353216;
  v16 = 0;
  v36 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
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
  v41 = 0;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::push_back[abi:ne200100](v6, a2);
  LOBYTE(v56) = 1;
  v4 = *(a1 + 8);
  if (v4)
  {
    rf::Session::consumeInputFromProvider(v4, v5);
  }

  rf::data_flow::provider::InputData::~InputData(v5);
}

void rf::data_flow::provider::AnchorDataProvider::removeAnchor(uint64_t a1, uint64_t a2)
{
  v72 = *MEMORY[0x277D85DE8];
  v4 = rf::data_flow::validateAnchor(a2);
  v5 = rf::realityFusionLogObject(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    rf::helpers::getRFUUIDFromAnchor(a2, v10);
    rf::data_flow::RFUUID::string(__p, v10);
    v6 = v9 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v71 = v6;
    _os_log_impl(&dword_2617CB000, v5, OS_LOG_TYPE_DEFAULT, "AnchorDataProvider: Removing local anchor %{public}s", buf, 0xCu);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v12 = 0;
  v13 = 0;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 1065353216;
  v20 = 0;
  v40 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v45 = 0;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::push_back[abi:ne200100](&v10[7] + 1, a2);
  LOBYTE(v60) = 1;
  v7 = *(a1 + 8);
  if (v7)
  {
    rf::Session::consumeInputFromProvider(v7, v10);
  }

  rf::data_flow::provider::InputData::~InputData(v10);
}

void rf::data_flow::provider::AnchorDataProvider::removeAnchor(rf::ARState **this, const rf::data_flow::RFUUID *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = rf::realityFusionLogObject(this);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    rf::data_flow::RFUUID::string(__p, a2);
    v5 = v9 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v11 = v5;
    _os_log_impl(&dword_2617CB000, v4, OS_LOG_TYPE_DEFAULT, "AnchorDataProvider: Removing local anchor %{public}s", buf, 0xCu);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a2 + 16))
  {
    v6 = *a2;
  }

  else
  {
    v6 = a2;
  }

  AnchorPtrWithIdentifier = rf::ARState::getAnchorPtrWithIdentifier(this[1], v6);
  rf::data_flow::validateAnchor(AnchorPtrWithIdentifier);
  rf::data_flow::provider::AnchorDataProvider::removeAnchor(this, AnchorPtrWithIdentifier);
}

void rf::data_flow::provider::AnchorDataProvider::addAnchors(rf *a1, uint64_t *a2)
{
  v3 = a1;
  v69 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = a2[1];
  while (v4 != v5)
  {
    a1 = rf::data_flow::validateAnchor(v4);
    v4 += 272;
  }

  v6 = rf::realityFusionLogObject(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 0xF0F0F0F0F0F0F0F1 * ((a2[1] - *a2) >> 4);
    LODWORD(v9[0]) = 134217984;
    *(v9 + 4) = v7;
    _os_log_impl(&dword_2617CB000, v6, OS_LOG_TYPE_DEFAULT, "AnchorDataProvider: Adding %lu local anchors.", v9, 0xCu);
  }

  v11 = 0;
  v12 = 0;
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 1065353216;
  v19 = 0;
  v39 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v44 = 0;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__vdeallocate(&v9[4] + 1);
  *(&v9[4] + 8) = *a2;
  *(&v9[5] + 1) = a2[2];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  LOBYTE(v59) = 1;
  v8 = *(v3 + 1);
  if (v8)
  {
    rf::Session::consumeInputFromProvider(v8, v9);
  }

  rf::data_flow::provider::InputData::~InputData(v9);
}

void rf::data_flow::provider::AnchorDataProvider::updateAnchors(uint64_t a1, uint64_t *a2)
{
  v71 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = a2[1];
  while (v4 != v5)
  {
    rf::data_flow::validateAnchor(v4);
    v4 += 272;
  }

  v13 = 0;
  v14 = 0;
  memset(v7, 0, sizeof(v7));
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 1065353216;
  v21 = 0;
  v41 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v46 = 0;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__vdeallocate(&v8);
  v8 = *a2;
  *&v9 = a2[2];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  LOBYTE(v61) = 1;
  v6 = *(a1 + 8);
  if (v6)
  {
    rf::Session::consumeInputFromProvider(v6, v7);
  }

  rf::data_flow::provider::InputData::~InputData(v7);
}

void rf::data_flow::provider::AnchorDataProvider::removeAnchors(rf *a1, uint64_t *a2)
{
  v3 = a1;
  v69 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = a2[1];
  while (v4 != v5)
  {
    a1 = rf::data_flow::validateAnchor(v4);
    v4 += 272;
  }

  v6 = rf::realityFusionLogObject(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 0xF0F0F0F0F0F0F0F1 * ((a2[1] - *a2) >> 4);
    LODWORD(v9[0]) = 134217984;
    *(v9 + 4) = v7;
    _os_log_impl(&dword_2617CB000, v6, OS_LOG_TYPE_DEFAULT, "AnchorDataProvider: Removing %lu local anchors.", v9, 0xCu);
  }

  v11 = 0;
  v12 = 0;
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 1065353216;
  v19 = 0;
  v39 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v44 = 0;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__vdeallocate(&v9[7] + 1);
  *(&v9[7] + 8) = *a2;
  *(&v9[8] + 1) = a2[2];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  LOBYTE(v59) = 1;
  v8 = *(v3 + 1);
  if (v8)
  {
    rf::Session::consumeInputFromProvider(v8, v9);
  }

  rf::data_flow::provider::InputData::~InputData(v9);
}

uint64_t rf::data_flow::provider::AnchorDataProvider::addAnchorDefinitionComponent(uint64_t a1, uint64_t *a2)
{
  v76 = *MEMORY[0x277D85DE8];
  Object = RECustomComponentGetObject();
  Entity = REComponentGetEntity();
  if ((result & 1) != 0 || (Object[21] & 1) == 0 && (Object[20] & 1) == 0)
  {
    if (uuid_is_null(Object))
    {
      uuid_generate_random(Object);
    }

    rf::helpers::createAnchorFromAnchorDefinitionComponent(v75);
    if (*(a1 + 24) == 1)
    {
      rf::helpers::printAnchorDefinitionComponentInfo(*a2);
    }

    v7 = rf::data_flow::validateAnchor(v75);
    v8 = rf::realityFusionLogObject(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      rf::helpers::getRFUUIDFromAnchor(v75, v13);
      rf::data_flow::RFUUID::string(__p, v13);
      v9 = v12 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v74 = v9;
      _os_log_impl(&dword_2617CB000, v8, OS_LOG_TYPE_DEFAULT, "Anchor Data Provider: Adding AnchorDefinition anchor %{public}s", buf, 0xCu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v15 = 0;
    v16 = 0;
    memset(v13, 0, sizeof(v13));
    v14 = 0;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 1065353216;
    v23 = 0;
    v43 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v48 = 0;
    v47 = 0u;
    v46 = 0u;
    v45 = 0u;
    v44 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0;
    std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::push_back[abi:ne200100](&v13[4] + 1, v75);
    LOBYTE(v63) = 1;
    v10 = *(a1 + 8);
    if (v10)
    {
      rf::Session::consumeInputFromProvider(v10, v13);
    }

    rf::data_flow::provider::InputData::~InputData(v13);
    return std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v75);
  }

  return result;
}

uint64_t anonymous namespace::isRemotelyOwned(uint64_t a1)
{
  RENetworkComponentGetComponentType();
  result = REEntityGetComponentByClass();
  if (result)
  {
    return RENetworkComponentIsAuthoritative() ^ 1;
  }

  return result;
}

uint64_t std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__emplace_back_slow_path<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>(a1, a2);
  }

  else
  {
    result = std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v3, a2) + 272;
  }

  a1[1] = result;
  return result;
}

uint64_t rf::data_flow::provider::AnchorDataProvider::removeAnchorDefinitionComponent(uint64_t a1, void *a2)
{
  v75 = *MEMORY[0x277D85DE8];
  Object = RECustomComponentGetObject();
  Entity = REComponentGetEntity();
  if ((result & 1) != 0 || (*(Object + 21) & 1) == 0 && (*(Object + 20) & 1) == 0)
  {
    rf::helpers::createAnchorFromAnchorDefinitionComponent(v74);
    v6 = rf::data_flow::validateAnchor(v74);
    v7 = rf::realityFusionLogObject(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      rf::helpers::getRFUUIDFromAnchor(v74, v12);
      rf::data_flow::RFUUID::string(__p, v12);
      v8 = v11 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v73 = v8;
      _os_log_impl(&dword_2617CB000, v7, OS_LOG_TYPE_DEFAULT, "AnchorDataProvider: Removing AnchorDefinition anchor %{public}s", buf, 0xCu);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v14 = 0;
    v15 = 0;
    memset(v12, 0, sizeof(v12));
    v13 = 0;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 1065353216;
    v22 = 0;
    v42 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v47 = 0;
    v46 = 0u;
    v45 = 0u;
    v44 = 0u;
    v43 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0;
    v62 = 1;
    std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::push_back[abi:ne200100](&v12[7] + 1, v74);
    v9 = *(a1 + 8);
    if (v9)
    {
      rf::Session::consumeInputFromProvider(v9, v12);
    }

    rf::data_flow::provider::InputData::~InputData(v12);
    return std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v74);
  }

  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279AECFE0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void rf::UserDefaults::~UserDefaults(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__emplace_back_slow_path<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>(unint64_t *a1, uint64_t a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0xF0F0F0F0F0F0F0)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 4);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 4) >= 0x78787878787878)
  {
    v6 = 0xF0F0F0F0F0F0F0;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::allocator<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v13 = 0;
  v14 = 272 * v2;
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](272 * v2, a2);
  v15 = 272 * v2 + 272;
  v7 = a1[1];
  v8 = 272 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::~__split_buffer(&v13);
  return v12;
}

void sub_2617CDF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 256) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1> const&>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1> const&>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 256);
  if (v5 != -1)
  {
    v6 = a1;
    result = (__const__ZNSt3__116__variant_detail12__visitation6__base14__visit_alt_atB8ne200100IZNS0_6__ctorINS0_8__traitsIJN2rf9data_flow12CustomAnchorENS7_11PlaneAnchorENS7_11ImageAnchorENS7_12ObjectAnchorENS7_10FaceAnchorENS7_10BodyAnchorEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISE_LNS0_6_TraitE1EEEEEvRSF_OT_EUlSO_E_JSL_EEEDcmSO_DpOT0____fdiagonal[v5])(&v6, a2);
    *(a1 + 256) = v5;
  }

  return result;
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 256);
  if (v2 != -1)
  {
    result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne200100IZNS0_6__dtorINS0_8__traitsIJN2rf9data_flow12CustomAnchorENS7_11PlaneAnchorENS7_11ImageAnchorENS7_12ObjectAnchorENS7_10FaceAnchorENS7_10BodyAnchorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRSG_EEEDcOSH_DpOT0____fmatrix[v2])(&v3, result);
  }

  *(v1 + 256) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN2rf9data_flow12CustomAnchorENS9_11PlaneAnchorENS9_11ImageAnchorENS9_12ObjectAnchorENS9_10FaceAnchorENS9_10BodyAnchorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSA_SB_SC_SD_SE_SF_EEEEEEDcSJ_DpT0_(uint64_t a1, void *a2)
{
  v3 = a2[27];
  if (v3)
  {
    a2[28] = v3;
    operator delete(v3);
  }

  v4 = a2[14];
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN2rf9data_flow12CustomAnchorENS9_11PlaneAnchorENS9_11ImageAnchorENS9_12ObjectAnchorENS9_10FaceAnchorENS9_10BodyAnchorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSA_SB_SC_SD_SE_SF_EEEEEEDcSJ_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 183) < 0)
  {
    operator delete(*(a2 + 160));
  }

  if (*(a2 + 159) < 0)
  {
    operator delete(*(a2 + 136));
  }

  v3 = *(a2 + 112);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN2rf9data_flow12CustomAnchorENS9_11PlaneAnchorENS9_11ImageAnchorENS9_12ObjectAnchorENS9_10FaceAnchorENS9_10BodyAnchorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSA_SB_SC_SD_SE_SF_EEEEEEDcSJ_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 175) < 0)
  {
    operator delete(*(a2 + 152));
  }

  if (*(a2 + 151) < 0)
  {
    operator delete(*(a2 + 128));
  }

  v3 = *(a2 + 112);
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN2rf9data_flow12CustomAnchorENS9_11PlaneAnchorENS9_11ImageAnchorENS9_12ObjectAnchorENS9_10FaceAnchorENS9_10BodyAnchorEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISG_LNS0_6_TraitE1EEEEEvRSH_OT_EUlSQ_E_JRKNS0_6__baseILSK_1EJSA_SB_SC_SD_SE_SF_EEEEEEDcSP_DpT0_(uint64_t *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = a2[2];
  *(v3 + 16) = a2[1];
  *(v3 + 32) = v5;
  *v3 = v4;
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  *(v3 + 89) = *(a2 + 89);
  *(v3 + 64) = v7;
  *(v3 + 80) = v8;
  *(v3 + 48) = v6;
  *(v3 + 112) = *(a2 + 14);
  *(v3 + 128) = a2[8];
  result = a2[11];
  v10 = a2[12];
  v12 = a2[9];
  v11 = a2[10];
  *(v3 + 176) = result;
  *(v3 + 192) = v10;
  *(v3 + 144) = v12;
  *(v3 + 160) = v11;
  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN2rf9data_flow12CustomAnchorENS9_11PlaneAnchorENS9_11ImageAnchorENS9_12ObjectAnchorENS9_10FaceAnchorENS9_10BodyAnchorEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISG_LNS0_6_TraitE1EEEEEvRSH_OT_EUlSQ_E_JRKNS0_6__baseILSK_1EJSA_SB_SC_SD_SE_SF_EEEEEEDcSP_DpT0_(uint64_t *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = a2[2];
  *(v3 + 16) = a2[1];
  *(v3 + 32) = v5;
  *v3 = v4;
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  *(v3 + 89) = *(a2 + 89);
  *(v3 + 64) = v7;
  *(v3 + 80) = v8;
  *(v3 + 48) = v6;
  *(v3 + 112) = *(a2 + 14);
  v9 = a2[9];
  *(v3 + 128) = a2[8];
  *(v3 + 144) = v9;
  v10 = a2[10];
  v11 = a2[11];
  v12 = a2[12];
  *(v3 + 208) = *(a2 + 26);
  *(v3 + 176) = v11;
  *(v3 + 192) = v12;
  *(v3 + 160) = v10;
  *(v3 + 224) = 0;
  *(v3 + 232) = 0;
  *(v3 + 216) = 0;
  return _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m((v3 + 216), *(a2 + 27), *(a2 + 28), (*(a2 + 28) - *(a2 + 27)) >> 4);
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN2rf9data_flow12CustomAnchorENS9_11PlaneAnchorENS9_11ImageAnchorENS9_12ObjectAnchorENS9_10FaceAnchorENS9_10BodyAnchorEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISG_LNS0_6_TraitE1EEEEEvRSH_OT_EUlSQ_E_JRKNS0_6__baseILSK_1EJSA_SB_SC_SD_SE_SF_EEEEEEDcSP_DpT0_(uint64_t *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = a2[2];
  *(v3 + 16) = a2[1];
  *(v3 + 32) = v5;
  *v3 = v4;
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  *(v3 + 89) = *(a2 + 89);
  *(v3 + 64) = v7;
  *(v3 + 80) = v8;
  *(v3 + 48) = v6;
  *(v3 + 112) = *(a2 + 14);
  *(v3 + 128) = *(a2 + 128);
  if (*(a2 + 159) < 0)
  {
    std::string::__init_copy_ctor_external((v3 + 136), *(a2 + 17), *(a2 + 18));
  }

  else
  {
    v9 = *(a2 + 136);
    *(v3 + 152) = *(a2 + 19);
    *(v3 + 136) = v9;
  }

  if (*(a2 + 183) < 0)
  {
    std::string::__init_copy_ctor_external((v3 + 160), *(a2 + 20), *(a2 + 21));
  }

  else
  {
    v10 = a2[10];
    *(v3 + 176) = *(a2 + 22);
    *(v3 + 160) = v10;
  }

  result = a2[12];
  *(v3 + 192) = result;
  return result;
}

void sub_2617CE31C(_Unwind_Exception *a1)
{
  if (*(v1 + 159) < 0)
  {
    operator delete(*(v1 + 136));
  }

  _Unwind_Resume(a1);
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN2rf9data_flow12CustomAnchorENS9_11PlaneAnchorENS9_11ImageAnchorENS9_12ObjectAnchorENS9_10FaceAnchorENS9_10BodyAnchorEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISG_LNS0_6_TraitE1EEEEEvRSH_OT_EUlSQ_E_JRKNS0_6__baseILSK_1EJSA_SB_SC_SD_SE_SF_EEEEEEDcSP_DpT0_(uint64_t *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = a2[2];
  *(v3 + 16) = a2[1];
  *(v3 + 32) = v5;
  *v3 = v4;
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  *(v3 + 89) = *(a2 + 89);
  *(v3 + 64) = v7;
  *(v3 + 80) = v8;
  *(v3 + 48) = v6;
  *(v3 + 112) = *(a2 + 14);
  if (*(a2 + 151) < 0)
  {
    std::string::__init_copy_ctor_external((v3 + 128), *(a2 + 16), *(a2 + 17));
  }

  else
  {
    v9 = a2[8];
    *(v3 + 144) = *(a2 + 18);
    *(v3 + 128) = v9;
  }

  if (*(a2 + 175) < 0)
  {
    std::string::__init_copy_ctor_external((v3 + 152), *(a2 + 19), *(a2 + 20));
  }

  else
  {
    v10 = *(a2 + 152);
    *(v3 + 168) = *(a2 + 21);
    *(v3 + 152) = v10;
  }

  result = a2[11];
  v12 = a2[12];
  v13 = a2[14];
  *(v3 + 208) = a2[13];
  *(v3 + 224) = v13;
  *(v3 + 176) = result;
  *(v3 + 192) = v12;
  return result;
}

void sub_2617CE400(_Unwind_Exception *a1)
{
  if (*(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  _Unwind_Resume(a1);
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN2rf9data_flow12CustomAnchorENS9_11PlaneAnchorENS9_11ImageAnchorENS9_12ObjectAnchorENS9_10FaceAnchorENS9_10BodyAnchorEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISG_LNS0_6_TraitE1EEEEEvRSH_OT_EUlSQ_E_JRKNS0_6__baseILSK_1EJSA_SB_SC_SD_SE_SF_EEEEEEDcSP_DpT0_(uint64_t *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = a2[2];
  *(v3 + 16) = a2[1];
  *(v3 + 32) = v5;
  *v3 = v4;
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  *(v3 + 89) = *(a2 + 89);
  *(v3 + 64) = v7;
  *(v3 + 80) = v8;
  *(v3 + 48) = v6;
  *(v3 + 112) = *(a2 + 14);
  v9 = a2[11];
  v11 = a2[8];
  v10 = a2[9];
  *(v3 + 160) = a2[10];
  *(v3 + 176) = v9;
  *(v3 + 128) = v11;
  *(v3 + 144) = v10;
  result = a2[14];
  v13 = a2[15];
  v15 = a2[12];
  v14 = a2[13];
  *(v3 + 224) = result;
  *(v3 + 240) = v13;
  *(v3 + 192) = v15;
  *(v3 + 208) = v14;
  return result;
}

float _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN2rf9data_flow12CustomAnchorENS9_11PlaneAnchorENS9_11ImageAnchorENS9_12ObjectAnchorENS9_10FaceAnchorENS9_10BodyAnchorEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISG_LNS0_6_TraitE1EEEEEvRSH_OT_EUlSQ_E_JRKNS0_6__baseILSK_1EJSA_SB_SC_SD_SE_SF_EEEEEEDcSP_DpT0_(uint64_t *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = a2[2];
  *(v3 + 16) = a2[1];
  *(v3 + 32) = v5;
  *v3 = v4;
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  *(v3 + 89) = *(a2 + 89);
  *(v3 + 64) = v7;
  *(v3 + 80) = v8;
  *(v3 + 48) = v6;
  *(v3 + 112) = *(a2 + 14);
  result = *(a2 + 32);
  *(v3 + 128) = result;
  return result;
}

uint64_t *_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_2617CE564(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    _ZNSt3__19allocatorIDv3_fE17allocate_at_leastB8ne200100Em(a1, a2);
  }

  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
}

void _ZNSt3__19allocatorIDv3_fE17allocate_at_leastB8ne200100Em(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::allocator<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xF0F0F0F0F0F0F1)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a4, v7);
      v7 += 272;
      a4 = v8 + 272;
    }

    while (v7 != a3);
    do
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v6);
      v6 += 272;
    }

    while (v6 != a3);
  }
}

uint64_t std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 256) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 256);
  if (v5 != -1)
  {
    v6 = a1;
    result = (__const__ZNSt3__116__variant_detail12__visitation6__base14__visit_alt_atB8ne200100IZNS0_6__ctorINS0_8__traitsIJN2rf9data_flow12CustomAnchorENS7_11PlaneAnchorENS7_11ImageAnchorENS7_12ObjectAnchorENS7_10FaceAnchorENS7_10BodyAnchorEEEEE19__generic_constructB8ne200100INS0_18__move_constructorISE_LNS0_6_TraitE1EEEEEvRSF_OT_EUlSM_E_JSJ_EEEDcmSM_DpOT0____fdiagonal[v5])(&v6, a2);
    *(a1 + 256) = v5;
  }

  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &&>(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[2];
  *(v2 + 16) = a2[1];
  *(v2 + 32) = v4;
  *v2 = v3;
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  *(v2 + 89) = *(a2 + 89);
  *(v2 + 64) = v6;
  *(v2 + 80) = v7;
  *(v2 + 48) = v5;
  v8 = *(a2 + 14);
  *(a2 + 14) = 0;
  *(v2 + 112) = v8;
  *(v2 + 128) = a2[8];
  result = a2[9];
  v10 = a2[10];
  v11 = a2[12];
  *(v2 + 176) = a2[11];
  *(v2 + 192) = v11;
  *(v2 + 144) = result;
  *(v2 + 160) = v10;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &&>(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[2];
  *(v2 + 16) = a2[1];
  *(v2 + 32) = v4;
  *v2 = v3;
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  *(v2 + 89) = *(a2 + 89);
  *(v2 + 64) = v6;
  *(v2 + 80) = v7;
  *(v2 + 48) = v5;
  v8 = *(a2 + 14);
  *(a2 + 14) = 0;
  *(v2 + 112) = v8;
  v9 = a2[9];
  *(v2 + 128) = a2[8];
  *(v2 + 144) = v9;
  v10 = a2[10];
  v11 = a2[12];
  v12 = *(a2 + 26);
  *(v2 + 176) = a2[11];
  *(v2 + 192) = v11;
  *(v2 + 160) = v10;
  *(v2 + 208) = v12;
  *(v2 + 216) = 0;
  *(v2 + 224) = 0;
  *(v2 + 232) = 0;
  result = *(a2 + 216);
  *(v2 + 216) = result;
  *(v2 + 232) = *(a2 + 29);
  *(a2 + 216) = 0uLL;
  *(a2 + 29) = 0;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &&>(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[2];
  *(v2 + 16) = a2[1];
  *(v2 + 32) = v4;
  *v2 = v3;
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  *(v2 + 89) = *(a2 + 89);
  *(v2 + 64) = v6;
  *(v2 + 80) = v7;
  *(v2 + 48) = v5;
  v8 = *(a2 + 14);
  *(a2 + 14) = 0;
  *(v2 + 112) = v8;
  *(v2 + 128) = *(a2 + 128);
  v9 = *(a2 + 136);
  *(v2 + 152) = *(a2 + 19);
  *(v2 + 136) = v9;
  a2[9] = 0uLL;
  *(a2 + 17) = 0;
  v10 = a2[10];
  *(v2 + 176) = *(a2 + 22);
  *(v2 + 160) = v10;
  *(a2 + 168) = 0uLL;
  *(a2 + 20) = 0;
  result = a2[12];
  *(v2 + 192) = result;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &&>(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[2];
  *(v2 + 16) = a2[1];
  *(v2 + 32) = v4;
  *v2 = v3;
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  *(v2 + 89) = *(a2 + 89);
  *(v2 + 64) = v6;
  *(v2 + 80) = v7;
  *(v2 + 48) = v5;
  v8 = *(a2 + 14);
  *(a2 + 14) = 0;
  *(v2 + 112) = v8;
  v9 = a2[8];
  *(v2 + 144) = *(a2 + 18);
  *(v2 + 128) = v9;
  *(a2 + 136) = 0uLL;
  *(a2 + 16) = 0;
  v10 = *(a2 + 152);
  *(v2 + 168) = *(a2 + 21);
  *(v2 + 152) = v10;
  a2[10] = 0uLL;
  *(a2 + 19) = 0;
  result = a2[11];
  v12 = a2[12];
  v13 = a2[14];
  *(v2 + 208) = a2[13];
  *(v2 + 224) = v13;
  *(v2 + 176) = result;
  *(v2 + 192) = v12;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &&>(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[2];
  *(v2 + 16) = a2[1];
  *(v2 + 32) = v4;
  *v2 = v3;
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  *(v2 + 89) = *(a2 + 89);
  *(v2 + 64) = v6;
  *(v2 + 80) = v7;
  *(v2 + 48) = v5;
  v8 = *(a2 + 14);
  *(a2 + 14) = 0;
  *(v2 + 112) = v8;
  v9 = a2[8];
  v10 = a2[9];
  v11 = a2[11];
  *(v2 + 160) = a2[10];
  *(v2 + 176) = v11;
  *(v2 + 128) = v9;
  *(v2 + 144) = v10;
  result = a2[12];
  v13 = a2[13];
  v14 = a2[15];
  *(v2 + 224) = a2[14];
  *(v2 + 240) = v14;
  *(v2 + 192) = result;
  *(v2 + 208) = v13;
  return result;
}

float std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &&>(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[2];
  *(v2 + 16) = a2[1];
  *(v2 + 32) = v4;
  *v2 = v3;
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  *(v2 + 89) = *(a2 + 89);
  *(v2 + 64) = v6;
  *(v2 + 80) = v7;
  *(v2 + 48) = v5;
  v8 = *(a2 + 14);
  *(a2 + 14) = 0;
  *(v2 + 112) = v8;
  result = *(a2 + 32);
  *(v2 + 128) = result;
  return result;
}

uint64_t std::__split_buffer<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 272;
    std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](i - 272);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void rf::data_flow::provider::InputData::~InputData(void **this)
{
  if (*(this + 1863) < 0)
  {
    operator delete(this[230]);
  }

  if (*(this + 1839) < 0)
  {
    operator delete(this[227]);
  }

  if (*(this + 1815) < 0)
  {
    operator delete(this[224]);
  }

  if (*(this + 1776) == 1 && *(this + 1760) == 1)
  {
    rf::data_flow::Room::~Room(this + 106);
  }

  v2 = this[103];
  if (v2)
  {
    this[104] = v2;
    operator delete(v2);
  }

  v11 = this + 100;
  std::vector<rf::data_flow::Room>::__destroy_vector::operator()[abi:ne200100](&v11);
  v11 = this + 97;
  std::vector<rf::data_flow::Room>::__destroy_vector::operator()[abi:ne200100](&v11);
  v3 = this[94];
  if (v3)
  {
    this[95] = v3;
    operator delete(v3);
  }

  v11 = this + 91;
  std::vector<rf::data_flow::provider::InputMesh>::__destroy_vector::operator()[abi:ne200100](&v11);
  v11 = this + 88;
  std::vector<rf::data_flow::provider::InputMesh>::__destroy_vector::operator()[abi:ne200100](&v11);
  v4 = this[85];
  if (v4)
  {
    this[86] = v4;
    operator delete(v4);
  }

  v5 = this[82];
  if (v5)
  {
    this[83] = v5;
    operator delete(v5);
  }

  v6 = this[79];
  if (v6)
  {
    this[80] = v6;
    operator delete(v6);
  }

  v7 = this[76];
  if (v7)
  {
    this[77] = v7;
    operator delete(v7);
  }

  v11 = this + 73;
  std::vector<rf::data_flow::EnvironmentProbe>::__destroy_vector::operator()[abi:ne200100](&v11);
  v11 = this + 70;
  std::vector<rf::data_flow::EnvironmentProbe>::__destroy_vector::operator()[abi:ne200100](&v11);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table((this + 64));
  v8 = this[61];
  if (v8)
  {
    this[62] = v8;
    operator delete(v8);
  }

  v9 = this[58];
  if (v9)
  {
    this[59] = v9;
    operator delete(v9);
  }

  if (*(this + 448) == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((this + 22));
  }

  v11 = this + 18;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__destroy_vector::operator()[abi:ne200100](&v11);
  v11 = this + 15;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__destroy_vector::operator()[abi:ne200100](&v11);
  v11 = this + 12;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__destroy_vector::operator()[abi:ne200100](&v11);
  v11 = this + 9;
  std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__destroy_vector::operator()[abi:ne200100](&v11);
  v10 = this[6];
  if (v10)
  {
    this[7] = v10;
    operator delete(v10);
  }

  v11 = this + 3;
  std::vector<rf::data_flow::provider::InputMesh>::__destroy_vector::operator()[abi:ne200100](&v11);
  v11 = this;
  std::vector<rf::data_flow::provider::InputMesh>::__destroy_vector::operator()[abi:ne200100](&v11);
}

void rf::data_flow::Room::~Room(id *this)
{
  if (*(this + 896) == 1)
  {
    if (*(this + 888) == 1)
    {
    }

    if (*(this + 856) == 1)
    {
    }

    if (*(this + 824) == 1)
    {
    }

    if (*(this + 792) == 1)
    {
    }

    if (*(this + 760) == 1)
    {
    }

    if (*(this + 728) == 1)
    {
    }
  }

  if (*(this + 696) == 1)
  {
    if (*(this + 688) == 1)
    {
    }

    if (*(this + 656) == 1)
    {
    }

    if (*(this + 624) == 1)
    {
    }

    if (*(this + 592) == 1)
    {
    }

    if (*(this + 560) == 1)
    {
    }

    if (*(this + 528) == 1)
    {
    }
  }

  if (*(this + 496) == 1)
  {
    if (*(this + 488) == 1)
    {
    }

    if (*(this + 456) == 1)
    {
    }

    if (*(this + 424) == 1)
    {
    }

    if (*(this + 392) == 1)
    {
    }

    if (*(this + 360) == 1)
    {
    }

    if (*(this + 328) == 1)
    {
    }
  }

  if (*(this + 296) == 1)
  {
  }

  if (*(this + 264) == 1)
  {
  }

  if (*(this + 232) == 1)
  {
  }

  if (*(this + 200) == 1)
  {
  }

  if (*(this + 168) == 1)
  {
  }

  if (*(this + 136) == 1)
  {
  }

  v2 = this[13];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::vector<rf::data_flow::Room>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        rf::data_flow::Room::~Room(v4 - 114);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<rf::data_flow::provider::InputMesh>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        rf::data_flow::provider::InputMesh::~InputMesh(v4 - 44);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void rf::data_flow::provider::InputMesh::~InputMesh(id *this)
{
  if (*(this + 328) == 1)
  {
  }

  if (*(this + 296) == 1)
  {
  }

  if (*(this + 264) == 1)
  {
  }

  if (*(this + 232) == 1)
  {
  }

  if (*(this + 200) == 1)
  {
  }

  if (*(this + 168) == 1)
  {
  }

  if (*(this + 136) == 1)
  {
  }
}

void std::vector<rf::data_flow::EnvironmentProbe>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<rf::data_flow::EnvironmentProbe>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<rf::data_flow::EnvironmentProbe>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 144)
  {
    if (*(i - 24) == 1)
    {
    }
  }

  a1[1] = v2;
}

uint64_t std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(uint64_t a1)
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

void std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 272;
        std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__vdeallocate(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 272;
        std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__emplace_back_slow_path<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0xF0F0F0F0F0F0F0)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 4);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 4) >= 0x78787878787878)
  {
    v6 = 0xF0F0F0F0F0F0F0;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::allocator<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v13 = 0;
  v14 = 272 * v2;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](272 * v2, a2);
  v15 = 272 * v2 + 272;
  v7 = a1[1];
  v8 = 272 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::~__split_buffer(&v13);
  return v12;
}

void sub_2617CF40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<rf::data_flow::provider::AnchorDataProvider::registerCallbackToComponent(void)::$_0,std::allocator<rf::data_flow::provider::AnchorDataProvider::registerCallbackToComponent(void)::$_0>,void ()(REComponent *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_287407C80;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<rf::data_flow::provider::AnchorDataProvider::registerCallbackToComponent(void)::$_0,std::allocator<rf::data_flow::provider::AnchorDataProvider::registerCallbackToComponent(void)::$_0>,void ()(REComponent *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void *std::__function::__value_func<void ()(REComponent *)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_2617CF7E4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<rf::data_flow::provider::AnchorDataProvider::registerCallbackToComponent(void)::$_1,std::allocator<rf::data_flow::provider::AnchorDataProvider::registerCallbackToComponent(void)::$_1>,void ()(REComponent *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_287407D10;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<rf::data_flow::provider::AnchorDataProvider::registerCallbackToComponent(void)::$_1,std::allocator<rf::data_flow::provider::AnchorDataProvider::registerCallbackToComponent(void)::$_1>,void ()(REComponent *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<rf::data_flow::provider::AnchorDataProvider::registerCallbackToComponent(void)::$_2,std::allocator<rf::data_flow::provider::AnchorDataProvider::registerCallbackToComponent(void)::$_2>,void ()(REComponent *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_287407D90;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<rf::data_flow::provider::AnchorDataProvider::registerCallbackToComponent(void)::$_2,std::allocator<rf::data_flow::provider::AnchorDataProvider::registerCallbackToComponent(void)::$_2>,void ()(REComponent *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<rf::data_flow::provider::AnchorDataProvider::registerCallbackToComponent(void)::$_3,std::allocator<rf::data_flow::provider::AnchorDataProvider::registerCallbackToComponent(void)::$_3>,void ()(REComponent *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_287407E10;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<rf::data_flow::provider::AnchorDataProvider::registerCallbackToComponent(void)::$_3,std::allocator<rf::data_flow::provider::AnchorDataProvider::registerCallbackToComponent(void)::$_3>,void ()(REComponent *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(REComponent *)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

void rf::data_flow::PlaneAnchor::~PlaneAnchor(rf::data_flow::PlaneAnchor *this)
{
  v2 = *(this + 27);
  if (v2)
  {
    *(this + 28) = v2;
    operator delete(v2);
  }
}

uint64_t *_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 4)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v10 = v8 >> 3;
      if (v8 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(v7, v11);
    }

    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279AECFE8, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void std::allocator<int>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void rf::getMessage(rf *this@<X0>, void *a2@<X8>, ...)
{
  va_start(va, a2);
  v4 = vsnprintf(0, 0, this, va);
  v5 = malloc_type_malloc(v4 + 1, 0x100004077774924uLL);
  vsnprintf(v5, v4 + 1, this, va);
  if (v4 < 0)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = v4;
  if (v4)
  {
    memmove(a2, v5, v4);
  }

  *(a2 + v4) = 0;
  free(v5);
}

_BYTE *RFPinnedGroupPtrGetIdentifierPtr(_BYTE *result)
{
  if (result[16] == 1)
  {
    return *result;
  }

  return result;
}

void RFPinnedGroupPtrCopyIdentifier(unsigned __int8 *src, uuid_t dst)
{
  v2 = src;
  if (src[16] == 1)
  {
    v2 = *src;
  }

  uuid_copy(dst, v2);
}

void RFPinnedGroupPtrVisitAnchors(uint64_t a1, rf::data_flow::RFUUID *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a1 + 16);
    do
    {
      v8 = (v6 + 2);
      if (*(v6 + 32) == 1)
      {
        v8 = v6[2];
      }

      if (rf::ARState::getAnchorPtrWithIdentifier((v7 + 16), v8))
      {
        v5[2](v5);
      }

      else
      {
        v9 = rf::realityFusionLogObject(0);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          rf::data_flow::RFUUID::string(v16, (v6 + 2));
          v10 = v17;
          v11 = v16[0];
          rf::data_flow::RFUUID::string(__p, a2);
          v12 = v16;
          if (v10 < 0)
          {
            v12 = v11;
          }

          v13 = __p;
          if (v15 < 0)
          {
            v13 = __p[0];
          }

          *buf = 136446466;
          v19 = v12;
          v20 = 2082;
          v21 = v13;
          _os_log_error_impl(&dword_2617CB000, v9, OS_LOG_TYPE_ERROR, "RFPinnedGroupPtrVisitAnchors: Anchor %{public}s is nullptr in pinned group %{public}s, RF internal state could potentially be corrupted.", buf, 0x16u);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }

          if (v17 < 0)
          {
            operator delete(v16[0]);
          }
        }
      }

      v6 = *v6;
    }

    while (v6);
  }
}

uint64_t RFServiceManagerVisitPinnedGroups(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v4[0] = &unk_287407E90;
  v4[1] = MEMORY[0x26670D530](a2);
  v4[3] = v4;
  rf::Session::visitPinnedGroups(v2 + 16, v4);
  return std::__function::__value_func<void ()(rf::data_flow::PinnedGroup const*)>::~__value_func[abi:ne200100](v4);
}

void sub_2617D02B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(rf::data_flow::PinnedGroup const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__function::__func<RFServiceManagerVisitPinnedGroups::$_0,std::allocator<RFServiceManagerVisitPinnedGroups::$_0>,void ()(rf::data_flow::PinnedGroup const*)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<RFServiceManagerVisitPinnedGroups::$_0,std::allocator<RFServiceManagerVisitPinnedGroups::$_0>,void ()(rf::data_flow::PinnedGroup const*)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_287407E90;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RFServiceManagerVisitPinnedGroups::$_0,std::allocator<RFServiceManagerVisitPinnedGroups::$_0>,void ()(rf::data_flow::PinnedGroup const*)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<RFServiceManagerVisitPinnedGroups::$_0,std::allocator<RFServiceManagerVisitPinnedGroups::$_0>,void ()(rf::data_flow::PinnedGroup const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(rf::data_flow::PinnedGroup const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t RFRoomManagementServiceGenerateClientWithDescription(uint64_t a1, char *__s)
{
  v3 = *(a1 + 16);
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
  }

  __dst.__r_.__value_.__s.__data_[v5] = 0;
  RoomManagementClientID = rf::ARState::getRoomManagementClientID(v3 + 16, &__dst);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return RoomManagementClientID;
}

void sub_2617D0604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RFRoomManagementServiceSubscribeRoomChangeEvents(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[0] = &unk_287407F20;
  v8[1] = MEMORY[0x26670D530](a3);
  v8[3] = v8;
  v5 = *(a1 + 16);
  std::__function::__value_func<void ()(std::optional<rf::data_flow::RFUUID>,std::unordered_set<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>> const&)>::__value_func[abi:ne200100](v7, v8);
  rf::Session::subscribeToRoomChange(v5 + 16, a2, v7);
  std::__function::__value_func<void ()(std::optional<rf::data_flow::RFUUID>,std::unordered_set<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>> const&)>::~__value_func[abi:ne200100](v7);
  return std::__function::__value_func<void ()(std::optional<rf::data_flow::RFUUID>,std::unordered_set<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>> const&)>::~__value_func[abi:ne200100](v8);
}

void sub_2617D06D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__function::__value_func<void ()(std::optional<rf::data_flow::RFUUID>,std::unordered_set<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>> const&)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(std::optional<rf::data_flow::RFUUID>,std::unordered_set<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>> const&)>::~__value_func[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void RFRoomManagementServiceTriggerManualRoomChangeEvent(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  if (a3)
  {
    LOBYTE(v7) = 0;
    *(&v7 + 1) = 0;
    uuid_clear(&v6);
    v6 = *a3;
    v8[0] = v6;
    v8[1] = v7;
    v9 = 1;
  }

  else
  {
    LOBYTE(v8[0]) = 0;
    v9 = 0;
  }

  rf::ARState::triggerRoomChangeEvent((v4 + 16), a2, v8);
}

uint64_t RFRoomManagementServiceGetRoomForAnchor(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 16);
  v12 = 0;
  v13 = 0;
  uuid_clear(uu);
  *uu = a2;
  v12 = 1;
  RoomFromAnchor = rf::ARState::getRoomFromAnchor((v5 + 16), uu);
  v8 = v7;
  if (v7)
  {
    v9 = RoomFromAnchor;
    if (RoomFromAnchor[16] == 1)
    {
      v9 = *RoomFromAnchor;
    }

    uuid_copy(a3, v9);
  }

  return v8 & 1;
}

void *RFRoomManagementServiceSetAnchorRoomAware(uint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 16);
  v10 = 0;
  v11 = 0;
  uuid_clear(uu);
  *uu = a3;
  v10 = 1;
  return rf::ARState::setAnchorRoomAware((v7 + 16), a2, uu, a4);
}

void std::__function::__func<RFRoomManagementServiceSubscribeRoomChangeEvents::$_0,std::allocator<RFRoomManagementServiceSubscribeRoomChangeEvents::$_0>,void ()(std::optional<rf::data_flow::RFUUID>,std::unordered_set<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>> const&)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<RFRoomManagementServiceSubscribeRoomChangeEvents::$_0,std::allocator<RFRoomManagementServiceSubscribeRoomChangeEvents::$_0>,void ()(std::optional<rf::data_flow::RFUUID>,std::unordered_set<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>> const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_287407F20;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RFRoomManagementServiceSubscribeRoomChangeEvents::$_0,std::allocator<RFRoomManagementServiceSubscribeRoomChangeEvents::$_0>,void ()(std::optional<rf::data_flow::RFUUID>,std::unordered_set<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>> const&)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void std::__function::__func<RFRoomManagementServiceSubscribeRoomChangeEvents::$_0,std::allocator<RFRoomManagementServiceSubscribeRoomChangeEvents::$_0>,void ()(std::optional<rf::data_flow::RFUUID>,std::unordered_set<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>> const&)>::operator()(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2[1];
  v11 = *a2;
  v12 = v4;
  v13 = *(a2 + 4);
  if (v13)
  {
    v5 = *(a3 + 24);
    if (v5)
    {
      if (!(v5 >> 60))
      {
        operator new();
      }

      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v7 = *(a3 + 16);
    if (v7)
    {
      v8 = 0;
      do
      {
        v9 = (v7 + 2);
        if (*(v7 + 32) == 1)
        {
          v9 = *v9;
        }

        uuid_copy(v8, v9);
        v7 = *v7;
        v8 += 16;
      }

      while (v7);
    }

    memset(dst, 0, sizeof(dst));
    if (v12)
    {
      v10 = v11;
    }

    else
    {
      v10 = &v11;
    }

    uuid_copy(dst, v10);
    (*(*(a1 + 8) + 16))();
  }

  else
  {
    v6 = *(*(a1 + 8) + 16);

    v6();
  }
}

void sub_2617D0C2C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<RFRoomManagementServiceSubscribeRoomChangeEvents::$_0,std::allocator<RFRoomManagementServiceSubscribeRoomChangeEvents::$_0>,void ()(std::optional<rf::data_flow::RFUUID>,std::unordered_set<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::optional<rf::data_flow::RFUUID>,std::unordered_set<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(std::optional<rf::data_flow::RFUUID>,std::unordered_set<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void RFARKitDataProviderCreate(void *a1)
{
  v1 = a1;
  if (qword_2810C45B8 != -1)
  {
    dispatch_once(&qword_2810C45B8, &__block_literal_global);
  }

  _CFRuntimeCreateInstance();
  operator new();
}

void sub_2617D0E94(_Unwind_Exception *a1)
{
  MEMORY[0x26670D060](v2, 0xA0C403368BFA0);

  _Unwind_Resume(a1);
}

void ___ZN2rf17ClassRegistrationINS_14CustomCFObjectINS_9data_flow8provider17ARKitDataProviderEEEE13registerClassEv_block_invoke()
{
  v0 = 0;
  v1 = 1;
  for (i = 114; i != 91; i = aStdStringViewR[v0++ + 51])
  {
    if (i == 93)
    {
      v3 = -1;
      goto LABEL_8;
    }

    if (!i)
    {
      v0 = 0;
      v6 = 0;
      goto LABEL_16;
    }

LABEL_9:
    ;
  }

  v3 = 1;
LABEL_8:
  v1 += v3;
  if (v1)
  {
    goto LABEL_9;
  }

  if (v0 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v0 >= 0x17)
  {
    operator new();
  }

  v6 = v0;
  if (v0)
  {
    memcpy(&__dst, "rf::data_flow::provider::ARKitDataProvider]", v0);
  }

LABEL_16:
  *(&__dst + v0) = 0;
  xmmword_2810C45C0 = 0u;
  xmmword_2810C45D0 = 0u;
  xmmword_2810C45E0 = 0u;
  unk_2810C45F0 = 0u;
  xmmword_2810C4600 = 0u;
  unk_2810C4610 = 0u;
  p_dst = &__dst;
  if (v6 < 0)
  {
    p_dst = __dst;
  }

  *(&xmmword_2810C45C0 + 1) = p_dst;
  *&xmmword_2810C45D0 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::provider::ARKitDataProvider>>::initCallback;
  *&xmmword_2810C45E0 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::provider::ARKitDataProvider>>::finalizeCallback;
  qword_2810C45F8 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::provider::ARKitDataProvider>>::copyFormattingDescriptionCallback;
  *&xmmword_2810C4600 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::provider::ARKitDataProvider>>::copyDebugDescriptionCallback;
  _MergedGlobals = _CFRuntimeRegisterClass();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_2617D1070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<rf::CustomCFObject<rf::data_flow::provider::ARKitDataProvider>::BridgableObject,std::default_delete<rf::CustomCFObject<rf::data_flow::provider::ARKitDataProvider>::BridgableObject>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    rf::data_flow::provider::ARKitDataProvider::~ARKitDataProvider((v2 + 8));

    JUMPOUT(0x26670D060);
  }

  return result;
}

uint64_t *std::vector<int>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, int *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_2617D1208(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::allocator<int>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
  __cxa_throw(exception, MEMORY[0x277D82768], std::bad_variant_access::~bad_variant_access);
}

BOOL rf::data_flow::RFUUID::Equality::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16))
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  if (*(a3 + 16))
  {
    v4 = *a3;
  }

  else
  {
    v4 = a3;
  }

  return uuid_compare(v3, v4) == 0;
}

__n128 _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE13__move_assignERS4_NS_17integral_constantIbLb1EEE(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void rf::detail::insertProbeInto(rf *result@<X0>, __int128 **a2@<X1>, const void **a3@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      v7 = v4[1];
      v34 = *v4;
      v35 = v7;
      v8 = rf::realityFusionLogObject(result);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        rf::data_flow::RFUUID::string(__p, &v34);
        v9 = __p;
        if (v31 < 0)
        {
          v9 = __p[0];
        }

        *buf = 136446210;
        v33 = v9;
        _os_log_impl(&dword_2617CB000, v8, OS_LOG_TYPE_DEFAULT, "ARState: Adding probe %{public}s", buf, 0xCu);
        if (v31 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v10 = a3[1];
      v11 = a3[2];
      if (v10 >= v11)
      {
        v14 = *a3;
        v15 = v10 - *a3;
        v16 = v15 >> 5;
        v17 = (v15 >> 5) + 1;
        if (v17 >> 59)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v18 = v11 - v14;
        if (v18 >> 4 > v17)
        {
          v17 = v18 >> 4;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFE0)
        {
          v17 = 0x7FFFFFFFFFFFFFFLL;
        }

        if (v17)
        {
          std::allocator<rf::data_flow::RFUUID>::allocate_at_least[abi:ne200100](a3, v17);
        }

        v19 = (32 * v16);
        v20 = v35;
        *v19 = v34;
        v19[1] = v20;
        v13 = (32 * v16 + 32);
        memcpy(0, v14, v15);
        v21 = *a3;
        *a3 = 0;
        a3[1] = v13;
        a3[2] = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        v12 = v35;
        *v10 = v34;
        *(v10 + 1) = v12;
        v13 = v10 + 32;
      }

      a3[1] = v13;
      v22 = *result;
      __p[0] = &v34;
      v23 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::piecewise_construct_t const&,std::tuple<rf::data_flow::RFUUID const&>,std::tuple<>>((v22 + 1216), &v34, &std::piecewise_construct, __p);
      v24 = *v4;
      v25 = v4[2];
      *(v23 + 4) = v4[1];
      *(v23 + 5) = v25;
      *(v23 + 3) = v24;
      v26 = v4[3];
      v27 = v4[4];
      v28 = v4[6];
      *(v23 + 8) = v4[5];
      *(v23 + 9) = v28;
      *(v23 + 6) = v26;
      *(v23 + 7) = v27;
      v29 = (v4 + 7);
      std::__optional_storage_base<objc_object  {objcproto10MTLTexture}* {__strong},false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<objc_object  {objcproto10MTLTexture}*,false>>((v23 + 20), v29);
      v23[22] = v29[2];
      v4 = (v29 + 4);
    }

    while (v4 != v5);
  }
}

void sub_2617D159C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void rf::detail::updateProbeAt(uint64_t *result@<X0>, __int128 **a2@<X1>, const void **a3@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      v7 = *(v4 + 16);
      v28 = *v4;
      v29 = v7;
      if (std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>((*result + 1216), &v28))
      {
        v8 = a3[1];
        v9 = a3[2];
        if (v8 >= v9)
        {
          v12 = *a3;
          v13 = v8 - *a3;
          v14 = v13 >> 5;
          v15 = (v13 >> 5) + 1;
          if (v15 >> 59)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v16 = v9 - v12;
          if (v16 >> 4 > v15)
          {
            v15 = v16 >> 4;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFE0)
          {
            v15 = 0x7FFFFFFFFFFFFFFLL;
          }

          if (v15)
          {
            std::allocator<rf::data_flow::RFUUID>::allocate_at_least[abi:ne200100](a3, v15);
          }

          v17 = (32 * v14);
          v18 = v29;
          *v17 = v28;
          v17[1] = v18;
          v11 = (32 * v14 + 32);
          memcpy(0, v12, v13);
          v19 = *a3;
          *a3 = 0;
          a3[1] = v11;
          a3[2] = 0;
          if (v19)
          {
            operator delete(v19);
          }
        }

        else
        {
          v10 = v29;
          *v8 = v28;
          *(v8 + 1) = v10;
          v11 = v8 + 32;
        }

        a3[1] = v11;
        v20 = *result;
        v27 = &v28;
        v21 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::piecewise_construct_t const&,std::tuple<rf::data_flow::RFUUID const&>,std::tuple<>>((v20 + 1216), &v28, &std::piecewise_construct, &v27);
        v22 = *v4;
        v23 = *(v4 + 32);
        *(v21 + 4) = *(v4 + 16);
        *(v21 + 5) = v23;
        *(v21 + 3) = v22;
        v24 = *(v4 + 48);
        v25 = *(v4 + 64);
        v26 = *(v4 + 96);
        *(v21 + 8) = *(v4 + 80);
        *(v21 + 9) = v26;
        *(v21 + 6) = v24;
        *(v21 + 7) = v25;
        std::__optional_storage_base<objc_object  {objcproto10MTLTexture}* {__strong},false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<objc_object  {objcproto10MTLTexture}*,false>>((v21 + 20), (v4 + 112));
        v21[22] = *(v4 + 128);
      }

      v4 += 144;
    }

    while (v4 != v5);
  }
}

void sub_2617D17B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

rf *rf::detail::removeProbeFrom@<X0>(rf *result@<X0>, rf::data_flow::RFUUID **a2@<X1>, const void **a3@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v6 = result;
    do
    {
      v7 = rf::realityFusionLogObject(result);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        rf::data_flow::RFUUID::string(__p, v4);
        v8 = __p;
        if (v22 < 0)
        {
          v8 = __p[0];
        }

        *buf = 136446210;
        v24 = v8;
        _os_log_impl(&dword_2617CB000, v7, OS_LOG_TYPE_DEFAULT, "ARState: Removing probe %{public}s", buf, 0xCu);
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v9 = a3[1];
      v10 = a3[2];
      if (v9 >= v10)
      {
        v13 = *a3;
        v14 = v9 - *a3;
        v15 = v14 >> 5;
        v16 = (v14 >> 5) + 1;
        if (v16 >> 59)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v17 = v10 - v13;
        if (v17 >> 4 > v16)
        {
          v16 = v17 >> 4;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFE0)
        {
          v16 = 0x7FFFFFFFFFFFFFFLL;
        }

        if (v16)
        {
          std::allocator<rf::data_flow::RFUUID>::allocate_at_least[abi:ne200100](a3, v16);
        }

        v18 = (32 * v15);
        v19 = *(v4 + 1);
        *v18 = *v4;
        v18[1] = v19;
        v12 = (32 * v15 + 32);
        memcpy(0, v13, v14);
        v20 = *a3;
        *a3 = 0;
        a3[1] = v12;
        a3[2] = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        v11 = *(v4 + 1);
        *v9 = *v4;
        *(v9 + 1) = v11;
        v12 = v9 + 32;
      }

      a3[1] = v12;
      std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__erase_unique<rf::data_flow::RFUUID>((*v6 + 2312), v4);
      std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__erase_unique<rf::data_flow::RFUUID>((*v6 + 2352), v4);
      result = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::__erase_unique<rf::data_flow::RFUUID>((*v6 + 1216), v4);
      v4 = (v4 + 32);
    }

    while (v4 != v5);
  }

  return result;
}

void sub_2617D1A00(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<rf::data_flow::RFUUID>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__optional_storage_base<objc_object  {objcproto10MTLTexture}* {__strong},false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<objc_object  {objcproto10MTLTexture}*,false>>(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8) == *(a2 + 8))
  {
    if (*(a1 + 8))
    {
      v3 = *a2;
      *a2 = 0;
      v4 = *a1;
      *a1 = v3;
    }
  }

  else if (*(a1 + 8))
  {

    *(a1 + 8) = 0;
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *a1 = v5;
    *(a1 + 8) = 1;
  }
}

void *std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::piecewise_construct_t const&,std::tuple<rf::data_flow::RFUUID const&>,std::tuple<>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 24);
  if (!v6)
  {
    if (*(a2 + 16))
    {
      v15 = *a2;
    }

    else
    {
      v15 = a2;
    }

    v6 = ((*v15 >> 2) + (*v15 << 6) + v15[1] + 2654435769) ^ *v15;
    *(a2 + 24) = v6;
  }

  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_19;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_19:
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<rf::data_flow::RFUUID const&>,std::tuple<>>();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
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

  if (!rf::data_flow::RFUUID::Equality::operator()(a1, (v12 + 2), a2))
  {
    goto LABEL_18;
  }

  return v12;
}

void sub_2617D1D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2617D1E6C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::__rehash<true>(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::__do_rehash<true>(result, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,void *>>>::operator()[abi:ne200100](uint64_t a1, id *__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 168) == 1)
    {
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (!v4)
  {
    if (*(a2 + 16))
    {
      v13 = *a2;
    }

    else
    {
      v13 = a2;
    }

    v4 = ((*v13 >> 2) + (*v13 << 6) + v13[1] + 2654435769) ^ *v13;
    *(a2 + 24) = v4;
  }

  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  v10 = *v9;
  if (*v9)
  {
    do
    {
      v11 = v10[1];
      if (v11 == v4)
      {
        if (rf::data_flow::RFUUID::Equality::operator()(a1, (v10 + 2), a2))
        {
          return v10;
        }
      }

      else
      {
        if (v7 > 1)
        {
          if (v11 >= *&v5)
          {
            v11 %= *&v5;
          }
        }

        else
        {
          v11 &= *&v5 - 1;
        }

        if (v11 != v8)
        {
          return 0;
        }
      }

      v10 = *v10;
    }

    while (v10);
  }

  return v10;
}

uint64_t std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__erase_unique<rf::data_flow::RFUUID>(void *a1, uint64_t a2)
{
  result = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(a1, a2);
  if (result)
  {
    std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
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

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::__erase_unique<rf::data_flow::RFUUID>(void *a1, uint64_t a2)
{
  result = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

int *rf::data_flow::consumer::SceneGraphVisualizer::drawSceneObject(int *result, float32x4_t *a2)
{
  v3 = result;
  v4 = *result;
  if (*result)
  {
    result = rf::helpers::drawAxis(*(result + 2), *(result + 1), a2 + 2);
    v4 = *v3;
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 8);
    v5 = *(v3 + 16);
    __asm { FMOV            V0.4S, #1.0 }

    v12 = _Q0;
    return rf::helpers::drawBoundingBox(v5, v6, a2 + 2, a2[6].f32, &v12);
  }

  return result;
}

void rf::data_flow::provider::SyntheticARDataProvider::SyntheticARDataProvider(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287407FE0;
  v4 = a2 + 8;
  a1[3] = *a2;
  std::__function::__value_func<void ()(rf::data_flow::provider::InputFrame const&,rf::data_flow::provider::SyntheticARData &,rf::data_flow::provider::InputData &)>::__value_func[abi:ne200100]((a1 + 4), v4);
  a1[8] = *(a2 + 40);
  rf::data_flow::provider::SyntheticARDataProvider::createSyntheticARState();
}

void sub_2617D25F8(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(rf::data_flow::provider::InputFrame const&,rf::data_flow::provider::SyntheticARData &,rf::data_flow::provider::InputData &)>::~__value_func[abi:ne200100](v1 + 32);

  _Unwind_Resume(a1);
}

void sub_2617D29B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 65) < 0)
  {
    operator delete(*(v28 - 88));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  _Unwind_Resume(exception_object);
}

void rf::data_flow::provider::SyntheticARDataProvider::reset(rf::data_flow::provider::SyntheticARDataProvider *this)
{
  v64 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v7 = 0;
  memset(v4, 0, sizeof(v4));
  v5 = 0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 1065353216;
  v14 = 0;
  v34 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v2 = (this + 144);
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
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
  v39 = 0;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0;
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    rf::data_flow::provider::SyntheticARData::appendRemovedData((v2 + 4), v4);
  }

  LOBYTE(v54) = 1;
  v3 = *(this + 1);
  if (v3)
  {
    rf::Session::consumeInputFromProvider(v3, v4);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>>>::clear(this + 128);
  rf::data_flow::provider::InputData::~InputData(v4);
}

void rf::data_flow::provider::SyntheticARDataProvider::addData(rf::data_flow::provider::SyntheticARDataProvider *a1, unint64_t a2, const std::string *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = a2;
  LOBYTE(v8) = 0;
  *(&v8 + 1) = 0;
  uuid_clear(uu);
  if (std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>>>::find<unsigned long>(a1 + 16, &v6))
  {
    v4 = std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>>>::find<unsigned long>(a1 + 16, &v6);
    if (!v4)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v5 = *(v4 + 10);
    *uu = *(v4 + 9);
    v8 = v5;
    rf::data_flow::provider::SyntheticARDataProvider::removeData(a1, v6);
  }

  operator new();
}

void rf::data_flow::provider::SyntheticARDataProvider::removeData(rf::data_flow::provider::SyntheticARDataProvider *this, unint64_t a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>>>::find<unsigned long>(this + 16, &v5))
  {
    v8 = 0;
    v9 = 0;
    memset(v6, 0, sizeof(v6));
    v7 = 0;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 1065353216;
    v16 = 0;
    v36 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
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
    v41 = 0;
    v40 = 0u;
    v39 = 0u;
    v38 = 0u;
    v37 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0;
    v3 = std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>>>::find<unsigned long>(this + 16, &v5);
    if (!v3)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    rf::data_flow::provider::SyntheticARData::appendRemovedData((v3 + 4), v6);
    LOBYTE(v56) = 1;
    v4 = *(this + 1);
    if (v4)
    {
      rf::Session::consumeInputFromProvider(v4, v6);
    }

    std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>>>::__erase_unique<unsigned long>(this + 16, &v5);
    rf::data_flow::provider::InputData::~InputData(v6);
  }
}

void rf::data_flow::provider::SyntheticARDataProvider::setDataTransform(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v72 = *MEMORY[0x277D85DE8];
  v11 = a2;
  if (std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>>>::find<unsigned long>((a1 + 128), &v11))
  {
    v14 = 0;
    v15 = 0;
    memset(v12, 0, sizeof(v12));
    v13 = 0;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 1065353216;
    v22 = 0;
    v42 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v47 = 0;
    v46 = 0u;
    v45 = 0u;
    v44 = 0u;
    v43 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0;
    v5 = std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>>>::find<unsigned long>((a1 + 128), &v11);
    if (!v5 || (v6 = *a3, v7 = a3[1], v8 = a3[3], v5[7] = a3[2], v5[8] = v8, v5[5] = v6, v5[6] = v7, (v9 = std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>>>::find<unsigned long>((a1 + 128), &v11)) == 0))
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    rf::data_flow::provider::SyntheticARData::appendUpdatedData((v9 + 4), v12);
    LOBYTE(v62) = 1;
    v10 = *(a1 + 8);
    if (v10)
    {
      rf::Session::consumeInputFromProvider(v10, v12);
    }

    rf::data_flow::provider::InputData::~InputData(v12);
  }
}

void rf::data_flow::provider::SyntheticARDataProvider::provideEnvironmentProbesOnRequest(rf::data_flow::provider::SyntheticARDataProvider *this, unint64_t a2, const unsigned __int8 *a3)
{
  v68 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>>>::find<unsigned long>(this + 16, &v7))
  {
    v10 = 0;
    v11 = 0;
    memset(v8, 0, sizeof(v8));
    v9 = 0;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 1065353216;
    v18 = 0;
    v38 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
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
    v43 = 0;
    v42 = 0u;
    v41 = 0u;
    v40 = 0u;
    v39 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0;
    v5 = std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>>>::find<unsigned long>(this + 16, &v7);
    if (!v5)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    rf::data_flow::provider::SyntheticARData::appendUpdateProbe(v5 + 2, v8, a3);
    v6 = *(this + 1);
    if (v6)
    {
      rf::Session::consumeInputFromProvider(v6, v8);
    }

    rf::data_flow::provider::InputData::~InputData(v8);
  }
}

void rf::data_flow::provider::SyntheticARDataProvider::~SyntheticARDataProvider(rf::data_flow::provider::SyntheticARDataProvider *this)
{
  rf::data_flow::provider::SyntheticARDataProvider::~SyntheticARDataProvider(this);

  JUMPOUT(0x26670D060);
}

{
  std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>>>::~__hash_table(this + 128);
  v2 = *(this + 15);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::__function::__value_func<void ()(rf::data_flow::provider::InputFrame const&,rf::data_flow::provider::SyntheticARData &,rf::data_flow::provider::InputData &)>::~__value_func[abi:ne200100](this + 32);
}

uint64_t std::__function::__value_func<void ()(rf::data_flow::provider::InputFrame const&,rf::data_flow::provider::SyntheticARData &,rf::data_flow::provider::InputData &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(rf::data_flow::provider::InputFrame const&,rf::data_flow::provider::SyntheticARData &,rf::data_flow::provider::InputData &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void sub_2617D3A14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<rf::data_flow::DataGraph>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::shared_ptr<rf::data_flow::DataGraph>::__enable_weak_this[abi:ne200100]<rf::data_flow::DataGraph,rf::data_flow::DataGraph,0>(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }
}

void std::__shared_ptr_pointer<rf::data_flow::DataGraph *,std::shared_ptr<rf::data_flow::DataGraph>::__shared_ptr_default_delete<rf::data_flow::DataGraph,rf::data_flow::DataGraph>,std::allocator<rf::data_flow::DataGraph>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26670D060);
}

uint64_t std::__shared_ptr_pointer<rf::data_flow::DataGraph *,std::shared_ptr<rf::data_flow::DataGraph>::__shared_ptr_default_delete<rf::data_flow::DataGraph,rf::data_flow::DataGraph>,std::allocator<rf::data_flow::DataGraph>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<rf::data_flow::DataGraph>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = (a2 + 64);
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(a2 + 88);
    v5 = v3;
    std::vector<rf::data_flow::details::FunctionStore::Function>::__destroy_vector::operator()[abi:ne200100](&v5);
    std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::details::NodeStore::Node>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::details::NodeStore::Node>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::details::NodeStore::Node>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::details::NodeStore::Node>>>::~__hash_table(a2 + 16);
    v4 = *(a2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    MEMORY[0x26670D060](a2, 0x10A0C401735900DLL);
  }
}

void std::vector<rf::data_flow::details::FunctionStore::Function>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<rf::data_flow::details::FunctionStore::Function>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<rf::data_flow::details::FunctionStore::Function>::__base_destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = std::allocator_traits<std::allocator<rf::data_flow::details::FunctionStore::Function>>::destroy[abi:ne200100]<rf::data_flow::details::FunctionStore::Function,void,0>(v3, i))
  {
    i -= 88;
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t std::allocator_traits<std::allocator<rf::data_flow::details::FunctionStore::Function>>::destroy[abi:ne200100]<rf::data_flow::details::FunctionStore::Function,void,0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  if (v3)
  {
    *(a2 + 64) = v3;
    operator delete(v3);
  }

  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  return std::__function::__value_func<void ()(rf::data_flow::details::Context &)>::~__value_func[abi:ne200100](a2);
}

void rf::data_flow::details::FunctionStore::Function::~Function(rf::data_flow::details::FunctionStore::Function *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  std::__function::__value_func<void ()(rf::data_flow::details::Context &)>::~__value_func[abi:ne200100](this);
}

uint64_t std::__function::__value_func<void ()(rf::data_flow::details::Context &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::details::NodeStore::Node>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::details::NodeStore::Node>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::details::NodeStore::Node>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::details::NodeStore::Node>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::details::NodeStore::Node>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::details::NodeStore::Node>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::details::NodeStore::Node>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::details::NodeStore::Node>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::details::NodeStore::Node>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::details::NodeStore::Node>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::details::NodeStore::Node>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::details::NodeStore::Node>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<unsigned long const,rf::data_flow::details::NodeStore::Node>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<unsigned long const,rf::data_flow::details::NodeStore::Node>,0>(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    v2 = *(a1 + 16);

    operator delete(v2);
  }
}

void rf::data_flow::DataGraph::FunctionProperties::~FunctionProperties(void **this)
{
  if (*(this + 56) == 1 && *(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 24) == 1 && *(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void rf::data_flow::details::Context::~Context(rf::data_flow::details::Context *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,std::any>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::any>>>::~__hash_table(this);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,std::any>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::any>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long,std::any>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::any>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long,std::any>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::any>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::any::reset[abi:ne200100](v2 + 3);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t (**std::any::reset[abi:ne200100](uint64_t (**result)(void, void, void, void, void)))(void, void, void, void, void)
{
  if (*result)
  {
    return (*result)(0, result, 0, 0, 0);
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>>>::clear(uint64_t result)
{
  if (*(result + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>>>::__deallocate_node(result, *(result + 16));
    *(result + 16) = 0;
    v2 = *(result + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*result + 8 * i) = 0;
      }
    }

    *(result + 24) = 0;
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      rf::data_flow::provider::SyntheticARData::~SyntheticARData((v2 + 4));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void rf::data_flow::provider::SyntheticARData::~SyntheticARData(rf::data_flow::provider::SyntheticARData *this)
{
  v2 = *(this + 45);
  if (v2)
  {
    *(this + 46) = v2;
    operator delete(v2);
  }

  v3 = *(this + 42);
  if (v3)
  {
    *(this + 43) = v3;
    operator delete(v3);
  }

  v4 = *(this + 39);
  if (v4)
  {
    *(this + 40) = v4;
    operator delete(v4);
  }

  v5 = *(this + 36);
  if (v5)
  {
    *(this + 37) = v5;
    operator delete(v5);
  }

  v6 = *(this + 33);
  if (v6)
  {
    *(this + 34) = v6;
    operator delete(v6);
  }

  v7 = (this + 240);
  std::vector<std::shared_ptr<rf::data_flow::EnvironmentProbe>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (this + 216);
  std::vector<std::shared_ptr<rf::data_flow::EnvironmentProbe>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (this + 192);
  std::vector<std::shared_ptr<rf::data_flow::EnvironmentProbe>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (this + 168);
  std::vector<std::shared_ptr<rf::data_flow::EnvironmentProbe>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (this + 144);
  std::vector<std::shared_ptr<rf::data_flow::EnvironmentProbe>>::__destroy_vector::operator()[abi:ne200100](&v7);
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

void std::vector<std::shared_ptr<rf::data_flow::EnvironmentProbe>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<rf::data_flow::EnvironmentProbe>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<rf::data_flow::EnvironmentProbe>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void rf::getTypeName<void>(_BYTE *a1@<X8>)
{
  v2 = 0;
  v3 = 1;
  for (i = 118; i != 91; i = aStdStringViewR_1[v2++ + 51])
  {
    if (i == 93)
    {
      v5 = -1;
      goto LABEL_8;
    }

    if (!i)
    {
      v2 = 0;
      a1[23] = 0;
      goto LABEL_16;
    }

LABEL_9:
    ;
  }

  v5 = 1;
LABEL_8:
  v3 += v5;
  if (v3)
  {
    goto LABEL_9;
  }

  if (v2 >= 0x7FFFFFFFFFFFFFF8)
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
    memcpy(a1, "void]", v2);
  }

LABEL_16:
  a1[v2] = 0;
}

void rf::data_flow::details::FunctionStore::addFunctionImpl(uint64_t *a1, uint64_t a2, std::string *a3, uint64_t a4, uint64_t *a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  if (*a4 != *(a4 + 8))
  {
    *&v21[0] = **a4;
    *(&v21[0] + 1) = v9;
    std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_multi<std::pair<unsigned long const,unsigned long>>((a1 + 3), v21);
  }

  std::__function::__value_func<void ()(rf::data_flow::details::Context &)>::__value_func[abi:ne200100](v21, a2);
  std::to_string(&v19, v9);
  v10 = std::string::insert(&v19, 0, "Function ", 9uLL);
  v20 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v11 = &v20;
  if (a3[1].__r_.__value_.__s.__data_[0])
  {
    v11 = a3;
  }

  v23 = v11->__r_.__value_.__r.__words[2];
  v22 = *&v11->__r_.__value_.__l.__data_;
  v11->__r_.__value_.__r.__words[0] = 0;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  *__p = *a4;
  v12 = *(a4 + 16);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  v13 = *a5;
  v25 = v12;
  v26 = v13;
  v14 = a1[1];
  if (v14 >= a1[2])
  {
    v17 = std::vector<rf::data_flow::details::FunctionStore::Function>::__emplace_back_slow_path<rf::data_flow::details::FunctionStore::Function>(a1, v21);
    v18 = __p[0];
    a1[1] = v17;
    if (v18)
    {
      __p[1] = v18;
      operator delete(v18);
    }
  }

  else
  {
    v15 = std::__function::__value_func<void ()(rf::data_flow::details::Context &)>::__value_func[abi:ne200100](v14, v21);
    v16 = v22;
    *(v15 + 48) = v23;
    *(v15 + 56) = 0;
    *(v15 + 32) = v16;
    v22 = 0uLL;
    v23 = 0;
    *(v15 + 64) = 0;
    *(v15 + 72) = 0;
    *(v15 + 56) = *__p;
    *(v15 + 72) = v25;
    __p[0] = 0;
    __p[1] = 0;
    v25 = 0;
    *(v15 + 80) = v26;
    a1[1] = v15 + 88;
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22);
  }

  std::__function::__value_func<void ()(rf::data_flow::details::Context &)>::~__value_func[abi:ne200100](v21);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }
}

void sub_2617D44E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  rf::data_flow::details::FunctionStore::Function::~Function(&a23);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && v16[2] == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
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
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
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
  ++result[3];
  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__rehash<false>(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__do_rehash<false>(result, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t std::vector<rf::data_flow::details::FunctionStore::Function>::__emplace_back_slow_path<rf::data_flow::details::FunctionStore::Function>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::vector<rf::data_flow::details::FunctionStore::Function>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::allocator<rf::data_flow::details::FunctionStore::Function>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v7 = 88 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  std::__function::__value_func<void ()(rf::data_flow::details::Context &)>::__value_func[abi:ne200100](v7, a2);
  v8 = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(v7 + 32) = v8;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = *(a2 + 56);
  v9 = *(a2 + 80);
  *(v7 + 72) = *(a2 + 72);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0;
  *(v7 + 80) = v9;
  *&v18 = v7 + 88;
  v10 = a1[1];
  v11 = v7 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<rf::data_flow::details::FunctionStore::Function>,rf::data_flow::details::FunctionStore::Function*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<rf::data_flow::details::FunctionStore::Function>::~__split_buffer(&v16);
  return v15;
}

void sub_2617D4BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<rf::data_flow::details::FunctionStore::Function>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<rf::data_flow::details::FunctionStore::Function>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<rf::data_flow::details::FunctionStore::Function>,rf::data_flow::details::FunctionStore::Function*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2;
    do
    {
      std::__function::__value_func<void ()(rf::data_flow::details::Context &)>::__value_func[abi:ne200100](v4, v8);
      v9 = *(v8 + 32);
      *(v4 + 48) = *(v8 + 48);
      *(v4 + 32) = v9;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v4 + 56) = 0;
      *(v4 + 64) = 0;
      *(v4 + 72) = 0;
      *(v4 + 56) = *(v8 + 56);
      v10 = *(v8 + 80);
      *(v4 + 72) = *(v8 + 72);
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      *(v8 + 72) = 0;
      *(v4 + 80) = v10;
      v8 += 88;
      v4 = v15 + 88;
      v15 += 88;
    }

    while (v8 != a3);
    v13 = 1;
    do
    {
      std::allocator_traits<std::allocator<rf::data_flow::details::FunctionStore::Function>>::destroy[abi:ne200100]<rf::data_flow::details::FunctionStore::Function,void,0>(a1, v6);
      v6 += 88;
    }

    while (v6 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<rf::data_flow::details::FunctionStore::Function>,rf::data_flow::details::FunctionStore::Function*>>::~__exception_guard_exceptions[abi:ne200100](v12);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<rf::data_flow::details::FunctionStore::Function>,rf::data_flow::details::FunctionStore::Function*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<rf::data_flow::details::FunctionStore::Function>,rf::data_flow::details::FunctionStore::Function*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t *std::_AllocatorDestroyRangeReverse<std::allocator<rf::data_flow::details::FunctionStore::Function>,rf::data_flow::details::FunctionStore::Function*>::operator()[abi:ne200100](uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 88;
      result = std::allocator_traits<std::allocator<rf::data_flow::details::FunctionStore::Function>>::destroy[abi:ne200100]<rf::data_flow::details::FunctionStore::Function,void,0>(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t std::__split_buffer<rf::data_flow::details::FunctionStore::Function>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<rf::data_flow::details::FunctionStore::Function>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<rf::data_flow::details::FunctionStore::Function>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = *(v3 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(v3 + 32);
    *(v3 + 16) = v4 - 88;
    result = std::allocator_traits<std::allocator<rf::data_flow::details::FunctionStore::Function>>::destroy[abi:ne200100]<rf::data_flow::details::FunctionStore::Function,void,0>(v5, v4 - 88);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(rf::data_flow::details::Context &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

__n128 std::__function::__func<void rf::data_flow::details::FunctionStore::addFunction<rf::data_flow::provider::SyntheticARDataProvider::createSyntheticARState(rf::data_flow::provider::SyntheticARDataProvider&)::$_0 &,rf::data_flow::provider::InputFrame,void>(rf::data_flow::provider::SyntheticARDataProvider::createSyntheticARState(rf::data_flow::provider::SyntheticARDataProvider&)::$_0 &,std::optional<std::string> &&,rf::data_flow::NodeHandle<void> const&,rf::data_flow::NodeHandle<rf::data_flow::provider::InputFrame> const&)::{lambda(rf::data_flow::details::Context &)#1},std::allocator<char><void rf::data_flow::details::FunctionStore::addFunction<rf::data_flow::provider::SyntheticARDataProvider::createSyntheticARState(rf::data_flow::provider::SyntheticARDataProvider&)::$_0 &,rf::data_flow::provider::InputFrame,void>(rf::data_flow::provider::SyntheticARDataProvider::createSyntheticARState(rf::data_flow::provider::SyntheticARDataProvider&)::$_0 &,std::optional<std::string> &&,rf::data_flow::NodeHandle<void> const&,rf::data_flow::NodeHandle<rf::data_flow::provider::InputFrame> const&)::{lambda(rf::data_flow::details::Context &)#1}>,void ()(rf::data_flow::details::Context &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_287408020;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void *std::__function::__func<void rf::data_flow::details::FunctionStore::addFunction<rf::data_flow::provider::SyntheticARDataProvider::createSyntheticARState(rf::data_flow::provider::SyntheticARDataProvider&)::$_0 &,rf::data_flow::provider::InputFrame,void>(rf::data_flow::provider::SyntheticARDataProvider::createSyntheticARState(rf::data_flow::provider::SyntheticARDataProvider&)::$_0 &,std::optional<std::string> &&,rf::data_flow::NodeHandle<void> const&,rf::data_flow::NodeHandle<rf::data_flow::provider::InputFrame> const&)::{lambda(rf::data_flow::details::Context &)#1},std::allocator<char><void rf::data_flow::details::FunctionStore::addFunction<rf::data_flow::provider::SyntheticARDataProvider::createSyntheticARState(rf::data_flow::provider::SyntheticARDataProvider&)::$_0 &,rf::data_flow::provider::InputFrame,void>(rf::data_flow::provider::SyntheticARDataProvider::createSyntheticARState(rf::data_flow::provider::SyntheticARDataProvider&)::$_0 &,std::optional<std::string> &&,rf::data_flow::NodeHandle<void> const&,rf::data_flow::NodeHandle<rf::data_flow::provider::InputFrame> const&)::{lambda(rf::data_flow::details::Context &)#1}>,void ()(rf::data_flow::details::Context &)>::operator()(unint64_t *a1, rf::data_flow::details::Context *a2)
{
  v71 = *MEMORY[0x277D85DE8];
  v4 = std::__hash_table<std::__hash_value_type<unsigned long,std::any>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::any>>>::find<unsigned long>(a2, a1 + 1);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v5 = v4[3];
  {
    std::__throw_bad_any_cast[abi:ne200100]();
  }

  v13 = 0;
  v14 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 1065353216;
  v21 = 0;
  v41 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v46 = 0;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v7 = (a1[3] + 144);
  v51 = 0;
  while (1)
  {
    v7 = *v7;
    if (!v7)
    {
      break;
    }

    v8 = *(a1[3] + 56);
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v8 + 48))(v8, v6, v7 + 4, v11);
  }

  LOBYTE(v61) = 1;
  v9 = *(a1[3] + 8);
  if (v9)
  {
    rf::Session::consumeInputFromProvider(v9, v11);
  }

  rf::data_flow::provider::InputData::~InputData(v11);
  return rf::data_flow::details::Context::markOutputReady(a2, a1 + 2);
}

uint64_t std::__function::__func<void rf::data_flow::details::FunctionStore::addFunction<rf::data_flow::provider::SyntheticARDataProvider::createSyntheticARState(rf::data_flow::provider::SyntheticARDataProvider&)::$_0 &,rf::data_flow::provider::InputFrame,void>(rf::data_flow::provider::SyntheticARDataProvider::createSyntheticARState(rf::data_flow::provider::SyntheticARDataProvider&)::$_0 &,std::optional<std::string> &&,rf::data_flow::NodeHandle<void> const&,rf::data_flow::NodeHandle<rf::data_flow::provider::InputFrame> const&)::{lambda(rf::data_flow::details::Context &)#1},std::allocator<char><void rf::data_flow::details::FunctionStore::addFunction<rf::data_flow::provider::SyntheticARDataProvider::createSyntheticARState(rf::data_flow::provider::SyntheticARDataProvider&)::$_0 &,rf::data_flow::provider::InputFrame,void>(rf::data_flow::provider::SyntheticARDataProvider::createSyntheticARState(rf::data_flow::provider::SyntheticARDataProvider&)::$_0 &,std::optional<std::string> &&,rf::data_flow::NodeHandle<void> const&,rf::data_flow::NodeHandle<rf::data_flow::provider::InputFrame> const&)::{lambda(rf::data_flow::details::Context &)#1}>,void ()(rf::data_flow::details::Context &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__throw_bad_any_cast[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  exception->__vftable = 0;
  v1 = std::bad_any_cast::bad_any_cast(exception);
  __cxa_throw(v1, MEMORY[0x277D82758], std::bad_any_cast::~bad_any_cast);
}

std::bad_cast *std::bad_any_cast::bad_any_cast(std::bad_any_cast *this)
{
  result = std::bad_cast::bad_cast(this);
  result->__vftable = (MEMORY[0x277D828D0] + 16);
  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,std::any>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::any>>>::find<unsigned long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v3 == v8)
    {
      if (result[2] == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2617D53FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<unsigned long>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<rf::data_flow::details::FunctionStore::Function>::__throw_length_error[abi:ne200100]();
}

void std::allocator<unsigned long>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::shared_ptr<rf::data_flow::DataGraph>::shared_ptr[abi:ne200100]<rf::data_flow::DataGraph,0>(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  if (!v3)
  {
    a1[1] = 0;
LABEL_5:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v4 = std::__shared_weak_count::lock(v3);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82830] + 16;
  __cxa_throw(exception, MEMORY[0x277D82708], MEMORY[0x277D82630]);
}

void *std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>>>::find<unsigned long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (result[2] == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      rf::data_flow::provider::SyntheticARData::~SyntheticARData((v2 + 32));
    }

    operator delete(v2);
  }

  return a1;
}

void sub_2617D56B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  rf::data_flow::details::Context::~Context(va);
  _Unwind_Resume(a1);
}

void sub_2617D5794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::any::reset[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unint64_t *std::any::operator=[abi:ne200100](unint64_t *a1, void (**a2)(uint64_t))
{
  v9[4] = *MEMORY[0x277D85DE8];
  std::any::any[abi:ne200100](v8, a2);
  if (v8 != a1)
  {
    v3 = *a1;
    if (v8[0])
    {
      v4 = v3 == 0;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (v8[0] | v3)
      {
        if (v8[0])
        {
          v3 = v8[0];
          v5 = a1;
        }

        else
        {
          v5 = v8;
        }

        if (v8[0])
        {
          v6 = v8;
        }

        else
        {
          v6 = a1;
        }

        (v3)(2, v6, v5, 0, 0);
      }
    }

    else
    {
      v9[0] = 0;
      v9[1] = 0;
      (v3)(2, a1, v9, 0, 0);
      (v8)[0](2, v8, a1, 0, 0);
      v9[0](2, v9, v8, 0, 0);
      std::any::reset[abi:ne200100](v9);
    }
  }

  std::any::reset[abi:ne200100](v8);
  return a1;
}

void sub_2617D58BC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__hash_table<std::__hash_value_type<unsigned long,std::any>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::any>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_2617D5B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long,std::any>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,std::any>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long,std::any>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,std::any>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::any::reset[abi:ne200100](v2 + 3);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::any::any[abi:ne200100](void *a1, void (**a2)(uint64_t))
{
  *a1 = 0;
  a1[1] = 0;
  if (*a2)
  {
    (*a2)(2);
  }

  return a1;
}

void *std::__any_imp::_LargeHandler<rf::data_flow::provider::InputFrame>::__handle[abi:ne200100](int a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      operator new();
    }

    operator delete(*(a2 + 8));
    result = 0;
    goto LABEL_9;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = *(a2 + 8);
    *a3 = std::__any_imp::_LargeHandler<rf::data_flow::provider::InputFrame>::__handle[abi:ne200100];
    a3[1] = v8;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 != 3)
  {
  }

  if (a4)
  {
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<rf::data_flow::provider::InputFrame>::__id;
  }

  if (v6)
  {
    return *(a2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>>>::__erase_unique<unsigned long>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>>>::find<unsigned long>(a1, a2);
  if (result)
  {
    std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::remove(a1, result, v4);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,void *>>>>::~unique_ptr[abi:ne200100](v4);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

__n128 rf::detail::insertObjectsInto@<Q0>(__n128 *a1@<X0>, __int128 **a2@<X1>, const void **a3@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v6 = a1;
    do
    {
      v7 = *(v4 + 16);
      v33 = *v4;
      v34 = v7;
      v8 = rf::realityFusionLogObject(a1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        rf::data_flow::RFUUID::string(__p, &v33);
        v9 = __p;
        if (v30 < 0)
        {
          v9 = __p[0];
        }

        *buf = 136446210;
        v32 = v9;
        _os_log_impl(&dword_2617CB000, v8, OS_LOG_TYPE_DEFAULT, "ARState: Adding object %{public}s", buf, 0xCu);
        if (v30 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v10 = a3[1];
      v11 = a3[2];
      if (v10 >= v11)
      {
        v14 = *a3;
        v15 = v10 - *a3;
        v16 = v15 >> 5;
        v17 = (v15 >> 5) + 1;
        if (v17 >> 59)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v18 = v11 - v14;
        if (v18 >> 4 > v17)
        {
          v17 = v18 >> 4;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFE0)
        {
          v17 = 0x7FFFFFFFFFFFFFFLL;
        }

        if (v17)
        {
          std::allocator<rf::data_flow::RFUUID>::allocate_at_least[abi:ne200100](a3, v17);
        }

        v19 = (32 * v16);
        v20 = v34;
        *v19 = v33;
        v19[1] = v20;
        v13 = (32 * v16 + 32);
        memcpy(0, v14, v15);
        v21 = *a3;
        *a3 = 0;
        a3[1] = v13;
        a3[2] = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        v12 = v34;
        *v10 = v33;
        *(v10 + 1) = v12;
        v13 = v10 + 32;
      }

      a3[1] = v13;
      v22 = v6->n128_u64[0];
      __p[0] = &v33;
      a1 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::SceneObject>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::SceneObject>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::SceneObject>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::SceneObject>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::piecewise_construct_t const&,std::tuple<rf::data_flow::RFUUID const&>,std::tuple<>>((v22 + 1256), &v33, &std::piecewise_construct, __p);
      v23 = *v4;
      v24 = *(v4 + 16);
      v25 = *(v4 + 48);
      a1[5] = *(v4 + 32);
      a1[6] = v25;
      a1[3] = v23;
      a1[4] = v24;
      result = *(v4 + 64);
      v27 = *(v4 + 80);
      v28 = *(v4 + 96);
      a1[10].n128_u64[0] = *(v4 + 112);
      a1[8] = v27;
      a1[9] = v28;
      a1[7] = result;
      v4 += 128;
    }

    while (v4 != v5);
  }

  return result;
}

void sub_2617D5FDC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *rf::detail::updateObjectsAt@<X0>(void *result@<X0>, __int128 **a2@<X1>, const void **a3@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v6 = result;
    do
    {
      v7 = *(v4 + 16);
      v28 = *v4;
      v29 = v7;
      result = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>((*v6 + 1256), &v28);
      if (result)
      {
        v8 = a3[1];
        v9 = a3[2];
        if (v8 >= v9)
        {
          v12 = *a3;
          v13 = v8 - *a3;
          v14 = v13 >> 5;
          v15 = (v13 >> 5) + 1;
          if (v15 >> 59)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v16 = v9 - v12;
          if (v16 >> 4 > v15)
          {
            v15 = v16 >> 4;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFE0)
          {
            v15 = 0x7FFFFFFFFFFFFFFLL;
          }

          if (v15)
          {
            std::allocator<rf::data_flow::RFUUID>::allocate_at_least[abi:ne200100](a3, v15);
          }

          v17 = (32 * v14);
          v18 = v29;
          *v17 = v28;
          v17[1] = v18;
          v11 = (32 * v14 + 32);
          memcpy(0, v12, v13);
          v19 = *a3;
          *a3 = 0;
          a3[1] = v11;
          a3[2] = 0;
          if (v19)
          {
            operator delete(v19);
          }
        }

        else
        {
          v10 = v29;
          *v8 = v28;
          *(v8 + 1) = v10;
          v11 = v8 + 32;
        }

        a3[1] = v11;
        v20 = *v6;
        v27 = &v28;
        result = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::SceneObject>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::SceneObject>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::SceneObject>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::SceneObject>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::piecewise_construct_t const&,std::tuple<rf::data_flow::RFUUID const&>,std::tuple<>>((v20 + 1256), &v28, &std::piecewise_construct, &v27);
        v21 = *v4;
        v22 = *(v4 + 16);
        v23 = *(v4 + 48);
        *(result + 5) = *(v4 + 32);
        *(result + 6) = v23;
        *(result + 3) = v21;
        *(result + 4) = v22;
        v24 = *(v4 + 64);
        v25 = *(v4 + 80);
        v26 = *(v4 + 96);
        result[20] = *(v4 + 112);
        *(result + 8) = v25;
        *(result + 9) = v26;
        *(result + 7) = v24;
      }

      v4 += 128;
    }

    while (v4 != v5);
  }

  return result;
}

void sub_2617D61D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void rf::detail::removeObjectsFrom(rf *a1@<X0>, rf::data_flow::RFUUID **a2@<X1>, const void **a3@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v6 = a1;
    do
    {
      v7 = rf::realityFusionLogObject(a1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        rf::data_flow::RFUUID::string(__p, v4);
        v8 = __p;
        if (v33 < 0)
        {
          v8 = __p[0];
        }

        *buf = 136446210;
        v35 = v8;
        _os_log_impl(&dword_2617CB000, v7, OS_LOG_TYPE_DEFAULT, "ARState: Removing object %{public}s", buf, 0xCu);
        if (v33 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v9 = a3[1];
      v10 = a3[2];
      if (v9 >= v10)
      {
        v13 = *a3;
        v14 = v9 - *a3;
        v15 = v14 >> 5;
        v16 = (v14 >> 5) + 1;
        if (v16 >> 59)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v17 = v10 - v13;
        if (v17 >> 4 > v16)
        {
          v16 = v17 >> 4;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFE0)
        {
          v16 = 0x7FFFFFFFFFFFFFFLL;
        }

        if (v16)
        {
          std::allocator<rf::data_flow::RFUUID>::allocate_at_least[abi:ne200100](a3, v16);
        }

        v18 = (32 * v15);
        v19 = *(v4 + 1);
        *v18 = *v4;
        v18[1] = v19;
        v12 = (32 * v15 + 32);
        memcpy(0, v13, v14);
        v20 = *a3;
        *a3 = 0;
        a3[1] = v12;
        a3[2] = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        v11 = *(v4 + 1);
        *v9 = *v4;
        *(v9 + 1) = v11;
        v12 = v9 + 32;
      }

      a3[1] = v12;
      std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__erase_unique<rf::data_flow::RFUUID>((*v6 + 2432), v4);
      std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__erase_unique<rf::data_flow::RFUUID>((*v6 + 2472), v4);
      v21 = *v6;
      v22 = (*v6 + 1256);
      a1 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(v22, v4);
      if (!a1)
      {
        goto LABEL_48;
      }

      v23 = v21[158];
      v24 = *(a1 + 1);
      v25 = vcnt_s8(v23);
      v25.i16[0] = vaddlv_u8(v25);
      if (v25.u32[0] > 1uLL)
      {
        if (v24 >= *&v23)
        {
          v24 %= *&v23;
        }
      }

      else
      {
        v24 &= *&v23 - 1;
      }

      v26 = *a1;
      v27 = *(*v22 + 8 * v24);
      do
      {
        v28 = v27;
        v27 = *v27;
      }

      while (v27 != a1);
      if (v28 == &v21[159])
      {
        goto LABEL_37;
      }

      v29 = *(v28 + 1);
      if (v25.u32[0] > 1uLL)
      {
        if (v29 >= *&v23)
        {
          v29 %= *&v23;
        }
      }

      else
      {
        v29 &= *&v23 - 1;
      }

      if (v29 != v24)
      {
LABEL_37:
        if (v26)
        {
          v30 = *(v26 + 8);
          if (v25.u32[0] > 1uLL)
          {
            v31 = *(v26 + 8);
            if (v30 >= *&v23)
            {
              v31 = v30 % *&v23;
            }
          }

          else
          {
            v31 = v30 & (*&v23 - 1);
          }

          if (v31 == v24)
          {
            goto LABEL_41;
          }
        }

        *(*v22 + 8 * v24) = 0;
        v26 = *a1;
      }

      if (v26)
      {
        v30 = *(v26 + 8);
LABEL_41:
        if (v25.u32[0] > 1uLL)
        {
          if (v30 >= *&v23)
          {
            v30 %= *&v23;
          }
        }

        else
        {
          v30 &= *&v23 - 1;
        }

        if (v30 != v24)
        {
          *(*v22 + 8 * v30) = v28;
          v26 = *a1;
        }
      }

      *v28 = v26;
      *a1 = 0;
      --*&v21[160];
      operator delete(a1);
LABEL_48:
      v4 = (v4 + 32);
    }

    while (v4 != v5);
  }
}

void sub_2617D6544(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::SceneObject>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::SceneObject>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::SceneObject>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::SceneObject>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::piecewise_construct_t const&,std::tuple<rf::data_flow::RFUUID const&>,std::tuple<>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 24);
  if (!v6)
  {
    if (*(a2 + 16))
    {
      v15 = *a2;
    }

    else
    {
      v15 = a2;
    }

    v6 = ((*v15 >> 2) + (*v15 << 6) + v15[1] + 2654435769) ^ *v15;
    *(a2 + 24) = v6;
  }

  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_19;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_19:
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::SceneObject>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::SceneObject>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::SceneObject>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::SceneObject>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<rf::data_flow::RFUUID const&>,std::tuple<>>();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
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

  if (!rf::data_flow::RFUUID::Equality::operator()(a1, (v12 + 2), a2))
  {
    goto LABEL_18;
  }

  return v12;
}

void sub_2617D67FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2617D68BC(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t rf::data_flow::consumer::AnchorPropertyVisualizer::operator()(float32x4_t *a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 80);
  v10[4] = *(a2 + 64);
  v11[0] = v4;
  *(v11 + 9) = *(a2 + 89);
  v5 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v5;
  v6 = *(a2 + 48);
  v10[2] = *(a2 + 32);
  v10[3] = v6;
  v12 = *(a2 + 112);
  v7 = *(a2 + 176);
  v15 = *(a2 + 160);
  v16 = v7;
  v17 = *(a2 + 192);
  v8 = *(a2 + 144);
  v13 = *(a2 + 128);
  v14 = v8;
  v18 = 0;
  rf::data_flow::consumer::AnchorPropertyVisualizer::drawCommonProperties(a1);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v10);
}

{
  v21 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v14[0] = v4;
  *(v14 + 9) = *(a2 + 89);
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v6;
  v15 = *(a2 + 112);
  v16 = *(a2 + 128);
  if (*(a2 + 159) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *(a2 + 136), *(a2 + 144));
  }

  else
  {
    v17 = *(a2 + 136);
  }

  if (*(a2 + 183) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *(a2 + 160), *(a2 + 168));
  }

  else
  {
    v18 = *(a2 + 160);
  }

  v19 = *(a2 + 192);
  v20 = 2;
  rf::data_flow::consumer::AnchorPropertyVisualizer::drawCommonProperties(a1);
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v13);
  if ((a1[5].i8[4] & 0x10) != 0)
  {
    __asm { FMOV            V0.4S, #1.0 }

    return rf::helpers::drawPlaneRect(a1[6].i64[0], a1[5].i64[1], a1 + 1, (a2 + 192), _Q0);
  }

  return result;
}

{
  v27 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 80);
  v17[4] = *(a2 + 64);
  v18[0] = v4;
  *(v18 + 9) = *(a2 + 89);
  v5 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v5;
  v6 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v6;
  v19 = *(a2 + 112);
  if (*(a2 + 151) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *(a2 + 128), *(a2 + 136));
  }

  else
  {
    v20 = *(a2 + 128);
  }

  if (*(a2 + 175) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *(a2 + 152), *(a2 + 160));
  }

  else
  {
    v21 = *(a2 + 152);
  }

  v7 = *(a2 + 192);
  v22 = *(a2 + 176);
  v23 = v7;
  v8 = *(a2 + 224);
  v24 = *(a2 + 208);
  v25 = v8;
  v26 = 3;
  rf::data_flow::consumer::AnchorPropertyVisualizer::drawCommonProperties(a1);
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v17);
  if ((a1[5].i8[4] & 0x20) != 0)
  {
    v10 = 0;
    v11 = *(a2 + 208);
    HIDWORD(v11) = 1.0;
    v12 = a1[1];
    v13 = a1[2];
    v14 = a1[3];
    v15 = a1[4];
    v16[0] = xmmword_26185DD00;
    v16[1] = xmmword_26185DD10;
    v16[2] = xmmword_26185DD20;
    v16[3] = v11;
    do
    {
      v17[v10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, COERCE_FLOAT(v16[v10])), v13, *&v16[v10], 1), v14, v16[v10], 2), v15, v16[v10], 3);
      ++v10;
    }

    while (v10 != 4);
    return rf::helpers::drawBox(a1[6].i64[0], a1[5].i64[1], v17, (a2 + 224));
  }

  return result;
}

{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 80);
  v8[4] = *(a2 + 64);
  v9[0] = v4;
  *(v9 + 9) = *(a2 + 89);
  v5 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v5;
  v6 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v6;
  v10 = *(a2 + 112);
  v11 = *(a2 + 128);
  v12 = 5;
  rf::data_flow::consumer::AnchorPropertyVisualizer::drawCommonProperties(a1);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
}

float32x4_t *rf::data_flow::consumer::AnchorPropertyVisualizer::drawCommonProperties(float32x4_t *result)
{
  v1 = result;
  if (result[5].i8[4])
  {
    v2 = result->u8[1];
    v4 = result[5].i64[1];
    v3 = result[6].i64[0];
    v5 = v1 + 1;
    if (v2 == 1)
    {
      result = rf::helpers::drawAxisWithSphere(v3, v4, v5);
    }

    else
    {
      result = rf::helpers::drawAxis(v3, v4, v5);
    }
  }

  if ((v1[5].i8[4] & 6) != 0)
  {
    v7 = v1[5].i64[1];
    v6 = v1[6].i64[0];
    v8 = v1->u8[0];

    return rf::helpers::drawAnchorCube(v6, v7, v1 + 1, v8);
  }

  return result;
}

void rf::data_flow::consumer::AnchorPropertyVisualizer::operator()(float32x4_t *a1, uint64_t a2)
{
  v95 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 80);
  v84 = *(a2 + 64);
  v85[0] = v4;
  *(v85 + 9) = *(a2 + 89);
  v5 = *(a2 + 16);
  v80 = *a2;
  v81 = v5;
  v6 = *(a2 + 48);
  v82 = *(a2 + 32);
  v83 = v6;
  v86 = *(a2 + 112);
  v7 = *(a2 + 176);
  v89 = *(a2 + 160);
  v90 = v7;
  v91 = *(a2 + 192);
  v8 = *(a2 + 144);
  v87 = *(a2 + 128);
  v88 = v8;
  v9 = *(a2 + 216);
  v92 = *(a2 + 208);
  memset(v93, 0, 24);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(v93, v9, *(a2 + 224), (*(a2 + 224) - v9) >> 4);
  v94 = 1;
  rf::data_flow::consumer::AnchorPropertyVisualizer::drawCommonProperties(a1);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v80);
  if (a1[5].i8[0] == 1)
  {
    v10 = 0;
    v12 = a1[5].i64[1];
    v11 = a1[6].i64[0];
    v13 = a1[1];
    v14 = a1[2];
    v15 = a1[3];
    v16 = a1[4];
    v17 = *(a2 + 144);
    v18 = *(a2 + 160);
    v19 = *(a2 + 176);
    v76 = *(a2 + 128);
    v77 = v17;
    v78 = v18;
    v79 = v19;
    do
    {
      *(&v80 + v10) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(*(&v76 + v10))), v14, *(&v76 + v10), 1), v15, *(&v76 + v10), 2), v16, *(&v76 + v10), 3);
      v10 += 16;
    }

    while (v10 != 64);
    rf::helpers::drawPlaneRect(v11, v12, &v80, (a2 + 192), xmmword_26185E190);
  }

  else if ((a1[5].i8[4] & 8) != 0)
  {
    v20 = 0;
    v22 = a1[5].i64[1];
    v21 = a1[6].i64[0];
    v23 = a1[1];
    v24 = a1[2];
    v25 = a1[3];
    v26 = a1[4];
    v27 = *(a2 + 144);
    v28 = *(a2 + 160);
    v29 = *(a2 + 176);
    v76 = *(a2 + 128);
    v77 = v27;
    v78 = v28;
    v79 = v29;
    do
    {
      *(&v80 + v20) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23, COERCE_FLOAT(*(&v76 + v20))), v24, *(&v76 + v20), 1), v25, *(&v76 + v20), 2), v26, *(&v76 + v20), 3);
      v20 += 16;
    }

    while (v20 != 64);
    __asm { FMOV            V0.4S, #1.0 }

    rf::helpers::drawPlaneRect(v21, v22, &v80, (a2 + 192), _Q0);
  }

  if ((a1[5].i8[5] & 2) != 0)
  {
    rf::helpers::getDebugDescriptionForClassification((a2 + 212), &__p);
    v35 = 0;
    v36 = *(a2 + 48);
    v37 = vmulq_f32(*(a2 + 32), 0);
    v38 = *(a2 + 64);
    v51 = *(a2 + 80);
    v39 = vmlaq_f32(vmlaq_f32(*(a2 + 32), 0, v36), 0, v38);
    v40 = vmulq_f32(v39, v39);
    *&v41 = v40.f32[2] + vaddv_f32(*v40.f32);
    *v40.f32 = vrsqrte_f32(v41);
    *v40.f32 = vmul_f32(*v40.f32, vrsqrts_f32(v41, vmul_f32(*v40.f32, *v40.f32)));
    v48 = vmulq_n_f32(v39, vmul_f32(*v40.f32, vrsqrts_f32(v41, vmul_f32(*v40.f32, *v40.f32))).f32[0]);
    v42 = vmlaq_f32(vaddq_f32(v37, v36), 0, v38);
    v43 = vmulq_f32(v42, v42);
    *&v44 = v43.f32[2] + vaddv_f32(*v43.f32);
    *v43.f32 = vrsqrte_f32(v44);
    *v43.f32 = vmul_f32(*v43.f32, vrsqrts_f32(v44, vmul_f32(*v43.f32, *v43.f32)));
    v49 = vmulq_n_f32(v42, vmul_f32(*v43.f32, vrsqrts_f32(v44, vmul_f32(*v43.f32, *v43.f32))).f32[0]);
    v45 = vaddq_f32(vmlaq_f32(v37, 0, v36), v38);
    v46 = vmulq_f32(v45, v45);
    *&v47 = v46.f32[2] + vaddv_f32(*v46.f32);
    *v46.f32 = vrsqrte_f32(v47);
    *v46.f32 = vmul_f32(*v46.f32, vrsqrts_f32(v47, vmul_f32(*v46.f32, *v46.f32)));
    v50 = vmulq_n_f32(v45, vmul_f32(*v46.f32, vrsqrts_f32(v47, vmul_f32(*v46.f32, *v46.f32))).f32[0]);
    v48.i32[3] = 0;
    v49.i32[3] = 0;
    v50.i32[3] = 0;
    v51.i32[3] = 1.0;
    v76 = xmmword_26185DD00;
    v77 = xmmword_26185DD10;
    v78 = xmmword_26185DD20;
    v79 = xmmword_26185E1A0;
    do
    {
      *(&v80 + v35) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v48, COERCE_FLOAT(*(&v76 + v35))), v49, *(&v76 + v35), 1), v50, *(&v76 + v35), 2), v51, *(&v76 + v35), 3);
      v35 += 16;
    }

    while (v35 != 64);
    v52 = 0;
    v53 = v80;
    v54 = v81;
    v55 = v82;
    v56 = v83;
    v57 = vrsqrte_f32(1065353216);
    *&v58 = vmul_f32(v57, vrsqrts_f32(1065353216, vmul_f32(v57, v57)));
    v59 = vmulq_n_f32(xmmword_26185DD00, vmul_f32(*&v58, vrsqrts_f32(1065353216, vmul_f32(*&v58, *&v58))).f32[0]);
    v60 = vmulq_f32(v59, v59).f32[0];
    v61 = vmuls_lane_f32(v59.f32[1], *v59.f32, 1);
    v62 = vmuls_lane_f32(v59.f32[2], v59, 2);
    v63 = vmuls_lane_f32(v59.f32[0], *v59.f32, 1);
    v64 = vmuls_lane_f32(v59.f32[0], v59, 2);
    v65 = vmuls_lane_f32(v59.f32[1], v59, 2);
    v66 = v64 - v59.f32[1];
    *&v58 = v59.f32[1] + v64;
    *&v67 = v60 + ((1.0 - v60) * -0.000000043711);
    *(&v67 + 1) = v63 - v59.f32[2];
    *(&v67 + 1) = v58;
    HIDWORD(v58) = 0;
    *&v58 = v59.f32[2] + v63;
    *(&v58 + 1) = v61 + ((1.0 - v61) * -0.000000043711);
    *(&v58 + 2) = v65 - v59.f32[0];
    *&v68 = v66;
    *(&v68 + 1) = v59.f32[0] + v65;
    *(&v68 + 1) = COERCE_UNSIGNED_INT(v62 + ((1.0 - v62) * -0.000000043711));
    v76 = v67;
    v77 = v58;
    v78 = v68;
    v79 = xmmword_26185E1B0;
    do
    {
      *(&v80 + v52) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v53, COERCE_FLOAT(*(&v76 + v52))), v54, *(&v76 + v52), 1), v55, *(&v76 + v52), 2), v56, *(&v76 + v52), 3);
      v52 += 16;
    }

    while (v52 != 64);
    v69 = 0;
    v70 = v80;
    v71 = v81;
    v72 = v82;
    v73 = v83;
    v76 = xmmword_26185E1C0;
    v77 = xmmword_26185E1D0;
    v78 = xmmword_26185E1E0;
    v79 = xmmword_26185E1B0;
    do
    {
      *(&v80 + v69) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v70, COERCE_FLOAT(*(&v76 + v69))), v71, *(&v76 + v69), 1), v72, *(&v76 + v69), 2), v73, *(&v76 + v69), 3);
      v69 += 16;
    }

    while (v69 != 64);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v74, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v74 = __p;
    }

    REDebugRendererDrawTextAtWorldTransform();
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_2617D6F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2617D70BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2617D7298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t rf::data_flow::consumer::AnchorPropertyVisualizer::operator()(float32x4_t *a1, __int128 *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a2[5];
  v37 = a2[4];
  v38[0] = v4;
  *(v38 + 9) = *(a2 + 89);
  v5 = a2[1];
  v33 = *a2;
  v34 = v5;
  v6 = a2[3];
  v35 = a2[2];
  v36 = v6;
  v39 = *(a2 + 14);
  v7 = a2[13];
  v44 = a2[12];
  v45 = v7;
  v8 = a2[15];
  v46 = a2[14];
  v47 = v8;
  v9 = a2[9];
  v40 = a2[8];
  v41 = v9;
  v10 = a2[11];
  v42 = a2[10];
  v43 = v10;
  v48 = 4;
  rf::data_flow::consumer::AnchorPropertyVisualizer::drawCommonProperties(a1);
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v33);
  if ((a1[5].i8[4] & 0x40) != 0)
  {
    v12 = 0;
    v13 = a1[1];
    v14 = a1[2];
    v15 = a1[3];
    v16 = a1[4];
    v17 = a2[9];
    v18 = a2[10];
    v19 = a2[11];
    v29 = a2[8];
    v30 = v17;
    v31 = v18;
    v32 = v19;
    do
    {
      *(&v33 + v12) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(*(&v29 + v12))), v14, *(&v29 + v12), 1), v15, *(&v29 + v12), 2), v16, *(&v29 + v12), 3);
      v12 += 16;
    }

    while (v12 != 64);
    v20 = 0;
    v28[0] = v33;
    v28[1] = v34;
    v28[2] = v35;
    v28[3] = v36;
    v21 = a2[13];
    v22 = a2[14];
    v23 = a2[15];
    v29 = a2[12];
    v30 = v21;
    v31 = v22;
    v32 = v23;
    do
    {
      *(&v33 + v20) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(*(&v29 + v20))), v14, *(&v29 + v20), 1), v15, *(&v29 + v20), 2), v16, *(&v29 + v20), 3);
      v20 += 16;
    }

    while (v20 != 64);
    v26 = &a1[5].i8[8];
    v24 = a1[5].i64[1];
    v25 = *(v26 + 1);
    v29 = xmmword_26185E1F0;
    rf::helpers::drawSphere(v25, v24, v28, &v29, 0x3EA4A4A53C75C28FLL);
    v27.i32[0] = 1014350479;
    return rf::helpers::drawSphere(v25, v24, &v33, &v29, v27);
  }

  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t rf::data_flow::consumer::EnvironmentProbeConsumer::EnvironmentProbeConsumer(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_287408138;
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  *(a1 + 72) = *(a2 + 12);
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::__value_func[abi:ne200100](a1 + 80, a2 + 56);
  std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::__value_func[abi:ne200100](a1 + 112, a2 + 88);
  *(a1 + 176) = 0u;
  *(a1 + 160) = 0x3DCCCCCD3F800000;
  *(a1 + 168) = 1092616192;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 232) = 1065353216;
  *(a1 + 240) = 0;
  *(a1 + 256) = 0;
  *(a1 + 400) = 0;
  *(a1 + 416) = 0;
  *(a1 + 560) = 0;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 1065353216;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 1065353216;
  *(a1 + 704) = 0;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 712) = 1065353216;
  *(a1 + 736) = 0;
  *(a1 + 720) = 0u;
  v7.i64[0] = 0x7F0000007FLL;
  v7.i64[1] = 0x7F0000007FLL;
  *(a1 + 752) = vnegq_f32(v7);
  *(a1 + 768) = v7;
  *(a1 + 145) = *(a2 + 3);
  *(a1 + 144) = *a2;
  *(a1 + 148) = *(a2 + 1);
  *(a1 + 156) = *(a2 + 9);
  *(a1 + 152) = *(a2 + 32);
  std::string::basic_string[abi:ne200100]<0>(v14, "");
  rf::UserDefaults::UserDefaults(&v16, v14);
  std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.re.EnvProbeUserDefaultsUpdatePeriod");
  v8 = rf::UserDefaults::intValue(&v16, __p);
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 176) = v10;
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  rf::UserDefaults::~UserDefaults(&v16);
  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  *(a1 + 184) = *(a1 + 176);
  rf::data_flow::consumer::EnvironmentProbeConsumer::readUserDefaults(a1);
  return a1;
}

void sub_2617D78D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  a16 = v25 + 68;
  std::vector<rf::data_flow::EnvironmentProbe>::__destroy_vector::operator()[abi:ne200100](&a16);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::~__hash_table(v25 + 63);
  a16 = v25 + 60;
  std::vector<RESharedPtr<REEntity>>::__destroy_vector::operator()[abi:ne200100](&a16);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(v24);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::~__hash_table(v25 + 50);
  if (*(v22 + 560) == 1 && *(v22 + 536) == 1)
  {
  }

  if (*(v22 + 400) == 1 && *(v22 + 376) == 1)
  {
  }

  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>>>::~__hash_table((v25 + 3));
  RESharedPtr<REEntity>::~RESharedPtr(v23);
  std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::~__value_func[abi:ne200100](v22 + 112);
  std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::~__value_func[abi:ne200100](v22 + 80);
  _Unwind_Resume(a1);
}

void rf::data_flow::consumer::EnvironmentProbeConsumer::readUserDefaults(rf::data_flow::consumer::EnvironmentProbeConsumer *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  rf::UserDefaults::UserDefaults(&v13, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.re.ForceGlobalProbe");
  v2 = rf::UserDefaults::BOOLValue(&v13, __p);
  if ((v2 & 0x100) == 0)
  {
    LOBYTE(v2) = *(this + 24);
  }

  *(this + 144) = v2 & 1;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.re.ForceProbeExposureAdjustment");
  v3 = rf::UserDefaults::BOOLValue(&v13, __p);
  if ((v3 & 0x100) == 0)
  {
    LOBYTE(v3) = *(this + 27);
  }

  *(this + 145) = v3 & 1;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.re.ForceOneLocal");
  v4 = rf::UserDefaults::BOOLValue(&v13, __p);
  if (v4 & 0x100) != 0 && (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(this + 7);
  }

  *(this + 37) = v5;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.re.CameraBasedProbePlacement");
  v6 = rf::UserDefaults::BOOLValue(&v13, __p);
  if ((v6 & 0x100) == 0)
  {
    LOBYTE(v6) = *(this + 56);
  }

  *(this + 152) = v6 & 1;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.re.CameraBasedProbePlacementRadius");
  v7 = rf::UserDefaults::floatValue(&v13, __p);
  if ((v7 & 0x100000000) == 0)
  {
    LODWORD(v7) = *(this + 15);
  }

  *(this + 39) = v7;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.re.EnvProbeIntensityExpSmoothFactor");
  v8 = rf::UserDefaults::floatValue(&v13, __p);
  if ((v8 & 0x100000000) == 0)
  {
    LODWORD(v8) = *(this + 16);
  }

  *(this + 40) = v8;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.re.EnvProbeClampFloor");
  v9 = rf::UserDefaults::floatValue(&v13, __p);
  if ((v9 & 0x100000000) == 0)
  {
    LODWORD(v9) = *(this + 17);
  }

  *(this + 41) = v9;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.re.EnvProbeClampCeil");
  v10 = rf::UserDefaults::floatValue(&v13, __p);
  if ((v10 & 0x100000000) == 0)
  {
    LODWORD(v10) = *(this + 18);
  }

  *(this + 42) = v10;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  rf::UserDefaults::~UserDefaults(&v13);
}

void sub_2617D7BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  rf::UserDefaults::~UserDefaults(&a15);
  _Unwind_Resume(a1);
}

void sub_2617D7C5C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2617D7C54);
}

void rf::data_flow::consumer::EnvironmentProbeConsumer::consumeLatestUpdate(uint64_t a1, uint64_t a2)
{
  v314 = *MEMORY[0x277D85DE8];
  if (*a2 > 10.0 || *a2 < 0.0 || *(a2 + 32) != 1 || *(a2 + 16) != 1)
  {
    return;
  }

  v254 = *(a1 + 16);
  std::mutex::lock(v254);
  v3 = *(a1 + 176);
  if (v3)
  {
    v4 = *(a1 + 184);
    if (v4 >= 2)
    {
      v3 = v4 - 1;
    }

    *(a1 + 184) = v3;
    if (v4 <= 1)
    {
      rf::data_flow::consumer::EnvironmentProbeConsumer::readUserDefaults(a1);
    }
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  MEMORY[0x26670CB10](*(a2 + 8));
  if ((*(a2 + 16) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v5 = MEMORY[0x26670CB70](*(a2 + 8));
  if (v5)
  {
    if (*(a1 + 26) != RERenderManagerGetEnableProbeLightingLegacyBlur())
    {
      RERenderManagerSetEnableProbeLightingLegacyBlur();
    }

    RERenderManagerSetEnableProbeExposureAdjustment();
    v6 = *(a1 + 145) ^ 1;
  }

  else
  {
    v6 = 1;
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (v5 && !((RERenderManagerGetProbeManager() == 0) | v6 & 1))
  {
    RERenderManagerSetProbeIntensityScale();
    RERenderManagerSetProbeIntensityExpSmoothFactor();
    RERenderManagerSetProbeClampFloor();
    RERenderManagerSetProbeClampCeil();
  }

  v7 = 0;
  *&v310[0] = v254 + 3688;
  *(&v310[0] + 1) = v254 + 3728;
  v258 = (a1 + 416);
  v259 = (a1 + 256);
  v8 = (a1 + 616);
  v9 = (a1 + 200);
  v255 = (a1 + 720);
  v256 = (a1 + 656);
  v257 = (a1 + 728);
  v269 = (a1 + 616);
  v271 = (a1 + 200);
  do
  {
    v260 = v7;
    v10 = *(*(v310 + v7) + 16);
    if (!v10)
    {
      goto LABEL_280;
    }

    do
    {
      v11 = v10[6];
      if (*(v11 + 120) != 1 || *(a2 + 16) != 1)
      {
        goto LABEL_268;
      }

      v12 = MEMORY[0x26670CB10](*(a2 + 8));
      if ((*(a2 + 16) & 1) == 0)
      {
        goto LABEL_425;
      }

      v13 = v12;
      v14 = MEMORY[0x26670CB20](*(a2 + 8));
      if (!v13 || !v14)
      {
        goto LABEL_268;
      }

      REColorManagerSetAverageAREnvLightIntensity();
      v272 = v10 + 2;
      if (*(a1 + 560) == 1)
      {
        if (*(v10 + 32))
        {
          v15 = v10[2];
        }

        else
        {
          v15 = (v10 + 2);
        }

        if (*(a1 + 432))
        {
          v16 = *(a1 + 416);
        }

        else
        {
          v16 = (a1 + 416);
        }

        v17 = uuid_compare(v15, v16);
        v18 = v17;
        v19 = *(a1 + 400);
        if (v19)
        {
          if (*(v10 + 32))
          {
            v20 = v10[2];
          }

          else
          {
            v20 = (v10 + 2);
          }

          if (*(a1 + 272))
          {
            v21 = *(a1 + 256);
          }

          else
          {
            v21 = (a1 + 256);
          }

          v22 = uuid_compare(v20, v21);
          v23 = *(a1 + 145);
          if (!v18)
          {
            v19 = *(a1 + 400);
            if ((v19 & 1) == 0)
            {
              goto LABEL_97;
            }

            v49 = rf::realityFusionLogObject(v22);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              rf::data_flow::RFUUID::string(__p, v259);
              v50 = __p;
              if (v284.i8[7] < 0)
              {
                v50 = __p[0];
              }

              *buf = 136446210;
              *&buf[4] = v50;
              _os_log_impl(&dword_2617CB000, v49, OS_LOG_TYPE_DEFAULT, "EnvironmentProbeConsumer: Removing background anchor %{public}s", buf, 0xCu);
              if (v284.i8[7] < 0)
              {
                operator delete(__p[0]);
              }
            }

            v51 = *(a1 + 136);
            v19 = *(a1 + 400);
            if (!v51)
            {
              goto LABEL_97;
            }

            if (v19)
            {
              (*(*v51 + 48))(v51, v259);
              v19 = *(a1 + 400);
LABEL_97:
              if (v19 == *(a1 + 560))
              {
                if (v19)
                {
                  v52 = *(a1 + 496);
                  *(a1 + 320) = *(a1 + 480);
                  *(a1 + 336) = v52;
                  *(a1 + 352) = *(a1 + 512);
                  v53 = *(a1 + 432);
                  *v259 = *v258;
                  *(a1 + 272) = v53;
                  v54 = *(a1 + 464);
                  *(a1 + 288) = *(a1 + 448);
                  *(a1 + 304) = v54;
                  std::__optional_storage_base<objc_object  {objcproto10MTLTexture}* {__strong},false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<objc_object  {objcproto10MTLTexture}*,false> const&>((a1 + 368), *(a1 + 528), *(a1 + 536));
                  *(a1 + 384) = *(a1 + 544);
                }
              }

              else if (v19)
              {
                if (*(a1 + 376) == 1)
                {
                }

                *(a1 + 400) = 0;
              }

              else
              {
                v60 = *(a1 + 496);
                *(a1 + 320) = *(a1 + 480);
                *(a1 + 336) = v60;
                *(a1 + 352) = *(a1 + 512);
                v61 = *(a1 + 432);
                *v259 = *v258;
                *(a1 + 272) = v61;
                v62 = *(a1 + 464);
                *(a1 + 288) = *(a1 + 448);
                *(a1 + 304) = v62;
                *(a1 + 368) = 0;
                *(a1 + 376) = 0;
                if (*(a1 + 536) == 1)
                {
                  *(a1 + 368) = *(a1 + 528);
                  *(a1 + 376) = 1;
                }

                *(a1 + 384) = *(a1 + 544);
                *(a1 + 400) = 1;
              }

              if (*(a1 + 560) == 1)
              {
                if (*(a1 + 536) == 1)
                {
                }

                *(a1 + 560) = 0;
              }

              v27 = *(a1 + 192);
              if (!v27)
              {
                v63 = rf::realityFusionLogObject(0);
                if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
                {
                  rf::data_flow::RFUUID::string(__p, v11);
                  v64 = __p;
                  if (v284.i8[7] < 0)
                  {
                    v64 = __p[0];
                  }

                  *buf = 136446210;
                  *&buf[4] = v64;
                  _os_log_impl(&dword_2617CB000, v63, OS_LOG_TYPE_DEFAULT, "EnvironmentProbeConsumer: Create the background probe entity %{public}s.", buf, 0xCu);
                  if (v284.i8[7] < 0)
                  {
                    operator delete(__p[0]);
                  }
                }

                if ((*(a2 + 32) & 1) == 0)
                {
                  std::__throw_bad_optional_access[abi:ne200100]();
                }

                RESceneAddEntity();
                v65 = __p[0];
                if (__p[0])
                {
                  RERetain();
                }

                v66 = *(a1 + 192);
                *(a1 + 192) = v65;
                if (v66)
                {
                  goto LABEL_133;
                }

                goto LABEL_134;
              }

LABEL_57:
LABEL_135:
              if (*(a1 + 400) == 1)
              {
                std::__optional_storage_base<objc_object  {objcproto10MTLTexture}* {__strong},false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<objc_object  {objcproto10MTLTexture}*,false> const&>((a1 + 368), *(v11 + 112), *(v11 + 120));
                goto LABEL_268;
              }
            }

LABEL_425:
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          if (!v22)
          {
            goto LABEL_56;
          }
        }

        else
        {
          v23 = *(a1 + 145);
          if (!v17)
          {
            goto LABEL_97;
          }
        }
      }

      else if (*(a1 + 400))
      {
        if (*(v10 + 32))
        {
          v24 = v10[2];
        }

        else
        {
          v24 = (v10 + 2);
        }

        if (*(a1 + 272))
        {
          v25 = *(a1 + 256);
        }

        else
        {
          v25 = (a1 + 256);
        }

        v26 = uuid_compare(v24, v25);
        v23 = *(a1 + 145);
        if (!v26)
        {
LABEL_56:
          v27 = *(a1 + 192);
          if (v27)
          {
            goto LABEL_57;
          }

          v56 = rf::realityFusionLogObject(0);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            rf::data_flow::RFUUID::string(__p, v11);
            v57 = __p;
            if (v284.i8[7] < 0)
            {
              v57 = __p[0];
            }

            *buf = 136446210;
            *&buf[4] = v57;
            _os_log_impl(&dword_2617CB000, v56, OS_LOG_TYPE_DEFAULT, "EnvironmentProbeConsumer: Create the background probe entity %{public}s.", buf, 0xCu);
            if (v284.i8[7] < 0)
            {
              operator delete(__p[0]);
            }
          }

          if ((*(a2 + 32) & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          RESceneAddEntity();
          v58 = __p[0];
          if (__p[0])
          {
            RERetain();
          }

          v59 = *(a1 + 192);
          *(a1 + 192) = v58;
          if (v59)
          {
LABEL_133:
            RERelease();
          }

LABEL_134:
          RESharedPtr<REEntity>::~RESharedPtr(__p);
          goto LABEL_135;
        }
      }

      else
      {
        v23 = *(a1 + 145);
      }

      v28 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>((a1 + 680), v272);
      if (!v28)
      {
        v34 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(v9, v272);
        if (v34)
        {
        }

        else
        {
          v55 = rf::realityFusionLogObject(0);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            rf::data_flow::RFUUID::string(__p, v11);
            v130 = __p;
            if (v284.i8[7] < 0)
            {
              v130 = __p[0];
            }

            *buf = 136446210;
            *&buf[4] = v130;
            _os_log_error_impl(&dword_2617CB000, v55, OS_LOG_TYPE_ERROR, "EnvironmentProbeConsumer: The probe %{public}s was not expected", buf, 0xCu);
            if (v284.i8[7] < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        goto LABEL_268;
      }

      v29 = *(v28 + 4);
      v30 = *(v28 + 6);
      v31 = *(v28 + 7);
      v298 = *(v28 + 5);
      v299 = v30;
      v300 = v31;
      *buf = *(v28 + 3);
      v297 = v29;
      v265 = *(v28 + 9);
      v267 = *(v28 + 8);
      v32 = *(v28 + 168);
      v263 = v28;
      if (v32 == 1)
      {
        v33 = v28[20];
        v32 = 1;
        v262 = v33;
        v28 = v263;
      }

      else
      {
        v262 = 0;
      }

      v35 = v28[22];
      v36 = *(v10 + 2);
      *__p = *v272;
      v284 = v36;
      v287 = v298;
      v288 = v299;
      v289 = v300;
      v285 = *buf;
      v286 = v297;
      v290 = v267;
      v291 = v265;
      LOBYTE(v292) = 0;
      v293 = 0;
      v261 = v32;
      if (v32)
      {
        v292 = v262;
        v293 = 1;
      }

      v294 = v35;
      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,rf::data_flow::EnvironmentProbe>>((a1 + 576), __p, __p);
      if (v293 == 1)
      {
      }

      v37.i64[0] = 0x3F0000003F000000;
      v37.i64[1] = 0x3F0000003F000000;
      v38 = vmulq_f32(v265, v37);
      v39 = *(v10 + 2);
      *__p = *v272;
      v284 = v39;
      v285 = vsubq_f32(v267, v38);
      v286 = vaddq_f32(v267, v38);
      v40 = v39.u64[1];
      if (!v39.i64[1])
      {
        v131 = __p;
        if (v284.i8[0])
        {
          v131 = __p[0];
        }

        v40 = (v131[1] + 64 * *v131 + (*v131 >> 2) + 2654435769u) ^ *v131;
        v284.i64[1] = v40;
      }

      v41 = *(a1 + 624);
      if (!*&v41)
      {
        goto LABEL_87;
      }

      v42 = vcnt_s8(v41);
      v42.i16[0] = vaddlv_u8(v42);
      v43 = v42.u32[0];
      if (v42.u32[0] > 1uLL)
      {
        v44 = v40;
        if (v40 >= *&v41)
        {
          v44 = v40 % *&v41;
        }
      }

      else
      {
        v44 = (*&v41 - 1) & v40;
      }

      v45 = *(*v8 + 8 * v44);
      if (!v45 || (v46 = *v45) == 0)
      {
LABEL_87:
        operator new();
      }

      while (1)
      {
        v47 = v46[1];
        if (v47 == v40)
        {
          break;
        }

        if (v43 > 1)
        {
          if (v47 >= *&v41)
          {
            v47 %= *&v41;
          }
        }

        else
        {
          v47 &= *&v41 - 1;
        }

        if (v47 != v44)
        {
          goto LABEL_87;
        }

LABEL_86:
        v46 = *v46;
        if (!v46)
        {
          goto LABEL_87;
        }
      }

      v48 = rf::data_flow::RFUUID::Equality::operator()(v269, (v46 + 2), __p);
      if (!v48)
      {
        goto LABEL_86;
      }

      v67 = rf::realityFusionLogObject(v48);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        rf::data_flow::RFUUID::string(__p, v11);
        v69 = __p;
        if (v284.i8[7] < 0)
        {
          v69 = __p[0];
        }

        *v306 = 136446210;
        *&v306[4] = v69;
        _os_log_impl(&dword_2617CB000, v67, OS_LOG_TYPE_DEFAULT, "EnvironmentProbeConsumer: Create the local probe entity %{public}s.", v306, 0xCu);
        if (v284.i8[7] < 0)
        {
          operator delete(__p[0]);
        }
      }

      v70 = *(a1 + 664);
      v71 = *(a1 + 672);
      v72 = (v10 + 2);
      if (v70 >= v71)
      {
        v75 = (v70 - *v256) >> 3;
        if ((v75 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v76 = v71 - *v256;
        v77 = v76 >> 2;
        if (v76 >> 2 <= (v75 + 1))
        {
          v77 = v75 + 1;
        }

        if (v76 >= 0x7FFFFFFFFFFFFFF8)
        {
          v78 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v78 = v77;
        }

        v285.i64[0] = a1 + 656;
        if (v78)
        {
          if (!(v78 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v79 = (8 * v75);
        __p[0] = 0;
        __p[1] = v79;
        v284 = v79;
        v80 = *v295;
        *v79 = *v295;
        if (v80)
        {
          RERetain();
          v79 = __p[1];
          v81 = v284.i64[0];
        }

        else
        {
          v81 = v79;
        }

        v82 = *(a1 + 664);
        v83 = *(a1 + 656);
        v84 = v82 - v83;
        v74 = v81 + 1;
        v284.i64[0] = (v81 + 1);
        if (v82 != v83)
        {
          v85 = 0;
          v86 = &v79[-((v82 - v83) >> 3) - 1];
          v87 = v83;
          do
          {
            v88 = *v87;
            *(v86 + 8) = *v87;
            if (v88)
            {
              RERetain();
            }

            v87 += 8;
            v85 -= 8;
            v86 += 8;
          }

          while (v87 != v82);
          v72 = (v10 + 2);
          do
          {
            RESharedPtr<REEntity>::~RESharedPtr(v83);
            v83 += 8;
          }

          while (v83 != v82);
          v83 = *v256;
          v74 = v284.i64[0];
        }

        *(a1 + 656) = v79 - v84;
        *(a1 + 664) = v74;
        v89 = *(a1 + 672);
        *(a1 + 672) = v284.i64[1];
        v284.i64[0] = v83;
        v284.i64[1] = v89;
        __p[0] = v83;
        __p[1] = v83;
        std::__split_buffer<RESharedPtr<REEntity>>::~__split_buffer(__p);
      }

      else
      {
        v73 = *v295;
        *v70 = *v295;
        if (v73)
        {
          RERetain();
        }

        v74 = v70 + 1;
        *(a1 + 664) = v70 + 1;
      }

      *(a1 + 664) = v74;
      v90 = v72[1];
      *__p = *v72;
      v284 = v90;
      v285.i64[0] = *v295;
      if (*v295)
      {
        RERetain();
      }

      v91 = v284.u64[1];
      if (!v284.i64[1])
      {
        v132 = __p;
        if (v284.i8[0])
        {
          v132 = __p[0];
        }

        v91 = (v132[1] + 64 * *v132 + (*v132 >> 2) + 2654435769u) ^ *v132;
        v284.i64[1] = v91;
      }

      v92 = *(a1 + 208);
      if (!*&v92)
      {
        goto LABEL_186;
      }

      v93 = vcnt_s8(v92);
      v93.i16[0] = vaddlv_u8(v93);
      v94 = v93.u32[0];
      if (v93.u32[0] > 1uLL)
      {
        v95 = v91;
        if (v91 >= *&v92)
        {
          v95 = v91 % *&v92;
        }
      }

      else
      {
        v95 = (*&v92 - 1) & v91;
      }

      v96 = *(*v271 + 8 * v95);
      if (!v96 || (v97 = *v96) == 0)
      {
LABEL_186:
        operator new();
      }

      while (2)
      {
        v98 = v97[1];
        if (v98 != v91)
        {
          if (v94 > 1)
          {
            if (v98 >= *&v92)
            {
              v98 %= *&v92;
            }
          }

          else
          {
            v98 &= *&v92 - 1;
          }

          if (v98 != v95)
          {
            goto LABEL_186;
          }

LABEL_185:
          v97 = *v97;
          if (!v97)
          {
            goto LABEL_186;
          }

          continue;
        }

        break;
      }

      if (!rf::data_flow::RFUUID::Equality::operator()(v271, (v97 + 2), __p))
      {
        goto LABEL_185;
      }

      RESharedPtr<REEntity>::~RESharedPtr(&v285);
      v99 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::erase((a1 + 680), v263);
      v8 = (a1 + 616);
      v9 = (a1 + 200);
      if (*(a1 + 704))
      {
        goto LABEL_266;
      }

      v100 = *v255;
      v101 = *v257;
      while (2)
      {
        if (v100 != v101)
        {
          v102 = *(v100 + 1);
          *__p = *v100;
          v284 = v102;
          v103 = rf::realityFusionLogObject(v99);
          if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
          {
            rf::data_flow::RFUUID::string(v306, v100);
            v104 = v306;
            if (SBYTE7(v307) < 0)
            {
              v104 = *v306;
            }

            LODWORD(v312) = 136446210;
            *(&v312 + 4) = v104;
            _os_log_impl(&dword_2617CB000, v103, OS_LOG_TYPE_DEFAULT, "EnvironmentProbeConsumer: Removing localized anchor %{public}s", &v312, 0xCu);
            if (SBYTE7(v307) < 0)
            {
              operator delete(*v306);
            }
          }

          v105 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(v269, __p);
          if (v105)
          {
            v106 = *(a1 + 624);
            v107 = v105[1];
            v108 = vcnt_s8(v106);
            v108.i16[0] = vaddlv_u8(v108);
            if (v108.u32[0] > 1uLL)
            {
              if (v107 >= *&v106)
              {
                v107 %= *&v106;
              }
            }

            else
            {
              v107 &= *&v106 - 1;
            }

            v109 = *v105;
            v110 = *(*v269 + 8 * v107);
            do
            {
              v111 = v110;
              v110 = *v110;
            }

            while (v110 != v105);
            if (v111 == (a1 + 632))
            {
              goto LABEL_213;
            }

            v112 = v111[1];
            if (v108.u32[0] > 1uLL)
            {
              if (v112 >= *&v106)
              {
                v112 %= *&v106;
              }
            }

            else
            {
              v112 &= *&v106 - 1;
            }

            if (v112 == v107)
            {
LABEL_215:
              if (v109)
              {
                v113 = *(v109 + 8);
                goto LABEL_217;
              }
            }

            else
            {
LABEL_213:
              if (!v109)
              {
                goto LABEL_214;
              }

              v113 = *(v109 + 8);
              if (v108.u32[0] > 1uLL)
              {
                v114 = *(v109 + 8);
                if (v113 >= *&v106)
                {
                  v114 = v113 % *&v106;
                }
              }

              else
              {
                v114 = v113 & (*&v106 - 1);
              }

              if (v114 != v107)
              {
LABEL_214:
                *(*v269 + 8 * v107) = 0;
                v109 = *v105;
                goto LABEL_215;
              }

LABEL_217:
              if (v108.u32[0] > 1uLL)
              {
                if (v113 >= *&v106)
                {
                  v113 %= *&v106;
                }
              }

              else
              {
                v113 &= *&v106 - 1;
              }

              if (v113 != v107)
              {
                *(*v269 + 8 * v113) = v111;
                v109 = *v105;
              }
            }

            *v111 = v109;
            *v105 = 0;
            --*(a1 + 640);
            operator delete(v105);
          }

          std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::__erase_unique<rf::data_flow::RFUUID>((a1 + 576), __p);
          v115 = *(a1 + 136);
          if (v115)
          {
            (*(*v115 + 48))(v115, v100);
          }

          v116 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(v271, __p);
          if (v116)
          {
            if ((*(a2 + 32) & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            v117 = v116;
            RESceneRemoveEntity();
            v118 = *(a1 + 208);
            v119 = v117[1];
            v120 = vcnt_s8(v118);
            v120.i16[0] = vaddlv_u8(v120);
            if (v120.u32[0] > 1uLL)
            {
              if (v119 >= *&v118)
              {
                v119 %= *&v118;
              }
            }

            else
            {
              v119 &= *&v118 - 1;
            }

            v122 = *(*v271 + 8 * v119);
            do
            {
              v123 = v122;
              v122 = *v122;
            }

            while (v122 != v117);
            if (v123 == (a1 + 216))
            {
              goto LABEL_248;
            }

            v124 = v123[1];
            if (v120.u32[0] > 1uLL)
            {
              if (v124 >= *&v118)
              {
                v124 %= *&v118;
              }
            }

            else
            {
              v124 &= *&v118 - 1;
            }

            if (v124 != v119)
            {
LABEL_248:
              if (!*v117)
              {
                goto LABEL_249;
              }

              v125 = *(*v117 + 8);
              if (v120.u32[0] > 1uLL)
              {
                if (v125 >= *&v118)
                {
                  v125 %= *&v118;
                }
              }

              else
              {
                v125 &= *&v118 - 1;
              }

              if (v125 != v119)
              {
LABEL_249:
                *(*v271 + 8 * v119) = 0;
              }
            }

            v126 = *v117;
            if (*v117)
            {
              v127 = *(v126 + 8);
              if (v120.u32[0] > 1uLL)
              {
                if (v127 >= *&v118)
                {
                  v127 %= *&v118;
                }
              }

              else
              {
                v127 &= *&v118 - 1;
              }

              if (v127 != v119)
              {
                *(*v271 + 8 * v127) = v123;
                v126 = *v117;
              }
            }

            *v123 = v126;
            *v117 = 0;
            --*(a1 + 224);
            *v306 = v117;
            *&v306[8] = a1 + 200;
            LOBYTE(v307) = 1;
            *(&v307 + 1) = 0;
            DWORD1(v307) = 0;
            v99 = std::unique_ptr<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,RESharedPtr<REEntity>>,void *>>>>::~unique_ptr[abi:ne200100](v306);
          }

          else
          {
            v121 = rf::realityFusionLogObject(0);
            if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
            {
              *v306 = 0;
              _os_log_error_impl(&dword_2617CB000, v121, OS_LOG_TYPE_ERROR, "EnvironmentProbeConsumer: The removed probe was not stored in the probe entity dictionary", v306, 2u);
            }
          }

          v100 = (v100 + 144);
          continue;
        }

        break;
      }

      std::vector<rf::data_flow::EnvironmentProbe>::clear[abi:ne200100](v255);
      v128 = *(a1 + 656);
      v129 = *(a1 + 664);
      if (v128 != v129)
      {
        do
        {
          if ((*(a2 + 32) & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          RESceneAddEntity();
          ++v128;
        }

        while (v128 != v129);
        v129 = *(a1 + 664);
        v128 = *(a1 + 656);
      }

      while (v129 != v128)
      {
        RESharedPtr<REEntity>::~RESharedPtr(--v129);
      }

      *(a1 + 664) = v128;
LABEL_266:
      RESharedPtr<REEntity>::~RESharedPtr(v295);
      if (v261)
      {
      }

LABEL_268:
      v10 = *v10;
    }

    while (v10);
LABEL_280:
    v7 = v260 + 8;
  }

  while (v260 != 8);
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v133 = *a2 + *(a1 + 240);
  *(a1 + 240) = v133;
  if (*(a1 + 104) || *(a1 + 136))
  {
    if (*(a1 + 560) == 1)
    {
      if (*(a1 + 536))
      {
        v134 = 528;
        goto LABEL_291;
      }

      v264 = 0;
      v139 = *(a1 + 32);
      v136 = 1;
LABEL_295:
      v137 = 0;
      v139 = v139 + v139;
      v138 = v136;
    }

    else
    {
      v135 = *(a1 + 400);
      if (v135 == 1 && (*(a1 + 376) & 1) != 0)
      {
        v134 = 368;
LABEL_291:
        v264 = *(a1 + v134);
        v136 = 0;
        v137 = 0;
        v138 = 0;
        v133 = *(a1 + 240);
        v139 = *(a1 + 32);
        if (*(a1 + 560))
        {
          goto LABEL_295;
        }
      }

      else
      {
        v264 = 0;
        v137 = v135 ^ 1;
        v139 = *(a1 + 32);
        v138 = 1;
      }
    }

    v266 = v138;
    v268 = v137;
    if ((v137 & 1) != 0 || v133 > v139)
    {
      if (*(a1 + 152) == 1)
      {
        MutableCameraAnchor = rf::helpers::getMutableCameraAnchor(&v254[2].__m_.__opaque[8]);
        v273 = MutableCameraAnchor[5];
        v141 = MutableCameraAnchor[7].i64[0];
        if (*(a1 + 400) != 1 || *(a1 + 376) != 1 || (v142 = vsubq_f32(*(a1 + 336), v273), v143 = vmulq_f32(v142, v142), v270 = 0u, sqrtf(v143.f32[2] + vaddv_f32(*v143.f32)) > *(a1 + 156)))
        {
          if (re::internal::enableSignposts(0, 0))
          {
            kdebug_trace();
          }

          if ((*(a2 + 32) & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          v270 = *__p;
          if (re::internal::enableSignposts(0, 0))
          {
            kdebug_trace();
          }

          if (re::internal::enableSignposts(0, 0))
          {
            kdebug_trace();
          }

          if ((*(a2 + 32) & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::__value_func[abi:ne200100](v282, a1 + 80);
          std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::__value_func[abi:ne200100](v281, a1 + 112);
          v144.i64[0] = 0x7F0000007FLL;
          v144.i64[1] = 0x7F0000007FLL;
          v145 = vnegq_f32(v144);
          if (v270.i64[0] != v270.i64[1])
          {
            v146 = v270.i64[0];
            do
            {
              v148 = *v146;
              v147 = v146[1];
              v149 = vcgtq_f32(*v146, v147);
              v149.i32[3] = v149.i32[2];
              if ((vmaxvq_u32(v149) & 0x80000000) == 0)
              {
                v145.i32[3] = 0;
                v148.i32[3] = 0;
                v145 = vminnmq_f32(v145, v148);
                v144.i32[3] = 0;
                v147.i32[3] = 0;
                v144 = vmaxnmq_f32(v144, v147);
              }

              v146 += 2;
            }

            while (v146 != v270.i64[1]);
          }

          if (*(a1 + 152) == 1)
          {
            v150 = vcgtq_f32(v145, v144);
            v150.i32[3] = v150.i32[2];
            v151 = vmaxvq_u32(v150);
            v152.i64[0] = 0x3F0000003F000000;
            v152.i64[1] = 0x3F0000003F000000;
            v153 = vmulq_f32(vaddq_f32(v145, v144), v152);
            v154 = v151 < 0;
            if (v151 >= 0)
            {
              v155 = v153.i64[1];
            }

            else
            {
              v155 = 0;
            }

            if (v154)
            {
              v156 = 0;
            }

            else
            {
              v156 = v153.i64[0];
            }

            v157.i64[0] = v156;
            v157.i64[1] = v155;
            v158 = vaddq_f32(v273, vsubq_f32(v273, v157));
            v159 = vsubq_f32(v144, v145);
            v159.i32[3] = 0;
            v160 = vmulq_f32(vmaxnmq_f32(v159, 0), v152);
            v161 = vsubq_f32(v158, v160);
            v162 = vaddq_f32(v160, v158);
            v145.i32[3] = 0;
            v161.i32[3] = 0;
            v145 = vminnmq_f32(v145, v161);
            v144.i32[3] = 0;
            v162.i32[3] = 0;
            v144 = vmaxnmq_f32(v144, v162);
          }

          v163 = vcgtq_f32(v145, v144);
          v163.i32[3] = v163.i32[2];
          v164.i64[0] = 0x3F0000003F000000;
          v164.i64[1] = 0x3F0000003F000000;
          v165 = vmulq_f32(vaddq_f32(v145, v144), v164);
          v166 = v165.i64[1];
          if ((vmaxvq_u32(v163) & 0x80000000) == 0)
          {
            v167 = v165.i64[0];
          }

          else
          {
            v166 = 0;
            v167 = 0;
          }

          v168.i64[0] = v167;
          v168.i64[1] = v166;
          v169.i64[0] = 0xC0000000C0000000;
          v169.i64[1] = 0xC0000000C0000000;
          v170 = vaddq_f32(v168, v169);
          v171.i64[0] = 0x4000000040000000;
          v171.i64[1] = 0x4000000040000000;
          v172 = vaddq_f32(v168, v171);
          v145.i32[3] = 0;
          v170.i32[3] = 0;
          v144.i32[3] = 0;
          v172.i32[3] = 0;
          *__p = vminnmq_f32(v145, v170);
          v284 = vmaxnmq_f32(v144, v172);
          std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::__value_func[abi:ne200100](buf, v282);
          std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::__value_func[abi:ne200100](v306, v281);
          rf::data_flow::consumer::EnvironmentProbeConsumer::updateBackgroundProbePlacement(a1, __p, buf, v306);
          std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::~__value_func[abi:ne200100](v306);
          std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::~__value_func[abi:ne200100](buf);
          std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::~__value_func[abi:ne200100](v281);
          std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::~__value_func[abi:ne200100](v282);
          if (re::internal::enableSignposts(0, 0))
          {
            kdebug_trace();
          }
        }
      }

      else
      {
        if (re::internal::enableSignposts(0, 0))
        {
          kdebug_trace();
        }

        if ((*(a2 + 32) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v270 = *__p;
        if (re::internal::enableSignposts(0, 0))
        {
          kdebug_trace();
        }

        if (re::internal::enableSignposts(0, 0))
        {
          kdebug_trace();
        }

        if ((*(a2 + 32) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::__value_func[abi:ne200100](v280, a1 + 80);
        std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::__value_func[abi:ne200100](v279, a1 + 112);
        v173.i64[0] = 0x7F0000007FLL;
        v173.i64[1] = 0x7F0000007FLL;
        v174 = vnegq_f32(v173);
        if (v270.i64[0] != v270.i64[1])
        {
          v175 = v270.i64[0];
          do
          {
            v177 = *v175;
            v176 = v175[1];
            v178 = vcgtq_f32(*v175, v176);
            v178.i32[3] = v178.i32[2];
            if ((vmaxvq_u32(v178) & 0x80000000) == 0)
            {
              v174.i32[3] = 0;
              v177.i32[3] = 0;
              v174 = vminnmq_f32(v174, v177);
              v173.i32[3] = 0;
              v176.i32[3] = 0;
              v173 = vmaxnmq_f32(v173, v176);
            }

            v175 += 2;
          }

          while (v175 != v270.i64[1]);
        }

        v179 = vcgtq_f32(v174, v173);
        v179.i32[3] = v179.i32[2];
        v180 = vmaxvq_u32(v179);
        v181.i64[0] = 0x3F0000003F000000;
        v181.i64[1] = 0x3F0000003F000000;
        v182 = vmulq_f32(vaddq_f32(v174, v173), v181);
        v183 = v180 < 0;
        if (v180 >= 0)
        {
          v184 = v182.i64[1];
        }

        else
        {
          v184 = 0;
        }

        if (v183)
        {
          v185 = 0;
        }

        else
        {
          v185 = v182.i64[0];
        }

        v186.i64[0] = v185;
        v186.i64[1] = v184;
        v187.i64[0] = 0xC0000000C0000000;
        v187.i64[1] = 0xC0000000C0000000;
        v188 = vaddq_f32(v186, v187);
        v189.i64[0] = 0x4000000040000000;
        v189.i64[1] = 0x4000000040000000;
        v190 = vaddq_f32(v186, v189);
        v174.i32[3] = 0;
        v188.i32[3] = 0;
        v173.i32[3] = 0;
        v190.i32[3] = 0;
        v191 = vminnmq_f32(v174, v188);
        v192 = vmaxnmq_f32(v173, v190);
        v193 = vcgtq_f32(v191, v192);
        v193.i32[3] = v193.i32[2];
        v194 = vmaxvq_u32(v193);
        v195 = vmulq_f32(vaddq_f32(v191, v192), v181);
        v196 = v194 < 0;
        if (v194 >= 0)
        {
          v197 = v195.i64[1];
        }

        else
        {
          v197 = 0;
        }

        if (v196)
        {
          v198 = 0;
        }

        else
        {
          v198 = v195.i64[0];
        }

        v199.i64[0] = v198;
        v199.i64[1] = v197;
        v200 = vcgtq_f32(*(a1 + 752), v199);
        v200.i32[3] = v200.i32[2];
        if ((vmaxvq_u32(v200) & 0x80000000) != 0 || (v201 = vcgtq_f32(v199, *(a1 + 768)), v201.i32[3] = v201.i32[2], (vmaxvq_u32(v201) & 0x80000000) != 0))
        {
          *__p = v191;
          v284 = v192;
          std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::__value_func[abi:ne200100](buf, v280);
          std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::__value_func[abi:ne200100](v306, v279);
          rf::data_flow::consumer::EnvironmentProbeConsumer::updateBackgroundProbePlacement(a1, __p, buf, v306);
          std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::~__value_func[abi:ne200100](v306);
          std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::~__value_func[abi:ne200100](buf);
        }

        std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::~__value_func[abi:ne200100](v279);
        std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::~__value_func[abi:ne200100](v280);
        if (re::internal::enableSignposts(0, 0))
        {
          kdebug_trace();
        }
      }

      if (*(a1 + 144) == 1)
      {
        if (re::internal::enableSignposts(0, 0))
        {
          kdebug_trace();
        }

        if ((*(a2 + 32) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::__value_func[abi:ne200100](v277, a1 + 80);
        std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::__value_func[abi:ne200100](v276, a1 + 112);
        memset(buf, 0, sizeof(buf));
        v297.i64[0] = 0;
        v207 = v270.i64[1] - v270.i64[0];
        if (v270.i64[1] != v270.i64[0])
        {
          if (!((v207 >> 5) >> 59))
          {
            std::allocator<rf::AABB>::allocate_at_least[abi:ne200100](v207 >> 5);
          }

          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v312 = 0uLL;
        v313 = 0;
        v208 = 0;
        memset(v310, 0, sizeof(v310));
        v311 = 1065353216;
        std::vector<rf::data_flow::EnvironmentProbe>::clear[abi:ne200100](v255);
        std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::clear(a1 + 680);
        v215 = *(a1 + 592);
        if (v215)
        {
          do
          {
            if (!std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(v310, (v215 + 2)))
            {
              v216 = *(a1 + 728);
              v217 = *(a1 + 736);
              if (v216 >= v217)
              {
                v225 = 0x8E38E38E38E38E39 * ((v216 - *v255) >> 4);
                v226 = v225 + 1;
                if (v225 + 1 > 0x1C71C71C71C71C7)
                {
                  std::vector<int>::__throw_length_error[abi:ne200100]();
                }

                v227 = 0x8E38E38E38E38E39 * ((v217 - *v255) >> 4);
                if (2 * v227 > v226)
                {
                  v226 = 2 * v227;
                }

                if (v227 >= 0xE38E38E38E38E3)
                {
                  v228 = 0x1C71C71C71C71C7;
                }

                else
                {
                  v228 = v226;
                }

                v285.i64[0] = a1 + 720;
                if (v228)
                {
                  std::allocator<rf::data_flow::EnvironmentProbe>::allocate_at_least[abi:ne200100](v255, v228);
                }

                v229 = 144 * v225;
                __p[0] = 0;
                __p[1] = v229;
                v284.i64[1] = 0;
                v230 = *(v215 + 3);
                v231 = *(v215 + 4);
                *(v229 + 32) = *(v215 + 5);
                v232 = *(v215 + 6);
                v233 = *(v215 + 7);
                v234 = *(v215 + 9);
                *(v229 + 80) = *(v215 + 8);
                *(v229 + 96) = v234;
                *(v229 + 48) = v232;
                *(v229 + 64) = v233;
                *v229 = v230;
                *(v229 + 16) = v231;
                *(v229 + 112) = 0;
                *(v229 + 120) = 0;
                if (*(v215 + 168) == 1)
                {
                  *(v229 + 112) = v215[20];
                  *(v229 + 120) = 1;
                }

                *(v229 + 128) = v215[22];
                v284.i64[0] = v229 + 144;
                v224 = (a1 + 728);
                v235 = v229 + *v255 - *v257;
                std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<rf::data_flow::EnvironmentProbe>,rf::data_flow::EnvironmentProbe*>(v255, *v255, *v257, v235);
                v236 = *(a1 + 720);
                *(a1 + 720) = v235;
                v237 = *(a1 + 736);
                v275 = v284.i64[0];
                *v257 = v284;
                v284.i64[0] = v236;
                v284.i64[1] = v237;
                __p[0] = v236;
                __p[1] = v236;
                std::__split_buffer<rf::data_flow::EnvironmentProbe>::~__split_buffer(__p);
                v223 = v275;
              }

              else
              {
                v218 = *(v215 + 3);
                v219 = *(v215 + 5);
                *(v216 + 16) = *(v215 + 4);
                *(v216 + 32) = v219;
                *v216 = v218;
                v220 = *(v215 + 6);
                v221 = *(v215 + 7);
                v222 = *(v215 + 9);
                *(v216 + 80) = *(v215 + 8);
                *(v216 + 96) = v222;
                *(v216 + 48) = v220;
                *(v216 + 64) = v221;
                *(v216 + 112) = 0;
                *(v216 + 120) = 0;
                if (*(v215 + 168) == 1)
                {
                  *(v216 + 112) = v215[20];
                  *(v216 + 120) = 1;
                }

                *(v216 + 128) = v215[22];
                v223 = v216 + 144;
                v224 = (a1 + 728);
                *v257 = (v216 + 144);
              }

              *v224 = v223;
            }

            v215 = *v215;
          }

          while (v215);
          v208 = *(&v312 + 1);
        }

        v238 = v312;
        if (v312 != v208)
        {
          v239 = v312;
          while (1)
          {
            v240 = v239[1];
            v241 = vcgtq_f32(*v239, v240);
            v241.i32[3] = v241.i32[2];
            v242 = vmaxvq_u32(v241);
            v243 = vaddq_f32(*v239, v240);
            v240.i64[0] = 0x3F0000003F000000;
            v240.i64[1] = 0x3F0000003F000000;
            v244 = vmulq_f32(v243, v240);
            v245 = v242 >= 0 ? v244.i32[2] : 0;
            v246 = v242 >= 0 ? v244.i64[0] : 0;
            v247.i64[0] = v246;
            v247.i64[1] = __PAIR64__(1.0, v245);
            *v306 = xmmword_26185DD00;
            v307 = xmmword_26185DD10;
            v308 = xmmword_26185DD20;
            v309 = v247;
            v297.i8[0] = 0;
            v297.i64[1] = 0;
            uuid_clear(buf);
            uuid_generate_random(buf);
            v298 = *v306;
            v299 = v307;
            v300 = v308;
            v301 = v309;
            v248 = vsubq_f32(v239[1], *v239);
            v248.i32[3] = 0;
            v302 = vmaxnmq_f32(v248, 0);
            LOBYTE(v303) = 0;
            v304 = 0;
            v305 = 1065353216;
            if (!v278)
            {
              break;
            }

            v249 = vsubq_f32(v239[1], *v239);
            v249.i32[3] = 0;
            *v295 = vmaxnmq_f32(v249, 0);
            (*(*v278 + 48))(__p);
            *buf = *__p;
            v297 = v284;
            v289 = v300;
            v290 = v301;
            v291 = v302;
            v285 = *__p;
            v286 = v284;
            v287 = v298;
            v288 = v299;
            LOBYTE(v292) = 0;
            v293 = 0;
            if (v304)
            {
              v292 = v303;
              v250 = 1;
LABEL_398:
              v293 = v250;
            }

            v294 = v305;
            v251 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,rf::data_flow::EnvironmentProbe>>((a1 + 680), __p, __p);
            if (v293 == 1)
            {
            }

            v252 = rf::realityFusionLogObject(v251);
            if (os_log_type_enabled(v252, OS_LOG_TYPE_DEFAULT))
            {
              rf::data_flow::RFUUID::string(__p, buf);
              v253 = v284.i8[7] >= 0 ? __p : __p[0];
              *v295 = 136446210;
              *&v295[4] = v253;
              _os_log_impl(&dword_2617CB000, v252, OS_LOG_TYPE_DEFAULT, "EnvironmentProbeConsumer: Adding new localized anchor %{public}s", v295, 0xCu);
              if (v284.i8[7] < 0)
              {
                operator delete(__p[0]);
              }
            }

            if (v304 == 1)
            {
            }

            v239 += 2;
            if (v239 == v208)
            {
              goto LABEL_410;
            }
          }

          v250 = 0;
          *__p = *buf;
          v284 = v297;
          v289 = v300;
          v290 = v301;
          v291 = v302;
          v285 = *buf;
          v286 = v297;
          v287 = v298;
          v288 = v299;
          LOBYTE(v292) = 0;
          goto LABEL_398;
        }

LABEL_410:
        std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(v310);
        if (v238)
        {
          operator delete(v238);
        }

        std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::~__value_func[abi:ne200100](v276);
        std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::~__value_func[abi:ne200100](v277);
        if (re::internal::enableSignposts(0, 0))
        {
          kdebug_trace();
        }
      }

      *(a1 + 240) = 0;
      if (v270.i64[0])
      {
        operator delete(v270.i64[0]);
      }
    }

    if (re::internal::enableSignposts(0, 0))
    {
      kdebug_trace();
    }

    if (re::internal::enableSignposts(0, 0))
    {
      kdebug_trace();
    }

    if (((v266 | v268) & 1) == 0)
    {
    }
  }

  std::mutex::unlock(v254);
}

void sub_2617DA56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::mutex *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, int a21, uint64_t a22, int a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::~__value_func[abi:ne200100](&STACK[0x300]);
  std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::~__value_func[abi:ne200100](&STACK[0x270]);
  std::__function::__value_func<void ()(rf::data_flow::EnvironmentProbe const&)>::~__value_func[abi:ne200100](&a47);
  std::__function::__value_func<rf::data_flow::RFUUID ()(re::Matrix4x4<float> const&,re::Vector3<float> const&)>::~__value_func[abi:ne200100](&a51);
  if (v51)
  {
    operator delete(v51);
  }

  if (((a21 | a23) & 1) == 0)
  {
  }

  std::mutex::unlock(a10);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::collectAABBsInScene(uint64_t *a1, uint64_t a2)
{
  REMeshComponentGetComponentType();
  ComponentsOfClass = RESceneGetComponentsOfClass();
  v11 = v3;
  v12 = 0;
  v13 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v4 = ComponentsOfClass + 8 * v11;
  v5 = v16;
  if (v16 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = v17;
    v8 = v15;
    do
    {
      ++v6;
    }

    while (v4 != v5);
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      std::allocator<rf::AABB>::allocate_at_least[abi:ne200100](v6);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2617DAA08(_Unwind_Exception *exception_object)
{
  *(v1 + 8) = v2;
  if (v2)
  {
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void rf::data_flow::consumer::EnvironmentProbeConsumer::updateBackgroundProbePlacement(float32x4_t *a1, float32x4_t *a2, uint64_t a3, uint64_t a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = a2[1];
  v9 = vcgtq_f32(*a2, v8);
  v9.i32[3] = v9.i32[2];
  v10 = vmaxvq_u32(v9);
  v11.i64[0] = 0x3F0000003F000000;
  v11.i64[1] = 0x3F0000003F000000;
  v12 = vmulq_f32(vaddq_f32(*a2, v8), v11);
  v13 = v10 < 0;
  if (v10 >= 0)
  {
    v14 = v12.i32[2];
  }

  else
  {
    v14 = 0;
  }

  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12.i64[0];
  }

  v16.i64[0] = v15;
  v16.i64[1] = __PAIR64__(1.0, v14);
  v37 = v16;
  if (a1[1].i8[9] == 1)
  {
    v17 = a1[2].f32[1];
    v18 = vsubq_f32(v8, *a2);
    v18.i32[3] = 0;
    v19 = vmaxnmq_f32(v18, 0);
    v20 = v19.f32[1];
    if (v19.f32[1] <= v19.f32[0])
    {
      v20 = v19.f32[0];
    }

    if (v20 < v19.f32[2])
    {
      v20 = v19.f32[2];
    }

    v13 = v20 <= v17;
    v21 = v20 > v17;
    v22 = INFINITY;
    if (v13)
    {
      v22 = v19.f32[2];
    }

    *v36.f32 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v21), 0x1FuLL)), vneg_f32(0x7F0000007FLL), *v19.f32);
    v36.f32[2] = v22;
  }

  else
  {
    v23.i64[0] = 0x7F0000007FLL;
    v23.i64[1] = 0x7F0000007FLL;
    v36 = vnegq_f32(v23);
  }

  v43.i8[0] = 0;
  v43.i64[1] = 0;
  uuid_clear(uu);
  uuid_generate_random(uu);
  v44 = xmmword_26185DD00;
  v45 = xmmword_26185DD10;
  v46 = xmmword_26185DD20;
  v47 = v37;
  v48 = v36;
  LOBYTE(v49) = 0;
  v50 = 0;
  v51 = 1065353216;
  v24 = *(a3 + 24);
  if (v24)
  {
    if (a1[35].i8[0] == 1)
    {
      v25 = *(a4 + 24);
      if (v25)
      {
        (*(*v25 + 48))(*(a4 + 24), a1 + 26);
        v24 = *(a3 + 24);
        if (!v24)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }
      }
    }

    v26 = (*(*v24 + 48))(__p);
    *uu = *__p;
    v43 = v41;
    v27 = rf::realityFusionLogObject(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      rf::data_flow::RFUUID::string(__p, uu);
      v28 = v41.i8[7] >= 0 ? __p : __p[0];
      *buf = 136446210;
      v39 = v28;
      _os_log_impl(&dword_2617CB000, v27, OS_LOG_TYPE_DEFAULT, "EnvironmentProbeConsumer: Adding new background anchor %{public}s", buf, 0xCu);
      if (v41.i8[7] < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v29 = 16;
  if (a1[25].i8[0])
  {
    v29 = 26;
  }

  v30 = &a1[v29];
  v31 = a1[v29 + 9].u8[0];
  v32 = v47;
  v30[4] = v46;
  v30[5] = v32;
  v30[6] = v48;
  v33 = v43;
  *v30 = *uu;
  v30[1] = v33;
  v34 = v45;
  v30[2] = v44;
  v30[3] = v34;
  if (v31 == 1)
  {
    std::__optional_storage_base<objc_object  {objcproto10MTLTexture}* {__strong},false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<objc_object  {objcproto10MTLTexture}*,false> const&>(&v30[7], v49, v50);
    v30[8].i64[0] = v51;
  }

  else
  {
    v30[7].i8[0] = 0;
    v30[7].i8[8] = 0;
    if (v50 == 1)
    {
      v30[7].i64[0] = v49;
      v30[7].i8[8] = 1;
    }

    v30[8].i64[0] = v51;
    v30[9].i8[0] = 1;
  }

  v35 = a2[1];
  a1[47] = *a2;
  a1[48] = v35;
  if (v50 == 1)
  {
  }
}

void sub_2617DAD7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, char a40)
{
  if (a40 == 1)
  {
  }

  _Unwind_Resume(exception_object);
}

void *anonymous namespace::updateEntityFromEnvironmentProbe(uint64_t a1, __n128 *a2, uint64_t a3, int a4)
{
  REAREnvironmentProbeComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {
    rf::getMessage("The probe entity doesn't have probe component.", __p);
    rf::internal::logAssert(__p);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    rf::internal::debugBreakHandler(v7);
  }

  REComponentGetEntity();
  RETransformComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  RETransformComponentSetWorldMatrix4x4F();
  REAREnvironmentProbeComponentSetExtents();
  if (a2[7].n128_u8[8] != 1)
  {
    return REAREnvironmentProbeComponentSetTexture();
  }

  __p[0] = REAssetManagerTextureMemoryAssetCreateWithMTLTexture();
  REAREnvironmentProbeComponentSetTexture();
  if (a4)
  {
    REAREnvironmentProbeComponentSetClippingPointLux();
  }

  return RESharedPtr<REAsset>::~RESharedPtr(__p);
}

void sub_2617DAEC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::createEntityFromEnvironmentProbe(uint64_t *a1, __n128 *a2, uint64_t a3, uint64_t a4, int a5)
{
  *a1 = REEntityCreate();
  std::string::basic_string[abi:ne200100]<0>(&v14, "RFAREnvironmentProbeEntity");
  rf::data_flow::RFUUID::string(__p, a2);
  if ((v13 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v8 = v13;
  }

  else
  {
    v8 = __p[1];
  }

  v9 = std::string::append(&v14, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16 = v9->__r_.__value_.__r.__words[2];
  *v15 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  REEntitySetName();
  RETransformComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  RETransformComponentSetWorldMatrix4x4F();
  REAREnvironmentProbeComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  if (!a2[1].n128_u64[1])
  {
    if (a2[1].n128_u8[0])
    {
      v11 = a2->n128_u64[0];
    }

    else
    {
      v11 = a2;
    }

    a2[1].n128_u64[1] = ((v11->n128_u64[0] >> 2) + (v11->n128_u64[0] << 6) + v11->n128_u64[1] + 2654435769u) ^ v11->n128_u64[0];
  }

  REAREnvironmentProbeComponentSetIdentifier();
  REAREnvironmentProbeComponentSetExtents();
  REAREnvironmentProbeComponentSetUseAsBackground();
  if (a2[7].n128_u8[8] == 1)
  {
    v14.__r_.__value_.__r.__words[0] = REAssetManagerTextureMemoryAssetCreateWithMTLTexture();
    REAREnvironmentProbeComponentSetTexture();
    if (a5)
    {
      REAREnvironmentProbeComponentSetClippingPointLux();
    }

    RESharedPtr<REAsset>::~RESharedPtr(&v14);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}