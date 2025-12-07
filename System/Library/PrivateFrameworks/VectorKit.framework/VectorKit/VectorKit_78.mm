void sub_1B2D35990(_Unwind_Exception *a1)
{
  v3 = v1[5];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::ColorRampTexture>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void std::__shared_ptr_emplace<md::ColorRampTexture>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29F0C98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_byteColor<float,3,(geo::ColorSpace)0>(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 12; i += 4)
  {
    *(&v6 + i) = *(a2 + i) * 255.0;
  }

  for (j = 0; j != 3; ++j)
  {
    *(&v4 + j) = *(&v6 + j);
  }

  *result = v4;
  *(result + 2) = v5;
  return result;
}

void std::__hash_table<std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,std::__unordered_map_hasher<md::FoundationKey,std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,md::FoundationKeyHash,std::equal_to<md::FoundationKey>,true>,std::__unordered_map_equal<md::FoundationKey,std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,std::equal_to<md::FoundationKey>,md::FoundationKeyHash,true>,std::allocator<std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__hash_table<std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,std::__unordered_map_hasher<md::OverlayKey,std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,md::OverlayKeyHash,std::equal_to<md::OverlayKey>,true>,std::__unordered_map_equal<md::OverlayKey,std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,std::equal_to<md::OverlayKey>,md::OverlayKeyHash,true>,std::allocator<std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>>>::~__hash_table((v1 + 7));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,std::__unordered_map_hasher<md::OverlayKey,std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,md::OverlayKeyHash,std::equal_to<md::OverlayKey>,true>,std::__unordered_map_equal<md::OverlayKey,std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,std::equal_to<md::OverlayKey>,md::OverlayKeyHash,true>,std::allocator<std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[10];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

BOOL std::__unordered_map_equal<md::FoundationKey,std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,std::equal_to<md::FoundationKey>,md::FoundationKeyHash,true>::operator()[abi:nn200100](unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[24] == 1)
  {
    v8 = a2;
    v9 = a1;
    geo::QuadTile::computeHash(a1);
    a2 = v8;
    a1 = v9;
    v9[24] = 0;
  }

  v2 = *(a1 + 2);
  if (a2[24])
  {
    v6 = (a2[1] + ((*a2 - 0x61C8864680B583EBLL) << 6) + ((*a2 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*a2 - 0x61C8864680B583EBLL);
    v7 = (*(a2 + 1) + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583EBLL) ^ v6;
    v3 = (*(a2 + 2) + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583EBLL) ^ v7;
    *(a2 + 2) = v3;
    a2[24] = 0;
  }

  else
  {
    v3 = *(a2 + 2);
  }

  v4 = v2 == v3 && *a1 == *a2 && a1[1] == a2[1] && *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  return *(a1 + 8) == *(a2 + 8) && v4;
}

void md::to_string(std::string *a1, uint64_t a2)
{
  *(v9.__r_.__value_.__r.__words + 4) = *(a2 + 4);
  LOWORD(v9.__r_.__value_.__l.__data_) = *a2;
  v9.__r_.__value_.__r.__words[2] = *(a2 + 16);
  v10 = *(a2 + 24);
  md::debugString<geo::QuadTile>(&v11, &v9);
  v4 = std::string::append(&v11, " ", 1uLL);
  v5 = v4->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = *&v4->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v9, *(a2 + 32));
  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v9;
  }

  else
  {
    v6 = v9.__r_.__value_.__r.__words[0];
  }

  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v9.__r_.__value_.__l.__size_;
  }

  v8 = std::string::append(&v12, v6, size);
  *a1 = *v8;
  v8->__r_.__value_.__r.__words[0] = 0;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_1B2D35E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (*(v19 - 25) < 0)
  {
    operator delete(*(v19 - 48));
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void md::DrapingTaskScheduler::scheduleDrapingTask(void *a1, geo::QuadTile *a2, geo::QuadTile *a3, uint64_t *a4, uint64_t a5)
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = *a4;
  v7 = *(*a4 + 32);
  if (!v7)
  {
    return;
  }

  v12 = std::__shared_weak_count::lock(v7);
  if (!v12)
  {
    return;
  }

  v13 = v12;
  if (!*(v6 + 24))
  {
    goto LABEL_46;
  }

  v36 = a4;
  v14 = md::FoundationKeyHash::operator()(a2);
  v15 = v14;
  v16 = a1[2];
  v35 = a5;
  if (!*&v16)
  {
    goto LABEL_21;
  }

  v17 = vcnt_s8(v16);
  v17.i16[0] = vaddlv_u8(v17);
  v18 = v17.u32[0];
  if (v17.u32[0] > 1uLL)
  {
    v19 = v14;
    if (v14 >= *&v16)
    {
      v19 = v14 % *&v16;
    }
  }

  else
  {
    v19 = (*&v16 - 1) & v14;
  }

  v20 = *(a1[1] + 8 * v19);
  if (!v20 || (v21 = *v20) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v22 = v21[1];
    if (*&v22 == v15)
    {
      break;
    }

    if (v18 > 1)
    {
      if (*&v22 >= *&v16)
      {
        *&v22 %= *&v16;
      }
    }

    else
    {
      *&v22 &= *&v16 - 1;
    }

    if (*&v22 != v19)
    {
      goto LABEL_21;
    }

LABEL_20:
    v21 = *v21;
    if (!v21)
    {
      goto LABEL_21;
    }
  }

  if (!std::__unordered_map_equal<md::FoundationKey,std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,std::equal_to<md::FoundationKey>,md::FoundationKeyHash,true>::operator()[abi:nn200100](&v21[2], a2))
  {
    goto LABEL_20;
  }

  v23 = md::OverlayKeyHash::operator()(a3);
  v24 = v23;
  v25 = v21[8];
  if (!*&v25)
  {
    goto LABEL_39;
  }

  v26 = vcnt_s8(v25);
  v26.i16[0] = vaddlv_u8(v26);
  v27 = v26.u32[0];
  if (v26.u32[0] > 1uLL)
  {
    v28 = v23;
    if (v23 >= *&v25)
    {
      v28 = v23 % *&v25;
    }
  }

  else
  {
    v28 = (*&v25 - 1) & v23;
  }

  v29 = *(*&v21[7] + 8 * v28);
  if (!v29 || (v30 = *v29) == 0)
  {
LABEL_39:
    operator new();
  }

  while (2)
  {
    v31 = *(v30 + 1);
    if (v31 != v24)
    {
      if (v27 > 1)
      {
        if (v31 >= *&v25)
        {
          v31 %= *&v25;
        }
      }

      else
      {
        v31 &= *&v25 - 1;
      }

      if (v31 != v28)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    if (!md::OverlayKey::operator==(v30 + 16, a3))
    {
LABEL_38:
      v30 = *v30;
      if (!v30)
      {
        goto LABEL_39;
      }

      continue;
    }

    break;
  }

  v33 = *v36;
  v32 = v36[1];
  if (v32)
  {
    atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
  }

  v34 = *(v30 + 10);
  *(v30 + 9) = v33;
  *(v30 + 10) = v32;
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v34);
  }

  if (*(*a1 + 128))
  {
    std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v38, v35);
    std::allocate_shared[abi:nn200100]<geo::Task,std::allocator<geo::Task>,std::function<void ()(void)> &,0>(&v37, v38);
  }

LABEL_46:
  std::__shared_weak_count::__release_shared[abi:nn200100](v13);
}

void sub_1B2D367C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,void *>>>::operator()[abi:nn200100](1, v18);
  std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,std::__unordered_map_hasher<md::OverlayKey,std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,md::OverlayKeyHash,std::equal_to<md::OverlayKey>,true>,std::__unordered_map_equal<md::OverlayKey,std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,std::equal_to<md::OverlayKey>,md::OverlayKeyHash,true>,std::allocator<std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>>>::~__hash_table(v2 + 56);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t md::ClientDrapedMeshes::vertexCount(md::ClientDrapedMeshes *this)
{
  v1 = *(this + 8);
  if (v1)
  {
    v1 = (*(**(v1 + 64) + 48) - *(**(v1 + 64) + 40)) / *(**(v1 + 64) + 8);
  }

  v2 = 0;
  v3 = 1;
  do
  {
    v4 = v3;
    v5 = this + 32 * v2;
    if (v5[24] == 1)
    {
      v6 = (*(**(*v5 + 64) + 48) - *(**(*v5 + 64) + 40)) / *(**(*v5 + 64) + 8);
    }

    else
    {
      LODWORD(v6) = 0;
    }

    v3 = 0;
    v1 = (v6 + v1);
    v2 = 1;
  }

  while ((v4 & 1) != 0);
  return v1;
}

void ggl::ConstantDataTyped<ggl::SinglePassRouteLine::ClipParams>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::SinglePassRouteLine::ClipParams>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3D6E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::SinglePassRouteLine::DrawAnimationDescription>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::SinglePassRouteLine::DrawAnimationDescription>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3D688;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::SinglePassRouteLine::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::SinglePassRouteLine::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3D630;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::RouteLine::BaseMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29F0D60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RouteLineDrawAnimation::reset(md::RouteLineDrawAnimation *this)
{
  *(this + 108) = 256;
  v2 = *(this + 8);
  if (v2)
  {
    [v2 stop];
    v3 = *(this + 8);
    *(this + 8) = 0;
  }
}

void md::RouteLineDrawAnimation::rebuildAnimationSegments(md::RouteLineDrawAnimation *this, VKRouteLine *a2, PolylineCoordinate a3)
{
  v67 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  *(this + 120) = 0u;
  *(this + 9) = 0x3FF0000000000000;
  *(this + 5) = 0u;
  v53 = (this + 80);
  v54 = (this + 120);
  *(this + 6) = 0u;
  *(this + 14) = 0x3FF0000000000000;
  *(this + 136) = 0u;
  *(this + 19) = 0x3FF0000000000000;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 24) = 0x3FF0000000000000;
  *(this + 52) = -1;
  if (v5)
  {
    objc_msgSend_sections(v5);
    v7 = ((*(&v59 + 1) - v59) >> 3);
  }

  else
  {
    v59 = 0uLL;
    v7 = 0.0;
    *&v60 = 0;
  }

  *(this + 53) = v7;
  *&v57[0] = &v59;
  std::vector<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>>::__destroy_vector::operator()[abi:nn200100](v57);
  *(this + 6) = *(this + 5);
  if (v6)
  {
    v8 = 0;
    v9 = 0.0;
    while (1)
    {
      objc_msgSend_sections(v6, v53, v54);
      v10 = *(&v59 + 1) - v59;
      *&v57[0] = &v59;
      std::vector<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>>::__destroy_vector::operator()[abi:nn200100](v57);
      if (v8 >= v10 >> 3)
      {
        break;
      }

      objc_msgSend_sections(v6);
      v11 = *(v59 + 8 * v8);
      if (v11)
      {
        v12 = v11 + 8;
      }

      else
      {
        v12 = 0;
      }

      v9 = *(v12 + 208) + v9;
      *&v57[0] = &v59;
      std::vector<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>>::__destroy_vector::operator()[abi:nn200100](v57);
      ++v8;
    }

    v13 = 0;
    v14 = 0x2E8BA2E8BA2E8BALL;
    v15 = 0.0;
    v16 = 1.0 / v9;
    while (1)
    {
      objc_msgSend_sections(v6);
      v17 = *(&v59 + 1) - v59;
      *&v57[0] = &v59;
      std::vector<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>>::__destroy_vector::operator()[abi:nn200100](v57);
      if (v13 >= v17 >> 3)
      {
        break;
      }

      objc_msgSend_sections(v6);
      v62 = 0;
      v18 = *(v59 + 8 * v13);
      v62 = v18;
      if (v18)
      {
        ++*v18;
      }

      *&v57[0] = &v59;
      std::vector<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>>::__destroy_vector::operator()[abi:nn200100](v57);
      for (i = 1; ; ++i)
      {
        v20 = v62 ? v62 + 1 : 0;
        if ((*(*v20 + 56))(v20) <= i)
        {
          break;
        }

        if (v62)
        {
          v21 = v62 + 1;
        }

        else
        {
          v21 = 0;
        }

        v22 = (*(*v21[9] + 32))(v21[9], i - 1);
        v59 = *v22;
        v60 = v22[1];
        v61 = v22[2];
        if (v62)
        {
          v23 = v62 + 1;
        }

        else
        {
          v23 = 0;
        }

        v24 = (*(*v23[9] + 32))(v23[9], i);
        v25 = 0;
        v26 = v24[1];
        v57[0] = *v24;
        v57[1] = v26;
        v58 = v24[2];
        do
        {
          *(&v55 + v25) = *(&v59 + v25);
          ++v25;
        }

        while (v25 != 3);
        v27 = 0;
        v65 = v55;
        v66 = v56;
        do
        {
          *(&v55 + v27) = *(v57 + v27);
          ++v27;
        }

        while (v27 != 3);
        v63 = v55;
        v64 = v56;
        if (HIDWORD(v59) >= a3.index && (HIDWORD(v59) != a3.index || *&v60 >= a3.offset))
        {
          v28 = (*&v58 - *&v61);
          if (v28 > 0.0000001)
          {
            v29 = (v15 + *&v61) * v16;
            v30 = v28 + *&v61;
            v31 = (v30 + v15) * v16;
            if (v62)
            {
              v32 = (v62 + 1);
            }

            else
            {
              v32 = 0;
            }

            v33 = v32[26];
            v34 = *&v61 / v33;
            v36 = *(this + 6);
            v35 = *(this + 7);
            v37 = v30 / v33;
            if (v36 >= v35)
            {
              v39 = *(this + 5);
              v40 = 0x2E8BA2E8BA2E8BA3 * (v36 - v39) + 1;
              if (v40 > 0x2E8BA2E8BA2E8BALL)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v41 = 0x2E8BA2E8BA2E8BA3 * ((v35 - v39) >> 3);
              if (2 * v41 > v40)
              {
                v40 = 2 * v41;
              }

              if (v41 < 0x1745D1745D1745DLL)
              {
                v14 = v40;
              }

              if (v14)
              {
                if (v14 <= 0x2E8BA2E8BA2E8BALL)
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v42 = 8 * (v36 - v39);
              *v42 = v34;
              *(v42 + 8) = v37;
              *(v42 + 16) = v29;
              *(v42 + 24) = v31;
              *(v42 + 32) = v65;
              *(v42 + 48) = v66;
              *(v42 + 56) = v63;
              *(v42 + 72) = v64;
              *(v42 + 80) = v13;
              if (v39 != v36)
              {
                v43 = v39;
                v44 = 8 * (v36 - v39) - (v36 - v39);
                do
                {
                  v45 = *(v43 + 1);
                  *v44 = *v43;
                  *(v44 + 16) = v45;
                  v46 = *(v43 + 2);
                  v47 = *(v43 + 3);
                  v48 = *(v43 + 4);
                  *(v44 + 80) = v43[10];
                  *(v44 + 48) = v47;
                  *(v44 + 64) = v48;
                  *(v44 + 32) = v46;
                  v43 += 11;
                  v44 += 88;
                }

                while (v43 != v36);
              }

              v38 = v42 + 88;
              *(this + 5) = 8 * (v36 - v39) - (v36 - v39);
              *(this + 6) = v42 + 88;
              *(this + 7) = 0;
              if (v39)
              {
                operator delete(v39);
              }

              v14 = 0x2E8BA2E8BA2E8BALL;
            }

            else
            {
              *v36 = v34;
              v36[1] = v37;
              v36[2] = v29;
              v36[3] = v31;
              *(v36 + 2) = v65;
              *(v36 + 6) = v66;
              *(v36 + 7) = v63;
              *(v36 + 9) = v64;
              v38 = (v36 + 11);
              *(v36 + 20) = v13;
            }

            *(this + 6) = v38;
          }
        }
      }

      if (v62)
      {
        v49 = (v62 + 1);
      }

      else
      {
        v49 = 0;
      }

      v15 = v49[26] + v15;
      geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::~fast_shared_ptr(&v62);
      ++v13;
    }
  }

  else
  {
    v59 = 0uLL;
    *&v60 = 0;
    *&v57[0] = &v59;
    std::vector<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>>::__destroy_vector::operator()[abi:nn200100](v57);
    v59 = 0uLL;
    *&v60 = 0;
    *&v57[0] = &v59;
    std::vector<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>>::__destroy_vector::operator()[abi:nn200100](v57);
  }

  v50 = *(this + 5);
  if (*(this + 6) != v50)
  {
    v51 = *(v50 + 48);
    v52 = *(v50 + 32);
    *(this + 9) = 0x3FF0000000000000;
    *v53 = 0u;
    v53[1] = 0u;
    *(this + 14) = 0x3FF0000000000000;
    *v54 = 0u;
    v54[1] = 0u;
    *(this + 152) = xmmword_1B33B0680;
    *(this + 168) = v52;
    *(this + 23) = v51;
    *(this + 24) = 0x3FF0000000000000;
    *&v51 = *(v50 + 16);
    *(this + 55) = v51;
  }
}

void std::vector<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 = geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::~fast_shared_ptr(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::_fast_shared_ptr_control>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void md::RouteLineDrawAnimation::update(md::RouteLineDrawAnimation *this, float a2, int *a3)
{
  v3 = a2;
  v4 = *(this + 55) + (1.0 - *(this + 55)) * a2;
  *(this + 50) = v4;
  v5 = *(this + 5);
  v6 = -1171354717 * ((*(this + 6) - v5) >> 3);
  if (v6)
  {
    v8 = 0;
    v9 = 0;
    v10 = 88 * v6;
    while (1)
    {
      v11 = v5 + v8;
      v12 = *(v5 + v8 + 16);
      if (v12 <= v3)
      {
        v13 = *(v11 + 24);
        if (v13 >= v3)
        {
          break;
        }
      }

      ++v9;
      v8 += 88;
      if (v10 == v8)
      {
        *a3 = *(this + 51);
        return;
      }
    }

    v14 = (v5 + v8 + 56);
    v15 = (v5 + v8 + 32);
    if (*(this + 52) == v9)
    {
      v16 = *(this + 51);
    }

    else
    {
      *(this + 52) = v9;
      v16 = *(v11 + 80);
      *(this + 51) = v16;
    }

    v17 = 0;
    *a3 = v16;
    v78 = *(v11 + 32);
    v79 = *(v11 + 48);
    do
    {
      *(&v78 + v17) = *(&v78 + v17) + (*(v5 + v17 + v8 + 56) - *(&v78 + v17)) * ((v3 - v13) / (v13 - v12) + 1.0);
      v17 += 8;
    }

    while (v17 != 24);
    for (i = 0; i != 24; i += 8)
    {
      v19 = *v14++;
      *(&v95 + i) = v19 - *(&v78 + i);
    }

    v20 = 1.0 / sqrt(*&v95 * *&v95 + *(&v95 + 1) * *(&v95 + 1));
    v21 = v20 * *&v95;
    v22 = v20 * *(&v95 + 1);
    v23 = 1.0 / sqrt(v21 * v21 + v22 * v22);
    v77[0] = v23 * v21;
    v77[1] = v23 * v22;
    v77[2] = 0.0;
    v95 = xmmword_1B33B0740;
    v96 = 0;
    gm::quaternionBetweenVectors<double>(v76, &v95, v77);
    for (j = 0; j != 24; j += 8)
    {
      *(&v95 + j) = *(&v78 + j) - *(v5 + j + v8 + 32);
    }

    v25 = 0;
    v26 = v96;
    v27 = v95;
    *(this + 5) = 0u;
    *(this + 6) = 0u;
    *(this + 120) = 0u;
    *(this + 136) = 0u;
    *(this + 9) = 0x3FF0000000000000;
    *(this + 14) = 0x3FF0000000000000;
    *(this + 152) = xmmword_1B33B0680;
    *(this + 168) = v27;
    *(this + 24) = 0x3FF0000000000000;
    *(this + 23) = v26;
    do
    {
      v28 = *v15++;
      v29 = v28;
      *&v75[v25] = v29;
      v25 += 4;
    }

    while (v25 != 12);
    ggl::DataAccess<ggl::RouteLine::DefaultVbo>::DataAccess(&v95, **(*(this + 3) + 64), 0, 6, 0, 0);
    v30 = 0;
    v31 = v97;
    do
    {
      *&v31[v30] = *&v75[v30 * 2];
      v30 += 2;
    }

    while (v30 != 6);
    for (k = 0; k != 6; k += 2)
    {
      *&v31[k + 24] = *&v75[k * 2];
    }

    for (m = 0; m != 6; m += 2)
    {
      *&v31[m + 48] = *&v75[m * 2];
    }

    for (n = 0; n != 6; n += 2)
    {
      *&v31[n + 72] = *&v75[n * 2];
    }

    for (ii = 0; ii != 6; ii += 2)
    {
      *&v31[ii + 96] = *&v75[ii * 2];
    }

    for (jj = 0; jj != 6; jj += 2)
    {
      *&v31[jj + 120] = *&v75[jj * 2];
    }

    v93 = xmmword_1B33B0BC0;
    v94 = 0;
    v91 = xmmword_1B33B0BD0;
    v92 = 0;
    v89 = xmmword_1B33B0530;
    v90 = 0;
    v87 = xmmword_1B33B0BD0;
    v88 = 0;
    __asm { FMOV            V0.2D, #1.0 }

    v85 = _Q0;
    v86 = 0;
    v83 = xmmword_1B33B0530;
    v84 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v42 = gm::rotateAboutPoint<double>(&v93, v76, &v80);
    v73 = v43;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v72 = gm::rotateAboutPoint<double>(&v91, v76, &v80);
    v74 = v44;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v45 = gm::rotateAboutPoint<double>(&v89, v76, &v80);
    v47 = v46;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v48 = gm::rotateAboutPoint<double>(&v87, v76, &v80);
    v50 = v49;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v51 = gm::rotateAboutPoint<double>(&v85, v76, &v80);
    v53 = v52;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v54 = gm::rotateAboutPoint<double>(&v83, v76, &v80);
    v55 = v42 * 0.25;
    v56 = ((v55 * 32768.0) + -0.5);
    v57 = v73 * 0.25;
    v31[8] = v56;
    v31[9] = ((v57 * 32768.0) + -0.5);
    v58 = v72 * 0.25;
    v59 = ((v58 * 32768.0) + -0.5);
    v60 = v74 * 0.25;
    v31[32] = v59;
    v31[33] = ((v60 * 32768.0) + -0.5);
    v61 = v45 * 0.25;
    v62 = ((v61 * 32768.0) + -0.5);
    v63 = v47 * 0.25;
    v31[56] = v62;
    v31[57] = ((v63 * 32768.0) + -0.5);
    v64 = v48 * 0.25;
    v65 = ((v64 * 32768.0) + -0.5);
    v66 = v50 * 0.25;
    v31[80] = v65;
    v31[81] = ((v66 * 32768.0) + -0.5);
    v67 = v51 * 0.25;
    v68 = ((v67 * 32768.0) + -0.5);
    v69 = v53 * 0.25;
    v31[104] = v68;
    v31[105] = ((v69 * 32768.0) + -0.5);
    *&v54 = v54 * 0.25;
    v71 = ((*&v54 * 32768.0) + -0.5);
    *&v54 = v70 * 0.25;
    v31[128] = v71;
    v31[129] = ((*&v54 * 32768.0) + -0.5);
    ggl::BufferMemory::~BufferMemory(&v95);
  }
}

uint64_t gss::FeatureAttributeSet::operator=(uint64_t **a1, uint64_t **a2)
{
  if (a1 != a2)
  {
    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__assign_with_size[abi:nn200100]<std::pair<gss::StyleAttribute,unsigned short>*,std::pair<gss::StyleAttribute,unsigned short>*>(a1, *a2, a2[1], a2[1] - *a2);
  }

  v3 = *a1;
  v4 = a1[1];

  return gss::FeatureAttributeSet::sort(v3, v4);
}

uint64_t std::__hash_table<GEOComposedRouteSection * {__strong},std::hash<GEOComposedRouteSection * {__strong}>,std::equal_to<GEOComposedRouteSection * {__strong}>,std::allocator<GEOComposedRouteSection * {__strong}>>::~__hash_table(uint64_t a1)
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

void std::__tree<std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,std::__map_value_compare<GEOComposedRouteSection * {__strong},std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,std::less<GEOComposedRouteSection * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,mdm::zone_mallocator>>::destroy(void *result)
{
  if (result)
  {
    std::__tree<std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,std::__map_value_compare<GEOComposedRouteSection * {__strong},std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,std::less<GEOComposedRouteSection * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,mdm::zone_mallocator>>::destroy(*result);
    std::__tree<std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,std::__map_value_compare<GEOComposedRouteSection * {__strong},std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,std::less<GEOComposedRouteSection * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,mdm::zone_mallocator>>::destroy(result[1]);
    v2 = result[5];
    result[5] = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v4 = mdm::zone_mallocator::instance(v3);
    v5 = pthread_rwlock_rdlock((v4 + 32));
    if (v5)
    {
      geo::read_write_lock::logFailure(v5, "read lock", v6);
    }

    atomic_fetch_add((v4 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v4, result);

    geo::read_write_lock::unlock((v4 + 32));
  }
}

uint64_t *std::unique_ptr<ggl::FragmentedPool<ggl::Debug::ExtendedMesh>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = ggl::FragmentedPool<ggl::Debug::ExtendedMesh>::~FragmentedPool(v2);
    MEMORY[0x1B8C62190](v3, 0x10A0C405CD4001ALL);
  }

  return a1;
}

uint64_t *std::unique_ptr<ggl::FragmentedPool<ggl::RenderItem>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = ggl::FragmentedPool<ggl::RenderItem>::~FragmentedPool(v2);
    MEMORY[0x1B8C62190](v3, 0x10A0C405CD4001ALL);
  }

  return a1;
}

uint64_t *std::unique_ptr<ggl::FragmentedPool<ggl::Debug::ExtendedPipelineSetup>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = ggl::FragmentedPool<ggl::Debug::ExtendedPipelineSetup>::~FragmentedPool(v2);
    MEMORY[0x1B8C62190](v3, 0x10A0C405CD4001ALL);
  }

  return a1;
}

uint64_t *std::unique_ptr<ggl::FragmentedPool<ggl::CommonMesh::Pos4Mesh>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = ggl::FragmentedPool<ggl::CommonMesh::Pos4Mesh>::~FragmentedPool(v2);
    MEMORY[0x1B8C62190](v3, 0x10A0C405CD4001ALL);
  }

  return a1;
}

ggl::zone_mallocator **std::unique_ptr<ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>>::~unique_ptr[abi:nn200100](ggl::zone_mallocator **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>::~FragmentedPool(v2);
    MEMORY[0x1B8C62190](v3, 0x10A0C405CD4001ALL);
  }

  return a1;
}

void *std::unique_ptr<md::ManeuverPointSet>::~unique_ptr[abi:nn200100](void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[6];
    v2[6] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v2[5];
    v2[5] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v2[4];
    v2[4] = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v2[3];
    v2[3] = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v2[2];
    v2[2] = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v2[1];
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    MEMORY[0x1B8C62190](v2, 0x1020C40A59E487DLL);
  }

  return a1;
}

void **std::unique_ptr<md::RouteLineSharedResources>::~unique_ptr[abi:nn200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<md::DashTextureCache::Key,std::shared_ptr<md::DashTexture>>,std::__unordered_map_hasher<md::DashTextureCache::Key,std::__hash_value_type<md::DashTextureCache::Key,std::shared_ptr<md::DashTexture>>,md::DashTextureCache::KeyHasher,std::equal_to<md::DashTextureCache::Key>,true>,std::__unordered_map_equal<md::DashTextureCache::Key,std::__hash_value_type<md::DashTextureCache::Key,std::shared_ptr<md::DashTexture>>,std::equal_to<md::DashTextureCache::Key>,md::DashTextureCache::KeyHasher,true>,std::allocator<std::__hash_value_type<md::DashTextureCache::Key,std::shared_ptr<md::DashTexture>>>>::~__hash_table((v2 + 33));
    v3 = v2[30];
    v2[30] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v2[29];
    v2[29] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v2[28];
    v2[28] = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    md::RouteLineSharedPipelineStates::~RouteLineSharedPipelineStates((v2 + 12));
    md::RouteLineSharedRenderStates::~RouteLineSharedRenderStates(v2);
    MEMORY[0x1B8C62190]();
  }

  return a1;
}

void std::vector<std::unique_ptr<md::RouteLineArrowLayer>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<md::RouteLineArrowLayer>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::unique_ptr<md::RouteLineArrowSharedResources>::~unique_ptr[abi:nn200100](void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[5];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = v2[3];
    v2[3] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v2[2];
    v2[2] = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v2[1];
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    MEMORY[0x1B8C62190](v2, 0x20C40A759441BLL);
  }

  return a1;
}

void *std::vector<std::unique_ptr<md::RouteLineArrowLayer>>::clear[abi:nn200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Debug::BasePipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::CommonMesh::Pos4Mesh *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *ggl::FragmentedPool<ggl::Debug::ExtendedPipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::Debug::ExtendedPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::Debug::ExtendedPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::Debug::ExtendedPipelineSetup *,geo::allocator_adapter<ggl::Debug::ExtendedPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::Debug::ExtendedPipelineSetup *,geo::allocator_adapter<ggl::Debug::ExtendedPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::Debug::ExtendedPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::Debug::ExtendedPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::vector<ggl::Debug::ExtendedPipelineSetup *,geo::allocator_adapter<ggl::Debug::ExtendedPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Debug::ExtendedPipelineSetup *>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Debug::ExtendedPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *ggl::FragmentedPool<ggl::Debug::ExtendedMesh>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::Debug::ExtendedMesh *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::Debug::ExtendedMesh * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::Debug::ExtendedMesh *,geo::allocator_adapter<ggl::Debug::ExtendedMesh *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::Debug::ExtendedMesh *,geo::allocator_adapter<ggl::Debug::ExtendedMesh *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::Debug::ExtendedMesh *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::Debug::ExtendedMesh * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::vector<ggl::Debug::ExtendedMesh *,geo::allocator_adapter<ggl::Debug::ExtendedMesh *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Debug::ExtendedMesh *>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Debug::ExtendedMesh *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::_retain_ptr<VKPolylineOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A4BA98;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKPolylineOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A4BA98;

  return a1;
}

void md::RouteLineOverlay::RouteLineOverlay(md::RouteLineOverlay *this, VKPolylineOverlay *a2, char a3, double a4)
{
  a2;
  *this = 0;
  *(this + 17) = &unk_1F2A4BA98;
  *(this + 18) = 0;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 208) = 1;
  *(this + 54) = this + 440;
  *(this + 55) = 0;
  *(this + 57) = 0;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 216) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 53) = 0;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 124) = 1065353216;
  *(this + 63) = 0;
  *(this + 128) = -1;
  *(this + 65) = 0;
  *(this + 132) = 0;
  *(this + 69) = 0;
  *(this + 536) = 0u;
  *(this + 73) = 0;
  *(this + 568) = 0u;
  memset_pattern16(this + 600, &unk_1B33B2570, 0x10uLL);
  *(this + 619) = 0;
  *(this + 154) = 0;
  *(this + 623) = 1;
  *(this + 625) = a3;
  *(this + 632) = 0;
  *(this + 208) = 0;
  *(this + 424) = 0;
  *(this + 213) = 0;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 43) = 0u;
  operator new();
}

void sub_1B2D393B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, gss::zone_mallocator *a10, gss::zone_mallocator *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a13);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a17);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a21);

  v24 = *(v21 + 672);
  if (v24)
  {
    *(v21 + 680) = v24;
    operator delete(v24);
  }

  v25 = *(v21 + 664);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }

  v26 = *(v21 + 648);
  *(v21 + 648) = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  v27 = *v22;
  *v22 = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a10);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a11);
  geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::~fast_shared_ptr((v21 + 504));
  std::__hash_table<GEOComposedRouteSection * {__strong},std::hash<GEOComposedRouteSection * {__strong}>,std::equal_to<GEOComposedRouteSection * {__strong}>,std::allocator<GEOComposedRouteSection * {__strong}>>::~__hash_table(v21 + 464);
  std::__tree<std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,std::__map_value_compare<GEOComposedRouteSection * {__strong},std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,std::less<GEOComposedRouteSection * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,mdm::zone_mallocator>>::destroy(*(v21 + 440));
  v28 = *(v21 + 424);
  *(v21 + 424) = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::Debug::ExtendedMesh>>::~unique_ptr[abi:nn200100]((v21 + 416));
  std::unique_ptr<ggl::FragmentedPool<ggl::RenderItem>>::~unique_ptr[abi:nn200100]((v21 + 408));
  std::unique_ptr<ggl::FragmentedPool<ggl::Debug::ExtendedPipelineSetup>>::~unique_ptr[abi:nn200100]((v21 + 400));
  v29 = *(v21 + 392);
  *(v21 + 392) = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::CommonMesh::Pos4Mesh>>::~unique_ptr[abi:nn200100]((v21 + 384));
  std::unique_ptr<ggl::FragmentedPool<ggl::RenderItem>>::~unique_ptr[abi:nn200100]((v21 + 376));
  std::unique_ptr<ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>>::~unique_ptr[abi:nn200100]((v21 + 368));
  v30 = *(v21 + 360);
  *(v21 + 360) = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  v31 = *(v21 + 352);
  *(v21 + 352) = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  std::unique_ptr<md::ManeuverPointSet>::~unique_ptr[abi:nn200100]((v21 + 344));
  v32 = *(v21 + 336);
  *(v21 + 336) = 0;
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  v33 = *(v21 + 328);
  *(v21 + 328) = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  v34 = *(v21 + 320);
  *(v21 + 320) = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  std::unique_ptr<md::RouteLineSharedResources>::~unique_ptr[abi:nn200100]((v21 + 312));
  a21 = (v21 + 288);
  std::vector<std::unique_ptr<md::RouteLineArrowLayer>>::__destroy_vector::operator()[abi:nn200100](&a21);
  std::unique_ptr<md::RouteLineArrowSharedResources>::~unique_ptr[abi:nn200100]((v21 + 280));
  v35 = *(v21 + 272);
  *(v21 + 272) = 0;
  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  v36 = *(v21 + 264);
  *(v21 + 264) = 0;
  if (v36)
  {
    (*(*v36 + 8))(v36);
  }

  v37 = *(v21 + 256);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v37);
  }

  v38 = *(v21 + 240);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v38);
  }

  v39 = *(v21 + 224);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v39);
  }

  *(v21 + 136) = a9;
  _Unwind_Resume(a1);
}

void ggl::ImageCopy::Pos2DUVPipelineState::~Pos2DUVPipelineState(ggl::ImageCopy::Pos2DUVPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

void ggl::ImageCopy::Pos2DUVPipelineSetup::~Pos2DUVPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::LabelNavEtaLabeler::onRouteContextStateDidChange(uint64_t this, VKRouteContext *a2)
{
  if (a2)
  {
    *(this + 253) = 1;
  }

  return this;
}

uint64_t buildStringForRouteSet(void *a1, void *a2)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v15);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v15, "[", 1);
  v6 = *a2;
  v4 = a2 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    do
    {
      v7 = v5[4];
      MEMORY[0x1B8C61C40](&v15, v7);
      v8 = *v4;
      v9 = v4;
      if (*v4)
      {
        do
        {
          v10 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        do
        {
          v10 = v9[2];
          v11 = *v10 == v9;
          v9 = v10;
        }

        while (v11);
      }

      if (v7 != v10[4])
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v15, ", ", 2);
      }

      v12 = v5[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v5[2];
          v11 = *v13 == v5;
          v5 = v13;
        }

        while (!v11);
      }

      v5 = v13;
    }

    while (v13 != v4);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v15, "]", 1);
  std::ostringstream::str[abi:nn200100](a1, &v15);
  v15 = *MEMORY[0x1E69E54E8];
  *(&v15 + *(v15 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v16 = MEMORY[0x1E69E5548] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v19);
}

void sub_1B2D39ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  a10 = *MEMORY[0x1E69E54E8];
  *(&a10 + *(a10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a11 = MEMORY[0x1E69E5548] + 16;
  if (a24 < 0)
  {
    operator delete(__p);
  }

  a11 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a12);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a27);
  _Unwind_Resume(a1);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,void *>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::ShareSection>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

uint64_t **md::RouteRangeAnnotationRequest::addAnnotatableSection(uint64_t a1, _OWORD *a2)
{
  v22 = 1;
  v23[0] = &v22;
  result = std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a1 + 16), 1u, v23);
  v4 = result;
  v6 = result[6];
  v5 = result[7];
  if (v6 >= v5)
  {
    v8 = result[5];
    v9 = (v6 - v8) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = v5 - v8;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    v23[4] = result + 8;
    if (v12)
    {
      v13 = mdm::zone_mallocator::instance(result);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::ShareSection>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v15 = &v14[16 * v9];
    v16 = &v14[16 * v12];
    *v15 = *a2;
    v7 = (v15 + 16);
    v17 = v4[5];
    v18 = v4[6] - v17;
    v19 = &v15[-v18];
    memcpy(&v15[-v18], v17, v18);
    v20 = v4[5];
    v4[5] = v19;
    v4[6] = v7;
    v21 = v4[7];
    v4[7] = v16;
    v23[2] = v20;
    v23[3] = v21;
    v23[0] = v20;
    v23[1] = v20;
    result = std::__split_buffer<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator> &>::~__split_buffer(v23);
  }

  else
  {
    *v6 = *a2;
    v7 = v6 + 2;
  }

  v4[6] = v7;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::ShareSection>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 16 * a2, 0x1000040451B5BE8uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

mdm::zone_mallocator *std::__split_buffer<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::ShareSection>(v5, v4);
  }

  return a1;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x48uLL, 0x10200406AC4BF30uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

void geo::_retain_ptr<LabelNavRouteContextObserverProxy * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((a1 + 8), a2);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>>,void *>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29F1180;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29F1180;

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VKLabelNavRouteEta * {__strong}>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,void *>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void std::vector<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 384;
        std::allocator_traits<std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>>::destroy[abi:nn200100]<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>,void,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,md::RouteLabelState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>>>,void *>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void std::allocator_traits<std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>>::destroy[abi:nn200100]<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>,void,0>(uint64_t a1)
{
  v3 = (a1 + 352);
  std::vector<md::PolylineSampleDebug,geo::allocator_adapter<md::PolylineSampleDebug,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v3 = (a1 + 96);
  std::vector<std::shared_ptr<md::PolylineCollider>,geo::allocator_adapter<std::shared_ptr<md::PolylineCollider>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1 + 48);
  std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*(a1 + 24));

  v2 = *a1;
}

void std::vector<md::PolylineSampleDebug,geo::allocator_adapter<md::PolylineSampleDebug,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1[1];
    v4 = **result;
    if (v3 != v2)
    {
      v5 = result;
      do
      {
        v6 = v3 - 72;
        result = std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v3 - 40));
        v3 = v6;
      }

      while (v6 != v2);
      v4 = **v5;
    }

    v1[1] = v2;
    v7 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::PolylineSampleDebug>(v7, v4);
  }
}

void std::vector<std::shared_ptr<md::PolylineCollider>,geo::allocator_adapter<std::shared_ptr<md::PolylineCollider>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v2);
    v3 = **a1;
    v5 = mdm::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::PolylineCollider>>(v5, v3);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::PolylineCollider>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::PolylineSampleDebug>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::RouteRangeAnnotationRequest>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<md::RouteRangeAnnotationRequest,void *>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::_retain_ptr<LabelNavRouteContextObserverProxy * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A46000;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<LabelNavRouteContextObserverProxy * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A46000;

  return a1;
}

void gatherRoutesFromContext(uint64_t ***a1, void *a2)
{
  v43[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (!v3)
  {
    goto LABEL_51;
  }

  v37 = v3;
  v5 = [v3 routeInfo];
  v7 = [v5 route];
  v43[0] = v7;
  if (!a1[2])
  {
    goto LABEL_17;
  }

  v8 = *a1;
  v9 = a1[1];
  *a1 = v4;
  v9->_etaDescription = 0;
  *v4 = 0;
  a1[2] = 0;
  if (*(v8 + 1))
  {
    v10 = *(v8 + 1);
  }

  else
  {
    v10 = v8;
  }

  if (!v10)
  {
    std::__tree<VKPolylineGroupOverlay * {__strong}>::destroy(0, v6);
LABEL_17:
    v20 = v43;
    do
    {
      v21 = *v4;
      if (!*v4)
      {
LABEL_25:
        operator new();
      }

      v22 = *v20;
      while (1)
      {
        while (1)
        {
          v23 = v21;
          trafficAnnotations = v21->_trafficAnnotations;
          if (v22 >= trafficAnnotations)
          {
            break;
          }

          v21 = *v23;
          if (!*v23)
          {
            goto LABEL_25;
          }
        }

        if (trafficAnnotations >= v22)
        {
          break;
        }

        v21 = v23[1];
        if (!v21)
        {
          goto LABEL_25;
        }
      }
    }

    while (v20++ != v43);
    v7 = v43[0];
    goto LABEL_36;
  }

  v11 = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::_DetachedTreeCache::__detach_next(v10);
  v12 = v11;
  v13 = *v4;
  v14 = v43[0];
  v15 = (a1 + 1);
  v16 = (a1 + 1);
  if (*v4)
  {
    while (1)
    {
      while (1)
      {
        v16 = v13;
        v17 = v13->_trafficAnnotations;
        if (v43[0] >= v17)
        {
          break;
        }

        v13 = *v16;
        v15 = v16;
        if (!*v16)
        {
          goto LABEL_14;
        }
      }

      if (v17 >= v43[0])
      {
        break;
      }

      v13 = v16[1];
      if (!v13)
      {
        v15 = (v16 + 1);
        goto LABEL_14;
      }
    }

    v19 = v11;
    v12 = v10;
  }

  else
  {
LABEL_14:
    objc_storeStrong((v10 + 32), v43[0]);
    std::__tree<unsigned short>::__insert_node_at(a1, v16, v15, v10);
    if (!v12)
    {
      v26 = 0;
LABEL_35:
      std::__tree<VKPolylineGroupOverlay * {__strong}>::destroy(v26, v18);
      goto LABEL_36;
    }

    v19 = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::_DetachedTreeCache::__detach_next(v12);
  }

  std::__tree<VKPolylineGroupOverlay * {__strong}>::destroy(v12, v14);
  if (v19)
  {
    for (i = v19[2]; i; i = i[2])
    {
      v19 = i;
    }

    v26 = v19;
    goto LABEL_35;
  }

LABEL_36:

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v28 = [v37 alternateRoutes];
  v29 = v28;
  v30 = [v28 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v30)
  {
    v31 = *v39;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v39 != v31)
        {
          objc_enumerationMutation(v29);
        }

        v33 = [*(*(&v38 + 1) + 8 * j) route];
        v34 = *v4;
        if (!*v4)
        {
LABEL_47:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v35 = v34;
            v36 = v34->_trafficAnnotations;
            if (v33 >= v36)
            {
              break;
            }

            v34 = *v35;
            if (!*v35)
            {
              goto LABEL_47;
            }
          }

          if (v36 >= v33)
          {
            break;
          }

          v34 = v35[1];
          if (!v34)
          {
            goto LABEL_47;
          }
        }
      }

      v28 = v29;
      v30 = [v29 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v30);
  }

  v3 = v37;
LABEL_51:
}

void sub_1B2D3AA8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  std::__tree<VKPolylineGroupOverlay * {__strong}>::destroy(*v11, v13);

  _Unwind_Resume(a1);
}

__n128 std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<GEOComposedRoute * {__strong},std::__tree_node<GEOComposedRoute * {__strong},void *> *,long> &,std::__tree_const_iterator<GEOComposedRoute * {__strong},std::__tree_node<GEOComposedRoute * {__strong},void *> *,long> &,std::__tree_const_iterator<GEOComposedRoute * {__strong},std::__tree_node<GEOComposedRoute * {__strong},void *> *,long> &,std::__tree_const_iterator<GEOComposedRoute * {__strong},std::__tree_node<GEOComposedRoute * {__strong},void *> *,long> &,std::insert_iterator<std::set<GEOComposedRoute * {__strong}>> &>(uint64_t a1, id **a2, id **a3, uint64_t a4, void *a5, uint64_t ***a6)
{
  v8 = *a2;
  v9 = *a3;
  if (*a2 == *a3)
  {
LABEL_38:
    v30 = *a6;
    goto LABEL_39;
  }

  for (i = *a4; *a4 != *a5; i = *a4)
  {
    v15 = v8[4];
    v16 = i[4];
    if (v15 >= v16)
    {
      if (v16 >= v15)
      {
        v23 = v8[1];
        if (v23)
        {
          do
          {
            v24 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          do
          {
            v24 = v8[2];
            v20 = *v24 == v8;
            v8 = v24;
          }

          while (!v20);
        }

        *a2 = v24;
        v25 = *a4;
        v26 = *(*a4 + 8);
        if (v26)
        {
          do
          {
            v22 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v22 = v25[2];
            v20 = *v22 == v25;
            v25 = v22;
          }

          while (!v20);
        }
      }

      else
      {
        v21 = i[1];
        if (v21)
        {
          do
          {
            v22 = v21;
            v21 = *v21;
          }

          while (v21);
        }

        else
        {
          do
          {
            v22 = i[2];
            v20 = *v22 == i;
            i = v22;
          }

          while (!v20);
        }
      }

      *a4 = v22;
    }

    else
    {
      std::insert_iterator<std::set<GEOComposedRoute * {__strong}>>::operator=[abi:nn200100](a6, v8 + 4);
      v17 = *a2;
      v18 = (*a2)[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v17[2];
          v20 = *v19 == v17;
          v17 = v19;
        }

        while (!v20);
      }

      *a2 = v19;
    }

    v8 = *a2;
    v9 = *a3;
    if (*a2 == *a3)
    {
      goto LABEL_38;
    }
  }

  v30 = *a6;
  if (v8 != v9)
  {
    do
    {
      std::insert_iterator<std::set<GEOComposedRoute * {__strong}>>::operator=[abi:nn200100](&v30, v8 + 4);
      v27 = v8[1];
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = v8[2];
          v20 = *v28 == v8;
          v8 = v28;
        }

        while (!v20);
      }

      v8 = v28;
    }

    while (v28 != v9);
    v8 = v9;
  }

LABEL_39:
  result = v30;
  *a1 = v8;
  *(a1 + 8) = result;
  return result;
}

void ___ZL36GEOGetVectorKitLabelNavEtaLabelerLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "LabelNavEtaLabeler");
  v1 = GEOGetVectorKitLabelNavEtaLabelerLog(void)::log;
  GEOGetVectorKitLabelNavEtaLabelerLog(void)::log = v0;
}

uint64_t ***std::insert_iterator<std::set<GEOComposedRoute * {__strong}>>::operator=[abi:nn200100](uint64_t ***a1, id *a2)
{
  v2 = a1[1];
  v3 = *a1 + 1;
  if (v3 == v2 || (v4 = *a2, v5 = v2[4], *a2 < v5))
  {
    v6 = *v2;
    if (**a1 == v2)
    {
      v8 = a1[1];
      goto LABEL_16;
    }

    if (v6)
    {
      v7 = *v2;
      do
      {
        v8 = v7;
        v7 = *(v7 + 8);
      }

      while (v7);
    }

    else
    {
      v12 = a1[1];
      do
      {
        v8 = v12[2];
        v13 = *v8 == v12;
        v12 = v8;
      }

      while (v13);
    }

    v14 = *a2;
    if (v8[4] < *a2)
    {
LABEL_16:
      v9 = (v8 + 1);
      if (!v6)
      {
        v9 = a1[1];
      }

      goto LABEL_18;
    }

    v16 = *v3;
    if (!*v3)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v17 = v16;
        v18 = v16[4];
        if (v14 >= v18)
        {
          break;
        }

        v16 = *v17;
        v3 = v17;
        if (!*v17)
        {
          goto LABEL_38;
        }
      }

      if (v18 >= v14)
      {
        break;
      }

      v3 = v17 + 1;
      v16 = v17[1];
      if (!v16)
      {
        goto LABEL_38;
      }
    }

LABEL_45:
    v9 = v3;
    goto LABEL_18;
  }

  if (v5 >= v4)
  {
    v15 = a1[1];
    goto LABEL_39;
  }

  v9 = (v2 + 1);
  v10 = v2[1];
  if (v10)
  {
    do
    {
      v9 = v10;
      v10 = *v10;
      v11 = v9;
    }

    while (v10);
  }

  else
  {
    v11 = a1[1];
    do
    {
      v19 = v11;
      v11 = v11[2];
    }

    while (*v11 != v19);
  }

  if (v11 != v3 && v4 >= v11[4])
  {
    v20 = *v3;
    if (!*v3)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v21 = v20;
        v22 = v20[4];
        if (v4 >= v22)
        {
          break;
        }

        v20 = *v21;
        v3 = v21;
        if (!*v21)
        {
          goto LABEL_38;
        }
      }

      if (v22 >= v4)
      {
        goto LABEL_45;
      }

      v3 = v21 + 1;
      v20 = v21[1];
      if (!v20)
      {
        goto LABEL_38;
      }
    }
  }

LABEL_18:
  v15 = *v9;
  if (!*v9)
  {
LABEL_38:
    operator new();
  }

LABEL_39:
  a1[1] = v15;
  v23 = v15[1];
  if (v23)
  {
    do
    {
      v24 = v23;
      v23 = *v23;
    }

    while (v23);
  }

  else
  {
    do
    {
      v24 = v15[2];
      v13 = *v24 == v15;
      v15 = v24;
    }

    while (!v13);
  }

  a1[1] = v24;
  return a1;
}

uint64_t std::unique_ptr<std::__tree_node<GEOComposedRoute * {__strong},void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<GEOComposedRoute * {__strong},void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void md::LabelNavEtaLabeler::recreateRouteCollider(md::LabelNavEtaLabeler *this, VKRouteContext *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  memset(v16, 0, sizeof(v16));
  v10 = a2;
  if (v10)
  {
    v2 = [(VKRouteContext *)v10 routeInfo];

    if (v2)
    {
      v3 = [(VKRouteContext *)v10 routeInfo];
      v4 = [v3 route];
      v17 = v4;

      if ([v4 pointCount] >= 2)
      {
        std::vector<GEOComposedRoute * {__strong}>::push_back[abi:nn200100](v16, &v17);
      }
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(VKRouteContext *)v10 alternateRoutes];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
    if (v6)
    {
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [*(*(&v12 + 1) + 8 * i) route];
          v17 = v9;
          if ([v9 pointCount] >= 2)
          {
            std::vector<GEOComposedRoute * {__strong}>::push_back[abi:nn200100](v16, &v17);
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
      }

      while (v6);
    }
  }

  if (*(this + 450) == 1)
  {
    operator new();
  }

  operator new();
}

void sub_1B2D3BD30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, void **a37)
{
  a37 = &a34;
  std::vector<VKTrafficFeature * {__strong}>::__destroy_vector::operator()[abi:nn200100](&a37);

  _Unwind_Resume(a1);
}

void md::LabelNavEtaLabeler::prepareAnnotatableSectionsRoutes(md::LabelNavEtaLabeler *this)
{
  v72[2] = *MEMORY[0x1E69E9840];
  v2 = this + 392;
  std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*(this + 49));
  *(this + 51) = 0;
  *(this + 48) = v2;
  *(this + 49) = 0;
  v44 = this;
  if (*(this + 3))
  {
    v3 = GEOGetVectorKitLabelNavEtaLabelerLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(this + 3);
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "Updating annotatable sections for routes in routeContext:%p", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v67 = 0x4812000000;
    v68 = __Block_byref_object_copy__6352;
    v69 = __Block_byref_object_dispose__6353;
    v70 = "";
    v72[0] = 0;
    v72[1] = 0;
    v71 = v72;
    v5 = [*(this + 3) totalRouteCount];
    if (v5)
    {
      v6 = 1;
      do
      {
        v7 = *(this + 3);
        v56[0] = MEMORY[0x1E69E9820];
        v56[1] = 3221225472;
        v56[2] = ___ZN2md18LabelNavEtaLabeler32prepareAnnotatableSectionsRoutesEv_block_invoke;
        v56[3] = &unk_1E7B32EC0;
        v57 = v6;
        v56[4] = &buf;
        v56[5] = this;
        [v7 forEachSectionWithShareCount:v6 dothis:v56];

        v6 = (v6 + 1);
      }

      while (v6 <= v5);
    }

    v8 = *(this + 3);
    v42 = [v8 routeInfo];

    if (v42)
    {
      v9 = *(&buf + 1);
      v55 = [v42 route];
      *v59 = &v55;
      v10 = std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,std::allocator<std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>>>::__emplace_unique_key_args<GEOComposedRoute * {__strong},std::piecewise_construct_t const&,std::tuple<GEOComposedRoute * {__strong}&&>,std::tuple<>>((v9 + 48), v55, v59);

      v11 = [v42 route];
      v12 = md::LabelNavEtaLabeler::annotatableSectionsForRoute(this, v11);

      v13 = GEOGetVectorKitLabelNavEtaLabelerLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v42 route];
        v15 = [v42 route];
        [v15 endRouteCoordinate];
        v16 = GEOPolylineCoordinateAsFullString();
        v17 = v16;
        v18 = [v16 UTF8String];
        buildStringForAnnotatableSections(v53, v10 + 5);
        v19 = v54;
        v20 = v53[0];
        buildStringForAnnotatableSections(__p, v12);
        v21 = v53;
        if (v19 < 0)
        {
          v21 = v20;
        }

        if (v52 >= 0)
        {
          v22 = __p;
        }

        else
        {
          v22 = __p[0];
        }

        *v59 = 134218754;
        *&v59[4] = v14;
        v60 = 2080;
        v61 = v18;
        v62 = 2080;
        v63 = v21;
        v64 = 2080;
        v65 = v22;
        _os_log_impl(&dword_1B2754000, v13, OS_LOG_TYPE_INFO, "main:%p end:(%s) shareSections:%s annotatableSections:%s", v59, 0x2Au);
        if (v52 < 0)
        {
          operator delete(__p[0]);
        }

        if (v54 < 0)
        {
          operator delete(v53[0]);
        }
      }
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v23 = [*(this + 3) alternateRoutes];
    v24 = [v23 countByEnumeratingWithState:&v47 objects:v58 count:16];
    if (v24)
    {
      v25 = *v48;
      do
      {
        v43 = v24;
        for (i = 0; i != v43; ++i)
        {
          if (*v48 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = *(*(&v47 + 1) + 8 * i);
          v28 = *(&buf + 1);
          v46 = [v27 route];
          *v59 = &v46;
          v29 = std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,std::allocator<std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>>>::__emplace_unique_key_args<GEOComposedRoute * {__strong},std::piecewise_construct_t const&,std::tuple<GEOComposedRoute * {__strong}&&>,std::tuple<>>((v28 + 48), v46, v59);

          v30 = [v27 route];
          v31 = md::LabelNavEtaLabeler::annotatableSectionsForRoute(v44, v30);

          v32 = GEOGetVectorKitLabelNavEtaLabelerLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v45 = [v27 route];
            v33 = [v27 route];
            [v33 endRouteCoordinate];
            v34 = GEOPolylineCoordinateAsFullString();
            v35 = v34;
            v36 = [v34 UTF8String];
            buildStringForAnnotatableSections(v53, v29 + 5);
            v37 = v23;
            v38 = v54;
            v39 = v53[0];
            buildStringForAnnotatableSections(__p, v31);
            v40 = v53;
            if (v38 < 0)
            {
              v40 = v39;
            }

            v41 = __p;
            if (v52 < 0)
            {
              v41 = __p[0];
            }

            *v59 = 134218754;
            *&v59[4] = v45;
            v60 = 2080;
            v61 = v36;
            v62 = 2080;
            v63 = v40;
            v64 = 2080;
            v65 = v41;
            _os_log_impl(&dword_1B2754000, v32, OS_LOG_TYPE_INFO, "alternate:%p end:(%s) shareSections:%s annotatableSections:%s", v59, 0x2Au);
            if (v52 < 0)
            {
              operator delete(__p[0]);
            }

            v23 = v37;
            if (v54 < 0)
            {
              operator delete(v53[0]);
            }
          }
        }

        v24 = [v23 countByEnumeratingWithState:&v47 objects:v58 count:16];
      }

      while (v24);
    }

    _Block_object_dispose(&buf, 8);
    std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,std::allocator<std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>>>::destroy(v72[0]);
  }
}

void sub_1B2D3C664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose((v38 - 192), 8);
  std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,std::allocator<std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>>>::destroy(*(v38 - 136));
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__6352(void *result, void *a2)
{
  result[6] = a2[6];
  v2 = a2 + 7;
  v3 = a2[7];
  result[7] = v3;
  v4 = result + 7;
  v5 = a2[8];
  result[8] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v4;
  }

  return result;
}

void ___ZN2md18LabelNavEtaLabeler32prepareAnnotatableSectionsRoutesEv_block_invoke(uint64_t a1, id *a2)
{
  v4 = (a1 + 48);
  v3 = *(a1 + 48);
  v5 = *(a1 + 40);
  v79 = a2;
  if (v3 < 2)
  {
    v13 = 0;
  }

  else
  {
    v77 = *(a1 + 40);
    v6 = 0;
    v7 = 0;
    v8 = -1;
    v9 = a2;
    while (1)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v10 = [*v9 route];
      v11 = [v10 expectedTime];

      if (v11 < v8)
      {
        v12 = [*v9 route];
        v8 = [v12 expectedTime];

        v7 = v6;
      }

      ++v6;
      v9 += 3;
      if (v3 == v6)
      {
        goto LABEL_10;
      }
    }

    v7 = v6;
LABEL_10:
    v13 = v7;
    v5 = v77;
    a2 = v79;
  }

  v14 = &a2[3 * v13];
  v78 = *v14;
  v15 = [v78 route];
  v16 = v15;
  v17 = *(v5 + 392);
  if (v17)
  {
    while (1)
    {
      while (1)
      {
        v18 = v17;
        v19 = v17[4];
        if (v15 >= v19)
        {
          break;
        }

        v17 = *v18;
        v20 = v18;
        if (!*v18)
        {
          goto LABEL_19;
        }
      }

      if (v19 >= v15)
      {
        break;
      }

      v17 = v18[1];
      if (!v17)
      {
        v20 = v18 + 1;
        goto LABEL_19;
      }
    }

    v24 = v18;
  }

  else
  {
    v20 = (v5 + 392);
    v18 = (v5 + 392);
LABEL_19:
    v21 = mdm::zone_mallocator::instance(v15);
    v22 = pthread_rwlock_rdlock((v21 + 32));
    if (v22)
    {
      geo::read_write_lock::logFailure(v22, "read lock", v23);
    }

    v24 = malloc_type_zone_malloc(*v21, 0x48uLL, 0x10E0040BB616CE5uLL);
    atomic_fetch_add((v21 + 24), 1u);
    geo::read_write_lock::unlock((v21 + 32));
    *(v24 + 6) = 0;
    *(v24 + 8) = 0;
    *(v24 + 4) = v16;
    *(v24 + 5) = v24 + 48;
    *v24 = 0;
    *(v24 + 1) = 0;
    *(v24 + 2) = v18;
    *v20 = v24;
    v25 = **(v5 + 384);
    v26 = v24;
    if (v25)
    {
      *(v5 + 384) = v25;
      v26 = *v20;
    }

    std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(*(v5 + 392), v26);
    v16 = 0;
    ++*(v5 + 408);
  }

  v81 = v4;
  v27 = std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v24 + 5, *v4, &v81);
  v28 = v27;
  v29 = *(v14 + 2);
  v30 = *(v14 + 3);
  v31 = *(v14 + 4);
  v32 = *(v14 + 5);
  v33 = v27[6];
  v34 = v27[7];
  if (v33 >= v34)
  {
    v36 = v27[5];
    v37 = v33 - v36;
    v38 = (v33 - v36) >> 4;
    v39 = v38 + 1;
    if ((v38 + 1) >> 60)
    {
LABEL_53:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v40 = v34 - v36;
    if (v40 >> 3 > v39)
    {
      v39 = v40 >> 3;
    }

    if (v40 >= 0x7FFFFFFFFFFFFFF0)
    {
      v41 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v41 = v39;
    }

    v85 = v27 + 8;
    if (v41)
    {
      v42 = mdm::zone_mallocator::instance(v27);
      v43 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::ShareSection>(v42, v41);
      v36 = v28[5];
      v37 = v28[6] - v36;
      v44 = v37 >> 4;
    }

    else
    {
      v43 = 0;
      v44 = v38;
    }

    v45 = &v43[16 * v38];
    v46 = &v43[16 * v41];
    *v45 = v29;
    *(v45 + 1) = v30;
    *(v45 + 2) = v31;
    *(v45 + 3) = v32;
    v35 = (v45 + 16);
    v47 = &v45[-16 * v44];
    memcpy(v47, v36, v37);
    v48 = v28[5];
    v28[5] = v47;
    v28[6] = v35;
    v49 = v28[7];
    v28[7] = v46;
    v83 = v48;
    v84 = v49;
    v81 = v48;
    v82 = v48;
    std::__split_buffer<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator> &>::~__split_buffer(&v81);
  }

  else
  {
    *v33 = v29;
    *(v33 + 1) = v30;
    *(v33 + 2) = v31;
    v35 = (v33 + 16);
    *(v33 + 3) = v32;
  }

  v28[6] = v35;

  if (*v4)
  {
    v50 = 0;
    v51 = v79 + 3;
    do
    {
      v52 = *(*(a1 + 32) + 8);
      v80 = [*(v51 - 3) route];
      v81 = &v80;
      v53 = std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,std::allocator<std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>>>::__emplace_unique_key_args<GEOComposedRoute * {__strong},std::piecewise_construct_t const&,std::tuple<GEOComposedRoute * {__strong}&&>,std::tuple<>>((v52 + 48), v80, &v81);
      v81 = v4;
      v54 = std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v53 + 5, *v4, &v81);
      v55 = v54;
      v56 = *(v51 - 1);
      v57 = *v51;
      v58 = v51[1];
      v59 = v51[2];
      v60 = v54[6];
      v61 = v54[7];
      if (v60 >= v61)
      {
        v63 = v54[5];
        v64 = v60 - v63;
        v65 = (v60 - v63) >> 4;
        v66 = v65 + 1;
        if ((v65 + 1) >> 60)
        {
          goto LABEL_53;
        }

        v67 = v61 - v63;
        if (v67 >> 3 > v66)
        {
          v66 = v67 >> 3;
        }

        if (v67 >= 0x7FFFFFFFFFFFFFF0)
        {
          v68 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v68 = v66;
        }

        v85 = v54 + 8;
        if (v68)
        {
          v69 = mdm::zone_mallocator::instance(v54);
          v70 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::ShareSection>(v69, v68);
          v63 = v55[5];
          v64 = v55[6] - v63;
          v71 = v64 >> 4;
        }

        else
        {
          v70 = 0;
          v71 = v65;
        }

        v72 = &v70[16 * v65];
        v73 = &v70[16 * v68];
        *v72 = v56;
        *(v72 + 1) = v57;
        *(v72 + 2) = v58;
        *(v72 + 3) = v59;
        v62 = (v72 + 16);
        v74 = &v72[-16 * v71];
        memcpy(v74, v63, v64);
        v75 = v55[5];
        v55[5] = v74;
        v55[6] = v62;
        v76 = v55[7];
        v55[7] = v73;
        v83 = v75;
        v84 = v76;
        v81 = v75;
        v82 = v75;
        std::__split_buffer<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator> &>::~__split_buffer(&v81);
      }

      else
      {
        *v60 = v56;
        *(v60 + 1) = v57;
        *(v60 + 2) = v58;
        v62 = (v60 + 16);
        *(v60 + 3) = v59;
      }

      v55[6] = v62;

      ++v50;
      v51 += 6;
    }

    while (v50 < *v4);
  }
}

uint64_t **std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,std::allocator<std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>>>::__emplace_unique_key_args<GEOComposedRoute * {__strong},std::piecewise_construct_t const&,std::tuple<GEOComposedRoute * {__strong}&&>,std::tuple<>>(uint64_t **a1, unint64_t a2, uint64_t ***a3)
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

uint64_t buildStringForAnnotatableSections(void *a1, void *a2)
{
  v19 = a1;
  std::ostringstream::basic_ostringstream[abi:nn200100](&v21);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, "[\n", 2);
  v5 = *a2;
  v3 = a2 + 1;
  v4 = v5;
  if (v5 != v3)
  {
    v20 = v3;
    do
    {
      v6 = v4[5];
      v7 = v4[6];
      while (v6 != v7)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, "\t{ start:(", 10);
        v8 = GEOPolylineCoordinateAsFullString();
        v9 = [v8 UTF8String];
        v10 = strlen(v9);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, v9, v10);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, "), end:(", 8);
        v11 = GEOPolylineCoordinateAsFullString();
        v12 = [v11 UTF8String];
        v13 = strlen(v12);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, v12, v13);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, "), weight:", 10);
        v14 = MEMORY[0x1B8C61C90](&v21, *(v4 + 8));
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v14, " }\n", 3);

        v6 += 16;
      }

      v15 = v4[1];
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
          v16 = v4[2];
          v17 = *v16 == v4;
          v4 = v16;
        }

        while (!v17);
      }

      v4 = v16;
    }

    while (v16 != v20);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, "]", 1);
  std::ostringstream::str[abi:nn200100](v19, &v21);
  v21 = *MEMORY[0x1E69E54E8];
  *(&v21 + *(v21 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v22 = MEMORY[0x1E69E5548] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v23);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v25);
}

void sub_1B2D3D060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  a11 = *MEMORY[0x1E69E54E8];
  *(&a11 + *(a11 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a12 = MEMORY[0x1E69E5548] + 16;
  if (a25 < 0)
  {
    operator delete(__p);
  }

  a12 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a13);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a28);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,std::allocator<std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,std::allocator<std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>>>::destroy(*a1);
    std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,std::allocator<std::__value_type<GEOComposedRoute * {__strong},std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>>>>::destroy(a1[1]);
    std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(a1[6]);

    operator delete(a1);
  }
}

void std::vector<GEOComposedRoute * {__strong}>::push_back[abi:nn200100](void ***a1, id *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = v4 - *a1;
    if ((v6 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = (8 * v6 + 8);
    v11 = *a1;
    v12 = a1[1];
    v13 = (v10 + *a1 - v12);
    if (*a1 != v12)
    {
      v14 = *a1;
      v15 = v13;
      do
      {
        v16 = *v14;
        *v14++ = 0;
        *v15++ = v16;
      }

      while (v14 != v12);
      do
      {
        v17 = *v11++;
      }

      while (v11 != v12);
      v11 = *a1;
    }

    *a1 = v13;
    a1[1] = v5;
    a1[2] = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  a1[1] = v5;
}

void md::LabelNavEtaLabeler::handleRouteContextStateChange(id *this)
{
  md::LabelNavEtaLabeler::clearEtaFeatures(this);
  [this[3] resetNotificationsForObserverType:2];
  md::LabelNavEtaLabeler::prepareAnnotatableSectionsRoutes(this);
  v2 = this[3];

  md::LabelNavEtaLabeler::recreateRouteCollider(this, v2);
}

void md::LabelNavEtaLabeler::calculatePositioningFrame(float *a1, uint64_t a2, uint64_t a3, void *a4, PolylineCoordinate a5, PolylineCoordinate a6)
{
  v11 = a4;
  v12 = *(a3 + 24);
  v25 = v11;
  v13 = a5;
  v14 = md::LabelNavEtaLabeler::screenPositionOfRouteCoordinate(a2, (v12 + 864), v11, v13);
  v16 = v15;
  v26 = __PAIR64__(LODWORD(v15), LODWORD(v14));
  v17 = a6;
  v18 = md::LabelNavEtaLabeler::screenPositionOfRouteCoordinate(a2, (v12 + 864), v25, v17);
  *a1 = (v14 + v18) * 0.5;
  a1[1] = (v19 + v16) * 0.5;
  if (v26 == __PAIR64__(LODWORD(v19), LODWORD(v18)))
  {
    v24 = 0.0;
    v23 = 1.0;
  }

  else
  {
    v20 = v18 - v14;
    v21 = v19 - v16;
    v22 = 1.0 / sqrtf((v20 * v20) + (v21 * v21));
    v23 = v22 * v20;
    v24 = v22 * v21;
  }

  a1[2] = v23;
  a1[3] = v24;
  a1[4] = -v24;
  a1[5] = v23;
}

float md::LabelNavEtaLabeler::scoreEtaLabelPosition(uint64_t a1, void *a2, float a3, float *a4)
{
  v30[0] = -a3;
  v30[1] = -a3;
  v30[2] = a3;
  v30[3] = a3;
  v6 = gm::Box<float,2>::operator+(v30, a4);
  *v29 = v6;
  *&v29[1] = v7;
  *&v29[2] = v8;
  *&v29[3] = v9;
  v10 = a2[19];
  v11 = v10 > 4;
  v12 = (1 << v10) & 0x19;
  v13 = v11 || v12 == 0;
  if (v13)
  {
    return 3.4028e38;
  }

  v14 = *(a1 + 456);
  v15 = (a1 + 464);
  if (v14 == (a1 + 464))
  {
    return 3.4028e38;
  }

  v16 = COERCE_UNSIGNED_INT(v6 + ((v8 - v6) * 0.5)) | (COERCE_UNSIGNED_INT(v7 + ((v9 - v7) * 0.5)) << 32);
  v17 = 3.4028e38;
  do
  {
    v19 = v14[5];
    v18 = v14[6];
    while (v19 != v18)
    {
      if (v19 + 6 != a2)
      {
        v20 = v19[25];
        v21 = v20 > 4 || ((1 << v20) & 0x19) == 0;
        if (!v21 && v20 == a2[19])
        {
          v31 = 2139095039;
          v23 = v19[12];
          v22 = v19[13];
          if (v23 == v22)
          {
            v25 = 3.4028e38;
          }

          else
          {
            do
            {
              v24 = *v23;
              v23 += 2;
              md::PolylineCollider::enumerateSegmentsIntersectingBounds<md::LabelNavEtaLabeler::routeNearestDistSquaredToRectCenter(md::RouteLabelState const&,gm::Box<float,2> const&)::$_0>(v24, 0, v29, &v31, v16);
            }

            while (v23 != v22);
            v25 = *&v31;
          }

          v17 = fminf(v25, v17);
        }
      }

      v19 += 48;
    }

    v26 = v14[1];
    if (v26)
    {
      do
      {
        v27 = v26;
        v26 = *v26;
      }

      while (v26);
    }

    else
    {
      do
      {
        v27 = v14[2];
        v13 = *v27 == v14;
        v14 = v27;
      }

      while (!v13);
    }

    v14 = v27;
  }

  while (v27 != v15);
  return v17;
}

void md::LabelNavEtaLabeler::scoreEtaLabelRect(uint64_t a1, void *a2, uint64_t a3, float32x2_t *a4, uint64_t a5)
{
  v128 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  v5 = a2[57];
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v73 = a2 + 58;
  v75 = a1;
  if (v5 != a2 + 58)
  {
    do
    {
      v10 = v5[5];
      v9 = v5[6];
      v74 = v5;
      v76 = v9;
      while (v10 != v9)
      {
        v80 = v10 + 48;
        v11 = *(v10 + 200);
        v12 = v11 > 4;
        v13 = (1 << v11) & 0x19;
        v14 = v12 || v13 == 0;
        if (!v14)
        {
          v81 = 0.0;
          v15 = *(v10 + 96);
          v79 = *(v10 + 104);
          if (v15 == v79)
          {
            v28 = 0.0;
          }

          else
          {
            do
            {
              v16 = *v15;
              v83 = &v81;
              std::unordered_map<md::RoadSignOrientation,gm::Box<float,2>>::unordered_map(v84, v80);
              v85 = *(v10 + 88);
              v87 = 0;
              v88 = 0;
              v86 = 0;
              v89 = *(v10 + 120);
              std::vector<std::shared_ptr<md::PolylineCollider>,geo::allocator_adapter<std::shared_ptr<md::PolylineCollider>,mdm::zone_mallocator>>::__init_with_size[abi:nn200100]<std::shared_ptr<md::PolylineCollider>*,std::shared_ptr<md::PolylineCollider>*>(&v86, *(v10 + 96), *(v10 + 104), (*(v10 + 104) - *(v10 + 96)) >> 4);
              v17 = *(v10 + 160);
              v91 = *(v10 + 144);
              v92 = v17;
              v18 = *(v10 + 192);
              v93 = *(v10 + 176);
              v94 = v18;
              v90 = *(v10 + 128);
              v20 = *(v10 + 224);
              v19 = *(v10 + 240);
              v22 = *(v10 + 256);
              v21 = *(v10 + 272);
              v24 = *(v10 + 288);
              v23 = *(v10 + 304);
              v25 = *(v10 + 336);
              v102 = *(v10 + 320);
              v103 = v25;
              v99 = v21;
              v100 = v24;
              v101 = v23;
              v97 = v19;
              v98 = v22;
              v95 = *(v10 + 208);
              v96 = v20;
              v107 = *(v10 + 376);
              v26 = *(v10 + 352);
              v27 = *(v10 + 360);
              v104 = 0;
              v105 = 0;
              v106 = 0;
              std::vector<md::PolylineSampleDebug,geo::allocator_adapter<md::PolylineSampleDebug,mdm::zone_mallocator>>::__init_with_size[abi:nn200100]<md::PolylineSampleDebug*,md::PolylineSampleDebug*>(&v104, v26, v27, 0x8E38E38E38E38E39 * ((v27 - v26) >> 3));
              v108 = v83;
              std::unordered_map<md::RoadSignOrientation,gm::Box<float,2>>::unordered_map(&v109, v84);
              v111 = v85;
              memset(v112, 0, 24);
              v112[24] = v89;
              std::vector<std::shared_ptr<md::PolylineCollider>,geo::allocator_adapter<std::shared_ptr<md::PolylineCollider>,mdm::zone_mallocator>>::__init_with_size[abi:nn200100]<std::shared_ptr<md::PolylineCollider>*,std::shared_ptr<md::PolylineCollider>*>(v112, v86, v87, (v87 - v86) >> 4);
              v114 = v91;
              v115 = v92;
              v116 = v93;
              v117 = v94;
              v113 = v90;
              v124 = v101;
              v125 = v102;
              v126 = v103;
              v120 = v97;
              v121 = v98;
              v122 = v99;
              v123 = v100;
              v118 = v95;
              v119 = v96;
              v127[24] = v107;
              memset(v127, 0, 24);
              std::vector<md::PolylineSampleDebug,geo::allocator_adapter<md::PolylineSampleDebug,mdm::zone_mallocator>>::__init_with_size[abi:nn200100]<md::PolylineSampleDebug*,md::PolylineSampleDebug*>(v127, v104, v105, 0x8E38E38E38E38E39 * ((v105 - v104) >> 3));
              md::PolylineCollider::enumerateSegmentsIntersectingBounds<md::LabelNavEtaLabeler::routeRectOverlap(md::RouteLabelState const&,gm::Box<float,2> const&)::$_0>(v16, 0, a4, &v108);
              v82 = v127;
              std::vector<md::PolylineSampleDebug,geo::allocator_adapter<md::PolylineSampleDebug,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v82);
              v82 = v112;
              std::vector<std::shared_ptr<md::PolylineCollider>,geo::allocator_adapter<std::shared_ptr<md::PolylineCollider>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v82);
              std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v109);
              v108 = &v104;
              std::vector<md::PolylineSampleDebug,geo::allocator_adapter<md::PolylineSampleDebug,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v108);
              v108 = &v86;
              std::vector<std::shared_ptr<md::PolylineCollider>,geo::allocator_adapter<std::shared_ptr<md::PolylineCollider>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v108);
              std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v84);
              v15 += 2;
            }

            while (v15 != v79);
            v28 = v81;
            a1 = v75;
          }

          if (*(v10 + 196) == 1)
          {
            v29 = *(v10 + 200);
            if (v29 <= 4 && ((1 << v29) & 0x19) != 0)
            {
              v28 = v28 * 4.0;
            }
          }

          v8 = v8 + v28;
          *a1 = v8;
        }

        if (v80 != a3 && *(v10 + 136) == 1)
        {
          v30 = *(v10 + 200);
          if (v30 > 4 || ((1 << v30) & 0x19) == 0 || v30 == *(a3 + 152))
          {
            v31 = gm::Box<float,2>::intersection(v10 + 140, a4);
            v35 = 0;
            v36 = 0;
            v108 = __PAIR64__(LODWORD(v32), LODWORD(v31));
            v109 = v33;
            v110 = v34;
            v37 = &v108;
            do
            {
              v38 = *(&v109 + v36);
              v39 = *v37;
              if (v35)
              {
                break;
              }

              v35 = 1;
              v37 = &v108 + 1;
              v36 = 1;
            }

            while (v38 >= v39);
            v40 = (v34 - v32) * (v33 - v31);
            if (v38 < v39)
            {
              v40 = 0.0;
            }

            v7 = v7 + v40;
            a1 = v75;
            *(v75 + 4) = v7;
          }
        }

        v10 += 384;
        v9 = v76;
      }

      v41 = v74;
      v42 = v74[1];
      if (v42)
      {
        do
        {
          v43 = v42;
          v42 = *v42;
        }

        while (v42);
      }

      else
      {
        do
        {
          v43 = v41[2];
          v14 = *v43 == v41;
          v41 = v43;
        }

        while (!v14);
      }

      v5 = v43;
    }

    while (v43 != v73);
  }

  v45 = a2[27];
  v44 = a2[28];
  if (v45 != v44)
  {
    v6 = 0.0;
    do
    {
      v46 = gm::Box<float,2>::intersection(v45, a4);
      v50 = 0;
      v51 = 0;
      v108 = __PAIR64__(LODWORD(v47), LODWORD(v46));
      v109 = v48;
      v110 = v49;
      v52 = &v108;
      do
      {
        v53 = *(&v109 + v51);
        v54 = *v52;
        if (v50)
        {
          break;
        }

        v50 = 1;
        v52 = &v108 + 1;
        v51 = 1;
      }

      while (v53 >= v54);
      v55 = (v49 - v47) * (v48 - v46);
      if (v53 < v54)
      {
        v55 = 0.0;
      }

      v6 = v6 + (*(v45 + 16) * v55);
      v45 += 24;
    }

    while (v45 != v44);
  }

  *(v75 + 8) = v6;
  v57 = *a4;
  v56 = a4[1];
  v58 = gm::Box<float,2>::intersection(a4, a5);
  v62 = 0;
  v63 = 0;
  v108 = __PAIR64__(LODWORD(v59), LODWORD(v58));
  v64 = &v108;
  v109 = v60;
  v110 = v61;
  do
  {
    v65 = *(&v109 + v63);
    v66 = *v64;
    if (v62)
    {
      break;
    }

    v62 = 1;
    v64 = &v108 + 1;
    v63 = 1;
  }

  while (v65 >= v66);
  v67 = vsub_f32(v56, v57);
  LODWORD(v68) = vmul_lane_f32(v67, v67, 1).u32[0];
  v69 = (v61 - v59) * (v60 - v58);
  if (v65 < v66)
  {
    v69 = 0.0;
  }

  v70 = fmaxf(v68 - v69, 0.0);
  *(v75 + 12) = v70;
  if (*(a3 + 152) == 1)
  {
    *(v75 + 16) = ((v70 + v6) + (v8 + v7)) / v68;
    *(v75 + 20) = 1;
  }
}

uint64_t std::unordered_map<md::RoadSignOrientation,gm::Box<float,2>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = *(i + 16);
    v6 = *(a1 + 8);
    if (!*&v6)
    {
      goto LABEL_18;
    }

    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = *(i + 16);
      if (*&v6 <= v5)
      {
        v8 = v5 % *(a1 + 8);
      }
    }

    else
    {
      v8 = (v6.i32[0] - 1) & v5;
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

    if (*(v10 + 16) != v5)
    {
      goto LABEL_17;
    }
  }

  return a1;
}

mdm::zone_mallocator *std::vector<std::shared_ptr<md::PolylineCollider>,geo::allocator_adapter<std::shared_ptr<md::PolylineCollider>,mdm::zone_mallocator>>::__init_with_size[abi:nn200100]<std::shared_ptr<md::PolylineCollider>*,std::shared_ptr<md::PolylineCollider>*>(mdm::zone_mallocator *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v7 = result;
    v8 = mdm::zone_mallocator::instance(result);
    result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::PolylineCollider>>(v8, a4);
    *v7 = result;
    *(v7 + 1) = result;
    for (*(v7 + 2) = result + 16 * a4; a2 != a3; result = (result + 16))
    {
      v9 = a2[1];
      *result = *a2;
      *(result + 1) = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
    }

    *(v7 + 1) = result;
  }

  return result;
}

void std::vector<md::PolylineSampleDebug,geo::allocator_adapter<md::PolylineSampleDebug,mdm::zone_mallocator>>::__init_with_size[abi:nn200100]<md::PolylineSampleDebug*,md::PolylineSampleDebug*>(mdm::zone_mallocator *a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 >= 0x38E38E38E38E38FLL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v6 = mdm::zone_mallocator::instance(a1);
    v7 = pthread_rwlock_rdlock((v6 + 32));
    if (v7)
    {
      geo::read_write_lock::logFailure(v7, "read lock", v8);
    }

    v9 = malloc_type_zone_malloc(*v6, 72 * a4, 0x10A0040B8366496uLL);
    atomic_fetch_add((v6 + 24), 1u);
    geo::read_write_lock::unlock((v6 + 32));
    *a1 = v9;
    *(a1 + 1) = v9;
    *(a1 + 2) = &v9[72 * a4];
    if (a2 == a3)
    {
      v10 = v9;
      goto LABEL_29;
    }

    v10 = v9;
    while (1)
    {
      v11 = *a2;
      *(v10 + 12) = *(a2 + 12);
      *v10 = v11;
      *(v10 + 2) = 0u;
      *(v10 + 3) = 0u;
      *(v10 + 16) = *(a2 + 16);
      std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>((v10 + 32), *(a2 + 5));
      v12 = *(a2 + 6);
      if (!v12)
      {
        goto LABEL_26;
      }

      do
      {
        v13 = *(v12 + 16);
        v14 = *(v10 + 40);
        if (!*&v14)
        {
          goto LABEL_24;
        }

        v15 = vcnt_s8(v14);
        v15.i16[0] = vaddlv_u8(v15);
        if (v15.u32[0] > 1uLL)
        {
          v16 = *(v12 + 16);
          if (*&v14 <= v13)
          {
            v16 = v13 % *(v10 + 5);
          }
        }

        else
        {
          v16 = (v14.i32[0] - 1) & v13;
        }

        v17 = *(*(v10 + 4) + 8 * v16);
        if (!v17 || (v18 = *v17) == 0)
        {
LABEL_24:
          operator new();
        }

        while (1)
        {
          v19 = v18[1];
          if (v19 == v13)
          {
            break;
          }

          if (v15.u32[0] > 1uLL)
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

          if (v19 != v16)
          {
            goto LABEL_24;
          }

LABEL_23:
          v18 = *v18;
          if (!v18)
          {
            goto LABEL_24;
          }
        }

        if (*(v18 + 16) != v13)
        {
          goto LABEL_23;
        }

        v12 = *v12;
      }

      while (v12);
LABEL_26:
      a2 = (a2 + 72);
      v10 += 72;
      if (a2 == a3)
      {
LABEL_29:
        *(a1 + 1) = v10;
        return;
      }
    }
  }
}

uint64_t md::PolylineCollider::enumerateSegmentsIntersectingBounds<md::LabelNavEtaLabeler::routeRectOverlap(md::RouteLabelState const&,gm::Box<float,2> const&)::$_0>(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  v73 = *MEMORY[0x1E69E9840];
  v7 = (*result + 32 * a2);
  if (*(v7 + 2) == 1)
  {
    v9 = 0;
    v10 = v7 + 2;
    v11 = v7 + 6;
    v12 = 1;
    while (*&v11[2 * v9] > *(a3 + 4 * v9) && *&v10[2 * v9] < *(a3 + 8 + 4 * v9))
    {
      v13 = v12;
      v12 = 0;
      v9 = 1;
      if ((v13 & 1) == 0)
      {
        v53 = *a4;
        std::unordered_map<md::RoadSignOrientation,gm::Box<float,2>>::unordered_map(v54, a4 + 8);
        v54[40] = *(a4 + 48);
        memset(v55, 0, sizeof(v55));
        v56 = *(a4 + 80);
        std::vector<std::shared_ptr<md::PolylineCollider>,geo::allocator_adapter<std::shared_ptr<md::PolylineCollider>,mdm::zone_mallocator>>::__init_with_size[abi:nn200100]<std::shared_ptr<md::PolylineCollider>*,std::shared_ptr<md::PolylineCollider>*>(v55, *(a4 + 56), *(a4 + 64), (*(a4 + 64) - *(a4 + 56)) >> 4);
        v58 = *(a4 + 104);
        v59 = *(a4 + 120);
        v60 = *(a4 + 136);
        v61 = *(a4 + 152);
        v57 = *(a4 + 88);
        v14 = *(a4 + 280);
        v68 = *(a4 + 264);
        v69 = v14;
        v70 = *(a4 + 296);
        v67 = *(a4 + 248);
        v63 = *(a4 + 184);
        v64 = *(a4 + 200);
        v65 = *(a4 + 216);
        v66 = *(a4 + 232);
        v62 = *(a4 + 168);
        v72 = *(a4 + 336);
        v15 = *(a4 + 312);
        v16 = *(a4 + 320);
        memset(v71, 0, sizeof(v71));
        std::vector<md::PolylineSampleDebug,geo::allocator_adapter<md::PolylineSampleDebug,mdm::zone_mallocator>>::__init_with_size[abi:nn200100]<md::PolylineSampleDebug*,md::PolylineSampleDebug*>(v71, v15, v16, 0x8E38E38E38E38E39 * ((v16 - v15) >> 3));
        md::PolylineCollider::enumerateSegmentsIntersectingBounds<md::LabelNavEtaLabeler::routeRectOverlap(md::RouteLabelState const&,gm::Box<float,2> const&)::$_0>(v6, (2 * a2) | 1, a3, &v53);
        v31 = v71;
        std::vector<md::PolylineSampleDebug,geo::allocator_adapter<md::PolylineSampleDebug,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v31);
        v31 = v55;
        std::vector<std::shared_ptr<md::PolylineCollider>,geo::allocator_adapter<std::shared_ptr<md::PolylineCollider>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v31);
        std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v54);
        v33 = *a4;
        std::unordered_map<md::RoadSignOrientation,gm::Box<float,2>>::unordered_map(v34, a4 + 8);
        v34[40] = *(a4 + 48);
        memset(v35, 0, sizeof(v35));
        v36 = *(a4 + 80);
        std::vector<std::shared_ptr<md::PolylineCollider>,geo::allocator_adapter<std::shared_ptr<md::PolylineCollider>,mdm::zone_mallocator>>::__init_with_size[abi:nn200100]<std::shared_ptr<md::PolylineCollider>*,std::shared_ptr<md::PolylineCollider>*>(v35, *(a4 + 56), *(a4 + 64), (*(a4 + 64) - *(a4 + 56)) >> 4);
        v38 = *(a4 + 104);
        v39 = *(a4 + 120);
        v40 = *(a4 + 136);
        v41 = *(a4 + 152);
        v37 = *(a4 + 88);
        v17 = *(a4 + 280);
        v48 = *(a4 + 264);
        v49 = v17;
        v50 = *(a4 + 296);
        v18 = *(a4 + 232);
        v47 = *(a4 + 248);
        v19 = *(a4 + 168);
        v43 = *(a4 + 184);
        v20 = *(a4 + 216);
        v44 = *(a4 + 200);
        v45 = v20;
        v46 = v18;
        v42 = v19;
        memset(v51, 0, sizeof(v51));
        v21 = *(a4 + 312);
        v22 = *(a4 + 320);
        v52 = *(a4 + 336);
        std::vector<md::PolylineSampleDebug,geo::allocator_adapter<md::PolylineSampleDebug,mdm::zone_mallocator>>::__init_with_size[abi:nn200100]<md::PolylineSampleDebug*,md::PolylineSampleDebug*>(v51, v21, v22, 0x8E38E38E38E38E39 * ((v22 - v21) >> 3));
        md::PolylineCollider::enumerateSegmentsIntersectingBounds<md::LabelNavEtaLabeler::routeRectOverlap(md::RouteLabelState const&,gm::Box<float,2> const&)::$_0>(v6, 2 * a2 + 2, a3, &v33);
        v31 = v51;
        std::vector<md::PolylineSampleDebug,geo::allocator_adapter<md::PolylineSampleDebug,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v31);
        v31 = v35;
        std::vector<std::shared_ptr<md::PolylineCollider>,geo::allocator_adapter<std::shared_ptr<md::PolylineCollider>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v31);
        return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v34);
      }
    }
  }

  else
  {
    v23 = *v7;
    if (*v7)
    {
      v24 = *(v7 + 3);
      v25 = *(result + 24);
      do
      {
        v26 = *v24++;
        v27 = (v25 + 8 * v26);
        v28 = vsub_f32(v27[1], *v27);
        v31 = *v27;
        v32 = v28;
        v30 = 0;
        result = gm::Ray<float,2>::segmentIntersectsBox(&v31, a3, &v30 + 1, &v30);
        if (result)
        {
          v29 = vmul_n_f32(v32, *&v30 - *(&v30 + 1));
          **a4 = **a4 + (sqrtf(vaddv_f32(vmul_f32(v29, v29))) * *(a4 + 92));
        }

        --v23;
      }

      while (v23);
    }
  }

  return result;
}

void sub_1B2D3E718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::vector<md::PolylineSampleDebug,geo::allocator_adapter<md::PolylineSampleDebug,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  std::vector<std::shared_ptr<md::PolylineCollider>,geo::allocator_adapter<std::shared_ptr<md::PolylineCollider>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v5);
  _Unwind_Resume(a1);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::PolylineCollider>>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 16 * a2, 0x20040A4A59CD2uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void *md::PolylineCollider::enumerateSegmentsIntersectingBounds<md::LabelNavEtaLabeler::routeNearestDistSquaredToRectCenter(md::RouteLabelState const&,gm::Box<float,2> const&)::$_0>(void *result, uint64_t a2, uint64_t a3, float *a4, uint64_t a5)
{
  v8 = result;
  v9 = (*result + 32 * a2);
  if (*(v9 + 2) == 1)
  {
LABEL_2:
    v10 = 0;
    v11 = v9 + 2;
    v12 = v9 + 6;
    v13 = 1;
    while (*&v12[2 * v10] > *(a3 + 4 * v10) && *&v11[2 * v10] < *(a3 + 8 + 4 * v10))
    {
      v14 = v13;
      v13 = 0;
      v10 = 1;
      if ((v14 & 1) == 0)
      {
        v15 = 2 * a2;
        result = md::PolylineCollider::enumerateSegmentsIntersectingBounds<md::LabelNavEtaLabeler::routeNearestDistSquaredToRectCenter(md::RouteLabelState const&,gm::Box<float,2> const&)::$_0>(v8, (2 * a2) | 1u, a3, a4, a5);
        a2 = (v15 + 2);
        v9 = (*v8 + 32 * a2);
        if (*(v9 + 2) == 1)
        {
          goto LABEL_2;
        }

        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v16 = *v9;
    if (*v9)
    {
      v17 = a5;
      v18 = v8[3];
      v19 = *(v9 + 3);
      do
      {
        v20 = *v19++;
        v21 = (v18 + 8 * v20);
        v22 = vsub_f32(v21[1], *v21);
        v30 = *v21;
        v31 = v22;
        v29 = 0;
        result = gm::Ray<float,2>::segmentIntersectsBox(&v30, a3, &v29 + 1, &v29);
        if (result)
        {
          v23 = vmla_n_f32(v30, v31, *(&v29 + 1));
          v24 = vsub_f32(vmla_n_f32(v30, v31, *&v29), v23);
          v25 = vmul_f32(v24, v24);
          v26 = 0.0;
          if (vaddv_f32(v25) > 1.0e-15)
          {
            v27 = vmul_f32(vsub_f32(v17, v23), v24);
            v26 = fminf(fmaxf(vdiv_f32(vadd_f32(vdup_lane_s32(v27, 1), v27), vadd_f32(vdup_lane_s32(v25, 1), v25)).f32[0], 0.0), 1.0);
          }

          v28 = vsub_f32(v17, vmla_n_f32(v23, v24, v26));
          *a4 = fminf(*a4, vaddv_f32(vmul_f32(v28, v28)));
        }

        --v16;
      }

      while (v16);
    }
  }

  return result;
}

float md::LabelNavEtaLabeler::screenPositionOfRouteCoordinate(uint64_t a1, double *a2, void *a3, PolylineCoordinate a4)
{
  v12 = a4;
  v6 = a3;
  v11[0] = md::RouteSimplifier::worldPointForPolylineCoordinate(*(a1 + 48), v6, &v12);
  v11[1] = v7;
  v11[2] = v8;
  v9 = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(a2, v11);

  return v9;
}

void md::LabelNavEtaLabeler::updateEtaBoundsInRouteState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v13 = a4;
  *(a2 + 88) = 0;
  if (!md::LabelLayoutContext::isDistanceClipped(a1, a3))
  {
    md::LabelLayoutContext::projectPointToPixel(a1, a3, &v12);
    v14 = &v13;
    v8 = std::__hash_table<std::__hash_value_type<md::RoadSignOrientation,gm::Box<float,2>>,std::__unordered_map_hasher<md::RoadSignOrientation,std::__hash_value_type<md::RoadSignOrientation,gm::Box<float,2>>,std::hash<md::RoadSignOrientation>,std::equal_to<md::RoadSignOrientation>,true>,std::__unordered_map_equal<md::RoadSignOrientation,std::__hash_value_type<md::RoadSignOrientation,gm::Box<float,2>>,std::equal_to<md::RoadSignOrientation>,std::hash<md::RoadSignOrientation>,true>,std::allocator<std::__hash_value_type<md::RoadSignOrientation,gm::Box<float,2>>>>::__emplace_unique_key_args<md::RoadSignOrientation,std::piecewise_construct_t const&,std::tuple<md::RoadSignOrientation const&>,std::tuple<>>(a2, v4, &v14);
    *(a2 + 92) = gm::Box<float,2>::operator+(v8 + 5, &v12);
    *(a2 + 96) = v9;
    *(a2 + 100) = v10;
    *(a2 + 104) = v11;
    *(a2 + 88) = 1;
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<md::RoadSignOrientation,gm::Box<float,2>>,std::__unordered_map_hasher<md::RoadSignOrientation,std::__hash_value_type<md::RoadSignOrientation,gm::Box<float,2>>,std::hash<md::RoadSignOrientation>,std::equal_to<md::RoadSignOrientation>,true>,std::__unordered_map_equal<md::RoadSignOrientation,std::__hash_value_type<md::RoadSignOrientation,gm::Box<float,2>>,std::equal_to<md::RoadSignOrientation>,std::hash<md::RoadSignOrientation>,true>,std::allocator<std::__hash_value_type<md::RoadSignOrientation,gm::Box<float,2>>>>::__emplace_unique_key_args<md::RoadSignOrientation,std::piecewise_construct_t const&,std::tuple<md::RoadSignOrientation const&>,std::tuple<>>(void *a1, unsigned __int8 a2, _BYTE **a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % a1[1];
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
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
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 16) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void md::LabelNavEtaLabeler::describeDebugState(uint64_t a1, void *a2, int a3)
{
  v4 = *(a1 + 488);
  v126 = (a1 + 496);
  if (v4 != (a1 + 496))
  {
    do
    {
      v5 = *(a1 + 24);
      v6 = [v5 routeInfo];
      v7 = [v6 route];
      v133 = v4[4];

      v8 = v4[5];
      v127 = v4;
      v129 = v4[6];
      v131 = v7;
      if (v8 != v129)
      {
        do
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "AnnotationRequest: ", 19);
          v9 = md::RouteRangeAnnotationRequest::etaType(*(v8 + 8));
          v10 = MEMORY[0x1B8C61CA0](a2, v9);
          v11 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, " selected:", 10);
          MEMORY[0x1B8C61C50](v11, v7 == v133);
          v12 = [*(v8 + 8) etaDescription];
          v13 = [v12 etaText];

          if (v13)
          {
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, " eta:", 5);
            v14 = [*(v8 + 8) etaDescription];
            v15 = [v14 etaText];
            v16 = [v15 UTF8String];
            v17 = strlen(v16);
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v16, v17);
          }

          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\n", 1);
          v18 = *(v8 + 16);
          v135 = v8;
          v138 = (v8 + 24);
          if (v18 != (v8 + 24))
          {
            do
            {
              v19 = v18[5];
              v20 = v18[6];
              while (v19 != v20)
              {
                std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "  ", 2);
                v21 = GEOPolylineCoordinateAsFullString();
                v22 = [v21 UTF8String];
                v23 = strlen(v22);
                std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v22, v23);
                std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, " - ", 3);
                v24 = GEOPolylineCoordinateAsFullString();
                v25 = [v24 UTF8String];
                v26 = strlen(v25);
                std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v25, v26);
                std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\n", 1);

                v19 += 16;
              }

              v27 = v18[1];
              if (v27)
              {
                do
                {
                  v28 = v27;
                  v27 = *v27;
                }

                while (v27);
              }

              else
              {
                do
                {
                  v28 = v18[2];
                  v29 = *v28 == v18;
                  v18 = v28;
                }

                while (!v29);
              }

              v18 = v28;
            }

            while (v28 != v138);
          }

          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\n", 1);
          v8 = v135 + 48;
          v7 = v131;
        }

        while (v135 + 48 != v129);
      }

      v30 = v127;
      v31 = v127[1];
      if (v31)
      {
        do
        {
          v32 = v31;
          v31 = *v31;
        }

        while (v31);
      }

      else
      {
        do
        {
          v32 = v30[2];
          v29 = *v32 == v30;
          v30 = v32;
        }

        while (!v29);
      }

      v4 = v32;
    }

    while (v32 != v126);
  }

  v33 = *(a1 + 288);
  if (*(a1 + 296) != v33)
  {
    v34 = 0;
    do
    {
      v35 = *(v33 + 8 * v34);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "Route Idx ", 10);
      v36 = MEMORY[0x1B8C61CB0](a2, v34);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v36, ": ", 2);
      v37 = [v35 displayEtaDescription];
      v38 = [v37 etaText];
      v39 = [v38 UTF8String];
      v40 = strlen(v39);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v36, v39, v40);
      LOBYTE(__p) = 10;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v36, &__p, 1);

      ++v34;
      v33 = *(a1 + 288);
    }

    while (v34 < (*(a1 + 296) - v33) >> 3);
  }

  v41 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\n", 1);
  v42 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v41, "-- current placements --\n", 25);
  *(a2 + *(*a2 - 24) + 24) = 4;
  v43 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v42, "Idx", 3);
  *(a2 + *(*a2 - 24) + 24) = 10;
  v44 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v43, "Lat", 3);
  *(a2 + *(*a2 - 24) + 24) = 10;
  v45 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v44, "Long", 4);
  *(a2 + *(*a2 - 24) + 24) = 8;
  v46 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v45, "Orient", 6);
  *(a2 + *(*a2 - 24) + 24) = 8;
  v47 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v46, "Avoid", 5);
  *(a2 + *(*a2 - 24) + 24) = 8;
  v48 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v47, "Clipped", 7);
  *(a2 + *(*a2 - 24) + 24) = 8;
  v49 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v48, "Labels", 6);
  *(a2 + *(*a2 - 24) + 24) = 8;
  v50 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v49, "Route", 5);
  *(a2 + *(*a2 - 24) + 24) = 8;
  v51 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v50, "Balance", 7);
  v52 = a2 + 3;
  *(a2 + *(*a2 - 24) + 24) = 8;
  v53 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v51, "MinDist", 7);
  v134 = a2 + 2;
  *(a2 + *(*a2 - 24) + 24) = 8;
  v54 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v53, "Shr Cnt", 7);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v54, "\n", 1);
  v55 = *(a1 + 288);
  if (*(a1 + 296) != v55)
  {
    v56 = 0;
    do
    {
      v57 = *(v55 + 8 * v56);
      v58 = [v57 routeInfo];
      *(v52 + *(*a2 - 24)) = 4;
      MEMORY[0x1B8C61CB0](a2, v56);
      if (v58)
      {
        v59 = md::LabelNavEtaLabeler::routeLabelStatesForRouteInfo(a1, v58);
        if (!v59 || (v60 = *v59, *v59 == *(v59 + 1)))
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "no route label state\n", 21);
        }

        else
        {
          v61 = [(VKRouteInfo *)v58 route];
          [v61 pointWithAltitudeCorrectionAtRouteCoordinate:{objc_msgSend(v57, "routeOffset")}];
          v63 = v62;
          v65 = v64;

          if (*(v60 + 156) == 1)
          {
            v66 = *a2;
            *(v52 + *(*a2 - 24)) = 10;
            *(a2 + *(v66 - 24) + 8) = *(a2 + *(v66 - 24) + 8) & 0xFFFFFEFB | 4;
            *(v134 + *(v66 - 24)) = 4;
            v67 = MEMORY[0x1B8C61C60](a2, v63);
            *(v67 + *(*v67 - 24) + 24) = 10;
            v68 = MEMORY[0x1B8C61C60](v65);
            *(v68 + *(*v68 - 24) + 24) = 8;
            v69 = [v57 orientation];
            v70 = "";
            if (v69 <= 0xD)
            {
              v70 = off_1E7B328A8[v69];
            }

            std::string::basic_string[abi:nn200100]<0>(&__p, v70);
            if ((v142 & 0x80u) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            if ((v142 & 0x80u) == 0)
            {
              v72 = v142;
            }

            else
            {
              v72 = v141;
            }

            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v68, p_p, v72);
            if (v142 < 0)
            {
              operator delete(__p);
            }

            *(v52 + *(*a2 - 24)) = 8;
            v73 = MEMORY[0x1B8C61C90](a2, sqrtf(*(v60 + 176)));
            *(v73 + *(*v73 - 24) + 24) = 8;
            v74 = MEMORY[0x1B8C61C90]();
            *(v74 + *(*v74 - 24) + 24) = 8;
            v75 = MEMORY[0x1B8C61C90]();
            *(v75 + *(*v75 - 24) + 24) = 8;
            v76 = MEMORY[0x1B8C61C90]();
            *(v76 + *(*v76 - 24) + 24) = 8;
            formatBalancingCost(a2, *(v60 + 164));
            *(v52 + *(*a2 - 24)) = 8;
            formatNearestDist(a2, *(v60 + 160));
            *(v52 + *(*a2 - 24)) = 8;
            MEMORY[0x1B8C61C90](a2, *(v60 + 192));
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\n", 1);
          }
        }
      }

      else
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "no route info\n", 14);
      }

      ++v56;
      v55 = *(a1 + 288);
    }

    while (v56 < (*(a1 + 296) - v55) >> 3);
  }

  v139 = a2 + 3;
  *(a2 + *(*a2 - 24) + 24) = 0;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\n-- last search results --\n", 27);
  *(a2 + *(*a2 - 24) + 24) = 12;
  v77 = CACurrentMediaTime();
  v78 = *(a1 + 288);
  if (*(a1 + 296) != v78)
  {
    v79 = v77;
    v80 = 0;
    v132 = a2 + 1;
    do
    {
      v130 = *(v78 + 8 * v80);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\nRoute ", 7);
      v81 = MEMORY[0x1B8C61CB0](a2, v80);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v81, ": ", 2);
      v82 = [v130 routeInfo];
      v128 = v80;
      if (v82)
      {
        v83 = md::LabelNavEtaLabeler::routeLabelStatesForRouteInfo(a1, v82);
        v136 = *v83;
        if (*(*v83 + 208) == 0.0)
        {
          v86 = a2;
          v87 = "no last search\n";
          v88 = 15;
        }

        else
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "last search was ", 16);
          v84 = MEMORY[0x1B8C61C60](a2, v79 - *(v136 + 208));
          v85 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v84, " seconds ago. did find = ", 25);
          v86 = MEMORY[0x1B8C61C50](v85, *(v136 + 216));
          v87 = "\n";
          v88 = 1;
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v86, v87, v88);
        if (a3)
        {
          v89 = *a2;
          *(v132 + *(*a2 - 24)) &= 0xFFFFFEFB;
          *(v134 + *(v89 - 24)) = 10;
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "Screen Projection Matrix :\n", 27);
          v90 = 0;
          v91 = v136 + 224;
          do
          {
            for (i = 0; ; i += 32)
            {
              MEMORY[0x1B8C61C60](a2, *(v91 + i));
              if (i == 96)
              {
                break;
              }

              std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, ", ", 2);
            }

            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\n", 1);
            ++v90;
            v91 += 8;
          }

          while (v90 != 4);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\n", 1);
          v93 = *a2;
          *(v132 + *(*a2 - 24)) = *(v132 + *(*a2 - 24)) & 0xFFFFFEFB | 4;
          *(v134 + *(v93 - 24)) = 4;
          if (*(v136 + 360) != *(v136 + 352))
          {
            *(v139 + *(v93 - 24)) = 10;
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "Lat", 3);
            *(v139 + *(*a2 - 24)) = 10;
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "Long", 4);
            *(v139 + *(*a2 - 24)) = 8;
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "Orient", 6);
            *(v139 + *(*a2 - 24)) = 8;
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "Avoid", 5);
            *(v139 + *(*a2 - 24)) = 8;
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "Clipped", 7);
            *(v139 + *(*a2 - 24)) = 8;
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "Labels", 6);
            *(v139 + *(*a2 - 24)) = 8;
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "Route", 5);
            *(v139 + *(*a2 - 24)) = 8;
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "Balance", 7);
            *(v139 + *(*a2 - 24)) = 8;
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "MinDist", 7);
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\n", 1);
            for (j = *(v136 + 64); j; j = *j)
            {
              v96 = *(v136 + 352);
              v95 = *(v136 + 360);
              while (v96 != v95)
              {
                v97 = [(VKRouteInfo *)v82 route];
                v98 = *v96;
                v99 = *(v96 + 8);
                ClosestCoordinateBetweenVertices = md::LabelNavEtaLabeler::findClosestCoordinateBetweenVertices(a1, (v136 + 224), v97, v98, v99, *(v96 + 16));

                v101 = [(VKRouteInfo *)v82 route];
                [v101 pointWithAltitudeCorrectionAtRouteCoordinate:ClosestCoordinateBetweenVertices];
                v103 = v102;
                v105 = v104;

                v106 = *(v96 + 40);
                if (v106)
                {
                  v107 = *(j + 16);
                  v108 = vcnt_s8(v106);
                  v108.i16[0] = vaddlv_u8(v108);
                  if (v108.u32[0] > 1uLL)
                  {
                    v109 = *(j + 16);
                    if (*&v106 <= v107)
                    {
                      v109 = v107 % *(v96 + 40);
                    }
                  }

                  else
                  {
                    v109 = (v106.i32[0] - 1) & v107;
                  }

                  v110 = *(*(v96 + 32) + 8 * v109);
                  if (v110)
                  {
                    for (k = *v110; k; k = *k)
                    {
                      v112 = *(k + 1);
                      if (v112 == v107)
                      {
                        if (*(k + 16) == v107)
                        {
                          v113 = *a2;
                          *(v139 + *(*a2 - 24)) = 10;
                          *(v132 + *(v113 - 24)) = *(v132 + *(v113 - 24)) & 0xFFFFFEFB | 4;
                          *(v134 + *(v113 - 24)) = 4;
                          v114 = MEMORY[0x1B8C61C60](a2, v103);
                          *(v114 + *(*v114 - 24) + 24) = 10;
                          v115 = MEMORY[0x1B8C61C60](v105);
                          v116 = v115;
                          *(v115 + *(*v115 - 24) + 24) = 8;
                          v117 = *(j + 16);
                          v118 = "";
                          if (v117 <= 0xD)
                          {
                            v118 = off_1E7B328A8[v117];
                          }

                          std::string::basic_string[abi:nn200100]<0>(&__p, v118);
                          if ((v142 & 0x80u) == 0)
                          {
                            v119 = &__p;
                          }

                          else
                          {
                            v119 = __p;
                          }

                          if ((v142 & 0x80u) == 0)
                          {
                            v120 = v142;
                          }

                          else
                          {
                            v120 = v141;
                          }

                          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v116, v119, v120);
                          if (v142 < 0)
                          {
                            operator delete(__p);
                          }

                          *(v139 + *(*a2 - 24)) = 8;
                          v121 = MEMORY[0x1B8C61C90](a2, sqrtf(k[7]));
                          *(v121 + *(*v121 - 24) + 24) = 8;
                          v122 = MEMORY[0x1B8C61C90]();
                          *(v122 + *(*v122 - 24) + 24) = 8;
                          v123 = MEMORY[0x1B8C61C90]();
                          *(v123 + *(*v123 - 24) + 24) = 8;
                          v124 = MEMORY[0x1B8C61C90]();
                          *(v124 + *(*v124 - 24) + 24) = 8;
                          break;
                        }
                      }

                      else
                      {
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

                        if (v112 != v109)
                        {
                          break;
                        }
                      }
                    }
                  }
                }

                formatBalancingCost(a2, *(v96 + 24));
                *(v139 + *(*a2 - 24)) = 8;
                formatNearestDist(a2, *(v96 + 20));
                std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\n", 1);
                v96 += 72;
              }
            }
          }
        }
      }

      else
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "no route info\n", 14);
      }

      v80 = v128 + 1;
      v78 = *(a1 + 288);
    }

    while (v128 + 1 < ((*(a1 + 296) - v78) >> 3));
  }
}

char *md::LabelNavEtaLabeler::routeLabelStatesForRouteInfo(md::LabelNavEtaLabeler *this, VKRouteInfo *a2)
{
  v3 = a2;
  v4 = [(VKRouteInfo *)v3 route];
  v5 = *(this + 58);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = this + 464;
  v7 = this + 464;
  do
  {
    v8 = *(v5 + 4);
    v9 = v8 >= v4;
    v10 = v8 < v4;
    if (v9)
    {
      v7 = v5;
    }

    v5 = *&v5[8 * v10];
  }

  while (v5);
  if (v7 != v6 && v4 >= *(v7 + 4))
  {

    v11 = v7 + 40;
  }

  else
  {
LABEL_9:

    v11 = 0;
  }

  return v11;
}

void *formatBalancingCost(void *a1, float a2)
{
  if (a2 != 3.4028e38)
  {
    JUMPOUT(0x1B8C61C80);
  }

  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, "Max", 3);
}

void *formatNearestDist(void *a1, float a2)
{
  if (a2 != 3.4028e38)
  {
    JUMPOUT(0x1B8C61C90);
  }

  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, "Max", 3);
}

unint64_t md::LabelNavEtaLabeler::findClosestCoordinateBetweenVertices(uint64_t a1, double *a2, void *a3, PolylineCoordinate a4, PolylineCoordinate a5, float a6)
{
  v8 = a4;
  v67 = a5;
  v68 = a4;
  v11 = a3;
  v12 = v11;
  if (a6 == 0.0)
  {
    v13 = HIDWORD(*&v8);
    index = v8.index;
  }

  else
  {
    v16 = v11;
    v70[0] = md::RouteSimplifier::worldPointForPolylineCoordinate(*(a1 + 48), v16, &v68);
    v70[1] = v17;
    v70[2] = v18;
    v19 = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(a2, v70);
    v21 = v20;
    v69[0] = md::RouteSimplifier::worldPointForPolylineCoordinate(*(a1 + 48), v16, &v67);
    v69[1] = v22;
    v69[2] = v23;
    v24 = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(a2, v69);
    v26 = v25;

    v27 = v8;
    v35.f32[0] = md::LabelNavEtaLabeler::screenPositionOfRouteCoordinate(a1, a2, v16, v27);
    v28 = v21;
    v29 = v19;
    v30 = v24;
    v31 = v26;
    v32.f32[0] = v29 + ((v30 - v29) * a6);
    v32.f32[1] = v28 + ((v31 - v28) * a6);
    v64 = v32;
    v13 = 3212836864;
    v33 = v8.index + 1;
    v35.i32[1] = v34;
    if (v8.index + 1 <= a5.index)
    {
      index = 0;
      v36 = 3.4028e38;
      v37 = v35;
      v38 = v8;
      do
      {
        v8 = v33;
        v39 = v33;
        v40.f32[0] = md::LabelNavEtaLabeler::screenPositionOfRouteCoordinate(a1, a2, v16, v39);
        v40.i32[1] = v41;
        v65 = v40;
        v42 = vsub_f32(v40, v37);
        v43 = vmul_f32(v42, v42);
        v44 = 0.0;
        if (vaddv_f32(v43) > 1.0e-15)
        {
          v45 = vadd_f32(vdup_lane_s32(v43, 1), v43);
          v46 = vmul_f32(vsub_f32(v64, v37), v42);
          v44 = fminf(fmaxf(vdiv_f32(vadd_f32(vdup_lane_s32(v46, 1), v46), v45).f32[0], 0.0), 1.0);
        }

        v47 = vsub_f32(v64, vmla_n_f32(v37, v42, v44));
        v48 = vaddv_f32(vmul_f32(v47, v47));
        if (v48 < v36)
        {
          v49 = v38;
          v50 = v8;
          v51 = lerpNearCoords(v49, v50, v44);
          index = v51;
          v13 = HIDWORD(v51);
          v36 = v48;
        }

        v33 = v8.index + 1;
        v35 = v65;
        v37 = v65;
        v38 = v8;
      }

      while (v8.index + 1 <= a5.index);
    }

    else
    {
      index = 0;
      v36 = 3.4028e38;
    }

    v66 = v35;
    if ((*&a5 & 0x7FFFFFFF00000000) != 0)
    {
      v52 = a5;
      v53.f32[0] = md::LabelNavEtaLabeler::screenPositionOfRouteCoordinate(a1, a2, v16, v52);
      v53.i32[1] = v54;
      v55 = vsub_f32(v53, v66);
      v56 = vmul_f32(v55, v55);
      v57 = 0.0;
      if (vaddv_f32(v56) > 1.0e-15)
      {
        v58 = vadd_f32(vdup_lane_s32(v56, 1), v56);
        v59 = vmul_f32(vsub_f32(v64, v66), v55);
        v57 = fminf(fmaxf(vdiv_f32(vadd_f32(vdup_lane_s32(v59, 1), v59), v58).f32[0], 0.0), 1.0);
      }

      v60 = vsub_f32(v64, vmla_n_f32(v66, v55, v57));
      if (vaddv_f32(vmul_f32(v60, v60)) < v36)
      {
        v61 = v8;
        v62 = a5;
        v63 = lerpNearCoords(v61, v62, v57);
        v13 = HIDWORD(v63);
        index = v63;
      }
    }
  }

  return index | (v13 << 32);
}

unint64_t lerpNearCoords(PolylineCoordinate a1, PolylineCoordinate a2, float a3)
{
  v3 = (a1.offset + a1.index) + (((a2.offset + a2.index) - (a1.offset + a1.index)) * a3);
  LODWORD(v4) = vcvtms_u32_f32(v3);
  v5 = v3 - floorf(v3);
  v6 = vcvtms_u32_f32(v5) + v4;
  v7 = v5 - floorf(v5);
  if (v5 < 1.0)
  {
    v4 = v4;
  }

  else
  {
    v5 = v7;
    v4 = v6;
  }

  return v4 | (LODWORD(v5) << 32);
}

void std::__tree<std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>>,mdm::zone_mallocator>>::erase(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v5 = a2;
    do
    {
      v4 = *(v5 + 16);
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (!v6);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  --*(a1 + 24);
  std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(*(a1 + 8), a2);
  v9 = (a2 + 40);
  std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>::__destroy_vector::operator()[abi:nn200100](&v9);

  v8 = mdm::zone_mallocator::instance(v7);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<GEOComposedRoute * {__strong},geo::linear_map<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>>,void *>>(v8, a2);
}

void md::LabelNavEtaLabeler::updateEtaFeature(md::LabelNavEtaLabeler *a1, void *a2, uint64_t a3, void *a4, unsigned int a5, int a6, int a7, double a8)
{
  v180 = *MEMORY[0x1E69E9840];
  v163 = a4;
  v10 = [(VKRouteInfo *)v163 route];
  v11 = *(a1 + 58);
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = (a1 + 464);
  do
  {
    v13 = v11[4];
    v14 = v13 >= v10;
    v15 = v13 < v10;
    if (v14)
    {
      v12 = v11;
    }

    v11 = v11[v15];
  }

  while (v11);
  if (v12 != (a1 + 464) && v10 >= v12[4])
  {

    v16 = v12 + 5;
  }

  else
  {
LABEL_9:

    v16 = 0;
  }

  v17 = md::LabelNavEtaLabeler::featuresForRoute(a1, v163);
  v161 = a1;
  if (!v17)
  {
    __p[0] = 0;
    __p[1] = 0;
    v166 = 0;
    v171 = [(VKRouteInfo *)v163 route];
    *&v176 = &v171;
    v18 = std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__emplace_unique_key_args<GEOComposedRoute * {__strong},std::piecewise_construct_t const&,std::tuple<GEOComposedRoute * {__strong}&&>,std::tuple<>>(a1 + 61, v171, &v176);

    v20 = v18[5];
    for (i = v18[6]; v20 != i; v20 += 6)
    {
      *&v178 = &unk_1F29F1180;
      *(&v178 + 1) = 0;
      v21 = geo::linear_map<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>::operator[](__p, v20);
      geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v21, &v178);
      *&v178 = &unk_1F29F1180;
    }

    v22 = [(VKRouteInfo *)v163 route];
    v23 = v22;
    v24 = *(v161 + 33);
    if (v24)
    {
      while (1)
      {
        while (1)
        {
          v25 = v24;
          v26 = v24[4];
          if (v22 >= v26)
          {
            break;
          }

          v24 = *v25;
          v27 = v25;
          if (!*v25)
          {
            goto LABEL_22;
          }
        }

        if (v26 >= v22)
        {
          break;
        }

        v24 = v25[1];
        if (!v24)
        {
          v27 = v25 + 1;
          goto LABEL_22;
        }
      }

      v31 = v25;
    }

    else
    {
      v27 = (v161 + 264);
      v25 = (v161 + 264);
LABEL_22:
      v28 = mdm::zone_mallocator::instance(v22);
      v29 = pthread_rwlock_rdlock((v28 + 32));
      if (v29)
      {
        geo::read_write_lock::logFailure(v29, "read lock", v30);
      }

      v31 = malloc_type_zone_malloc(*v28, 0x40uLL, 0x10E00408968D84CuLL);
      atomic_fetch_add((v28 + 24), 1u);
      geo::read_write_lock::unlock((v28 + 32));
      v31[4] = v23;
      v31[5] = 0;
      v31[6] = 0;
      v31[7] = 0;
      *v31 = 0;
      v31[1] = 0;
      v31[2] = v25;
      *v27 = v31;
      v32 = **(v161 + 32);
      v33 = v31;
      if (v32)
      {
        *(v161 + 32) = v32;
        v33 = *v27;
      }

      std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(*(v161 + 33), v33);
      v23 = 0;
      ++*(v161 + 35);
    }

    v34 = (v31 + 5);
    v35 = v31[5];
    if (v35)
    {
      v36 = v31[6];
      v37 = v31[5];
      if (v36 != v35)
      {
        do
        {
          v36 -= 72;
          std::allocator_traits<std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>::destroy[abi:nn200100]<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,void,0>(v36);
        }

        while (v36 != v35);
        v37 = *v34;
      }

      v31[6] = v35;
      operator delete(v37);
      *v34 = 0;
      v31[6] = 0;
      v31[7] = 0;
    }

    *(v31 + 5) = *__p;
    v31[7] = v166;
    __p[1] = 0;
    v166 = 0;
    __p[0] = 0;

    a1 = v161;
    v17 = md::LabelNavEtaLabeler::featuresForRoute(v161, v163);
    *&v178 = __p;
    std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>::__destroy_vector::operator()[abi:nn200100](&v178);
  }

  v162 = v17;
  v170 = [(VKRouteInfo *)v163 route];
  __p[0] = &v170;
  v38 = std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__emplace_unique_key_args<GEOComposedRoute * {__strong},std::piecewise_construct_t const&,std::tuple<GEOComposedRoute * {__strong}&&>,std::tuple<>>(a1 + 61, v170, __p);

  v40 = v38[5];
  v39 = v38[6];
  v41 = v162;
  if (v40 != v39)
  {
    while (1)
    {
      v42 = geo::linear_map<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>::operator[](v41, v40);
      v43 = *v16;
      if (*v16 == v16[1])
      {
        goto LABEL_137;
      }

      v44 = v42;
      while ((md::RouteRangeAnnotationRequest::operator==(v40, v43) & 1) == 0)
      {
        v43 += 384;
        if (v43 == v16[1])
        {
          goto LABEL_137;
        }
      }

      if (v43 == v16[1])
      {
        goto LABEL_137;
      }

      v46 = *(v44 + 8);
      v45 = (v44 + 8);
      v47 = v46;
      v48 = [*(v40 + 8) etaDescription];
      if (!v48)
      {
        goto LABEL_136;
      }

      v49 = [*(v40 + 8) etaDescription];
      v50 = [v49 etaText];
      v51 = v50 == 0;

      if (v51 || *(v43 + 88) != 1)
      {
        goto LABEL_136;
      }

      if (v47)
      {
        break;
      }

      __p[0] = 0xBF80000000000000;
      HIDWORD(__p[1]) = 2139095039;
      v167 = 0.0;
      v168 = 0;
      v166 = 0;
      v169 = 1;
      v69 = md::LabelNavEtaLabeler::searchForPlacementAcrossShareSections(v161, a2, a3, v43 + 48, v40, 0, __p, a6);
      *(v43 + 208) = a8;
      *(v43 + 216) = v69;
      if (v69)
      {
        v70 = [VKLabelNavRouteEta alloc];
        v71 = [(VKLabelNavRouteEta *)v70 initWithRouteInfo:v163 routeCoord:__p[0]];
        v47 = v71;
        objc_storeStrong(v45, v71);

        v72 = LOBYTE(__p[1]);
        v73 = [*(v40 + 8) etaDescription];
        v74 = *geo::linear_map<md::RouteRangeAnnotationRequest,md::WhenState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>>::operator[](v161 + 69, v40);
        geo::linear_map<md::RouteRangeAnnotationRequest,md::WhenState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>>::operator[](v161 + 69, v40);
        v154 = v154 & 0xFFFFFFFFFFFF0000 | v74;
        [VKLabelNavRouteEta createLabelWithNavContext:v47 orientation:"createLabelWithNavContext:orientation:etaDescription:selected:when:routeLegWhen:artworkCache:" etaDescription:a2 selected:v72 when:v73 routeLegWhen:a5 artworkCache:*(v161 + 18)];

        if ([(VKLabelNavRouteEta *)v47 hasLabel]&& ![(VKLabelNavRouteEta *)v47 hasAnchor])
        {
          v75 = *(v161 + 6);
          v76 = [(VKRouteInfo *)v163 route];
          *&v178 = md::RouteSimplifier::worldPointForPolylineCoordinate(v75, v76, __p);
          *(&v178 + 1) = v77;
          v179 = v78;

          md::LabelNavEtaLabeler::updateEtaBoundsInRouteState(a2[3], v43 + 48, &v178, v72);
          *(v161 + 252) = 1;
        }

        goto LABEL_114;
      }

      v47 = 0;
LABEL_136:

      v41 = v162;
LABEL_137:
      v40 += 48;
      if (v40 == v39)
      {
        goto LABEL_175;
      }
    }

    [(VKLabelNavRouteEta *)v47 setRouteInfo:v163];
    [(VKLabelNavRouteEta *)v47 setSelected:a5];
    geo::linear_map<md::RouteRangeAnnotationRequest,md::WhenState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>>::operator[](v161 + 69, v40);
    [(VKLabelNavRouteEta *)v47 setWhen:?];
    geo::linear_map<md::RouteRangeAnnotationRequest,md::WhenState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>>::operator[](v161 + 69, v40);
    [(VKLabelNavRouteEta *)v47 setRouteLegWhen:?];
    if (![(VKLabelNavRouteEta *)v47 hasLabel])
    {
      v52 = [(VKLabelNavRouteEta *)v47 orientation];
      v53 = [*(v40 + 8) etaDescription];
      v54 = *geo::linear_map<md::RouteRangeAnnotationRequest,md::WhenState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>>::operator[](v161 + 69, v40);
      geo::linear_map<md::RouteRangeAnnotationRequest,md::WhenState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>>::operator[](v161 + 69, v40);
      v155 = v155 & 0xFFFFFFFFFFFF0000 | v54;
      [VKLabelNavRouteEta createLabelWithNavContext:v47 orientation:"createLabelWithNavContext:orientation:etaDescription:selected:when:routeLegWhen:artworkCache:" etaDescription:a2 selected:v52 when:v53 routeLegWhen:a5 artworkCache:*(v161 + 18)];

      if (![(VKLabelNavRouteEta *)v47 hasLabel])
      {
        goto LABEL_136;
      }

      v55 = *(v161 + 6);
      v56 = [(VKRouteInfo *)v163 route];
      *&v178 = [(VKLabelNavRouteEta *)v47 routeOffset];
      __p[0] = COERCE_VOID_(md::RouteSimplifier::worldPointForPolylineCoordinate(v55, v56, &v178));
      __p[1] = v57;
      v166 = v58;

      md::LabelNavEtaLabeler::updateEtaBoundsInRouteState(a2[3], v43 + 48, __p, [(VKLabelNavRouteEta *)v47 orientation]);
    }

    if (![(VKLabelNavRouteEta *)v47 hasAnchor])
    {
      *(v161 + 252) = 1;
      goto LABEL_136;
    }

    v47 = v47;
    [(VKLabelNavRouteEta *)v47 worldPointForStaging];
    __p[0] = v59;
    __p[1] = v60;
    v166 = v61;
    v62 = a2[3];
    isDistanceClipped = md::LabelLayoutContext::isDistanceClipped(v62, __p);
    if (!isDistanceClipped)
    {
      md::LabelLayoutContext::projectPointToPixel(v62, __p, &v164);
    }

    *(v43 + 156) = 0;
    v64 = *(a2[1] + 176) * 12.0;
    v65 = v64 * v64;
    if (((isDistanceClipped | a7) & 1) == 0)
    {
      if (md::RouteRangeAnnotationRequest::etaType(*(v40 + 8)))
      {
        if (!*(v40 + 40))
        {
          goto LABEL_136;
        }

        v80 = *(v40 + 16);
        j = v80[5];
        if (j == v80[6])
        {
          goto LABEL_136;
        }

LABEL_69:
        v151 = *(v80 + 8);
      }

      else
      {
        v90 = [(VKLabelNavRouteEta *)v47 routeOffset];
        v80 = *(v40 + 16);
        if (v80 != (v40 + 24))
        {
          LODWORD(v79) = HIDWORD(v90);
          do
          {
            for (j = v80[5]; j != v80[6]; j += 16)
            {
              if (*j < v90 || *j == v90 && *(j + 4) <= *(&v90 + 1))
              {
                v91 = *(j + 8);
                if (v91 > v90 || v91 == v90 && *(j + 12) >= *(&v90 + 1))
                {
                  goto LABEL_69;
                }
              }
            }

            v92 = v80[1];
            if (v92)
            {
              do
              {
                v93 = v92;
                v92 = *v92;
              }

              while (v92);
            }

            else
            {
              do
              {
                v93 = v80[2];
                v94 = *v93 == v80;
                v80 = v93;
              }

              while (!v94);
            }

            v80 = v93;
          }

          while (v93 != (v40 + 24));
        }

        j = 0;
        v151 = 0;
      }

      v95 = [(VKLabelNavRouteEta *)v47 routeOffset];
      v96 = [(VKLabelNavRouteEta *)v47 orientation];
      v97 = v163;
      if (j)
      {
        v152 = v96;
        v98 = *(v161 + 5);
        v153 = v97;
        v99 = [(VKRouteInfo *)v97 route];
        v100 = *(*v98 + 24);
        v101 = v98;
        v102 = v99;
        v100(__p, v101, a3, v99, j);

        v104 = __p[0];
        if (__p[0] != __p[1])
        {
          LODWORD(v103) = HIDWORD(v95);
          while (1)
          {
            if (v104->index < v95 || v104->index == v95 && v104->offset <= *(&v95 + 1))
            {
              index = v104[1].index;
              if (index > v95 || index == v95 && v104[1].offset >= *(&v95 + 1))
              {
                break;
              }
            }

            v104 += 2;
            if (v104 == __p[1])
            {
              goto LABEL_141;
            }
          }

          if (v104 != __p[1])
          {
            v135 = [(VKRouteInfo *)v153 route];
            v136 = *v104;
            v137 = v104[1];
            md::LabelNavEtaLabeler::calculatePositioningFrame(&v176, v161, a2, v135, v136, v137);
            v178 = v176;
            v179 = v177;
          }
        }

LABEL_141:
        *(v43 + 160) = md::LabelNavEtaLabeler::scoreEtaLabelPosition(v161, (v43 + 48), *(a2[1] + 176) * 12.0, &v164);
        *(v43 + 164) = v138;
        v175 = *(a2[4] + 32);
        v139 = *(v43 + 56);
        if (v139)
        {
          v140 = vcnt_s8(v139);
          v140.i16[0] = vaddlv_u8(v140);
          if (v140.u32[0] > 1uLL)
          {
            v141 = v152;
            if (v139 <= v152)
            {
              v141 = v152 % *(v43 + 56);
            }
          }

          else
          {
            v141 = (v139 - 1) & v152;
          }

          v142 = *(*(v43 + 48) + 8 * v141);
          if (v142)
          {
            for (k = *v142; k; k = *k)
            {
              v144 = *(k + 1);
              if (v144 == v152)
              {
                if (*(k + 16) == v152)
                {
                  v172.i32[0] = gm::Box<float,2>::operator+(k + 5, &v164);
                  v172.i32[1] = v145;
                  v173 = v146;
                  v174 = v147;
                  md::LabelNavEtaLabeler::scoreEtaLabelRect(&v176, v161, v43 + 48, &v172, &v175);
                  *(v43 + 168) = v176;
                  *(v43 + 184) = v177;
                  *(v43 + 192) = v151;
                  break;
                }
              }

              else
              {
                if (v140.u32[0] > 1uLL)
                {
                  if (v144 >= v139)
                  {
                    v144 %= v139;
                  }
                }

                else
                {
                  v144 &= v139 - 1;
                }

                if (v144 != v141)
                {
                  break;
                }
              }
            }
          }
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        v66 = (v43 + 160);
        *(v43 + 156) = 1;
        v148 = *(v43 + 200);
        if (v148 == 1)
        {
          if (*(v43 + 188) == 1 && *(v43 + 184) <= 0.3)
          {
            goto LABEL_114;
          }
        }

        else
        {
          v149 = *v66 < v65 || vaddv_f32(*&vpaddq_f32(*(v43 + 168), *(v43 + 168))) >= 1.0 || *(v43 + 128) < *(v43 + 192);
          if (v148 == 3)
          {
            v150 = *(v43 + 176) >= 1.0 || v149;
            if ((v150 & 1) == 0)
            {
              goto LABEL_114;
            }
          }

          else if (!v149)
          {
            goto LABEL_114;
          }
        }

LABEL_53:
        __p[0] = 0xBF80000000000000;
        HIDWORD(__p[1]) = 2139095039;
        v167 = 0.0;
        v168 = 0;
        v166 = 0;
        v169 = 1;
        if (!v66)
        {
LABEL_59:
          v68 = 0;
LABEL_71:
          v82 = md::LabelNavEtaLabeler::searchForPlacementAcrossShareSections(v161, a2, a3, v43 + 48, v40, v66, __p, a6);
          *(v43 + 208) = a8;
          *(v43 + 216) = v82;
          if (v82)
          {
            v83 = v163;
            v47 = v47;
            v84 = *(v161 + 6);
            v85 = [(VKRouteInfo *)v83 route];
            *&v178 = md::RouteSimplifier::worldPointForPolylineCoordinate(v84, v85, __p);
            *(&v178 + 1) = v86;
            v179 = v87;

            if (isDistanceClipped)
            {
              v88 = 1;
            }

            else
            {
              md::LabelLayoutContext::projectPointToPixel(a2[3], &v178, &v176);
              v106 = vsub_f32(*&v176, v164);
              v88 = sqrtf(vaddv_f32(vmul_f32(v106, v106))) > (*(a2[1] + 176) * 5.0);
            }

            [(VKLabelNavRouteEta *)v47 worldPointForStaging];
            *&v176 = v107;
            *(&v176 + 1) = v108;
            v177 = v109;
            if (v88)
            {
              v176 = v178;
              v177 = v179;
              [(VKLabelNavRouteEta *)v47 repositionAtRouteCoord:__p[0]];
            }

            v110 = LOBYTE(__p[1]);
            [(VKLabelNavRouteEta *)v47 setOrientation:LOBYTE(__p[1])];
            md::LabelNavEtaLabeler::updateEtaBoundsInRouteState(a2[3], v43 + 48, &v176, v110);

LABEL_114:
            if ([(VKLabelNavRouteEta *)v47 hasLabelWithAnchor])
            {
              v47 = v47;
              *__p = xmmword_1B33B0710;
              v166 = 0;
              LOWORD(v168) = 0;
              [(VKLabelNavRouteEta *)v47 worldPointForStaging];
              *&v178 = v111;
              *(&v178 + 1) = v112;
              v179 = v113;
              [(VKLabelNavRouteEta *)v47 worldUnitsPerMeterAtPoint];
              v114 = a2[3];
              LOBYTE(v176) = 0;
              BYTE12(v176) = 0;
              v115 = 1;
              md::LabelLayoutContext::evaluateWorldPoint(v114, &v178, &v176, 1, 0, __p, v116);
              LODWORD(v117) = HIDWORD(__p[0]);
              if (*(__p + 1) >= 0.905)
              {
                v118 = [(VKLabelNavRouteEta *)v47 displayEtaDescription];
                v119 = [v118 routeEtaType];
                if (v119 <= 4 && ((1 << v119) & 0x19) != 0)
                {

                  v115 = 0;
                }

                else
                {

                  v115 = v167 < 1500.0;
                }
              }

              v120 = [(VKLabelNavRouteEta *)v47 label];
              v121 = *[v120 label];
              v121[313] = v115;
              if (v121[312] == 1)
              {
                v121[314] = v115;
              }

              v123 = v161;
              v125 = *(v161 + 37);
              v124 = *(v161 + 38);
              if (v125 >= v124)
              {
                v127 = *(v161 + 36);
                v128 = (v125 - v127) >> 3;
                if ((v128 + 1) >> 61)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v129 = v124 - v127;
                v130 = v129 >> 2;
                if (v129 >> 2 <= (v128 + 1))
                {
                  v130 = v128 + 1;
                }

                if (v129 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v131 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v131 = v130;
                }

                v168 = v161 + 312;
                if (v131)
                {
                  v132 = mdm::zone_mallocator::instance(v122);
                  v133 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<VKLabelNavRouteEta * {__strong}>(v132, v131);
                }

                else
                {
                  v133 = 0;
                }

                v134 = &v133[8 * v128];
                __p[0] = v133;
                __p[1] = v134;
                *&v167 = &v133[8 * v131];
                *v134 = v47;
                v166 = v134 + 8;
                v123 = v161;
                std::vector<VKTrafficFeature * {__strong},geo::allocator_adapter<VKTrafficFeature * {__strong},mdm::zone_mallocator>>::__swap_out_circular_buffer(v161 + 288, __p);
                v126 = *(v161 + 37);
                std::__split_buffer<VKLabelNavRouteEta * {__strong},geo::allocator_adapter<VKLabelNavRouteEta * {__strong},mdm::zone_mallocator> &>::~__split_buffer(__p);
              }

              else
              {
                *v125 = v47;
                v126 = v125 + 1;
              }

              *(v123 + 37) = v126;
            }

            goto LABEL_136;
          }

          if (v68)
          {
            std::__tree<std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::__map_value_compare<VKLabelNavRouteEta * {__strong},std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::less<VKLabelNavRouteEta * {__strong}>,true>,geo::allocator_adapter<std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,mdm::zone_mallocator>>::__erase_unique<VKLabelNavRouteEta * {__strong}>(v161 + 352, v47);
            v89 = *v45;
            if (*v45)
            {
              *v45 = 0;
            }

            goto LABEL_136;
          }

          if (!isDistanceClipped)
          {
            goto LABEL_114;
          }

          goto LABEL_136;
        }

        if (*v66 >= v65)
        {
          v67 = v66[3];
          if (*(v43 + 200) == 3)
          {
            if (v67 >= 1.0)
            {
              goto LABEL_70;
            }

            v67 = v66[4];
          }

          if (v67 < 1.0)
          {
            goto LABEL_59;
          }
        }

LABEL_70:
        v66 = 0;
        v68 = 1;
        goto LABEL_71;
      }
    }

    v66 = 0;
    goto LABEL_53;
  }

LABEL_175:
}

void sub_1B2D41468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::__map_value_compare<VKLabelNavRouteEta * {__strong},std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::less<VKLabelNavRouteEta * {__strong}>,true>,geo::allocator_adapter<std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,mdm::zone_mallocator>>::erase(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v5 = a2;
    do
    {
      v4 = *(v5 + 16);
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (!v6);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  --*(a1 + 24);
  std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(*(a1 + 8), a2);
  *(a2 + 40) = off_1F2A59C08;

  v8 = mdm::zone_mallocator::instance(v7);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,void *>>(v8, a2);
}

void *geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, void *a2)
{
  v3 = a2;
  *a1 = off_1F2A59C08;
  a1[1] = v3;
  return a1;
}

uint64_t std::vector<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::push_back[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    v22 = a1 + 3;
    if (v11)
    {
      v12 = mdm::zone_mallocator::instance(v4);
      v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>(v12, v11);
    }

    else
    {
      v13 = 0;
    }

    v19 = v13;
    v20 = &v13[24 * v8];
    *(&v21 + 1) = &v13[24 * v11];
    geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v20, a2);
    *&v21 = v20 + 24;
    v14 = a1[1];
    v15 = &v20[*a1 - v14];
    std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>,geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(*a1, v14, v15);
    v16 = *a1;
    *a1 = v15;
    v17 = a1[2];
    v18 = v21;
    *(a1 + 1) = v21;
    *&v21 = v16;
    *(&v21 + 1) = v17;
    v19 = v16;
    v20 = v16;
    result = std::__split_buffer<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator> &>::~__split_buffer(&v19);
    v7 = v18;
  }

  else
  {
    result = geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v4, a2);
    v7 = result + 24;
    a1[1] = result + 24;
  }

  a1[1] = v7;
  return result;
}

{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    v22 = a1 + 3;
    if (v11)
    {
      v12 = mdm::zone_mallocator::instance(v4);
      v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>(v12, v11);
    }

    else
    {
      v13 = 0;
    }

    v19 = v13;
    v20 = &v13[24 * v8];
    *(&v21 + 1) = &v13[24 * v11];
    geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v20, a2);
    *&v21 = v20 + 24;
    v14 = a1[1];
    v15 = &v20[*a1 - v14];
    std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>,geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(*a1, v14, v15);
    v16 = *a1;
    *a1 = v15;
    v17 = a1[2];
    v18 = v21;
    *(a1 + 1) = v21;
    *&v21 = v16;
    *(&v21 + 1) = v17;
    v19 = v16;
    v20 = v16;
    result = std::__split_buffer<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator> &>::~__split_buffer(&v19);
    v7 = v18;
  }

  else
  {
    result = geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v4, a2);
    v7 = result + 24;
  }

  a1[1] = v7;
  return result;
}

void sub_1B2D4185C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_1B2D419AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<VKLabelNavRouteEta * {__strong}>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x80040B8603338uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

mdm::zone_mallocator *std::__split_buffer<VKLabelNavRouteEta * {__strong},geo::allocator_adapter<VKLabelNavRouteEta * {__strong},mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(a1 + 2))
  {
    *(a1 + 2) = i - 8;
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VKLabelNavRouteEta * {__strong}>(v5, v4);
  }

  return a1;
}

uint64_t md::LabelNavEtaLabeler::searchForPlacementAcrossShareSections(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = a4;
  v146 = a4 + 304;
  v13 = *(a4 + 304);
  v12 = *(a4 + 312);
  if (v12 != v13)
  {
    do
    {
      v14 = v12 - 72;
      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v12 - 40);
      v12 = v14;
    }

    while (v14 != v13);
  }

  v15 = 0;
  *(v9 + 312) = v13;
  v16 = a2[3] + 864;
  do
  {
    *(v9 + v15 + 176) = *(v16 + v15);
    v15 += 8;
  }

  while (v15 != 128);
  v17 = *(a5 + 16);
  if (v17 == (a5 + 24))
  {
    return 0;
  }

  if (a8)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = 12.0;
  }

  v143 = v9;
  v151 = a1;
  v149 = a2;
  v134 = v18;
  while (1)
  {
    v19 = *a5;
    v137 = *(v17 + 32);
    v20 = v19;
    v21 = v20;
    v22 = v17[6] - v17[5];
    if (v22)
    {
      break;
    }

LABEL_96:

    v126 = v17[1];
    v127 = v17;
    if (v126)
    {
      do
      {
        v128 = v126;
        v126 = *v126;
      }

      while (v126);
    }

    else
    {
      do
      {
        v128 = v127[2];
        v129 = *v128 == v127;
        v127 = v128;
      }

      while (!v129);
    }

    v17 = v128;
    if (v128 == (a5 + 24))
    {
      return 0;
    }
  }

  v141 = v17;
  v139 = 0;
  v23 = *(a2[1] + 176);
  v24 = *(a2[4] + 32);
  v25 = v22 >> 4;
  v184 = 0x7F7FFFFF00000000;
  v178 = 0;
  v179 = 0;
  v180 = 0.0;
  v181 = 1;
  v177 = -1;
  v176 = 0;
  v174 = 0xBF80000000000000;
  v175 = 0xBF80000000000000;
  v173 = 0.0;
  v145 = v23 * v18;
  v172 = v24;
  v26 = v23 * 40.0;
  if (v25 <= 1)
  {
    v25 = 1;
  }

  v140 = v25;
  v144 = v20;
  do
  {
    v27 = 0;
    do
    {
      v142 = v27;
      (*(**(a1 + 40) + 24))(&v170);
      v28 = v170;
      v147 = v171;
      if (v170 != v171)
      {
        do
        {
          v29 = *v28;
          v30 = v28[1];
          md::LabelNavEtaLabeler::calculatePositioningFrame(&v168, a1, a2, v21, v29, v30);
          *&v162 = a1;
          *(&v162 + 1) = v9;
          *&v163 = &v184;
          *(&v163 + 1) = &v178;
          *&v164 = &v177;
          *(&v164 + 1) = &v176;
          *&v165 = &v175;
          *(&v165 + 1) = &v174;
          *&v166 = &v173;
          *(&v166 + 1) = v146;
          *&v167[4] = v168;
          *&v167[20] = v169;
          *&v167[28] = v172;
          *v167 = v145;
          *&v167[44] = v145 * v145;
          v153 = v21;
          v148 = v28;
          (*(**(a1 + 40) + 24))(&__p);
          v31 = v199;
          v32 = __p;
          if (v199 - __p == 16 && *__p == *(__p + 2) && vabds_f32(*(__p + 1), *(__p + 3)) < 0.00000011921)
          {
            v33 = v153;
            *&v201 = md::RouteSimplifier::worldPointForPolylineCoordinate(*(a1 + 48), v153, __p);
            *(&v201 + 1) = v34;
            v202 = v35;
            md::LabelLayoutContext::projectPointToPixel(a2[3], &v201, &v206);
            md::LabelNavEtaLabeler::searchForPlacementWithinSection(md::NavContext const*,geo::Frustum<double> const&,md::RouteLabelState const&,GEOComposedRoute *,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>> const&,md::EtaPlacementScore const*,md::EtaLabelPlacement &,unsigned char,BOOL)const::$_0::operator()(&v162, 0.0, &v206, *__p, *(__p + 1));
          }

          else
          {
            v33 = v153;
            if (__p != v199)
            {
              v152 = v199;
              do
              {
                v197 = v26;
                v196 = 1;
                v194 = 0xBF80000000000000;
                v36 = *(a2[1] + 176);
                v185 = a1;
                v186 = &v197;
                v187 = &v196;
                v188 = &v195;
                v189 = &v194;
                v190 = v33;
                v191 = a2;
                v192 = v26;
                v193[4] = v166;
                v193[5] = *v167;
                v193[6] = *&v167[16];
                v193[7] = *&v167[32];
                v193[0] = v162;
                v193[1] = v163;
                v193[2] = v164;
                v193[3] = v165;
                v155 = v190;
                v37 = *&v32[1].index;
                offset = v32->offset;
                if (v32->index != LODWORD(v37) || vabds_f32(offset, v32[1].offset) >= 0.00000011921)
                {
                  if (offset != 0.0)
                  {
                    v39 = *v32;
                    v206 = *v32;
                    *&v201 = md::RouteSimplifier::worldPointForPolylineCoordinate(*(v185 + 48), v190, &v206);
                    *(&v201 + 1) = v40;
                    v202 = v41;
                    md::LabelLayoutContext::projectPointToPixel(v191[3], &v201, v200);
                    v44 = v187;
                    v43 = v188;
                    v45 = v200[0];
                    if ((*v187 & 1) == 0)
                    {
                      v46 = vsub_f32(v200[0], *v188);
                      *&v42 = vmul_f32(v46, v46);
                      v47 = sqrtf(vaddv_f32(*&v42));
                      v48 = v186;
                      *&v42 = *v186;
                      v49 = v192 - *v186;
                      if (v47 >= v49)
                      {
                        *v186 = 0.0;
                        *&v42 = v49 / v47;
                        v210 = vmla_n_f32(*v43, vsub_f32(v45, *v43), v49 / v47);
                        v157 = v42;
                        md::LabelNavEtaLabeler::searchForPlacementWithinSection(md::NavContext const*,geo::Frustum<double> const&,md::RouteLabelState const&,GEOComposedRoute *,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>> const&,md::EtaPlacementScore const*,md::EtaLabelPlacement &,unsigned char,BOOL)const::$_0::operator()(v193, v49 / v47, &v210, *v189, v39);
                        v50 = v47 - v49;
                        v51 = v192;
                        if (v50 >= v192)
                        {
                          v52 = v188;
                          v53 = v189;
                          v54 = v192;
                          v55 = v192 / v47;
                          do
                          {
                            v56 = v157;
                            *&v56 = *&v157 + v55;
                            v210 = vmla_n_f32(*v52, vsub_f32(v45, *v52), *&v157 + v55);
                            v157 = v56;
                            md::LabelNavEtaLabeler::searchForPlacementWithinSection(md::NavContext const*,geo::Frustum<double> const&,md::RouteLabelState const&,GEOComposedRoute *,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>> const&,md::EtaPlacementScore const*,md::EtaLabelPlacement &,unsigned char,BOOL)const::$_0::operator()(v193, *&v56, &v210, *v53, v39);
                            v50 = v50 - v51;
                            v51 = v54;
                          }

                          while (v50 >= v54);
                        }

                        v48 = v186;
                        v44 = v187;
                        *&v42 = *v186;
                        v43 = v188;
                        v47 = v50;
                        v31 = v152;
                        v33 = v153;
                      }

                      *v48 = *&v42 + v47;
                    }

                    *v44 = 0;
                    *v43 = v45;
                    *v189 = v206;
                    offset = v32->offset;
                    v37 = *&v32[1].index;
                  }

                  if (offset <= 0.0)
                  {
                    index = v32->index;
                  }

                  else
                  {
                    index = v32->index + 1;
                  }

                  if (index == LODWORD(v37))
                  {
                    v206 = LODWORD(v37);
                    *&v201 = md::RouteSimplifier::worldPointForPolylineCoordinate(*(v185 + 48), v190, &v206);
                    *(&v201 + 1) = v58;
                    v202 = v59;
                    md::LabelLayoutContext::projectPointToPixel(v191[3], &v201, v200);
                    v61 = v187;
                    v62 = v188;
                    v63 = v200[0];
                    if ((*v187 & 1) == 0)
                    {
                      v64 = vsub_f32(v200[0], *v188);
                      *&v60 = vmul_f32(v64, v64);
                      v65 = sqrtf(vaddv_f32(*&v60));
                      v66 = v186;
                      *&v60 = *v186;
                      v67 = v192 - *v186;
                      if (v65 >= v67)
                      {
                        *v186 = 0.0;
                        *&v60 = v67 / v65;
                        v210 = vmla_n_f32(*v62, vsub_f32(v63, *v62), v67 / v65);
                        v158 = v60;
                        md::LabelNavEtaLabeler::searchForPlacementWithinSection(md::NavContext const*,geo::Frustum<double> const&,md::RouteLabelState const&,GEOComposedRoute *,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>> const&,md::EtaPlacementScore const*,md::EtaLabelPlacement &,unsigned char,BOOL)const::$_0::operator()(v193, v67 / v65, &v210, *v189, LODWORD(v37));
                        v68 = v65 - v67;
                        v69 = v192;
                        if (v68 >= v192)
                        {
                          v70 = v188;
                          v71 = v189;
                          v72 = v192;
                          v73 = v192 / v65;
                          do
                          {
                            v74 = v158;
                            *&v74 = *&v158 + v73;
                            v210 = vmla_n_f32(*v70, vsub_f32(v63, *v70), *&v158 + v73);
                            v158 = v74;
                            md::LabelNavEtaLabeler::searchForPlacementWithinSection(md::NavContext const*,geo::Frustum<double> const&,md::RouteLabelState const&,GEOComposedRoute *,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>> const&,md::EtaPlacementScore const*,md::EtaLabelPlacement &,unsigned char,BOOL)const::$_0::operator()(v193, *&v74, &v210, *v71, LODWORD(v37));
                            v68 = v68 - v69;
                            v69 = v72;
                          }

                          while (v68 >= v72);
                        }

                        v66 = v186;
                        v61 = v187;
                        *&v60 = *v186;
                        v62 = v188;
                        v65 = v68;
                        v31 = v152;
                        v33 = v153;
                      }

                      *v66 = *&v60 + v65;
                    }

                    *v61 = 0;
                    *v62 = v63;
                    *v189 = v206;
                  }

                  else if (index < LODWORD(v37))
                  {
                    v75 = a2[3];
                    v201 = *(v75 + 136);
                    v202 = *(v75 + 152);
                    v203 = *(v75 + 160);
                    v204 = *(v75 + 176);
                    v76 = *(a1 + 40);
                    v206.index = index;
                    v206.offset = v37;
                    if ((*(*v76 + 32))(v76, a3, v155, &v201, &v206, v200))
                    {
                      md::RouteSimplifier::simplifiedRibbonIndices(*(v151 + 48), v155, index, SLODWORD(v37), (v151 + 80), v36 * *(v75 + 312) * (*v200 + *v200) / *(v75 + 1064));
                      v77 = *(v151 + 80);
                      v78 = *(v151 + 88);
                      if (v77 != v78)
                      {
                        v154 = v191;
                        v80 = v187;
                        v79 = v188;
                        v82 = v185;
                        v81 = v186;
                        v83 = v190;
                        v84 = v189;
                        do
                        {
                          v85 = *v77;
                          v210 = v85;
                          v206 = COERCE_POLYLINECOORDINATE(md::RouteSimplifier::worldPointForPolylineCoordinate(*(v82 + 48), v83, &v210));
                          v207 = v86;
                          v208 = v87;
                          md::LabelLayoutContext::projectPointToPixel(v154[3], &v206, &v209);
                          v89 = v209;
                          if ((*v80 & 1) == 0)
                          {
                            v90 = vsub_f32(v209, *v79);
                            *&v88 = vmul_f32(v90, v90);
                            v91 = sqrtf(vaddv_f32(*&v88));
                            *&v88 = *v81;
                            v92 = v192 - *v81;
                            if (v91 >= v92)
                            {
                              *v81 = 0.0;
                              *&v88 = v92 / v91;
                              v205 = vmla_n_f32(*v79, vsub_f32(v89, *v79), v92 / v91);
                              v159 = v88;
                              md::LabelNavEtaLabeler::searchForPlacementWithinSection(md::NavContext const*,geo::Frustum<double> const&,md::RouteLabelState const&,GEOComposedRoute *,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>> const&,md::EtaPlacementScore const*,md::EtaLabelPlacement &,unsigned char,BOOL)const::$_0::operator()(v193, v92 / v91, &v205, *v84, v85);
                              v93 = v91 - v92;
                              v94 = v192;
                              if (v93 >= v192)
                              {
                                v95 = v192;
                                v96 = v192 / v91;
                                do
                                {
                                  v97 = v159;
                                  *&v97 = *&v159 + v96;
                                  v205 = vmla_n_f32(*v79, vsub_f32(v89, *v79), *&v159 + v96);
                                  v159 = v97;
                                  md::LabelNavEtaLabeler::searchForPlacementWithinSection(md::NavContext const*,geo::Frustum<double> const&,md::RouteLabelState const&,GEOComposedRoute *,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>> const&,md::EtaPlacementScore const*,md::EtaLabelPlacement &,unsigned char,BOOL)const::$_0::operator()(v193, *&v97, &v205, *v84, v85);
                                  v93 = v93 - v94;
                                  v94 = v95;
                                }

                                while (v93 >= v95);
                              }

                              *&v88 = *v81;
                              v91 = v93;
                            }

                            *v81 = *&v88 + v91;
                          }

                          *v80 = 0;
                          *v79 = v89;
                          *v84 = v210;
                          ++v77;
                        }

                        while (v77 != v78);
                      }
                    }

                    a1 = v151;
                    v31 = v152;
                    a2 = v149;
                    v33 = v153;
                  }

                  if (v32[1].offset != 0.0)
                  {
                    v98 = v32[1];
                    v206 = v98;
                    *&v201 = md::RouteSimplifier::worldPointForPolylineCoordinate(*(v185 + 48), v190, &v206);
                    *(&v201 + 1) = v99;
                    v202 = v100;
                    md::LabelLayoutContext::projectPointToPixel(v191[3], &v201, v200);
                    v103 = v187;
                    v102 = v188;
                    v104 = v200[0];
                    if ((*v187 & 1) == 0)
                    {
                      v105 = vsub_f32(v200[0], *v188);
                      *&v101 = vmul_f32(v105, v105);
                      v106 = sqrtf(vaddv_f32(*&v101));
                      v107 = v186;
                      *&v101 = *v186;
                      v108 = v192 - *v186;
                      if (v106 >= v108)
                      {
                        *v186 = 0.0;
                        *&v101 = v108 / v106;
                        v210 = vmla_n_f32(*v102, vsub_f32(v104, *v102), v108 / v106);
                        v160 = v101;
                        md::LabelNavEtaLabeler::searchForPlacementWithinSection(md::NavContext const*,geo::Frustum<double> const&,md::RouteLabelState const&,GEOComposedRoute *,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>> const&,md::EtaPlacementScore const*,md::EtaLabelPlacement &,unsigned char,BOOL)const::$_0::operator()(v193, v108 / v106, &v210, *v189, v98);
                        v109 = v106 - v108;
                        v110 = v192;
                        if (v109 >= v192)
                        {
                          v111 = v188;
                          v112 = v189;
                          v113 = v192;
                          v114 = v192 / v106;
                          do
                          {
                            v115 = v160;
                            *&v115 = *&v160 + v114;
                            v210 = vmla_n_f32(*v111, vsub_f32(v104, *v111), *&v160 + v114);
                            v160 = v115;
                            md::LabelNavEtaLabeler::searchForPlacementWithinSection(md::NavContext const*,geo::Frustum<double> const&,md::RouteLabelState const&,GEOComposedRoute *,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>> const&,md::EtaPlacementScore const*,md::EtaLabelPlacement &,unsigned char,BOOL)const::$_0::operator()(v193, *&v115, &v210, *v112, v98);
                            v109 = v109 - v110;
                            v110 = v113;
                          }

                          while (v109 >= v113);
                        }

                        v107 = v186;
                        v103 = v187;
                        *&v101 = *v186;
                        v102 = v188;
                        v106 = v109;
                        v31 = v152;
                        v33 = v153;
                      }

                      *v107 = *&v101 + v106;
                    }

                    *v103 = 0;
                    *v102 = v104;
                    *v189 = v206;
                  }
                }

                v32 += 2;
              }

              while (v32 != v31);
            }
          }

          if (__p)
          {
            v199 = __p;
            operator delete(__p);
          }

          v28 = v148 + 2;
          v9 = v143;
          v21 = v144;
        }

        while (&v148[2] != v147);
        v28 = v170;
      }

      if (v28)
      {
        v171 = v28;
        operator delete(v28);
      }

      v27 = v142 + 1;
    }

    while (v142 + 1 != v140);
    if (v177 != 255)
    {
      break;
    }

    v26 = v26 * 0.5;
  }

  while (v139++ < 2);
  if (v177 == 255)
  {
    goto LABEL_95;
  }

  v117 = v179;
  v118 = v180;
  v119 = v181;
  LOWORD(v185) = v182;
  BYTE2(v185) = v183;
  if (!a6)
  {
    goto LABEL_103;
  }

  if (*(v9 + 152) != 1)
  {
    v122 = *(a2[1] + 176);
    v123 = vaddv_f32(v178) + (*&v179 + *(&v179 + 1));
    v124 = vaddv_f32(*&vpaddq_f32(*(a6 + 8), *(a6 + 8)));
    if (vabds_f32(v123, v124) <= (v122 * 100.0))
    {
      v125 = *(a6 + 32);
      if (v125 == v137)
      {
        if (*(&v184 + 1) < (*(a6 + 4) + (v122 * -20.0)))
        {
          goto LABEL_103;
        }
      }

      else if (v125 > v137)
      {
        goto LABEL_103;
      }
    }

    else if (v123 < v124)
    {
      goto LABEL_103;
    }

    goto LABEL_95;
  }

  v120 = 0.0;
  if (v181)
  {
    v121 = v180;
  }

  else
  {
    v121 = 0.0;
  }

  if (*(a6 + 28) == 1)
  {
    v120 = *(a6 + 24);
  }

  if (vabds_f32(v121, v120) <= 0.3)
  {
LABEL_95:
    v17 = v141;
    v18 = v134;
    goto LABEL_96;
  }

LABEL_103:
  v156 = v178;
  v161 = v184;
  v132 = v174;
  v131 = v175;
  *a7 = md::LabelNavEtaLabeler::findClosestCoordinateBetweenVertices(a1, (a2[3] + 864), v21, v131, v132, v173);
  *(a7 + 8) = v176;
  *&v133 = v161;
  *(&v133 + 1) = v156;
  *(a7 + 12) = v133;
  *(a7 + 28) = v117;
  *(a7 + 36) = v118;
  *(a7 + 40) = v119;
  *(a7 + 41) = v185;
  *(a7 + 43) = BYTE2(v185);
  *(a7 + 44) = v137;

  return 1;
}

void std::__tree<std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::__map_value_compare<VKLabelNavRouteEta * {__strong},std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::less<VKLabelNavRouteEta * {__strong}>,true>,geo::allocator_adapter<std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,mdm::zone_mallocator>>::__erase_unique<VKLabelNavRouteEta * {__strong}>(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    v3 = result + 8;
    do
    {
      v4 = *(v2 + 32);
      v5 = v4 >= a2;
      v6 = v4 < a2;
      if (v5)
      {
        v3 = v2;
      }

      v2 = *(v2 + 8 * v6);
    }

    while (v2);
    if (v3 != result + 8 && *(v3 + 32) <= a2)
    {
      std::__tree<std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::__map_value_compare<VKLabelNavRouteEta * {__strong},std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::less<VKLabelNavRouteEta * {__strong}>,true>,geo::allocator_adapter<std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,mdm::zone_mallocator>>::erase(result, v3);
    }
  }
}

uint64_t std::__split_buffer<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    std::__destroy_at[abi:nn200100]<md::RouteRangeAnnotationRequest,0>(i - 56);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t md::LabelNavEtaLabeler::searchForPlacementWithinSection(md::NavContext const*,geo::Frustum<double> const&,md::RouteLabelState const&,GEOComposedRoute *,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>> const&,md::EtaPlacementScore const*,md::EtaLabelPlacement &,unsigned char,BOOL)const::$_0::operator()(uint64_t a1, float a2, float *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  v11 = md::LabelNavEtaLabeler::scoreEtaLabelPosition(*a1, *(a1 + 8), *(a1 + 80), a3);
  v13 = v12;
  v14 = *(*(a1 + 8) + 24);
  memset(v36, 0, sizeof(v36));
  v37 = 1065353216;
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(v36, v14);
  v15 = *(*(a1 + 8) + 16);
  if (v15)
  {
    while (1)
    {
      v16 = *(a1 + 8);
      v31.i32[0] = gm::Box<float,2>::operator+(v15 + 5, a3);
      v31.i32[1] = v17;
      v32 = v18;
      v33 = v19;
      md::LabelNavEtaLabeler::scoreEtaLabelRect(&v34, v10, v16, &v31, a1 + 108);
      v20 = (v15 + 2);
      v38 = v15 + 2;
      v21 = std::__hash_table<std::__hash_value_type<md::RoadSignOrientation,md::LabelRectScore>,std::__unordered_map_hasher<md::RoadSignOrientation,std::__hash_value_type<md::RoadSignOrientation,md::LabelRectScore>,std::hash<md::RoadSignOrientation>,std::equal_to<md::RoadSignOrientation>,true>,std::__unordered_map_equal<md::RoadSignOrientation,std::__hash_value_type<md::RoadSignOrientation,md::LabelRectScore>,std::equal_to<md::RoadSignOrientation>,std::hash<md::RoadSignOrientation>,true>,std::allocator<std::__hash_value_type<md::RoadSignOrientation,md::LabelRectScore>>>::__emplace_unique_key_args<md::RoadSignOrientation,std::piecewise_construct_t const&,std::tuple<md::RoadSignOrientation const&>,std::tuple<>>(v36, *(v15 + 16), &v38);
      *(v21 + 20) = v34;
      *(v21 + 36) = v35;
      if (*(*(a1 + 8) + 152) == 3)
      {
        *&v34 = v15 + 2;
        if (*(std::__hash_table<std::__hash_value_type<md::RoadSignOrientation,md::LabelRectScore>,std::__unordered_map_hasher<md::RoadSignOrientation,std::__hash_value_type<md::RoadSignOrientation,md::LabelRectScore>,std::hash<md::RoadSignOrientation>,std::equal_to<md::RoadSignOrientation>,true>,std::__unordered_map_equal<md::RoadSignOrientation,std::__hash_value_type<md::RoadSignOrientation,md::LabelRectScore>,std::equal_to<md::RoadSignOrientation>,std::hash<md::RoadSignOrientation>,true>,std::allocator<std::__hash_value_type<md::RoadSignOrientation,md::LabelRectScore>>>::__emplace_unique_key_args<md::RoadSignOrientation,std::piecewise_construct_t const&,std::tuple<md::RoadSignOrientation const&>,std::tuple<>>(v36, *v20, &v34) + 7) >= 1.0)
        {
          goto LABEL_15;
        }
      }

      if (v11 < *(a1 + 124))
      {
        goto LABEL_15;
      }

      *&v34 = v15 + 2;
      if (*(std::__hash_table<std::__hash_value_type<md::RoadSignOrientation,md::LabelRectScore>,std::__unordered_map_hasher<md::RoadSignOrientation,std::__hash_value_type<md::RoadSignOrientation,md::LabelRectScore>,std::hash<md::RoadSignOrientation>,std::equal_to<md::RoadSignOrientation>,true>,std::__unordered_map_equal<md::RoadSignOrientation,std::__hash_value_type<md::RoadSignOrientation,md::LabelRectScore>,std::equal_to<md::RoadSignOrientation>,std::hash<md::RoadSignOrientation>,true>,std::allocator<std::__hash_value_type<md::RoadSignOrientation,md::LabelRectScore>>>::__emplace_unique_key_args<md::RoadSignOrientation,std::piecewise_construct_t const&,std::tuple<md::RoadSignOrientation const&>,std::tuple<>>(v36, *v20, &v34) + 6) >= 1.0)
      {
        goto LABEL_15;
      }

      *&v34 = v15 + 2;
      v22 = std::__hash_table<std::__hash_value_type<md::RoadSignOrientation,md::LabelRectScore>,std::__unordered_map_hasher<md::RoadSignOrientation,std::__hash_value_type<md::RoadSignOrientation,md::LabelRectScore>,std::hash<md::RoadSignOrientation>,std::equal_to<md::RoadSignOrientation>,true>,std::__unordered_map_equal<md::RoadSignOrientation,std::__hash_value_type<md::RoadSignOrientation,md::LabelRectScore>,std::equal_to<md::RoadSignOrientation>,std::hash<md::RoadSignOrientation>,true>,std::allocator<std::__hash_value_type<md::RoadSignOrientation,md::LabelRectScore>>>::__emplace_unique_key_args<md::RoadSignOrientation,std::piecewise_construct_t const&,std::tuple<md::RoadSignOrientation const&>,std::tuple<>>(v36, *v20, &v34);
      v23 = vaddv_f32(*&vpaddq_f32(*(v22 + 20), *(v22 + 20)));
      if (v23 >= 1.0)
      {
        v24 = fminf(-(v10[62] - (v23 * v10[62])), 254.0) + 1;
      }

      else
      {
        LOBYTE(v24) = 0;
      }

      v25 = **(a1 + 32);
      if (v25 == v24)
      {
        break;
      }

      if (v25 > v24)
      {
        v26 = *(a1 + 16);
LABEL_14:
        *v26 = v11;
        v26[1] = v13;
        **(a1 + 32) = v24;
        *&v34 = v15 + 2;
        v27 = std::__hash_table<std::__hash_value_type<md::RoadSignOrientation,md::LabelRectScore>,std::__unordered_map_hasher<md::RoadSignOrientation,std::__hash_value_type<md::RoadSignOrientation,md::LabelRectScore>,std::hash<md::RoadSignOrientation>,std::equal_to<md::RoadSignOrientation>,true>,std::__unordered_map_equal<md::RoadSignOrientation,std::__hash_value_type<md::RoadSignOrientation,md::LabelRectScore>,std::equal_to<md::RoadSignOrientation>,std::hash<md::RoadSignOrientation>,true>,std::allocator<std::__hash_value_type<md::RoadSignOrientation,md::LabelRectScore>>>::__emplace_unique_key_args<md::RoadSignOrientation,std::piecewise_construct_t const&,std::tuple<md::RoadSignOrientation const&>,std::tuple<>>(v36, *v20, &v34);
        v28 = *(a1 + 24);
        v29 = *(v27 + 20);
        *(v28 + 16) = *(v27 + 36);
        *v28 = v29;
        **(a1 + 40) = *v20;
        **(a1 + 48) = a4;
        **(a1 + 56) = a5;
        **(a1 + 64) = a2;
      }

LABEL_15:
      v15 = *v15;
      if (!v15)
      {
        return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v36);
      }
    }

    v26 = *(a1 + 16);
    if (v13 >= v26[1])
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v36);
}

void sub_1B2D42A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t **std::__hash_table<std::__hash_value_type<md::RoadSignOrientation,md::LabelRectScore>,std::__unordered_map_hasher<md::RoadSignOrientation,std::__hash_value_type<md::RoadSignOrientation,md::LabelRectScore>,std::hash<md::RoadSignOrientation>,std::equal_to<md::RoadSignOrientation>,true>,std::__unordered_map_equal<md::RoadSignOrientation,std::__hash_value_type<md::RoadSignOrientation,md::LabelRectScore>,std::equal_to<md::RoadSignOrientation>,std::hash<md::RoadSignOrientation>,true>,std::allocator<std::__hash_value_type<md::RoadSignOrientation,md::LabelRectScore>>>::__emplace_unique_key_args<md::RoadSignOrientation,std::piecewise_construct_t const&,std::tuple<md::RoadSignOrientation const&>,std::tuple<>>(void *a1, unsigned __int8 a2, _BYTE **a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % a1[1];
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
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
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 16) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__shared_ptr_emplace<md::PolylineCollider>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29F11A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>::pair[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::map[abi:nn200100]((a1 + 16), a2 + 16);
  std::unordered_map<md::RoadSignOrientation,gm::Box<float,2>>::unordered_map(a1 + 48, a2 + 48);
  v4 = *(a2 + 88);
  *(a1 + 96) = 0;
  *(a1 + 88) = v4;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = *(a2 + 120);
  std::vector<std::shared_ptr<md::PolylineCollider>,geo::allocator_adapter<std::shared_ptr<md::PolylineCollider>,mdm::zone_mallocator>>::__init_with_size[abi:nn200100]<std::shared_ptr<md::PolylineCollider>*,std::shared_ptr<md::PolylineCollider>*>((a1 + 96), *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 4);
  *(a1 + 128) = *(a2 + 128);
  v5 = *(a2 + 144);
  v6 = *(a2 + 160);
  v7 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v7;
  *(a1 + 144) = v5;
  *(a1 + 160) = v6;
  v8 = *(a2 + 224);
  v9 = *(a2 + 240);
  v10 = *(a2 + 272);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = v10;
  *(a1 + 224) = v8;
  *(a1 + 240) = v9;
  v11 = *(a2 + 288);
  v12 = *(a2 + 304);
  v13 = *(a2 + 336);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = v13;
  *(a1 + 288) = v11;
  *(a1 + 304) = v12;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 352) = 0;
  *(a1 + 376) = *(a2 + 376);
  std::vector<md::PolylineSampleDebug,geo::allocator_adapter<md::PolylineSampleDebug,mdm::zone_mallocator>>::__init_with_size[abi:nn200100]<md::PolylineSampleDebug*,md::PolylineSampleDebug*>((a1 + 352), *(a2 + 352), *(a2 + 360), 0x8E38E38E38E38E39 * ((*(a2 + 360) - *(a2 + 352)) >> 3));
  return a1;
}

void sub_1B2D42E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::shared_ptr<md::PolylineCollider>,geo::allocator_adapter<std::shared_ptr<md::PolylineCollider>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v3 + 48);
  std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*(v3 + 24));

  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 384;
    std::allocator_traits<std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>>::destroy[abi:nn200100]<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>,void,0>(i - 384);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__move_assign(void *a1, void *a2)
{
  v4 = a1 + 1;
  std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(a1[1]);
  *a1 = *a2;
  v5 = a2[1];
  *v4 = v5;
  v6 = a2[3];
  a1[3] = v6;
  if (v6)
  {
    *(v5 + 16) = v4;
    *a2 = a2 + 1;
    a2[1] = 0;
    a2[3] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::RouteRangeAnnotationRequest>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 48 * a2, 0x10A0040B8A41042uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void std::swap[abi:nn200100]<md::RouteRangeAnnotationRequest>(__int128 *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  *a1 = 0uLL;
  v5 = a1 + 1;
  v16 = v4;
  v6 = *(a1 + 3);
  v17 = *(a1 + 2);
  v18 = v6;
  v19 = *(a1 + 32);
  v20 = *(a1 + 5);
  if (v20)
  {
    v6[2] = &v18;
    a1[1] = a1 + 24;
    *(a1 + 5) = 0;
  }

  else
  {
    v17 = &v18;
  }

  v7 = *a2;
  *a2 = 0;
  v8 = *a1;
  *a1 = v7;

  v9 = *(a2 + 8);
  *(a2 + 8) = 0;
  v10 = *(a1 + 1);
  *(a1 + 1) = v9;

  std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__move_assign(v5, (a2 + 16));
  v11 = *a2;
  *a2 = v16;

  v12 = *(a2 + 8);
  *(a2 + 8) = *(&v16 + 1);

  v13 = a2 + 24;
  std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*(a2 + 24));
  v14 = v18;
  *(a2 + 16) = v17;
  *(a2 + 24) = v14;
  v15 = v20;
  *(a2 + 40) = v20;
  if (v15)
  {
    v14[2] = v13;
    v18 = 0;
    v20 = 0;
    v14 = 0;
  }

  else
  {
    *(a2 + 16) = v13;
  }

  std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(v14);
}

void std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavEtaLabeler::extractAndSortAnnotations(VKRouteInfo *,std::function<BOOL ()(md::RouteRangeAnnotationRequest const&)>)::$_0 &,md::RouteRangeAnnotationRequest*,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = md::RouteRangeAnnotationRequest::etaType(*(a2 + 8));
  v7 = md::RouteRangeAnnotationRequest::etaType(*(a1 + 8));
  v8 = *(a2 + 8);
  if (v6 == v7)
  {
    v9 = [v8 start];
    v10 = [*(a1 + 8) start];
    if (v9 >= v10 && (v9 != v10 || *(&v9 + 1) >= *(&v10 + 1)))
    {
      goto LABEL_14;
    }
  }

  else
  {
    v18 = md::RouteRangeAnnotationRequest::etaType(v8);
    if (v18 >= md::RouteRangeAnnotationRequest::etaType(*(a1 + 8)))
    {
LABEL_14:
      v19 = md::RouteRangeAnnotationRequest::etaType(*(a3 + 8));
      v20 = md::RouteRangeAnnotationRequest::etaType(*(a2 + 8));
      v21 = *(a3 + 8);
      if (v19 == v20)
      {
        v22 = [v21 start];
        v23 = [*(a2 + 8) start];
        if (v22 >= v23 && (v22 != v23 || *(&v22 + 1) >= *(&v23 + 1)))
        {
          return;
        }
      }

      else
      {
        v30 = md::RouteRangeAnnotationRequest::etaType(v21);
        if (v30 >= md::RouteRangeAnnotationRequest::etaType(*(a2 + 8)))
        {
          return;
        }
      }

      std::swap[abi:nn200100]<md::RouteRangeAnnotationRequest>(a2, a3);
      v31 = md::RouteRangeAnnotationRequest::etaType(*(a2 + 8));
      v32 = md::RouteRangeAnnotationRequest::etaType(*(a1 + 8));
      v33 = *(a2 + 8);
      if (v31 == v32)
      {
        v34 = [v33 start];
        v35 = [*(a1 + 8) start];
        if (v34 >= v35 && (v34 != v35 || *(&v34 + 1) >= *(&v35 + 1)))
        {
          return;
        }
      }

      else
      {
        v38 = md::RouteRangeAnnotationRequest::etaType(v33);
        if (v38 >= md::RouteRangeAnnotationRequest::etaType(*(a1 + 8)))
        {
          return;
        }
      }

      v17 = a1;
      v37 = a2;
      goto LABEL_36;
    }
  }

  v12 = md::RouteRangeAnnotationRequest::etaType(*(a3 + 8));
  v13 = md::RouteRangeAnnotationRequest::etaType(*(a2 + 8));
  v14 = *(a3 + 8);
  if (v12 == v13)
  {
    v15 = [v14 start];
    v16 = [*(a2 + 8) start];
    if (v15 < v16 || v15 == v16 && *(&v15 + 1) < *(&v16 + 1))
    {
      goto LABEL_12;
    }

LABEL_20:
    std::swap[abi:nn200100]<md::RouteRangeAnnotationRequest>(a1, a2);
    v25 = md::RouteRangeAnnotationRequest::etaType(*(a3 + 8));
    v26 = md::RouteRangeAnnotationRequest::etaType(*(a2 + 8));
    v27 = *(a3 + 8);
    if (v25 == v26)
    {
      v28 = [v27 start];
      v29 = [*(a2 + 8) start];
      if (v28 >= v29 && (v28 != v29 || *(&v28 + 1) >= *(&v29 + 1)))
      {
        return;
      }
    }

    else
    {
      v36 = md::RouteRangeAnnotationRequest::etaType(v27);
      if (v36 >= md::RouteRangeAnnotationRequest::etaType(*(a2 + 8)))
      {
        return;
      }
    }

    v17 = a2;
    goto LABEL_33;
  }

  v24 = md::RouteRangeAnnotationRequest::etaType(v14);
  if (v24 >= md::RouteRangeAnnotationRequest::etaType(*(a2 + 8)))
  {
    goto LABEL_20;
  }

LABEL_12:
  v17 = a1;
LABEL_33:
  v37 = a3;
LABEL_36:

  std::swap[abi:nn200100]<md::RouteRangeAnnotationRequest>(v17, v37);
}

void std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavEtaLabeler::extractAndSortAnnotations(VKRouteInfo *,std::function<BOOL ()(md::RouteRangeAnnotationRequest const&)>)::$_0 &,md::RouteRangeAnnotationRequest*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavEtaLabeler::extractAndSortAnnotations(VKRouteInfo *,std::function<BOOL ()(md::RouteRangeAnnotationRequest const&)>)::$_0 &,md::RouteRangeAnnotationRequest*,0>(a1, a2, a3);
  v8 = md::RouteRangeAnnotationRequest::etaType(*(a4 + 8));
  v9 = md::RouteRangeAnnotationRequest::etaType(*(a3 + 8));
  v10 = *(a4 + 8);
  if (v8 == v9)
  {
    v11 = [v10 start];
    v12 = [*(a3 + 8) start];
    if (v11 >= v12 && (v11 != v12 || *(&v11 + 1) >= *(&v12 + 1)))
    {
      return;
    }
  }

  else
  {
    v13 = md::RouteRangeAnnotationRequest::etaType(v10);
    if (v13 >= md::RouteRangeAnnotationRequest::etaType(*(a3 + 8)))
    {
      return;
    }
  }

  std::swap[abi:nn200100]<md::RouteRangeAnnotationRequest>(a3, a4);
  v14 = md::RouteRangeAnnotationRequest::etaType(*(a3 + 8));
  v15 = md::RouteRangeAnnotationRequest::etaType(*(a2 + 8));
  v16 = *(a3 + 8);
  if (v14 == v15)
  {
    v17 = [v16 start];
    v18 = [*(a2 + 8) start];
    if (v17 >= v18 && (v17 != v18 || *(&v17 + 1) >= *(&v18 + 1)))
    {
      return;
    }
  }

  else
  {
    v19 = md::RouteRangeAnnotationRequest::etaType(v16);
    if (v19 >= md::RouteRangeAnnotationRequest::etaType(*(a2 + 8)))
    {
      return;
    }
  }

  std::swap[abi:nn200100]<md::RouteRangeAnnotationRequest>(a2, a3);
  v20 = md::RouteRangeAnnotationRequest::etaType(*(a2 + 8));
  v21 = md::RouteRangeAnnotationRequest::etaType(*(a1 + 8));
  v22 = *(a2 + 8);
  if (v20 == v21)
  {
    v23 = [v22 start];
    v24 = [*(a1 + 8) start];
    if (v23 >= v24 && (v23 != v24 || *(&v23 + 1) >= *(&v24 + 1)))
    {
      return;
    }
  }

  else
  {
    v25 = md::RouteRangeAnnotationRequest::etaType(v22);
    if (v25 >= md::RouteRangeAnnotationRequest::etaType(*(a1 + 8)))
    {
      return;
    }
  }

  std::swap[abi:nn200100]<md::RouteRangeAnnotationRequest>(a1, a2);
}

void std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavEtaLabeler::extractAndSortAnnotations(VKRouteInfo *,std::function<BOOL ()(md::RouteRangeAnnotationRequest const&)>)::$_0 &,md::RouteRangeAnnotationRequest*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavEtaLabeler::extractAndSortAnnotations(VKRouteInfo *,std::function<BOOL ()(md::RouteRangeAnnotationRequest const&)>)::$_0 &,md::RouteRangeAnnotationRequest*,0>(a1, a2, a3, a4);
  v10 = md::RouteRangeAnnotationRequest::etaType(*(a5 + 8));
  v11 = md::RouteRangeAnnotationRequest::etaType(*(a4 + 8));
  v12 = *(a5 + 8);
  if (v10 == v11)
  {
    v13 = [v12 start];
    v14 = [*(a4 + 8) start];
    if (v13 >= v14 && (v13 != v14 || *(&v13 + 1) >= *(&v14 + 1)))
    {
      return;
    }
  }

  else
  {
    v15 = md::RouteRangeAnnotationRequest::etaType(v12);
    if (v15 >= md::RouteRangeAnnotationRequest::etaType(*(a4 + 8)))
    {
      return;
    }
  }

  std::swap[abi:nn200100]<md::RouteRangeAnnotationRequest>(a4, a5);
  v16 = md::RouteRangeAnnotationRequest::etaType(*(a4 + 8));
  v17 = md::RouteRangeAnnotationRequest::etaType(*(a3 + 8));
  v18 = *(a4 + 8);
  if (v16 == v17)
  {
    v19 = [v18 start];
    v20 = [*(a3 + 8) start];
    if (v19 >= v20 && (v19 != v20 || *(&v19 + 1) >= *(&v20 + 1)))
    {
      return;
    }
  }

  else
  {
    v21 = md::RouteRangeAnnotationRequest::etaType(v18);
    if (v21 >= md::RouteRangeAnnotationRequest::etaType(*(a3 + 8)))
    {
      return;
    }
  }

  std::swap[abi:nn200100]<md::RouteRangeAnnotationRequest>(a3, a4);
  v22 = md::RouteRangeAnnotationRequest::etaType(*(a3 + 8));
  v23 = md::RouteRangeAnnotationRequest::etaType(*(a2 + 8));
  v24 = *(a3 + 8);
  if (v22 == v23)
  {
    v25 = [v24 start];
    v26 = [*(a2 + 8) start];
    if (v25 >= v26 && (v25 != v26 || *(&v25 + 1) >= *(&v26 + 1)))
    {
      return;
    }
  }

  else
  {
    v27 = md::RouteRangeAnnotationRequest::etaType(v24);
    if (v27 >= md::RouteRangeAnnotationRequest::etaType(*(a2 + 8)))
    {
      return;
    }
  }

  std::swap[abi:nn200100]<md::RouteRangeAnnotationRequest>(a2, a3);
  v28 = md::RouteRangeAnnotationRequest::etaType(*(a2 + 8));
  v29 = md::RouteRangeAnnotationRequest::etaType(*(a1 + 8));
  v30 = *(a2 + 8);
  if (v28 == v29)
  {
    v31 = [v30 start];
    v32 = [*(a1 + 8) start];
    if (v31 >= v32 && (v31 != v32 || *(&v31 + 1) >= *(&v32 + 1)))
    {
      return;
    }
  }

  else
  {
    v33 = md::RouteRangeAnnotationRequest::etaType(v30);
    if (v33 >= md::RouteRangeAnnotationRequest::etaType(*(a1 + 8)))
    {
      return;
    }
  }

  std::swap[abi:nn200100]<md::RouteRangeAnnotationRequest>(a1, a2);
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavEtaLabeler::extractAndSortAnnotations(VKRouteInfo *,std::function<BOOL ()(md::RouteRangeAnnotationRequest const&)>)::$_0 &,md::RouteRangeAnnotationRequest*>(uint64_t a1, __int128 *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavEtaLabeler::extractAndSortAnnotations(VKRouteInfo *,std::function<BOOL ()(md::RouteRangeAnnotationRequest const&)>)::$_0 &,md::RouteRangeAnnotationRequest*,0>(a1, a1 + 48, (a2 - 3));
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavEtaLabeler::extractAndSortAnnotations(VKRouteInfo *,std::function<BOOL ()(md::RouteRangeAnnotationRequest const&)>)::$_0 &,md::RouteRangeAnnotationRequest*,0>(a1, a1 + 48, a1 + 96, (a2 - 3));
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavEtaLabeler::extractAndSortAnnotations(VKRouteInfo *,std::function<BOOL ()(md::RouteRangeAnnotationRequest const&)>)::$_0 &,md::RouteRangeAnnotationRequest*,0>(a1, a1 + 48, a1 + 96, a1 + 144, (a2 - 3));
        return 1;
    }

    goto LABEL_14;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 != 2)
  {
LABEL_14:
    v11 = (a1 + 96);
    std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavEtaLabeler::extractAndSortAnnotations(VKRouteInfo *,std::function<BOOL ()(md::RouteRangeAnnotationRequest const&)>)::$_0 &,md::RouteRangeAnnotationRequest*,0>(a1, a1 + 48, a1 + 96);
    v12 = (a1 + 144);
    if ((a1 + 144) == a2)
    {
      return 1;
    }

    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = md::RouteRangeAnnotationRequest::etaType(v12[1]);
      v16 = md::RouteRangeAnnotationRequest::etaType(v11[1]);
      v17 = v12[1];
      if (v15 == v16)
      {
        v18 = [(md::RouteRangeAnnotationRequest *)v17 start];
        v19 = [(md::RouteRangeAnnotationRequest *)v11[1] start];
        if (v18 >= v19 && (v18 != v19 || *(&v18 + 1) >= *(&v19 + 1)))
        {
          goto LABEL_40;
        }
      }

      else
      {
        v20 = md::RouteRangeAnnotationRequest::etaType(v17);
        if (v20 >= md::RouteRangeAnnotationRequest::etaType(v11[1]))
        {
          goto LABEL_40;
        }
      }

      v21 = *v12;
      *v12 = 0;
      v12[1] = 0;
      *v44 = v21;
      v22 = v12[3];
      v45 = v12[2];
      v46 = v22;
      v47 = *(v12 + 32);
      v48 = v12[5];
      if (v48)
      {
        *(v22 + 2) = &v46;
        v12[2] = (v12 + 3);
        v12[3] = 0;
        v12[5] = 0;
      }

      else
      {
        v45 = &v46;
      }

      v23 = 0;
      for (i = v13; ; i -= 48)
      {
        v25 = (a1 + i);
        v26 = *(a1 + i + 96);
        v25[12] = 0;
        v25[18] = v26;

        v27 = *(a1 + i + 104);
        v25[13] = 0;
        v28 = *(a1 + i + 152);
        v25[19] = v27;

        v29 = (a1 + i + 112);
        std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__move_assign((a1 + i + 160), v29);
        if (i == -96)
        {
          v35 = a1;
          goto LABEL_36;
        }

        v30 = md::RouteRangeAnnotationRequest::etaType(v44[1]);
        v31 = a1 + i;
        if (v30 == md::RouteRangeAnnotationRequest::etaType(*(a1 + i + 56)))
        {
          break;
        }

        v34 = md::RouteRangeAnnotationRequest::etaType(v44[1]);
        if (v34 >= md::RouteRangeAnnotationRequest::etaType(*(v31 + 56)))
        {
          goto LABEL_35;
        }

LABEL_33:
        v23 = v25[12];
      }

      v32 = [(md::RouteRangeAnnotationRequest *)v44[1] start];
      v33 = [*(v31 + 56) start];
      if (v32 < v33 || v32 == v33 && *(&v32 + 1) < *(&v33 + 1))
      {
        goto LABEL_33;
      }

LABEL_35:
      v29 = (a1 + i + 112);
      v35 = a1 + i + 96;
LABEL_36:
      v36 = *v35;
      *v35 = v44[0];

      v37 = *(v35 + 8);
      *(v35 + 8) = v44[1];

      v39 = *(v35 + 24);
      v38 = (v35 + 24);
      std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(v39);
      v40 = v46;
      *v29 = v45;
      *v38 = v40;
      v41 = v48;
      *(v38 + 2) = v48;
      if (v41)
      {
        v42 = 0;
        *(v40 + 2) = v38;
        v46 = 0;
        v48 = 0;
      }

      else
      {
        *v29 = v38;
        v42 = v46;
      }

      ++v14;
      std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(v42);

      if (v14 == 8)
      {
        return v12 + 6 == a2;
      }

LABEL_40:
      v11 = v12;
      v13 += 48;
      v12 += 6;
      if (v12 == a2)
      {
        return 1;
      }
    }
  }

  v5 = md::RouteRangeAnnotationRequest::etaType(*(a2 - 5));
  v6 = md::RouteRangeAnnotationRequest::etaType(*(a1 + 8));
  v7 = *(a2 - 5);
  if (v5 != v6)
  {
    v43 = md::RouteRangeAnnotationRequest::etaType(v7);
    if (v43 >= md::RouteRangeAnnotationRequest::etaType(*(a1 + 8)))
    {
      return 1;
    }

    goto LABEL_44;
  }

  v8 = [(md::RouteRangeAnnotationRequest *)v7 start];
  v9 = [*(a1 + 8) start];
  if (v8 < v9 || (result = 1, v8 == v9) && *(&v8 + 1) < *(&v9 + 1))
  {
LABEL_44:
    std::swap[abi:nn200100]<md::RouteRangeAnnotationRequest>(a1, (a2 - 3));
    return 1;
  }

  return result;
}

void sub_1B2D43D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, void *a12)
{
  std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(a12);

  _Unwind_Resume(a1);
}

uint64_t md::LabelNavEtaLabeler::indexForRoute(id *this, GEOComposedRoute *a2)
{
  v3 = a2;
  v4 = [this[3] routeInfo];
  v5 = [v4 route];

  if (v5 != v3)
  {
    for (i = 0; ; ++i)
    {
      v7 = this[3];
      v8 = [v7 alternateRoutes];
      v9 = [v8 count];

      if (i >= v9)
      {
        break;
      }

      v10 = this[3];
      v11 = [v10 alternateRoutes];
      v12 = [v11 objectAtIndex:i];
      v13 = [v12 route];

      if (v13 == v3)
      {
        v14 = (i + 1);
        goto LABEL_8;
      }
    }
  }

  v14 = 0;
LABEL_8:

  return v14;
}

void md::LabelNavEtaLabeler::clearETALabels(md::LabelNavEtaLabeler *this)
{
  v2 = this + 360;
  std::__tree<std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::__map_value_compare<VKLabelNavRouteEta * {__strong},std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::less<VKLabelNavRouteEta * {__strong}>,true>,geo::allocator_adapter<std::__value_type<VKLabelNavRouteEta * {__strong},geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,mdm::zone_mallocator>>::destroy(*(this + 45));
  *(this + 47) = 0;
  *(this + 44) = v2;
  *(this + 45) = 0;
  v3 = *(this + 32);
  v4 = this + 264;
  if (v3 != this + 264)
  {
    do
    {
      v5 = *(v3 + 5);
      v6 = *(v3 + 6);
      while (v5 != v6)
      {
        v7 = *(v5 + 56);
        v8 = [v7 hasLabel];

        if (v8)
        {
          v9 = *(v5 + 56);
          [v9 clearLabel];
        }

        v5 += 72;
      }

      v10 = *(v3 + 1);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = *(v3 + 2);
          v12 = *v11 == v3;
          v3 = v11;
        }

        while (!v12);
      }

      v3 = v11;
    }

    while (v11 != v4);
  }
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_stringstream[abi:nn200100](uint64_t a1)
{
  *(a1 + 184) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = &unk_1F29F0EC0;
  *a1 = &unk_1F29F0FD8;
  *(a1 + 136) = &unk_1F29F1000;
  std::ios_base::init((a1 + 136), (a1 + 24));
  *(a1 + 272) = 0;
  *(a1 + 280) = -1;
  *a1 = &unk_1F29F0E98;
  *(a1 + 136) = &unk_1F29F0EE8;
  *(a1 + 16) = &unk_1F29F0EC0;
  std::basic_stringbuf<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_stringbuf[abi:nn200100](a1 + 24, 24);
  return a1;
}

void sub_1B2D440D4(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](v1);
  _Unwind_Resume(a1);
}

mdm::zone_mallocator *std::basic_stringstream<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::str[abi:nn200100](mdm::zone_mallocator *__dst, uint64_t a2)
{
  v2 = __dst;
  v3 = *(a2 + 112);
  v4 = *(a2 + 128);
  if ((v4 & 0x10) != 0)
  {
    v6 = *(a2 + 120);
    v7 = *(a2 + 72);
    if (v6 < v7)
    {
      *(a2 + 120) = v7;
      v6 = v7;
    }

    v8 = (a2 + 64);
  }

  else
  {
    if ((v4 & 8) == 0)
    {
      v5 = 0;
      *(__dst + 24) = v3;
      *(__dst + 23) = 0;
      goto LABEL_17;
    }

    v8 = (a2 + 40);
    v6 = *(a2 + 56);
  }

  v9 = *v8;
  v5 = v6 - *v8;
  *(__dst + 24) = v3;
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (v5 | 7) + 1;
    }

    v11 = mdm::zone_mallocator::instance(__dst);
    v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<char>(v11, v10);
    *(v2 + 1) = v5;
    *(v2 + 2) = v10 | 0x8000000000000000;
    *v2 = v12;
    v2 = v12;
  }

  else
  {
    *(__dst + 23) = v5;
    if (!v5)
    {
      goto LABEL_17;
    }
  }

  __dst = memmove(v2, v9, v5);
LABEL_17:
  *(v2 + v5) = 0;
  return __dst;
}

void virtual thunk tostd::basic_stringstream<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::~basic_stringstream(mdm::zone_mallocator *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1->__locale_ = &unk_1F29F0E98;
  v1[17].__locale_ = &unk_1F29F0EE8;
  v1[2].__locale_ = &unk_1F29F0EC0;
  v1[3].__locale_ = &unk_1F29F1070;
  if (SHIBYTE(v1[13].__locale_) < 0)
  {
    locale = v1[11].__locale_;
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v3, locale);
  }

  v1[3].__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(v1 + 4);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](&v1[17]);

  JUMPOUT(0x1B8C62190);
}

{
  v1 = (a1 + *(*a1 - 24));
  v1->__locale_ = &unk_1F29F0E98;
  v1[17].__locale_ = &unk_1F29F0EE8;
  v1[2].__locale_ = &unk_1F29F0EC0;
  v1[3].__locale_ = &unk_1F29F1070;
  if (SHIBYTE(v1[13].__locale_) < 0)
  {
    locale = v1[11].__locale_;
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v3, locale);
  }

  v1[3].__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(v1 + 4);
  std::iostream::~basic_iostream();

  JUMPOUT(0x1B8C620C0);
}

void non-virtual thunk tostd::basic_stringstream<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::~basic_stringstream(uint64_t a1)
{
  *(a1 - 16) = &unk_1F29F0E98;
  v2 = a1 + 120;
  *(a1 + 120) = &unk_1F29F0EE8;
  *a1 = &unk_1F29F0EC0;
  *(a1 + 8) = &unk_1F29F1070;
  if (*(a1 + 95) < 0)
  {
    v3 = *(a1 + 72);
    v4 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v4, v3);
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](v2);

  JUMPOUT(0x1B8C62190);
}

{
  *(a1 - 16) = &unk_1F29F0E98;
  *(a1 + 120) = &unk_1F29F0EE8;
  *a1 = &unk_1F29F0EC0;
  *(a1 + 8) = &unk_1F29F1070;
  if (*(a1 + 95) < 0)
  {
    v2 = *(a1 + 72);
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v3, v2);
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::iostream::~basic_iostream();

  JUMPOUT(0x1B8C620C0);
}

void std::basic_stringstream<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::~basic_stringstream(uint64_t a1)
{
  *a1 = &unk_1F29F0E98;
  v2 = a1 + 136;
  *(a1 + 136) = &unk_1F29F0EE8;
  *(a1 + 16) = &unk_1F29F0EC0;
  *(a1 + 24) = &unk_1F29F1070;
  if (*(a1 + 111) < 0)
  {
    v3 = *(a1 + 88);
    v4 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v4, v3);
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](v2);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::~basic_stringstream(uint64_t a1)
{
  *a1 = &unk_1F29F0E98;
  v2 = a1 + 136;
  *(a1 + 136) = &unk_1F29F0EE8;
  *(a1 + 16) = &unk_1F29F0EC0;
  *(a1 + 24) = &unk_1F29F1070;
  if (*(a1 + 111) < 0)
  {
    v3 = *(a1 + 88);
    v4 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v4, v3);
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](v2);
  return a1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,void *>>>::operator()[abi:nn200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[7];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::pair<geo::QuadTile const,std::shared_ptr<md::FlyoverDsmTileData>>::pair[abi:nn200100](uint64_t result, uint64_t a2)
{
  *(result + 24) = 0;
  *(result + 4) = *(a2 + 4);
  *result = *a2;
  *(result + 16) = *(a2 + 16);
  *(result + 24) = *(a2 + 24);
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void md::LabelNavEtaLabeler::debugDraw(md::LabelNavEtaLabeler *this, void **a2, md::NavContext *a3)
{
  v7 = +[VKDebugSettings sharedSettings];
  if (([v7 enableEtaLabelDebugging] & 1) != 0 || (objc_msgSend(v7, "enableEtaLabelRectDebugging") & 1) != 0 || (objc_msgSend(v7, "enableRouteShareSectionDebugging") & 1) != 0 || *(this + 448))
  {
    v6 = md::LayoutContext::debugConsoleForId(a2, 9);
    v4 = md::LayoutContext::debugConsoleForId(a2, 10);
    if (v6 && v4)
    {
      ggl::DebugConsole::begin(v6);
    }
  }
}

void sub_1B2D45B18(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (v21 < 0)
  {
    v23 = STACK[0x3E0];
    v24 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v24, v23);
  }

  STACK[0x560] = &unk_1F29F0E98;
  STACK[0x5E8] = &unk_1F29F0EE8;
  STACK[0x570] = &unk_1F29F0EC0;
  STACK[0x578] = &unk_1F29F1070;
  if (SLOBYTE(STACK[0x5CF]) < 0)
  {
    v25 = STACK[0x5B8];
    v26 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v26, v25);
  }

  STACK[0x578] = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&STACK[0x580]);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](&STACK[0x5E8]);

  _Unwind_Resume(a1);
}

void ___ZN2md18LabelNavEtaLabeler9debugDrawERKNS_13LayoutContextEPNS_10NavContextE_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 440))
  {
    v3 = 0;
    v4 = *(a1 + 32);
    __asm { FMOV            V10.2S, #20.0 }

    do
    {
      v10 = (a2 + 24 * v3);
      v11 = [*v10 route];
      v12 = md::LabelNavEtaLabeler::indexForRoute(v4, v11);

      v13 = *(a1 + 444 + 4 * (v12 % 3));
      v14 = *(a1 + 40);
      v15 = *(a1 + 432);
      v16 = [*v10 route];
      v17 = a1 + 456 + 4 * ((*(a1 + 440) - 1) % 3u);
      v61 = v16;
      for (i = 0; i != 4; ++i)
      {
        v15[12].i8[i] = *(v17 + i);
      }

      v60 = v3;
      v19 = v61;
      (*(**(v4 + 40) + 24))(&v64);
      v20 = v64;
      v63 = v65;
      if (v64 != v65)
      {
        do
        {
          v21 = *(*(v14 + 8) + 176);
          v22 = v19;
          v23 = *&v20[1].index;
          offset = v20->offset;
          if (v20->index != LODWORD(v23) || vabds_f32(offset, v20[1].offset) >= 0.00000011921)
          {
            v25 = offset == 0.0;
            v26 = v20->offset;
            if (offset != 0.0)
            {
              v72 = *v20;
              *&v67 = md::RouteSimplifier::worldPointForPolylineCoordinate(*(v4 + 48), v22, &v72);
              *(&v67 + 1) = v27;
              v68 = v28;
              md::LabelLayoutContext::projectPointToPixel(*(v14 + 24), &v67, v66);
              v2 = v66[0];
              v26 = v20->offset;
              v23 = *&v20[1].index;
            }

            if (v26 <= 0.0)
            {
              index = v20->index;
            }

            else
            {
              index = v20->index + 1;
            }

            if (index == LODWORD(v23))
            {
              v72 = LODWORD(v23);
              *&v67 = md::RouteSimplifier::worldPointForPolylineCoordinate(*(v4 + 48), v22, &v72);
              *(&v67 + 1) = v30;
              v68 = v31;
              md::LabelLayoutContext::projectPointToPixel(*(v14 + 24), &v67, v66);
              v32 = 20.0;
              v33 = v66[0];
              if (offset != 0.0)
              {
                v34 = vsub_f32(v66[0], v2);
                v32 = sqrtf(vaddv_f32(vmul_f32(v34, v34)));
                v15[1] = v2;
                ggl::DebugConsole::drawSymbol(v15, v13);
                if (v32 >= 20.0)
                {
                  v35 = vmul_f32(vmul_n_f32(v34, 1.0 / v32), _D10);
                  do
                  {
                    v32 = v32 + -20.0;
                    v2 = vadd_f32(v2, v35);
                    v15[1] = v2;
                    ggl::DebugConsole::drawSymbol(v15, v13);
                  }

                  while (v32 >= 20.0);
                }
              }

              v25 = 0;
            }

            else
            {
              v32 = 20.0;
              if (index >= LODWORD(v23))
              {
                v33 = v2;
              }

              else
              {
                v36 = *(v14 + 24);
                v67 = *(v36 + 136);
                v68 = *(v36 + 152);
                v69 = *(v36 + 160);
                v70 = *(v36 + 176);
                v37 = *(v4 + 40);
                v72.index = index;
                v72.offset = v23;
                if ((*(*v37 + 32))(v37, a1 + 48, v22, &v67, &v72, v66))
                {
                  md::RouteSimplifier::simplifiedRibbonIndices(*(v4 + 48), v22, index, SLODWORD(v23), (v4 + 80), v21 * ((*v66 + *v66) * *(v36 + 312)) / *(v36 + 1064));
                  v39 = *(v4 + 80);
                  v38 = *(v4 + 88);
                  v19 = v61;
                  if (v39 == v38)
                  {
                    v49 = offset == 0.0;
                    v33 = v2;
                  }

                  else
                  {
                    do
                    {
                      v75 = *v39;
                      v72 = COERCE_POLYLINECOORDINATE(md::RouteSimplifier::worldPointForPolylineCoordinate(*(v4 + 48), v22, &v75));
                      v73 = v40;
                      v74 = v41;
                      md::LabelLayoutContext::projectPointToPixel(*(v14 + 24), &v72, &v71);
                      v33 = v71;
                      if (!v25)
                      {
                        v42 = vsub_f32(v71, v2);
                        v43 = sqrtf(vaddv_f32(vmul_f32(v42, v42)));
                        v44 = 20.0 - v32;
                        if (v43 >= (20.0 - v32))
                        {
                          v45 = v43 - v44;
                          v46 = vmul_n_f32(v42, 1.0 / v43);
                          v47 = vmla_n_f32(v2, v46, v44);
                          v15[1] = v47;
                          ggl::DebugConsole::drawSymbol(v15, v13);
                          v32 = 0.0;
                          if (v45 >= 20.0)
                          {
                            v48 = vmul_f32(v46, _D10);
                            do
                            {
                              v45 = v45 + -20.0;
                              v47 = vadd_f32(v47, v48);
                              v15[1] = v47;
                              ggl::DebugConsole::drawSymbol(v15, v13);
                            }

                            while (v45 >= 20.0);
                          }
                        }

                        else
                        {
                          v45 = v43;
                        }

                        v32 = v32 + v45;
                      }

                      v25 = 0;
                      v49 = 0;
                      ++v39;
                      v2 = v33;
                    }

                    while (v39 != v38);
                  }
                }

                else
                {
                  v49 = offset == 0.0;
                  v33 = v2;
                  v19 = v61;
                }

                v25 = v49;
              }
            }

            if (v20[1].offset == 0.0)
            {
              v2 = v33;
            }

            else
            {
              v72 = v20[1];
              *&v67 = md::RouteSimplifier::worldPointForPolylineCoordinate(*(v4 + 48), v22, &v72);
              *(&v67 + 1) = v50;
              v68 = v51;
              md::LabelLayoutContext::projectPointToPixel(*(v14 + 24), &v67, v66);
              v2 = v66[0];
              if (!v25)
              {
                v52 = vsub_f32(v66[0], v33);
                v53 = sqrtf(vaddv_f32(vmul_f32(v52, v52)));
                v54 = 20.0 - v32;
                if (v53 >= (20.0 - v32))
                {
                  v55 = v53 - v54;
                  v56 = vmul_n_f32(v52, 1.0 / v53);
                  v57 = vmla_n_f32(v33, v56, v54);
                  v15[1] = v57;
                  ggl::DebugConsole::drawSymbol(v15, v13);
                  if (v55 >= 20.0)
                  {
                    v58 = vmul_f32(v56, _D10);
                    do
                    {
                      v55 = v55 + -20.0;
                      v57 = vadd_f32(v57, v58);
                      v15[1] = v57;
                      ggl::DebugConsole::drawSymbol(v15, v13);
                    }

                    while (v55 >= 20.0);
                  }
                }
              }
            }
          }

          v20 += 2;
        }

        while (v20 != v63);
        v20 = v64;
      }

      if (v20)
      {
        v65 = v20;
        operator delete(v20);
      }

      v3 = v60 + 1;
    }

    while (v60 + 1 < *(a1 + 440));
  }
}

float md::LabelNavEtaLabeler::intersectSimplifiedRouteSectionWithFrustum<md::LabelNavEtaLabeler::debugDraw(md::LayoutContext const&,md::NavContext *)::$_1>(md::NavContext const*,geo::Frustum<double> const&,GEOComposedRoute *,float,gm::Range<geo::PolylineCoordinate> const&,md::LabelNavEtaLabeler::debugDraw(md::LayoutContext const&,md::NavContext *)::$_1)const::{lambda(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,md::LabelNavEtaLabeler::debugDraw(md::LayoutContext const&,md::NavContext *)::$_1)#1}::operator()(uint64_t a1, __int128 *a2, __int128 *a3, float32x2_t *a4)
{
  for (i = 0; i != 24; i += 8)
  {
    *(&v26 + i) = *(a3 + i) - *(a2 + i);
  }

  v9 = v27;
  v10 = v26;
  v26 = *a2;
  v27 = *(a2 + 2);
  v28 = v10;
  v29 = v9;
  v24 = 0.0;
  v25 = 0.0;
  if (geo::Intersect::internal::intersection<double,std::array<gm::Plane3<double>,6ul>>(a1, &v26, 2, &v25, &v24))
  {
    if (v25 <= 0.0)
    {
      v22 = *a2;
      v23 = *(a2 + 2);
    }

    else
    {
      *&v22 = gm::Ray<double,3>::at(&v26, v25);
      *(&v22 + 1) = v12;
      v23 = v13;
    }

    if (v24 >= 1.0)
    {
      v20 = *a3;
      v21 = *(a3 + 2);
    }

    else
    {
      *&v20 = gm::Ray<double,3>::at(&v26, v24);
      *(&v20 + 1) = v14;
      v21 = v15;
    }

    v16 = *(*(a1 + 384) + 24);
    md::LabelLayoutContext::projectPointToPixel(v16, &v22, &v19);
    md::LabelLayoutContext::projectPointToPixel(v16, &v20, &v18);
    v17 = v19.f32[0];
    a4[1] = v19;
    return ggl::DebugConsole::drawLine(a4, &v18, v17);
  }

  return result;
}

uint64_t __copy_helper_block_ea8_444c83_ZTSZN2md18LabelNavEtaLabeler9debugDrawERKNS_13LayoutContextEPNS_10NavContextEE3__0(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 444);
  *(result + 452) = *(a2 + 452);
  *(result + 444) = v3;
  do
  {
    *(result + 456 + v2) = *(a2 + 456 + v2);
    v2 += 4;
  }

  while (v2 != 12);
  return result;
}

void md::Logic<md::ElevationLogic,md::ElevationContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::SettingsContext,md::GeometryContext>,gdc::TypeList<md::LayerDataLogicContext>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

BOOL md::ElevationLogic::_startFlatteningScaleAnimation(md::ElevationLogic *this, float a2)
{
  v3 = [[VKTimedAnimation alloc] initWithDuration:a2];
  geo::_retain_ptr<LabelNavRouteContextObserverProxy * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(this + 136, v3);

  [*(this + 18) setTimingFunction:VKAnimationCurveEaseOut];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZN2md14ElevationLogic30_startFlatteningScaleAnimationEf_block_invoke;
  v6[3] = &__block_descriptor_40_e8_v12__0f8l;
  v6[4] = this;
  [*(this + 18) setStepHandler:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___ZN2md14ElevationLogic30_startFlatteningScaleAnimationEf_block_invoke_2;
  v5[3] = &__block_descriptor_40_e8_v12__0B8l;
  v5[4] = this;
  [*(this + 18) setCompletionHandler:v5];
  return md::AnimationRunner::runAnimation(*(this + 16), *(this + 18));
}

uint64_t md::ElevationLogic::elevationSampleAtCoordinate(void *a1, uint64_t a2)
{
  Elevation = a1[34];
  if (Elevation)
  {
    if ((*(a1[20] + 80) & 1) == 0)
    {
      v15 = *(a1[35] + 41936);
      v16 = *v15;
      v17 = v15[1];
      if (v16 != v17)
      {
        v18 = v16;
        while (*v18 != 20)
        {
          v18 += 16;
          if (v18 == v17)
          {
            goto LABEL_16;
          }
        }

        if (v18 != v17)
        {
          v19 = (*(v18 + 8) - 2) < 3;
          goto LABEL_17;
        }
      }

LABEL_16:
      v19 = 0;
      while (1)
      {
LABEL_17:
        if (v16 == v17)
        {
          return 0;
        }

        if (*v16 == 29)
        {
          break;
        }

        v16 += 16;
      }

      if (v16 == v17 || *(v16 + 8) == 0 || !v19)
      {
        return 0;
      }
    }

    v21 = *(a2 + 8);
    v4 = tan(*a2 * 0.5 + 0.785398163);
    v5 = log(v4);
    *&v6.f64[0] = v21;
    v6.f64[1] = v5;
    __asm { FMOV            V2.2D, #0.5 }

    v22 = vmlaq_f64(_Q2, vdupq_n_s64(0x3FC45F306DC9C883uLL), v6);
    v23 = *(&v21 + 1);
    Elevation = md::World::getElevation(Elevation, &v22);
    if ((v12 & 0x100) == 0 || (v12 & 1) == 0)
    {
      v13 = a1[15];
      if (v13)
      {
        v14 = *v13;
        if (*v13)
        {
          v24 = 8;
          md::MapEngine::setNeedsTick(v14, &v24);
        }
      }
    }
  }

  return Elevation;
}

uint64_t ___ZN2md14ElevationLogic30_startFlatteningScaleAnimationEf_block_invoke(uint64_t result, float a2)
{
  v2 = *(result + 32);
  if (*(v2 + 168) < 0.0)
  {
    a2 = 1.0 - a2;
  }

  if (a2 < 0.1)
  {
    a2 = 0.0;
  }

  *(v2 + 172) = a2;
  return result;
}

void ___ZN2md14ElevationLogic30_startFlatteningScaleAnimationEf_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = 1.0;
  if (*(v1 + 168) < 0.0)
  {
    v2 = 0.0;
  }

  *(v1 + 172) = v2;
  *(v1 + 168) = 0;
  v3 = *(v1 + 144);
  if (v3)
  {
    *(v1 + 144) = 0;
  }
}

void *md::Logic<md::ElevationLogic,md::ElevationContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::SettingsContext,md::GeometryContext>,gdc::TypeList<md::LayerDataLogicContext>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a3 + 8) == 0x8BD499FBD96FBB9ELL && (v4 = *(a3 + 32)) != 0)
  {
    v7 = *(a2 + 8);
    md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::SettingsContext,md::GeometryContext>,gdc::TypeList<md::LayerDataLogicContext>>::buildRequiredTuple<md::StyleLogicContext,md::SettingsContext,md::GeometryContext>(&v13, v7);
    v8 = gdc::Context::context<md::LayerDataLogicContext>(v7);
    v10 = v13;
    v11 = v14;
    v12 = v8;
    return (*(*a1 + 160))(a1, a2, &v10, v4);
  }

  else
  {

    return std::string::basic_string[abi:nn200100]<0>(a4, "");
  }
}

uint64_t gdc::ObjectHolder<md::ElevationContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::ElevationContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29F13B0;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0x1000C40C50DD75CLL);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::ElevationContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29F13B0;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C40C50DD75CLL);
  }

  return a1;
}

void md::ElevationLogic::createDebugNode(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:nn200100]<0>(&v77, "ElevationLogic");
  gdc::DebugTreeNode::DebugTreeNode(a2, &v77);
  if (SHIBYTE(v78) < 0)
  {
    operator delete(v77);
  }

  v4 = *(*(a1 + 280) + 41936);
  v5 = *v4;
  v6 = v4[1];
  while (v5 != v6)
  {
    if (*v5 == 29)
    {
      if (v5 != v6)
      {
        v7 = *(v5 + 8);
        goto LABEL_10;
      }

      break;
    }

    v5 += 16;
  }

  v7 = 0;
LABEL_10:
  std::string::basic_string[abi:nn200100]<0>(&v77, "groundMode");
  gdc::DebugTreeValue::DebugTreeValue(v74, v7);
  gdc::DebugTreeNode::addProperty(a2, &v77, v74);
  if (v76 < 0)
  {
    operator delete(v75);
  }

  if (SHIBYTE(v78) < 0)
  {
    operator delete(v77);
  }

  std::string::basic_string[abi:nn200100]<0>(&v77, "forceElevation");
  v8 = +[VKDebugSettings sharedSettings];
  gdc::DebugTreeValue::DebugTreeValue(v71, [v8 daVinciForceElevatedGround]);
  gdc::DebugTreeNode::addProperty(a2, &v77, v71);
  if (v73 < 0)
  {
    operator delete(v72);
  }

  if (SHIBYTE(v78) < 0)
  {
    operator delete(v77);
  }

  std::string::basic_string[abi:nn200100]<0>(&v77, "isGroundElevated");
  gdc::DebugTreeValue::DebugTreeValue(v68, *(*(a1 + 160) + 80));
  gdc::DebugTreeNode::addProperty(a2, &v77, v68);
  if (v70 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v78) < 0)
  {
    operator delete(v77);
  }

  std::string::basic_string[abi:nn200100]<0>(&v77, "groundElevationTransitionProgress");
  gdc::DebugTreeValue::DebugTreeValue(v65, *(*(a1 + 160) + 76) != 0);
  gdc::DebugTreeNode::addProperty(a2, &v77, v65);
  if (v67 < 0)
  {
    operator delete(v66);
  }

  if (SHIBYTE(v78) < 0)
  {
    operator delete(v77);
  }

  v9 = *(a1 + 280);
  if (v9)
  {
    v10 = v9 + 40960;
    v11 = *(v10 + 912);
    v12 = *(v10 + 920);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = gdc::Camera::cameraFrame(v11);
      v14 = *v13;
      v36 = *(v13 + 8);
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    else
    {
      v15 = gdc::Camera::cameraFrame(v11);
      v14 = *v15;
      v36 = *(v15 + 8);
    }

    v16 = *(a1 + 160);
    std::string::basic_string[abi:nn200100]<0>(&v77, "ShouldElevateInfo");
    v17 = gdc::DebugTreeNode::createChildNode(a2, &v77);
    if (SHIBYTE(v78) < 0)
    {
      operator delete(v77);
    }

    std::string::basic_string[abi:nn200100]<0>(&v77, "FocusPoint");
    gdc::DebugTreeNode::createChildNode(v17, &v77);
    if (SHIBYTE(v78) < 0)
    {
      operator delete(v77);
    }

    v18 = *(*(*(a1 + 280) + 41704) + 320);
    if (v18)
    {
      v19 = tan(v14 * 0.5 + 0.785398163);
      v20 = log(v19);
      *&v21.f64[0] = v36;
      v21.f64[1] = v20;
      __asm { FMOV            V1.2D, #0.5 }

      v27 = vmlaq_f64(_Q1, vdupq_n_s64(0x3FC45F306DC9C883uLL), v21);
      LOWORD(v77) = 6655;
      DWORD1(v77) = 0x1FFFFFF - vcvtmd_s64_f64(vmuld_lane_f64(33554432.0, v27, 1));
      DWORD2(v77) = vcvtmd_s64_f64(33554432.0 * v27.f64[0]);
      v78 = 0;
      v79 = 1;
      md::DaVinciGroundMetaData::queryMetaTileFromTile(&v37, v18);
      if (v37.__r_.__value_.__r.__words[0])
      {
        v28 = *(v37.__r_.__value_.__r.__words[0] + 169);
        v29 = *(v37.__r_.__value_.__r.__words[0] + 172);
        v30 = *(v37.__r_.__value_.__r.__words[0] + 176);
        std::string::basic_string[abi:nn200100]<0>(&v77, "Metadata");
        v31 = gdc::DebugTreeNode::createChildNode(v17, &v77);
        if (SHIBYTE(v78) < 0)
        {
          operator delete(v77);
        }

        std::string::basic_string[abi:nn200100]<0>(&v77, "x");
        gdc::DebugTreeValue::DebugTreeValue(v62, v30);
        gdc::DebugTreeNode::addProperty(v31, &v77, v62);
        if (v64 < 0)
        {
          operator delete(v63);
        }

        if (SHIBYTE(v78) < 0)
        {
          operator delete(v77);
        }

        std::string::basic_string[abi:nn200100]<0>(&v77, "y");
        gdc::DebugTreeValue::DebugTreeValue(v59, v29);
        gdc::DebugTreeNode::addProperty(v31, &v77, v59);
        if (v61 < 0)
        {
          operator delete(v60);
        }

        if (SHIBYTE(v78) < 0)
        {
          operator delete(v77);
        }

        std::string::basic_string[abi:nn200100]<0>(&v77, "z");
        gdc::DebugTreeValue::DebugTreeValue(v56, v28);
        gdc::DebugTreeNode::addProperty(v31, &v77, v56);
        if (v58 < 0)
        {
          operator delete(v57);
        }

        if (SHIBYTE(v78) < 0)
        {
          operator delete(v77);
        }
      }

      if (v37.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v37.__r_.__value_.__l.__size_);
      }
    }

    std::string::basic_string[abi:nn200100]<0>(&v77, "shouldElevateGround");
    gdc::DebugTreeValue::DebugTreeValue(v53, v16[40]);
    gdc::DebugTreeNode::addProperty(v17, &v77, v53);
    if (v55 < 0)
    {
      operator delete(v54);
    }

    if (SHIBYTE(v78) < 0)
    {
      operator delete(v77);
    }

    std::string::basic_string[abi:nn200100]<0>(&v77, "hasMetaData");
    gdc::DebugTreeValue::DebugTreeValue(v50, v16[41]);
    gdc::DebugTreeNode::addProperty(v17, &v77, v50);
    if (v52 < 0)
    {
      operator delete(v51);
    }

    if (SHIBYTE(v78) < 0)
    {
      operator delete(v77);
    }

    std::string::basic_string[abi:nn200100]<0>(&v77, "needsMetaData");
    gdc::DebugTreeValue::DebugTreeValue(v47, v16[42]);
    gdc::DebugTreeNode::addProperty(v17, &v77, v47);
    if (v49 < 0)
    {
      operator delete(v48);
    }

    if (SHIBYTE(v78) < 0)
    {
      operator delete(v77);
    }

    std::string::basic_string[abi:nn200100]<0>(&v77, "targetInCuratedArea");
    gdc::DebugTreeValue::DebugTreeValue(v44, v16[43]);
    gdc::DebugTreeNode::addProperty(v17, &v77, v44);
    if (v46 < 0)
    {
      operator delete(v45);
    }

    if (SHIBYTE(v78) < 0)
    {
      operator delete(v77);
    }

    std::string::basic_string[abi:nn200100]<0>(&v77, "targetIsInLowZoom");
    gdc::DebugTreeValue::DebugTreeValue(v41, v16[44]);
    gdc::DebugTreeNode::addProperty(v17, &v77, v41);
    if (v43 < 0)
    {
      operator delete(v42);
    }

    if (SHIBYTE(v78) < 0)
    {
      operator delete(v77);
    }

    std::string::basic_string[abi:nn200100]<0>(&v77, "flags");
    if (v16[46] == 1)
    {
      v32 = v16[45];
    }

    else
    {
      v32 = 0;
    }

    v33 = 0;
    *(&v37.__r_.__value_.__s + 23) = 8;
    strcpy(&v37, "00000000");
    v34 = 7;
    do
    {
      if ((v32 >> v33))
      {
        if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = &v37;
        }

        else
        {
          v35 = v37.__r_.__value_.__r.__words[0];
        }

        v35->__r_.__value_.__s.__data_[v34] = 49;
      }

      ++v33;
      --v34;
    }

    while (v33 != 8);
    gdc::DebugTreeValue::DebugTreeValue(v38, &v37);
    gdc::DebugTreeNode::addProperty(v17, &v77, v38);
    if (v40 < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v78) < 0)
    {
      operator delete(v77);
    }
  }
}

void sub_1B2D471D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  a12 = (v13 + 72);
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&a12);
  a12 = (v13 + 48);
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&a12);
  if (*(v13 + 47) < 0)
  {
    operator delete(*(v13 + 24));
  }

  if (*(v13 + 23) < 0)
  {
    operator delete(*v13);
  }

  _Unwind_Resume(a1);
}

double md::ElevationLogic::didBecomeInactive(md::ElevationLogic *this)
{
  result = 0.0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 11) = 0u;
  return result;
}

void md::ElevationLogic::~ElevationLogic(md::ElevationLogic *this)
{
  md::ElevationLogic::~ElevationLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29F11D8;
  v2 = *(this + 18);
  if (v2)
  {
    [v2 stop];
    v3 = *(this + 18);
    if (v3)
    {
      *(this + 18) = 0;
    }
  }

  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 416);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 336);
  if (*(this + 328) == 1)
  {
    std::__function::__value_func<void ()(std::optional<double> const&)>::~__value_func[abi:nn200100](this + 296);
  }

  v4 = *(this + 33);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  *(this + 17) = &unk_1F2A3EF58;

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void sub_1B2D473C4(_Unwind_Exception *a1)
{
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(v1 + 416);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(v1 + 336);
  if (*(v1 + 328) == 1)
  {
    std::__function::__value_func<void ()(std::optional<double> const&)>::~__value_func[abi:nn200100](v1 + 296);
  }

  v3 = *(v1 + 264);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  *(v1 + 136) = &unk_1F2A3EF58;

  *v1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 80));
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(std::optional<double> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void geo::_retain_ptr<VKTimedAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A3EF58;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKTimedAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A3EF58;

  return a1;
}

void std::__function::__func<md::ElevationLogic::ElevationLogic(md::World *,md::MapEngine *,md::RunLoopController *,md::AnimationRunner const*,BOOL,md::DaVinciTransitionManager const*,NSObject  {objcproto17OS_dispatch_queue}*)::$_0,std::allocator<md::ElevationLogic::ElevationLogic(md::World *,md::MapEngine *,md::RunLoopController *,md::AnimationRunner const*,BOOL,md::DaVinciTransitionManager const*,NSObject  {objcproto17OS_dispatch_queue}*)::$_0>,void ()(BOOL)>::operator()()
{
  v0 = [MEMORY[0x1E69A2610] modernLoader];
  [v0 shrinkDiskCacheToSize:0 callbackQ:MEMORY[0x1E69E96A0] finished:&__block_literal_global_6486];
}

void ___ZZN2md14ElevationLogicC1EPNS_5WorldEPNS_9MapEngineEPNS_17RunLoopControllerEPKNS_15AnimationRunnerEbPKNS_24DaVinciTransitionManagerEPU28objcproto17OS_dispatch_queue8NSObjectENK3__0clEb_block_invoke()
{
  v0 = [MEMORY[0x1E69A2610] modernLoader];
  [v0 clearAllCaches];

  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  [v1 postNotificationName:@"VKShouldFlushTileCachesNotification" object:0];
}

uint64_t md::ElevationLogic::setElevationAdjustmentFeedback(uint64_t result, uint64_t a2)
{
  v2 = result;
  v10[3] = *MEMORY[0x1E69E9840];
  v3 = (result + 296);
  v4 = *(result + 328);
  if (v4 == *(a2 + 32))
  {
    if (*(result + 328))
    {
      std::__function::__value_func<void ()(std::optional<double> const&)>::__value_func[abi:nn200100](v8, a2);
      if (v3 != v8)
      {
        v5 = v9;
        v6 = *(v2 + 320);
        if (v9 == v8)
        {
          if (v6 == v3)
          {
            (*(*v9 + 24))();
            (*(*v9 + 32))(v9);
            v9 = 0;
            (*(**(v2 + 320) + 24))(*(v2 + 320), v8);
            (*(**(v2 + 320) + 32))(*(v2 + 320));
            *(v2 + 320) = 0;
            v9 = v8;
            (*(v10[0] + 24))(v10, v3);
            (*(v10[0] + 32))(v10);
          }

          else
          {
            (*(*v9 + 24))();
            (*(*v9 + 32))(v9);
            v9 = *(v2 + 320);
          }

          *(v2 + 320) = v3;
        }

        else if (v6 == v3)
        {
          (*(*v6 + 24))(*(v2 + 320), v8);
          (*(**(v2 + 320) + 32))(*(v2 + 320));
          *(v2 + 320) = v9;
          v9 = v8;
        }

        else
        {
          v9 = *(v2 + 320);
          *(v2 + 320) = v5;
        }
      }

      return std::__function::__value_func<void ()(std::optional<double> const&)>::~__value_func[abi:nn200100](v8);
    }
  }

  else
  {
    v7 = result + 296;
    if (v4)
    {
      result = std::__function::__value_func<void ()(std::optional<double> const&)>::~__value_func[abi:nn200100](v7);
      *(v2 + 328) = 0;
    }

    else
    {
      result = std::__function::__value_func<void ()(std::optional<double> const&)>::__value_func[abi:nn200100](v7, a2);
      *(v2 + 328) = 1;
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(std::optional<double> const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<md::LabelStyleContext::applyScales(md::StyleSettingsObjectNode const*)::$_3,std::allocator<md::LabelStyleContext::applyScales(md::StyleSettingsObjectNode const*)::$_3>,void ()(unsigned long,float)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F14B0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::LabelStyleContext::applyScales(md::StyleSettingsObjectNode const*)::$_2,std::allocator<md::LabelStyleContext::applyScales(md::StyleSettingsObjectNode const*)::$_2>,void ()(unsigned long,float)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F1468;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::LabelStyleContext::applyScales(md::StyleSettingsObjectNode const*)::$_1,std::allocator<md::LabelStyleContext::applyScales(md::StyleSettingsObjectNode const*)::$_1>,void ()(unsigned long,float)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F1420;
  a2[1] = v2;
  return result;
}