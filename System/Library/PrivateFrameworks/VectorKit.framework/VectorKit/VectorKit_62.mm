char *md::PointLabelFeature::newIconPart(uint64_t *a1, void *a2)
{
  v74 = *MEMORY[0x1E69E9840];
  size = (*(*a1 + 64))(a1);
  if (size && *(a1[60] + 352) != *(a1[60] + 360))
  {
    v5 = mdm::zone_mallocator::instance(size);
    v6 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v5, 0x2A8uLL);
    v7 = *a2;
    md::ImageLabelPart::ImageLabelPart(v6);
    *v8 = &unk_1F2A272B0;
    v9 = a1[60];
    v8[80] = v9;
    v10 = a1[61];
    v8[81] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      v9 = a1[60];
    }

    *(v6 + 41) = 0u;
    v11 = *(v9 + 352);
    v12 = *(v7 + 176);
    v13 = vmul_n_f32(*v11, v12);
    v14 = vmul_n_f32(v11[1], -v12);
    v72.__r_.__value_.__l.__data_ = v14;
    v72.__r_.__value_.__r.__words[1] = vadd_f32(v13, v14);
    LODWORD(v11) = v11[2].u8[0];
    v6[672] = v11;
    v60 = v13;
    if (v11 == 1)
    {
      v15 = v13.f32[1];
      v16 = fmaxf(v13.f32[0], v13.f32[1]) * 0.5;
      *(v6 + 164) = v16;
      v68 = vmla_f32(v14, 0x3F0000003F000000, v13);
      *&v69 = v16;
      md::LabelPart::LabelPartLayoutState::setCollisionCircle((v6 + 72), &v68);
      md::LabelPart::LabelPartLayoutState::setCollisionCircle((v6 + 312), &v68);
    }

    else
    {
      *(v6 + 660) = vmul_n_f32(v13, v12 * 0.5);
      md::CollisionObject::resetWithRects(v6 + 9, 1u);
      md::CollisionObject::addRect((v6 + 72), &v72);
      md::CollisionObject::resetWithRects(v6 + 39, 1u);
      md::CollisionObject::addRect((v6 + 312), &v72);
      v15 = v60.f32[1];
    }

    *(v6 + 167) = 0.5 - (fminf(v15, v60.f32[0]) * 0.5);
    return v6;
  }

  v17 = a2[2];
  v18 = *(v17 + 296);
  if (!v18)
  {
    size = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(a2[2], 0);
    v18 = *size;
    *(v17 + 296) = *size;
  }

  if (!*(v18 + 68) || (size = (*(*a1 + 680))(a1, a2), (v6 = size) == 0))
  {
    v19 = a2[1];
    if (v19[1333] == 1)
    {
      if (v19[1358])
      {
        v20 = a2[2];
        v21 = *(v20 + 296);
        if (!v21)
        {
          size = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(a2[2], 0);
          v21 = *size;
          *(v20 + 296) = *size;
        }

        if (*(v21 + 88) != 10)
        {
          goto LABEL_35;
        }

LABEL_21:
        a2[9] = (*(*a1 + 736))(a1, a2);
        v23 = a2[2];
        if (!*(v23 + 296))
        {
          *(v23 + 296) = *md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(a2[2], 0);
        }

        (*(*a1 + 696))(&v72, a1);
        v24 = *(a2 + 84);
        if (v24 == v72.__r_.__value_.__s.__data_[4])
        {
          if (*(a2 + 84))
          {
            *(a2 + 20) = v72.__r_.__value_.__l.__data_;
          }
        }

        else
        {
          if (v24)
          {
            v25 = 0;
          }

          else
          {
            *(a2 + 20) = v72.__r_.__value_.__l.__data_;
            v25 = 1;
          }

          *(a2 + 84) = v25;
        }

        md::PointLabelFeature::customImageData(&v72, a1);
        if (*(a2 + 127) < 0)
        {
          operator delete(a2[13]);
        }

        *(a2 + 13) = v72;
        *(&v72.__r_.__value_.__s + 23) = 0;
        v72.__r_.__value_.__s.__data_[0] = 0;
        std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::operator=[abi:nn200100]((a2 + 16), v73);
        std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::~__value_func[abi:nn200100](v73);
        if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v72.__r_.__value_.__l.__data_);
        }

        md::PointLabelFeatureBase::newBalloonWithDotPart(a2);
      }

      v22 = atomic_load(v19 + 1328);
      if (v22 & 1) != 0 && (v19[1333])
      {
        goto LABEL_21;
      }
    }

LABEL_35:
    v26 = a2[2];
    v27 = *(v26 + 296);
    if (!v27)
    {
      size = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(a2[2], 0);
      v27 = *size;
      *(v26 + 296) = *size;
    }

    if (*(v27 + 88) == 11)
    {
      a2[9] = (*(*a1 + 736))(a1, a2);
      v28 = a2[2];
      if (!*(v28 + 296))
      {
        *(v28 + 296) = *md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(a2[2], 0);
      }

      (*(*a1 + 696))(&v72, a1);
      v29 = *(a2 + 84);
      if (v29 == v72.__r_.__value_.__s.__data_[4])
      {
        if (*(a2 + 84))
        {
          *(a2 + 20) = v72.__r_.__value_.__l.__data_;
        }
      }

      else
      {
        if (v29)
        {
          v30 = 0;
        }

        else
        {
          *(a2 + 20) = v72.__r_.__value_.__l.__data_;
          v30 = 1;
        }

        *(a2 + 84) = v30;
      }

      v63 = a2;
      md::PointLabelFeatureBase::newRingIconPart(md::PartCreationContext const&)::$_0::operator()(&v72, &v63, 1);
    }

    v68 = 0;
    v69 = 0;
    v70 = 0;
    v64 = 0;
    v31 = a2[2];
    v32 = *(v31 + 272);
    if (!v32)
    {
      size = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(a2[2]);
      v32 = *size;
      *(v31 + 272) = *size;
    }

    if (*(v32 + 69) == 6)
    {
      v33 = a2[8];
      v34 = atomic_load((*a2 + 3426));
      md::PointLabelFeatureElement::getSummaryIconInfos(&v72, v33, 2, v34 & 1);
      if (v73[8] == 1)
      {
        if (v72.__r_.__value_.__r.__words[0] != v72.__r_.__value_.__l.__size_)
        {
          v36 = a2[1];
          v35 = a2[2];
          v37 = *a2;
          v38 = *(v72.__r_.__value_.__r.__words[0] + 4);
          v61 = *v72.__r_.__value_.__l.__data_;
          v39 = *(v35 + 37);
          if (!v39)
          {
            v40 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(v35, 0);
            v39 = *v40;
            *(v35 + 37) = *v40;
          }

          v62[0] = 0;
          v62[4] = 0;
          md::PointLabelFeature::customImageData(__p, a1);
          md::LabelStyle::createIcon(&v63, v35, v37, v36, a1 + 87, 0, v61, v38, 0, v39, v62, __p);
        }

        v63 = &v72;
        std::vector<md::PointLabelSummaryIconInfo,geo::allocator_adapter<md::PointLabelSummaryIconInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v63);
      }
    }

    v41 = v68;
    v42 = v69;
    if (v68 == v69)
    {
      v44 = a2[1];
      v43 = a2[2];
      v45 = *a2;
      v46 = (*(*a1 + 736))(a1, a2);
      v47 = a2[2];
      if (!*(v47 + 296))
      {
        *(v47 + 296) = *md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(a2[2], 0);
      }

      (*(*a1 + 696))(&v63, a1);
      md::PointLabelFeature::customImageData(&v65, a1);
      md::LabelStyle::pointIcon(&v72, v43, v45, v44, a1 + 87, v46, &v63, 0, (a2 + 4), 0, 255, 0, &v65);
      std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::~__value_func[abi:nn200100](&v66);
      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
      }

      if (v72.__r_.__value_.__r.__words[0])
      {
        std::vector<std::shared_ptr<md::LabelIcon>,geo::allocator_adapter<std::shared_ptr<md::LabelIcon>,mdm::zone_mallocator>>::push_back[abi:nn200100](&v68, &v72);
        md::PointLabelFeature::appendAlternateIcons(a1, a2, 0, &v68, &v64);
      }

      size = v72.__r_.__value_.__l.__size_;
      if (v72.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v72.__r_.__value_.__l.__size_);
      }

      v41 = v68;
      v42 = v69;
    }

    if (v41 == v42)
    {
      v6 = 0;
    }

    else
    {
      v48 = v42 - v41;
      v49 = v64;
      v50 = mdm::zone_mallocator::instance(size);
      if (v48 > 0x10 || v49)
      {
        v6 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v50, 0x3B8uLL);
        v51 = md::PointIconLabelPart::PointIconLabelPart(v6, v68, *a2, a2[1], a2[2], 0);
        *v6 = &unk_1F29ECEF0;
        *(v6 + 106) = 0;
        *(v6 + 108) = 0;
        *(v6 + 107) = 0;
        v6[872] = v71;
        v52 = v68;
        v53 = v69;
        v54 = v69 - v68;
        if (v69 == v68)
        {
          v58 = v68;
        }

        else
        {
          if ((v54 >> 4) >> 60)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v55 = mdm::zone_mallocator::instance(v51);
          v56 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::LabelIcon>>(v55, v54 >> 4);
          *(v6 + 106) = v56;
          *(v6 + 107) = v56;
          *(v6 + 108) = v56 + v54;
          do
          {
            *v56 = *v52;
            v57 = *(v52 + 1);
            v56[1] = v57;
            if (v57)
            {
              atomic_fetch_add_explicit((v57 + 8), 1uLL, memory_order_relaxed);
            }

            v52 += 16;
            v56 += 2;
          }

          while (v52 != v53);
          *(v6 + 107) = v56;
          LODWORD(v52) = v68;
          v58 = v69;
        }

        *(v6 + 112) = 0;
        *(v6 + 55) = 0u;
        *(v6 + 114) = 0;
        *(v6 + 230) = 1065353216;
        v6[924] = 0;
        *(v6 + 116) = 0;
        *(v6 + 234) = 1065353216;
        v6[940] = 0;
        v6[944] = ((v58 - v52) >> 4) - 1;
        *(v6 + 945) = 0;
        v6[947] = 0;
      }

      else
      {
        v6 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v50, 0x350uLL);
        md::PointIconLabelPart::PointIconLabelPart(v6, v68, *a2, a2[1], a2[2], 0);
      }
    }

    v72.__r_.__value_.__r.__words[0] = &v68;
    std::vector<std::shared_ptr<md::LabelIcon>,geo::allocator_adapter<std::shared_ptr<md::LabelIcon>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v72);
  }

  return v6;
}

void sub_1B2BD9A50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36)
{
  std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::~__value_func[abi:nn200100](&a36);
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (*(v37 - 136) == 1)
  {
    a17 = v37 - 168;
    std::vector<md::PointLabelSummaryIconInfo,geo::allocator_adapter<md::PointLabelSummaryIconInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a17);
  }

  *(v36 + 32) = v36;
  std::vector<std::shared_ptr<md::LabelIcon>,geo::allocator_adapter<std::shared_ptr<md::LabelIcon>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v37 - 168));
  _Unwind_Resume(a1);
}

char *md::PointLabelFeature::iconText(uint64_t *a1, uint64_t *a2)
{
  v4 = a2[2];
  v5 = *(v4 + 296);
  if (v5)
  {
    v6 = *(v5 + 90);
  }

  else
  {
    v7 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(a2[2], 0);
    v8 = *v7;
    *(v4 + 296) = *v7;
    v9 = a2[2];
    v5 = *(v9 + 296);
    v6 = *(v8 + 90);
    if (!v5)
    {
      v10 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(a2[2], 0);
      v5 = *v10;
      *(v9 + 296) = *v10;
    }
  }

  if (*(v5 + 88) == 9)
  {
    if (v6 == 7)
    {
      goto LABEL_9;
    }

    if (v6 != 2)
    {
      if (!v6)
      {
LABEL_9:
        v11 = *(*a2 + 3512);
        md::LabelExternalPointFeature::incident(v11);
        objc_claimAutoreleasedReturnValue();
        if (v11)
        {
          v18 = 0;
          [v11 getTextForKey:&unk_1F2A88548 text:&v18 locale:0];
          v12 = v18;
          v13 = v12;
          if (v12)
          {
            v14 = [v12 UTF8String];
LABEL_24:

            return v14;
          }
        }

        else
        {
          v13 = 0;
        }

        v14 = 0;
        goto LABEL_24;
      }

LABEL_16:
      v15 = 255;
      goto LABEL_18;
    }
  }

  else if (v6 != 2)
  {
    if (v6 == 7 && (*(*a1 + 64))(a1))
    {
      v15 = md::PointLabelFeature::externalFeatureTextIndex(a1, 3, *a2);
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v15 = *(a2[8] + 130);
LABEL_18:
  v16 = a1[65];
  if (v15 >= ((a1[66] - v16) >> 6))
  {
    return 0;
  }

  v14 = (v16 + (v15 << 6));
  if (v14[23] < 0)
  {
    return *v14;
  }

  return v14;
}

uint64_t md::PointLabelFeature::customImageData(std::string *this, void *a2)
{
  result = (*(*a2 + 64))(a2);
  if (result)
  {
    v5 = a2[60];
    if (*(v5 + 143) < 0)
    {
      std::string::__init_copy_ctor_external(this, *(v5 + 120), *(v5 + 128));
    }

    else
    {
      v6 = *(v5 + 120);
      this->__r_.__value_.__r.__words[2] = *(v5 + 136);
      *&this->__r_.__value_.__l.__data_ = v6;
    }

    return std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::__value_func[abi:nn200100](&this[1], v5 + 144);
  }

  else
  {
    this[2].__r_.__value_.__r.__words[0] = 0;
    *&this->__r_.__value_.__r.__words[2] = 0u;
    *&this[1].__r_.__value_.__r.__words[1] = 0u;
    *&this->__r_.__value_.__l.__data_ = 0u;
  }

  return result;
}

void sub_1B2BD9EB4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void md::PointLabelFeature::iconColor(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  if ((*(a1 + 89) & 0xFD) != 0)
  {
    v2 = 0;
    *a2 = 0;
  }

  else
  {
    *a2 = *(a1 + 72);
    v2 = 1;
  }

  a2[4] = v2;
}

void sub_1B2BDA3E0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2BDA410(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    v15 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v15, a10);
  }

  JUMPOUT(0x1B2BDA3FCLL);
}

void md::LabelStyle::pointIcon(void *a1, md::LabelStyle *a2, uint64_t a3, uint64_t a4, uint64_t *a5, char *a6, int *a7, int a8, uint64_t a9, char a10, char a11, char a12, uint64_t a13)
{
  v27[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 3025))
  {
    goto LABEL_5;
  }

  v21 = *(a2 + 34);
  if (!v21)
  {
    v22 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(a2);
    v21 = *v22;
    *(a2 + 34) = *v22;
  }

  if (*(v21 + 72))
  {
LABEL_5:
    LOBYTE(v23) = 0;
    v24 = 0;
    if (*(a7 + 4) == 1)
    {
      v23 = *a7;
      v24 = 1;
    }

    if (*(a13 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v26, *a13, *(a13 + 8));
    }

    else
    {
      *&v26.__r_.__value_.__l.__data_ = *a13;
      v26.__r_.__value_.__r.__words[2] = *(a13 + 16);
    }

    std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::__value_func[abi:nn200100](v27, a13 + 24);
    md::LabelStyle::pointIconImageKey(&v25, a2, a3, a4, a5, a6, &v23, a8, a9, a10, a11, a12, &v26);
  }

  *a1 = 0;
  a1[1] = 0;
}

md::LabelMapTileBase *md::LabelTrafficTile::LabelTrafficTile(md::LabelMapTileBase *a1, uint64_t a2, geo::codec::VectorTile *a3, zilch::TrafficSkeletonTile *a4, uint64_t *a5)
{
  v7 = a1;
  v132[15] = *MEMORY[0x1E69E9840];
  md::LabelMapTileBase::LabelMapTileBase(a1, a2);
  *v8 = &unk_1F2A05810;
  v89 = a3;
  *(v8 + 80) = a3 == 0;
  *(v8 + 88) = 0;
  v77 = (v8 + 88);
  *(v8 + 96) = 0;
  *(v8 + 104) = 0;
  *(v8 + 120) = 0;
  *(v8 + 128) = 0;
  *(v8 + 160) = 0;
  *(v8 + 144) = 0;
  *(v8 + 137) = 0;
  *(v8 + 176) = 0;
  *(v8 + 168) = 1065353216;
  *(v8 + 184) = 0;
  *(v8 + 192) = 0;
  v9 = *a5;
  if (a5[1] != *a5)
  {
    v10 = 0;
    v96 = v7;
    do
    {
      v79 = v10;
      v95 = (v9 + 16 * v10);
      updated = zilch::TrafficDynamicTile::feedUpdateTimeSeconds(*&(*v95)[18]);
      v12 = updated;
      v14 = *(v96 + 12);
      v13 = *(v96 + 13);
      if (v14 >= v13)
      {
        v16 = *v77;
        v17 = v14 - *v77;
        v18 = v17 >> 3;
        v19 = (v17 >> 3) + 1;
        if (v19 >> 61)
        {
          goto LABEL_85;
        }

        v20 = v13 - v16;
        if (v20 >> 2 > v19)
        {
          v19 = v20 >> 2;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v19;
        }

        if (v21)
        {
          v22 = mdm::zone_mallocator::instance(updated);
          v23 = pthread_rwlock_rdlock((v22 + 32));
          if (v23)
          {
            geo::read_write_lock::logFailure(v23, "read lock", v24);
          }

          v25 = malloc_type_zone_malloc(*v22, 8 * v21, 0x100004000313F17uLL);
          atomic_fetch_add((v22 + 24), 1u);
          geo::read_write_lock::unlock((v22 + 32));
          v26 = v96;
          v16 = *(v96 + 11);
          v17 = *(v96 + 12) - v16;
          v27 = v17 >> 3;
        }

        else
        {
          v25 = 0;
          v27 = v17 >> 3;
          v26 = v96;
        }

        v28 = &v25[8 * v18];
        v29 = &v25[8 * v21];
        v30 = &v28[-v27];
        *v28 = v12;
        v15 = v28 + 1;
        v31 = memcpy(v30, v16, v17);
        v32 = *(v26 + 11);
        *(v26 + 11) = v30;
        *(v26 + 12) = v15;
        *(v26 + 13) = v29;
        if (v32)
        {
          v33 = mdm::zone_mallocator::instance(v31);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<long long>(v33, v32);
        }
      }

      else
      {
        *v14 = updated;
        v15 = v14 + 8;
      }

      v34 = 0;
      *(v96 + 12) = v15;
      while (1)
      {
        v35 = (*v95)[25];
        if (v34 >= (*&(*v95)[26] - *&v35) >> 3)
        {
          break;
        }

        v36 = *(*&v35 + 8 * v34);
        [v36 mercatorPoint];
        v39 = 0;
        v40 = 1;
        v41 = 1 << *(a2 + 1);
        v42 = 1.0 / v41;
        v43 = v42 * (v41 + ~*(a2 + 4));
        v44 = v42 * *(a2 + 8) + v42;
        *&v131 = v42 * *(a2 + 8);
        *(&v131 + 1) = v43;
        *v132 = v44;
        *&v132[1] = v43 + v42;
        v45 = &v131;
        while (v37 >= *v45 && v37 < *&v132[v39])
        {
          v46 = v40;
          v40 = 0;
          v45 = &v131 + 1;
          v37 = v38;
          v39 = 1;
          if ((v46 & 1) == 0)
          {
            v47 = v36;
            operator new();
          }
        }

        ++v34;
      }

      v7 = v96;
      if (v89)
      {
        v121[0] = &unk_1F2A05830;
        v121[1] = v96;
        v122 = v121;
        v84 = *(v89 + 4);
        v87 = geo::codec::VectorTile::linesCount(v84, *(v89 + 5));
        v48 = *(v89 + 100);
        if (v48)
        {
          v49 = 0;
          v88 = 0;
          v78 = 0;
          v82 = *(v89 + 100);
          v81 = *(v48 + 32);
          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          *v106 = 0u;
          *v103 = 0u;
          *v104 = 0u;
          v109 = 3;
          v111 = 0;
          v110 = 0;
          v112 = 0xC120000000000000;
          v113 = 0;
          v114 = 0xFFFFFFF6FFFFFFFFLL;
          v115 = -1054867456;
          v116 = 0u;
          v117 = 0u;
          v118 = 0;
          v119 = 0xFFFFFFFF00000000;
          v80 = 0;
          v120 = 0;
          while (v49 < zilch::TrafficSkeletonTile::size(a4))
          {
            v50 = zilch::TrafficSkeletonTile::operator[]();
            v51 = *(v50 + 16);
            v100 = *v50;
            v101 = v51;
            v102 = *(v50 + 32);
            v131 = 0u;
            memset(v132, 0, 112);
            v52 = md::TrafficDynamicTileResource::flowForRoadId(*v95, v51, &v131);
            if (v52 && v87 > v100)
            {
              v53 = v84 + 168 * v100;
              v54 = v88;
              if (!v88)
              {
                v54 = v84 + 168 * v100;
              }

              v55 = *(&v100 + 3);
              v88 = v54;
              if (fabsf(*(&v100 + 3)) >= 0.000001)
              {
                v85 = v100;
                v56 = 8 * v52;
                std::__introsort<std::_ClassicAlgPolicy,md::TrafficUtilities::enumerateTrafficRoadPiecesForTile(geo::codec::VectorTile &,zilch::TrafficSkeletonTile const&,std::shared_ptr<md::TrafficDynamicTileResource> const&,std::function<void ()(md::RoadPiece const&)> const&)::$_0 &,zilch::TrafficDynamicTile::Flow const**,false>(&v131, &v132[v56 / 8 - 2], 126 - 2 * __clz(v52), 1);
                v57 = 0;
                v58 = DWORD1(v100);
                v59 = (v81 + 16 * (DWORD1(v100) + *(v53 + 92)));
                v90 = *(v82 + 8) + 8 * *v59;
                v91 = *v59;
                v92 = v59[1];
                v60 = (v92 - 1);
                if (v55 > 0.0)
                {
                  v61 = 1;
                }

                else
                {
                  v61 = -1;
                }

                v86 = v61;
                v62 = v55;
                do
                {
                  if (v58 <= *(v53 + 96))
                  {
                    v63 = v132[v57 / 8 - 2];
                    v64 = *(v63 + 16);
                    if (v64 > 2)
                    {
                      goto LABEL_49;
                    }

                    v98 = 0;
                    v99 = 0;
                    v97 = 0;
                    v65 = geo::codec::VectorTile::key(v89);
                    v66 = *(v65 + 10);
                    v67 = *(v65 + 8);
                    *buf = *v65;
                    *&buf[8] = v67;
                    buf[10] = v66;
                    v97 = GEOTileKeyMake();
                    v98 = v68;
                    if ((md::TrafficUtilities::buildStartOffset(&v99 + 1, &v99, v53, &v100, v91, v92, v63, v90, &v97) & 1) == 0)
                    {
                      goto LABEL_49;
                    }

                    v69 = *(&v99 + 1);
                    if (*(&v99 + 1) < 0.0 || *(&v99 + 1) > v60 || (v71 = *&v99, *&v99 < 0.0) || *&v99 > v60)
                    {
                      if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
                      {
                        dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
                      }

                      v70 = GEOGetVectorKitVKDefaultLog_log;
                      if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
                      {
                        *buf = 134219264;
                        *&buf[4] = v69;
                        *&buf[12] = 2048;
                        *&buf[14] = *&v99;
                        *&buf[22] = 2048;
                        v124 = v91;
                        v125 = 2048;
                        v126 = v92;
                        v127 = 2048;
                        v128 = *(&v100 + 2);
                        v129 = 2048;
                        v130 = v62;
                        _os_log_impl(&dword_1B2754000, v70, OS_LOG_TYPE_INFO, "Skeleton traffic tile implicates bad section (start: %f, end: %f, valid: %lu,%lu, skeleton record: %f,%f)", buf, 0x3Eu);
                      }

LABEL_49:
                      v7 = v96;
                      goto LABEL_50;
                    }

                    v83 = DWORD2(v101);
                    if (md::TrafficAccum::canAppend(v103, v53, v64, SDWORD2(v101), v86, v58, 0, 0, *(&v99 + 1), 0, 0))
                    {
                      v7 = v96;
                    }

                    else
                    {
                      if (v112 >= 1)
                      {
                        *buf = v88;
                        *&buf[8] = v58;
                        v72 = vrndm_f32(__PAIR64__(v115, v80));
                        *&buf[16] = vcvt_s32_f32(v72);
                        v124 = vsub_f32(__PAIR64__(v115, v80), v72);
                        if (!v122)
                        {
                          goto LABEL_84;
                        }

                        (*(*v122 + 48))(v122, buf);
                      }

                      v103[1] = v103[0];
                      *&v105 = v104[1];
                      v106[1] = v106[0];
                      *&v108 = *(&v107 + 1);
                      v113 = v53;
                      LODWORD(v114) = v85;
                      v109 = v64;
                      v110 = v83;
                      v111 = v86;
                      LODWORD(v112) = 0;
                      v73 = *(&v116 + 1);
                      v116 = 0uLL;
                      if (v73)
                      {
                        std::__shared_weak_count::__release_shared[abi:nn200100](v73);
                      }

                      v74 = *(&v117 + 1);
                      v117 = 0uLL;
                      v7 = v96;
                      if (v74)
                      {
                        std::__shared_weak_count::__release_shared[abi:nn200100](v74);
                      }

                      HIDWORD(v119) = 0;
                      LOBYTE(v120) = 0;
                      v69 = *(&v99 + 1);
                      v58 = DWORD1(v100);
                      v71 = *&v99;
                      v88 = v53;
                      v78 = DWORD1(v100);
                      v80 = HIDWORD(v99);
                    }

                    v113 = v53;
                    v114 = __PAIR64__(v58, v85);
                    v115 = LODWORD(v71);
                    md::TrafficAccum::addPoints(v103, v90, 0, 0, v92, 0, v69, v71);
                  }

LABEL_50:
                  v57 += 8;
                }

                while (v56 != v57);
              }
            }

            ++v49;
          }

          if (v112 > 0)
          {
            *&v131 = v88;
            *(&v131 + 1) = v78;
            v75 = vrndm_f32(__PAIR64__(v115, v80));
            v132[0] = vcvt_s32_f32(v75);
            v132[1] = vsub_f32(__PAIR64__(v115, v80), v75);
            if (!v122)
            {
LABEL_84:
              std::__throw_bad_function_call[abi:nn200100]();
LABEL_85:
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            (*(*v122 + 48))(v122, &v131);
          }

          if (*(&v117 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*(&v117 + 1));
          }

          if (*(&v116 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*(&v116 + 1));
          }

          if (*(&v107 + 1))
          {
            *&v108 = *(&v107 + 1);
            operator delete(*(&v107 + 1));
          }

          if (v106[0])
          {
            v106[1] = v106[0];
            operator delete(v106[0]);
          }

          if (v104[1])
          {
            *&v105 = v104[1];
            operator delete(v104[1]);
          }

          if (v103[0])
          {
            v103[1] = v103[0];
            operator delete(v103[0]);
          }
        }

        std::__function::__value_func<void ()(md::RoadPiece const&)>::~__value_func[abi:nn200100](v121);
      }

      v9 = *a5;
      v10 = v79 + 1;
    }

    while (v79 + 1 < ((a5[1] - *a5) >> 4));
  }

  return v7;
}

void sub_1B2BDB1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, mdm::zone_mallocator *a12, mdm::zone_mallocator *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, void *__p, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a66)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a66);
  }

  if (a65)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a65);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a55)
  {
    operator delete(a55);
  }

  if (a52)
  {
    operator delete(a52);
  }

  if (a49)
  {
    operator delete(a49);
  }

  std::__function::__value_func<void ()(md::RoadPiece const&)>::~__value_func[abi:nn200100](&STACK[0x230]);
  STACK[0x290] = a29;
  std::vector<std::shared_ptr<md::TrafficIncidentLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::TrafficIncidentLabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&STACK[0x290]);
  std::__hash_table<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<GeoCodecsFeature const*,std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,std::hash<GeoCodecsFeature const*>,std::equal_to<GeoCodecsFeature const*>,true>,std::__unordered_map_equal<GeoCodecsFeature const*,std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,std::equal_to<GeoCodecsFeature const*>,std::hash<GeoCodecsFeature const*>,true>,geo::allocator_adapter<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__deallocate_node(*(v66 + 144));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](a12);
  std::vector<long long,geo::allocator_adapter<long long,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a13);
  _Unwind_Resume(a1);
}

double md::LabelMapTileBase::LabelMapTileBase(md::LabelMapTileBase *this, const geo::QuadTile *a2)
{
  v2 = *(a2 + 1);
  v3 = 1 << v2;
  v4 = (*(a2 + 1) % v3 + v3) % v3;
  v5 = (*(a2 + 2) % v3 + v3) % v3;
  *(this + 8) = *a2;
  *(this + 9) = v2;
  *(this + 3) = v4;
  *(this + 4) = v5;
  *(this + 3) = 0;
  *(this + 32) = 1;
  v6 = (1 << *(a2 + 1));
  v7 = *(a2 + 2);
  *this = &unk_1F2A45F78;
  *(this + 10) = vcvtmd_s64_f64(v7 / v6);
  v8 = 1.0 / (1 << v2);
  v9 = v8 * v5;
  v10 = v8 * ((1 << v2) + ~v4);
  v11 = v9 + v8;
  *(this + 6) = v9;
  *(this + 7) = v10;
  result = v10 + v8;
  *(this + 8) = v11;
  *(this + 9) = result;
  return result;
}

float md::LabelStyle::iconContentScale(md::LabelStyle *this)
{
  v2 = *this;
  if (!*this || (v3 = *(v2 + 16)) == 0 || (v4 = std::__shared_weak_count::lock(v3)) == 0)
  {
    v12 = 0;
    v13 = 0;
LABEL_9:
    v8 = (this + 88);
    goto LABEL_10;
  }

  v5 = v4;
  v6 = *(v2 + 8);
  if (!v6)
  {
    v12 = 0;
    v13 = 0;
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    goto LABEL_9;
  }

  gss::StylesheetManager<gss::PropertyID>::styleGlobalProperties(&v12, *(v6 + 16));
  v7 = v12;
  std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  if (!v7)
  {
    goto LABEL_9;
  }

  v9 = *(v7 + 216);
  v8 = (v7 + 216);
  if (v9 <= 0.0)
  {
    goto LABEL_9;
  }

LABEL_10:
  v10 = *v8;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  return v10;
}

void *md::LabelImageKey::setCustomImageData(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  *(a1 + 264) = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);

  return std::function<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::operator=((a1 + 272), a2 + 24);
}

void *std::function<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::__value_func[abi:nn200100](v4, a2);
  std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::swap[abi:nn200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
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

mdm::zone_mallocator *std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=(mdm::zone_mallocator *result, mdm::zone_mallocator *a2)
{
  if (result != a2)
  {
    if (*(result + 23) < 0)
    {
      v3 = *(a2 + 1);
      if (*(a2 + 23) >= 0)
      {
        v4 = *(a2 + 23);
      }

      else
      {
        a2 = *a2;
        v4 = v3;
      }

      return std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__assign_no_alias<false>(result, a2, v4);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      return std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__assign_no_alias<true>(result, *a2, *(a2 + 1));
    }

    else
    {
      v2 = *a2;
      *(result + 2) = *(a2 + 2);
      *result = v2;
    }
  }

  return result;
}

unint64_t md::LabelImageKey::hash(md::LabelImageKey *this)
{
  v2 = *(this + 39);
  v3 = *(this + 3);
  if ((v2 & 0x80u) == 0)
  {
    v4 = (this + 16);
  }

  else
  {
    v4 = *(this + 2);
  }

  if ((v2 & 0x80u) == 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v4, v5);
  v7 = *(this + 6);
  v8 = *(this + 14);
  v33 = *(this + 15);
  v32 = *(this + 32);
  v31 = *(this + 112);
  v9 = *(this + 114);
  v10 = *(this + 115);
  v11 = *(this + 116);
  v12 = *(this + 117);
  v13 = *(this + 143);
  if (v13 >= 0)
  {
    v14 = (this + 120);
  }

  else
  {
    v14 = *(this + 15);
  }

  if (v13 >= 0)
  {
    v15 = *(this + 143);
  }

  else
  {
    v15 = *(this + 16);
  }

  v16 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v14, v15);
  v17 = 0;
  v18 = 0;
  do
  {
    v18 ^= (v18 << 6) - 0x61C8864680B583EBLL + (v18 >> 2) + *(this + v17++ + 160);
  }

  while (v17 != 4);
  if (v8 == 0.0)
  {
    v19 = 0;
  }

  else
  {
    v19 = LODWORD(v8);
  }

  v20 = *(this + 19) ^ v16 ^ *(this + 164) ^ v18 ^ ((v18 << 6) - 0x61C8864680B583EBLL + (v18 >> 2));
  v21 = *(this + 45);
  v22 = LODWORD(v21);
  if (v21 == 0.0)
  {
    v22 = 0;
  }

  if (*(this + 184))
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = *(this + 47);
  v25 = LODWORD(v24);
  if (v24 == 0.0)
  {
    v25 = 0;
  }

  v26 = *(this + 50);
  v27 = LODWORD(v26);
  if (v26 == 0.0)
  {
    v27 = 0;
  }

  result = v7 ^ v6 ^ v33 ^ v32 ^ v31 ^ v9 ^ v19 ^ v10 ^ v11 ^ v12 ^ *(this + 168) ^ *(this + 43) ^ *(this + 44) ^ *(this + 48) ^ v23 ^ v20 ^ v25 ^ *(this + 196) ^ v27 ^ (*(this + 37) != 0);
  for (i = *(this + 9); i != *(this + 10); ++i)
  {
    v30 = *i;
    result ^= v30;
  }

  return result;
}

uint64_t md::TrafficIncidentLabelFeature::TrafficIncidentLabelFeature(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  [v5 mercatorPoint];
  v17[0] = v6;
  v17[1] = v7;
  v17[2] = v8;
  md::PointLabelFeatureBase::PointLabelFeatureBase(a1, v17);
  *a1 = &unk_1F2A4E2C8;
  v9 = v5;
  *(a1 + 248) = v9;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 312) = 2139095039;
  *(a1 + 316) = 0;
  *(a1 + 318) = 0;
  [v9 minZoom];
  *(a1 + 320) = v10;
  [v9 maxZoom];
  *(a1 + 324) = v11;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 353) = (([v9 type] - 3) & 0xFFFFFFFFFFFFFFFBLL) == 0;
  [v9 routeOffsetInMeters];
  *(a1 + 360) = v12;
  *(a1 + 368) = [v9 collisionPriority];
  v13 = a3[1];
  *(a1 + 376) = *a3;
  *(a1 + 384) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 232) == 3.4028e38)
  {
    v14 = 252.0;
  }

  else
  {
    [v9 elevationMinZoom];
  }

  v15 = 0;
  *(a1 + 328) = v14;
  do
  {
    *(a1 + v15 + 272) = *(a1 + v15 + 192);
    v15 += 8;
  }

  while (v15 != 24);
  *(a1 + 296) = *(a1 + 216);
  *(a1 + 312) = *(a1 + 232);
  *(a1 + 315) = *(a1 + 235);
  if (v14 > 0.0)
  {
    *(a1 + 232) = 2139095039;
    *(a1 + 242) = 0;
  }

  return a1;
}

void sub_1B2BDBB80(_Unwind_Exception *a1)
{
  v4 = *(v1 + 384);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(v1 + 344);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(v1 + 264);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  md::LabelFeature::~LabelFeature(v1);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,std::__unordered_map_hasher<std::shared_ptr<md::LabelImageKey const>,std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>,true>,std::__unordered_map_equal<std::shared_ptr<md::LabelImageKey const>,std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,mdm::zone_mallocator>>::find<std::shared_ptr<md::LabelImageKey const>>(void *a1, md::LabelImageKey *this)
{
  v4 = md::LabelImageKey::hash(this);
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

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (md::LabelImageKey::operator==(v11[2], this))
        {
          return v11;
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

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void md::LabelImageLoader::loadImage(void *a1, uint64_t a2, md::LabelImageKey **a3)
{
  v173 = *MEMORY[0x1E69E9840];
  v4 = atomic_load((*(a2 + 112) + 3427));
  if (v4)
  {
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  v5 = a3;
  shared_weak_owners = std::__hash_table<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,std::__unordered_map_hasher<std::shared_ptr<md::LabelImageKey const>,std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>,true>,std::__unordered_map_equal<std::shared_ptr<md::LabelImageKey const>,std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,mdm::zone_mallocator>>::find<std::shared_ptr<md::LabelImageKey const>>((a2 + 32), *a3);
  if (shared_weak_owners)
  {
    v8 = shared_weak_owners;
    v9 = shared_weak_owners[2].__vftable;
    if (v9 != a2)
    {
      v10 = *(a2 + 8);
      if (v10 != v9)
      {
        v11 = v9->~__shared_weak_count_0;
        if (v11 != v10)
        {
          v12 = v9->~__shared_weak_count;
          *(v12 + 1) = v11;
          *v11 = v12;
          v13 = *v10;
          *(v13 + 8) = v9;
          v9->~__shared_weak_count = v13;
          *v10 = v9;
          v9->~__shared_weak_count_0 = v10;
        }
      }

      ++*(a2 + 92);
      on_zero_shared_weak = v9->__on_zero_shared_weak;
      v14 = v9[1].~__shared_weak_count;
      *&v138 = on_zero_shared_weak;
      *(&v138 + 1) = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(v14 + 1, 1uLL, memory_order_relaxed);
      }

      goto LABEL_12;
    }

    if (LOBYTE(shared_weak_owners[2].__shared_owners_) == 1)
    {
      ++*(a2 + 92);
      v138 = 0uLL;
LABEL_12:
      *a1 = v138;
      if (*(&v138 + 1))
      {
        atomic_fetch_add_explicit((*(&v138 + 1) + 8), 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v138 + 1));
      }

      return;
    }

    shared_weak_owners = shared_weak_owners[1].__shared_weak_owners_;
    if (shared_weak_owners)
    {
      shared_weak_owners = std::__shared_weak_count::lock(shared_weak_owners);
      if (shared_weak_owners)
      {
        v16 = shared_weak_owners;
        v17 = v5;
        shared_owners = v8[1].__shared_owners_;
        if (shared_owners)
        {
          v19 = mdm::zone_mallocator::instance(shared_weak_owners);
          v20 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__list_node<md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::ListEntry,void *>>(v19);
          *&v21 = shared_owners;
          *(&v21 + 1) = v16;
          v20->~__shared_weak_count = 0;
          v20->~__shared_weak_count_0 = 0;
          v20->__on_zero_shared = *v17;
          v22 = v17[1];
          v20->__get_deleter = v22;
          if (v22)
          {
            atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
          }

          v20->__on_zero_shared_weak = shared_owners;
          v20[1].~__shared_weak_count = v16;
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          v20->~__shared_weak_count = a2;
          v23 = *(a2 + 8);
          v20->~__shared_weak_count_0 = v23;
          *v23 = v20;
          v24 = *(a2 + 16) + 1;
          *(a2 + 8) = v20;
          *(a2 + 16) = v24;
          v8[2].__vftable = v20;
          ++*(a2 + 92);
          v138 = v21;
          goto LABEL_12;
        }

        std::__shared_weak_count::__release_shared[abi:nn200100](shared_weak_owners);
        v5 = v17;
      }
    }
  }

  v25 = 0;
  ++*(a2 + 96);
  *a1 = 0;
  a1[1] = 0;
  v26 = *v5;
  v27 = *(*v5 + 112);
  if (v27 > 4)
  {
    if (v27 != 5)
    {
      if (v27 != 6)
      {
        v28 = 0;
        if (v27 != 7)
        {
          goto LABEL_120;
        }

        v29 = [VKImage alloc];
        v30 = (*v5 + 16);
        if (*(*v5 + 39) < 0)
        {
          v30 = *v30;
        }

        v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v30];
        v32 = *(*v5 + 56);
        v33 = *(*(a2 + 112) + 96);
        md::LabelExternalPointFeature::incident(v33);
        v34 = [objc_claimAutoreleasedReturnValue() resourceManager];
        gdc::ServiceLocator::resolveWeak<mre::GraphicsResourceStore>(&v155, **(*(a2 + 112) + 112), *(*(*(a2 + 112) + 112) + 8));
        v35 = [(VKImage *)v29 initWithName:v31 scale:v34 resourceManager:&v155 resourceStore:v32];
        v151.i64[0] = v35;
        if (v156)
        {
          std::__shared_weak_count::__release_weak(v156);
        }

        if (v35)
        {
          *(*v5 + 113) = 4;
          std::allocate_shared[abi:nn200100]<md::ExternalImageLabelIcon,std::allocator<md::ExternalImageLabelIcon>,VKImage * {__strong}&,0>(&__dst, &v151);
        }

        v48 = 0uLL;
        goto LABEL_118;
      }

      goto LABEL_33;
    }

    v36 = v26 + 120;
    v155 = 0;
    __asm { FMOV            V0.2S, #1.0 }

    v156 = _D0;
    v157 = 0;
    v158 = 0;
    v159 = 0;
    v160 = 0;
    v161 = 0;
    v162 = 0;
    v163 = 0;
    v164 = 0;
    v165 = 0;
    v166 = v167;
    v167[0] = 0;
    v168 = 0;
    v172 = 0;
    v169 = 0u;
    v170 = 0u;
    v171 = 0u;
    v42 = (v26 + 120);
    v43 = *(v26 + 143);
    if ((v43 & 0x8000000000000000) != 0)
    {
      v43 = *(v26 + 128);
      if (v43 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_233;
      }

      v42 = *(v26 + 120);
    }

    if (v43 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v43;
    if (v43)
    {
      memmove(&__dst, v42, v43);
    }

    __dst.__r_.__value_.__s.__data_[v43] = 0;
    v49 = grl::IconModifiers::setText(&v155, &__dst);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    LODWORD(v49) = *(v26 + 160);
    v151 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*&v49))), vdupq_n_s32(0x3B808081u));
    geo::Color<float,4,(geo::ColorSpace)2>::Color<(geo::ColorSpace)0,int,void>(&__dst, &v151);
    v50 = vshl_u32(vcvt_s32_f32(vmul_f32(__dst.__r_.__value_.__r.__words[1], vdup_n_s32(0x437F0000u))), 0x1800000010);
    LODWORD(__dst.__r_.__value_.__l.__data_) = vorr_s8(vdup_lane_s32(v50, 1), v50).u32[0] | ((*(__dst.__r_.__value_.__r.__words + 1) * 255.0) << 8) | (*&__dst.__r_.__value_.__l.__data_ * 255.0);
    grl::IconModifiers::setTransitLineColor(&v155, &__dst);
    v150 = 0uLL;
    v51 = 0uLL;
    v149 = 0u;
    v148 = 0u;
    *&__dst.__r_.__value_.__r.__words[1] = 0u;
    v52 = *v5;
    v53 = *(*v5 + 39);
    if (v53 < 0)
    {
      v53 = *(v52 + 24);
    }

    if (!v53)
    {
      v60 = 0;
LABEL_109:
      v135 = v51;
      if (SHIBYTE(v149) < 0)
      {
        operator delete(*(&v148 + 1));
      }

      if (SBYTE7(v148) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__size_);
      }

      if (!v60)
      {
        goto LABEL_116;
      }

      v66 = v60;
LABEL_115:
      std::__shared_weak_count::__release_shared[abi:nn200100](v66);
LABEL_116:
      grl::IconModifiers::~IconModifiers(&v155);
      goto LABEL_117;
    }

    v151.i32[0] = 1065353216;
    v151.i8[4] = 4;
    *(&v151.i32[1] + 2) = 0;
    v151.i16[5] = -1;
    v151.i8[12] = 0;
    v26 = &v152;
    v153 = 0;
    v154 = 0;
    v152 = 0;
    grl::IconRequestOptions::setContentScale(v151.f32, *(v52 + 56));
    grl::IconModifiers::setMirrored(&v151, *(v52 + 168));
    grl::IconRequestOptions::setVariant(&v151, *(v52 + 172));
    grl::IconRequestOptions::setDataVariant(&v151, *(v52 + 176));
    grl::IconRequestOptions::setCountryCode(&v151, *(v52 + 192));
    (*(**(*(*(a2 + 112) + 168) + 64) + 48))(&v145);
    v143 = 0;
    v144 = 0;
    v142 = 0;
    if (v145)
    {
      std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(&v142, *v145, v145[1], 0xAAAAAAAAAAAAAAABLL * ((v145[1] - *v145) >> 3));
      v54 = v142;
      v55 = v143;
    }

    else
    {
      v55 = 0;
      v54 = 0;
    }

    grl::IconRequestOptions::setResourceNames(&v151, v54, v55);
    v67 = [*(*(a2 + 112) + 96) grlIconManager];
    v68 = *v5;
    v69 = *(*v5 + 39);
    if ((v69 & 0x8000000000000000) == 0)
    {
      v70 = (v68 + 16);
LABEL_94:
      if (v69 >= 0x17)
      {
        operator new();
      }

      v140 = v69;
      if (v69)
      {
        memmove(__p, v70, v69);
      }

      *(__p + v69) = 0;
      grl::IconManager::imageForName(&v141, v67, __p, &v155, v151.f32, &__dst);
      v71 = v141;
      v141 = 0uLL;
      v72 = *(&v150 + 1);
      v136 = v71;
      v150 = v71;
      if (v72)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v72);
        if (*(&v141 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v141 + 1));
        }
      }

      if (v140 < 0)
      {
        operator delete(__p[0]);
      }

      v60 = *(&v136 + 1);
      __p[0] = &v142;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](__p);
      if (v146)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v146);
      }

      v142 = &v152;
      std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v142);
      if (v136)
      {
        v73 = v5;
        v74 = *v5;
        *(v74 + 208) = __dst.__r_.__value_.__l.__data_;
        std::string::operator=((v74 + 216), &__dst.__r_.__value_.__r.__words[1]);
        std::string::operator=((v74 + 240), (&v148 + 8));
        *(*v73 + 113) = 5;
        std::allocate_shared[abi:nn200100]<md::ShieldLabelIcon,std::allocator<md::ShieldLabelIcon>,std::shared_ptr<md::LabelImageKey const> const&,std::shared_ptr<grl::IconImage> &,std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>> const&,0>(&v151, v73, &v150, v36);
      }

      v51 = 0uLL;
      goto LABEL_109;
    }

    v69 = *(v68 + 24);
    if (v69 <= 0x7FFFFFFFFFFFFFF7)
    {
      v70 = *(v68 + 16);
      goto LABEL_94;
    }

LABEL_233:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v27 == 1)
  {
    v44 = (v26 + 120);
    v155 = 0;
    __asm { FMOV            V0.2S, #1.0 }

    v156 = _D0;
    v157 = 0;
    v158 = 0;
    v159 = 0;
    v160 = 0;
    v161 = 0;
    v162 = 0;
    v163 = 0;
    v164 = 0;
    v165 = 0;
    v166 = v167;
    v167[0] = 0;
    v168 = 0;
    v172 = 0;
    v169 = 0u;
    v170 = 0u;
    v171 = 0u;
    if (*(v26 + 184) == 1)
    {
      grl::IconModifiers::setTailDirection(&v155, *(v26 + 180));
    }

    grl::IconModifiers::setScale(&v155, *(v26 + 188));
    v46 = *(v26 + 143);
    v47 = (v26 + 120);
    if ((v46 & 0x8000000000000000) != 0)
    {
      v46 = *(v26 + 128);
      if (v46 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_233;
      }

      v47 = *(v26 + 120);
    }

    if (v46 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v46;
    if (v46)
    {
      memmove(&__dst, v47, v46);
    }

    __dst.__r_.__value_.__s.__data_[v46] = 0;
    v56 = grl::IconModifiers::setText(&v155, &__dst);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    LODWORD(v56) = *(v26 + 160);
    v151 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*&v56))), vdupq_n_s32(0x3B808081u));
    geo::Color<float,4,(geo::ColorSpace)2>::Color<(geo::ColorSpace)0,int,void>(&__dst, &v151);
    v57 = vshl_u32(vcvt_s32_f32(vmul_f32(__dst.__r_.__value_.__r.__words[1], vdup_n_s32(0x437F0000u))), 0x1800000010);
    LODWORD(__dst.__r_.__value_.__l.__data_) = vorr_s8(vdup_lane_s32(v57, 1), v57).u32[0] | ((*(__dst.__r_.__value_.__r.__words + 1) * 255.0) << 8) | (*&__dst.__r_.__value_.__l.__data_ * 255.0);
    grl::IconModifiers::setTransitLineColor(&v155, &__dst);
    (*(**(*(*(a2 + 112) + 168) + 64) + 48))(&v150);
    v143 = 0;
    v144 = 0;
    v142 = 0;
    if (v150)
    {
      std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(&v142, *v150, *(v150 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v150 + 8) - *v150) >> 3));
      v59 = v142;
      v58 = v143;
    }

    else
    {
      v58 = 0;
      v59 = 0;
    }

    v151.i32[0] = 1065353216;
    v151.i8[4] = 4;
    *(&v151.i32[1] + 2) = 0;
    v151.i16[5] = -1;
    v151.i8[12] = 0;
    v133 = v5;
    v153 = 0;
    v154 = 0;
    v152 = 0;
    v61 = *v5;
    grl::IconRequestOptions::setContentScale(v151.f32, *(v61 + 56));
    grl::IconModifiers::setMirrored(&v151, *(v61 + 168));
    grl::IconRequestOptions::setVariant(&v151, *(v61 + 172));
    grl::IconRequestOptions::setDataVariant(&v151, *(v61 + 176));
    grl::IconRequestOptions::setCountryCode(&v151, *(v61 + 192));
    grl::IconRequestOptions::setResourceNames(&v151, v59, v58);
    v149 = 0u;
    v148 = 0u;
    *&__dst.__r_.__value_.__r.__words[1] = 0u;
    v62 = [*(*(a2 + 112) + 96) grlIconManager];
    v63 = *(v26 + 152);
    v64 = *(v26 + 143);
    v5 = v133;
    if ((v64 & 0x8000000000000000) != 0)
    {
      v64 = *(v26 + 128);
      if (v64 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_233;
      }

      v44 = *(v26 + 120);
    }

    if (v64 >= 0x17)
    {
      operator new();
    }

    v140 = v64;
    if (v64)
    {
      memmove(__p, v44, v64);
    }

    *(__p + v64) = 0;
    grl::IconManager::imageForDataIDAndText(&v145, v62, v63, __p, &v155, v151.f32, &__dst);
    if (v140 < 0)
    {
      operator delete(__p[0]);
    }

    if (v145)
    {
      v65 = *v133;
      *(v65 + 208) = __dst.__r_.__value_.__l.__data_;
      std::string::operator=((v65 + 216), &__dst.__r_.__value_.__r.__words[1]);
      std::string::operator=((v65 + 240), (&v148 + 8));
      *(*v133 + 113) = 1;
      std::allocate_shared[abi:nn200100]<md::ShieldLabelIcon,std::allocator<md::ShieldLabelIcon>,std::shared_ptr<md::LabelImageKey const> const&,std::shared_ptr<grl::IconImage> &,std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>> const&,0>(__p, v133, &v145, v26 + 120);
    }

    v135 = 0u;
    if (v146)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v146);
    }

    if (SHIBYTE(v149) < 0)
    {
      operator delete(*(&v148 + 1));
    }

    if (SBYTE7(v148) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__size_);
    }

    __dst.__r_.__value_.__r.__words[0] = &v152;
    std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&__dst);
    __dst.__r_.__value_.__r.__words[0] = &v142;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&__dst);
    v66 = *(&v150 + 1);
    if (!*(&v150 + 1))
    {
      goto LABEL_116;
    }

    goto LABEL_115;
  }

  v28 = 0;
  if (v27 != 4)
  {
    goto LABEL_120;
  }

LABEL_33:
  md::LabelImageLoader::loadIconImage(&v155, a2, v5);
  if (v155)
  {
    operator new();
  }

  v48 = 0uLL;
  if (!v156)
  {
    goto LABEL_118;
  }

  v135 = 0uLL;
  std::__shared_weak_count::__release_shared[abi:nn200100](v156);
LABEL_117:
  v48 = v135;
LABEL_118:
  *a1 = v48;
  v25 = *(&v48 + 1);
  v28 = v48;
  if (v48)
  {
    *(v48 + 136) = *(*(*(a2 + 112) + 424) + 48);
    md::LabelImageLoader::enqueueIconForRendering(a2, a1);
  }

LABEL_120:
  v75 = mdm::zone_mallocator::instance(shared_weak_owners);
  v76 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__list_node<md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::ListEntry,void *>>(v75);
  v77 = v76;
  *v76 = 0;
  v76[1] = 0;
  v76[2] = *v5;
  v78 = v5[1];
  v76[3] = v78;
  if (v78)
  {
    atomic_fetch_add_explicit((v78 + 8), 1uLL, memory_order_relaxed);
  }

  v76[4] = v28;
  v76[5] = v25;
  if (v25)
  {
    atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
    v79 = *a1;
  }

  else
  {
    v79 = v28;
  }

  *v76 = a2;
  v80 = *(a2 + 8);
  v76[1] = v80;
  *v80 = v76;
  v81 = *(a2 + 16) + 1;
  *(a2 + 8) = v76;
  *(a2 + 16) = v81;
  v137 = v79;
  if (*(&v79 + 1))
  {
    atomic_fetch_add_explicit((*(&v79 + 1) + 16), 1uLL, memory_order_relaxed);
    v82 = *a1;
  }

  else
  {
    v82 = v79;
  }

  v83 = v82 == 0;
  v84 = *v5;
  v85 = md::LabelImageKey::hash(*v5);
  v86 = v85;
  v87 = *(a2 + 40);
  if (v87)
  {
    v88 = vcnt_s8(v87);
    v88.i16[0] = vaddlv_u8(v88);
    v89 = v88.u32[0];
    if (v88.u32[0] > 1uLL)
    {
      v26 = v85;
      if (v85 >= v87)
      {
        v26 = v85 % v87;
      }
    }

    else
    {
      v26 = (v87 - 1) & v85;
    }

    v90 = *(*(a2 + 32) + 8 * v26);
    if (v90)
    {
      v134 = v5;
      for (i = *v90; i; i = *i)
      {
        v92 = i[1];
        if (v92 == v86)
        {
          v85 = md::LabelImageKey::operator==(i[2], v84);
          if (v85)
          {
            v121 = i[5];
            *(i + 2) = v137;
            if (v121)
            {
              std::__shared_weak_count::__release_weak(v121);
            }

            i[6] = v77;
            *(i + 56) = v83;
            goto LABEL_212;
          }
        }

        else
        {
          if (v89 > 1)
          {
            if (v92 >= v87)
            {
              v92 %= v87;
            }
          }

          else
          {
            v92 &= v87 - 1;
          }

          if (v92 != v26)
          {
            break;
          }
        }
      }

      v5 = v134;
    }
  }

  v93 = mdm::zone_mallocator::instance(v85);
  v94 = pthread_rwlock_rdlock((v93 + 32));
  if (v94)
  {
    geo::read_write_lock::logFailure(v94, "read lock", v95);
  }

  v96 = malloc_type_zone_malloc(*v93, 0x40uLL, 0x10600406F71BDCCuLL);
  atomic_fetch_add((v93 + 24), 1u);
  geo::read_write_lock::unlock((v93 + 32));
  *v96 = 0;
  v96[1] = v86;
  v96[2] = *v5;
  v98 = v5[1];
  v96[3] = v98;
  if (v98)
  {
    atomic_fetch_add_explicit((v98 + 8), 1uLL, memory_order_relaxed);
  }

  *(v96 + 2) = v137;
  v96[6] = v77;
  *(v96 + 56) = v83;
  v99 = (*(a2 + 72) + 1);
  v100 = *(a2 + 80);
  if (!v87 || (v100 * v87) < v99)
  {
    v101 = 1;
    if (v87 >= 3)
    {
      v101 = (v87 & (v87 - 1)) != 0;
    }

    v102 = v101 | (2 * v87);
    v103 = vcvtps_u32_f32(v99 / v100);
    if (v102 <= v103)
    {
      v104 = v103;
    }

    else
    {
      v104 = v102;
    }

    if (v104 == 1)
    {
      v104 = 2;
    }

    else if ((v104 & (v104 - 1)) != 0)
    {
      prime = std::__next_prime(v104);
      v104 = prime;
    }

    v87 = *(a2 + 40);
    if (v104 > v87)
    {
      goto LABEL_162;
    }

    if (v104 < v87)
    {
      prime = vcvtps_u32_f32(*(a2 + 72) / *(a2 + 80));
      if (v87 < 3 || (v113 = vcnt_s8(v87), v113.i16[0] = vaddlv_u8(v113), v113.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v114 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v114;
        }
      }

      if (v104 <= prime)
      {
        v104 = prime;
      }

      if (v104 >= v87)
      {
        v87 = *(a2 + 40);
      }

      else
      {
        if (v104)
        {
LABEL_162:
          v105 = mdm::zone_mallocator::instance(prime);
          v106 = pthread_rwlock_rdlock((v105 + 32));
          if (v106)
          {
            geo::read_write_lock::logFailure(v106, "read lock", v107);
          }

          v108 = malloc_type_zone_malloc(*v105, 8 * v104, 0x2004093837F09uLL);
          atomic_fetch_add((v105 + 24), 1u);
          geo::read_write_lock::unlock((v105 + 32));
          std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *> *> **,0>((a2 + 32), v108);
          v109 = 0;
          *(a2 + 40) = v104;
          do
          {
            *(*(a2 + 32) + 8 * v109++) = 0;
          }

          while (v104 != v109);
          v110 = *(a2 + 56);
          if (v110)
          {
            v111 = v110[1];
            v112 = vcnt_s8(v104);
            v112.i16[0] = vaddlv_u8(v112);
            if (v112.u32[0] > 1uLL)
            {
              if (v111 >= v104)
              {
                v111 %= v104;
              }
            }

            else
            {
              v111 &= v104 - 1;
            }

            *(*(a2 + 32) + 8 * v111) = a2 + 56;
            v115 = *v110;
            if (*v110)
            {
              do
              {
                v116 = v115[1];
                if (v112.u32[0] > 1uLL)
                {
                  if (v116 >= v104)
                  {
                    v116 %= v104;
                  }
                }

                else
                {
                  v116 &= v104 - 1;
                }

                if (v116 != v111)
                {
                  v117 = *(a2 + 32);
                  if (!*(v117 + 8 * v116))
                  {
                    *(v117 + 8 * v116) = v110;
                    goto LABEL_186;
                  }

                  *v110 = *v115;
                  *v115 = **(v117 + 8 * v116);
                  **(v117 + 8 * v116) = v115;
                  v115 = v110;
                }

                v116 = v111;
LABEL_186:
                v110 = v115;
                v115 = *v115;
                v111 = v116;
              }

              while (v115);
            }
          }

          v87 = v104;
          goto LABEL_190;
        }

        std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *> *> **,0>((a2 + 32), 0);
        v87 = 0;
        *(a2 + 40) = 0;
      }
    }

LABEL_190:
    if ((v87 & (v87 - 1)) != 0)
    {
      if (v86 >= v87)
      {
        v26 = v86 % v87;
      }

      else
      {
        v26 = v86;
      }
    }

    else
    {
      v26 = (v87 - 1) & v86;
    }
  }

  v118 = *(a2 + 32);
  v119 = *(v118 + 8 * v26);
  if (v119)
  {
    *v96 = *v119;
  }

  else
  {
    *v96 = *(a2 + 56);
    *(a2 + 56) = v96;
    *(v118 + 8 * v26) = a2 + 56;
    if (!*v96)
    {
      goto LABEL_204;
    }

    v120 = *(*v96 + 8);
    if ((v87 & (v87 - 1)) != 0)
    {
      if (v120 >= v87)
      {
        v120 %= v87;
      }
    }

    else
    {
      v120 &= v87 - 1;
    }

    v119 = (*(a2 + 32) + 8 * v120);
  }

  *v119 = v96;
LABEL_204:
  ++*(a2 + 72);
LABEL_212:
  while (1)
  {
    v128 = *(a2 + 16);
    if (v128 <= *(a2 + 88))
    {
      break;
    }

    v122 = *a2;
    v123 = std::__hash_table<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,std::__unordered_map_hasher<std::shared_ptr<md::LabelImageKey const>,std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>,true>,std::__unordered_map_equal<std::shared_ptr<md::LabelImageKey const>,std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,mdm::zone_mallocator>>::find<std::shared_ptr<md::LabelImageKey const>>((a2 + 32), *(*a2 + 16));
    if (v123 && v123[6] == v122)
    {
      v123[6] = a2;
      v122 = *a2;
    }

    v125 = *v122;
    v124 = v122[1];
    *(v125 + 8) = v124;
    *v124 = v125;
    *(a2 + 16) = v128 - 1;
    std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,0>((v122 + 2));
    v127 = mdm::zone_mallocator::instance(v126);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__list_node<md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::ListEntry,void *>>(v127, v122);
  }

  v129 = *(a2 + 104) + 1;
  *(a2 + 104) = v129;
  if (v129 >= 0x65)
  {
    *(a2 + 104) = 0;
    v130 = *(a2 + 56);
    if (v130)
    {
      v131 = 0;
      do
      {
        while (1)
        {
          if ((*(v130 + 56) & 1) == 0)
          {
            v132 = *(v130 + 40);
            if (!v132 || *(v132 + 8) == -1)
            {
              break;
            }
          }

          v130 = *v130;
          ++v131;
          if (!v130)
          {
            goto LABEL_224;
          }
        }

        v130 = std::__hash_table<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,std::__unordered_map_hasher<std::shared_ptr<md::LabelImageKey const>,std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>,true>,std::__unordered_map_equal<std::shared_ptr<md::LabelImageKey const>,std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,mdm::zone_mallocator>>::erase((a2 + 32), v130);
      }

      while (v130);
    }

    else
    {
      v131 = 0;
    }

LABEL_224:
    *(a2 + 100) = v131;
  }
}

void sub_1B2BDCFC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, std::__shared_weak_count *a49)
{
  a14 = &a21;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&a14);
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a25);
  }

  std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a14);
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  grl::IconModifiers::~IconModifiers(&a48);
  _Unwind_Resume(a1);
}

uint64_t md::PointLabelFeatureBase::PointLabelFeatureBase(uint64_t result, uint64_t a2)
{
  *(result + 8) = 850045863;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0;
  *(result + 128) = 0x100000000;
  *(result + 136) = 0;
  *(result + 141) = 0;
  *(result + 152) = 0u;
  *(result + 168) = 0u;
  *result = &unk_1F2A48440;
  *(result + 200) = 0;
  *(result + 208) = 0;
  *(result + 192) = 0;
  *(result + 216) = *a2;
  v2 = *(a2 + 16);
  v3 = v2;
  if (v2 == 1.79769313e308)
  {
    v3 = 3.4028e38;
  }

  *(result + 232) = v3;
  *(result + 236) = 256;
  *(result + 238) = 1;
  *(result + 240) = 0;
  *(result + 242) = v3 != 3.4028e38;
  *(result + 243) = -256;
  return result;
}

BOOL md::LabelImageKey::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 39);
  if (v2 >= 0)
  {
    v3 = *(a1 + 39);
  }

  else
  {
    v3 = *(a1 + 24);
  }

  v4 = *(a2 + 39);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 24);
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v8 = (a1 + 16);
  }

  else
  {
    v8 = *(a1 + 16);
  }

  if (v5 >= 0)
  {
    v9 = (a2 + 16);
  }

  else
  {
    v9 = *(a2 + 16);
  }

  if (memcmp(v8, v9, v3))
  {
    return 0;
  }

  if (*(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  if (*(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  if (*(a1 + 60) != *(a2 + 60))
  {
    return 0;
  }

  if (*(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  v12 = *(a2 + 72);
  if (v11 - v10 != *(a2 + 80) - v12)
  {
    return 0;
  }

  if (v11 != v10)
  {
    v13 = v11 - v10;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    do
    {
      v15 = *v10++;
      v14 = v15;
      v16 = *v12++;
      if (v14 != v16)
      {
        return 0;
      }
    }

    while (--v13);
  }

  if (*(a1 + 112) != *(a2 + 112) || *(a1 + 114) != *(a2 + 114) || *(a1 + 115) != *(a2 + 115) || *(a1 + 116) != *(a2 + 116) || *(a1 + 117) != *(a2 + 117))
  {
    return 0;
  }

  v17 = *(a1 + 143);
  if (v17 >= 0)
  {
    v18 = *(a1 + 143);
  }

  else
  {
    v18 = *(a1 + 128);
  }

  v19 = *(a2 + 143);
  v20 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v19 = *(a2 + 128);
  }

  if (v18 != v19)
  {
    return 0;
  }

  v21 = v17 >= 0 ? (a1 + 120) : *(a1 + 120);
  v22 = v20 >= 0 ? (a2 + 120) : *(a2 + 120);
  if (memcmp(v21, v22, v18) || *(a1 + 152) != *(a2 + 152) || *(a1 + 160) != *(a2 + 160) || *(a1 + 164) != *(a2 + 164) || *(a1 + 168) != *(a2 + 168) || *(a2 + 172) != *(a1 + 172) || *(a2 + 176) != *(a1 + 176))
  {
    return 0;
  }

  v23 = *(a1 + 184);
  v24 = *(a2 + 184);
  if (v23 == v24 && *(a1 + 184))
  {
    if (*(a1 + 180) == *(a2 + 180))
    {
      goto LABEL_54;
    }

    return 0;
  }

  if (v23 != v24)
  {
    return 0;
  }

LABEL_54:
  if (*(a1 + 188) != *(a2 + 188) || *(a1 + 192) != *(a2 + 192) || *(a1 + 196) != *(a2 + 196) || *(a1 + 200) != *(a2 + 200))
  {
    return 0;
  }

  return *(a1 + 264) == *(a2 + 264);
}

void std::__shared_ptr_emplace<md::LabelImageKey>::__on_zero_shared(uint64_t a1)
{
  v2 = std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::~__value_func[abi:nn200100](a1 + 296);
  if (*(a1 + 287) < 0)
  {
    operator delete(*(a1 + 264));
  }

  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  if (*(a1 + 167) < 0)
  {
    v3 = *(a1 + 144);
    v4 = mdm::zone_mallocator::instance(v2);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v4, v3);
  }

  v5 = *(a1 + 96);
  if (v5 != *(a1 + 112))
  {
    free(v5);
  }

  if (*(a1 + 63) < 0)
  {
    v6 = *(a1 + 40);
    v7 = mdm::zone_mallocator::instance(v5);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v7, v6);
  }
}

void std::vector<std::shared_ptr<md::LabelIcon>,geo::allocator_adapter<std::shared_ptr<md::LabelIcon>,mdm::zone_mallocator>>::push_back[abi:nn200100](mdm::zone_mallocator *result, __int128 *a2)
{
  v4 = *(result + 1);
  v5 = *(result + 2);
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = mdm::zone_mallocator::instance(result);
      v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::LabelIcon>>(v12, v11);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[16 * v8];
    v15 = *a2;
    *v14 = *a2;
    if (*(&v15 + 1))
    {
      atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v16 = &v13[16 * v11];
    v7 = v14 + 16;
    v17 = *(result + 1) - *result;
    v18 = &v14[-v17];
    v19 = memcpy(&v14[-v17], *result, v17);
    v20 = *result;
    *result = v18;
    *(result + 1) = v7;
    *(result + 2) = v16;
    if (v20)
    {
      v21 = mdm::zone_mallocator::instance(v19);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelIcon>>(v21, v20);
    }
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    v4[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 2;
  }

  *(result + 1) = v7;
}

void md::PointLabelFeature::appendAlternateIcons(uint64_t *a1, uint64_t *a2, unsigned int *a3, mdm::zone_mallocator *a4, BOOL *a5)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2[2];
  v6 = *(v5 + 145);
  *a5 = *(v5 + 145) != 0;
  v38 = v6;
  if (v6)
  {
    v8 = 0;
    v37 = a1 + 87;
    while (1)
    {
      if (v8 >= *(v5 + 145))
      {
        v9 = 0;
      }

      else
      {
        if ((*(v5 + 457) & 1) == 0)
        {
          md::LabelStyle::prepareAlternateStyles(v5);
        }

        v9 = v5 + 360 + 16 * v8;
      }

      if (*v9 != 1)
      {
        return;
      }

      v10 = *(v9 + 8);
      v11 = *(v9 + 2);
      if (v11 <= 4)
      {
        break;
      }

      if (v11 != 5)
      {
        if (v11 != 7)
        {
          goto LABEL_31;
        }

        v15 = *(v5 + 272);
        if (!v15)
        {
          v16 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(v5);
          v15 = *v16;
          *(v5 + 272) = *v16;
        }

        v14 = v15 + 144;
LABEL_23:
        if ((*(v14 + 23) & 0x8000000000000000) != 0)
        {
          if (*(v14 + 8))
          {
LABEL_27:
            LOWORD(v19) = 0;
            v20 = 0;
            goto LABEL_28;
          }
        }

        else if (*(v14 + 23))
        {
          goto LABEL_27;
        }

        goto LABEL_31;
      }

      v24 = a3;
      if (a3)
      {
        v19 = a3[1];
      }

      else
      {
        v25 = *(v5 + 296);
        if (!v25)
        {
          v26 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(v5, 0);
          v25 = *v26;
          *(v5 + 296) = *v26;
        }

        v27 = *v37;
        if (!*v37)
        {
          goto LABEL_31;
        }

        v28 = *(v27 + 33);
        if (!*(v27 + 33))
        {
          goto LABEL_31;
        }

        v29 = *(v25 + 64);
        v30 = *v27;
        if (*v30 == v29)
        {
          v19 = v30[1];
        }

        else
        {
          v31 = 0;
          v32 = v30 + 2;
          do
          {
            if (v28 - 1 == v31)
            {
              goto LABEL_31;
            }

            v33 = *v32;
            v32 += 2;
            ++v31;
          }

          while (v33 != v29);
          if (v31 >= v28)
          {
            goto LABEL_31;
          }

          v19 = v30[2 * v31 + 1];
          if (!v25)
          {
            v34 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(v5, 0);
            v25 = *v34;
            *(v5 + 296) = *v34;
          }
        }

        v24 = (v25 + 64);
      }

      v20 = *v24;
      if (*v24)
      {
        v14 = 0;
LABEL_28:
        v21 = a2[1];
        v22 = a2[2];
        v23 = *a2;
        if (!*(v22 + 37))
        {
          *(v22 + 37) = *md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(a2[2], 0);
        }

        (*(*a1 + 696))(&v39, a1);
        md::PointLabelFeature::customImageData(__p, a1);
        md::LabelStyle::createIcon((&v39 + 5), v22, v23, v21, v37, v14, v20, v19, 0, v10, &v39, __p);
      }

LABEL_31:
      if (++v8 == v38)
      {
        return;
      }
    }

    if (v11 == 3)
    {
      v17 = *(v5 + 272);
      if (!v17)
      {
        v18 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(v5);
        v17 = *v18;
        *(v5 + 272) = *v18;
      }

      v14 = v17 + 80;
    }

    else
    {
      if (v11 != 4)
      {
        goto LABEL_31;
      }

      v12 = *(v5 + 272);
      if (!v12)
      {
        v13 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(v5);
        v12 = *v13;
        *(v5 + 272) = *v13;
      }

      v14 = v12 + 112;
    }

    goto LABEL_23;
  }
}

void sub_1B2BDDA10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a21);
  }

  _Unwind_Resume(exception_object);
}

double md::ImageLabelPart::ImageLabelPart(md::ImageLabelPart *this)
{
  v1 = (this + 572);
  md::LabelPart::LabelPart(this);
  *v2 = &unk_1F2A4BAF0;
  __asm { FMOV            V0.4S, #1.0 }

  *v1 = _Q0;
  *(v2 + 588) = 1065353216;
  *(v2 + 592) = 256;
  *(v2 + 594) = 0;
  *(v1 + 24) = _Q0;
  *(v2 + 612) = 1065353216;
  *(v2 + 616) = 256;
  *(v2 + 618) = 0;
  *(v2 + 620) = 0;
  *&result = 257;
  *(v2 + 628) = 257;
  *(v2 + 632) = 1;
  return result;
}

std::__shared_weak_count *std::__split_buffer<std::shared_ptr<md::TrafficIncidentLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::TrafficIncidentLabelFeature>,mdm::zone_mallocator> &>::~__split_buffer(std::__shared_weak_count *a1)
{
  v1 = a1;
  shared_owners = a1->__shared_owners_;
  shared_weak_owners = a1->__shared_weak_owners_;
  while (shared_weak_owners != shared_owners)
  {
    v1->__shared_weak_owners_ = shared_weak_owners - 16;
    a1 = *(shared_weak_owners - 8);
    if (a1)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](a1);
      shared_weak_owners = v1->__shared_weak_owners_;
    }

    else
    {
      shared_weak_owners -= 16;
    }
  }

  v4 = v1->__vftable;
  if (v1->__vftable)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::TrafficIncidentLabelFeature>>(v5, v4);
  }

  return v1;
}

uint64_t md::PointIconLabelPart::PointIconLabelPart(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, md::LabelStyle *a5, int a6)
{
  v11 = md::IconLabelPart::IconLabelPart(a1, a2, 1, a5);
  *v11 = &unk_1F2A596C8;
  *(v11 + 832) = a6;
  *(v11 + 840) = 0;
  v12 = *(a5 + 34);
  if (!v12)
  {
    v13 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(a5);
    v12 = *v13;
    *(a5 + 34) = *v13;
  }

  md::LabelStyle::namedIcon(&v19, a5, a3, a4, v12 + 176, 1);
  if (v19)
  {
    v15 = mdm::zone_mallocator::instance(v14);
    v16 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v15, 0x340uLL);
    md::IconLabelPart::IconLabelPart(v16, &v19, 0, 0);
    v17 = *(a1 + 840);
    *(a1 + 840) = v16;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    (*(*v16 + 816))(v16, 0xFFFFFFFFLL);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }

  return a1;
}

void sub_1B2BDDC88(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  v13 = mdm::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v13, v11);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  v14 = *(v10 + 105);
  *(v10 + 105) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  md::IconLabelPart::~IconLabelPart(v10);
  _Unwind_Resume(a1);
}

void std::vector<std::weak_ptr<md::LabelTrafficTile>,geo::allocator_adapter<std::weak_ptr<md::LabelTrafficTile>,mdm::zone_mallocator>>::push_back[abi:nn200100](mdm::zone_mallocator *result, uint64_t a2)
{
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    if ((v7 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      v11 = mdm::zone_mallocator::instance(result);
      v12 = pthread_rwlock_rdlock((v11 + 32));
      if (v12)
      {
        geo::read_write_lock::logFailure(v12, "read lock", v13);
      }

      v14 = malloc_type_zone_malloc(*v11, 16 * v10, 0x20040A4A59CD2uLL);
      atomic_fetch_add((v11 + 24), 1u);
      geo::read_write_lock::unlock((v11 + 32));
    }

    else
    {
      v14 = 0;
    }

    v15 = &v14[16 * v7];
    v16 = &v14[16 * v10];
    *v15 = *a2;
    v6 = v15 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v17 = *(result + 1) - *result;
    v18 = &v15[-v17];
    v19 = memcpy(&v15[-v17], *result, v17);
    v20 = *result;
    *result = v18;
    *(result + 1) = v6;
    *(result + 2) = v16;
    if (v20)
    {
      v21 = mdm::zone_mallocator::instance(v19);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::weak_ptr<md::LabelTrafficTile>>(v21, v20);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  *(result + 1) = v6;
}

double md::LabelIconStyleMonitor::initialize(uint64_t a1, int a2, md::LabelStyle *this)
{
  *(a1 + 51) = a2;
  if (a2)
  {
    if (this)
    {
      v5 = *(this + 34);
      if (!v5)
      {
        v6 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(this);
        v5 = *v6;
        *(this + 34) = *v6;
        a2 = *(a1 + 51);
      }

      *(a1 + 50) = *(v5 + 69);
      if (a2 == 2)
      {
        v7 = *(this + 33);
        if (!v7)
        {
          v8 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(this);
          v7 = *v8;
          *(this + 33) = *v8;
        }

        v9 = (v7 + 72);
      }

      else
      {
        v9 = md::LabelStyle::monitorIconName(this);
      }

      std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=(a1, v9);
      v10 = *(this + 37);
      if (!v10)
      {
        v11 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(this, 0);
        v10 = *v11;
        *(this + 37) = *v11;
      }

      *(a1 + 49) = *(v10 + 88);
      *(a1 + 48) = *(v10 + 92);
      result = *(v10 + 64);
      *(a1 + 32) = result;
      *(a1 + 40) = *(v10 + 56);
      *(a1 + 52) = *(this + 145);
    }

    else
    {
      *(a1 + 51) = 0;
    }
  }

  return result;
}

uint64_t md::LabelIconStyleMonitor::LabelIconStyleMonitor(uint64_t a1, int a2, md::LabelStyle *a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = -1;
  *(a1 + 49) = 0;
  md::LabelIconStyleMonitor::initialize(a1, a2, a3);
  return a1;
}

void sub_1B2BDDF60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    v3 = *v1;
    v4 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v4, v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::LabelStyle::monitorIconName(md::LabelStyle *this)
{
  v1 = *(this + 34);
  if (!v1)
  {
    v3 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(this);
    v1 = *v3;
    *(this + 34) = *v3;
  }

  v4 = *(v1 + 263);
  if (v4 < 0)
  {
    v4 = *(v1 + 248);
  }

  v5 = v4 == 0;
  v6 = 240;
  if (v5)
  {
    v6 = 80;
  }

  return v1 + v6;
}

void md::LabelStyle::namedIcon(void *a1, md::LabelStyle *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = *(a5 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a5 + 8);
  }

  if (v6)
  {
    _ZNSt3__115allocate_sharedB8nn200100IN2md13LabelImageKeyENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&v7);
  }

  *a1 = 0;
  a1[1] = 0;
}

void sub_1B2BDE160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::shared_ptr<md::LabelIcon>,geo::allocator_adapter<std::shared_ptr<md::LabelIcon>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void (__cdecl ***result)(std::__shared_weak_count *__hidden this))
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1->~__shared_weak_count_0;
    v4 = **result;
    if (v3 != v2)
    {
      v5 = result;
      do
      {
        result = *(v3 - 1);
        if (result)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](result);
        }

        v3 = (v3 - 16);
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1->~__shared_weak_count_0 = v2;
    v6 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelIcon>>(v6, v4);
  }
}

uint64_t md::ImageLabelPart::setContentType(uint64_t result, int a2)
{
  *(result + 562) = a2;
  *(result + 632) = (a2 - 1) < 4;
  return result;
}

uint64_t md::PointLabelFeature::mainTextIndex(uint64_t *a1, uint64_t *a2)
{
  if (!(*(*a1 + 64))(a1) || *(a1[60] + 236) != 1)
  {
    return *(a2[8] + 130);
  }

  v4 = *a2;

  return md::PointLabelFeature::externalFeatureTextIndex(a1, 1, v4);
}

_BYTE *md::PointLabelFeature::newTextPart(md::LabelFeature *a1, void *a2, const md::LabelTextStyleGroup *a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(a1 + 65);
  if (a3 >= ((*(a1 + 66) - v5) >> 6))
  {
    return 0;
  }

  v6 = a4;
  if ((*(*a2 + 3025) & 1) == 0)
  {
    v10 = a2[2];
    v11 = *(v10 + 272);
    if (!v11)
    {
      v12 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(a2[2]);
      v11 = *v12;
      *(v10 + 272) = *v12;
    }

    if (*(v11 + 72) != 1)
    {
      return 0;
    }

    v5 = *(a1 + 65);
  }

  v13 = v5 + (v4 << 6);
  if ((*(v13 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(v13 + 8))
    {
      return 0;
    }
  }

  else if (!*(v13 + 23))
  {
    return 0;
  }

  v14 = *(a1 + 60);
  if (!v14)
  {
    goto LABEL_14;
  }

  v15 = *(v14 + 88);
  if (v15 == 3)
  {
    return 0;
  }

  if (!v15)
  {
LABEL_14:
    if (*(a2[2] + 121) != 1)
    {
      return 0;
    }
  }

  if (*(*a2 + 3025))
  {
    goto LABEL_19;
  }

  v16 = a2[2];
  v17 = *(v16 + 272);
  if (!v17)
  {
    v18 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(a2[2]);
    v17 = *v18;
    *(v16 + 272) = *v18;
  }

  if (*(v17 + 73) == 1)
  {
LABEL_19:
    v19 = md::LabelStyle::textStyleGroup(a2[2], v6);
    v20 = a2[2];
    v21 = *(v20 + 272);
    if (!v21)
    {
      v22 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(a2[2]);
      v21 = *v22;
      *(v20 + 272) = *v22;
    }

    if (*(v21 + 70) == 1)
    {
      _ZNSt3__115allocate_sharedB8nn200100IN2md13LabelImageKeyENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&v32);
    }

    if (*(v19 + 100) > 0.0)
    {
      v30 = *(a2[1] + 404);
      md::LabelFeature::textDataForZoom(&v32, a1, a3, v19);
      md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::StringWithLocaleImp(&v34, " … ", 0);
      v23 = md::PointLabelFeature::indexForTextEntry(a1, &v34);
      v24 = v23;
      if (v38 < 0)
      {
        v25 = v37;
        v26 = mdm::zone_mallocator::instance(v23);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v26, v25);
      }

      if (SHIBYTE(v36) < 0)
      {
        v27 = v34;
        v28 = mdm::zone_mallocator::instance(v23);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v28, v27);
      }

      md::LabelFeature::textDataForZoom(&v34, a1, v24, v19);
      if (v32)
      {
        std::allocate_shared[abi:nn200100]<md::LabelText,std::allocator<md::LabelText>,std::shared_ptr<md::TextDataString> &,std::shared_ptr<md::TextDataString> &,unsigned char const&,0>(&v31, &v32, &v34, &v30);
      }

      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v35);
      }

      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v33);
      }
    }
  }

  return 0;
}

void sub_1B2BDE758(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17)
{
  v19 = mdm::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v19, v17);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a17);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  _Unwind_Resume(a1);
}

uint64_t md::LabelStyle::textStyleGroup(uint64_t a1, int a2)
{
  v2 = a2 == 1;
  v3 = a1 + 280;
  if (a2 == 1)
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v3 + 8 * (a2 == 1));
  if (v5)
  {
    if (vabds_f32(v5[2], *(a1 + 104)) >= 0.01)
    {
      md::LabelStyle::updateStyleGroup<md::LabelTextStyleGroup>(a1, v5, v4);
      v5 = *(v3 + 8 * v2);
    }
  }

  else
  {
    v5 = md::LabelStyle::prepareStyleGroup<md::LabelTextStyleGroup>(a1, v4);
    *(v3 + 8 * v2) = v5;
  }

  return *v5;
}

void md::LabelFeature::textDataForZoom(md::LabelFeature *this, md::LabelFeature *a2, const md::LabelTextStyleGroup *a3, uint64_t a4)
{
  v5 = a3;
  v8 = (*(*a2 + 496))(a2);
  v9 = *(a2 + 20);
  v10 = *(a2 + 21);
  if (v8 > 0x6DB6DB6DB6DB6DB7 * (v10 - v9))
  {
    md::LabelFeature::updateTextVector(a2);
    v9 = *(a2 + 20);
    v10 = *(a2 + 21);
  }

  md::TextDataStore::textDataForZoom(this, v9, v10, v5, a4 + 72);
}

void md::TextDataStore::textDataForZoom(void *a1, void *a2, void *a3, int a4, uint64_t a5)
{
  if (a2 == a3)
  {
LABEL_5:
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    v7 = a2;
    while (*v7 != a4)
    {
      v7 += 7;
      if (v7 == a3)
      {
        goto LABEL_5;
      }
    }

    v8 = v7[3];
    v9 = v7[4];
    while (1)
    {
      if (v8 == v9)
      {
        v10 = 0;
        goto LABEL_12;
      }

      if (!md::FontOptions::needsGlyphUpdate(*(*v8 + 16), a5))
      {
        break;
      }

      v8 += 2;
    }

    v17 = *v8;
    v10 = v8[1];
    if (v10)
    {
      atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
    }

    if (v17)
    {
      *a1 = v17;
      return;
    }

LABEL_12:
    if (*(a5 + 28) != 0.0)
    {
      v11 = *(a5 + 23);
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(a5 + 8);
      }

      if (v11)
      {
        v12 = mdm::zone_mallocator::instance(v10);
        v13 = pthread_rwlock_rdlock((v12 + 32));
        if (v13)
        {
          geo::read_write_lock::logFailure(v13, "read lock", v14);
        }

        v15 = malloc_type_zone_malloc(*v12, 0xA8uLL, 0x1081040D79BF710uLL);
        atomic_fetch_add((v12 + 24), 1u);
        geo::read_write_lock::unlock((v12 + 32));
        v15[1] = 0;
        v15[2] = 0;
        *v15 = &unk_1F2A5B830;
        v16 = v7[2];
        v15[4] = v7[1];
        v15[5] = v16;
        if (v16)
        {
          atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
        }

        operator new();
      }
    }

    *a1 = 0;
    a1[1] = 0;
    if (v10)
    {

      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }
  }
}

void sub_1B2BDECE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (*(&a9 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&a9 + 1));
  }

  _Unwind_Resume(exception_object);
}

_DWORD *std::vector<md::LabelIdentifier>::__emplace_back_slow_path<md::LabelIdentifier const&>(uint64_t a1, _DWORD *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = (v4 - v3) >> 2;
  v7 = v6 + 1;
  if ((v6 + 1) >> 62)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v8 = *(a1 + 16) - v3;
  if (v8 >> 1 > v7)
  {
    v7 = v8 >> 1;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v9 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (!(v9 >> 62))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *(4 * v6) = *a2;
  if (v3 != v4)
  {
    v10 = v3;
    v11 = (4 * v6 + v3 - v4);
    do
    {
      v12 = *v10;
      v10 += 4;
      *v11++ = v12;
    }

    while (v10 != v4);
  }

  *a1 = 4 * v6 + v3 - v4;
  *(a1 + 8) = 4 * v6 + 4;
  *(a1 + 16) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return (4 * v6 + 4);
}

BOOL md::FontOptions::needsGlyphUpdate(void *a1, void *a2)
{
  if (*(a1 + 36) != *(a2 + 36) || *(a1 + 37) != *(a2 + 37) || *(a1 + 38) != *(a2 + 38) || *(a1 + 39) != *(a2 + 39) || *(a1 + 40) != *(a2 + 40))
  {
    return 1;
  }

  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 1;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) != 0;
}

void md::PointLabelFeature::textColor(_BYTE *a1, uint64_t *a2, uint64_t a3, int a4)
{
  v7 = *(md::LabelStyle::textStyleGroup(*(a3 + 16), a4) + 64);
  if ((v7 - 5) > 1u)
  {
    *a1 = 0;
    a1[10] = 0;
  }

  else
  {

    md::PointLabelFeature::iconPackColor(a1, a2, a3, v7);
  }
}

void md::PointLabelFeature::iconPackColor(_BYTE *a1, uint64_t *a2, uint64_t a3, int a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if ((*(a3 + 85) & 1) == 0)
  {
    *(a3 + 85) = 1;
    v7 = *(a3 + 8);
    v6 = *(a3 + 16);
    v8 = *a3;
    v9 = (*(*a2 + 736))(a2, a3);
    v10 = *(a3 + 16);
    if (!*(v10 + 296))
    {
      *(v10 + 296) = *md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*(a3 + 16), 0);
    }

    (*(*a2 + 696))(&v15, a2);
    LOBYTE(v16) = 0;
    v17 = 0;
    md::PointLabelFeature::customImageData(v19, a2);
    md::LabelStyle::pointIconImageKey(&v18, v6, v8, v7, a2 + 87, v9, &v15, 0, &v16, 0, 255, 0, v19);
  }

  if (a4 == 6)
  {
    if (*(a3 + 95) == 1)
    {
      v11 = *(a3 + 91);
      goto LABEL_11;
    }

LABEL_15:
    v14 = 0;
    *a1 = 0;
    goto LABEL_16;
  }

  if (a4 != 5 || *(a3 + 90) != 1)
  {
    goto LABEL_15;
  }

  v11 = *(a3 + 86);
LABEL_11:
  v12 = *(a3 + 100);
  v13 = *(a3 + 96);
  *a1 = 0;
  a1[4] = 0;
  *a1 = v11;
  a1[4] = 1;
  a1[5] = 0;
  a1[9] = 0;
  v14 = 1;
  if (v12)
  {
    *(a1 + 5) = v13;
    a1[9] = 1;
  }

LABEL_16:
  a1[10] = v14;
}

void sub_1B2BDF4A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }

  _Unwind_Resume(exception_object);
}

void md::LabelImageLoader::loadIconImage(void *a1, uint64_t a2, uint64_t *a3)
{
  v73 = *MEMORY[0x1E69E9840];
  v57[0] = 0;
  __asm { FMOV            V0.2S, #1.0 }

  v57[1] = _D0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v67 = v68;
  v68[0] = 0;
  v68[2] = 0;
  v72 = 0;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v11 = *a3;
  if (*(*a3 + 112) == 6 && *(v11 + 184) == 1)
  {
    grl::IconModifiers::setTailDirection(v57, *(v11 + 180));
  }

  if (*(v11 + 197) == 1)
  {
    grl::IconModifiers::setUseBalloonShape(v57);
  }

  v12 = (v11 + 120);
  v13 = *(v11 + 143);
  if ((v13 & 0x8000000000000000) != 0)
  {
    v13 = *(v11 + 128);
    if (!v13)
    {
      goto LABEL_22;
    }

    if (v13 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_75;
    }

    v12 = *v12;
  }

  else if (!*(v11 + 143))
  {
    goto LABEL_22;
  }

  if (v13 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v13;
  memmove(&__dst, v12, v13);
  __dst.__r_.__value_.__s.__data_[v13] = 0;
  grl::IconModifiers::setText(v57, &__dst);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v11 = *a3;
  if (*(*a3 + 112) != 6)
  {
    grl::IconModifiers::setScale(v57, *(v11 + 188));
    grl::IconModifiers::setPathScale(v57, *(v11 + 200));
    grl::IconModifiers::setGlyphHidden(v57, 1);
    grl::IconModifiers::setClusterIcon(v57);
    v14 = *(v11 + 116);
    if (v14 == 2)
    {
      grl::IconModifiers::setLandmark(v57);
    }

    else if (v14 == 10)
    {
      grl::IconModifiers::setSelected(v57);
    }
  }

LABEL_22:
  std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::__value_func[abi:nn200100](&__dst, v11 + 272);
  v15 = v52;
  std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::~__value_func[abi:nn200100](&__dst);
  if (v15)
  {
    std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::__value_func[abi:nn200100](v56, *a3 + 272);
    grl::IconModifiers::setImageDataProvider(v57, v56);
    std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::~__value_func[abi:nn200100](v56);
  }

  v17 = *a3;
  v16.i32[0] = *(*a3 + 160);
  v54 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v16))), vdupq_n_s32(0x3B808081u));
  geo::Color<float,4,(geo::ColorSpace)2>::Color<(geo::ColorSpace)0,int,void>(&__dst, &v54);
  v18 = vshl_u32(vcvt_s32_f32(vmul_f32(__dst.__r_.__value_.__r.__words[1], vdup_n_s32(0x437F0000u))), 0x1800000010);
  LODWORD(__dst.__r_.__value_.__l.__data_) = vorr_s8(vdup_lane_s32(v18, 1), v18).u32[0] | ((*(__dst.__r_.__value_.__r.__words + 1) * 255.0) << 8) | (*&__dst.__r_.__value_.__l.__data_ * 255.0);
  grl::IconModifiers::setTransitLineColor(v57, &__dst);
  grl::IconModifiers::setMirrored(v57, *(v17 + 196));
  grl::IconModifiers::setComponent(v57, *(v17 + 117));
  v20 = *(v17 + 72);
  v19 = *(v17 + 80);
  v49 = 0;
  v50 = 0;
  v48 = 0;
  v21 = v19 - v20;
  if (v19 != v20)
  {
    if (!((v21 >> 1) >> 62))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v21 >> 1);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v54.i32[0] = 1065353216;
  v54.i8[4] = 4;
  *(&v54.i32[1] + 2) = 0;
  v54.i16[5] = -1;
  v54.i8[12] = 0;
  memset(v55, 0, 24);
  v22 = *a3;
  grl::IconRequestOptions::setContentScale(v54.f32, *(*a3 + 56));
  grl::IconModifiers::setMirrored(&v54, *(v22 + 168));
  grl::IconRequestOptions::setVariant(&v54, *(v22 + 172));
  grl::IconRequestOptions::setDataVariant(&v54, *(v22 + 176));
  grl::IconRequestOptions::setCountryCode(&v54, *(v22 + 192));
  (*(**(*(*(a2 + 112) + 168) + 64) + 48))(&v46);
  v44 = 0;
  v45 = 0;
  v43 = 0;
  if (v46)
  {
    std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(&v43, *v46, v46[1], 0xAAAAAAAAAAAAAAABLL * ((v46[1] - *v46) >> 3));
    v23 = v43;
    v24 = v44;
  }

  else
  {
    v24 = 0;
    v23 = 0;
  }

  grl::IconRequestOptions::setResourceNames(&v54, v23, v24);
  v53 = 0u;
  v52 = 0u;
  *&__dst.__r_.__value_.__r.__words[1] = 0u;
  v25 = *a3;
  if (*(*a3 + 60))
  {
    grl::IconManager::imageForKeyValue(&__p, [*(*(a2 + 112) + 96) grlIconManager], *(*a3 + 60), *(*a3 + 64), v57, v54.f32, &__dst);
    v27 = __p;
    v26 = v39;
    v25 = *a3;
    if (__p)
    {
      *(v25 + 208) = __dst.__r_.__value_.__l.__data_;
      std::string::operator=((v25 + 216), &__dst.__r_.__value_.__r.__words[1]);
      std::string::operator=((v25 + 240), (&v52 + 8));
      v28 = 0;
      *(*a3 + 113) = 8;
      *a1 = v27;
      a1[1] = v26;
      goto LABEL_63;
    }
  }

  else
  {
    v26 = 0;
  }

  v29 = *(v25 + 39);
  if (v29 < 0)
  {
    v29 = *(v25 + 24);
  }

  v30 = *(a2 + 112);
  if (!v29)
  {
    v28 = v26;
    goto LABEL_55;
  }

  v31 = [*(v30 + 96) grlIconManager];
  v32 = *(v25 + 39);
  if ((v32 & 0x8000000000000000) != 0)
  {
    v32 = *(v25 + 24);
    if (v32 <= 0x7FFFFFFFFFFFFFF7)
    {
      v33 = *(v25 + 16);
      goto LABEL_42;
    }

LABEL_75:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v33 = (v25 + 16);
LABEL_42:
  if (v32 >= 0x17)
  {
    operator new();
  }

  v40 = v32;
  if (v32)
  {
    memmove(&__p, v33, v32);
  }

  *(&__p + v32) = 0;
  grl::IconManager::imageForName(&v41, v31, &__p, v57, v54.f32, &__dst);
  v34 = v41;
  v28 = v42;
  v41 = 0;
  v42 = 0;
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v26);
    if (v42)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v42);
    }
  }

  if (v40 < 0)
  {
    operator delete(__p);
    if (v34)
    {
      goto LABEL_52;
    }
  }

  else if (v34)
  {
LABEL_52:
    v35 = *a3;
    *(v35 + 208) = __dst.__r_.__value_.__l.__data_;
    std::string::operator=((v35 + 216), &__dst.__r_.__value_.__r.__words[1]);
    std::string::operator=((v35 + 240), (&v52 + 8));
    *(*a3 + 113) = 9;
    *a1 = v34;
    a1[1] = v28;
    v28 = 0;
    goto LABEL_63;
  }

  v30 = *(a2 + 112);
LABEL_55:
  if (*(v30 + 3702) == 1)
  {
    grl::IconManager::imageForKeyValue(&__p, [*(v30 + 96) grlIconManager], 65544, 1u, v57, v54.f32, 0);
    v37 = __p;
    v36 = v39;
    __p = 0;
    v39 = 0;
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v28);
      if (v39)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v39);
      }
    }

    if (v37)
    {
      v28 = 0;
      *(*a3 + 113) = 10;
      *a1 = v37;
      a1[1] = v36;
      goto LABEL_63;
    }

    v28 = v36;
  }

  *a1 = 0;
  a1[1] = 0;
LABEL_63:
  if (SHIBYTE(v53) < 0)
  {
    operator delete(*(&v52 + 1));
  }

  if (SBYTE7(v52) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__size_);
  }

  __dst.__r_.__value_.__r.__words[0] = &v43;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&__dst);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v47);
  }

  __dst.__r_.__value_.__r.__words[0] = v55;
  std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&__dst);
  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  grl::IconModifiers::~IconModifiers(v57);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }
}

void sub_1B2BDFC3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, void *a21, uint64_t a22, uint64_t a23, char *a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  a24 = &a16;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&a24);
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  a24 = v48;
  std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a24);
  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  grl::IconModifiers::~IconModifiers(&a47);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v47);
  }

  _Unwind_Resume(a1);
}

__int128 *md::LineLabelFeature::labelPoint(uint64_t a1, unsigned int *a2)
{
  md::LineLabelPlacer::positionForIdentifier(&v4, a1 + 192, *a2);
  if (v4)
  {
    v2 = (*(*v4 + 56))(v4);
  }

  else
  {
    md::LabelPoint::NullPoint(0);
    v2 = &md::LabelPoint::NullPoint(void)::kNullLabelPoint;
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  return v2;
}

void sub_1B2BDFDA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t geo::Color<float,4,(geo::ColorSpace)2>::Color<(geo::ColorSpace)0,int,void>(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 4);
  v5 = *(a2 + 8);
  v6 = *(a2 + 12);
  if (*a2 >= 0.0031308)
  {
    v7 = (powf(v3, 0.41667) * 1.055) + -0.055;
  }

  else
  {
    v7 = v3 * 12.92;
  }

  if (v4 >= 0.0031308)
  {
    v8 = (powf(v4, 0.41667) * 1.055) + -0.055;
  }

  else
  {
    v8 = v4 * 12.92;
  }

  if (v5 >= 0.0031308)
  {
    v9 = (powf(v5, 0.41667) * 1.055) + -0.055;
  }

  else
  {
    v9 = v5 * 12.92;
  }

  *a1 = v7;
  *(a1 + 4) = v8;
  *(a1 + 8) = v9;
  *(a1 + 12) = v6;
  return a1;
}

void *md::LineLabelPlacer::positionForIdentifier(void *result, uint64_t a2, unsigned int a3)
{
  v5 = *(a2 + 40);
  v3 = a2 + 40;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 32);
    v8 = v7 >= a3;
    v9 = v7 < a3;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * v9);
  }

  while (v4);
  if (v6 != v3 && *(v6 + 32) <= a3)
  {
    v11 = *(v6 + 40);
    v10 = *(v6 + 48);
    *result = v11;
    result[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_9:
    *result = 0;
    result[1] = 0;
  }

  return result;
}

uint64_t grl::IconModifiers::setTransitLineColor(uint64_t result, _DWORD *a2)
{
  if ((*(result + 25) & 1) == 0)
  {
    *(result + 25) = 1;
  }

  *(result + 26) = *a2;
  return result;
}

void *md::LabelPool::resourcesAtMercatorPoint(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 0;
  result[1] = 0;
  if (a2 == a3)
  {
    v8 = 0;
  }

  else
  {
    v6 = a2;
    v17 = result;
    v7 = 0;
    v8 = 0;
    v9 = -1;
    do
    {
      v11 = *(*v6 + 160);
      v10 = *(*v6 + 168);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v11)
      {
        v12 = *(v11 + 48);
        if (v12 > v9)
        {
          v13 = 0;
          v14 = 1;
          while (1)
          {
            v15 = *(a4 + 8 * v13);
            if (v15 < *(v11 + 56 + 8 * v13) || v15 >= *(v11 + 72 + 8 * v13))
            {
              break;
            }

            v16 = v14;
            v14 = 0;
            v13 = 1;
            if ((v16 & 1) == 0)
            {
              if (v10)
              {
                atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v7)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v7);
              }

              v7 = v10;
              v8 = v11;
              v9 = v12;
              break;
            }
          }
        }
      }

      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v10);
      }

      v6 += 16;
    }

    while (v6 != a3);
    result = v17;
    v17[1] = v7;
  }

  *result = v8;
  return result;
}

void std::vector<std::string>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void md::LabelMapTile::updateLabels(md::LabelManager *,md::LabelPool &,int,BOOL)::$_0::operator()(uint64_t a1, id **a2)
{
  v4 = *a1;
  v5 = *a1 + 48;
  v6 = *a2;
  v7 = 1;
  LODWORD(v22) = 1;
  v8 = (*(*v6 + 14))(v6, &v22);
  v9 = md::LabelPoint::mercatorPoint(v8);
  for (i = 0; ; i = 1)
  {
    v11 = *(v9 + 8 * i);
    if (v11 < *(v5 + 8 * i) || v11 > *(v4 + 64 + 8 * i))
    {
      break;
    }

    v12 = v7;
    v7 = 0;
    if ((v12 & 1) == 0)
    {
      v13 = *a2;
      if (!(*a2)[9])
      {
        v13[9] = (atomic_fetch_add((*(**(a1 + 8) + 288) + 680), 1uLL) + 1);
        v13 = *a2;
      }

      md::TrafficIncidentLabelFeature::updateStyle(v13, **(a1 + 8));
      if (*(*(**a2 + 71))())
      {
        v14 = *(a1 + 16);
        v15 = **(a1 + 8);
        v16 = a2[1];
        v21[0] = *a2;
        v21[1] = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v20 = 1;
        md::LabelPool::labelForFeature(&v22, v14, v15, v21, &v20, 1);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v16);
        }

        v17 = v22;
        if (v22)
        {
          md::LabelMapTile::addLabel(v4, &v22);
          v18 = **(a1 + 8);
          v19 = a2[1];
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          md::Label::update(v17, v18, v4);
          if (v19)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v19);
          }
        }

        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v23);
        }
      }

      else
      {
        ++*(v4 + 100);
      }

      return;
    }
  }
}

void sub_1B2BE02A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

mdm::zone_mallocator *md::TrafficIncidentLabelFeature::updateStyleAttributes(md::TrafficIncidentLabelFeature *this, md::LabelManager *a2, int a3)
{
  v135[1] = *MEMORY[0x1E69E9840];
  result = (*(*a2 + 16))(a2);
  v6 = result;
  if (!*(this + 42) || (*(this + 352) == result ? (v7 = a3 == 0) : (v7 = 0), !v7))
  {
    *(this + 352) = result;
    v132 = 0;
    v133 = 0;
    v134 = 0;
    v131 = v135;
    v8 = mdm::zone_mallocator::instance(result);
    v9 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v8, 1);
    *v9 = 0x300000005;
    memcpy(v9 - (v133 - v132), v132, v133 - v132);
    v10 = v132;
    v11 = v134;
    v132 = v9 - (v133 - v132);
    v133 = v9 + 1;
    v134 = (v9 + 1);
    v129 = v10;
    v130 = v11;
    v127 = v10;
    v128 = v10;
    v12 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v127);
    v133 = v9 + 1;
    if ((v9 + 1) >= v134)
    {
      v14 = ((v9 + 1) - v132) >> 3;
      if ((v14 + 1) >> 61)
      {
        goto LABEL_149;
      }

      v15 = (v134 - v132) >> 2;
      if (v15 <= v14 + 1)
      {
        v15 = v14 + 1;
      }

      if (v134 - v132 >= 0x7FFFFFFFFFFFFFF8)
      {
        v16 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v15;
      }

      v131 = v135;
      if (v16)
      {
        v17 = mdm::zone_mallocator::instance(v12);
        v18 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v17, v16);
      }

      else
      {
        v18 = 0;
      }

      v20 = &v18[8 * v16];
      v19 = &v18[8 * v14];
      *v19 = 0xDE00000006;
      v13 = (v19 + 8);
      v21 = &v19[-(v133 - v132)];
      memcpy(v21, v132, v133 - v132);
      v22 = v132;
      v23 = v134;
      v132 = v21;
      v133 = v13;
      v134 = v20;
      v129 = v22;
      v130 = v23;
      v127 = v22;
      v128 = v22;
      std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v127);
    }

    else
    {
      v9[1] = 0xDE00000006;
      v13 = v9 + 2;
    }

    v133 = v13;
    v24 = [*(this + 31) type];
    if (v24 >= 0xF)
    {
      v25 = v24;
    }

    else
    {
      v25 = dword_1B34180F8[v24];
    }

    v26 = v133;
    if (v133 >= v134)
    {
      v28 = (v133 - v132) >> 3;
      if ((v28 + 1) >> 61)
      {
        goto LABEL_149;
      }

      v29 = (v134 - v132) >> 2;
      if (v29 <= v28 + 1)
      {
        v29 = v28 + 1;
      }

      if (v134 - v132 >= 0x7FFFFFFFFFFFFFF8)
      {
        v30 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v30 = v29;
      }

      v131 = v135;
      if (v30)
      {
        v31 = mdm::zone_mallocator::instance(v24);
        v32 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v31, v30);
      }

      else
      {
        v32 = 0;
      }

      v34 = &v32[8 * v30];
      v33 = &v32[8 * v28];
      *v33 = ((v25 << 32) | 0x10002) + 6;
      v27 = (v33 + 8);
      v35 = &v33[-(v133 - v132)];
      memcpy(v35, v132, v133 - v132);
      v36 = v132;
      v37 = v134;
      v132 = v35;
      v133 = v27;
      v134 = v34;
      v129 = v36;
      v130 = v37;
      v127 = v36;
      v128 = v36;
      std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v127);
    }

    else
    {
      *v133 = ((v25 << 32) | 0x10002) + 6;
      v27 = v26 + 1;
    }

    v133 = v27;
    v38 = [*(this + 31) significance];
    v39 = 0xD0000000ALL;
    if (v38 > 3)
    {
      if ((v38 - 4) >= 2)
      {
        if (v38 == 6)
        {
          v39 = 0xE0000000ALL;
        }
      }

      else
      {
        v39 = 0x20000000ALL;
      }
    }

    else
    {
      switch(v38)
      {
        case 0:
          goto LABEL_56;
        case 2:
          v39 = 10;
          break;
        case 3:
          v39 = 0x10000000ALL;
          break;
      }
    }

    v40 = v133;
    if (v133 >= v134)
    {
      v42 = (v133 - v132) >> 3;
      if ((v42 + 1) >> 61)
      {
        goto LABEL_149;
      }

      v43 = (v134 - v132) >> 2;
      if (v43 <= v42 + 1)
      {
        v43 = v42 + 1;
      }

      if (v134 - v132 >= 0x7FFFFFFFFFFFFFF8)
      {
        v44 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v44 = v43;
      }

      v131 = v135;
      if (v44)
      {
        v45 = mdm::zone_mallocator::instance(v38);
        v46 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v45, v44);
      }

      else
      {
        v46 = 0;
      }

      v48 = &v46[8 * v44];
      v47 = &v46[8 * v42];
      *v47 = v39;
      v41 = v47 + 1;
      v49 = v47 - (v133 - v132);
      memcpy(v49, v132, v133 - v132);
      v50 = v132;
      v51 = v134;
      v132 = v49;
      v133 = v41;
      v134 = v48;
      v129 = v50;
      v130 = v51;
      v127 = v50;
      v128 = v50;
      std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v127);
    }

    else
    {
      *v133 = v39;
      v41 = v40 + 1;
    }

    v133 = v41;
LABEL_56:
    v52 = [*(this + 31) dataSource];
    if ((v52 & 0x100) != 0)
    {
      v53 = v52;
      v54 = v133;
      if (v133 >= v134)
      {
        v56 = (v133 - v132) >> 3;
        if ((v56 + 1) >> 61)
        {
          goto LABEL_149;
        }

        v57 = (v134 - v132) >> 2;
        if (v57 <= v56 + 1)
        {
          v57 = v56 + 1;
        }

        if (v134 - v132 >= 0x7FFFFFFFFFFFFFF8)
        {
          v58 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v58 = v57;
        }

        v131 = v135;
        if (v58)
        {
          v59 = mdm::zone_mallocator::instance(v52);
          v60 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v59, v58);
        }

        else
        {
          v60 = 0;
        }

        v62 = &v60[8 * v58];
        v61 = &v60[8 * v56];
        *v61 = ((v53 << 32) | 0x10002) + 89;
        v55 = (v61 + 8);
        v63 = &v61[-(v133 - v132)];
        memcpy(v63, v132, v133 - v132);
        v64 = v132;
        v65 = v134;
        v132 = v63;
        v133 = v55;
        v134 = v62;
        v129 = v64;
        v130 = v65;
        v127 = v64;
        v128 = v64;
        std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v127);
      }

      else
      {
        *v133 = ((v52 << 32) | 0x10002) + 89;
        v55 = v54 + 1;
      }

      v133 = v55;
    }

    v66 = [*(this + 31) routeRelevance];
    v67 = [*(this + 31) isOnSelectedRoute];
    if ((v66 - 2) < 2)
    {
      v70 = v67;
      v71 = v133;
      if (v133 >= v134)
      {
        v72 = (v133 - v132) >> 3;
        if ((v72 + 1) >> 61)
        {
          goto LABEL_149;
        }

        v73 = (v134 - v132) >> 2;
        if (v73 <= v72 + 1)
        {
          v73 = v72 + 1;
        }

        if (v134 - v132 >= 0x7FFFFFFFFFFFFFF8)
        {
          v74 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v74 = v73;
        }

        v131 = v135;
        if (v74)
        {
          v75 = mdm::zone_mallocator::instance(v67);
          v76 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v75, v74);
        }

        else
        {
          v76 = 0;
        }

        v83 = &v76[8 * v74];
        v82 = &v76[8 * v72];
        *v82 = 0x100010007;
        v68 = (v82 + 8);
        v84 = &v82[-(v133 - v132)];
        memcpy(v84, v132, v133 - v132);
        v85 = v132;
        v86 = v134;
        v132 = v84;
        v133 = v68;
        v134 = v83;
        v129 = v85;
        v130 = v86;
        v127 = v85;
        v128 = v85;
        v67 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v127);
      }

      else
      {
        *v133 = 0x100010007;
        v68 = v71 + 1;
      }

      v133 = v68;
      if (v70)
      {
        v87 = 2 * (v66 != 3);
        if (v68 >= v134)
        {
          v88 = (v68 - v132) >> 3;
          if ((v88 + 1) >> 61)
          {
            goto LABEL_149;
          }

          v89 = (v134 - v132) >> 2;
          if (v89 <= v88 + 1)
          {
            v89 = v88 + 1;
          }

          if (v134 - v132 >= 0x7FFFFFFFFFFFFFF8)
          {
            v90 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v90 = v89;
          }

          v131 = v135;
          if (v90)
          {
            v91 = mdm::zone_mallocator::instance(v67);
            v92 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v91, v90);
          }

          else
          {
            v92 = 0;
          }

          v102 = &v92[8 * v90];
          v101 = &v92[8 * v88];
          *v101 = ((v87 << 32) | 0x10002) + 7;
          v68 = (v101 + 8);
          v103 = &v101[-(v133 - v132)];
          memcpy(v103, v132, v133 - v132);
          v104 = v132;
          v105 = v134;
          v132 = v103;
          v133 = v68;
          v134 = v102;
          v129 = v104;
          v130 = v105;
          v127 = v104;
          v128 = v104;
          v67 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v127);
        }

        else
        {
          *v68++ = ((v87 << 32) | 0x10002) + 7;
        }

        v133 = v68;
      }

      if (v68 < v134)
      {
        if (v70)
        {
          v69 = 0x100010002;
        }

        else
        {
          v69 = 65538;
        }

        goto LABEL_126;
      }

      v107 = (v68 - v132) >> 3;
      if (!((v107 + 1) >> 61))
      {
        v108 = (v134 - v132) >> 2;
        if (v108 <= v107 + 1)
        {
          v108 = v107 + 1;
        }

        if (v134 - v132 >= 0x7FFFFFFFFFFFFFF8)
        {
          v109 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v109 = v108;
        }

        v131 = v135;
        if (v109)
        {
          v110 = mdm::zone_mallocator::instance(v67);
          v111 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v110, v109);
        }

        else
        {
          v111 = 0;
        }

        v112 = &v111[8 * v107];
        v113 = &v111[8 * v109];
        if (v70)
        {
          v114 = 0x100010002;
        }

        else
        {
          v114 = 65538;
        }

        *v112 = v114;
        v106 = v112 + 1;
        v115 = v112 - (v133 - v132);
        memcpy(v115, v132, v133 - v132);
        v116 = v132;
        v117 = v134;
        v132 = v115;
        v133 = v106;
        v134 = v113;
        goto LABEL_143;
      }
    }

    else if (v66 == 1)
    {
      v68 = v133;
      if (v133 < v134)
      {
        v69 = 0x200010007;
        goto LABEL_126;
      }

      v77 = (v133 - v132) >> 3;
      if (!((v77 + 1) >> 61))
      {
        v78 = (v134 - v132) >> 2;
        if (v78 <= v77 + 1)
        {
          v78 = v77 + 1;
        }

        if (v134 - v132 >= 0x7FFFFFFFFFFFFFF8)
        {
          v79 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v79 = v78;
        }

        v131 = v135;
        if (v79)
        {
          v80 = mdm::zone_mallocator::instance(v67);
          v81 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v80, v79);
        }

        else
        {
          v81 = 0;
        }

        v98 = &v81[8 * v77];
        v99 = &v81[8 * v79];
        v100 = 0x200010007;
        goto LABEL_142;
      }
    }

    else
    {
      if (v66 || !v6)
      {
        goto LABEL_145;
      }

      v68 = v133;
      if (v133 < v134)
      {
        v69 = 65543;
LABEL_126:
        *v68 = v69;
        v106 = v68 + 1;
LABEL_144:
        v133 = v106;
LABEL_145:
        v119 = [*(this + 31) artwork];
        v120 = [v119 icon];
        v121 = objc_msgSend_styleAttributes(v120);

        if (v121)
        {
          v122 = [objc_alloc(MEMORY[0x1E69A1DB0]) initWithGEOStyleAttributes:v121];
          v123 = v133;
          v124 = [v122 data];
          v125 = [v122 data];
          v126 = [v122 countAttrs];
          std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__insert_with_size[abi:nn200100]<GeoCodecsFeatureStylePair const*,GeoCodecsFeatureStylePair const*>(&v132, v123, v124, (v125 + 8 * v126), (v125 + 8 * v126 - v124) >> 3);
        }

        _ZNSt3__115allocate_sharedB8nn200100I22FeatureStyleAttributesNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&v127);
      }

      v93 = (v133 - v132) >> 3;
      if (!((v93 + 1) >> 61))
      {
        v94 = (v134 - v132) >> 2;
        if (v94 <= v93 + 1)
        {
          v94 = v93 + 1;
        }

        if (v134 - v132 >= 0x7FFFFFFFFFFFFFF8)
        {
          v95 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v95 = v94;
        }

        v131 = v135;
        if (v95)
        {
          v96 = mdm::zone_mallocator::instance(v67);
          v97 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v96, v95);
        }

        else
        {
          v97 = 0;
        }

        v98 = &v97[8 * v93];
        v99 = &v97[8 * v95];
        v100 = 65543;
LABEL_142:
        *v98 = v100;
        v106 = v98 + 1;
        v118 = v98 - (v133 - v132);
        memcpy(v118, v132, v133 - v132);
        v116 = v132;
        v117 = v134;
        v132 = v118;
        v133 = v106;
        v134 = v99;
LABEL_143:
        v129 = v116;
        v130 = v117;
        v127 = v116;
        v128 = v116;
        std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v127);
        goto LABEL_144;
      }
    }

LABEL_149:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void sub_1B2BE0C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy[abi:nn200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(__int128 *a1, __int128 *a2, std::string *this)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (*(v5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(this, *v5, *(v5 + 1));
      }

      else
      {
        v6 = *v5;
        this->__r_.__value_.__r.__words[2] = *(v5 + 2);
        *&this->__r_.__value_.__l.__data_ = v6;
      }

      v5 = (v5 + 24);
      ++this;
    }

    while (v5 != a2);
  }

  return this;
}

void md::TrafficIncidentLabelFeature::updateStyle(id *this, md::LabelManager *a2)
{
  md::TrafficIncidentLabelFeature::updateStyleAttributes(this, *(*(a2 + 21) + 48), 0);
  md::LabelFeatureStyler::restyleFeature(*(a2 + 37), this);
  if (*(this + 80) == 0.0)
  {
    v4 = *(a2 + 42);
    v6 = *(v4 + 184);
    v5 = *(v4 + 192);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v6)
    {
      gss::StylesheetManager<gss::PropertyID>::styleGlobalProperties(&v10, *(v6 + 16));
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    v7 = [this[31] type];
    v8 = v10;
    if (v10)
    {
      switch(v7)
      {
        case 0:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
          v9 = v10[12];
          goto LABEL_10;
        case 1:
          v9 = v10[13];
          goto LABEL_10;
        case 2:
          v9 = v10[14];
          goto LABEL_10;
        case 3:
          v9 = v10[15];
          goto LABEL_10;
        case 4:
          v9 = v10[16];
          goto LABEL_10;
        case 5:
          v9 = v10[17];
          goto LABEL_10;
        case 6:
          v9 = v10[18];
          goto LABEL_10;
        case 7:
          v9 = v10[19];
          goto LABEL_10;
        case 8:
          v9 = v10[20];
LABEL_10:
          v8 = v9;
          break;
        default:
          break;
      }
    }

    *(this + 80) = v8;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    }

    if (v5)
    {

      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }
  }
}

void sub_1B2BE0EE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void grl::IconRequestOptions::setResourceNames(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(&v8, 0, sizeof(v8));
  std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__init_with_size[abi:nn200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>>(&v8, a2, a3, 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 3));
  if (*(a1 + 16))
  {
    std::vector<std::string>::clear[abi:nn200100]((a1 + 16));
    v4 = *(a1 + 16);
    v6 = grl::zone_mallocator::instance(v5);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::string>(v6, v4);
  }

  *(a1 + 16) = v8;
  v7 = &v8;
  memset(&v8, 0, sizeof(v8));
  std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v7);
  *(a1 + 12) = 1;
}

void grl::IconManager::imageForKeyValue(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, const grl::IconModifiers *a5, float *a6, unsigned int *a7)
{
  v42[8] = *MEMORY[0x1E69E9840];
  v13 = grl::IconManager::identifierForMapKeyValue(a2, a3, a4, ceilf(*a6));
  v14 = v13;
  if (a7)
  {
    *a7 = v13;
  }

  if (!v13)
  {
    if (GEOGetGeoResourceLibIconManagerLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoResourceLibIconManagerLog::onceToken, &__block_literal_global_53776);
    }

    v28 = GEOGetGeoResourceLibIconManagerLog::log;
    if (os_log_type_enabled(GEOGetGeoResourceLibIconManagerLog::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *&buf[4] = a3;
      LOWORD(v41[0]) = 1024;
      *(v41 + 2) = a4;
      _os_log_impl(&dword_1B2754000, v28, OS_LOG_TYPE_ERROR, "Failed to find Icon ID for key: %i - value: %i", buf, 0xEu);
    }

    *a1 = 0;
    a1[1] = 0;
    return;
  }

  v15 = *(a5 + 17);
  v34 = *(a5 + 18);
  if (v15 == v34)
  {
    goto LABEL_47;
  }

  v29 = v13;
  v30 = a7;
  v31 = a1;
  v16 = 0;
  do
  {
    v17 = *v15;
    v18 = grl::IconManager::identifierForMapKeyValue(a2, a3, *v15, ceilf(*a6));
    if (v18)
    {
      v19 = v18;
      grl::IconModifiers::IconModifiers(buf, a5);
      buf[3] = 1;
      v39 = 0;
      v37 = v38;
      v38[0] = 0;
      grl::IconManager::imageForIconID(&v35, a2, v19, buf, a6, &v37, 0);
      std::__tree<std::__value_type<unsigned short,grl::ImageProvider>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,grl::ImageProvider>,std::less<unsigned short>,true>,geo::allocator_adapter<std::__value_type<unsigned short,grl::ImageProvider>,grl::zone_mallocator>>::destroy(v38[0]);
      v20 = v35 != 0;
      if (v35)
      {
        v14 = *(v35 + 153);
        if (v14 == 1)
        {
          v32 = *(v35 + 154);
        }
      }

      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v36);
      }

      grl::IconModifiers::~IconModifiers(buf);
      if (v14)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (GEOGetGeoResourceLibIconManagerLog::onceToken != -1)
      {
        dispatch_once(&GEOGetGeoResourceLibIconManagerLog::onceToken, &__block_literal_global_53776);
      }

      v21 = GEOGetGeoResourceLibIconManagerLog::log;
      if (os_log_type_enabled(GEOGetGeoResourceLibIconManagerLog::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        *&buf[4] = a3;
        LOWORD(v41[0]) = 1024;
        *(v41 + 2) = v17;
        _os_log_impl(&dword_1B2754000, v21, OS_LOG_TYPE_ERROR, "Failed to find Icon ID for key: %i - value: %i", buf, 0xEu);
        if (v14)
        {
          v20 = 0;
LABEL_31:
          if (((v16 >> 2) + 1) >> 62)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          if (v16 >> 2 != -1)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>((v16 >> 2) + 1);
          }

          v24 = (4 * (v16 >> 2));
          *v24 = v32;
          v23 = v24 + 1;
          if (v16)
          {
            v25 = 0;
            v26 = 0;
            do
            {
              v27 = *v25++;
              *v26++ = v27;
            }

            while (v25 != v16);
          }

          v16 = v23;
          if (v20)
          {
            goto LABEL_26;
          }

          goto LABEL_27;
        }

        v20 = 0;
      }

      else
      {
        v20 = 0;
        if (v14)
        {
          goto LABEL_31;
        }
      }
    }

    if (GEOGetGeoResourceLibIconManagerLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoResourceLibIconManagerLog::onceToken, &__block_literal_global_53776);
    }

    v22 = GEOGetGeoResourceLibIconManagerLog::log;
    if (os_log_type_enabled(GEOGetGeoResourceLibIconManagerLog::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *&buf[4] = a3;
      LOWORD(v41[0]) = 1024;
      *(v41 + 2) = v17;
      _os_log_impl(&dword_1B2754000, v22, OS_LOG_TYPE_ERROR, "Failed to find clustercolor for key: %i - value: %i", buf, 0xEu);
      v23 = v16;
      if (!v20)
      {
        goto LABEL_27;
      }

LABEL_26:
      LOBYTE(v14) = 0;
      v16 = v23;
      goto LABEL_27;
    }

    v23 = v16;
    if (v20)
    {
      goto LABEL_26;
    }

LABEL_27:
    ++v15;
  }

  while (v15 != v34);
  if (v16)
  {
    grl::IconModifiers::IconModifiers(buf, a5);
    std::vector<geo::Color<unsigned char,4,(geo::ColorSpace)2>>::__assign_with_size[abi:nn200100]<geo::Color<unsigned char,4,(geo::ColorSpace)2>*,geo::Color<unsigned char,4,(geo::ColorSpace)2>*>(v42, 0, v16, v16 >> 2);
    v39 = 0;
    v37 = v38;
    v38[0] = 0;
    grl::IconManager::imageForIconID(v31, a2, v29, buf, a6, &v37, v30);
    std::__tree<std::__value_type<unsigned short,grl::ImageProvider>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,grl::ImageProvider>,std::less<unsigned short>,true>,geo::allocator_adapter<std::__value_type<unsigned short,grl::ImageProvider>,grl::zone_mallocator>>::destroy(v38[0]);
    grl::IconModifiers::~IconModifiers(buf);
    return;
  }

  a7 = v30;
  a1 = v31;
  v14 = v29;
LABEL_47:
  v41[2] = 0;
  *buf = v41;
  v41[0] = 0;
  grl::IconManager::imageForIconID(a1, a2, v14, a5, a6, buf, a7);
  std::__tree<std::__value_type<unsigned short,grl::ImageProvider>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,grl::ImageProvider>,std::less<unsigned short>,true>,geo::allocator_adapter<std::__value_type<unsigned short,grl::ImageProvider>,grl::zone_mallocator>>::destroy(v41[0]);
}

void sub_1B2BE166C(_Unwind_Exception *a1)
{
  shared_weak_owners = v1[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](shared_weak_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void md::LabelFeatureStyler::restyleFeature(md::LabelFeatureStyler *this, md::LabelFeature *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  (*(*a2 + 584))(a2, &v8, *(*this + 336) + 184);
  memset(v7, 0, 24);
  std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::assign(v7, (v9 - v8) >> 4, &v4);
  memset(&v6, 0, sizeof(v6));
  md::LabelStyleCache::requestStyles(*(*this + 336), &v8, &v6, v7);
  (*(*a2 + 592))(a2);
  v5 = &v6;
  std::vector<std::shared_ptr<md::LabelStyle>,geo::allocator_adapter<std::shared_ptr<md::LabelStyle>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v7);
  v7[0] = &v8;
  std::vector<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,geo::allocator_adapter<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v7);
}

void sub_1B2BE17F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a16);
  a16 = v16 - 72;
  std::vector<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,geo::allocator_adapter<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a16);
  _Unwind_Resume(a1);
}

grl::zone_mallocator *std::__split_buffer<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator> &>::~__split_buffer(grl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 3;
      *(a1 + 2) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 2);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  v5 = *a1;
  if (*a1)
  {
    v6 = grl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::string>(v6, v5);
  }

  return a1;
}

void md::TrafficIncidentLabelFeature::populateStyleQueries(uint64_t a1, std::__shared_weak_count *a2, uint64_t *a3)
{
  (*(*a1 + 600))(&v5);
  md::LabelStyleCache::styleQueryForFeatureAttributes(&v7, a3, &v5, 0);
  std::vector<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,geo::allocator_adapter<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,mdm::zone_mallocator>>::push_back[abi:nn200100](a2, &v7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

void sub_1B2BE1938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void md::TrafficIncidentLabelFeature::styleAttributes(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  (*(*a1 + 560))(a1, &v6);
  if (v6 != v7)
  {
    std::allocate_shared[abi:nn200100]<FeatureStyleAttributes,std::allocator<FeatureStyleAttributes>,FeatureStyleAttributes const&,0>(&v5, *(a1 + 336));
  }

  v4 = *(a1 + 344);
  *a2 = *(a1 + 336);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);
}

void sub_1B2BE1A4C(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, std::__shared_weak_count *a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (a6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a6);
  }

  std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

mdm::zone_mallocator *std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::assign(mdm::zone_mallocator *result, unint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *result;
  if (a2 > (*(result + 2) - *result) >> 3)
  {
    std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::__vdeallocate(result);
    if (a2 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v7 = *(v5 + 2) - *v5;
    v8 = v7 >> 2;
    if (v7 >> 2 <= a2)
    {
      v8 = a2;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    result = std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::__vallocate[abi:nn200100](v5, v9);
    v10 = 0;
    v11 = *(v5 + 1);
    v12 = *a3;
    v13 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v14 = vdupq_n_s64(v13);
    do
    {
      v15 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(vdupq_n_s64(v10), xmmword_1B33B0560)));
      if (v15.i8[0])
      {
        *(v11 + 8 * v10) = v12;
      }

      if (v15.i8[4])
      {
        *(v11 + 8 * v10 + 8) = v12;
      }

      v10 += 2;
    }

    while (v13 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v10);
    goto LABEL_34;
  }

  v16 = *(result + 1);
  v17 = v16 - v6;
  v18 = (v16 - v6) >> 3;
  if (v18 >= a2)
  {
    v19 = a2;
  }

  else
  {
    v19 = (v16 - v6) >> 3;
  }

  if (v19)
  {
    v20 = 0;
    v21 = *a3;
    v22 = vdupq_n_s64(v19 - 1);
    do
    {
      v23 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v20), xmmword_1B33B0560)));
      if (v23.i8[0])
      {
        *(v6 + 8 * v20) = v21;
      }

      if (v23.i8[4])
      {
        *(v6 + 8 * v20 + 8) = v21;
      }

      v20 += 2;
    }

    while (((v19 + 1) & 0xFFFFFFFFFFFFFFFELL) != v20);
  }

  v24 = a2 - v18;
  if (a2 <= v18)
  {
    v11 = *result;
LABEL_34:
    v31 = v11 + 8 * a2;
    goto LABEL_35;
  }

  v25 = 0;
  v26 = *(result + 1);
  v27 = *a3;
  v28 = (8 * a2 - v17 - 8) >> 3;
  v29 = vdupq_n_s64(v28);
  do
  {
    v30 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(vdupq_n_s64(v25), xmmword_1B33B0560)));
    if (v30.i8[0])
    {
      *(v26 + 8 * v25) = v27;
    }

    if (v30.i8[4])
    {
      *(v26 + 8 * v25 + 8) = v27;
    }

    v25 += 2;
  }

  while (((v28 + 2) & 0x3FFFFFFFFFFFFFFELL) != v25);
  v31 = v26 + 8 * v24;
LABEL_35:
  *(v5 + 1) = v31;
  return result;
}

void std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::__vdeallocate(mdm::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v3 = mdm::zone_mallocator::instance(result);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelFeature *>(v3, v1);
    *result = 0;
    *(result + 1) = 0;
    *(result + 2) = 0;
  }
}

char *std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::__vallocate[abi:nn200100](mdm::zone_mallocator *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v4 = mdm::zone_mallocator::instance(a1);
  result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeature *>(v4, a2);
  *a1 = result;
  *(a1 + 1) = result;
  *(a1 + 2) = &result[8 * a2];
  return result;
}

void md::GeoResourceProvider::resourceNames(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v46 = *MEMORY[0x1E69E9840];
  v36 = a2;
  std::mutex::lock((a1 + 112));
  v6 = *(a1 + 328);
  v7 = geo::linear_map<std::bitset<2ul>,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>>,std::equal_to<std::bitset<2ul>>,std::allocator<std::pair<std::bitset<2ul>,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>>>>,std::vector<std::pair<std::bitset<2ul>,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>>>>>::find(*(a1 + 320), v6, &v36);
  if (v6 != v7)
  {
    v8 = *(v7 + 2);
    *a3 = *(v7 + 1);
    a3[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    goto LABEL_41;
  }

  v44 = 0uLL;
  v45 = 0;
  if ((v3 & 1) == 0)
  {
LABEL_20:
    if ((v3 & 2) != 0)
    {
      v18 = [MEMORY[0x1E69A2478] modernManager];
      v19 = [v18 allRegionalResourceNames];

      if (v19 && [v19 count])
      {
        std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::reserve(&v44, [v19 count] - 0x5555555555555555 * ((*(&v44 + 1) - v44) >> 3));
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v20 = v19;
        v21 = [v20 countByEnumeratingWithState:&v28 objects:v37 count:16];
        if (v21)
        {
          v22 = *v29;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v29 != v22)
              {
                objc_enumerationMutation(v20);
              }

              v24 = [*(*(&v28 + 1) + 8 * i) UTF8String];
              *buf = v24;
              if (v24)
              {
                v25 = *(&v44 + 1);
                if (*(&v44 + 1) >= v45)
                {
                  v26 = std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__emplace_back_slow_path<char const*&>(&v44, buf);
                }

                else
                {
                  std::allocator_traits<std::allocator<std::string>>::construct[abi:nn200100]<std::string,char const*&,void,0>(*(&v44 + 1), v24);
                  v26 = (v25 + 24);
                }

                *(&v44 + 1) = v26;
              }
            }

            v21 = [v20 countByEnumeratingWithState:&v28 objects:v37 count:16];
          }

          while (v21);
        }
      }
    }

    operator new();
  }

  v9 = [MEMORY[0x1E69A2468] sharedManager];
  v10 = [v9 allResourceNames];

  if (v10 && [v10 count])
  {
    std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::reserve(&v44, [v10 count]);
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v12)
    {
      v13 = *v33;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v33 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = [*(*(&v32 + 1) + 8 * j) UTF8String];
          *buf = v15;
          if (v15)
          {
            v16 = *(&v44 + 1);
            if (*(&v44 + 1) >= v45)
            {
              v17 = std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__emplace_back_slow_path<char const*&>(&v44, buf);
            }

            else
            {
              std::allocator_traits<std::allocator<std::string>>::construct[abi:nn200100]<std::string,char const*&,void,0>(*(&v44 + 1), v15);
              v17 = (v16 + 24);
            }

            *(&v44 + 1) = v17;
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v12);
    }

    goto LABEL_20;
  }

  v27 = GEOGetVectorKitVKGeoResourceProviderLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *&buf[4] = "false";
    v40 = 2080;
    v41 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/GeoResourceProvider.mm";
    v42 = 1024;
    v43 = 125;
    _os_log_impl(&dword_1B2754000, v27, OS_LOG_TYPE_ERROR, "A non-empty set of resource name of global resources is expected: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
  }

  *a3 = 0;
  a3[1] = 0;

  *buf = &v44;
  std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](buf);
LABEL_41:
  std::mutex::unlock((a1 + 112));
}

void sub_1B2BE2240(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  *(v3 - 176) = v3 - 144;
  std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v3 - 176));
  std::mutex::unlock((v1 + 112));
  _Unwind_Resume(a1);
}

_DWORD *geo::linear_map<std::bitset<2ul>,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>>,std::equal_to<std::bitset<2ul>>,std::allocator<std::pair<std::bitset<2ul>,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>>>>,std::vector<std::pair<std::bitset<2ul>,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>>>>>::find(_DWORD *a1, _DWORD *a2, void *a3)
{
  if (a1 != a2)
  {
    while (((*a3 ^ *a1) & 3) != 0)
    {
      a1 += 6;
      if (a1 == a2)
      {
        return a2;
      }
    }

    return a1;
  }

  return a2;
}

grl::zone_mallocator *std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::reserve(grl::zone_mallocator *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((*(result + 2) - *result) >> 3) < a2)
  {
    if (a2 >= 0xAAAAAAAAAAAAAABLL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v3 = result;
    v4 = *(result + 1) - *result;
    v13[4] = result + 24;
    v5 = grl::zone_mallocator::instance(result);
    v6 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::string>(v5, a2);
    v7 = &v6[v4];
    v8 = &v6[24 * a2];
    v9 = *(v3 + 1) - *v3;
    v10 = &v7[-v9];
    memcpy(&v7[-v9], *v3, v9);
    v11 = *v3;
    *v3 = v10;
    *(v3 + 1) = v7;
    v12 = *(v3 + 2);
    *(v3 + 2) = v8;
    v13[2] = v11;
    v13[3] = v12;
    v13[0] = v11;
    v13[1] = v11;
    return std::__split_buffer<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator> &>::~__split_buffer(v13);
  }

  return result;
}

int64_t grl::ResourceTypeFromPackExtension(_BYTE *a1, int64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = v5 + v6;
  while (1)
  {
    v8 = off_1E7B584C8[v3];
    result = strlen(v8);
    if (!result)
    {
      break;
    }

    v10 = result;
    if (v6 >= result)
    {
      v11 = *v8;
      v12 = v6;
      result = v5;
      do
      {
        v13 = v12 - v10;
        if (v13 == -1)
        {
          break;
        }

        result = memchr(result, v11, v13 + 1);
        if (!result)
        {
          break;
        }

        v14 = result;
        result = memcmp(result, v8, v10);
        if (!result)
        {
          if (v14 == v7 || v14 - v5 == -1)
          {
            break;
          }

          goto LABEL_20;
        }

        result = v14 + 1;
        v12 = v7 - (v14 + 1);
      }

      while (v12 >= v10);
    }

    if (++v3 == 4)
    {
      *a1 = 0;
      return result;
    }
  }

LABEL_20:
  *a1 = 1;
  a1[1] = v3;
  return result;
}

grl::zone_mallocator *std::back_insert_iterator<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>>::operator=[abi:nn200100](grl::zone_mallocator *a1, __int128 *a2)
{
  v4 = *a1;
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v6 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *v4) >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *v4) >> 3);
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

    v23[4] = v4 + 24;
    if (v11)
    {
      v12 = grl::zone_mallocator::instance(a1);
      v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::string>(v12, v11);
    }

    else
    {
      v13 = 0;
    }

    v15 = &v13[24 * v8];
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v15, *a2, *(a2 + 1));
    }

    else
    {
      v16 = *a2;
      v15->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&v15->__r_.__value_.__l.__data_ = v16;
    }

    v17 = &v13[24 * v11];
    v14 = v15 + 1;
    v18 = *(v4 + 8) - *v4;
    v19 = v15 - v18;
    memcpy(v15 - v18, *v4, v18);
    v20 = *v4;
    *v4 = v19;
    v23[0] = v20;
    v23[1] = v20;
    *(v4 + 8) = v15 + 1;
    v23[2] = v20;
    v21 = *(v4 + 16);
    *(v4 + 16) = v17;
    v23[3] = v21;
    std::__split_buffer<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator> &>::~__split_buffer(v23);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(*(*a1 + 8), *a2, *(a2 + 1));
    }

    else
    {
      v7 = *a2;
      *(v6 + 16) = *(a2 + 2);
      *v6 = v7;
    }

    v14 = (v6 + 24);
  }

  *(v4 + 8) = v14;
  return a1;
}

uint64_t *std::__tree<std::__value_type<grl::ResourceProvider::ResourceCacheKey,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>> const>>,std::__map_value_compare<grl::ResourceProvider::ResourceCacheKey,std::__value_type<grl::ResourceProvider::ResourceCacheKey,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>> const>>,std::less<grl::ResourceProvider::ResourceCacheKey>,true>,std::allocator<std::__value_type<grl::ResourceProvider::ResourceCacheKey,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>> const>>>>::__emplace_unique_key_args<grl::ResourceProvider::ResourceCacheKey,grl::ResourceProvider::ResourceCacheKey&,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>> const>>(uint64_t **a1, unsigned __int8 *a2, _OWORD *a3, __int128 *a4)
{
  v4 = a1[1];
  if (!v4)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v6 = v4;
      if (!std::less<grl::ResourceProvider::ResourceCacheKey>::operator()[abi:nn200100](a2, v4 + 32))
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_7;
      }
    }

    if (!std::less<grl::ResourceProvider::ResourceCacheKey>::operator()[abi:nn200100](v6 + 32, a2))
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_7;
    }
  }
}

grl::zone_mallocator *std::vector<grl::LayerStyle,geo::allocator_adapter<grl::LayerStyle,grl::zone_mallocator>>::vector[abi:nn200100](grl::zone_mallocator *a1, char *a2, size_t a3)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  if (a3)
  {
    v4 = a3;
    std::vector<grl::LayerStyle,geo::allocator_adapter<grl::LayerStyle,grl::zone_mallocator>>::__vallocate[abi:nn200100](a1, a3);
    v6 = *(a1 + 1);
    do
    {
      v7 = *a2++;
      *v6++ = v7;
      --v4;
    }

    while (v4);
    *(a1 + 1) = v6;
  }

  return a1;
}

grl::codec::PathLayerData *grl::codec::PathLayerData::PathLayerData(grl::codec::PathLayerData *this, const grl::codec::PathLayerData *a2, unsigned int a3, const grl::IconModifiers *a4)
{
  v56 = *MEMORY[0x1E69E9840];
  LOWORD(__src) = 515;
  BYTE2(__src) = 1;
  v8 = std::vector<grl::LayerStyle,geo::allocator_adapter<grl::LayerStyle,grl::zone_mallocator>>::vector[abi:nn200100](this, &__src, 3uLL);
  *(v8 + 10) = 0;
  v9 = (v8 + 40);
  *(v8 + 16) = 0;
  *(v8 + 34) = -1;
  v10 = (v8 + 44);
  *(v8 + 43) = 0;
  *(v8 + 47) = 255;
  *(v8 + 52) = 0;
  *(v8 + 60) = 0;
  *(v8 + 16) = 1119092736;
  *(v8 + 17) = -16777216;
  *(v8 + 18) = 1065353216;
  *(v8 + 76) = 4278190080;
  *(v8 + 21) = 1;
  *(v8 + 88) = -1;
  *(v8 + 23) = 0;
  *(v8 + 96) = 0;
  *(v8 + 25) = 1065353216;
  *(v8 + 26) = -16777216;
  *(v8 + 31) = 0;
  *(v8 + 113) = 0;
  *(v8 + 108) = 0;
  *(v8 + 128) = 1;
  if (a2)
  {
    *(this + 32) = *(a2 + 32);
    v11 = *(a2 + 33);
    *(this + 33) = v11;
    for (i = 34; i != 38; ++i)
    {
      *(this + i) = *(a2 + i);
    }

    *v9 = *(a2 + 10);
    for (j = 44; j != 48; ++j)
    {
      *(this + j) = *(a2 + j);
    }

    v14 = *(a2 + 48);
    *(this + 48) = v14;
    *(this + 13) = *(a2 + 13);
    *(this + 14) = *(a2 + 14);
    *(this + 60) = *(a2 + 60);
    *(this + 16) = *(a2 + 16);
    for (k = 68; k != 72; ++k)
    {
      *(this + k) = *(a2 + k);
    }

    *(this + 18) = *(a2 + 18);
    for (m = 76; m != 80; ++m)
    {
      *(this + m) = *(a2 + m);
    }

    *(this + 20) = *(a2 + 20);
    *(this + 84) = *(a2 + 84);
    for (n = 85; n != 89; ++n)
    {
      *(this + n) = *(a2 + n);
    }

    *(this + 23) = *(a2 + 23);
    *(this + 96) = *(a2 + 96);
    *(this + 25) = *(a2 + 25);
    for (ii = 104; ii != 108; ++ii)
    {
      *(this + ii) = *(a2 + ii);
    }

    *(this + 27) = *(a2 + 27);
    *(this + 28) = *(a2 + 28);
    *(this + 29) = *(a2 + 29);
    *(this + 120) = *(a2 + 120);
    *(this + 31) = *(a2 + 31);
    *(this + 128) = *(a2 + 128);
    if (v14 == 1 && *(a4 + 25) == 1)
    {
      *v10 = *(a4 + 26);
      if ((v11 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else if (!v11)
    {
      goto LABEL_20;
    }

    LOWORD(__src) = 770;
    BYTE2(__src) = 1;
    std::vector<grl::LayerStyle,geo::allocator_adapter<grl::LayerStyle,grl::zone_mallocator>>::__assign_with_size[abi:nn200100]<grl::LayerStyle const*,grl::LayerStyle const*>(this, &__src, &__src + 3, 3uLL);
  }

LABEL_20:
  if (*(a4 + 60) == 1)
  {
    *(this + 31) = *(a4 + 16);
  }

  v19 = (v9 + 45);
  std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::__value_func[abi:nn200100](&__src, a4 + 184);
  v20 = v55;
  std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::~__value_func[abi:nn200100](&__src);
  if (v20)
  {
    *v10 = *v19;
  }

  v22 = *(a4 + 24);
  if (v22 > 4)
  {
    if (v22 == 5)
    {
      LOBYTE(__src) = 3;
      v23 = &__src + 1;
      v24 = this;
      v25 = 1;
      goto LABEL_32;
    }

    if (v22 != 6)
    {
      goto LABEL_27;
    }

LABEL_30:
    LOWORD(__src) = 515;
    BYTE2(__src) = 1;
    v23 = &__src + 3;
    v24 = this;
    v25 = 3;
    goto LABEL_32;
  }

  if (!*(a4 + 24))
  {
    goto LABEL_33;
  }

  if (v22 == 3)
  {
    goto LABEL_30;
  }

LABEL_27:
  LOWORD(__src) = 258;
  v23 = &__src + 2;
  v24 = this;
  v25 = 2;
LABEL_32:
  std::vector<grl::LayerStyle,geo::allocator_adapter<grl::LayerStyle,grl::zone_mallocator>>::__assign_with_size[abi:nn200100]<grl::LayerStyle const*,grl::LayerStyle const*>(v24, &__src, v23, v25);
  *(this + 96) = 1;
LABEL_33:
  if (*(a4 + 40) == 1)
  {
    for (jj = 0; jj != 4; ++jj)
    {
      *(v10 + jj) = *(a4 + jj + 41);
    }

    *(this + 32) = 17;
  }

  if (*(a4 + 45) == 1)
  {
    for (kk = 0; kk != 4; ++kk)
    {
      *(v19 + kk) = *(a4 + kk + 46);
    }
  }

  if (*(a4 + 16) == 1)
  {
    *(this + 25) = *(a4 + 5);
  }

  if (*(a4 + 7) == 1)
  {
    *(this + 120) = 4;
    *(this + 31) = 1083623604;
    *(this + 85) = *(this + 11);
  }

  v28 = *(a4 + 20);
  v29 = *(a4 + 21);
  if (v28 != v29 && *(a4 + 24) <= 1u)
  {
    v31 = (a3 - 1);
    if (v31 < (v29 - v28) >> 2)
    {
      v32 = 0;
      v33 = v28 + 4 * v31;
      do
      {
        *(v10 + v32) = *(v33 + v32);
        ++v32;
      }

      while (v32 != 4);
      *(this + 60) = 1;
      *(this + 96) = 0;
      *(this + 25) = exp2f(a3 * -0.074001);
    }

    LOWORD(__src) = 258;
    std::vector<grl::LayerStyle,geo::allocator_adapter<grl::LayerStyle,grl::zone_mallocator>>::__assign_with_size[abi:nn200100]<grl::LayerStyle const*,grl::LayerStyle const*>(this, &__src, &__src + 2, 2uLL);
  }

  if (*(a4 + 35) == 1)
  {
    v21.i32[0] = *(a4 + 9);
    v34 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v21))), vdupq_n_s32(0x3B808081u));
    v35 = v34.f32[1];
    v47 = v34.i64[1];
    if (v34.f32[0] >= 0.04045)
    {
      v37 = powf((v34.f32[0] * 0.94787) + 0.052133, 2.4);
      v34.i64[1] = v47;
      v36 = v37;
    }

    else
    {
      v36 = v34.f32[0] * 0.077399;
    }

    v38 = v34.f32[2];
    if (v35 >= 0.04045)
    {
      v40 = powf((v35 * 0.94787) + 0.052133, 2.4);
      v34.i32[3] = HIDWORD(v47);
      v39 = v40;
    }

    else
    {
      v39 = v35 * 0.077399;
    }

    v41 = v34.i32[3];
    if (v38 >= 0.04045)
    {
      v42 = powf((v38 * 0.94787) + 0.052133, 2.4);
    }

    else
    {
      v42 = v38 * 0.077399;
    }

    __src = v36;
    v52 = v39;
    v53 = v42;
    v54 = *&v41;
    __src = geo::fromLinear<float,4,(geo::ColorSpace)5,int,void>::operator()(gm::Matrix<float,4,1> const&)const::{lambda(gm::Matrix<float,4,1> const&)#1}::operator()(&__src);
    v52 = v43;
    v50[0] = __src;
    v50[1] = v43;
    v53 = fminf(fmaxf(v44, 0.0), 90.0) + 10.0;
    v54 = v45;
    v50[2] = fminf(fmaxf(v44, 10.0), 100.0) + -10.0;
    v50[3] = v45;
    geo::Color<float,4,(geo::ColorSpace)2>::Color<(geo::ColorSpace)5,int,void>(&v48, &__src);
    geo::_byteColor<float,4,(geo::ColorSpace)2>(&v49, v48);
    *(this + 19) = v49;
    geo::Color<float,4,(geo::ColorSpace)2>::Color<(geo::ColorSpace)5,int,void>(&v48, v50);
    geo::_byteColor<float,4,(geo::ColorSpace)2>(&v49, v48);
    *(this + 17) = v49;
  }

  return this;
}

uint64_t md::TrafficIncidentLabelFeature::dedupingGroup@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 384);
  *a2 = *(this + 376);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t md::TrafficIncidentLabelFeature::labelPointWithElevationUpdate(uint64_t a1, int a2, unsigned int a3, md::PointLabelFeatureBase *this)
{
  if (*(a1 + 328) <= a3)
  {
    v5 = 272;
  }

  else
  {
    if (this && (*(a1 + 242) & 1) == 0)
    {
      md::PointLabelFeatureBase::updatePointElevation(this, (a1 + 243), (a1 + 192), this);
    }

    v5 = 192;
  }

  return a1 + v5;
}

void std::__function::__func<gdc::ResourceManager::cleanupResourceRequests(void)::$_0,std::allocator<gdc::ResourceManager::cleanupResourceRequests(void)::$_0>,void ()(std::pair<gdc::ResourceKey,gdc::ResourceStatus> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
  {
    dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
  }

  v4 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = (*(**(v3 + 448) + 16))(*(v3 + 448));
    gdc::ResourceKey::keysInt32Str(&__p, a2);
    v6 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v7 = *(a2 + 80);
    *buf = 136315650;
    v26 = v5;
    v27 = 2080;
    v28 = v6;
    v29 = 2048;
    v30 = v7;
    _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_DEBUG, "%s ResourceManager cancelling resource: %s, rid: %llu", buf, 0x20u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v8 = std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::find<gdc::ResourceKey>((v3 + 96), a2);
  if (v8)
  {
    v9 = v8;
    if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
    }

    v10 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = (*(**(v3 + 448) + 16))(*(v3 + 448));
      gdc::ResourceKey::keysInt32Str(&__p, a2);
      v12 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v13 = v9[14];
      *buf = 136315650;
      v26 = v11;
      v27 = 2080;
      v28 = v12;
      v29 = 2048;
      v30 = v13;
      _os_log_impl(&dword_1B2754000, v10, OS_LOG_TYPE_DEBUG, "%s * ResourceManager cancelling resource: %s, rid: %llu", buf, 0x20u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v14 = *(a2 + 96);
    if (v14 <= 1)
    {
      v15 = std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::find<gdc::ResourceKey>((*(v3 + 312) + 8), a2);
      if (v15)
      {
        *(v15 + 28) = 4;
      }

      if (v14 == 1)
      {
        if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
        {
          dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
        }

        v16 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v17 = (*(**(v3 + 448) + 16))(*(v3 + 448));
          gdc::ResourceKey::keysInt32Str(&__p, a2);
          v18 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          v19 = v9[14];
          *buf = 136315650;
          v26 = v17;
          v27 = 2080;
          v28 = v18;
          v29 = 2048;
          v30 = v19;
          _os_log_impl(&dword_1B2754000, v16, OS_LOG_TYPE_DEBUG, "%s Adding cancelled resource: %s, rid: %llu", buf, 0x20u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v20 = *(a2 + 2);
        v21 = *(v3 + 32);
        if (*v21 != v20)
        {
          v22 = v21 + 8;
          do
          {
            v23 = *v22;
            v22 += 8;
          }

          while (v23 != v20);
          v21 = v22 - 8;
        }

        (*(**(v21 + 1) + 32))(*(v21 + 1), a2);
        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>((v3 + 176), v9[14], v9 + 14);
      }
    }

    std::__hash_table<std::__hash_value_type<gdc::ResourceKey,unsigned long long>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,unsigned long long>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,unsigned long long>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,unsigned long long>>>::erase((v3 + 96), v9);
  }
}

void md::LabelStyle::updateZoomInvariantStyles(md::LabelStyle *this)
{
  v29[4] = *MEMORY[0x1E69E9840];
  if ((*(this + 125) & 1) == 0)
  {
    *(this + 125) = 1;
    v2 = *this;
    if (*this)
    {
      v3 = *(this + 1);
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v18, v2, v3);
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v3);
      }

      if (v21 == 1)
      {
        v29[0] = &unk_1F29EF5B0;
        v29[1] = &v18;
        v29[3] = v29;
        v28[0] = &unk_1F29EF5F8;
        v28[1] = &v18;
        v28[3] = v28;
        v27[0] = &unk_1F29EF640;
        v27[1] = &v18;
        v27[3] = v27;
        v26[0] = &unk_1F29EF688;
        v26[1] = &v18;
        v26[3] = v26;
        std::__function::__value_func<BOOL ()(unsigned char)>::__value_func[abi:nn200100](v25, v29);
        *(this + 56) = md::LabelStyle::getZoomRange(v25);
        std::__function::__value_func<BOOL ()(unsigned char)>::~__value_func[abi:nn200100](v25);
        std::__function::__value_func<BOOL ()(unsigned char)>::__value_func[abi:nn200100](v24, v28);
        *(this + 57) = md::LabelStyle::getZoomRange(v24);
        std::__function::__value_func<BOOL ()(unsigned char)>::~__value_func[abi:nn200100](v24);
        std::__function::__value_func<BOOL ()(unsigned char)>::__value_func[abi:nn200100](v23, v26);
        *(this + 58) = md::LabelStyle::getZoomRange(v23);
        std::__function::__value_func<BOOL ()(unsigned char)>::~__value_func[abi:nn200100](v23);
        std::__function::__value_func<BOOL ()(unsigned char)>::__value_func[abi:nn200100](v22, v27);
        *(this + 59) = md::LabelStyle::getZoomRange(v22);
        std::__function::__value_func<BOOL ()(unsigned char)>::~__value_func[abi:nn200100](v22);
        v4 = 0;
        do
        {
          v5 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v18[3], 123, v4, 1, 0);
          if (v4 > 0x16u)
          {
            break;
          }

          ++v4;
        }

        while (!v5);
        *(this + 121) = v5 != 0;
        v6 = *(this + 56);
        if (v6 >> 8 >= 0x18)
        {
          v7 = 24;
        }

        else
        {
          v7 = v6 >> 8;
        }

        while (v7 > v6)
        {
          if (gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v18[3], 91, v6, 1u, 0) && (gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v18[3], 129, v6, 1u, 0) & 1) != 0)
          {
            goto LABEL_20;
          }

          LOBYTE(v6) = v6 + 1;
        }

        LOBYTE(v6) = -4;
LABEL_20:
        *(this + 120) = v6;
        *(this + 122) = gss::RenderStyleHelper<gss::PropertyID,unsigned int>::valueForKey(125, 1, v18[3]);
        *(this + 123) = gss::RenderStyleHelper<gss::PropertyID,unsigned int>::valueForKey(344, 1, v18[3]);
        *(this + 124) = gss::RenderStyleHelper<gss::PropertyID,unsigned int>::valueForKey(454, 1, v18[3]);
        v8 = *this;
        v9 = *(*this + 16);
        if (v9 && (v10 = std::__shared_weak_count::lock(v9)) != 0)
        {
          v11 = v10;
          v12 = *(v8 + 8);
          v13 = 1.0;
          if (v12 && *(this + 94) == 1)
          {
            v14 = *(v12 + 16);
            v15 = atomic_load((v14 + 2784));
            if ((v15 & 1) == 0)
            {
              std::__assoc_sub_state::wait(*(v14 + 2808));
            }

            v17 = *(v14 + 120);
            v16 = *(v14 + 128);
            if (v16)
            {
              atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v17)
            {
              v13 = *(v17 + 88);
            }

            if (v16)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v16);
            }
          }

          *(this + 27) = v13;
          std::__shared_weak_count::__release_shared[abi:nn200100](v11);
        }

        else
        {
          *(this + 27) = 1065353216;
        }

        std::__function::__value_func<BOOL ()(unsigned char)>::~__value_func[abi:nn200100](v26);
        std::__function::__value_func<BOOL ()(unsigned char)>::~__value_func[abi:nn200100](v27);
        std::__function::__value_func<BOOL ()(unsigned char)>::~__value_func[abi:nn200100](v28);
        std::__function::__value_func<BOOL ()(unsigned char)>::~__value_func[abi:nn200100](v29);
        if (v21)
        {
          (*(*v18 + 56))(v18);
        }
      }

      else
      {
        *(this + 56) = 0;
        *(this + 60) = 0;
        *(this + 122) = 0;
        *(this + 27) = 1065353216;
      }

      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v20);
      }

      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v19);
      }
    }
  }
}

void sub_1B2BE3924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  std::__shared_weak_count::__release_shared[abi:nn200100](v29);
  std::__function::__value_func<BOOL ()(unsigned char)>::~__value_func[abi:nn200100](va);
  std::__function::__value_func<BOOL ()(unsigned char)>::~__value_func[abi:nn200100](v30 - 152);
  std::__function::__value_func<BOOL ()(unsigned char)>::~__value_func[abi:nn200100](v30 - 120);
  std::__function::__value_func<BOOL ()(unsigned char)>::~__value_func[abi:nn200100](v30 - 88);
  if (a13)
  {
    (*(*a9 + 56))(a9);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::__map_value_compare<std::pair<unsigned long long,md::LabelIdentifier>,std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::less<std::pair<unsigned long long,md::LabelIdentifier>>,true>,geo::allocator_adapter<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,mdm::zone_mallocator>>::erase(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
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
      v4 = v5[2];
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
  v7 = a2[7];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = mdm::zone_mallocator::instance(v7);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,void *>>(v8, a2);
  return v4;
}

uint64_t md::TextLabelPart::TextLabelPart(uint64_t a1, void *a2, char a3)
{
  v6 = (a1 + 628);
  md::LabelPart::LabelPart(a1);
  *v7 = &unk_1F2A4DDE0;
  *(v7 + 576) = 0u;
  *(v7 + 592) = 0u;
  *(v7 + 608) = 0u;
  *(v7 + 624) = 0;
  *v6 = xmmword_1B33B22A0;
  *(v7 + 644) = 0;
  __asm { FMOV            V2.2S, #1.0 }

  *(v7 + 648) = _D2;
  *(v7 + 656) = 0u;
  *(v7 + 672) = 0u;
  *(v7 + 688) = 0u;
  *(v7 + 704) = 0;
  *(v6 + 78) = xmmword_1B33B22B0;
  *(v7 + 722) = 0;
  *(v7 + 726) = 0;
  *(v7 + 728) = 0u;
  *(v7 + 744) = 0;
  *(v6 + 120) = xmmword_1B33B22A0;
  *(v7 + 764) = 0;
  *(v7 + 768) = _D2;
  *(v7 + 824) = 0;
  *(v7 + 792) = 0u;
  *(v7 + 808) = 0u;
  *(v7 + 776) = 0u;
  *(v6 + 198) = xmmword_1B33B22B0;
  *(v7 + 842) = 0;
  *(v7 + 846) = 0;
  *(v7 + 876) = 0;
  *(v7 + 864) = 0;
  *(v7 + 848) = 0u;
  *(v7 + 872) = 0;
  *(v7 + 880) = a3;
  *(v7 + 881) = 0;
  *(v7 + 884) = 0;
  *(v7 + 888) = 1;
  *(v7 + 896) = 0u;
  *(v7 + 912) = 0u;
  *(v7 + 928) = 1065353216;
  *(v7 + 936) = 0;
  *(v7 + 940) = 0;
  *(v7 + 944) = 1;
  *(v7 + 968) = 0;
  *(v7 + 952) = 0u;
  v14 = *a2;
  v13 = a2[1];
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    v15 = *(a1 + 584);
    *(a1 + 576) = v14;
    *(a1 + 584) = v13;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    }
  }

  else
  {
    *(a1 + 576) = v14;
    *(a1 + 584) = 0;
  }

  v16 = **(*a2 + 16);
  if (v16[131] & 1) != 0 || (v16[132])
  {
    v17 = 1;
  }

  else
  {
    v17 = v16[133];
  }

  *(a1 + 888) = v17 & 1;
  return a1;
}

void md::LabelTrafficTile::~LabelTrafficTile(char **this)
{
  *this = &unk_1F2A05810;
  v2 = (this + 22);
  std::vector<std::shared_ptr<md::TrafficIncidentLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::TrafficIncidentLabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v2);
  std::__hash_table<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<GeoCodecsFeature const*,std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,std::hash<GeoCodecsFeature const*>,std::equal_to<GeoCodecsFeature const*>,true>,std::__unordered_map_equal<GeoCodecsFeature const*,std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,std::equal_to<GeoCodecsFeature const*>,std::hash<GeoCodecsFeature const*>,true>,geo::allocator_adapter<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__deallocate_node(this[18]);
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((this + 15));
  std::vector<long long,geo::allocator_adapter<long long,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 11));
}

{
  *this = &unk_1F2A05810;
  v2 = (this + 22);
  std::vector<std::shared_ptr<md::TrafficIncidentLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::TrafficIncidentLabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v2);
  std::__hash_table<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<GeoCodecsFeature const*,std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,std::hash<GeoCodecsFeature const*>,std::equal_to<GeoCodecsFeature const*>,true>,std::__unordered_map_equal<GeoCodecsFeature const*,std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,std::equal_to<GeoCodecsFeature const*>,std::hash<GeoCodecsFeature const*>,true>,geo::allocator_adapter<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__deallocate_node(this[18]);
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((this + 15));
  std::vector<long long,geo::allocator_adapter<long long,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 11));

  JUMPOUT(0x1B8C62190);
}

uint64_t md::HorizontalTextLabelPart::HorizontalTextLabelPart(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v5 = (a1 + 1077);
  result = md::TextLabelPart::TextLabelPart(a1, a2, a4);
  *result = &unk_1F2A4DA38;
  *(result + 976) = 0;
  *(result + 992) = 0;
  *(result + 984) = 0;
  *(result + 1008) = 0x3F80000000000000;
  *(result + 1016) = 0u;
  *(result + 1032) = 0u;
  *(result + 1048) = 0u;
  *(result + 1061) = 0u;
  *v5 = 1;
  *(result + 1088) = 0;
  *(result + 1104) = 0;
  *(result + 1096) = 0;
  *(result + 1120) = 0x3F80000000000000;
  *(result + 1128) = 0u;
  *(result + 1144) = 0u;
  *(result + 1160) = 0u;
  *(result + 1173) = 0u;
  v5[28] = 1;
  *(result + 1200) = 1;
  *(result + 1204) = 10;
  *(result + 1206) = 16842752;
  *(result + 1210) = 0;
  *(result + 1216) = 0;
  *(result + 1224) = 0;
  *(result + 1232) = 0;
  *(result + 1236) = 258;
  *(result + 1238) = 0;
  *(result + 1245) = 0;
  *(result + 1270) = 0;
  *(result + 1260) = 0;
  *(result + 1252) = 0;
  if (*(a3 + 10) == 1)
  {
    *(result + 1264) = 0;
    if (*(a3 + 4) == 1)
    {
      *(result + 1260) = *a3;
      *(result + 1264) = 1;
    }

    *(result + 1265) = 0;
    *(result + 1269) = 0;
    if (*(a3 + 9) == 1)
    {
      v5[47] = *(a3 + 5);
      *(result + 1269) = 1;
    }

    *(result + 1270) = 1;
  }

  *(result + 557) = 2;
  *(result + 1248) = *(**(*(result + 576) + 16) + 130);
  *(result + 1204) = 0;
  *(result + 1200) = 2;
  return result;
}

void md::TrafficIncidentLabelFeature::~TrafficIncidentLabelFeature(md::TrafficIncidentLabelFeature *this)
{
  *this = &unk_1F2A4E2C8;
  v2 = *(this + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 43);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 33);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  md::LabelFeature::~LabelFeature(this);
}

{
  *this = &unk_1F2A4E2C8;
  v2 = *(this + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 43);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 33);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  md::LabelFeature::~LabelFeature(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::PointLabelFeature::resolveAnnotationLayout(char a1, uint64_t a2)
{
  if ((a1 & 8) != 0)
  {
    v5 = *(a2 + 312);
    if (!v5)
    {
      v6 = md::LabelStyle::prepareStyleGroup<md::LabelAnnotationStyleGroup>(a2);
      v5 = *v6;
      *(a2 + 312) = *v6;
    }

    result = *(v5 + 46);
    if (!*(v5 + 46))
    {
      if (*(v5 + 47) == 8)
      {
        return 6;
      }

      else
      {
        return 2;
      }
    }
  }

  else
  {
    if ((a1 & 4) != 0)
    {
      v2 = 4;
    }

    else
    {
      v2 = 1;
    }

    if ((a1 & 0x10) != 0)
    {
      return 3;
    }

    else
    {
      return v2;
    }
  }

  return result;
}

md::LabelPart *md::PointLabelFeature::createAnnotationPart(mdm::zone_mallocator *this, uint64_t *a2, uint64_t a3, int a4)
{
  v4 = a3;
  v7 = 0;
  if (a4 <= 3)
  {
    if (a4 == 2)
    {
      goto LABEL_11;
    }

    if (a4 != 3)
    {
      return v7;
    }

    return md::PointLabelFeature::createGraphicAnnotationPart(this, a2, a3, 1);
  }

  else
  {
    if (a4 != 4)
    {
      if (a4 == 5)
      {
        v14 = mdm::zone_mallocator::instance(this);
        v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v14, 0x2B8uLL);
        md::StackLabelPart::StackLabelPart(v7, 1, 0, 0, 0);
        (*(*v15 + 176))(v15, 9);
        v16 = 0;
        v17 = 0;
        *(v7 + 630) = 1;
        do
        {
          while (1)
          {
            GraphicAnnotationPart = md::PointLabelFeature::createGraphicAnnotationPart(this, a2, v4, 1);
            v19 = GraphicAnnotationPart;
            if (!GraphicAnnotationPart)
            {
              break;
            }

            (*(*GraphicAnnotationPart + 176))(GraphicAnnotationPart, 10);
            md::CompositeLabelPart::addLabelPart(v7, v19);
            ++v16;
            v17 = 1;
            if (v16 == 3)
            {
              return v7;
            }
          }

          ++v16;
        }

        while (v16 != 3);
        if ((v17 & 1) == 0)
        {
          (*(*v7 + 8))(v7);
          return 0;
        }

        return v7;
      }

      if (a4 != 6)
      {
        return v7;
      }

LABEL_11:
      v9 = a2[2];
      v10 = *(v9 + 312);
      if (a3 == 1)
      {
        if (!v10)
        {
          v11 = md::LabelStyle::prepareStyleGroup<md::LabelAnnotationStyleGroup>(a2[2]);
          v10 = *v11;
          *(v9 + 312) = *v11;
        }

        v12 = (v10 + 47);
      }

      else
      {
        if (!v10)
        {
          v20 = md::LabelStyle::prepareStyleGroup<md::LabelAnnotationStyleGroup>(a2[2]);
          v10 = *v20;
          *(v9 + 312) = *v20;
        }

        v12 = (v10 + 52);
      }

      v21 = (*(*this + 728))(this, a2, *v12);
      v22 = md::PointLabelFeature::newTextPart(this, a2, v21, 1);
      v7 = v22;
      if (v22)
      {
        (*(*v22 + 176))(v22, 11);
      }

      return v7;
    }

    v13 = *(*this + 752);

    return v13();
  }
}

void md::LabelFeature::~LabelFeature(md::LabelFeature *this)
{
  *this = &unk_1F2A468F0;
  v3 = (this + 160);
  std::vector<md::TextDataEntry,geo::allocator_adapter<md::TextDataEntry,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v3 = (this + 96);
  std::vector<std::shared_ptr<md::LabelStyle>,geo::allocator_adapter<std::shared_ptr<md::LabelStyle>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(this + 11);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::mutex::~mutex((this + 8));
}

void std::vector<md::TextDataEntry,geo::allocator_adapter<md::TextDataEntry,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1[1];
    v4 = **result;
    if (v3 != v2)
    {
      do
      {
        v3 -= 56;
        std::__destroy_at[abi:nn200100]<md::TextDataEntry,0>(v3);
      }

      while (v3 != v2);
      v4 = **result;
    }

    v1[1] = v2;
    v6 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TextDataEntry>(v6, v4);
  }
}

uint64_t *md::AnnotationMonitorProperties::init(uint64_t *this, md::LabelStyle *a2)
{
  v3 = this;
  v4 = *(a2 + 39);
  if (!v4)
  {
    this = md::LabelStyle::prepareStyleGroup<md::LabelAnnotationStyleGroup>(a2);
    v4 = *this;
    *(a2 + 39) = *this;
  }

  *v3 = *(v4 + 46);
  v5 = *(a2 + 37);
  if (!v5)
  {
    this = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(a2, 0);
    v5 = *this;
    *(a2 + 37) = *this;
  }

  *(v3 + 8) = *(v5 + 93);
  return this;
}

void std::vector<long long,geo::allocator_adapter<long long,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<long long>(v2, v1);
  }
}

mdm::zone_mallocator *std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](mdm::zone_mallocator *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *> *> *>(v3, v2);
  }

  return a1;
}

uint64_t md::CaptionedIconLabelPart::populatePlacement(uint64_t result, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v6 = result;
  v7 = *a3;
  if (!*a3)
  {
    v7 = *(result + 842);
    if (v7 <= 1)
    {
      v7 = 1;
    }
  }

  *a2 = v7;
  if (a3[3] == 9)
  {
    if (*(result + 845) == 9)
    {
      if (*(result + 925))
      {
        LOWORD(v8) = 6;
      }

      else
      {
        LOWORD(v8) = 8;
      }

      if (*(result + 925))
      {
        LOWORD(v9) = -64;
      }

      else
      {
        LOWORD(v9) = 0;
      }
    }

    else
    {
      v8 = *(result + 845);
      v9 = v8 >> 8;
    }
  }

  else
  {
    v8 = *(a3 + 3);
    v9 = v8 >> 8;
    if (!a4)
    {
      goto LABEL_24;
    }
  }

  if ((*(result + 930) & 1) != 0 && v7 == 1 && (v9 & 0x1F) == 0)
  {
    result = v8;
    if (v8 <= 9u)
    {
      result = gss::LabelPositionToMask(v8);
      if ((result & 0x83) != 0)
      {
        LOWORD(v8) = mirroredHorizontalPositions[v8];
      }
    }

    if ((v8 & 0xF8) != 0)
    {
      LOWORD(v9) = 0;
    }

    else
    {
      LOWORD(v9) = 32 * v8;
    }
  }

LABEL_24:
  *(a2 + 3) = v8 | (v9 << 8);
  if (v8 == 8)
  {
    if (*(v6 + 925) == 1)
    {
      *(a2 + 3) = -16378;
    }

    else
    {
      *a2 = 1;
    }
  }

  v10 = a3[1];
  if (!v10)
  {
    v10 = *(v6 + 843);
    if (!v10)
    {
      v10 = 1;
    }
  }

  *(a2 + 1) = v10;
  return result;
}

void std::__hash_table<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<GeoCodecsFeature const*,std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,std::hash<GeoCodecsFeature const*>,std::equal_to<GeoCodecsFeature const*>,true>,std::__unordered_map_equal<GeoCodecsFeature const*,std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,std::equal_to<GeoCodecsFeature const*>,std::hash<GeoCodecsFeature const*>,true>,geo::allocator_adapter<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__deallocate_node(char *result)
{
  if (result)
  {
    v1 = result;
    do
    {
      v2 = *v1;
      v5 = (v1 + 24);
      std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
      v4 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *>>(v4, v1);
      v1 = v2;
    }

    while (v2);
  }
}

BOOL md::CurvedTextLabelPart::checkForTraffic(md::CurvedTextLabelPart *this, md::LabelManager *a2)
{
  if (*(a2 + 3022) == 1 && (*(a2 + 3024) & 1) == 0)
  {
    v5 = *(this + 2);
    v3 = *(v5 + 64);
    v6 = *(v5 + 72);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v3)
    {
      if (((*(**(this + 136) + 72))(*(this + 136), v3 + 120, 0.0) & 1) == 0 && ((*(**(this + 138) + 72))(*(this + 138), v3 + 120, 0.0) & 1) == 0)
      {
        LODWORD(v3) = (*(**(this + 140) + 72))(*(this + 140), v3 + 120, 0.0);
        if (!v6)
        {
          return v3 != *(this + 1480);
        }

        goto LABEL_12;
      }

      LODWORD(v3) = 1;
    }

    if (!v6)
    {
      return v3 != *(this + 1480);
    }

LABEL_12:
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    return v3 != *(this + 1480);
  }

  LODWORD(v3) = 0;
  return v3 != *(this + 1480);
}

void sub_1B2BE4740(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

mdm::zone_mallocator *md::CaptionedIconLabelPart::initAlternatePlacements(mdm::zone_mallocator *this)
{
  v1 = *(this + 100);
  *(this + 101) = v1;
  if (*(this + 921) == 1)
  {
    v2 = this;
    if (*(this + 832) == 1)
    {
      v3 = *(this + 840);
      if (v3 != 10)
      {
        v4 = gss::LabelPositionToMask(*(this + 840));
        v5 = v4;
        v6 = *(v2 + 850);
        if (v6 == 0x8000)
        {
          v6 = 170;
          if ((v4 & 0xAA) == 0)
          {
            if ((*(v2 + 925) & 1) != 0 || *(v2 + 920) == 1)
            {
              v6 = 255;
            }

            else
            {
              v6 = 0;
            }
          }
        }

        v7 = (v2 + 800);
        v8 = *(v2 + 837);
        if (v8 == 2)
        {
          v9 = v6;
        }

        else
        {
          v9 = v6;
        }

        if (v8 == 1)
        {
          v10 = *(v2 + 833);
          v11 = *(v2 + 838);
          if (v10 == v11)
          {
            v11 = *(v2 + 833);
            if (*(v2 + 835) == v3)
            {
              goto LABEL_40;
            }
          }
        }

        else
        {
          v11 = *(v2 + 838);
        }

        if (v11 > 7)
        {
          if (v11 == 8)
          {
            v12 = &diagonalDownLabelAnchors;
            goto LABEL_34;
          }

          if (v11 != 16)
          {
            goto LABEL_39;
          }
        }

        else if (v11 != 1)
        {
          if (v11 != 4)
          {
            goto LABEL_39;
          }

          v12 = &diagonalUpLabelAnchors;
LABEL_34:
          v19 = &v12[2 * v3];
          v20 = *v19;
          v21 = v19[1];
          if (v20)
          {
            v22 = v21 == 0;
          }

          else
          {
            v22 = 1;
          }

          if (!v22)
          {
            goto LABEL_24;
          }

LABEL_39:
          v10 = v11;
LABEL_40:
          v23 = 0;
          v24 = v9 & ~v5;
          v25 = &horizontalPositionsInPreferredOrder;
          if (v10 == 4)
          {
            v25 = &diagonalUpPositionsInPreferredOrder;
          }

          if (v10 == 8)
          {
            v26 = &diagonalDownPositionsInPreferredOrder;
          }

          else
          {
            v26 = v25;
          }

          while (1)
          {
            v27 = v26[v23];
            if (*(v2 + 930) == 1 && v27 <= 9)
            {
              LODWORD(v27) = mirroredHorizontalPositions[v27];
            }

            v29 = gss::LabelPositionToMask(v27);
            if ((v24 & v29) == 0 || v27 == *(v2 + 847))
            {
              goto LABEL_77;
            }

            v30 = *(v2 + 838);
            if (v30 > 7)
            {
              if (v30 != 8)
              {
                if (v30 == 16)
                {
                  goto LABEL_64;
                }

                goto LABEL_77;
              }

              v31 = &diagonalDownLabelAnchors;
            }

            else
            {
              if (v30 == 1)
              {
                goto LABEL_64;
              }

              if (v30 != 4)
              {
                goto LABEL_77;
              }

              v31 = &diagonalUpLabelAnchors;
            }

            v32 = &v31[2 * v27];
            v33 = *v32;
            v34 = v32[1];
            if (v33)
            {
              v35 = v34 == 0;
            }

            else
            {
              v35 = 1;
            }

            if (!v35)
            {
LABEL_64:
              v36 = *(v2 + 816);
              if (v1 >= v36)
              {
                v37 = 0xCCCCCCCCCCCCCCCDLL * (v1 - *v7);
                v38 = v37 + 1;
                if (v37 + 1 >= 0x3333333333333334)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v39 = 0xCCCCCCCCCCCCCCCDLL * (v36 - *v7);
                if (2 * v39 > v38)
                {
                  v38 = 2 * v39;
                }

                if (v39 >= 0x1999999999999999)
                {
                  v40 = 0x3333333333333333;
                }

                else
                {
                  v40 = v38;
                }

                v48 = v2 + 824;
                if (v40)
                {
                  v41 = mdm::zone_mallocator::instance(v29);
                  v42 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelPlacement>(v41, v40);
                  LOBYTE(v30) = *(v2 + 838);
                }

                else
                {
                  v42 = 0;
                }

                v43 = &v42[5 * v37];
                v44 = v42;
                v45 = v43;
                v47 = &v42[5 * v40];
                *v43 = *(v2 + 837);
                v43[1] = v30;
                v43[2] = 0;
                *(v43 + 3) = v27;
                v46 = v43 + 5;
                std::vector<md::LabelPlacement,geo::allocator_adapter<md::LabelPlacement,mdm::zone_mallocator>>::__swap_out_circular_buffer(v2 + 800, &v44);
                v1 = *(v2 + 808);
                std::__split_buffer<md::LabelPlacement,geo::allocator_adapter<md::LabelPlacement,mdm::zone_mallocator> &>::~__split_buffer(&v44);
              }

              else
              {
                *v1 = *(v2 + 837);
                *(v1 + 1) = v30;
                *(v1 + 2) = 0;
                *(v1 + 3) = v27;
                v1 += 5;
              }

              *(v2 + 808) = v1;
            }

LABEL_77:
            if (++v23 == 9)
            {
              return std::vector<md::LabelPlacement,geo::allocator_adapter<md::LabelPlacement,mdm::zone_mallocator>>::shrink_to_fit((v2 + 800));
            }
          }
        }

LABEL_24:
        v13 = *(v2 + 816);
        if (v1 >= v13)
        {
          v14 = 0x999999999999999ALL * (v13 - v1);
          if (v14 <= 1)
          {
            v14 = 1;
          }

          if (0xCCCCCCCCCCCCCCCDLL * (v13 - v1) >= 0x1999999999999999)
          {
            v15 = 0x3333333333333333;
          }

          else
          {
            v15 = v14;
          }

          v48 = v2 + 824;
          v16 = mdm::zone_mallocator::instance(v4);
          v17 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelPlacement>(v16, v15);
          v18 = *(v2 + 837);
          v44 = v17;
          v45 = v17;
          v47 = &v17[5 * v15];
          *v17 = v18;
          v17[2] = 0;
          *(v17 + 3) = *(v2 + 840);
          v46 = v17 + 5;
          std::vector<md::LabelPlacement,geo::allocator_adapter<md::LabelPlacement,mdm::zone_mallocator>>::__swap_out_circular_buffer(v2 + 800, &v44);
          v1 = *(v2 + 808);
          std::__split_buffer<md::LabelPlacement,geo::allocator_adapter<md::LabelPlacement,mdm::zone_mallocator> &>::~__split_buffer(&v44);
        }

        else
        {
          *v1 = v8;
          *(v1 + 1) = v11;
          *(v1 + 2) = 0;
          *(v1 + 3) = *(v2 + 840);
          v1 += 5;
        }

        *(v2 + 808) = v1;
        v10 = *(v2 + 838);
        goto LABEL_40;
      }
    }
  }

  return this;
}

mdm::zone_mallocator *std::__split_buffer<md::LabelPlacement,geo::allocator_adapter<md::LabelPlacement,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v2 = *(a1 + 2);
  if (v2 != *(a1 + 1))
  {
    *(a1 + 2) = (v2 - *(a1 + 1) - 5) % 5uLL + *(a1 + 1);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelPlacement>(v4, v3);
  }

  return a1;
}

mdm::zone_mallocator *std::vector<md::LabelPlacement,geo::allocator_adapter<md::LabelPlacement,mdm::zone_mallocator>>::shrink_to_fit(mdm::zone_mallocator *result)
{
  v1 = *(result + 1);
  v2 = *result;
  v3 = *(result + 2) - *result;
  v4 = v1 - *result;
  if (v3 > v4)
  {
    v5 = result;
    v8[4] = result + 24;
    if (v1 == v2)
    {
      v7 = 0;
    }

    else
    {
      v6 = mdm::zone_mallocator::instance(result);
      v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelPlacement>(v6, 0xCCCCCCCCCCCCCCCDLL * v4);
      v3 = *(v5 + 2) - *v5;
    }

    v8[0] = v7;
    v8[1] = &v7[v4];
    v8[2] = &v7[v4];
    v8[3] = &v7[v4];
    if (v4 < v3)
    {
      std::vector<md::LabelPlacement,geo::allocator_adapter<md::LabelPlacement,mdm::zone_mallocator>>::__swap_out_circular_buffer(v5, v8);
    }

    return std::__split_buffer<md::LabelPlacement,geo::allocator_adapter<md::LabelPlacement,mdm::zone_mallocator> &>::~__split_buffer(v8);
  }

  return result;
}

uint64_t md::CaptionedIconLabelPart::updateSnapToDefaultPlacement(uint64_t this)
{
  v1 = *(this + 800);
  v3 = v1 != *(this + 808) && *(this + 837) == *v1 && *(this + 838) == v1[1] && (v2 = *(this + 840), v2 == v1[3]) && (v2 != 10 || *(this + 841) == v1[4]);
  *(this + 956) = v3;
  return this;
}

uint64_t md::CaptionedIconLabelPart::placement@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(this + 832);
  *(a2 + 2) = 0;
  *(a2 + 3) = *(this + 835);
  return this;
}

float32_t md::IconLabelPart::collisionBounds(md::IconLabelPart *this, float32x2_t *a2)
{
  v2 = *(this + 562);
  v3 = atomic_load(&a2[18]);
  if (v2 == 1)
  {
    if (v3)
    {
      return a2[8].f32[0];
    }

    else
    {
      return 3.4028e38;
    }
  }

  else if (v3)
  {
    *v5.f32 = vsub_f32(a2[9], a2[8]);
    v5.i64[1] = v5.i64[0];
    LODWORD(result) = vbslq_s8(vcltzq_f32(v5), xmmword_1B33B2280, vmulq_f32(v5, xmmword_1B33B0930)).u32[0];
  }

  else
  {
    return 3.4028e38;
  }

  return result;
}

void md::IconLabelPart::prepareCollisionObject(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v5 = 612;
  if (!a2)
  {
    v5 = 588;
  }

  v6 = *(a1 + v5);
  (*(*a1 + 944))(a1, *a3);
  if (v6 == 1.0)
  {
    v11 = v9;
  }

  else
  {
    v7 = v7 * v6;
    v8 = v8 * v6;
    v11 = v9 * v6;
  }

  if (v6 == 1.0)
  {
    v12 = v10;
  }

  else
  {
    v12 = v10 * v6;
  }

  *v22 = v7;
  *&v22[1] = v8;
  *&v22[2] = v11;
  *&v22[3] = v12;
  v13 = v12 - v8;
  v14 = v11 - v7;
  if (vabds_f32(v13, v11 - v7) <= 5.0)
  {
    v15 = v7 + (v14 * 0.5);
    v16 = v8 + (v13 * 0.5);
    v17 = fmaxf(v14, v13) * 0.5;
    v21[0] = v15;
    v21[1] = v16;
    v21[2] = v17;
    md::CollisionObject::resetWithCircles(a4, 1u);
    v18 = *(a4 + 168);
    v19 = *(a4 + 176);
    *(a4 + 176) = v19 + 1;
    v20 = (v18 + 12 * v19);
    *v20 = v15;
    v20[1] = v16;
    v20[2] = v17;
    gm::Box<float,2>::enclose(a4, v21);
  }

  else
  {
    md::CollisionObject::resetWithRects(a4, 1u);
    md::CollisionObject::addRect(a4, v22);
  }
}

double md::CollisionObject::resetWithCircles(void **this, unsigned int a2)
{
  md::CollisionObject::resetShapes(this, a2);
  v4 = this[20];
  if (v4)
  {
    free(v4);
    v5 = 0;
    this[20] = 0;
    *(this + 45) = 0;
  }

  else
  {
    v5 = *(this + 45);
  }

  if (v5 < a2)
  {
    free(this[21]);
    v6 = malloc_type_malloc(12 * a2, 0x10000403E1C8BA9uLL);
    this[21] = v6;
    if (v6)
    {
      v7 = a2;
    }

    else
    {
      v7 = 0;
    }

    *(this + 45) = v7;
  }

  *(this + 44) = 0;
  result = 1.40444743e306;
  *this = xmmword_1B33B0730;
  return result;
}

float gm::Box<float,2>::enclose(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  if (result != 0.0)
  {
    v3 = 0;
    v4 = a1 + 8;
    v5 = 1;
    do
    {
      *(a1 + 4 * v3) = fminf(*(a2 + 4 * v3) - *(a2 + 8), *(a1 + 4 * v3));
      v6 = v5;
      result = fmaxf(*(v4 + 4 * v3), *(a2 + 8) + *(a2 + 4 * v3));
      *(v4 + 4 * v3) = result;
      v3 = 1;
      v5 = 0;
    }

    while ((v6 & 1) != 0);
  }

  return result;
}

float *std::__hash_table<std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,std::__unordered_map_hasher<GlyphCacheKey,std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,std::hash<GlyphCacheKey>,std::equal_to<GlyphCacheKey>,true>,std::__unordered_map_equal<GlyphCacheKey,std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,std::equal_to<GlyphCacheKey>,std::hash<GlyphCacheKey>,true>,geo::allocator_adapter<std::__hash_value_type<GlyphCacheKey,std::__list_iterator<md::FontGlyphCache::CachedItem,void *>>,mdm::zone_mallocator>>::find<GlyphCacheKey>(void *a1, uint64_t a2)
{
  v4 = std::hash<GlyphCacheKey>::operator()(a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  i = *(*a1 + 8 * v7);
  if (i)
  {
    for (i = *i; i; i = *i)
    {
      v9 = *(i + 1);
      if (v9 == v4)
      {
        if (*(i + 2) == *a2 && i[6] == *(a2 + 8) && *(i + 14) == *(a2 + 12))
        {
          return i;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v9 >= *&v5)
          {
            v9 %= *&v5;
          }
        }

        else
        {
          v9 &= *&v5 - 1;
        }

        if (v9 != v7)
        {
          return 0;
        }
      }
    }
  }

  return i;
}

unint64_t std::hash<GlyphCacheKey>::operator()(uint64_t a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * (*a1 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = *(a1 + 8);
  v5 = LODWORD(v4) - 0x61C8864680B583EBLL;
  if (v4 == 0.0)
  {
    v5 = 0x9E3779B97F4A7C15;
  }

  v6 = (v5 + 0x77FA823ACE0B5A40 * v3 + ((0x9DDFEA08EB382D69 * v3) >> 2)) ^ (0x9DDFEA08EB382D69 * v3);
  return (*(a1 + 12) + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583EBLL) ^ v6;
}

mdm::zone_mallocator *std::__split_buffer<md::TextQuad,geo::allocator_adapter<md::TextQuad,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 63) & 0xFFFFFFFFFFFFFFC0);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TextQuad>(v5, v4);
  }

  return a1;
}

mdm::zone_mallocator *std::__split_buffer<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 31) & 0xFFFFFFFFFFFFFFE0);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::HorizontalTextLabelPart::LineInfo>(v5, v4);
  }

  return a1;
}

void md::HorizontalTextLabelPart::breakLine(mdm::zone_mallocator *a1, unint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1;
  v116 = *MEMORY[0x1E69E9840];
  v111 = 0uLL;
  v112 = 0;
  v9 = a5 + a4;
  v107 = 0;
  v106 = a4;
  v108 = 0;
  if (a5 + a4 > a4)
  {
    v10 = a4;
    v11 = 0;
    do
    {
      while ((*(*a3 + 40 * v10 + 32) & 0x28) == 8)
      {
        a1 = std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::push_back[abi:nn200100](&v111, &v106);
        v11 = 0;
        v106 = ++v10;
        if (v10 == v9)
        {
          goto LABEL_9;
        }
      }

      *(&v106 + 1) = ++v11;
      ++v10;
    }

    while (v10 != v9);
    if (v11)
    {
      a1 = std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::push_back[abi:nn200100](&v111, &v106);
    }
  }

LABEL_9:
  v101 = a6;
  v13 = *(&v111 + 1);
  v12 = v111;
  if (!v8)
  {
    if (v111 == *(&v111 + 1))
    {
      v109 = v111;
      v111 = 0uLL;
      v110 = v112;
      v112 = 0;
      goto LABEL_84;
    }

    goto LABEL_22;
  }

  v14 = (*(&v111 + 1) - 32);
  v15 = v111 != *(&v111 + 1) && v14 > v111;
  if (v15)
  {
    v16 = v111 + 32;
    do
    {
      *v114 = *(v16 - 32);
      v17 = *v114;
      *&v114[16] = *(v16 - 16);
      v18 = *(v14 + 9);
      *(v16 - 32) = *v14;
      *(v16 - 23) = v18;
      *v14 = v17;
      *(v14 + 9) = *&v114[9];
      v14 -= 2;
      v19 = v16 >= v14;
      v16 += 32;
    }

    while (!v19);
    v13 = *(&v111 + 1);
    v12 = v111;
  }

  if (v12 != v13)
  {
LABEL_22:
    v20 = *a3 + 32;
    v21 = *a3 - 8;
    v22 = v12;
    do
    {
      v23 = *(v22 + 1);
      if (v23)
      {
        v24 = *v22;
        v25 = 40 * *v22;
        v26 = (v20 + v25);
        v27 = v23 - 1;
        v28 = *(v22 + 1);
        while (1)
        {
          v29 = *v26;
          v26 += 40;
          a1 = v29;
          if ((v29 & 8) == 0)
          {
            break;
          }

          ++v24;
          --v27;
          --v28;
          *v22 = v24;
          *(v22 + 1) = v28;
          if (!v28)
          {
            goto LABEL_31;
          }
        }

        v30 = (v21 + v25 + 40 * v23);
        do
        {
          v31 = *v30;
          v30 -= 40;
          if ((v31 & 8) == 0)
          {
            break;
          }

          *(v22 + 1) = v27--;
        }

        while (v27 != -1);
      }

LABEL_31:
      v22 += 32;
    }

    while (v22 != v13);
    if (v8)
    {
      goto LABEL_85;
    }

    v32 = 0;
    v33 = (v13 - v12) >> 5;
    v34 = *a3;
    if (v33 <= 1)
    {
      v33 = 1;
    }

    v35 = v12 + 8;
    do
    {
      if (v32)
      {
        v36 = *(v35 - 1);
        if ((*(v34 + 40 * v36 + 32) & 2) == 0)
        {
          *(v35 - 4) = *v35 + v36 - *(v35 - 5);
          *v35 = 0;
        }
      }

      ++v32;
      v35 += 4;
    }

    while (v33 != v32);
    v37 = 0;
    *&v109 = v12;
    *(&v109 + 1) = v13;
    v111 = 0uLL;
    v110 = v112;
    v112 = 0;
    v104 = v8;
    v103 = v13;
LABEL_41:
    v38 = *(v12 + 1);
    if (!v38)
    {
      goto LABEL_81;
    }

    v39 = *v12;
    v40 = *v12 + 1;
    v105 = *v12 + v38;
    if (v40 >= v105)
    {
      goto LABEL_66;
    }

    v41 = v38 - 1;
    v42 = 40 * v39;
    while (1)
    {
      v43 = *a3 + v42;
      v44 = *(v43 + 32);
      v45 = *(v43 + 72);
      if ((v44 & 0x20) == 0 || (v45 & 0x20) == 0)
      {
        if ((~v45 & 6) != 0)
        {
          if ((v44 & 2) == 0)
          {
            goto LABEL_51;
          }
        }

        else if (v44 & 2) == 0 || (v44)
        {
LABEL_51:
          v46 = v40 - v39;
          if (v37 >= v112)
          {
            v47 = &v37[-v111] >> 5;
            if ((v47 + 1) >> 59)
            {
              goto LABEL_111;
            }

            v48 = &v112[-v111] >> 4;
            if (v48 <= v47 + 1)
            {
              v48 = v47 + 1;
            }

            if (&v112[-v111] >= 0x7FFFFFFFFFFFFFE0)
            {
              v49 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v49 = v48;
            }

            v115 = &v113;
            if (v49)
            {
              v50 = mdm::zone_mallocator::instance(a1);
              v51 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::HorizontalTextLabelPart::LineInfo>(v50, v49);
            }

            else
            {
              v51 = 0;
            }

            v52 = &v51[32 * v47];
            v53 = &v51[32 * v49];
            *v52 = v39;
            *(v52 + 1) = v46;
            *(v52 + 2) = 0;
            v52[24] = 0;
            v37 = v52 + 32;
            v54 = &v52[-(*(&v111 + 1) - v111)];
            memcpy(v54, v111, *(&v111 + 1) - v111);
            v55 = v111;
            v56 = v112;
            *&v111 = v54;
            *(&v111 + 1) = v37;
            v112 = v53;
            *&v114[16] = v55;
            *&v114[24] = v56;
            *v114 = v55;
            *&v114[8] = v55;
            a1 = std::__split_buffer<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator> &>::~__split_buffer(v114);
          }

          else
          {
            *v37 = v39;
            *(v37 + 1) = v46;
            *(v37 + 2) = 0;
            v37[24] = 0;
            v37 += 32;
          }

          *(&v111 + 1) = v37;
          v39 = v40;
        }
      }

      ++v40;
      v42 += 40;
      if (!--v41)
      {
        v40 = v105;
        v8 = v104;
        v13 = v103;
LABEL_66:
        v15 = v40 > v39;
        v57 = v40 - v39;
        if (v15)
        {
          if (v37 < v112)
          {
            *v37 = v39;
            *(v37 + 1) = v57;
            *(v37 + 2) = 0;
            v37[24] = 0;
            v37 += 32;
LABEL_80:
            *(&v111 + 1) = v37;
            goto LABEL_81;
          }

          v58 = &v37[-v111] >> 5;
          if (!((v58 + 1) >> 59))
          {
            v59 = &v112[-v111] >> 4;
            if (v59 <= v58 + 1)
            {
              v59 = v58 + 1;
            }

            if (&v112[-v111] >= 0x7FFFFFFFFFFFFFE0)
            {
              v60 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v60 = v59;
            }

            v115 = &v113;
            if (v60)
            {
              v61 = mdm::zone_mallocator::instance(a1);
              v62 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::HorizontalTextLabelPart::LineInfo>(v61, v60);
            }

            else
            {
              v62 = 0;
            }

            v63 = &v62[32 * v58];
            v64 = &v62[32 * v60];
            *v63 = v39;
            *(v63 + 1) = v57;
            *(v63 + 2) = 0;
            v63[24] = 0;
            v37 = v63 + 32;
            v65 = &v63[-(*(&v111 + 1) - v111)];
            memcpy(v65, v111, *(&v111 + 1) - v111);
            v66 = v111;
            v67 = v112;
            *&v111 = v65;
            *(&v111 + 1) = v37;
            v112 = v64;
            *&v114[16] = v66;
            *&v114[24] = v67;
            *v114 = v66;
            *&v114[8] = v66;
            a1 = std::__split_buffer<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator> &>::~__split_buffer(v114);
            goto LABEL_80;
          }

LABEL_111:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

LABEL_81:
        v12 += 32;
        if (v12 == v13)
        {
LABEL_84:
          std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v109);
          break;
        }

        goto LABEL_41;
      }
    }
  }

LABEL_85:
  v109 = 0uLL;
  v110 = 0;
  v68 = md::HorizontalTextLabelPart::mergeWordsToLines(&v111, &v109, v8, a2);
  v69 = *(&v109 + 1);
  v70 = v109;
  v71 = *(&v109 + 1) - v109;
  if (*(&v109 + 1) - v109 >= 0x21uLL)
  {
    memset(v114, 0, 24);
    v72 = a2 - 1;
    if (a2 - 1 >= 3)
    {
      v73 = 0;
      v74 = 3;
      do
      {
        v75 = (v72 + v74) >> 1;
        *&v114[8] = v73;
        md::HorizontalTextLabelPart::mergeWordsToLines(&v111, v114, v8, v75);
        v73 = *v114;
        v76 = v109;
        if (*&v114[8] - *v114 <= *(&v109 + 1) - v109)
        {
          v109 = *v114;
          *v114 = v76;
          v77 = v110;
          v110 = *&v114[16];
          *&v114[16] = v77;
          v72 = v75 - 1;
          v73 = v76;
        }

        else
        {
          v74 = v75 + 1;
        }
      }

      while (v74 <= v72);
    }

    std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v114);
    v69 = *(&v109 + 1);
    v70 = v109;
    v71 = *(&v109 + 1) - v109;
  }

  if (v71 >> 5 >= 1)
  {
    v79 = *(v101 + 8);
    v78 = *(v101 + 16);
    if (v78 - v79 >= v71)
    {
      v88 = v69 - v70;
      if (v69 != v70)
      {
        memmove(*(v101 + 8), v70, v88 - 7);
      }

      *(v101 + 8) = &v79[v88];
    }

    else
    {
      v80 = *v101;
      v81 = &v79[-*v101];
      v82 = (v71 >> 5) + (v81 >> 5);
      if (v82 >> 59)
      {
        goto LABEL_111;
      }

      v83 = v78 - v80;
      v84 = (v78 - v80) >> 4;
      if (v84 > v82)
      {
        v82 = v84;
      }

      if (v83 >= 0x7FFFFFFFFFFFFFE0)
      {
        v85 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v85 = v82;
      }

      v115 = (v101 + 24);
      if (v85)
      {
        v86 = mdm::zone_mallocator::instance(v68);
        v87 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::HorizontalTextLabelPart::LineInfo>(v86, v85);
      }

      else
      {
        v87 = 0;
      }

      v89 = &v87[32 * (v81 >> 5)];
      v90 = &v89[v71];
      v91 = v89;
      do
      {
        v92 = *v70;
        v93 = *(v70 + 1);
        v70 += 32;
        *v91 = v92;
        *(v91 + 1) = v93;
        v91 += 32;
        v71 -= 32;
      }

      while (v71);
      v94 = &v87[32 * v85];
      memcpy(v90, v79, *(v101 + 8) - v79);
      v95 = *v101;
      v96 = &v90[*(v101 + 8) - v79];
      *(v101 + 8) = v79;
      v97 = v79 - v95;
      v98 = &v89[-(v79 - v95)];
      memcpy(v98, v95, v97);
      v99 = *v101;
      *v101 = v98;
      *(v101 + 8) = v96;
      v100 = *(v101 + 16);
      *(v101 + 16) = v94;
      *&v114[16] = v99;
      *&v114[24] = v100;
      *v114 = v99;
      *&v114[8] = v99;
      std::__split_buffer<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator> &>::~__split_buffer(v114);
    }
  }

  std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v109);
  std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v111);
}

void sub_1B2BE58DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

mdm::zone_mallocator *std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::push_back[abi:nn200100](mdm::zone_mallocator *result, _OWORD *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v21[4] = result + 24;
    if (v11)
    {
      v12 = mdm::zone_mallocator::instance(result);
      v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::HorizontalTextLabelPart::LineInfo>(v12, v11);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[32 * v8];
    v15 = &v13[32 * v11];
    v16 = a2[1];
    *v14 = *a2;
    *(v14 + 1) = v16;
    v7 = v14 + 32;
    v17 = *(v3 + 1) - *v3;
    v18 = &v14[-v17];
    memcpy(&v14[-v17], *v3, v17);
    v19 = *v3;
    *v3 = v18;
    *(v3 + 1) = v7;
    v20 = *(v3 + 2);
    *(v3 + 2) = v15;
    v21[2] = v19;
    v21[3] = v20;
    v21[0] = v19;
    v21[1] = v19;
    result = std::__split_buffer<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator> &>::~__split_buffer(v21);
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = v4 + 2;
  }

  *(v3 + 1) = v7;
  return result;
}

mdm::zone_mallocator *md::HorizontalTextLabelPart::mergeWordsToLines(mdm::zone_mallocator *result, mdm::zone_mallocator *a2, int a3, unint64_t a4)
{
  v6 = *result;
  v7 = *(result + 1);
  v8 = v7 - *result;
  if (v7 != *result)
  {
    v30 = v4;
    v31 = v5;
    v12 = result;
    v13 = 0;
    v14 = v8 >> 5;
    do
    {
      v15 = (v6 + 32 * v13);
      if (v14 <= v13 + 1)
      {
        v16 = v13 + 1;
      }

      else
      {
        v16 = v14;
      }

      v17 = (v6 + 32 * v13);
      v18 = v13;
      while (1)
      {
        v19 = v17 + 1;
        if (a3)
        {
          v19 = v15 + 1;
          v20 = (v6 + 32 * v13);
        }

        else
        {
          v20 = v17;
        }

        v21 = a3 ? v17 : (v6 + 32 * v13);
        if (*v19 + *v20 - *v21 > a4)
        {
          break;
        }

        ++v18;
        v17 += 4;
        if (v16 == v18)
        {
          v18 = v16;
          break;
        }
      }

      if (v13 <= (v18 - 1))
      {
        v22 = v18 - 1;
      }

      else
      {
        v22 = v13;
      }

      v23 = (v6 + 32 * v22);
      v29 = 0;
      *(&v27 + 1) = 0;
      v28 = 0;
      if (a3)
      {
        v24 = v23;
      }

      else
      {
        v24 = v15;
      }

      if (a3)
      {
        v23 = v15;
      }

      v25 = *v24;
      v26 = v23[1] + *v23 - v25;
      *&v27 = v25;
      *(&v27 + 1) = v26;
      result = std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::push_back[abi:nn200100](a2, &v27);
      v13 = v22 + 1;
      v6 = *v12;
      v14 = (*(v12 + 1) - *v12) >> 5;
    }

    while (v22 + 1 < v14);
  }

  return result;
}

double grl::codec::ImageLayerData::ImageLayerData(grl::codec::ImageLayerData *this)
{
  v3 = 515;
  v4 = 1;
  v1 = std::vector<grl::LayerStyle,geo::allocator_adapter<grl::LayerStyle,grl::zone_mallocator>>::vector[abi:nn200100](this, &v3, 3uLL);
  *(v1 + 8) = 0;
  *(v1 + 18) = -256;
  *(v1 + 38) = 0;
  *(v1 + 5) = 0;
  *(v1 + 48) = 0;
  *(v1 + 13) = 1119092736;
  result = -5.48612928e303;
  *(v1 + 14) = -16777216;
  *(v1 + 15) = 1065353216;
  *(v1 + 8) = 4278190080;
  *(v1 + 18) = 1;
  *(v1 + 76) = -1;
  *(v1 + 13) = 0;
  *(v1 + 10) = 0;
  *(v1 + 11) = 0;
  *(v1 + 93) = 0;
  *(v1 + 112) = 2;
  *(v1 + 29) = 1065353216;
  *(v1 + 30) = -16777216;
  *(v1 + 140) = 0;
  *(v1 + 129) = 0;
  *(v1 + 124) = 0;
  *(v1 + 74) = 1;
  return result;
}

uint64_t md::RouteAnnotationLabelFeature::newRootPart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[6] = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v5 = [**(a1 + 296) groupItemVerticalDisplayOrder];
  v6 = *(a1 + 296);
  if (*(a1 + 304) != v6)
  {
    v7 = v5;
    v8 = 0;
    do
    {
      v21[0] = 0;
      v21[1] = 0;
      v22 = 0;
      if ([*(v6 + 8 * v8) isCamera])
      {
        v9 = *(*(a1 + 296) + 8 * v8);
        if ([v9 isSpeedLimitCamera])
        {
          v10 = [v9 speedLimitText];
          v11 = v10;
          std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__assign_external(v21, [v10 UTF8String]);
        }
      }

      v12 = [*(*(a1 + 296) + 8 * v8) groupItemVerticalDisplayOrder];
      if (v12 != v7)
      {
        v12 = [*(*(a1 + 296) + 8 * v8) groupItemVerticalDisplayOrder];
        v7 = v12;
      }

      if (*(*(a1 + 96) + 16 * v8))
      {
        md::LabelPoint::mercatorPoint((a1 + 192));
        v13 = *(*(a1 + 328) + 16 * v8);
        if (*(&v13 + 1))
        {
          atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        _ZNSt3__115allocate_sharedB8nn200100IN2md13LabelImageKeyENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&v20);
      }

      if (SHIBYTE(v22) < 0)
      {
        v14 = v21[0];
        v15 = mdm::zone_mallocator::instance(v12);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v15, v14);
      }

      ++v8;
      v6 = *(a1 + 296);
    }

    while (v8 < (*(a1 + 304) - v6) >> 3);
  }

  if (v17 != v18)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * ((v18 - v17) >> 3)) >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(0xAAAAAAAAAAAAAAABLL * ((v18 - v17) >> 3));
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v23[0] = &v17;
  std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](v23);
  return 0;
}

void sub_1B2BE6550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (v37)
  {
    operator delete(v37);
  }

  a32 = &a18;
  std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&a32);
  _Unwind_Resume(a1);
}

void std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__grow_by_and_replace(mdm::zone_mallocator *a1, unint64_t a2, unint64_t a3, uint64_t a4, size_t a5, uint64_t a6, size_t a7, const void *a8)
{
  if (0x7FFFFFFFFFFFFFF6 - a2 < a3)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v15 = a1;
  if (*(a1 + 23) < 0)
  {
    v15 = *a1;
  }

  v16 = a3 + a2;
  if (a3 + a2 <= 2 * a2)
  {
    v16 = 2 * a2;
  }

  if ((v16 | 7) == 0x17)
  {
    v17 = 25;
  }

  else
  {
    v17 = (v16 | 7) + 1;
  }

  v18 = v16 >= 0x17;
  v19 = 23;
  if (v18)
  {
    v19 = v17;
  }

  if (a2 > 0x3FFFFFFFFFFFFFF2)
  {
    v20 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v20 = v19;
  }

  v21 = mdm::zone_mallocator::instance(a1);
  v22 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<char>(v21, v20);
  v23 = v22;
  if (a5)
  {
    v22 = memmove(v22, v15, a5);
  }

  if (a7)
  {
    v22 = memmove(&v23[a5], a8, a7);
  }

  v24 = a4 - (a6 + a5);
  if (v24)
  {
    v22 = memmove(&v23[a5 + a7], v15 + a5 + a6, v24);
  }

  if (a2 != 22)
  {
    v25 = mdm::zone_mallocator::instance(v22);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v25, v15);
  }

  v26 = a7 + a5 + v24;
  *a1 = v23;
  *(a1 + 1) = v26;
  *(a1 + 2) = v20 | 0x8000000000000000;
  v23[v26] = 0;
}

mdm::zone_mallocator *std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__assign_no_alias<true>(mdm::zone_mallocator *__dst, void *__src, size_t __len)
{
  v5 = __len > 0x16;
  v6 = __len - 22;
  if (v5)
  {
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__grow_by_and_replace(__dst, 0x16uLL, v6, *(__dst + 23) & 0x7F, 0, *(__dst + 23) & 0x7F, __len, __src);
  }

  else
  {
    *(__dst + 23) = __len;
    if (__len)
    {
      memmove(__dst, __src, __len);
    }

    *(__dst + __len) = 0;
  }

  return __dst;
}

md::LabelPart *md::WorldSpaceLabelPart::WorldSpaceLabelPart(md::LabelPart *a1, md::LabelPart *a2, uint64_t a3, char a4, char a5)
{
  md::LabelPart::LabelPart(a1);
  *(v10 + 592) = 0;
  *(v10 + 576) = 0u;
  *(v10 + 608) = 0;
  *(v10 + 612) = 0;
  *(v10 + 616) = 0;
  *(v10 + 624) = 0;
  *v10 = &unk_1F29E8E38;
  *(v10 + 628) = 1;
  *(v10 + 632) = a4;
  *(v10 + 633) = 9;
  *(v10 + 634) = a5;
  *(v10 + 640) = 0;
  md::CompositeLabelPart::addLabelPart(v10, a2);
  v11 = *(a1 + 632);
  if (v11 == 6)
  {
    if (*(a3 + 164) == 1)
    {
      *(a1 + 565) = 1;
      goto LABEL_5;
    }

    *(a1 + 632) = 0;
    *(a1 + 565) = 0;
  }

  else
  {
    *(a1 + 565) = v11 != 0;
    if (v11)
    {
LABEL_5:
      operator new();
    }
  }

  return a1;
}

void sub_1B2BE69B4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 80);
  *(v1 + 80) = 0;
  if (v3)
  {
    MEMORY[0x1B8C62190](v3, 0x1000C40AE2C30F4);
  }

  md::CompositeLabelPart::~CompositeLabelPart(v1);
  _Unwind_Resume(a1);
}

uint64_t md::CompositeLabelPart::setRenderPass(uint64_t result, uint64_t a2)
{
  v2 = *(result + 576);
  for (i = *(result + 584); v2 != i; result = (*(*v5 + 824))(v5, a2))
  {
    v5 = *v2++;
  }

  return result;
}

double md::LabelPart::placement@<D0>(uint64_t a1@<X8>)
{
  result = 2.48104034e-265;
  *a1 = 150994944;
  *(a1 + 4) = 0;
  return result;
}

uint64_t md::Label::defaultCollisionOverlayGroup(md::Label *this)
{
  v2 = *(this + 1291);
  if (v2 <= 0x17)
  {
    if (((1 << v2) & 0xF17000) != 0)
    {
      return 4;
    }

    if (((1 << v2) & 0x300) != 0)
    {
      return 3;
    }

    if (v2 == 2 && (*(**(this + 1) + 280))(*(this + 1)) == 1)
    {
      return 4;
    }
  }

  if (*(this + 1290) == 1)
  {
    v4 = *(this + 1);
    v5 = *(this + 12);
    v6 = atomic_load(this + 1328);
    v7 = (*(*v4 + 568))(v4, v5, 0, v6 & 1, 0);
    v8 = *v7;
    if (*v7)
    {
      v9 = *(v8 + 296);
      if (!v9)
      {
        v10 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*v7, 0);
        v9 = *v10;
        *(v8 + 296) = *v10;
      }

      if (*(v9 + 88) == 2)
      {
        return 4;
      }
    }
  }

  return 2;
}

void *gms::Material<ggl::Texture2D>::~Material(void *a1)
{
  *a1 = &unk_1F2A48E88;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return a1;
}

uint64_t gdc::Registry::storage<md::components::ClientState>(uint64_t a1)
{
  v3 = 0xA4F4C87C991FC6E0;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xA4F4C87C991FC6E0);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void md::MaterialLogic::_updateMaterialForComponent(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  v15 = a3;
  md::MaterialLogic::_resolveMaterial(&v13, a1, *a4, a5);
  v8 = a4[1];
  v7 = a4[2];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = v13;
  v9 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = a4[2];
  a4[1] = v10;
  a4[2] = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  if (v8 && v10)
  {
    if (*(v8 + 8) == *(v10 + 8) && *(v8 + 48) == *(v10 + 48) && *(v8 + 16) == *(v10 + 16) && *(v8 + 32) == *(v10 + 32))
    {
      goto LABEL_17;
    }
  }

  else if (!(v8 | v10))
  {
    goto LABEL_17;
  }

  for (i = *(gdc::Registry::storage<md::components::Material>(a2) + 128); i; i = *i)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], a2, &v15, 1);
  }

LABEL_17:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }
}

void sub_1B2BE7020(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void md::MaterialLogic::_resolveMaterial(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a4 && (v5 = *(a4 + 12), *(a4 + 12)))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = *(a2 + 120);
    v12 = a3;
    v13 = 0;
    do
    {
      if (!((v9 >= v5) | v7 & 1))
      {
        v8 = (*a4 + 4 * v9);
        v4 = (*a4 + *(a4 + 8) + 2 * v9);
        v7 = 1;
      }

      v6 ^= (*v4 - 0x61C8864680B583EBLL + ((((v6 << 6) - 0x61C8864680B583EBLL + (v6 >> 2) + *v8) ^ v6) << 6) + ((((v6 << 6) - 0x61C8864680B583EBLL + (v6 >> 2) + *v8) ^ v6) >> 2)) ^ ((v6 << 6) - 0x61C8864680B583EBLL + (v6 >> 2) + *v8);
      v11 = v9 + 1;
      if (v7)
      {
        v7 = 0;
      }

      if (v11 < v5)
      {
        ++v9;
      }

      else
      {
        v9 = v5;
      }
    }

    while (v11 < v5);
    v13 = v6;
  }

  else
  {
    v10 = *(a2 + 120);
    v12 = a3;
    v13 = 0;
    a4 = 0;
  }

  gms::MaterialManager<ggl::Texture2D>::materialForKeyAndAttributes(a1, v10, &v12, a4);
}

uint64_t *geo::FrameCache<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::shared_ptr<gms::_Material<ggl::Texture2D>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual>::operator[](uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 88);
  v3 = a2[1];
  v4 = ((v3 << 6) + (v3 >> 2) - 0x61C8864680B583EBLL + (((*a2 >> 34) + *a2 + (HIDWORD(*a2) << 6) - 0x61C8864680B583EBLL) ^ HIDWORD(*a2))) ^ v3;
  v5 = v2[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = ((v3 << 6) + (v3 >> 2) - 0x61C8864680B583EBLL + (((*a2 >> 34) + *a2 + (HIDWORD(*a2) << 6) - 0x61C8864680B583EBLL) ^ HIDWORD(*a2))) ^ v3;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*v2 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
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
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (v9[2] != *a2 || v9[3] != v3)
  {
    goto LABEL_21;
  }

  if ((v9[6] & 1) == 0)
  {
    v12 = std::__hash_table<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,std::__unordered_map_hasher<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,true>,std::__unordered_map_equal<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,true>,std::allocator<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>>>::find<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey>(*(a1 + 80), *a2, a2[1]);
    if (v12)
    {
      if (*(v12 + 48) == 1)
      {
        v13 = v12[5];
        v9[4] = v12[4];
        v9[5] = v13;
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
        }

        *(v9 + 48) = 1;
      }
    }
  }

  return v9 + 4;
}

void *std::__hash_table<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,std::__unordered_map_hasher<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,true>,std::__unordered_map_equal<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,true>,std::allocator<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>>>::find<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey>(void *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1[1];
  if (!*&v3)
  {
    return 0;
  }

  v4 = ((a3 << 6) + (a3 >> 2) - 0x61C8864680B583EBLL + (((a2 >> 34) + a2 + (HIDWORD(a2) << 6) - 0x61C8864680B583EBLL) ^ HIDWORD(a2))) ^ a3;
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = ((a3 << 6) + (a3 >> 2) - 0x61C8864680B583EBLL + (((a2 >> 34) + a2 + (HIDWORD(a2) << 6) - 0x61C8864680B583EBLL) ^ HIDWORD(a2))) ^ a3;
    if (v4 >= *&v3)
    {
      v6 = v4 % *&v3;
    }
  }

  else
  {
    v6 = v4 & (*&v3 - 1);
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  for (result = *v7; result; result = *result)
  {
    v9 = result[1];
    if (v9 == v4)
    {
      if (result[2] == a2 && result[3] == a3)
      {
        return result;
      }
    }

    else
    {
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

      if (v9 != v6)
      {
        return 0;
      }
    }
  }

  return result;
}