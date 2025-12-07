uint64_t std::__function::__value_func<rf::data_flow::provider::InputData ()(NSArray<ARAnchor *> *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *rf::AnchorDefinitionComponent::instance(rf::AnchorDefinitionComponent *this)
{
  {
    rf::AnchorDefinitionComponent::AnchorDefinitionComponent(&rf::AnchorDefinitionComponent::instance(void)::instance);
  }

  return &rf::AnchorDefinitionComponent::instance(void)::instance;
}

rf::AnchorDefinitionComponent *rf::AnchorDefinitionComponent::AnchorDefinitionComponent(rf::AnchorDefinitionComponent *this)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 16) = 0;
  *(this + 38) = 0;
  rf::AnchorDefinitionComponent::buildIntrospectionInfo(this);
  rf::AnchorDefinitionComponent::registerAnchorDefinitionComponent(this);
  return this;
}

void sub_261848928(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v1 + 104);
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v1 + 72);
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v1 + 40);
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t rf::AnchorDefinitionComponent::deinit(rf::AnchorDefinitionComponent *this)
{
  *(this + 38) = 0;
  if (*this)
  {
    RECustomComponentTypeDestroy();
    *this = 0;
  }

  if (*(this + 17))
  {
    RECIntrospectionStructUnregister();
    *(this + 17) = 0;
  }

  if (*(this + 18))
  {
    RECIntrospectionEnumUnregister();
    *(this + 18) = 0;
  }

  std::__function::__value_func<void ()(REComponent *)>::operator=[abi:ne200100](this + 8);
  std::__function::__value_func<void ()(REComponent *)>::operator=[abi:ne200100](this + 40);
  std::__function::__value_func<void ()(REComponent *)>::operator=[abi:ne200100](this + 72);

  return std::__function::__value_func<void ()(REComponent *)>::operator=[abi:ne200100](this + 104);
}

uint64_t rf::AnchorDefinitionComponent::buildIntrospectionInfo(uint64_t this)
{
  v1 = this;
  if (!*(this + 144))
  {
    this = REEnumBuilderCreate();
    if (this)
    {
      if (REEnumBuilderInit())
      {
        REEnumBuilderAddCase();
        REEnumBuilderAddCase();
        REEnumBuilderAddCase();
        REEnumBuilderAddCase();
        REEnumBuilderAddCase();
        REEnumBuilderAddCase();
        REEnumBuilderAddCase();
        REEnumBuilderAddCase();
        *(v1 + 144) = RECIntrospectionEnumRegister();
      }

      this = REEnumBuilderDestroy();
    }
  }

  if (!*(v1 + 136))
  {
    this = REStructBuilderCreate();
    if (this)
    {
      v2 = this;
      if (REStructBuilderInit())
      {
        REStructBuilderAddMemberCStyleArrayDataTypeWithTag();
        REStructBuilderAddMemberEnumWithTag();
        REStructBuilderAddMemberDataTypeWithTag();
        REStructBuilderAddMemberDataTypeWithTag();
        REStructBuilderAddMemberDataTypeWithTag();
        REStructBuilderAddMemberDataTypeWithTag();
        REStructBuilderAddMemberDataTypeWithTag();
        *(v1 + 136) = RECIntrospectionStructRegister();
      }

      return MEMORY[0x282154E00](v2);
    }
  }

  return this;
}

void *rf::AnchorDefinitionComponent::registerAnchorDefinitionComponent(void *this)
{
  if (!*this)
  {
    v1 = this;
    this = RECustomComponentTypeCreate();
    *v1 = this;
  }

  return this;
}

void *rf::AnchorDefinitionComponent::retain(void *this)
{
  v1 = this;
  v2 = *(this + 38);
  if (v2 <= 0)
  {
    rf::AnchorDefinitionComponent::buildIntrospectionInfo(this);
    this = rf::AnchorDefinitionComponent::registerAnchorDefinitionComponent(v1);
    v2 = *(v1 + 38);
  }

  *(v1 + 38) = v2 + 1;
  return this;
}

void rf::AnchorDefinitionComponent::registerAnchorDefinitionComponent(void)::$_1::__invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x26670D060);
  }
}

uint64_t rf::AnchorDefinitionComponent::registerAnchorDefinitionComponent(void)::$_2::__invoke(uint64_t a1)
{
  RECustomComponentGetType();
  result = RECustomComponentTypeGetContext();
  if (*(result + 32))
  {
    v3 = result + 8;

    return std::function<void ()(REComponent *)>::operator()(v3, a1);
  }

  return result;
}

uint64_t rf::AnchorDefinitionComponent::registerAnchorDefinitionComponent(void)::$_3::__invoke(uint64_t a1)
{
  RECustomComponentGetType();
  result = RECustomComponentTypeGetContext();
  if (*(result + 64))
  {
    v3 = result + 40;

    return std::function<void ()(REComponent *)>::operator()(v3, a1);
  }

  return result;
}

uint64_t rf::AnchorDefinitionComponent::registerAnchorDefinitionComponent(void)::$_4::__invoke(uint64_t a1)
{
  RECustomComponentGetType();
  result = RECustomComponentTypeGetContext();
  if (*(result + 96))
  {
    v3 = result + 72;

    return std::function<void ()(REComponent *)>::operator()(v3, a1);
  }

  return result;
}

uint64_t rf::AnchorDefinitionComponent::registerAnchorDefinitionComponent(void)::$_5::__invoke(uint64_t a1)
{
  RECustomComponentGetType();
  result = RECustomComponentTypeGetContext();
  if (*(result + 128))
  {
    v3 = result + 104;

    return std::function<void ()(REComponent *)>::operator()(v3, a1);
  }

  return result;
}

void RFPlacementComponentSetUp(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = rf::PlacementComponentTypeInfo::instance(v12);
  v17[0] = &unk_28740ADA0;
  v17[1] = MEMORY[0x26670D530](v9);
  v17[3] = v17;
  v16[0] = &unk_28740AE30;
  v16[1] = MEMORY[0x26670D530](v10);
  v16[3] = v16;
  v15[0] = &unk_28740AEC0;
  v15[1] = MEMORY[0x26670D530](v11);
  v15[3] = v15;
  v14[0] = &unk_28740AF40;
  v14[1] = MEMORY[0x26670D530](v12);
  v14[3] = v14;
  rf::PlacementComponentTypeInfo::initWithType(v13, a1, v17, v16, v15, v14);
  std::__function::__value_func<RESRT ()(REComponent *)>::~__value_func[abi:ne200100](v14);
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v15);
  std::__function::__value_func<BOOL ()(REComponent *)>::~__value_func[abi:ne200100](v16);
  std::__function::__value_func<unsigned char const* ()(REComponent *)>::~__value_func[abi:ne200100](v17);
}

void sub_261849058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  std::__function::__value_func<RESRT ()(REComponent *)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<BOOL ()(REComponent *)>::~__value_func[abi:ne200100](va2);
  std::__function::__value_func<unsigned char const* ()(REComponent *)>::~__value_func[abi:ne200100](v7 - 88);

  _Unwind_Resume(a1);
}

void std::__function::__func<RFPlacementComponentSetUp::$_0,std::allocator<RFPlacementComponentSetUp::$_0>,unsigned char const* ()(REComponent *)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<RFPlacementComponentSetUp::$_0,std::allocator<RFPlacementComponentSetUp::$_0>,unsigned char const* ()(REComponent *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28740ADA0;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RFPlacementComponentSetUp::$_0,std::allocator<RFPlacementComponentSetUp::$_0>,unsigned char const* ()(REComponent *)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<RFPlacementComponentSetUp::$_0,std::allocator<RFPlacementComponentSetUp::$_0>,unsigned char const* ()(REComponent *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RFPlacementComponentSetUp::$_1,std::allocator<RFPlacementComponentSetUp::$_1>,BOOL ()(REComponent *)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<RFPlacementComponentSetUp::$_1,std::allocator<RFPlacementComponentSetUp::$_1>,BOOL ()(REComponent *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28740AE30;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RFPlacementComponentSetUp::$_1,std::allocator<RFPlacementComponentSetUp::$_1>,BOOL ()(REComponent *)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<RFPlacementComponentSetUp::$_1,std::allocator<RFPlacementComponentSetUp::$_1>,BOOL ()(REComponent *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RFPlacementComponentSetUp::$_2,std::allocator<RFPlacementComponentSetUp::$_2>,void ()(REComponent *)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<RFPlacementComponentSetUp::$_2,std::allocator<RFPlacementComponentSetUp::$_2>,void ()(REComponent *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28740AEC0;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RFPlacementComponentSetUp::$_2,std::allocator<RFPlacementComponentSetUp::$_2>,void ()(REComponent *)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<RFPlacementComponentSetUp::$_2,std::allocator<RFPlacementComponentSetUp::$_2>,void ()(REComponent *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RFPlacementComponentSetUp::$_3,std::allocator<RFPlacementComponentSetUp::$_3>,RESRT ()(REComponent *)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<RFPlacementComponentSetUp::$_3,std::allocator<RFPlacementComponentSetUp::$_3>,RESRT ()(REComponent *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28740AF40;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RFPlacementComponentSetUp::$_3,std::allocator<RFPlacementComponentSetUp::$_3>,RESRT ()(REComponent *)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<RFPlacementComponentSetUp::$_3,std::allocator<RFPlacementComponentSetUp::$_3>,RESRT ()(REComponent *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t rf::detail::insertRoomAnchorsInto@<X0>(uint64_t result@<X0>, rf::data_flow::RFUUID **a2@<X1>, const void **a3@<X8>)
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
      v7 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>((*v6 + 248), v4);
      v8 = rf::realityFusionLogObject(v7);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        if (v9)
        {
          rf::data_flow::RFUUID::string(__p, v4);
          v10 = __p;
          if (v27 < 0)
          {
            v10 = __p[0];
          }

          *buf = 136446210;
          v29 = v10;
          v11 = v8;
          v12 = "ARState: Adding Room Anchor Again %{public}s";
LABEL_12:
          _os_log_impl(&dword_2617CB000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
          if (v27 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      else if (v9)
      {
        rf::data_flow::RFUUID::string(__p, v4);
        v13 = __p;
        if (v27 < 0)
        {
          v13 = __p[0];
        }

        *buf = 136446210;
        v29 = v13;
        v11 = v8;
        v12 = "ARState: Adding Room Anchor %{public}s";
        goto LABEL_12;
      }

      v14 = a3[1];
      v15 = a3[2];
      if (v14 >= v15)
      {
        v18 = *a3;
        v19 = v14 - *a3;
        v20 = v19 >> 5;
        v21 = (v19 >> 5) + 1;
        if (v21 >> 59)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v22 = v15 - v18;
        if (v22 >> 4 > v21)
        {
          v21 = v22 >> 4;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFE0)
        {
          v21 = 0x7FFFFFFFFFFFFFFLL;
        }

        if (v21)
        {
          std::allocator<rf::data_flow::RFUUID>::allocate_at_least[abi:ne200100](a3, v21);
        }

        v23 = (32 * v20);
        v24 = *(v4 + 1);
        *v23 = *v4;
        v23[1] = v24;
        v17 = (32 * v20 + 32);
        memcpy(0, v18, v19);
        v25 = *a3;
        *a3 = 0;
        a3[1] = v17;
        a3[2] = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        v16 = *(v4 + 1);
        *v14 = *v4;
        *(v14 + 1) = v16;
        v17 = v14 + 32;
      }

      a3[1] = v17;
      result = std::unordered_map<rf::data_flow::RFUUID,rf::data_flow::Room,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,rf::data_flow::Room>>>::insert_or_assign[abi:ne200100]<rf::data_flow::Room&>((*v6 + 248), v4, v4);
      v4 = (v4 + 912);
    }

    while (v4 != v5);
  }

  return result;
}

void sub_261849A28(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<rf::data_flow::RFUUID,rf::data_flow::Room,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,rf::data_flow::Room>>>::insert_or_assign[abi:ne200100]<rf::data_flow::Room&>(void *a1, uint64_t a2, const rf::data_flow::Room *a3)
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
    operator new();
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

  return rf::data_flow::Room::operator=((v12 + 6), a3);
}

void sub_261849D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void rf::detail::updateRoomAnchorsAt(uint64_t a1@<X0>, const rf::data_flow::Room **a2@<X1>, const void **a3@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      if (std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>((*a1 + 248), v4))
      {
        v7 = a3[1];
        v8 = a3[2];
        if (v7 >= v8)
        {
          v13 = *a3;
          v14 = v7 - *a3;
          v15 = v14 >> 5;
          v16 = (v14 >> 5) + 1;
          if (v16 >> 59)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v17 = v8 - v13;
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
          v10 = (32 * v15 + 32);
          memcpy(0, v13, v14);
          v20 = *a3;
          *a3 = 0;
          a3[1] = v10;
          a3[2] = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          v9 = *(v4 + 1);
          *v7 = *v4;
          *(v7 + 1) = v9;
          v10 = v7 + 32;
        }

        a3[1] = v10;
        std::unordered_map<rf::data_flow::RFUUID,rf::data_flow::Room,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,rf::data_flow::Room>>>::insert_or_assign[abi:ne200100]<rf::data_flow::Room&>((*a1 + 248), v4, v4);
      }

      else
      {
        v11 = rf::realityFusionLogObject(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          rf::data_flow::RFUUID::string(__p, v4);
          v12 = __p;
          if (v22 < 0)
          {
            v12 = __p[0];
          }

          *buf = 136446210;
          v24 = v12;
          _os_log_impl(&dword_2617CB000, v11, OS_LOG_TYPE_DEFAULT, "ARState: Updating Room Anchor %{public}s that doesn't exist in ARState.", buf, 0xCu);
          if (v22 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      v4 = (v4 + 912);
    }

    while (v4 != v5);
  }
}

void sub_261849F60(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

rf *rf::detail::removeRoomAnchorsFrom@<X0>(rf *result@<X0>, rf::data_flow::RFUUID **a2@<X1>, uint64_t a3@<X8>)
{
  v42 = *MEMORY[0x277D85DE8];
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    return result;
  }

  v6 = result;
  v37 = a2[1];
  v36 = result;
  do
  {
    result = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>((*v6 + 248), v4);
    v7 = result;
    if (!result)
    {
      goto LABEL_55;
    }

    v8 = rf::realityFusionLogObject(result);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      rf::data_flow::RFUUID::string(__p, v4);
      v9 = v39 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v41 = v9;
      _os_log_impl(&dword_2617CB000, v8, OS_LOG_TYPE_DEFAULT, "ARState: Removing Room Anchors %{public}s", buf, 0xCu);
      if (SHIBYTE(v39) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v10 = *(v7 + 5);
    if (!v10)
    {
      if (*(v7 + 32))
      {
        v35 = *(v7 + 2);
      }

      else
      {
        v35 = (v7 + 16);
      }

      v10 = ((*v35 >> 2) + (*v35 << 6) + v35[1] + 2654435769) ^ *v35;
      *(v7 + 5) = v10;
    }

    v11 = *(a3 + 8);
    if (!*&v11)
    {
      goto LABEL_27;
    }

    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v14 = v10;
      if (v10 >= *&v11)
      {
        v14 = v10 % *&v11;
      }
    }

    else
    {
      v14 = (*&v11 - 1) & v10;
    }

    v15 = *(*a3 + 8 * v14);
    if (!v15 || (v16 = *v15) == 0)
    {
LABEL_27:
      operator new();
    }

    while (1)
    {
      v17 = v16[1];
      if (v17 == v10)
      {
        break;
      }

      if (v13 > 1)
      {
        if (v17 >= *&v11)
        {
          v17 %= *&v11;
        }
      }

      else
      {
        v17 &= *&v11 - 1;
      }

      if (v17 != v14)
      {
        goto LABEL_27;
      }

LABEL_26:
      v16 = *v16;
      if (!v16)
      {
        goto LABEL_27;
      }
    }

    if (!rf::data_flow::RFUUID::Equality::operator()(a3, (v16 + 2), v7 + 16))
    {
      goto LABEL_26;
    }

    v29 = *(v7 + 4);
    *(v16 + 3) = *(v7 + 3);
    *(v16 + 4) = v29;
    v30 = *(v7 + 5);
    v31 = *(v7 + 6);
    v32 = *(v7 + 8);
    *(v16 + 7) = *(v7 + 7);
    *(v16 + 8) = v32;
    *(v16 + 5) = v30;
    *(v16 + 6) = v31;
    v33 = *(v7 + 9);
    *(v7 + 18) = 0;
    *(v7 + 19) = 0;
    v34 = v16[19];
    *(v16 + 9) = v33;
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rf::data_flow::MeshBuffer,false>>((v16 + 20), v7 + 20);
    std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rf::data_flow::MeshBuffer,false>>((v16 + 24), v7 + 24);
    std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rf::data_flow::MeshBuffer,false>>((v16 + 28), v7 + 28);
    std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rf::data_flow::MeshBuffer,false>>((v16 + 32), v7 + 32);
    std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rf::data_flow::MeshBuffer,false>>((v16 + 36), v7 + 36);
    std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rf::data_flow::MeshBuffer,false>>((v16 + 40), v7 + 40);
    std::__optional_storage_base<rf::data_flow::RoomMesh,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rf::data_flow::RoomMesh,false>>((v16 + 44), v7 + 352);
    std::__optional_storage_base<rf::data_flow::RoomMesh,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rf::data_flow::RoomMesh,false>>((v16 + 69), v7 + 552);
    std::__optional_storage_base<rf::data_flow::RoomMesh,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rf::data_flow::RoomMesh,false>>((v16 + 94), v7 + 752);
    v6 = v36;
    v5 = v37;
    std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__erase_unique<rf::data_flow::RFUUID>((*v36 + 2552), v4);
    std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__erase_unique<rf::data_flow::RFUUID>((*v36 + 2592), v4);
    v18 = *v36;
    v19 = *(*v36 + 256);
    v20 = *(v7 + 1);
    v21 = vcnt_s8(v19);
    v21.i16[0] = vaddlv_u8(v21);
    if (v21.u32[0] > 1uLL)
    {
      if (v20 >= *&v19)
      {
        v20 %= *&v19;
      }
    }

    else
    {
      v20 &= *&v19 - 1;
    }

    v22 = v18[31];
    v23 = *(v22 + 8 * v20);
    do
    {
      v24 = v23;
      v23 = *v23;
    }

    while (v23 != v7);
    if (v24 == (v18 + 33))
    {
      goto LABEL_45;
    }

    v25 = *(v24 + 1);
    if (v21.u32[0] > 1uLL)
    {
      if (v25 >= *&v19)
      {
        v25 %= *&v19;
      }
    }

    else
    {
      v25 &= *&v19 - 1;
    }

    if (v25 != v20)
    {
LABEL_45:
      if (!*v7)
      {
        goto LABEL_46;
      }

      v26 = *(*v7 + 8);
      if (v21.u32[0] > 1uLL)
      {
        if (v26 >= *&v19)
        {
          v26 %= *&v19;
        }
      }

      else
      {
        v26 &= *&v19 - 1;
      }

      if (v26 != v20)
      {
LABEL_46:
        *(v22 + 8 * v20) = 0;
      }
    }

    v27 = *v7;
    if (*v7)
    {
      v28 = *(v27 + 8);
      if (v21.u32[0] > 1uLL)
      {
        if (v28 >= *&v19)
        {
          v28 %= *&v19;
        }
      }

      else
      {
        v28 &= *&v19 - 1;
      }

      if (v28 != v20)
      {
        *(v18[31] + 8 * v28) = v24;
        v27 = *v7;
      }
    }

    *v24 = v27;
    *v7 = 0;
    --v18[34];
    __p[0] = v7;
    __p[1] = v18 + 31;
    LOBYTE(v39) = 1;
    memset(&v39 + 1, 0, 7);
    result = std::unique_ptr<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,void *>>>>::~unique_ptr[abi:ne200100](__p);
LABEL_55:
    v4 = (v4 + 32);
  }

  while (v4 != v5);
  return result;
}

void sub_26184A548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,void *>>>>::~unique_ptr[abi:ne200100](va);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::Room>>>::~__hash_table(v11);
  _Unwind_Resume(a1);
}

void std::__optional_destruct_base<rf::data_flow::RoomMesh,false>::reset[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 192) == 1)
  {
    if (*(a1 + 184) == 1)
    {
    }

    if (*(a1 + 152) == 1)
    {
    }

    if (*(a1 + 120) == 1)
    {
    }

    if (*(a1 + 88) == 1)
    {
    }

    if (*(a1 + 56) == 1)
    {
    }

    if (*(a1 + 24) == 1)
    {
    }

    *(a1 + 192) = 0;
  }
}

uint64_t std::__optional_storage_base<rf::data_flow::RoomMesh,false>::__construct[abi:ne200100]<rf::data_flow::RoomMesh>(uint64_t result, uint64_t *a2)
{
  *result = 0;
  *(result + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    v2 = *a2;
    *a2 = 0;
    *result = v2;
    *(result + 8) = *(a2 + 1);
    *(result + 24) = 1;
  }

  *(result + 32) = 0;
  *(result + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    v3 = a2[4];
    a2[4] = 0;
    *(result + 32) = v3;
    *(result + 40) = *(a2 + 5);
    *(result + 56) = 1;
  }

  *(result + 64) = 0;
  *(result + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    v4 = a2[8];
    a2[8] = 0;
    *(result + 64) = v4;
    *(result + 72) = *(a2 + 9);
    *(result + 88) = 1;
  }

  *(result + 96) = 0;
  *(result + 120) = 0;
  if (*(a2 + 120) == 1)
  {
    v5 = a2[12];
    a2[12] = 0;
    *(result + 96) = v5;
    *(result + 104) = *(a2 + 13);
    *(result + 120) = 1;
  }

  *(result + 128) = 0;
  *(result + 152) = 0;
  if (*(a2 + 152) == 1)
  {
    v6 = a2[16];
    a2[16] = 0;
    *(result + 128) = v6;
    *(result + 136) = *(a2 + 17);
    *(result + 152) = 1;
  }

  *(result + 160) = 0;
  *(result + 184) = 0;
  if (*(a2 + 184) == 1)
  {
    v7 = a2[20];
    a2[20] = 0;
    *(result + 160) = v7;
    *(result + 168) = *(a2 + 21);
    *(result + 184) = 1;
  }

  *(result + 192) = 1;
  return result;
}

__n128 std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rf::data_flow::MeshBuffer,false>>(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (*(a1 + 24))
    {
      v4 = *a2;
      *a2 = 0;
      v5 = *a1;
      *a1 = v4;

      result = *(a2 + 1);
      *(a1 + 8) = result;
    }
  }

  else if (*(a1 + 24))
  {

    *(a1 + 24) = 0;
  }

  else
  {
    v7 = *a2;
    *a2 = 0;
    *a1 = v7;
    result = *(a2 + 1);
    *(a1 + 8) = result;
    *(a1 + 24) = 1;
  }

  return result;
}

void std::__optional_storage_base<rf::data_flow::RoomMesh,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rf::data_flow::RoomMesh,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 192) == *(a2 + 192))
  {
    if (*(a1 + 192))
    {
      std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rf::data_flow::MeshBuffer,false>>(a1, a2);
      std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rf::data_flow::MeshBuffer,false>>(a1 + 32, (a2 + 32));
      std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rf::data_flow::MeshBuffer,false>>(a1 + 64, (a2 + 64));
      std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rf::data_flow::MeshBuffer,false>>(a1 + 96, (a2 + 96));
      std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rf::data_flow::MeshBuffer,false>>(a1 + 128, (a2 + 128));

      std::__optional_storage_base<rf::data_flow::MeshBuffer,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rf::data_flow::MeshBuffer,false>>(a1 + 160, (a2 + 160));
    }
  }

  else if (*(a1 + 192))
  {

    std::__optional_destruct_base<rf::data_flow::RoomMesh,false>::reset[abi:ne200100](a1);
  }

  else
  {

    std::__optional_storage_base<rf::data_flow::RoomMesh,false>::__construct[abi:ne200100]<rf::data_flow::RoomMesh>(a1, a2);
  }
}

rf::data_flow::consumer::AnchorManagementConsumer *rf::data_flow::consumer::AnchorManagementConsumer::AnchorManagementConsumer(rf::data_flow::consumer::AnchorManagementConsumer *this, const rf::data_flow::consumer::AnchorManagementConfig *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_28740AFD0;
  *(this + 24) = 0;
  std::__function::__value_func<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::__value_func[abi:ne200100](this + 32, a2);
  v4 = *(a2 + 8);
  *(this + 67) = *(a2 + 35);
  *(this + 16) = v4;
  std::__function::__value_func<rf::data_flow::RFUUID ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>)>::__value_func[abi:ne200100](this + 72, a2 + 40);
  std::__function::__value_func<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::__value_func[abi:ne200100](this + 104, a2 + 72);
  std::__function::__value_func<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::__value_func[abi:ne200100](this + 136, a2 + 104);
  v5 = *(a2 + 20);
  if (!v5)
  {
    goto LABEL_4;
  }

  if (v5 != (a2 + 136))
  {
    v5 = (*(*v5 + 16))(v5);
LABEL_4:
    *(this + 24) = v5;
    goto LABEL_6;
  }

  *(this + 24) = this + 168;
  (*(**(a2 + 20) + 24))(*(a2 + 20), this + 168);
LABEL_6:
  std::__function::__value_func<void ()(NSSet<ARReferenceImage *> *)>::__value_func[abi:ne200100](this + 200, a2 + 168);
  v6 = *(a2 + 25);
  v7 = *(a2 + 208);
  *(this + 248) = 0u;
  *(this + 240) = v7;
  *(this + 29) = v6;
  *(this + 264) = 0u;
  *(this + 70) = 1065353216;
  *(this + 38) = 0;
  *(this + 156) = 0;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 88) = 1065353216;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 98) = 1065353216;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 108) = 1065353216;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 118) = 1065353216;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 128) = 1065353216;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 138) = 1065353216;
  *(this + 70) = 0;
  *(this + 284) = 0;
  *(this + 72) = &__block_literal_global_18;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 154) = 1065353216;
  std::string::basic_string[abi:ne200100]<0>(v22, "");
  rf::UserDefaults::UserDefaults(&v24, v22);
  std::string::basic_string[abi:ne200100]<0>(__p, "anchorDirtyThreshold");
  v8 = rf::UserDefaults::floatValue(&v24, __p);
  if ((v8 & 0x100000000) != 0)
  {
    v9 = *&v8;
  }

  else
  {
    v9 = 0.001;
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  rf::UserDefaults::~UserDefaults(&v24);
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  *(this + 156) = v9;
  std::string::basic_string[abi:ne200100]<0>(v22, "");
  rf::UserDefaults::UserDefaults(&v24, v22);
  std::string::basic_string[abi:ne200100]<0>(__p, "anchoringUpdateCountThreshold");
  v10 = rf::UserDefaults::uintValue(&v24, __p);
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = 50;
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  rf::UserDefaults::~UserDefaults(&v24);
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  *(this + 79) = v12;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 168) = 1065353216;
  std::string::basic_string[abi:ne200100]<0>(v22, "");
  v13 = rf::UserDefaults::UserDefaults(__p, v22);
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  v14 = rf::helpers::kCameraIdentifier(v13);
  v15 = std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__emplace_unique_key_args<rf::data_flow::RFUUID,rf::data_flow::RFUUID const&>(this + 65, v14, v14);
  v16 = rf::helpers::kHeadIdentifier(v15);
  v17 = std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__emplace_unique_key_args<rf::data_flow::RFUUID,rf::data_flow::RFUUID const&>(this + 65, v16, v16);
  v18 = rf::helpers::kBodyIdentifier(v17);
  std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__emplace_unique_key_args<rf::data_flow::RFUUID,rf::data_flow::RFUUID const&>(this + 65, v18, v18);
  rf::UserDefaults::~UserDefaults(__p);
  return this;
}

void sub_26184ABCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::__function::__value_func<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::~__value_func[abi:ne200100](v22 + 136);
  std::__function::__value_func<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::~__value_func[abi:ne200100](v22 + 104);
  std::__function::__value_func<rf::data_flow::RFUUID ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>)>::~__value_func[abi:ne200100](v22 + 72);
  std::__function::__value_func<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::~__value_func[abi:ne200100](v22 + 32);
  _Unwind_Resume(a1);
}

uint64_t rf::data_flow::consumer::AnchorManagementConsumer::registerShadowClusterUpdateHandler(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 16) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  result = MEMORY[0x26670CB90](*(a2 + 8));
  if (result)
  {
    result = REShadowManagerSetShadowClusterRootUpdateHandlerWithDirection();
    *(a1 + 312) = 1;
  }

  return result;
}

uint64_t ___ZN2rf9data_flow8consumer24AnchorManagementConsumer34registerShadowClusterUpdateHandlerERKNS_15ConsumerRequestE_block_invoke(uint64_t a1, float32x4_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = *(*(a1 + 32) + 16);
  REComponentGetEntity();
  if (*(v6 + 1680) == 1)
  {
    v7 = *(v6 + 1696);
  }

  else
  {
    v7 = 0;
  }

  REAnchorShadowMarkerComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  REShadowClusterRootComponentGetClusterBound();
  v16 = vsubq_f32(v15, v14).u64[0];
  v16.f32[0] = fmaxf(vmuls_lane_f32(0.5, v16, 1), 0.03);
  v17 = vaddq_f32(v15, v14);
  v15.i64[0] = 0x3F0000003F000000;
  v15.i64[1] = 0x3F0000003F000000;
  v18 = vmlsq_lane_f32(vmulq_f32(v17, v15), a2, v16, 0);
  v19 = 0xFF0201u >> (8 * a5);
  v22[0] = v18;
  v22[1] = a2;
  if (a5 >= 3)
  {
    LOBYTE(v19) = 0;
  }

  v23 = v19;
  v24 = -1;
  v25 = 0;
  rf::helpers::getNearestPlaneAnchor(v22, v6 + 144, v8, v9, v10, v11, v12, v13, v26, v18);
  if (v28 != 1)
  {
    if (v7)
    {
      goto LABEL_10;
    }

LABEL_12:
    result = REAnchorShadowMarkerSetPlaneExists();
    goto LABEL_13;
  }

  if (v27 != 1)
  {
    goto LABEL_12;
  }

LABEL_10:
  result = REAnchorShadowMarkerSetPointAndNormal();
  if (v7)
  {
    result = REAnchorShadowMarkerSetFloorPlane();
  }

LABEL_13:
  if (v28 == 1)
  {
    return std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v26);
  }

  return result;
}

void sub_26184AF78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (a55 == 1)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t rf::data_flow::consumer::AnchorManagementConsumer::doAnchoring(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1[69] == 1 && (a1[232] & 1) == 0)
  {
    rf::data_flow::consumer::AnchorManagementConsumer::removeLocalPeerAnchorComponents(a1, a3);
  }

  if (*(a4 + 3984) == 1)
  {
    a1[568] = 1;
  }

  result = rf::data_flow::consumer::AnchorManagementConsumer::updateAnchorComponents(a1, *(a2 + 8), *(a2 + 16), a3, a4);
  if (a1[569] == 1)
  {
    *(a1 + 284) = 0;
  }

  return result;
}

uint64_t rf::data_flow::consumer::AnchorManagementConsumer::removeLocalPeerAnchorComponents(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  REAnchorComponentGetComponentType();
  result = RESceneGetComponentsOfClass();
  if (v4)
  {
    v5 = v4;
    do
    {
      result = REAnchorComponentGetAnchoredLocally();
      if ((result & 1) == 0)
      {
        Entity = REComponentGetEntity();
        result = rf::helpers::isRemotelyOwned(Entity);
        if ((result & 1) == 0)
        {
          v7 = rf::realityFusionLogObject(result);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            Name = REEntityGetName();
            *buf = 136315138;
            v10 = Name;
            _os_log_impl(&dword_2617CB000, v7, OS_LOG_TYPE_DEFAULT, "Entity %s anchor added/modified by local peer - removing.", buf, 0xCu);
          }

          result = rf::data_flow::consumer::AnchorManagementConsumer::unanchorEntity(a1, Entity, 1u);
        }
      }

      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t rf::data_flow::consumer::AnchorManagementConsumer::updateAnchorComponents(unsigned __int8 *a1, uint64_t a2, BOOL a3, uint64_t a4, uint64_t a5)
{
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  RESceneUnderstandingRootComponentGetComponentType();
  RESceneGetComponentsOfClass();
  v10 = v9;
  if (RESceneGetECSManagerNullable())
  {
    if (REECSManagerGetServiceLocator())
    {
      if (MEMORY[0x26670CB90]())
      {
        ShadowPatchFlatteningEnabled = REShadowManagerGetShadowPatchFlatteningEnabled();
        if ((ShadowPatchFlatteningEnabled & 1) == 0)
        {
          if (v10)
          {
            REComponentGetEntity();
            RESceneUnderstandingRenderOptionsComponentGetComponentType();
            if (REEntityGetComponentByClass())
            {
              RESceneUnderstandingRenderOptionsComponentIsShadowEnabled();
              goto LABEL_16;
            }

            v12 = rf::realityFusionLogObject(0);
            if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_15;
            }

            *buf = 0;
            v13 = "The root entity should have render option component!";
          }

          else
          {
            v12 = rf::realityFusionLogObject(ShadowPatchFlatteningEnabled);
            if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
LABEL_15:

              goto LABEL_16;
            }

            *buf = 0;
            v13 = "We should have a root entity!";
          }

          _os_log_impl(&dword_2617CB000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
          goto LABEL_15;
        }
      }
    }
  }

LABEL_16:
  REAnchoringComponentGetComponentType();
  ComponentsOfClass = RESceneGetComponentsOfClass();
  v16 = ComponentsOfClass;
  v17 = v15;
  if (v15)
  {
    v18 = 8 * v15;
    v19 = ComponentsOfClass;
    do
    {
      v19 += 8;
      REAnchoringComponentInitializeWorldTransformIfNeeded();
      v18 -= 8;
    }

    while (v18);
  }

  if ((a1[232] & 1) == 0)
  {
    RECoordinateSpaceDefinitionComponentGetComponentType();
    v20 = RESceneGetComponentsOfClass();
    *buf = 0;
    if (v21)
    {
      v22 = v20;
      v23 = 8 * v21;
      do
      {
        Entity = REComponentGetEntity();
        REAnchorComponentGetComponentType();
        ComponentByClass = REEntityGetComponentByClass();
        REAnchoringComponentGetComponentType();
        v26 = REEntityGetComponentByClass();
        if (v26)
        {
          rf::data_flow::consumer::AnchorManagementConsumer::matchOrUpdateAnchorComponent(a1, a4, Entity, ComponentByClass, v26, a5, buf);
        }

        v22 += 8;
        v23 -= 8;
      }

      while (v23);
    }
  }

  v84 = 0;
  if (a3 && MEMORY[0x26670CB30](a2))
  {
    v79 = 0;
    v27 = REDepthMitigationServiceIsEnabled() ^ 1;
    if (!v17)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v79 = 1;
    v27 = 1;
    if (!v17)
    {
      goto LABEL_28;
    }
  }

  v81 = 0;
  v28 = &v16[v17];
  do
  {
    v29 = REComponentGetEntity();
    RECoordinateSpaceDefinitionComponentGetComponentType();
    if (!REEntityGetComponentByClass())
    {
      REAnchorComponentGetComponentType();
      v30 = REEntityGetComponentByClass();
      REAnchorComponentGetComponentType();
      v31 = REEntityGetComponentByClass();
      IsAnchoredOnClientForComponent = rf::data_flow::consumer::AnchorManagementConsumer::updateReceiveIsAnchoredOnClientForComponent(a1, v29, v31);
      if (((a1[232] | v27) & 1) == 0)
      {
        v33 = rf::PlacementComponentTypeInfo::instance(IsAnchoredOnClientForComponent);
        if (*v33)
        {
          v34 = v33;
          CustomComponent = REEntityGetCustomComponent();
          if (v30)
          {
            if (CustomComponent)
            {
              v81 += std::function<BOOL ()(REComponent *)>::operator()((v34 + 5), CustomComponent);
            }
          }
        }
      }

      v36 = rf::helpers::needAnchoringInClientProcessForEntity(a1 + 233, v29);
      v37 = rf::helpers::needAnchoringInServerProcessForEntity(v29);
      REClientAnchorSyncComponentGetComponentType();
      v38 = REEntityGetComponentByClass();
      if (a1[232])
      {
        v39 = v36;
      }

      else
      {
        v39 = v37;
      }

      if (v39 == 1)
      {
        rf::data_flow::consumer::AnchorManagementConsumer::matchOrUpdateAnchorComponent(a1, a4, v29, v30, *v16, a5, &v84);
      }

      else if ((a1[232] & 1) == 0 && v38)
      {
        isAnchoringTypeAuthorizedForPeer = rf::helpers::isAnchoringTypeAuthorizedForPeer(*v16, (a5 + 208));
        if (REClientAnchorSyncComponentIsAnchored() && isAnchoringTypeAuthorizedForPeer)
        {
          if (rf::CoordinateSpaceTracker::findCoordinateSpaceDefinitionEntity(v29))
          {
            REAnchoringComponentGetComponentType();
            if (REEntityGetComponentByClass())
            {
              if (REAnchoringComponentGetDescriptorType() - 1 <= 4)
              {
                REEntityCalculateWorldMatrix4x4F();
                v74 = v41;
                v76 = v42;
                v72 = v44;
                v73 = v43;
                REClientAnchorSyncComponentGetAnchorTransform();
                v45 = 0;
                v85[0] = v46;
                v85[1] = v47;
                v85[2] = v48;
                v85[3] = v49;
                do
                {
                  *&buf[v45 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v74, COERCE_FLOAT(v85[v45])), v76, *&v85[v45], 1), v73, v85[v45], 2), v72, v85[v45], 3);
                  ++v45;
                }

                while (v45 != 4);
                rf::data_flow::consumer::AnchorManagementConsumer::updateAnchorComponentFromClientAnchorSyncComponent(REEntity *,REComponent *)::appManagedAnchorIdentifier = -1;
                *algn_27FEB9ED8 = -1;
                REAnchorComponentGetComponentType();
                v50 = REEntityGetComponentByClass();
                if (v50)
                {
                  RERetain();
                  v51 = v50;
                }

                else
                {
                  REAnchorComponentGetComponentType();
                  v51 = REComponentCreateByClass();
                  rf::data_flow::consumer::AnchorManagementConsumer::updateReceiveIsAnchoredOnClientForComponent(a1, v29, v51);
                }

                REAnchorComponentSetAnchoredLocally();
                REAnchorComponentSetWorldTransform();
                REAnchorComponentSetAnchorIdentifier();
                if (!v50)
                {
                  RENetworkComponentGetComponentType();
                  v52 = REEntityGetComponentByClass();
                  if (v52)
                  {
                    MEMORY[0x26670C630](v52, v51);
                  }

                  REEntityAddExistingComponent();
                  rf::helpers::publishAnchorStateEventDidAnchor(v29, 0);
                }

                IsAnchorExternal = REAnchorComponentGetIsAnchorExternal();
                IsExternal = REClientAnchorSyncComponentIsExternal();
                if (IsAnchorExternal != IsExternal)
                {
                  if (IsExternal)
                  {
                    rf::data_flow::consumer::AnchorManagementConsumer::externalizeEntity(a1, v29, v51, 0);
                  }

                  else
                  {
                    rf::data_flow::consumer::AnchorManagementConsumer::relocalizeEntity(a1, v29, v51, 0);
                  }
                }

                RERelease();
              }
            }
          }
        }

        else
        {
          REAnchorComponentGetComponentType();
          if (REEntityGetComponentByClass())
          {
            rf::data_flow::consumer::AnchorManagementConsumer::unanchorEntity(a1, v29, 1u);
          }
        }
      }
    }

    ++v16;
  }

  while (v16 != v28);
LABEL_28:
  if (((v79 | a1[232]) & 1) == 0)
  {
    REDepthMitigationServiceSetPlacementComponentUpdateCount();
    if ((a1[232] & 1) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_70;
  }

  if (a1[232])
  {
LABEL_70:
    REAnchoringComponentGetComponentType();
    v55 = RESceneGetComponentsOfClass();
    if (!v56)
    {
      goto LABEL_87;
    }

    v57 = v55;
    v58 = 8 * v56;
    v75 = vdupq_n_s32(0x3727C5ACu);
    do
    {
      DescriptorType = REAnchoringComponentGetDescriptorType();
      v60 = REComponentGetEntity();
      if (!rf::helpers::needAnchoringInClientProcessForEntity(a1 + 233, v60))
      {
        goto LABEL_74;
      }

      RECoordinateSpaceDefinitionComponentGetComponentType();
      if (REEntityGetComponentByClass())
      {
        goto LABEL_74;
      }

      REClientAnchorSyncComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      REAnchorComponentGetComponentType();
      v61 = REEntityGetComponentByClass();
      if ((v61 != 0) != REClientAnchorSyncComponentIsAnchored())
      {
        REClientAnchorSyncComponentSetIsAnchored();
        RENetworkMarkComponentDirty();
      }

      v62 = REClientAnchorSyncComponentIsExternal();
      if (v61)
      {
        if (v62 == REAnchorComponentGetIsAnchorExternal())
        {
          if ((DescriptorType - 1) <= 4)
          {
            goto LABEL_85;
          }

          goto LABEL_74;
        }
      }

      else if ((v62 & 1) == 0)
      {
        goto LABEL_74;
      }

      REClientAnchorSyncComponentSetIsExternal();
      RENetworkMarkComponentDirty();
      if ((DescriptorType - 1) <= 4 && v61)
      {
LABEL_85:
        REAnchorComponentGetWorldTransform();
        v78 = v64;
        v80 = v63;
        v77 = v65;
        v82 = v66;
        REClientAnchorSyncComponentGetAnchorTransform();
        if ((vminvq_u32(vandq_s8(vandq_s8(vcgeq_f32(v75, vabdq_f32(v80, v67)), vcgeq_f32(v75, vabdq_f32(v78, v68))), vandq_s8(vcgeq_f32(v75, vabdq_f32(v77, v69)), vcgeq_f32(v75, vabdq_f32(v82, v70))))) & 0x80000000) == 0)
        {
          REClientAnchorSyncComponentSetAnchorTransform();
          RENetworkMarkComponentDirty();
        }
      }

LABEL_74:
      v57 += 8;
      v58 -= 8;
    }

    while (v58);
  }

LABEL_87:
  result = re::internal::enableSignposts(0, 0);
  if (result)
  {
    return kdebug_trace();
  }

  return result;
}

uint64_t rf::data_flow::consumer::AnchorManagementConsumer::consumeLatestUpdate(uint64_t result, uint64_t a2)
{
  v42 = *MEMORY[0x277D85DE8];
  if (*(a2 + 32) != 1)
  {
    return result;
  }

  v3 = result;
  v4 = *(result + 16);
  v5 = *(a2 + 24);
  if (*(a2 + 16) == 1)
  {
    result = rf::data_flow::consumer::AnchorManagementConsumer::setUpSceneEventSubscriptions(result, *(a2 + 8), v5, v4 + 64);
  }

  if ((v3[29].i8[0] & 1) == 0)
  {
    v6 = *(a2 + 16);
    if (v3[39].i8[0] & 1) == 0 && (*(a2 + 16))
    {
      result = rf::data_flow::consumer::AnchorManagementConsumer::registerShadowClusterUpdateHandler(v3, a2);
      v6 = *(a2 + 16);
    }

    if (v6)
    {
      result = *(a2 + 8);
      if (result)
      {
        result = MEMORY[0x26670CB30]();
        if (result)
        {
          if ((*(a2 + 32) & 1) == 0)
          {
            goto LABEL_30;
          }

          if (rf::helpers::getInternalActiveCamera(*(a2 + 24)))
          {
            REEntityGetComponent();
            RETransformComponentGetWorldMatrix4x4F();
            result = REDepthMitigationServiceSetCameraTransform();
          }

          else
          {
            CameraAnchor = rf::helpers::getCameraAnchor((v4 + 144));
            v9 = *(CameraAnchor + 1);
            v8 = *(CameraAnchor + 2);
            v29 = *CameraAnchor;
            v30 = v9;
            v31 = v8;
            v11 = *(CameraAnchor + 4);
            v10 = *(CameraAnchor + 5);
            v12 = *(CameraAnchor + 3);
            *(v34 + 9) = *(CameraAnchor + 89);
            v33 = v11;
            v34[0] = v10;
            v32 = v12;
            v35 = CameraAnchor[14];
            v36 = *(CameraAnchor + 8);
            v13 = *(CameraAnchor + 9);
            v14 = *(CameraAnchor + 10);
            v15 = *(CameraAnchor + 12);
            v39 = *(CameraAnchor + 11);
            v40 = v15;
            v37 = v13;
            v38 = v14;
            v41 = 0;
            rf::helpers::getTransformFromAnchor(&v29);
            REDepthMitigationServiceSetCameraTransform();
            result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v29);
          }
        }
      }
    }

    if (*(a2 + 16) != 1)
    {
      goto LABEL_22;
    }

    result = *(a2 + 8);
    if (!result)
    {
      goto LABEL_22;
    }

    result = MEMORY[0x26670CB60]();
    if (!result)
    {
      goto LABEL_22;
    }

    if (*(a2 + 32))
    {
      if (rf::helpers::getInternalActiveCamera(*(a2 + 24)))
      {
        REEntityGetComponent();
        RETransformComponentGetWorldMatrix4x4F();
        result = REOcclusionServiceSetCameraPoseForCurrentFrame();
      }

      else
      {
        v16 = rf::helpers::getCameraAnchor((v4 + 144));
        v18 = *(v16 + 1);
        v17 = *(v16 + 2);
        v29 = *v16;
        v30 = v18;
        v31 = v17;
        v20 = *(v16 + 4);
        v19 = *(v16 + 5);
        v21 = *(v16 + 3);
        *(v34 + 9) = *(v16 + 89);
        v33 = v20;
        v34[0] = v19;
        v32 = v21;
        v35 = v16[14];
        v36 = *(v16 + 8);
        v22 = *(v16 + 9);
        v23 = *(v16 + 10);
        v24 = *(v16 + 12);
        v39 = *(v16 + 11);
        v40 = v24;
        v37 = v22;
        v38 = v23;
        v41 = 0;
        rf::helpers::getTransformFromAnchor(&v29);
        REOcclusionServiceSetCameraPoseForCurrentFrame();
        result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v29);
      }

LABEL_22:
      rf::data_flow::consumer::AnchorManagementConsumer::updateAnchorDefinitionComponents(result, v5, (v4 + 144));
      goto LABEL_23;
    }

LABEL_30:
    std::__throw_bad_optional_access[abi:ne200100]();
  }

LABEL_23:
  rf::data_flow::consumer::AnchorManagementConsumer::updateImageAnchorReference(v3, v5);
  result = rf::data_flow::consumer::AnchorManagementConsumer::doAnchoring(v3, a2, v5, v4 + 64);
  if (v3[29].i8[0] == 1)
  {
    REClientAnchorSyncComponentGetComponentType();
    result = RESceneGetComponentsOfClass();
    if (v25)
    {
      v26 = result;
      v27 = 8 * v25;
      do
      {
        Entity = REComponentGetEntity();
        result = rf::helpers::needAnchoringInClientProcessForEntity(&v3[29] + 1, Entity);
        if ((result & 1) == 0)
        {
          REClientAnchorSyncComponentGetComponentType();
          result = REEntityRemoveComponentByClass();
        }

        v26 += 8;
        v27 -= 8;
      }

      while (v27);
    }
  }

  return result;
}

void sub_26184BBF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *rf::data_flow::consumer::AnchorManagementConsumer::setUpSceneEventSubscriptions(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a3;
  if (a2 && a3)
  {
    v5 = result;
    if (!std::__hash_table<std::__hash_value_type<REScene *,std::set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::set<REEntity *>>>>::find<REScene *>(result + 80, &v15))
    {
      goto LABEL_6;
    }

    v11[0] = &v15;
    result = std::__hash_table<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>>>::__emplace_unique_key_args<REScene *,std::piecewise_construct_t const&,std::tuple<REScene * const&>,std::tuple<>>((v5 + 640), &v15, &std::piecewise_construct, v11);
    if ((result[15] & 1) == 0)
    {
      std::__hash_table<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>>>::__erase_unique<REScene *>((v5 + 640), &v15);
LABEL_6:
      MEMORY[0x26670CB50](a2);
      EventBus = REEngineGetEventBus();
      v7 = RESceneGetEventBus();
      v8 = rf::data_flow::consumer::AnchorManagementConsumer::sceneRemovalEventHandle(v5, v15, EventBus);
      v10 = v9;
      rf::data_flow::consumer::AnchorManagementConsumer::anchorComponentEventHandles(v12);
      v14 = v15;
      v11[0] = EventBus;
      v11[1] = v7;
      v12[8] = v8;
      v12[9] = v10;
      v13 = 1;
      std::__hash_table<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>>>::__emplace_unique_impl<std::piecewise_construct_t const&,std::tuple<REScene *>,std::tuple<REEventBus *,REEventBus *,std::array<RESubscriptionHandle,4ul>,RESubscriptionHandle,BOOL>>(v5 + 640);
    }
  }

  return result;
}

rf::AnchorDefinitionComponent *rf::data_flow::consumer::AnchorManagementConsumer::updateAnchorDefinitionComponents(rf::AnchorDefinitionComponent *a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  result = rf::AnchorDefinitionComponent::instance(a1);
  if (*result)
  {
    rf::AnchorDefinitionComponent::instance(result);
    ComponentsOfCustomType = RESceneGetComponentsOfCustomType();
    v7 = &ComponentsOfCustomType[v6];
    result = std::ranges::__find_if_impl[abi:ne200100]<std::__wrap_iter<REComponent **>,std::__wrap_iter<REComponent **>,std::reference_wrapper<rf::data_flow::consumer::AnchorManagementConsumer::updateAnchorDefinitionComponents(REScene *,std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const&)::$_0>,std::identity>(ComponentsOfCustomType, v7);
    if (v7 != result)
    {
      v8 = result;
      do
      {
        Object = RECustomComponentGetObject();
        Entity = REComponentGetEntity();
        v9 = Object;
        v26 = 0;
        v27 = 0;
        uuid_clear(uu);
        *uu = v9;
        v26 = 1;
        if (std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(a3, uu))
        {
          v10 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(a3, uu);
          if (!v10)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v22, (v10 + 6));
          SelfEnabled = REEntityGetSelfEnabled();
          if ((SelfEnabled & 1) == 0)
          {
            v12 = rf::realityFusionLogObject(SelfEnabled);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              Name = REEntityGetName();
              LODWORD(buf) = 136315138;
              *(&buf + 4) = Name;
              _os_log_impl(&dword_2617CB000, v12, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Enabling %s (a redefined anchor found).", &buf, 0xCu);
            }

            MEMORY[0x26670C3A0](Entity, 1);
            RENetworkMarkEntityMetadataDirty();
          }

          *&buf = &Object;
          *(&buf + 1) = &Entity;
          v21 = v8;
          if (v24 == -1)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          p_buf = &buf;
          (off_28740B038[v24])(&p_buf, v22);
          std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v22);
        }

        else
        {
          MEMORY[0x26670C3A0](Entity, 0);
          v14 = RENetworkMarkEntityMetadataDirty();
          v15 = rf::realityFusionLogObject(v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = REEntityGetName();
            *v22 = 136315138;
            v23 = v16;
            _os_log_impl(&dword_2617CB000, v15, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Disabling %s because it needs redifinition and there's no matching anchor in the state.", v22, 0xCu);
          }
        }

        result = std::ranges::__find_if_impl[abi:ne200100]<std::__wrap_iter<REComponent **>,std::__wrap_iter<REComponent **>,std::reference_wrapper<rf::data_flow::consumer::AnchorManagementConsumer::updateAnchorDefinitionComponents(REScene *,std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const&)::$_0>,std::identity>(v8 + 1, v7);
        v8 = result;
      }

      while (v7 != result);
    }
  }

  return result;
}

void sub_26184BFA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void rf::data_flow::consumer::AnchorManagementConsumer::updateImageAnchorReference(int8x8_t *a1, uint64_t a2)
{
  v120 = *MEMORY[0x277D85DE8];
  if (!*&a1[28])
  {
    return;
  }

  UniqueName = RESceneGetUniqueName();
  std::string::basic_string[abi:ne200100]<0>(v108, UniqueName);
  v3 = a1 + 73;
  v4 = std::__string_hash<char>::operator()[abi:ne200100](&a1[73], v108);
  v5 = a1[74];
  if (v5)
  {
    v6 = v4;
    v7 = vcnt_s8(v5);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4;
      if (v4 >= *&v5)
      {
        v9 = v4 % *&v5;
      }
    }

    else
    {
      v9 = (*&v5 - 1) & v4;
    }

    v10 = *(*v3 + 8 * v9);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v6 == v12)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100](v3, i + 2, v108))
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (v8 > 1)
          {
            if (v12 >= *&v5)
            {
              v12 %= *&v5;
            }
          }

          else
          {
            v12 &= *&v5 - 1;
          }

          if (v12 != v9)
          {
            break;
          }
        }
      }
    }
  }

  v105 = 0u;
  v106 = 0u;
  v107 = 1065353216;
  if (SHIBYTE(v109) < 0)
  {
    std::string::__init_copy_ctor_external(v116, v108[0], v108[1]);
    v15 = *(&v105 + 1);
    v16 = v105;
    v13 = *(&v106 + 1);
    v14 = v106;
    v17 = *&v107;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    *v116 = *v108;
    *&v116[16] = v109;
    v17 = 1.0;
  }

  v105 = 0uLL;
  *&v116[24] = v16;
  *&v117 = v15;
  *(&v117 + 1) = v14;
  *&v118 = v13;
  *(&v118 + 2) = v17;
  if (v13)
  {
    v18 = *(v14 + 8);
    if ((v15 & (v15 - 1)) != 0)
    {
      if (v18 >= v15)
      {
        v18 %= v15;
      }
    }

    else
    {
      v18 &= v15 - 1;
    }

    *(v16 + 8 * v18) = &v117 + 8;
    v106 = 0uLL;
  }

  v19 = std::__string_hash<char>::operator()[abi:ne200100](v3, v116);
  v20 = v19;
  v21 = a1[74];
  if (!*&v21)
  {
    goto LABEL_44;
  }

  v22 = vcnt_s8(v21);
  v22.i16[0] = vaddlv_u8(v22);
  v23 = v22.u32[0];
  if (v22.u32[0] > 1uLL)
  {
    v24 = v19;
    if (v19 >= *&v21)
    {
      v24 = v19 % *&v21;
    }
  }

  else
  {
    v24 = (*&v21 - 1) & v19;
  }

  v25 = *(*v3 + 8 * v24);
  if (!v25 || (v26 = *v25) == 0)
  {
LABEL_44:
    operator new();
  }

  while (1)
  {
    v27 = v26[1];
    if (v27 == v20)
    {
      break;
    }

    if (v23 > 1)
    {
      if (v27 >= *&v21)
      {
        v27 %= *&v21;
      }
    }

    else
    {
      v27 &= *&v21 - 1;
    }

    if (v27 != v24)
    {
      goto LABEL_44;
    }

LABEL_43:
    v26 = *v26;
    if (!v26)
    {
      goto LABEL_44;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v3, v26 + 2, v116))
  {
    goto LABEL_43;
  }

  std::__hash_table<std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ARReferenceImage * {__strong}>>>::~__hash_table(&v116[24]);
  if ((v116[23] & 0x80000000) != 0)
  {
    operator delete(*v116);
  }

  std::__hash_table<std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ARReferenceImage * {__strong}>>>::~__hash_table(&v105);
LABEL_48:
  v105 = 0u;
  v106 = 0u;
  v107 = 1065353216;
  REAnchoringComponentGetComponentType();
  RESceneGetComponentsOfClass();
  v29 = v28;
  if (!v28)
  {
    v103 = 0;
    goto LABEL_110;
  }

  v103 = 0;
  v30 = 0;
  while (2)
  {
    if (REAnchoringComponentGetDescriptorType() != 4)
    {
      goto LABEL_107;
    }

    REComponentGetEntity();
    REClientAnchorSyncComponentGetComponentType();
    ComponentByClass = REEntityGetComponentByClass();
    if ((a1[29].i8[0] & 1) == 0)
    {
      if (ComponentByClass)
      {
        goto LABEL_107;
      }
    }

    if (!REEntityIsEnabledInHierarchy())
    {
      goto LABEL_107;
    }

    v32 = REAnchoringComponentGetTrackingImageMTLTexture();
    if (!v32)
    {
      goto LABEL_106;
    }

    v101 = v32;
    if (!REAnchoringComponentGetDescriptorResourceStyle())
    {
      rf::getMessage("AnchorManagementConsumer: Image anchoring target should not have kREAnchoringResourceNone", &v112);
      rf::internal::logAssert(&v112);
      if (SHIBYTE(v113) < 0)
      {
        operator delete(v112);
      }

      rf::internal::debugBreakHandler(v95);
      v111 = 0;
      v118 = 0u;
      v119 = 0u;
      v117 = 0u;
      memset(v116, 0, sizeof(v116));
      v96 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      rf::getMessage("AnchorManagementConsumer: Image anchoring target should not have kREAnchoringResourceNone", &__p);
      if (v96)
      {
        v97 = 3;
      }

      else
      {
        v97 = 2;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v114 = 136315138;
      v115 = p_p;
      _os_log_send_and_compose_impl(v97, &v111, v116, 80, &dword_2617CB000, MEMORY[0x277D86220], 16, "RealityFusion Assert Fatal: %s", &v114);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      _os_crash_msg();
      __break(1u);
    }

    DescriptorResourceGroup = REAnchoringComponentGetDescriptorResourceGroup();
    v34 = strlen(DescriptorResourceGroup);
    DescriptorResourceName = REAnchoringComponentGetDescriptorResourceName();
    v36 = strlen(DescriptorResourceName);
    rf::helpers::getFullPath(DescriptorResourceGroup, v34, DescriptorResourceName, v36, &__p);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(&v105, &__p, &__p);
    *v116 = v108;
    v37 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v3, v108, v116);
    v38 = std::__string_hash<char>::operator()[abi:ne200100]((v37 + 5), &__p);
    v39 = v37[6];
    if (v39)
    {
      v40 = v38;
      v41 = vcnt_s8(v39);
      v41.i16[0] = vaddlv_u8(v41);
      v42 = v41.u32[0];
      if (v41.u32[0] > 1uLL)
      {
        v43 = v38;
        if (v38 >= *&v39)
        {
          v43 = v38 % *&v39;
        }
      }

      else
      {
        v43 = (*&v39 - 1) & v38;
      }

      v44 = *(v37[5] + v43);
      if (v44)
      {
        for (j = *v44; j; j = *j)
        {
          v46 = j[1];
          if (v40 == v46)
          {
            if (std::equal_to<std::string>::operator()[abi:ne200100]((v37 + 5), j + 2, &__p.__r_.__value_.__l.__data_))
            {
              v32 = v101;
              goto LABEL_103;
            }
          }

          else
          {
            if (v42 > 1)
            {
              if (v46 >= *&v39)
              {
                v46 %= *&v39;
              }
            }

            else
            {
              v46 &= *&v39 - 1;
            }

            if (v46 != v43)
            {
              break;
            }
          }
        }
      }
    }

    REAnchoringComponentGetTrackingImageWidth();
    v48 = v47;
    v49 = [MEMORY[0x277CBF758] imageWithMTLTexture:v101 options:0];
    v50 = a1[70];
    if (!v50)
    {
      v51 = [MEMORY[0x277CBF740] context];
      v52 = a1[70];
      a1[70] = v51;

      v50 = a1[70];
    }

    [v49 extent];
    v53 = [v50 createCGImage:v49 fromRect:?];
    *v116 = v108;
    v54 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&a1[73], v108, v116);
    v55 = [objc_alloc(MEMORY[0x277CE5348]) initWithCGImage:v53 orientation:2 physicalWidth:v48];
    v56 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v56 = __p.__r_.__value_.__r.__words[0];
    }

    v104 = v49;
    v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", v56];
    [v55 setName:v57];

    v59 = rf::realityFusionLogObject(v58);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v60 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v60 = __p.__r_.__value_.__r.__words[0];
      }

      *v116 = 136315138;
      *&v116[4] = v60;
      _os_log_impl(&dword_2617CB000, v59, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Adding reference image %s", v116, 0xCu);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v116, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      *v116 = __p;
    }

    v99 = v55;
    *&v116[24] = v99;
    v61 = std::__string_hash<char>::operator()[abi:ne200100]((v54 + 5), v116);
    v62 = v61;
    v63 = v54[6];
    if (!*&v63)
    {
      goto LABEL_99;
    }

    v64 = vcnt_s8(v63);
    v64.i16[0] = vaddlv_u8(v64);
    v65 = v64.u32[0];
    if (v64.u32[0] > 1uLL)
    {
      v66 = v61;
      if (v61 >= *&v63)
      {
        v66 = v61 % *&v63;
      }
    }

    else
    {
      v66 = (*&v63 - 1) & v61;
    }

    v67 = *(v54[5] + v66);
    if (!v67 || (v68 = *v67) == 0)
    {
LABEL_99:
      operator new();
    }

    while (2)
    {
      v69 = v68[1];
      if (v69 != v62)
      {
        if (v65 > 1)
        {
          if (v69 >= *&v63)
          {
            v69 %= *&v63;
          }
        }

        else
        {
          v69 &= *&v63 - 1;
        }

        if (v69 != v66)
        {
          goto LABEL_99;
        }

        goto LABEL_98;
      }

      if (!std::equal_to<std::string>::operator()[abi:ne200100]((v54 + 5), v68 + 2, v116))
      {
LABEL_98:
        v68 = *v68;
        if (!v68)
        {
          goto LABEL_99;
        }

        continue;
      }

      break;
    }

    v32 = v101;
    if ((v116[23] & 0x80000000) != 0)
    {
      operator delete(*v116);
    }

    v103 = 1;
LABEL_103:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v3 = a1 + 73;
LABEL_106:

LABEL_107:
    if (++v30 != v29)
    {
      continue;
    }

    break;
  }

LABEL_110:
  *v116 = v108;
  v70 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v3, v108, v116);
  v100 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v72 = (v70 + 7);
  v71 = v70[7];
  if (v71)
  {
    v73 = v70 + 5;
    while (1)
    {
      v74 = std::__string_hash<char>::operator()[abi:ne200100](&v105, v71 + 2);
      v75 = *(&v105 + 1);
      if (*(&v105 + 1))
      {
        v76 = v74;
        v77 = vcnt_s8(*(&v105 + 8));
        v77.i16[0] = vaddlv_u8(v77);
        v78 = v77.u32[0];
        if (v77.u32[0] > 1uLL)
        {
          v79 = v74;
          if (v74 >= *(&v105 + 1))
          {
            v79 = v74 % *(&v105 + 1);
          }
        }

        else
        {
          v79 = (*(&v105 + 1) - 1) & v74;
        }

        v80 = *(v105 + 8 * v79);
        if (v80)
        {
          for (k = *v80; k; k = *k)
          {
            v82 = k[1];
            if (v76 == v82)
            {
              v74 = std::equal_to<std::string>::operator()[abi:ne200100](&v105, k + 2, v71 + 2);
              if (v74)
              {
                v94 = *v71;
                goto LABEL_157;
              }
            }

            else
            {
              if (v78 > 1)
              {
                if (v82 >= v75)
                {
                  v82 %= v75;
                }
              }

              else
              {
                v82 &= v75 - 1;
              }

              if (v82 != v79)
              {
                break;
              }
            }
          }
        }
      }

      v83 = rf::realityFusionLogObject(v74);
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        v84 = objc_msgSend_name(v71[5]);
        *v116 = 138412290;
        *&v116[4] = v84;
        _os_log_impl(&dword_2617CB000, v83, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Removing reference image %@", v116, 0xCu);
      }

      v85 = v70[6];
      v86 = v71[1];
      v87 = vcnt_s8(v85);
      v87.i16[0] = vaddlv_u8(v87);
      if (v87.u32[0] > 1uLL)
      {
        if (v86 >= *&v85)
        {
          v86 %= *&v85;
        }
      }

      else
      {
        v86 &= *&v85 - 1;
      }

      v94 = *v71;
      v88 = *(*v73 + 8 * v86);
      do
      {
        v89 = v88;
        v88 = *v88;
      }

      while (v88 != v71);
      if (v89 != v72)
      {
        v90 = v89[1];
        if (v87.u32[0] > 1uLL)
        {
          if (v90 >= *&v85)
          {
            v90 %= *&v85;
          }
        }

        else
        {
          v90 &= *&v85 - 1;
        }

        v91 = *v71;
        if (v90 == v86)
        {
          goto LABEL_149;
        }
      }

      if (!v94)
      {
        break;
      }

      v92 = v94[1];
      if (v87.u32[0] > 1uLL)
      {
        if (v92 >= *&v85)
        {
          v92 %= *&v85;
        }
      }

      else
      {
        v92 &= *&v85 - 1;
      }

      v91 = *v71;
      if (v92 != v86)
      {
        break;
      }

LABEL_150:
      v93 = *(v91 + 8);
      if (v87.u32[0] > 1uLL)
      {
        if (v93 >= *&v85)
        {
          v93 %= *&v85;
        }
      }

      else
      {
        v93 &= *&v85 - 1;
      }

      if (v93 != v86)
      {
        *(*v73 + 8 * v93) = v89;
        v91 = *v71;
      }

LABEL_156:
      *v89 = v91;
      *v71 = 0;
      v70[8] = v70[8] - 1;
      *v116 = v71;
      *&v116[8] = v70 + 5;
      v103 = 1;
      v116[16] = 1;
      *&v116[17] = 0;
      *&v116[20] = 0;
      std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](v116);
LABEL_157:
      v71 = v94;
      if (!v94)
      {
        goto LABEL_158;
      }
    }

    *(*v73 + 8 * v86) = 0;
    v91 = *v71;
LABEL_149:
    if (!v91)
    {
      goto LABEL_156;
    }

    goto LABEL_150;
  }

LABEL_158:
  if (v103)
  {
    while (1)
    {
      v72 = *v72;
      if (!v72)
      {
        break;
      }

      [v100 addObject:v72[5]];
    }

    if (a1[28])
    {
      std::function<void ()(NSSet<ARReferenceImage *> *)>::operator()(&a1[25], v100);
    }
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v105);
  if (SHIBYTE(v109) < 0)
  {
    operator delete(v108[0]);
  }
}

void sub_26184D0C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a23);
  if (a34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t rf::data_flow::consumer::AnchorManagementConsumer::unanchorEntity(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v27 = *MEMORY[0x277D85DE8];
  REAnchorComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (!ComponentByClass)
  {
    rf::getMessage("Anchor component should not be null.", uu);
    rf::internal::logAssert(uu);
    if (v21 < 0)
    {
      operator delete(*uu);
    }

    ComponentByClass = rf::internal::debugBreakHandler(v16);
  }

  v7 = rf::realityFusionLogObject(ComponentByClass);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    Name = REEntityGetName();
    AnchorIdentifier = REAnchorComponentGetAnchorIdentifier();
    v20 = 0;
    v22 = 0;
    uuid_clear(uu);
    *uu = AnchorIdentifier;
    v20 = 1;
    rf::data_flow::RFUUID::string(__p, uu);
    v10 = v18 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v24 = Name;
    v25 = 2082;
    v26 = v10;
    _os_log_impl(&dword_2617CB000, v7, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Unanchoring entity %s from anchor %{public}s", buf, 0x16u);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  rf::helpers::publishAnchorStateEventWillUnanchor(a2, a3);
  if (rf::helpers::isRemotelyOwned(a2))
  {
    v11 = REAnchorComponentSetAnchoredLocally();
  }

  else
  {
    REAnchorComponentGetComponentType();
    v11 = REEntityRemoveComponentByClass();
  }

  CustomComponent = rf::AnchorMetadataComponent::instance(v11);
  if (*CustomComponent)
  {
    rf::AnchorMetadataComponent::instance(CustomComponent);
    CustomComponent = REEntityGetCustomComponent();
    if (CustomComponent)
    {
      rf::AnchorMetadataComponent::instance(CustomComponent);
      CustomComponent = REEntityRemoveComponentByClass();
    }
  }

  v13 = rf::AnchorSourceComponent::instance(CustomComponent);
  if (*v13)
  {
    rf::AnchorSourceComponent::instance(v13);
    v14 = REEntityGetCustomComponent();
    if (v14)
    {
      rf::AnchorSourceComponent::instance(v14);
      REEntityRemoveComponentByClass();
    }
  }

  result = *(a1 + 56);
  if (result)
  {
    return std::function<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::operator()(result, a2, 2);
  }

  return result;
}

void sub_26184D434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::function<void ()(NSSet<ARReferenceImage *> *)>::operator()(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v3 + 48))(v3, &v4);
}

void rf::data_flow::consumer::AnchorManagementConsumer::matchOrUpdateAnchorComponent(unsigned __int8 *DescriptorType, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int8x8_t *a7)
{
  ComponentByClass = a4;
  v164 = *MEMORY[0x277D85DE8];
  v13 = DescriptorType[568];
  v14 = *(a6 + 4000);
  if (v13 == 1 && v14 == 2)
  {
    DescriptorType[569] = 1;
    rf::helpers::cacheAnchorBeforeTravelMode(a4, a5);
    v14 = *(a6 + 4000);
    LOBYTE(v13) = DescriptorType[568];
  }

  v129 = a6;
  if ((v13 & 1) != 0 && !v14)
  {
    DescriptorType[569] = 1;
    if (ComponentByClass && REAnchoringComponentGetDescriptorType() == 1)
    {
      DescriptorCachedAnchorIdentifier = REAnchoringComponentGetDescriptorCachedAnchorIdentifier();
      if (uuid_compare(UUID_NULL, DescriptorCachedAnchorIdentifier) && (uu[16] = 0, *&uu[24] = 0, uuid_clear(uu), *uu = DescriptorCachedAnchorIdentifier, uu[16] = 1, AnchorFromAllAnchors = rf::helpers::tryGetAnchorFromAllAnchors(v129, uu), (v18 & 1) != 0))
      {
        v19 = AnchorFromAllAnchors;
        std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v151, AnchorFromAllAnchors);
        rf::data_flow::consumer::AnchorManagementConsumer::anchorEntity(DescriptorType, a3, v151, a5, (v129 + 80), 1);
        v20 = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v151);
        v21 = rf::realityFusionLogObject(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          rf::helpers::getRFUUIDFromAnchor(v19, v131);
          rf::data_flow::RFUUID::string(__p, v131);
          v22 = v134;
          v23 = __p[0];
          Name = REEntityGetName();
          v25 = __p;
          if (v22 < 0)
          {
            v25 = v23;
          }

          *buf = 136446466;
          v137 = v25;
          v138 = 2080;
          v139 = Name;
          _os_log_impl(&dword_2617CB000, v21, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Restoring cached anchor %{public}s for entity %s.", buf, 0x16u);
          if (v134 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>((v129 + 120), uu))
        {
          rf::data_flow::consumer::AnchorManagementConsumer::externalizeEntity(DescriptorType, a3, ComponentByClass, 1);
        }

        else
        {
          v60 = *(DescriptorType + 7);
          if (v60)
          {
            *&v131[0] = a3;
            LODWORD(__p[0]) = 1;
            (*(*v60 + 48))(v60, v131, __p);
          }
        }
      }

      else
      {
        rf::data_flow::consumer::AnchorManagementConsumer::unanchorEntity(DescriptorType, a3, 0);
        REAnchoringComponentSetDescriptorCachedAnchorIdentifier();
      }
    }

    REAnchorComponentGetComponentType();
    ComponentByClass = REEntityGetComponentByClass();
  }

  isRemotelyOwned = rf::helpers::isRemotelyOwned(a3);
  AnchoredLocally = 0;
  if ((isRemotelyOwned & 1) == 0 && ComponentByClass)
  {
    AnchoredLocally = REAnchorComponentGetAnchoredLocally();
  }

  REAnchoringComponentGetDescriptorType();
  v130[0] = a7;
  v130[1] = DescriptorType;
  REEntityIsEnabledInHierarchy();
  if (isRemotelyOwned)
  {
    v28 = REAnchoringComponentGetDescriptorType();
    if (v28 <= 0xD && ((1 << v28) & 0x2003) != 0)
    {
      return;
    }

    v127 = rf::helpers::needAnchoringInClientProcessForEntity(DescriptorType + 233, a3);
    if (!ComponentByClass)
    {
      return;
    }
  }

  else
  {
    v127 = rf::helpers::needAnchoringInClientProcessForEntity(DescriptorType + 233, a3);
    if (!ComponentByClass)
    {
      goto LABEL_131;
    }
  }

  AnchorIdentifier = REAnchorComponentGetAnchorIdentifier();
  v133 = 0;
  v135 = 0;
  uuid_clear(__p);
  __p[0] = AnchorIdentifier;
  v133 = 1;
  v125 = rf::PlacementComponentTypeInfo::instance(v30);
  if (*v125)
  {
    CustomComponent = REEntityGetCustomComponent();
  }

  else
  {
    CustomComponent = 0;
  }

  REClientAnchorSyncComponentGetComponentType();
  v32 = REEntityGetComponentByClass();
  if (std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>((v129 + 120), __p))
  {
    v126 = REAnchorComponentGetIsAnchorExternal() ^ 1;
    if (isRemotelyOwned)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v126 = 0;
    if (isRemotelyOwned)
    {
LABEL_36:
      if ((REAnchorComponentGetRequiresLocalAnchoring() & 1) == 0)
      {
        REAnchorComponentSetRequiresLocalAnchoring();
      }

      goto LABEL_41;
    }
  }

  if (AnchoredLocally & 1 | ((v127 & 1) == 0))
  {
    v33 = rf::helpers::validateAnchorState(a5, ComponentByClass, v129);
    if ((v33 & 1) == 0)
    {
      v35 = rf::realityFusionLogObject(v33);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v151[0].i16[0] = 0;
        _os_log_impl(&dword_2617CB000, v35, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Failed to validate anchor state.", v151, 2u);
      }

      goto LABEL_44;
    }
  }

LABEL_41:
  isAnchoringTypeAuthorizedForSelf = (*(*DescriptorType + 32))(DescriptorType, a5, v127);
  if (isAnchoringTypeAuthorizedForSelf)
  {
    v35 = rf::realityFusionLogObject(isAnchoringTypeAuthorizedForSelf);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = REEntityGetName();
      LocalId = REEntityGetLocalId();
      v151[0].i32[0] = 136315394;
      *(v151 + 4) = v36;
      v151[1].i16[2] = 2048;
      *(&v151[1] + 6) = LocalId;
      _os_log_impl(&dword_2617CB000, v35, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Entity %s(%llu) failed capabilities check.", v151, 0x16u);
    }

LABEL_44:

    rf::data_flow::consumer::AnchorManagementConsumer::unanchorEntity(DescriptorType, a3, 0);
    goto LABEL_119;
  }

  if (DescriptorType[232] == 1)
  {
    isAnchoringTypeAuthorizedForSelf = rf::helpers::isAnchoringTypeAuthorizedForSelf(a5, *(v129 + 200));
    if (!isAnchoringTypeAuthorizedForSelf)
    {
      goto LABEL_60;
    }

    if (DescriptorType[232])
    {
LABEL_50:
      v38 = rf::helpers::kCameraIdentifier(isAnchoringTypeAuthorizedForSelf);
      v39 = __p;
      if (v133)
      {
        v39 = __p[0];
      }

      if (*(v38 + 16))
      {
        v40 = *v38;
      }

      else
      {
        v40 = v38;
      }

      if (!uuid_compare(v39, v40) && rf::helpers::getInternalActiveCamera(a2))
      {
        REEntityGetComponent();
        RETransformComponentGetWorldMatrix4x4F();
        rf::helpers::getCameraComponentTransformInScene(a2, v131);
        v50 = rf::helpers::kCameraIdentifier(v49);
        v51 = v50[1];
        *uu = *v50;
        *&uu[16] = v51;
        v141 = v131[0];
        v142 = v131[1];
        v143 = v131[2];
        *v144 = v131[3];
        *&v144[16] = 16842752;
        *&v144[20] = 0;
        v144[24] = 0;
        v145 = 0;
        LOBYTE(v146) = 0;
        BYTE8(v147) = 0;
        *&v148 = 0;
        uuid_clear(&v146 + 8);
        BYTE8(v148) = 0;
        BYTE8(v150) = 0;
        v154 = v143;
        v155[0] = *v144;
        *(v155 + 9) = *&v144[9];
        *v151[0].i8 = *uu;
        *v151[2].i8 = *&uu[16];
        v152 = v141;
        v153 = v142;
        v52 = v145;
        v145 = 0;
        v156 = v52;
        v159 = v148;
        v160 = v149;
        v161 = v150;
        v157 = v146;
        v158 = v147;
        v162 = 0;
        rf::data_flow::consumer::AnchorManagementConsumer::updateEntityWithAnchor(DescriptorType, a3, v151, (v129 + 80));
        rf::data_flow::consumer::AnchorManagementConsumer::matchOrUpdateAnchorComponent(REScene *,REEntity *,REComponent *,REComponent *,rf::ARStateData const&,BOOL,unsigned long long &)::$_0::operator()(v130);
        std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v151);
        return;
      }

      v123 = CustomComponent;
      v41 = v135;
      if (!v135)
      {
        v121 = __p;
        if (v133)
        {
          v121 = __p[0];
        }

        v41 = (v121[1] + 64 * *v121 + (*v121 >> 2) + 2654435769u) ^ *v121;
        v135 = v41;
      }

      v42 = *(v129 + 3352);
      if (v42)
      {
        v124 = (v129 + 3344);
        v43 = vcnt_s8(v42);
        v43.i16[0] = vaddlv_u8(v43);
        v44 = v43.u32[0];
        if (v43.u32[0] > 1uLL)
        {
          v45 = v41;
          if (v41 >= *&v42)
          {
            v45 = v41 % *&v42;
          }
        }

        else
        {
          v45 = (*&v42 - 1) & v41;
        }

        v53 = *(*v124 + 8 * v45);
        if (v53)
        {
          v54 = *v53;
          if (*v53)
          {
            do
            {
              v55 = v54[1];
              if (v41 == v55)
              {
                if (rf::data_flow::RFUUID::Equality::operator()(v124, (v54 + 2), __p))
                {
                  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v151, v54[6]);
                  updated = rf::data_flow::consumer::AnchorManagementConsumer::updateEntityWithAnchor(DescriptorType, a3, v151, (v129 + 80));
                  v68 = *a7 + 1;
                  *a7 = v68;
                  if (v68 >= *(DescriptorType + 79))
                  {
                    v69 = rf::realityFusionLogObject(updated);
                    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                    {
                      v119 = *a7;
                      v120 = *(DescriptorType + 79);
                      *uu = 134218240;
                      *&uu[4] = v119;
                      *&uu[12] = 2048;
                      *&uu[14] = v120;
                      _os_log_error_impl(&dword_2617CB000, v69, OS_LOG_TYPE_ERROR, "AnchorManagementConsumer: %llu anchoring updated this frame, which more than %llu, this could cause backboardd hang", uu, 0x16u);
                    }
                  }

                  if (v123)
                  {
                    if (std::function<BOOL ()(REComponent *)>::operator()((v125 + 5), v123))
                    {
                      std::function<void ()(REComponent *)>::operator()((v125 + 9), v123);
                      v70 = *(DescriptorType + 7);
                      if (v70)
                      {
                        std::function<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::operator()(v70, a3, 3);
                      }
                    }
                  }

                  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v151);
                  goto LABEL_119;
                }
              }

              else
              {
                if (v44 > 1)
                {
                  if (v55 >= *&v42)
                  {
                    v55 %= *&v42;
                  }
                }

                else
                {
                  v55 &= *&v42 - 1;
                }

                if (v55 != v45)
                {
                  break;
                }
              }

              v54 = *v54;
            }

            while (v54);
          }
        }
      }

      v56 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>((v129 + 3384), __p);
      if (v56)
      {
        if ((isRemotelyOwned & 1) != 0 || (rf::data_flow::consumer::AnchorManagementConsumer::matchAndReanchorEntity(DescriptorType, a3, v56 + 3, (v129 + 80)) & 1) == 0)
        {
          v57 = rf::data_flow::consumer::AnchorManagementConsumer::unanchorEntity(DescriptorType, a3, 0);
          if (v123)
          {
            rf::PlacementComponentTypeInfo::instance(v57);
            REEntityRemoveComponentByClass();
          }
        }
      }

      else
      {
        v58 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>((v129 + 3424), __p);
        if (v58)
        {
          v59 = *(v58 + 12);
          if (v59 - 1 >= 2)
          {
            if (v59 != 7)
            {
              goto LABEL_119;
            }

            v59 = 0;
          }

          rf::helpers::publishAnchorStateEventDidFailToAnchor(a3, v59);
          goto LABEL_119;
        }

        if (v126)
        {
          v61 = rf::realityFusionLogObject(0);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            v62 = REEntityGetName();
            v63 = REEntityGetLocalId();
            rf::data_flow::RFUUID::string(uu, __p);
            v64 = uu[23] >= 0 ? uu : *uu;
            v151[0].i32[0] = 136315650;
            *(v151 + 4) = v62;
            v151[1].i16[2] = 2048;
            *(&v151[1] + 6) = v63;
            v151[2].i16[3] = 2082;
            v151[3] = v64;
            _os_log_impl(&dword_2617CB000, v61, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Marking entity external %s, %llu, holding anchor with identifier %{public}s", v151, 0x20u);
            if ((uu[23] & 0x80000000) != 0)
            {
              operator delete(*uu);
            }
          }

          rf::data_flow::consumer::AnchorManagementConsumer::externalizeEntity(DescriptorType, a3, ComponentByClass, 1);
        }

        else if (v123 && std::function<BOOL ()(REComponent *)>::operator()((v125 + 5), v123))
        {
          v65 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>((v129 + 80), __p);
          if (v65)
          {
            rf::data_flow::consumer::AnchorManagementConsumer::updateEntityWithAnchor(DescriptorType, a3, (v65 + 6), (v129 + 80));
            rf::data_flow::consumer::AnchorManagementConsumer::matchOrUpdateAnchorComponent(REScene *,REEntity *,REComponent *,REComponent *,rf::ARStateData const&,BOOL,unsigned long long &)::$_0::operator()(v130);
            std::function<void ()(REComponent *)>::operator()((v125 + 9), v123);
            v66 = *(DescriptorType + 7);
            if (v66)
            {
              std::function<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::operator()(v66, a3, 3);
            }
          }
        }

        else if (isRemotelyOwned)
        {
          if ((REAnchorComponentGetAnchoredLocally() & 1) == 0)
          {
            v71 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>((v129 + 80), __p);
            if (v71)
            {
              rf::data_flow::consumer::AnchorManagementConsumer::updateEntityWithAnchor(DescriptorType, a3, (v71 + 6), (v129 + 80));
              rf::data_flow::consumer::AnchorManagementConsumer::matchOrUpdateAnchorComponent(REScene *,REEntity *,REComponent *,REComponent *,rf::ARStateData const&,BOOL,unsigned long long &)::$_0::operator()(v130);
            }
          }
        }
      }

      goto LABEL_119;
    }
  }

  if (!v32)
  {
    goto LABEL_50;
  }

  isAnchoringTypeAuthorizedForSelf = rf::helpers::isAnchoringTypeAuthorizedForPeer(a5, (v129 + 208));
  if (isAnchoringTypeAuthorizedForSelf)
  {
    goto LABEL_50;
  }

LABEL_60:
  v46 = rf::realityFusionLogObject(isAnchoringTypeAuthorizedForSelf);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    v47 = REEntityGetName();
    v48 = REEntityGetLocalId();
    v151[0].i32[0] = 136315394;
    *(v151 + 4) = v47;
    v151[1].i16[2] = 2048;
    *(&v151[1] + 6) = v48;
    _os_log_impl(&dword_2617CB000, v46, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Entity %s(%llu) is no longer authorized to be anchored.", v151, 0x16u);
  }

  rf::data_flow::consumer::AnchorManagementConsumer::unanchorEntity(DescriptorType, a3, 1u);
LABEL_119:
  REAnchorComponentGetComponentType();
  v72 = REEntityGetComponentByClass();
  v73 = REEntityGetName();
  if (!strcmp(v73, "Reality Simulation System Portal"))
  {
    v74 = _os_feature_enabled_impl() ^ 1;
  }

  else
  {
    v74 = 0;
  }

  v75 = REEntityGetName();
  if (a5)
  {
    v76 = strcmp(v75, "AccessibilityMRServer-main-world-anchor") == 0;
    v77 = REAnchoringComponentGetDescriptorType();
    if (((v74 | v76) & 1) != 0 && v77 == 1)
    {
      if (v72)
      {
        if ((*(v129 + 4000) | 2) == 2)
        {
          IsAnchorExternal = REAnchorComponentGetIsAnchorExternal();
          if (IsAnchorExternal)
          {
            v79 = rf::realityFusionLogObject(IsAnchorExternal);
            if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
            {
              v80 = REEntityGetName();
              v81 = REEntityGetLocalId();
              v151[0].i32[0] = 136315394;
              *(v151 + 4) = v80;
              v151[1].i16[2] = 2048;
              *(&v151[1] + 6) = v81;
              _os_log_impl(&dword_2617CB000, v79, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Relocalizing entity %s, %llu, because tracking is regained", v151, 0x16u);
            }

            rf::data_flow::consumer::AnchorManagementConsumer::relocalizeEntity(DescriptorType, a3, v72, 1);
            rf::data_flow::consumer::AnchorManagementConsumer::unanchorEntity(DescriptorType, a3, 0);
          }
        }
      }
    }
  }

LABEL_131:
  REAnchorComponentGetComponentType();
  v82 = REEntityGetComponentByClass();
  IsAnchored = REEntityIsAnchored();
  if (v82)
  {
    v84 = REAnchorComponentGetIsAnchorExternal();
    if ((isRemotelyOwned & 1) == 0)
    {
      v85 = REAnchorComponentGetAnchoredLocally();
      goto LABEL_136;
    }
  }

  else
  {
    v84 = 0;
  }

  v85 = 0;
LABEL_136:
  if (DescriptorType[232] & v127)
  {
    v86 = rf::helpers::isAnchoringTypeAuthorizedForSelf(a5, *(v129 + 200)) ^ 1;
    if (!IsAnchored)
    {
      goto LABEL_138;
    }

LABEL_141:
    if ((v86 | v85 | v84))
    {
      return;
    }

    goto LABEL_142;
  }

  v86 = 1;
  if (IsAnchored)
  {
    goto LABEL_141;
  }

LABEL_138:
  if (v84)
  {
    return;
  }

LABEL_142:
  if (!(*(*DescriptorType + 40))(DescriptorType, a5))
  {
    return;
  }

  REAnchoringComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    v87 = REAnchoringComponentGetDescriptorType();
    v88 = v87;
    if (*(v129 + 4004) != 1 && v87 == 13)
    {
      return;
    }
  }

  else
  {
    v88 = 11;
  }

  if (DescriptorType[232] == 1)
  {
    if ((rf::helpers::shouldAnchorEntityInClientProcess(a3, DescriptorType + 233, *(*(DescriptorType + 2) + 264)) & 1) == 0)
    {
      return;
    }

    goto LABEL_195;
  }

  REClientAnchorSyncComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {
LABEL_172:
    if ((DescriptorType[68] & 1) != 0 || (DescriptorType[66] & 1) != 0 || DescriptorType[67] == 1)
    {
      RENetworkComponentGetComponentType();
      if (REEntityGetComponentByClass())
      {
        if (DescriptorType[68] == 1)
        {
          Parent = a3;
          do
          {
            v99 = Parent != 0;
            if (!Parent)
            {
              break;
            }

            __p[0] = REEntityGetLocalId();
            Parent = REEntityGetParent();
            v100 = std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::find<unsigned long>(DescriptorType + 50, __p[0]);
            v101 = std::__hash_table<std::__hash_value_type<unsigned long,std::any>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::any>>>::find<unsigned long>(DescriptorType + 60, __p);
            if (v101)
            {
              *&v131[0] = __p;
              v102 = std::__hash_table<std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(DescriptorType + 120, __p, &std::piecewise_construct, v131);
              LODWORD(v101) = rf::helpers::authorizedTypeForEntitledAnchoringTypesConfig(v88, v102 + 24);
            }
          }

          while (!v100 && !v101);
        }

        else
        {
          v99 = 0;
        }

        v104 = 0;
        if ((DescriptorType[66] & 1) != 0 || DescriptorType[67] == 1)
        {
          v103 = RENetworkComponentOwnerPeerID();
          if (std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::find<unsigned long>(DescriptorType + 40, v103) || std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::find<unsigned long>(DescriptorType + 45, v103))
          {
            v104 = 1;
          }
        }

        v105 = REEntityGetParent();
        v106 = v104;
        if (!v105)
        {
          v106 = v104 | DescriptorType[66];
        }

        if (!v99 && ((v104 | v106) & 1) == 0)
        {
          return;
        }
      }
    }

LABEL_195:
    REAnchoringComponentGetComponentType();
    v107 = REEntityGetComponentByClass();
    if (!v107)
    {
      rf::getMessage("Anchoring component should not be null.", v151);
      rf::internal::logAssert(v151);
      if (v151[2].i8[7] < 0)
      {
        operator delete(*v151);
      }

      rf::internal::debugBreakHandler(v122);
    }

    SceneNullable = REEntityGetSceneNullable();
    v109 = rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(v151, DescriptorType, SceneNullable, v107, v129);
    if (v163 == 1)
    {
      std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](uu, v151);
      rf::data_flow::consumer::AnchorManagementConsumer::anchorEntity(DescriptorType, a3, uu, v107, (v129 + 80), 1);
      v110 = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uu);
      v111 = rf::realityFusionLogObject(v110);
      if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
      {
        v112 = REEntityGetName();
        if ((v163 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v113 = v112;
        rf::helpers::getRFUUIDFromAnchor(v151, v131);
        rf::data_flow::RFUUID::string(__p, v131);
        if (v134 >= 0)
        {
          v114 = __p;
        }

        else
        {
          v114 = __p[0];
        }

        *buf = 136315394;
        v137 = v113;
        v138 = 2082;
        v139 = v114;
        _os_log_impl(&dword_2617CB000, v111, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Anchoring entity %s to anchor %{public}s.", buf, 0x16u);
        if (v134 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v109 = *(DescriptorType + 7);
      if (v109)
      {
        *&v131[0] = a3;
        LODWORD(__p[0]) = 1;
        v109 = (*(*v109 + 48))(v109, v131, __p);
      }
    }

    if (v163 == 1)
    {
      v109 = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v151);
    }

    v115 = *a7 + 1;
    *a7 = v115;
    if (v115 >= *(DescriptorType + 79))
    {
      v116 = rf::realityFusionLogObject(v109);
      if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
      {
        v117 = *a7;
        v118 = *(DescriptorType + 632);
        v151[0].i32[0] = 134218240;
        *(v151 + 4) = v117;
        v151[1].i16[2] = 2048;
        *(&v151[1] + 6) = v118;
        _os_log_error_impl(&dword_2617CB000, v116, OS_LOG_TYPE_ERROR, "AnchorManagementConsumer: %llu anchoring updated this frame, which more than %llu, this could cause backboardd hang", v151, 0x16u);
      }
    }

    return;
  }

  v89 = *(DescriptorType + 2);
  memset(v151, 0, sizeof(v151));
  LODWORD(v152) = *(v89 + 304);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>>>::__rehash<true>(v151, *(v89 + 280));
  v90 = *(v89 + 288);
  if (!v90)
  {
    goto LABEL_171;
  }

  do
  {
    v91 = v90[2];
    if (!*&v151[1])
    {
      goto LABEL_169;
    }

    v92 = vcnt_s8(v151[1]);
    v92.i16[0] = vaddlv_u8(v92);
    if (v92.u32[0] > 1uLL)
    {
      v93 = v90[2];
      if (*&v151[1] <= v91)
      {
        v93 = v91 % *&v151[1];
      }
    }

    else
    {
      v93 = (*&v151[1] - 1) & v91;
    }

    v94 = *(*v151 + 8 * v93);
    if (!v94 || (v95 = *v94) == 0)
    {
LABEL_169:
      operator new();
    }

    while (1)
    {
      v96 = v95[1];
      if (v96 == v91)
      {
        break;
      }

      if (v92.u32[0] > 1uLL)
      {
        if (v96 >= *&v151[1])
        {
          v96 %= *&v151[1];
        }
      }

      else
      {
        v96 &= *&v151[1] - 1;
      }

      if (v96 != v93)
      {
        goto LABEL_169;
      }

LABEL_168:
      v95 = *v95;
      if (!v95)
      {
        goto LABEL_169;
      }
    }

    if (v95[2] != v91)
    {
      goto LABEL_168;
    }

    v90 = *v90;
  }

  while (v90);
LABEL_171:
  shouldAnchorEntityRequiringClientAnchoring = rf::helpers::shouldAnchorEntityRequiringClientAnchoring(a3, v151);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(v151);
  if (shouldAnchorEntityRequiringClientAnchoring)
  {
    goto LABEL_172;
  }
}

void sub_26184E870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t rf::data_flow::consumer::AnchorManagementConsumer::updateReceiveIsAnchoredOnClientForComponent(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (*(result + 232) == 1)
    {
      v4 = rf::helpers::needAnchoringInClientProcessForEntity((result + 233), a2) ^ 1;
    }

    else
    {
      v4 = 0;
    }

    return MEMORY[0x2821536A8](a3, v4);
  }

  return result;
}

uint64_t rf::data_flow::consumer::AnchorManagementConsumer::anchorEntity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, rf::helpers *a5, int a6)
{
  v194 = *MEMORY[0x277D85DE8];
  v153 = a4;
  REAnchorComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  v150 = ComponentByClass;
  if (ComponentByClass)
  {
    v11 = ComponentByClass;
    RERetain();
  }

  else
  {
    REAnchorComponentGetComponentType();
    v11 = REComponentCreateByClass();
    REAnchoringComponentGetComponentType();
    v12 = REEntityGetComponentByClass();
    if (v11)
    {
      if (v12)
      {
        REClientAnchorSyncComponentGetComponentType();
        v13 = REEntityGetComponentByClass();
        if ((*(a1 + 232) & 1) == 0 && !v13)
        {
          DescriptorType = REAnchoringComponentGetDescriptorType();
          if (DescriptorType <= 4 && ((1 << DescriptorType) & 0x16) != 0)
          {
            REAnchorComponentSetSendIsAnchoredToClient();
          }
        }
      }
    }

    rf::data_flow::consumer::AnchorManagementConsumer::updateReceiveIsAnchoredOnClientForComponent(a1, a2, v11);
  }

  REAnchorComponentSetAnchoredLocally();
  CameraAnchor = rf::helpers::getCameraAnchor(a5);
  rf::helpers::getTransformFromAnchor(a3, &v153, (CameraAnchor + 4), a1 + 288, *(a1 + 576), &v152);
  REAnchorComponentSetWorldTransform();
  if (REAnchoringComponentGetMode() || (rf::helpers::isWorldAnchoringType(v153) & 1) != 0)
  {
    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](&v167, a3);
  }

  else
  {
    uu[16] = 0;
    *&uu[24] = 0;
    uuid_clear(uu);
    uuid_generate_random(uu);
    v178 = v152.columns[0];
    v179 = v152.columns[1];
    v180 = v152.columns[2];
    *v181 = v152.columns[3];
    *&v181[16] = 16842752;
    *&v181[20] = 0;
    v181[24] = 0;
    v182 = 0;
    v183.columns[0].i8[0] = 0;
    v183.columns[1].i8[8] = 0;
    v183.columns[2].i64[0] = 0;
    uuid_clear(&v183.columns[0].u8[8]);
    v183.columns[2].i8[8] = 0;
    BYTE8(v184) = 0;
    v171 = v180;
    v172[0] = *v181;
    *(v172 + 9) = *&v181[9];
    v167 = *uu;
    v168 = *&uu[16];
    v169 = v178;
    v170 = v179;
    v115 = v182;
    v182 = 0;
    v173 = v115;
    v174 = v183;
    v175 = v184;
    v176 = 0;
    if (*(a1 + 96))
    {
      std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](uu, &v167);
      v116 = *(a1 + 96);
      if (!v116)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v116 + 48))(v190);
      if (v176)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v167 = *v190;
      v168 = v191;
      std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uu);
    }

    v117 = *(a1 + 128);
    if (v117)
    {
      std::function<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::operator()(v117, &v167);
    }

    REAnchoringComponentSetDescriptorTransform();
  }

  rf::helpers::getRFUUIDFromAnchor(&v167, uu);
  v16 = REAnchorComponentSetAnchorIdentifier();
  v17 = rf::PlacementComponentTypeInfo::instance(v16);
  if (*v17)
  {
    CustomComponent = REEntityGetCustomComponent();
  }

  else
  {
    CustomComponent = 0;
  }

  PreviousWorldTransform = REAnchoringComponentGetPreviousWorldTransform();
  if (PreviousWorldTransform)
  {
    v130 = PreviousWorldTransform[1];
    v135 = *PreviousWorldTransform;
    v142 = PreviousWorldTransform[3];
    v146 = PreviousWorldTransform[2];
    v195 = __invert_f4(v152);
    v20 = 0;
    *v190 = v135;
    v191 = v130;
    v192 = v146;
    v193 = v142;
    do
    {
      *&uu[v20] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v195.columns[0], COERCE_FLOAT(*&v190[v20])), v195.columns[1], *&v190[v20], 1), v195.columns[2], *&v190[v20], 2), v195.columns[3], *&v190[v20], 3);
      v20 += 16;
    }

    while (v20 != 64);
    RETransformComponentGetComponentType();
    if (!REEntityGetComponentByClass())
    {
      v21 = rf::realityFusionLogObject(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        Name = REEntityGetName();
        rf::helpers::getBaseAnchorProperties(a3);
        rf::data_flow::RFUUID::string(v190, uu);
        if (v191.i8[7] >= 0)
        {
          v23 = v190;
        }

        else
        {
          v23 = *v190;
        }

        buf.columns[0].i32[0] = 136315394;
        *(buf.columns[0].i64 + 4) = Name;
        buf.columns[0].i16[6] = 2082;
        *(&buf.columns[0].i64[1] + 6) = v23;
        _os_log_impl(&dword_2617CB000, v21, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer::anchorEntity(): Transform component not found when attempting to anchor entity %s to anchor %{public}s, adding one now", &buf, 0x16u);
        if (v191.i8[7] < 0)
        {
          operator delete(*v190);
        }
      }

      RETransformComponentGetComponentType();
      REEntityAddComponentByClass();
    }

    REMakeSRTFromMatrix();
    RETransformComponentSetLocalSRT();
    RENetworkMarkComponentDirty();
    goto LABEL_30;
  }

  if (*(a3 + 256) != 1 || CustomComponent || !a6)
  {
LABEL_30:
    if (CustomComponent)
    {
      std::function<void ()(REComponent *)>::operator()((v17 + 9), CustomComponent);
    }

    goto LABEL_66;
  }

  v24 = *(a3 + 80);
  v180 = *(a3 + 64);
  *v181 = v24;
  *&v181[9] = *(a3 + 89);
  v25 = *(a3 + 16);
  *uu = *a3;
  *&uu[16] = v25;
  v26 = *(a3 + 48);
  v178 = *(a3 + 32);
  v179 = v26;
  v182 = *(a3 + 112);
  v27 = *(a3 + 176);
  v183.columns[2] = *(a3 + 160);
  v183.columns[3] = v27;
  v184 = *(a3 + 192);
  v28 = *(a3 + 144);
  v183.columns[0] = *(a3 + 128);
  v183.columns[1] = v28;
  v29 = *(a3 + 216);
  v185 = *(a3 + 208);
  v186 = 0;
  v30 = *(a3 + 224);
  v188 = 0;
  v187 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&v186, v29, v30, (v30 - v29) >> 4);
  REAnchoringComponentGetDescriptorBounds();
  v147 = v31;
  v158 = v180;
  v159[0] = *v181;
  *(v159 + 9) = *&v181[9];
  v154 = *uu;
  v155 = *&uu[16];
  v156 = v178;
  v157 = v179;
  v160 = v182;
  v161 = v183;
  v162 = v184;
  v163 = v185;
  __p = 0;
  v165 = 0;
  v166 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&__p, v186, v187, (v187 - v186) >> 4);
  v143 = __PAIR64__(DWORD2(v162), v162);
  v32 = 0.0;
  if (!v163)
  {
    v33 = 0;
    v34 = v156;
    v35 = v157;
    v36 = v158;
    v37 = v159[0];
    v38 = v161.columns[0];
    v39 = v161.columns[1];
    v40 = v161.columns[2];
    v41 = v161.columns[3];
    buf = v161;
    do
    {
      *&v190[v33 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v34, COERCE_FLOAT(*&buf.columns[v33])), v35, *buf.columns[v33].f32, 1), v36, buf.columns[v33], 2), v37, buf.columns[v33], 3);
      ++v33;
    }

    while (v33 != 4);
    v42 = 0;
    v131 = v192;
    v136 = v193;
    v125 = v191;
    v127 = vmulq_f32(*v190, 0);
    buf.columns[0] = v38;
    buf.columns[1] = v39;
    buf.columns[2] = v40;
    buf.columns[3] = v41;
    do
    {
      *&v190[v42 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v34, COERCE_FLOAT(*&buf.columns[v42])), v35, *buf.columns[v42].f32, 1), v36, buf.columns[v42], 2), v37, buf.columns[v42], 3);
      ++v42;
    }

    while (v42 != 4);
    v118 = v191;
    v119 = *v190;
    v121 = v192;
    v123 = v193;
    v43 = rf::helpers::getCameraAnchor(a5);
    v44 = vmlaq_f32(vaddq_f32(v131, vmlaq_f32(v127, 0, v125)), 0, v136);
    v128 = vmlaq_f32(vmlaq_f32(vaddq_f32(v118, vmulq_f32(v119, 0)), 0, v121), 0, v123);
    v132 = v44;
    v45 = vextq_s8(vuzp1q_s32(v128, v128), v128, 0xCuLL);
    v46 = vmlaq_f32(vmulq_f32(v45, vnegq_f32(v43[4])), v128, vextq_s8(vuzp1q_s32(v43[4], v43[4]), v43[4], 0xCuLL));
    v47 = vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL);
    v48 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL), vnegq_f32(v128)), v47, v45);
    v49 = vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL);
    v50 = vmulq_f32(v48, v48);
    v45.f32[0] = v50.f32[1] + (v50.f32[2] + v50.f32[0]);
    *v50.f32 = vrsqrte_f32(v45.u32[0]);
    *v50.f32 = vmul_f32(*v50.f32, vrsqrts_f32(v45.u32[0], vmul_f32(*v50.f32, *v50.f32)));
    v137 = vmulq_n_f32(v49, vmul_f32(*v50.f32, vrsqrts_f32(v45.u32[0], vmul_f32(*v50.f32, *v50.f32))).f32[0]);
    v51 = vmulq_f32(v44, v137);
    v52 = acosf(fminf(fmaxf(v51.f32[2] + vaddv_f32(*v51.f32), -1.0), 1.0));
    v53 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v137, v137), v137, 0xCuLL), vnegq_f32(v132)), v137, vextq_s8(vuzp1q_s32(v132, v132), v132, 0xCuLL));
    v54 = vextq_s8(vuzp1q_s32(v53, v53), v53, 0xCuLL);
    v55 = vmulq_f32(v53, v53);
    *&v56 = v55.f32[1] + (v55.f32[2] + v55.f32[0]);
    *v55.f32 = vrsqrte_f32(v56);
    *v55.f32 = vmul_f32(*v55.f32, vrsqrts_f32(v56, vmul_f32(*v55.f32, *v55.f32)));
    v57 = vmulq_f32(v128, vmulq_n_f32(v54, vmul_f32(*v55.f32, vrsqrts_f32(v56, vmul_f32(*v55.f32, *v55.f32))).f32[0]));
    if ((v57.f32[2] + vaddv_f32(*v57.f32)) <= 0.0)
    {
      v52 = -v52;
    }

    v32 = rf::helpers::rotationThatFitsRect(v52, v147, *&v143);
    v58 = sqrtf(vaddv_f32(vmul_f32(v147, v147)));
    if (v58 >= 0.00000011921)
    {
      v59 = acosf(v147.f32[0] / v58);
      v138 = fabsf(v58 * cosf(v59 + v32));
      v60 = acosf(v147.f32[1] / v58);
      v147 = __PAIR64__(COERCE_UNSIGNED_INT(fabsf(v58 * cosf(v60 + v32))), LODWORD(v138));
    }
  }

  v61 = rf::helpers::getCameraAnchor(a5);
  v62 = vmulq_f32(v157, vnegq_f32(v61[4]));
  v63 = v62.f32[2] + vaddv_f32(*v62.f32);
  if (v63 <= -0.00000011921)
  {
    v64 = vmulq_f32(v157, vsubq_f32(v159[0], v61[5]));
    v65 = (v64.f32[2] + vaddv_f32(*v64.f32)) / v63;
    if (v65 >= 0.0)
    {
      v129 = v65;
      v133 = v61[5];
      v139 = v61[4];
      v196 = __invert_f4(v161);
      v124 = v196.columns[0];
      v126 = v196.columns[1];
      v120 = v196.columns[3];
      v122 = v196.columns[2];
      v196.columns[0] = v156;
      v196.columns[1] = v157;
      v196.columns[2] = v158;
      v196.columns[3] = v159[0];
      v197 = __invert_f4(v196);
      v66 = 0;
      buf = v197;
      do
      {
        *&v190[v66 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v124, COERCE_FLOAT(*&buf.columns[v66])), v126, *buf.columns[v66].f32, 1), v122, buf.columns[v66], 2), v120, buf.columns[v66], 3);
        ++v66;
      }

      while (v66 != 4);
      v67 = vsubq_f32(v133, vmulq_n_f32(v139, v129));
      v68 = &v193;
      v69 = *vld2_f32(v68).val;
      v70 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v190, v67.f32[0]), v191, *v67.f32, 1), v192, v67, 2);
      v71 = vextq_s8(v70, v70, 8uLL);
      *v71.i8 = vadd_f32(v69, vzip1_s32(*v70.i8, *v71.i8));
      v72 = vmul_f32(v147, 0x3F0000003F000000);
      *v70.i8 = vmul_f32(v143, 0x3F0000003F000000);
      *v71.i8 = vminnm_f32(vmaxnm_f32(*v71.i8, vsub_f32(v72, *v70.i8)), vsub_f32(*v70.i8, v72));
      v148 = vtrn2q_s32(vzip1q_s32(xmmword_26185E1B0, v71), xmmword_26185E1B0);
      *v70.i8 = vrsqrte_f32(1065353216);
      *v70.i8 = vmul_f32(*v70.i8, vrsqrts_f32(1065353216, vmul_f32(*v70.i8, *v70.i8)));
      v73 = vmulq_n_f32(xmmword_26185DD10, vmul_f32(*v70.i8, vrsqrts_f32(1065353216, vmul_f32(*v70.i8, *v70.i8))).f32[0]);
      v74 = v73.f32[1];
      v75 = v73.f32[2];
      v140 = v73;
      v144 = vmulq_f32(v73, v73).f32[0];
      v76 = vmuls_lane_f32(v73.f32[1], *v73.f32, 1);
      v77 = vmuls_lane_f32(v73.f32[0], *v73.f32, 1);
      v78 = vmuls_lane_f32(v73.f32[0], v73, 2);
      v79 = __sincosf_stret(v32);
      v80 = 0;
      v81 = vmuls_lane_f32(v79.__sinval, *v140.f32, 1);
      v82 = vmuls_lane_f32(v79.__sinval, v140, 2);
      v83 = 1.0 - v79.__cosval;
      v84.i32[3] = 0;
      v85 = v161.columns[0];
      v86 = v161.columns[1];
      v87 = v161.columns[2];
      v88 = v161.columns[3];
      buf.columns[0] = xmmword_26185DD00;
      buf.columns[1] = xmmword_26185DD10;
      buf.columns[2] = xmmword_26185DD20;
      buf.columns[3] = v148;
      do
      {
        *&v190[v80 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v85, COERCE_FLOAT(*&buf.columns[v80])), v86, *buf.columns[v80].f32, 1), v87, buf.columns[v80], 2), v88, buf.columns[v80], 3);
        ++v80;
      }

      while (v80 != 4);
      v89 = 0;
      v84.f32[1] = v76 + (v79.__cosval * (1.0 - v76));
      v90.i32[3] = 0;
      v91.f32[0] = v144 + (v79.__cosval * (1.0 - v144));
      v91.f32[1] = v82 + (v77 * v83);
      v91.i64[1] = COERCE_UNSIGNED_INT(-(v81 - (v78 * (1.0 - v79.__cosval))));
      v84.f32[2] = (v79.__sinval * v140.f32[0]) + ((v74 * v75) * v83);
      v90.f32[0] = v81 + (v78 * v83);
      v90.f32[1] = -((v79.__sinval * v140.f32[0]) - ((v74 * v75) * v83));
      v90.f32[2] = (v75 * v75) + (v79.__cosval * (1.0 - (v75 * v75)));
      v92 = *v190;
      v93 = v191;
      v94 = v192;
      v95 = v193;
      buf.columns[0] = v91;
      v84.f32[0] = -(v82 - (v77 * (1.0 - v79.__cosval)));
      buf.columns[1] = v84;
      buf.columns[2] = v90;
      buf.columns[3] = xmmword_26185E1B0;
      do
      {
        *&v190[v89 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v92, COERCE_FLOAT(*&buf.columns[v89])), v93, *buf.columns[v89].f32, 1), v94, buf.columns[v89], 2), v95, buf.columns[v89], 3);
        ++v89;
      }

      while (v89 != 4);
      v145 = v191;
      v149 = *v190;
      v134 = v193;
      v141 = v192;
      RETransformComponentGetComponentType();
      if (!REEntityGetComponentByClass())
      {
        v96 = rf::realityFusionLogObject(0);
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
        {
          *v190 = 0;
          _os_log_impl(&dword_2617CB000, v96, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Plane Anchor entity require Transform component to function", v190, 2u);
        }

        v98 = rf::realityFusionLogObject(v97);
        if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
        {
          *v190 = 0;
          _os_log_impl(&dword_2617CB000, v98, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Adding Transform component", v190, 2u);
        }

        RETransformComponentGetComponentType();
        REEntityAddComponentByClass();
      }

      RETransformComponentGetLocalSRT();
      RESRTMatrix();
      v99 = 0;
      buf.columns[0] = v100;
      buf.columns[1] = v101;
      buf.columns[2] = v102;
      buf.columns[3] = v103;
      do
      {
        *&v190[v99 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v149, COERCE_FLOAT(*&buf.columns[v99])), v145, *buf.columns[v99].f32, 1), v141, buf.columns[v99], 2), v134, buf.columns[v99], 3);
        ++v99;
      }

      while (v99 != 4);
      REMakeSRTFromMatrix();
      RETransformComponentSetLocalSRT();
      RENetworkMarkComponentDirty();
    }
  }

  if (__p)
  {
    v165 = __p;
    operator delete(__p);
  }

  if (v186)
  {
    v187 = v186;
    operator delete(v186);
  }

LABEL_66:
  REAnchorComponentSetEnableShadows();
  if (!v150)
  {
    REClientAnchorSyncComponentGetComponentType();
    v104 = REEntityGetComponentByClass();
    v105 = rf::helpers::needAnchoringInClientProcessForEntity((a1 + 233), a2);
    rf::helpers::isRemotelyOwned(a2);
    if (*(a1 + 232))
    {
      v106 = v105 ^ 1;
    }

    else
    {
      v106 = v104 == 0;
    }

    if ((v106 & 1) == 0)
    {
      RENetworkComponentGetComponentType();
      v107 = REEntityGetComponentByClass();
      if (v107)
      {
        MEMORY[0x26670C630](v107, v11);
      }
    }

    REEntityAddExistingComponent();
  }

  rf::helpers::getRFUUIDFromAnchor(a3, v190);
  v108 = relocalizeEntityIfNeeded(a2, v190, a5, v11, 0);
  if (v108)
  {
    v109 = rf::realityFusionLogObject(v108);
    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
    {
      v110 = REEntityGetName();
      LocalId = REEntityGetLocalId();
      rf::data_flow::RFUUID::string(&buf, v190);
      v112 = buf.columns[1].i8[7] >= 0 ? &buf : buf.columns[0].i64[0];
      *uu = 136315650;
      *&uu[4] = v110;
      *&uu[12] = 2048;
      *&uu[14] = LocalId;
      *&uu[22] = 2082;
      *&uu[24] = v112;
      _os_log_impl(&dword_2617CB000, v109, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Relocalizing entity %s, %llu anchored to a new identifier %{public}s", uu, 0x20u);
      if (buf.columns[1].i8[7] < 0)
      {
        operator delete(buf.columns[0].i64[0]);
      }
    }

    v113 = *(a1 + 56);
    if (v113)
    {
      *uu = a2;
      buf.columns[0].i32[0] = 1;
      (*(*v113 + 48))(v113, uu, &buf);
    }
  }

  else
  {
    rf::helpers::publishAnchorStateEventDidAnchor(a2, 0);
  }

  RERelease();
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v167);
}

uint64_t rf::data_flow::consumer::AnchorManagementConsumer::externalizeEntity(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = REAnchorComponentGetIsAnchorExternal();
  if ((result & 1) == 0)
  {
    REAnchorComponentSetIsAnchorExternal();
    if (a4 && REAnchorComponentGetSendIsAnchoredToClient())
    {
      RENetworkMarkComponentDirty();
    }

    rf::helpers::publishAnchorStateEventWillUnanchor(a2, 0);
    result = *(a1 + 56);
    if (result)
    {

      return std::function<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::operator()(result, a2, 4);
    }
  }

  return result;
}

uint64_t std::function<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::operator()(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2;
  v4 = a3;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v5, &v4);
}

uint64_t rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v137 = *MEMORY[0x277D85DE8];
  v88 = a4;
  v89 = a3;
  v122[0] = &unk_28740B138;
  v122[1] = &v88;
  v123 = v122;
  DescriptorType = REAnchoringComponentGetDescriptorType();
  v10 = (a5 + 80);
  if (DescriptorType > 3)
  {
    if (DescriptorType > 5)
    {
      if (DescriptorType == 6)
      {
        v28 = *(a5 + 96);
        if (!v28)
        {
          goto LABEL_45;
        }

        while (*(v28 + 76) != 4 || (*(v28 + 147) & 1) == 0)
        {
          v28 = *v28;
          if (!v28)
          {
            goto LABEL_45;
          }
        }
      }

      else
      {
        if (DescriptorType != 7)
        {
LABEL_40:
          *a1 = 0;
          *(a1 + 272) = 0;
          return std::__function::__value_func<BOOL ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)>::~__value_func[abi:ne200100](v122);
        }

        v28 = *(a5 + 96);
        if (!v28)
        {
          goto LABEL_45;
        }

        while (*(v28 + 76) != 5 || (*(v28 + 147) & 1) == 0)
        {
          v28 = *v28;
          if (!v28)
          {
            goto LABEL_45;
          }
        }
      }

      std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](a1, (v28 + 6));
      goto LABEL_51;
    }

    if (DescriptorType == 4)
    {
      *uu = a5 + 80;
      *&uu[8] = &v88;
      v125 = 0uLL;
      if (std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_7> &>(uu))
      {
        v42 = std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_7> &>(uu);
        std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](a1, (v42 + 6));
        goto LABEL_51;
      }
    }

    else
    {
      *uu = a5 + 80;
      *&uu[8] = &v88;
      v125 = 0uLL;
      if (std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_8> &>(uu))
      {
        v21 = std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_8> &>(uu);
        std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](a1, (v21 + 6));
LABEL_51:
        v46 = 1;
        goto LABEL_52;
      }
    }

LABEL_45:
    v46 = 0;
    *a1 = 0;
LABEL_52:
    *(a1 + 272) = v46;
    return std::__function::__value_func<BOOL ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)>::~__value_func[abi:ne200100](v122);
  }

  if (DescriptorType <= 1)
  {
    if (DescriptorType)
    {
      if (DescriptorType == 1)
      {
        rf::helpers::createRFWorldAnchor(uu);
        if (a2[12])
        {
          std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v121, uu);
          v11 = a2[12];
          if (!v11)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          (*(*v11 + 48))(&v105);
          if (v136)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          *uu = v105;
          v125 = v106;
          std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v121);
        }

        REComponentGetEntity();
        v12 = a2[16];
        if (v12)
        {
          std::function<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::operator()(v12, uu);
          *&v105 = &v89;
          v13 = std::__hash_table<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>>>::__emplace_unique_key_args<REScene *,std::piecewise_construct_t const&,std::tuple<REScene * const&>,std::tuple<>>(a2 + 31, &v89, &std::piecewise_construct, &v105);
          Entity = REComponentGetEntity();
          v15 = 0x9DDFEA08EB382D69 * ((8 * (Entity & 0x1FFFFFFF) + 8) ^ HIDWORD(Entity));
          v16 = 0x9DDFEA08EB382D69 * (HIDWORD(Entity) ^ (v15 >> 47) ^ v15);
          v17 = 0x9DDFEA08EB382D69 * (v16 ^ (v16 >> 47));
          v18 = v13[4];
          if (v18)
          {
            v19 = vcnt_s8(v18);
            v19.i16[0] = vaddlv_u8(v19);
            if (v19.u32[0] > 1uLL)
            {
              v20 = 0x9DDFEA08EB382D69 * (v16 ^ (v16 >> 47));
              if (v17 >= *&v18)
              {
                v20 = v17 % *&v18;
              }
            }

            else
            {
              v20 = (*&v18 - 1) & v17;
            }

            v77 = *(v13[3] + 8 * v20);
            if (v77)
            {
              for (i = *v77; i; i = *i)
              {
                v79 = i[1];
                if (v79 == v17)
                {
                  if (i[2] == Entity)
                  {
                    goto LABEL_83;
                  }
                }

                else
                {
                  if (v19.u32[0] > 1uLL)
                  {
                    if (v79 >= *&v18)
                    {
                      v79 %= *&v18;
                    }
                  }

                  else
                  {
                    v79 &= *&v18 - 1;
                  }

                  if (v79 != v20)
                  {
                    break;
                  }
                }
              }
            }
          }

          operator new();
        }

LABEL_83:
        std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a1, uu);
        *(a1 + 272) = 1;
        goto LABEL_84;
      }

      goto LABEL_40;
    }

    if (rf::helpers::getInternalActiveCamera(a3))
    {
      REEntityGetComponent();
      WorldMatrix4x4F = RETransformComponentGetWorldMatrix4x4F();
      v83 = v31;
      v84 = v30;
      v81 = v33;
      v82 = v32;
      v34 = rf::helpers::kCameraIdentifier(WorldMatrix4x4F);
      v35 = v34[1];
      *uu = *v34;
      v125 = v35;
      v126 = v84;
      v127 = v83;
      v128 = v82;
      *v129 = v81;
      *&v129[16] = 16842752;
      *&v129[20] = 0;
      v129[24] = 0;
      v130 = 0;
      LOBYTE(v131) = 0;
      BYTE8(v132) = 0;
      *&v133 = 0;
      uuid_clear(&v131 + 8);
      BYTE8(v133) = 0;
      BYTE8(v135) = 0;
      v36 = v127;
      v37 = *v129;
      *(a1 + 64) = v128;
      *(a1 + 80) = v37;
      *(a1 + 89) = *&v129[9];
      v38 = v125;
      *a1 = *uu;
      *(a1 + 16) = v38;
      *(a1 + 32) = v126;
      *(a1 + 48) = v36;
      v39 = v130;
      v130 = 0;
      *(a1 + 112) = v39;
      v40 = v134;
      *(a1 + 160) = v133;
      *(a1 + 176) = v40;
      *(a1 + 192) = v135;
      v41 = v132;
      *(a1 + 128) = v131;
      *(a1 + 144) = v41;
    }

    else
    {
      CameraAnchor = rf::helpers::getCameraAnchor((a5 + 80));
      v59 = *CameraAnchor;
      v60 = *(CameraAnchor + 2);
      *(a1 + 16) = *(CameraAnchor + 1);
      *(a1 + 32) = v60;
      *a1 = v59;
      v61 = *(CameraAnchor + 3);
      v62 = *(CameraAnchor + 4);
      v63 = *(CameraAnchor + 5);
      *(a1 + 89) = *(CameraAnchor + 89);
      *(a1 + 64) = v62;
      *(a1 + 80) = v63;
      *(a1 + 48) = v61;
      *(a1 + 112) = CameraAnchor[14];
      *(a1 + 128) = *(CameraAnchor + 8);
      v64 = *(CameraAnchor + 9);
      v65 = *(CameraAnchor + 10);
      v66 = *(CameraAnchor + 12);
      *(a1 + 176) = *(CameraAnchor + 11);
      *(a1 + 192) = v66;
      *(a1 + 144) = v64;
      *(a1 + 160) = v65;
    }

    *(a1 + 256) = 0;
    goto LABEL_51;
  }

  if (DescriptorType == 2)
  {
    DescriptorAnchorIdentifier = REAnchoringComponentGetDescriptorAnchorIdentifier();
    v90[0].n128_u64[0] = a5 + 80;
    v90[0].n128_u64[1] = &DescriptorAnchorIdentifier;
    v90[1] = 0uLL;
    if (std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_1> &>(v90))
    {
      v43 = std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_1> &>(v90);
      std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](uu, (v43 + 6));
      if (v136 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      *&v105 = &v93;
      (off_28740B068[v136])(v118, &v105, uu);
      v96 = v118[3];
      v97 = v118[4];
      v98[0] = v119[0];
      *(v98 + 9) = *(v119 + 9);
      v93 = v118[0];
      v94 = v118[1];
      v95 = v118[2];
      v99 = v120;
      LOBYTE(v100) = 0;
      BYTE8(v101) = 0;
      *&v102 = 0;
      uuid_clear(&v100 + 8);
      BYTE8(v102) = 0;
      BYTE8(v104) = 0;
      v108 = v96;
      v109 = v97;
      v110[0] = v98[0];
      *(v110 + 9) = *(v98 + 9);
      v105 = v93;
      v106 = v94;
      v107 = v95;
      v44 = v99;
      v99 = 0;
      v111 = v44;
      v114 = v102;
      v115 = v103;
      v116 = v104;
      v112 = v100;
      v113 = v101;
      v117 = 0;
      if (!v123)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v123 + 48))(v123, &v105))
      {
        std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a1, &v105);
        v45 = 1;
      }

      else
      {
        v45 = 0;
        *a1 = 0;
      }

      *(a1 + 272) = v45;
      std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v105);

LABEL_84:
      std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uu);
      return std::__function::__value_func<BOOL ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)>::~__value_func[abi:ne200100](v122);
    }

    goto LABEL_40;
  }

  v22 = REComponentGetEntity();
  v23 = rf::PlacementComponentTypeInfo::instance(v22);
  if (*v23)
  {
    v24 = v23;
    CustomComponent = REEntityGetCustomComponent();
    if (CustomComponent)
    {
      v26 = std::function<unsigned char const* ()(REComponent *)>::operator()((v24 + 1), CustomComponent);
      LOBYTE(v125) = 0;
      *(&v125 + 1) = 0;
      uuid_clear(uu);
      *uu = *v26;
      v27 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(v10, uu);
      if (v27)
      {
        if (!v123)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        if ((*(*v123 + 48))(v123, v27 + 6))
        {
          std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](a1, (v27 + 6));
          goto LABEL_51;
        }
      }

      goto LABEL_45;
    }
  }

  if (rf::helpers::getInternalActiveCamera(a3))
  {
    REEntityGetComponent();
    RETransformComponentGetWorldMatrix4x4F();
    *uu = v53;
    v125 = v54;
    v55 = uu;
    v126 = v56;
    v127 = v57;
  }

  else
  {
    uu[0] = 0;
    v55 = (rf::helpers::getCameraAnchor(v10) + 4);
  }

  v67 = *(v55 + 1);
  v93 = *v55;
  v94 = v67;
  v68 = *(v55 + 3);
  v95 = *(v55 + 2);
  v96 = v68;
  *&v105 = a5 + 80;
  *(&v105 + 1) = &v93;
  *&v106 = a5 + 80;
  *(&v106 + 1) = v88;
  LOBYTE(v107) = 0;
  BYTE8(v107) = 0;
  v108 = 0u;
  v109 = 0u;
  v86 = 0;
  v87 = 0;
  DescriptorAnchorIdentifier = 0;
  std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_3>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_4>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_5> &>(uu, &v105, v47, v48, v49, v50, v51, v52);
  if (*&uu[8])
  {
    v75 = 0;
    do
    {
      std::ranges::filter_view[abi:llvm18_nua]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_3>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_4>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_5>::__iterator::operator++[abi:ne200100](uu);
      ++v75;
    }

    while (*&uu[8]);
  }

  else
  {
    v75 = 0;
  }

  std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_3>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_4>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_5> &>(v90, &v105, v69, v70, v71, v72, v73, v74);
  p_DescriptorAnchorIdentifier = &DescriptorAnchorIdentifier;
  v92 = 0;
  if (v75)
  {
    if (v75 < 0xE38E38E38E38E4)
    {
      operator new();
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  std::__introsort<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,false>(DescriptorAnchorIdentifier, v86, 0, 1);
  if (v86 == DescriptorAnchorIdentifier)
  {
    v76 = 0;
    *a1 = 0;
  }

  else
  {
    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](a1, DescriptorAnchorIdentifier);
    v76 = 1;
  }

  *(a1 + 272) = v76;
  *uu = &DescriptorAnchorIdentifier;
  std::vector<std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>>>::__destroy_vector::operator()[abi:ne200100](uu);
  return std::__function::__value_func<BOOL ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)>::~__value_func[abi:ne200100](v122);
}

rf *rf::data_flow::consumer::AnchorManagementConsumer::updateEntityWithAnchor(uint64_t a1, uint64_t a2, uint64_t a3, rf::helpers *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  REAnchorComponentGetComponentType();
  v8 = REEntityGetOrAddComponentByClass();
  REAnchoringComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  rf::helpers::getRFUUIDFromAnchor(a3, v24);
  v9 = relocalizeEntityIfNeeded(a2, v24, a4, v8, 1u);
  if (v9)
  {
    v10 = rf::realityFusionLogObject(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      Name = REEntityGetName();
      LocalId = REEntityGetLocalId();
      rf::data_flow::RFUUID::string(__p, v24);
      v13 = v29 >= 0 ? __p : *__p;
      *buf = 136315650;
      *&buf[4] = Name;
      *&buf[12] = 2048;
      *&buf[14] = LocalId;
      v22 = 2082;
      v23 = v13;
      _os_log_impl(&dword_2617CB000, v10, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Relocalizing entity %s, %llu, holding anchor with identifier %{public}s", buf, 0x20u);
      if (v29 < 0)
      {
        operator delete(*__p);
      }
    }

    v14 = *(a1 + 56);
    if (v14)
    {
      *buf = a2;
      *__p = 5;
      (*(*v14 + 48))(v14, buf, __p);
    }
  }

  CameraAnchor = rf::helpers::getCameraAnchor(a4);
  rf::helpers::getTransformFromAnchor(a3, &ComponentByClass, (CameraAnchor + 4), a1 + 288, *(a1 + 576), buf);
  REAnchorComponentSetWorldTransform();
  if (REAnchorComponentGetAnchoredLocally())
  {
    return rf::helpers::isRemotelyOwned(a2);
  }

  REAnchorComponentSetAnchoredLocally();
  result = rf::helpers::isRemotelyOwned(a2);
  if (result)
  {
    v17 = rf::realityFusionLogObject(result);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = REEntityGetName();
      rf::helpers::getRFUUIDFromAnchor(a3, buf);
      rf::data_flow::RFUUID::string(v24, buf);
      if (v25 >= 0)
      {
        v19 = v24;
      }

      else
      {
        v19 = v24[0];
      }

      *__p = 136315394;
      *&__p[4] = v18;
      v27 = 2082;
      v28 = v19;
      _os_log_impl(&dword_2617CB000, v17, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer: Anchoring remote entity %s to anchor %{public}s.", __p, 0x16u);
      if (v25 < 0)
      {
        operator delete(v24[0]);
      }
    }

    result = *(a1 + 56);
    if (result)
    {
      return std::function<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::operator()(result, a2, 1);
    }
  }

  return result;
}

void rf::data_flow::consumer::AnchorManagementConsumer::matchOrUpdateAnchorComponent(REScene *,REEntity *,REComponent *,REComponent *,rf::ARStateData const&,BOOL,unsigned long long &)::$_0::operator()(unint64_t **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = **a1 + 1;
  **a1 = v2;
  if (v2 >= v1[79])
  {
    v4 = rf::realityFusionLogObject(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = **a1;
      v6 = v1[79];
      v7 = 134218240;
      v8 = v5;
      v9 = 2048;
      v10 = v6;
      _os_log_error_impl(&dword_2617CB000, v4, OS_LOG_TYPE_ERROR, "AnchorManagementConsumer: %llu anchoring updated this frame, which more than %llu, this could cause backboardd hang", &v7, 0x16u);
    }
  }
}

uint64_t rf::data_flow::consumer::AnchorManagementConsumer::matchAndReanchorEntity(uint64_t a1, uint64_t a2, __int128 *a3, rf::helpers *a4)
{
  v107 = *MEMORY[0x277D85DE8];
  if (*(a3 + 64) != 1 || *rf::PlacementComponentTypeInfo::instance(a1) && REEntityGetCustomComponent())
  {
    return 0;
  }

  if (*(a3 + 64) != 1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v9 = a3[5];
  v95 = a3[4];
  v96[0] = v9;
  *(v96 + 9) = *(a3 + 89);
  v10 = a3[1];
  v91 = *a3;
  v92 = v10;
  v11 = a3[2];
  v94 = a3[3];
  v93 = v11;
  v97 = *(a3 + 14);
  v12 = a3[11];
  v100 = a3[10];
  v101 = v12;
  v102 = a3[12];
  v13 = a3[9];
  v98 = a3[8];
  v99 = v13;
  v14 = *(a3 + 27);
  v103 = *(a3 + 26);
  v104 = 0;
  v15 = *(a3 + 28);
  v106 = 0;
  v105 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&v104, v14, v15, (v15 - v14) >> 4);
  REAnchoringComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (REAnchoringComponentGetDescriptorType() == 3)
  {
    DescriptorAlignment = REAnchoringComponentGetDescriptorAlignment();
    DescriptorClassification = REAnchoringComponentGetDescriptorClassification();
    REAnchoringComponentGetDescriptorBounds();
    v51 = v17;
    RETransformComponentGetComponentType();
    if (!REEntityGetComponentByClass())
    {
      v18 = rf::realityFusionLogObject(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = REEntityGetName();
        _os_log_impl(&dword_2617CB000, v18, OS_LOG_TYPE_DEFAULT, "AnchorManagementConsumer::matchAndReanchorEntity(): Transform component not found when attempting to match & reanchor entity %s, adding one", buf, 0xCu);
      }

      RETransformComponentGetComponentType();
      REEntityAddComponentByClass();
    }

    RETransformComponentGetLocalSRT();
    v47 = v19;
    CameraAnchor = rf::helpers::getCameraAnchor(a4);
    rf::helpers::getTransformFromAnchor(a3, &ComponentByClass, (CameraAnchor + 4), a1 + 288, *(a1 + 576), &v52);
    v21 = *(a4 + 2);
    if (v21)
    {
      v22 = vaddq_f32(v55, vmlaq_laneq_f32(vmlaq_f32(vmulq_n_f32(v52, v47.f32[0]), 0, v53), v54, v47, 2));
      v45 = vdivq_f32(v22, vdupq_laneq_s32(v22, 3));
      v46 = vmlaq_f32(vaddq_f32(vmulq_f32(v52, 0), v53), 0, v54);
      v48 = vnegq_f32(v46);
      v49 = vaddq_f32(v45, vmulq_f32(v46, vdupq_n_s32(0x3D4CCCCDu)));
      while (1)
      {
        std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](buf, (v21 + 6));
        if (v90 != 1)
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf);
          goto LABEL_31;
        }

        v63 = v79;
        v64[0] = *v80;
        *(v64 + 9) = *&v80[9];
        v59 = *buf;
        v60 = v76;
        v61 = v77;
        v62 = v78;
        v65 = v81;
        v68 = v84;
        v69 = v85;
        v70 = v86;
        v66 = v82;
        v67 = v83;
        v71 = v87;
        __p = 0;
        v73 = 0;
        v74 = 0;
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&__p, v88, v89, (v89 - v88) >> 4);
        v23 = v60 ? v59 : &v59;
        v24 = v92 ? v91 : &v91;
        if (!uuid_compare(v23, v24))
        {
          break;
        }

        if (DescriptorAlignment != 255)
        {
          if (v71)
          {
            if (v71 != 1 || (DescriptorAlignment & 2) == 0)
            {
              break;
            }
          }

          else if ((DescriptorAlignment & 1) == 0)
          {
            break;
          }
        }

        v26 = rf::helpers::classificationMatches(SHIDWORD(v71), DescriptorClassification);
        v25 = 1;
        if (v26)
        {
          if (v70.f32[0] >= *&v51 && v70.f32[2] >= *(&v51 + 1))
          {
            v34 = rf::helpers::rayPlaneHitTestInBounds(v49, v48, v61, v62, v63, v64[0], v26, v27, v28, v29, v30, v31, v32, v33, v68, v69, v66, v67, v68, v69, v70);
            if ((v34 & 0x100000000) != 0 && *&v34 >= 0.0)
            {
              v35 = 0;
              v36 = v61;
              v37 = v62;
              v38 = v63;
              v39 = v64[0];
              v57[0] = v66;
              v57[1] = v67;
              v57[2] = v68;
              v57[3] = v69;
              do
              {
                v57[v35 + 4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, COERCE_FLOAT(v57[v35])), v37, *&v57[v35], 1), v38, v57[v35], 2), v39, v57[v35], 3);
                ++v35;
              }

              while (v35 != 4);
              v40 = vmlaq_f32(vaddq_f32(vmulq_f32(v36, 0), v37), 0, v38);
              v41 = vabdq_f32(v46, v40);
              v25 = 1;
              if (v41.f32[0] <= 0.1 && v41.f32[1] <= 0.1 && v41.f32[2] <= 0.1)
              {
                v42 = vmulq_f32(v40, vsubq_f32(v45, v57[7]));
                if (fabsf(v42.f32[2] + vaddv_f32(*v42.f32)) <= 0.05)
                {
                  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v58, buf);
                  rf::data_flow::consumer::AnchorManagementConsumer::anchorEntity(a1, a2, v58, ComponentByClass, a4, 0);
                  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v58);
                  v43 = *(a1 + 56);
                  if (v43)
                  {
                    std::function<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::operator()(v43, a2, 1);
                  }

                  RETransformComponentGetLocalSRT();
                  RETransformComponentSetLocalSRT();
                  v25 = 0;
                }
              }
            }
          }
        }

LABEL_26:
        if (__p)
        {
          v73 = __p;
          operator delete(__p);
        }

        std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf);
        if ((v25 & 1) == 0)
        {
          v8 = 1;
          goto LABEL_49;
        }

LABEL_31:
        v21 = *v21;
        if (!v21)
        {
          goto LABEL_48;
        }
      }

      v25 = 1;
      goto LABEL_26;
    }
  }

LABEL_48:
  v8 = 0;
LABEL_49:
  if (v104)
  {
    v105 = v104;
    operator delete(v104);
  }

  return v8;
}

void sub_261851118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a61);
  rf::data_flow::PlaneAnchor::~PlaneAnchor(&STACK[0x2B0]);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&STACK[0x3A0]);
  rf::data_flow::PlaneAnchor::~PlaneAnchor(&STACK[0x4B0]);
  _Unwind_Resume(a1);
}

uint64_t rf::data_flow::consumer::AnchorManagementConsumer::relocalizeEntity(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = REAnchorComponentGetIsAnchorExternal();
  if (result)
  {
    REAnchorComponentSetIsAnchorExternal();
    if (a4 && REAnchorComponentGetSendIsAnchoredToClient())
    {
      RENetworkMarkComponentDirty();
    }

    rf::helpers::publishAnchorStateEventDidAnchor(a2, 1u);
    result = *(a1 + 56);
    if (result)
    {

      return std::function<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::operator()(result, a2, 5);
    }
  }

  return result;
}

uint64_t std::function<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

void *std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_1> &>(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24) == 1)
  {
    return *(a1 + 16);
  }

  for (i = *(*a1 + 16); i; i = *i)
  {
    rf::helpers::getRFUUIDFromAnchor((i + 6), v5);
    if (v6)
    {
      v3 = v5[0];
    }

    else
    {
      v3 = v5;
    }

    if (!uuid_compare(v3, **(a1 + 8)))
    {
      break;
    }
  }

  *(a1 + 16) = i;
  *(a1 + 24) = 1;
  return i;
}

void *std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_7> &>(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    return *(a1 + 16);
  }

  for (i = *(*a1 + 16); i; i = *i)
  {
    if (rf::helpers::imageAnchorMatches((i + 6), **(a1 + 8), 1))
    {
      break;
    }
  }

  *(a1 + 16) = i;
  *(a1 + 24) = 1;
  return i;
}

void *std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_8> &>(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    return *(a1 + 16);
  }

  for (i = *(*a1 + 16); i; i = *i)
  {
    if (rf::helpers::objectAnchorMatches((i + 6), **(a1 + 8)))
    {
      break;
    }
  }

  *(a1 + 16) = i;
  *(a1 + 24) = 1;
  return i;
}

void *rf::data_flow::consumer::AnchorManagementConsumer::setEntitledAnchoringTypeAllowedForEntity(void *result, uint64_t a2, int a3, char a4)
{
  v6 = a2;
  if (a3 > 4)
  {
    switch(a3)
    {
      case 5:
        v7 = &v6;
        result = std::__hash_table<std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(result + 120, &v6, &std::piecewise_construct, &v7);
        v5 = result + 27;
        break;
      case 8:
        v7 = &v6;
        result = std::__hash_table<std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(result + 120, &v6, &std::piecewise_construct, &v7);
        v5 = result + 28;
        break;
      case 12:
        v7 = &v6;
        result = std::__hash_table<std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(result + 120, &v6, &std::piecewise_construct, &v7);
        v5 = result + 29;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(a3)
    {
      case 1:
        v7 = &v6;
        result = std::__hash_table<std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(result + 120, &v6, &std::piecewise_construct, &v7);
        v5 = result + 3;
        break;
      case 3:
        v7 = &v6;
        result = std::__hash_table<std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(result + 120, &v6, &std::piecewise_construct, &v7);
        v5 = result + 25;
        break;
      case 4:
        v7 = &v6;
        result = std::__hash_table<std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(result + 120, &v6, &std::piecewise_construct, &v7);
        v5 = result + 26;
        break;
      default:
        return result;
    }
  }

  *v5 = a4;
  return result;
}

void *rf::data_flow::consumer::AnchorManagementConsumer::getEntitledAnchoringTypeAllowedForEntity(uint64_t a1, unint64_t a2, int a3)
{
  v7 = a2;
  result = std::__hash_table<std::__hash_value_type<unsigned long,std::any>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::any>>>::find<unsigned long>((a1 + 480), &v7);
  if (result)
  {
    v8 = &v7;
    v6 = std::__hash_table<std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 480), &v7, &std::piecewise_construct, &v8);
    return rf::helpers::authorizedTypeForEntitledAnchoringTypesConfig(a3, v6 + 24);
  }

  return result;
}

void *std::function<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void *std::function<rf::data_flow::RFUUID ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<rf::data_flow::RFUUID ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<rf::data_flow::RFUUID ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<rf::data_flow::RFUUID ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void *std::function<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void *std::function<void ()(NSSet<ARReferenceImage *> *)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(NSSet<ARReferenceImage *> *)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(NSSet<ARReferenceImage *> *)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(NSSet<ARReferenceImage *> *)>::~__value_func[abi:ne200100](v4);
  return a1;
}

uint64_t relocalizeEntityIfNeeded(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned int a5)
{
  result = REAnchorComponentGetIsAnchorExternal();
  if (result)
  {
    result = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(a3, a2);
    if (result)
    {
      REAnchorComponentSetIsAnchorExternal();
      if (REAnchorComponentGetSendIsAnchoredToClient())
      {
        RENetworkMarkComponentDirty();
      }

      rf::helpers::publishAnchorStateEventDidAnchor(a1, a5);
      return 1;
    }
  }

  return result;
}

uint64_t rf::data_flow::consumer::AnchorManagementConsumer::sceneRemovalEventHandle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  UniqueName = RESceneGetUniqueName();
  std::string::basic_string[abi:ne200100]<0>(&v11, UniqueName);
  *&v9 = a1;
  *(&v9 + 1) = a2;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    v10 = v11;
  }

  MEMORY[0x26670C400]("RESceneWillRemoveEvent");
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3321888768;
  v12[2] = ___ZZN2rf9data_flow8consumer24AnchorManagementConsumer23sceneRemovalEventHandleEP7RESceneP10REEventBusENK3__0cvU13block_pointerF20REEventHandlerResultPvPKvEEv_block_invoke;
  v12[3] = &__block_descriptor_72_ea8_32c108_ZTSKZN2rf9data_flow8consumer24AnchorManagementConsumer23sceneRemovalEventHandleEP7RESceneP10REEventBusE3__0_e14_I24__0_v8r_v16l;
  v13 = v9;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v10;
  }

  v6 = MEMORY[0x26670D530](v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = REEventBusSubscribeBlock();

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_2618519E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL rf::data_flow::consumer::AnchorManagementConsumer::addOrUpdateAnchorSourceComponentData(rf::AnchorSourceComponent *a1, uint64_t a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  if (*rf::AnchorSourceComponent::instance(a1))
  {
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
    *uu = 0u;
    uuid_clear(uu);
    v24 = xmmword_26185DD00;
    v25 = xmmword_26185DD10;
    v26 = xmmword_26185DD20;
    v27 = xmmword_26185E1B0;
    *&v28 = 16842752;
    BYTE8(v28) = 0;
    *&v29 = 0;
    LOBYTE(v30) = 0;
    BYTE8(v31) = 0;
    *&v32 = 0;
    uuid_clear(&v30 + 8);
    BYTE8(v32) = 0;
    BYTE8(v34) = 0;
    v35 = 0;
    REAnchorComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      AnchorIdentifier = REAnchorComponentGetAnchorIdentifier();
      v19 = 0;
      v20 = 0;
      uuid_clear(v18);
      *v18 = AnchorIdentifier;
      v19 = 1;
      v5 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(a3 + 10, v18);
      v6 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(a3 + 15, v18);
      v7 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(a3, v18);
      if (v5 || (v5 = v6) != 0)
      {
        v7 = std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1> const&>(uu, (v5 + 6));
        v8 = 0;
        v9 = 0;
LABEL_6:
        rf::AnchorSourceComponent::instance(v7);
        v10 = REEntityGetOrAddComponentByClass();
        v11 = v10 != 0;
        if (v10)
        {
          Object = RECustomComponentGetObject();
          v13 = Object;
          if (v9)
          {
            objc_storeStrong(Object, *(v9 + 416));
            v14 = 1;
          }

          else
          {
            rf::helpers::getBaseAnchorProperties(uu);
            objc_storeStrong(v13, obj);

            v14 = 0;
            v15 = v35;
            if (v35 == 5)
            {
              v16 = 5;
            }

            else
            {
              v16 = 0;
            }

            if (v35 >= 5)
            {
              v15 = v16;
            }

            *(v13 + 2) = v15;
          }

          *(v13 + 12) = v14;
        }

        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        goto LABEL_23;
      }

      if (v7)
      {
        v9 = *(v7 + 6);
        v8 = *(v7 + 7);
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        goto LABEL_6;
      }
    }

    v11 = 0;
LABEL_23:
    std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uu);
    return v11;
  }

  return 0;
}

void sub_261851C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t rf::data_flow::consumer::AnchorManagementConsumer::anchorComponentEventHandles@<X0>(uint64_t *a5@<X8>)
{
  MEMORY[0x26670C400]("REComponentDidAddEvent");
  REAnchorComponentGetComponentType();
  v6 = REEventBusSubscribeWithMatch();
  v16 = v7;
  MEMORY[0x26670C400]("REComponentDidChangeEvent");
  REAnchorComponentGetComponentType();
  v8 = REEventBusSubscribeWithMatch();
  v10 = v9;
  MEMORY[0x26670C400]("REComponentDidChangeEvent");
  RESceneUnderstandingComponentGetComponentType();
  v11 = REEventBusSubscribeWithMatch();
  v13 = v12;
  MEMORY[0x26670C400]("REComponentWillRemoveEvent");
  REAnchorComponentGetComponentType();
  result = REEventBusSubscribeWithMatch();
  *a5 = v6;
  a5[1] = v16;
  a5[2] = v8;
  a5[3] = v10;
  a5[4] = v11;
  a5[5] = v13;
  a5[6] = result;
  a5[7] = v15;
  return result;
}

uint64_t ___ZN2rf9data_flow8consumer24AnchorManagementConsumer27anchorComponentEventHandlesEP7RESceneP10REEventBusRKNS_11ARStateDataE_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  REEntityGetComponentByClass();
  SourceType = RESceneUnderstandingComponentGetSourceType();
  if (SourceType == 1)
  {
    rf::data_flow::consumer::AnchorManagementConsumer::addOrUpdateAnchorSourceComponentData(SourceType, *a3, *(a1 + 40));
  }

  return 0;
}

uint64_t ___ZN2rf9data_flow8consumer24AnchorManagementConsumer27anchorComponentEventHandlesEP7RESceneP10REEventBusRKNS_11ARStateDataE_block_invoke_4(rf::AnchorSourceComponent *a1, uint64_t a2, unint64_t *a3)
{
  v5 = *(a1 + 4);
  v6 = rf::AnchorSourceComponent::instance(a1);
  if (*v6)
  {
    rf::AnchorSourceComponent::instance(v6);
    CustomComponent = REEntityGetCustomComponent();
    if (CustomComponent)
    {
      rf::AnchorSourceComponent::instance(CustomComponent);
      REEntityRemoveComponentByClass();
    }
  }

  v19 = (a1 + 40);
  v8 = std::__hash_table<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>>>::__emplace_unique_key_args<REScene *,std::piecewise_construct_t const&,std::tuple<REScene * const&>,std::tuple<>>((v5 + 248), a1 + 5, &std::piecewise_construct, &v19);
  v9 = v8[4];
  if (v9)
  {
    v10 = 0x9DDFEA08EB382D69 * ((8 * (*a3 & 0x1FFFFFFF) + 8) ^ HIDWORD(*a3));
    v11 = 0x9DDFEA08EB382D69 * (HIDWORD(*a3) ^ (v10 >> 47) ^ v10);
    v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
    v13 = vcnt_s8(v9);
    v13.i16[0] = vaddlv_u8(v13);
    if (v13.u32[0] > 1uLL)
    {
      v14 = v12;
      if (v12 >= *&v9)
      {
        v14 = v12 % *&v9;
      }
    }

    else
    {
      v14 = v12 & (*&v9 - 1);
    }

    v15 = *(v8[3] + 8 * v14);
    if (v15)
    {
      for (i = *v15; i; i = *i)
      {
        v17 = i[1];
        if (v17 == v12)
        {
          if (i[2] == *a3)
          {
            std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::erase(v8 + 3, i);
            return 0;
          }
        }

        else
        {
          if (v13.u32[0] > 1uLL)
          {
            if (v17 >= *&v9)
            {
              v17 %= *&v9;
            }
          }

          else
          {
            v17 &= *&v9 - 1;
          }

          if (v17 != v14)
          {
            return 0;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t rf::data_flow::consumer::AnchorManagementConsumer::addAnchorSourceComponentDataForWorldAnchorEntities(uint64_t result, void *a2, void *a3)
{
  for (i = a2[2]; i; i = *i)
  {
    while (1)
    {
      result = rf::data_flow::consumer::AnchorManagementConsumer::addOrUpdateAnchorSourceComponentData(result, i[2], a3);
      if (!result)
      {
        break;
      }

      result = std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::erase(a2, i);
      i = result;
      if (!result)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<rf::data_flow::RFUUID ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(NSSet<ARReferenceImage *> *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::ranges::__find_if_impl[abi:ne200100]<std::__wrap_iter<REComponent **>,std::__wrap_iter<REComponent **>,std::reference_wrapper<rf::data_flow::consumer::AnchorManagementConsumer::updateAnchorDefinitionComponents(REScene *,std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const&)::$_0>,std::identity>(void *a1, void *a2)
{
  v2 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (1)
    {
      Object = RECustomComponentGetObject();
      Entity = REComponentGetEntity();
      if (*(Object + 21) == 1 && !rf::helpers::isRemotelyOwned(Entity))
      {
        break;
      }

      if (++v3 == v2)
      {
        return v2;
      }
    }

    return v3;
  }

  return v2;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::consumer::AnchorManagementConsumer::updateAnchorDefinitionComponents(REScene *,std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const&)::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>(uint64_t *a1, __n128 *a2)
{
  v2 = *a1;
  RETransformComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  REMakeSRTFromMatrix();
  RETransformComponentSetWorldSRT();
  result = RENetworkMarkComponentDirty();
  *(**v2 + 72) = 0;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::consumer::AnchorManagementConsumer::updateAnchorDefinitionComponents(REScene *,std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const&)::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>(uint64_t ***a1, uint64_t a2)
{
  v3 = *a1;
  RETransformComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  REMakeSRTFromMatrix();
  RETransformComponentSetWorldSRT();
  RENetworkMarkComponentDirty();
  v4 = **v3;
  *(v4 + 72) = 0;
  v8 = *(a2 + 192);
  v9 = 0u;
  v5 = *(a2 + 176);
  v6 = v8;
  DWORD1(v6) = DWORD1(v9);
  *(v4 + 16) = 1;
  *(v4 + 32) = v5;
  *(**v3 + 48) = v6;

  return RENetworkMarkComponentDirty();
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::consumer::AnchorManagementConsumer::updateAnchorDefinitionComponents(REScene *,std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const&)::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>(uint64_t *a1, __n128 *a2)
{
  v2 = *a1;
  RETransformComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  REMakeSRTFromMatrix();
  RETransformComponentSetWorldSRT();
  result = RENetworkMarkComponentDirty();
  *(**v2 + 72) = 0;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::consumer::AnchorManagementConsumer::updateAnchorDefinitionComponents(REScene *,std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const&)::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>(uint64_t *a1, __n128 *a2)
{
  v2 = *a1;
  RETransformComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  REMakeSRTFromMatrix();
  RETransformComponentSetWorldSRT();
  result = RENetworkMarkComponentDirty();
  *(**v2 + 72) = 0;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::consumer::AnchorManagementConsumer::updateAnchorDefinitionComponents(REScene *,std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const&)::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>(uint64_t *a1, __n128 *a2)
{
  v2 = *a1;
  RETransformComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  REMakeSRTFromMatrix();
  RETransformComponentSetWorldSRT();
  result = RENetworkMarkComponentDirty();
  *(**v2 + 72) = 0;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::consumer::AnchorManagementConsumer::updateAnchorDefinitionComponents(REScene *,std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const&)::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>(uint64_t *a1, __n128 *a2)
{
  v2 = *a1;
  RETransformComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  REMakeSRTFromMatrix();
  RETransformComponentSetWorldSRT();
  result = RENetworkMarkComponentDirty();
  *(**v2 + 72) = 0;
  return result;
}

uint64_t std::pair<std::string const,std::unordered_map<std::string,ARReferenceImage * {__strong}>>::~pair(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ARReferenceImage * {__strong}>>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::pair<std::string const,ARReferenceImage * {__strong}>::~pair(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

id std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_2> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v3;
  *(a2 + 89) = *(a1 + 89);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  v5 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  result = *(a1 + 112);
  *(a2 + 112) = result;
  return result;
}

id std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_2> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v3;
  *(a2 + 89) = *(a1 + 89);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  v5 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  result = *(a1 + 112);
  *(a2 + 112) = result;
  return result;
}

id std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_2> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v3;
  *(a2 + 89) = *(a1 + 89);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  v5 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  result = *(a1 + 112);
  *(a2 + 112) = result;
  return result;
}

id std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_2> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v3;
  *(a2 + 89) = *(a1 + 89);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  v5 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  result = *(a1 + 112);
  *(a2 + 112) = result;
  return result;
}

id std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_2> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v3;
  *(a2 + 89) = *(a1 + 89);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  v5 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  result = *(a1 + 112);
  *(a2 + 112) = result;
  return result;
}

id std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_2> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v3;
  *(a2 + 89) = *(a1 + 89);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  v5 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  result = *(a1 + 112);
  *(a2 + 112) = result;
  return result;
}

__n128 std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_3>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_4>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_5> &>(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a2 + 72) & 1) == 0)
  {
    if (*(a2 + 40) == 1)
    {
      i = *(a2 + 32);
    }

    else
    {
      for (i = *(*(a2 + 16) + 16); i; i = *i)
      {
        if (rf::helpers::planeAnchorMatches((i + 6), *(a2 + 24)))
        {
          break;
        }
      }

      *(a2 + 32) = i;
      *(a2 + 40) = 1;
    }

    v15[0] = a2;
    v15[1] = i;
    v15[2] = a2 + 16;
    v14[0] = a2;
    v14[1] = 0;
    v14[2] = a2 + 16;
    std::ranges::__find_if_impl[abi:ne200100]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_3>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_4>::__iterator<false>,std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_3>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_4>::__iterator<false>,std::reference_wrapper<rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_5>,std::identity>(&v12, v15, v14, a4, a5, a6, a7, a8);
    *(a2 + 48) = v12;
    *(a2 + 64) = v13;
    *(a2 + 72) = 1;
  }

  result = *(a2 + 48);
  *a1 = result;
  a1[1].n128_u64[0] = *(a2 + 64);
  a1[1].n128_u64[1] = a2;
  return result;
}

uint64_t std::ranges::filter_view[abi:llvm18_nua]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_3>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_4>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_5>::__iterator::operator++[abi:ne200100](uint64_t a1)
{
  v2 = std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_3>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_4>::__iterator<false>::operator++[abi:ne200100](a1);
  v13 = *v2;
  v3 = *(v2 + 24);
  v14 = *(v2 + 16);
  v12[0] = v3;
  v12[1] = 0;
  v12[2] = v3 + 16;
  std::ranges::__find_if_impl[abi:ne200100]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_3>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_4>::__iterator<false>,std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_3>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_4>::__iterator<false>,std::reference_wrapper<rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_5>,std::identity>(&v10, &v13, v12, v4, v5, v6, v7, v8);
  *a1 = v10;
  *(a1 + 16) = v11;
  return a1;
}

uint64_t std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_3>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_4>::__iterator<false>::operator++[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  *(a1 + 8) = *v2;
  if (v3)
  {
    v4 = *(a1 + 16);
    do
    {
      if (rf::helpers::planeAnchorMatches((v3 + 6), *(v4 + 8)))
      {
        break;
      }

      v3 = *v3;
    }

    while (v3);
  }

  *(a1 + 8) = v3;
  return a1;
}

__n128 std::ranges::__find_if_impl[abi:ne200100]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_3>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_4>::__iterator<false>,std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_3>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_4>::__iterator<false>,std::reference_wrapper<rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_5>,std::identity>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *MEMORY[0x277D85DE8];
  for (i = a2[1]; i != *(a3 + 8); i = a2[1])
  {
    std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_3>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_4>::__iterator<false>::operator*[abi:ne200100](v14, *a2, i, a4, a5, a6, a7, a8);
    v12 = v14[276];
    std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v14);
    if (v12)
    {
      break;
    }

    std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_3>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_4>::__iterator<false>::operator++[abi:ne200100](a2);
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[2];
  return result;
}

uint64_t std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>> const>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_3>,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_4>::__iterator<false>::operator*[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a3 + 304) != 1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v10 = rf::helpers::rayPlaneHitTestInBounds(*(*(a2 + 8) + 48), vnegq_f32(*(*(a2 + 8) + 32)), *(a3 + 80), *(a3 + 96), *(a3 + 112), *(a3 + 128), a1, a2, a3, a4, a5, a6, a7, a8, *(a3 + 176), *(a3 + 192), *(a3 + 176), *(a3 + 192), *(a3 + 208), *(a3 + 224), *(a3 + 240));
  result = std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](a1, a3 + 48);
  *(a1 + 272) = v10 & 0xFFFFFFFFFFLL;
  return result;
}

void std::vector<std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 288;
        std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__introsort<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,false>(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  v6 = result;
  v106 = *MEMORY[0x277D85DE8];
  while (2)
  {
    v7 = a2;
    v100 = a2 - 288;
    v8 = v6;
    while (1)
    {
      while (1)
      {
        v6 = v8;
        v9 = v7 - v8;
        v10 = 0x8E38E38E38E38E39 * ((v7 - v8) >> 5);
        v11 = v10 - 2;
        if (v10 > 2)
        {
          switch(v10)
          {
            case 3:
              return std::__sort3[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,0>(v6, v6 + 288, v100);
            case 4:
              return std::__sort4[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,0>(v6, v6 + 288, v6 + 576, v100);
            case 5:
              return std::__sort5[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,0>(v6, v6 + 288, v6 + 576, v6 + 864, v100);
          }
        }

        else
        {
          if (v10 < 2)
          {
            return result;
          }

          v7 = a2;
          if (v10 == 2)
          {
            if ((*(a2 - 12) & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            if ((*(v6 + 276) & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            if (*(a2 - 16) < *(v6 + 272))
            {
              return std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>>::swap[abi:ne200100](v6, v100);
            }

            return result;
          }
        }

        if (v9 <= 6911)
        {
          if (a4)
          {
            if (v6 != v7)
            {
              v49 = v6 + 288;
              if (v6 + 288 != a2)
              {
                v50 = 0;
                v51 = v6;
                do
                {
                  v52 = v49;
                  if ((*(v51 + 564) & 1) == 0)
                  {
                    std::__throw_bad_optional_access[abi:ne200100]();
                  }

                  v53 = a2;
                  if ((*(v51 + 276) & 1) == 0)
                  {
                    std::__throw_bad_optional_access[abi:ne200100]();
                  }

                  if (*(v51 + 560) < *(v51 + 272))
                  {
                    std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v104, v49);
                    v105 = *(v51 + 560);
                    v54 = v50;
                    while (1)
                    {
                      v55 = v54;
                      v56 = v6 + v54;
                      std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(v6 + v54 + 288, v6 + v54);
                      *(v56 + 560) = *(v56 + 272);
                      *(v56 + 564) = *(v56 + 276);
                      if (!v55)
                      {
                        break;
                      }

                      if (BYTE4(v105) != 1 || (*(v6 + v55 - 12) & 1) == 0)
                      {
                        std::__throw_bad_optional_access[abi:ne200100]();
                      }

                      v54 = v55 - 288;
                      if (*&v105 >= *(v6 + v55 - 16))
                      {
                        v57 = v6 + v55;
                        goto LABEL_101;
                      }
                    }

                    v57 = v6;
LABEL_101:
                    std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(v57, v104);
                    v58 = v6 + v55 + 272;
                    v59 = v105;
                    *(v58 + 4) = BYTE4(v105);
                    *v58 = v59;
                    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v104);
                    v53 = a2;
                  }

                  v49 = v52 + 288;
                  v50 += 288;
                  v51 = v52;
                }

                while (v52 + 288 != v53);
              }
            }
          }

          else if (v6 != v7)
          {
            v94 = v6 + 288;
            if (v6 + 288 != a2)
            {
              v95 = v6 - 16;
              do
              {
                v96 = v94;
                if ((*(v6 + 564) & 1) == 0)
                {
                  std::__throw_bad_optional_access[abi:ne200100]();
                }

                if ((*(v6 + 276) & 1) == 0)
                {
                  std::__throw_bad_optional_access[abi:ne200100]();
                }

                if (*(v6 + 560) < *(v6 + 272))
                {
                  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v104, v94);
                  v105 = *(v6 + 560);
                  v97 = v95;
                  do
                  {
                    std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(v97 + 304, v97 + 16);
                    *(v97 + 576) = *(v97 + 288);
                    *(v97 + 580) = *(v97 + 292);
                    if (BYTE4(v105) != 1 || (*(v97 + 4) & 1) == 0)
                    {
                      std::__throw_bad_optional_access[abi:ne200100]();
                    }

                    v98 = *v97;
                    v97 -= 288;
                  }

                  while (*&v105 < v98);
                  std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(v97 + 304, v104);
                  v99 = v105;
                  *(v97 + 580) = BYTE4(v105);
                  *(v97 + 576) = v99;
                  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v104);
                }

                v94 = v96 + 288;
                v95 += 288;
                v6 = v96;
              }

              while (v96 + 288 != a2);
            }
          }

          return result;
        }

        if (!a3)
        {
          if (v6 != v7)
          {
            v60 = v11 >> 1;
            v61 = v11 >> 1;
            do
            {
              v62 = v61;
              if (v60 >= v61)
              {
                v63 = (2 * v61) | 1;
                v64 = v6 + 288 * v63;
                if (2 * v61 + 2 < v10)
                {
                  if ((*(v64 + 276) & 1) == 0)
                  {
                    std::__throw_bad_optional_access[abi:ne200100]();
                  }

                  if ((*(v64 + 564) & 1) == 0)
                  {
                    std::__throw_bad_optional_access[abi:ne200100]();
                  }

                  if (*(v64 + 272) < *(v64 + 560))
                  {
                    v64 += 288;
                    v63 = 2 * v61 + 2;
                  }
                }

                if ((*(v64 + 276) & 1) == 0)
                {
                  std::__throw_bad_optional_access[abi:ne200100]();
                }

                v65 = v6 + 288 * v61;
                if ((*(v65 + 276) & 1) == 0)
                {
                  std::__throw_bad_optional_access[abi:ne200100]();
                }

                if (*(v64 + 272) >= *(v65 + 272))
                {
                  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v104, v6 + 288 * v61);
                  v105 = *(v65 + 272);
                  do
                  {
                    v66 = v64;
                    std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(v65, v64);
                    v67 = *(v64 + 272);
                    *(v65 + 276) = *(v64 + 276);
                    *(v65 + 272) = v67;
                    if (v60 < v63)
                    {
                      break;
                    }

                    v68 = 2 * v63;
                    v63 = (2 * v63) | 1;
                    v64 = v6 + 288 * v63;
                    v69 = v68 + 2;
                    if (v69 < v10)
                    {
                      if (*(v64 + 276) != 1 || *(v64 + 564) != 1)
                      {
LABEL_169:
                        std::__throw_bad_optional_access[abi:ne200100]();
                      }

                      if (*(v64 + 272) < *(v64 + 560))
                      {
                        v64 += 288;
                        v63 = v69;
                      }
                    }

                    if (*(v64 + 276) != 1 || (v105 & 0x100000000) == 0)
                    {
                      goto LABEL_169;
                    }

                    v65 = v66;
                  }

                  while (*(v64 + 272) >= *&v105);
                  std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(v66, v104);
                  v70 = v105;
                  *(v66 + 276) = BYTE4(v105);
                  *(v66 + 272) = v70;
                  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v104);
                }
              }

              v61 = v62 - 1;
            }

            while (v62);
            v71 = 0x8E38E38E38E38E39 * (v9 >> 5);
            do
            {
              v72 = a2;
              std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v102, v6);
              v73 = 0;
              v103 = *(v6 + 272);
              v74 = v6;
              do
              {
                v75 = v74 + 288 * v73;
                v76 = v75 + 288;
                if (2 * v73 + 2 >= v71)
                {
                  v73 = (2 * v73) | 1;
                }

                else
                {
                  if (*(v75 + 564) != 1 || *(v75 + 852) != 1)
                  {
                    goto LABEL_167;
                  }

                  v77 = *(v75 + 560);
                  v78 = *(v75 + 848);
                  v79 = v75 + 576;
                  if (v77 >= v78)
                  {
                    v73 = (2 * v73) | 1;
                  }

                  else
                  {
                    v76 = v79;
                    v73 = 2 * v73 + 2;
                  }
                }

                std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(v74, v76);
                v80 = *(v76 + 272);
                *(v74 + 276) = *(v76 + 276);
                *(v74 + 272) = v80;
                v74 = v76;
              }

              while (v73 <= ((v71 - 2) >> 1));
              v81 = (v76 + 272);
              v82 = a2 - 288;
              a2 -= 288;
              if (v76 == v72 - 288)
              {
                std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(v76, v102);
                v92 = v103;
                *(v76 + 276) = BYTE4(v103);
                *v81 = v92;
              }

              else
              {
                std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(v76, v72 - 288);
                v84 = *(v72 - 16);
                v83 = v72 - 16;
                *(v76 + 276) = *(v83 + 4);
                *v81 = v84;
                std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(v82, v102);
                v85 = v103;
                *(v83 + 4) = BYTE4(v103);
                *v83 = v85;
                v86 = v76 - v6 + 288;
                if (v86 >= 289)
                {
                  v87 = (-2 - 0x71C71C71C71C71C7 * (v86 >> 5)) >> 1;
                  v88 = v6 + 288 * v87;
                  if (*(v88 + 276) != 1 || (*(v76 + 276) & 1) == 0)
                  {
LABEL_167:
                    std::__throw_bad_optional_access[abi:ne200100]();
                  }

                  if (*(v88 + 272) < *v81)
                  {
                    std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v104, v76);
                    v105 = *(v76 + 272);
                    do
                    {
                      v89 = v88;
                      std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(v76, v88);
                      v90 = *(v88 + 272);
                      *(v76 + 276) = *(v88 + 276);
                      *(v76 + 272) = v90;
                      if (!v87)
                      {
                        break;
                      }

                      v87 = (v87 - 1) >> 1;
                      v88 = v6 + 288 * v87;
                      if (*(v88 + 276) != 1 || (v105 & 0x100000000) == 0)
                      {
                        std::__throw_bad_optional_access[abi:ne200100]();
                      }

                      v76 = v89;
                    }

                    while (*(v88 + 272) < *&v105);
                    std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(v89, v104);
                    v91 = v105;
                    *(v89 + 276) = BYTE4(v105);
                    *(v89 + 272) = v91;
                    std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v104);
                  }
                }
              }

              result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v102);
            }

            while (v71-- > 2);
          }

          return result;
        }

        v12 = v10 >> 1;
        v13 = v6 + 288 * (v10 >> 1);
        if (v9 <= 0x9000)
        {
          std::__sort3[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,0>(v13, v6, v100);
        }

        else
        {
          std::__sort3[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,0>(v6, v13, v100);
          v14 = v6 + 288 * v12 - 288;
          std::__sort3[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,0>(v6 + 288, v14, a2 - 576);
          v15 = v6 + 288 * v12;
          std::__sort3[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,0>(v6 + 576, v15 + 288, a2 - 864);
          std::__sort3[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,0>(v14, v13, v15 + 288);
          std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>>::swap[abi:ne200100](v6, v13);
        }

        --a3;
        if (a4)
        {
          break;
        }

        if ((*(v6 - 12) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        if ((*(v6 + 276) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        if (*(v6 - 16) < *(v6 + 272))
        {
          break;
        }

        std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v104, v6);
        v35 = *(v6 + 272);
        v105 = v35;
        if ((v35 & 0x100000000) == 0 || *(v7 - 12) != 1)
        {
          goto LABEL_168;
        }

        v36 = *&v35;
        if (*(v7 - 16) > *&v35)
        {
          v37 = v6;
          while (*(v37 + 564) == 1)
          {
            v8 = v37 + 288;
            v38 = *(v37 + 560);
            v37 += 288;
            if (v38 > v36)
            {
              goto LABEL_61;
            }
          }

LABEL_168:
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v39 = v6 + 288;
        do
        {
          v8 = v39;
          if (v39 >= v7)
          {
            break;
          }

          if (*(v39 + 276) != 1)
          {
            goto LABEL_168;
          }

          v39 += 288;
        }

        while (*(v8 + 272) <= v36);
LABEL_61:
        v40 = v7;
        if (v8 < v7)
        {
          v41 = v7;
          while (*(v41 - 12) == 1)
          {
            v40 = v41 - 288;
            v42 = *(v41 - 16);
            v41 -= 288;
            if (v42 <= v36)
            {
              goto LABEL_73;
            }
          }

          goto LABEL_168;
        }

LABEL_73:
        if (v8 < v40)
        {
          std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>>::swap[abi:ne200100](v8, v40);
          if (BYTE4(v105) == 1)
          {
            v43 = v8;
            do
            {
              if (*(v43 + 564) != 1)
              {
                goto LABEL_168;
              }

              v8 = v43 + 288;
              v44 = *(v43 + 560);
              v43 += 288;
            }

            while (*&v105 >= v44);
            v45 = v40;
            while ((*(v45 - 12) & 1) != 0)
            {
              v40 = v45 - 288;
              v46 = *(v45 - 16);
              v45 -= 288;
              if (*&v105 >= v46)
              {
                goto LABEL_73;
              }
            }
          }

          goto LABEL_168;
        }

        if (v8 - 288 != v6)
        {
          std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(v6, v8 - 288);
          v47 = *(v8 - 16);
          *(v6 + 276) = *(v8 - 12);
          *(v6 + 272) = v47;
        }

        std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(v8 - 288, v104);
        v48 = v105;
        *(v8 - 12) = BYTE4(v105);
        *(v8 - 16) = v48;
        result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v104);
LABEL_77:
        a4 = 0;
      }

      std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v104, v6);
      v16 = *(v6 + 272);
      v105 = v16;
      if ((v16 & 0x100000000) == 0)
      {
        goto LABEL_166;
      }

      v17 = 0;
      v18 = *&v16;
      do
      {
        if (*(v6 + v17 + 564) != 1)
        {
          goto LABEL_166;
        }

        v19 = *(v6 + v17 + 560);
        v17 += 288;
      }

      while (v19 < *&v16);
      v20 = v6 + v17;
      v21 = a2;
      if (v17 != 288)
      {
        while ((*(v21 - 12) & 1) != 0)
        {
          v22 = v21 - 288;
          v23 = *(v21 - 16);
          v21 -= 288;
          if (v23 < v18)
          {
            goto LABEL_33;
          }
        }

LABEL_166:
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v24 = a2;
      while (v20 < v24)
      {
        if (*(v24 - 12) != 1)
        {
          goto LABEL_166;
        }

        v22 = v24 - 288;
        v25 = *(v24 - 16);
        v24 -= 288;
        if (v25 < v18)
        {
          goto LABEL_33;
        }
      }

      v22 = v24;
LABEL_33:
      v8 = v20;
      if (v20 < v22)
      {
        v26 = v22;
        do
        {
          std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>>::swap[abi:ne200100](v8, v26);
          if ((v105 & 0x100000000) == 0)
          {
LABEL_165:
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          v27 = v8;
          do
          {
            if (*(v27 + 564) != 1)
            {
              goto LABEL_165;
            }

            v8 = v27 + 288;
            v28 = *(v27 + 560);
            v27 += 288;
          }

          while (v28 < *&v105);
          v29 = v26;
          do
          {
            if ((*(v29 - 12) & 1) == 0)
            {
              goto LABEL_165;
            }

            v26 = v29 - 288;
            v30 = *(v29 - 16);
            v29 -= 288;
          }

          while (v30 >= *&v105);
        }

        while (v8 < v26);
      }

      if (v8 - 288 != v6)
      {
        std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(v6, v8 - 288);
        v31 = *(v8 - 16);
        *(v6 + 276) = *(v8 - 12);
        *(v6 + 272) = v31;
      }

      std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(v8 - 288, v104);
      v32 = v105;
      *(v8 - 12) = BYTE4(v105);
      *(v8 - 16) = v32;
      std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v104);
      v33 = v20 >= v22;
      v7 = a2;
      if (!v33)
      {
LABEL_49:
        result = std::__introsort<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,false>(v6, v8 - 288, a3, a4 & 1);
        goto LABEL_77;
      }

      v34 = std::__insertion_sort_incomplete[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *>(v6, v8 - 288);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *>(v8, a2);
      if (result)
      {
        break;
      }

      if (!v34)
      {
        goto LABEL_49;
      }
    }

    a2 = v8 - 288;
    if (!v34)
    {
      continue;
    }

    return result;
  }
}

void sub_2618538D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__sort3[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,0>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 276) & 1) == 0)
  {
    goto LABEL_21;
  }

  v3 = result;
  if ((*(result + 276) & 1) == 0)
  {
    goto LABEL_21;
  }

  v6 = *(a2 + 272);
  if (v6 < *(result + 272))
  {
    if (*(a3 + 276))
    {
      if (*(a3 + 272) < v6)
      {
LABEL_10:
        v7 = a3;
        goto LABEL_17;
      }

      result = std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>>::swap[abi:ne200100](result, a2);
      if (*(a3 + 276) & 1) != 0 && (*(a2 + 276))
      {
        if (*(a3 + 272) >= *(a2 + 272))
        {
          return result;
        }

        result = a2;
        goto LABEL_10;
      }
    }

LABEL_21:
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if ((*(a3 + 276) & 1) == 0)
  {
    goto LABEL_21;
  }

  if (*(a3 + 272) >= v6)
  {
    return result;
  }

  result = std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>>::swap[abi:ne200100](a2, a3);
  if ((*(a2 + 276) & 1) == 0 || (*(v3 + 276) & 1) == 0)
  {
    goto LABEL_21;
  }

  if (*(a2 + 272) >= *(v3 + 272))
  {
    return result;
  }

  result = v3;
  v7 = a2;
LABEL_17:

  return std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>>::swap[abi:ne200100](result, v7);
}

uint64_t std::__sort4[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = std::__sort3[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,0>(a1, a2, a3);
  if ((*(a4 + 276) & 1) == 0 || (*(a3 + 276) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (*(a4 + 272) >= *(a3 + 272))
  {
    return result;
  }

  result = std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>>::swap[abi:ne200100](a3, a4);
  if ((*(a3 + 276) & 1) == 0 || (*(a2 + 276) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (*(a3 + 272) >= *(a2 + 272))
  {
    return result;
  }

  result = std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>>::swap[abi:ne200100](a2, a3);
  if ((*(a2 + 276) & 1) == 0 || (*(a1 + 276) & 1) == 0)
  {
LABEL_14:
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if (*(a2 + 272) < *(a1 + 272))
  {

    return std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>>::swap[abi:ne200100](a1, a2);
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = std::__sort4[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,0>(a1, a2, a3, a4);
  if ((*(a5 + 276) & 1) == 0 || (*(a4 + 276) & 1) == 0)
  {
    goto LABEL_17;
  }

  if (*(a5 + 272) >= *(a4 + 272))
  {
    return result;
  }

  result = std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>>::swap[abi:ne200100](a4, a5);
  if ((*(a4 + 276) & 1) == 0 || (*(a3 + 276) & 1) == 0)
  {
    goto LABEL_17;
  }

  if (*(a4 + 272) >= *(a3 + 272))
  {
    return result;
  }

  result = std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>>::swap[abi:ne200100](a3, a4);
  if ((*(a3 + 276) & 1) == 0 || (*(a2 + 276) & 1) == 0)
  {
    goto LABEL_17;
  }

  if (*(a3 + 272) >= *(a2 + 272))
  {
    return result;
  }

  result = std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>>::swap[abi:ne200100](a2, a3);
  if ((*(a2 + 276) & 1) == 0 || (*(a1 + 276) & 1) == 0)
  {
LABEL_17:
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if (*(a2 + 272) < *(a1 + 272))
  {

    return std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>>::swap[abi:ne200100](a1, a2);
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *>(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = 0x8E38E38E38E38E39 * ((a2 - a1) >> 5);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,0>(a1, a1 + 288, a2 - 288);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,0>(a1, a1 + 288, a1 + 576, a2 - 288);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,0>(a1, a1 + 288, a1 + 576, a1 + 864, a2 - 288);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      if ((*(a2 - 12) & 1) == 0 || (*(a1 + 276) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      if (*(a2 - 16) < *(a1 + 272))
      {
        std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>>::swap[abi:ne200100](a1, a2 - 288);
      }

      return 1;
    }
  }

  v5 = a1 + 576;
  std::__sort3[abi:ne200100]<std::_RangeAlgPolicy,rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_6 &,std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>> *,0>(a1, a1 + 288, a1 + 576);
  v6 = a1 + 864;
  if (a1 + 864 != a2)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if ((*(v6 + 276) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      if ((*(v5 + 276) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      if (*(v6 + 272) < *(v5 + 272))
      {
        std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v16, v6);
        v17 = *(v6 + 272);
        v9 = v7;
        while (1)
        {
          v10 = v9;
          v11 = a1 + v9;
          std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(a1 + v9 + 864, a1 + v9 + 576);
          *(v11 + 1136) = *(v11 + 848);
          *(v11 + 1140) = *(v11 + 852);
          if (v10 == -576)
          {
            break;
          }

          if (BYTE4(v17) != 1 || (*(a1 + v10 + 564) & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          v9 = v10 - 288;
          if (*&v17 >= *(a1 + v10 + 560))
          {
            v12 = a1 + v9 + 864;
            goto LABEL_25;
          }
        }

        v12 = a1;
LABEL_25:
        std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>(v12, v16);
        v13 = a1 + v10 + 848;
        *v13 = v17;
        *(v13 + 4) = BYTE4(v17);
        if (++v8 == 8)
        {
          v14 = v6 + 288 == a2;
          std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v16);
          return v14;
        }

        std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v16);
      }

      v5 = v6;
      v7 += 288;
      v6 += 288;
    }

    while (v6 != a2);
  }

  return 1;
}

void sub_261853EF4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,std::optional<float>>::swap[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  v10[35] = *MEMORY[0x277D85DE8];
  v4 = *(result + 256);
  v5 = *(a2 + 256);
  if (v4 != -1 || v5 != -1)
  {
    v7 = v4 == -1;
    if (v4 == -1)
    {
      v4 = -1;
    }

    if (v5 == -1)
    {
      v8 = v7;
    }

    else
    {
      v8 = v4 == v5;
    }

    if (v8)
    {
      result = (off_28740B098[v4])(v10, result, a2);
    }

    else
    {
      std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v10, a2);
      std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_construct[abi:ne200100]<std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>(a2, v3);
      std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_construct[abi:ne200100]<std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>(v3, v10);
      result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v10);
    }
  }

  if (*(v3 + 276) == *(a2 + 276))
  {
    if (*(v3 + 276))
    {
      v9 = *(v3 + 272);
      *(v3 + 272) = *(a2 + 272);
      *(a2 + 272) = v9;
    }
  }

  else if (*(v3 + 276))
  {
    *(a2 + 272) = *(v3 + 272);
    *(a2 + 276) = 1;
    if (*(v3 + 276) == 1)
    {
      *(v3 + 276) = 0;
    }
  }

  else
  {
    *(v3 + 272) = *(a2 + 272);
    *(v3 + 276) = 1;
    if (*(a2 + 276) == 1)
    {
      *(a2 + 276) = 0;
    }
  }

  return result;
}

void sub_261854078(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_construct[abi:ne200100]<std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 256);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_28740B0C8[v5])(&v6, a2);
    *(a1 + 256) = v5;
  }

  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8ne200100IOZNS0_6__implIJN2rf9data_flow12CustomAnchorENS8_11PlaneAnchorENS8_11ImageAnchorENS8_12ObjectAnchorENS8_10FaceAnchorENS8_10BodyAnchorEEE6__swapB8ne200100ERSF_EUlRT_RT0_E_JRNS0_6__baseILNS0_6_TraitE1EJS9_SA_SB_SC_SD_SE_EEESQ_EEEDcSH_DpT0_(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v26 = a2[3];
  v27 = a2[4];
  *v28 = a2[5];
  *&v28[9] = *(a2 + 89);
  v23 = *a2;
  v24 = a2[1];
  v25 = a2[2];
  v5 = *(a2 + 14);
  *(a2 + 14) = 0;
  v18 = a2[8];
  v19 = a2[9];
  v21 = a2[11];
  v22 = a2[12];
  v20 = a2[10];
  v6 = *a3;
  v7 = a3[2];
  a2[1] = a3[1];
  a2[2] = v7;
  *a2 = v6;
  v8 = a3[3];
  v9 = a3[4];
  v10 = a3[5];
  *(a2 + 89) = *(a3 + 89);
  a2[4] = v9;
  a2[5] = v10;
  a2[3] = v8;
  v11 = *(a3 + 14);
  *(a3 + 14) = 0;
  v12 = *(a2 + 14);
  *(a2 + 14) = v11;

  a2[8] = a3[8];
  v13 = a3[9];
  v14 = a3[10];
  v15 = a3[12];
  a2[11] = a3[11];
  a2[12] = v15;
  a2[9] = v13;
  a2[10] = v14;
  a3[4] = v27;
  a3[5] = *v28;
  *(a3 + 89) = *&v28[9];
  *a3 = v23;
  a3[1] = v24;
  a3[2] = v25;
  a3[3] = v26;
  v16 = *(a3 + 14);
  *(a3 + 14) = v5;

  result = v19;
  a3[10] = v20;
  a3[11] = v21;
  a3[12] = v22;
  a3[8] = v18;
  a3[9] = v19;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8ne200100IOZNS0_6__implIJN2rf9data_flow12CustomAnchorENS8_11PlaneAnchorENS8_11ImageAnchorENS8_12ObjectAnchorENS8_10FaceAnchorENS8_10BodyAnchorEEE6__swapB8ne200100ERSF_EUlRT_RT0_E_JRNS0_6__baseILNS0_6_TraitE1EJS9_SA_SB_SC_SD_SE_EEESQ_EEEDcSH_DpT0_(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v33 = a2[4];
  *v34 = a2[5];
  *&v34[9] = *(a2 + 89);
  v29 = *a2;
  v30 = a2[1];
  v31 = a2[2];
  v32 = a2[3];
  v5 = *(a2 + 14);
  *(a2 + 14) = 0;
  v24 = a2[9];
  v23 = a2[8];
  v28 = *(a2 + 26);
  v27 = a2[12];
  v26 = a2[11];
  v25 = a2[10];
  v6 = a2 + 216;
  v22 = *(a2 + 216);
  v7 = *(a2 + 29);
  *(a2 + 216) = 0uLL;
  *(a2 + 29) = 0;
  v8 = *a3;
  v9 = a3[2];
  a2[1] = a3[1];
  a2[2] = v9;
  *a2 = v8;
  v10 = a3[3];
  v11 = a3[4];
  v12 = a3[5];
  *(a2 + 89) = *(a3 + 89);
  a2[4] = v11;
  a2[5] = v12;
  a2[3] = v10;
  v13 = *(a3 + 14);
  *(a3 + 14) = 0;
  v14 = *(a2 + 14);
  *(a2 + 14) = v13;

  v15 = a3[9];
  a2[8] = a3[8];
  a2[9] = v15;
  v16 = a3[10];
  v17 = a3[11];
  v18 = a3[12];
  *(a2 + 26) = *(a3 + 26);
  a2[11] = v17;
  a2[12] = v18;
  a2[10] = v16;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE13__move_assignERS4_NS_17integral_constantIbLb1EEE(v6, (a3 + 216));
  a3[4] = v33;
  a3[5] = *v34;
  *(a3 + 89) = *&v34[9];
  *a3 = v29;
  a3[1] = v30;
  a3[2] = v31;
  a3[3] = v32;
  v19 = *(a3 + 14);
  *(a3 + 14) = v5;

  a3[10] = v25;
  a3[11] = v26;
  a3[12] = v27;
  *(a3 + 26) = v28;
  a3[8] = v23;
  a3[9] = v24;
  v20 = *(a3 + 27);
  if (v20)
  {
    *(a3 + 28) = v20;
    operator delete(v20);
  }

  result = v22;
  *(a3 + 216) = v22;
  *(a3 + 29) = v7;
  return result;
}

double _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8ne200100IOZNS0_6__implIJN2rf9data_flow12CustomAnchorENS8_11PlaneAnchorENS8_11ImageAnchorENS8_12ObjectAnchorENS8_10FaceAnchorENS8_10BodyAnchorEEE6__swapB8ne200100ERSF_EUlRT_RT0_E_JRNS0_6__baseILNS0_6_TraitE1EJS9_SA_SB_SC_SD_SE_EEESQ_EEEDcSH_DpT0_(uint64_t a1, __int128 *a2, __int128 *a3)
{
  *v32 = a2[5];
  *&v32[9] = *(a2 + 89);
  v27 = *a2;
  v28 = a2[1];
  v30 = a2[3];
  v31 = a2[4];
  v29 = a2[2];
  v5 = *(a2 + 14);
  *(a2 + 14) = 0;
  v6 = *(a2 + 128);
  v7 = a2 + 136;
  v8 = *(a2 + 17);
  *v26 = *(a2 + 18);
  *&v26[7] = *(a2 + 151);
  v9 = *(a2 + 159);
  *(a2 + 136) = 0uLL;
  *(a2 + 19) = 0;
  v10 = a2 + 10;
  v23 = *(a2 + 20);
  *v25 = *(a2 + 21);
  *&v25[7] = *(a2 + 175);
  v11 = *(a2 + 183);
  *(a2 + 168) = 0uLL;
  *(a2 + 20) = 0;
  v24 = a2[12];
  v12 = *a3;
  v13 = a3[2];
  a2[1] = a3[1];
  a2[2] = v13;
  *a2 = v12;
  v14 = a3[3];
  v15 = a3[4];
  v16 = a3[5];
  *(a2 + 89) = *(a3 + 89);
  a2[4] = v15;
  a2[5] = v16;
  a2[3] = v14;
  v17 = *(a3 + 14);
  *(a3 + 14) = 0;
  v18 = *(a2 + 14);
  *(a2 + 14) = v17;

  *(a2 + 128) = *(a3 + 128);
  if (*(a2 + 159) < 0)
  {
    operator delete(*v7);
  }

  v19 = *(a3 + 136);
  *(v7 + 2) = *(a3 + 19);
  *v7 = v19;
  *(a3 + 159) = 0;
  *(a3 + 136) = 0;
  if (*(a2 + 183) < 0)
  {
    operator delete(*v10);
  }

  v20 = a3[10];
  *(v10 + 2) = *(a3 + 22);
  *v10 = v20;
  *(a3 + 183) = 0;
  *(a3 + 160) = 0;
  a2[12] = a3[12];
  a3[4] = v31;
  a3[5] = *v32;
  *(a3 + 89) = *&v32[9];
  *a3 = v27;
  a3[1] = v28;
  a3[2] = v29;
  a3[3] = v30;
  v21 = *(a3 + 14);
  *(a3 + 14) = v5;

  *(a3 + 128) = v6;
  if (*(a3 + 159) < 0)
  {
    operator delete(*(a3 + 17));
  }

  *(a3 + 17) = v8;
  *(a3 + 18) = *v26;
  *(a3 + 151) = *&v26[7];
  *(a3 + 159) = v9;
  if (*(a3 + 183) < 0)
  {
    operator delete(*(a3 + 20));
  }

  *(a3 + 20) = v23;
  *(a3 + 21) = *v25;
  *(a3 + 175) = *&v25[7];
  *(a3 + 183) = v11;
  result = *&v24;
  a3[12] = v24;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3ELm3EEE10__dispatchB8ne200100IOZNS0_6__implIJN2rf9data_flow12CustomAnchorENS8_11PlaneAnchorENS8_11ImageAnchorENS8_12ObjectAnchorENS8_10FaceAnchorENS8_10BodyAnchorEEE6__swapB8ne200100ERSF_EUlRT_RT0_E_JRNS0_6__baseILNS0_6_TraitE1EJS9_SA_SB_SC_SD_SE_EEESQ_EEEDcSH_DpT0_(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v36 = a2[4];
  *v37 = a2[5];
  *&v37[9] = *(a2 + 89);
  v32 = *a2;
  v33 = a2[1];
  v34 = a2[2];
  v35 = a2[3];
  v5 = *(a2 + 14);
  *(a2 + 14) = 0;
  v7 = a2 + 8;
  v6 = *(a2 + 16);
  *&v31[7] = *(a2 + 143);
  *v31 = *(a2 + 17);
  v8 = *(a2 + 151);
  a2[8] = 0uLL;
  *(a2 + 18) = 0;
  v10 = a2 + 152;
  v9 = *(a2 + 19);
  *v30 = *(a2 + 20);
  *&v30[7] = *(a2 + 167);
  v11 = *(a2 + 175);
  a2[10] = 0uLL;
  *(a2 + 19) = 0;
  v28 = a2[13];
  v29 = a2[14];
  v26 = a2[11];
  v27 = a2[12];
  v12 = *a3;
  v13 = a3[2];
  a2[1] = a3[1];
  a2[2] = v13;
  *a2 = v12;
  v14 = a3[3];
  v15 = a3[4];
  v16 = a3[5];
  *(a2 + 89) = *(a3 + 89);
  a2[4] = v15;
  a2[5] = v16;
  a2[3] = v14;
  v17 = *(a3 + 14);
  *(a3 + 14) = 0;
  v18 = *(a2 + 14);
  *(a2 + 14) = v17;

  if (*(a2 + 151) < 0)
  {
    operator delete(*v7);
  }

  v19 = a3[8];
  *(v7 + 2) = *(a3 + 18);
  *v7 = v19;
  *(a3 + 151) = 0;
  *(a3 + 128) = 0;
  if (*(a2 + 175) < 0)
  {
    operator delete(*v10);
  }

  v20 = *(a3 + 152);
  *(v10 + 2) = *(a3 + 21);
  *v10 = v20;
  *(a3 + 175) = 0;
  *(a3 + 152) = 0;
  v21 = a3[11];
  v22 = a3[12];
  v23 = a3[14];
  a2[13] = a3[13];
  a2[14] = v23;
  a2[11] = v21;
  a2[12] = v22;
  a3[4] = v36;
  a3[5] = *v37;
  *(a3 + 89) = *&v37[9];
  *a3 = v32;
  a3[1] = v33;
  a3[2] = v34;
  a3[3] = v35;
  v24 = *(a3 + 14);
  *(a3 + 14) = v5;

  if (*(a3 + 151) < 0)
  {
    operator delete(*(a3 + 16));
  }

  *(a3 + 16) = v6;
  *(a3 + 17) = *v31;
  *(a3 + 143) = *&v31[7];
  *(a3 + 151) = v8;
  if (*(a3 + 175) < 0)
  {
    operator delete(*(a3 + 19));
  }

  *(a3 + 19) = v9;
  *(a3 + 20) = *v30;
  *(a3 + 167) = *&v30[7];
  *(a3 + 175) = v11;
  a3[11] = v26;
  a3[12] = v27;
  result = v28;
  a3[13] = v28;
  a3[14] = v29;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4ELm4EEE10__dispatchB8ne200100IOZNS0_6__implIJN2rf9data_flow12CustomAnchorENS8_11PlaneAnchorENS8_11ImageAnchorENS8_12ObjectAnchorENS8_10FaceAnchorENS8_10BodyAnchorEEE6__swapB8ne200100ERSF_EUlRT_RT0_E_JRNS0_6__baseILNS0_6_TraitE1EJS9_SA_SB_SC_SD_SE_EEESQ_EEEDcSH_DpT0_(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v33 = a2[4];
  *v34 = a2[5];
  *&v34[9] = *(a2 + 89);
  v29 = *a2;
  v30 = a2[1];
  v31 = a2[2];
  v32 = a2[3];
  v5 = *(a2 + 14);
  *(a2 + 14) = 0;
  v23 = a2[10];
  v24 = a2[11];
  v21 = a2[8];
  v22 = a2[9];
  v27 = a2[14];
  v28 = a2[15];
  v25 = a2[12];
  v26 = a2[13];
  v6 = *a3;
  v7 = a3[2];
  a2[1] = a3[1];
  a2[2] = v7;
  *a2 = v6;
  v8 = a3[3];
  v9 = a3[4];
  v10 = a3[5];
  *(a2 + 89) = *(a3 + 89);
  a2[4] = v9;
  a2[5] = v10;
  a2[3] = v8;
  v11 = *(a3 + 14);
  *(a3 + 14) = 0;
  v12 = *(a2 + 14);
  *(a2 + 14) = v11;

  v13 = a3[8];
  v14 = a3[9];
  v15 = a3[11];
  a2[10] = a3[10];
  a2[11] = v15;
  a2[8] = v13;
  a2[9] = v14;
  v16 = a3[12];
  v17 = a3[13];
  v18 = a3[15];
  a2[14] = a3[14];
  a2[15] = v18;
  a2[12] = v16;
  a2[13] = v17;
  a3[4] = v33;
  a3[5] = *v34;
  *(a3 + 89) = *&v34[9];
  *a3 = v29;
  a3[1] = v30;
  a3[2] = v31;
  a3[3] = v32;
  v19 = *(a3 + 14);
  *(a3 + 14) = v5;

  a3[12] = v25;
  a3[13] = v26;
  a3[14] = v27;
  a3[15] = v28;
  a3[8] = v21;
  a3[9] = v22;
  result = v23;
  a3[10] = v23;
  a3[11] = v24;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5ELm5EEE10__dispatchB8ne200100IOZNS0_6__implIJN2rf9data_flow12CustomAnchorENS8_11PlaneAnchorENS8_11ImageAnchorENS8_12ObjectAnchorENS8_10FaceAnchorENS8_10BodyAnchorEEE6__swapB8ne200100ERSF_EUlRT_RT0_E_JRNS0_6__baseILNS0_6_TraitE1EJS9_SA_SB_SC_SD_SE_EEESQ_EEEDcSH_DpT0_(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v19 = a2[4];
  *v20 = a2[5];
  *&v20[9] = *(a2 + 89);
  v15 = *a2;
  v16 = a2[1];
  v17 = a2[2];
  v18 = a2[3];
  v5 = *(a2 + 14);
  *(a2 + 14) = 0;
  v6 = *(a2 + 32);
  v7 = *a3;
  v8 = a3[2];
  a2[1] = a3[1];
  a2[2] = v8;
  *a2 = v7;
  v9 = a3[3];
  v10 = a3[4];
  v11 = a3[5];
  *(a2 + 89) = *(a3 + 89);
  a2[4] = v10;
  a2[5] = v11;
  a2[3] = v9;
  v12 = *(a3 + 14);
  *(a3 + 14) = 0;
  v13 = *(a2 + 14);
  *(a2 + 14) = v12;

  *(a2 + 32) = *(a3 + 32);
  a3[4] = v19;
  a3[5] = *v20;
  *(a3 + 89) = *&v20[9];
  *a3 = v15;
  a3[1] = v16;
  a3[2] = v17;
  a3[3] = v18;
  v14 = *(a3 + 14);
  *(a3 + 14) = v5;

  *(a3 + 32) = v6;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_construct[abi:ne200100]<std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>&,std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &&)::{lambda(std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &&>(uint64_t *a1, __int128 *a2)
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

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_construct[abi:ne200100]<std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>&,std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &&)::{lambda(std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &&>(uint64_t *a1, __int128 *a2)
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

__n128 std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_construct[abi:ne200100]<std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>&,std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &&)::{lambda(std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &&>(uint64_t *a1, __int128 *a2)
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

__n128 std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_construct[abi:ne200100]<std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>&,std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &&)::{lambda(std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &&>(uint64_t *a1, __int128 *a2)
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

__n128 std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_construct[abi:ne200100]<std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>&,std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &&)::{lambda(std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &&>(uint64_t *a1, __int128 *a2)
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

float std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_construct[abi:ne200100]<std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>&,std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &&)::{lambda(std::__variant_detail::__impl<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> &&>(uint64_t *a1, __int128 *a2)
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

uint64_t ___ZZN2rf9data_flow8consumer24AnchorManagementConsumer23sceneRemovalEventHandleEP7RESceneP10REEventBusENK3__0cvU13block_pointerF20REEventHandlerResultPvPKvEEv_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = v2 + 73;
  v4 = a1 + 6;
  v38 = (a1 + 6);
  if (std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v2 + 73, a1 + 6, &v38)[8])
  {
    v5 = std::__string_hash<char>::operator()[abi:ne200100]((v2 + 73), v4);
    v6 = v2[74];
    if (v6)
    {
      v7 = v5;
      v8 = vcnt_s8(v6);
      v8.i16[0] = vaddlv_u8(v8);
      v9 = v8.u32[0];
      if (v8.u32[0] > 1uLL)
      {
        v10 = v5;
        if (v5 >= *&v6)
        {
          v10 = v5 % *&v6;
        }
      }

      else
      {
        v10 = (*&v6 - 1) & v5;
      }

      v11 = *(*v3 + 8 * v10);
      if (v11)
      {
        for (i = *v11; i; i = *i)
        {
          v13 = i[1];
          if (v13 == v7)
          {
            if (std::equal_to<std::string>::operator()[abi:ne200100]((v2 + 73), i + 2, v4))
            {
              v14 = v2[74];
              v15 = i[1];
              v16 = vcnt_s8(v14);
              v16.i16[0] = vaddlv_u8(v16);
              if (v16.u32[0] > 1uLL)
              {
                if (v15 >= *&v14)
                {
                  v15 %= *&v14;
                }
              }

              else
              {
                v15 &= *&v14 - 1;
              }

              v17 = *(*v3 + 8 * v15);
              do
              {
                v18 = v17;
                v17 = *v17;
              }

              while (v17 != i);
              if (v18 == v2 + 75)
              {
                goto LABEL_36;
              }

              v19 = v18[1];
              if (v16.u32[0] > 1uLL)
              {
                if (v19 >= *&v14)
                {
                  v19 %= *&v14;
                }
              }

              else
              {
                v19 &= *&v14 - 1;
              }

              if (v19 != v15)
              {
LABEL_36:
                if (!*i)
                {
                  goto LABEL_37;
                }

                v20 = *(*i + 8);
                if (v16.u32[0] > 1uLL)
                {
                  if (v20 >= *&v14)
                  {
                    v20 %= *&v14;
                  }
                }

                else
                {
                  v20 &= *&v14 - 1;
                }

                if (v20 != v15)
                {
LABEL_37:
                  *(*v3 + 8 * v15) = 0;
                }
              }

              v21 = *i;
              if (*i)
              {
                v22 = *(v21 + 8);
                if (v16.u32[0] > 1uLL)
                {
                  if (v22 >= *&v14)
                  {
                    v22 %= *&v14;
                  }
                }

                else
                {
                  v22 &= *&v14 - 1;
                }

                if (v22 != v15)
                {
                  *(*v3 + 8 * v22) = v18;
                  v21 = *i;
                }
              }

              *v18 = v21;
              *i = 0;
              --v2[76];
              v38 = i;
              v39 = v2 + 73;
              v40 = 1;
              memset(v41, 0, sizeof(v41));
              std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,void *>>>>::~unique_ptr[abi:ne200100](&v38);
              break;
            }
          }

          else
          {
            if (v9 > 1)
            {
              if (v13 >= *&v6)
              {
                v13 %= *&v6;
              }
            }

            else
            {
              v13 &= *&v6 - 1;
            }

            if (v13 != v10)
            {
              break;
            }
          }
        }
      }
    }

    if (v2[28])
    {
      v23 = objc_alloc_init(MEMORY[0x277CBEB58]);
      std::function<void ()(NSSet<ARReferenceImage *> *)>::operator()((v2 + 25), v23);
    }
  }

  v24 = v2 + 31;
  v25 = std::__hash_table<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>>>::find<REScene *>(v2 + 31, a1 + 5);
  if (v25)
  {
    v26 = v2[32];
    v27 = *(v25 + 1);
    v28 = vcnt_s8(v26);
    v28.i16[0] = vaddlv_u8(v28);
    if (v28.u32[0] > 1uLL)
    {
      if (v27 >= *&v26)
      {
        v27 %= *&v26;
      }
    }

    else
    {
      v27 &= *&v26 - 1;
    }

    v29 = *(*v24 + 8 * v27);
    do
    {
      v30 = v29;
      v29 = *v29;
    }

    while (v29 != v25);
    if (v30 == (v2 + 33))
    {
      goto LABEL_66;
    }

    v31 = *(v30 + 1);
    if (v28.u32[0] > 1uLL)
    {
      if (v31 >= *&v26)
      {
        v31 %= *&v26;
      }
    }

    else
    {
      v31 &= *&v26 - 1;
    }

    if (v31 != v27)
    {
LABEL_66:
      if (!*v25)
      {
        goto LABEL_67;
      }

      v32 = *(*v25 + 8);
      if (v28.u32[0] > 1uLL)
      {
        if (v32 >= *&v26)
        {
          v32 %= *&v26;
        }
      }

      else
      {
        v32 &= *&v26 - 1;
      }

      if (v32 != v27)
      {
LABEL_67:
        *(*v24 + 8 * v27) = 0;
      }
    }

    v33 = *v25;
    if (*v25)
    {
      v34 = *(v33 + 8);
      if (v28.u32[0] > 1uLL)
      {
        if (v34 >= *&v26)
        {
          v34 %= *&v26;
        }
      }

      else
      {
        v34 &= *&v26 - 1;
      }

      if (v34 != v27)
      {
        *(*v24 + 8 * v34) = v30;
        v33 = *v25;
      }
    }

    *v30 = v33;
    *v25 = 0;
    --v2[34];
    v38 = v25;
    v39 = v2 + 31;
    v40 = 1;
    memset(v41, 0, sizeof(v41));
    std::unique_ptr<std::__hash_node<std::__hash_value_type<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>,void *>>>>::~unique_ptr[abi:ne200100](&v38);
  }

  v35 = std::__hash_table<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>>>::find<REScene *>(v2 + 80, a1 + 5);
  if (v35)
  {
    v36 = v35;
    rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions::unsubscribeComponentEvents((v35 + 3));
    *(v36 + 120) = 0;
  }

  return 1;
}

void __copy_helper_block_ea8_32c108_ZTSKZN2rf9data_flow8consumer24AnchorManagementConsumer23sceneRemovalEventHandleEP7RESceneP10REEventBusE3__0(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v2 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v2;
  }
}

void __destroy_helper_block_ea8_32c108_ZTSKZN2rf9data_flow8consumer24AnchorManagementConsumer23sceneRemovalEventHandleEP7RESceneP10REEventBusE3__0(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>>>::find<REScene *>(void *a1, void *a2)
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
    if (v10 == v5)
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

const void **std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t *a2, __int128 **a3)
{
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
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
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_261855550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,ARReferenceImage * {__strong}>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ARReferenceImage * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,ARReferenceImage * {__strong}>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__func<rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_0,std::allocator<rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_0>,BOOL ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28740B138;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_0,std::allocator<rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_0>,BOOL ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v2 = *(a2 + 256);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v5 = &v4;
  return (off_28740B1A8[v2])(&v5);
}

uint64_t std::__function::__func<rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_0,std::allocator<rf::data_flow::consumer::AnchorManagementConsumer::matchingAnchor(REScene *,REComponent *,rf::ARStateData const&)::$_0>,BOOL ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__hash_table<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>>>::__emplace_unique_key_args<REScene *,std::piecewise_construct_t const&,std::tuple<REScene * const&>,std::tuple<>>(void *a1, void *a2, uint64_t a3, void **a4)
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

void sub_261855A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<REComponent *,std::unordered_map<rf::data_flow::RFUUID,long long,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,long long>>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,rf::data_flow::consumer::EntitledAnchoringTypesConfig>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(float *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = *(a1 + 2);
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

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(float *a1, unint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = *(a1 + 2);
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

uint64_t *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__erase_unique<unsigned long long>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,rf::data_flow::provider::SyntheticARData>>>::find<unsigned long>(a1, a2);
  if (result)
  {
    std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::erase(a1, result);
    return 1;
  }

  return result;
}

void *std::__function::__value_func<void ()(REEntity *,rf::data_flow::consumer::AnchoringState)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_261856500(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__value_func<rf::data_flow::RFUUID ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_261856764(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__value_func<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> *)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_2618569C8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__value_func<void ()(NSSet<ARReferenceImage *> *)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_261856C2C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__hash_table<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>>>::__emplace_unique_key_args<REScene *,std::piecewise_construct_t const&,std::tuple<REScene * const&>,std::tuple<>>(void *a1, void *a2, uint64_t a3, void **a4)
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

void sub_261856EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions::~SceneSubscriptions((v2 + 24));
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>>>::__erase_unique<REScene *>(void *a1, void *a2)
{
  result = std::__hash_table<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>>>::find<REScene *>(a1, a2);
  if (result)
  {
    std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::remove(a1, result, v4);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,void *>>>>::~unique_ptr[abi:ne200100](v4);
    return 1;
  }

  return result;
}

void sub_261856FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>>>::__node_insert_unique(uint64_t *a1, void *a2)
{
  v2 = a2;
  v4 = a2 + 2;
  v5 = 0x9DDFEA08EB382D69 * ((8 * (a2[2] & 0x1FFFFFFFLL) + 8) ^ HIDWORD(a2[2]));
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v5 >> 47) ^ v5)) >> 47));
  *(v4 - 1) = v6;
  v7 = std::__hash_table<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>>>::__node_insert_unique_prepare[abi:ne200100](a1, v6, v4);
  if (v7)
  {
    return v7;
  }

  std::__hash_table<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

void *std::__hash_table<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, void *a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = vcnt_s8(v3);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = v3 <= a2 ? a2 % v3 : a2;
    }

    else
    {
      v5 = (v3 - 1) & a2;
    }

    v6 = *(*a1 + 8 * v5);
    if (v6)
    {
      for (i = *v6; i; i = *i)
      {
        v8 = i[1];
        if (v8 == a2)
        {
          if (i[2] == *a3)
          {
            return i;
          }
        }

        else
        {
          if (v4.u32[0] > 1uLL)
          {
            if (v8 >= v3)
            {
              v8 %= v3;
            }
          }

          else
          {
            v8 &= v3 - 1;
          }

          if (v8 != v5)
          {
            break;
          }
        }
      }
    }
  }

  v9 = (*(a1 + 24) + 1);
  v10 = *(a1 + 32);
  if (!v3 || (v10 * v3) < v9)
  {
    v11 = 2 * v3;
    v12 = v3 < 3 || (v3 & (v3 - 1)) != 0;
    v13 = v12 | v11;
    v14 = vcvtps_u32_f32(v9 / v10);
    if (v13 <= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const>>>>::__rehash<true>(a1, v15);
  }

  return 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,rf::data_flow::consumer::AnchorManagementConsumer::SceneSubscriptions>>>::__node_insert_unique_perform[abi:ne200100](uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *result;
  v6 = *(*result + 8 * v3);
  if (v6)
  {
    *a2 = *v6;
LABEL_13:
    *v6 = a2;
    goto LABEL_14;
  }

  *a2 = result[2];
  result[2] = a2;
  *(v5 + 8 * v3) = result + 2;
  if (*a2)
  {
    v7 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    v6 = (*result + 8 * v7);
    goto LABEL_13;
  }

LABEL_14:
  ++result[3];
  return result;
}

uint64_t rf::data_flow::consumer::SyntheticEnvironmentConsumer::SyntheticEnvironmentConsumer(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_28740B1F8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v2 = *MEMORY[0x277D00848];
  *(a1 + 48) = *MEMORY[0x277D00848];
  *(a1 + 56) = v2;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  *(a1 + 200) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
  *(a1 + 208) = dispatch_queue_create("RealityFusionSyntheticEnvironmentConsumer", v4);

  *(a1 + 216) = dispatch_group_create();
  return a1;
}

void rf::data_flow::consumer::SyntheticEnvironmentConsumer::~SyntheticEnvironmentConsumer(rf::data_flow::consumer::SyntheticEnvironmentConsumer *this)
{
  *this = &unk_28740B1F8;
  v2 = *(this + 27);
  if (v2)
  {
    dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
    v3 = *(this + 27);
    *(this + 27) = 0;
  }

  v4 = *(this + 26);
  *(this + 26) = 0;

  rf::data_flow::consumer::SyntheticEnvironmentConsumer::removeAllSyntheticAssets(this);
  std::__function::__value_func<void ()(NSURL *,NSError *)>::~__value_func[abi:ne200100](this + 176);
  std::deque<rf::data_flow::consumer::SyntheticEnvironmentConsumer::Operation>::~deque[abi:ne200100](this + 120);
  std::__hash_table<std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,RESharedPtr<REEntity>>>>::~__hash_table(this + 80);
  RESharedPtr<REEntity>::~RESharedPtr(this + 9);
  RESharedPtr<REAsset>::~RESharedPtr(this + 8);
  RESharedPtr<REAsset>::~RESharedPtr(this + 5);
  RESharedPtr<REAsset>::~RESharedPtr(this + 4);
}

{
  rf::data_flow::consumer::SyntheticEnvironmentConsumer::~SyntheticEnvironmentConsumer(this);

  JUMPOUT(0x26670D060);
}

uint64_t rf::data_flow::consumer::SyntheticEnvironmentConsumer::removeAllSyntheticAssets(rf::data_flow::consumer::SyntheticEnvironmentConsumer *this)
{
  result = *(this + 9);
  if (result)
  {
    SceneNullable = REEntityGetSceneNullable();
    if (!SceneNullable)
    {
      rf::getMessage("Synthetic environments root entity has been removed from the scene!", __p);
      rf::internal::logAssert(__p);
      if (v6 < 0)
      {
        operator delete(__p[0]);
      }

      rf::internal::debugBreakHandler(v4);
    }

    std::__hash_table<std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,RESharedPtr<REEntity>>>>::clear(this + 80);
    REEntitySetParent();
    if (*(this + 9))
    {
      RERelease();
    }

    *(this + 9) = 0;
    return rf::data_flow::consumer::SyntheticEnvironmentConsumer::removeRenderGraphProviders(this, SceneNullable);
  }

  return result;
}

void sub_26185754C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t rf::data_flow::consumer::SyntheticEnvironmentConsumer::removeRenderGraphProviders(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *MEMORY[0x277D00848];
  if (*(result + 56) != *MEMORY[0x277D00848])
  {
    result = RESceneRenderGraphFileProviderArrayRemove();
    *(v2 + 56) = v3;
  }

  if (*(v2 + 48) != v3)
  {
    result = RESceneRenderGraphFileProviderArrayRemove();
    *(v2 + 48) = v3;
  }

  return result;
}

void std::function<void ()(NSURL *,NSError *)>::operator()(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, &v7, &v6);
}

void ___ZN2rf9data_flow8consumer28SyntheticEnvironmentConsumer24addSyntheticAssetToSceneERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEP7RESceneP16REServiceLocator_block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v3 = rf::realityFusionLogObject(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = REEntityGetName();
      _os_log_impl(&dword_2617CB000, v3, OS_LOG_TYPE_DEFAULT, "SyntheticEnvironmentConsumer failed importing asset at path %s", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v16 = *(*(*(a1 + 40) + 8) + 24);
      *buf = 138412290;
      *&buf[4] = v16;
      _os_log_error_impl(&dword_2617CB000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    RERelease();
    if (*(v2 + 200))
    {
      std::function<void ()(NSURL *,NSError *)>::operator()(v2 + 176, *(a1 + 32), *(*(*(a1 + 40) + 8) + 24));
    }

LABEL_8:
    CFRelease(*(*(*(a1 + 40) + 8) + 24));
    return;
  }

  v4 = RESceneImportOperationPublishToEngine();
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v5 = rf::realityFusionLogObject(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = REEntityGetName();
      _os_log_impl(&dword_2617CB000, v5, OS_LOG_TYPE_DEFAULT, "SyntheticEnvironmentConsumer failed to publish imported asset at path %s", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v17 = *(*(*(a1 + 40) + 8) + 24);
      *buf = 138412290;
      *&buf[4] = v17;
      _os_log_error_impl(&dword_2617CB000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    RERelease();
    if (*(v2 + 200))
    {
      std::function<void ()(NSURL *,NSError *)>::operator()(v2 + 176, *(a1 + 32), *(*(*(a1 + 40) + 8) + 24));
    }

    goto LABEL_8;
  }

  if (RESceneImportOperationGetSceneAsset())
  {
    ChildCount = REEntityGetChildCount();
    if (ChildCount >= 1)
    {
      v7 = (ChildCount & 0x7FFFFFFF) + 1;
      do
      {
        Child = REEntityGetChild();
        MEMORY[0x26670C370](Child);
        --v7;
      }

      while (v7 > 1);
    }

    REEntitySubtreeLoadFromAsset();
    v9 = *(a1 + 56);
    v21 = 0u;
    v22 = 0u;
    *buf = 0u;
    std::deque<REEntity *>::__add_back_capacity(buf);
    v10 = *(&v22 + 1);
    *(*(*&buf[8] + (((*(&v22 + 1) + v22) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v22 + 1) + v22) & 0x1FF)) = v9;
    v11 = __CFADD__(v10, 1);
    v12 = v10 + 1;
    *(&v22 + 1) = v12;
    if (!v11)
    {
      do
      {
        v13 = ((v21 - *&buf[8]) << 6) - 1;
        if (v21 == *&buf[8])
        {
          v13 = 0;
        }

        *(&v22 + 1) = v12 - 1;
        if ((v13 - (v22 + v12 - 1)) >= 0x400)
        {
          operator delete(*(v21 - 8));
          *&v21 = v21 - 8;
        }

        REMeshComponentGetComponentType();
        if (REEntityGetComponentByClass())
        {
          if (REMeshComponentGetMaterialCount())
          {
            REMeshComponentGetMaterialAtIndex();
            if (REMaterialAssetGetTextureAsset())
            {
              REMeshComponentRemoveAllMaterials();
              REMeshComponentAddMaterial();
              REMaterialParameterBlockArrayComponentGetComponentType();
              REEntityGetOrAddComponentByClass();
              if (!REMaterialParameterBlockArrayComponentGetBlockAtIndex())
              {
                RERenderManagerMaterialParameterBlockCreateWithAsset();
                REMaterialParameterBlockArrayComponentSetBlockAtIndex();
                RERelease();
              }

              REMaterialParameterBlockSetTextureFromAsset();
            }
          }
        }

        v14 = REEntityGetChildCount();
        if (v14)
        {
          for (i = 0; i != v14; ++i)
          {
            v19 = REEntityGetChild();
            std::deque<REEntity *>::push_back(buf, &v19);
          }
        }

        v12 = *(&v22 + 1);
      }

      while (*(&v22 + 1));
    }

    std::deque<REEntity *>::~deque[abi:ne200100](buf);
  }

  else
  {
    rf::getMessage("Couldn't get scene asset from import operation", buf);
    rf::internal::logAssert(buf);
    if (SBYTE7(v21) < 0)
    {
      operator delete(*buf);
    }

    rf::internal::debugBreakHandler(v18);
  }

  RERelease();
  if (*(v2 + 200))
  {
    std::function<void ()(NSURL *,NSError *)>::operator()(v2 + 176, *(a1 + 32), 0);
  }

  *(v2 + 168) = 0;
}

void sub_261857B90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void rf::data_flow::consumer::SyntheticEnvironmentConsumer::consumeLatestUpdate(uint64_t a1, uint64_t a2)
{
  v89 = *MEMORY[0x277D85DE8];
  if (*(a2 + 32) == 1 && *(a2 + 16) == 1)
  {
    v4 = *(a1 + 16);
    std::mutex::lock(v4);
    if (*(v4 + 3832))
    {
      if (*(a2 + 32) != 1 || *(a2 + 16) != 1)
      {
        goto LABEL_135;
      }

      v5 = MEMORY[0x26670CB10](*(a2 + 8));
      if (v5 && REAssetGetAssetManager() != v5)
      {
        *buf = REAssetManagerCreateAssetHandle();
        v6 = *(a1 + 32);
        *(a1 + 32) = *buf;
        if (v6)
        {
          RERelease();
        }

        *buf = 0;
        RESharedPtr<REAsset>::~RESharedPtr(buf);
        REAssetHandleLoadNow();
        if ((REAssetHandleIsLoaded() & 1) == 0)
        {
          rf::getMessage("Loading renderSyntheticEnvironment provider failed!", buf);
          rf::internal::logAssert(buf);
          if (SBYTE7(v80) < 0)
          {
            operator delete(*buf);
          }

          rf::internal::debugBreakHandler(v66);
        }

        *buf = REAssetManagerCreateAssetHandle();
        v7 = *(a1 + 40);
        *(a1 + 40) = *buf;
        if (v7)
        {
          RERelease();
        }

        *buf = 0;
        RESharedPtr<REAsset>::~RESharedPtr(buf);
        REAssetHandleLoadNow();
        if ((REAssetHandleIsLoaded() & 1) == 0)
        {
          rf::getMessage("Loading composeSyntheticEnvironment provider failed!", buf);
          rf::internal::logAssert(buf);
          if (SBYTE7(v80) < 0)
          {
            operator delete(*buf);
          }

          rf::internal::debugBreakHandler(v67);
        }

        RESceneAddRenderGraphFileProviderArray();
        *(a1 + 48) = RESceneRenderGraphFileProviderArrayAdd();
        *(a1 + 56) = RESceneRenderGraphFileProviderArrayAdd();
        *buf = REAssetManagerCreateAssetHandle();
        v8 = *(a1 + 64);
        *(a1 + 64) = *buf;
        if (v8)
        {
          RERelease();
        }

        *buf = 0;
        RESharedPtr<REAsset>::~RESharedPtr(buf);
        REAssetHandleLoadNow();
        if ((REAssetHandleIsLoaded() & 1) == 0)
        {
          rf::getMessage("Loading syntheticEnvironmentUnlit material failed!", buf);
          rf::internal::logAssert(buf);
          if (SBYTE7(v80) < 0)
          {
            operator delete(*buf);
          }

          rf::internal::debugBreakHandler(v68);
        }
      }
    }

    for (i = *(v4 + 3864); i; i = *i)
    {
      *buf = 1;
      std::deque<rf::data_flow::consumer::SyntheticEnvironmentConsumer::Operation>::emplace_back<rf::data_flow::consumer::SyntheticEnvironmentConsumer::Operation::Type,std::string const&>((a1 + 120), buf, (i + 2));
    }

    for (j = *(v4 + 3824); j; j = *j)
    {
      *buf = 0;
      std::deque<rf::data_flow::consumer::SyntheticEnvironmentConsumer::Operation>::emplace_back<rf::data_flow::consumer::SyntheticEnvironmentConsumer::Operation::Type,std::string const&>((a1 + 120), buf, (j + 2));
    }

    v11 = *(v4 + 3904);
    if (v11)
    {
      v12 = *(a1 + 160);
      do
      {
        v13 = *(a1 + 128);
        v14 = *(a1 + 136);
        v15 = 42 * ((v14 - v13) >> 3) - 1;
        if (v14 == v13)
        {
          v15 = 0;
        }

        if (v15 == v12 + *(a1 + 152))
        {
          std::deque<rf::data_flow::consumer::SyntheticEnvironmentConsumer::Operation>::__add_back_capacity((a1 + 120));
          v13 = *(a1 + 128);
          v14 = *(a1 + 136);
        }

        if (v14 == v13)
        {
          v17 = 0;
        }

        else
        {
          v16 = *(a1 + 160) + *(a1 + 152);
          v17 = *(v13 + 8 * (v16 / 0x2A)) + 96 * (v16 % 0x2A);
        }

        if (*(v11 + 39) < 0)
        {
          std::string::__init_copy_ctor_external(&block, v11[2], v11[3]);
        }

        else
        {
          block = *(v11 + 2);
        }

        v18 = *(v11 + 4);
        *buf = *(v11 + 3);
        v80 = v18;
        v19 = *(v11 + 6);
        v81 = *(v11 + 5);
        v82 = v19;
        *v17 = 2;
        v20 = (v17 + 8);
        if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(v20, block.__r_.__value_.__l.__data_, block.__r_.__value_.__l.__size_);
          v24 = SHIBYTE(block.__r_.__value_.__r.__words[2]);
          v25 = v80;
          *(v17 + 32) = *buf;
          *(v17 + 48) = v25;
          v26 = v82;
          *(v17 + 64) = v81;
          *(v17 + 80) = v26;
          if (v24 < 0)
          {
            operator delete(block.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v21 = *&block.__r_.__value_.__l.__data_;
          *(v17 + 24) = *(&block.__r_.__value_.__l + 2);
          *&v20->__r_.__value_.__l.__data_ = v21;
          v22 = v80;
          *(v17 + 32) = *buf;
          *(v17 + 48) = v22;
          v23 = v82;
          *(v17 + 64) = v81;
          *(v17 + 80) = v23;
        }

        v12 = *(a1 + 160) + 1;
        *(a1 + 160) = v12;
        v11 = *v11;
      }

      while (v11);
    }

    if (*(a2 + 32) & 1) != 0 && (*(a2 + 16))
    {
      if (*(a1 + 168))
      {
LABEL_41:
        std::mutex::unlock(v4);
        return;
      }

      v73 = (a1 + 80);
      v72 = *(a2 + 24);
      v70 = *(a2 + 8);
      domain = *MEMORY[0x277D00860];
      while (1)
      {
        if (!*(a1 + 160))
        {
          goto LABEL_41;
        }

        v27 = *(*(a1 + 128) + 8 * (*(a1 + 152) / 0x2AuLL)) + 96 * (*(a1 + 152) % 0x2AuLL);
        v28 = *v27;
        if (*v27 == 2)
        {
          if (std::__hash_table<std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,RESharedPtr<REEntity>>>>::find<std::string>(v73, (v27 + 8)))
          {
            if (REEntityGetSceneNullable() != v72)
            {
              rf::getMessage("Asset entity doesn't belong to the right scene", buf);
              rf::internal::logAssert(buf);
              if (SBYTE7(v80) < 0)
              {
                operator delete(*buf);
              }

              rf::internal::debugBreakHandler(v65);
            }

            RETransformComponentGetComponentType();
            REEntityGetComponentByClass();
            RETransformComponentSetWorldMatrix4x4F();
            goto LABEL_114;
          }

          v37 = rf::realityFusionLogObject(0);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v27 + 31) >= 0)
            {
              v39 = v27 + 8;
            }

            else
            {
              v39 = *(v27 + 8);
            }

            *buf = 136315138;
            *&buf[4] = v39;
            _os_log_impl(&dword_2617CB000, v37, OS_LOG_TYPE_DEFAULT, "Trying to update unknown synthetic asset %s", buf, 0xCu);
          }
        }

        else
        {
          if (v28 != 1)
          {
            if (!v28)
            {
              if (*(v27 + 31) >= 0)
              {
                v29 = v27 + 8;
              }

              else
              {
                v29 = *(v27 + 8);
              }

              v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:v29];
              v30 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
              v31 = std::__hash_table<std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,RESharedPtr<REEntity>>>>::find<std::string>(v73, (v27 + 8));
              if (!v31)
              {
                if (!*(a1 + 72) || REEntityGetSceneNullable() != v72)
                {
                  *&v86 = REEntityCreate();
                  v40 = *(a1 + 72);
                  *(a1 + 72) = v86;
                  if (v40)
                  {
                    RERelease();
                  }

                  *&v86 = 0;
                  RESharedPtr<REEntity>::~RESharedPtr(&v86);
                  REEntitySetName();
                  RETransformComponentGetComponentType();
                  REEntityAddComponentByClass();
                  REAnchorComponentGetComponentType();
                  REEntityAddComponentByClass();
                  REAnchorComponentSetAnchoredLocally();
                  RESceneAddEntity();
                  REHideEntity();
                }

                v45 = REEntityCreate();
                REEntitySetName();
                RETransformComponentGetComponentType();
                REEntityAddComponentByClass();
                REEntitySetParent();
                REHideEntity();
                RERelease();
                RESharedPtr<REEntity>::fromGet(v45, &v78);
                operator new();
              }

              v32 = v31[5];
              RESubsceneComponentGetComponentType();
              ComponentByClass = REEntityGetComponentByClass();
              if (ComponentByClass)
              {
                v49 = rf::realityFusionLogObject(ComponentByClass);
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                {
                  if (*(v27 + 31) >= 0)
                  {
                    v50 = v27 + 8;
                  }

                  else
                  {
                    v50 = *(v27 + 8);
                  }

                  LODWORD(v86) = 136315138;
                  *(&v86 + 4) = v50;
                  _os_log_impl(&dword_2617CB000, v49, OS_LOG_TYPE_DEFAULT, "Synthetic asset at path %s is already loaded", &v86, 0xCu);
                }

                v51 = v71;
                if (*(a1 + 200))
                {
                  v52 = CFErrorCreate(0, domain, 1, 0);
                  std::function<void ()(NSURL *,NSError *)>::operator()(a1 + 176, v30, v52);
                  CFRelease(v52);
                }
              }

              else
              {
                v53 = RESceneImportOperationCreateWithURL();
                RESceneImportOperationSetUnitType();
                RESceneImportOperationSetIsolateFromEngine();
                RESceneImportOperationSetCompressTextures();
                *&v86 = 0;
                *(&v86 + 1) = &v86;
                v87 = 0x2020000000;
                v88 = 0;
                *(a1 + 168) = 1;
                v55 = *(a1 + 208);
                v54 = *(a1 + 216);
                block.__r_.__value_.__r.__words[0] = MEMORY[0x277D85DD0];
                block.__r_.__value_.__l.__size_ = 3221225472;
                block.__r_.__value_.__r.__words[2] = ___ZN2rf9data_flow8consumer28SyntheticEnvironmentConsumer24addSyntheticAssetToSceneERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEP7RESceneP16REServiceLocator_block_invoke;
                v75 = &unk_279AED228;
                v76 = &v86;
                v77 = v53;
                dispatch_group_async(v54, v55, &block);
                v56 = MEMORY[0x26670CB70](v70);
                v57 = MEMORY[0x26670CB10](v70);
                v58 = REAssetManagerGetEngineQueue();
                v59 = *(a1 + 216);
                *buf = MEMORY[0x277D85DD0];
                *&buf[8] = 3221225472;
                *&v80 = ___ZN2rf9data_flow8consumer28SyntheticEnvironmentConsumer24addSyntheticAssetToSceneERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEP7RESceneP16REServiceLocator_block_invoke_2;
                *(&v80 + 1) = &unk_279AED250;
                *(&v81 + 1) = &v86;
                *&v82 = a1;
                *(&v82 + 1) = v32;
                v83 = v53;
                *&v81 = v30;
                v84 = v57;
                v85 = v56;
                dispatch_group_notify(v59, v58, buf);

                v51 = v71;
                _Block_object_dispose(&v86, 8);
              }
            }

            goto LABEL_114;
          }

          if (std::__hash_table<std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,RESharedPtr<REEntity>>>>::find<std::string>(v73, (v27 + 8)))
          {
            if (REEntityGetSceneNullable() != v72)
            {
              rf::getMessage("Asset entity doesn't belong to the right scene", buf);
              rf::internal::logAssert(buf);
              if (SBYTE7(v80) < 0)
              {
                operator delete(*buf);
              }

              rf::internal::debugBreakHandler(v64);
            }

            REEntitySetParent();
            v33 = std::__hash_table<std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,RESharedPtr<REEntity>>>>::find<std::string>(v73, (v27 + 8));
            if (v33)
            {
              v34 = *(a1 + 88);
              v35 = v33[1];
              v36 = vcnt_s8(v34);
              v36.i16[0] = vaddlv_u8(v36);
              if (v36.u32[0] > 1uLL)
              {
                if (v35 >= *&v34)
                {
                  v35 %= *&v34;
                }
              }

              else
              {
                v35 &= *&v34 - 1;
              }

              v41 = *(*v73 + 8 * v35);
              do
              {
                v42 = v41;
                v41 = *v41;
              }

              while (v41 != v33);
              if (v42 == (a1 + 96))
              {
                goto LABEL_94;
              }

              v43 = v42[1];
              if (v36.u32[0] > 1uLL)
              {
                if (v43 >= *&v34)
                {
                  v43 %= *&v34;
                }
              }

              else
              {
                v43 &= *&v34 - 1;
              }

              if (v43 != v35)
              {
LABEL_94:
                if (!*v33)
                {
                  goto LABEL_95;
                }

                v44 = *(*v33 + 1);
                if (v36.u32[0] > 1uLL)
                {
                  if (v44 >= *&v34)
                  {
                    v44 %= *&v34;
                  }
                }

                else
                {
                  v44 &= *&v34 - 1;
                }

                if (v44 != v35)
                {
LABEL_95:
                  *(*v73 + 8 * v35) = 0;
                }
              }

              v46 = *v33;
              if (*v33)
              {
                v47 = v46[1];
                if (v36.u32[0] > 1uLL)
                {
                  if (v47 >= *&v34)
                  {
                    v47 %= *&v34;
                  }
                }

                else
                {
                  v47 &= *&v34 - 1;
                }

                if (v47 != v35)
                {
                  *(*v73 + 8 * v47) = v42;
                  v46 = *v33;
                }
              }

              *v42 = v46;
              *v33 = 0;
              --*(a1 + 104);
              *buf = v33;
              *&buf[8] = a1 + 80;
              LOBYTE(v80) = 1;
              *(&v80 + 1) = 0;
              DWORD1(v80) = 0;
              std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,RESharedPtr<REEntity>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,RESharedPtr<REEntity>>,void *>>>>::~unique_ptr[abi:ne200100](buf);
            }

            goto LABEL_114;
          }

          v37 = rf::realityFusionLogObject(0);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v27 + 31) >= 0)
            {
              v38 = v27 + 8;
            }

            else
            {
              v38 = *(v27 + 8);
            }

            *buf = 136315138;
            *&buf[4] = v38;
            _os_log_impl(&dword_2617CB000, v37, OS_LOG_TYPE_DEFAULT, "Trying to remove unknown synthetic asset %s", buf, 0xCu);
          }
        }

LABEL_114:
        v60 = *(a1 + 152);
        v61 = *(*(a1 + 128) + 8 * (v60 / 0x2A)) + 96 * (v60 % 0x2A);
        if (*(v61 + 31) < 0)
        {
          operator delete(*(v61 + 8));
          v60 = *(a1 + 152);
        }

        v62 = *(a1 + 160) - 1;
        v63 = v60 + 1;
        *(a1 + 152) = v63;
        *(a1 + 160) = v62;
        if (v63 >= 0x54)
        {
          operator delete(**(a1 + 128));
          *(a1 + 128) += 8;
          *(a1 + 152) -= 42;
        }

        if (*(a1 + 168) == 1)
        {
          goto LABEL_41;
        }
      }
    }

LABEL_135:
    std::__throw_bad_optional_access[abi:ne200100]();
  }
}

void sub_261858C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v39);
  _Unwind_Resume(a1);
}

uint64_t std::deque<rf::data_flow::consumer::SyntheticEnvironmentConsumer::Operation>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v11 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x2A];
    v7 = *v6;
    v8 = *v6 + 96 * (v5 % 0x2A);
    v9 = v3[(*(a1 + 40) + v5) / 0x2A] + 96 * ((*(a1 + 40) + v5) % 0x2A);
    if (v8 != v9)
    {
      do
      {
        if (*(v8 + 31) < 0)
        {
          operator delete(*(v8 + 8));
          v7 = *v6;
        }

        v8 += 96;
        if (v8 - v7 == 4032)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
          v8 = v10;
        }
      }

      while (v8 != v9);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v11 = v2;
  }

  *v4 = 0;
  v12 = v11 - v3;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v12 = v2 - v3;
    }

    while (v12 > 2);
    v11 = v2;
  }

  if (v12 == 1)
  {
    v13 = 21;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_19;
    }

    v13 = 42;
  }

  *(a1 + 32) = v13;
LABEL_19:
  if (v3 != v11)
  {
    do
    {
      v14 = *v3++;
      operator delete(v14);
    }

    while (v3 != v11);
    v11 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v11)
  {
    *(a1 + 16) = v2 + ((v11 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::deque<rf::data_flow::consumer::SyntheticEnvironmentConsumer::Operation>::emplace_back<rf::data_flow::consumer::SyntheticEnvironmentConsumer::Operation::Type,std::string const&>(unint64_t *a1, int *a2, uint64_t a3)
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = 42 * ((v7 - v6) >> 3) - 1;
  if (v7 == v6)
  {
    v8 = 0;
  }

  if (v8 == a1[5] + a1[4])
  {
    std::deque<rf::data_flow::consumer::SyntheticEnvironmentConsumer::Operation>::__add_back_capacity(a1);
    v6 = a1[1];
    v7 = a1[2];
  }

  if (v7 == v6)
  {
    v10 = 0;
  }

  else
  {
    v9 = a1[5] + a1[4];
    v10 = *(v6 + 8 * (v9 / 0x2A)) + 96 * (v9 % 0x2A);
  }

  v11 = *a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  *v10 = v11;
  v12 = (v10 + 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v12, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v14 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    *(v10 + 32) = xmmword_26185DD00;
    *(v10 + 48) = xmmword_26185DD10;
    *(v10 + 64) = xmmword_26185DD20;
    *(v10 + 80) = xmmword_26185E1B0;
    if (v14 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v13 = *&__p.__r_.__value_.__l.__data_;
    *(v10 + 24) = *(&__p.__r_.__value_.__l + 2);
    *&v12->__r_.__value_.__l.__data_ = v13;
    *(v10 + 32) = xmmword_26185DD00;
    *(v10 + 48) = xmmword_26185DD10;
    *(v10 + 64) = xmmword_26185DD20;
    *(v10 + 80) = xmmword_26185E1B0;
  }

  ++a1[5];
}

void sub_26185903C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::deque<rf::data_flow::consumer::SyntheticEnvironmentConsumer::Operation>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2A;
  v3 = v1 - 42;
  if (!v2)
  {
    v5 = a1[3];
    v6 = v5 - *a1;
    if (a1[2] - a1[1] < v6)
    {
      operator new();
    }

    v7 = v6 >> 2;
    if (v5 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    std::allocator<rf::data_flow::provider::InputData *>::allocate_at_least[abi:ne200100](v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<rf::data_flow::provider::InputData *>::emplace_back<rf::data_flow::provider::InputData *&>(a1, &v9);
}

void sub_261859480(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,RESharedPtr<REEntity>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,RESharedPtr<REEntity>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,RESharedPtr<REEntity>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,RESharedPtr<REEntity>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,RESharedPtr<REEntity>>,0>(uint64_t a1)
{
  RESharedPtr<REEntity>::~RESharedPtr((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,RESharedPtr<REEntity>>>>::find<std::string>(void *a1, uint64_t *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,RESharedPtr<REEntity>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,RESharedPtr<REEntity>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,RESharedPtr<REEntity>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,RESharedPtr<REEntity>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,RESharedPtr<REEntity>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,RESharedPtr<REEntity>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void RFSceneQueryServiceCreate()
{
  if (qword_2810C4EE8 != -1)
  {
    dispatch_once(&qword_2810C4EE8, &__block_literal_global_19);
  }

  _CFRuntimeCreateInstance();
  operator new();
}

void sub_2618597F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  rf::CFObjectRef<rf::SceneQueryManager>::~CFObjectRef(va);
  _Unwind_Resume(a1);
}

void RFServiceManagerSetSceneQueryService(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 16);
  if (cf)
  {
    CFRetain(cf);
    operator new();
  }

  *(v2 + 4696) = 0;
  v3 = *(v2 + 4704);
  *(v2 + 4704) = 0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_2618598F4(void *a1)
{
  __cxa_begin_catch(a1);
  CFRelease(*v1);
  __cxa_rethrow();
}

const void *RFServiceManagerGetSceneQueryService(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 4696);
  v3 = *(v1 + 4704);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v2)
  {
    v4 = 0;
    if (!v3)
    {
      return v4;
    }

    goto LABEL_7;
  }

  v4 = *(v2 - 8);
  if (v4)
  {
    CFRetain(*(v2 - 8));
    CFRetain(v4);
    CFRelease(v4);
    CFRelease(v4);
  }

  if (v3)
  {
LABEL_7:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v4;
}

void RFSceneQueryServiceIntersectVolumeFromBoundingBox()
{
  if (qword_2810C4EF8 != -1)
  {
    dispatch_once(&qword_2810C4EF8, &__block_literal_global_6);
  }

  _CFRuntimeCreateInstance();
  operator new();
}

double RFSceneQuerySurfaceGetSurfaceData@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 48) = invalid_surface_transform;
  *(a1 + 64) = unk_2618665B0;
  *(a1 + 80) = xmmword_2618665C0;
  *(a1 + 96) = unk_2618665D0;
  result = *&invalid_surface_bounding_box;
  *(a1 + 16) = invalid_surface_bounding_box;
  *(a1 + 32) = unk_2618665F0;
  *(a1 + 112) = 0;
  return result;
}

const void **rf::CFObjectRef<rf::SceneQueryManager>::~CFObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void ___ZN2rf17ClassRegistrationINS_14CustomCFObjectINS_17SceneQueryManagerEEEE13registerClassEv_block_invoke()
{
  v0 = 0;
  v1 = 1;
  for (i = 114; i != 91; i = aStdStringViewR_29[v0++ + 51])
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
    memcpy(&__dst, "rf::SceneQueryManager]", v0);
  }

LABEL_16:
  *(&__dst + v0) = 0;
  xmmword_2810C4F00 = 0u;
  xmmword_2810C4F10 = 0u;
  xmmword_2810C4F20 = 0u;
  unk_2810C4F30 = 0u;
  xmmword_2810C4F40 = 0u;
  unk_2810C4F50 = 0u;
  p_dst = &__dst;
  if (v6 < 0)
  {
    p_dst = __dst;
  }

  *(&xmmword_2810C4F00 + 1) = p_dst;
  *&xmmword_2810C4F10 = rf::ClassRegistration<rf::CustomCFObject<rf::SceneQueryManager>>::initCallback;
  *&xmmword_2810C4F20 = rf::ClassRegistration<rf::CustomCFObject<rf::SceneQueryManager>>::finalizeCallback;
  qword_2810C4F38 = rf::ClassRegistration<rf::CustomCFObject<rf::SceneQueryManager>>::copyFormattingDescriptionCallback;
  *&xmmword_2810C4F40 = rf::ClassRegistration<rf::CustomCFObject<rf::SceneQueryManager>>::copyDebugDescriptionCallback;
  _MergedGlobals_20 = _CFRuntimeRegisterClass();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_261859CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t rf::ClassRegistration<rf::CustomCFObject<rf::SceneQueryManager>>::finalizeCallback(uint64_t a1)
{
  result = *(a1 + 16);
  *(a1 + 16) = 0;
  if (result)
  {
    JUMPOUT(0x26670D060);
  }

  return result;
}

void std::__shared_ptr_pointer<rf::SceneQueryManager *,rf::CustomCFObject<rf::SceneQueryManager>::makeSharedPtr(void)::{lambda(rf::SceneQueryManager *)#1},std::allocator<rf::SceneQueryManager>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26670D060);
}

uint64_t std::__shared_ptr_pointer<rf::SceneQueryManager *,rf::CustomCFObject<rf::SceneQueryManager>::makeSharedPtr(void)::{lambda(rf::SceneQueryManager *)#1},std::allocator<rf::SceneQueryManager>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void ___ZN2rf17ClassRegistrationINS_14CustomCFObjectINS_34SceneQueryVolumeIntersectionResultEEEE13registerClassEv_block_invoke()
{
  v0 = 0;
  v1 = 1;
  for (i = 114; i != 91; i = aStdStringViewR_30[v0++ + 51])
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
    memcpy(&__dst, "rf::SceneQueryVolumeIntersectionResult]", v0);
  }

LABEL_16:
  *(&__dst + v0) = 0;
  xmmword_2810C4F60 = 0u;
  xmmword_2810C4F70 = 0u;
  xmmword_2810C4F80 = 0u;
  unk_2810C4F90 = 0u;
  xmmword_2810C4FA0 = 0u;
  unk_2810C4FB0 = 0u;
  p_dst = &__dst;
  if (v6 < 0)
  {
    p_dst = __dst;
  }

  *(&xmmword_2810C4F60 + 1) = p_dst;
  *&xmmword_2810C4F70 = rf::ClassRegistration<rf::CustomCFObject<rf::SceneQueryVolumeIntersectionResult>>::initCallback;
  *&xmmword_2810C4F80 = rf::ClassRegistration<rf::CustomCFObject<rf::SceneQueryVolumeIntersectionResult>>::finalizeCallback;
  qword_2810C4F98 = rf::ClassRegistration<rf::CustomCFObject<rf::SceneQueryVolumeIntersectionResult>>::copyFormattingDescriptionCallback;
  *&xmmword_2810C4FA0 = rf::ClassRegistration<rf::CustomCFObject<rf::SceneQueryVolumeIntersectionResult>>::copyDebugDescriptionCallback;
  qword_2810C4EF0 = _CFRuntimeRegisterClass();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_261859F64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t rf::ClassRegistration<rf::CustomCFObject<rf::SceneQueryVolumeIntersectionResult>>::finalizeCallback(uint64_t a1)
{
  result = *(a1 + 16);
  *(a1 + 16) = 0;
  if (result)
  {
    JUMPOUT(0x26670D060);
  }

  return result;
}

void *rf::AnchorSourceComponent::instance(rf::AnchorSourceComponent *this)
{
  {
    rf::AnchorSourceComponent::AnchorSourceComponent(&rf::AnchorSourceComponent::instance(void)::instance);
  }

  return &rf::AnchorSourceComponent::instance(void)::instance;
}

rf::AnchorSourceComponent *rf::AnchorSourceComponent::AnchorSourceComponent(rf::AnchorSourceComponent *this)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 36) = 0;
  rf::AnchorSourceComponent::buildIntrospectionInfo(this);
  rf::AnchorSourceComponent::registerAnchorSourceComponent(this);
  return this;
}

void sub_26185A080(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v1 + 104);
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v1 + 72);
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v1 + 40);
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t rf::AnchorSourceComponent::buildIntrospectionInfo(uint64_t this)
{
  if (!*(this + 136))
  {
    v1 = this;
    this = REStructBuilderCreate();
    if (this)
    {
      v2 = this;
      if (REStructBuilderInit())
      {
        *(v1 + 136) = RECIntrospectionStructRegister();
      }

      return MEMORY[0x282154E00](v2);
    }
  }

  return this;
}

void *rf::AnchorSourceComponent::registerAnchorSourceComponent(void *this)
{
  if (!*this)
  {
    v5[13] = v1;
    v5[14] = v2;
    v3 = this;
    v5[0] = 1;
    v5[1] = "RFAnchorSource";
    v5[2] = this;
    v5[3] = rf::AnchorSourceComponent::registerAnchorSourceComponent(void)::$_0::__invoke;
    v5[4] = rf::AnchorSourceComponent::registerAnchorSourceComponent(void)::$_1::__invoke;
    v5[5] = rf::AnchorSourceComponent::registerAnchorSourceComponent(void)::$_2::__invoke;
    v5[6] = rf::AnchorSourceComponent::registerAnchorSourceComponent(void)::$_3::__invoke;
    v5[7] = rf::AnchorSourceComponent::registerAnchorSourceComponent(void)::$_4::__invoke;
    v4 = this[17];
    v5[8] = rf::AnchorSourceComponent::registerAnchorSourceComponent(void)::$_5::__invoke;
    v5[9] = v4;
    v5[10] = 0;
    this = MEMORY[0x26670C120](v5, 1);
    *v3 = this;
  }

  return this;
}

void *rf::AnchorSourceComponent::retain(void *this)
{
  v1 = this;
  v2 = *(this + 36);
  if (v2 <= 0)
  {
    rf::AnchorSourceComponent::buildIntrospectionInfo(this);
    this = rf::AnchorSourceComponent::registerAnchorSourceComponent(v1);
    v2 = *(v1 + 36);
  }

  *(v1 + 36) = v2 + 1;
  return this;
}

void rf::AnchorSourceComponent::registerAnchorSourceComponent(void)::$_1::__invoke(uint64_t a1, id *a2)
{
  if (a2)
  {

    JUMPOUT(0x26670D060);
  }
}

uint64_t rf::AnchorSourceComponent::registerAnchorSourceComponent(void)::$_2::__invoke(uint64_t a1)
{
  RECustomComponentGetType();
  result = RECustomComponentTypeGetContext();
  if (*(result + 32))
  {
    v3 = result + 8;

    return std::function<void ()(REComponent *)>::operator()(v3, a1);
  }

  return result;
}

uint64_t rf::AnchorSourceComponent::registerAnchorSourceComponent(void)::$_3::__invoke(uint64_t a1)
{
  RECustomComponentGetType();
  result = RECustomComponentTypeGetContext();
  if (*(result + 64))
  {
    v3 = result + 40;

    return std::function<void ()(REComponent *)>::operator()(v3, a1);
  }

  return result;
}

uint64_t rf::AnchorSourceComponent::registerAnchorSourceComponent(void)::$_4::__invoke(uint64_t a1)
{
  RECustomComponentGetType();
  result = RECustomComponentTypeGetContext();
  if (*(result + 96))
  {
    v3 = result + 72;

    return std::function<void ()(REComponent *)>::operator()(v3, a1);
  }

  return result;
}

uint64_t rf::AnchorSourceComponent::registerAnchorSourceComponent(void)::$_5::__invoke(uint64_t a1)
{
  RECustomComponentGetType();
  result = RECustomComponentTypeGetContext();
  if (*(result + 128))
  {
    v3 = result + 104;

    return std::function<void ()(REComponent *)>::operator()(v3, a1);
  }

  return result;
}

void RFSyntheticARDataProviderCreate(void *a1)
{
  v2[5] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2[0] = &unk_28740B2E0;
  v2[1] = rf::data_flow::provider::SyntheticARData::sampleDataAllAtOnce;
  v2[3] = v2;
  v2[4] = 0;
  if (qword_2810C4FC8 != -1)
  {
    dispatch_once(&qword_2810C4FC8, &__block_literal_global_20);
  }

  _CFRuntimeCreateInstance();
  operator new();
}

void sub_26185A548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void RFSyntheticARDataProviderAddSourceAsset(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v5 path];
  v8 = [v6 fileExistsAtPath:v7];

  if (v8)
  {
    v9 = *(a1 + 16);
    v10 = CFURLCopyFileSystemPath(v5, kCFURLPOSIXPathStyle);
    v11 = v10;
    if (v10)
    {
      applesauce::CF::details::CFString_get_value<true>(v10, v16);
      CFRelease(v11);
      if (v17 >= 0)
      {
        v12 = v16;
      }

      else
      {
        v12 = v16[0];
      }

      v13 = strlen(v12);
      if (v13 < 0x7FFFFFFFFFFFFFF8)
      {
        v14 = v13;
        if (v13 < 0x17)
        {
          *(&__p.__r_.__value_.__s + 23) = v13;
          if (v13)
          {
            memmove(&__p, v12, v13);
          }

          __p.__r_.__value_.__s.__data_[v14] = 0;
          rf::data_flow::provider::SyntheticARDataProvider::addData((v9 + 8), a2, &__p);
        }

        operator new();
      }

      std::string::__throw_length_error[abi:ne200100]();
    }
  }
}

void sub_26185A724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void RFSyntheticARDataProviderSetAssetTransform(uint64_t a1, unint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v6 = *(a1 + 16);
  v7[0] = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  rf::data_flow::provider::SyntheticARDataProvider::setDataTransform(v6 + 8, a2, v7);
}

void RFSyntheticARDataProviderSetFrameInputFromARSession(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 16);
  v5 = v4[13];
  v6 = v4[12];
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = v4[14];
  operator new();
}

void sub_26185A8B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  std::__shared_weak_count::~__shared_weak_count(v12);
  operator delete(v14);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void (*)(rf::data_flow::provider::InputFrame const&,rf::data_flow::provider::SyntheticARData &,rf::data_flow::provider::InputData &),std::allocator<void (*)(rf::data_flow::provider::InputFrame const&,rf::data_flow::provider::SyntheticARData &,rf::data_flow::provider::InputData &)>,void ()(rf::data_flow::provider::InputFrame const&,rf::data_flow::provider::SyntheticARData &,rf::data_flow::provider::InputData &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28740B2E0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void (*)(rf::data_flow::provider::InputFrame const&,rf::data_flow::provider::SyntheticARData &,rf::data_flow::provider::InputData &),std::allocator<void (*)(rf::data_flow::provider::InputFrame const&,rf::data_flow::provider::SyntheticARData &,rf::data_flow::provider::InputData &)>,void ()(rf::data_flow::provider::InputFrame const&,rf::data_flow::provider::SyntheticARData &,rf::data_flow::provider::InputData &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ___ZN2rf17ClassRegistrationINS_14CustomCFObjectINS_9data_flow8provider23SyntheticARDataProviderEEEE13registerClassEv_block_invoke()
{
  v0 = 0;
  v1 = 1;
  for (i = 114; i != 91; i = aStdStringViewR_31[v0++ + 51])
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
    memcpy(&__dst, "rf::data_flow::provider::SyntheticARDataProvider]", v0);
  }

LABEL_16:
  *(&__dst + v0) = 0;
  xmmword_2810C4FD0 = 0u;
  xmmword_2810C4FE0 = 0u;
  xmmword_2810C4FF0 = 0u;
  unk_2810C5000 = 0u;
  xmmword_2810C5010 = 0u;
  unk_2810C5020 = 0u;
  p_dst = &__dst;
  if (v6 < 0)
  {
    p_dst = __dst;
  }

  *(&xmmword_2810C4FD0 + 1) = p_dst;
  *&xmmword_2810C4FE0 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::provider::SyntheticARDataProvider>>::initCallback;
  *&xmmword_2810C4FF0 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::provider::SyntheticARDataProvider>>::finalizeCallback;
  qword_2810C5008 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::provider::SyntheticARDataProvider>>::copyFormattingDescriptionCallback;
  *&xmmword_2810C5010 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::provider::SyntheticARDataProvider>>::copyDebugDescriptionCallback;
  _MergedGlobals_21 = _CFRuntimeRegisterClass();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_26185AB88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<rf::CustomCFObject<rf::data_flow::provider::SyntheticARDataProvider>::BridgableObject,std::default_delete<rf::CustomCFObject<rf::data_flow::provider::SyntheticARDataProvider>::BridgableObject>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    rf::data_flow::provider::SyntheticARDataProvider::~SyntheticARDataProvider((v2 + 8));

    JUMPOUT(0x26670D060);
  }

  return result;
}

void std::__shared_ptr_emplace<rf::data_flow::provider::ARSessionInputFrameProvider>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28740B3B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26670D060);
}

uint64_t rf::data_flow::provider::ARSessionInputFrameProvider::ARSessionInputFrameProvider(uint64_t a1, void *a2, uint64_t *a3)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v7 = *a3;
  v6 = a3[1];
  *a1 = &unk_28740A280;
  *(a1 + 8) = v7;
  *(a1 + 16) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = a3[2];
  *a1 = &unk_28740B400;
  v8 = v5;
  *(a1 + 32) = v8;
  v10[0] = &unk_28740B438;
  v10[1] = a1;
  v10[3] = v10;
  *(a1 + 40) = [[ARSessionFrameObserver alloc] initWithCallback:v10];
  std::__function::__value_func<void ()(rf::data_flow::provider::InputFrame &&)>::~__value_func[abi:ne200100](v10);
  [*(a1 + 32) _addObserver:*(a1 + 40)];

  return a1;
}

void sub_26185ADC8(_Unwind_Exception *a1)
{
  *v1 = v2;
  v5 = *(v1 + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(a1);
}

void rf::data_flow::provider::ARSessionInputFrameProvider::~ARSessionInputFrameProvider(id *this)
{
  [this[4] _removeObserver:this[5]];
  v2 = this[4];
  this[4] = 0;

  *this = &unk_28740A280;
  v3 = this[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  rf::data_flow::provider::ARSessionInputFrameProvider::~ARSessionInputFrameProvider(this);

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<rf::data_flow::provider::ARSessionInputFrameProvider::ARSessionInputFrameProvider(ARSession *,rf::data_flow::DataGraph::Evaluator<rf::data_flow::provider::InputFrame> const&)::$_0,std::allocator<rf::data_flow::provider::ARSessionInputFrameProvider::ARSessionInputFrameProvider(ARSession *,rf::data_flow::DataGraph::Evaluator<rf::data_flow::provider::InputFrame> const&)::$_0>,void ()(rf::data_flow::provider::InputFrame&&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28740B438;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<rf::data_flow::provider::ARSessionInputFrameProvider::ARSessionInputFrameProvider(ARSession *,rf::data_flow::DataGraph::Evaluator<rf::data_flow::provider::InputFrame> const&)::$_0,std::allocator<rf::data_flow::provider::ARSessionInputFrameProvider::ARSessionInputFrameProvider(ARSession *,rf::data_flow::DataGraph::Evaluator<rf::data_flow::provider::InputFrame> const&)::$_0>,void ()(rf::data_flow::provider::InputFrame&&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t rf::data_flow::consumer::AnchorManagementConsumerIOS::shouldUnanchorDueToAnchoringCapabilities(uint64_t a1, uint64_t a2, char a3)
{
  DescriptorType = REAnchoringComponentGetDescriptorType();
  v6 = 0;
  if ((a3 & 1) == 0 && DescriptorType != 1)
  {
    v6 = *(a1 + 240);
  }

  return v6 & 1;
}

uint64_t rf::data_flow::consumer::AnchorManagementConsumerIOS::canNewAnchorDueToAnchoringCapabilities(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 240) == 1)
  {
    DescriptorType = REAnchoringComponentGetDescriptorType();
    if (DescriptorType - 3 > 2)
    {
      v4 = 1;
    }

    else
    {
      v4 = *(a1 + DescriptorType + 232);
    }
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

int8x8_t *rf::data_flow::consumer::AnchorManagementConsumerIOS::consumeLatestUpdate(int8x8_t *result, uint64_t a2)
{
  if (*(a2 + 32) == 1)
  {
    v10[5] = v2;
    v10[6] = v3;
    v5 = result;
    v6 = result[2];
    v7 = *(a2 + 24);
    v9 = v7;
    if ((result[39].i8[0] & 1) == 0 && *(a2 + 16) == 1)
    {
      rf::data_flow::consumer::AnchorManagementConsumer::registerShadowClusterUpdateHandler(result, a2);
    }

    if (*(a2 + 16) == 1)
    {
      rf::data_flow::consumer::AnchorManagementConsumer::setUpSceneEventSubscriptions(v5, *(a2 + 8), v7, *&v6 + 64);
    }

    if (std::__hash_table<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>>>::find<REScene *>(&v5[31], &v9))
    {
      v10[0] = &v9;
      v8 = std::__hash_table<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::__unordered_map_hasher<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::hash<REScene *>,std::equal_to<REScene *>,true>,std::__unordered_map_equal<REScene *,std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>,std::equal_to<REScene *>,std::hash<REScene *>,true>,std::allocator<std::__hash_value_type<REScene *,std::unordered_set<REEntity *>>>>::__emplace_unique_key_args<REScene *,std::piecewise_construct_t const&,std::tuple<REScene * const&>,std::tuple<>>(&v5[31], &v9, &std::piecewise_construct, v10);
      rf::data_flow::consumer::AnchorManagementConsumer::addAnchorSourceComponentDataForWorldAnchorEntities(v5, v8 + 3, (*&v6 + 64));
    }

    rf::data_flow::consumer::AnchorManagementConsumer::updateAnchorDefinitionComponents(v5, v9, (*&v6 + 144));
    rf::data_flow::consumer::AnchorManagementConsumer::updateImageAnchorReference(v5, v9);
    return rf::data_flow::consumer::AnchorManagementConsumer::doAnchoring(v5, a2, v9, *&v6 + 64);
  }

  return result;
}

void rf::data_flow::consumer::AnchorManagementConsumerIOS::~AnchorManagementConsumerIOS(id *this)
{
  rf::data_flow::consumer::AnchorManagementConsumer::~AnchorManagementConsumer(this);

  JUMPOUT(0x26670D060);
}

uint64_t *re::foundationCoreLogObjects(re *this)
{
  {
    re::foundationCoreLogObjects(void)::logObjects = os_log_create("com.apple.re", "Foundation.Core");
  }

  return &re::foundationCoreLogObjects(void)::logObjects;
}

uint64_t re::internal::enableSignposts(re::internal *this, unsigned int a2)
{
  {
    v4 = a2;
    v5 = this;
    LOBYTE(a2) = v4;
    LOBYTE(this) = v5;
    if (v3)
    {
      re::Defaults::intValue(&v6, "enableSignposts", v4);
      re::internal::enableSignposts(BOOL,BOOL)::value = v6 ^ 1 | (HIDWORD(v6) != 0);
      LOBYTE(a2) = v4;
      LOBYTE(this) = v5;
    }
  }

  if (this)
  {
    re::internal::enableSignposts(BOOL,BOOL)::value = a2;
  }

  else
  {
    LOBYTE(a2) = re::internal::enableSignposts(BOOL,BOOL)::value;
  }

  return a2 & 1;
}

void re::Defaults::intValue(uint64_t *__return_ptr a1@<X8>, re::Defaults *this@<X0>, const char *a3@<X1>)
  v4 = {;
  if (v4)
  {
    v6 = v4;
    *(a1 + 1) = [v4 intValue];
    v4 = v6;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
}

re *anonymous namespace::getValue(_anonymous_namespace_ *this, const char *a2)
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s.%s", "com.apple.re", this];
  v5 = [v3 objectForKey:v4];
  if (!v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:this];
    v7 = [v3 objectForKey:v6];
    if (v7)
    {
      v5 = v7;
    }

    else
    {
      v8 = [v4 rangeOfString:@"." options:4];
      v9 = [v4 substringToIndex:v8];
      v10 = [v4 substringFromIndex:v8 + 1];

      if ([(__CFString *)v9 isEqualToString:@"com.apple.re.network.multipeerservice"])
      {

        v9 = @"com.apple.renetwork.multipeerservice";
      }

      v11 = [v3 dictionaryForKey:v9];
      v5 = [v11 objectForKey:v10];

      if (!v5)
      {
        goto LABEL_11;
      }

      v6 = v10;
    }

    v12 = *re::foundationCoreLogObjects(v7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
    }

    v10 = v6;
LABEL_11:
  }

  return v5;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73E8](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__extension(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73F0](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_directory(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F7400](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__stem(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F7428](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x2821F7518](this, a2);
}

{
  return MEMORY[0x2821F7530](this, a2);
}

uint64_t std::to_chars(std::__1 *this, char *a2, char *a3, double a4)
{
  return MEMORY[0x2821F7E98](this, a2, a3, a4);
}

{
  return MEMORY[0x2821F7EB0](this, a2, a3, a4);
}

uint64_t std::to_chars()
{
  return MEMORY[0x2821F7EA0]();
}

{
  return MEMORY[0x2821F7EA8]();
}

{
  return MEMORY[0x2821F7EB8]();
}

{
  return MEMORY[0x2821F7EC0]();
}

{
  return MEMORY[0x2821F7ED0]();
}

{
  return MEMORY[0x2821F7ED8]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x2822043A8](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}