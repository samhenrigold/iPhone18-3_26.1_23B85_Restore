double md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::_updateLayerDataInfo(uint64_t a1, md::SceneContext *a2)
{
  std::set<gdc::LayerDataWithWorld>::swap[abi:nn200100]((a1 + 128), a1 + 152);
  v4 = (a1 + 136);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 136));
  *(a1 + 128) = a1 + 136;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v5 = *(a1 + 320);
  v6 = *(a1 + 328);
  while (v5 != v6)
  {
    v7 = *v5++;
    v8 = md::SceneContext::layerDataInView(a2, v7);
    std::set<gdc::LayerDataWithWorld>::insert[abi:nn200100]<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>((a1 + 128), *v8, v8 + 1);
  }

  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 184));
  *(a1 + 176) = a1 + 184;
  v9 = (a1 + 176);
  *(a1 + 192) = 0;
  *(a1 + 184) = 0;
  v10 = (a1 + 208);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 208));
  *(a1 + 200) = a1 + 208;
  v11 = (a1 + 200);
  *v10 = 0;
  v11[2] = 0;
  v12 = *(v11 - 6);
  v13 = *v9;
  v22 = *(v11 - 9);
  v20 = v12;
  v21 = v4;
  v18.n128_u64[1] = v13;
  v19 = v11 - 5;
  v18.n128_u64[0] = v9;
  std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::insert_iterator<std::set<gdc::LayerDataWithWorld>> &>(v17, &v22, &v21, &v20, &v19, &v18);
  v14 = *(v11 - 9);
  v15 = *v11;
  v22 = *(v11 - 6);
  v20 = v14;
  v21 = v11 - 5;
  v18.n128_u64[1] = v15;
  v19 = v4;
  v18.n128_u64[0] = v11;
  *&result = std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::insert_iterator<std::set<gdc::LayerDataWithWorld>> &>(v17, &v22, &v21, &v20, &v19, &v18).n128_u64[0];
  return result;
}

void md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::updateWithContext(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v4 = md::LayoutContext::get<md::CameraContext>(*(a3 + 8));
  v6 = *a2;
  v5 = a2[1];
  if (v6 != v5)
  {
    v7 = v4;
    v8 = v4 + 808;
    do
    {
      v9 = 0;
      v10 = *v6;
      v11 = v7[471] * v7[173] / (v7[171] * (*(*v6 + 80) - *(*v6 + 64)));
      *(*v6 + 376) = v11;
      v12 = v8;
      do
      {
        v13 = 0;
        v14 = v10 + 96;
        do
        {
          v15 = 0;
          v16 = 0.0;
          v17 = v12;
          do
          {
            v18 = *v17;
            v17 += 4;
            v16 = v16 + *(v14 + v15) * v18;
            v15 += 8;
          }

          while (v15 != 32);
          *&v26[4 * v13++ + v9] = v16;
          v14 += 32;
        }

        while (v13 != 4);
        ++v9;
        ++v12;
      }

      while (v9 != 4);
      v19 = 0;
      v20 = v26;
      do
      {
        v22 = *v20;
        v21 = v20[1];
        v20 += 2;
        v28[v19++] = vcvt_hight_f32_f64(vcvt_f32_f64(v22), v21);
      }

      while (v19 != 4);
      ggl::DataAccess<ggl::Tile::View>::DataAccess(v26, *(v10 + 224), 1);
      v23 = v27;
      v24 = v28[1];
      *v27 = v28[0];
      v23[1] = v24;
      v25 = v28[3];
      v23[2] = v28[2];
      v23[3] = v25;
      *(v23 + 16) = *(v10 + 376);
      ggl::BufferMemory::~BufferMemory(v26);
      ++v6;
    }

    while (v6 != v5);
  }
}

uint64_t md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::determineZRangeMapData(uint64_t result, md::SceneContext *this)
{
  *(result + 48) = 255;
  if (this)
  {
    v2 = result;
    v3 = *(result + 320);
    v4 = *(result + 328);
    if (v3 == v4)
    {
      goto LABEL_17;
    }

    do
    {
      result = md::SceneContext::layerDataInView(this, *v3);
      v6 = (result + 8);
      v7 = *result;
      if (*result != result + 8)
      {
        v8 = *(v2 + 48);
        v9 = *(v2 + 49);
        do
        {
          FillRect = grl::IconMetricsRenderResult::getFillRect(v7[4]);
          Int32 = gdc::ResourceKey::getInt32(*(FillRect + 16), 2u);
          if (v8 >= Int32)
          {
            v8 = Int32;
          }

          *(v2 + 48) = v8;
          v12 = grl::IconMetricsRenderResult::getFillRect(v7[4]);
          result = gdc::ResourceKey::getInt32(*(v12 + 16), 2u);
          if (v9 <= result)
          {
            v9 = result;
          }

          *(v2 + 49) = v9;
          v13 = v7[1];
          if (v13)
          {
            do
            {
              v14 = v13;
              v13 = *v13;
            }

            while (v13);
          }

          else
          {
            do
            {
              v14 = v7[2];
              v15 = *v14 == v7;
              v7 = v14;
            }

            while (!v15);
          }

          v7 = v14;
        }

        while (v14 != v6);
      }

      ++v3;
    }

    while (v3 != v4);
    if (*(v2 + 49) < *(v2 + 48))
    {
LABEL_17:
      *(v2 + 48) = 0;
    }
  }

  return result;
}

uint64_t md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::updateVisibleMapData(void *a1, uint64_t a2)
{
  v2 = a2;
  v105 = *MEMORY[0x1E69E9840];
  v4 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
  (*(*a1 + 144))(a1, v4);
  if ((*(*a1 + 200))(a1))
  {
    goto LABEL_127;
  }

  v5 = md::LayoutContext::get<md::SceneContext>(*(v2 + 8));
  if (!v5)
  {
    goto LABEL_127;
  }

  v96 = v2;
  v95 = v5;
  (*(*a1 + 160))(a1);
  v6 = a1[22];
  if (v6 == a1 + 23)
  {
    goto LABEL_65;
  }

  do
  {
    FillRect = grl::IconMetricsRenderResult::getFillRect(v6[4]);
    v8 = a1[12];
    if (!*&v8)
    {
      goto LABEL_59;
    }

    v9 = FillRect;
    v10 = *(FillRect + 104);
    v11 = vcnt_s8(v8);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v13 = *(FillRect + 104);
      if (v10 >= *&v8)
      {
        v13 = v10 % *&v8;
      }
    }

    else
    {
      v13 = (*&v8 - 1) & v10;
    }

    v14 = *(a1[11] + 8 * v13);
    if (!v14)
    {
      goto LABEL_59;
    }

    v15 = *v14;
    if (!*v14)
    {
      goto LABEL_59;
    }

    while (1)
    {
      v16 = *(v15 + 1);
      if (v16 == v10)
      {
        break;
      }

      if (v12 > 1)
      {
        if (v16 >= *&v8)
        {
          v16 %= *&v8;
        }
      }

      else
      {
        v16 &= *&v8 - 1;
      }

      if (v16 != v13)
      {
        goto LABEL_59;
      }

LABEL_19:
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_59;
      }
    }

    if (!gdc::LayerDataRequestKey::operator==(v15 + 16, v9))
    {
      goto LABEL_19;
    }

    v18 = a1[34];
    v17 = a1[35];
    if (v18 != v17)
    {
      while (*v18 != *(v15 + 16))
      {
        v18 += 8;
        if (v18 == v17)
        {
          v18 = a1[35];
          break;
        }
      }
    }

    v19 = v17 - (v18 + 8);
    if (v17 != v18 + 8)
    {
      memmove(v18, v18 + 8, v17 - (v18 + 8));
    }

    a1[35] = &v18[v19];
    v20 = *(v15 + 16);
    if (v20 && a1[30])
    {
      (**v20)(*(v15 + 16));
      *v20 = a1[33];
      a1[33] = v20;
    }

    v21 = a1[12];
    v22 = *(v15 + 1);
    v23 = vcnt_s8(v21);
    v23.i16[0] = vaddlv_u8(v23);
    if (v23.u32[0] > 1uLL)
    {
      if (v22 >= *&v21)
      {
        v22 %= *&v21;
      }
    }

    else
    {
      v22 &= *&v21 - 1;
    }

    v24 = a1[11];
    v25 = *(v24 + 8 * v22);
    do
    {
      v26 = v25;
      v25 = *v25;
    }

    while (v25 != v15);
    if (v26 == (a1 + 13))
    {
      goto LABEL_47;
    }

    v27 = *(v26 + 1);
    if (v23.u32[0] > 1uLL)
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

    if (v27 != v22)
    {
LABEL_47:
      if (!*v15)
      {
        goto LABEL_48;
      }

      v28 = *(*v15 + 8);
      if (v23.u32[0] > 1uLL)
      {
        if (v28 >= *&v21)
        {
          v28 %= *&v21;
        }
      }

      else
      {
        v28 &= *&v21 - 1;
      }

      if (v28 != v22)
      {
LABEL_48:
        *(v24 + 8 * v22) = 0;
      }
    }

    v29 = *v15;
    if (*v15)
    {
      v30 = *(v29 + 1);
      if (v23.u32[0] > 1uLL)
      {
        if (v30 >= *&v21)
        {
          v30 %= *&v21;
        }
      }

      else
      {
        v30 &= *&v21 - 1;
      }

      if (v30 != v22)
      {
        *(a1[11] + 8 * v30) = v26;
        v29 = *v15;
      }
    }

    *v26 = v29;
    *v15 = 0;
    --a1[14];
    v31 = *(v15 + 4);
    if (v31 != *(v15 + 6))
    {
      free(v31);
    }

    operator delete(v15);
LABEL_59:
    v32 = v6[1];
    if (v32)
    {
      do
      {
        v33 = v32;
        v32 = *v32;
      }

      while (v32);
    }

    else
    {
      do
      {
        v33 = v6[2];
        v34 = *v33 == v6;
        v6 = v33;
      }

      while (!v34);
    }

    v6 = v33;
  }

  while (v33 != a1 + 23);
LABEL_65:
  v2 = v96;
  (*(*a1 + 168))(&__p, a1, v96);
  v35 = __p;
  v36 = v102 - __p;
  v37 = (v102 - __p) >> 3;
  if (v37 < 1)
  {
    goto LABEL_82;
  }

  v39 = a1[35];
  v38 = a1[36];
  if (v38 - v39 < v36)
  {
    v40 = a1[34];
    v41 = v37 + (&v39[-v40] >> 3);
    if (!(v41 >> 61))
    {
      v42 = v38 - v40;
      v43 = (v38 - v40) >> 2;
      if (v43 > v41)
      {
        v41 = v43;
      }

      if (v42 >= 0x7FFFFFFFFFFFFFF8)
      {
        v44 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v44 = v41;
      }

      if (v44)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v44);
      }

      v45 = 8 * (&v39[-v40] >> 3);
      v46 = (v45 + v36);
      v47 = v45;
      do
      {
        v48 = *v35++;
        *v47++ = v48;
        v36 -= 8;
      }

      while (v36);
      memcpy(v46, v39, a1[35] - v39);
      v49 = a1[34];
      v50 = &v46[a1[35] - v39];
      a1[35] = v39;
      v51 = v39 - v49;
      v52 = (v45 - (v39 - v49));
      memcpy(v52, v49, v51);
      v53 = a1[34];
      a1[34] = v52;
      a1[35] = v50;
      a1[36] = 0;
      if (v53)
      {
        operator delete(v53);
      }

      goto LABEL_82;
    }

LABEL_136:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (__p != v102)
  {
    memmove(a1[35], __p, v102 - __p);
  }

  a1[35] = &v39[v36];
LABEL_82:
  if (*(a1 + 86) == 2)
  {
    v54 = a1[34];
    v55 = a1[35];
    while (v54 != v55)
    {
      (*(*a1 + 184))(a1, v95, *v54++);
    }
  }

  v56 = (*(*a1 + 176))(a1, v95);
  v57 = v56;
  v58 = a1[35];
  v99 = v56;
  v100 = v58;
  if (*(a1 + 13) == 1)
  {
    v98[0] = __p;
    v98[1] = v102;
    v59 = a1[34];
    if (v56 != v59)
    {
      while (((*(*a1 + 136))(a1, v96, *v59) & 1) != 0)
      {
        v59 += 8;
LABEL_102:
        if (v59 == v57)
        {
          goto LABEL_89;
        }
      }

      v69 = v57 - 8;
      while (v69 != v59)
      {
        v57 = v69;
        v70 = (*(*a1 + 136))(a1, v96, *v69);
        v69 = v57 - 8;
        if (v70)
        {
          v71 = *v59;
          *v59 = *v57;
          v59 += 8;
          *v57 = v71;
          goto LABEL_102;
        }
      }
    }

    v57 = v59;
LABEL_89:
    v97[0] = a1[34];
    v97[1] = v57;
    (*(*a1 + 120))(a1, &v99);
    (*(*a1 + 112))(a1, v96, v98);
    (*(*a1 + 128))(a1, v96, v97);
    v57 = (*(*a1 + 176))(a1, v95);
    v58 = a1[35];
    v99 = v57;
    v100 = v58;
  }

  v60 = v58 - v57;
  v61 = (v58 - v57) >> 3;
  if (v61 >= 1)
  {
    v63 = a1[38];
    v62 = a1[39];
    if (v62 - v63 >= v60)
    {
      while (v57 != v58)
      {
        v72 = *v57;
        v57 += 8;
        *v63++ = v72;
      }

      a1[38] = v63;
    }

    else
    {
      v64 = a1[37];
      v65 = v61 + ((v63 - v64) >> 3);
      if (v65 >> 61)
      {
        goto LABEL_136;
      }

      v66 = v62 - v64;
      v67 = (v62 - v64) >> 2;
      if (v67 > v65)
      {
        v65 = v67;
      }

      if (v66 >= 0x7FFFFFFFFFFFFFF8)
      {
        v68 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v68 = v65;
      }

      if (v68)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v68);
      }

      v73 = 8 * ((v63 - v64) >> 3);
      v74 = (v73 + v60);
      v75 = v73;
      do
      {
        v76 = *v57;
        v57 += 8;
        *v75++ = v76;
        v60 -= 8;
      }

      while (v60);
      memcpy(v74, v63, a1[38] - v63);
      v77 = a1[37];
      v78 = &v74[a1[38] - v63];
      a1[38] = v63;
      v79 = v63 - v77;
      v80 = (v73 - (v63 - v77));
      memcpy(v80, v77, v79);
      v81 = a1[37];
      a1[37] = v80;
      a1[38] = v78;
      a1[39] = 0;
      if (v81)
      {
        operator delete(v81);
      }
    }
  }

  v82 = v99;
  if (v99 != v100)
  {
    v83 = a1[35];
    v84 = v83 - v100;
    if (v83 != v100)
    {
      memmove(v99, v100, v83 - v100);
    }

    a1[35] = &v82[v84];
  }

  v85 = a1[37];
  v86 = a1[38];
  if (v86 != v85)
  {
    do
    {
      v87 = *v85;
      if (*v85 && a1[30])
      {
        (**v87)(*v85);
        *v87 = a1[33];
        a1[33] = v87;
      }

      ++v85;
    }

    while (v85 != v86);
    v85 = a1[37];
  }

  a1[38] = v85;
  (*(*a1 + 192))(a1);
  if (__p)
  {
    v102 = __p;
    operator delete(__p);
  }

LABEL_127:
  v88 = (*(*a1 + 96))(a1, v2);
  v89 = a1[10];
  if (v89)
  {
    v90 = *v88;
    v91 = v88[1];
    if (v89 == a1 + 7)
    {
      v104 = v103;
      (*(*v89 + 24))(v89, v103);
    }

    else
    {
      v104 = (*(*v89 + 16))(v89);
    }

    v92 = 126 - 2 * __clz((v91->i64 - v90) >> 3);
    if (v91 == v90)
    {
      v93 = 0;
    }

    else
    {
      v93 = v92;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)> &,md::RoadTileDataRenderable **,false>(v90, v91, v103, v93, 1);
    std::__function::__value_func<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::~__value_func[abi:nn200100](v103);
  }

  return (*(*a1 + 152))(a1, v88, v2);
}

void sub_1B3094C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)> &,md::RoadTileDataRenderable **,false>(uint64_t result, int8x16_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = &a2[-1].i64[1];
  v10 = v8;
  v125 = a2;
  while (1)
  {
    v8 = v10;
    v11 = (a2 - v10) >> 3;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v10->i64[0]);
      if (result)
      {
        v79 = v10->i64[0];
        v10->i64[0] = *v9;
LABEL_103:
        *v9 = v79;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v82 = &v10->u64[1];
      v84 = v10 == a2 || v82 == a2;
      if (a5)
      {
        if (!v84)
        {
          v85 = 0;
          v86 = v10;
          do
          {
            v88 = v86->i64[0];
            v87 = v86->i64[1];
            v86 = v82;
            result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v87, v88);
            if (result)
            {
              v89 = v86->i64[0];
              v90 = v85;
              while (1)
              {
                *(&v10->i64[1] + v90) = *(v10->i64 + v90);
                if (!v90)
                {
                  break;
                }

                result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v89, *(&v10->i64[-1] + v90));
                v90 -= 8;
                if ((result & 1) == 0)
                {
                  v91 = (&v10->i64[1] + v90);
                  goto LABEL_125;
                }
              }

              v91 = v10;
LABEL_125:
              *v91 = v89;
            }

            v82 = &v86->u64[1];
            v85 += 8;
          }

          while (&v86->u64[1] != a2);
        }
      }

      else if (!v84)
      {
        do
        {
          v120 = *v8;
          v119 = *(v8 + 8);
          v8 = v82;
          result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v119, v120);
          if (result)
          {
            v121 = *v8;
            v122 = v8;
            do
            {
              v123 = v122;
              v124 = *--v122;
              *v123 = v124;
              result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v121, *(v123 - 2));
            }

            while ((result & 1) != 0);
            *v122 = v121;
          }

          v82 = (v8 + 8);
        }

        while ((v8 + 8) != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v92 = (v11 - 2) >> 1;
        v127 = v92;
        do
        {
          v93 = v92;
          if (v127 >= v92)
          {
            v94 = (2 * v92) | 1;
            v95 = (v8 + 8 * v94);
            if (2 * v92 + 2 < v11 && std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *v95, v95[1]))
            {
              ++v95;
              v94 = 2 * v93 + 2;
            }

            v96 = (v8 + 8 * v93);
            result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *v95, *v96);
            if ((result & 1) == 0)
            {
              v97 = *v96;
              do
              {
                v98 = v95;
                *v96 = *v95;
                if (v127 < v94)
                {
                  break;
                }

                v99 = (2 * v94) | 1;
                v95 = (v8 + 8 * v99);
                v100 = 2 * v94 + 2;
                if (v100 < v11 && std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *v95, v95[1]))
                {
                  ++v95;
                  v99 = v100;
                }

                result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *v95, v97);
                v96 = v98;
                v94 = v99;
              }

              while (!result);
              *v98 = v97;
            }
          }

          v92 = v93 - 1;
        }

        while (v93);
        v101 = v125;
        do
        {
          v102 = v101;
          v103 = 0;
          v128 = *v8;
          v104 = v8;
          do
          {
            v105 = &v104[v103];
            v106 = v105 + 1;
            v107 = (2 * v103) | 1;
            v108 = 2 * v103 + 2;
            if (v108 >= v11)
            {
              v103 = (2 * v103) | 1;
            }

            else
            {
              v110 = v105[2];
              v109 = v105 + 2;
              result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *(v109 - 1), v110);
              if (result)
              {
                v106 = v109;
                v103 = v108;
              }

              else
              {
                v103 = v107;
              }
            }

            *v104 = *v106;
            v104 = v106;
          }

          while (v103 <= (v11 - 2) / 2);
          v101 = v102 - 1;
          if (v106 == v102 - 1)
          {
            *v106 = v128;
          }

          else
          {
            *v106 = *v101;
            *v101 = v128;
            v111 = (v106 - v8 + 8) >> 3;
            v112 = v111 < 2;
            v113 = v111 - 2;
            if (!v112)
            {
              v114 = v113 >> 1;
              v115 = (v8 + 8 * (v113 >> 1));
              result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *v115, *v106);
              if (result)
              {
                v116 = *v106;
                do
                {
                  v117 = v115;
                  *v106 = *v115;
                  if (!v114)
                  {
                    break;
                  }

                  v114 = (v114 - 1) >> 1;
                  v115 = (v8 + 8 * v114);
                  result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *v115, v116);
                  v106 = v117;
                }

                while ((result & 1) != 0);
                *v117 = v116;
              }
            }
          }

          v112 = v11-- <= 2;
        }

        while (!v112);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *(a3 + 24);
    if (v11 < 0x81)
    {
      v17 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(v13, v10->i64[0], v10->i64[v12]);
      v18 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v10->i64[0]);
      if (v17)
      {
        v19 = v10->i64[v12];
        if (v18)
        {
          v10->i64[v12] = *v9;
          *v9 = v19;
        }

        else
        {
          v10->i64[v12] = v10->i64[0];
          v10->i64[0] = v19;
          if (std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v19))
          {
            v31 = v10->i64[0];
            v10->i64[0] = *v9;
            *v9 = v31;
          }
        }
      }

      else if (v18)
      {
        v22 = v10->i64[0];
        v10->i64[0] = *v9;
        *v9 = v22;
        if (std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v10->i64[0], v10->i64[v12]))
        {
          v23 = v10->i64[v12];
          v10->i64[v12] = v10->i64[0];
          v10->i64[0] = v23;
        }
      }

      goto LABEL_55;
    }

    v14 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(v13, v10->i64[v12], v10->i64[0]);
    v15 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v10->i64[v12]);
    if (v14)
    {
      v16 = v10->i64[0];
      if (v15)
      {
        v10->i64[0] = *v9;
        *v9 = v16;
      }

      else
      {
        v10->i64[0] = v10->i64[v12];
        v10->i64[v12] = v16;
        if (std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v16))
        {
          v24 = v10->i64[v12];
          v10->i64[v12] = *v9;
          *v9 = v24;
        }
      }
    }

    else if (v15)
    {
      v20 = v10->i64[v12];
      v10->i64[v12] = *v9;
      *v9 = v20;
      if (std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v10->i64[v12], v10->i64[0]))
      {
        v21 = v10->i64[0];
        v10->i64[0] = v10->i64[v12];
        v10->i64[v12] = v21;
      }
    }

    v25 = v12 - 1;
    v26 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * (v12 - 1)), *(v8 + 8));
    v27 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), a2[-1].i64[0], *(v8 + 8 * (v12 - 1)));
    if (v26)
    {
      v28 = *(v8 + 8);
      if (v27)
      {
        *(v8 + 8) = a2[-1].i64[0];
        a2[-1].i64[0] = v28;
      }

      else
      {
        *(v8 + 8) = *(v8 + 8 * v25);
        *(v8 + 8 * v25) = v28;
        if (std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), a2[-1].i64[0], v28))
        {
          v32 = *(v8 + 8 * v25);
          *(v8 + 8 * v25) = a2[-1].i64[0];
          a2[-1].i64[0] = v32;
        }
      }
    }

    else if (v27)
    {
      v29 = *(v8 + 8 * v25);
      *(v8 + 8 * v25) = a2[-1].i64[0];
      a2[-1].i64[0] = v29;
      if (std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * v25), *(v8 + 8)))
      {
        v30 = *(v8 + 8);
        *(v8 + 8) = *(v8 + 8 * v25);
        *(v8 + 8 * v25) = v30;
      }
    }

    v33 = a2;
    v34 = v12 + 1;
    v35 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * (v12 + 1)), *(v8 + 16));
    v36 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v33[-2].i64[1], *(v8 + 8 * (v12 + 1)));
    if (v35)
    {
      v37 = *(v8 + 16);
      if (v36)
      {
        *(v8 + 16) = v125[-2].i64[1];
        v125[-2].i64[1] = v37;
      }

      else
      {
        *(v8 + 16) = *(v8 + 8 * v34);
        *(v8 + 8 * v34) = v37;
        if (std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v125[-2].i64[1], v37))
        {
          v40 = *(v8 + 8 * v34);
          *(v8 + 8 * v34) = v125[-2].i64[1];
          v125[-2].i64[1] = v40;
        }
      }
    }

    else if (v36)
    {
      v38 = *(v8 + 8 * v34);
      *(v8 + 8 * v34) = v125[-2].i64[1];
      v125[-2].i64[1] = v38;
      if (std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * v34), *(v8 + 16)))
      {
        v39 = *(v8 + 16);
        *(v8 + 16) = *(v8 + 8 * v34);
        *(v8 + 8 * v34) = v39;
      }
    }

    v41 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * v12), *(v8 + 8 * v25));
    v42 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * v34), *(v8 + 8 * v12));
    if ((v41 & 1) == 0)
    {
      v44 = *(v8 + 8 * v12);
      if (!v42)
      {
        goto LABEL_54;
      }

      v45 = *(v8 + 8 * v34);
      *(v8 + 8 * v12) = v45;
      *(v8 + 8 * v34) = v44;
      v46 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v45, *(v8 + 8 * v25));
      v44 = *(v8 + 8 * v12);
      if (!v46)
      {
        goto LABEL_54;
      }

      v47 = *(v8 + 8 * v25);
      *(v8 + 8 * v25) = v44;
      *(v8 + 8 * v12) = v47;
      goto LABEL_53;
    }

    v43 = *(v8 + 8 * v25);
    if (v42)
    {
      *(v8 + 8 * v25) = *(v8 + 8 * v34);
      *(v8 + 8 * v34) = v43;
      v44 = *(v8 + 8 * v12);
    }

    else
    {
      *(v8 + 8 * v25) = *(v8 + 8 * v12);
      *(v8 + 8 * v12) = v43;
      v48 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * v34), v43);
      v44 = *(v8 + 8 * v12);
      if (v48)
      {
        v47 = *(v8 + 8 * v34);
        *(v8 + 8 * v12) = v47;
        *(v8 + 8 * v34) = v44;
LABEL_53:
        v44 = v47;
      }
    }

LABEL_54:
    a2 = v125;
    v49 = *v8;
    *v8 = v44;
    *(v8 + 8 * v12) = v49;
LABEL_55:
    --a4;
    v50 = *v8;
    if (a5 & 1) != 0 || (v51 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *(v8 - 8), *v8), v50 = *v8, (v51))
    {
      v52 = v8;
      do
      {
        v53 = v52;
        v54 = v52->i64[1];
        v52 = (v52 + 8);
      }

      while ((std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v54, v50) & 1) != 0);
      v55 = a2;
      if (v53 == v8)
      {
        v55 = a2;
        do
        {
          if (v52 >= v55)
          {
            break;
          }

          v57 = v55[-1].i64[1];
          v55 = (v55 - 8);
        }

        while ((std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v57, v50) & 1) == 0);
      }

      else
      {
        do
        {
          v56 = v55[-1].i64[1];
          v55 = (v55 - 8);
        }

        while (!std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v56, v50));
      }

      if (v52 < v55)
      {
        v58 = v52;
        v59 = v55;
        do
        {
          v60 = v58->i64[0];
          v58->i64[0] = v59->i64[0];
          v59->i64[0] = v60;
          do
          {
            v53 = v58;
            v61 = v58->i64[1];
            v58 = (v58 + 8);
          }

          while ((std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v61, v50) & 1) != 0);
          do
          {
            v62 = v59[-1].i64[1];
            v59 = (v59 - 8);
          }

          while (!std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v62, v50));
        }

        while (v58 < v59);
      }

      if (v53 != v8)
      {
        *v8 = v53->i64[0];
      }

      v53->i64[0] = v50;
      a2 = v125;
      if (v52 < v55)
      {
        goto LABEL_76;
      }

      v63 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)> &,md::RoadTileDataRenderable **>(v8, v53->i64, a3);
      v10 = &v53->u64[1];
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)> &,md::RoadTileDataRenderable **>(&v53->i64[1], v125->i64, a3);
      if (result)
      {
        a2 = v53;
        if (!v63)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v63)
      {
LABEL_76:
        result = std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)> &,md::RoadTileDataRenderable **,false>(v8, v53, a3, a4, a5 & 1);
        a5 = 0;
        v10 = &v53->u64[1];
      }
    }

    else
    {
      result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *v8, *v9);
      if (result)
      {
        v10 = v8;
        do
        {
          v64 = v10->i64[1];
          v10 = (v10 + 8);
          result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v50, v64);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v65 = v8 + 8;
        do
        {
          v10 = v65;
          if (v65 >= a2)
          {
            break;
          }

          v65 += 8;
          result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v50, v10->i64[0]);
        }

        while (!result);
      }

      v66 = a2;
      if (v10 < a2)
      {
        v66 = a2;
        do
        {
          v67 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v50, v67);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v66)
      {
        v68 = v10->i64[0];
        v10->i64[0] = v66->i64[0];
        v66->i64[0] = v68;
        do
        {
          v69 = v10->i64[1];
          v10 = (v10 + 8);
        }

        while (!std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v50, v69));
        do
        {
          v70 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v50, v70);
        }

        while ((result & 1) != 0);
      }

      v71 = &v10[-1].i64[1];
      if (&v10[-1].u64[1] != v8)
      {
        *v8 = *v71;
      }

      a5 = 0;
      *v71 = v50;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)> &,md::RoadTileDataRenderable **,0>(v10->i64, &v10->i64[1], v10[1].i64, v9, a3);
    }

    if (v11 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)> &,md::RoadTileDataRenderable **,0>(v10->i64, &v10->i64[1], v10[1].i64, &v10[1].i64[1], a3);
      result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v10[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v72 = v10[1].i64[1];
      v10[1].i64[1] = *v9;
      *v9 = v72;
      result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v10[1].i64[1], v10[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v74 = v10[1].i64[0];
      v73 = v10[1].i64[1];
      v75 = v10->i64[1];
      v10[1].i64[0] = v73;
      v10[1].i64[1] = v74;
      result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v73, v75);
      if (!result)
      {
        return result;
      }

      v77 = v10->i64[1];
      v76 = v10[1].i64[0];
      v78 = v10->i64[0];
      v10->i64[1] = v76;
      v10[1].i64[0] = v77;
      goto LABEL_164;
    }

    goto LABEL_10;
  }

  v80 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v10->i64[1], v10->i64[0]);
  result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v10->i64[1]);
  if ((v80 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v118 = v10->i64[1];
    v10->i64[1] = *v9;
    *v9 = v118;
    v78 = v10->i64[0];
    v76 = v10->i64[1];
LABEL_164:
    result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v76, v78);
    if (result)
    {
      *v10 = vextq_s8(*v10, *v10, 8uLL);
    }

    return result;
  }

  v81 = v10->i64[0];
  if (result)
  {
    v10->i64[0] = *v9;
    *v9 = v81;
  }

  else
  {
    v10->i64[0] = v10->i64[1];
    v10->i64[1] = v81;
    result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v81);
    if (result)
    {
      v79 = v10->i64[1];
      v10->i64[1] = *v9;
      goto LABEL_103;
    }
  }

  return result;
}

uint64_t std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a3;
  v10 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v10, &v9);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)> &,md::RoadTileDataRenderable **,0>(v4, v5, v6, v7, v8);
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)> &,md::RoadTileDataRenderable **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a5 + 24), *a2, *a1);
  v11 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a5 + 24), *a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if (std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a5 + 24), *a3, v12))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if (std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a5 + 24), *a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a5 + 24), *a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a5 + 24), *a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a5 + 24), *a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)> &,md::RoadTileDataRenderable **>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = (a2 - a1) >> 3;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v15 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *(a1 + 8), *a1);
        v16 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *(a2 - 1), *(a1 + 8));
        if (v15)
        {
          v17 = *a1;
          if (v16)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v17;
            return 1;
          }

          *a1 = *(a1 + 8);
          *(a1 + 8) = v17;
          if (!std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *(a2 - 1), v17))
          {
            return 1;
          }

          v7 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v16)
        {
          return 1;
        }

        v22 = *(a1 + 8);
        *(a1 + 8) = *(a2 - 1);
        *(a2 - 1) = v22;
        v14 = *a1;
        v12 = *(a1 + 8);
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)> &,md::RoadTileDataRenderable **,0>(a1, (a1 + 8), (a1 + 16), a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)> &,md::RoadTileDataRenderable **,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24), a3);
        if (!std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *(a2 - 1), *(a1 + 24)))
        {
          return 1;
        }

        v8 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *(a1 + 24), *(a1 + 16)))
        {
          return 1;
        }

        v10 = *(a1 + 16);
        v9 = *(a1 + 24);
        v11 = *(a1 + 8);
        *(a1 + 16) = v9;
        *(a1 + 24) = v10;
        if (!std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v9, v11))
        {
          return 1;
        }

        v13 = *(a1 + 8);
        v12 = *(a1 + 16);
        v14 = *a1;
        *(a1 + 8) = v12;
        *(a1 + 16) = v13;
        break;
      default:
        goto LABEL_17;
    }

    if (std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v12, v14))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if (std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v18 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *(a1 + 8), *a1);
  v19 = (a1 + 16);
  v20 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *(a1 + 16), *(a1 + 8));
  if (v18)
  {
    v21 = *a1;
    if (v20)
    {
      *a1 = *(a1 + 16);
      *(a1 + 16) = v21;
    }

    else
    {
      v26 = *(a1 + 16);
      *a1 = *(a1 + 8);
      *(a1 + 8) = v21;
      if (std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v26, v21))
      {
        *(a1 + 8) = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
      }
    }
  }

  else if (v20)
  {
    v24 = *(a1 + 8);
    v23 = *(a1 + 16);
    v25 = *a1;
    *(a1 + 8) = v23;
    *(a1 + 16) = v24;
    if (std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v23, v25))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v27 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
    return 1;
  }

  v28 = 0;
  v29 = 0;
  while (1)
  {
    if (std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *v27, *v19))
    {
      v30 = *v27;
      v31 = v28;
      while (1)
      {
        v32 = a1 + v31;
        *(a1 + v31 + 24) = *(a1 + v31 + 16);
        if (v31 == -16)
        {
          break;
        }

        v31 -= 8;
        if ((std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v30, *(v32 + 8)) & 1) == 0)
        {
          v33 = (a1 + v31 + 24);
          goto LABEL_40;
        }
      }

      v33 = a1;
LABEL_40:
      *v33 = v30;
      if (++v29 == 8)
      {
        return v27 + 1 == a2;
      }
    }

    v19 = v27;
    v28 += 8;
    if (++v27 == a2)
    {
      return 1;
    }
  }
}

void geo::Pool<md::DaVinciRoadTileDataRenderable>::construct<std::shared_ptr<md::DaVinciCenterLineRoadsTileData> &,signed char,BOOL const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>> &>(uint64_t *a1, uint64_t *a2, char *a3, char *a4, void *a5)
{
  v18[7] = *MEMORY[0x1E69E9840];
  v10 = a1[5];
  if (!v10)
  {
    v11 = a1 + 3;
    v12 = malloc_type_malloc(416 * a1[3], 0x10A2040EF4268A2uLL);
    v18[0] = v12;
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(a1, v12, v18);
    v10 = a1[5];
    v13 = &v12[52 * *v11 - 52];
    if (v13 >= v12)
    {
      do
      {
        *v13 = v10;
        v10 = v13;
        v13 -= 52;
      }

      while (v13 >= v12);
      v10 = v13 + 52;
    }

    a1[5] = v10;
  }

  a1[5] = *v10;
  v14 = *a3;
  v15 = *a4;
  v16 = *a2;
  v17 = a2[1];
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  md::BaseMapTileDataRenderable::BaseMapTileDataRenderable(v10, v16, v17, v14, v15, a5);
}

uint64_t std::__function::__value_func<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::sort[abi:nn200100]<std::__wrap_iter<md::DaVinciRoadTileDataRenderable **>,std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>>(uint64_t a1, int8x16_t *a2, uint64_t a3)
{
  v3 = 126 - 2 * __clz((a2->i64 - a1) >> 3);
  if (a2 == a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)> &,md::DaVinciRoadTileDataRenderable **,false>(a1, a2, a3, v4, 1);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)> &,md::DaVinciRoadTileDataRenderable **,false>(uint64_t result, int8x16_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = &a2[-1].i64[1];
  v10 = v8;
  v125 = a2;
  while (1)
  {
    v8 = v10;
    v11 = (a2 - v10) >> 3;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v10->i64[0]);
      if (result)
      {
        v79 = v10->i64[0];
        v10->i64[0] = *v9;
LABEL_103:
        *v9 = v79;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v82 = &v10->u64[1];
      v84 = v10 == a2 || v82 == a2;
      if (a5)
      {
        if (!v84)
        {
          v85 = 0;
          v86 = v10;
          do
          {
            v88 = v86->i64[0];
            v87 = v86->i64[1];
            v86 = v82;
            result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v87, v88);
            if (result)
            {
              v89 = v86->i64[0];
              v90 = v85;
              while (1)
              {
                *(&v10->i64[1] + v90) = *(v10->i64 + v90);
                if (!v90)
                {
                  break;
                }

                result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v89, *(&v10->i64[-1] + v90));
                v90 -= 8;
                if ((result & 1) == 0)
                {
                  v91 = (&v10->i64[1] + v90);
                  goto LABEL_125;
                }
              }

              v91 = v10;
LABEL_125:
              *v91 = v89;
            }

            v82 = &v86->u64[1];
            v85 += 8;
          }

          while (&v86->u64[1] != a2);
        }
      }

      else if (!v84)
      {
        do
        {
          v120 = *v8;
          v119 = *(v8 + 8);
          v8 = v82;
          result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v119, v120);
          if (result)
          {
            v121 = *v8;
            v122 = v8;
            do
            {
              v123 = v122;
              v124 = *--v122;
              *v123 = v124;
              result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v121, *(v123 - 2));
            }

            while ((result & 1) != 0);
            *v122 = v121;
          }

          v82 = (v8 + 8);
        }

        while ((v8 + 8) != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v92 = (v11 - 2) >> 1;
        v127 = v92;
        do
        {
          v93 = v92;
          if (v127 >= v92)
          {
            v94 = (2 * v92) | 1;
            v95 = (v8 + 8 * v94);
            if (2 * v92 + 2 < v11 && std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *v95, v95[1]))
            {
              ++v95;
              v94 = 2 * v93 + 2;
            }

            v96 = (v8 + 8 * v93);
            result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *v95, *v96);
            if ((result & 1) == 0)
            {
              v97 = *v96;
              do
              {
                v98 = v95;
                *v96 = *v95;
                if (v127 < v94)
                {
                  break;
                }

                v99 = (2 * v94) | 1;
                v95 = (v8 + 8 * v99);
                v100 = 2 * v94 + 2;
                if (v100 < v11 && std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *v95, v95[1]))
                {
                  ++v95;
                  v99 = v100;
                }

                result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *v95, v97);
                v96 = v98;
                v94 = v99;
              }

              while (!result);
              *v98 = v97;
            }
          }

          v92 = v93 - 1;
        }

        while (v93);
        v101 = v125;
        do
        {
          v102 = v101;
          v103 = 0;
          v128 = *v8;
          v104 = v8;
          do
          {
            v105 = &v104[v103];
            v106 = v105 + 1;
            v107 = (2 * v103) | 1;
            v108 = 2 * v103 + 2;
            if (v108 >= v11)
            {
              v103 = (2 * v103) | 1;
            }

            else
            {
              v110 = v105[2];
              v109 = v105 + 2;
              result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *(v109 - 1), v110);
              if (result)
              {
                v106 = v109;
                v103 = v108;
              }

              else
              {
                v103 = v107;
              }
            }

            *v104 = *v106;
            v104 = v106;
          }

          while (v103 <= (v11 - 2) / 2);
          v101 = v102 - 1;
          if (v106 == v102 - 1)
          {
            *v106 = v128;
          }

          else
          {
            *v106 = *v101;
            *v101 = v128;
            v111 = (v106 - v8 + 8) >> 3;
            v112 = v111 < 2;
            v113 = v111 - 2;
            if (!v112)
            {
              v114 = v113 >> 1;
              v115 = (v8 + 8 * (v113 >> 1));
              result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *v115, *v106);
              if (result)
              {
                v116 = *v106;
                do
                {
                  v117 = v115;
                  *v106 = *v115;
                  if (!v114)
                  {
                    break;
                  }

                  v114 = (v114 - 1) >> 1;
                  v115 = (v8 + 8 * v114);
                  result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *v115, v116);
                  v106 = v117;
                }

                while ((result & 1) != 0);
                *v117 = v116;
              }
            }
          }

          v112 = v11-- <= 2;
        }

        while (!v112);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *(a3 + 24);
    if (v11 < 0x81)
    {
      v17 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(v13, v10->i64[0], v10->i64[v12]);
      v18 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v10->i64[0]);
      if (v17)
      {
        v19 = v10->i64[v12];
        if (v18)
        {
          v10->i64[v12] = *v9;
          *v9 = v19;
        }

        else
        {
          v10->i64[v12] = v10->i64[0];
          v10->i64[0] = v19;
          if (std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v19))
          {
            v31 = v10->i64[0];
            v10->i64[0] = *v9;
            *v9 = v31;
          }
        }
      }

      else if (v18)
      {
        v22 = v10->i64[0];
        v10->i64[0] = *v9;
        *v9 = v22;
        if (std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v10->i64[0], v10->i64[v12]))
        {
          v23 = v10->i64[v12];
          v10->i64[v12] = v10->i64[0];
          v10->i64[0] = v23;
        }
      }

      goto LABEL_55;
    }

    v14 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(v13, v10->i64[v12], v10->i64[0]);
    v15 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v10->i64[v12]);
    if (v14)
    {
      v16 = v10->i64[0];
      if (v15)
      {
        v10->i64[0] = *v9;
        *v9 = v16;
      }

      else
      {
        v10->i64[0] = v10->i64[v12];
        v10->i64[v12] = v16;
        if (std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v16))
        {
          v24 = v10->i64[v12];
          v10->i64[v12] = *v9;
          *v9 = v24;
        }
      }
    }

    else if (v15)
    {
      v20 = v10->i64[v12];
      v10->i64[v12] = *v9;
      *v9 = v20;
      if (std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v10->i64[v12], v10->i64[0]))
      {
        v21 = v10->i64[0];
        v10->i64[0] = v10->i64[v12];
        v10->i64[v12] = v21;
      }
    }

    v25 = v12 - 1;
    v26 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * (v12 - 1)), *(v8 + 8));
    v27 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), a2[-1].i64[0], *(v8 + 8 * (v12 - 1)));
    if (v26)
    {
      v28 = *(v8 + 8);
      if (v27)
      {
        *(v8 + 8) = a2[-1].i64[0];
        a2[-1].i64[0] = v28;
      }

      else
      {
        *(v8 + 8) = *(v8 + 8 * v25);
        *(v8 + 8 * v25) = v28;
        if (std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), a2[-1].i64[0], v28))
        {
          v32 = *(v8 + 8 * v25);
          *(v8 + 8 * v25) = a2[-1].i64[0];
          a2[-1].i64[0] = v32;
        }
      }
    }

    else if (v27)
    {
      v29 = *(v8 + 8 * v25);
      *(v8 + 8 * v25) = a2[-1].i64[0];
      a2[-1].i64[0] = v29;
      if (std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * v25), *(v8 + 8)))
      {
        v30 = *(v8 + 8);
        *(v8 + 8) = *(v8 + 8 * v25);
        *(v8 + 8 * v25) = v30;
      }
    }

    v33 = a2;
    v34 = v12 + 1;
    v35 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * (v12 + 1)), *(v8 + 16));
    v36 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v33[-2].i64[1], *(v8 + 8 * (v12 + 1)));
    if (v35)
    {
      v37 = *(v8 + 16);
      if (v36)
      {
        *(v8 + 16) = v125[-2].i64[1];
        v125[-2].i64[1] = v37;
      }

      else
      {
        *(v8 + 16) = *(v8 + 8 * v34);
        *(v8 + 8 * v34) = v37;
        if (std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v125[-2].i64[1], v37))
        {
          v40 = *(v8 + 8 * v34);
          *(v8 + 8 * v34) = v125[-2].i64[1];
          v125[-2].i64[1] = v40;
        }
      }
    }

    else if (v36)
    {
      v38 = *(v8 + 8 * v34);
      *(v8 + 8 * v34) = v125[-2].i64[1];
      v125[-2].i64[1] = v38;
      if (std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * v34), *(v8 + 16)))
      {
        v39 = *(v8 + 16);
        *(v8 + 16) = *(v8 + 8 * v34);
        *(v8 + 8 * v34) = v39;
      }
    }

    v41 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * v12), *(v8 + 8 * v25));
    v42 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * v34), *(v8 + 8 * v12));
    if ((v41 & 1) == 0)
    {
      v44 = *(v8 + 8 * v12);
      if (!v42)
      {
        goto LABEL_54;
      }

      v45 = *(v8 + 8 * v34);
      *(v8 + 8 * v12) = v45;
      *(v8 + 8 * v34) = v44;
      v46 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v45, *(v8 + 8 * v25));
      v44 = *(v8 + 8 * v12);
      if (!v46)
      {
        goto LABEL_54;
      }

      v47 = *(v8 + 8 * v25);
      *(v8 + 8 * v25) = v44;
      *(v8 + 8 * v12) = v47;
      goto LABEL_53;
    }

    v43 = *(v8 + 8 * v25);
    if (v42)
    {
      *(v8 + 8 * v25) = *(v8 + 8 * v34);
      *(v8 + 8 * v34) = v43;
      v44 = *(v8 + 8 * v12);
    }

    else
    {
      *(v8 + 8 * v25) = *(v8 + 8 * v12);
      *(v8 + 8 * v12) = v43;
      v48 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * v34), v43);
      v44 = *(v8 + 8 * v12);
      if (v48)
      {
        v47 = *(v8 + 8 * v34);
        *(v8 + 8 * v12) = v47;
        *(v8 + 8 * v34) = v44;
LABEL_53:
        v44 = v47;
      }
    }

LABEL_54:
    a2 = v125;
    v49 = *v8;
    *v8 = v44;
    *(v8 + 8 * v12) = v49;
LABEL_55:
    --a4;
    v50 = *v8;
    if (a5 & 1) != 0 || (v51 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *(v8 - 8), *v8), v50 = *v8, (v51))
    {
      v52 = v8;
      do
      {
        v53 = v52;
        v54 = v52->i64[1];
        v52 = (v52 + 8);
      }

      while ((std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v54, v50) & 1) != 0);
      v55 = a2;
      if (v53 == v8)
      {
        v55 = a2;
        do
        {
          if (v52 >= v55)
          {
            break;
          }

          v57 = v55[-1].i64[1];
          v55 = (v55 - 8);
        }

        while ((std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v57, v50) & 1) == 0);
      }

      else
      {
        do
        {
          v56 = v55[-1].i64[1];
          v55 = (v55 - 8);
        }

        while (!std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v56, v50));
      }

      if (v52 < v55)
      {
        v58 = v52;
        v59 = v55;
        do
        {
          v60 = v58->i64[0];
          v58->i64[0] = v59->i64[0];
          v59->i64[0] = v60;
          do
          {
            v53 = v58;
            v61 = v58->i64[1];
            v58 = (v58 + 8);
          }

          while ((std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v61, v50) & 1) != 0);
          do
          {
            v62 = v59[-1].i64[1];
            v59 = (v59 - 8);
          }

          while (!std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v62, v50));
        }

        while (v58 < v59);
      }

      if (v53 != v8)
      {
        *v8 = v53->i64[0];
      }

      v53->i64[0] = v50;
      a2 = v125;
      if (v52 < v55)
      {
        goto LABEL_76;
      }

      v63 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)> &,md::DaVinciRoadTileDataRenderable **>(v8, v53->i64, a3);
      v10 = &v53->u64[1];
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)> &,md::DaVinciRoadTileDataRenderable **>(&v53->i64[1], v125->i64, a3);
      if (result)
      {
        a2 = v53;
        if (!v63)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v63)
      {
LABEL_76:
        result = std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)> &,md::DaVinciRoadTileDataRenderable **,false>(v8, v53, a3, a4, a5 & 1);
        a5 = 0;
        v10 = &v53->u64[1];
      }
    }

    else
    {
      result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *v8, *v9);
      if (result)
      {
        v10 = v8;
        do
        {
          v64 = v10->i64[1];
          v10 = (v10 + 8);
          result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v50, v64);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v65 = v8 + 8;
        do
        {
          v10 = v65;
          if (v65 >= a2)
          {
            break;
          }

          v65 += 8;
          result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v50, v10->i64[0]);
        }

        while (!result);
      }

      v66 = a2;
      if (v10 < a2)
      {
        v66 = a2;
        do
        {
          v67 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v50, v67);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v66)
      {
        v68 = v10->i64[0];
        v10->i64[0] = v66->i64[0];
        v66->i64[0] = v68;
        do
        {
          v69 = v10->i64[1];
          v10 = (v10 + 8);
        }

        while (!std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v50, v69));
        do
        {
          v70 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v50, v70);
        }

        while ((result & 1) != 0);
      }

      v71 = &v10[-1].i64[1];
      if (&v10[-1].u64[1] != v8)
      {
        *v8 = *v71;
      }

      a5 = 0;
      *v71 = v50;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)> &,md::DaVinciRoadTileDataRenderable **,0>(v10->i64, &v10->i64[1], v10[1].i64, v9, a3);
    }

    if (v11 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)> &,md::DaVinciRoadTileDataRenderable **,0>(v10->i64, &v10->i64[1], v10[1].i64, &v10[1].i64[1], a3);
      result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v10[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v72 = v10[1].i64[1];
      v10[1].i64[1] = *v9;
      *v9 = v72;
      result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v10[1].i64[1], v10[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v74 = v10[1].i64[0];
      v73 = v10[1].i64[1];
      v75 = v10->i64[1];
      v10[1].i64[0] = v73;
      v10[1].i64[1] = v74;
      result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v73, v75);
      if (!result)
      {
        return result;
      }

      v77 = v10->i64[1];
      v76 = v10[1].i64[0];
      v78 = v10->i64[0];
      v10->i64[1] = v76;
      v10[1].i64[0] = v77;
      goto LABEL_164;
    }

    goto LABEL_10;
  }

  v80 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v10->i64[1], v10->i64[0]);
  result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v10->i64[1]);
  if ((v80 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v118 = v10->i64[1];
    v10->i64[1] = *v9;
    *v9 = v118;
    v78 = v10->i64[0];
    v76 = v10->i64[1];
LABEL_164:
    result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v76, v78);
    if (result)
    {
      *v10 = vextq_s8(*v10, *v10, 8uLL);
    }

    return result;
  }

  v81 = v10->i64[0];
  if (result)
  {
    v10->i64[0] = *v9;
    *v9 = v81;
  }

  else
  {
    v10->i64[0] = v10->i64[1];
    v10->i64[1] = v81;
    result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v81);
    if (result)
    {
      v79 = v10->i64[1];
      v10->i64[1] = *v9;
      goto LABEL_103;
    }
  }

  return result;
}

uint64_t std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a3;
  v10 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v10, &v9);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)> &,md::DaVinciRoadTileDataRenderable **,0>(v4, v5, v6, v7, v8);
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)> &,md::DaVinciRoadTileDataRenderable **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a5 + 24), *a2, *a1);
  v11 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a5 + 24), *a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if (std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a5 + 24), *a3, v12))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if (std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a5 + 24), *a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a5 + 24), *a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a5 + 24), *a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a5 + 24), *a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)> &,md::DaVinciRoadTileDataRenderable **>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = (a2 - a1) >> 3;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v15 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *(a1 + 8), *a1);
        v16 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *(a2 - 1), *(a1 + 8));
        if (v15)
        {
          v17 = *a1;
          if (v16)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v17;
            return 1;
          }

          *a1 = *(a1 + 8);
          *(a1 + 8) = v17;
          if (!std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *(a2 - 1), v17))
          {
            return 1;
          }

          v7 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v16)
        {
          return 1;
        }

        v22 = *(a1 + 8);
        *(a1 + 8) = *(a2 - 1);
        *(a2 - 1) = v22;
        v14 = *a1;
        v12 = *(a1 + 8);
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)> &,md::DaVinciRoadTileDataRenderable **,0>(a1, (a1 + 8), (a1 + 16), a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)> &,md::DaVinciRoadTileDataRenderable **,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24), a3);
        if (!std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *(a2 - 1), *(a1 + 24)))
        {
          return 1;
        }

        v8 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *(a1 + 24), *(a1 + 16)))
        {
          return 1;
        }

        v10 = *(a1 + 16);
        v9 = *(a1 + 24);
        v11 = *(a1 + 8);
        *(a1 + 16) = v9;
        *(a1 + 24) = v10;
        if (!std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v9, v11))
        {
          return 1;
        }

        v13 = *(a1 + 8);
        v12 = *(a1 + 16);
        v14 = *a1;
        *(a1 + 8) = v12;
        *(a1 + 16) = v13;
        break;
      default:
        goto LABEL_17;
    }

    if (std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v12, v14))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if (std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v18 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *(a1 + 8), *a1);
  v19 = (a1 + 16);
  v20 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *(a1 + 16), *(a1 + 8));
  if (v18)
  {
    v21 = *a1;
    if (v20)
    {
      *a1 = *(a1 + 16);
      *(a1 + 16) = v21;
    }

    else
    {
      v26 = *(a1 + 16);
      *a1 = *(a1 + 8);
      *(a1 + 8) = v21;
      if (std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v26, v21))
      {
        *(a1 + 8) = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
      }
    }
  }

  else if (v20)
  {
    v24 = *(a1 + 8);
    v23 = *(a1 + 16);
    v25 = *a1;
    *(a1 + 8) = v23;
    *(a1 + 16) = v24;
    if (std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v23, v25))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v27 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
    return 1;
  }

  v28 = 0;
  v29 = 0;
  while (1)
  {
    if (std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *v27, *v19))
    {
      v30 = *v27;
      v31 = v28;
      while (1)
      {
        v32 = a1 + v31;
        *(a1 + v31 + 24) = *(a1 + v31 + 16);
        if (v31 == -16)
        {
          break;
        }

        v31 -= 8;
        if ((std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v30, *(v32 + 8)) & 1) == 0)
        {
          v33 = (a1 + v31 + 24);
          goto LABEL_40;
        }
      }

      v33 = a1;
LABEL_40:
      *v33 = v30;
      if (++v29 == 8)
      {
        return v27 + 1 == a2;
      }
    }

    v19 = v27;
    v28 += 8;
    if (++v27 == a2)
    {
      return 1;
    }
  }
}

void std::vector<md::DaVinciRoadTileDataRenderable *>::__insert_with_size[abi:nn200100]<std::__wrap_iter<md::DaVinciRoadTileDataRenderable * const*>,std::__wrap_iter<md::DaVinciRoadTileDataRenderable * const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v6 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 3);
    if (v12 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = v9 - v11;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    v15 = (__dst - v11) >> 3;
    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v14);
    }

    v31 = 8 * v15;
    v32 = 8 * a5;
    v33 = (8 * v15);
    do
    {
      v34 = *v6;
      v6 += 8;
      *v33++ = v34;
      v32 -= 8;
    }

    while (v32);
    memcpy((v31 + 8 * a5), __dst, a1[1] - __dst);
    v35 = *a1;
    v36 = v31 + 8 * a5 + a1[1] - __dst;
    a1[1] = __dst;
    v37 = (__dst - v35);
    v38 = (v31 - (__dst - v35));
    memcpy(v38, v35, v37);
    v39 = *a1;
    *a1 = v38;
    a1[1] = v36;
    a1[2] = 0;
    if (v39)
    {

      operator delete(v39);
    }

    return;
  }

  v16 = (v10 - __dst) >> 3;
  if (v16 >= a5)
  {
    v20 = &__dst[8 * a5];
    v21 = &v10[-8 * a5];
    v22 = a1[1];
    while (v21 < v10)
    {
      v23 = *v21;
      v21 += 8;
      *v22++ = v23;
    }

    a1[1] = v22;
    if (v10 != v20)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v20);
    }

    v28 = 8 * a5;
    v29 = __dst;
    v30 = v6;
    goto LABEL_35;
  }

  v17 = &__src[v10 - __dst];
  v18 = a1[1];
  while (v17 != a4)
  {
    v19 = *v17;
    v17 += 8;
    *v18 = v19;
    v18 += 8;
  }

  a1[1] = v18;
  if (v16 >= 1)
  {
    v24 = &__dst[8 * a5];
    v25 = &v18[-8 * a5];
    v26 = v18;
    while (v25 < v10)
    {
      v27 = *v25;
      v25 += 8;
      *v26 = v27;
      v26 += 8;
    }

    a1[1] = v26;
    if (v18 != v24)
    {
      memmove(&__dst[8 * a5], __dst, v18 - v24);
    }

    if (v10 != __dst)
    {
      v29 = __dst;
      v30 = v6;
      v28 = v10 - __dst;
LABEL_35:

      memmove(v29, v30, v28);
    }
  }
}

void md::MapTileDataRenderable<md::PolygonTileData>::~MapTileDataRenderable(md::BaseMapTileDataRenderable *this)
{
  *this = &unk_1F2A2BFF0;
  v2 = *(this + 50);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::BaseMapTileDataRenderable::~BaseMapTileDataRenderable(this);
}

void md::MapTileDataRenderable<md::PolygonTileData>::~MapTileDataRenderable(md::BaseMapTileDataRenderable *a1)
{
  md::MapTileDataRenderable<md::PolygonTileData>::~MapTileDataRenderable(a1);

  JUMPOUT(0x1B8C62190);
}

void md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::PolygonTileData>>::_updateSubTileMaskForRenderable(uint64_t a1, int8x8_t **a2, uint64_t a3)
{
  v5 = *(a3 + 392);
  v6 = *(a3 + 400);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *(a3 + 56);
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = md::SceneContext::subtileClipMask(*a2, v5, v7);
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v8 = md::SceneContext::subtileClipMask(*a2, v5, *(a3 + 56));
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v8[4] == v8[3] * v8[3])
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

LABEL_8:
  md::BaseMapTileDataRenderable::setSubtileClipMask(a3, v9);
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

void sub_1B3097368(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::PolygonTileData>>::_determineExitingRenderables(void *a1)
{
  v2 = a1[34];
  v1 = a1[35];
  if (v2 != v1)
  {
    while ((md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::_determineExitingRenderables(md::SceneContext const*)::{lambda(md::RoadTileDataRenderable*)#1}::operator()(a1, *v2) & 1) != 0)
    {
      ++v2;
LABEL_4:
      if (v2 == v1)
      {
        return v1;
      }
    }

    v4 = v1 - 1;
    while (v4 != v2)
    {
      v1 = v4;
      v5 = *v4--;
      if (md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::_determineExitingRenderables(md::SceneContext const*)::{lambda(md::RoadTileDataRenderable*)#1}::operator()(a1, v5))
      {
        v6 = *v2;
        *v2++ = *v1;
        *v1 = v6;
        goto LABEL_4;
      }
    }
  }

  return v2;
}

void md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::PolygonTileData>>::_determineEnteringRenderables(uint64_t a1@<X0>, md::LayoutContext *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v14 = gdc::Context::get<md::GeometryContext>(*(a2 + 1));
  if (v14)
  {
    v5 = *(a1 + 192);
    if (v5)
    {
      if (!(v5 >> 61))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v5);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if ((*(*a1 + 208))(a1))
    {
      v6 = *(a1 + 34);
    }

    else
    {
      v6 = -1;
    }

    v7 = *(a1 + 176);
    if (v7 != a1 + 184)
    {
      v13 = v6;
      v9 = *(v7 + 32);
      v8 = *(v7 + 40);
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      v17 = *(v9 + 172);
      v16[0] = *(v9 + 168);
      v18 = *(v9 + 184);
      v19 = *(v9 + 192);
      v10 = *(v9 + 608);
      v11 = *(v9 + 616);
      v12 = md::LayoutContext::cameraType(a2);
      gdc::ToCoordinateSystem(v12);
      md::GeometryContext::transformConstantData(&v15, v14, v16, v12, v13, v10, v11);
    }
  }
}

void sub_1B3097774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (v16)
  {
    *(v15 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

double md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::PolygonTileData>>::_updateLayerDataInfo(uint64_t a1, md::SceneContext *a2)
{
  std::set<gdc::LayerDataWithWorld>::swap[abi:nn200100]((a1 + 128), a1 + 152);
  v4 = (a1 + 136);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 136));
  *(a1 + 128) = a1 + 136;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v5 = *(a1 + 320);
  v6 = *(a1 + 328);
  while (v5 != v6)
  {
    v7 = *v5++;
    v8 = md::SceneContext::layerDataInView(a2, v7);
    std::set<gdc::LayerDataWithWorld>::insert[abi:nn200100]<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>((a1 + 128), *v8, v8 + 1);
  }

  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 184));
  *(a1 + 176) = a1 + 184;
  v9 = (a1 + 176);
  *(a1 + 192) = 0;
  *(a1 + 184) = 0;
  v10 = (a1 + 208);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 208));
  *(a1 + 200) = a1 + 208;
  v11 = (a1 + 200);
  *v10 = 0;
  v11[2] = 0;
  v12 = *(v11 - 6);
  v13 = *v9;
  v22 = *(v11 - 9);
  v20 = v12;
  v21 = v4;
  v18.n128_u64[1] = v13;
  v19 = v11 - 5;
  v18.n128_u64[0] = v9;
  std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::insert_iterator<std::set<gdc::LayerDataWithWorld>> &>(v17, &v22, &v21, &v20, &v19, &v18);
  v14 = *(v11 - 9);
  v15 = *v11;
  v22 = *(v11 - 6);
  v20 = v14;
  v21 = v11 - 5;
  v18.n128_u64[1] = v15;
  v19 = v4;
  v18.n128_u64[0] = v11;
  *&result = std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::insert_iterator<std::set<gdc::LayerDataWithWorld>> &>(v17, &v22, &v21, &v20, &v19, &v18).n128_u64[0];
  return result;
}

void md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::PolygonTileData>>::updateWithContext(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v4 = md::LayoutContext::get<md::CameraContext>(*(a3 + 8));
  v6 = *a2;
  v5 = a2[1];
  if (v6 != v5)
  {
    v7 = v4;
    v8 = v4 + 808;
    do
    {
      v9 = 0;
      v10 = *v6;
      v11 = v7[471] * v7[173] / (v7[171] * (*(*v6 + 80) - *(*v6 + 64)));
      *(*v6 + 376) = v11;
      v12 = v8;
      do
      {
        v13 = 0;
        v14 = v10 + 96;
        do
        {
          v15 = 0;
          v16 = 0.0;
          v17 = v12;
          do
          {
            v18 = *v17;
            v17 += 4;
            v16 = v16 + *(v14 + v15) * v18;
            v15 += 8;
          }

          while (v15 != 32);
          *&v26[4 * v13++ + v9] = v16;
          v14 += 32;
        }

        while (v13 != 4);
        ++v9;
        ++v12;
      }

      while (v9 != 4);
      v19 = 0;
      v20 = v26;
      do
      {
        v22 = *v20;
        v21 = v20[1];
        v20 += 2;
        v28[v19++] = vcvt_hight_f32_f64(vcvt_f32_f64(v22), v21);
      }

      while (v19 != 4);
      ggl::DataAccess<ggl::Tile::View>::DataAccess(v26, *(v10 + 224), 1);
      v23 = v27;
      v24 = v28[1];
      *v27 = v28[0];
      v23[1] = v24;
      v25 = v28[3];
      v23[2] = v28[2];
      v23[3] = v25;
      *(v23 + 16) = *(v10 + 376);
      ggl::BufferMemory::~BufferMemory(v26);
      ++v6;
    }

    while (v6 != v5);
  }
}

uint64_t md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::PolygonTileData>>::determineZRangeMapData(uint64_t result, md::SceneContext *this)
{
  *(result + 48) = 255;
  if (this)
  {
    v2 = result;
    v3 = *(result + 320);
    v4 = *(result + 328);
    if (v3 == v4)
    {
      goto LABEL_17;
    }

    do
    {
      result = md::SceneContext::layerDataInView(this, *v3);
      v6 = (result + 8);
      v7 = *result;
      if (*result != result + 8)
      {
        v8 = *(v2 + 48);
        v9 = *(v2 + 49);
        do
        {
          FillRect = grl::IconMetricsRenderResult::getFillRect(v7[4]);
          Int32 = gdc::ResourceKey::getInt32(*(FillRect + 16), 2u);
          if (v8 >= Int32)
          {
            v8 = Int32;
          }

          *(v2 + 48) = v8;
          v12 = grl::IconMetricsRenderResult::getFillRect(v7[4]);
          result = gdc::ResourceKey::getInt32(*(v12 + 16), 2u);
          if (v9 <= result)
          {
            v9 = result;
          }

          *(v2 + 49) = v9;
          v13 = v7[1];
          if (v13)
          {
            do
            {
              v14 = v13;
              v13 = *v13;
            }

            while (v13);
          }

          else
          {
            do
            {
              v14 = v7[2];
              v15 = *v14 == v7;
              v7 = v14;
            }

            while (!v15);
          }

          v7 = v14;
        }

        while (v14 != v6);
      }

      ++v3;
    }

    while (v3 != v4);
    if (*(v2 + 49) < *(v2 + 48))
    {
LABEL_17:
      *(v2 + 48) = 0;
    }
  }

  return result;
}

uint64_t md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::PolygonTileData>>::updateVisibleMapData(void *a1, uint64_t a2)
{
  v2 = a2;
  v105 = *MEMORY[0x1E69E9840];
  v4 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
  (*(*a1 + 144))(a1, v4);
  if ((*(*a1 + 200))(a1))
  {
    goto LABEL_127;
  }

  v5 = md::LayoutContext::get<md::SceneContext>(*(v2 + 8));
  if (!v5)
  {
    goto LABEL_127;
  }

  v96 = v2;
  v95 = v5;
  (*(*a1 + 160))(a1);
  v6 = a1[22];
  if (v6 == a1 + 23)
  {
    goto LABEL_65;
  }

  do
  {
    FillRect = grl::IconMetricsRenderResult::getFillRect(v6[4]);
    v8 = a1[12];
    if (!*&v8)
    {
      goto LABEL_59;
    }

    v9 = FillRect;
    v10 = *(FillRect + 104);
    v11 = vcnt_s8(v8);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v13 = *(FillRect + 104);
      if (v10 >= *&v8)
      {
        v13 = v10 % *&v8;
      }
    }

    else
    {
      v13 = (*&v8 - 1) & v10;
    }

    v14 = *(a1[11] + 8 * v13);
    if (!v14)
    {
      goto LABEL_59;
    }

    v15 = *v14;
    if (!*v14)
    {
      goto LABEL_59;
    }

    while (1)
    {
      v16 = *(v15 + 1);
      if (v16 == v10)
      {
        break;
      }

      if (v12 > 1)
      {
        if (v16 >= *&v8)
        {
          v16 %= *&v8;
        }
      }

      else
      {
        v16 &= *&v8 - 1;
      }

      if (v16 != v13)
      {
        goto LABEL_59;
      }

LABEL_19:
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_59;
      }
    }

    if (!gdc::LayerDataRequestKey::operator==(v15 + 16, v9))
    {
      goto LABEL_19;
    }

    v18 = a1[34];
    v17 = a1[35];
    if (v18 != v17)
    {
      while (*v18 != *(v15 + 16))
      {
        v18 += 8;
        if (v18 == v17)
        {
          v18 = a1[35];
          break;
        }
      }
    }

    v19 = v17 - (v18 + 8);
    if (v17 != v18 + 8)
    {
      memmove(v18, v18 + 8, v17 - (v18 + 8));
    }

    a1[35] = &v18[v19];
    v20 = *(v15 + 16);
    if (v20 && a1[30])
    {
      (**v20)(*(v15 + 16));
      *v20 = a1[33];
      a1[33] = v20;
    }

    v21 = a1[12];
    v22 = *(v15 + 1);
    v23 = vcnt_s8(v21);
    v23.i16[0] = vaddlv_u8(v23);
    if (v23.u32[0] > 1uLL)
    {
      if (v22 >= *&v21)
      {
        v22 %= *&v21;
      }
    }

    else
    {
      v22 &= *&v21 - 1;
    }

    v24 = a1[11];
    v25 = *(v24 + 8 * v22);
    do
    {
      v26 = v25;
      v25 = *v25;
    }

    while (v25 != v15);
    if (v26 == (a1 + 13))
    {
      goto LABEL_47;
    }

    v27 = *(v26 + 1);
    if (v23.u32[0] > 1uLL)
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

    if (v27 != v22)
    {
LABEL_47:
      if (!*v15)
      {
        goto LABEL_48;
      }

      v28 = *(*v15 + 8);
      if (v23.u32[0] > 1uLL)
      {
        if (v28 >= *&v21)
        {
          v28 %= *&v21;
        }
      }

      else
      {
        v28 &= *&v21 - 1;
      }

      if (v28 != v22)
      {
LABEL_48:
        *(v24 + 8 * v22) = 0;
      }
    }

    v29 = *v15;
    if (*v15)
    {
      v30 = *(v29 + 1);
      if (v23.u32[0] > 1uLL)
      {
        if (v30 >= *&v21)
        {
          v30 %= *&v21;
        }
      }

      else
      {
        v30 &= *&v21 - 1;
      }

      if (v30 != v22)
      {
        *(a1[11] + 8 * v30) = v26;
        v29 = *v15;
      }
    }

    *v26 = v29;
    *v15 = 0;
    --a1[14];
    v31 = *(v15 + 4);
    if (v31 != *(v15 + 6))
    {
      free(v31);
    }

    operator delete(v15);
LABEL_59:
    v32 = v6[1];
    if (v32)
    {
      do
      {
        v33 = v32;
        v32 = *v32;
      }

      while (v32);
    }

    else
    {
      do
      {
        v33 = v6[2];
        v34 = *v33 == v6;
        v6 = v33;
      }

      while (!v34);
    }

    v6 = v33;
  }

  while (v33 != a1 + 23);
LABEL_65:
  v2 = v96;
  (*(*a1 + 168))(&__p, a1, v96);
  v35 = __p;
  v36 = v102 - __p;
  v37 = (v102 - __p) >> 3;
  if (v37 < 1)
  {
    goto LABEL_82;
  }

  v39 = a1[35];
  v38 = a1[36];
  if (v38 - v39 < v36)
  {
    v40 = a1[34];
    v41 = v37 + (&v39[-v40] >> 3);
    if (!(v41 >> 61))
    {
      v42 = v38 - v40;
      v43 = (v38 - v40) >> 2;
      if (v43 > v41)
      {
        v41 = v43;
      }

      if (v42 >= 0x7FFFFFFFFFFFFFF8)
      {
        v44 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v44 = v41;
      }

      if (v44)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v44);
      }

      v45 = 8 * (&v39[-v40] >> 3);
      v46 = (v45 + v36);
      v47 = v45;
      do
      {
        v48 = *v35++;
        *v47++ = v48;
        v36 -= 8;
      }

      while (v36);
      memcpy(v46, v39, a1[35] - v39);
      v49 = a1[34];
      v50 = &v46[a1[35] - v39];
      a1[35] = v39;
      v51 = v39 - v49;
      v52 = (v45 - (v39 - v49));
      memcpy(v52, v49, v51);
      v53 = a1[34];
      a1[34] = v52;
      a1[35] = v50;
      a1[36] = 0;
      if (v53)
      {
        operator delete(v53);
      }

      goto LABEL_82;
    }

LABEL_136:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (__p != v102)
  {
    memmove(a1[35], __p, v102 - __p);
  }

  a1[35] = &v39[v36];
LABEL_82:
  if (*(a1 + 86) == 2)
  {
    v54 = a1[34];
    v55 = a1[35];
    while (v54 != v55)
    {
      (*(*a1 + 184))(a1, v95, *v54++);
    }
  }

  v56 = (*(*a1 + 176))(a1, v95);
  v57 = v56;
  v58 = a1[35];
  v99 = v56;
  v100 = v58;
  if (*(a1 + 13) == 1)
  {
    v98[0] = __p;
    v98[1] = v102;
    v59 = a1[34];
    if (v56 != v59)
    {
      while (((*(*a1 + 136))(a1, v96, *v59) & 1) != 0)
      {
        v59 += 8;
LABEL_102:
        if (v59 == v57)
        {
          goto LABEL_89;
        }
      }

      v69 = v57 - 8;
      while (v69 != v59)
      {
        v57 = v69;
        v70 = (*(*a1 + 136))(a1, v96, *v69);
        v69 = v57 - 8;
        if (v70)
        {
          v71 = *v59;
          *v59 = *v57;
          v59 += 8;
          *v57 = v71;
          goto LABEL_102;
        }
      }
    }

    v57 = v59;
LABEL_89:
    v97[0] = a1[34];
    v97[1] = v57;
    (*(*a1 + 120))(a1, &v99);
    (*(*a1 + 112))(a1, v96, v98);
    (*(*a1 + 128))(a1, v96, v97);
    v57 = (*(*a1 + 176))(a1, v95);
    v58 = a1[35];
    v99 = v57;
    v100 = v58;
  }

  v60 = v58 - v57;
  v61 = (v58 - v57) >> 3;
  if (v61 >= 1)
  {
    v63 = a1[38];
    v62 = a1[39];
    if (v62 - v63 >= v60)
    {
      while (v57 != v58)
      {
        v72 = *v57;
        v57 += 8;
        *v63++ = v72;
      }

      a1[38] = v63;
    }

    else
    {
      v64 = a1[37];
      v65 = v61 + ((v63 - v64) >> 3);
      if (v65 >> 61)
      {
        goto LABEL_136;
      }

      v66 = v62 - v64;
      v67 = (v62 - v64) >> 2;
      if (v67 > v65)
      {
        v65 = v67;
      }

      if (v66 >= 0x7FFFFFFFFFFFFFF8)
      {
        v68 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v68 = v65;
      }

      if (v68)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v68);
      }

      v73 = 8 * ((v63 - v64) >> 3);
      v74 = (v73 + v60);
      v75 = v73;
      do
      {
        v76 = *v57;
        v57 += 8;
        *v75++ = v76;
        v60 -= 8;
      }

      while (v60);
      memcpy(v74, v63, a1[38] - v63);
      v77 = a1[37];
      v78 = &v74[a1[38] - v63];
      a1[38] = v63;
      v79 = v63 - v77;
      v80 = (v73 - (v63 - v77));
      memcpy(v80, v77, v79);
      v81 = a1[37];
      a1[37] = v80;
      a1[38] = v78;
      a1[39] = 0;
      if (v81)
      {
        operator delete(v81);
      }
    }
  }

  v82 = v99;
  if (v99 != v100)
  {
    v83 = a1[35];
    v84 = v83 - v100;
    if (v83 != v100)
    {
      memmove(v99, v100, v83 - v100);
    }

    a1[35] = &v82[v84];
  }

  v85 = a1[37];
  v86 = a1[38];
  if (v86 != v85)
  {
    do
    {
      v87 = *v85;
      if (*v85 && a1[30])
      {
        (**v87)(*v85);
        *v87 = a1[33];
        a1[33] = v87;
      }

      ++v85;
    }

    while (v85 != v86);
    v85 = a1[37];
  }

  a1[38] = v85;
  (*(*a1 + 192))(a1);
  if (__p)
  {
    v102 = __p;
    operator delete(__p);
  }

LABEL_127:
  v88 = (*(*a1 + 96))(a1, v2);
  v89 = a1[10];
  if (v89)
  {
    v90 = *v88;
    v91 = v88[1];
    if (v89 == a1 + 7)
    {
      v104 = v103;
      (*(*v89 + 24))(v89, v103);
    }

    else
    {
      v104 = (*(*v89 + 16))(v89);
    }

    v92 = 126 - 2 * __clz((v91->i64 - v90) >> 3);
    if (v91 == v90)
    {
      v93 = 0;
    }

    else
    {
      v93 = v92;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)> &,md::MapTileDataRenderable<md::PolygonTileData> **,false>(v90, v91, v103, v93, 1);
    std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::~__value_func[abi:nn200100](v103);
  }

  return (*(*a1 + 152))(a1, v88, v2);
}

void sub_1B30985A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)> &,md::MapTileDataRenderable<md::PolygonTileData> **,false>(uint64_t result, int8x16_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = &a2[-1].i64[1];
  v10 = v8;
  v125 = a2;
  while (1)
  {
    v8 = v10;
    v11 = (a2 - v10) >> 3;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *v9, v10->i64[0]);
      if (result)
      {
        v79 = v10->i64[0];
        v10->i64[0] = *v9;
LABEL_103:
        *v9 = v79;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v82 = &v10->u64[1];
      v84 = v10 == a2 || v82 == a2;
      if (a5)
      {
        if (!v84)
        {
          v85 = 0;
          v86 = v10;
          do
          {
            v88 = v86->i64[0];
            v87 = v86->i64[1];
            v86 = v82;
            result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v87, v88);
            if (result)
            {
              v89 = v86->i64[0];
              v90 = v85;
              while (1)
              {
                *(&v10->i64[1] + v90) = *(v10->i64 + v90);
                if (!v90)
                {
                  break;
                }

                result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v89, *(&v10->i64[-1] + v90));
                v90 -= 8;
                if ((result & 1) == 0)
                {
                  v91 = (&v10->i64[1] + v90);
                  goto LABEL_125;
                }
              }

              v91 = v10;
LABEL_125:
              *v91 = v89;
            }

            v82 = &v86->u64[1];
            v85 += 8;
          }

          while (&v86->u64[1] != a2);
        }
      }

      else if (!v84)
      {
        do
        {
          v120 = *v8;
          v119 = *(v8 + 8);
          v8 = v82;
          result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v119, v120);
          if (result)
          {
            v121 = *v8;
            v122 = v8;
            do
            {
              v123 = v122;
              v124 = *--v122;
              *v123 = v124;
              result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v121, *(v123 - 2));
            }

            while ((result & 1) != 0);
            *v122 = v121;
          }

          v82 = (v8 + 8);
        }

        while ((v8 + 8) != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v92 = (v11 - 2) >> 1;
        v127 = v92;
        do
        {
          v93 = v92;
          if (v127 >= v92)
          {
            v94 = (2 * v92) | 1;
            v95 = (v8 + 8 * v94);
            if (2 * v92 + 2 < v11 && std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *v95, v95[1]))
            {
              ++v95;
              v94 = 2 * v93 + 2;
            }

            v96 = (v8 + 8 * v93);
            result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *v95, *v96);
            if ((result & 1) == 0)
            {
              v97 = *v96;
              do
              {
                v98 = v95;
                *v96 = *v95;
                if (v127 < v94)
                {
                  break;
                }

                v99 = (2 * v94) | 1;
                v95 = (v8 + 8 * v99);
                v100 = 2 * v94 + 2;
                if (v100 < v11 && std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *v95, v95[1]))
                {
                  ++v95;
                  v99 = v100;
                }

                result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *v95, v97);
                v96 = v98;
                v94 = v99;
              }

              while (!result);
              *v98 = v97;
            }
          }

          v92 = v93 - 1;
        }

        while (v93);
        v101 = v125;
        do
        {
          v102 = v101;
          v103 = 0;
          v128 = *v8;
          v104 = v8;
          do
          {
            v105 = &v104[v103];
            v106 = v105 + 1;
            v107 = (2 * v103) | 1;
            v108 = 2 * v103 + 2;
            if (v108 >= v11)
            {
              v103 = (2 * v103) | 1;
            }

            else
            {
              v110 = v105[2];
              v109 = v105 + 2;
              result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *(v109 - 1), v110);
              if (result)
              {
                v106 = v109;
                v103 = v108;
              }

              else
              {
                v103 = v107;
              }
            }

            *v104 = *v106;
            v104 = v106;
          }

          while (v103 <= (v11 - 2) / 2);
          v101 = v102 - 1;
          if (v106 == v102 - 1)
          {
            *v106 = v128;
          }

          else
          {
            *v106 = *v101;
            *v101 = v128;
            v111 = (v106 - v8 + 8) >> 3;
            v112 = v111 < 2;
            v113 = v111 - 2;
            if (!v112)
            {
              v114 = v113 >> 1;
              v115 = (v8 + 8 * (v113 >> 1));
              result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *v115, *v106);
              if (result)
              {
                v116 = *v106;
                do
                {
                  v117 = v115;
                  *v106 = *v115;
                  if (!v114)
                  {
                    break;
                  }

                  v114 = (v114 - 1) >> 1;
                  v115 = (v8 + 8 * v114);
                  result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *v115, v116);
                  v106 = v117;
                }

                while ((result & 1) != 0);
                *v117 = v116;
              }
            }
          }

          v112 = v11-- <= 2;
        }

        while (!v112);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *(a3 + 24);
    if (v11 < 0x81)
    {
      v17 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(v13, v10->i64[0], v10->i64[v12]);
      v18 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *v9, v10->i64[0]);
      if (v17)
      {
        v19 = v10->i64[v12];
        if (v18)
        {
          v10->i64[v12] = *v9;
          *v9 = v19;
        }

        else
        {
          v10->i64[v12] = v10->i64[0];
          v10->i64[0] = v19;
          if (std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *v9, v19))
          {
            v31 = v10->i64[0];
            v10->i64[0] = *v9;
            *v9 = v31;
          }
        }
      }

      else if (v18)
      {
        v22 = v10->i64[0];
        v10->i64[0] = *v9;
        *v9 = v22;
        if (std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v10->i64[0], v10->i64[v12]))
        {
          v23 = v10->i64[v12];
          v10->i64[v12] = v10->i64[0];
          v10->i64[0] = v23;
        }
      }

      goto LABEL_55;
    }

    v14 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(v13, v10->i64[v12], v10->i64[0]);
    v15 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *v9, v10->i64[v12]);
    if (v14)
    {
      v16 = v10->i64[0];
      if (v15)
      {
        v10->i64[0] = *v9;
        *v9 = v16;
      }

      else
      {
        v10->i64[0] = v10->i64[v12];
        v10->i64[v12] = v16;
        if (std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *v9, v16))
        {
          v24 = v10->i64[v12];
          v10->i64[v12] = *v9;
          *v9 = v24;
        }
      }
    }

    else if (v15)
    {
      v20 = v10->i64[v12];
      v10->i64[v12] = *v9;
      *v9 = v20;
      if (std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v10->i64[v12], v10->i64[0]))
      {
        v21 = v10->i64[0];
        v10->i64[0] = v10->i64[v12];
        v10->i64[v12] = v21;
      }
    }

    v25 = v12 - 1;
    v26 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *(v8 + 8 * (v12 - 1)), *(v8 + 8));
    v27 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), a2[-1].i64[0], *(v8 + 8 * (v12 - 1)));
    if (v26)
    {
      v28 = *(v8 + 8);
      if (v27)
      {
        *(v8 + 8) = a2[-1].i64[0];
        a2[-1].i64[0] = v28;
      }

      else
      {
        *(v8 + 8) = *(v8 + 8 * v25);
        *(v8 + 8 * v25) = v28;
        if (std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), a2[-1].i64[0], v28))
        {
          v32 = *(v8 + 8 * v25);
          *(v8 + 8 * v25) = a2[-1].i64[0];
          a2[-1].i64[0] = v32;
        }
      }
    }

    else if (v27)
    {
      v29 = *(v8 + 8 * v25);
      *(v8 + 8 * v25) = a2[-1].i64[0];
      a2[-1].i64[0] = v29;
      if (std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *(v8 + 8 * v25), *(v8 + 8)))
      {
        v30 = *(v8 + 8);
        *(v8 + 8) = *(v8 + 8 * v25);
        *(v8 + 8 * v25) = v30;
      }
    }

    v33 = a2;
    v34 = v12 + 1;
    v35 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *(v8 + 8 * (v12 + 1)), *(v8 + 16));
    v36 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v33[-2].i64[1], *(v8 + 8 * (v12 + 1)));
    if (v35)
    {
      v37 = *(v8 + 16);
      if (v36)
      {
        *(v8 + 16) = v125[-2].i64[1];
        v125[-2].i64[1] = v37;
      }

      else
      {
        *(v8 + 16) = *(v8 + 8 * v34);
        *(v8 + 8 * v34) = v37;
        if (std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v125[-2].i64[1], v37))
        {
          v40 = *(v8 + 8 * v34);
          *(v8 + 8 * v34) = v125[-2].i64[1];
          v125[-2].i64[1] = v40;
        }
      }
    }

    else if (v36)
    {
      v38 = *(v8 + 8 * v34);
      *(v8 + 8 * v34) = v125[-2].i64[1];
      v125[-2].i64[1] = v38;
      if (std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *(v8 + 8 * v34), *(v8 + 16)))
      {
        v39 = *(v8 + 16);
        *(v8 + 16) = *(v8 + 8 * v34);
        *(v8 + 8 * v34) = v39;
      }
    }

    v41 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *(v8 + 8 * v12), *(v8 + 8 * v25));
    v42 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *(v8 + 8 * v34), *(v8 + 8 * v12));
    if ((v41 & 1) == 0)
    {
      v44 = *(v8 + 8 * v12);
      if (!v42)
      {
        goto LABEL_54;
      }

      v45 = *(v8 + 8 * v34);
      *(v8 + 8 * v12) = v45;
      *(v8 + 8 * v34) = v44;
      v46 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v45, *(v8 + 8 * v25));
      v44 = *(v8 + 8 * v12);
      if (!v46)
      {
        goto LABEL_54;
      }

      v47 = *(v8 + 8 * v25);
      *(v8 + 8 * v25) = v44;
      *(v8 + 8 * v12) = v47;
      goto LABEL_53;
    }

    v43 = *(v8 + 8 * v25);
    if (v42)
    {
      *(v8 + 8 * v25) = *(v8 + 8 * v34);
      *(v8 + 8 * v34) = v43;
      v44 = *(v8 + 8 * v12);
    }

    else
    {
      *(v8 + 8 * v25) = *(v8 + 8 * v12);
      *(v8 + 8 * v12) = v43;
      v48 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *(v8 + 8 * v34), v43);
      v44 = *(v8 + 8 * v12);
      if (v48)
      {
        v47 = *(v8 + 8 * v34);
        *(v8 + 8 * v12) = v47;
        *(v8 + 8 * v34) = v44;
LABEL_53:
        v44 = v47;
      }
    }

LABEL_54:
    a2 = v125;
    v49 = *v8;
    *v8 = v44;
    *(v8 + 8 * v12) = v49;
LABEL_55:
    --a4;
    v50 = *v8;
    if (a5 & 1) != 0 || (v51 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *(v8 - 8), *v8), v50 = *v8, (v51))
    {
      v52 = v8;
      do
      {
        v53 = v52;
        v54 = v52->i64[1];
        v52 = (v52 + 8);
      }

      while ((std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v54, v50) & 1) != 0);
      v55 = a2;
      if (v53 == v8)
      {
        v55 = a2;
        do
        {
          if (v52 >= v55)
          {
            break;
          }

          v57 = v55[-1].i64[1];
          v55 = (v55 - 8);
        }

        while ((std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v57, v50) & 1) == 0);
      }

      else
      {
        do
        {
          v56 = v55[-1].i64[1];
          v55 = (v55 - 8);
        }

        while (!std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v56, v50));
      }

      if (v52 < v55)
      {
        v58 = v52;
        v59 = v55;
        do
        {
          v60 = v58->i64[0];
          v58->i64[0] = v59->i64[0];
          v59->i64[0] = v60;
          do
          {
            v53 = v58;
            v61 = v58->i64[1];
            v58 = (v58 + 8);
          }

          while ((std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v61, v50) & 1) != 0);
          do
          {
            v62 = v59[-1].i64[1];
            v59 = (v59 - 8);
          }

          while (!std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v62, v50));
        }

        while (v58 < v59);
      }

      if (v53 != v8)
      {
        *v8 = v53->i64[0];
      }

      v53->i64[0] = v50;
      a2 = v125;
      if (v52 < v55)
      {
        goto LABEL_76;
      }

      v63 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)> &,md::MapTileDataRenderable<md::PolygonTileData> **>(v8, v53->i64, a3);
      v10 = &v53->u64[1];
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)> &,md::MapTileDataRenderable<md::PolygonTileData> **>(&v53->i64[1], v125->i64, a3);
      if (result)
      {
        a2 = v53;
        if (!v63)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v63)
      {
LABEL_76:
        result = std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)> &,md::MapTileDataRenderable<md::PolygonTileData> **,false>(v8, v53, a3, a4, a5 & 1);
        a5 = 0;
        v10 = &v53->u64[1];
      }
    }

    else
    {
      result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *v8, *v9);
      if (result)
      {
        v10 = v8;
        do
        {
          v64 = v10->i64[1];
          v10 = (v10 + 8);
          result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v50, v64);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v65 = v8 + 8;
        do
        {
          v10 = v65;
          if (v65 >= a2)
          {
            break;
          }

          v65 += 8;
          result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v50, v10->i64[0]);
        }

        while (!result);
      }

      v66 = a2;
      if (v10 < a2)
      {
        v66 = a2;
        do
        {
          v67 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v50, v67);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v66)
      {
        v68 = v10->i64[0];
        v10->i64[0] = v66->i64[0];
        v66->i64[0] = v68;
        do
        {
          v69 = v10->i64[1];
          v10 = (v10 + 8);
        }

        while (!std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v50, v69));
        do
        {
          v70 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v50, v70);
        }

        while ((result & 1) != 0);
      }

      v71 = &v10[-1].i64[1];
      if (&v10[-1].u64[1] != v8)
      {
        *v8 = *v71;
      }

      a5 = 0;
      *v71 = v50;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)> &,md::MapTileDataRenderable<md::PolygonTileData> **,0>(v10->i64, &v10->i64[1], v10[1].i64, v9, a3);
    }

    if (v11 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)> &,md::MapTileDataRenderable<md::PolygonTileData> **,0>(v10->i64, &v10->i64[1], v10[1].i64, &v10[1].i64[1], a3);
      result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *v9, v10[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v72 = v10[1].i64[1];
      v10[1].i64[1] = *v9;
      *v9 = v72;
      result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v10[1].i64[1], v10[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v74 = v10[1].i64[0];
      v73 = v10[1].i64[1];
      v75 = v10->i64[1];
      v10[1].i64[0] = v73;
      v10[1].i64[1] = v74;
      result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v73, v75);
      if (!result)
      {
        return result;
      }

      v77 = v10->i64[1];
      v76 = v10[1].i64[0];
      v78 = v10->i64[0];
      v10->i64[1] = v76;
      v10[1].i64[0] = v77;
      goto LABEL_164;
    }

    goto LABEL_10;
  }

  v80 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v10->i64[1], v10->i64[0]);
  result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *v9, v10->i64[1]);
  if ((v80 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v118 = v10->i64[1];
    v10->i64[1] = *v9;
    *v9 = v118;
    v78 = v10->i64[0];
    v76 = v10->i64[1];
LABEL_164:
    result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v76, v78);
    if (result)
    {
      *v10 = vextq_s8(*v10, *v10, 8uLL);
    }

    return result;
  }

  v81 = v10->i64[0];
  if (result)
  {
    v10->i64[0] = *v9;
    *v9 = v81;
  }

  else
  {
    v10->i64[0] = v10->i64[1];
    v10->i64[1] = v81;
    result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *v9, v81);
    if (result)
    {
      v79 = v10->i64[1];
      v10->i64[1] = *v9;
      goto LABEL_103;
    }
  }

  return result;
}

uint64_t std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a3;
  v10 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v10, &v9);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)> &,md::MapTileDataRenderable<md::PolygonTileData> **,0>(v4, v5, v6, v7, v8);
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)> &,md::MapTileDataRenderable<md::PolygonTileData> **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a5 + 24), *a2, *a1);
  v11 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a5 + 24), *a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if (std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a5 + 24), *a3, v12))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if (std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a5 + 24), *a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a5 + 24), *a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a5 + 24), *a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a5 + 24), *a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)> &,md::MapTileDataRenderable<md::PolygonTileData> **>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = (a2 - a1) >> 3;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v15 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *(a1 + 8), *a1);
        v16 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *(a2 - 1), *(a1 + 8));
        if (v15)
        {
          v17 = *a1;
          if (v16)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v17;
            return 1;
          }

          *a1 = *(a1 + 8);
          *(a1 + 8) = v17;
          if (!std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *(a2 - 1), v17))
          {
            return 1;
          }

          v7 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v16)
        {
          return 1;
        }

        v22 = *(a1 + 8);
        *(a1 + 8) = *(a2 - 1);
        *(a2 - 1) = v22;
        v14 = *a1;
        v12 = *(a1 + 8);
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)> &,md::MapTileDataRenderable<md::PolygonTileData> **,0>(a1, (a1 + 8), (a1 + 16), a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)> &,md::MapTileDataRenderable<md::PolygonTileData> **,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24), a3);
        if (!std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *(a2 - 1), *(a1 + 24)))
        {
          return 1;
        }

        v8 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *(a1 + 24), *(a1 + 16)))
        {
          return 1;
        }

        v10 = *(a1 + 16);
        v9 = *(a1 + 24);
        v11 = *(a1 + 8);
        *(a1 + 16) = v9;
        *(a1 + 24) = v10;
        if (!std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v9, v11))
        {
          return 1;
        }

        v13 = *(a1 + 8);
        v12 = *(a1 + 16);
        v14 = *a1;
        *(a1 + 8) = v12;
        *(a1 + 16) = v13;
        break;
      default:
        goto LABEL_17;
    }

    if (std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v12, v14))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if (std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v18 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *(a1 + 8), *a1);
  v19 = (a1 + 16);
  v20 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *(a1 + 16), *(a1 + 8));
  if (v18)
  {
    v21 = *a1;
    if (v20)
    {
      *a1 = *(a1 + 16);
      *(a1 + 16) = v21;
    }

    else
    {
      v26 = *(a1 + 16);
      *a1 = *(a1 + 8);
      *(a1 + 8) = v21;
      if (std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v26, v21))
      {
        *(a1 + 8) = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
      }
    }
  }

  else if (v20)
  {
    v24 = *(a1 + 8);
    v23 = *(a1 + 16);
    v25 = *a1;
    *(a1 + 8) = v23;
    *(a1 + 16) = v24;
    if (std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v23, v25))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v27 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
    return 1;
  }

  v28 = 0;
  v29 = 0;
  while (1)
  {
    if (std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *v27, *v19))
    {
      v30 = *v27;
      v31 = v28;
      while (1)
      {
        v32 = a1 + v31;
        *(a1 + v31 + 24) = *(a1 + v31 + 16);
        if (v31 == -16)
        {
          break;
        }

        v31 -= 8;
        if ((std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v30, *(v32 + 8)) & 1) == 0)
        {
          v33 = (a1 + v31 + 24);
          goto LABEL_40;
        }
      }

      v33 = a1;
LABEL_40:
      *v33 = v30;
      if (++v29 == 8)
      {
        return v27 + 1 == a2;
      }
    }

    v19 = v27;
    v28 += 8;
    if (++v27 == a2)
    {
      return 1;
    }
  }
}

void md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::RasterTileData>>::_updateSubTileMaskForRenderable(uint64_t a1, int8x8_t **a2, uint64_t a3)
{
  v5 = *(a3 + 392);
  v6 = *(a3 + 400);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *(a3 + 56);
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = md::SceneContext::subtileClipMask(*a2, v5, v7);
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v8 = md::SceneContext::subtileClipMask(*a2, v5, *(a3 + 56));
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v8[4] == v8[3] * v8[3])
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

LABEL_8:
  md::BaseMapTileDataRenderable::setSubtileClipMask(a3, v9);
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

void sub_1B309967C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::RasterTileData>>::_determineExitingRenderables(void *a1)
{
  v2 = a1[34];
  v1 = a1[35];
  if (v2 != v1)
  {
    while ((md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::_determineExitingRenderables(md::SceneContext const*)::{lambda(md::RoadTileDataRenderable*)#1}::operator()(a1, *v2) & 1) != 0)
    {
      ++v2;
LABEL_4:
      if (v2 == v1)
      {
        return v1;
      }
    }

    v4 = v1 - 1;
    while (v4 != v2)
    {
      v1 = v4;
      v5 = *v4--;
      if (md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::_determineExitingRenderables(md::SceneContext const*)::{lambda(md::RoadTileDataRenderable*)#1}::operator()(a1, v5))
      {
        v6 = *v2;
        *v2++ = *v1;
        *v1 = v6;
        goto LABEL_4;
      }
    }
  }

  return v2;
}

void md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::RasterTileData>>::_determineEnteringRenderables(uint64_t a1@<X0>, md::LayoutContext *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v14 = gdc::Context::get<md::GeometryContext>(*(a2 + 1));
  if (v14)
  {
    v5 = *(a1 + 192);
    if (v5)
    {
      if (!(v5 >> 61))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v5);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if ((*(*a1 + 208))(a1))
    {
      v6 = *(a1 + 34);
    }

    else
    {
      v6 = -1;
    }

    v7 = *(a1 + 176);
    if (v7 != a1 + 184)
    {
      v13 = v6;
      v9 = *(v7 + 32);
      v8 = *(v7 + 40);
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      v17 = *(v9 + 172);
      v16[0] = *(v9 + 168);
      v18 = *(v9 + 184);
      v19 = *(v9 + 192);
      v10 = *(v9 + 608);
      v11 = *(v9 + 616);
      v12 = md::LayoutContext::cameraType(a2);
      gdc::ToCoordinateSystem(v12);
      md::GeometryContext::transformConstantData(&v15, v14, v16, v12, v13, v10, v11);
    }
  }
}

void sub_1B3099A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (v16)
  {
    *(v15 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void md::MapTileDataRenderable<md::RasterTileData>::~MapTileDataRenderable(md::BaseMapTileDataRenderable *a1)
{
  md::MapTileDataRenderable<md::RasterTileData>::~MapTileDataRenderable(a1);

  JUMPOUT(0x1B8C62190);
}

void md::MapTileDataRenderable<md::RasterTileData>::~MapTileDataRenderable(md::BaseMapTileDataRenderable *this)
{
  *this = &unk_1F2A2C010;
  v2 = *(this + 50);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::BaseMapTileDataRenderable::~BaseMapTileDataRenderable(this);
}

double md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::RasterTileData>>::_updateLayerDataInfo(uint64_t a1, md::SceneContext *a2)
{
  std::set<gdc::LayerDataWithWorld>::swap[abi:nn200100]((a1 + 128), a1 + 152);
  v4 = (a1 + 136);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 136));
  *(a1 + 128) = a1 + 136;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v5 = *(a1 + 320);
  v6 = *(a1 + 328);
  while (v5 != v6)
  {
    v7 = *v5++;
    v8 = md::SceneContext::layerDataInView(a2, v7);
    std::set<gdc::LayerDataWithWorld>::insert[abi:nn200100]<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>((a1 + 128), *v8, v8 + 1);
  }

  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 184));
  *(a1 + 176) = a1 + 184;
  v9 = (a1 + 176);
  *(a1 + 192) = 0;
  *(a1 + 184) = 0;
  v10 = (a1 + 208);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 208));
  *(a1 + 200) = a1 + 208;
  v11 = (a1 + 200);
  *v10 = 0;
  v11[2] = 0;
  v12 = *(v11 - 6);
  v13 = *v9;
  v22 = *(v11 - 9);
  v20 = v12;
  v21 = v4;
  v18.n128_u64[1] = v13;
  v19 = v11 - 5;
  v18.n128_u64[0] = v9;
  std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::insert_iterator<std::set<gdc::LayerDataWithWorld>> &>(v17, &v22, &v21, &v20, &v19, &v18);
  v14 = *(v11 - 9);
  v15 = *v11;
  v22 = *(v11 - 6);
  v20 = v14;
  v21 = v11 - 5;
  v18.n128_u64[1] = v15;
  v19 = v4;
  v18.n128_u64[0] = v11;
  *&result = std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::insert_iterator<std::set<gdc::LayerDataWithWorld>> &>(v17, &v22, &v21, &v20, &v19, &v18).n128_u64[0];
  return result;
}

void md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::RasterTileData>>::updateWithContext(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v4 = md::LayoutContext::get<md::CameraContext>(*(a3 + 8));
  v6 = *a2;
  v5 = a2[1];
  if (v6 != v5)
  {
    v7 = v4;
    v8 = v4 + 808;
    do
    {
      v9 = 0;
      v10 = *v6;
      v11 = v7[471] * v7[173] / (v7[171] * (*(*v6 + 80) - *(*v6 + 64)));
      *(*v6 + 376) = v11;
      v12 = v8;
      do
      {
        v13 = 0;
        v14 = v10 + 96;
        do
        {
          v15 = 0;
          v16 = 0.0;
          v17 = v12;
          do
          {
            v18 = *v17;
            v17 += 4;
            v16 = v16 + *(v14 + v15) * v18;
            v15 += 8;
          }

          while (v15 != 32);
          *&v26[4 * v13++ + v9] = v16;
          v14 += 32;
        }

        while (v13 != 4);
        ++v9;
        ++v12;
      }

      while (v9 != 4);
      v19 = 0;
      v20 = v26;
      do
      {
        v22 = *v20;
        v21 = v20[1];
        v20 += 2;
        v28[v19++] = vcvt_hight_f32_f64(vcvt_f32_f64(v22), v21);
      }

      while (v19 != 4);
      ggl::DataAccess<ggl::Tile::View>::DataAccess(v26, *(v10 + 224), 1);
      v23 = v27;
      v24 = v28[1];
      *v27 = v28[0];
      v23[1] = v24;
      v25 = v28[3];
      v23[2] = v28[2];
      v23[3] = v25;
      *(v23 + 16) = *(v10 + 376);
      ggl::BufferMemory::~BufferMemory(v26);
      ++v6;
    }

    while (v6 != v5);
  }
}

uint64_t md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::RasterTileData>>::determineZRangeMapData(uint64_t result, md::SceneContext *this)
{
  *(result + 48) = 255;
  if (this)
  {
    v2 = result;
    v3 = *(result + 320);
    v4 = *(result + 328);
    if (v3 == v4)
    {
      goto LABEL_17;
    }

    do
    {
      result = md::SceneContext::layerDataInView(this, *v3);
      v6 = (result + 8);
      v7 = *result;
      if (*result != result + 8)
      {
        v8 = *(v2 + 48);
        v9 = *(v2 + 49);
        do
        {
          FillRect = grl::IconMetricsRenderResult::getFillRect(v7[4]);
          Int32 = gdc::ResourceKey::getInt32(*(FillRect + 16), 2u);
          if (v8 >= Int32)
          {
            v8 = Int32;
          }

          *(v2 + 48) = v8;
          v12 = grl::IconMetricsRenderResult::getFillRect(v7[4]);
          result = gdc::ResourceKey::getInt32(*(v12 + 16), 2u);
          if (v9 <= result)
          {
            v9 = result;
          }

          *(v2 + 49) = v9;
          v13 = v7[1];
          if (v13)
          {
            do
            {
              v14 = v13;
              v13 = *v13;
            }

            while (v13);
          }

          else
          {
            do
            {
              v14 = v7[2];
              v15 = *v14 == v7;
              v7 = v14;
            }

            while (!v15);
          }

          v7 = v14;
        }

        while (v14 != v6);
      }

      ++v3;
    }

    while (v3 != v4);
    if (*(v2 + 49) < *(v2 + 48))
    {
LABEL_17:
      *(v2 + 48) = 0;
    }
  }

  return result;
}

uint64_t md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::RasterTileData>>::updateVisibleMapData(void *a1, uint64_t a2)
{
  v2 = a2;
  v105 = *MEMORY[0x1E69E9840];
  v4 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
  (*(*a1 + 144))(a1, v4);
  if ((*(*a1 + 200))(a1))
  {
    goto LABEL_127;
  }

  v5 = md::LayoutContext::get<md::SceneContext>(*(v2 + 8));
  if (!v5)
  {
    goto LABEL_127;
  }

  v96 = v2;
  v95 = v5;
  (*(*a1 + 160))(a1);
  v6 = a1[22];
  if (v6 == a1 + 23)
  {
    goto LABEL_65;
  }

  do
  {
    FillRect = grl::IconMetricsRenderResult::getFillRect(v6[4]);
    v8 = a1[12];
    if (!*&v8)
    {
      goto LABEL_59;
    }

    v9 = FillRect;
    v10 = *(FillRect + 104);
    v11 = vcnt_s8(v8);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v13 = *(FillRect + 104);
      if (v10 >= *&v8)
      {
        v13 = v10 % *&v8;
      }
    }

    else
    {
      v13 = (*&v8 - 1) & v10;
    }

    v14 = *(a1[11] + 8 * v13);
    if (!v14)
    {
      goto LABEL_59;
    }

    v15 = *v14;
    if (!*v14)
    {
      goto LABEL_59;
    }

    while (1)
    {
      v16 = *(v15 + 1);
      if (v16 == v10)
      {
        break;
      }

      if (v12 > 1)
      {
        if (v16 >= *&v8)
        {
          v16 %= *&v8;
        }
      }

      else
      {
        v16 &= *&v8 - 1;
      }

      if (v16 != v13)
      {
        goto LABEL_59;
      }

LABEL_19:
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_59;
      }
    }

    if (!gdc::LayerDataRequestKey::operator==(v15 + 16, v9))
    {
      goto LABEL_19;
    }

    v18 = a1[34];
    v17 = a1[35];
    if (v18 != v17)
    {
      while (*v18 != *(v15 + 16))
      {
        v18 += 8;
        if (v18 == v17)
        {
          v18 = a1[35];
          break;
        }
      }
    }

    v19 = v17 - (v18 + 8);
    if (v17 != v18 + 8)
    {
      memmove(v18, v18 + 8, v17 - (v18 + 8));
    }

    a1[35] = &v18[v19];
    v20 = *(v15 + 16);
    if (v20 && a1[30])
    {
      (**v20)(*(v15 + 16));
      *v20 = a1[33];
      a1[33] = v20;
    }

    v21 = a1[12];
    v22 = *(v15 + 1);
    v23 = vcnt_s8(v21);
    v23.i16[0] = vaddlv_u8(v23);
    if (v23.u32[0] > 1uLL)
    {
      if (v22 >= *&v21)
      {
        v22 %= *&v21;
      }
    }

    else
    {
      v22 &= *&v21 - 1;
    }

    v24 = a1[11];
    v25 = *(v24 + 8 * v22);
    do
    {
      v26 = v25;
      v25 = *v25;
    }

    while (v25 != v15);
    if (v26 == (a1 + 13))
    {
      goto LABEL_47;
    }

    v27 = *(v26 + 1);
    if (v23.u32[0] > 1uLL)
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

    if (v27 != v22)
    {
LABEL_47:
      if (!*v15)
      {
        goto LABEL_48;
      }

      v28 = *(*v15 + 8);
      if (v23.u32[0] > 1uLL)
      {
        if (v28 >= *&v21)
        {
          v28 %= *&v21;
        }
      }

      else
      {
        v28 &= *&v21 - 1;
      }

      if (v28 != v22)
      {
LABEL_48:
        *(v24 + 8 * v22) = 0;
      }
    }

    v29 = *v15;
    if (*v15)
    {
      v30 = *(v29 + 1);
      if (v23.u32[0] > 1uLL)
      {
        if (v30 >= *&v21)
        {
          v30 %= *&v21;
        }
      }

      else
      {
        v30 &= *&v21 - 1;
      }

      if (v30 != v22)
      {
        *(a1[11] + 8 * v30) = v26;
        v29 = *v15;
      }
    }

    *v26 = v29;
    *v15 = 0;
    --a1[14];
    v31 = *(v15 + 4);
    if (v31 != *(v15 + 6))
    {
      free(v31);
    }

    operator delete(v15);
LABEL_59:
    v32 = v6[1];
    if (v32)
    {
      do
      {
        v33 = v32;
        v32 = *v32;
      }

      while (v32);
    }

    else
    {
      do
      {
        v33 = v6[2];
        v34 = *v33 == v6;
        v6 = v33;
      }

      while (!v34);
    }

    v6 = v33;
  }

  while (v33 != a1 + 23);
LABEL_65:
  v2 = v96;
  (*(*a1 + 168))(&__p, a1, v96);
  v35 = __p;
  v36 = v102 - __p;
  v37 = (v102 - __p) >> 3;
  if (v37 < 1)
  {
    goto LABEL_82;
  }

  v39 = a1[35];
  v38 = a1[36];
  if (v38 - v39 < v36)
  {
    v40 = a1[34];
    v41 = v37 + (&v39[-v40] >> 3);
    if (!(v41 >> 61))
    {
      v42 = v38 - v40;
      v43 = (v38 - v40) >> 2;
      if (v43 > v41)
      {
        v41 = v43;
      }

      if (v42 >= 0x7FFFFFFFFFFFFFF8)
      {
        v44 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v44 = v41;
      }

      if (v44)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v44);
      }

      v45 = 8 * (&v39[-v40] >> 3);
      v46 = (v45 + v36);
      v47 = v45;
      do
      {
        v48 = *v35++;
        *v47++ = v48;
        v36 -= 8;
      }

      while (v36);
      memcpy(v46, v39, a1[35] - v39);
      v49 = a1[34];
      v50 = &v46[a1[35] - v39];
      a1[35] = v39;
      v51 = v39 - v49;
      v52 = (v45 - (v39 - v49));
      memcpy(v52, v49, v51);
      v53 = a1[34];
      a1[34] = v52;
      a1[35] = v50;
      a1[36] = 0;
      if (v53)
      {
        operator delete(v53);
      }

      goto LABEL_82;
    }

LABEL_136:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (__p != v102)
  {
    memmove(a1[35], __p, v102 - __p);
  }

  a1[35] = &v39[v36];
LABEL_82:
  if (*(a1 + 86) == 2)
  {
    v54 = a1[34];
    v55 = a1[35];
    while (v54 != v55)
    {
      (*(*a1 + 184))(a1, v95, *v54++);
    }
  }

  v56 = (*(*a1 + 176))(a1, v95);
  v57 = v56;
  v58 = a1[35];
  v99 = v56;
  v100 = v58;
  if (*(a1 + 13) == 1)
  {
    v98[0] = __p;
    v98[1] = v102;
    v59 = a1[34];
    if (v56 != v59)
    {
      while (((*(*a1 + 136))(a1, v96, *v59) & 1) != 0)
      {
        v59 += 8;
LABEL_102:
        if (v59 == v57)
        {
          goto LABEL_89;
        }
      }

      v69 = v57 - 8;
      while (v69 != v59)
      {
        v57 = v69;
        v70 = (*(*a1 + 136))(a1, v96, *v69);
        v69 = v57 - 8;
        if (v70)
        {
          v71 = *v59;
          *v59 = *v57;
          v59 += 8;
          *v57 = v71;
          goto LABEL_102;
        }
      }
    }

    v57 = v59;
LABEL_89:
    v97[0] = a1[34];
    v97[1] = v57;
    (*(*a1 + 120))(a1, &v99);
    (*(*a1 + 112))(a1, v96, v98);
    (*(*a1 + 128))(a1, v96, v97);
    v57 = (*(*a1 + 176))(a1, v95);
    v58 = a1[35];
    v99 = v57;
    v100 = v58;
  }

  v60 = v58 - v57;
  v61 = (v58 - v57) >> 3;
  if (v61 >= 1)
  {
    v63 = a1[38];
    v62 = a1[39];
    if (v62 - v63 >= v60)
    {
      while (v57 != v58)
      {
        v72 = *v57;
        v57 += 8;
        *v63++ = v72;
      }

      a1[38] = v63;
    }

    else
    {
      v64 = a1[37];
      v65 = v61 + ((v63 - v64) >> 3);
      if (v65 >> 61)
      {
        goto LABEL_136;
      }

      v66 = v62 - v64;
      v67 = (v62 - v64) >> 2;
      if (v67 > v65)
      {
        v65 = v67;
      }

      if (v66 >= 0x7FFFFFFFFFFFFFF8)
      {
        v68 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v68 = v65;
      }

      if (v68)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v68);
      }

      v73 = 8 * ((v63 - v64) >> 3);
      v74 = (v73 + v60);
      v75 = v73;
      do
      {
        v76 = *v57;
        v57 += 8;
        *v75++ = v76;
        v60 -= 8;
      }

      while (v60);
      memcpy(v74, v63, a1[38] - v63);
      v77 = a1[37];
      v78 = &v74[a1[38] - v63];
      a1[38] = v63;
      v79 = v63 - v77;
      v80 = (v73 - (v63 - v77));
      memcpy(v80, v77, v79);
      v81 = a1[37];
      a1[37] = v80;
      a1[38] = v78;
      a1[39] = 0;
      if (v81)
      {
        operator delete(v81);
      }
    }
  }

  v82 = v99;
  if (v99 != v100)
  {
    v83 = a1[35];
    v84 = v83 - v100;
    if (v83 != v100)
    {
      memmove(v99, v100, v83 - v100);
    }

    a1[35] = &v82[v84];
  }

  v85 = a1[37];
  v86 = a1[38];
  if (v86 != v85)
  {
    do
    {
      v87 = *v85;
      if (*v85 && a1[30])
      {
        (**v87)(*v85);
        *v87 = a1[33];
        a1[33] = v87;
      }

      ++v85;
    }

    while (v85 != v86);
    v85 = a1[37];
  }

  a1[38] = v85;
  (*(*a1 + 192))(a1);
  if (__p)
  {
    v102 = __p;
    operator delete(__p);
  }

LABEL_127:
  v88 = (*(*a1 + 96))(a1, v2);
  v89 = a1[10];
  if (v89)
  {
    v90 = *v88;
    v91 = v88[1];
    if (v89 == a1 + 7)
    {
      v104 = v103;
      (*(*v89 + 24))(v89, v103);
    }

    else
    {
      v104 = (*(*v89 + 16))(v89);
    }

    v92 = 126 - 2 * __clz((v91->i64 - v90) >> 3);
    if (v91 == v90)
    {
      v93 = 0;
    }

    else
    {
      v93 = v92;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)> &,md::MapTileDataRenderable<md::RasterTileData> **,false>(v90, v91, v103, v93, 1);
    std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::~__value_func[abi:nn200100](v103);
  }

  return (*(*a1 + 152))(a1, v88, v2);
}

void sub_1B309A94C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)> &,md::MapTileDataRenderable<md::RasterTileData> **,false>(uint64_t result, int8x16_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = &a2[-1].i64[1];
  v10 = v8;
  v125 = a2;
  while (1)
  {
    v8 = v10;
    v11 = (a2 - v10) >> 3;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *v9, v10->i64[0]);
      if (result)
      {
        v79 = v10->i64[0];
        v10->i64[0] = *v9;
LABEL_103:
        *v9 = v79;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v82 = &v10->u64[1];
      v84 = v10 == a2 || v82 == a2;
      if (a5)
      {
        if (!v84)
        {
          v85 = 0;
          v86 = v10;
          do
          {
            v88 = v86->i64[0];
            v87 = v86->i64[1];
            v86 = v82;
            result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v87, v88);
            if (result)
            {
              v89 = v86->i64[0];
              v90 = v85;
              while (1)
              {
                *(&v10->i64[1] + v90) = *(v10->i64 + v90);
                if (!v90)
                {
                  break;
                }

                result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v89, *(&v10->i64[-1] + v90));
                v90 -= 8;
                if ((result & 1) == 0)
                {
                  v91 = (&v10->i64[1] + v90);
                  goto LABEL_125;
                }
              }

              v91 = v10;
LABEL_125:
              *v91 = v89;
            }

            v82 = &v86->u64[1];
            v85 += 8;
          }

          while (&v86->u64[1] != a2);
        }
      }

      else if (!v84)
      {
        do
        {
          v120 = *v8;
          v119 = *(v8 + 8);
          v8 = v82;
          result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v119, v120);
          if (result)
          {
            v121 = *v8;
            v122 = v8;
            do
            {
              v123 = v122;
              v124 = *--v122;
              *v123 = v124;
              result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v121, *(v123 - 2));
            }

            while ((result & 1) != 0);
            *v122 = v121;
          }

          v82 = (v8 + 8);
        }

        while ((v8 + 8) != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v92 = (v11 - 2) >> 1;
        v127 = v92;
        do
        {
          v93 = v92;
          if (v127 >= v92)
          {
            v94 = (2 * v92) | 1;
            v95 = (v8 + 8 * v94);
            if (2 * v92 + 2 < v11 && std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *v95, v95[1]))
            {
              ++v95;
              v94 = 2 * v93 + 2;
            }

            v96 = (v8 + 8 * v93);
            result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *v95, *v96);
            if ((result & 1) == 0)
            {
              v97 = *v96;
              do
              {
                v98 = v95;
                *v96 = *v95;
                if (v127 < v94)
                {
                  break;
                }

                v99 = (2 * v94) | 1;
                v95 = (v8 + 8 * v99);
                v100 = 2 * v94 + 2;
                if (v100 < v11 && std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *v95, v95[1]))
                {
                  ++v95;
                  v99 = v100;
                }

                result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *v95, v97);
                v96 = v98;
                v94 = v99;
              }

              while (!result);
              *v98 = v97;
            }
          }

          v92 = v93 - 1;
        }

        while (v93);
        v101 = v125;
        do
        {
          v102 = v101;
          v103 = 0;
          v128 = *v8;
          v104 = v8;
          do
          {
            v105 = &v104[v103];
            v106 = v105 + 1;
            v107 = (2 * v103) | 1;
            v108 = 2 * v103 + 2;
            if (v108 >= v11)
            {
              v103 = (2 * v103) | 1;
            }

            else
            {
              v110 = v105[2];
              v109 = v105 + 2;
              result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *(v109 - 1), v110);
              if (result)
              {
                v106 = v109;
                v103 = v108;
              }

              else
              {
                v103 = v107;
              }
            }

            *v104 = *v106;
            v104 = v106;
          }

          while (v103 <= (v11 - 2) / 2);
          v101 = v102 - 1;
          if (v106 == v102 - 1)
          {
            *v106 = v128;
          }

          else
          {
            *v106 = *v101;
            *v101 = v128;
            v111 = (v106 - v8 + 8) >> 3;
            v112 = v111 < 2;
            v113 = v111 - 2;
            if (!v112)
            {
              v114 = v113 >> 1;
              v115 = (v8 + 8 * (v113 >> 1));
              result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *v115, *v106);
              if (result)
              {
                v116 = *v106;
                do
                {
                  v117 = v115;
                  *v106 = *v115;
                  if (!v114)
                  {
                    break;
                  }

                  v114 = (v114 - 1) >> 1;
                  v115 = (v8 + 8 * v114);
                  result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *v115, v116);
                  v106 = v117;
                }

                while ((result & 1) != 0);
                *v117 = v116;
              }
            }
          }

          v112 = v11-- <= 2;
        }

        while (!v112);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *(a3 + 24);
    if (v11 < 0x81)
    {
      v17 = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(v13, v10->i64[0], v10->i64[v12]);
      v18 = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *v9, v10->i64[0]);
      if (v17)
      {
        v19 = v10->i64[v12];
        if (v18)
        {
          v10->i64[v12] = *v9;
          *v9 = v19;
        }

        else
        {
          v10->i64[v12] = v10->i64[0];
          v10->i64[0] = v19;
          if (std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *v9, v19))
          {
            v31 = v10->i64[0];
            v10->i64[0] = *v9;
            *v9 = v31;
          }
        }
      }

      else if (v18)
      {
        v22 = v10->i64[0];
        v10->i64[0] = *v9;
        *v9 = v22;
        if (std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v10->i64[0], v10->i64[v12]))
        {
          v23 = v10->i64[v12];
          v10->i64[v12] = v10->i64[0];
          v10->i64[0] = v23;
        }
      }

      goto LABEL_55;
    }

    v14 = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(v13, v10->i64[v12], v10->i64[0]);
    v15 = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *v9, v10->i64[v12]);
    if (v14)
    {
      v16 = v10->i64[0];
      if (v15)
      {
        v10->i64[0] = *v9;
        *v9 = v16;
      }

      else
      {
        v10->i64[0] = v10->i64[v12];
        v10->i64[v12] = v16;
        if (std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *v9, v16))
        {
          v24 = v10->i64[v12];
          v10->i64[v12] = *v9;
          *v9 = v24;
        }
      }
    }

    else if (v15)
    {
      v20 = v10->i64[v12];
      v10->i64[v12] = *v9;
      *v9 = v20;
      if (std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v10->i64[v12], v10->i64[0]))
      {
        v21 = v10->i64[0];
        v10->i64[0] = v10->i64[v12];
        v10->i64[v12] = v21;
      }
    }

    v25 = v12 - 1;
    v26 = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *(v8 + 8 * (v12 - 1)), *(v8 + 8));
    v27 = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), a2[-1].i64[0], *(v8 + 8 * (v12 - 1)));
    if (v26)
    {
      v28 = *(v8 + 8);
      if (v27)
      {
        *(v8 + 8) = a2[-1].i64[0];
        a2[-1].i64[0] = v28;
      }

      else
      {
        *(v8 + 8) = *(v8 + 8 * v25);
        *(v8 + 8 * v25) = v28;
        if (std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), a2[-1].i64[0], v28))
        {
          v32 = *(v8 + 8 * v25);
          *(v8 + 8 * v25) = a2[-1].i64[0];
          a2[-1].i64[0] = v32;
        }
      }
    }

    else if (v27)
    {
      v29 = *(v8 + 8 * v25);
      *(v8 + 8 * v25) = a2[-1].i64[0];
      a2[-1].i64[0] = v29;
      if (std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *(v8 + 8 * v25), *(v8 + 8)))
      {
        v30 = *(v8 + 8);
        *(v8 + 8) = *(v8 + 8 * v25);
        *(v8 + 8 * v25) = v30;
      }
    }

    v33 = a2;
    v34 = v12 + 1;
    v35 = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *(v8 + 8 * (v12 + 1)), *(v8 + 16));
    v36 = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v33[-2].i64[1], *(v8 + 8 * (v12 + 1)));
    if (v35)
    {
      v37 = *(v8 + 16);
      if (v36)
      {
        *(v8 + 16) = v125[-2].i64[1];
        v125[-2].i64[1] = v37;
      }

      else
      {
        *(v8 + 16) = *(v8 + 8 * v34);
        *(v8 + 8 * v34) = v37;
        if (std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v125[-2].i64[1], v37))
        {
          v40 = *(v8 + 8 * v34);
          *(v8 + 8 * v34) = v125[-2].i64[1];
          v125[-2].i64[1] = v40;
        }
      }
    }

    else if (v36)
    {
      v38 = *(v8 + 8 * v34);
      *(v8 + 8 * v34) = v125[-2].i64[1];
      v125[-2].i64[1] = v38;
      if (std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *(v8 + 8 * v34), *(v8 + 16)))
      {
        v39 = *(v8 + 16);
        *(v8 + 16) = *(v8 + 8 * v34);
        *(v8 + 8 * v34) = v39;
      }
    }

    v41 = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *(v8 + 8 * v12), *(v8 + 8 * v25));
    v42 = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *(v8 + 8 * v34), *(v8 + 8 * v12));
    if ((v41 & 1) == 0)
    {
      v44 = *(v8 + 8 * v12);
      if (!v42)
      {
        goto LABEL_54;
      }

      v45 = *(v8 + 8 * v34);
      *(v8 + 8 * v12) = v45;
      *(v8 + 8 * v34) = v44;
      v46 = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v45, *(v8 + 8 * v25));
      v44 = *(v8 + 8 * v12);
      if (!v46)
      {
        goto LABEL_54;
      }

      v47 = *(v8 + 8 * v25);
      *(v8 + 8 * v25) = v44;
      *(v8 + 8 * v12) = v47;
      goto LABEL_53;
    }

    v43 = *(v8 + 8 * v25);
    if (v42)
    {
      *(v8 + 8 * v25) = *(v8 + 8 * v34);
      *(v8 + 8 * v34) = v43;
      v44 = *(v8 + 8 * v12);
    }

    else
    {
      *(v8 + 8 * v25) = *(v8 + 8 * v12);
      *(v8 + 8 * v12) = v43;
      v48 = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *(v8 + 8 * v34), v43);
      v44 = *(v8 + 8 * v12);
      if (v48)
      {
        v47 = *(v8 + 8 * v34);
        *(v8 + 8 * v12) = v47;
        *(v8 + 8 * v34) = v44;
LABEL_53:
        v44 = v47;
      }
    }

LABEL_54:
    a2 = v125;
    v49 = *v8;
    *v8 = v44;
    *(v8 + 8 * v12) = v49;
LABEL_55:
    --a4;
    v50 = *v8;
    if (a5 & 1) != 0 || (v51 = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *(v8 - 8), *v8), v50 = *v8, (v51))
    {
      v52 = v8;
      do
      {
        v53 = v52;
        v54 = v52->i64[1];
        v52 = (v52 + 8);
      }

      while ((std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v54, v50) & 1) != 0);
      v55 = a2;
      if (v53 == v8)
      {
        v55 = a2;
        do
        {
          if (v52 >= v55)
          {
            break;
          }

          v57 = v55[-1].i64[1];
          v55 = (v55 - 8);
        }

        while ((std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v57, v50) & 1) == 0);
      }

      else
      {
        do
        {
          v56 = v55[-1].i64[1];
          v55 = (v55 - 8);
        }

        while (!std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v56, v50));
      }

      if (v52 < v55)
      {
        v58 = v52;
        v59 = v55;
        do
        {
          v60 = v58->i64[0];
          v58->i64[0] = v59->i64[0];
          v59->i64[0] = v60;
          do
          {
            v53 = v58;
            v61 = v58->i64[1];
            v58 = (v58 + 8);
          }

          while ((std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v61, v50) & 1) != 0);
          do
          {
            v62 = v59[-1].i64[1];
            v59 = (v59 - 8);
          }

          while (!std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v62, v50));
        }

        while (v58 < v59);
      }

      if (v53 != v8)
      {
        *v8 = v53->i64[0];
      }

      v53->i64[0] = v50;
      a2 = v125;
      if (v52 < v55)
      {
        goto LABEL_76;
      }

      v63 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)> &,md::MapTileDataRenderable<md::RasterTileData> **>(v8, v53->i64, a3);
      v10 = &v53->u64[1];
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)> &,md::MapTileDataRenderable<md::RasterTileData> **>(&v53->i64[1], v125->i64, a3);
      if (result)
      {
        a2 = v53;
        if (!v63)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v63)
      {
LABEL_76:
        result = std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)> &,md::MapTileDataRenderable<md::RasterTileData> **,false>(v8, v53, a3, a4, a5 & 1);
        a5 = 0;
        v10 = &v53->u64[1];
      }
    }

    else
    {
      result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *v8, *v9);
      if (result)
      {
        v10 = v8;
        do
        {
          v64 = v10->i64[1];
          v10 = (v10 + 8);
          result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v50, v64);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v65 = v8 + 8;
        do
        {
          v10 = v65;
          if (v65 >= a2)
          {
            break;
          }

          v65 += 8;
          result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v50, v10->i64[0]);
        }

        while (!result);
      }

      v66 = a2;
      if (v10 < a2)
      {
        v66 = a2;
        do
        {
          v67 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v50, v67);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v66)
      {
        v68 = v10->i64[0];
        v10->i64[0] = v66->i64[0];
        v66->i64[0] = v68;
        do
        {
          v69 = v10->i64[1];
          v10 = (v10 + 8);
        }

        while (!std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v50, v69));
        do
        {
          v70 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v50, v70);
        }

        while ((result & 1) != 0);
      }

      v71 = &v10[-1].i64[1];
      if (&v10[-1].u64[1] != v8)
      {
        *v8 = *v71;
      }

      a5 = 0;
      *v71 = v50;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)> &,md::MapTileDataRenderable<md::RasterTileData> **,0>(v10->i64, &v10->i64[1], v10[1].i64, v9, a3);
    }

    if (v11 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)> &,md::MapTileDataRenderable<md::RasterTileData> **,0>(v10->i64, &v10->i64[1], v10[1].i64, &v10[1].i64[1], a3);
      result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *v9, v10[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v72 = v10[1].i64[1];
      v10[1].i64[1] = *v9;
      *v9 = v72;
      result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v10[1].i64[1], v10[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v74 = v10[1].i64[0];
      v73 = v10[1].i64[1];
      v75 = v10->i64[1];
      v10[1].i64[0] = v73;
      v10[1].i64[1] = v74;
      result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v73, v75);
      if (!result)
      {
        return result;
      }

      v77 = v10->i64[1];
      v76 = v10[1].i64[0];
      v78 = v10->i64[0];
      v10->i64[1] = v76;
      v10[1].i64[0] = v77;
      goto LABEL_164;
    }

    goto LABEL_10;
  }

  v80 = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v10->i64[1], v10->i64[0]);
  result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *v9, v10->i64[1]);
  if ((v80 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v118 = v10->i64[1];
    v10->i64[1] = *v9;
    *v9 = v118;
    v78 = v10->i64[0];
    v76 = v10->i64[1];
LABEL_164:
    result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v76, v78);
    if (result)
    {
      *v10 = vextq_s8(*v10, *v10, 8uLL);
    }

    return result;
  }

  v81 = v10->i64[0];
  if (result)
  {
    v10->i64[0] = *v9;
    *v9 = v81;
  }

  else
  {
    v10->i64[0] = v10->i64[1];
    v10->i64[1] = v81;
    result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *v9, v81);
    if (result)
    {
      v79 = v10->i64[1];
      v10->i64[1] = *v9;
      goto LABEL_103;
    }
  }

  return result;
}

uint64_t std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a3;
  v10 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v10, &v9);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)> &,md::MapTileDataRenderable<md::RasterTileData> **,0>(v4, v5, v6, v7, v8);
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)> &,md::MapTileDataRenderable<md::RasterTileData> **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10 = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a5 + 24), *a2, *a1);
  v11 = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a5 + 24), *a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if (std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a5 + 24), *a3, v12))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if (std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a5 + 24), *a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a5 + 24), *a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a5 + 24), *a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a5 + 24), *a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)> &,md::MapTileDataRenderable<md::RasterTileData> **>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = (a2 - a1) >> 3;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v15 = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *(a1 + 8), *a1);
        v16 = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *(a2 - 1), *(a1 + 8));
        if (v15)
        {
          v17 = *a1;
          if (v16)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v17;
            return 1;
          }

          *a1 = *(a1 + 8);
          *(a1 + 8) = v17;
          if (!std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *(a2 - 1), v17))
          {
            return 1;
          }

          v7 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v16)
        {
          return 1;
        }

        v22 = *(a1 + 8);
        *(a1 + 8) = *(a2 - 1);
        *(a2 - 1) = v22;
        v14 = *a1;
        v12 = *(a1 + 8);
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)> &,md::MapTileDataRenderable<md::RasterTileData> **,0>(a1, (a1 + 8), (a1 + 16), a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)> &,md::MapTileDataRenderable<md::RasterTileData> **,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24), a3);
        if (!std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *(a2 - 1), *(a1 + 24)))
        {
          return 1;
        }

        v8 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *(a1 + 24), *(a1 + 16)))
        {
          return 1;
        }

        v10 = *(a1 + 16);
        v9 = *(a1 + 24);
        v11 = *(a1 + 8);
        *(a1 + 16) = v9;
        *(a1 + 24) = v10;
        if (!std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v9, v11))
        {
          return 1;
        }

        v13 = *(a1 + 8);
        v12 = *(a1 + 16);
        v14 = *a1;
        *(a1 + 8) = v12;
        *(a1 + 16) = v13;
        break;
      default:
        goto LABEL_17;
    }

    if (std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v12, v14))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if (std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v18 = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *(a1 + 8), *a1);
  v19 = (a1 + 16);
  v20 = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *(a1 + 16), *(a1 + 8));
  if (v18)
  {
    v21 = *a1;
    if (v20)
    {
      *a1 = *(a1 + 16);
      *(a1 + 16) = v21;
    }

    else
    {
      v26 = *(a1 + 16);
      *a1 = *(a1 + 8);
      *(a1 + 8) = v21;
      if (std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v26, v21))
      {
        *(a1 + 8) = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
      }
    }
  }

  else if (v20)
  {
    v24 = *(a1 + 8);
    v23 = *(a1 + 16);
    v25 = *a1;
    *(a1 + 8) = v23;
    *(a1 + 16) = v24;
    if (std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v23, v25))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v27 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
    return 1;
  }

  v28 = 0;
  v29 = 0;
  while (1)
  {
    if (std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *v27, *v19))
    {
      v30 = *v27;
      v31 = v28;
      while (1)
      {
        v32 = a1 + v31;
        *(a1 + v31 + 24) = *(a1 + v31 + 16);
        if (v31 == -16)
        {
          break;
        }

        v31 -= 8;
        if ((std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v30, *(v32 + 8)) & 1) == 0)
        {
          v33 = (a1 + v31 + 24);
          goto LABEL_40;
        }
      }

      v33 = a1;
LABEL_40:
      *v33 = v30;
      if (++v29 == 8)
      {
        return v27 + 1 == a2;
      }
    }

    v19 = v27;
    v28 += 8;
    if (++v27 == a2)
    {
      return 1;
    }
  }
}

void md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::VenueTileData>>::_updateSubTileMaskForRenderable(uint64_t a1, int8x8_t **a2, uint64_t a3)
{
  v5 = *(a3 + 392);
  v6 = *(a3 + 400);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *(a3 + 56);
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = md::SceneContext::subtileClipMask(*a2, v5, v7);
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v8 = md::SceneContext::subtileClipMask(*a2, v5, *(a3 + 56));
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v8[4] == v8[3] * v8[3])
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

LABEL_8:
  md::BaseMapTileDataRenderable::setSubtileClipMask(a3, v9);
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

void sub_1B309BA1C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void geo::Pool<md::MapTileDataRenderable<md::VenueTileData>>::construct<std::shared_ptr<md::VenueTileData> &,signed char,BOOL const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>> &>(uint64_t *a1, uint64_t *a2, char *a3, char *a4, void *a5)
{
  v10 = a1[5];
  if (!v10)
  {
    v11 = malloc_type_malloc(408 * a1[3], 0x10A20400C342E21uLL);
    v17 = v11;
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(a1, v11, &v17);
    v10 = a1[5];
    v12 = &v11[51 * a1[3] - 51];
    if (v12 >= v11)
    {
      do
      {
        *v12 = v10;
        v10 = v12;
        v12 -= 51;
      }

      while (v12 >= v11);
      v10 = v12 + 51;
    }

    a1[5] = v10;
  }

  a1[5] = *v10;
  v13 = *a3;
  v14 = *a4;
  v15 = *a2;
  v16 = a2[1];
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  md::BaseMapTileDataRenderable::BaseMapTileDataRenderable(v10, v15, v16, v13, v14, a5);
}

void sub_1B309BB70(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void md::MapTileDataRenderable<md::VenueTileData>::~MapTileDataRenderable(md::BaseMapTileDataRenderable *a1)
{
  md::MapTileDataRenderable<md::VenueTileData>::~MapTileDataRenderable(a1);

  JUMPOUT(0x1B8C62190);
}

void md::MapTileDataRenderable<md::VenueTileData>::~MapTileDataRenderable(md::BaseMapTileDataRenderable *this)
{
  *this = &unk_1F2A2C030;
  v2 = *(this + 50);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::BaseMapTileDataRenderable::~BaseMapTileDataRenderable(this);
}

void md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::VenueTileData>>::updateWithContext(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v4 = md::LayoutContext::get<md::CameraContext>(*(a3 + 8));
  v6 = *a2;
  v5 = a2[1];
  if (v6 != v5)
  {
    v7 = v4;
    v8 = v4 + 808;
    do
    {
      v9 = 0;
      v10 = *v6;
      v11 = v7[471] * v7[173] / (v7[171] * (*(*v6 + 80) - *(*v6 + 64)));
      *(*v6 + 376) = v11;
      v12 = v8;
      do
      {
        v13 = 0;
        v14 = v10 + 96;
        do
        {
          v15 = 0;
          v16 = 0.0;
          v17 = v12;
          do
          {
            v18 = *v17;
            v17 += 4;
            v16 = v16 + *(v14 + v15) * v18;
            v15 += 8;
          }

          while (v15 != 32);
          *&v26[4 * v13++ + v9] = v16;
          v14 += 32;
        }

        while (v13 != 4);
        ++v9;
        ++v12;
      }

      while (v9 != 4);
      v19 = 0;
      v20 = v26;
      do
      {
        v22 = *v20;
        v21 = v20[1];
        v20 += 2;
        v28[v19++] = vcvt_hight_f32_f64(vcvt_f32_f64(v22), v21);
      }

      while (v19 != 4);
      ggl::DataAccess<ggl::Tile::View>::DataAccess(v26, *(v10 + 224), 1);
      v23 = v27;
      v24 = v28[1];
      *v27 = v28[0];
      v23[1] = v24;
      v25 = v28[3];
      v23[2] = v28[2];
      v23[3] = v25;
      *(v23 + 16) = *(v10 + 376);
      ggl::BufferMemory::~BufferMemory(v26);
      ++v6;
    }

    while (v6 != v5);
  }
}

uint64_t std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::sort[abi:nn200100]<std::__wrap_iter<md::MapTileDataRenderable<md::VenueTileData> **>,std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>>(uint64_t a1, int8x16_t *a2, uint64_t a3)
{
  v3 = 126 - 2 * __clz((a2->i64 - a1) >> 3);
  if (a2 == a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)> &,md::MapTileDataRenderable<md::VenueTileData> **,false>(a1, a2, a3, v4, 1);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)> &,md::MapTileDataRenderable<md::VenueTileData> **,false>(uint64_t result, int8x16_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = &a2[-1].i64[1];
  v10 = v8;
  v125 = a2;
  while (1)
  {
    v8 = v10;
    v11 = (a2 - v10) >> 3;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      result = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), *v9, v10->i64[0]);
      if (result)
      {
        v79 = v10->i64[0];
        v10->i64[0] = *v9;
LABEL_103:
        *v9 = v79;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v82 = &v10->u64[1];
      v84 = v10 == a2 || v82 == a2;
      if (a5)
      {
        if (!v84)
        {
          v85 = 0;
          v86 = v10;
          do
          {
            v88 = v86->i64[0];
            v87 = v86->i64[1];
            v86 = v82;
            result = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), v87, v88);
            if (result)
            {
              v89 = v86->i64[0];
              v90 = v85;
              while (1)
              {
                *(&v10->i64[1] + v90) = *(v10->i64 + v90);
                if (!v90)
                {
                  break;
                }

                result = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), v89, *(&v10->i64[-1] + v90));
                v90 -= 8;
                if ((result & 1) == 0)
                {
                  v91 = (&v10->i64[1] + v90);
                  goto LABEL_125;
                }
              }

              v91 = v10;
LABEL_125:
              *v91 = v89;
            }

            v82 = &v86->u64[1];
            v85 += 8;
          }

          while (&v86->u64[1] != a2);
        }
      }

      else if (!v84)
      {
        do
        {
          v120 = *v8;
          v119 = *(v8 + 8);
          v8 = v82;
          result = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), v119, v120);
          if (result)
          {
            v121 = *v8;
            v122 = v8;
            do
            {
              v123 = v122;
              v124 = *--v122;
              *v123 = v124;
              result = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), v121, *(v123 - 2));
            }

            while ((result & 1) != 0);
            *v122 = v121;
          }

          v82 = (v8 + 8);
        }

        while ((v8 + 8) != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v92 = (v11 - 2) >> 1;
        v127 = v92;
        do
        {
          v93 = v92;
          if (v127 >= v92)
          {
            v94 = (2 * v92) | 1;
            v95 = (v8 + 8 * v94);
            if (2 * v92 + 2 < v11 && std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), *v95, v95[1]))
            {
              ++v95;
              v94 = 2 * v93 + 2;
            }

            v96 = (v8 + 8 * v93);
            result = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), *v95, *v96);
            if ((result & 1) == 0)
            {
              v97 = *v96;
              do
              {
                v98 = v95;
                *v96 = *v95;
                if (v127 < v94)
                {
                  break;
                }

                v99 = (2 * v94) | 1;
                v95 = (v8 + 8 * v99);
                v100 = 2 * v94 + 2;
                if (v100 < v11 && std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), *v95, v95[1]))
                {
                  ++v95;
                  v99 = v100;
                }

                result = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), *v95, v97);
                v96 = v98;
                v94 = v99;
              }

              while (!result);
              *v98 = v97;
            }
          }

          v92 = v93 - 1;
        }

        while (v93);
        v101 = v125;
        do
        {
          v102 = v101;
          v103 = 0;
          v128 = *v8;
          v104 = v8;
          do
          {
            v105 = &v104[v103];
            v106 = v105 + 1;
            v107 = (2 * v103) | 1;
            v108 = 2 * v103 + 2;
            if (v108 >= v11)
            {
              v103 = (2 * v103) | 1;
            }

            else
            {
              v110 = v105[2];
              v109 = v105 + 2;
              result = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), *(v109 - 1), v110);
              if (result)
              {
                v106 = v109;
                v103 = v108;
              }

              else
              {
                v103 = v107;
              }
            }

            *v104 = *v106;
            v104 = v106;
          }

          while (v103 <= (v11 - 2) / 2);
          v101 = v102 - 1;
          if (v106 == v102 - 1)
          {
            *v106 = v128;
          }

          else
          {
            *v106 = *v101;
            *v101 = v128;
            v111 = (v106 - v8 + 8) >> 3;
            v112 = v111 < 2;
            v113 = v111 - 2;
            if (!v112)
            {
              v114 = v113 >> 1;
              v115 = (v8 + 8 * (v113 >> 1));
              result = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), *v115, *v106);
              if (result)
              {
                v116 = *v106;
                do
                {
                  v117 = v115;
                  *v106 = *v115;
                  if (!v114)
                  {
                    break;
                  }

                  v114 = (v114 - 1) >> 1;
                  v115 = (v8 + 8 * v114);
                  result = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), *v115, v116);
                  v106 = v117;
                }

                while ((result & 1) != 0);
                *v117 = v116;
              }
            }
          }

          v112 = v11-- <= 2;
        }

        while (!v112);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *(a3 + 24);
    if (v11 < 0x81)
    {
      v17 = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(v13, v10->i64[0], v10->i64[v12]);
      v18 = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), *v9, v10->i64[0]);
      if (v17)
      {
        v19 = v10->i64[v12];
        if (v18)
        {
          v10->i64[v12] = *v9;
          *v9 = v19;
        }

        else
        {
          v10->i64[v12] = v10->i64[0];
          v10->i64[0] = v19;
          if (std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), *v9, v19))
          {
            v31 = v10->i64[0];
            v10->i64[0] = *v9;
            *v9 = v31;
          }
        }
      }

      else if (v18)
      {
        v22 = v10->i64[0];
        v10->i64[0] = *v9;
        *v9 = v22;
        if (std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), v10->i64[0], v10->i64[v12]))
        {
          v23 = v10->i64[v12];
          v10->i64[v12] = v10->i64[0];
          v10->i64[0] = v23;
        }
      }

      goto LABEL_55;
    }

    v14 = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(v13, v10->i64[v12], v10->i64[0]);
    v15 = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), *v9, v10->i64[v12]);
    if (v14)
    {
      v16 = v10->i64[0];
      if (v15)
      {
        v10->i64[0] = *v9;
        *v9 = v16;
      }

      else
      {
        v10->i64[0] = v10->i64[v12];
        v10->i64[v12] = v16;
        if (std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), *v9, v16))
        {
          v24 = v10->i64[v12];
          v10->i64[v12] = *v9;
          *v9 = v24;
        }
      }
    }

    else if (v15)
    {
      v20 = v10->i64[v12];
      v10->i64[v12] = *v9;
      *v9 = v20;
      if (std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), v10->i64[v12], v10->i64[0]))
      {
        v21 = v10->i64[0];
        v10->i64[0] = v10->i64[v12];
        v10->i64[v12] = v21;
      }
    }

    v25 = v12 - 1;
    v26 = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), *(v8 + 8 * (v12 - 1)), *(v8 + 8));
    v27 = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), a2[-1].i64[0], *(v8 + 8 * (v12 - 1)));
    if (v26)
    {
      v28 = *(v8 + 8);
      if (v27)
      {
        *(v8 + 8) = a2[-1].i64[0];
        a2[-1].i64[0] = v28;
      }

      else
      {
        *(v8 + 8) = *(v8 + 8 * v25);
        *(v8 + 8 * v25) = v28;
        if (std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), a2[-1].i64[0], v28))
        {
          v32 = *(v8 + 8 * v25);
          *(v8 + 8 * v25) = a2[-1].i64[0];
          a2[-1].i64[0] = v32;
        }
      }
    }

    else if (v27)
    {
      v29 = *(v8 + 8 * v25);
      *(v8 + 8 * v25) = a2[-1].i64[0];
      a2[-1].i64[0] = v29;
      if (std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), *(v8 + 8 * v25), *(v8 + 8)))
      {
        v30 = *(v8 + 8);
        *(v8 + 8) = *(v8 + 8 * v25);
        *(v8 + 8 * v25) = v30;
      }
    }

    v33 = a2;
    v34 = v12 + 1;
    v35 = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), *(v8 + 8 * (v12 + 1)), *(v8 + 16));
    v36 = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), v33[-2].i64[1], *(v8 + 8 * (v12 + 1)));
    if (v35)
    {
      v37 = *(v8 + 16);
      if (v36)
      {
        *(v8 + 16) = v125[-2].i64[1];
        v125[-2].i64[1] = v37;
      }

      else
      {
        *(v8 + 16) = *(v8 + 8 * v34);
        *(v8 + 8 * v34) = v37;
        if (std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), v125[-2].i64[1], v37))
        {
          v40 = *(v8 + 8 * v34);
          *(v8 + 8 * v34) = v125[-2].i64[1];
          v125[-2].i64[1] = v40;
        }
      }
    }

    else if (v36)
    {
      v38 = *(v8 + 8 * v34);
      *(v8 + 8 * v34) = v125[-2].i64[1];
      v125[-2].i64[1] = v38;
      if (std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), *(v8 + 8 * v34), *(v8 + 16)))
      {
        v39 = *(v8 + 16);
        *(v8 + 16) = *(v8 + 8 * v34);
        *(v8 + 8 * v34) = v39;
      }
    }

    v41 = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), *(v8 + 8 * v12), *(v8 + 8 * v25));
    v42 = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), *(v8 + 8 * v34), *(v8 + 8 * v12));
    if ((v41 & 1) == 0)
    {
      v44 = *(v8 + 8 * v12);
      if (!v42)
      {
        goto LABEL_54;
      }

      v45 = *(v8 + 8 * v34);
      *(v8 + 8 * v12) = v45;
      *(v8 + 8 * v34) = v44;
      v46 = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), v45, *(v8 + 8 * v25));
      v44 = *(v8 + 8 * v12);
      if (!v46)
      {
        goto LABEL_54;
      }

      v47 = *(v8 + 8 * v25);
      *(v8 + 8 * v25) = v44;
      *(v8 + 8 * v12) = v47;
      goto LABEL_53;
    }

    v43 = *(v8 + 8 * v25);
    if (v42)
    {
      *(v8 + 8 * v25) = *(v8 + 8 * v34);
      *(v8 + 8 * v34) = v43;
      v44 = *(v8 + 8 * v12);
    }

    else
    {
      *(v8 + 8 * v25) = *(v8 + 8 * v12);
      *(v8 + 8 * v12) = v43;
      v48 = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), *(v8 + 8 * v34), v43);
      v44 = *(v8 + 8 * v12);
      if (v48)
      {
        v47 = *(v8 + 8 * v34);
        *(v8 + 8 * v12) = v47;
        *(v8 + 8 * v34) = v44;
LABEL_53:
        v44 = v47;
      }
    }

LABEL_54:
    a2 = v125;
    v49 = *v8;
    *v8 = v44;
    *(v8 + 8 * v12) = v49;
LABEL_55:
    --a4;
    v50 = *v8;
    if (a5 & 1) != 0 || (v51 = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), *(v8 - 8), *v8), v50 = *v8, (v51))
    {
      v52 = v8;
      do
      {
        v53 = v52;
        v54 = v52->i64[1];
        v52 = (v52 + 8);
      }

      while ((std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), v54, v50) & 1) != 0);
      v55 = a2;
      if (v53 == v8)
      {
        v55 = a2;
        do
        {
          if (v52 >= v55)
          {
            break;
          }

          v57 = v55[-1].i64[1];
          v55 = (v55 - 8);
        }

        while ((std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), v57, v50) & 1) == 0);
      }

      else
      {
        do
        {
          v56 = v55[-1].i64[1];
          v55 = (v55 - 8);
        }

        while (!std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), v56, v50));
      }

      if (v52 < v55)
      {
        v58 = v52;
        v59 = v55;
        do
        {
          v60 = v58->i64[0];
          v58->i64[0] = v59->i64[0];
          v59->i64[0] = v60;
          do
          {
            v53 = v58;
            v61 = v58->i64[1];
            v58 = (v58 + 8);
          }

          while ((std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), v61, v50) & 1) != 0);
          do
          {
            v62 = v59[-1].i64[1];
            v59 = (v59 - 8);
          }

          while (!std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), v62, v50));
        }

        while (v58 < v59);
      }

      if (v53 != v8)
      {
        *v8 = v53->i64[0];
      }

      v53->i64[0] = v50;
      a2 = v125;
      if (v52 < v55)
      {
        goto LABEL_76;
      }

      v63 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)> &,md::MapTileDataRenderable<md::VenueTileData> **>(v8, v53->i64, a3);
      v10 = &v53->u64[1];
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)> &,md::MapTileDataRenderable<md::VenueTileData> **>(&v53->i64[1], v125->i64, a3);
      if (result)
      {
        a2 = v53;
        if (!v63)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v63)
      {
LABEL_76:
        result = std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)> &,md::MapTileDataRenderable<md::VenueTileData> **,false>(v8, v53, a3, a4, a5 & 1);
        a5 = 0;
        v10 = &v53->u64[1];
      }
    }

    else
    {
      result = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), *v8, *v9);
      if (result)
      {
        v10 = v8;
        do
        {
          v64 = v10->i64[1];
          v10 = (v10 + 8);
          result = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), v50, v64);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v65 = v8 + 8;
        do
        {
          v10 = v65;
          if (v65 >= a2)
          {
            break;
          }

          v65 += 8;
          result = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), v50, v10->i64[0]);
        }

        while (!result);
      }

      v66 = a2;
      if (v10 < a2)
      {
        v66 = a2;
        do
        {
          v67 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), v50, v67);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v66)
      {
        v68 = v10->i64[0];
        v10->i64[0] = v66->i64[0];
        v66->i64[0] = v68;
        do
        {
          v69 = v10->i64[1];
          v10 = (v10 + 8);
        }

        while (!std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), v50, v69));
        do
        {
          v70 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), v50, v70);
        }

        while ((result & 1) != 0);
      }

      v71 = &v10[-1].i64[1];
      if (&v10[-1].u64[1] != v8)
      {
        *v8 = *v71;
      }

      a5 = 0;
      *v71 = v50;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)> &,md::MapTileDataRenderable<md::VenueTileData> **,0>(v10->i64, &v10->i64[1], v10[1].i64, v9, a3);
    }

    if (v11 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)> &,md::MapTileDataRenderable<md::VenueTileData> **,0>(v10->i64, &v10->i64[1], v10[1].i64, &v10[1].i64[1], a3);
      result = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), *v9, v10[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v72 = v10[1].i64[1];
      v10[1].i64[1] = *v9;
      *v9 = v72;
      result = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), v10[1].i64[1], v10[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v74 = v10[1].i64[0];
      v73 = v10[1].i64[1];
      v75 = v10->i64[1];
      v10[1].i64[0] = v73;
      v10[1].i64[1] = v74;
      result = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), v73, v75);
      if (!result)
      {
        return result;
      }

      v77 = v10->i64[1];
      v76 = v10[1].i64[0];
      v78 = v10->i64[0];
      v10->i64[1] = v76;
      v10[1].i64[0] = v77;
      goto LABEL_164;
    }

    goto LABEL_10;
  }

  v80 = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), v10->i64[1], v10->i64[0]);
  result = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), *v9, v10->i64[1]);
  if ((v80 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v118 = v10->i64[1];
    v10->i64[1] = *v9;
    *v9 = v118;
    v78 = v10->i64[0];
    v76 = v10->i64[1];
LABEL_164:
    result = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), v76, v78);
    if (result)
    {
      *v10 = vextq_s8(*v10, *v10, 8uLL);
    }

    return result;
  }

  v81 = v10->i64[0];
  if (result)
  {
    v10->i64[0] = *v9;
    *v9 = v81;
  }

  else
  {
    v10->i64[0] = v10->i64[1];
    v10->i64[1] = v81;
    result = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), *v9, v81);
    if (result)
    {
      v79 = v10->i64[1];
      v10->i64[1] = *v9;
      goto LABEL_103;
    }
  }

  return result;
}

uint64_t std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a3;
  v10 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v10, &v9);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)> &,md::MapTileDataRenderable<md::VenueTileData> **,0>(v4, v5, v6, v7, v8);
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)> &,md::MapTileDataRenderable<md::VenueTileData> **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10 = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a5 + 24), *a2, *a1);
  v11 = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a5 + 24), *a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if (std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a5 + 24), *a3, v12))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if (std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a5 + 24), *a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a5 + 24), *a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a5 + 24), *a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a5 + 24), *a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)> &,md::MapTileDataRenderable<md::VenueTileData> **>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = (a2 - a1) >> 3;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v15 = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), *(a1 + 8), *a1);
        v16 = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), *(a2 - 1), *(a1 + 8));
        if (v15)
        {
          v17 = *a1;
          if (v16)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v17;
            return 1;
          }

          *a1 = *(a1 + 8);
          *(a1 + 8) = v17;
          if (!std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), *(a2 - 1), v17))
          {
            return 1;
          }

          v7 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v16)
        {
          return 1;
        }

        v22 = *(a1 + 8);
        *(a1 + 8) = *(a2 - 1);
        *(a2 - 1) = v22;
        v14 = *a1;
        v12 = *(a1 + 8);
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)> &,md::MapTileDataRenderable<md::VenueTileData> **,0>(a1, (a1 + 8), (a1 + 16), a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)> &,md::MapTileDataRenderable<md::VenueTileData> **,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24), a3);
        if (!std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), *(a2 - 1), *(a1 + 24)))
        {
          return 1;
        }

        v8 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), *(a1 + 24), *(a1 + 16)))
        {
          return 1;
        }

        v10 = *(a1 + 16);
        v9 = *(a1 + 24);
        v11 = *(a1 + 8);
        *(a1 + 16) = v9;
        *(a1 + 24) = v10;
        if (!std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), v9, v11))
        {
          return 1;
        }

        v13 = *(a1 + 8);
        v12 = *(a1 + 16);
        v14 = *a1;
        *(a1 + 8) = v12;
        *(a1 + 16) = v13;
        break;
      default:
        goto LABEL_17;
    }

    if (std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), v12, v14))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if (std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), *(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v18 = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), *(a1 + 8), *a1);
  v19 = (a1 + 16);
  v20 = std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), *(a1 + 16), *(a1 + 8));
  if (v18)
  {
    v21 = *a1;
    if (v20)
    {
      *a1 = *(a1 + 16);
      *(a1 + 16) = v21;
    }

    else
    {
      v26 = *(a1 + 16);
      *a1 = *(a1 + 8);
      *(a1 + 8) = v21;
      if (std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), v26, v21))
      {
        *(a1 + 8) = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
      }
    }
  }

  else if (v20)
  {
    v24 = *(a1 + 8);
    v23 = *(a1 + 16);
    v25 = *a1;
    *(a1 + 8) = v23;
    *(a1 + 16) = v24;
    if (std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), v23, v25))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v27 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
    return 1;
  }

  v28 = 0;
  v29 = 0;
  while (1)
  {
    if (std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), *v27, *v19))
    {
      v30 = *v27;
      v31 = v28;
      while (1)
      {
        v32 = a1 + v31;
        *(a1 + v31 + 24) = *(a1 + v31 + 16);
        if (v31 == -16)
        {
          break;
        }

        v31 -= 8;
        if ((std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> *,md::MapTileDataRenderable<md::VenueTileData> *)>::operator()(*(a3 + 24), v30, *(v32 + 8)) & 1) == 0)
        {
          v33 = (a1 + v31 + 24);
          goto LABEL_40;
        }
      }

      v33 = a1;
LABEL_40:
      *v33 = v30;
      if (++v29 == 8)
      {
        return v27 + 1 == a2;
      }
    }

    v19 = v27;
    v28 += 8;
    if (++v27 == a2)
    {
      return 1;
    }
  }
}

void md::CartographicTiledRenderLayer<md::BuildingTileDataRenderable>::_updateSubTileMaskForRenderable(uint64_t a1, int8x8_t **a2, uint64_t a3)
{
  v5 = *(a3 + 392);
  v6 = *(a3 + 400);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *(a3 + 56);
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = md::SceneContext::subtileClipMask(*a2, v5, v7);
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v8 = md::SceneContext::subtileClipMask(*a2, v5, *(a3 + 56));
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v8[4] == v8[3] * v8[3])
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

LABEL_8:
  md::BaseMapTileDataRenderable::setSubtileClipMask(a3, v9);
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

void sub_1B309CE9C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *md::CartographicTiledRenderLayer<md::BuildingTileDataRenderable>::_determineExitingRenderables(void *a1)
{
  v2 = a1[34];
  v1 = a1[35];
  if (v2 != v1)
  {
    while ((md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::_determineExitingRenderables(md::SceneContext const*)::{lambda(md::RoadTileDataRenderable*)#1}::operator()(a1, *v2) & 1) != 0)
    {
      ++v2;
LABEL_4:
      if (v2 == v1)
      {
        return v1;
      }
    }

    v4 = v1 - 1;
    while (v4 != v2)
    {
      v1 = v4;
      v5 = *v4--;
      if (md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::_determineExitingRenderables(md::SceneContext const*)::{lambda(md::RoadTileDataRenderable*)#1}::operator()(a1, v5))
      {
        v6 = *v2;
        *v2++ = *v1;
        *v1 = v6;
        goto LABEL_4;
      }
    }
  }

  return v2;
}

void md::CartographicTiledRenderLayer<md::BuildingTileDataRenderable>::_determineEnteringRenderables(uint64_t a1@<X0>, md::LayoutContext *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v19 = gdc::Context::get<md::GeometryContext>(*(a2 + 1));
  if (v19)
  {
    v5 = *(a1 + 192);
    if (v5)
    {
      if (!(v5 >> 61))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v5);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if ((*(*a1 + 208))(a1))
    {
      v6 = *(a1 + 34);
    }

    else
    {
      v6 = -1;
    }

    v7 = *(a1 + 176);
    if (v7 != a1 + 184)
    {
      v18 = v6;
      __asm { FMOV            V0.4S, #1.0 }

      v14 = *(v7 + 32);
      v13 = *(v7 + 40);
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      v22 = *(v14 + 172);
      v21[0] = *(v14 + 168);
      v23 = *(v14 + 184);
      v24 = *(v14 + 192);
      v15 = *(v14 + 608);
      v16 = *(v14 + 616);
      v17 = md::LayoutContext::cameraType(a2);
      gdc::ToCoordinateSystem(v17);
      md::GeometryContext::transformConstantData(&v20, v19, v21, v17, v18, v15, v16);
    }
  }
}

void sub_1B309D49C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (v21)
  {
    *(v20 + 8) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(exception_object);
}

double md::CartographicTiledRenderLayer<md::BuildingTileDataRenderable>::_updateLayerDataInfo(uint64_t a1, md::SceneContext *a2)
{
  std::set<gdc::LayerDataWithWorld>::swap[abi:nn200100]((a1 + 128), a1 + 152);
  v4 = (a1 + 136);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 136));
  *(a1 + 128) = a1 + 136;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v5 = *(a1 + 320);
  v6 = *(a1 + 328);
  while (v5 != v6)
  {
    v7 = *v5++;
    v8 = md::SceneContext::layerDataInView(a2, v7);
    std::set<gdc::LayerDataWithWorld>::insert[abi:nn200100]<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>((a1 + 128), *v8, v8 + 1);
  }

  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 184));
  *(a1 + 176) = a1 + 184;
  v9 = (a1 + 176);
  *(a1 + 192) = 0;
  *(a1 + 184) = 0;
  v10 = (a1 + 208);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 208));
  *(a1 + 200) = a1 + 208;
  v11 = (a1 + 200);
  *v10 = 0;
  v11[2] = 0;
  v12 = *(v11 - 6);
  v13 = *v9;
  v22 = *(v11 - 9);
  v20 = v12;
  v21 = v4;
  v18.n128_u64[1] = v13;
  v19 = v11 - 5;
  v18.n128_u64[0] = v9;
  std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::insert_iterator<std::set<gdc::LayerDataWithWorld>> &>(v17, &v22, &v21, &v20, &v19, &v18);
  v14 = *(v11 - 9);
  v15 = *v11;
  v22 = *(v11 - 6);
  v20 = v14;
  v21 = v11 - 5;
  v18.n128_u64[1] = v15;
  v19 = v4;
  v18.n128_u64[0] = v11;
  *&result = std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::insert_iterator<std::set<gdc::LayerDataWithWorld>> &>(v17, &v22, &v21, &v20, &v19, &v18).n128_u64[0];
  return result;
}

void md::CartographicTiledRenderLayer<md::BuildingTileDataRenderable>::updateWithContext(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v4 = md::LayoutContext::get<md::CameraContext>(*(a3 + 8));
  v6 = *a2;
  v5 = a2[1];
  if (v6 != v5)
  {
    v7 = v4;
    v8 = v4 + 808;
    do
    {
      v9 = 0;
      v10 = *v6;
      v11 = v7[471] * v7[173] / (v7[171] * (*(*v6 + 80) - *(*v6 + 64)));
      *(*v6 + 376) = v11;
      v12 = v8;
      do
      {
        v13 = 0;
        v14 = v10 + 96;
        do
        {
          v15 = 0;
          v16 = 0.0;
          v17 = v12;
          do
          {
            v18 = *v17;
            v17 += 4;
            v16 = v16 + *(v14 + v15) * v18;
            v15 += 8;
          }

          while (v15 != 32);
          *&v26[4 * v13++ + v9] = v16;
          v14 += 32;
        }

        while (v13 != 4);
        ++v9;
        ++v12;
      }

      while (v9 != 4);
      v19 = 0;
      v20 = v26;
      do
      {
        v22 = *v20;
        v21 = v20[1];
        v20 += 2;
        v28[v19++] = vcvt_hight_f32_f64(vcvt_f32_f64(v22), v21);
      }

      while (v19 != 4);
      ggl::DataAccess<ggl::Tile::View>::DataAccess(v26, *(v10 + 224), 1);
      v23 = v27;
      v24 = v28[1];
      *v27 = v28[0];
      v23[1] = v24;
      v25 = v28[3];
      v23[2] = v28[2];
      v23[3] = v25;
      *(v23 + 16) = *(v10 + 376);
      ggl::BufferMemory::~BufferMemory(v26);
      ++v6;
    }

    while (v6 != v5);
  }
}

uint64_t md::CartographicTiledRenderLayer<md::BuildingTileDataRenderable>::determineZRangeMapData(uint64_t result, md::SceneContext *this)
{
  *(result + 48) = 255;
  if (this)
  {
    v2 = result;
    v3 = *(result + 320);
    v4 = *(result + 328);
    if (v3 == v4)
    {
      goto LABEL_17;
    }

    do
    {
      result = md::SceneContext::layerDataInView(this, *v3);
      v6 = (result + 8);
      v7 = *result;
      if (*result != result + 8)
      {
        v8 = *(v2 + 48);
        v9 = *(v2 + 49);
        do
        {
          FillRect = grl::IconMetricsRenderResult::getFillRect(v7[4]);
          Int32 = gdc::ResourceKey::getInt32(*(FillRect + 16), 2u);
          if (v8 >= Int32)
          {
            v8 = Int32;
          }

          *(v2 + 48) = v8;
          v12 = grl::IconMetricsRenderResult::getFillRect(v7[4]);
          result = gdc::ResourceKey::getInt32(*(v12 + 16), 2u);
          if (v9 <= result)
          {
            v9 = result;
          }

          *(v2 + 49) = v9;
          v13 = v7[1];
          if (v13)
          {
            do
            {
              v14 = v13;
              v13 = *v13;
            }

            while (v13);
          }

          else
          {
            do
            {
              v14 = v7[2];
              v15 = *v14 == v7;
              v7 = v14;
            }

            while (!v15);
          }

          v7 = v14;
        }

        while (v14 != v6);
      }

      ++v3;
    }

    while (v3 != v4);
    if (*(v2 + 49) < *(v2 + 48))
    {
LABEL_17:
      *(v2 + 48) = 0;
    }
  }

  return result;
}

uint64_t md::CartographicTiledRenderLayer<md::BuildingTileDataRenderable>::updateVisibleMapData(void *a1, uint64_t a2)
{
  v2 = a2;
  v94 = *MEMORY[0x1E69E9840];
  v4 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
  (*(*a1 + 144))(a1, v4);
  if ((*(*a1 + 200))(a1))
  {
    goto LABEL_99;
  }

  v5 = md::LayoutContext::get<md::SceneContext>(*(v2 + 8));
  if (!v5)
  {
    goto LABEL_99;
  }

  v85 = v2;
  v84 = v5;
  (*(*a1 + 160))(a1);
  v6 = a1[22];
  if (v6 == a1 + 23)
  {
    goto LABEL_37;
  }

  do
  {
    FillRect = grl::IconMetricsRenderResult::getFillRect(v6[4]);
    v8 = a1[12];
    if (!*&v8)
    {
      goto LABEL_31;
    }

    v9 = FillRect;
    v10 = *(FillRect + 104);
    v11 = vcnt_s8(v8);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v13 = *(FillRect + 104);
      if (v10 >= *&v8)
      {
        v13 = v10 % *&v8;
      }
    }

    else
    {
      v13 = (*&v8 - 1) & v10;
    }

    v14 = *(a1[11] + 8 * v13);
    if (!v14)
    {
      goto LABEL_31;
    }

    v15 = *v14;
    if (!*v14)
    {
      goto LABEL_31;
    }

    while (1)
    {
      v16 = *(v15 + 8);
      if (v16 == v10)
      {
        break;
      }

      if (v12 > 1)
      {
        if (v16 >= *&v8)
        {
          v16 %= *&v8;
        }
      }

      else
      {
        v16 &= *&v8 - 1;
      }

      if (v16 != v13)
      {
        goto LABEL_31;
      }

LABEL_19:
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_31;
      }
    }

    if (!gdc::LayerDataRequestKey::operator==((v15 + 16), v9))
    {
      goto LABEL_19;
    }

    v18 = a1[34];
    v17 = a1[35];
    if (v18 != v17)
    {
      while (*v18 != *(v15 + 128))
      {
        v18 += 8;
        if (v18 == v17)
        {
          v18 = a1[35];
          break;
        }
      }
    }

    v19 = v17 - (v18 + 8);
    if (v17 != v18 + 8)
    {
      memmove(v18, v18 + 8, v17 - (v18 + 8));
    }

    a1[35] = &v18[v19];
    v20 = *(v15 + 128);
    if (v20 && a1[30])
    {
      (**v20)(*(v15 + 128));
      *v20 = a1[33];
      a1[33] = v20;
    }

    std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,md::BuildingTileDataRenderable *>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,md::BuildingTileDataRenderable *>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,md::BuildingTileDataRenderable *>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,md::BuildingTileDataRenderable *>>>::erase(a1 + 11, v15);
LABEL_31:
    v21 = v6[1];
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
        v22 = v6[2];
        v23 = *v22 == v6;
        v6 = v22;
      }

      while (!v23);
    }

    v6 = v22;
  }

  while (v22 != a1 + 23);
LABEL_37:
  v2 = v85;
  (*(*a1 + 168))(&__p, a1, v85);
  v24 = __p;
  v25 = v91 - __p;
  v26 = (v91 - __p) >> 3;
  if (v26 < 1)
  {
    goto LABEL_54;
  }

  v28 = a1[35];
  v27 = a1[36];
  if (v27 - v28 < v25)
  {
    v29 = a1[34];
    v30 = v26 + (&v28[-v29] >> 3);
    if (!(v30 >> 61))
    {
      v31 = v27 - v29;
      v32 = (v27 - v29) >> 2;
      if (v32 > v30)
      {
        v30 = v32;
      }

      if (v31 >= 0x7FFFFFFFFFFFFFF8)
      {
        v33 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v33 = v30;
      }

      if (v33)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v33);
      }

      v34 = 8 * (&v28[-v29] >> 3);
      v35 = (v34 + v25);
      v36 = v34;
      do
      {
        v37 = *v24++;
        *v36++ = v37;
        v25 -= 8;
      }

      while (v25);
      memcpy(v35, v28, a1[35] - v28);
      v38 = a1[34];
      v39 = &v35[a1[35] - v28];
      a1[35] = v28;
      v40 = v28 - v38;
      v41 = (v34 - (v28 - v38));
      memcpy(v41, v38, v40);
      v42 = a1[34];
      a1[34] = v41;
      a1[35] = v39;
      a1[36] = 0;
      if (v42)
      {
        operator delete(v42);
      }

      goto LABEL_54;
    }

LABEL_108:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (__p != v91)
  {
    memmove(a1[35], __p, v91 - __p);
  }

  a1[35] = &v28[v25];
LABEL_54:
  if (*(a1 + 86) == 2)
  {
    v43 = a1[34];
    v44 = a1[35];
    while (v43 != v44)
    {
      (*(*a1 + 184))(a1, v84, *v43++);
    }
  }

  v45 = (*(*a1 + 176))(a1, v84);
  v46 = v45;
  v47 = a1[35];
  v88 = v45;
  v89 = v47;
  if (*(a1 + 13) == 1)
  {
    v87[0] = __p;
    v87[1] = v91;
    v48 = a1[34];
    if (v45 != v48)
    {
      while (((*(*a1 + 136))(a1, v85, *v48) & 1) != 0)
      {
        v48 += 8;
LABEL_74:
        if (v48 == v46)
        {
          goto LABEL_61;
        }
      }

      v58 = v46 - 8;
      while (v58 != v48)
      {
        v46 = v58;
        v59 = (*(*a1 + 136))(a1, v85, *v58);
        v58 = v46 - 8;
        if (v59)
        {
          v60 = *v48;
          *v48 = *v46;
          v48 += 8;
          *v46 = v60;
          goto LABEL_74;
        }
      }
    }

    v46 = v48;
LABEL_61:
    v86[0] = a1[34];
    v86[1] = v46;
    (*(*a1 + 120))(a1, &v88);
    (*(*a1 + 112))(a1, v85, v87);
    (*(*a1 + 128))(a1, v85, v86);
    v46 = (*(*a1 + 176))(a1, v84);
    v47 = a1[35];
    v88 = v46;
    v89 = v47;
  }

  v49 = v47 - v46;
  v50 = (v47 - v46) >> 3;
  if (v50 >= 1)
  {
    v52 = a1[38];
    v51 = a1[39];
    if (v51 - v52 >= v49)
    {
      while (v46 != v47)
      {
        v61 = *v46;
        v46 += 8;
        *v52++ = v61;
      }

      a1[38] = v52;
    }

    else
    {
      v53 = a1[37];
      v54 = v50 + ((v52 - v53) >> 3);
      if (v54 >> 61)
      {
        goto LABEL_108;
      }

      v55 = v51 - v53;
      v56 = (v51 - v53) >> 2;
      if (v56 > v54)
      {
        v54 = v56;
      }

      if (v55 >= 0x7FFFFFFFFFFFFFF8)
      {
        v57 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v57 = v54;
      }

      if (v57)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v57);
      }

      v62 = 8 * ((v52 - v53) >> 3);
      v63 = (v62 + v49);
      v64 = v62;
      do
      {
        v65 = *v46;
        v46 += 8;
        *v64++ = v65;
        v49 -= 8;
      }

      while (v49);
      memcpy(v63, v52, a1[38] - v52);
      v66 = a1[37];
      v67 = &v63[a1[38] - v52];
      a1[38] = v52;
      v68 = v52 - v66;
      v69 = (v62 - (v52 - v66));
      memcpy(v69, v66, v68);
      v70 = a1[37];
      a1[37] = v69;
      a1[38] = v67;
      a1[39] = 0;
      if (v70)
      {
        operator delete(v70);
      }
    }
  }

  v71 = v88;
  if (v88 != v89)
  {
    v72 = a1[35];
    v73 = v72 - v89;
    if (v72 != v89)
    {
      memmove(v88, v89, v72 - v89);
    }

    a1[35] = &v71[v73];
  }

  v74 = a1[37];
  v75 = a1[38];
  if (v75 != v74)
  {
    do
    {
      v76 = *v74;
      if (*v74 && a1[30])
      {
        (**v76)(*v74);
        *v76 = a1[33];
        a1[33] = v76;
      }

      ++v74;
    }

    while (v74 != v75);
    v74 = a1[37];
  }

  a1[38] = v74;
  (*(*a1 + 192))(a1);
  if (__p)
  {
    v91 = __p;
    operator delete(__p);
  }

LABEL_99:
  v77 = (*(*a1 + 96))(a1, v2);
  v78 = a1[10];
  if (v78)
  {
    v79 = *v77;
    v80 = v77[1];
    if (v78 == a1 + 7)
    {
      v93 = v92;
      (*(*v78 + 24))(v78, v92);
    }

    else
    {
      v93 = (*(*v78 + 16))(v78);
    }

    v81 = 126 - 2 * __clz((v80->i64 - v79) >> 3);
    if (v80 == v79)
    {
      v82 = 0;
    }

    else
    {
      v82 = v81;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)> &,md::BuildingTileDataRenderable **,false>(v79, v80, v92, v82, 1);
    std::__function::__value_func<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::~__value_func[abi:nn200100](v92);
  }

  return (*(*a1 + 152))(a1, v77, v2);
}

void sub_1B309E1C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, char a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)> &,md::BuildingTileDataRenderable **,false>(uint64_t result, int8x16_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = &a2[-1].i64[1];
  v10 = v8;
  v125 = a2;
  while (1)
  {
    v8 = v10;
    v11 = (a2 - v10) >> 3;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      result = std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v10->i64[0]);
      if (result)
      {
        v79 = v10->i64[0];
        v10->i64[0] = *v9;
LABEL_103:
        *v9 = v79;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v82 = &v10->u64[1];
      v84 = v10 == a2 || v82 == a2;
      if (a5)
      {
        if (!v84)
        {
          v85 = 0;
          v86 = v10;
          do
          {
            v88 = v86->i64[0];
            v87 = v86->i64[1];
            v86 = v82;
            result = std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), v87, v88);
            if (result)
            {
              v89 = v86->i64[0];
              v90 = v85;
              while (1)
              {
                *(&v10->i64[1] + v90) = *(v10->i64 + v90);
                if (!v90)
                {
                  break;
                }

                result = std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), v89, *(&v10->i64[-1] + v90));
                v90 -= 8;
                if ((result & 1) == 0)
                {
                  v91 = (&v10->i64[1] + v90);
                  goto LABEL_125;
                }
              }

              v91 = v10;
LABEL_125:
              *v91 = v89;
            }

            v82 = &v86->u64[1];
            v85 += 8;
          }

          while (&v86->u64[1] != a2);
        }
      }

      else if (!v84)
      {
        do
        {
          v120 = *v8;
          v119 = *(v8 + 8);
          v8 = v82;
          result = std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), v119, v120);
          if (result)
          {
            v121 = *v8;
            v122 = v8;
            do
            {
              v123 = v122;
              v124 = *--v122;
              *v123 = v124;
              result = std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), v121, *(v123 - 2));
            }

            while ((result & 1) != 0);
            *v122 = v121;
          }

          v82 = (v8 + 8);
        }

        while ((v8 + 8) != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v92 = (v11 - 2) >> 1;
        v127 = v92;
        do
        {
          v93 = v92;
          if (v127 >= v92)
          {
            v94 = (2 * v92) | 1;
            v95 = (v8 + 8 * v94);
            if (2 * v92 + 2 < v11 && std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), *v95, v95[1]))
            {
              ++v95;
              v94 = 2 * v93 + 2;
            }

            v96 = (v8 + 8 * v93);
            result = std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), *v95, *v96);
            if ((result & 1) == 0)
            {
              v97 = *v96;
              do
              {
                v98 = v95;
                *v96 = *v95;
                if (v127 < v94)
                {
                  break;
                }

                v99 = (2 * v94) | 1;
                v95 = (v8 + 8 * v99);
                v100 = 2 * v94 + 2;
                if (v100 < v11 && std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), *v95, v95[1]))
                {
                  ++v95;
                  v99 = v100;
                }

                result = std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), *v95, v97);
                v96 = v98;
                v94 = v99;
              }

              while (!result);
              *v98 = v97;
            }
          }

          v92 = v93 - 1;
        }

        while (v93);
        v101 = v125;
        do
        {
          v102 = v101;
          v103 = 0;
          v128 = *v8;
          v104 = v8;
          do
          {
            v105 = &v104[v103];
            v106 = v105 + 1;
            v107 = (2 * v103) | 1;
            v108 = 2 * v103 + 2;
            if (v108 >= v11)
            {
              v103 = (2 * v103) | 1;
            }

            else
            {
              v110 = v105[2];
              v109 = v105 + 2;
              result = std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), *(v109 - 1), v110);
              if (result)
              {
                v106 = v109;
                v103 = v108;
              }

              else
              {
                v103 = v107;
              }
            }

            *v104 = *v106;
            v104 = v106;
          }

          while (v103 <= (v11 - 2) / 2);
          v101 = v102 - 1;
          if (v106 == v102 - 1)
          {
            *v106 = v128;
          }

          else
          {
            *v106 = *v101;
            *v101 = v128;
            v111 = (v106 - v8 + 8) >> 3;
            v112 = v111 < 2;
            v113 = v111 - 2;
            if (!v112)
            {
              v114 = v113 >> 1;
              v115 = (v8 + 8 * (v113 >> 1));
              result = std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), *v115, *v106);
              if (result)
              {
                v116 = *v106;
                do
                {
                  v117 = v115;
                  *v106 = *v115;
                  if (!v114)
                  {
                    break;
                  }

                  v114 = (v114 - 1) >> 1;
                  v115 = (v8 + 8 * v114);
                  result = std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), *v115, v116);
                  v106 = v117;
                }

                while ((result & 1) != 0);
                *v117 = v116;
              }
            }
          }

          v112 = v11-- <= 2;
        }

        while (!v112);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *(a3 + 24);
    if (v11 < 0x81)
    {
      v17 = std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(v13, v10->i64[0], v10->i64[v12]);
      v18 = std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v10->i64[0]);
      if (v17)
      {
        v19 = v10->i64[v12];
        if (v18)
        {
          v10->i64[v12] = *v9;
          *v9 = v19;
        }

        else
        {
          v10->i64[v12] = v10->i64[0];
          v10->i64[0] = v19;
          if (std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v19))
          {
            v31 = v10->i64[0];
            v10->i64[0] = *v9;
            *v9 = v31;
          }
        }
      }

      else if (v18)
      {
        v22 = v10->i64[0];
        v10->i64[0] = *v9;
        *v9 = v22;
        if (std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), v10->i64[0], v10->i64[v12]))
        {
          v23 = v10->i64[v12];
          v10->i64[v12] = v10->i64[0];
          v10->i64[0] = v23;
        }
      }

      goto LABEL_55;
    }

    v14 = std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(v13, v10->i64[v12], v10->i64[0]);
    v15 = std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v10->i64[v12]);
    if (v14)
    {
      v16 = v10->i64[0];
      if (v15)
      {
        v10->i64[0] = *v9;
        *v9 = v16;
      }

      else
      {
        v10->i64[0] = v10->i64[v12];
        v10->i64[v12] = v16;
        if (std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v16))
        {
          v24 = v10->i64[v12];
          v10->i64[v12] = *v9;
          *v9 = v24;
        }
      }
    }

    else if (v15)
    {
      v20 = v10->i64[v12];
      v10->i64[v12] = *v9;
      *v9 = v20;
      if (std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), v10->i64[v12], v10->i64[0]))
      {
        v21 = v10->i64[0];
        v10->i64[0] = v10->i64[v12];
        v10->i64[v12] = v21;
      }
    }

    v25 = v12 - 1;
    v26 = std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * (v12 - 1)), *(v8 + 8));
    v27 = std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), a2[-1].i64[0], *(v8 + 8 * (v12 - 1)));
    if (v26)
    {
      v28 = *(v8 + 8);
      if (v27)
      {
        *(v8 + 8) = a2[-1].i64[0];
        a2[-1].i64[0] = v28;
      }

      else
      {
        *(v8 + 8) = *(v8 + 8 * v25);
        *(v8 + 8 * v25) = v28;
        if (std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), a2[-1].i64[0], v28))
        {
          v32 = *(v8 + 8 * v25);
          *(v8 + 8 * v25) = a2[-1].i64[0];
          a2[-1].i64[0] = v32;
        }
      }
    }

    else if (v27)
    {
      v29 = *(v8 + 8 * v25);
      *(v8 + 8 * v25) = a2[-1].i64[0];
      a2[-1].i64[0] = v29;
      if (std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * v25), *(v8 + 8)))
      {
        v30 = *(v8 + 8);
        *(v8 + 8) = *(v8 + 8 * v25);
        *(v8 + 8 * v25) = v30;
      }
    }

    v33 = a2;
    v34 = v12 + 1;
    v35 = std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * (v12 + 1)), *(v8 + 16));
    v36 = std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), v33[-2].i64[1], *(v8 + 8 * (v12 + 1)));
    if (v35)
    {
      v37 = *(v8 + 16);
      if (v36)
      {
        *(v8 + 16) = v125[-2].i64[1];
        v125[-2].i64[1] = v37;
      }

      else
      {
        *(v8 + 16) = *(v8 + 8 * v34);
        *(v8 + 8 * v34) = v37;
        if (std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), v125[-2].i64[1], v37))
        {
          v40 = *(v8 + 8 * v34);
          *(v8 + 8 * v34) = v125[-2].i64[1];
          v125[-2].i64[1] = v40;
        }
      }
    }

    else if (v36)
    {
      v38 = *(v8 + 8 * v34);
      *(v8 + 8 * v34) = v125[-2].i64[1];
      v125[-2].i64[1] = v38;
      if (std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * v34), *(v8 + 16)))
      {
        v39 = *(v8 + 16);
        *(v8 + 16) = *(v8 + 8 * v34);
        *(v8 + 8 * v34) = v39;
      }
    }

    v41 = std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * v12), *(v8 + 8 * v25));
    v42 = std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * v34), *(v8 + 8 * v12));
    if ((v41 & 1) == 0)
    {
      v44 = *(v8 + 8 * v12);
      if (!v42)
      {
        goto LABEL_54;
      }

      v45 = *(v8 + 8 * v34);
      *(v8 + 8 * v12) = v45;
      *(v8 + 8 * v34) = v44;
      v46 = std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), v45, *(v8 + 8 * v25));
      v44 = *(v8 + 8 * v12);
      if (!v46)
      {
        goto LABEL_54;
      }

      v47 = *(v8 + 8 * v25);
      *(v8 + 8 * v25) = v44;
      *(v8 + 8 * v12) = v47;
      goto LABEL_53;
    }

    v43 = *(v8 + 8 * v25);
    if (v42)
    {
      *(v8 + 8 * v25) = *(v8 + 8 * v34);
      *(v8 + 8 * v34) = v43;
      v44 = *(v8 + 8 * v12);
    }

    else
    {
      *(v8 + 8 * v25) = *(v8 + 8 * v12);
      *(v8 + 8 * v12) = v43;
      v48 = std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * v34), v43);
      v44 = *(v8 + 8 * v12);
      if (v48)
      {
        v47 = *(v8 + 8 * v34);
        *(v8 + 8 * v12) = v47;
        *(v8 + 8 * v34) = v44;
LABEL_53:
        v44 = v47;
      }
    }

LABEL_54:
    a2 = v125;
    v49 = *v8;
    *v8 = v44;
    *(v8 + 8 * v12) = v49;
LABEL_55:
    --a4;
    v50 = *v8;
    if (a5 & 1) != 0 || (v51 = std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), *(v8 - 8), *v8), v50 = *v8, (v51))
    {
      v52 = v8;
      do
      {
        v53 = v52;
        v54 = v52->i64[1];
        v52 = (v52 + 8);
      }

      while ((std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), v54, v50) & 1) != 0);
      v55 = a2;
      if (v53 == v8)
      {
        v55 = a2;
        do
        {
          if (v52 >= v55)
          {
            break;
          }

          v57 = v55[-1].i64[1];
          v55 = (v55 - 8);
        }

        while ((std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), v57, v50) & 1) == 0);
      }

      else
      {
        do
        {
          v56 = v55[-1].i64[1];
          v55 = (v55 - 8);
        }

        while (!std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), v56, v50));
      }

      if (v52 < v55)
      {
        v58 = v52;
        v59 = v55;
        do
        {
          v60 = v58->i64[0];
          v58->i64[0] = v59->i64[0];
          v59->i64[0] = v60;
          do
          {
            v53 = v58;
            v61 = v58->i64[1];
            v58 = (v58 + 8);
          }

          while ((std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), v61, v50) & 1) != 0);
          do
          {
            v62 = v59[-1].i64[1];
            v59 = (v59 - 8);
          }

          while (!std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), v62, v50));
        }

        while (v58 < v59);
      }

      if (v53 != v8)
      {
        *v8 = v53->i64[0];
      }

      v53->i64[0] = v50;
      a2 = v125;
      if (v52 < v55)
      {
        goto LABEL_76;
      }

      v63 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)> &,md::BuildingTileDataRenderable **>(v8, v53->i64, a3);
      v10 = &v53->u64[1];
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)> &,md::BuildingTileDataRenderable **>(&v53->i64[1], v125->i64, a3);
      if (result)
      {
        a2 = v53;
        if (!v63)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v63)
      {
LABEL_76:
        result = std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)> &,md::BuildingTileDataRenderable **,false>(v8, v53, a3, a4, a5 & 1);
        a5 = 0;
        v10 = &v53->u64[1];
      }
    }

    else
    {
      result = std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), *v8, *v9);
      if (result)
      {
        v10 = v8;
        do
        {
          v64 = v10->i64[1];
          v10 = (v10 + 8);
          result = std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), v50, v64);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v65 = v8 + 8;
        do
        {
          v10 = v65;
          if (v65 >= a2)
          {
            break;
          }

          v65 += 8;
          result = std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), v50, v10->i64[0]);
        }

        while (!result);
      }

      v66 = a2;
      if (v10 < a2)
      {
        v66 = a2;
        do
        {
          v67 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), v50, v67);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v66)
      {
        v68 = v10->i64[0];
        v10->i64[0] = v66->i64[0];
        v66->i64[0] = v68;
        do
        {
          v69 = v10->i64[1];
          v10 = (v10 + 8);
        }

        while (!std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), v50, v69));
        do
        {
          v70 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), v50, v70);
        }

        while ((result & 1) != 0);
      }

      v71 = &v10[-1].i64[1];
      if (&v10[-1].u64[1] != v8)
      {
        *v8 = *v71;
      }

      a5 = 0;
      *v71 = v50;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)> &,md::BuildingTileDataRenderable **,0>(v10->i64, &v10->i64[1], v10[1].i64, v9, a3);
    }

    if (v11 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)> &,md::BuildingTileDataRenderable **,0>(v10->i64, &v10->i64[1], v10[1].i64, &v10[1].i64[1], a3);
      result = std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v10[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v72 = v10[1].i64[1];
      v10[1].i64[1] = *v9;
      *v9 = v72;
      result = std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), v10[1].i64[1], v10[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v74 = v10[1].i64[0];
      v73 = v10[1].i64[1];
      v75 = v10->i64[1];
      v10[1].i64[0] = v73;
      v10[1].i64[1] = v74;
      result = std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), v73, v75);
      if (!result)
      {
        return result;
      }

      v77 = v10->i64[1];
      v76 = v10[1].i64[0];
      v78 = v10->i64[0];
      v10->i64[1] = v76;
      v10[1].i64[0] = v77;
      goto LABEL_164;
    }

    goto LABEL_10;
  }

  v80 = std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), v10->i64[1], v10->i64[0]);
  result = std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v10->i64[1]);
  if ((v80 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v118 = v10->i64[1];
    v10->i64[1] = *v9;
    *v9 = v118;
    v78 = v10->i64[0];
    v76 = v10->i64[1];
LABEL_164:
    result = std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), v76, v78);
    if (result)
    {
      *v10 = vextq_s8(*v10, *v10, 8uLL);
    }

    return result;
  }

  v81 = v10->i64[0];
  if (result)
  {
    v10->i64[0] = *v9;
    *v9 = v81;
  }

  else
  {
    v10->i64[0] = v10->i64[1];
    v10->i64[1] = v81;
    result = std::function<BOOL ()(md::BuildingTileDataRenderable *,md::BuildingTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v81);
    if (result)
    {
      v79 = v10->i64[1];
      v10->i64[1] = *v9;
      goto LABEL_103;
    }
  }

  return result;
}