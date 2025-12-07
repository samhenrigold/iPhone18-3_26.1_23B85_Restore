void sub_1B31734A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  v64 = mach_absolute_time();
  atomic_fetch_add((*(ggl::Performance::Counters::instance(v64) + 32) + 128), v64 - a13);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void md::Ribbons::RibbonBatch<md::Ribbons::TransitRibbonDescriptor>::collectRenderItemsForPassesNoReset(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a1 + 656) == 1)
  {
    memset(&v50, 0, sizeof(v50));
    std::vector<unsigned int>::reserve(&v50, 5uLL);
    v6 = 0;
    v7 = 0;
    v48 = a1 + 16;
    v8 = (a1 + 136);
    do
    {
      if (((a2 >> v6) & 1) != 0 && *v8 == 1)
      {
        LODWORD(v51) = v6;
        std::vector<unsigned int>::push_back[abi:nn200100](&v50, &v51);
        v9 = *(*(a1 + 8) + 8 * v6 + 56);
        *(v8 - 12) = v9;
        v7 |= *(v9 + 58) == 1;
      }

      ++v6;
      v8 += 128;
    }

    while (v6 != 4);
    begin = v50.__begin_;
    if (v50.__begin_ != v50.__end_)
    {
      v11 = *(a1 + 632);
      v12 = *(a1 + 640);
      if (v11 == v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = 0;
        v14 = 16;
        if (v7)
        {
          v14 = 32;
        }

        v45 = *(a1 + 640);
        v46 = v14;
        do
        {
          v15 = *v11;
          if (*(*v11 + 48) == 1)
          {
            if (*(v15 + 88) != v13)
            {
              v47 = v13;
              if (v13)
              {
                v16 = ggl::Batcher::commit((a1 + 528), 0xC8u, v5);
                if (v16[1] != *v16)
                {
                  v17 = v50.__begin_;
                  end = v50.__end_;
                  if (v50.__begin_ != v50.__end_)
                  {
                    v19 = v16;
                    do
                    {
                      v20 = *v17;
                      v51 = &off_1F2A5D8B8;
                      v21 = v48 + (v20 << 7);
                      v52 = *(v21 + 8);
                      v53 = *(v21 + 24);
                      v54 = *(v21 + 40);
                      v58 = *(v21 + 104);
                      v57 = *(v21 + 88);
                      v56 = *(v21 + 72);
                      v55 = *(v21 + 56);
                      v22 = *(a1 + 616);
                      v23 = v22[1];
                      if (v23 == *(a1 + 624))
                      {
                        v22 = *v22;
                        if (!v22)
                        {
                          v22 = malloc_type_malloc(120 * v23 + 16, 0x1020040EDED9539uLL);
                          *v22 = 0;
                          v22[1] = 0;
                          **(a1 + 616) = v22;
                        }

                        *(a1 + 616) = v22;
                        v23 = v22[1];
                      }

                      v24 = &v22[15 * v23];
                      v22[1] = v23 + 1;
                      v24[2] = &off_1F2A5D8B8;
                      v25 = v52;
                      v26 = v53;
                      *(v24 + 7) = v54;
                      *(v24 + 5) = v26;
                      *(v24 + 3) = v25;
                      v27 = v55;
                      v28 = v56;
                      v29 = v57;
                      *(v24 + 15) = v58;
                      *(v24 + 13) = v29;
                      *(v24 + 11) = v28;
                      *(v24 + 9) = v27;
                      ggl::RenderItem::~RenderItem(&v51);
                      v24[10] = v47;
                      v30 = *v19;
                      v24[13] = *v19;
                      v24[14] = (v19[1] - v30) >> 4;
                      std::function<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(*(a3 + 24), v20, (v24 + 2));
                      ++v17;
                    }

                    while (v17 != end);
                  }
                }
              }

              v15 = *v11;
              v13 = *(*v11 + 88);
              v12 = v45;
            }

            ggl::Batcher::addRange(a1 + 528, (v15 + v46));
          }

          ++v11;
        }

        while (v11 != v12);
        begin = v50.__begin_;
      }

      v31 = ggl::Batcher::commit((a1 + 528), 0xC8u, v5);
      if (v31[1] != *v31)
      {
        v32 = v50.__end_;
        if (begin != v50.__end_)
        {
          v33 = v31;
          do
          {
            v34 = *begin;
            v51 = &off_1F2A5D8B8;
            v35 = v48 + (v34 << 7);
            v52 = *(v35 + 8);
            v53 = *(v35 + 24);
            v54 = *(v35 + 40);
            v58 = *(v35 + 104);
            v57 = *(v35 + 88);
            v56 = *(v35 + 72);
            v55 = *(v35 + 56);
            v36 = *(a1 + 616);
            v37 = v36[1];
            if (v37 == *(a1 + 624))
            {
              v36 = *v36;
              if (!v36)
              {
                v36 = malloc_type_malloc(120 * v37 + 16, 0x1020040EDED9539uLL);
                *v36 = 0;
                v36[1] = 0;
                **(a1 + 616) = v36;
              }

              *(a1 + 616) = v36;
              v37 = v36[1];
            }

            v38 = &v36[15 * v37];
            v36[1] = v37 + 1;
            v38[2] = &off_1F2A5D8B8;
            v39 = v56;
            v40 = v57;
            v41 = v58;
            *(v38 + 9) = v55;
            v42 = v52;
            v43 = v53;
            *(v38 + 7) = v54;
            *(v38 + 5) = v43;
            *(v38 + 3) = v42;
            *(v38 + 15) = v41;
            *(v38 + 13) = v40;
            *(v38 + 11) = v39;
            v38[10] = v13;
            v44 = *v33;
            v38[13] = *v33;
            v38[14] = (v33[1] - v44) >> 4;
            std::function<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(*(a3 + 24), v34, (v38 + 2));
            ++begin;
          }

          while (begin != v32);
          begin = v50.__begin_;
        }
      }
    }

    if (begin)
    {
      v50.__end_ = begin;
      operator delete(begin);
    }
  }
}

void sub_1B3173BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(md::TransitDisplayConnectionRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(md::TransitDisplayConnectionRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

ggl::zone_mallocator *std::function<void ()(md::TransitDisplayConnectionRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(uint64_t a1, int a2, uint64_t a3)
{
  v8 = a2;
  v7 = a3;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v8, &v7);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<md::TransitRenderLayer::appendTransitLineCommandsToBuffer(ggl::CommandBuffer *,ggl::CommandBuffer *,md::LayoutContext const&)::$_1,std::allocator<md::TransitRenderLayer::appendTransitLineCommandsToBuffer(ggl::CommandBuffer *,ggl::CommandBuffer *,md::LayoutContext const&)::$_1>,void ()(md::TransitDisplayConnectionRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v4, v5, v6);
}

ggl::zone_mallocator *std::__function::__func<md::TransitRenderLayer::appendTransitLineCommandsToBuffer(ggl::CommandBuffer *,ggl::CommandBuffer *,md::LayoutContext const&)::$_1,std::allocator<md::TransitRenderLayer::appendTransitLineCommandsToBuffer(ggl::CommandBuffer *,ggl::CommandBuffer *,md::LayoutContext const&)::$_1>,void ()(md::TransitDisplayConnectionRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(uint64_t a1, int *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = v3 == 0;
  v6 = -3;
  if (!v5)
  {
    v6 = -2;
  }

  *(v4 + 48) = v6;
  *(v4 + 40) = *(a1 + 8);
  return ggl::CommandBuffer::pushRenderItem(*(a1 + 16), v4);
}

__n128 std::__function::__func<md::TransitRenderLayer::appendTransitLineCommandsToBuffer(ggl::CommandBuffer *,ggl::CommandBuffer *,md::LayoutContext const&)::$_1,std::allocator<md::TransitRenderLayer::appendTransitLineCommandsToBuffer(ggl::CommandBuffer *,ggl::CommandBuffer *,md::LayoutContext const&)::$_1>,void ()(md::TransitDisplayConnectionRibbonDescriptor::Passes,ggl::RenderItem *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A39DD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

ggl::zone_mallocator *std::function<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(uint64_t a1, int a2, uint64_t a3)
{
  v8 = a2;
  v7 = a3;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v8, &v7);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<md::TransitRenderLayer::appendTransitLineCommandsToBuffer(ggl::CommandBuffer *,ggl::CommandBuffer *,md::LayoutContext const&)::$_0::operator() const(ggl::CommandBuffer *,unsigned int,md::Ribbons::RibbonLayer<md::Ribbons::TransitRibbonDescriptor> *,unsigned int)::{lambda(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<md::TransitRenderLayer::appendTransitLineCommandsToBuffer(ggl::CommandBuffer *,ggl::CommandBuffer *,md::LayoutContext const&)::$_0::operator() const(ggl::CommandBuffer *,unsigned int,md::Ribbons::RibbonLayer<md::Ribbons::TransitRibbonDescriptor> *,unsigned int)::{lambda(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v4, v5, v6);
}

ggl::zone_mallocator *std::__function::__func<md::TransitRenderLayer::appendTransitLineCommandsToBuffer(ggl::CommandBuffer *,ggl::CommandBuffer *,md::LayoutContext const&)::$_0::operator() const(ggl::CommandBuffer *,unsigned int,md::Ribbons::RibbonLayer<md::Ribbons::TransitRibbonDescriptor> *,unsigned int)::{lambda(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<md::TransitRenderLayer::appendTransitLineCommandsToBuffer(ggl::CommandBuffer *,ggl::CommandBuffer *,md::LayoutContext const&)::$_0::operator() const(ggl::CommandBuffer *,unsigned int,md::Ribbons::RibbonLayer<md::Ribbons::TransitRibbonDescriptor> *,unsigned int)::{lambda(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(uint64_t a1, uint64_t a2, ggl::RenderItem **a3)
{
  v3 = *a3;
  *(*a3 + 10) = *(a1 + 8);
  return ggl::CommandBuffer::pushRenderItem(*(a1 + 16), v3);
}

__n128 std::__function::__func<md::TransitRenderLayer::appendTransitLineCommandsToBuffer(ggl::CommandBuffer *,ggl::CommandBuffer *,md::LayoutContext const&)::$_0::operator() const(ggl::CommandBuffer *,unsigned int,md::Ribbons::RibbonLayer<md::Ribbons::TransitRibbonDescriptor> *,unsigned int)::{lambda(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<md::TransitRenderLayer::appendTransitLineCommandsToBuffer(ggl::CommandBuffer *,ggl::CommandBuffer *,md::LayoutContext const&)::$_0::operator() const(ggl::CommandBuffer *,unsigned int,md::Ribbons::RibbonLayer<md::Ribbons::TransitRibbonDescriptor> *,unsigned int)::{lambda(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A39D00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<md::TransitRenderLayer::layout(md::LayoutContext const&)::$_0,std::allocator<md::TransitRenderLayer::layout(md::LayoutContext const&)::$_0>,void ()(md::StyleManagerEvent)>::operator()(uint64_t result, unsigned __int8 *a2)
{
  if (*a2 <= 4u)
  {
    v2 = *(result + 8);
    v3 = *(v2 + 408);
    if ((v3 + 1) > 1)
    {
      v4 = v3 + 1;
    }

    else
    {
      v4 = 1;
    }

    *(v2 + 408) = v4;
  }

  return result;
}

uint64_t std::__function::__func<md::TransitRenderLayer::layout(md::LayoutContext const&)::$_0,std::allocator<md::TransitRenderLayer::layout(md::LayoutContext const&)::$_0>,void ()(md::StyleManagerEvent)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A39D48;
  a2[1] = v2;
  return result;
}

uint64_t std::__tree<std::shared_ptr<md::TransitTileData>,md::TransitTileSetCompare,std::allocator<std::shared_ptr<md::TransitTileData>>>::__count_unique<std::shared_ptr<md::TransitTileData>>(void *a1, grl::IconMetricsRenderResult *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = 1;
    do
    {
      v5 = v3[4];
      if ((md::TransitTileSetCompare::operator()(a2, v5) & 1) == 0)
      {
        if (!md::TransitTileSetCompare::operator()(v5, a2))
        {
          return v4;
        }

        ++v3;
      }

      v3 = *v3;
    }

    while (v3);
  }

  return 0;
}

BOOL md::MaterialRenderBatchKey::operator!=(uint64_t a1, uint64_t a2)
{
  if (md::BaseRenderBatchKey<ggl::VertexData>::operator!=(a1, a2) || *(a1 + 80) != *(a2 + 80) || *(a1 + 96) != *(a2 + 96) || *(a1 + 104) != *(a2 + 104) || *(a1 + 120) != *(a2 + 120) || *(a1 + 121) != *(a2 + 121) || *(a1 + 122) != *(a2 + 122))
  {
    return 1;
  }

  v4 = *(a1 + 140);
  v5 = *(a2 + 140);
  if (v4 == v5 && *(a1 + 140))
  {
    if (*(a1 + 124) != *(a2 + 124) || *(a1 + 132) != *(a2 + 132))
    {
      return 1;
    }
  }

  else if (v4 != v5)
  {
    return 1;
  }

  v7 = *(a1 + 148);
  v8 = *(a2 + 148);
  if (v7 == v8 && *(a1 + 148))
  {
    if (*(a1 + 144) != *(a2 + 144))
    {
      return 1;
    }
  }

  else if (v7 != v8)
  {
    return 1;
  }

  v9 = *(a1 + 217);
  v10 = *(a2 + 217);
  if (v9 == v10 && *(a1 + 217))
  {
    v9 = *(a1 + 216);
    v10 = *(a2 + 216);
  }

  if (v9 != v10)
  {
    return 1;
  }

  v11 = *(a1 + 208);
  v12 = *(a2 + 208);
  if (v11 == v12 && *(a1 + 208))
  {
    if (*(a1 + 152) != *(a2 + 152))
    {
      return 1;
    }

    ggl::DataAccess<ggl::Tile::View>::DataAccess(v18, *(a1 + 176), 0);
    ggl::DataAccess<ggl::Tile::View>::DataAccess(v16, *(a2 + 176), 0);
    if (*(v19 + 8) != *(v17 + 8))
    {
      ggl::BufferMemory::~BufferMemory(v16);
      ggl::BufferMemory::~BufferMemory(v18);
      return 1;
    }

    v14 = *v19;
    v15 = *v17;
    ggl::BufferMemory::~BufferMemory(v16);
    ggl::BufferMemory::~BufferMemory(v18);
    if (v14 != v15)
    {
      return 1;
    }
  }

  else if (v11 != v12)
  {
    return 1;
  }

  if (*(a1 + 218) == *(a2 + 218))
  {
    return *(a1 + 219) != *(a2 + 219);
  }

  return 1;
}

BOOL md::BaseRenderBatchKey<ggl::VertexData>::operator!=(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64) != *(a2 + 64) || *a1 != *a2 || *(a1 + 73) != *(a2 + 73) || *(a1 + 72) != *(a2 + 72) || *(a1 + 74) != *(a2 + 74) || *(a1 + 75) != *(a2 + 75) || *(a1 + 76) != *(a2 + 76) || *(a1 + 77) != *(a2 + 77);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = v3 == *(a2 + 16);
  }

  else
  {
    v4 = 1;
  }

  v5 = *(a1 + 32);
  if (!v4)
  {
    v2 = 1;
  }

  if (v5)
  {
    v6 = v5 == *(a2 + 32);
  }

  else
  {
    v6 = 1;
  }

  v7 = *(a1 + 48);
  if (!v6)
  {
    v2 = 1;
  }

  if (v7)
  {
    v8 = v7 == *(a2 + 48);
  }

  else
  {
    v8 = 1;
  }

  return !v8 || v2;
}

void md::PuckRenderResources::update(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, uint64_t a5, float a6)
{
  v10 = a2;
  v11 = (a1 + 96);
  if (*(a5 + 73) != 1)
  {
    v11 = (a1 + 96 + 16 * a4);
  }

  v12 = *v11;
  *(*(a1 + 144) + 24) = v12;
  *(*(a1 + 160) + 24) = v12;
  v13 = *(a1 + 224);
  if (!v13)
  {
    _ZNSt3__115allocate_sharedB8nn200100IN3ggl12SamplerStateENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&v20);
  }

  **(*(a1 + 32) + 168) = v13;
  v14 = *(a1 + 208);
  if (!v14 || *(a1 + 256) != *(a3 + 44))
  {
    std::string::basic_string[abi:nn200100]<0>(&__p, "");
    v15 = *(a3 + 44);
    *(a1 + 256) = v15;
    if (v15)
    {
      if (v15 != 1)
      {
        goto LABEL_18;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        __p.__r_.__value_.__l.__size_ = 7;
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&__p.__r_.__value_.__s + 23) = 7;
        p_p = &__p;
      }

      *(p_p->__r_.__value_.__r.__words + 3) = 1735289195;
      v17 = 1802264951;
    }

    else
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        __p.__r_.__value_.__l.__size_ = 7;
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&__p.__r_.__value_.__s + 23) = 7;
        p_p = &__p;
      }

      *(p_p->__r_.__value_.__r.__words + 3) = 1735289206;
      v17 = 1986622052;
    }

    LODWORD(p_p->__r_.__value_.__l.__data_) = v17;
    p_p->__r_.__value_.__s.__data_[7] = 0;
LABEL_18:
    std::string::append(&__p, "PuckArrowMask", 0xDuLL);
    _ZNSt3__115allocate_sharedB8nn200100IN3ggl12SamplerStateENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&v20);
  }

  **(*(a1 + 48) + 168) = v14;
  if (!*(a5 + 73))
  {
    v18 = *(a1 + 128);
    *(*(a1 + 176) + 24) = v18;
    *(*(a1 + 192) + 24) = v18;
    **(*(a1 + 64) + 168) = *(a1 + 224);
    **(*(a1 + 80) + 168) = *(a1 + 208);
  }
}

void sub_1B3174714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21)
{
  v24 = *(v22 - 72);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ggl::RenderItem>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3A078;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::TextureAlphaMask::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::TextureAlphaMask::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3A020;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::TextureAlphaMask::View>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::TextureAlphaMask::View>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A39FC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::TextureAlphaMask::MeshPipelineSetup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A39F38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Textured::Pos2DUVExtendedPipelineSetup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A39F00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::TextureAlphaMask::MeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A39EC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

unint64_t md::LabelCollider::removeItemFromGrid(md::LabelCollider *this, md::LabelCollidableItem *a2)
{
  result = md::LabelCollider::rectToGridRect(this, a2 + 2);
  v6 = 0;
  v7 = 0;
  v8 = &v21;
  v21 = result;
  v22 = v5;
  do
  {
    v9 = *(&v22 + v7);
    v10 = *v8;
    if (v6)
    {
      break;
    }

    v6 = 1;
    v8 = (&v21 + 4);
    v7 = 1;
  }

  while (v9 >= v10);
  if (v9 >= v10)
  {
    v11 = HIDWORD(v21);
    if (SHIDWORD(v21) <= SHIDWORD(v5))
    {
      v12 = *(this + 11);
      v13 = *(this + 7) + 24 * (result + v12 * HIDWORD(v21));
      do
      {
        if (result <= v5)
        {
          v14 = result;
          v15 = v13;
          do
          {
            v16 = *v15;
            if (*v15)
            {
              v17 = 0;
              v18 = v15[2];
              while (*(v18 + 8 * v17) != a2)
              {
                if (v16 == ++v17)
                {
                  goto LABEL_15;
                }
              }

              v19 = v16 - 1;
              *(v18 + 8 * v17) = *(v18 + 8 * v19);
              *v15 = v19;
            }

LABEL_15:
            v15 += 3;
            v20 = v14++ == v5;
          }

          while (!v20);
        }

        v13 += 24 * v12;
        v20 = v11++ == HIDWORD(v5);
      }

      while (!v20);
    }
  }

  return result;
}

unint64_t md::LabelCollider::rectToGridRect(float *a1, float *a2)
{
  v3 = gm::OBRect<float>::axisAlignedBoundingRect(a2);
  v4 = a1[8];
  return (v4 * (v3 - a1[9])) & ~((v4 * (v3 - a1[9])) >> 31) | ((((v5 - a1[10]) * v4) & ~(((v5 - a1[10]) * v4) >> 31)) << 32);
}

uint64_t std::__partial_sort[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**,md::LabelCollidableItem**>(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  if (result != a2)
  {
    v4 = a2;
    v5 = result;
    v6 = (a2 - result) >> 3;
    if (v6 >= 2)
    {
      v7 = (v6 - 2) >> 1;
      v8 = v7 + 1;
      v9 = (result + 8 * v7);
      do
      {
        result = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**>(v5, v6, v9--);
        --v8;
      }

      while (v8);
    }

    if (v4 != a3)
    {
      v10 = *v5;
      v11 = v4;
      do
      {
        v12 = *v11;
        v13 = *(*v11 + 52);
        v14 = *(v10 + 52);
        v15 = v13 == v14;
        v16 = v13 < v14;
        if (v15)
        {
          v16 = *v11 < v10;
        }

        if (v16)
        {
          *v11 = v10;
          *v5 = v12;
          result = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**>(v5, v6, v5);
          v10 = *v5;
        }

        ++v11;
      }

      while (v11 != a3);
    }

    if (v6 >= 2)
    {
      do
      {
        v17 = 0;
        v18 = *v5;
        v19 = v5;
        do
        {
          v20 = &v19[v17];
          v21 = v20 + 1;
          v22 = v20[1];
          v23 = (2 * v17) | 1;
          v17 = 2 * v17 + 2;
          if (v17 >= v6)
          {
            v17 = v23;
          }

          else
          {
            v26 = v20[2];
            v24 = v20 + 2;
            v25 = v26;
            v27 = *(v22 + 52);
            result = *(v26 + 52);
            v28 = v22 < v26;
            v15 = v27 == result;
            v29 = v27 < result;
            if (v15)
            {
              v29 = v28;
            }

            if (v29)
            {
              v22 = v25;
              v21 = v24;
            }

            else
            {
              v17 = v23;
            }
          }

          *v19 = v22;
          v19 = v21;
        }

        while (v17 <= ((v6 - 2) >> 1));
        if (v21 == --v4)
        {
          *v21 = v18;
        }

        else
        {
          *v21 = *v4;
          *v4 = v18;
          v30 = (v21 - v5 + 8) >> 3;
          v31 = v30 < 2;
          v32 = v30 - 2;
          if (!v31)
          {
            v33 = v32 >> 1;
            v34 = &v5[v33];
            v35 = *v34;
            v36 = *v21;
            v37 = *(*v34 + 52);
            v38 = *(*v21 + 52);
            v15 = v37 == v38;
            v39 = v37 < v38;
            if (v15)
            {
              v39 = *v34 < *v21;
            }

            if (v39)
            {
              do
              {
                v40 = v34;
                *v21 = v35;
                if (!v33)
                {
                  break;
                }

                v33 = (v33 - 1) >> 1;
                v34 = &v5[v33];
                v35 = *v34;
                v41 = *(*v34 + 52);
                v42 = *v34 < v36;
                v15 = v41 == v38;
                v43 = v41 < v38;
                if (!v15)
                {
                  v42 = v43;
                }

                v21 = v40;
              }

              while (v42);
              *v40 = v36;
            }
          }
        }

        v31 = v6-- <= 2;
      }

      while (!v31);
    }
  }

  return result;
}

unint64_t *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollidableItem **,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem *,20ul> &)::$_0 &>(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a2 - 1);
  v4 = *(*a1 + 52);
  v5 = *(v3 + 52);
  v6 = *a1 < v3;
  v7 = v4 == v5;
  v8 = v4 < v5;
  if (!v7)
  {
    v6 = v8;
  }

  if (v6)
  {
    v9 = a1;
    do
    {
      v10 = v9[1];
      ++v9;
      v11 = *(v10 + 52);
      v12 = v2 < v10;
      v7 = v4 == v11;
      v13 = v4 < v11;
      if (!v7)
      {
        v12 = v13;
      }
    }

    while (!v12);
  }

  else
  {
    v14 = a1 + 1;
    do
    {
      v9 = v14;
      if (v14 >= a2)
      {
        break;
      }

      ++v14;
      v15 = *(*v9 + 52);
      v16 = v2 < *v9;
      v7 = v4 == v15;
      v17 = v4 < v15;
      if (!v7)
      {
        v16 = v17;
      }
    }

    while (!v16);
  }

  if (v9 < a2)
  {
    do
    {
      v18 = *--a2;
      v19 = *(v18 + 52);
      v20 = v2 < v18;
      v7 = v4 == v19;
      v21 = v4 < v19;
      if (!v7)
      {
        v20 = v21;
      }
    }

    while (v20);
  }

  if (v9 < a2)
  {
    v22 = *v9;
    v23 = *a2;
    do
    {
      *v9 = v23;
      *a2 = v22;
      do
      {
        v24 = v9[1];
        ++v9;
        v22 = v24;
        v25 = *(v24 + 52);
        v26 = v2 < v24;
        v7 = v4 == v25;
        v27 = v4 < v25;
        if (v7)
        {
          v27 = v26;
        }
      }

      while (!v27);
      do
      {
        v28 = *--a2;
        v23 = v28;
        v29 = *(v28 + 52);
        v30 = v2 < v28;
        v7 = v4 == v29;
        v31 = v4 < v29;
        if (v7)
        {
          v31 = v30;
        }
      }

      while (v31);
    }

    while (v9 < a2);
  }

  if (v9 - 1 != a1)
  {
    *a1 = *(v9 - 1);
  }

  *(v9 - 1) = v2;
  return v9;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**>(uint64_t result, uint64_t a2, unint64_t *a3)
{
  if (a2 >= 2)
  {
    v3 = a3 - result;
    v4 = (a2 - 2) >> 1;
    if (v4 >= (a3 - result) >> 3)
    {
      v5 = v3 >> 2;
      v6 = (v3 >> 2) + 1;
      v7 = (result + 8 * v6);
      v8 = v5 + 2;
      v9 = *v7;
      if (v8 < a2)
      {
        v10 = v7[1];
        v11 = *(v9 + 52);
        v12 = *(v10 + 52);
        v13 = v11 == v12;
        v14 = v11 < v12;
        if (v13)
        {
          v14 = v9 < v10;
        }

        if (v14)
        {
          v9 = v7[1];
          ++v7;
          v6 = v8;
        }
      }

      v15 = *a3;
      v16 = *(v9 + 52);
      v17 = *(*a3 + 52);
      v13 = v16 == v17;
      v18 = v16 < v17;
      if (v13)
      {
        v18 = v9 < *a3;
      }

      if (!v18)
      {
        do
        {
          v19 = v7;
          *a3 = v9;
          if (v4 < v6)
          {
            break;
          }

          v20 = (2 * v6) | 1;
          v7 = (result + 8 * v20);
          v21 = 2 * v6 + 2;
          v9 = *v7;
          if (v21 < a2)
          {
            v22 = v7[1];
            v23 = *(v9 + 52);
            v24 = *(v22 + 52);
            v13 = v23 == v24;
            v25 = v23 < v24;
            if (v13)
            {
              v25 = v9 < v22;
            }

            if (v25)
            {
              v9 = v7[1];
              ++v7;
              v20 = v21;
            }
          }

          v26 = *(v9 + 52);
          v27 = v9 < v15;
          v13 = v26 == v17;
          v28 = v26 < v17;
          if (!v13)
          {
            v27 = v28;
          }

          a3 = v19;
          v6 = v20;
        }

        while (!v27);
        *v19 = v15;
      }
    }
  }

  return result;
}

uint64_t std::__partial_sort[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,md::LabelCollisionItemBase **>(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v4 = a2;
    v5 = result;
    v6 = (a2 - result) >> 3;
    if (v6 >= 2)
    {
      v7 = (v6 - 2) >> 1;
      v8 = v7 + 1;
      v9 = (result + 8 * v7);
      do
      {
        result = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **>(v5, v6, v9--);
        --v8;
      }

      while (v8);
    }

    if (v4 != a3)
    {
      v10 = v4;
      do
      {
        result = *v10;
        if (*v10 != *v5)
        {
          result = (*(*result + 80))(result);
          if (result)
          {
            v11 = *v10;
            *v10 = *v5;
            *v5 = v11;
            result = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **>(v5, v6, v5);
          }
        }

        ++v10;
      }

      while (v10 != a3);
    }

    if (v6 >= 2)
    {
      do
      {
        v12 = 0;
        v13 = *v5;
        v14 = v5;
        do
        {
          v15 = v14;
          v16 = &v14[v12];
          v14 = v16 + 1;
          v17 = 2 * v12;
          v12 = (2 * v12) | 1;
          v18 = v17 + 2;
          if (v17 + 2 < v6)
          {
            v20 = v16[2];
            v19 = v16 + 2;
            result = *(v19 - 1);
            if (result != v20)
            {
              result = (*(*result + 80))(result);
              if (result)
              {
                v14 = v19;
                v12 = v18;
              }
            }
          }

          *v15 = *v14;
        }

        while (v12 <= ((v6 - 2) >> 1));
        if (v14 == --v4)
        {
          *v14 = v13;
        }

        else
        {
          *v14 = *v4;
          *v4 = v13;
          v21 = (v14 - v5 + 8) >> 3;
          v22 = v21 < 2;
          v23 = v21 - 2;
          if (!v22)
          {
            v24 = v23 >> 1;
            v25 = &v5[v23 >> 1];
            result = *v25;
            if (*v25 != *v14)
            {
              result = (*(*result + 80))(result);
              if (result)
              {
                v26 = *v14;
                do
                {
                  v27 = v25;
                  *v14 = *v25;
                  if (!v24)
                  {
                    break;
                  }

                  v24 = (v24 - 1) >> 1;
                  v25 = &v5[v24];
                  result = *v25;
                  if (*v25 == v26)
                  {
                    break;
                  }

                  result = (*(*result + 80))(result, v26);
                  v14 = v27;
                }

                while ((result & 1) != 0);
                *v27 = v26;
              }
            }
          }
        }

        v22 = v6-- <= 2;
      }

      while (!v22);
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollisionItemBase **,md::LabelCollider::collideItems(void)::$_0 &>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = *a1;
  if (*a1 == *(a2 - 1) || !(*(*v4 + 80))(*a1))
  {
      ;
    }
  }

  else
  {
      ;
    }
  }

  if (i < v2)
  {
    v6 = v2 - 1;
    do
    {
      v2 = v6;
      if (v4 == *v6)
      {
        break;
      }

      v7 = (*(*v4 + 80))(v4);
      v6 = v2 - 1;
    }

    while ((v7 & 1) != 0);
  }

  while (i < v2)
  {
    v8 = *i;
    *i++ = *v2;
    *v2 = v8;
    while (v4 == *i || ((*(*v4 + 80))(v4) & 1) == 0)
    {
      ++i;
    }

    v9 = v2 - 1;
    do
    {
      v2 = v9;
      if (v4 == *v9)
      {
        break;
      }

      v10 = (*(*v4 + 80))(v4);
      v9 = v2 - 1;
    }

    while ((v10 & 1) != 0);
  }

  if (i - 1 != a1)
  {
    *a1 = *(i - 1);
  }

  *(i - 1) = v4;
  return i;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **>(int8x16_t *a1, int8x16_t *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,0>(a1->i64, &a1->i64[1], &a2[-1].i64[1]);
        break;
      case 4:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,0>(a1->i64, &a1->i64[1], a1[1].i64);
        v17 = a2[-1].i64[1];
        if (v17 != a1[1].i64[0])
        {
          if ((*(*v17 + 80))(v17))
          {
            v18 = a1[1].i64[0];
            a1[1].i64[0] = a2[-1].i64[1];
            a2[-1].i64[1] = v18;
            v19 = a1[1].i64[0];
            if (v19 != a1->i64[1])
            {
              if ((*(*v19 + 80))(v19))
              {
                v21 = a1->i64[1];
                v20 = a1[1].i64[0];
                v22 = a1->i64[0];
                a1->i64[1] = v20;
                a1[1].i64[0] = v21;
                if (v20 != v22)
                {
                  if ((*(*v20 + 80))(v20))
                  {
                    *a1 = vextq_s8(*a1, *a1, 8uLL);
                  }
                }
              }
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,0>(a1->i64, &a1->i64[1], a1[1].i64, &a1[1].i64[1], &a2[-1].i64[1]);
        break;
      default:
        goto LABEL_12;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2[-1].i64[1];
    if (v5 != a1->i64[0])
    {
      if ((*(*v5 + 80))(v5))
      {
        v6 = a1->i64[0];
        a1->i64[0] = a2[-1].i64[1];
        a2[-1].i64[1] = v6;
      }
    }

    return 1;
  }

LABEL_12:
  v7 = a1 + 1;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,0>(a1->i64, &a1->i64[1], a1[1].i64);
  v8 = (a1 + 24);
  if (&a1[1].u64[1] == a2)
  {
    return 1;
  }

  v9 = 0;
  for (i = 16; ; i += 8)
  {
    if (v8->i64[0] != v7->i64[0] && (*(*v8->i64[0] + 80))(v8->i64[0]))
    {
      v11 = v8->i64[0];
      v12 = i;
      while (1)
      {
        v13 = v12;
        v14 = (a1->i64 + v12);
        v14[1] = *v14;
        if (!v13)
        {
          break;
        }

        if (v11 != *(v14 - 1))
        {
          v15 = (*(*v11 + 80))(v11);
          v12 = v13 - 8;
          if (v15)
          {
            continue;
          }
        }

        v16 = (a1 + v13);
        goto LABEL_22;
      }

      v16 = a1;
LABEL_22:
      v16->i64[0] = v11;
      if (++v9 == 8)
      {
        break;
      }
    }

    v7 = v8;
    v8 = (v8 + 8);
    if (v8 == a2)
    {
      return 1;
    }
  }

  return &v8->u64[1] == a2;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **>(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = a2 - 2;
  if (a2 >= 2)
  {
    v5 = result;
    v6 = v3 >> 1;
    if ((v3 >> 1) >= (a3 - result) >> 3)
    {
      v8 = (a3 - result) >> 2;
      v9 = v8 + 1;
      v10 = (result + 8 * (v8 + 1));
      v11 = v8 + 2;
      if (v8 + 2 < a2 && *v10 != v10[1] && (*(**v10 + 80))(*v10))
      {
        ++v10;
        v9 = v11;
      }

      result = *v10;
      v12 = *a3;
      if (*v10 != *a3)
      {
        result = (*(*result + 80))(result, *a3);
        if (result)
        {
          return result;
        }

        v12 = *a3;
        result = *v10;
      }

      *a3 = result;
      if (v6 >= v9)
      {
        do
        {
          v14 = 2 * v9;
          v9 = (2 * v9) | 1;
          v13 = (v5 + 8 * v9);
          v15 = v14 + 2;
          if (v14 + 2 < a2 && *v13 != v13[1])
          {
            if ((*(**v13 + 80))(*v13))
            {
              ++v13;
              v9 = v15;
            }
          }

          result = *v13;
          if (*v13 != v12)
          {
            result = (*(*result + 80))(result, v12);
            if (result)
            {
              goto LABEL_11;
            }

            result = *v13;
          }

          *v10 = result;
          v10 = v13;
        }

        while (v6 >= v9);
      }

      else
      {
LABEL_11:
        v13 = v10;
      }

      *v13 = v12;
    }
  }

  return result;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__list_node<md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::ListEntry,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,void *>>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<md::LabelStyleContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3A0D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::LabelStyleCache::setContentScale(float)::$_0,std::allocator<md::LabelStyleCache::setContentScale(float)::$_0>,void ()(std::shared_ptr<md::LabelStyle> const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A3A140;
  *(a2 + 8) = *(result + 8);
  return result;
}

void md::LabelStyleCache::updateNavRoadSignScale(md::LabelStyleCache *this)
{
  v2 = *(this + 23);
  if (v2)
  {
    gss::StylesheetManager<gss::PropertyID>::styleGlobalProperties(&v12, *(v2 + 16));
    v2 = v12;
    v3 = v12 == 0;
    v4 = 1.0;
    v5 = 1.0;
    v6 = 1.0;
    if (v12)
    {
      v5 = *(v12 + 212);
      if (*(v12 + 16) == 1)
      {
        v6 = *(v12 + 220);
      }
    }

    v7 = *(this + 23);
    if (v7 && *(*(v7 + 16) + 60) == 1)
    {
      v4 = 0.75;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v3 = 1;
    v6 = 1.0;
    v5 = 1.0;
    v4 = 1.0;
  }

  v8 = *(this + 159);
  v9 = 0.0;
  if (v8 > 2)
  {
    if (v8 - 4 >= 2)
    {
      if (v8 != 3)
      {
        goto LABEL_35;
      }

      if (!v3 && *(v2 + 20) == 1)
      {
        v9 = *(v2 + 236);
        goto LABEL_35;
      }

      v10 = 1.3;
    }

    else
    {
      if (!v3 && *(v2 + 21) == 1)
      {
        v9 = *(v2 + 240);
        goto LABEL_35;
      }

      v10 = 1.45;
    }

    goto LABEL_34;
  }

  if (!*(this + 159))
  {
    if (!v3 && *(v2 + 17) == 1)
    {
      v9 = *(v2 + 224);
      goto LABEL_35;
    }

    v10 = 0.9;
    goto LABEL_34;
  }

  if (v8 != 1)
  {
    if (v8 != 2)
    {
      goto LABEL_35;
    }

    if (!v3 && *(v2 + 19) == 1)
    {
      v9 = *(v2 + 232);
      goto LABEL_35;
    }

    v10 = 1.15;
LABEL_34:
    v9 = v5 * v10;
    goto LABEL_35;
  }

  if (v3)
  {
    v9 = v5;
  }

  else
  {
    v9 = v5;
    if (*(v2 + 18) == 1)
    {
      v9 = *(v2 + 228);
    }
  }

LABEL_35:
  *(this + 43) = v9 * v6;
  *(this + 44) = v9 * v4;
  v11 = v13;
  if (v13)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }
}

void std::__function::__func<md::LabelStyleCache::setLabelScaleFactor(gss::LabelScaleFactor,gss::LabelScaleFactor)::$_0,std::allocator<md::LabelStyleCache::setLabelScaleFactor(gss::LabelScaleFactor,gss::LabelScaleFactor)::$_0>,void ()(std::shared_ptr<md::LabelStyle> const&)>::operator()(uint64_t a1, md::LabelStyle **a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  if (*(*a2 + 93) != v4)
  {
    *(v3 + 93) = v4;
    md::LabelStyle::invalidateCachedProperties(v3);
  }
}

uint64_t std::__function::__func<md::LabelStyleCache::setLabelScaleFactor(gss::LabelScaleFactor,gss::LabelScaleFactor)::$_0,std::allocator<md::LabelStyleCache::setLabelScaleFactor(gss::LabelScaleFactor,gss::LabelScaleFactor)::$_0>,void ()(std::shared_ptr<md::LabelStyle> const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A3A188;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<md::LabelStyleCache::setVariantStyleType(gss::DisplayStyle)::$_0,std::allocator<md::LabelStyleCache::setVariantStyleType(gss::DisplayStyle)::$_0>,void ()(std::shared_ptr<md::LabelStyle> const&)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A3A218;
  a2[1] = *(result + 8);
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,mdm::zone_mallocator>>::erase(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = *a2;
  v3 = a2[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
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

  v6 = *(*a1 + 8 * v3);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 != a1 + 3)
  {
    v8 = v7[1];
    if (v5.u32[0] > 1uLL)
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

    v9 = *a2;
    if (v8 == v3)
    {
LABEL_20:
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  if (!v4)
  {
    goto LABEL_19;
  }

  v10 = *(v4 + 8);
  if (v5.u32[0] > 1uLL)
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

  v9 = *a2;
  if (v10 != v3)
  {
LABEL_19:
    *(*a1 + 8 * v3) = 0;
    v9 = *a2;
    goto LABEL_20;
  }

LABEL_21:
  v11 = *(v9 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v11 >= *&v2)
    {
      v11 %= *&v2;
    }
  }

  else
  {
    v11 &= *&v2 - 1;
  }

  if (v11 != v3)
  {
    *(*a1 + 8 * v11) = v7;
    v9 = *a2;
  }

LABEL_27:
  *v7 = v9;
  *a2 = 0;
  --a1[5];
  std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, a2);
  return v4;
}

void std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](mdm::zone_mallocator *a1, void *a2)
{
  if (a1)
  {
    std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::LabelImageKey const> const,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,0>(a2 + 16);
  }

  v3 = mdm::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,void *>>(v3, a2);
}

void std::vector<BOOL,geo::allocator_adapter<BOOL,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *result)
{
  if (result)
  {
    v2 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long>(v2, result);
  }
}

void md::LabelStyleCache::logStyleAttributes(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t **a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v10 = GEOGetVectorKitLabelStyleQueryLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 128);
    if (a4)
    {
      md::LabelFeature::debugName(v25, a4);
      if (v26 >= 0)
      {
        v12 = v25;
      }

      else
      {
        v12 = *v25;
      }

      if (*(a5 + 23) < 0)
      {
        a5 = *a5;
      }

      *buf = 134218754;
      *&buf[4] = v11;
      v28 = 2080;
      v29 = a2;
      v30 = 2080;
      v31 = v12;
      v32 = 2080;
      v33 = a5;
      _os_log_impl(&dword_1B2754000, v10, OS_LOG_TYPE_INFO, "MDL:[mgr=%p] %s feature=%s style=%s", buf, 0x2Au);
      if (v26 < 0)
      {
        v14 = *v25;
        v15 = mdm::zone_mallocator::instance(v13);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v15, v14);
      }
    }

    else
    {
      if (*(a5 + 23) < 0)
      {
        a5 = *a5;
      }

      *buf = 134218754;
      *&buf[4] = v11;
      v28 = 2080;
      v29 = a2;
      v30 = 2080;
      v31 = "?";
      v32 = 2080;
      v33 = a5;
      _os_log_impl(&dword_1B2754000, v10, OS_LOG_TYPE_INFO, "MDL:[mgr=%p] %s feature=%s style=%s", buf, 0x2Au);
    }
  }

  v16 = GEOGetVectorKitLabelStyleQueryLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    gss::attributesToString(buf, (*a3 + 240), 1, 0, 0);
    v17 = v30 >= 0 ? buf : *buf;
    *v25 = 136315138;
    *&v25[4] = v17;
    _os_log_impl(&dword_1B2754000, v16, OS_LOG_TYPE_INFO, "MDL:featureAttributes:%s", v25, 0xCu);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(*buf);
    }
  }

  v18 = *(a1 + 184);
  v19 = *(v18 + 520);
  v20 = *(v18 + 528);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = GEOGetVectorKitLabelStyleQueryLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    gss::ClientStyleState<gss::PropertyID>::sourceClientStyleAttributes(v25, v19);
    gss::attributesToString(buf, v25, 1, 0);
    if (v30 >= 0)
    {
      v22 = buf;
    }

    else
    {
      v22 = *buf;
    }

    v23 = 136315138;
    v24 = v22;
    _os_log_impl(&dword_1B2754000, v21, OS_LOG_TYPE_INFO, "MDL:clientAttributes:%s", &v23, 0xCu);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(*buf);
    }

    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v25);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }
}

id GEOGetVectorKitLabelStyleQueryLog(void)
{
  if (GEOGetVectorKitLabelStyleQueryLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitLabelStyleQueryLog(void)::onceToken, &__block_literal_global_36846);
  }

  v1 = GEOGetVectorKitLabelStyleQueryLog(void)::log;

  return v1;
}

void ___ZL33GEOGetVectorKitLabelStyleQueryLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "LabelStyleQuery");
  v1 = GEOGetVectorKitLabelStyleQueryLog(void)::log;
  GEOGetVectorKitLabelStyleQueryLog(void)::log = v0;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__list_node<md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::ListEntry,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x30uLL, 0x20040A759441BuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

uint64_t md::HillshadeLayerDataSource::resourceKeyForType@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 592);
  if ((a5 & 0x100000000) != 0)
  {
    v7 = a5;
  }

  else
  {
    v7 = 2147483646;
  }

  v10 = vrev64_s32(*(a3 + 4));
  v8 = *a3;
  v11 = a3[1];
  v12 = v8;
  return gdc::ResourceKey::ResourceKey(a6, a2, v6, &v10, 4, a4, v7);
}

void md::HillshadeLayerDataSource::createLayerData(uint64_t a1, const gdc::LayerDataRequestKey **a2, unsigned __int16 **a3)
{
  v31 = *MEMORY[0x1E69E9840];
  std::atomic_load[abi:nn200100]<md::RegistryManager>(&v22, (a1 + 784));
  gdc::LayerDataSource::getResourceFromMap(&v27, *(a1 + 592), *a3, a3[1]);
  v6 = v27;
  if (*(&v27 + 1))
  {
    atomic_fetch_add_explicit((*(&v27 + 1) + 8), 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v6 + 1));
  }

  v21 = 0uLL;
  v7 = *(v6 + 144);
  v8 = *(v7 + 2944);
  v9 = *(v7 + 2952);
  memset(__p, 0, sizeof(__p));
  gdc::LayerDataSource::populateLoadMetadataListFromMap(*a3, a3[1], __p);
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = v22;
    if (v22)
    {
      v24 = 0uLL;
      v25 = 0;
      v30 = &v26;
      v13 = gss::zone_mallocator::instance(v10);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::pair<gss::StyleAttribute,unsigned short>>(v13, 1);
      *v14 = 0x1800000005;
      v15 = v14 + 1;
      v16 = v14 - (*(&v24 + 1) - v24);
      memcpy(v16, v24, *(&v24 + 1) - v24);
      v17 = v24;
      v18 = v25;
      *&v24 = v16;
      *(&v24 + 1) = v15;
      v25 = v15;
      v28 = v17;
      v29 = v18;
      *&v27 = v17;
      *(&v27 + 1) = v17;
      v19 = std::__split_buffer<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator> &>::~__split_buffer(&v27);
      *(&v24 + 1) = v15;
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](v19, &v24);
      gss::FeatureAttributeSet::sort(v27, *(&v27 + 1));
      gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v23, v12, &v27);
      v21 = v23;
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v27);
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v24);
    }

    LODWORD(v24) = 1;
    LODWORD(v23) = 1;
    std::allocate_shared[abi:nn200100]<ggl::SamplerState,std::allocator<ggl::SamplerState>,ggl::Wrap,ggl::Wrap,0>(&v27, &v24, &v23);
  }

  operator new();
}

void sub_1B3176B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a25);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v27);
  }

  if (__p)
  {
    operator delete(__p);
    if (!v26)
    {
LABEL_7:
      if (!v25)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if (!v26)
  {
    goto LABEL_7;
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  if (!v25)
  {
LABEL_9:
    if (a20)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](a20);
    }

    _Unwind_Resume(exception_object);
  }

LABEL_8:
  std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  goto LABEL_9;
}

void sub_1B3176D7C(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::HillshadeTileData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3A3C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::HillshadeLayerDataSource::~HillshadeLayerDataSource(md::HillshadeLayerDataSource *this)
{
  *this = &unk_1F2A3A318;
  v2 = *(this + 99);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *(this + 95) = &unk_1F2A59028;

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A3A318;
  v2 = *(this + 99);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *(this + 95) = &unk_1F2A59028;

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);
}

void md::mun::MuninPointLabelDataRequester::requestDataKeys(md::mun::MuninPointLabelDataRequester *this, const gdc::SelectionContext *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 1);
  v3 = *(this + 1);
  v4 = *(a2 + 13);
  v5 = *(a2 + 14);
  v6 = v4 * 0.5;
  v7 = tan(v4 * 0.5 + 0.785398163);
  v8 = v5 * 0.159154943 + 0.5;
  v9 = log(v7) * 0.159154943 + 0.5;
  v10 = cos(v4 + v4) * -559.82 + 111132.92;
  v11 = v10 + cos(v4 * 4.0) * 1.175;
  v12 = v11 + cos(v4 * 6.0) * -0.0023;
  v13 = tan(v4 * 0.5 + 0.78103484);
  v14 = log(v13);
  v15 = tan(v6 + 0.789761487);
  v16 = fabs((log(v15) - v14) * 0.159154943) * 1000.0 / v12;
  v17 = log2(1.0 / v16);
  v18 = vcvtms_s32_f32(v17);
  v19 = (1 << v18);
  v43.i8[0] = -1;
  v43.i8[1] = v18;
  v43.i32[1] = (1 << v18) + ~vcvtmd_s64_f64(v9 * v19);
  v44 = vcvtmd_s64_f64(v8 * v19);
  v46 = 0;
  v47 = 1;
  (*(*v3 + 16))(v35, v3, 26, &v43);
  if (v37 == 1)
  {
    v20 = BYTE1(v35[0]);
  }

  else
  {
    v21 = (*(*v3 + 24))(v3, 26);
    if ((v22 & 1) == 0)
    {
      v27 = v42;
      v38 = v42;
      v39 = v42;
      v40 = v42;
      v41 = 9;
      goto LABEL_19;
    }

    v20 = v21;
  }

  v23 = 1 << v20;
  v24 = (1 << v20);
  v25 = v23 + ~vcvtmd_s64_f64((v16 + v9) * v23);
  v26 = vcvtmd_s64_f64((v9 - v16) * v24);
  v27 = v42;
  v38 = v42;
  v39 = v42;
  v40 = v42;
  v41 = 9;
  if (v25 <= ((1 << v20) + ~v26))
  {
    v34 = v2;
    v28 = vcvtmd_s64_f64((v8 - v16) * v24);
    v29 = vcvtmd_s64_f64((v16 + v8) * v24);
    v30 = v23 - v26;
    do
    {
      v31 = v28;
      if (v28 <= v29)
      {
        do
        {
          v32 = ((v27 - v38) >> 5) + 1;
          if (v41 < v32)
          {
            geo::small_vector_base<geo::QuadTile>::grow(&v38, v32);
            v27 = v39;
          }

          *v27 = -1;
          v27[1] = v20;
          *(v27 + 1) = v25;
          *(v27 + 2) = v31;
          *(v27 + 2) = 0;
          v27[24] = 1;
          v27 += 32;
          ++v31;
          v39 = v27;
        }

        while (v29 + 1 != v31);
      }

      ++v25;
    }

    while (v25 != v30);
    v33 = v38;
    if (v38 == v27)
    {
      v27 = v38;
    }

    else
    {
      do
      {
        v43 = vrev64_s32(*(v33 + 4));
        v44 = v33[1];
        v45 = *v33;
        gdc::LayerDataRequestKey::LayerDataRequestKey(v35, 0, 38, &v43, 4);
        gdc::LayerDataCollector::addDataKey(v34, v35);
        if (v36 != v37)
        {
          free(v36);
        }

        v33 += 32;
      }

      while (v33 != v27);
      v27 = v38;
    }
  }

LABEL_19:
  if (v27 != v40)
  {
    free(v27);
  }
}

uint64_t md::DaVinciGroundTileData::estimatedCost(md::DaVinciGroundTileData *this)
{
  v1 = *(this + 135);
  v2 = *(this + 136);
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    do
    {
      for (i = v1[1]; i != v1[2]; i += 3)
      {
        v5 = *i;
        v3 = *(**(v5 + 64) + 48) + v3 + *(*(v5 + 96) + 48) - (*(**(v5 + 64) + 40) + *(*(v5 + 96) + 40));
      }

      for (j = v1[4]; j != v1[5]; j += 4)
      {
        v7 = *j;
        v3 = *(**(v7 + 64) + 48) + v3 + *(*(v7 + 96) + 48) - (*(**(v7 + 64) + 40) + *(*(v7 + 96) + 40));
      }

      v1 += 7;
    }

    while (v1 != v2);
  }

  for (k = 0; k != 48; k += 16)
  {
    v9 = *(this + k + 888);
    if (v9)
    {
      v3 = *(v9 + 48) + v3 - *(v9 + 40);
    }
  }

  v10 = *(this + 109);
  if (v10)
  {
    v3 = *(v10 + 48) + v3 - *(v10 + 40);
  }

  for (m = *(this + 120); m != *(this + 121); m += 2)
  {
    v12 = *m;
    v3 = *(**(v12 + 64) + 48) + v3 + *(*(v12 + 96) + 48) - (*(**(v12 + 64) + 40) + *(*(v12 + 96) + 40));
  }

  for (n = *(this + 123); n != *(this + 124); n += 2)
  {
    v14 = *n;
    v3 = *(**(v14 + 64) + 48) + v3 + *(*(v14 + 96) + 48) - (*(**(v14 + 64) + 40) + *(*(v14 + 96) + 40));
  }

  for (ii = *(this + 126); ii != *(this + 127); ii += 2)
  {
    v16 = *ii;
    v3 = *(**(v16 + 64) + 48) + v3 + *(*(v16 + 96) + 48) - (*(**(v16 + 64) + 40) + *(*(v16 + 96) + 40));
  }

  v17 = *(this + 164);
  if (v17)
  {
    v3 += *(v17 + 80);
  }

  v18 = *(this + 169) + *(this + 170) + v3;
  v19 = (this + 1224);
  v20 = 4;
  do
  {
    v18 = v18 + *v19 - *(v19 - 1);
    v19 += 3;
    --v20;
  }

  while (v20);
  return v18 + 8 * *(this + 143) + 16 * *(this + 146);
}

void md::DaVinciGroundTileData::~DaVinciGroundTileData(md::DaVinciGroundTileData *this)
{
  md::DaVinciGroundTileData::~DaVinciGroundTileData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A3A4B8;
  *(this + 80) = &unk_1F2A3A500;
  md::RegistryManager::removeRegistry(*(this + 167), this);
  v14 = (this + 1368);
  std::vector<std::pair<md::ServerDrapedMesh,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::__destroy_vector::operator()[abi:nn200100](&v14);
  v2 = *(this + 168);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 165);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  for (i = 0; i != -96; i -= 24)
  {
    v5 = *(this + i + 1288);
    if (v5)
    {
      *(this + i + 1296) = v5;
      operator delete(v5);
    }
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 145));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 142));
  v14 = (this + 1104);
  std::vector<std::unordered_map<unsigned short,unsigned long long>>::__destroy_vector::operator()[abi:nn200100](&v14);
  v14 = (this + 1080);
  std::vector<md::DaVinciGroundTileData::RibbonAsset>::__destroy_vector::operator()[abi:nn200100](&v14);
  v14 = (this + 1056);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v14);
  v14 = (this + 1032);
  std::vector<md::Mesh>::__destroy_vector::operator()[abi:nn200100](&v14);
  v14 = (this + 1008);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v14);
  v14 = (this + 984);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v14);
  v14 = (this + 960);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v14);
  v6 = *(this + 117);
  if (v6)
  {
    *(this + 118) = v6;
    operator delete(v6);
  }

  for (j = 928; j != 880; j -= 16)
  {
    v8 = *(this + j);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }
  }

  v9 = *(this + 110);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  for (k = 864; k != 816; k -= 16)
  {
    v11 = *(this + k);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    }
  }

  do
  {
    v12 = *(this + k);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    k -= 16;
  }

  while (k != 768);
  do
  {
    v13 = *(this + k);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    k -= 16;
  }

  while (k != 720);

  md::MapTileData::~MapTileData(this);
}

void sub_1B317775C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 1368);
  std::vector<std::pair<md::ServerDrapedMesh,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::__destroy_vector::operator()[abi:nn200100](&a10);
  v12 = *(v10 + 1344);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  v13 = *(v10 + 1320);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  v14 = (v10 + 1296);
  v15 = -96;
  while (1)
  {
    v16 = *(v14 - 1);
    if (v16)
    {
      *v14 = v16;
      operator delete(v16);
    }

    v14 -= 3;
    v15 += 24;
    if (!v15)
    {
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v10 + 1160));
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v10 + 1136));
      a10 = (v10 + 1104);
      std::vector<std::unordered_map<unsigned short,unsigned long long>>::__destroy_vector::operator()[abi:nn200100](&a10);
      a10 = (v10 + 1080);
      std::vector<md::DaVinciGroundTileData::RibbonAsset>::__destroy_vector::operator()[abi:nn200100](&a10);
      a10 = (v10 + 1056);
      std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a10);
      a10 = (v10 + 1032);
      std::vector<md::Mesh>::__destroy_vector::operator()[abi:nn200100](&a10);
      a10 = (v10 + 1008);
      std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a10);
      a10 = (v10 + 984);
      std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a10);
      a10 = (v10 + 960);
      std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a10);
      v17 = *(v10 + 936);
      if (v17)
      {
        *(v10 + 944) = v17;
        operator delete(v17);
      }

      v18 = 0;
      while (1)
      {
        v19 = *(v10 + 928 + v18);
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v19);
        }

        v18 -= 16;
        if (v18 == -48)
        {
          v20 = *(v10 + 880);
          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v20);
          }

          v21 = 0;
          while (1)
          {
            v22 = *(v10 + 864 + v21);
            if (v22)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v22);
            }

            v21 -= 16;
            if (v21 == -48)
            {
              v23 = 0;
              while (1)
              {
                v24 = *(v10 + 816 + v23);
                if (v24)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v24);
                }

                v23 -= 16;
                if (v23 == -48)
                {
                  v25 = 0;
                  while (1)
                  {
                    v26 = *(v10 + 768 + v25);
                    if (v26)
                    {
                      std::__shared_weak_count::__release_shared[abi:nn200100](v26);
                    }

                    v25 -= 16;
                    if (v25 == -48)
                    {
                      md::MapTileData::~MapTileData(v10);
                      _Unwind_Resume(a1);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void std::vector<std::pair<md::ServerDrapedMesh,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 10;
        std::allocator_traits<std::allocator<std::pair<md::ServerDrapedMesh,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>>::destroy[abi:nn200100]<std::pair<md::ServerDrapedMesh,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,void,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unordered_map<unsigned short,unsigned long long>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = *(v4 - 3);
        if (v6)
        {
          do
          {
            v7 = *v6;
            operator delete(v6);
            v6 = v7;
          }

          while (v7);
        }

        v9 = *(v4 - 5);
        v4 -= 5;
        v8 = v9;
        *v4 = 0;
        if (v9)
        {
          operator delete(v8);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<md::DaVinciGroundTileData::RibbonAsset>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = (v4 - 24);
        std::vector<md::components::BoundingVolume>::__destroy_vector::operator()[abi:nn200100](&v6);
        v6 = (v4 - 48);
        std::vector<md::components::CustomRenderState>::__destroy_vector::operator()[abi:nn200100](&v6);
        v4 -= 56;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator_traits<std::allocator<std::pair<md::ServerDrapedMesh,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>>::destroy[abi:nn200100]<std::pair<md::ServerDrapedMesh,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,void,0>(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

unint64_t md::DaVinciGroundTileData::_buildingCount(uint64_t a1, geo::codec::VectorTile **a2)
{
  v4 = +[VKDebugSettings sharedSettings];
  v5 = [v4 compressedBuildingsDisabled];

  v6 = *a2;
  if ((v5 & 1) == 0 && !*(v6 + 284))
  {
    return 0;
  }

  v7 = geo::codec::VectorTile::key(v6);
  v8 = -1 << (*(a1 + 169) - (*(v7 + 1) & 0x3F));
  v9 = geo::codec::VectorTile::daVinciSubTileBuildingIndices(v6, *(a1 + 176) & ~v8, *(a1 + 172) & ~v8, (*(a1 + 169) - (*(v7 + 1) & 0x3F)));
  return (v9[1] - *v9) >> 1;
}

void md::DaVinciGroundTileData::_buildAssetRequests(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  if (a4)
  {
    v8 = 0;
    v9 = 0;
    v10 = *(a5 + 64);
    v25 = a2;
    v26 = a4;
    do
    {
      v11 = a2 + 48 * v9;
      if (*(v11 + 45) == 1)
      {
        v12 = *(v11 + 16);
        if (v12)
        {
          v6 = (v6 & 0xFFFFFFFFFFFFFF00) + 1;
        }

        else
        {
          v6 &= 0xFFFFFFFFFFFFFF00;
        }

        if (v12)
        {
          v5 = *(v11 + 16);
        }

        else
        {
          v5 &= 0xFFFFFFFFFFFFFF00;
        }

        v13 = *(a3 + 8 * v8);
        v14 = (a1 + 1160);
LABEL_11:
        v15 = *v14;
        if (!*v14)
        {
LABEL_15:
          operator new();
        }

        while (1)
        {
          v14 = v15;
          v16 = v15[4];
          if (v13 < v16)
          {
            goto LABEL_11;
          }

          if (v16 >= v13)
          {
            break;
          }

          v15 = v14[1];
          if (!v15)
          {
            goto LABEL_15;
          }
        }

        if (*(v11 + 42))
        {
          v17 = *(v11 + 44) | ((*(v11 + 44) != 0) << 8);
          v18 = **(v11 + 8);
          v19 = v38;
          md::DaVinciGroundTileData::_buildInstanceTransform(v38, *v11, a5);
          v20 = 0;
          for (i = &v27; ; i += 2)
          {
            v22 = 0;
            v23 = i;
            do
            {
              *v23 = *(v19 + v22);
              v23 += 8;
              v22 += 12;
            }

            while (v22 != 48);
            ++v20;
            v19 = (v19 + 4);
            if (v20 == 3)
            {
              v24 = *(a1 + 1328);
              v27 = *(v11 + 40);
              v28 = vextq_s8(*(v11 + 24), *(v11 + 24), 8uLL);
              v29 = v38[0];
              v30 = v38[1];
              v31 = v38[2];
              v32 = v5;
              v33 = v6;
              v34 = v17;
              v35 = v18 & 1;
              v36 = v10;
              v37 = (v18 & 2) != 0;
              gdc::Registry::create(v24);
            }
          }
        }

        ++v8;
        a4 = v26;
        a2 = v25;
      }

      ++v9;
    }

    while (a4 > v9);
  }
}

uint64_t gdc::ObjectHolder<md::overlayComponents::Overlayable>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::overlayComponents::Overlayable>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A3A6A8;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::overlayComponents::Overlayable>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A3A6A8;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void std::__function::__func<md::DaVinciGroundTileData::DaVinciGroundTileData(gdc::LayerDataRequestKey const&,std::vector<gdc::Resource::LoadMetadata> &&,std::shared_ptr<md::GEOVectorTileResource> const&,VKSharedResources *,std::vector<gdc::Resource::LoadMetadata> &&<gss::StylesheetManager<VKSharedResources *::PropertyID>> const&,std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager> const&,gdc::Registry *,md::DaVinciGroundSettings const*)::$_0,std::allocator<md::DaVinciGroundSettings const*>,void ()(ggl::ResourceAccessor *)>::operator()(void *a1, uint64_t *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  v3 = a1[2];
  v7 = a1 + 2;
  __p = 0u;
  v9 = 0u;
  LODWORD(v10) = 1065353216;
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(&__p, *(v3 + 2816));
  if (*(*v7 + 2816))
  {
    operator new();
  }

  if (*(*v7 + 2800))
  {
    operator new();
  }

  v4 = *(v2 + 1320);
  *(v2 + 1312) = 0u;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  std::__hash_table<std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>>>::__deallocate_node(v9);
  v5 = __p;
  *&__p = 0;
  if (v5)
  {
    operator delete(v5);
  }

  if (GEOGetVectorKitPerformanceLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
  }

  v6 = GEOGetVectorKitPerformanceLog_log;
  if (os_signpost_enabled(v6))
  {
    LOWORD(__p) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "BuildTileMeshes", &unk_1B3514CAA, &__p, 2u);
  }

  operator new();
}

void sub_1B317A694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __int128 __p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void md::DaVinciGroundTileData::_buildTileMeshes(uint64_t a1, geo::codec::VectorTile **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v77 = *MEMORY[0x1E69E9840];
  v5 = *(*a2 + 492);
  v6 = *(*a2 + 1030);
  v57 = *(*a2 + 256);
  v7 = *(*a2 + 247);
  v8 = geo::codec::VectorTile::key(*a2);
  v9 = md::DaVinciGroundTileData::_edgeSmoothingAngleForZ((*(v8 + 1) & 0x3F));
  memset(v70, 0, sizeof(v70));
  if (v6)
  {
    v10 = 0;
    __p = 0;
    v11 = 0;
    for (i = 0; i != v6; ++i)
    {
      v13 = *(*a2 + 258) + 80 * i;
      v14 = (*(v13 + 16) + *(v13 + 12));
      if (*v13)
      {
        __dst[0] = 0;
        __dst[4] = 0;
        std::vector<std::optional<unsigned int>>::push_back[abi:nn200100](v70, __dst);
      }

      else
      {
        *__dst = v10 >> 4;
        __dst[4] = 1;
        std::vector<std::optional<unsigned int>>::push_back[abi:nn200100](v70, __dst);
        v15 = *(v13 + 4);
        v16 = *(v13 + 24);
        v17 = (v10 >> 4) + 1;
        if (v17 >> 60)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        if (v10 >> 4 != -1)
        {
          if (!(v17 >> 60))
          {
            operator new();
          }

LABEL_52:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v18 = 16 * (v10 >> 4);
        *v18 = *(v13 + 12);
        *(v18 + 4) = v14;
        *(v18 + 8) = v15;
        *(v18 + 12) = v16;
        v58 = (v18 + 16);
        memcpy(0, 0, v10);
        v10 = v58;
      }

      v19 = 0xAAAAAAAAAAAAAAABLL * (&v11[-__p] >> 3) + 1;
      if (v19 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v20 = v10;
      if (0x5555555555555556 * (-__p >> 3) > v19)
      {
        v19 = 0x5555555555555556 * (-__p >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-__p >> 3) >= 0x555555555555555)
      {
        v21 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        if (v21 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        goto LABEL_52;
      }

      v22 = 8 * (&v11[-__p] >> 3);
      *v22 = xmmword_1B33AFF10;
      *(v22 + 16) = 0x80000000800000;
      v23 = v22 + 24 * (&v11[-__p] / -24);
      if (__p != v11)
      {
        v24 = __p;
        v25 = 8 * (&v11[-__p] >> 3) + 24 * (&v11[-__p] / -24);
        do
        {
          v26 = *v24;
          *(v25 + 16) = *(v24 + 16);
          *v25 = v26;
          v25 += 24;
          v24 += 24;
        }

        while (v24 != v11);
      }

      v11 = (v22 + 24);
      if (__p)
      {
        operator delete(__p);
      }

      __p = v23;
      v10 = v20;
      v27 = *(v13 + 12);
      if (v27 < v14)
      {
        do
        {
          v28 = *(v57 + 2 * v27);
          if (v28 != 0xFFFF)
          {
            v29 = 0;
            v30 = v7 + 12 * (*(v13 + 4) + v28);
            v31 = *(v30 + 8);
            *__dst = *v30;
            *&__dst[8] = v31;
            do
            {
              v32 = &v11[v29];
              *(v32 - 6) = fminf(*&__dst[v29], *&v11[v29 - 24]);
              *(v32 - 3) = fmaxf(*&v11[v29 - 12], *&__dst[v29]);
              v29 += 4;
            }

            while (v29 != 12);
          }

          ++v27;
        }

        while (v27 != v14);
      }
    }

    v33 = v6;
  }

  else
  {
    v10 = 0;
    v33 = 0;
  }

  v34 = v10;
  memset(v68, 0, sizeof(v68));
  v69 = 1065353216;
  v55 = v33;
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(v68, v33);
  if (v6)
  {
    v35 = 4;
    v36 = v55;
    do
    {
      v37 = *(*(*a2 + 258) + v35);
      *__dst = *(*a2 + 258) + v35;
      *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v68, v37, __dst) + 5) = v37;
      v35 += 80;
      --v36;
    }

    while (v36);
  }

  v67[1] = 0;
  v67[0] = 0;
  v66 = v67;
  v38 = *a2;
  v39 = *(*a2 + 1004);
  if (*(*a2 + 1004))
  {
    v40 = *(v38 + 252);
    do
    {
      *__dst = *v40 | ((*v40 + *(v40 + 2)) << 32);
      *&__dst[8] = v40;
      v76 = 0;
      geo::range_map<unsigned int,md::DaVinciGroundTileData::TextureMappingData,std::less<unsigned int>,std::allocator<std::pair<gm::Range<unsigned int> const,md::DaVinciGroundTileData::TextureMappingData>>>::insert(&v66, __dst);
      v40 += 4;
      --v39;
    }

    while (v39);
    v38 = *a2;
  }

  v41 = *(v38 + 1012);
  if (*(v38 + 1012))
  {
    v42 = (*(v38 + 254) + 8);
    do
    {
      v43 = *v42;
      *__dst = *(v42 - 2) | ((*(v42 - 2) + *(v42 - 2)) << 32);
      *&__dst[8] = v43;
      v76 = 1;
      geo::range_map<unsigned int,md::DaVinciGroundTileData::TextureMappingData,std::less<unsigned int>,std::allocator<std::pair<gm::Range<unsigned int> const,md::DaVinciGroundTileData::TextureMappingData>>>::insert(&v66, __dst);
      v42 = (v42 + 24);
      --v41;
    }

    while (v41);
    v38 = *a2;
  }

  v44 = *(v38 + 510);
  v45 = v34;
  if (v5)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,1>>>(v5);
  }

  memset(v65, 0, sizeof(v65));
  memset(v64, 0, sizeof(v64));
  v63 = 0;
  *v61 = 0u;
  *v62 = 0u;
  {
    md::DaVinciGroundTileData::_buildTileMeshes(std::shared_ptr<geo::codec::VectorTile> const&,ggl::ResourceAccessor *,std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&,std::optional<gm::Matrix<float,4,4>> const&)::$_1::operator() const(void)::cached_result = MapsFeature_IsEnabled_Maps68();
    v45 = v34;
  }

  v46 = md::DaVinciGroundTileData::_buildTileMeshes(std::shared_ptr<geo::codec::VectorTile> const&,ggl::ResourceAccessor *,std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&,std::optional<gm::Matrix<float,4,4>> const&)::$_1::operator() const(void)::cached_result;
  v47 = +[VKDebugSettings sharedSettings];
  v48 = [v47 daVinciOverrideNormalsSharpness];

  if ((v46 & v48) == 1)
  {
    v49 = +[VKDebugSettings sharedSettings];
    [v49 daVinciNormalsSharpnessBias];
    v51 = v50;
  }

  else
  {
    v51 = 1.0;
    if (v46)
    {
      v52 = *(a1 + 1392);
      if (v52)
      {
        v53 = geo::codec::VectorTile::key(*a2);
        v51 = md::DaVinciGroundSettings::valueForZoomLevel<float>(v52, 5, (*(v53 + 1) & 0x3F));
      }
    }
  }

  v54 = *(a1 + 168);
  *&__dst[4] = *(a1 + 172);
  *__dst = v54;
  *&__dst[16] = *(a1 + 184);
  LOBYTE(v76) = *(a1 + 192);
  md::debugString<geo::QuadTile>(&v72, __dst);
  v73 = v9;
  v74 = 1.0 - v51;
  memset(v71, 0, 24);
  md::DaVinciGroundTileData::_buildNormals(0, v5, v57, v44, 0, v45 >> 4, &v72, v68, v65, v64, v71, (a1 + 936), v61);
}

void sub_1B317F214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50)
{
  if (STACK[0x248])
  {
    operator delete(STACK[0x248]);
  }

  v52 = 0;
  v53 = v50 - 240;
  while (1)
  {
    v54 = *(v53 + v52 + 48);
    if (v54)
    {
      *(v53 + v52 + 56) = v54;
      operator delete(v54);
    }

    v52 -= 24;
    if (v52 == -72)
    {
      v55 = STACK[0x270];
      if (STACK[0x270])
      {
        STACK[0x278] = v55;
        operator delete(v55);
      }

      if (STACK[0x268])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x268]);
      }

      if (STACK[0x288])
      {
        operator delete(STACK[0x288]);
      }

      if (STACK[0x2A0])
      {
        operator delete(STACK[0x2A0]);
      }

      if (a50)
      {
        operator delete(a50);
      }

      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(STACK[0x2C0]);
      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&STACK[0x2D0]);
      if (a20)
      {
        operator delete(a20);
      }

      if (STACK[0x2F8])
      {
        operator delete(STACK[0x2F8]);
      }

      if (a17)
      {
        operator delete(a17);
      }

      _Unwind_Resume(a1);
    }
  }
}

uint64_t md::DaVinciGroundTileData::_buildDecals(void *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v106 = *MEMORY[0x1E69E9840];
  *v92 = 0u;
  v93 = 0u;
  __p = 0u;
  v96 = 0u;
  v94 = 1065353216;
  v97 = 1065353216;
  memset(v98, 0, sizeof(v98));
  v99 = 1065353216;
  if (GEOGetVectorKitPerformanceLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
  }

  v6 = GEOGetVectorKitPerformanceLog_log;
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ReadDecal", &unk_1B3514CAA, buf, 2u);
  }

  v7 = 0;
  v80 = a3;
  while (1)
  {
    v8 = *a2;
    v9 = *(*a2 + 2216);
    if (v7 >= geo::codec::VectorTile::daVinciDecalCount(v9, *(*a2 + 2224)))
    {
      break;
    }

    v10 = v9 + 72 * v7;
    if (*v10)
    {
      *v87 = 0;
      *&v87[8] = 0;
    }

    else
    {
      v11 = *a4;
      md::createFeatureAttributeSet(buf, v10 + 6);
      gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(v87, v11, buf);
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](buf);
      v8 = *a2;
    }

    v83 = *(v10 + 8);
    v12 = *(v10 + 3);
    v13 = *(v8 + 2064) + 80 * *(v10 + 33);
    v14 = *v10;
    v15 = *(v10 + 32);
    v17 = *(v10 + 8);
    v16 = *(v10 + 9);
    v18 = *(v10 + 10);
    if (*v10)
    {
      if (!*(&__p + 1))
      {
        goto LABEL_32;
      }

      v19 = vcnt_s8(*(&__p + 8));
      v19.i16[0] = vaddlv_u8(v19);
      if (v19.u32[0] > 1uLL)
      {
        v20 = *v10;
        if (v14 >= *(&__p + 1))
        {
          v20 = v14 % *(&__p + 1);
        }
      }

      else
      {
        v20 = (*(&__p + 1) - 1) & v14;
      }

      v28 = *(__p + 8 * v20);
      if (!v28 || (v29 = *v28) == 0)
      {
LABEL_32:
        operator new();
      }

      while (1)
      {
        v30 = v29[1];
        if (v30 == v14)
        {
          if (v29[2] == v14)
          {
            *buf = *(v8 + 2064) + 80 * *(v10 + 33);
            *v102 = v15;
            v34 = v83;
            v34.i64[1] = vextq_s8(v34, v34, 8uLL).u64[0];
            *&v102[4] = v34;
            *&v102[20] = v12;
            *&v102[28] = v17;
            v103 = v16;
            v104 = v18;
            v105 = 1065353216;
            std::vector<md::DaVinciDecalBuilder::DecalDescription>::push_back[abi:nn200100](v29 + 3, buf);
            goto LABEL_49;
          }
        }

        else
        {
          if (v19.u32[0] > 1uLL)
          {
            if (v30 >= *(&__p + 1))
            {
              v30 %= *(&__p + 1);
            }
          }

          else
          {
            v30 &= *(&__p + 1) - 1;
          }

          if (v30 != v20)
          {
            goto LABEL_32;
          }
        }

        v29 = *v29;
        if (!v29)
        {
          goto LABEL_32;
        }
      }
    }

    v21 = *v87;
    v22 = *&v87[8];
    if (*&v87[8])
    {
      atomic_fetch_add_explicit((*&v87[8] + 8), 1uLL, memory_order_relaxed);
    }

    v23 = 0x9DDFEA08EB382D69 * ((8 * (v21 & 0x1FFFFFFF) + 8) ^ HIDWORD(v21));
    v24 = 0x9DDFEA08EB382D69 * (HIDWORD(v21) ^ (v23 >> 47) ^ v23);
    v25 = 0x9DDFEA08EB382D69 * (v24 ^ (v24 >> 47));
    if (!v92[1])
    {
      goto LABEL_46;
    }

    v26 = vcnt_s8(v92[1]);
    v26.i16[0] = vaddlv_u8(v26);
    if (v26.u32[0] > 1uLL)
    {
      v27 = 0x9DDFEA08EB382D69 * (v24 ^ (v24 >> 47));
      if (v25 >= v92[1])
      {
        v27 = v25 % v92[1];
      }
    }

    else
    {
      v27 = v25 & (v92[1] - 1);
    }

    v31 = *(v92[0] + v27);
    if (!v31 || (v32 = *v31) == 0)
    {
LABEL_46:
      operator new();
    }

    while (1)
    {
      v33 = v32[1];
      if (v33 == v25)
      {
        break;
      }

      if (v26.u32[0] > 1uLL)
      {
        if (v33 >= v92[1])
        {
          v33 %= v92[1];
        }
      }

      else
      {
        v33 &= v92[1] - 1;
      }

      if (v33 != v27)
      {
        goto LABEL_46;
      }

LABEL_45:
      v32 = *v32;
      if (!v32)
      {
        goto LABEL_46;
      }
    }

    if (v32[2] != v21)
    {
      goto LABEL_45;
    }

    *buf = v13;
    *v102 = v15;
    v35 = v83;
    v35.i64[1] = vextq_s8(v35, v35, 8uLL).u64[0];
    *&v102[4] = v35;
    *&v102[20] = v12;
    *&v102[28] = v17;
    v103 = v16;
    v104 = v18;
    v105 = 1065353216;
    std::vector<md::DaVinciDecalBuilder::DecalDescription>::push_back[abi:nn200100](v32 + 4, buf);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v22);
    }

LABEL_49:
    if (*&v87[8])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&v87[8]);
    }

    ++v7;
  }

  if (GEOGetVectorKitPerformanceLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
  }

  v36 = GEOGetVectorKitPerformanceLog_log;
  if (os_signpost_enabled(v36))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v36, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ReadDecal", &unk_1B3514CAA, buf, 2u);
  }

  if (GEOGetVectorKitPerformanceLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
  }

  v37 = GEOGetVectorKitPerformanceLog_log;
  if (os_signpost_enabled(v37))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v37, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "BuildDecalBatches", &unk_1B3514CAA, buf, 2u);
  }

  v89 = 0;
  v90 = 0;
  v91 = 0;
  v38 = *(&v96 + 1) + *(&v93 + 1);
  if (*(&v96 + 1) + *(&v93 + 1))
  {
    if (v38 < 0x555555555555556)
    {
      *&v102[24] = &v89;
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::DaVinciDecalBatch>>(v38);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v96)
  {
    md::DaVinciDecalBuilder::buildBatch(buf, v92, *(v96 + 16), (v96 + 24), a2, v80);
  }

  v39 = v93;
  if (v93)
  {
    v40 = *(v93 + 24);
    if (v40)
    {
      atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
    }

    md::DaVinciDecalBuilder::buildBatch(buf, v92, 0, (v39 + 32), a2, v80);
  }

  if (GEOGetVectorKitPerformanceLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
  }

  v41 = GEOGetVectorKitPerformanceLog_log;
  if (os_signpost_enabled(v41))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v41, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "BuildDecalBatches", &unk_1B3514CAA, buf, 2u);
  }

  if (GEOGetVectorKitPerformanceLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
  }

  v42 = GEOGetVectorKitPerformanceLog_log;
  if (os_signpost_enabled(v42))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v42, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ProcessDecalBatches", &unk_1B3514CAA, buf, 2u);
  }

  v43 = a1 + 123;
  v44 = a1[123];
  v45 = v89;
  v46 = 0xAAAAAAAAAAAAAAABLL * (v90 - v89) + ((a1[124] - v44) >> 4);
  if (v46 > (a1[125] - v44) >> 4)
  {
    if (!(v46 >> 60))
    {
      *&v102[24] = a1 + 123;
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v46);
    }

LABEL_117:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v89 != v90)
  {
    v47 = a1 + 129;
    v81 = v90;
    do
    {
      v48 = a1[124];
      v49 = a1[125];
      if (v48 >= v49)
      {
        v52 = (v48 - *v43) >> 4;
        v53 = v52 + 1;
        if ((v52 + 1) >> 60)
        {
          goto LABEL_117;
        }

        v54 = v49 - *v43;
        if (v54 >> 3 > v53)
        {
          v53 = v54 >> 3;
        }

        if (v54 >= 0x7FFFFFFFFFFFFFF0)
        {
          v55 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v55 = v53;
        }

        *&v102[24] = v43;
        if (v55)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v55);
        }

        v56 = 16 * v52;
        v57 = *v45;
        *(16 * v52) = *v45;
        if (*(&v57 + 1))
        {
          atomic_fetch_add_explicit((*(&v57 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v51 = (v56 + 16);
        v58 = a1[123];
        v59 = a1[124] - v58;
        v60 = v56 - v59;
        memcpy((v56 - v59), v58, v59);
        v61 = a1[123];
        a1[123] = v60;
        a1[124] = v51;
        v62 = a1[125];
        a1[125] = 0;
        *&v102[8] = v61;
        *&v102[16] = v62;
        *buf = v61;
        *v102 = v61;
        std::__split_buffer<std::shared_ptr<md::MuninRoadLabel>>::~__split_buffer(buf);
      }

      else
      {
        *v48 = *v45;
        v50 = *(v45 + 1);
        v48[1] = v50;
        if (v50)
        {
          atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
        }

        v51 = v48 + 2;
      }

      a1[124] = v51;
      v63 = *(v45 + 3);
      if (*(v45 + 4) != v63)
      {
        v64 = *(v45 + 3);
        v88 = *(v63 + 48);
        v87[0] = 3;
        v86[0] = 0;
        LOBYTE(v100) = 1;
        v65 = a1[130];
        v66 = a1[131];
        if (v65 >= v66)
        {
          v68 = 0xCCCCCCCCCCCCCCCDLL * ((v65 - *v47) >> 4);
          v69 = v68 + 1;
          if (v68 + 1 > 0x333333333333333)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v70 = 0xCCCCCCCCCCCCCCCDLL * ((v66 - *v47) >> 4);
          if (2 * v70 > v69)
          {
            v69 = 2 * v70;
          }

          if (v70 >= 0x199999999999999)
          {
            v71 = 0x333333333333333;
          }

          else
          {
            v71 = v69;
          }

          *&v102[24] = a1 + 129;
          if (v71)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<md::Mesh>>(v71);
          }

          *buf = 0;
          *v102 = 80 * v68;
          *&v102[8] = 80 * v68;
          std::construct_at[abi:nn200100]<md::Mesh,std::shared_ptr<ggl::DaVinci::TexturedCompressedMesh> &,gm::Range<unsigned long>,ggl::PrimitiveType,gm::Box<float,3> &,md::MeshVertexFormat,BOOL,md::Mesh*>(80 * v68, *v45, *(v45 + 1), &v88, v87, (v64 + 64), v86, &v100);
          *&v102[8] += 80;
          v72 = a1[130];
          v73 = a1[129];
          v74 = (*v102 + v73 - v72);
          std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::Mesh>,md::Mesh*>(v73, v72, v74);
          v75 = a1[129];
          a1[129] = v74;
          v76 = a1[131];
          v85 = *&v102[8];
          *(a1 + 65) = *&v102[8];
          *&v102[8] = v75;
          *&v102[16] = v76;
          *buf = v75;
          *v102 = v75;
          std::__split_buffer<md::Mesh>::~__split_buffer(buf);
          v67 = v85;
        }

        else
        {
          v67 = std::construct_at[abi:nn200100]<md::Mesh,std::shared_ptr<ggl::DaVinci::TexturedCompressedMesh> &,gm::Range<unsigned long>,ggl::PrimitiveType,gm::Box<float,3> &,md::MeshVertexFormat,BOOL,md::Mesh*>(v65, *v45, *(v45 + 1), &v88, v87, (v64 + 64), v86, &v100) + 80;
          a1[130] = v67;
        }

        a1[130] = v67;
        v77 = a1[166];
        memset(&v87[4], 0, 44);
        *v87 = 1065353216;
        *&v87[16] = 1065353216;
        *&v87[32] = 1065353216;
        v86[0] = 0;
        v86[8] = 0;
        md::components::MeshInstance::MeshInstance(buf, v67 - 80, v87, 0, v86, 0);
        gdc::Registry::create(v77);
      }

      v45 += 3;
      v43 = a1 + 123;
    }

    while (v45 != v81);
  }

  if (GEOGetVectorKitPerformanceLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
  }

  v78 = GEOGetVectorKitPerformanceLog_log;
  if (os_signpost_enabled(v78))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v78, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ProcessDecalBatches", &unk_1B3514CAA, buf, 2u);
  }

  *buf = &v89;
  std::vector<md::DaVinciDecalBatch>::__destroy_vector::operator()[abi:nn200100](buf);
  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>>>::~__hash_table(v98);
  return std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<md::DaVinciDecalBuilder::DecalDescription>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<md::DaVinciDecalBuilder::DecalDescription>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<md::DaVinciDecalBuilder::DecalDescription>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<md::DaVinciDecalBuilder::DecalDescription>>>>::~__hash_table(v92);
}

void sub_1B31809E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  a19 = &a28;
  std::vector<md::DaVinciDecalBatch>::__destroy_vector::operator()[abi:nn200100](&a19);
  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>>>::~__hash_table(&a41);
  std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<md::DaVinciDecalBuilder::DecalDescription>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<md::DaVinciDecalBuilder::DecalDescription>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<md::DaVinciDecalBuilder::DecalDescription>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<md::DaVinciDecalBuilder::DecalDescription>>>>::~__hash_table(&a31);
  _Unwind_Resume(a1);
}

uint64_t md::DaVinciGroundTileData::_buildBuildings(uint64_t a1, geo::codec::VectorTile **a2, uint64_t a3, float *a4, uint64_t a5)
{
  v150[6] = *MEMORY[0x1E69E9840];
  *__p = 0u;
  v135 = 0u;
  v136 = 1065353216;
  v7 = +[VKDebugSettings sharedSettings];
  v119 = [v7 daVinciColorBuildings];

  v8 = *a2;
  v9 = geo::codec::VectorTile::key(*a2);
  v10 = -1 << (*(a1 + 169) - (*(v9 + 1) & 0x3F));
  v11 = geo::codec::VectorTile::daVinciSubTileBuildingIndices(v8, *(a1 + 176) & ~v10, *(a1 + 172) & ~v10, (*(a1 + 169) - (*(v9 + 1) & 0x3F)));
  v16 = *a2;
  v129 = *(*a2 + 284);
  if (!v129)
  {
    v129 = *(v16 + 247) + 12 * *(v16 + 566);
  }

  v18 = *v11;
  v17 = v11[1];
  v122 = *(v16 + 292);
  v117 = *(v16 + 291);
  v128 = *(v16 + 289);
  v121 = geo::codec::VectorTile::buildingTileIntersectionInfo(v16, v12, v13, v14, v15);
  v19 = v17 - v18;
  v20 = *a2;
  v116 = geo::codec::VectorTile::buildingToModifierMap(*a2);
  v21 = geo::codec::VectorTile::daVinciBuildingColorsArePresent(*(v20 + 296), *(v20 + 297));
  LODWORD(v142) = -1;
  if ((v119 & 1) == 0)
  {
    LODWORD(v150[0]) = 1;
    std::allocate_shared[abi:nn200100]<md::StyleTexture<md::DaVinciGroundTileData::BuildingColorStyle>,std::allocator<md::StyleTexture<md::DaVinciGroundTileData::BuildingColorStyle>>,int,0>(v138, v150);
  }

  if (v21)
  {
    operator new();
  }

  v22 = v116[3];
  if (v22)
  {
    LODWORD(v150[0]) = v22 + 1;
    std::allocate_shared[abi:nn200100]<md::StyleTexture<md::DaVinciGroundTileData::BuildingColorStyle>,std::allocator<md::StyleTexture<md::DaVinciGroundTileData::BuildingColorStyle>>,int,0>(v138, v150);
  }

  v23 = 0uLL;
  LOWORD(v141) = 0;
  if (((v17 - v18) >> 1))
  {
    v24 = 0;
    v118 = v11;
    while (1)
    {
      v25 = (*v11)->u16[v24];
      v26 = (v122 + 40 * v25);
      v27 = v26[2];
      v28 = *v121;
      v131 = v26;
      md::createFeatureAttributeSet(v148, v26);
      if (!v27)
      {
        goto LABEL_141;
      }

      v125 = v28;
      v126 = v25;
      v29 = v28[v25];
      v30 = ((v27 << 6) + (v27 >> 2) + v29 - 0x61C8864680B583EBLL) ^ v27;
      if (!__p[1])
      {
        goto LABEL_33;
      }

      v31 = vcnt_s8(__p[1]);
      v31.i16[0] = vaddlv_u8(v31);
      if (v31.u32[0] > 1uLL)
      {
        v32 = ((v27 << 6) + (v27 >> 2) + v29 - 0x61C8864680B583EBLL) ^ v27;
        if (v30 >= __p[1])
        {
          v32 = v30 % __p[1];
        }
      }

      else
      {
        v32 = v30 & (__p[1] - 1);
      }

      v33 = *(__p[0] + v32);
      if (!v33 || (v34 = *v33) == 0)
      {
LABEL_33:
        operator new();
      }

      v35 = v34;
      while (1)
      {
        v36 = v35[1];
        if (v36 == v30)
        {
          break;
        }

        if (v31.u32[0] > 1uLL)
        {
          if (v36 >= __p[1])
          {
            v36 %= __p[1];
          }
        }

        else
        {
          v36 &= __p[1] - 1;
        }

        if (v36 != v32)
        {
          goto LABEL_33;
        }

LABEL_32:
        v35 = *v35;
        if (!v35)
        {
          goto LABEL_33;
        }
      }

      if (v35[2] != v27 || *(v35 + 24) != v29)
      {
        goto LABEL_32;
      }

      v112 = v35;
      v127 = v24;
      v38 = v131;
      v123 = v35;
      if (*(v131 + 17))
      {
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v130 = v117 + 20 * *(v131 + 16);
        do
        {
          v42 = v130 + 20 * v39;
          v43 = v128 + 8 * *(v42 + 12);
          *v139 = 0u;
          v140 = 0u;
          *v138 = 0u;
          memset(v137, 0, 24);
          md::DaVinciGroundTileData::_populateBuildingLoops(a4, v129, v42, *v43, *(v43 + 4), v43 + 8, v138, v137);
          v132 = v41;
          v147[0] = &unk_1F2A3AD10;
          v147[1] = v138;
          v147[3] = v147;
          v143 = 0uLL;
          v144 = 0;
          v44 = *(v42 + 16);
          if (*(v42 + 16))
          {
            v150[4] = &v143;
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long,std::function<gm::Matrix<float,2,1> ()(unsigned long)>>>>(v44);
          }

          v46 = v138[0];
          v45 = v138[1];
          std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::__value_func[abi:nn200100](v146, v147);
          std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::__value_func[abi:nn200100](v150, v146);
          v47 = 0xAAAAAAAAAAAAAAABLL * ((v45 - v46) >> 2);
          geo::effectiveVertexCount<float>(v47, v150);
          v49 = v48;
          std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::~__value_func[abi:nn200100](v150);
          v50 = *(&v143 + 1);
          v51 = v143;
          if (v143 == *(&v143 + 1))
          {
            v55 = 0;
          }

          else
          {
            v52 = 0;
            do
            {
              v53 = *v51;
              if (*v51)
              {
                std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::__value_func[abi:nn200100](v149, (v51 + 1));
                geo::effectiveVertexCount<float>(v53, v149);
                v49 += v54;
                std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::~__value_func[abi:nn200100](v149);
                ++v52;
                v50 = *(&v143 + 1);
              }

              v51 += 5;
            }

            while (v51 != v50);
            v55 = 2 * v52;
          }

          std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::~__value_func[abi:nn200100](v146);
          v56 = v139[1];
          if (v139[1] == v140)
          {
            v57 = 0;
          }

          else
          {
            v57 = 0;
            do
            {
              v58 = *v56++;
              if ((v58 & 3) == 0)
              {
                ++v57;
              }
            }

            while (v56 != v140);
          }

          v59 = 6 * v47;
          v60 = 2 * (v57 - 0x5555555555555555 * ((v138[1] - v138[0]) >> 2));
          if (*(v42 + 16))
          {
            v61 = 0;
            do
            {
              v62 = v137[0] + 48 * v61;
              v63 = v62[3];
              v64 = v62[4];
              if (v63 == v64)
              {
                v65 = 0;
              }

              else
              {
                v65 = 0;
                do
                {
                  v66 = *v63++;
                  if ((v66 & 3) == 0)
                  {
                    ++v65;
                  }
                }

                while (v63 != v64);
              }

              v67 = v62[1] - *v62;
              v47 += 0xAAAAAAAAAAAAAAABLL * (v67 >> 2);
              v59 += v67 >> 1;
              v60 += 2 * (v65 - 0x5555555555555555 * (v67 >> 2));
              ++v61;
            }

            while (v61 != *(v42 + 16));
          }

          v68 = 3 * (v49 + v55) - 6;
          if (*v42)
          {
            v69 = 3 * (v49 + v55) - 6;
          }

          else
          {
            v69 = 0;
          }

          v70 = *(v42 + 4);
          v71 = *(v42 + 8);
          if (*v42)
          {
            v72 = v47;
          }

          else
          {
            v72 = 0;
          }

          if (v70 <= v71)
          {
            v73 = 0;
          }

          else
          {
            v73 = v59;
          }

          if (v70 <= v71)
          {
            v74 = 0;
          }

          else
          {
            v74 = v60;
          }

          v150[0] = &v143;
          std::vector<std::pair<unsigned long,std::function<gm::Matrix<float,2,1> ()(unsigned long)>>>::__destroy_vector::operator()[abi:nn200100](v150);
          std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::~__value_func[abi:nn200100](v147);
          v150[0] = v137;
          std::vector<md::PolygonLoop>::__destroy_vector::operator()[abi:nn200100](v150);
          if (v139[1])
          {
            *&v140 = v139[1];
            operator delete(v139[1]);
          }

          if (v138[0])
          {
            v138[1] = v138[0];
            operator delete(v138[0]);
          }

          v40 += v68 + v69 + v73;
          v38 = v131;
          v41 = v47 + v132 + v72 + v74;
          ++v39;
        }

        while (v39 < *(v131 + 17));
        v112 = v123;
      }

      else
      {
        v41 = 0;
        v40 = 0;
      }

      v76 = v112[4];
      v75 = v112[5];
      v133 = v41;
      if (v75 == v76 || v41 + *(v75 - 28) >= 0x10000)
      {
        v77 = v112[6];
        if (v75 < v77)
        {
          *(v75 + 64) = 0;
          *(v75 + 72) = 0;
          *v75 = 0u;
          *(v75 + 16) = 0u;
          *(v75 + 32) = 0u;
          v78 = v75 + 80;
          *(v75 + 42) = 0u;
          goto LABEL_101;
        }

        v79 = 0xCCCCCCCCCCCCCCCDLL * ((v75 - v76) >> 4);
        v80 = v79 + 1;
        if (v79 + 1 > 0x333333333333333)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v81 = 0xCCCCCCCCCCCCCCCDLL * ((v77 - v76) >> 4);
        if (2 * v81 > v80)
        {
          v80 = 2 * v81;
        }

        if (v81 >= 0x199999999999999)
        {
          v82 = 0x333333333333333;
        }

        else
        {
          v82 = v80;
        }

        if (v82)
        {
          if (v82 <= 0x333333333333333)
          {
            operator new();
          }

LABEL_157:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v84 = 80 * v79;
        *(v84 + 64) = 0;
        *(v84 + 72) = 0;
        *v84 = 0u;
        *(v84 + 16) = 0u;
        *(v84 + 32) = 0u;
        *(v84 + 42) = 0u;
        v85 = v112[4];
        v86 = v112[5];
        v87 = v84 + v85 - v86;
        if (v85 != v86)
        {
          v88 = v112[4];
          v89 = v84 + v85 - v86;
          do
          {
            *v89 = 0;
            *(v89 + 8) = 0;
            *(v89 + 16) = 0;
            *v89 = *v88;
            *(v89 + 16) = *(v88 + 16);
            *v88 = 0;
            *(v88 + 8) = 0;
            *(v88 + 16) = 0;
            *(v89 + 24) = 0;
            *(v89 + 32) = 0;
            *(v89 + 40) = 0;
            *(v89 + 24) = *(v88 + 24);
            *(v89 + 40) = *(v88 + 40);
            *(v88 + 24) = 0;
            *(v88 + 32) = 0;
            *(v88 + 40) = 0;
            v90 = *(v88 + 48);
            *(v89 + 57) = *(v88 + 57);
            *(v89 + 48) = v90;
            v88 += 80;
            v89 += 80;
          }

          while (v88 != v86);
          do
          {
            std::__destroy_at[abi:nn200100]<md::MuninRoadEdgePolyline,0>(v85);
            v85 += 80;
          }

          while (v85 != v86);
        }

        v78 = v84 + 80;
        v112 = v123;
        v91 = v123[4];
        v123[4] = v87;
        *(v123 + 5) = v78;
        if (v91)
        {
          operator delete(v91);
        }

LABEL_101:
        v112[5] = v78;
        v83 = v78 - 80;
      }

      else
      {
        v83 = v75 - 80;
      }

      v93 = *(v83 + 8);
      v92 = *(v83 + 16);
      if (v93 >= v92)
      {
        v95 = (v93 - *v83) >> 3;
        if ((v95 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v96 = v92 - *v83;
        v97 = v96 >> 2;
        if (v96 >> 2 <= (v95 + 1))
        {
          v97 = v95 + 1;
        }

        if (v96 >= 0x7FFFFFFFFFFFFFF8)
        {
          v98 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v98 = v97;
        }

        if (v98)
        {
          if (!(v98 >> 61))
          {
            operator new();
          }

          goto LABEL_157;
        }

        v99 = (8 * v95);
        *v99 = v38;
        v94 = 8 * v95 + 8;
        v100 = *(v83 + 8) - *v83;
        v101 = v99 - v100;
        memcpy(v99 - v100, *v83, v100);
        v102 = *v83;
        *v83 = v101;
        *(v83 + 8) = v94;
        *(v83 + 16) = 0;
        if (v102)
        {
          operator delete(v102);
        }
      }

      else
      {
        *v93 = v38;
        v94 = (v93 + 1);
      }

      *(v83 + 8) = v94;
      if (v119)
      {
        v103 = v116[1];
        if (v103)
        {
          v104 = vcnt_s8(v103);
          v104.i16[0] = vaddlv_u8(v104);
          if (v104.u32[0] > 1uLL)
          {
            v105 = v126;
            v106 = v126;
            if (*&v103 <= v126)
            {
              v106 = v126 % v116[1];
            }
          }

          else
          {
            v105 = v126;
            v106 = (v103.i32[0] - 1) & v126;
          }

          v107 = *(*v116 + 8 * v106);
          if (v107)
          {
            for (i = *v107; i; i = *i)
            {
              v109 = i[1];
              if (v109 == v105)
              {
                if (*(i + 8) == v105)
                {
                  v113 = *(i + 9);
                  goto LABEL_133;
                }
              }

              else
              {
                if (v104.u32[0] > 1uLL)
                {
                  if (v109 >= *&v103)
                  {
                    v109 %= *&v103;
                  }
                }

                else
                {
                  v109 &= *&v103 - 1;
                }

                if (v109 != v106)
                {
                  break;
                }
              }
            }
          }
        }

        v113 = -1;
LABEL_133:
        LOWORD(v141) = v113;
      }

      std::vector<unsigned short>::push_back[abi:nn200100](v83 + 24, &v141);
      v110 = *(v83 + 52) + v133;
      *(v83 + 48) += v40;
      *(v83 + 52) = v110;
      v11 = v118;
      v24 = v127;
      if (v125[v126])
      {
        if (*(v83 + 72) == 1)
        {
          v111 = *(v83 + 64);
        }

        else
        {
          v111 = -1;
          *(v83 + 64) = -1;
          *(v83 + 72) = 1;
        }

        if (v131[3] < v111)
        {
          v111 = v131[3];
        }

        *(v83 + 64) = v111;
        *(v83 + 72) = 1;
        *(v83 + 56) = *(geo::codec::VectorTile::key(*a2) + 1) & 0x3F | 0x100;
      }

LABEL_141:
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v148);
      if (++v24 == (v19 >> 1))
      {
        v23 = 0uLL;
        break;
      }
    }
  }

  if (v23)
  {
    if (*(v23 + 32) == 1)
    {
      LODWORD(v150[0]) = 1;
      LODWORD(v149[0]) = 1;
      LODWORD(v148[0]) = 1065353216;
      LODWORD(v147[0]) = 0;
      std::allocate_shared[abi:nn200100]<ggl::SamplerState,std::allocator<ggl::SamplerState>,ggl::Wrap,ggl::Wrap,float,ggl::Filter,ggl::Filter,ggl::Filter,0>(v138, v150, v149, v148, (v23 + 92), (v23 + 92), v147);
    }

    if (*(v23 + 24))
    {
      *(v23 + 24) = 0;
      operator new();
    }
  }

  v114 = v135;
  if (v135)
  {
    do
    {
      v120 = v114;
      if (v114[4] != v114[5])
      {
        if (*(&v23 + 1))
        {
          atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v145 = 1;
        operator new();
      }

      v114 = *v114;
    }

    while (*v120);
  }

  if (*(&v23 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v23 + 1));
  }

  return std::__hash_table<std::__hash_value_type<md::DaVinciGroundTileData::BuildingBatchType,std::vector<md::DaVinciGroundTileData::BuildingBatch>>,std::__unordered_map_hasher<md::DaVinciGroundTileData::BuildingBatchType,std::__hash_value_type<md::DaVinciGroundTileData::BuildingBatchType,std::vector<md::DaVinciGroundTileData::BuildingBatch>>,md::DaVinciGroundTileData::BuildingBatchTypeHash,std::equal_to<md::DaVinciGroundTileData::BuildingBatchType>,true>,std::__unordered_map_equal<md::DaVinciGroundTileData::BuildingBatchType,std::__hash_value_type<md::DaVinciGroundTileData::BuildingBatchType,std::vector<md::DaVinciGroundTileData::BuildingBatch>>,std::equal_to<md::DaVinciGroundTileData::BuildingBatchType>,md::DaVinciGroundTileData::BuildingBatchTypeHash,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundTileData::BuildingBatchType,std::vector<md::DaVinciGroundTileData::BuildingBatch>>>>::~__hash_table(__p);
}

void md::DaVinciGroundTileData::_constructBuildingBVH(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t *a9)
{
  v10 = a2;
  {
    md::DaVinciGroundTileData::_constructBuildingBVH(GeoCodecsDaVinciBuilding const*,unsigned long,GeoCodecsDaVinciBuildingSection const*,GeoCodecsVectorTilePoint3D const*,GeoCodecsDaVinciLineLoop const*,BOOL,std::optional<md::ScaleAndOffset> const&,gdc::Entity *)::$_0::operator() const(void)::cached_result = MapsFeature_IsEnabled_Maps68();
    v10 = a2;
  }

  if (md::DaVinciGroundTileData::_constructBuildingBVH(GeoCodecsDaVinciBuilding const*,unsigned long,GeoCodecsDaVinciBuildingSection const*,GeoCodecsVectorTilePoint3D const*,GeoCodecsDaVinciLineLoop const*,BOOL,std::optional<md::ScaleAndOffset> const&,gdc::Entity *)::$_0::operator() const(void)::cached_result == 1)
  {
    {
      md::DaVinciGroundTileData::_constructBuildingBVH(GeoCodecsDaVinciBuilding const*,unsigned long,GeoCodecsDaVinciBuildingSection const*,GeoCodecsVectorTilePoint3D const*,GeoCodecsDaVinciLineLoop const*,BOOL,std::optional<md::ScaleAndOffset> const&,gdc::Entity *)::$_1::operator() const(void)::cached_result = GEOConfigGetBOOL();
      v10 = a2;
    }

    if (md::DaVinciGroundTileData::_constructBuildingBVH(GeoCodecsDaVinciBuilding const*,unsigned long,GeoCodecsDaVinciBuildingSection const*,GeoCodecsVectorTilePoint3D const*,GeoCodecsDaVinciLineLoop const*,BOOL,std::optional<md::ScaleAndOffset> const&,gdc::Entity *)::$_1::operator() const(void)::cached_result == 1)
    {
      v200 = 0;
      v199 = 0;
      v201 = 0;
      v197 = 0uLL;
      v198 = 0;
      v196 = xmmword_1B33B0730;
      __p = 0;
      v194 = 0;
      v195 = 0;
      v190 = 0;
      v191 = 0;
      v192 = 0;
      v187 = 0;
      v188 = 0;
      v189 = 0;
      std::vector<gm::Matrix<float,3,1>>::reserve(&__p, 0x14uLL);
      std::vector<gm::Matrix<float,2,1>>::reserve(&v190, 0xAAAAAAAAAAAAAAABLL * ((v195 - __p) >> 2));
      v11 = a1;
      if (*(v10 + 34))
      {
        v172 = 0;
        v173 = 0;
        v166 = a4 + 20 * *(v10 + 32);
        __asm { FMOV            V0.4S, #1.0 }

        v160 = _Q0;
        __asm { FMOV            V0.2S, #-1.0 }

        v16 = -*&_Q0;
        while (1)
        {
          v17 = 0;
          *v185 = 0u;
          v186 = 0u;
          *v184 = 0u;
          do
          {
            *&v182[v17] = 0xFF7FFFFF7F7FFFFFLL;
            v17 += 2;
          }

          while (v17 != 10);
          v18 = v166 + 20 * v172;
          v181 = 0.0;
          v194 = __p;
          v191 = v190;
          v188 = v187;
          if (*(v18 + 4) > *(v18 + 8))
          {
            break;
          }

LABEL_200:
          if (v184[0])
          {
            operator delete(v184[0]);
          }

          if (++v172 >= *(a2 + 34))
          {
            v158 = v197;
            v159 = v197;
            goto LABEL_223;
          }
        }

        BuildingHeightAndExtrusionType = md::DaVinciGroundTileData::_getBuildingHeightAndExtrusionType(v11, &v181, v166 + 20 * v172, a8);
        v20 = *(v18 + 12);
        *v204 = xmmword_1B33B21C0;
        LODWORD(v205) = 1056964608;
        md::DaVinciGroundTileData::_roundLoopCorners(&v178, v204, a5, *(a6 + 8 * v20), *(a6 + 8 * v20 + 4));
        v22 = v178;
        v21 = v179;
        md::DaVinciGroundTileData::_transformBuildingLoop(v178, v179, md::DaVinciGroundTileData::_constructBuildingBVH(GeoCodecsDaVinciBuilding const*,unsigned long,GeoCodecsDaVinciBuildingSection const*,GeoCodecsVectorTilePoint3D const*,GeoCodecsDaVinciLineLoop const*,BOOL,std::optional<md::ScaleAndOffset> const&,gdc::Entity *)::innerLoops, unk_1EB845BE0, a8);
        v177 = 0;
        BuildingTerrainElevation = md::DaVinciGroundTileData::_getBuildingTerrainElevation(v11, &v177, v22, v21, a7, a8, a3, v172, *(v18 + 8));
        v24 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v22) >> 2);
        if (v21 != v22)
        {
          v25 = BuildingTerrainElevation;
          v26 = 0;
          v27 = 0;
          v28 = v177;
          v29 = v181;
          do
          {
            v30 = &v22[12 * v26];
            v204[0] = *v30;
            LODWORD(v204[1]) = *(v30 + 2);
            if (v25)
            {
              LODWORD(v204[1]) = v28;
            }

            LODWORD(v206[1]) = v204[1];
            v206[0] = v204[0];
            v31 = *&v204[1];
            if (!BuildingHeightAndExtrusionType)
            {
              v31 = 0.0;
            }

            *&v206[1] = v31 + v29;
            if (v24 < 9)
            {
              std::vector<gm::Matrix<float,3,1>>::push_back[abi:nn200100](&__p, v204);
              std::vector<gm::Matrix<float,3,1>>::push_back[abi:nn200100](&__p, v206);
            }

            else
            {
              geo::DiscreteOrientedPolytope<geo::TenDOPTraits<float>>::enclose(v182, v204);
              geo::DiscreteOrientedPolytope<geo::TenDOPTraits<float>>::enclose(v182, v206);
            }

            v26 = ++v27;
          }

          while (v24 > v27);
        }

        if (v24 >= 9)
        {
          _ZF = v182[0] == 3.4028e38 && v182[1] == -3.4028e38;
          v11 = a1;
          if (!_ZF)
          {
            goto LABEL_32;
          }

          v33 = 0;
          v34 = &v183;
          do
          {
            if (v33 == 4)
            {
              goto LABEL_31;
            }

            v35 = v33;
            if (*(v34 - 1) != 3.4028e38)
            {
              break;
            }

            v36 = *v34;
            v34 += 2;
            ++v33;
          }

          while (v36 == -3.4028e38);
          if (v35 <= 3)
          {
LABEL_32:
            memset(v175, 0, sizeof(v175));
            v176 = v160;
            geo::Transform<float>::toMatrix(v206, v175);
            v38 = 0;
            while (1)
            {
              v39 = 0;
              v208 = xmmword_1B33B0870;
              v209 = xmmword_1B33B0870;
              v210 = xmmword_1B33B0B20;
              v211 = v16;
              v212 = 0;
              v40 = &v208 + 12 * v38;
              v41 = *(v40 + 2);
              v42 = &v204[4 * v38];
              v43 = -v182[2 * v38];
              *v42 = *v40;
              *(v42 + 2) = v41;
              *(v42 + 3) = v43;
              v208 = xmmword_1B33B0870;
              v209 = xmmword_1B33B0870;
              v210 = xmmword_1B33B0B20;
              v211 = v16;
              v212 = 0;
              v44 = *(v40 + 2);
              v202 = *v40;
              v203 = v44;
              do
              {
                *(&v208 + v39) = -*(&v202 + v39);
                v39 += 4;
              }

              while (v39 != 12);
              *&v45 = v208;
              DWORD2(v45) = DWORD2(v208);
              *(&v45 + 3) = v182[2 * v38 + 1];
              *(v204 + ((32 * v38++) | 0x10)) = v45;
              if (v38 == 5)
              {
                operator new();
              }
            }
          }

LABEL_31:
          v37 = v173;
          goto LABEL_193;
        }

        v47 = __p;
        v46 = v194;
        std::vector<gm::Matrix<float,2,1>>::reserve(&v190, 0xAAAAAAAAAAAAAAABLL * ((v194 - __p) >> 2));
        v48 = v191;
        if (v47 == v46)
        {
          v50 = -3.4028e38;
          v49 = 3.4028e38;
        }

        else
        {
          v49 = 3.4028e38;
          v50 = -3.4028e38;
          v51 = v191;
          do
          {
            v52 = v47[2];
            if (v51 >= v192)
            {
              v53 = v190;
              v54 = (v51 - v190) >> 3;
              v55 = v54 + 1;
              if ((v54 + 1) >> 61)
              {
                goto LABEL_236;
              }

              v56 = v192 - v190;
              if ((v192 - v190) >> 2 > v55)
              {
                v55 = v56 >> 2;
              }

              _CF = v56 >= 0x7FFFFFFFFFFFFFF8;
              v57 = 0x1FFFFFFFFFFFFFFFLL;
              if (!_CF)
              {
                v57 = v55;
              }

              if (v57)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v57);
              }

              v58 = (8 * v54);
              v59 = &v58[-((v51 - v190) >> 3)];
              *v58 = *v47;
              v48 = (v58 + 1);
              if (v53 != v51)
              {
                v60 = v59;
                do
                {
                  v61 = *v53;
                  v53 += 8;
                  *v60++ = v61;
                }

                while (v53 != v51);
                v53 = v190;
              }

              v190 = v59;
              v191 = v48;
              v192 = 0;
              if (v53)
              {
                operator delete(v53);
              }
            }

            else
            {
              *v51 = *v47;
              v48 = (v51 + 8);
            }

            v50 = fmaxf(v52, v50);
            v49 = fminf(v49, v52);
            v191 = v48;
            v47 += 3;
            v51 = v48;
          }

          while (v47 != v46);
        }

        v206[1] = 0;
        v206[0] = 0;
        *&v207 = 0;
        v62 = v190;
        if (v48 == v190)
        {
          std::vector<gm::Matrix<float,2,1>>::resize(v206, 0);
        }

        else
        {
          v63 = v190;
          do
          {
            if (*v63 < *v62 || *v63 == *v62 && v63[1] < v62[1])
            {
              v62 = v63;
            }

            v63 += 2;
          }

          while (v63 != v48);
          v204[1] = 0;
          v204[0] = 0;
          *&v205 = 0;
          std::vector<gm::Matrix<float,2,1>>::reserve(v204, ((v48 - v190) >> 3) - 1);
          v64 = v190;
          v65 = v191;
          while (v64 != v65)
          {
            if (*v64 != *v62)
            {
              v66 = v204[1];
              if (v204[1] >= v205)
              {
                v68 = (v204[1] - v204[0]) >> 3;
                if ((v68 + 1) >> 61)
                {
                  goto LABEL_236;
                }

                v69 = (v205 - v204[0]) >> 2;
                if (v69 <= v68 + 1)
                {
                  v69 = v68 + 1;
                }

                if (v205 - v204[0] >= 0x7FFFFFFFFFFFFFF8)
                {
                  v70 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v70 = v69;
                }

                if (v70)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v70);
                }

                v71 = (8 * v68);
                *v71 = *v64;
                v67 = (8 * v68 + 8);
                v72 = v204[1];
                v73 = v204[0];
                v74 = (v71 + v204[0] - v204[1]);
                if (v204[1] != v204[0])
                {
                  v75 = v74;
                  do
                  {
                    v76 = *v73++;
                    *v75++ = v76;
                  }

                  while (v73 != v72);
                  v73 = v204[0];
                }

                v204[0] = v74;
                v204[1] = v67;
                *&v205 = 0;
                if (v73)
                {
                  operator delete(v73);
                }
              }

              else
              {
                *v204[1] = *v64;
                v67 = v66 + 8;
              }

              v204[1] = v67;
            }

            v64 += 2;
          }

          if (v204[1] == v204[0])
          {
            std::vector<gm::Matrix<float,2,1>>::resize(v206, 1uLL);
            v79 = v206[0];
            *v206[0] = *v62;
            v79[1] = v62[1];
          }

          else
          {
            *&v208 = *v62;
            std::__introsort<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,false>(v204[0], v204[1], &v208, 126 - 2 * __clz((v204[1] - v204[0]) >> 3), 1);
            std::vector<gm::Matrix<float,2,1>>::reserve(v206, (v191 - v190) >> 3);
            v77 = v206[1];
            if (v206[1] >= v207)
            {
              v80 = (v206[1] - v206[0]) >> 3;
              if ((v80 + 1) >> 61)
              {
                goto LABEL_236;
              }

              v81 = (v207 - v206[0]) >> 2;
              if (v81 <= v80 + 1)
              {
                v81 = v80 + 1;
              }

              if (v207 - v206[0] >= 0x7FFFFFFFFFFFFFF8)
              {
                v82 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v82 = v81;
              }

              if (v82)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v82);
              }

              *(8 * v80) = *v62;
              v78 = (8 * v80 + 8);
              v83 = v206[1];
              v84 = v206[0];
              v85 = (8 * v80 + v206[0] - v206[1]);
              if (v206[1] != v206[0])
              {
                v86 = (8 * v80 + v206[0] - v206[1]);
                do
                {
                  v87 = *v84++;
                  *v86++ = v87;
                }

                while (v84 != v83);
                v84 = v206[0];
              }

              v206[0] = v85;
              v206[1] = (8 * v80 + 8);
              *&v207 = 0;
              if (v84)
              {
                operator delete(v84);
              }
            }

            else
            {
              *v206[1] = *v62;
              v78 = v77 + 1;
            }

            v206[1] = v78;
            if (v78 >= v207)
            {
              v89 = (v78 - v206[0]) >> 3;
              if ((v89 + 1) >> 61)
              {
LABEL_236:
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v90 = (v207 - v206[0]) >> 2;
              if (v90 <= v89 + 1)
              {
                v90 = v89 + 1;
              }

              if (v207 - v206[0] >= 0x7FFFFFFFFFFFFFF8)
              {
                v91 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v91 = v90;
              }

              if (v91)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v91);
              }

              v92 = (8 * v89);
              *v92 = *v204[0];
              v88 = (8 * v89 + 8);
              v93 = v206[1];
              v94 = v206[0];
              v95 = (v92 + v206[0] - v206[1]);
              if (v206[1] != v206[0])
              {
                v96 = v95;
                do
                {
                  v97 = *v94++;
                  *v96++ = v97;
                }

                while (v94 != v93);
                v94 = v206[0];
              }

              v206[0] = v95;
              v206[1] = v88;
              *&v207 = 0;
              if (v94)
              {
                operator delete(v94);
              }
            }

            else
            {
              *v78 = *v204[0];
              v88 = v78 + 1;
            }

            v206[1] = v88;
            v98 = v204[1];
            v99 = (v204[0] + 8);
            v100 = 1;
            if (v204[1] != v204[0] + 8)
            {
              do
              {
                if (*v99 != *&v88[-1])
                {
                  v101 = *v99;
                  v102 = v88 - 1;
                  do
                  {
                    v103 = vmul_f32(vrev64_s32(vsub_f32(v101, *v102)), vsub_f32(*v102, *(v206[0] + 8 * v100 - 8)));
                    if (vcgt_f32(v103, vdup_lane_s32(v103, 1)).u8[0])
                    {
                      break;
                    }

                    v206[1] = v102--;
                    --v100;
                  }

                  while (v100);
                  v104 = v102 + 1;
                  if (&v102[1] >= v207)
                  {
                    v105 = (v104 - v206[0]) >> 3;
                    if ((v105 + 1) >> 61)
                    {
                      goto LABEL_236;
                    }

                    v106 = (v207 - v206[0]) >> 2;
                    if (v106 <= v105 + 1)
                    {
                      v106 = v105 + 1;
                    }

                    if (v207 - v206[0] >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v107 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v107 = v106;
                    }

                    if (v107)
                    {
                      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v107);
                    }

                    *(8 * v105) = *v99;
                    v88 = (8 * v105 + 8);
                    v108 = v206[1];
                    v109 = v206[0];
                    v110 = (8 * v105 + v206[0] - v206[1]);
                    if (v206[1] != v206[0])
                    {
                      v111 = (8 * v105 + v206[0] - v206[1]);
                      do
                      {
                        v112 = *v109++;
                        *v111++ = v112;
                      }

                      while (v109 != v108);
                      v109 = v206[0];
                    }

                    v206[0] = v110;
                    v206[1] = (8 * v105 + 8);
                    *&v207 = 0;
                    if (v109)
                    {
                      operator delete(v109);
                    }
                  }

                  else
                  {
                    *v104 = *v99;
                    v88 = v102 + 2;
                  }

                  v206[1] = v88;
                  ++v100;
                  v98 = v204[1];
                }

                ++v99;
              }

              while (v99 != v98);
            }

            v113 = v206[0];
            v114 = *v62;
            v115 = v88 - 1;
            do
            {
              v116 = vmul_f32(vrev64_s32(vsub_f32(v114, *v115)), vsub_f32(*v115, *(v206[0] + 8 * v100 - 8)));
              if ((vcgt_f32(vdup_lane_s32(v116, 1), v116).u8[0] & 1) == 0)
              {
                break;
              }

              v206[1] = v115--;
              --v100;
            }

            while (v100);
            v117 = v115 + 1;
            if (v207 - v206[0] > &v115[1] - v206[0])
            {
              v118 = (v117 - v206[0]) >> 3;
              if (v117 != v206[0])
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>((v117 - v206[0]) >> 3);
              }

              v119 = 0;
              if ((v207 - v206[0]) >> 3)
              {
                v120 = v206[1];
                v121 = (8 * v118 + v206[0] - v206[1]);
                if (v206[1] != v206[0])
                {
                  v122 = (8 * v118 + v206[0] - v206[1]);
                  do
                  {
                    v123 = *v113++;
                    *v122++ = v123;
                  }

                  while (v113 != v120);
                  v113 = v206[0];
                }

                v206[0] = v121;
                v206[1] = (8 * v118);
                *&v207 = 0;
                v119 = v113;
              }

              if (v119)
              {
                operator delete(v119);
              }
            }
          }

          if (v204[0])
          {
            v204[1] = v204[0];
            operator delete(v204[0]);
          }
        }

        std::vector<gm::Matrix<float,3,1>>::reserve(v184, (v206[1] - v206[0]) >> 3);
        std::vector<md::NeighborEdgeTypes>::reserve(&v185[1], (v206[1] - v206[0]) >> 3);
        v124 = v206[0];
        if (v206[1] != v206[0])
        {
          v125 = 0;
          v126 = v184[1];
          do
          {
            if (v126 >= v185[0])
            {
              v127 = v184[0];
              v128 = v126 - v184[0];
              v129 = 0xAAAAAAAAAAAAAAABLL * ((v126 - v184[0]) >> 2) + 1;
              if (v129 > 0x1555555555555555)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              if (0x5555555555555556 * ((v185[0] - v184[0]) >> 2) > v129)
              {
                v129 = 0x5555555555555556 * ((v185[0] - v184[0]) >> 2);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v185[0] - v184[0]) >> 2) >= 0xAAAAAAAAAAAAAAALL)
              {
                v130 = 0x1555555555555555;
              }

              else
              {
                v130 = v129;
              }

              if (v130)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,1>>>(v130);
              }

              v131 = 4 * ((v126 - v184[0]) >> 2);
              *v131 = v124[v125];
              *(v131 + 8) = v49;
              if (v127 != v126)
              {
                v132 = v131 - v128;
                do
                {
                  v133 = *v127;
                  *(v132 + 8) = v127[2];
                  *v132 = v133;
                  v132 += 12;
                  v127 += 3;
                }

                while (v127 != v126);
                v127 = v184[0];
              }

              v126 = (v131 + 12);
              v184[0] = (v131 - v128);
              v184[1] = (v131 + 12);
              v185[0] = 0;
              if (v127)
              {
                operator delete(v127);
              }
            }

            else
            {
              *v126 = v124[v125];
              v126[2] = v49;
              v126 += 3;
            }

            v184[1] = v126;
            v134 = v186;
            if (v186 >= *(&v186 + 1))
            {
              v136 = v185[1];
              v137 = (v186 - v185[1]);
              v138 = v186 - v185[1] + 1;
              if (v138 < 0)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v139 = *(&v186 + 1) - v185[1];
              if (2 * (*(&v186 + 1) - v185[1]) > v138)
              {
                v138 = 2 * v139;
              }

              if (v139 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v140 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v140 = v138;
              }

              if (v140)
              {
                operator new();
              }

              *v137 &= 0xFCu;
              v135 = v137 + 1;
              memcpy(0, v136, v137);
              v185[1] = 0;
              *(&v186 + 1) = 0;
              if (v136)
              {
                operator delete(v136);
              }
            }

            else
            {
              *v186 &= 0xFCu;
              v135 = (v134 + 1);
            }

            *&v186 = v135;
            ++v125;
            v124 = v206[0];
          }

          while (v125 < (v206[1] - v206[0]) >> 3);
        }

        if (v49 == v50)
        {
          v37 = v173;
          v11 = a1;
          if (!v124)
          {
LABEL_193:
            if (v180)
            {
              operator delete(v180);
            }

            if (v178)
            {
              operator delete(v178);
            }

            if (v185[1])
            {
              operator delete(v185[1]);
            }

            v173 = v37;
            goto LABEL_200;
          }
        }

        else
        {
          v204[1] = 0;
          v204[0] = 0;
          *&v205 = 0;
          v208 = 0uLL;
          *&v209 = 0;
          v11 = a1;
          if (md::DaVinciGroundTileData::_triangulateBuildingLoop(&v187, v204, &v208, v184, &md::DaVinciGroundTileData::_constructBuildingBVH(GeoCodecsDaVinciBuilding const*,unsigned long,GeoCodecsDaVinciBuildingSection const*,GeoCodecsVectorTilePoint3D const*,GeoCodecsDaVinciLineLoop const*,BOOL,std::optional<md::ScaleAndOffset> const&,gdc::Entity *)::innerLoops, 0))
          {
            v142 = v184[0];
            v141 = v184[1];
            v143 = v184[1] - v184[0];
            v169 = 0xAAAAAAAAAAAAAAABLL * ((v184[1] - v184[0]) >> 2);
            std::vector<gm::Matrix<float,3,1>>::reserve(&v199, 0xAAAAAAAAAAAAAAABLL * ((v200 - v199) >> 2) + 0x5555555555555556 * ((v184[1] - v184[0]) >> 2));
            v145 = v187;
            v144 = v188;
            std::vector<unsigned short>::reserve(&v197, ((v188 - v187) >> 1) + ((*(&v197 + 1) - v197) >> 1) + (v143 >> 1));
            while (v145 != v144)
            {
              LOWORD(v202) = v173 + 2 * *v145;
              std::vector<unsigned short>::push_back[abi:nn200100](&v197, &v202);
              ++v145;
            }

            if (v141 == v142)
            {
              v37 = v173;
            }

            else
            {
              v146 = 0;
              v147 = 0;
              v148 = v196;
              v37 = v173;
              do
              {
                v171 = v148;
                v149 = &v142[12 * v146];
                v174 = *v149;
                if (v169 - 1 == v146)
                {
                  v150 = v173;
                }

                else
                {
                  v150 = v37 + 2;
                }

                LOWORD(v202) = v37;
                std::vector<unsigned short>::push_back[abi:nn200100](&v197, &v202);
                LOWORD(v202) = v37 + 1;
                std::vector<unsigned short>::push_back[abi:nn200100](&v197, &v202);
                LOWORD(v202) = v150;
                std::vector<unsigned short>::push_back[abi:nn200100](&v197, &v202);
                LOWORD(v202) = v150;
                std::vector<unsigned short>::push_back[abi:nn200100](&v197, &v202);
                LOWORD(v202) = v37 + 1;
                std::vector<unsigned short>::push_back[abi:nn200100](&v197, &v202);
                LOWORD(v202) = v150 + 1;
                std::vector<unsigned short>::push_back[abi:nn200100](&v197, &v202);
                v202 = v174;
                v203 = v50;
                std::vector<gm::Matrix<float,3,1>>::push_back[abi:nn200100](&v199, &v202);
                v151 = *(v149 + 2);
                v202 = *v149;
                v170 = v202;
                v203 = v151;
                std::vector<gm::Matrix<float,3,1>>::push_back[abi:nn200100](&v199, &v202);
                v152.i64[0] = v174;
                v153.i64[0] = v174;
                v153.i64[1] = v174;
                v154.i64[0] = v171.i64[0];
                v154.i64[1] = v174;
                v152.i64[1] = vextq_s8(v171, v171, 8uLL).u64[0];
                v155 = vbslq_s8(vcgtq_f32(v154, v152), v153, v171);
                v152.i64[0] = v170;
                v156.i64[0] = v170;
                v156.i64[1] = v170;
                v157.i64[0] = v155.i64[0];
                v157.i64[1] = v170;
                v152.i64[1] = vextq_s8(v155, v155, 8uLL).u64[0];
                v148 = vbslq_s8(vcgtq_f32(v157, v152), v156, v155);
                v37 += 2;
                v146 = ++v147;
              }

              while (v169 > v147);
              v196 = v148;
            }

            v11 = a1;
          }

          else
          {
            v37 = v173;
          }

          v202 = &v208;
          std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&v202);
          if (v204[0])
          {
            v204[1] = v204[0];
            operator delete(v204[0]);
          }

          v124 = v206[0];
          if (!v206[0])
          {
            goto LABEL_193;
          }
        }

        v206[1] = v124;
        operator delete(v124);
        goto LABEL_193;
      }

      v159 = 0;
      v158 = 0uLL;
LABEL_223:
      if (v158 != *(&v158 + 1))
      {
        *&v208 = v158;
        *(&v208 + 1) = (*(&v158 + 1) - v158) >> 1;
        md::constructBoundingVolume(v204);
      }

      if (v187)
      {
        operator delete(v187);
      }

      if (v190)
      {
        v191 = v190;
        operator delete(v190);
      }

      if (__p)
      {
        operator delete(__p);
      }

      if (v159)
      {
        operator delete(v159);
      }

      if (v199)
      {
        operator delete(v199);
      }
    }
  }
}

BOOL md::DaVinciGroundTileData::_getBuildingHeightAndExtrusionType(uint64_t a1, float *a2, uint64_t a3, uint64_t a4)
{
  v8 = +[VKDebugSettings sharedSettings];
  v9 = [v8 daVinciBuildingHeights];

  *a2 = *(a1 + 1184) * 5.0;
  if (!v9)
  {
    return 1;
  }

  v10 = *(a3 + 4);
  if (*(a4 + 24))
  {
    v10 = *(a4 + 20) + (*(a4 + 8) * v10);
  }

  *a2 = v10;
  if (*(a3 + 4) <= *(a3 + 8))
  {
    *a2 = v10 + (*(a1 + 1184) * 0.1);
  }

  return *(a3 + 1) != 0;
}

void md::DaVinciGroundTileData::_roundLoopCorners(uint64_t a1, float *a2, uint64_t a3, unsigned int a4, unsigned __int16 a5)
{
  v94 = *MEMORY[0x1E69E9840];
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v6 = (a3 + 12 * a4);
  v7 = a5;
  v8 = &v6[3 * a5 - 3];
  v81 = v6;
  if (*v8 == *v6 && v8[1] == v6[1])
  {
    v7 = a5 - 1;
  }

  v9 = v7;
  if (v7 >= 3 && *a2 != 0.0)
  {
    v10 = vcvtas_u32_f32(1.5708 / a2[1]);
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v11 = v9 * (v10 + 1);
    std::vector<gm::Matrix<float,3,1>>::reserve(a1, v11);
    std::vector<md::NeighborEdgeTypes>::reserve((a1 + 24), v11);
    v12 = 0;
    while (1)
    {
      v13 = v12 + 1;
      if (v12 + 1 == v9)
      {
        v14 = 0;
      }

      else
      {
        v14 = v12 + 1;
      }

      v15 = &v81[3 * ((v9 - 1 + v12) % v9)];
      v91 = *v15;
      v92 = *(v15 + 1);
      v16 = &v81[3 * v12];
      v89 = *v16;
      v90 = *(v16 + 1);
      v17 = &v81[3 * v14];
      v87 = *v17;
      v88 = *(v17 + 1);
      v93[0] = v91;
      LODWORD(v93[1]) = v92;
      v93[2] = v89;
      LODWORD(v93[3]) = v90;
      v93[4] = v87;
      LODWORD(v93[5]) = v88;
      md::PolygonRound::smoothTwoSegments(&__p, a2, v93);
      v19 = __p;
      v18 = v86;
      if ((v86 - __p) < 9 || (gm::Plane3<float>::Plane3(v82, &v91, &v89, &v87), v83 == 0.0))
      {
        std::vector<gm::Matrix<float,3,1>>::push_back[abi:nn200100](a1, &v89);
        v21 = *(a1 + 32);
        v20 = *(a1 + 40);
        if (v21 >= v20)
        {
          v24 = *(a1 + 24);
          v25 = (v21 - v24);
          v26 = v21 - v24 + 1;
          if (v26 < 0)
          {
            goto LABEL_122;
          }

          v27 = v20 - v24;
          if (2 * v27 > v26)
          {
            v26 = 2 * v27;
          }

          if (v27 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v28 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v28 = v26;
          }

          if (v28)
          {
            operator new();
          }

          v43 = (v21 - v24);
          v44 = *v25 & 0xFC;
LABEL_47:
          *v43 = v44;
          v23 = v43 + 1;
          memcpy(0, v24, v25);
          *(a1 + 24) = 0;
          *(a1 + 40) = 0;
          if (v24)
          {
            operator delete(v24);
          }

          goto LABEL_49;
        }

        v22 = *v21 & 0xFC;
      }

      else
      {
        if (v19 != v18)
        {
          v29 = *(a1 + 8);
          do
          {
            v30 = *v19;
            v31 = -((v84 + (v82[0] * COERCE_FLOAT(*v19))) + (v82[1] * COERCE_FLOAT(HIDWORD(*v19)))) / v83;
            v32 = *(a1 + 16);
            if (v29 >= v32)
            {
              v33 = *a1;
              v34 = v29 - *a1;
              v35 = 0xAAAAAAAAAAAAAAABLL * (v34 >> 2) + 1;
              if (v35 > 0x1555555555555555)
              {
                goto LABEL_123;
              }

              v36 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v33) >> 2);
              if (2 * v36 > v35)
              {
                v35 = 2 * v36;
              }

              if (v36 >= 0xAAAAAAAAAAAAAAALL)
              {
                v37 = 0x1555555555555555;
              }

              else
              {
                v37 = v35;
              }

              if (v37)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,1>>>(v37);
              }

              v38 = 4 * (v34 >> 2);
              *v38 = v30;
              *(v38 + 8) = v31;
              if (v33 != v29)
              {
                v39 = v38 - v34;
                do
                {
                  v40 = *v33;
                  *(v39 + 8) = v33[2];
                  *v39 = v40;
                  v39 += 12;
                  v33 += 3;
                }

                while (v33 != v29);
                v33 = *a1;
              }

              v29 = (v38 + 12);
              *a1 = v38 - v34;
              *(a1 + 8) = v38 + 12;
              *(a1 + 16) = 0;
              if (v33)
              {
                operator delete(v33);
              }
            }

            else
            {
              *v29 = v30;
              v29[2] = v31;
              v29 += 3;
            }

            *(a1 + 8) = v29;
            ++v19;
          }

          while (v19 != v18);
        }

        v41 = *(a1 + 32);
        v42 = *(a1 + 40);
        if (v41 >= v42)
        {
          v45 = *(a1 + 24);
          v46 = (v41 - v45);
          v47 = v41 - v45 + 1;
          if (v47 < 0)
          {
            goto LABEL_122;
          }

          if (2 * (v42 - v45) > v47)
          {
            v47 = 2 * (v42 - v45);
          }

          if (v42 - v45 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v42 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v42 = v47;
          }

          if (v42)
          {
            operator new();
          }

          *v46 = *v46 & 0xFC | 2;
          v21 = v46 + 1;
          memcpy(0, v45, v46);
          *(a1 + 24) = 0;
          *(a1 + 40) = 0;
          if (v45)
          {
            operator delete(v45);
          }
        }

        else
        {
          *v41 = *v41 & 0xFC | 2;
          v21 = v41 + 1;
        }

        *(a1 + 32) = v21;
        if ((((v86 - __p) >> 3) - 3) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v48 = 2;
          do
          {
            v49 = *(a1 + 40);
            if (v21 >= v49)
            {
              v50 = *(a1 + 24);
              v51 = (v21 - v50);
              v52 = v21 - v50 + 1;
              if (v52 < 0)
              {
                goto LABEL_122;
              }

              v53 = v49 - v50;
              if (2 * v53 > v52)
              {
                v52 = 2 * v53;
              }

              if (v53 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v54 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v54 = v52;
              }

              if (v54)
              {
                operator new();
              }

              *v51 |= 3u;
              v21 = v51 + 1;
              memcpy(0, v50, v51);
              *(a1 + 24) = 0;
              *(a1 + 40) = 0;
              if (v50)
              {
                operator delete(v50);
              }
            }

            else
            {
              *v21++ |= 3u;
            }

            *(a1 + 32) = v21;
          }

          while (((v86 - __p) >> 3) - 1 > v48++);
          v42 = *(a1 + 40);
        }

        if (v21 >= v42)
        {
          v24 = *(a1 + 24);
          v25 = (v21 - v24);
          v56 = v21 - v24 + 1;
          if (v56 < 0)
          {
            goto LABEL_122;
          }

          if (2 * (v42 - v24) > v56)
          {
            v56 = 2 * (v42 - v24);
          }

          if (v42 - v24 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v57 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v57 = v56;
          }

          if (v57)
          {
            operator new();
          }

          v43 = (v21 - v24);
          v44 = *v25 & 0xFC | 1;
          goto LABEL_47;
        }

        v22 = *v21 & 0xFC | 1;
      }

      *v21 = v22;
      v23 = v21 + 1;
LABEL_49:
      *(a1 + 32) = v23;
      if (__p)
      {
        v86 = __p;
        operator delete(__p);
      }

      v12 = v13;
      if (v13 == v9)
      {
        return;
      }
    }
  }

  std::vector<gm::Matrix<float,3,1>>::reserve(a1, v7);
  std::vector<md::NeighborEdgeTypes>::reserve((a1 + 24), v9);
  if (v9)
  {
    v58 = 0;
    v59 = *(a1 + 8);
    do
    {
      v60 = &v81[3 * v58];
      v61 = *(a1 + 16);
      if (v59 >= v61)
      {
        v63 = *a1;
        v64 = v59 - *a1;
        v65 = 0xAAAAAAAAAAAAAAABLL * (v64 >> 2) + 1;
        if (v65 > 0x1555555555555555)
        {
LABEL_123:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v66 = 0xAAAAAAAAAAAAAAABLL * ((v61 - v63) >> 2);
        if (2 * v66 > v65)
        {
          v65 = 2 * v66;
        }

        if (v66 >= 0xAAAAAAAAAAAAAAALL)
        {
          v67 = 0x1555555555555555;
        }

        else
        {
          v67 = v65;
        }

        if (v67)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,1>>>(v67);
        }

        v68 = *(v60 + 2);
        v69 = 4 * (v64 >> 2);
        *v69 = *v60;
        *(v69 + 8) = v68;
        if (v63 != v59)
        {
          v70 = v69 - v64;
          do
          {
            v71 = *v63;
            *(v70 + 8) = v63[2];
            *v70 = v71;
            v70 += 12;
            v63 += 3;
          }

          while (v63 != v59);
          v63 = *a1;
        }

        v59 = (v69 + 12);
        *a1 = v69 - v64;
        *(a1 + 8) = v69 + 12;
        *(a1 + 16) = 0;
        if (v63)
        {
          operator delete(v63);
        }
      }

      else
      {
        v62 = *(v60 + 2);
        *v59 = *v60;
        v59[2] = v62;
        v59 += 3;
      }

      *(a1 + 8) = v59;
      v73 = *(a1 + 32);
      v72 = *(a1 + 40);
      if (v73 >= v72)
      {
        v75 = *(a1 + 24);
        v76 = (v73 - v75);
        v77 = v73 - v75 + 1;
        if (v77 < 0)
        {
LABEL_122:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v78 = v72 - v75;
        if (2 * v78 > v77)
        {
          v77 = 2 * v78;
        }

        if (v78 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v79 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v79 = v77;
        }

        if (v79)
        {
          operator new();
        }

        *v76 &= 0xFCu;
        v74 = v76 + 1;
        memcpy(0, v75, v76);
        *(a1 + 24) = 0;
        *(a1 + 40) = 0;
        if (v75)
        {
          operator delete(v75);
        }
      }

      else
      {
        *v73 &= 0xFCu;
        v74 = v73 + 1;
      }

      *(a1 + 32) = v74;
      ++v58;
    }

    while (v58 != v9);
  }
}

void sub_1B3185A54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  v17 = *(v15 + 24);
  if (v17)
  {
    *(v15 + 32) = v17;
    operator delete(v17);
  }

  v18 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::DaVinciGroundTileData::_transformBuildingLoop(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (*(a5 + 24) == 1)
  {
    for (; result != a2; result += 12)
    {
      for (i = 0; i != 12; i += 4)
      {
        *(&v15 + i) = *(a5 + i) * *(result + i);
      }

      v6 = 0;
      v13 = v15;
      v14 = v16;
      do
      {
        *(&v15 + v6) = *(a5 + 12 + v6) + *(&v13 + v6);
        v6 += 4;
      }

      while (v6 != 12);
      v7 = v16;
      *result = v15;
      *(result + 8) = v7;
    }

    for (; a3 != a4; a3 += 6)
    {
      v8 = *a3;
      v9 = a3[1];
      while (v8 != v9)
      {
        for (j = 0; j != 12; j += 4)
        {
          *(&v15 + j) = *(a5 + j) * *(v8 + j);
        }

        v11 = 0;
        v13 = v15;
        v14 = v16;
        do
        {
          *(&v15 + v11) = *(a5 + 12 + v11) + *(&v13 + v11);
          v11 += 4;
        }

        while (v11 != 12);
        v12 = v16;
        *v8 = v15;
        *(v8 + 8) = v12;
        v8 += 12;
      }
    }
  }

  return result;
}

BOOL md::DaVinciGroundTileData::_getBuildingTerrainElevation(uint64_t a1, float *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, int a8, float a9)
{
  v36 = *MEMORY[0x1E69E9840];
  v14 = -3.4028e38;
  while (a3 != a4)
  {
    v14 = fmaxf(*(a3 + 8), v14);
    a3 += 12;
  }

  *a2 = v14;
  if ((a5 & 1) == 0)
  {
    return 1;
  }

  *a2 = a9;
  v15 = v14 > (a9 + 0.0001);
  if ((v14 + 0.0001) < a9)
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v16 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(a1 + 172);
      *v20 = *(a1 + 168);
      v22 = *(a1 + 184);
      v23 = *(a1 + 192);
      md::debugString<geo::QuadTile>(__p, v20);
      v17 = v25 >= 0 ? __p : __p[0];
      v18 = *a2;
      *buf = 134219010;
      v27 = a7;
      v28 = 1024;
      v29 = a8;
      v30 = 2080;
      v31 = v17;
      v32 = 2048;
      v33 = v18;
      v34 = 2048;
      v35 = v14;
      _os_log_impl(&dword_1B2754000, v16, OS_LOG_TYPE_DEBUG, "For Building %zu/section %d key %s, terrainElevation (%f) should be lower than section maxz (%f)", buf, 0x30u);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (*(a6 + 24) == 1)
  {
    *a2 = *(a6 + 20) + (*(a6 + 8) * *a2);
  }

  return v15;
}

uint64_t geo::DiscreteOrientedPolytope<geo::TenDOPTraits<float>>::enclose(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = (result + 4);
  __asm { FMOV            V2.2S, #-1.0 }

  v9 = -_D2;
  do
  {
    v13[0] = xmmword_1B33B0870;
    v13[1] = xmmword_1B33B0870;
    v13[2] = xmmword_1B33B0B20;
    v14 = v9;
    v15 = 0;
    v10 = vmul_f32(*(a2 + 4), *(v13 + v2 + 4));
    v11 = (v10.f32[0] + (*(v13 + v2) * *a2)) + v10.f32[1];
    v10.f32[0] = fminf(v11, *(v3 - 1));
    v12 = fmaxf(*v3, v11);
    *(v3 - 1) = v10.f32[0];
    *v3 = v12;
    v2 += 12;
    v3 += 2;
  }

  while (v2 != 60);
  return result;
}

void std::vector<md::NeighborEdgeTypes>::reserve(void *a1, unint64_t a2)
{
  if (a1[2] - *a1 < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }
}

uint64_t md::DaVinciGroundTileData::_triangulateBuildingLoop(void *a1, uint64_t *a2, double *a3, uint64_t a4, void *a5, unint64_t a6)
{
  v85 = *MEMORY[0x1E69E9840];
  v71.i64[1] = 0;
  v72 = 0;
  v73 = xmmword_1B33B1630;
  v78 = 0;
  v75 = 0;
  v76 = 0;
  v74 = 0;
  v77 = 0.0;
  v79 = 4;
  v9 = *a4;
  v10 = *(a4 + 8);
  v12 = v10 - *a4;
  v11 = v10 == *a4;
  v71.i64[0] = &v71.i64[1];
  if (!v11)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * (v12 >> 2)) >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(0xAAAAAAAAAAAAAAABLL * (v12 >> 2));
    }

    goto LABEL_52;
  }

  v14 = v10 - v9;
  if (v14)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 2);
    v16 = 1;
    v17 = 0;
    do
    {
      v18 = *v9;
      v9 = (v9 + 12);
      *v17++ = v18;
      v19 = v15 > v16++;
    }

    while (v19);
  }

  v20 = a2;
  v21 = *a2;
  if (*a2)
  {
    a2[1] = v21;
    operator delete(v21);
    v20 = a2;
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *v20 = 0;
  v20[1] = 0;
  v20[2] = 0;
  v22 = 0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 4);
  v23 = *a3;
  v24 = *(a3 + 1);
  v25 = 0xAAAAAAAAAAAAAAABLL * (&v24[-*a3] >> 3);
  v26 = v22 - v25;
  v68 = a1;
  if (v22 <= v25)
  {
    if (v22 < v25)
    {
      v30 = (v23 + 8 * ((a5[1] - *a5) >> 4));
      if (v24 != v30)
      {
        v31 = *(a3 + 1);
        do
        {
          v33 = *(v31 - 3);
          v31 -= 24;
          v32 = v33;
          if (v33)
          {
            *(v24 - 2) = v32;
            operator delete(v32);
          }

          v24 = v31;
        }

        while (v31 != v30);
      }

      *(a3 + 1) = v30;
    }

    if (a6)
    {
LABEL_28:
      v34 = 0;
      v35 = 0;
      while (1)
      {
        v36 = *a5 + 48 * v34;
        v37 = *v36;
        v38 = *(v36 + 8);
        if (v38 != *v36)
        {
          break;
        }

        v40 = 0uLL;
        v41 = v38 - v37;
        if (v41)
        {
          v42 = 0xAAAAAAAAAAAAAAABLL * (v41 >> 2);
          v43 = 0;
          v44 = 1;
          do
          {
            v45 = *v37;
            v37 = (v37 + 12);
            *v43++ = v45;
            v19 = v42 > v44++;
          }

          while (v19);
        }

        v46 = *a3 + 24 * v34;
        v47 = *v46;
        if (*v46)
        {
          *(v46 + 8) = v47;
          operator delete(v47);
          v40 = 0uLL;
          *v46 = 0;
          *(v46 + 8) = 0;
          *(v46 + 16) = 0;
        }

        *v46 = v40;
        *(v46 + 16) = 0;
        v34 = ++v35;
        if (v35 >= a6)
        {
          goto LABEL_38;
        }
      }

      v39 = v38 - *v36;
      if (!((0xAAAAAAAAAAAAAAABLL * (v39 >> 2)) >> 61))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(0xAAAAAAAAAAAAAAABLL * (v39 >> 2));
      }

LABEL_52:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }
  }

  else
  {
    v27 = *(a3 + 2);
    if (0xAAAAAAAAAAAAAAABLL * ((v27 - v24) >> 3) < v26)
    {
      if (v22 <= 0xAAAAAAAAAAAAAAALL)
      {
        *&v84 = a3;
        v28 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v23) >> 3);
        if (2 * v28 > v22)
        {
          v22 = 2 * v28;
        }

        if (v28 >= 0x555555555555555)
        {
          v29 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v29 = v22;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<gm::LineSegment<float,3>>>>(v29);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    bzero(v24, 24 * ((24 * v26 - 24) / 0x18) + 24);
    *(a3 + 1) = &v24[24 * ((24 * v26 - 24) / 0x18) + 24];
    if (a6)
    {
      goto LABEL_28;
    }
  }

LABEL_38:
  v78 = 0;
  v68[1] = *v68;
  v48 = *a2;
  v49 = (a2[1] - *a2) >> 3;
  if (v49 < 3)
  {
    goto LABEL_50;
  }

  v79 |= 4u;
  geo::Triangulator<float,unsigned short>::initializeHasherFromVertices(&v71, v48, v49);
  LinkedList = geo::Triangulator<float,unsigned short>::createLinkedList(&v71, *a2, (a2[1] - *a2) >> 3, 0, 1, v50, v51);
  if (!LinkedList)
  {
    goto LABEL_50;
  }

  v53 = *(LinkedList + 24);
  geo::Triangulator<float,unsigned short>::linkListInHashSpace(v53, v77);
  __p = 0;
  v81 = 0;
  v82 = 0;
  v54 = *(a3 + 1);
  if (v54 != *a3)
  {
    v55 = 0xAAAAAAAAAAAAAAABLL * ((v54 - *a3) >> 3);
    if (!(v55 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v55);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  std::__introsort<std::_ClassicAlgPolicy,geo::Triangulator<float,unsigned short>::ListHeadSorter &,std::pair<geo::Triangulator<float,unsigned short>::Node *,float> *,false>(0, 0, 0, 1);
  if (__p)
  {
    operator delete(__p);
  }

  if (v53)
  {
    geo::Triangulator<float,unsigned short>::linkListInHashSpace(v53, v77);
    v62 = geo::Triangulator<float,unsigned short>::earclipPolygon(&v71, v53, v68, v56, v57, v58, v59, v60, v61);
    v64 = *v68;
    v63 = v68[1];
    v65 = geo::triangulatedIndexCount<float>(a2, a3);
    if (v65 > (v63 - v64) >> 1)
    {
      v66 = v65 - ((v63 - v64) >> 1);
      do
      {
        LOWORD(v83) = 0;
        std::vector<unsigned short>::push_back[abi:nn200100](v68, &v83);
        --v66;
      }

      while (v66);
    }
  }

  else
  {
LABEL_50:
    v62 = 0;
  }

  geo::Pool<geo::Triangulator<float,unsigned short>::Node>::~Pool(&v71);
  return v62;
}

void sub_1B3186F2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p)
{
  if (v38)
  {
    operator delete(v38);
  }

  if (__p)
  {
    operator delete(__p);
  }

  geo::Pool<geo::Triangulator<float,unsigned short>::Node>::~Pool(&a27);
  _Unwind_Resume(a1);
}

uint64_t geo::triangulatedIndexCount<float>(uint64_t *a1, uint64_t **a2)
{
  v3 = geo::effectiveVertexCount<float>(a1);
  v5 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    v7 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      if (*v5 != v5[1])
      {
        v3 += geo::effectiveVertexCount<float>(v5);
        ++v6;
        v4 = a2[1];
      }

      v5 += 3;
    }

    while (v5 != v4);
    v7 = 2 * v6;
  }

  return 3 * (v3 + v7) - 6;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,geo::Triangulator<float,unsigned short>::ListHeadSorter &,std::pair<geo::Triangulator<float,unsigned short>::Node *,float> *,false>(uint64_t result, float *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 4;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v83 = *(a2 - 2);
        v84 = v8[2];
        if (v84 < v83)
        {
          v85 = *v8;
          *v8 = *(a2 - 2);
          *(a2 - 2) = v85;
          v8[2] = v83;
          *(a2 - 2) = v84;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v90 = v8[6];
      v91 = v8[2];
      v92 = v8[10];
      if (v91 >= v90)
      {
        if (v90 < v92)
        {
          v140 = *(v8 + 2);
          v141 = *(v8 + 4);
          *(v8 + 2) = v141;
          *(v8 + 4) = v140;
          v8[6] = v92;
          v8[10] = v90;
          if (v91 < v92)
          {
            v142 = *v8;
            *v8 = v141;
            *(v8 + 2) = v142;
            v8[2] = v92;
            v8[6] = v91;
          }
        }
      }

      else
      {
        v93 = *v8;
        if (v90 < v92)
        {
          *v8 = *(v8 + 4);
          *(v8 + 4) = v93;
          v8[2] = v92;
          goto LABEL_185;
        }

        *v8 = *(v8 + 2);
        *(v8 + 2) = v93;
        v8[2] = v90;
        v8[6] = v91;
        if (v91 < v92)
        {
          *(v8 + 2) = *(v8 + 4);
          *(v8 + 4) = v93;
          v8[6] = v92;
LABEL_185:
          v8[10] = v91;
        }
      }

      v150 = *(a2 - 2);
      v151 = v8[10];
      if (v151 < v150)
      {
        v152 = *(v8 + 4);
        *(v8 + 4) = *(a2 - 2);
        *(a2 - 2) = v152;
        v8[10] = v150;
        *(a2 - 2) = v151;
        v153 = v8[10];
        v154 = v8[6];
        if (v154 < v153)
        {
          v155 = *(v8 + 2);
          v156 = *(v8 + 4);
          *(v8 + 2) = v156;
          *(v8 + 4) = v155;
          v8[6] = v153;
          v8[10] = v154;
          v157 = v8[2];
          if (v157 < v153)
          {
            v158 = *v8;
            *v8 = v156;
            *(v8 + 2) = v158;
            v8[2] = v153;
            v8[6] = v157;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geo::Triangulator<float,unsigned short>::ListHeadSorter &,std::pair<geo::Triangulator<float,unsigned short>::Node *,float> *,0>(v8, v8 + 4, v8 + 8, v8 + 12, a2 - 4);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v94 = v8 + 4;
      v96 = v8 == a2 || v94 == a2;
      if (a4)
      {
        if (!v96)
        {
          v97 = 0;
          v98 = v8;
          do
          {
            v99 = v98[6];
            v100 = v98[2];
            v98 = v94;
            if (v100 < v99)
            {
              v101 = *v94;
              v102 = v97;
              while (1)
              {
                v103 = v8 + v102;
                *(v103 + 2) = *(v8 + v102);
                *(v103 + 6) = *(v8 + v102 + 8);
                if (!v102)
                {
                  break;
                }

                v102 -= 16;
                if (*(v103 - 2) >= v99)
                {
                  v104 = v8 + v102 + 16;
                  goto LABEL_130;
                }
              }

              v104 = v8;
LABEL_130:
              *v104 = v101;
              *(v104 + 8) = v99;
            }

            v94 = v98 + 4;
            v97 += 16;
          }

          while (v98 + 4 != a2);
        }
      }

      else if (!v96)
      {
        v143 = v8 + 2;
        do
        {
          v144 = v7[6];
          v145 = v7[2];
          v7 = v94;
          if (v145 < v144)
          {
            v146 = *v94;
            v147 = v143;
            do
            {
              *(v147 + 1) = *(v147 - 1);
              v147[4] = *v147;
              v148 = *(v147 - 4);
              v147 -= 4;
            }

            while (v148 < v144);
            *(v147 + 1) = v146;
            v147[4] = v144;
          }

          v94 = v7 + 4;
          v143 += 4;
        }

        while (v7 + 4 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v105 = (v9 - 2) >> 1;
        v106 = v105;
        do
        {
          v107 = v106;
          if (v105 >= v106)
          {
            v108 = (2 * v106) | 1;
            v109 = &v8[4 * v108];
            if (2 * v107 + 2 < v9 && v109[6] < v109[2])
            {
              v109 += 4;
              v108 = 2 * v107 + 2;
            }

            v110 = &v8[4 * v107];
            v111 = v110[2];
            v112 = v109[2];
            if (v111 >= v112)
            {
              v113 = *v110;
              do
              {
                v114 = v110;
                v110 = v109;
                *v114 = *v109;
                v114[2] = v112;
                if (v105 < v108)
                {
                  break;
                }

                v115 = 2 * v108;
                v108 = (2 * v108) | 1;
                v109 = &v8[4 * v108];
                v116 = v115 + 2;
                if (v116 < v9 && v109[6] < v109[2])
                {
                  v109 += 4;
                  v108 = v116;
                }

                v112 = v109[2];
              }

              while (v111 >= v112);
              *v110 = v113;
              v110[2] = v111;
            }
          }

          v106 = v107 - 1;
        }

        while (v107);
        do
        {
          v117 = 0;
          v118 = *v8;
          v119 = *(v8 + 2);
          v120 = v8;
          do
          {
            v121 = &v120[4 * v117];
            v122 = v121 + 4;
            v123 = (2 * v117) | 1;
            v117 = 2 * v117 + 2;
            if (v117 >= v9)
            {
              v117 = v123;
            }

            else
            {
              v124 = v121[6];
              v125 = v121[10];
              v126 = v121 + 8;
              if (v125 >= v124)
              {
                v117 = v123;
              }

              else
              {
                v122 = v126;
              }
            }

            *v120 = *v122;
            v120[2] = v122[2];
            v120 = v122;
          }

          while (v117 <= ((v9 - 2) >> 1));
          if (v122 == a2 - 4)
          {
            *v122 = v118;
            *(v122 + 2) = v119;
          }

          else
          {
            *v122 = *(a2 - 2);
            v122[2] = *(a2 - 2);
            *(a2 - 2) = v118;
            *(a2 - 2) = v119;
            v127 = (v122 - v8 + 16) >> 4;
            v128 = v127 < 2;
            v129 = v127 - 2;
            if (!v128)
            {
              v130 = v129 >> 1;
              v131 = &v8[4 * (v129 >> 1)];
              v132 = v122[2];
              v133 = v131[2];
              if (v132 < v133)
              {
                v134 = *v122;
                do
                {
                  v135 = v122;
                  v122 = v131;
                  *v135 = *v131;
                  v135[2] = v133;
                  if (!v130)
                  {
                    break;
                  }

                  v130 = (v130 - 1) >> 1;
                  v131 = &v8[4 * v130];
                  v133 = v131[2];
                }

                while (v132 < v133);
                *v122 = v134;
                v122[2] = v132;
              }
            }
          }

          a2 -= 4;
          v128 = v9-- <= 2;
        }

        while (!v128);
      }

      return result;
    }

    v10 = &v8[4 * (v9 >> 1)];
    v11 = *(a2 - 2);
    if (v9 >= 0x81)
    {
      v12 = v10[2];
      v13 = v8[2];
      if (v13 >= v12)
      {
        if (v12 < v11)
        {
          v18 = *v10;
          *v10 = *(a2 - 2);
          *(a2 - 2) = v18;
          v10[2] = v11;
          *(a2 - 2) = v12;
          v19 = v10[2];
          v20 = v8[2];
          if (v20 < v19)
          {
            v21 = *v8;
            *v8 = *v10;
            *v10 = v21;
            v8[2] = v19;
            v10[2] = v20;
          }
        }
      }

      else
      {
        v14 = *v8;
        if (v12 < v11)
        {
          *v8 = *(a2 - 2);
          *(a2 - 2) = v14;
          v8[2] = v11;
          goto LABEL_27;
        }

        *v8 = *v10;
        *v10 = v14;
        v8[2] = v12;
        v10[2] = v13;
        v26 = *(a2 - 2);
        if (v13 < v26)
        {
          *v10 = *(a2 - 2);
          *(a2 - 2) = v14;
          v10[2] = v26;
LABEL_27:
          *(a2 - 2) = v13;
        }
      }

      v27 = v10 - 4;
      v28 = *(v10 - 2);
      v29 = v8[6];
      v30 = *(a2 - 6);
      if (v29 >= v28)
      {
        if (v28 < v30)
        {
          v32 = *v27;
          *v27 = *(a2 - 4);
          *(a2 - 4) = v32;
          *(v10 - 2) = v30;
          *(a2 - 6) = v28;
          v33 = *(v10 - 2);
          v34 = v8[6];
          if (v34 < v33)
          {
            v35 = *(v8 + 2);
            *(v8 + 2) = *v27;
            *v27 = v35;
            v8[6] = v33;
            *(v10 - 2) = v34;
          }
        }
      }

      else
      {
        v31 = *(v8 + 2);
        if (v28 < v30)
        {
          *(v8 + 2) = *(a2 - 4);
          *(a2 - 4) = v31;
          v8[6] = v30;
          goto LABEL_39;
        }

        *(v8 + 2) = *v27;
        *v27 = v31;
        v8[6] = v28;
        *(v10 - 2) = v29;
        v37 = *(a2 - 6);
        if (v29 < v37)
        {
          *v27 = *(a2 - 4);
          *(a2 - 4) = v31;
          *(v10 - 2) = v37;
LABEL_39:
          *(a2 - 6) = v29;
        }
      }

      v38 = v10[6];
      v39 = v8[10];
      v40 = *(a2 - 10);
      if (v39 >= v38)
      {
        if (v38 < v40)
        {
          v42 = *(v10 + 2);
          *(v10 + 2) = *(a2 - 6);
          *(a2 - 6) = v42;
          v10[6] = v40;
          *(a2 - 10) = v38;
          v43 = v10[6];
          v44 = v8[10];
          if (v44 < v43)
          {
            v45 = *(v8 + 4);
            *(v8 + 4) = *(v10 + 2);
            *(v10 + 2) = v45;
            v8[10] = v43;
            v10[6] = v44;
          }
        }
      }

      else
      {
        v41 = *(v8 + 4);
        if (v38 < v40)
        {
          *(v8 + 4) = *(a2 - 6);
          *(a2 - 6) = v41;
          v8[10] = v40;
          goto LABEL_48;
        }

        *(v8 + 4) = *(v10 + 2);
        *(v10 + 2) = v41;
        v8[10] = v38;
        v10[6] = v39;
        v46 = *(a2 - 10);
        if (v39 < v46)
        {
          *(v10 + 2) = *(a2 - 6);
          *(a2 - 6) = v41;
          v10[6] = v46;
LABEL_48:
          *(a2 - 10) = v39;
        }
      }

      v47 = v10[2];
      v48 = *(v10 - 2);
      v49 = v47;
      v50 = v10[6];
      if (v48 >= v47)
      {
        v51 = *v10;
        if (v47 < v50)
        {
          v52 = *(v10 + 2);
          *v10 = v52;
          *(v10 + 2) = v51;
          v10[2] = v50;
          v10[6] = v47;
          v49 = v50;
          if (v48 >= v50)
          {
            v51 = v52;
          }

          else
          {
            v51 = *v27;
            *v27 = v52;
            *v10 = v51;
            *(v10 - 2) = v50;
            v10[2] = v48;
            v49 = v48;
          }
        }
      }

      else
      {
        v51 = *v27;
        if (v47 >= v50)
        {
          *v27 = *v10;
          *v10 = v51;
          *(v10 - 2) = v47;
          v10[2] = v48;
          v49 = v48;
          if (v48 < v50)
          {
            v53 = *(v10 + 2);
            *v10 = v53;
            *(v10 + 2) = v51;
            v10[2] = v50;
            v10[6] = v48;
            v49 = v50;
            v51 = v53;
          }
        }

        else
        {
          *v27 = *(v10 + 2);
          *(v10 + 2) = v51;
          *(v10 - 2) = v50;
          v10[6] = v48;
          v51 = *v10;
        }
      }

      v54 = *v8;
      *v8 = v51;
      *v10 = v54;
      v55 = *(v8 + 2);
      v8[2] = v49;
      *(v10 + 2) = v55;
      goto LABEL_59;
    }

    v15 = v8[2];
    v16 = v10[2];
    if (v16 >= v15)
    {
      if (v15 < v11)
      {
        v22 = *v8;
        *v8 = *(a2 - 2);
        *(a2 - 2) = v22;
        v8[2] = v11;
        *(a2 - 2) = v15;
        v23 = v8[2];
        v24 = v10[2];
        if (v24 < v23)
        {
          v25 = *v10;
          *v10 = *v8;
          *v8 = v25;
          v10[2] = v23;
          v8[2] = v24;
        }
      }

      goto LABEL_59;
    }

    v17 = *v10;
    if (v15 < v11)
    {
      *v10 = *(a2 - 2);
      *(a2 - 2) = v17;
      v10[2] = v11;
LABEL_36:
      *(a2 - 2) = v16;
      goto LABEL_59;
    }

    *v10 = *v8;
    *v8 = v17;
    v10[2] = v15;
    v8[2] = v16;
    v36 = *(a2 - 2);
    if (v16 < v36)
    {
      *v8 = *(a2 - 2);
      *(a2 - 2) = v17;
      v8[2] = v36;
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v56 = *v8;
      v57 = v8[2];
      v58 = v57;
LABEL_62:
      v59 = v8;
      do
      {
        v60 = v59;
        v59 += 4;
      }

      while (v58 < v60[6]);
      v61 = a2;
      if (v60 == v8)
      {
        v64 = a2;
        while (v59 < v64)
        {
          v62 = v64 - 4;
          v65 = *(v64 - 2);
          v64 -= 4;
          if (v58 < v65)
          {
            goto LABEL_72;
          }
        }

        v62 = v64;
      }

      else
      {
        do
        {
          v62 = v61 - 4;
          v63 = *(v61 - 2);
          v61 -= 4;
        }

        while (v58 >= v63);
      }

LABEL_72:
      v8 = v59;
      if (v59 < v62)
      {
        v66 = v62;
        do
        {
          v67 = *v8;
          *v8 = *v66;
          *v66 = v67;
          v68 = *(v8 + 2);
          v8[2] = *(v66 + 8);
          *(v66 + 8) = v68;
          do
          {
            v69 = v8[6];
            v8 += 4;
          }

          while (v58 < v69);
          do
          {
            v70 = *(v66 - 8);
            v66 -= 16;
          }

          while (v58 >= v70);
        }

        while (v8 < v66);
      }

      if (v8 - 4 != v7)
      {
        *v7 = *(v8 - 2);
        v7[2] = *(v8 - 2);
      }

      *(v8 - 2) = v56;
      *(v8 - 2) = v57;
      if (v59 < v62)
      {
        goto LABEL_83;
      }

      v71 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geo::Triangulator<float,unsigned short>::ListHeadSorter &,std::pair<geo::Triangulator<float,unsigned short>::Node *,float> *>(v7, v8 - 4);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geo::Triangulator<float,unsigned short>::ListHeadSorter &,std::pair<geo::Triangulator<float,unsigned short>::Node *,float> *>(v8, a2);
      if (result)
      {
        a2 = v8 - 4;
        if (!v71)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v71)
      {
LABEL_83:
        result = std::__introsort<std::_ClassicAlgPolicy,geo::Triangulator<float,unsigned short>::ListHeadSorter &,std::pair<geo::Triangulator<float,unsigned short>::Node *,float> *,false>(v7, v8 - 4, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v57 = v8[2];
      v58 = v57;
      v56 = *v8;
      if (v57 < *(v8 - 2))
      {
        goto LABEL_62;
      }

      if (*(a2 - 2) >= v57)
      {
        v74 = (v8 + 4);
        do
        {
          v8 = v74;
          if (v74 >= a2)
          {
            break;
          }

          v75 = *(v74 + 8);
          v74 += 16;
        }

        while (v75 >= v57);
      }

      else
      {
        v72 = v8;
        do
        {
          v8 = v72 + 4;
          v73 = v72[6];
          v72 += 4;
        }

        while (v73 >= v57);
      }

      v76 = a2;
      if (v8 < a2)
      {
        v77 = a2;
        do
        {
          v76 = v77 - 4;
          v78 = *(v77 - 2);
          v77 -= 4;
        }

        while (v78 < v57);
      }

      while (v8 < v76)
      {
        v79 = *v8;
        *v8 = *v76;
        *v76 = v79;
        v80 = *(v8 + 2);
        v8[2] = v76[2];
        *(v76 + 2) = v80;
        do
        {
          v81 = v8[6];
          v8 += 4;
        }

        while (v81 >= v57);
        do
        {
          v82 = *(v76 - 2);
          v76 -= 4;
        }

        while (v82 < v57);
      }

      if (v8 - 4 != v7)
      {
        *v7 = *(v8 - 2);
        v7[2] = *(v8 - 2);
      }

      a4 = 0;
      *(v8 - 2) = v56;
      *(v8 - 2) = v57;
    }
  }

  v86 = v8[6];
  v87 = v8[2];
  v88 = *(a2 - 2);
  if (v87 >= v86)
  {
    if (v86 < v88)
    {
      v136 = *(v8 + 2);
      *(v8 + 2) = *(a2 - 2);
      *(a2 - 2) = v136;
      v8[6] = v88;
      *(a2 - 2) = v86;
      v137 = v8[6];
      v138 = v8[2];
      if (v138 < v137)
      {
        v139 = *v8;
        *v8 = *(v8 + 2);
        *(v8 + 2) = v139;
        v8[2] = v137;
        v8[6] = v138;
      }
    }
  }

  else
  {
    v89 = *v8;
    if (v86 >= v88)
    {
      *v8 = *(v8 + 2);
      *(v8 + 2) = v89;
      v8[2] = v86;
      v8[6] = v87;
      v149 = *(a2 - 2);
      if (v87 >= v149)
      {
        return result;
      }

      *(v8 + 2) = *(a2 - 2);
      *(a2 - 2) = v89;
      v8[6] = v149;
    }

    else
    {
      *v8 = *(a2 - 2);
      *(a2 - 2) = v89;
      v8[2] = v88;
    }

    *(a2 - 2) = v87;
  }

  return result;
}

float *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geo::Triangulator<float,unsigned short>::ListHeadSorter &,std::pair<geo::Triangulator<float,unsigned short>::Node *,float> *,0>(float *result, float *a2, float *a3, float *a4, float *a5)
{
  v5 = a2[2];
  v6 = result[2];
  v7 = a3[2];
  if (v6 >= v5)
  {
    if (v5 < v7)
    {
      v9 = *a2;
      *a2 = *a3;
      *a3 = v9;
      a2[2] = v7;
      a3[2] = v5;
      v10 = a2[2];
      v11 = result[2];
      if (v11 < v10)
      {
        v12 = *result;
        *result = *a2;
        *a2 = v12;
        result[2] = v10;
        a2[2] = v11;
      }
    }
  }

  else
  {
    v8 = *result;
    if (v5 < v7)
    {
      *result = *a3;
      *a3 = v8;
      result[2] = v7;
LABEL_9:
      a3[2] = v6;
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v8;
    result[2] = v5;
    a2[2] = v6;
    v13 = a3[2];
    if (v6 < v13)
    {
      *a2 = *a3;
      *a3 = v8;
      a2[2] = v13;
      goto LABEL_9;
    }
  }

LABEL_10:
  v14 = a4[2];
  v15 = a3[2];
  if (v15 < v14)
  {
    v16 = *a3;
    *a3 = *a4;
    *a4 = v16;
    a3[2] = v14;
    a4[2] = v15;
    v17 = a3[2];
    v18 = a2[2];
    if (v18 < v17)
    {
      v19 = *a2;
      *a2 = *a3;
      *a3 = v19;
      a2[2] = v17;
      a3[2] = v18;
      v20 = a2[2];
      v21 = result[2];
      if (v21 < v20)
      {
        v22 = *result;
        *result = *a2;
        *a2 = v22;
        result[2] = v20;
        a2[2] = v21;
      }
    }
  }

  v23 = a5[2];
  v24 = a4[2];
  if (v24 < v23)
  {
    v25 = *a4;
    *a4 = *a5;
    *a5 = v25;
    a4[2] = v23;
    a5[2] = v24;
    v26 = a4[2];
    v27 = a3[2];
    if (v27 < v26)
    {
      v28 = *a3;
      *a3 = *a4;
      *a4 = v28;
      a3[2] = v26;
      a4[2] = v27;
      v29 = a3[2];
      v30 = a2[2];
      if (v30 < v29)
      {
        v31 = *a2;
        *a2 = *a3;
        *a3 = v31;
        a2[2] = v29;
        a3[2] = v30;
        v32 = a2[2];
        v33 = result[2];
        if (v33 < v32)
        {
          v34 = *result;
          *result = *a2;
          *a2 = v34;
          result[2] = v32;
          a2[2] = v33;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geo::Triangulator<float,unsigned short>::ListHeadSorter &,std::pair<geo::Triangulator<float,unsigned short>::Node *,float> *>(float *a1, float *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = a1[6];
      v7 = a1[2];
      v8 = *(a2 - 2);
      if (v7 >= v6)
      {
        if (v6 < v8)
        {
          v18 = *(a1 + 2);
          *(a1 + 2) = *(a2 - 2);
          *(a2 - 2) = v18;
          a1[6] = v8;
          *(a2 - 2) = v6;
          v19 = a1[6];
          v20 = a1[2];
          if (v20 < v19)
          {
            v21 = *a1;
            *a1 = *(a1 + 2);
            *(a1 + 2) = v21;
            a1[2] = v19;
            a1[6] = v20;
          }
        }

        return 1;
      }

      v9 = *a1;
      if (v6 >= v8)
      {
        *a1 = *(a1 + 2);
        *(a1 + 2) = v9;
        a1[2] = v6;
        a1[6] = v7;
        v28 = *(a2 - 2);
        if (v7 >= v28)
        {
          return 1;
        }

        *(a1 + 2) = *(a2 - 2);
        *(a2 - 2) = v9;
        a1[6] = v28;
      }

      else
      {
        *a1 = *(a2 - 2);
        *(a2 - 2) = v9;
        a1[2] = v8;
      }

      *(a2 - 2) = v7;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geo::Triangulator<float,unsigned short>::ListHeadSorter &,std::pair<geo::Triangulator<float,unsigned short>::Node *,float> *,0>(a1, a1 + 4, a1 + 8, a1 + 12, a2 - 4);
      return 1;
    }

    v14 = a1[6];
    v15 = a1[2];
    v16 = a1[10];
    if (v15 >= v14)
    {
      if (v14 < v16)
      {
        v25 = *(a1 + 2);
        v26 = *(a1 + 4);
        *(a1 + 2) = v26;
        *(a1 + 4) = v25;
        a1[6] = v16;
        a1[10] = v14;
        if (v15 < v16)
        {
          v27 = *a1;
          *a1 = v26;
          *(a1 + 2) = v27;
          a1[2] = v16;
          a1[6] = v15;
        }
      }

      goto LABEL_48;
    }

    v17 = *a1;
    if (v14 >= v16)
    {
      *a1 = *(a1 + 2);
      *(a1 + 2) = v17;
      a1[2] = v14;
      a1[6] = v15;
      if (v15 >= v16)
      {
LABEL_48:
        v38 = *(a2 - 2);
        v39 = a1[10];
        if (v39 < v38)
        {
          v40 = *(a1 + 4);
          *(a1 + 4) = *(a2 - 2);
          *(a2 - 2) = v40;
          a1[10] = v38;
          *(a2 - 2) = v39;
          v41 = a1[10];
          v42 = a1[6];
          if (v42 < v41)
          {
            v43 = *(a1 + 2);
            v44 = *(a1 + 4);
            *(a1 + 2) = v44;
            *(a1 + 4) = v43;
            a1[6] = v41;
            a1[10] = v42;
            v45 = a1[2];
            if (v45 < v41)
            {
              v46 = *a1;
              *a1 = v44;
              *(a1 + 2) = v46;
              a1[2] = v41;
              a1[6] = v45;
            }
          }
        }

        return 1;
      }

      *(a1 + 2) = *(a1 + 4);
      *(a1 + 4) = v17;
      a1[6] = v16;
    }

    else
    {
      *a1 = *(a1 + 4);
      *(a1 + 4) = v17;
      a1[2] = v16;
    }

    a1[10] = v15;
    goto LABEL_48;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 2);
    v4 = a1[2];
    if (v4 < v3)
    {
      v5 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v5;
      a1[2] = v3;
      *(a2 - 2) = v4;
    }

    return 1;
  }

LABEL_13:
  v10 = a1[6];
  v11 = a1[2];
  v12 = a1[10];
  if (v11 >= v10)
  {
    if (v10 < v12)
    {
      v22 = *(a1 + 2);
      v23 = *(a1 + 4);
      *(a1 + 2) = v23;
      *(a1 + 4) = v22;
      a1[6] = v12;
      a1[10] = v10;
      if (v11 < v12)
      {
        v24 = *a1;
        *a1 = v23;
        *(a1 + 2) = v24;
        a1[2] = v12;
        a1[6] = v11;
      }
    }
  }

  else
  {
    v13 = *a1;
    if (v10 >= v12)
    {
      *a1 = *(a1 + 2);
      *(a1 + 2) = v13;
      a1[2] = v10;
      a1[6] = v11;
      if (v11 >= v12)
      {
        goto LABEL_34;
      }

      *(a1 + 2) = *(a1 + 4);
      *(a1 + 4) = v13;
      a1[6] = v12;
    }

    else
    {
      *a1 = *(a1 + 4);
      *(a1 + 4) = v13;
      a1[2] = v12;
    }

    a1[10] = v11;
  }

LABEL_34:
  v29 = a1 + 12;
  if (a1 + 12 == a2)
  {
    return 1;
  }

  v30 = 0;
  v31 = 0;
  v32 = a1 + 8;
  while (1)
  {
    v33 = v29[2];
    if (v32[2] < v33)
    {
      v34 = *v29;
      v35 = v30;
      while (1)
      {
        v36 = a1 + v35;
        *(v36 + 6) = *(a1 + v35 + 32);
        *(v36 + 14) = *(a1 + v35 + 40);
        if (v35 == -32)
        {
          break;
        }

        v35 -= 16;
        if (*(v36 + 6) >= v33)
        {
          v37 = (a1 + v35 + 48);
          goto LABEL_42;
        }
      }

      v37 = a1;
LABEL_42:
      *v37 = v34;
      v37[2] = v33;
      if (++v31 == 8)
      {
        return v29 + 4 == a2;
      }
    }

    v32 = v29;
    v30 += 16;
    v29 += 4;
    if (v29 == a2)
    {
      return 1;
    }
  }
}

void std::__introsort<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,false>(float *result, float *a2, float *a3, uint64_t a4, char a5)
{
  while (2)
  {
    v221 = a2 - 2;
    i = result;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          result = i;
          v11 = (a2 - i) >> 3;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:

                std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,0>(i, i + 2, v221, a3);
                return;
              case 4:

                std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,0>(i, i + 2, i + 4, v221, a3);
                return;
              case 5:

                std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,0>(i, i + 2, i + 4, i + 6, v221, a3);
                return;
            }
          }

          else
          {
            if (v11 < 2)
            {
              return;
            }

            if (v11 == 2)
            {
              v76 = *(a2 - 2);
              v77 = *(a2 - 1);
              v78 = a3[1];
              v79 = v77 - v78;
              v80 = *i;
              v81 = i[1];
              v82 = v81 - v78;
              v83 = v79 / (v76 - *a3);
              if (vabds_f32(v76, *a3) < 0.00000011921)
              {
                v83 = 3.4028e38;
              }

              v84 = v82 / (*i - *a3);
              if (vabds_f32(v80, *a3) >= 0.00000011921)
              {
                v85 = v84;
              }

              else
              {
                v85 = 3.4028e38;
              }

              if (v83 < v85 || v83 == v85 && (v76 < v80 || v76 == v80 && v77 < v81))
              {
                *i = v76;
                i[1] = *(a2 - 1);
                *(a2 - 2) = v80;
                *(a2 - 1) = v81;
              }

              return;
            }
          }

          if (v11 <= 23)
          {
            if (a5)
            {
              if (i != a2)
              {
                v86 = i + 2;
                if (i + 2 != a2)
                {
                  v87 = 0;
                  v88 = *a3;
                  v89 = i;
                  do
                  {
                    v90 = v89;
                    v89 = v86;
                    v91 = v90[2];
                    v92 = v90[3];
                    v93 = a3[1];
                    v94 = v92 - v93;
                    v95 = *v90;
                    v96 = v90[1];
                    v97 = v96 - v93;
                    v98 = v94 / (v91 - v88);
                    if (vabds_f32(v91, v88) < 0.00000011921)
                    {
                      v98 = 3.4028e38;
                    }

                    v99 = v97 / (*v90 - v88);
                    if (vabds_f32(v95, v88) < 0.00000011921)
                    {
                      v99 = 3.4028e38;
                    }

                    if (v98 < v99 || v98 == v99 && (v91 < v95 || v91 == v95 && v92 < v96))
                    {
                      v90[2] = v95;
                      v86[1] = v90[1];
                      v100 = i;
                      if (v90 != i)
                      {
                        v101 = v87;
                        while (1)
                        {
                          v102 = (i + v101);
                          v103 = a3[1];
                          v104 = v92 - v103;
                          v105 = *(i + v101 - 8);
                          v106 = *(i + v101 - 4);
                          v107 = v106 - v103;
                          v108 = v104 / (v91 - *a3);
                          if (vabds_f32(v91, *a3) < 0.00000011921)
                          {
                            v108 = 3.4028e38;
                          }

                          v109 = v107 / (v105 - *a3);
                          v110 = vabds_f32(v105, *a3) >= 0.00000011921 ? v109 : 3.4028e38;
                          if (v108 >= v110)
                          {
                            if (v108 != v110)
                            {
                              v100 = (i + v101);
                              goto LABEL_218;
                            }

                            if (v91 >= v105 && (v91 != v105 || v92 >= v106))
                            {
                              break;
                            }
                          }

                          v90 -= 2;
                          *v102 = v105;
                          v102[1] = v106;
                          v101 -= 8;
                          if (!v101)
                          {
                            v100 = i;
                            goto LABEL_218;
                          }
                        }

                        v100 = v90;
                      }

LABEL_218:
                      *v100 = v91;
                      v100[1] = v92;
                      v88 = *a3;
                    }

                    v86 = v89 + 2;
                    v87 += 8;
                  }

                  while (v89 + 2 != a2);
                }
              }
            }

            else if (i != a2)
            {
              v197 = i + 2;
              if (i + 2 != a2)
              {
                v198 = *a3;
                do
                {
                  v199 = result;
                  result = v197;
                  v200 = v199[2];
                  v201 = v199[3];
                  v202 = a3[1];
                  v203 = v201 - v202;
                  v204 = *v199;
                  v205 = v199[1];
                  v206 = v205 - v202;
                  v207 = v203 / (v200 - v198);
                  if (vabds_f32(v200, v198) < 0.00000011921)
                  {
                    v207 = 3.4028e38;
                  }

                  v208 = v206 / (*v199 - v198);
                  if (vabds_f32(v204, v198) < 0.00000011921)
                  {
                    v208 = 3.4028e38;
                  }

                  if (v207 < v208 || v207 == v208 && (v200 < v204 || v200 == v204 && v201 < v205))
                  {
                    do
                    {
                      v209 = v199;
                      v210 = v204;
                      v211 = *(v199 - 2);
                      v199 -= 2;
                      v204 = v211;
                      v212 = *(v199 + 3);
                      v199[4] = v210;
                      *(v199 + 5) = v212;
                      v213 = a3[1];
                      v214 = v201 - v213;
                      v215 = v211 - *a3;
                      v216 = v199[1];
                      v217 = v216 - v213;
                      v218 = v214 / (v200 - *a3);
                      if (vabds_f32(v200, *a3) < 0.00000011921)
                      {
                        v218 = 3.4028e38;
                      }

                      v219 = v217 / v215;
                      if (vabds_f32(v204, *a3) >= 0.00000011921)
                      {
                        v220 = v219;
                      }

                      else
                      {
                        v220 = 3.4028e38;
                      }
                    }

                    while (v218 < v220 || v218 == v220 && (v200 < v204 || v200 == v204 && v201 < v216));
                    *v209 = v200;
                    v209[1] = v201;
                    v198 = *a3;
                  }

                  v197 = result + 2;
                }

                while (result + 2 != a2);
              }
            }

            return;
          }

          if (!a4)
          {
            if (i != a2)
            {
              v111 = (v11 - 2) >> 1;
              v112 = v111;
              do
              {
                v113 = v112;
                if (v111 >= v112)
                {
                  v114 = (2 * v112) | 1;
                  v115 = &i[2 * v114];
                  v116 = *a3;
                  if (2 * v113 + 2 >= v11)
                  {
                    v120 = a3[1];
                  }

                  else
                  {
                    v117 = v115[2];
                    v119 = *v115;
                    v118 = v115[1];
                    v120 = a3[1];
                    v121 = v115[3];
                    v122 = (v118 - v120) / (*v115 - v116);
                    v123 = 3.4028e38;
                    if (vabds_f32(*v115, v116) < 0.00000011921)
                    {
                      v122 = 3.4028e38;
                    }

                    if (vabds_f32(v117, v116) >= 0.00000011921)
                    {
                      v123 = (v121 - v120) / (v117 - v116);
                    }

                    if (v122 < v123 || v122 == v123 && (v119 < v117 || v119 == v117 && v118 < v121))
                    {
                      v115 += 2;
                      v114 = 2 * v113 + 2;
                    }
                  }

                  v124 = &i[2 * v113];
                  v125 = *v115;
                  v126 = v115[1];
                  v127 = v126 - v120;
                  v128 = *v124;
                  v129 = v124[1];
                  v130 = v129 - v120;
                  v131 = v127 / (*v115 - v116);
                  if (vabds_f32(*v115, v116) < 0.00000011921)
                  {
                    v131 = 3.4028e38;
                  }

                  v132 = v130 / (*v124 - v116);
                  v133 = vabds_f32(v128, v116) >= 0.00000011921 ? v132 : 3.4028e38;
                  if (v131 >= v133 && (v131 != v133 || v125 >= v128 && (v125 != v128 || v126 >= v129)))
                  {
                    while (1)
                    {
                      *v124 = v125;
                      v124[1] = v115[1];
                      if (v111 < v114)
                      {
                        break;
                      }

                      v124 = v115;
                      v134 = 2 * v114;
                      v114 = (2 * v114) | 1;
                      v115 = &i[2 * v114];
                      v135 = v134 + 2;
                      v136 = *a3;
                      v137 = a3[1];
                      if (v135 < v11)
                      {
                        v138 = v115[2];
                        v140 = *v115;
                        v139 = v115[1];
                        v141 = v115[3];
                        v142 = (v139 - v137) / (*v115 - v136);
                        v143 = 3.4028e38;
                        if (vabds_f32(*v115, v136) < 0.00000011921)
                        {
                          v142 = 3.4028e38;
                        }

                        if (vabds_f32(v138, v136) >= 0.00000011921)
                        {
                          v143 = (v141 - v137) / (v138 - v136);
                        }

                        if (v142 < v143 || v142 == v143 && (v140 < v138 || v140 == v138 && v139 < v141))
                        {
                          v115 += 2;
                          v114 = v135;
                        }
                      }

                      v125 = *v115;
                      v144 = v115[1];
                      v145 = v144 - v137;
                      v146 = v129 - v137;
                      v147 = v145 / (*v115 - v136);
                      if (vabds_f32(*v115, v136) < 0.00000011921)
                      {
                        v147 = 3.4028e38;
                      }

                      v148 = v146 / (v128 - v136);
                      if (vabds_f32(v128, v136) >= 0.00000011921)
                      {
                        v149 = v148;
                      }

                      else
                      {
                        v149 = 3.4028e38;
                      }

                      if (v147 < v149 || v147 == v149 && (v125 < v128 || v125 == v128 && v144 < v129))
                      {
                        v115 = v124;
                        break;
                      }
                    }

                    *v115 = v128;
                    v115[1] = v129;
                  }
                }

                v112 = v113 - 1;
              }

              while (v113);
              do
              {
                v150 = 0;
                v152 = *i;
                v151 = *(i + 1);
                v153 = i;
                do
                {
                  v154 = v153;
                  v155 = &v153[2 * v150];
                  v153 = v155 + 2;
                  v156 = 2 * v150;
                  v150 = (2 * v150) | 1;
                  v157 = v156 + 2;
                  if (v157 < v11)
                  {
                    v159 = v155[4];
                    v158 = v155 + 4;
                    v160 = v159;
                    v162 = *(v158 - 2);
                    v161 = *(v158 - 1);
                    v163 = a3[1];
                    v164 = v161 - v163;
                    v165 = v159 - *a3;
                    v166 = v158[1];
                    v167 = v166 - v163;
                    v168 = v164 / (v162 - *a3);
                    if (vabds_f32(v162, *a3) < 0.00000011921)
                    {
                      v168 = 3.4028e38;
                    }

                    v169 = v167 / v165;
                    if (vabds_f32(v160, *a3) >= 0.00000011921)
                    {
                      v170 = v169;
                    }

                    else
                    {
                      v170 = 3.4028e38;
                    }

                    if (v168 < v170 || v168 == v170 && (v162 < v160 || v162 == v160 && v161 < v166))
                    {
                      v153 = v158;
                      v150 = v157;
                    }
                  }

                  *v154 = *v153;
                  v154[1] = v153[1];
                }

                while (v150 <= (v11 - 2) / 2);
                if (v153 == a2 - 2)
                {
                  *v153 = v152;
                  *(v153 + 1) = v151;
                }

                else
                {
                  *v153 = *(a2 - 2);
                  v153[1] = *(a2 - 1);
                  *(a2 - 2) = v152;
                  *(a2 - 1) = v151;
                  v171 = (v153 - i + 8) >> 3;
                  v172 = v171 - 2;
                  if (v171 >= 2)
                  {
                    v173 = v172 >> 1;
                    v174 = &i[2 * (v172 >> 1)];
                    v175 = *v174;
                    v176 = v174[1];
                    v177 = a3[1];
                    v178 = v176 - v177;
                    v179 = *v153;
                    v180 = v153[1];
                    v181 = v180 - v177;
                    v182 = v178 / (*v174 - *a3);
                    if (vabds_f32(*v174, *a3) < 0.00000011921)
                    {
                      v182 = 3.4028e38;
                    }

                    v183 = v181 / (*v153 - *a3);
                    v184 = vabds_f32(v179, *a3) >= 0.00000011921 ? v183 : 3.4028e38;
                    if (v182 < v184 || v182 == v184 && (v175 < v179 || (v175 == v179 ? (v185 = v176 < v180) : (v185 = 0), v185)))
                    {
                      *v153 = v175;
                      v153[1] = v174[1];
                      if (v172 >= 2)
                      {
                        while (1)
                        {
                          v187 = v173 - 1;
                          v173 = (v173 - 1) >> 1;
                          v186 = &i[2 * v173];
                          v188 = *v186;
                          v189 = a3[1];
                          LODWORD(v190) = HIDWORD(*v186);
                          v191 = v190 - v189;
                          v192 = v180 - v189;
                          v193 = v191 / (COERCE_FLOAT(*v186) - *a3);
                          if (vabds_f32(COERCE_FLOAT(*v186), *a3) < 0.00000011921)
                          {
                            v193 = 3.4028e38;
                          }

                          v194 = v192 / (v179 - *a3);
                          v195 = vabds_f32(v179, *a3) >= 0.00000011921 ? v194 : 3.4028e38;
                          if (v193 >= v195 && (v193 != v195 || *&v188 >= v179 && (*&v188 != v179 || v190 >= v180)))
                          {
                            break;
                          }

                          *v174 = v188;
                          v174 = &i[2 * v173];
                          if (v187 <= 1)
                          {
                            goto LABEL_313;
                          }
                        }
                      }

                      v186 = v174;
LABEL_313:
                      *v186 = v179;
                      v186[1] = v180;
                    }
                  }
                }

                a2 -= 2;
              }

              while (v11-- > 2);
            }

            return;
          }

          v12 = v11 >> 1;
          v13 = &i[2 * (v11 >> 1)];
          if (v11 < 0x81)
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,0>(&result[2 * (v11 >> 1)], result, v221, a3);
          }

          else
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,0>(result, &result[2 * (v11 >> 1)], v221, a3);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,0>(result + 2, v13 - 2, a2 - 4, a3);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,0>(result + 4, &result[2 * v12 + 2], a2 - 6, a3);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,0>(v13 - 2, v13, &result[2 * v12 + 2], a3);
            v14 = *result;
            *result = *v13;
            *v13 = v14;
          }

          --a4;
          v15 = *result;
          v16 = *a3;
          v17 = *result - *a3;
          if (a5)
          {
            v18 = result[1];
            v19 = a3[1];
            v20 = vabds_f32(v15, v16);
            v21 = (v18 - v19) / v17;
            break;
          }

          v23 = *(result - 2);
          v22 = *(result - 1);
          v19 = a3[1];
          v18 = result[1];
          v24 = vabds_f32(v23, v16) >= 0.00000011921 ? (v22 - v19) / (v23 - v16) : 3.4028e38;
          v20 = vabds_f32(v15, v16);
          v21 = (v18 - v19) / v17;
          v25 = v20 >= 0.00000011921 ? (v18 - v19) / v17 : 3.4028e38;
          if (v24 < v25 || v24 == v25 && (v23 < v15 || v23 == v15 && v22 < v18))
          {
            break;
          }

          v51 = *(a2 - 2);
          v50 = *(a2 - 1);
          v52 = (v50 - v19) / (v51 - v16);
          if (vabds_f32(v51, v16) < 0.00000011921)
          {
            v52 = 3.4028e38;
          }

          if (v25 < v52 || v25 == v52 && (v15 < v51 || v15 == v51 && v18 < v50))
          {
            v53 = result[2];
            v54 = result[3];
            i = result + 2;
            v55 = (v54 - v19) / (v53 - v16);
            if (vabds_f32(v53, v16) < 0.00000011921)
            {
              v55 = 3.4028e38;
            }

            if (v25 >= v55)
            {
              v56 = result + 5;
              do
              {
                if (v25 == v55)
                {
                  if (v15 < v53)
                  {
                    goto LABEL_116;
                  }

                  if (v15 == v53 && v18 < v54)
                  {
                    break;
                  }
                }

                i += 2;
                v53 = *(v56 - 1);
                v54 = *v56;
                v55 = (*v56 - v19) / (v53 - v16);
                if (vabds_f32(v53, v16) < 0.00000011921)
                {
                  v55 = 3.4028e38;
                }

                v56 += 2;
              }

              while (v25 >= v55);
              i = v56 - 3;
            }
          }

          else
          {
            for (i = result + 2; i < a2; i += 2)
            {
              v74 = *i;
              v73 = i[1];
              v75 = (v73 - v19) / (*i - v16);
              if (vabds_f32(*i, v16) < 0.00000011921)
              {
                v75 = 3.4028e38;
              }

              if (v25 < v75 || v25 == v75 && (v15 < v74 || v15 == v74 && v18 < v73))
              {
                break;
              }
            }
          }

LABEL_116:
          j = a2;
          if (i < a2)
          {
            for (j = a2 - 2; ; j -= 2)
            {
              v59 = (v50 - v19) / (v51 - v16);
              if (vabds_f32(v51, v16) < 0.00000011921)
              {
                v59 = 3.4028e38;
              }

              if (v25 >= v59 && (v25 != v59 || v15 >= v51 && (v15 != v51 || v18 >= v50)))
              {
                break;
              }

              v51 = *(j - 2);
              v50 = *(j - 1);
            }
          }

          if (i < j)
          {
            v60 = *i;
            v61 = *j;
            do
            {
              v62 = *(i + 1);
              *i = v61;
              i[1] = j[1];
              *j = v60;
              *(j + 1) = v62;
              v63 = *a3;
              v64 = a3[1];
              v65 = 3.4028e38;
              if (vabds_f32(v15, *a3) >= 0.00000011921)
              {
                v66 = (v18 - v64) / (v15 - *a3);
              }

              else
              {
                v66 = 3.4028e38;
              }

              v60 = i[2];
              v68 = i[3];
              v67 = i + 2;
              if (vabds_f32(v60, v63) >= 0.00000011921)
              {
                v65 = (v68 - v64) / (v60 - v63);
              }

              if (v66 >= v65)
              {
                v69 = i + 5;
                do
                {
                  if (v66 == v65)
                  {
                    if (v15 < v60)
                    {
                      goto LABEL_134;
                    }

                    if (v15 == v60 && v18 < v68)
                    {
                      break;
                    }
                  }

                  v67 += 2;
                  v60 = *(v69 - 1);
                  v68 = *v69;
                  v65 = (*v69 - v64) / (v60 - v63);
                  if (vabds_f32(v60, v63) < 0.00000011921)
                  {
                    v65 = 3.4028e38;
                  }

                  v69 += 2;
                }

                while (v66 >= v65);
                i = v69 - 3;
              }

              else
              {
LABEL_134:
                i = v67;
              }

              do
              {
                v61 = *(j - 2);
                v71 = *(j - 1);
                j -= 2;
                v72 = (v71 - v64) / (v61 - v63);
                if (vabds_f32(v61, v63) < 0.00000011921)
                {
                  v72 = 3.4028e38;
                }
              }

              while (v66 < v72 || v66 == v72 && (v15 < v61 || v15 == v61 && v18 < v71));
            }

            while (i < j);
          }

          if (i - 2 != result)
          {
            *result = *(i - 2);
            result[1] = *(i - 1);
          }

          a5 = 0;
          *(i - 2) = v15;
          *(i - 1) = v18;
        }

        if (v20 < 0.00000011921)
        {
          v21 = 3.4028e38;
        }

        for (k = result + 2; ; k += 2)
        {
          v27 = *k;
          v28 = k[1];
          v29 = (v28 - v19) / (*k - v16);
          if (vabds_f32(*k, v16) < 0.00000011921)
          {
            v29 = 3.4028e38;
          }

          if (v29 >= v21 && (v29 != v21 || v27 >= v15 && (v27 != v15 || v28 >= v18)))
          {
            break;
          }
        }

        if (k - 2 == result)
        {
          v33 = a2;
          if (k < a2)
          {
            v35 = *(a2 - 2);
            v36 = *(a2 - 1);
            v37 = (v36 - v19) / (v35 - v16);
            if (vabds_f32(v35, v16) < 0.00000011921)
            {
              v37 = 3.4028e38;
            }

            v33 = a2 - 2;
            if (v37 >= v21)
            {
              v33 = a2 - 2;
              do
              {
                if (v37 == v21 && (v35 < v15 || v35 == v15 && v36 < v18) || k >= v33)
                {
                  break;
                }

                v35 = *(v33 - 2);
                v36 = *(v33 - 1);
                v33 -= 2;
                v37 = (v36 - v19) / (v35 - v16);
                if (vabds_f32(v35, v16) < 0.00000011921)
                {
                  v37 = 3.4028e38;
                }
              }

              while (v37 >= v21);
            }
          }
        }

        else
        {
          v30 = *(a2 - 2);
          v31 = *(a2 - 1);
          v32 = (v31 - v19) / (v30 - v16);
          if (vabds_f32(v30, v16) < 0.00000011921)
          {
            v32 = 3.4028e38;
          }

          v33 = a2 - 2;
          while (v32 >= v21)
          {
            if (v32 == v21)
            {
              if (v30 < v15)
              {
                break;
              }

              if (v30 == v15 && v31 < v18)
              {
                break;
              }
            }

            v30 = *(v33 - 2);
            v31 = *(v33 - 1);
            v33 -= 2;
            v32 = (v31 - v19) / (v30 - v16);
            if (vabds_f32(v30, v16) < 0.00000011921)
            {
              v32 = 3.4028e38;
            }
          }
        }

        i = k;
        if (k < v33)
        {
          v38 = *v33;
          i = k;
          v39 = v33;
          do
          {
            v40 = *(i + 1);
            *i = v38;
            i[1] = v39[1];
            *v39 = v27;
            *(v39 + 1) = v40;
            v41 = *a3;
            v42 = a3[1];
            if (vabds_f32(v15, *a3) >= 0.00000011921)
            {
              v43 = (v18 - v42) / (v15 - *a3);
            }

            else
            {
              v43 = 3.4028e38;
            }

            do
            {
              v27 = i[2];
              v44 = i[3];
              i += 2;
              v45 = (v44 - v42) / (v27 - v41);
              if (vabds_f32(v27, v41) < 0.00000011921)
              {
                v45 = 3.4028e38;
              }
            }

            while (v45 < v43 || v45 == v43 && (v27 < v15 || v27 == v15 && v44 < v18));
            v38 = *(v39 - 2);
            v46 = *(v39 - 1);
            v39 -= 2;
            v47 = (v46 - v42) / (v38 - v41);
            if (vabds_f32(v38, v41) < 0.00000011921)
            {
              v47 = 3.4028e38;
            }

            while (v47 >= v43)
            {
              if (v47 == v43)
              {
                if (v38 < v15)
                {
                  break;
                }

                if (v38 == v15 && v46 < v18)
                {
                  break;
                }
              }

              v38 = *(v39 - 2);
              v46 = *(v39 - 1);
              v39 -= 2;
              v47 = (v46 - v42) / (v38 - v41);
              if (vabds_f32(v38, v41) < 0.00000011921)
              {
                v47 = 3.4028e38;
              }
            }
          }

          while (i < v39);
        }

        if (i - 2 != result)
        {
          *result = *(i - 2);
          result[1] = *(i - 1);
        }

        *(i - 2) = v15;
        *(i - 1) = v18;
        if (k >= v33)
        {
          break;
        }

LABEL_94:
        std::__introsort<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,false>(result, i - 2, a3, a4, a5 & 1);
        a5 = 0;
      }

      v49 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*>(result, i - 2, a3);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*>(i, a2, a3))
      {
        break;
      }

      if (!v49)
      {
        goto LABEL_94;
      }
    }

    a2 = i - 2;
    if (!v49)
    {
      continue;
    }

    break;
  }
}

float *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,0>(float *result, float *a2, float *a3, float *a4)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *a4;
  v7 = a4[1];
  v8 = *result;
  v9 = result[1];
  v10 = (v5 - v7) / (*a2 - *a4);
  if (vabds_f32(*a2, *a4) < 0.00000011921)
  {
    v10 = 3.4028e38;
  }

  if (vabds_f32(v8, v6) >= 0.00000011921)
  {
    v11 = (v9 - v7) / (*result - *a4);
  }

  else
  {
    v11 = 3.4028e38;
  }

  if (v10 < v11 || v10 == v11 && (v4 < v8 || v4 == v8 && v5 < v9))
  {
    v12 = *a3;
    v13 = a3[1];
    v14 = (v13 - v7) / (*a3 - v6);
    v15 = vabds_f32(*a3, v6) < 0.00000011921;
    v16 = 3.4028e38;
    if (!v15)
    {
      v16 = v14;
    }

    if (v16 < v10 || v16 == v10 && (v12 < v4 || v12 == v4 && v13 < v5))
    {
      *result = v12;
      result[1] = a3[1];
LABEL_48:
      *a3 = v8;
      a3[1] = v9;
      return result;
    }

    *result = v4;
    result[1] = a2[1];
    *a2 = v8;
    a2[1] = v9;
    v31 = *a3;
    v32 = a3[1];
    v33 = a4[1];
    v34 = v32 - v33;
    v35 = v9 - v33;
    v36 = v34 / (*a3 - *a4);
    if (vabds_f32(*a3, *a4) < 0.00000011921)
    {
      v36 = 3.4028e38;
    }

    v37 = v35 / (v8 - *a4);
    if (vabds_f32(v8, *a4) >= 0.00000011921)
    {
      v38 = v37;
    }

    else
    {
      v38 = 3.4028e38;
    }

    if (v36 < v38 || v36 == v38 && (v31 < v8 || v31 == v8 && v32 < v9))
    {
      *a2 = v31;
      a2[1] = a3[1];
      goto LABEL_48;
    }
  }

  else
  {
    v17 = *a3;
    v18 = a3[1];
    v19 = (v18 - v7) / (*a3 - v6);
    v15 = vabds_f32(*a3, v6) < 0.00000011921;
    v20 = 3.4028e38;
    if (!v15)
    {
      v20 = v19;
    }

    if (v20 < v10 || v20 == v10 && (v17 < v4 || v17 == v4 && v18 < v5))
    {
      *a2 = v17;
      a2[1] = a3[1];
      *a3 = v4;
      a3[1] = v5;
      v21 = *a2;
      v22 = a2[1];
      v23 = a4[1];
      v24 = v22 - v23;
      v25 = *result;
      v26 = result[1];
      v27 = v26 - v23;
      v28 = v24 / (*a2 - *a4);
      if (vabds_f32(*a2, *a4) < 0.00000011921)
      {
        v28 = 3.4028e38;
      }

      v29 = v27 / (*result - *a4);
      if (vabds_f32(v25, *a4) >= 0.00000011921)
      {
        v30 = v29;
      }

      else
      {
        v30 = 3.4028e38;
      }

      if (v28 < v30 || v28 == v30 && (v21 < v25 || v21 == v25 && v22 < v26))
      {
        *result = v21;
        result[1] = a2[1];
        *a2 = v25;
        a2[1] = v26;
      }
    }
  }

  return result;
}

float std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,0>(float *a1, float *a2, float *a3, float *a4, float *a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,0>(a1, a2, a3, a5);
  result = *a4;
  v11 = a4[1];
  v12 = a5[1];
  v13 = v11 - v12;
  v14 = *a3;
  v15 = a3[1];
  v16 = v15 - v12;
  v17 = v13 / (*a4 - *a5);
  if (vabds_f32(*a4, *a5) < 0.00000011921)
  {
    v17 = 3.4028e38;
  }

  v18 = v16 / (*a3 - *a5);
  if (vabds_f32(v14, *a5) >= 0.00000011921)
  {
    v19 = v18;
  }

  else
  {
    v19 = 3.4028e38;
  }

  if (v17 < v19 || v17 == v19 && (result < v14 || result == v14 && v11 < v15))
  {
    *a3 = result;
    a3[1] = a4[1];
    *a4 = v14;
    a4[1] = v15;
    result = *a3;
    v20 = a3[1];
    v21 = a5[1];
    v22 = v20 - v21;
    v23 = *a2;
    v24 = a2[1];
    v25 = v24 - v21;
    v26 = v22 / (*a3 - *a5);
    if (vabds_f32(*a3, *a5) < 0.00000011921)
    {
      v26 = 3.4028e38;
    }

    v27 = v25 / (*a2 - *a5);
    if (vabds_f32(v23, *a5) >= 0.00000011921)
    {
      v28 = v27;
    }

    else
    {
      v28 = 3.4028e38;
    }

    if (v26 < v28 || v26 == v28 && (result < v23 || result == v23 && v20 < v24))
    {
      *a2 = result;
      a2[1] = a3[1];
      *a3 = v23;
      a3[1] = v24;
      result = *a2;
      v29 = a2[1];
      v30 = a5[1];
      v31 = v29 - v30;
      v32 = *a1;
      v33 = a1[1];
      v34 = v33 - v30;
      v35 = v31 / (*a2 - *a5);
      if (vabds_f32(*a2, *a5) < 0.00000011921)
      {
        v35 = 3.4028e38;
      }

      v36 = v34 / (*a1 - *a5);
      if (vabds_f32(v32, *a5) >= 0.00000011921)
      {
        v37 = v36;
      }

      else
      {
        v37 = 3.4028e38;
      }

      if (v35 < v37 || v35 == v37 && (result < v32 || result == v32 && v29 < v33))
      {
        *a1 = result;
        result = a2[1];
        a1[1] = result;
        *a2 = v32;
        a2[1] = v33;
      }
    }
  }

  return result;
}

float std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,0>(float *a1, float *a2, float *a3, float *a4, float *a5, float *a6)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,0>(a1, a2, a3, a4, a6);
  result = *a5;
  v13 = a5[1];
  v14 = a6[1];
  v15 = v13 - v14;
  v16 = *a4;
  v17 = a4[1];
  v18 = v17 - v14;
  v19 = v15 / (*a5 - *a6);
  if (vabds_f32(*a5, *a6) < 0.00000011921)
  {
    v19 = 3.4028e38;
  }

  v20 = v18 / (*a4 - *a6);
  if (vabds_f32(v16, *a6) >= 0.00000011921)
  {
    v21 = v20;
  }

  else
  {
    v21 = 3.4028e38;
  }

  if (v19 < v21 || v19 == v21 && (result < v16 || result == v16 && v13 < v17))
  {
    *a4 = result;
    a4[1] = a5[1];
    *a5 = v16;
    a5[1] = v17;
    result = *a4;
    v22 = a4[1];
    v23 = a6[1];
    v24 = v22 - v23;
    v25 = *a3;
    v26 = a3[1];
    v27 = v26 - v23;
    v28 = v24 / (*a4 - *a6);
    if (vabds_f32(*a4, *a6) < 0.00000011921)
    {
      v28 = 3.4028e38;
    }

    v29 = v27 / (*a3 - *a6);
    if (vabds_f32(v25, *a6) >= 0.00000011921)
    {
      v30 = v29;
    }

    else
    {
      v30 = 3.4028e38;
    }

    if (v28 < v30 || v28 == v30 && (result < v25 || result == v25 && v22 < v26))
    {
      *a3 = result;
      a3[1] = a4[1];
      *a4 = v25;
      a4[1] = v26;
      result = *a3;
      v31 = a3[1];
      v32 = a6[1];
      v33 = v31 - v32;
      v34 = *a2;
      v35 = a2[1];
      v36 = v35 - v32;
      v37 = v33 / (*a3 - *a6);
      if (vabds_f32(*a3, *a6) < 0.00000011921)
      {
        v37 = 3.4028e38;
      }

      v38 = v36 / (*a2 - *a6);
      if (vabds_f32(v34, *a6) >= 0.00000011921)
      {
        v39 = v38;
      }

      else
      {
        v39 = 3.4028e38;
      }

      if (v37 < v39 || v37 == v39 && (result < v34 || result == v34 && v31 < v35))
      {
        *a2 = result;
        a2[1] = a3[1];
        *a3 = v34;
        a3[1] = v35;
        result = *a2;
        v40 = a2[1];
        v41 = a6[1];
        v42 = v40 - v41;
        v43 = *a1;
        v44 = a1[1];
        v45 = v44 - v41;
        v46 = v42 / (*a2 - *a6);
        if (vabds_f32(*a2, *a6) < 0.00000011921)
        {
          v46 = 3.4028e38;
        }

        v47 = v45 / (*a1 - *a6);
        if (vabds_f32(v43, *a6) >= 0.00000011921)
        {
          v48 = v47;
        }

        else
        {
          v48 = 3.4028e38;
        }

        if (v46 < v48 || v46 == v48 && (result < v43 || result == v43 && v40 < v44))
        {
          *a1 = result;
          result = a2[1];
          a1[1] = result;
          *a2 = v43;
          a2[1] = v44;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*>(float *a1, float *a2, float *a3)
{
  v6 = (a2 - a1) >> 3;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,0>(a1, a1 + 2, a2 - 2, a3);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,0>(a1, a1 + 2, a1 + 4, a2 - 2, a3);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
        return 1;
    }

    goto LABEL_20;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 != 2)
  {
LABEL_20:
    v18 = a1 + 4;
    std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,0>(a1, a1 + 2, a1 + 4, a3);
    v19 = a1 + 6;
    if (a1 + 6 != a2)
    {
      v20 = 0;
      v21 = 0;
      v22 = *a3;
      while (1)
      {
        v23 = *v19;
        v24 = v19[1];
        v25 = a3[1];
        v26 = v24 - v25;
        v27 = *v18;
        v28 = v18[1];
        v29 = v28 - v25;
        v30 = v26 / (*v19 - v22);
        if (vabds_f32(*v19, v22) < 0.00000011921)
        {
          v30 = 3.4028e38;
        }

        v31 = v29 / (*v18 - v22);
        if (vabds_f32(v27, v22) < 0.00000011921)
        {
          v31 = 3.4028e38;
        }

        if (v30 < v31 || v30 == v31 && (v23 < v27 || v23 == v27 && v24 < v28))
        {
          *v19 = v27;
          v19[1] = v18[1];
          v32 = v20;
          while (1)
          {
            v33 = (a1 + v32);
            v34 = a3[1];
            v35 = v24 - v34;
            v36 = *(a1 + v32 + 8);
            v37 = *(a1 + v32 + 12);
            v38 = v37 - v34;
            v39 = v35 / (v23 - *a3);
            if (vabds_f32(v23, *a3) < 0.00000011921)
            {
              v39 = 3.4028e38;
            }

            v40 = v38 / (v36 - *a3);
            v41 = vabds_f32(v36, *a3) >= 0.00000011921 ? v40 : 3.4028e38;
            if (v39 >= v41)
            {
              if (v39 != v41)
              {
                goto LABEL_44;
              }

              if (v23 >= v36 && (v23 != v36 || v24 >= v37))
              {
                break;
              }
            }

            v18 -= 2;
            v33[4] = v36;
            v33[5] = v37;
            v32 -= 8;
            if (v32 == -16)
            {
              v18 = a1;
              goto LABEL_44;
            }
          }

          v18 = (a1 + v32 + 16);
LABEL_44:
          *v18 = v23;
          v18[1] = v24;
          if (++v21 == 8)
          {
            return v19 + 2 == a2;
          }

          v22 = *a3;
        }

        v18 = v19;
        v20 += 8;
        v19 += 2;
        if (v19 == a2)
        {
          return 1;
        }
      }
    }

    return 1;
  }

  v7 = *(a2 - 2);
  v8 = *(a2 - 1);
  v9 = a3[1];
  v10 = v8 - v9;
  v11 = *a1;
  v12 = a1[1];
  v13 = v12 - v9;
  v14 = v10 / (v7 - *a3);
  if (vabds_f32(v7, *a3) < 0.00000011921)
  {
    v14 = 3.4028e38;
  }

  v15 = v13 / (*a1 - *a3);
  if (vabds_f32(v11, *a3) >= 0.00000011921)
  {
    v16 = v15;
  }

  else
  {
    v16 = 3.4028e38;
  }

  if (v14 < v16)
  {
    goto LABEL_14;
  }

  if (v14 != v16)
  {
    return 1;
  }

  if (v7 < v11 || (result = 1, v7 == v11) && v8 < v12)
  {
LABEL_14:
    *a1 = v7;
    a1[1] = *(a2 - 1);
    *(a2 - 2) = v11;
    *(a2 - 1) = v12;
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<md::DaVinciGroundTileData::BuildingBatchType,std::vector<md::DaVinciGroundTileData::BuildingBatch>>,std::__unordered_map_hasher<md::DaVinciGroundTileData::BuildingBatchType,std::__hash_value_type<md::DaVinciGroundTileData::BuildingBatchType,std::vector<md::DaVinciGroundTileData::BuildingBatch>>,md::DaVinciGroundTileData::BuildingBatchTypeHash,std::equal_to<md::DaVinciGroundTileData::BuildingBatchType>,true>,std::__unordered_map_equal<md::DaVinciGroundTileData::BuildingBatchType,std::__hash_value_type<md::DaVinciGroundTileData::BuildingBatchType,std::vector<md::DaVinciGroundTileData::BuildingBatch>>,std::equal_to<md::DaVinciGroundTileData::BuildingBatchType>,md::DaVinciGroundTileData::BuildingBatchTypeHash,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundTileData::BuildingBatchType,std::vector<md::DaVinciGroundTileData::BuildingBatch>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v6 = (v2 + 32);
      std::vector<md::DaVinciGroundTileData::BuildingBatch>::__destroy_vector::operator()[abi:nn200100](&v6);
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

void md::DaVinciGroundTileData::_populateBuildingLoops(float *a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned __int16 a5, uint64_t a6, uint64_t a7, void **a8)
{
  md::DaVinciGroundTileData::_roundLoopCorners(v32, a1, a2, a4, a5);
  v14 = *a7;
  if (*a7)
  {
    *(a7 + 8) = v14;
    operator delete(v14);
    *a7 = 0;
    *(a7 + 8) = 0;
    *(a7 + 16) = 0;
  }

  *a7 = *v32;
  *(a7 + 16) = v33;
  v15 = *(a7 + 24);
  if (v15)
  {
    *(a7 + 32) = v15;
    operator delete(v15);
    *(a7 + 24) = 0;
    *(a7 + 32) = 0;
    *(a7 + 40) = 0;
  }

  *(a7 + 24) = *__p;
  *(a7 + 40) = v35;
  v16 = *(a3 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((a8[2] - *a8) >> 4) < v16)
  {
    __p[1] = a8;
    std::__allocate_at_least[abi:nn200100]<std::allocator<md::PolygonLoop>>(v16);
  }

  if (*(a3 + 16))
  {
    v17 = 0;
    v18 = (a6 + 4);
    do
    {
      md::DaVinciGroundTileData::_roundLoopCorners(v32, a1, a2, *(v18 - 1), *v18);
      v19 = a8[1];
      v20 = a8[2];
      if (v19 >= v20)
      {
        v21 = 0xAAAAAAAAAAAAAAABLL * ((v19 - *a8) >> 4);
        v22 = v21 + 1;
        if (v21 + 1 > 0x555555555555555)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v23 = 0xAAAAAAAAAAAAAAABLL * ((v20 - *a8) >> 4);
        if (2 * v23 > v22)
        {
          v22 = 2 * v23;
        }

        if (v23 >= 0x2AAAAAAAAAAAAAALL)
        {
          v24 = 0x555555555555555;
        }

        else
        {
          v24 = v22;
        }

        v39 = a8;
        if (v24)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<md::PolygonLoop>>(v24);
        }

        v25 = 48 * v21;
        v36 = 0;
        v37 = v25;
        *(&v38 + 1) = 0;
        *v25 = *v32;
        *(v25 + 16) = v33;
        v32[0] = 0;
        v32[1] = 0;
        v33 = 0;
        *(v25 + 24) = *__p;
        *(v25 + 40) = v35;
        __p[1] = 0;
        v35 = 0;
        __p[0] = 0;
        *&v38 = 48 * v21 + 48;
        v26 = a8[1];
        v27 = (48 * v21 + *a8 - v26);
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::PolygonLoop>,md::PolygonLoop*>(*a8, v26, (v25 + *a8 - v26));
        v28 = *a8;
        *a8 = v27;
        v29 = a8[2];
        v31 = v38;
        *(a8 + 1) = v38;
        *&v38 = v28;
        *(&v38 + 1) = v29;
        v36 = v28;
        v37 = v28;
        std::__split_buffer<md::PolygonLoop>::~__split_buffer(&v36);
        v30 = __p[0];
        a8[1] = v31;
        if (v30)
        {
          operator delete(v30);
        }
      }

      else
      {
        *v19 = *v32;
        *(v19 + 2) = v33;
        v32[1] = 0;
        v33 = 0;
        v32[0] = 0;
        *(v19 + 24) = *__p;
        *(v19 + 5) = v35;
        a8[1] = v19 + 48;
      }

      if (v32[0])
      {
        operator delete(v32[0]);
      }

      v18 += 4;
      ++v17;
    }

    while (v17 < *(a3 + 16));
  }
}