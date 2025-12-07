uint64_t geom::point_tree<float,(unsigned char)3>::balance(float32x4_t *a1)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v19 = 0u;
  memset(v18, 0, sizeof(v18));
  v20[0] = &unk_286292D38;
  v20[1] = v18;
  v20[3] = v20;
  geom::point_tree<float,(unsigned char)3>::traverse(a1, 0, v20);
  std::__function::__value_func<void ()(geom::point_tree<float,(unsigned char)3> const&,unsigned long long)>::~__value_func[abi:nn200100](v20);
  v2 = *(&v19 + 1);
  if (*(&v19 + 1))
  {
    while (1)
    {
      v3 = *(*(*(&v18[0] + 1) + ((v19 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v19 & 0x1FF));
      *&v19 = v19 + 1;
      *(&v19 + 1) = v2 - 1;
      if (v19 >= 0x400)
      {
        operator delete(**(&v18[0] + 1));
        *(&v18[0] + 1) += 8;
        *&v19 = v19 - 512;
      }

      if (*(a1[11].i64[0] + 8 * v3) == -1)
      {
        break;
      }

LABEL_26:
      v2 = *(&v19 + 1);
      if (!*(&v19 + 1))
      {
        return std::deque<std::pair<unsigned int,unsigned int>>::~deque[abi:nn200100](v18);
      }
    }

    v4 = 0;
    while (1)
    {
      v5 = geom::point_tree<float,(unsigned char)3>::neighbor(a1, v3, v4);
      if (v5 != -1)
      {
        v6 = v5;
        if (*(a1[11].i64[0] + 8 * v5) == -1)
        {
          break;
        }
      }

LABEL_25:
      if (++v4 == 6)
      {
        goto LABEL_26;
      }
    }

    if (v3)
    {
      v7 = *(a1[12].i64[1] + 24 * v3);
      v8 = (63 - __clz(v7));
      if (v7)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      if (v5)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v9 = 0;
      if (v5)
      {
LABEL_13:
        v10 = *(a1[12].i64[1] + 24 * v5);
        v11 = (63 - __clz(v10));
        if (v10)
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }

LABEL_18:
        if (v9 - v12 >= 2)
        {
          geom::point_tree<float,(unsigned char)3>::split(a1, v5);
          if (*(a1[11].i64[0] + 8 * v6) != -1)
          {
            for (i = 0; i != 8; ++i)
            {
              v14 = *(a1[11].i64[0] + 8 * v6);
              if (v14 == -1)
              {
                v15 = -1;
              }

              else
              {
                v15 = i + v14;
              }

              v17 = v15;
              std::deque<unsigned long long>::push_back(v18, &v17);
            }
          }
        }

        goto LABEL_25;
      }
    }

    v12 = 0;
    goto LABEL_18;
  }

  return std::deque<std::pair<unsigned int,unsigned int>>::~deque[abi:nn200100](v18);
}

void *geom::point_tree<float,(unsigned char)3>::traverse(void *result, int a2, uint64_t a3)
{
  v4 = result;
  if (a2 == 1)
  {
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    v14 = 0;
    std::deque<unsigned long long>::push_back(&v15, &v14);
    while (*(&v17 + 1))
    {
      v9 = *(*(*(&v15 + 1) + (((v17 + *(&v17 + 1) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v17 + *(&v17 + 1) - 1) & 0x1FF));
      --*(&v17 + 1);
      std::deque<std::pair<unsigned int,unsigned int>>::__maybe_remove_back_spare[abi:nn200100](&v15, 1);
      std::function<void ()(geom::point_tree<float,(unsigned char)3> const&,unsigned long long)>::operator()(a3, v4, v9);
      if (*(v4[22] + 8 * v9) != -1)
      {
        for (i = 7; i != -1; --i)
        {
          v11 = *(v4[22] + 8 * v9);
          if (v11 == -1)
          {
            v12 = -1;
          }

          else
          {
            v12 = i + v11;
          }

          v14 = v12;
          std::deque<unsigned long long>::push_back(&v15, &v14);
        }
      }
    }

    return std::deque<std::pair<unsigned int,unsigned int>>::~deque[abi:nn200100](&v15);
  }

  if (a2 == 2)
  {
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    v14 = 0;
    std::deque<unsigned long long>::push_back(&v15, &v14);
    while (*(&v17 + 1))
    {
      v5 = *(*(*(&v15 + 1) + ((v17 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v17 & 0x1FF));
      *&v17 = v17 + 1;
      --*(&v17 + 1);
      if (v17 >= 0x400)
      {
        operator delete(**(&v15 + 1));
        *(&v15 + 1) += 8;
        *&v17 = v17 - 512;
      }

      std::function<void ()(geom::point_tree<float,(unsigned char)3> const&,unsigned long long)>::operator()(a3, v4, v5);
      if (*(v4[22] + 8 * v5) != -1)
      {
        for (j = 0; j != 8; ++j)
        {
          v7 = *(v4[22] + 8 * v5);
          if (v7 == -1)
          {
            v8 = -1;
          }

          else
          {
            v8 = j + v7;
          }

          v14 = v8;
          std::deque<unsigned long long>::push_back(&v15, &v14);
        }
      }
    }

    return std::deque<std::pair<unsigned int,unsigned int>>::~deque[abi:nn200100](&v15);
  }

  if (result[20] != result[19])
  {
    v13 = 0;
    do
    {
      result = std::function<void ()(geom::point_tree<float,(unsigned char)3> const&,unsigned long long)>::operator()(a3, v4, v13++);
    }

    while (v13 < (v4[20] - v4[19]) >> 3);
  }

  return result;
}

uint64_t std::function<void ()(geom::point_tree<float,(unsigned char)3> const&,unsigned long long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v3 = *(a1 + 24);
  if (v3)
  {
    return (*(*v3 + 48))(v3, a2, &v7);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return geom::point_tree<float,(unsigned char)3>::find_closest_point(v5, v6);
}

uint64_t geom::point_tree<float,(unsigned char)3>::find_closest_point(float32x4_t *a1, float32x4_t a2)
{
  __p = 0;
  v5 = 0;
  v6 = 0;
  geom::point_tree<float,(unsigned char)3>::find_k_nearest(a1, 1u, &__p, a2);
  v2 = *__p;
  v5 = __p;
  operator delete(__p);
  return v2;
}

void geom::point_tree<float,(unsigned char)3>::find_k_nearest(float32x4_t *a1, unsigned int a2, void *a3, float32x4_t a4)
{
  v90 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v87 = 0;
    v88 = 0;
    v89 = 0;
    __p = 0;
    v85 = 0;
    v86 = 0;
    *&v83 = 0;
    geom::point_tree<float,(unsigned char)3>::centroid(a1, 0);
    v8 = vsubq_f32(v7, a4);
    v9 = vmulq_f32(v8, v8);
    *(&v83 + 2) = v9.f32[2] + vaddv_f32(*v9.f32);
    std::vector<geom::point_tree<float,(unsigned char)2>::distance_query_item,std::allocator<geom::point_tree<float,(unsigned char)2>::distance_query_item>>::push_back[abi:nn200100](&__p, &v83);
    std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<geom::point_tree<float,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<float,(unsigned char)2>::distance_query_item*>>(__p, v85, &v82, (v85 - __p) >> 4);
    v10 = __p;
    v11 = v85;
    if (__p != v85)
    {
      v12 = a4;
      v12.i32[3] = 0;
      v78 = v12;
      v13 = INFINITY;
      do
      {
        v14 = *v10;
        v15 = (v11 - v10) >> 4;
        if (v15 >= 2)
        {
          v16 = 0;
          v83 = *v10;
          v17 = v10;
          do
          {
            v18 = v17;
            v17 += 2 * v16 + 2;
            v19 = 2 * v16;
            v16 = (2 * v16) | 1;
            v20 = v19 + 2;
            if (v20 < v15 && *(v17 + 2) > *(v17 + 6))
            {
              v17 += 2;
              v16 = v20;
            }

            *v18 = *v17;
          }

          while (v16 <= ((v15 - 2) >> 1));
          v21 = (v11 - 16);
          if (v17 == v21)
          {
            *v17 = v83;
          }

          else
          {
            *v17 = *v21;
            *v21 = v83;
            std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<geom::point_tree<float,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<float,(unsigned char)2>::distance_query_item*>>(v10, (v17 + 2), &v82, ((v17 + 2) - v10) >> 4);
          }

          v11 = v85;
        }

        v85 = v11 - 16;
        if (*(a1[11].i64[0] + 8 * v14) == -1)
        {
          v36 = geom::point_tree<float,(unsigned char)3>::bounds(a1, v14);
          v37 = v38;
          v36.i32[3] = v76.i32[3];
          v37.i32[3] = v74.i32[3];
          v39 = v37;
          v39.i32[3] = 0;
          v40 = vminnmq_f32(v78, v39);
          v40.i32[3] = 0;
          v41 = v36;
          v41.i32[3] = 0;
          v42 = vsubq_f32(vmaxnmq_f32(v40, v41), a4);
          v43 = vmulq_f32(v42, v42);
          if ((v43.f32[2] + vaddv_f32(*v43.f32)) <= (v13 * v13))
          {
            v75 = v36;
            v77 = v37;
            v44 = (a1[14].i64[0] + 16 * v14);
            v45 = *v44;
            v46 = v44[1];
            if (v45 != v46)
            {
              v47 = a1[6].i64[1];
              v48 = (v47 + 8 * v46);
              v49 = (v47 + 8 * v45);
              do
              {
                v50 = *v49;
                v51 = vsubq_f32(*(a1[5].i64[0] + 16 * *v49), a4);
                v52 = vmulq_f32(v51, v51);
                v53 = v52.f32[2] + vaddv_f32(*v52.f32);
                v54 = v87;
                v55 = v88;
                v56 = (v88 - v87) >> 4;
                if (v56 == a2 && v53 < v87[2])
                {
                  if (a2 != 1)
                  {
                    v57 = 0;
                    v83 = *v87;
                    v58 = v87;
                    do
                    {
                      v59 = v58;
                      v58 += 4 * v57 + 4;
                      v60 = 2 * v57;
                      v57 = (2 * v57) | 1;
                      v61 = v60 + 2;
                      if (v61 < a2 && v58[2] < v58[6])
                      {
                        v58 += 4;
                        v57 = v61;
                      }

                      *v59 = *v58;
                    }

                    while (v57 <= ((a2 - 2) >> 1));
                    v62 = v55 - 4;
                    if (v58 == v62)
                    {
                      *v58 = v83;
                    }

                    else
                    {
                      *v58 = *v62;
                      *v62 = v83;
                      std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::less<geom::point_tree<float,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<float,(unsigned char)2>::distance_query_item*>>(v54, (v58 + 4), &v82, ((v58 + 4) - v54) >> 4);
                    }

                    v54 = v87;
                    v55 = v88;
                  }

                  v88 = v55 - 4;
                  v56 = ((v55 - 4) - v54) >> 4;
                }

                if (v56 < a2)
                {
                  *&v83 = v50;
                  *(&v83 + 2) = v53;
                  std::vector<geom::point_tree<float,(unsigned char)2>::distance_query_item,std::allocator<geom::point_tree<float,(unsigned char)2>::distance_query_item>>::push_back[abi:nn200100](&v87, &v83);
                  std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::less<geom::point_tree<float,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<float,(unsigned char)2>::distance_query_item*>>(v87, v88, &v82, (v88 - v87) >> 4);
                }

                ++v49;
              }

              while (v49 != v48);
            }

            if (a2 == (v88 - v87) >> 4)
            {
              v13 = v87[2];
            }

            v36 = v75;
            v37 = v77;
          }
        }

        else
        {
          for (i = 0; i != 8; ++i)
          {
            v23 = *(a1[11].i64[0] + 8 * v14);
            if (v23 == -1)
            {
              v24 = -1;
            }

            else
            {
              v24 = i + v23;
            }

            if (*(a1[14].i64[0] + 16 * v24 + 8) != *(a1[14].i64[0] + 16 * v24))
            {
              v25 = geom::point_tree<float,(unsigned char)3>::bounds(a1, v24);
              v27 = v26;
              v25.i32[3] = v80;
              v27.i32[3] = v81;
              v28 = v27;
              v28.i32[3] = 0;
              v29 = vminnmq_f32(v78, v28);
              v29.i32[3] = 0;
              v30 = v25;
              v30.i32[3] = 0;
              v31 = vsubq_f32(vmaxnmq_f32(v29, v30), a4);
              v32 = vmulq_f32(v31, v31);
              if ((v32.f32[2] + vaddv_f32(*v32.f32)) <= (v13 * v13))
              {
                *&v83 = v24;
                geom::point_tree<float,(unsigned char)3>::centroid(a1, v24);
                v34 = vsubq_f32(v33, a4);
                v35 = vmulq_f32(v34, v34);
                *(&v83 + 2) = v35.f32[2] + vaddv_f32(*v35.f32);
                std::vector<geom::point_tree<float,(unsigned char)2>::distance_query_item,std::allocator<geom::point_tree<float,(unsigned char)2>::distance_query_item>>::push_back[abi:nn200100](&__p, &v83);
                std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<geom::point_tree<float,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<float,(unsigned char)2>::distance_query_item*>>(__p, v85, &v82, (v85 - __p) >> 4);
              }
            }
          }

          v37 = v74;
          v36 = v76;
        }

        v10 = __p;
        v11 = v85;
        v74 = v37;
        v76 = v36;
      }

      while (__p != v85);
    }

    std::vector<double>::resize(a3, (v88 - v87) >> 4);
    v63 = a3[1] - *a3;
    if (v63)
    {
      v64 = v63 >> 3;
      v65 = v88;
      do
      {
        v66 = v87;
        --v64;
        *(*a3 + 8 * v64) = *v87;
        v67 = (v65 - v66) >> 4;
        if (v67 >= 2)
        {
          v68 = 0;
          v83 = *v66;
          v69 = v66;
          do
          {
            v70 = v69;
            v69 += 4 * v68 + 4;
            v71 = 2 * v68;
            v68 = (2 * v68) | 1;
            v72 = v71 + 2;
            if (v72 < v67 && v69[2] < v69[6])
            {
              v69 += 4;
              v68 = v72;
            }

            *v70 = *v69;
          }

          while (v68 <= ((v67 - 2) >> 1));
          v73 = v65 - 4;
          if (v69 == v73)
          {
            *v69 = v83;
          }

          else
          {
            *v69 = *v73;
            *v73 = v83;
            std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::less<geom::point_tree<float,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<float,(unsigned char)2>::distance_query_item*>>(v66, (v69 + 4), &v82, ((v69 + 4) - v66) >> 4);
          }

          v65 = v88;
        }

        v65 -= 4;
        v88 = v65;
      }

      while (v64);
    }

    if (__p)
    {
      v85 = __p;
      operator delete(__p);
    }

    if (v87)
    {
      v88 = v87;
      operator delete(v87);
    }
  }

  else
  {
    a3[1] = *a3;
  }
}

void geom::point_tree<float,(unsigned char)3>::precompute_cell_data(void *a1)
{
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(a1 + 31, (a1[20] - a1[19]) >> 3);
  if (a1[20] - a1[19] >= 9uLL)
  {
    v2 = 1;
    do
    {
      geom::point_tree<float,(unsigned char)3>::centroid(a1, v2);
      v4 = v3;
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_((a1 + 31), &v4);
      ++v2;
    }

    while (v2 < (a1[20] - a1[19]) >> 3);
  }
}

void std::vector<std::array<std::bitset<64ul>,3ul>>::resize(void *result, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<std::array<std::bitset<64ul>,3ul>>::__append(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 24 * a2;
  }
}

void *geom::point_tree<float,(unsigned char)3>::partition(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v9 = result;
  if (a3 != 3)
  {
    v10 = a3;
    v11 = 8 * a5;
    v24 = a6;
    v12 = 8 * a6;
    do
    {
      v13 = v9[13];
      v14 = (v11 + v13);
      if (v11 != v12)
      {
        v15 = (v11 + v13);
        v14 = (v12 + v13);
        v16 = v9[10];
        v26 = a7;
        v17 = *(&v26 & 0xFFFFFFFFFFFFFFF3 | (4 * (v10 & 3)));
        while (2)
        {
          while (1)
          {
            v18 = *v15;
            if (*(v16 + 16 * *v15 + 4 * (v10 & 3)) >= v17)
            {
              break;
            }

            if (++v15 == v14)
            {
              goto LABEL_13;
            }
          }

          do
          {
            if (--v14 == v15)
            {
              v14 = v15;
              goto LABEL_13;
            }
          }

          while (*(v16 + 16 * *v14 + 4 * (v10 & 3)) >= v17);
          *v15++ = *v14;
          *v14 = v18;
          if (v14 != v15)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
      v11 = v14 - v13;
      v19 = (v14 - v13) >> 3;
      v20 = 1 << v10++;
      result = geom::point_tree<float,(unsigned char)3>::partition(v9, a2, v10, a4 & ~v20, a5, v19, a7);
      a4 |= v20;
      a5 = v19;
    }

    while (v10 != 3);
    a5 = v19;
    a6 = v24;
  }

  v21 = *(v9[22] + 8 * a2);
  if (v21 == -1)
  {
    v22 = -1;
  }

  else
  {
    v22 = v21 + a4;
  }

  v23 = (v9[28] + 16 * v22);
  *v23 = a5;
  v23[1] = a6;
  return result;
}

uint64_t geom::point_tree<double,(unsigned char)2>::point_tree(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  *a1 = 0;
  *(a1 + 1) = a3;
  *(a1 + 4) = a4;
  v8 = vdupq_n_s64(0x7FF0000000000000uLL);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = vdupq_n_s64(0xFFF0000000000000);
  *(a1 + 16) = v8;
  *(a1 + 32) = v11;
  if (v10)
  {
    v12 = 16 * v10;
    do
    {
      v8 = vminnmq_f64(*v9, v8);
      *(a1 + 16) = v8;
      v13 = *v9++;
      v11 = vmaxnmq_f64(v13, v11);
      *(a1 + 32) = v11;
      v12 -= 16;
    }

    while (v12);
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = *a2;
  *(a1 + 88) = *(a2 + 8);
  *(a1 + 96) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  v14 = *(a1 + 32);
  v15 = *(a1 + 16);
  if (a5)
  {
    v58 = vsubq_f64(v14, v15);
    v16 = (&v58 & 0xFFFFFFFFFFFFFFF7 | (8 * (*&vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v58, 1), v58)) & 1)));
    v17 = vld1q_dup_f64(v16);
    v18 = vaddq_f64(v15, v17);
    v15 = vminnmq_f64(v15, v18);
    v14 = vmaxnmq_f64(v14, v18);
    *(a1 + 16) = v15;
    *(a1 + 32) = v14;
  }

  *(a1 + 48) = vsubq_f64(v14, v15);
  v19 = vaddq_f64(v14, v15);
  __asm { FMOV            V1.2D, #0.5 }

  *(a1 + 64) = vmulq_f64(v19, _Q1);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a1 + 128, (a1 + 48));
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a1 + 248, (a1 + 64));
  std::vector<double>::resize((a1 + 104), *(a1 + 88));
  v25 = *(a1 + 104);
  v26 = *(a1 + 112);
  if (v25 != v26)
  {
    v27 = 0;
    v28 = (v26 - v25 - 8) >> 3;
    v29 = vdupq_n_s64(v28);
    v30 = (v28 + 2) & 0x3FFFFFFFFFFFFFFELL;
    v31 = xmmword_2500C1680;
    v32 = vdupq_n_s64(2uLL);
    do
    {
      v33 = vmovn_s64(vcgeq_u64(v29, v31));
      if (v33.i8[0])
      {
        *(v25 + 8 * v27) = v27;
      }

      if (v33.i8[4])
      {
        *(v25 + 8 * v27 + 8) = v27 + 1;
      }

      v27 += 2;
      v31 = vaddq_s64(v31, v32);
    }

    while (v30 != v27);
  }

  v34 = (v26 - v25) >> 3;
  v36 = *(a1 + 232);
  v35 = *(a1 + 240);
  if (v36 >= v35)
  {
    v38 = *(a1 + 224);
    v39 = v36 - v38;
    v40 = (v36 - v38) >> 4;
    v41 = v40 + 1;
    if ((v40 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v42 = v35 - v38;
    if (v42 >> 3 > v41)
    {
      v41 = v42 >> 3;
    }

    _CF = v42 >= 0x7FFFFFFFFFFFFFF0;
    v43 = 0xFFFFFFFFFFFFFFFLL;
    if (!_CF)
    {
      v43 = v41;
    }

    if (v43)
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1 + 224, v43);
    }

    v44 = v40;
    v45 = (16 * v40);
    *v45 = 0;
    v45[1] = v34;
    v37 = 16 * v40 + 16;
    v46 = &v45[-2 * v44];
    memcpy(v46, v38, v39);
    v47 = *(a1 + 224);
    *(a1 + 224) = v46;
    *(a1 + 232) = v37;
    *(a1 + 240) = 0;
    if (v47)
    {
      operator delete(v47);
    }
  }

  else
  {
    *v36 = 0;
    *(v36 + 1) = v34;
    v37 = (v36 + 16);
  }

  *(a1 + 232) = v37;
  std::vector<unsigned long long>::push_back[abi:nn200100]((a1 + 152), &geom::point_tree<double,(unsigned char)2>::k_invalid_index);
  std::vector<unsigned long long>::push_back[abi:nn200100]((a1 + 176), &geom::point_tree<double,(unsigned char)2>::k_invalid_index);
  v60[0] = 0uLL;
  std::vector<std::array<std::bitset<64ul>,2ul>>::push_back[abi:nn200100](a1 + 200, v60);
  *(*(a1 + 208) - 16) = vdupq_n_s64(1uLL);
  v61 = 0u;
  memset(v60, 0, sizeof(v60));
  v59 = 0;
  std::deque<unsigned long long>::push_back(v60, &v59);
  v48 = *(&v61 + 1);
  if (*(&v61 + 1))
  {
    v49 = a4;
    do
    {
      v50 = *(*(*(&v60[0] + 1) + ((v61 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v61 & 0x1FF));
      *&v61 = v61 + 1;
      *(&v61 + 1) = v48 - 1;
      if (v61 >= 0x400)
      {
        operator delete(**(&v60[0] + 1));
        *(&v60[0] + 1) += 8;
        *&v61 = v61 - 512;
      }

      if (*(*(a1 + 224) + 16 * v50 + 8) - *(*(a1 + 224) + 16 * v50) > v49)
      {
        if (v50)
        {
          v51 = *(*(a1 + 200) + 16 * v50);
          v52 = 63 - __clz(v51);
          v53 = v51 ? v52 : 0;
        }

        else
        {
          v53 = 0;
        }

        if (a3 > v53)
        {
          geom::point_tree<double,(unsigned char)2>::split(a1, v50);
        }
      }

      if (*(*(a1 + 176) + 8 * v50) != -1)
      {
        for (i = 0; i != 4; ++i)
        {
          v55 = *(*(a1 + 176) + 8 * v50);
          if (v55 == -1)
          {
            v56 = -1;
          }

          else
          {
            v56 = i + v55;
          }

          v59 = v56;
          std::deque<unsigned long long>::push_back(v60, &v59);
        }
      }

      v48 = *(&v61 + 1);
    }

    while (*(&v61 + 1));
  }

  std::deque<std::pair<unsigned int,unsigned int>>::~deque[abi:nn200100](v60);
  return a1;
}

uint64_t geom::point_tree<double,(unsigned char)2>::depth(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(*(a1 + 200) + 16 * a2);
    v3 = 63 - __clz(v2);
    if (v2)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

void *geom::point_tree<double,(unsigned char)2>::split(unsigned __int8 *a1, unint64_t a2)
{
  v20 = a2;
  v3 = a1 + 152;
  v4 = (*(a1 + 20) - *(a1 + 19)) >> 3;
  v5 = a1 + 176;
  *(*(a1 + 22) + 8 * a2) = v4;
  std::vector<unsigned long long>::resize(a1 + 19, v4 + 4, &v20);
  std::vector<unsigned long long>::resize(v5, v4 + 4, &geom::point_tree<double,(unsigned char)2>::k_invalid_index);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(v3 + 6, v4 + 4);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(v3 + 9, v4 + 4);
  v6 = v20;
  if (v20)
  {
    v7 = *(*(v3 + 6) + 16 * v20);
    v8 = 63 - __clz(v7);
    if (v7)
    {
      v6 = v8;
    }

    else
    {
      v6 = 0;
    }
  }

  if (*a1 == v6)
  {
    v9 = v6 + 1;
    *a1 = v9;
    v19 = vdivq_f64(*(a1 + 3), vdupq_lane_s64(COERCE__INT64(ldexp(1.0, v9)), 0));
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_((a1 + 128), &v19);
  }

  v10 = 0;
  v11 = *(v3 + 6);
  do
  {
    v12 = 0;
    v13 = v4 + v10;
    v14 = 1;
    do
    {
      v15 = v14;
      v19.f64[0] = *(v11 + 16 * v20 + 8 * v12);
      std::bitset<64ul>::operator<<=[abi:nn200100](&v19, 1uLL);
      v14 = 0;
      *(*(v3 + 6) + 16 * v13 + 8 * v12) = v19.f64[0];
      v11 = *(v3 + 6);
      *(v11 + 16 * v13 + 8 * v12) = *(v11 + 16 * v13 + 8 * v12) & 0xFFFFFFFFFFFFFFFELL | (v10 >> v12) & 1;
      v12 = 1;
    }

    while ((v15 & 1) != 0);
    ++v10;
  }

  while (v10 != 4);
  v16 = v20;
  v17.n128_f64[0] = geom::point_tree<double,(unsigned char)2>::centroid(a1, v20);
  return geom::point_tree<double,(unsigned char)2>::partition(a1, v16, 0, 0, *(*(a1 + 28) + 16 * v20), *(*(a1 + 28) + 16 * v20 + 8), v17);
}

float64x2_t geom::point_tree<double,(unsigned char)2>::bounds(__n128 *a1, unint64_t a2)
{
  if (a2)
  {
    result.f64[0] = geom::point_tree<double,(unsigned char)2>::centroid(a1, a2);
    v5 = *(a1[12].n128_u64[1] + 16 * a2);
    v6 = (63 - __clz(v5));
    if (v5)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    __asm { FMOV            V2.2D, #0.5 }

    v13 = vmulq_f64(*(a1[8].n128_u64[0] + 16 * v7), _Q2);
    *&result.f64[0] = *&vminnmq_f64(vsubq_f64(result, v13), vminnmq_f64(vaddq_f64(result, v13), vdupq_n_s64(0x7FF0000000000000uLL)));
  }

  else
  {
    return a1[1];
  }

  return result;
}

double geom::point_tree<double,(unsigned char)2>::centroid(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 248);
  if (a2 >= (*(a1 + 256) - v2) >> 4)
  {
    v4 = 0;
    v5 = (*(a1 + 200) + 16 * a2);
    v6 = 63 - __clz(*v5);
    if (*v5)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v3 = *(a1 + 64);
    v18 = *(a1 + 48);
    v8 = 1;
    do
    {
      v19 = v3;
      v9 = v8;
      if (v7)
      {
        v10 = v5[v4];
        v11 = 0.0;
        v12 = 2;
        v13 = v7 - 1;
        do
        {
          if ((v10 >> v13))
          {
            v14 = 1.0;
          }

          else
          {
            v14 = 0.0;
          }

          v15 = powf(-1.0, v14);
          v11 = v11 + v15 * (1.0 / exp2(v12++));
          --v13;
        }

        while (v13 != -1);
      }

      else
      {
        v11 = 0.0;
      }

      v8 = 0;
      v20 = v18;
      v16 = *(&v20 & 0xFFFFFFFFFFFFFFF7 | (8 * (v4 & 1)));
      v21 = v19;
      *(&v21 & 0xFFFFFFFFFFFFFFF7 | (8 * (v4 & 1))) = *(&v21 & 0xFFFFFFFFFFFFFFF7 | (8 * (v4 & 1))) - v16 * v11;
      v3 = v21;
      v4 = 1;
    }

    while ((v9 & 1) != 0);
  }

  else
  {
    v3 = *(v2 + 16 * a2);
  }

  return *&v3;
}

__n128 geom::point_tree<double,(unsigned char)2>::sides(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(*(a1 + 200) + 16 * a2);
    v3 = (63 - __clz(v2));
    if (v2)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return *(*(a1 + 128) + 16 * v4);
}

uint64_t geom::point_tree<double,(unsigned char)2>::node(uint64_t a1, unint64_t *a2)
{
  v13 = 1;
  v4 = std::__equal_aligned[abi:nn200100]<std::__bitset<1ul,64ul>,true,true>(a2, 0, (a2 + 1), 0, &v13);
  result = 0;
  if ((v4 & 1) == 0)
  {
    result = 0;
    v6 = *a2;
    if (*a2)
    {
      v7 = __clz(v6);
      if (v7 != 63)
      {
        result = 0;
        v8 = 62 - v7;
        v9 = (63 - v7) - 1;
        do
        {
          v10 = *(*(a1 + 176) + 8 * result);
          if (v10 == -1)
          {
            break;
          }

          v11 = ((a2[1] >> v8) & 1) != 0 ? (v6 >> v8) & 1 | 2 : (v6 >> v8) & 1;
          result = v10 + v11;
          --v8;
        }

        while (v9--);
      }
    }
  }

  return result;
}

unint64_t geom::point_tree<double,(unsigned char)2>::locate(uint64_t a1, float64x2_t *a2)
{
  v2 = vorrq_s8(vcgtq_f64(*a2, *(a1 + 32)), vcgtq_f64(*(a1 + 16), *a2));
  if ((vorrq_s8(vdupq_laneq_s64(v2, 1), v2).u64[0] & 0x8000000000000000) != 0)
  {
    return -1;
  }

  if (**(a1 + 176) == -1)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    *&v6 = geom::point_tree<double,(unsigned char)2>::centroid(a1, v5);
    v7 = 0;
    v8 = 0;
    v9 = *a2;
    v10 = 1;
    do
    {
      v11 = v10;
      v20 = v9;
      v12 = *(&v20 & 0xFFFFFFFFFFFFFFF7 | (8 * (v7 & 1)));
      v21 = v6;
      v13 = *(&v21 & 0xFFFFFFFFFFFFFFF7 | (8 * (v7 & 1)));
      v14 = 1 << v7;
      v15 = v8 & ~v14;
      v8 |= v14;
      if (v12 < v13)
      {
        v8 = v15;
      }

      v7 = 1;
      v10 = 0;
    }

    while ((v11 & 1) != 0);
    v16 = *(a1 + 176);
    v17 = *(v16 + 8 * v5);
    v18 = v17 + v8;
    if (v17 == -1)
    {
      v5 = -1;
    }

    else
    {
      v5 = v18;
    }
  }

  while (*(v16 + 8 * v5) != -1);
  return v5;
}

uint64_t geom::point_tree<double,(unsigned char)2>::neighbor(void *a1, uint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return -1;
  }

  v3 = (a1[25] + 16 * a2);
  v4 = 63 - __clz(a3);
  if ((a3 & 3) == 0)
  {
    v4 = 0;
  }

  if ((a3 & 1) != (v3[v4] & 1))
  {
    if (v4 >= 2)
    {
LABEL_30:
      abort();
    }

    v5 = *v3 & 1 | (2 * (v3[1] & 1));
    v6 = 1 << v4;
    if ((v5 & v6) != 0)
    {
      v7 = v5 & ~v6;
    }

    else
    {
      v7 = v5 | v6;
    }

    v8 = *(a1[22] + 8 * *(a1[19] + 8 * a2));
    v9 = v8 + v7;
    if (v8 == -1)
    {
      return -1;
    }

    else
    {
      return v9;
    }
  }

  v11 = 63 - __clz(*v3);
  v12 = *v3 && v11 >= 2u;
  if (!v12)
  {
    return -1;
  }

  v13 = v11;
  v14 = 2;
  while (((a3 ^ (v3[v4] >> (v14 - 1))) & 1) == 0)
  {
    v12 = v14++ >= v13;
    if (v12)
    {
      return -1;
    }
  }

  v15 = 0;
  v17 = *v3;
  v16 = *(&v17 + v4);
  do
  {
    if (v15 == 64)
    {
      goto LABEL_30;
    }

    if ((v16 & (1 << v15)) != 0)
    {
      v16 &= ~(1 << v15);
    }

    else
    {
      v16 |= 1 << v15;
    }

    ++v15;
    --v14;
  }

  while (v14);
  *(&v17 + v4) = v16;
  return geom::point_tree<double,(unsigned char)2>::node(a1, &v17);
}

uint64_t geom::point_tree<double,(unsigned char)2>::balance(unsigned __int8 *a1)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v19 = 0u;
  memset(v18, 0, sizeof(v18));
  v20[0] = &unk_286292DB8;
  v20[1] = v18;
  v20[3] = v20;
  geom::point_tree<double,(unsigned char)2>::traverse(a1, 0, v20);
  std::__function::__value_func<void ()(geom::point_tree<double,(unsigned char)2> const&,unsigned long long)>::~__value_func[abi:nn200100](v20);
  v2 = *(&v19 + 1);
  if (*(&v19 + 1))
  {
    while (1)
    {
      v3 = *(*(*(&v18[0] + 1) + ((v19 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v19 & 0x1FF));
      *&v19 = v19 + 1;
      *(&v19 + 1) = v2 - 1;
      if (v19 >= 0x400)
      {
        operator delete(**(&v18[0] + 1));
        *(&v18[0] + 1) += 8;
        *&v19 = v19 - 512;
      }

      if (*(*(a1 + 22) + 8 * v3) == -1)
      {
        break;
      }

LABEL_26:
      v2 = *(&v19 + 1);
      if (!*(&v19 + 1))
      {
        return std::deque<std::pair<unsigned int,unsigned int>>::~deque[abi:nn200100](v18);
      }
    }

    v4 = 0;
    while (1)
    {
      v5 = geom::point_tree<double,(unsigned char)2>::neighbor(a1, v3, v4);
      if (v5 != -1)
      {
        v6 = v5;
        if (*(*(a1 + 22) + 8 * v5) == -1)
        {
          break;
        }
      }

LABEL_25:
      if (++v4 == 4)
      {
        goto LABEL_26;
      }
    }

    if (v3)
    {
      v7 = *(*(a1 + 25) + 16 * v3);
      v8 = (63 - __clz(v7));
      if (v7)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      if (v5)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v9 = 0;
      if (v5)
      {
LABEL_13:
        v10 = *(*(a1 + 25) + 16 * v5);
        v11 = (63 - __clz(v10));
        if (v10)
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }

LABEL_18:
        if (v9 - v12 >= 2)
        {
          geom::point_tree<double,(unsigned char)2>::split(a1, v5);
          if (*(*(a1 + 22) + 8 * v6) != -1)
          {
            for (i = 0; i != 4; ++i)
            {
              v14 = *(*(a1 + 22) + 8 * v6);
              if (v14 == -1)
              {
                v15 = -1;
              }

              else
              {
                v15 = i + v14;
              }

              v17 = v15;
              std::deque<unsigned long long>::push_back(v18, &v17);
            }
          }
        }

        goto LABEL_25;
      }
    }

    v12 = 0;
    goto LABEL_18;
  }

  return std::deque<std::pair<unsigned int,unsigned int>>::~deque[abi:nn200100](v18);
}

void *geom::point_tree<double,(unsigned char)2>::traverse(void *result, int a2, uint64_t a3)
{
  v4 = result;
  if (a2 == 1)
  {
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    v14 = 0;
    std::deque<unsigned long long>::push_back(&v15, &v14);
    while (*(&v17 + 1))
    {
      v9 = *(*(*(&v15 + 1) + (((v17 + *(&v17 + 1) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v17 + *(&v17 + 1) - 1) & 0x1FF));
      --*(&v17 + 1);
      std::deque<std::pair<unsigned int,unsigned int>>::__maybe_remove_back_spare[abi:nn200100](&v15, 1);
      std::function<void ()(geom::point_tree<double,(unsigned char)2> const&,unsigned long long)>::operator()(a3, v4, v9);
      if (*(v4[22] + 8 * v9) != -1)
      {
        for (i = 3; i != -1; --i)
        {
          v11 = *(v4[22] + 8 * v9);
          if (v11 == -1)
          {
            v12 = -1;
          }

          else
          {
            v12 = i + v11;
          }

          v14 = v12;
          std::deque<unsigned long long>::push_back(&v15, &v14);
        }
      }
    }

    return std::deque<std::pair<unsigned int,unsigned int>>::~deque[abi:nn200100](&v15);
  }

  if (a2 == 2)
  {
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    v14 = 0;
    std::deque<unsigned long long>::push_back(&v15, &v14);
    while (*(&v17 + 1))
    {
      v5 = *(*(*(&v15 + 1) + ((v17 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v17 & 0x1FF));
      *&v17 = v17 + 1;
      --*(&v17 + 1);
      if (v17 >= 0x400)
      {
        operator delete(**(&v15 + 1));
        *(&v15 + 1) += 8;
        *&v17 = v17 - 512;
      }

      std::function<void ()(geom::point_tree<double,(unsigned char)2> const&,unsigned long long)>::operator()(a3, v4, v5);
      if (*(v4[22] + 8 * v5) != -1)
      {
        for (j = 0; j != 4; ++j)
        {
          v7 = *(v4[22] + 8 * v5);
          if (v7 == -1)
          {
            v8 = -1;
          }

          else
          {
            v8 = j + v7;
          }

          v14 = v8;
          std::deque<unsigned long long>::push_back(&v15, &v14);
        }
      }
    }

    return std::deque<std::pair<unsigned int,unsigned int>>::~deque[abi:nn200100](&v15);
  }

  if (result[20] != result[19])
  {
    v13 = 0;
    do
    {
      result = std::function<void ()(geom::point_tree<double,(unsigned char)2> const&,unsigned long long)>::operator()(a3, v4, v13++);
    }

    while (v13 < (v4[20] - v4[19]) >> 3);
  }

  return result;
}

uint64_t std::function<void ()(geom::point_tree<double,(unsigned char)2> const&,unsigned long long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v3 = *(a1 + 24);
  if (v3)
  {
    return (*(*v3 + 48))(v3, a2, &v7);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return geom::point_tree<double,(unsigned char)2>::find_closest_point(v5, v6);
}

uint64_t geom::point_tree<double,(unsigned char)2>::find_closest_point(__n128 *a1, float64x2_t a2)
{
  __p = 0;
  v5 = 0;
  v6 = 0;
  geom::point_tree<double,(unsigned char)2>::find_k_nearest(a1, 1u, &__p, a2);
  v2 = *__p;
  v5 = __p;
  operator delete(__p);
  return v2;
}

void geom::point_tree<double,(unsigned char)2>::find_k_nearest(__n128 *a1, unsigned int a2, void *a3, float64x2_t a4)
{
  v69 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v66 = 0;
    v67 = 0;
    v68 = 0;
    __p = 0;
    v64 = 0;
    v65 = 0;
    *&v62 = 0;
    v7.f64[0] = geom::point_tree<double,(unsigned char)2>::centroid(a1, 0);
    v8 = vsubq_f64(v7, a4);
    *(&v62 + 1) = vaddvq_f64(vmulq_f64(v8, v8));
    std::vector<std::array<std::bitset<64ul>,2ul>>::push_back[abi:nn200100](&__p, &v62);
    std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<geom::point_tree<double,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<double,(unsigned char)2>::distance_query_item*>>(__p, v64, &v61, (v64 - __p) >> 4);
    v9 = __p;
    v10 = v64;
    if (__p != v64)
    {
      v11 = INFINITY;
      do
      {
        v12 = *v9;
        v13 = (v10 - v9) >> 4;
        if (v13 >= 2)
        {
          v14 = 0;
          v62 = *v9;
          v15 = v9;
          do
          {
            v16 = v15;
            v15 += 2 * v14 + 2;
            v17 = 2 * v14;
            v14 = (2 * v14) | 1;
            v18 = v17 + 2;
            if (v18 < v13 && *(v15 + 1) > *(v15 + 3))
            {
              v15 += 2;
              v14 = v18;
            }

            *v16 = *v15;
          }

          while (v14 <= ((v13 - 2) >> 1));
          v19 = (v10 - 16);
          if (v15 == v19)
          {
            *v15 = v62;
          }

          else
          {
            *v15 = *v19;
            *v19 = v62;
            std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<geom::point_tree<double,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<double,(unsigned char)2>::distance_query_item*>>(v9, (v15 + 2), &v61, ((v15 + 2) - v9) >> 4);
          }

          v10 = v64;
        }

        v64 = v10 - 16;
        if (*(a1[11].n128_u64[0] + 8 * v12) == -1)
        {
          v28 = geom::point_tree<double,(unsigned char)2>::bounds(a1, v12);
          v30 = vsubq_f64(vmaxnmq_f64(vminnmq_f64(a4, v29), v28), a4);
          if (vaddvq_f64(vmulq_f64(v30, v30)) <= v11 * v11)
          {
            v31 = (a1[14].n128_u64[0] + 16 * v12);
            v32 = *v31;
            v33 = v31[1];
            if (v32 != v33)
            {
              v34 = a1[6].n128_u64[1];
              v35 = (v34 + 8 * v33);
              v36 = (v34 + 8 * v32);
              do
              {
                v37 = *v36;
                v38 = vsubq_f64(*(a1[5].n128_u64[0] + 16 * *v36), a4);
                v39 = vaddvq_f64(vmulq_f64(v38, v38));
                v40 = v66;
                v41 = v67;
                v42 = (v67 - v66) >> 4;
                if (v42 == a2 && v39 < *(v66 + 1))
                {
                  if (a2 != 1)
                  {
                    v43 = 0;
                    v62 = *v66;
                    v44 = v66;
                    do
                    {
                      v45 = v44;
                      v44 += 16 * v43 + 16;
                      v46 = 2 * v43;
                      v43 = (2 * v43) | 1;
                      v47 = v46 + 2;
                      if (v47 < a2 && *(v44 + 1) < *(v44 + 3))
                      {
                        v44 += 16;
                        v43 = v47;
                      }

                      *v45 = *v44;
                    }

                    while (v43 <= ((a2 - 2) >> 1));
                    v48 = v41 - 16;
                    if (v44 == v48)
                    {
                      *v44 = v62;
                    }

                    else
                    {
                      *v44 = *v48;
                      *v48 = v62;
                      std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::less<geom::point_tree<double,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<double,(unsigned char)2>::distance_query_item*>>(v40, (v44 + 16), &v61, (v44 + 16 - v40) >> 4);
                    }

                    v40 = v66;
                    v41 = v67;
                  }

                  v67 = v41 - 16;
                  v42 = (v41 - 16 - v40) >> 4;
                }

                if (v42 < a2)
                {
                  *&v62 = v37;
                  *(&v62 + 1) = v39;
                  std::vector<std::array<std::bitset<64ul>,2ul>>::push_back[abi:nn200100](&v66, &v62);
                  std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::less<geom::point_tree<double,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<double,(unsigned char)2>::distance_query_item*>>(v66, v67, &v61, (v67 - v66) >> 4);
                }

                ++v36;
              }

              while (v36 != v35);
            }

            if (a2 == (v67 - v66) >> 4)
            {
              v11 = *(v66 + 1);
            }
          }
        }

        else
        {
          for (i = 0; i != 4; ++i)
          {
            v21 = *(a1[11].n128_u64[0] + 8 * v12);
            if (v21 == -1)
            {
              v22 = -1;
            }

            else
            {
              v22 = i + v21;
            }

            if (*(a1[14].n128_u64[0] + 16 * v22 + 8) != *(a1[14].n128_u64[0] + 16 * v22))
            {
              v23 = geom::point_tree<double,(unsigned char)2>::bounds(a1, v22);
              v25 = vsubq_f64(vmaxnmq_f64(vminnmq_f64(a4, v24), v23), a4);
              if (vaddvq_f64(vmulq_f64(v25, v25)) <= v11 * v11)
              {
                *&v62 = v22;
                v26.f64[0] = geom::point_tree<double,(unsigned char)2>::centroid(a1, v22);
                v27 = vsubq_f64(v26, a4);
                *(&v62 + 1) = vaddvq_f64(vmulq_f64(v27, v27));
                std::vector<std::array<std::bitset<64ul>,2ul>>::push_back[abi:nn200100](&__p, &v62);
                std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<geom::point_tree<double,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<double,(unsigned char)2>::distance_query_item*>>(__p, v64, &v61, (v64 - __p) >> 4);
              }
            }
          }
        }

        v9 = __p;
        v10 = v64;
      }

      while (__p != v64);
    }

    std::vector<double>::resize(a3, (v67 - v66) >> 4);
    v49 = a3[1] - *a3;
    if (v49)
    {
      v50 = v49 >> 3;
      v51 = v67;
      do
      {
        v52 = v66;
        --v50;
        *(*a3 + 8 * v50) = *v66;
        v53 = (v51 - v52) >> 4;
        if (v53 >= 2)
        {
          v54 = 0;
          v62 = *v52;
          v55 = v52;
          do
          {
            v56 = v55;
            v55 += 16 * v54 + 16;
            v57 = 2 * v54;
            v54 = (2 * v54) | 1;
            v58 = v57 + 2;
            if (v58 < v53 && *(v55 + 1) < *(v55 + 3))
            {
              v55 += 16;
              v54 = v58;
            }

            *v56 = *v55;
          }

          while (v54 <= ((v53 - 2) >> 1));
          v59 = v51 - 16;
          if (v55 == v59)
          {
            *v55 = v62;
          }

          else
          {
            *v55 = *v59;
            *v59 = v62;
            std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::less<geom::point_tree<double,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<double,(unsigned char)2>::distance_query_item*>>(v52, (v55 + 16), &v61, (v55 + 16 - v52) >> 4);
          }

          v51 = v67;
        }

        v51 -= 16;
        v67 = v51;
      }

      while (v50);
    }

    if (__p)
    {
      v64 = __p;
      operator delete(__p);
    }

    if (v66)
    {
      v67 = v66;
      operator delete(v66);
    }
  }

  else
  {
    a3[1] = *a3;
  }
}

void geom::point_tree<double,(unsigned char)2>::precompute_cell_data(void *a1)
{
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(a1 + 31, (a1[20] - a1[19]) >> 3);
  if (a1[20] - a1[19] >= 9uLL)
  {
    v2 = 1;
    do
    {
      *&v3 = geom::point_tree<double,(unsigned char)2>::centroid(a1, v2);
      v4 = v3;
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_((a1 + 31), &v4);
      ++v2;
    }

    while (v2 < (a1[20] - a1[19]) >> 3);
  }
}

void *geom::point_tree<double,(unsigned char)2>::partition(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v9 = result;
  if (a3 != 2)
  {
    v10 = a3;
    v11 = 8 * a5;
    v24 = a6;
    v12 = 8 * a6;
    do
    {
      v13 = v9[13];
      v14 = (v11 + v13);
      if (v11 != v12)
      {
        v15 = (v11 + v13);
        v14 = (v12 + v13);
        v16 = v9[10];
        v26 = a7;
        v17 = *(&v26 & 0xFFFFFFFFFFFFFFF7 | (8 * (v10 & 1)));
        while (2)
        {
          while (1)
          {
            v18 = *v15;
            if (*(v16 + 16 * *v15 + 8 * (v10 & 1)) >= v17)
            {
              break;
            }

            if (++v15 == v14)
            {
              goto LABEL_13;
            }
          }

          do
          {
            if (--v14 == v15)
            {
              v14 = v15;
              goto LABEL_13;
            }
          }

          while (*(v16 + 16 * *v14 + 8 * (v10 & 1)) >= v17);
          *v15++ = *v14;
          *v14 = v18;
          if (v14 != v15)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
      v11 = v14 - v13;
      v19 = (v14 - v13) >> 3;
      v20 = 1 << v10++;
      result = geom::point_tree<double,(unsigned char)2>::partition(v9, a2, v10, a4 & ~v20, a5, v19, a7);
      a4 |= v20;
      a5 = v19;
    }

    while (v10 != 2);
    a5 = v19;
    a6 = v24;
  }

  v21 = *(v9[22] + 8 * a2);
  if (v21 == -1)
  {
    v22 = -1;
  }

  else
  {
    v22 = v21 + a4;
  }

  v23 = (v9[28] + 16 * v22);
  *v23 = a5;
  v23[1] = a6;
  return result;
}

uint64_t geom::point_tree<double,(unsigned char)3>::point_tree(uint64_t a1, uint64_t *a2, unsigned int a3, unsigned int a4, int a5, double a6, __n128 a7, __n128 a8)
{
  *a1 = 0;
  *(a1 + 1) = a3;
  *(a1 + 4) = a4;
  v11 = *a2;
  v12 = a2[1];
  v13 = vdupq_n_s64(0x7FF0000000000000uLL);
  a7.n128_u64[0] = 0x7FF0000000000000;
  *(a1 + 16) = v13;
  *(a1 + 32) = a7;
  v14 = vdupq_n_s64(0xFFF0000000000000);
  a8.n128_u64[0] = 0xFFF0000000000000;
  *(a1 + 48) = v14;
  *(a1 + 64) = a8;
  if (v12)
  {
    v15.f64[0] = INFINITY;
    v16.f64[0] = -INFINITY;
    v17 = 32 * v12;
    do
    {
      v13 = vminnmq_f64(*v11, v13);
      v15 = vminnmq_f64(*(v11 + 16), *&v15.f64[0]);
      *(a1 + 16) = v13;
      *(a1 + 32) = v15;
      v18 = *v11;
      v19 = *(v11 + 16);
      v11 += 32;
      v14 = vmaxnmq_f64(v18, v14);
      v16 = vmaxnmq_f64(v19, *&v16.f64[0]);
      *(a1 + 48) = v14;
      *(a1 + 64) = v16;
      v17 -= 32;
    }

    while (v17);
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = *a2;
  *(a1 + 152) = a2[1];
  *(a1 + 160) = *(a2 + 16);
  *a2 = 0;
  a2[1] = 0;
  *(a2 + 16) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  v20 = *(a1 + 64);
  v21 = *(a1 + 48);
  v22 = *(a1 + 32);
  v23 = *(a1 + 16);
  if (a5)
  {
    v24 = vsubq_f64(v20, v22);
    v25 = vsubq_f64(v21, v23);
    v26 = v25.f64[1] > v25.f64[0];
    v70[0] = v25;
    v70[1] = v24;
    if (v24.f64[0] > *(v70 | (8 * v26)))
    {
      LODWORD(v26) = 2;
    }

    v69[0] = v25;
    v69[1] = v24;
    v24.f64[0] = *(v69 + v26);
    v27 = vaddq_f64(v23, vdupq_lane_s64(*&v24.f64[0], 0));
    v28 = *&vaddq_f64(v22, v24);
    v23 = vminnmq_f64(v23, v27);
    v22 = vminnmq_f64(*&v22.f64[0], v28);
    *(a1 + 16) = v23;
    *(a1 + 32) = v22;
    v21 = vmaxnmq_f64(v21, v27);
    v20 = vmaxnmq_f64(*&v20.f64[0], v28);
    *(a1 + 48) = v21;
    *(a1 + 64) = v20;
  }

  *(a1 + 80) = vsubq_f64(v21, v23);
  *(a1 + 96) = vsubq_f64(v20, v22);
  v29 = vaddq_f64(v21, v23);
  __asm { FMOV            V2.2D, #0.5 }

  *(a1 + 128) = vmulq_f64(vaddq_f64(v20, v22), _Q2);
  *(a1 + 112) = vmulq_f64(v29, _Q2);
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a1 + 192, (a1 + 80));
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a1 + 312, (a1 + 112));
  std::vector<double>::resize((a1 + 168), *(a1 + 152));
  v35 = *(a1 + 168);
  v36 = *(a1 + 176);
  if (v35 != v36)
  {
    v37 = 0;
    v38 = (v36 - v35 - 8) >> 3;
    v39 = vdupq_n_s64(v38);
    v40 = (v38 + 2) & 0x3FFFFFFFFFFFFFFELL;
    v41 = xmmword_2500C1680;
    v42 = vdupq_n_s64(2uLL);
    do
    {
      v43 = vmovn_s64(vcgeq_u64(v39, v41));
      if (v43.i8[0])
      {
        *(v35 + 8 * v37) = v37;
      }

      if (v43.i8[4])
      {
        *(v35 + 8 * v37 + 8) = v37 + 1;
      }

      v37 += 2;
      v41 = vaddq_s64(v41, v42);
    }

    while (v40 != v37);
  }

  v44 = (v36 - v35) >> 3;
  v46 = *(a1 + 296);
  v45 = *(a1 + 304);
  if (v46 >= v45)
  {
    v48 = *(a1 + 288);
    v49 = v46 - v48;
    v50 = (v46 - v48) >> 4;
    v51 = v50 + 1;
    if ((v50 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v52 = v45 - v48;
    if (v52 >> 3 > v51)
    {
      v51 = v52 >> 3;
    }

    _CF = v52 >= 0x7FFFFFFFFFFFFFF0;
    v53 = 0xFFFFFFFFFFFFFFFLL;
    if (!_CF)
    {
      v53 = v51;
    }

    if (v53)
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1 + 288, v53);
    }

    v54 = v50;
    v55 = (16 * v50);
    *v55 = 0;
    v55[1] = v44;
    v47 = 16 * v50 + 16;
    v56 = &v55[-2 * v54];
    memcpy(v56, v48, v49);
    v57 = *(a1 + 288);
    *(a1 + 288) = v56;
    *(a1 + 296) = v47;
    *(a1 + 304) = 0;
    if (v57)
    {
      operator delete(v57);
    }
  }

  else
  {
    *v46 = 0;
    *(v46 + 1) = v44;
    v47 = (v46 + 16);
  }

  *(a1 + 296) = v47;
  std::vector<unsigned long long>::push_back[abi:nn200100]((a1 + 216), &geom::point_tree<double,(unsigned char)3>::k_invalid_index);
  std::vector<unsigned long long>::push_back[abi:nn200100]((a1 + 240), &geom::point_tree<double,(unsigned char)3>::k_invalid_index);
  v72 = 0uLL;
  *&v73 = 0;
  std::vector<std::array<std::bitset<64ul>,3ul>>::push_back[abi:nn200100](a1 + 264, &v72);
  v58 = *(a1 + 272);
  *(v58 - 24) = vdupq_n_s64(1uLL);
  *(v58 - 8) = 1;
  v73 = 0u;
  v74 = 0u;
  v72 = 0u;
  v71 = 0;
  std::deque<unsigned long long>::push_back(&v72, &v71);
  v59 = *(&v74 + 1);
  if (*(&v74 + 1))
  {
    v60 = a4;
    do
    {
      v61 = *(*(*(&v72 + 1) + ((v74 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v74 & 0x1FF));
      *&v74 = v74 + 1;
      *(&v74 + 1) = v59 - 1;
      if (v74 >= 0x400)
      {
        operator delete(**(&v72 + 1));
        *(&v72 + 1) += 8;
        *&v74 = v74 - 512;
      }

      if (*(*(a1 + 288) + 16 * v61 + 8) - *(*(a1 + 288) + 16 * v61) > v60)
      {
        if (v61)
        {
          v62 = *(*(a1 + 264) + 24 * v61);
          v63 = 63 - __clz(v62);
          v64 = v62 ? v63 : 0;
        }

        else
        {
          v64 = 0;
        }

        if (a3 > v64)
        {
          geom::point_tree<double,(unsigned char)3>::split(a1, v61);
        }
      }

      if (*(*(a1 + 240) + 8 * v61) != -1)
      {
        for (i = 0; i != 8; ++i)
        {
          v66 = *(*(a1 + 240) + 8 * v61);
          if (v66 == -1)
          {
            v67 = -1;
          }

          else
          {
            v67 = i + v66;
          }

          v71 = v67;
          std::deque<unsigned long long>::push_back(&v72, &v71);
        }
      }

      v59 = *(&v74 + 1);
    }

    while (*(&v74 + 1));
  }

  std::deque<std::pair<unsigned int,unsigned int>>::~deque[abi:nn200100](&v72);
  return a1;
}

uint64_t geom::point_tree<double,(unsigned char)3>::depth(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(*(a1 + 264) + 24 * a2);
    v3 = 63 - __clz(v2);
    if (v2)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

void *geom::point_tree<double,(unsigned char)3>::split(unsigned __int8 *a1, unint64_t a2)
{
  v26 = a2;
  v3 = a1 + 216;
  v4 = (*(a1 + 28) - *(a1 + 27)) >> 3;
  v5 = a1 + 240;
  *(*(a1 + 30) + 8 * a2) = v4;
  std::vector<unsigned long long>::resize(a1 + 27, v4 + 8, &v26);
  std::vector<unsigned long long>::resize(v5, v4 + 8, &geom::point_tree<double,(unsigned char)3>::k_invalid_index);
  std::vector<std::array<std::bitset<64ul>,3ul>>::resize(v3 + 6, v4 + 8);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(v3 + 9, v4 + 8);
  v6 = v26;
  if (v26)
  {
    v7 = *(*(v3 + 6) + 24 * v26);
    v8 = 63 - __clz(v7);
    if (v7)
    {
      v6 = v8;
    }

    else
    {
      v6 = 0;
    }
  }

  if (*a1 == v6)
  {
    v9 = v6 + 1;
    *a1 = v9;
    v21 = *(a1 + 5);
    v22 = *(a1 + 6);
    v10 = vdupq_lane_s64(COERCE__INT64(ldexp(1.0, v9)), 0);
    v24 = vdivq_f64(v21, v10);
    v25 = vdivq_f64(v22, v10);
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_((a1 + 192), &v24);
  }

  v11 = 0;
  v12 = *(v3 + 6);
  v13 = 24 * v4;
  do
  {
    for (i = 0; i != 3; ++i)
    {
      v24.f64[0] = *(v12 + 24 * v26 + 8 * i);
      std::bitset<64ul>::operator<<=[abi:nn200100](&v24, 1uLL);
      *(*(v3 + 6) + v13 + 8 * i) = v24.f64[0];
      v12 = *(v3 + 6);
      *(v12 + v13 + 8 * i) = *(v12 + v13 + 8 * i) & 0xFFFFFFFFFFFFFFFELL | (v11 >> i) & 1;
    }

    ++v11;
    v13 += 24;
  }

  while (v11 != 8);
  v16 = v26;
  geom::point_tree<double,(unsigned char)3>::centroid(a1, v26, v23, v15);
  v17 = (*(a1 + 36) + 16 * v26);
  v18 = *v17;
  v19 = v17[1];
  v24 = v23[0];
  v25 = v23[1];
  return geom::point_tree<double,(unsigned char)3>::partition(a1, v16, 0, 0, &v24, v18, v19);
}

uint64_t geom::point_tree<double,(unsigned char)3>::child(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(*(a1 + 240) + 8 * a2);
  if (v3 == -1)
  {
    return -1;
  }

  else
  {
    return v3 + a3;
  }
}

__n128 geom::point_tree<double,(unsigned char)3>::bounds@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  *a2 = *(a1 + 16);
  *(a2 + 16) = v2;
  result = *(a1 + 48);
  v4 = *(a1 + 64);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

float64x2_t geom::point_tree<double,(unsigned char)3>::bounds@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, float64x2_t *a3@<X8>, __n128 a4@<Q0>)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    geom::point_tree<double,(unsigned char)3>::centroid(a1, a2, &v26, a4);
    v7 = 0;
    v8 = *(*(a1 + 264) + 24 * a2);
    v9 = (63 - __clz(v8));
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = (*(a1 + 192) + 32 * v10);
    __asm { FMOV            V4.2D, #0.5 }

    v21 = vmulq_f64(v11[1], _Q4);
    v17 = vmulq_f64(*v11, _Q4);
    v28[0] = vaddq_f64(v26, v17);
    v28[1] = vaddq_f64(v27, v21);
    v28[2] = vsubq_f64(v26, v17);
    v28[3] = vsubq_f64(v27, v21);
    result = vdupq_n_s64(0x7FF0000000000000uLL);
    v19.f64[0] = INFINITY;
    v20 = vdupq_n_s64(0xFFF0000000000000);
    v21.f64[0] = -INFINITY;
    do
    {
      v22 = v28[v7];
      v23 = v28[v7 + 1];
      result = vminnmq_f64(v22, result);
      v19 = vminnmq_f64(v23, *&v19.f64[0]);
      v20 = vmaxnmq_f64(v22, v20);
      v21 = vmaxnmq_f64(v23, *&v21.f64[0]);
      v7 += 2;
    }

    while (v7 != 4);
    *a3 = result;
    a3[1] = v19;
    a3[2] = v20;
    a3[3] = v21;
  }

  else
  {
    v24 = *(a1 + 32);
    *a3 = *(a1 + 16);
    a3[1] = v24;
    result = *(a1 + 48);
    v25 = *(a1 + 64);
    a3[2] = result;
    a3[3] = v25;
  }

  return result;
}

void geom::point_tree<double,(unsigned char)3>::centroid(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>, __n128 a4@<Q0>)
{
  v4 = *(a1 + 312);
  if (a2 >= (*(a1 + 320) - v4) >> 5)
  {
    v8 = 0;
    v9 = (*(a1 + 264) + 24 * a2);
    v10 = 63 - __clz(*v9);
    if (*v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v7 = *(a1 + 112);
    v12 = *(a1 + 128);
    v13 = *(a1 + 80);
    a4.n128_u64[0] = *(a1 + 96);
    v25 = a4;
    v13.i64[1] = vextq_s8(v13, v13, 8uLL).u64[0];
    v26 = v13;
    do
    {
      v27 = v12;
      v28 = v7;
      if (v11)
      {
        v14 = v9[v8];
        v15 = 0.0;
        v16 = 2;
        v17 = v11 - 1;
        do
        {
          if ((v14 >> v17))
          {
            v18 = 1.0;
          }

          else
          {
            v18 = 0.0;
          }

          v19 = powf(-1.0, v18);
          v15 = v15 + v19 * (1.0 / exp2(v16++));
          --v17;
        }

        while (v17 != -1);
      }

      else
      {
        v15 = 0.0;
      }

      v32[0] = v26;
      v32[1] = v25;
      v20 = 8 * (v8 & 3);
      v21 = *(v32 + v20);
      v31[0] = v28;
      v31[1] = v27;
      v22 = *(v31 + v20) - v21 * v15;
      v29 = v28;
      v30 = v27;
      *(&v29 + v20) = v22;
      v7 = v29;
      v6 = v30;
      *&v23 = v30;
      *(&v23 + 1) = *(&v27 + 1);
      ++v8;
      v12 = v23;
    }

    while (v8 != 3);
  }

  else
  {
    v5 = (v4 + 32 * a2);
    v7 = *v5;
    v6 = v5[1];
  }

  *a3 = v7;
  a3[1] = v6;
}

__n128 geom::point_tree<double,(unsigned char)3>::sides@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (a2)
  {
    v3 = *(*(a1 + 264) + 24 * a2);
    v4 = (63 - __clz(v3));
    if (v3)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 192) + 32 * v5;
  result = *v6;
  v8 = *(v6 + 16);
  *a3 = *v6;
  a3[1] = v8;
  return result;
}

uint64_t geom::point_tree<double,(unsigned char)3>::node(uint64_t a1, unint64_t *a2)
{
  v12 = 1;
  v4 = std::__equal_aligned[abi:nn200100]<std::__bitset<1ul,64ul>,true,true>(a2, 0, (a2 + 1), 0, &v12);
  result = 0;
  if ((v4 & 1) == 0)
  {
    result = 0;
    if (*a2)
    {
      v6 = __clz(*a2);
      if (v6 != 63)
      {
        result = 0;
        v7 = 63 - v6;
        do
        {
          v8 = *(*(a1 + 240) + 8 * result);
          if (v8 == -1)
          {
            break;
          }

          v9 = 0;
          v10 = 0;
          do
          {
            v11 = v10 & ~(1 << v9);
            v10 |= 1 << v9;
            if ((a2[v9] & (1 << (v7 - 1))) == 0)
            {
              v10 = v11;
            }

            ++v9;
          }

          while (v9 != 3);
          result = v8 + v10;
          --v7;
        }

        while (v7);
      }
    }
  }

  return result;
}

unint64_t geom::point_tree<double,(unsigned char)3>::locate(uint64_t a1, float64x2_t *a2)
{
  v2 = vorr_s8(vmovn_s64(vcgtq_f64(a2[1], *(a1 + 64))), vmovn_s64(vcgtq_f64(*(a1 + 32), a2[1])));
  v3.i64[0] = v2.u32[0];
  v3.i64[1] = v2.u32[1];
  v4 = vcltzq_s64(vshlq_n_s64(v3, 0x3FuLL));
  v5 = vorrq_s8(vcgtq_f64(*a2, *(a1 + 48)), vcgtq_f64(*(a1 + 16), *a2));
  if (((v5.i64[0] | v5.i64[1] | v4.n128_u64[0]) & 0x8000000000000000) != 0)
  {
    return -1;
  }

  if (**(a1 + 240) == -1)
  {
    return 0;
  }

  v8 = 0;
  do
  {
    geom::point_tree<double,(unsigned char)3>::centroid(a1, v8, &v16, v4);
    v4 = vmvnq_s8(vcgeq_f64(*a2, v16));
    v4.n128_u64[0] = vmovn_s64(v4);
    v9 = vuzp1_s16(*&v4, *&v4).i16[1];
    if (a2->f64[0] < v16.f64[0])
    {
      v10 = 2;
    }

    else
    {
      v10 = 3;
    }

    if (v9)
    {
      v11 = a2->f64[0] >= v16.f64[0];
    }

    else
    {
      v11 = v10;
    }

    v4.n128_u64[0] = *&a2[1].f64[0];
    if (v4.n128_f64[0] >= v17)
    {
      v11 |= 4uLL;
    }

    v12 = *(a1 + 240);
    v13 = *(v12 + 8 * v8);
    v14 = v13 + v11;
    if (v13 == -1)
    {
      v8 = -1;
    }

    else
    {
      v8 = v14;
    }
  }

  while (*(v12 + 8 * v8) != -1);
  return v8;
}

uint64_t geom::point_tree<double,(unsigned char)3>::neighbor(void *a1, uint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return -1;
  }

  v3 = (a1[33] + 24 * a2);
  v4 = 63 - __clz(a3);
  if ((a3 & 7) == 0)
  {
    v4 = 0;
  }

  if ((a3 & 1) != (v3[v4] & 1))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = v6 & ~(1 << v5);
      v6 |= 1 << v5;
      if ((v3[v5] & 1) == 0)
      {
        v6 = v7;
      }

      ++v5;
    }

    while (v5 != 3);
    if (v4 >= 3)
    {
LABEL_34:
      abort();
    }

    v8 = 1 << v4;
    if ((v6 & v8) != 0)
    {
      v9 = v6 & ~v8;
    }

    else
    {
      v9 = v6 | v8;
    }

    v10 = *(a1[30] + 8 * *(a1[27] + 8 * a2));
    v11 = v10 + v9;
    if (v10 == -1)
    {
      return -1;
    }

    else
    {
      return v11;
    }
  }

  v13 = 63 - __clz(*v3);
  v14 = *v3 && v13 >= 2u;
  if (!v14)
  {
    return -1;
  }

  v15 = v13;
  v16 = 2;
  while (((a3 ^ (v3[v4] >> (v16 - 1))) & 1) == 0)
  {
    v14 = v16++ >= v15;
    if (v14)
    {
      return -1;
    }
  }

  v17 = 0;
  v18 = *v3;
  v21 = v3[2];
  v20 = v18;
  v19 = *(&v20 + v4);
  do
  {
    if (v17 == 64)
    {
      goto LABEL_34;
    }

    if ((v19 & (1 << v17)) != 0)
    {
      v19 &= ~(1 << v17);
    }

    else
    {
      v19 |= 1 << v17;
    }

    ++v17;
    --v16;
  }

  while (v16);
  *(&v20 + v4) = v19;
  return geom::point_tree<double,(unsigned char)3>::node(a1, &v20);
}

uint64_t geom::point_tree<double,(unsigned char)3>::balance(unsigned __int8 *a1)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v19 = 0u;
  memset(v18, 0, sizeof(v18));
  v20[0] = &unk_286292E38;
  v20[1] = v18;
  v20[3] = v20;
  geom::point_tree<double,(unsigned char)3>::traverse(a1, 0, v20);
  std::__function::__value_func<void ()(geom::point_tree<double,(unsigned char)3> const&,unsigned long long)>::~__value_func[abi:nn200100](v20);
  v2 = *(&v19 + 1);
  if (*(&v19 + 1))
  {
    while (1)
    {
      v3 = *(*(*(&v18[0] + 1) + ((v19 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v19 & 0x1FF));
      *&v19 = v19 + 1;
      *(&v19 + 1) = v2 - 1;
      if (v19 >= 0x400)
      {
        operator delete(**(&v18[0] + 1));
        *(&v18[0] + 1) += 8;
        *&v19 = v19 - 512;
      }

      if (*(*(a1 + 30) + 8 * v3) == -1)
      {
        break;
      }

LABEL_26:
      v2 = *(&v19 + 1);
      if (!*(&v19 + 1))
      {
        return std::deque<std::pair<unsigned int,unsigned int>>::~deque[abi:nn200100](v18);
      }
    }

    v4 = 0;
    while (1)
    {
      v5 = geom::point_tree<double,(unsigned char)3>::neighbor(a1, v3, v4);
      if (v5 != -1)
      {
        v6 = v5;
        if (*(*(a1 + 30) + 8 * v5) == -1)
        {
          break;
        }
      }

LABEL_25:
      if (++v4 == 6)
      {
        goto LABEL_26;
      }
    }

    if (v3)
    {
      v7 = *(*(a1 + 33) + 24 * v3);
      v8 = (63 - __clz(v7));
      if (v7)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      if (v5)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v9 = 0;
      if (v5)
      {
LABEL_13:
        v10 = *(*(a1 + 33) + 24 * v5);
        v11 = (63 - __clz(v10));
        if (v10)
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }

LABEL_18:
        if (v9 - v12 >= 2)
        {
          geom::point_tree<double,(unsigned char)3>::split(a1, v5);
          if (*(*(a1 + 30) + 8 * v6) != -1)
          {
            for (i = 0; i != 8; ++i)
            {
              v14 = *(*(a1 + 30) + 8 * v6);
              if (v14 == -1)
              {
                v15 = -1;
              }

              else
              {
                v15 = i + v14;
              }

              v17 = v15;
              std::deque<unsigned long long>::push_back(v18, &v17);
            }
          }
        }

        goto LABEL_25;
      }
    }

    v12 = 0;
    goto LABEL_18;
  }

  return std::deque<std::pair<unsigned int,unsigned int>>::~deque[abi:nn200100](v18);
}

void *geom::point_tree<double,(unsigned char)3>::traverse(void *result, int a2, uint64_t a3)
{
  v4 = result;
  if (a2 == 1)
  {
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    v14 = 0;
    std::deque<unsigned long long>::push_back(&v15, &v14);
    while (*(&v17 + 1))
    {
      v9 = *(*(*(&v15 + 1) + (((v17 + *(&v17 + 1) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v17 + *(&v17 + 1) - 1) & 0x1FF));
      --*(&v17 + 1);
      std::deque<std::pair<unsigned int,unsigned int>>::__maybe_remove_back_spare[abi:nn200100](&v15, 1);
      std::function<void ()(geom::point_tree<double,(unsigned char)3> const&,unsigned long long)>::operator()(a3, v4, v9);
      if (*(v4[30] + 8 * v9) != -1)
      {
        for (i = 7; i != -1; --i)
        {
          v11 = *(v4[30] + 8 * v9);
          if (v11 == -1)
          {
            v12 = -1;
          }

          else
          {
            v12 = i + v11;
          }

          v14 = v12;
          std::deque<unsigned long long>::push_back(&v15, &v14);
        }
      }
    }

    return std::deque<std::pair<unsigned int,unsigned int>>::~deque[abi:nn200100](&v15);
  }

  if (a2 == 2)
  {
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    v14 = 0;
    std::deque<unsigned long long>::push_back(&v15, &v14);
    while (*(&v17 + 1))
    {
      v5 = *(*(*(&v15 + 1) + ((v17 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v17 & 0x1FF));
      *&v17 = v17 + 1;
      --*(&v17 + 1);
      if (v17 >= 0x400)
      {
        operator delete(**(&v15 + 1));
        *(&v15 + 1) += 8;
        *&v17 = v17 - 512;
      }

      std::function<void ()(geom::point_tree<double,(unsigned char)3> const&,unsigned long long)>::operator()(a3, v4, v5);
      if (*(v4[30] + 8 * v5) != -1)
      {
        for (j = 0; j != 8; ++j)
        {
          v7 = *(v4[30] + 8 * v5);
          if (v7 == -1)
          {
            v8 = -1;
          }

          else
          {
            v8 = j + v7;
          }

          v14 = v8;
          std::deque<unsigned long long>::push_back(&v15, &v14);
        }
      }
    }

    return std::deque<std::pair<unsigned int,unsigned int>>::~deque[abi:nn200100](&v15);
  }

  if (result[28] != result[27])
  {
    v13 = 0;
    do
    {
      result = std::function<void ()(geom::point_tree<double,(unsigned char)3> const&,unsigned long long)>::operator()(a3, v4, v13++);
    }

    while (v13 < (v4[28] - v4[27]) >> 3);
  }

  return result;
}

uint64_t std::function<void ()(geom::point_tree<double,(unsigned char)3> const&,unsigned long long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v3 = *(a1 + 24);
  if (v3)
  {
    return (*(*v3 + 48))(v3, a2, &v7);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return geom::point_tree<double,(unsigned char)3>::find_closest_point(v5, v6);
}

uint64_t geom::point_tree<double,(unsigned char)3>::find_closest_point(void *a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  __p = 0;
  v8 = 0;
  v9 = 0;
  v6[0] = v2;
  v6[1] = v3;
  geom::point_tree<double,(unsigned char)3>::find_k_nearest(a1, v6, 1u, &__p);
  v4 = *__p;
  v8 = __p;
  operator delete(__p);
  return v4;
}

void geom::point_tree<double,(unsigned char)3>::find_k_nearest(void *a1, _OWORD *a2, unsigned int a3, void *a4)
{
  v77 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v7 = *a2;
    v62 = *a2;
    v63 = *(a2 + 1);
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v65.n128_u64[0] = 0;
    geom::point_tree<double,(unsigned char)3>::centroid(a1, 0, v69, v7);
    v8 = vsubq_f64(v69[0], v62);
    v9 = vsubq_f64(v69[1], v63);
    v65.n128_f64[1] = vmulq_f64(v9, v9).f64[0] + vaddvq_f64(vmulq_f64(v8, v8));
    std::vector<std::array<std::bitset<64ul>,2ul>>::push_back[abi:nn200100](&v71, &v65);
    std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<geom::point_tree<double,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<double,(unsigned char)2>::distance_query_item*>>(v71, v72, &v70, (v72 - v71) >> 4);
    v10 = v71;
    v11 = v72;
    if (v71 != v72)
    {
      v12 = *&v63.f64[0];
      v13 = INFINITY;
      do
      {
        v14 = *v10;
        v15 = (v11 - v10) >> 4;
        if (v15 >= 2)
        {
          v16 = 0;
          v65 = *v10;
          v17 = v10;
          do
          {
            v18 = v17;
            v17 += 2 * v16 + 2;
            v19 = 2 * v16;
            v16 = (2 * v16) | 1;
            v20 = v19 + 2;
            if (v20 < v15 && *(v17 + 1) > *(v17 + 3))
            {
              v17 += 2;
              v16 = v20;
            }

            *v18 = *v17;
          }

          while (v16 <= ((v15 - 2) >> 1));
          v21 = (v11 - 2);
          if (v17 == v21)
          {
            v12 = v65;
            *v17 = v65;
          }

          else
          {
            *v17 = *v21;
            *v21 = v65;
            std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<geom::point_tree<double,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<double,(unsigned char)2>::distance_query_item*>>(v10, (v17 + 2), &v70, ((v17 + 2) - v10) >> 4);
          }

          v11 = v72;
        }

        v72 = v11 - 2;
        if (*(a1[30] + 8 * v14) == -1)
        {
          geom::point_tree<double,(unsigned char)3>::bounds(a1, v14, &v65, v12);
          v29 = vsubq_f64(vmaxnmq_f64(vminnmq_f64(v62, v67), v65), v62);
          v30 = vsubq_f64(vmaxnmq_f64(*&vminnmq_f64(*&v63.f64[0], v68), v66), v63);
          v12 = vmulq_f64(v29, v29);
          v12.n128_f64[0] = vmulq_f64(v30, v30).f64[0] + vaddvq_f64(v12);
          if (v12.n128_f64[0] <= v13 * v13)
          {
            v31 = (a1[36] + 16 * v14);
            v32 = *v31;
            v33 = v31[1];
            if (v32 != v33)
            {
              v34 = a1[21];
              v35 = (v34 + 8 * v33);
              v36 = (v34 + 8 * v32);
              do
              {
                v37 = *v36;
                v38 = (a1[18] + 32 * *v36);
                v39 = vsubq_f64(*v38, v62);
                v40 = vsubq_f64(v38[1], v63);
                v12 = vmulq_f64(v40, v40);
                v41 = v12.n128_f64[0] + vaddvq_f64(vmulq_f64(v39, v39));
                v42 = v74;
                v43 = v75;
                v44 = v75 - v74;
                if (v44 == a3)
                {
                  v12.n128_u64[0] = *&v74->f64[1];
                  if (v41 < v12.n128_f64[0])
                  {
                    if (a3 != 1)
                    {
                      v45 = 0;
                      v65 = *v74;
                      v46 = v74;
                      do
                      {
                        v47 = v46;
                        v46 += v45 + 1;
                        v48 = 2 * v45;
                        v45 = (2 * v45) | 1;
                        v49 = v48 + 2;
                        if (v49 < a3 && v46->n128_f64[1] < v46[1].n128_f64[1])
                        {
                          ++v46;
                          v45 = v49;
                        }

                        *v47 = *v46;
                      }

                      while (v45 <= ((a3 - 2) >> 1));
                      v50 = &v43[-1];
                      if (v46 == v50)
                      {
                        v12 = v65;
                        *v46 = v65;
                      }

                      else
                      {
                        *v46 = *v50;
                        *v50 = v65;
                        std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::less<geom::point_tree<double,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<double,(unsigned char)2>::distance_query_item*>>(v42, &v46[1], &v70, (&v46[1] - v42) >> 4);
                      }

                      v42 = v74;
                      v43 = v75;
                    }

                    v75 = v43 - 1;
                    v44 = &v43[-1] - v42;
                  }
                }

                if (v44 < a3)
                {
                  v65.n128_f64[0] = v37;
                  v65.n128_f64[1] = v41;
                  std::vector<std::array<std::bitset<64ul>,2ul>>::push_back[abi:nn200100](&v74, &v65);
                  std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::less<geom::point_tree<double,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<double,(unsigned char)2>::distance_query_item*>>(v74, v75, &v70, v75 - v74);
                }

                ++v36;
              }

              while (v36 != v35);
            }

            if (a3 == v75 - v74)
            {
              v13 = v74->f64[1];
            }
          }
        }

        else
        {
          for (i = 0; i != 8; ++i)
          {
            v23 = *(a1[30] + 8 * v14);
            if (v23 == -1)
            {
              v24 = -1;
            }

            else
            {
              v24 = i + v23;
            }

            if (*(a1[36] + 16 * v24 + 8) != *(a1[36] + 16 * v24))
            {
              geom::point_tree<double,(unsigned char)3>::bounds(a1, v24, &v65, v12);
              v25 = vsubq_f64(vmaxnmq_f64(vminnmq_f64(v62, v67), v65), v62);
              v26 = vsubq_f64(vmaxnmq_f64(*&vminnmq_f64(*&v63.f64[0], v68), v66), v63);
              v12 = vmulq_f64(v26, v26);
              v12.n128_f64[0] = v12.n128_f64[0] + vaddvq_f64(vmulq_f64(v25, v25));
              if (v12.n128_f64[0] <= v13 * v13)
              {
                v65.n128_u64[0] = v24;
                geom::point_tree<double,(unsigned char)3>::centroid(a1, v24, v64, v12);
                v27 = vsubq_f64(v64[0], v62);
                v28 = vsubq_f64(v64[1], v63);
                v65.n128_f64[1] = vmulq_f64(v28, v28).f64[0] + vaddvq_f64(vmulq_f64(v27, v27));
                std::vector<std::array<std::bitset<64ul>,2ul>>::push_back[abi:nn200100](&v71, &v65);
                std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<geom::point_tree<double,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<double,(unsigned char)2>::distance_query_item*>>(v71, v72, &v70, (v72 - v71) >> 4);
              }
            }
          }
        }

        v10 = v71;
        v11 = v72;
      }

      while (v71 != v72);
    }

    std::vector<double>::resize(a4, v75 - v74);
    v51 = a4[1] - *a4;
    if (v51)
    {
      v52 = v51 >> 3;
      v53 = v75;
      do
      {
        v54 = v74;
        --v52;
        *(*a4 + 8 * v52) = v74->f64[0];
        v55 = v53 - v54;
        if (v55 >= 2)
        {
          v56 = 0;
          v65 = *v54;
          v57 = v54;
          do
          {
            v58 = v57;
            v57 += v56 + 1;
            v59 = 2 * v56;
            v56 = (2 * v56) | 1;
            v60 = v59 + 2;
            if (v60 < v55 && v57->f64[1] < v57[1].f64[1])
            {
              ++v57;
              v56 = v60;
            }

            *v58 = *v57;
          }

          while (v56 <= ((v55 - 2) >> 1));
          v61 = v53 - 1;
          if (v57 == v61)
          {
            *v57 = v65;
          }

          else
          {
            *v57 = *v61;
            *v61 = v65;
            std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::less<geom::point_tree<double,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<double,(unsigned char)2>::distance_query_item*>>(v54, &v57[1], &v70, &v57[1] - v54);
          }

          v53 = v75;
        }

        v75 = --v53;
      }

      while (v52);
    }

    if (v71)
    {
      v72 = v71;
      operator delete(v71);
    }

    if (v74)
    {
      v75 = v74;
      operator delete(v74);
    }
  }

  else
  {
    a4[1] = *a4;
  }
}

void geom::point_tree<double,(unsigned char)3>::precompute_cell_data(void *a1)
{
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE7reserveEm(a1 + 39, (a1[28] - a1[27]) >> 3);
  if (a1[28] - a1[27] >= 9uLL)
  {
    v3 = 1;
    do
    {
      geom::point_tree<double,(unsigned char)3>::centroid(a1, v3, v4, v2);
      v5[0] = v4[0];
      v5[1] = v4[1];
      _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_((a1 + 39), v5);
      ++v3;
    }

    while (v3 < (a1[28] - a1[27]) >> 3);
  }
}

void *geom::point_tree<double,(unsigned char)3>::partition(void *result, uint64_t a2, int a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  v10 = result;
  if (a3 == 3)
  {
    v11 = *(result[30] + 8 * a2);
    if (v11 == -1)
    {
      v12 = -1;
    }

    else
    {
      v12 = v11 + a4;
    }

    v13 = (result[36] + 16 * v12);
    *v13 = a6;
    v13[1] = a7;
  }

  else
  {
    v14 = *a5;
    v15 = a5[1];
    v16 = result[21];
    v17 = (v16 + 8 * a6);
    if (8 * a6 != 8 * a7)
    {
      v18 = (v16 + 8 * a6);
      v17 = (8 * a7 + v16);
      v19 = result[18];
      v34[0] = *a5;
      v34[1] = v15;
      v20 = *(v34 + (a3 & 3));
      while (2)
      {
        while (1)
        {
          v21 = *v18;
          v22 = (v19 + 32 * *v18);
          v23 = v22[1];
          v33[0] = *v22;
          v33[1] = v23;
          if (*(v33 + (a3 & 3)) >= v20)
          {
            break;
          }

          if (++v18 == v17)
          {
            goto LABEL_16;
          }
        }

        do
        {
          if (--v17 == v18)
          {
            v17 = v18;
            goto LABEL_16;
          }

          v24 = *v17;
          v25 = (v19 + 32 * *v17);
          v26 = v25[1];
          v32[0] = *v25;
          v32[1] = v26;
        }

        while (*(v32 + (a3 & 3)) >= v20);
        *v18++ = v24;
        *v17 = v21;
        if (v17 != v18)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
    v27 = (v17 - v16) >> 3;
    v28 = 1 << a3;
    v29 = a3 + 1;
    v35 = v14;
    v36 = v15;
    v30 = v15;
    v31 = v14;
    geom::point_tree<double,(unsigned char)3>::partition(v10, a2, (a3 + 1), a4 & ~(1 << a3), &v35, a6, v27);
    v35 = v31;
    v36 = v30;
    return geom::point_tree<double,(unsigned char)3>::partition(v10, a2, v29, v28 | a4, &v35, v27, a7);
  }

  return result;
}

void std::deque<unsigned long long>::push_back(unint64_t *result, void *a2)
{
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    std::deque<unsigned long long>::__add_back_capacity(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  result[5] = v7 + 1;
}

void std::deque<unsigned long long>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int *>>(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<unsigned int *>::emplace_back<unsigned int *&>(a1, &v9);
}

uint64_t std::__equal_aligned[abi:nn200100]<std::__bitset<1ul,64ul>,true,true>(void *a1, unsigned int a2, uint64_t a3, unsigned int a4, void *a5)
{
  v5 = a4 - a2 + 8 * (a3 - a1);
  if (v5 >= 1)
  {
    if (a2)
    {
      if (v5 >= (64 - a2))
      {
        v6 = 64 - a2;
      }

      else
      {
        v6 = a4 - a2 + 8 * (a3 - a1);
      }

      if (((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v6)) & (-1 << a2) & (*a1 ^ *a5)) != 0)
      {
        return 0;
      }

      v5 -= v6;
      ++a5;
      ++a1;
    }

    if (v5 >= 64)
    {
      while (*a5 == *a1)
      {
        v7 = v5 - 64;
        ++a1;
        ++a5;
        v8 = v5 <= 127;
        v5 -= 64;
        if (v8)
        {
          goto LABEL_14;
        }
      }

      return 0;
    }

    v7 = v5;
LABEL_14:
    if (v7 >= 1 && (*a1 ^ *a5) << -v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t std::__function::__func<geom::point_tree<float,(unsigned char)2>::balance(void)::{lambda(geom::point_tree<float,(unsigned char)2> const&,unsigned long long)#1},std::allocator<geom::point_tree<float,(unsigned char)2>::balance(void)::{lambda(geom::point_tree<float,(unsigned char)2> const&,unsigned long long)#1}>,void ()(geom::point_tree<float,(unsigned char)2> const&,unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286292CB8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<geom::point_tree<float,(unsigned char)2>::balance(void)::{lambda(geom::point_tree<float,(unsigned char)2> const&,unsigned long long)#1},std::allocator<geom::point_tree<float,(unsigned char)2>::balance(void)::{lambda(geom::point_tree<float,(unsigned char)2> const&,unsigned long long)#1}>,void ()(geom::point_tree<float,(unsigned char)2> const&,unsigned long long)>::operator()(void *result, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (*(*(a2 + 136) + 8 * v3) == -1)
  {
    std::deque<unsigned long long>::push_back(result[1], &v3);
  }
}

uint64_t std::__function::__func<geom::point_tree<float,(unsigned char)2>::balance(void)::{lambda(geom::point_tree<float,(unsigned char)2> const&,unsigned long long)#1},std::allocator<geom::point_tree<float,(unsigned char)2>::balance(void)::{lambda(geom::point_tree<float,(unsigned char)2> const&,unsigned long long)#1}>,void ()(geom::point_tree<float,(unsigned char)2> const&,unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::vector<geom::point_tree<float,(unsigned char)2>::distance_query_item,std::allocator<geom::point_tree<float,(unsigned char)2>::distance_query_item>>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geom::point_tree<float,(unsigned char)2>::distance_query_item>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<geom::point_tree<float,(unsigned char)2>::distance_query_item>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<geom::point_tree<float,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<float,(unsigned char)2>::distance_query_item*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = result + 16 * v4;
    v6 = *(a2 - 8);
    if (*(v5 + 8) > v6)
    {
      v9 = *(a2 - 16);
      v7 = a2 - 16;
      v8 = v9;
      v10 = *(v7 + 12);
      do
      {
        v11 = v7;
        v7 = v5;
        *v11 = *v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = result + 16 * v4;
      }

      while (*(v5 + 8) > v6);
      *v7 = v8;
      *(v7 + 8) = v6;
      *(v7 + 12) = v10;
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::less<geom::point_tree<float,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<float,(unsigned char)2>::distance_query_item*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = result + 16 * v4;
    v6 = *(a2 - 8);
    if (*(v5 + 8) < v6)
    {
      v9 = *(a2 - 16);
      v7 = a2 - 16;
      v8 = v9;
      v10 = *(v7 + 12);
      do
      {
        v11 = v7;
        v7 = v5;
        *v11 = *v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = result + 16 * v4;
      }

      while (*(v5 + 8) < v6);
      *v7 = v8;
      *(v7 + 8) = v6;
      *(v7 + 12) = v10;
    }
  }

  return result;
}

void std::vector<unsigned long long>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_2500C1680)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_2500C1680)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

uint64_t std::bitset<64ul>::operator<<=[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x40)
  {
    v4 = 64;
  }

  else
  {
    v4 = a2;
  }

  if (((64 - v4) & 0x3F) == 0)
  {
    v11 = a1;
    v12 = 0;
    v9 = a1 + (((64 - v4) >> 3) & 8);
    v10 = 0;
    v7 = a1 + 8;
    v8 = 0;
    std::__copy_backward_aligned[abi:nn200100]<std::__bitset<1ul,64ul>,false>(&v11, &v9, &v7, v6);
    if (!a2)
    {
      return a1;
    }

    goto LABEL_6;
  }

  v11 = a1;
  v12 = 0;
  v9 = a1 + (((64 - v4) >> 3) & 8);
  v10 = (64 - v4) & 0x3F;
  v7 = a1 + 8;
  v8 = 0;
  std::__copy_backward_unaligned[abi:nn200100]<std::__bitset<1ul,64ul>,false>(&v11, &v9, &v7, v6);
  if (a2)
  {
LABEL_6:
    v11 = a1;
    v12 = 0;
    std::__fill_n_BOOL[abi:nn200100]<false,std::vector<BOOL>>(&v11, v4);
  }

  return a1;
}

unsigned int *std::__copy_backward_aligned[abi:nn200100]<std::__bitset<1ul,64ul>,false>@<X0>(unsigned int *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 8);
  v7 = result[2];
  v8 = v6 + 8 * (*a2 - *result) - v7;
  v9 = *a3;
  if (v8 >= 1)
  {
    if (v6)
    {
      if (v8 >= v6)
      {
        v11 = *(a2 + 8);
      }

      else
      {
        v11 = v6 + 8 * (*a2 - *result) - v7;
      }

      v8 -= v11;
      v12 = (-1 << (v6 - v11)) & (0xFFFFFFFFFFFFFFFFLL >> -v6);
      *v9 = *v9 & ~v12 | **a2 & v12;
      *(a3 + 8) = (*(a3 + 8) - v11) & 0x3F;
    }

    if (v8 >= 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = v8 + 63;
    }

    v14 = v13 >> 6;
    *a3 = &v9[-(v13 >> 6)];
    v15 = (*a2 - 8 * (v13 >> 6));
    *a2 = v15;
    if ((v8 + 63) >= 0x7F)
    {
      result = memmove(*a3, v15, 8 * v14);
    }

    if (v8 - (v14 << 6) <= 0)
    {
      v9 = *a3;
    }

    else
    {
      v16 = *(*a2 - 8);
      *a2 -= 8;
      v9 = (*a3 - 8);
      v17 = *v9;
      *a3 = v9;
      *v9 = v17 & ~(-1 << ((v14 << 6) - v8)) | v16 & (-1 << ((v14 << 6) - v8));
      *(a3 + 8) = -v8 & 0x3F;
    }
  }

  *a4 = v9;
  *(a4 + 8) = *(a3 + 8);
  return result;
}

unint64_t std::__copy_backward_unaligned[abi:nn200100]<std::__bitset<1ul,64ul>,false>@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 8);
  v5 = *(result + 8);
  v6 = v4 + 8 * (*a2 - *result) - v5;
  if (v6 <= 0)
  {
    v16 = *(a3 + 8);
  }

  else
  {
    if (v4)
    {
      if (v6 >= v4)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = v4 + 8 * (*a2 - *result) - v5;
      }

      v6 -= v7;
      v8 = (-1 << (v4 - v7)) & (0xFFFFFFFFFFFFFFFFLL >> -v4) & **a2;
      v9 = *(a3 + 8);
      if (v7 >= v9)
      {
        v10 = *(a3 + 8);
      }

      else
      {
        v10 = v7;
      }

      if (v9)
      {
        v11 = v8 >> (v4 - v9);
        v12 = v9 >= v4;
        v14 = v9 - v4;
        v13 = v14 != 0 && v12;
        v15 = v8 << v14;
        if (!v13)
        {
          v15 = v11;
        }

        **a3 = **a3 & ~((-1 << (v9 - v10)) & (0xFFFFFFFFFFFFFFFFLL >> -v9)) | v15;
        v16 = (v9 - v10) & 0x3F;
        *(a3 + 8) = v16;
        v7 -= v10;
      }

      else
      {
        v16 = 0;
      }

      if (v7 >= 1)
      {
        v18 = (*a3 - 8);
        v17 = *v18;
        *a3 = v18;
        *(a3 + 8) = -v7 & 0x3F;
        v19 = v17 & ~(-1 << -v7);
        v20 = *(a2 + 8) - v7 - v10;
        *(a2 + 8) = v20;
        v16 = *(a3 + 8);
        *v18 = (v8 << (v16 - v20)) | v19;
      }
    }

    else
    {
      v16 = *(a3 + 8);
    }

    v21 = 64 - v16;
    v22 = 0xFFFFFFFFFFFFFFFFLL >> -v16;
    if (v6 < 64)
    {
      v26 = v6;
    }

    else
    {
      do
      {
        v23 = *(*a2 - 8);
        *a2 -= 8;
        v24 = *a3;
        result = v23 >> v21;
        *v24 = **a3 & ~v22 | (v23 >> v21);
        v25 = *--v24;
        *a3 = v24;
        *v24 = v25 & v22 | (v23 << v16);
        v26 = v6 - 64;
        v13 = v6 > 0x7F;
        v6 -= 64;
      }

      while (v13);
    }

    if (v26 >= 1)
    {
      v27 = *(*a2 - 8);
      *a2 -= 8;
      v28 = v27 & (-1 << -v26);
      if (v26 >= v16)
      {
        v29 = v16;
      }

      else
      {
        v29 = v26;
      }

      v30 = (-1 << (v16 - v29)) & v22;
      v31 = *a3;
      **a3 = **a3 & ~v30 | (v28 >> v21);
      v16 = (v16 - v29) & 0x3F;
      *(a3 + 8) = v16;
      if (v26 - v29 >= 1)
      {
        v33 = *(v31 - 1);
        v32 = v31 - 1;
        *a3 = v32;
        v16 = (v29 - v26) & 0x3F;
        *(a3 + 8) = v16;
        *v32 = v33 & ~(-1 << (v29 - v26)) | (v28 << (v26 + ((v29 - v26) & 0x3F)));
      }
    }
  }

  *a4 = *a3;
  *(a4 + 8) = v16;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::array<std::bitset<64ul>,3ul>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__function::__func<geom::point_tree<float,(unsigned char)3>::balance(void)::{lambda(geom::point_tree<float,(unsigned char)3> const&,unsigned long long)#1},std::allocator<geom::point_tree<float,(unsigned char)3>::balance(void)::{lambda(geom::point_tree<float,(unsigned char)3> const&,unsigned long long)#1}>,void ()(geom::point_tree<float,(unsigned char)3> const&,unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286292D38;
  a2[1] = v2;
  return result;
}

void std::__function::__func<geom::point_tree<float,(unsigned char)3>::balance(void)::{lambda(geom::point_tree<float,(unsigned char)3> const&,unsigned long long)#1},std::allocator<geom::point_tree<float,(unsigned char)3>::balance(void)::{lambda(geom::point_tree<float,(unsigned char)3> const&,unsigned long long)#1}>,void ()(geom::point_tree<float,(unsigned char)3> const&,unsigned long long)>::operator()(void *result, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (*(*(a2 + 176) + 8 * v3) == -1)
  {
    std::deque<unsigned long long>::push_back(result[1], &v3);
  }
}

uint64_t std::__function::__func<geom::point_tree<float,(unsigned char)3>::balance(void)::{lambda(geom::point_tree<float,(unsigned char)3> const&,unsigned long long)#1},std::allocator<geom::point_tree<float,(unsigned char)3>::balance(void)::{lambda(geom::point_tree<float,(unsigned char)3> const&,unsigned long long)#1}>,void ()(geom::point_tree<float,(unsigned char)3> const&,unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::vector<std::array<std::bitset<64ul>,3ul>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::array<std::bitset<64ul>,3ul>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

uint64_t std::__function::__func<geom::point_tree<double,(unsigned char)2>::balance(void)::{lambda(geom::point_tree<double,(unsigned char)2> const&,unsigned long long)#1},std::allocator<geom::point_tree<double,(unsigned char)2>::balance(void)::{lambda(geom::point_tree<double,(unsigned char)2> const&,unsigned long long)#1}>,void ()(geom::point_tree<double,(unsigned char)2> const&,unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286292DB8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<geom::point_tree<double,(unsigned char)2>::balance(void)::{lambda(geom::point_tree<double,(unsigned char)2> const&,unsigned long long)#1},std::allocator<geom::point_tree<double,(unsigned char)2>::balance(void)::{lambda(geom::point_tree<double,(unsigned char)2> const&,unsigned long long)#1}>,void ()(geom::point_tree<double,(unsigned char)2> const&,unsigned long long)>::operator()(void *result, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (*(*(a2 + 176) + 8 * v3) == -1)
  {
    std::deque<unsigned long long>::push_back(result[1], &v3);
  }
}

uint64_t std::__function::__func<geom::point_tree<double,(unsigned char)2>::balance(void)::{lambda(geom::point_tree<double,(unsigned char)2> const&,unsigned long long)#1},std::allocator<geom::point_tree<double,(unsigned char)2>::balance(void)::{lambda(geom::point_tree<double,(unsigned char)2> const&,unsigned long long)#1}>,void ()(geom::point_tree<double,(unsigned char)2> const&,unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<geom::point_tree<double,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<double,(unsigned char)2>::distance_query_item*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = result + 16 * v4;
    v6 = *(a2 - 8);
    if (*(v5 + 8) > v6)
    {
      v9 = *(a2 - 16);
      v7 = a2 - 16;
      v8 = v9;
      do
      {
        v10 = v7;
        v7 = v5;
        *v10 = *v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = result + 16 * v4;
      }

      while (*(v5 + 8) > v6);
      *v7 = v8;
      *(v7 + 8) = v6;
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::less<geom::point_tree<double,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<double,(unsigned char)2>::distance_query_item*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = result + 16 * v4;
    v6 = *(a2 - 8);
    if (*(v5 + 8) < v6)
    {
      v9 = *(a2 - 16);
      v7 = a2 - 16;
      v8 = v9;
      do
      {
        v10 = v7;
        v7 = v5;
        *v10 = *v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = result + 16 * v4;
      }

      while (*(v5 + 8) < v6);
      *v7 = v8;
      *(v7 + 8) = v6;
    }
  }

  return result;
}

uint64_t std::__function::__func<geom::point_tree<double,(unsigned char)3>::balance(void)::{lambda(geom::point_tree<double,(unsigned char)3> const&,unsigned long long)#1},std::allocator<geom::point_tree<double,(unsigned char)3>::balance(void)::{lambda(geom::point_tree<double,(unsigned char)3> const&,unsigned long long)#1}>,void ()(geom::point_tree<double,(unsigned char)3> const&,unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286292E38;
  a2[1] = v2;
  return result;
}

void std::__function::__func<geom::point_tree<double,(unsigned char)3>::balance(void)::{lambda(geom::point_tree<double,(unsigned char)3> const&,unsigned long long)#1},std::allocator<geom::point_tree<double,(unsigned char)3>::balance(void)::{lambda(geom::point_tree<double,(unsigned char)3> const&,unsigned long long)#1}>,void ()(geom::point_tree<double,(unsigned char)3> const&,unsigned long long)>::operator()(void *result, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (*(*(a2 + 240) + 8 * v3) == -1)
  {
    std::deque<unsigned long long>::push_back(result[1], &v3);
  }
}

uint64_t std::__function::__func<geom::point_tree<double,(unsigned char)3>::balance(void)::{lambda(geom::point_tree<double,(unsigned char)3> const&,unsigned long long)#1},std::allocator<geom::point_tree<double,(unsigned char)3>::balance(void)::{lambda(geom::point_tree<double,(unsigned char)3> const&,unsigned long long)#1}>,void ()(geom::point_tree<double,(unsigned char)3> const&,unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double geom::catmull_clark_vertex_evaluator<float>::subdivided(uint64_t a1, uint64_t a2, double a3, double a4, float32x4_t a5)
{
  v7 = *(a1 + 4);
  if (*a1 == 1)
  {
    v8.i64[0] = 0x3E0000003E000000;
    v8.i64[1] = 0x3E0000003E000000;
    v9 = vmulq_f32(vaddq_f32(*(a2 + 16 * *(a1 + 8)), *(a2 + 16 * *(a1 + 12))), v8);
    __asm { FMOV            V2.4S, #0.75 }

    *&result = vmlaq_f32(v9, _Q2, *(a2 + 16 * v7)).u64[0];
  }

  else
  {
    v17.i32[2] = 0;
    v17.i64[0] = 0;
    v16.i32[2] = 0;
    v16.i64[0] = 0;
    geom::catmull_clark_vertex_evaluator<float>::compute_edge_and_face_sums(a1, a2, &v16, &v17, 0, a4, a5);
    *&result = vmlaq_n_f32(vmulq_n_f32(vaddq_f32(v16, v17), 1.0 / (*(a1 + 24) * *(a1 + 24))), *(a2 + 16 * v7), (*(a1 + 24) + -2.0) / *(a1 + 24)).u64[0];
  }

  return result;
}

double geom::catmull_clark_vertex_evaluator<float>::limit(uint64_t a1, uint64_t a2, double a3, double a4, float32x4_t a5)
{
  v7 = *(a1 + 4);
  if (*a1 == 1)
  {
    *&result = vmlaq_f32(vmulq_f32(vaddq_f32(*(a2 + 16 * *(a1 + 8)), *(a2 + 16 * *(a1 + 12))), vdupq_n_s32(0x3E2AAAABu)), vdupq_n_s32(0x3F2AAAABu), *(a2 + 16 * v7)).u64[0];
  }

  else
  {
    v13.i32[2] = 0;
    v13.i64[0] = 0;
    v12.i32[2] = 0;
    v12.i64[0] = 0;
    v9 = geom::catmull_clark_vertex_evaluator<float>::compute_edge_and_face_sums(a1, a2, &v12, &v13, 0, a4, a5);
    v9.f32[0] = *(a1 + 24);
    v10.i64[0] = 0x4000000040000000;
    v10.i64[1] = 0x4000000040000000;
    v11 = vaddq_f32(v13, vmlaq_n_f32(vmlaq_f32(vmlaq_n_f32(v12, *(a2 + 16 * v7), v9.f32[0]), v10, v13), vmlaq_n_f32(vmulq_n_f32(vaddq_f32(v12, v13), 1.0 / (v9.f32[0] * v9.f32[0])), *(a2 + 16 * v7), (v9.f32[0] + -2.0) / v9.f32[0]), v9.f32[0] * v9.f32[0]));
    v9.f32[0] = (v9.f32[0] + 5.0) * v9.f32[0];
    *&result = vdivq_f32(v11, vdupq_lane_s32(*v9.f32, 0)).u64[0];
  }

  return result;
}

double geom::catmull_clark_vertex_evaluator<float>::normal(_BYTE *a1, uint64_t a2)
{
  v22 = 0uLL;
  v21 = 0uLL;
  if (a1[1] != 1)
  {
    *v4.i64 = geom::catmull_clark_vertex_evaluator<float>::compute_average_face_normal(a1, a2);
    v20 = v4;
    if (*a1 == 1)
    {
      geom::catmull_clark_vertex_evaluator<float>::compute_xor_boundary_tangents(a1, a2, &v22, &v21);
    }

    else
    {
      geom::catmull_clark_vertex_evaluator<float>::compute_xor_tangents(a1, a2, &v22, &v21);
    }

    v9 = vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL);
    v10 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), vnegq_f32(v22)), v21, v9);
    v11 = vmulq_f32(v10, v10);
    if (fabsf(v11.f32[1] + (v11.f32[2] + v11.f32[0])) <= 1.0e-10)
    {
      v8 = v20;
    }

    else
    {
      v12 = vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL);
      v13 = vmulq_f32(v20, v12);
      v13.f32[0] = v13.f32[2] + vaddv_f32(*v13.f32);
      v9.i64[0] = 0;
      v8 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v9, v13), 0), vnegq_f32(v12), v12);
    }

    v15 = vmulq_f32(v8, v8);
    goto LABEL_15;
  }

  if (*a1 == 1)
  {
    geom::catmull_clark_vertex_evaluator<float>::compute_bspline_boundary_tangents(a1, a2, &v22, &v21);
  }

  else
  {
    geom::catmull_clark_vertex_evaluator<float>::compute_bspline_tangents(a1, a2, &v22, &v21);
  }

  v5 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), vnegq_f32(v22)), v21, vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL));
  v6 = vmulq_f32(v5, v5);
  v7 = v6.f32[1] + (v6.f32[2] + v6.f32[0]);
  if (fabsf(v7) <= 1.0e-10)
  {
    *v14.i64 = geom::catmull_clark_vertex_evaluator<float>::compute_average_face_normal(a1, a2);
    v8 = v14;
    v15 = vmulq_f32(v14, v14);
LABEL_15:
    v7 = v15.f32[2] + vaddv_f32(*v15.f32);
    goto LABEL_16;
  }

  v8 = vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL);
LABEL_16:
  v16 = v7;
  v17 = vrsqrte_f32(LODWORD(v7));
  v18 = vmul_f32(v17, vrsqrts_f32(LODWORD(v16), vmul_f32(v17, v17)));
  *&result = vmulq_n_f32(v8, vmul_f32(v18, vrsqrts_f32(LODWORD(v16), vmul_f32(v18, v18))).f32[0]).u64[0];
  return result;
}

float64_t geom_apply_catmull_clark_subdivision_stencil_3d@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, unsigned int *a5@<X4>, _OWORD *a6@<X8>)
{
  geom::catmull_clark_vertex_evaluator<float>::catmull_clark_vertex_evaluator(v11, a1, a3, a5[a4 - 1], a5, a4);
  geom::catmull_clark_vertex_evaluator<double>::subdivided(v11, a2, v10);
  result = v10[0].f64[0];
  v9 = v10[1];
  *a6 = v10[0];
  a6[1] = v9;
  return result;
}

void geom::catmull_clark_vertex_evaluator<double>::subdivided(uint64_t a1@<X0>, uint64_t a2@<X1>, float64x2_t *a3@<X8>)
{
  v6 = *(a1 + 4);
  if (*a1 == 1)
  {
    v7 = (a2 + 32 * v6);
    v8 = *v7;
    v9 = v7[1];
    v10 = (a2 + 32 * *(a1 + 8));
    v11 = *v10;
    v12 = v10[1];
    v13 = (a2 + 32 * *(a1 + 12));
    __asm { FMOV            V4.2D, #0.125 }

    v19 = vmulq_f64(vaddq_f64(v11, *v13), _Q4);
    v20 = vmulq_f64(vaddq_f64(v12, v13[1]), _Q4);
    __asm { FMOV            V4.2D, #0.75 }

    v22 = vmlaq_f64(v20, _Q4, v9);
    v23 = vmlaq_f64(v19, _Q4, v8);
  }

  else
  {
    v32.f64[0] = 0.0;
    v31 = 0u;
    v30.f64[0] = 0.0;
    v29 = 0u;
    v24 = geom::catmull_clark_vertex_evaluator<double>::compute_edge_and_face_sums(a1, a2, &v29, &v31, 0);
    LODWORD(v24.f64[0]) = *(a1 + 24);
    v24.f64[0] = *&v24.f64[0];
    v25 = (v24.f64[0] + -2.0) / v24.f64[0];
    v26 = 1.0 / (v24.f64[0] * v24.f64[0]);
    v27 = (a2 + 32 * v6);
    v28 = vmulq_n_f64(vaddq_f64(v29, v31), v26);
    v22 = vmlaq_n_f64(vmulq_n_f64(vaddq_f64(v30, v32), v26), v27[1], v25);
    v23 = vmlaq_n_f64(v28, *v27, v25);
  }

  *a3 = v23;
  a3[1] = v22;
}

float64_t geom_apply_catmull_clark_limit_stencil_3d@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, unsigned int *a5@<X4>, _OWORD *a6@<X8>)
{
  geom::catmull_clark_vertex_evaluator<float>::catmull_clark_vertex_evaluator(v11, a1, a3, a5[a4 - 1], a5, a4);
  geom::catmull_clark_vertex_evaluator<double>::limit(v11, a2, v10);
  result = v10[0].f64[0];
  v9 = v10[1];
  *a6 = v10[0];
  a6[1] = v9;
  return result;
}

void geom::catmull_clark_vertex_evaluator<double>::limit(uint64_t a1@<X0>, uint64_t a2@<X1>, float64x2_t *a3@<X8>)
{
  v6 = *(a1 + 4);
  if (*a1 == 1)
  {
    v7 = (a2 + 32 * v6);
    v8 = *v7;
    v9 = v7[1];
    v10 = (a2 + 32 * *(a1 + 8));
    v11 = *v10;
    v12 = v10[1];
    v13 = (a2 + 32 * *(a1 + 12));
    v14 = vaddq_f64(v12, v13[1]);
    v15 = vdupq_n_s64(0x3FC5555555555555uLL);
    v16 = vmulq_f64(vaddq_f64(v11, *v13), v15);
    v17 = vmulq_f64(v14, v15);
    v18 = vdupq_n_s64(0x3FE5555555555555uLL);
    v19 = vmlaq_f64(v17, v18, v9);
    v20 = vmlaq_f64(v16, v18, v8);
  }

  else
  {
    v41.f64[0] = 0.0;
    v40 = 0u;
    v39.f64[0] = 0.0;
    v38 = 0u;
    v21 = geom::catmull_clark_vertex_evaluator<double>::compute_edge_and_face_sums(a1, a2, &v38, &v40, 0);
    LODWORD(v21.f64[0]) = *(a1 + 24);
    v21.f64[0] = *&v21.f64[0];
    v22 = (v21.f64[0] + -2.0) / v21.f64[0];
    v23 = v21.f64[0] * v21.f64[0];
    v24 = 1.0 / (v21.f64[0] * v21.f64[0]);
    v25 = (a2 + 32 * v6);
    v26 = v25[1];
    *&v27 = (v21.f64[0] + 5.0) * v21.f64[0];
    v28 = vmlaq_n_f64(v39, v26, v21.f64[0]);
    v29 = vmlaq_n_f64(v38, *v25, v21.f64[0]);
    __asm { FMOV            V0.2D, #2.0 }

    v35 = vmlaq_n_f64(vmlaq_f64(v28, _Q0, v41), vmlaq_n_f64(vmulq_n_f64(vaddq_f64(v39, v41), v24), v26, v22), v23);
    v36 = vaddq_f64(v40, vmlaq_n_f64(vmlaq_f64(v29, _Q0, v40), vmlaq_n_f64(vmulq_n_f64(vaddq_f64(v38, v40), v24), *v25, v22), v23));
    v37 = vdupq_lane_s64(v27, 0);
    v19 = vdivq_f64(vaddq_f64(v41, v35), v37);
    v20 = vdivq_f64(v36, v37);
  }

  *a3 = v20;
  a3[1] = v19;
}

float64_t geom_apply_catmull_clark_normal_stencil_3d@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, unsigned int *a5@<X4>, _OWORD *a6@<X8>)
{
  geom::catmull_clark_vertex_evaluator<float>::catmull_clark_vertex_evaluator(v11, a1, a3, a5[a4 - 1], a5, a4);
  geom::catmull_clark_vertex_evaluator<double>::normal(v11, a2, v10);
  result = v10[0].f64[0];
  v9 = v10[1];
  *a6 = v10[0];
  a6[1] = v9;
  return result;
}

float64x2_t geom::catmull_clark_vertex_evaluator<double>::normal@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, float64x2_t *a3@<X8>)
{
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  if (a1[1] != 1)
  {
    geom::catmull_clark_vertex_evaluator<double>::compute_average_face_normal(a1, a2, v24);
    v22 = v24[1];
    v23 = v24[0];
    if (*a1 == 1)
    {
      geom::catmull_clark_vertex_evaluator<double>::compute_xor_boundary_tangents(a1, a2, &v28, &v26);
    }

    else
    {
      geom::catmull_clark_vertex_evaluator<double>::compute_xor_tangents(a1, a2, &v28, &v26);
    }

    v12.f64[0] = v29.f64[0];
    v13.f64[0] = v27.f64[0];
    v14 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v29), v26, 1), v27, v28, 1);
    v13.f64[1] = v26.f64[0];
    v12.f64[1] = v28.f64[0];
    v15 = vmlaq_f64(vmulq_f64(v13, vnegq_f64(v28)), v26, v12);
    v16 = vmulq_f64(v15, v15);
    if (fabs(v16.f64[1] + vmulq_f64(v14, v14).f64[0] + v16.f64[0]) > 1.0e-12)
    {
      v9.i64[1] = v15.i64[0];
      v17 = vextq_s8(v15, v15, 8uLL);
      v18 = vmulq_f64(v23, v9);
      v19 = vmulq_f64(v22, v17);
      v18.f64[0] = v19.f64[0] + vaddvq_f64(v18);
      v19.f64[0] = 0.0;
      v20 = vdupq_lane_s64(vcgtq_f64(v19, v18).i64[0], 0);
      v8 = vbslq_s8(v20, vnegq_f64(v9), v9);
      v11 = vbslq_s8(v20, vnegq_f64(v17), v17);
      v9.i64[0] = vextq_s8(v8, v8, 8uLL).u64[0];
      v10 = vmulq_f64(v8, v8);
      v10.f64[0] = vmulq_f64(v11, v11).f64[0] + vaddvq_f64(v10);
      goto LABEL_15;
    }

    v11 = v22;
    v8 = v23;
LABEL_14:
    v9.i64[0] = vextq_s8(v8, v8, 8uLL).u64[0];
    v10 = vmulq_f64(v11, v11);
    v10.f64[0] = v10.f64[0] + vaddvq_f64(vmulq_f64(v8, v8));
    goto LABEL_15;
  }

  if (*a1 == 1)
  {
    geom::catmull_clark_vertex_evaluator<double>::compute_bspline_boundary_tangents(a1, a2, &v28, &v26);
  }

  else
  {
    geom::catmull_clark_vertex_evaluator<double>::compute_bspline_tangents(a1, a2, &v28, &v26);
  }

  v6.f64[0] = v29.f64[0];
  v7.f64[0] = v27.f64[0];
  v8 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v29), v26, 1), v27, v28, 1);
  v7.f64[1] = v26.f64[0];
  v6.f64[1] = v28.f64[0];
  v9 = vmlaq_f64(vmulq_f64(v7, vnegq_f64(v28)), v26, v6);
  v10 = vmulq_f64(v9, v9);
  v10.f64[0] = v10.f64[1] + vmulq_f64(v8, v8).f64[0] + v10.f64[0];
  if (fabs(v10.f64[0]) <= 1.0e-12)
  {
    geom::catmull_clark_vertex_evaluator<double>::compute_average_face_normal(a1, a2, v25);
    v8 = v25[0];
    v11 = v25[1];
    goto LABEL_14;
  }

  v11 = vextq_s8(v9, v9, 8uLL);
LABEL_15:
  v10.f64[0] = 1.0 / sqrt(v10.f64[0]);
  v8.i64[1] = v9.i64[0];
  result = vmulq_n_f64(v8, v10.f64[0]);
  *a3 = result;
  a3[1] = vmulq_f64(v11, v10);
  return result;
}

uint64_t geom::catmull_clark_vertex_evaluator<float>::catmull_clark_vertex_evaluator(uint64_t result, int a2, int *a3, uint64_t a4, unsigned int *a5, uint64_t a6)
{
  *(result + 4) = a2;
  *(result + 16) = a5;
  *(result + 24) = a6;
  *(result + 32) = a3;
  *(result + 40) = a4;
  v6 = *a5;
  *(result + 2) = v6 == 4;
  if (v6)
  {
    v7 = 1;
    v8 = v6;
    v9 = a3;
    while (1)
    {
      v10 = *v9++;
      if (v10 == a2)
      {
        break;
      }

      ++v7;
      if (!--v8)
      {
        goto LABEL_5;
      }
    }

    v11 = a3[v7 % v6];
  }

  else
  {
LABEL_5:
    v11 = -1;
  }

  v12 = &a5[a6];
  if (a6 == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v12 - 2);
  }

  v14 = *(v12 - 1);
  v15 = (v14 - v13);
  if (v15 != 4)
  {
    *(result + 2) = 0;
  }

  if (v14 == v13)
  {
LABEL_16:
    v21 = -1;
  }

  else
  {
    v16 = &a3[v13];
    v17 = ~v13 + v14;
    v18 = v15;
    v19 = v16;
    while (1)
    {
      v20 = *v19++;
      if (v20 == a2)
      {
        break;
      }

      ++v17;
      if (!--v18)
      {
        goto LABEL_16;
      }
    }

    v21 = v16[v17 % v15];
  }

  *result = v11 != v21;
  if (v11 == v21)
  {
    *(result + 8) = -1;
    if (a6 == 4 && *a5 == 4 && a5[1] == 8 && a5[2] == 12)
    {
      a5 += 3;
      v22 = 16;
      goto LABEL_29;
    }

LABEL_30:
    v23 = 0;
    goto LABEL_31;
  }

  *(result + 8) = v11;
  *(result + 12) = v21;
  if (a6 != 2)
  {
    if (a6 == 1)
    {
      v22 = 4;
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (*a5 != 4)
  {
    goto LABEL_30;
  }

  ++a5;
  v22 = 8;
LABEL_29:
  v23 = *a5 == v22;
LABEL_31:
  *(result + 1) = v23;
  return result;
}

float32x4_t geom::catmull_clark_vertex_evaluator<float>::compute_edge_and_face_sums(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float32x4_t result, double a6, float32x4_t a7)
{
  result.i64[0] = 0;
  *a4 = 0u;
  *a3 = 0u;
  if (*(a1 + 24))
  {
    v7 = 0;
    do
    {
      v8 = *(a1 + 16);
      if (v7)
      {
        v9 = *(v8 + 4 * v7 - 4);
      }

      else
      {
        v9 = 0;
      }

      v10 = 0uLL;
      v11 = *(v8 + 4 * v7) - v9;
      if (v11)
      {
        v12 = *(a1 + 32) + 4 * v9;
        v13 = *a3;
        v14 = 1;
        v15 = v11;
        v16 = v12;
        do
        {
          v17 = *v16++;
          a7 = *(a2 + 16 * v17);
          if (v17 == *(a1 + 4))
          {
            v18 = v14;
            if (v15 == 1)
            {
              v18 = 0;
            }

            v13 = vaddq_f32(v13, *(a2 + 16 * *(v12 + 4 * v18)));
            *a3 = v13;
          }

          v10 = vaddq_f32(v10, a7);
          ++v14;
          --v15;
        }

        while (v15);
      }

      a7.f32[0] = v11;
      a7 = vdupq_lane_s32(*a7.f32, 0);
      result = vaddq_f32(vdivq_f32(v10, a7), *a4);
      *a4 = result;
      ++v7;
    }

    while (v7 < *(a1 + 24));
  }

  return result;
}

uint64_t geom::catmull_clark_vertex_evaluator<float>::compute_bspline_boundary_tangents(uint64_t result, uint64_t a2, _OWORD *a3, float32x4_t *a4)
{
  *a3 = 0u;
  *a4 = 0u;
  v4 = *(result + 16);
  v5 = *(result + 32);
  v6 = *v4;
  v7 = *(result + 4);
  if (v6)
  {
    v8 = 0;
    while (*(v5 + 4 * v8) != v7)
    {
      if (v6 == ++v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    LOBYTE(v8) = 0;
  }

  v9 = *(v5 + 4 * ((v8 + 1) & 3));
  v10 = *(v5 + 4 * ((v8 - 1) & 3));
  v11 = *(result + 24);
  if (v11 == 2)
  {
    v13 = *(v5 + 4 * (v8 & 3 ^ 2));
    v14 = v5 + 4 * v6;
    v15 = v4[1] - v6;
    if (v15)
    {
      v16 = 0;
      while (*(v14 + 4 * v16) != v7)
      {
        if (v15 == ++v16)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      LOBYTE(v16) = 0;
    }

    v17 = *(v14 + 4 * (v16 & 3 ^ 2));
    v18 = *(v14 + 4 * ((v16 - 1) & 3));
    *a3 = vsubq_f32(*(a2 + 16 * v9), *(a2 + 16 * v18));
    __asm
    {
      FMOV            V2.4S, #4.0
      FMOV            V0.4S, #6.0
    }

    v12 = vdivq_f32(vmlaq_f32(vsubq_f32(vsubq_f32(vaddq_f32(*(a2 + 16 * v13), *(a2 + 16 * v17)), *(a2 + 16 * v18)), *(a2 + 16 * v9)), _Q2, vsubq_f32(*(a2 + 16 * v10), *(a2 + 16 * v7))), _Q0);
  }

  else
  {
    if (v11 != 1)
    {
      return result;
    }

    *a3 = vsubq_f32(*(a2 + 16 * v9), *(a2 + 16 * v7));
    v12 = vsubq_f32(*(a2 + 16 * v10), *(a2 + 16 * v7));
  }

  *a4 = v12;
  return result;
}

float32x4_t geom::catmull_clark_vertex_evaluator<float>::compute_bspline_tangents(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4)
{
  v4 = 0;
  v28 = *MEMORY[0x277D85DE8];
  *a3 = 0u;
  *a4 = 0u;
  v5 = *(a1 + 32);
  v6 = *(a1 + 4);
  __asm { FMOV            V0.4S, #0.25 }

  v12 = v5;
  do
  {
    v13 = 0;
    v23[v4] = 0uLL;
    v14 = 0uLL;
    do
    {
      v15 = *(v12 + 4 * v13);
      if (v15 == v6)
      {
        if (v13 == 3)
        {
          v16 = 0;
        }

        else
        {
          v16 = v13 + 1;
        }

        v23[v4] = vaddq_f32(*(a2 + 16 * v6), *(a2 + 16 * *(v5 + 16 * v4 + 4 * v16)));
      }

      v14 = vaddq_f32(v14, *(a2 + 16 * v15));
      ++v13;
    }

    while (v13 != 4);
    *(&v24 + v4++) = vmulq_f32(v14, _Q0);
    v12 += 16;
  }

  while (v4 != 4);
  v17 = v24;
  v18 = v25;
  v19 = vaddq_f32(v24, vaddq_f32(v23[1], v25));
  __asm { FMOV            V17.4S, #4.0 }

  v21 = vaddq_f32(v27, vmlaq_f32(v26, _Q17, vmulq_f32(vaddq_f32(v26, vaddq_f32(v27, v23[3])), _Q0)));
  *a3 = vsubq_f32(vaddq_f32(v24, vmlaq_f32(v27, _Q17, vmulq_f32(vaddq_f32(vaddq_f32(v23[0], v24), v27), _Q0))), vaddq_f32(v26, vmlaq_f32(v25, _Q17, vmulq_f32(vaddq_f32(v25, vaddq_f32(v23[2], v26)), _Q0))));
  result = vsubq_f32(vaddq_f32(v18, vmlaq_f32(v17, _Q17, vmulq_f32(v19, _Q0))), v21);
  *a4 = result;
  return result;
}

double geom::catmull_clark_vertex_evaluator<float>::compute_average_face_normal(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 16 * v2);
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *v4;
  if (v6)
  {
    v7 = 0;
    v8 = 1;
    while (1)
    {
      v9 = *(v5 + 4 * v7++);
      if (v9 == v2)
      {
        break;
      }

      if (v6 == v7)
      {
        goto LABEL_8;
      }
    }

    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

LABEL_8:
  v10 = vsubq_f32(*(a2 + 16 * *(v5 + 4 * (v8 % v6))), v3);
  v11 = *(a1 + 24);
  v12 = 0uLL;
  if (v11 < 2)
  {
    v19 = v10;
  }

  else
  {
    v13 = 1;
    do
    {
      v14 = v6;
      v15 = v5 + 4 * v6;
      LODWORD(v6) = v4[v13];
      v16 = (v6 - v14);
      if (v16)
      {
        v17 = 0;
        while (*(v15 + 4 * v17) != v2)
        {
          if (v16 == ++v17)
          {
            goto LABEL_14;
          }
        }

        v18 = (v17 + 1);
      }

      else
      {
LABEL_14:
        v18 = 1;
      }

      v19 = vsubq_f32(*(a2 + 16 * *(v15 + 4 * (v18 - (v18 / v16) * v16))), v3);
      v20 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), vnegq_f32(v10)), v19, vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL));
      v12 = vaddq_f32(v12, vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL));
      ++v13;
      v10 = v19;
    }

    while (v13 != v11);
  }

  if (*a1)
  {
    v21 = v11 - 1;
    if (v11 == 1)
    {
      v22 = 0;
    }

    else
    {
      v22 = v4[(v11 - 2)];
    }

    v23 = v5 + 4 * v22;
    v24 = v4[v21] - v22;
    if (v24)
    {
      v25 = 0;
      while (*(v23 + 4 * v25) != v2)
      {
        if (v24 == ++v25)
        {
          goto LABEL_27;
        }
      }

      v26 = v25;
    }

    else
    {
LABEL_27:
      v26 = 0;
    }

    v27 = vsubq_f32(*(a2 + 16 * *(v23 + 4 * ((v24 + v26 - 1) % v24))), v3);
    v28 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL), vnegq_f32(v19)), v27, vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL));
    v12.i64[0] = vaddq_f32(v12, vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL)).u64[0];
  }

  return *v12.i64;
}

void geom::catmull_clark_vertex_evaluator<float>::compute_xor_boundary_tangents(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 12);
  *a3 = vsubq_f32(*(a2 + 16 * v7), *(a2 + 16 * v8));
  v9 = *(a1 + 24);
  if (v9 == 2)
  {
    v12 = *(a1 + 32);
    v13 = **(a1 + 16);
    v14 = *(a1 + 4);
    if (v13)
    {
      v15 = 0;
      while (*(v12 + 4 * v15) != v14)
      {
        if (v13 == ++v15)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      v15 = 0;
    }

    v11 = vsubq_f32(*(a2 + 16 * *(v12 + 4 * ((v13 + v15 - 1) % v13))), *(a2 + 16 * v14));
    goto LABEL_33;
  }

  if (v9 == 1)
  {
    v10.i64[0] = 0xC0000000C0000000;
    v10.i64[1] = 0xC0000000C0000000;
    v11 = vmlaq_f32(vaddq_f32(*(a2 + 16 * v7), *(a2 + 16 * v8)), v10, *(a2 + 16 * *(a1 + 4)));
LABEL_33:
    *a4 = v11;
    return;
  }

  if (*(a1 + 2) != 1)
  {
    v34 = *(a1 + 8);
    v35 = *(a1 + 12);
    v36 = vsubq_f32(*(a2 + 16 * v34), *(a2 + 16 * v35));
    *a3 = v36;
    v36.i32[0] = *(a1 + 24);
    v37 = 3.14159265 / v36.u64[0];
    v38 = 0uLL;
    *a4 = 0u;
    if ((*(a1 + 24) & 0xFFFFFFFE) != 0)
    {
      v39 = 1;
      do
      {
        v40 = (*(a1 + 16) + 4 * v39);
        v41 = *(v40 - 1);
        v42 = *(a1 + 32) + 4 * v41;
        v43 = (*v40 - v41);
        if (v43)
        {
          v44 = 0;
          while (*(v42 + 4 * v44) != *(a1 + 4))
          {
            if (v43 == ++v44)
            {
              goto LABEL_29;
            }
          }

          v45 = (v44 + 1);
        }

        else
        {
LABEL_29:
          v45 = 1;
        }

        v38 = vmlaq_n_f32(v38, *(a2 + 16 * *(v42 + 4 * (v45 - (v45 / v43) * v43))), sinf(v37 * v39));
        *a4 = v38;
        ++v39;
      }

      while (v39 < *(a1 + 24));
    }

    v50 = v38;
    v46 = __sincosf_stret(v37);
    v47 = vmulq_n_f32(v50, (v46.__cosval * 2.0) + -2.0);
    *a4 = v47;
    v11 = vmlaq_n_f32(v47, vaddq_f32(*(a2 + 16 * v34), *(a2 + 16 * v35)), v46.__sinval);
    goto LABEL_33;
  }

  v16 = v9;
  v17 = __sincos_stret(3.14159265 / v9);
  cosval = v17.__cosval;
  sinval = v17.__sinval;
  v20 = (3 * v9) + cosval;
  v21 = -(((cosval * 2.0) + 1.0) * sqrtf(cosval + 1.0)) / (v20 * sqrtf(1.0 - cosval));
  v22 = vmlaq_n_f32(vmulq_n_f32(*(a2 + 16 * v8), v21), *(a2 + 16 * *(a1 + 4)), (sinval * -4.0) / v20);
  *a4 = v22;
  if (*(a1 + 24))
  {
    v23 = 0;
    v24 = 0.0;
    v25 = 1.0 / v20;
    do
    {
      v48 = v22;
      v49 = v21;
      v26 = v23 + 1;
      v27 = sin((v23 + 1) * 3.14159265 / v16);
      v28 = *(a1 + 16);
      if (v23)
      {
        v29 = *(v28 + 4 * v23 - 4);
      }

      else
      {
        v29 = 0;
      }

      v30 = *(a1 + 32) + 4 * v29;
      v31 = *(v28 + 4 * v23) - v29;
      if (v31)
      {
        v32 = 0;
        while (*(v30 + 4 * v32) != *(a1 + 4))
        {
          if (v31 == ++v32)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
LABEL_20:
        LOBYTE(v32) = 0;
      }

      v33 = v27;
      v22 = vmlaq_n_f32(vmlaq_n_f32(v48, *(a2 + 16 * *(v30 + 4 * ((v32 + 1) & 3))), v49), *(a2 + 16 * *(v30 + 4 * (v32 & 3 ^ 2))), v25 * (v24 + v33));
      *a4 = v22;
      v21 = v25 * (v33 * 4.0);
      ++v23;
      v24 = v33;
    }

    while (v26 < *(a1 + 24));
  }
}

void geom::catmull_clark_vertex_evaluator<float>::compute_xor_tangents(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4)
{
  *a3 = 0u;
  *a4 = 0u;
  v8 = *(a1 + 24);
  v9 = cos(6.28318531 / v8);
  v10 = cos(3.14159265 / v8);
  *v15.i64 = geom::catmull_clark_vertex_evaluator<float>::edge_point(a1, 0, a2, v10, v11, v12, v13, v14);
  v17 = 0uLL;
  v18 = **(a1 + 16);
  if (v18)
  {
    v19 = *(a1 + 32);
    v20 = **(a1 + 16);
    do
    {
      v21 = *v19++;
      v17 = vaddq_f32(v17, *(a2 + 16 * v21));
      --v20;
    }

    while (v20);
  }

  if (v8)
  {
    v22 = 0;
    v23 = v9;
    *v16.i32 = v18;
    v24 = (v23 + 1.0) + v10 * sqrtf((v23 + 9.0) + (v23 + 9.0));
    v25 = vdivq_f32(v17, vdupq_lane_s32(v16, 0));
    v26 = 1.0;
    do
    {
      v45 = v25;
      v46 = v15;
      v27 = v22 + 1;
      if (v22 + 1 == v8)
      {
        v28 = 0;
      }

      else
      {
        v28 = v22 + 1;
      }

      v29 = cos(v28 * 6.28318531 / v8);
      *v15.i64 = geom::catmull_clark_vertex_evaluator<float>::edge_point(a1, v28, a2, v29, v30, v31, v32, v33);
      if (v27 == v8)
      {
        v34 = 0;
        v35 = *(a1 + 16);
      }

      else
      {
        v35 = *(a1 + 16);
        v34 = *(v35 + 4 * v22);
      }

      v36 = *(v35 + 4 * v28);
      v37 = 0uLL;
      if (v36 > v34)
      {
        v38 = v36 - v34;
        v39 = (*(a1 + 32) + 4 * v34);
        do
        {
          v40 = *v39++;
          v37 = vaddq_f32(v37, *(a2 + 16 * v40));
          --v38;
        }

        while (v38);
      }

      v41 = v29;
      v42.i32[1] = v46.i32[1];
      *v42.i32 = (v36 - v34);
      v43 = v26 + v41;
      v25 = vdivq_f32(v37, vdupq_lane_s32(v42, 0));
      *a3 = vmlaq_n_f32(vmlaq_n_f32(*a3, v46, v26 * v24), v45, v26 + v41);
      v44 = vmlaq_n_f32(*a4, v15, v26 * v24);
      v26 = v41;
      *a4 = vmlaq_n_f32(v44, v25, v43);
      ++v22;
    }

    while (v27 != v8);
  }
}

double geom::catmull_clark_vertex_evaluator<float>::edge_point(uint64_t a1, unsigned int a2, uint64_t a3, double a4, double a5, double a6, double a7, float32x4_t a8)
{
  v8 = *(a1 + 4);
  if (a2)
  {
    v9 = *(a1 + 16);
    v10 = *(v9 + 4 * (a2 - 1));
  }

  else
  {
    v10 = 0;
    v9 = *(a1 + 16);
  }

  v11 = *(a1 + 32);
  v12 = v11 + 4 * v10;
  v13 = *(v9 + 4 * a2);
  v14 = v13 - v10;
  if (v14)
  {
    v16 = 0;
    v15 = 1;
    while (*(v12 + 4 * v16) != v8)
    {
      if (v14 == ++v16)
      {
        goto LABEL_11;
      }
    }

    v15 = (v16 + 1);
  }

  else
  {
    v15 = 1;
  }

LABEL_11:
  v17 = v15 - (v15 / v14) * v14;
  v18 = (a2 - 1 + *(a1 + 24)) % *(a1 + 24);
  if (a2)
  {
    v19 = *(v9 + 4 * (a2 - 1));
  }

  else
  {
    v19 = 0;
  }

  v20 = *(v12 + 4 * v17);
  v21 = 0uLL;
  if (v13 > v19)
  {
    v22 = v13 - v19;
    v23 = (v11 + 4 * v19);
    do
    {
      v24 = *v23++;
      v21 = vaddq_f32(v21, *(a3 + 16 * v24));
      --v22;
    }

    while (v22);
  }

  if (v18)
  {
    v25 = *(v9 + 4 * (v18 - 1));
  }

  else
  {
    v25 = 0;
  }

  v26 = *(a3 + 16 * v8);
  v27 = *(v9 + 4 * v18);
  v28 = 0uLL;
  if (v27 > v25)
  {
    v29 = v27 - v25;
    v30 = (v11 + 4 * v25);
    do
    {
      v31 = *v30++;
      a8 = *(a3 + 16 * v31);
      v28 = vaddq_f32(v28, a8);
      --v29;
    }

    while (v29);
  }

  a8.f32[0] = (v13 - v19);
  v32 = vdupq_lane_s32(*a8.f32, 0);
  v33 = vdivq_f32(v21, v32);
  v32.f32[0] = (v27 - v25);
  v34 = vaddq_f32(v33, vaddq_f32(vaddq_f32(v26, *(a3 + 16 * v20)), vdivq_f32(v28, vdupq_lane_s32(*v32.f32, 0))));
  __asm { FMOV            V1.4S, #0.25 }

  *&result = vmulq_f32(v34, _Q1).u64[0];
  return result;
}

float64x2_t geom::catmull_clark_vertex_evaluator<double>::compute_edge_and_face_sums(uint64_t a1, uint64_t a2, float64x2_t *a3, float64x2_t *a4, float64x2_t result)
{
  result.f64[0] = 0.0;
  *a4 = 0u;
  a4[1] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  if (*(a1 + 24))
  {
    v5 = 0;
    do
    {
      v6 = *(a1 + 16);
      if (v5)
      {
        v7 = *(v6 + 4 * v5 - 4);
      }

      else
      {
        v7 = 0;
      }

      v8 = 0uLL;
      v9 = 0uLL;
      v10 = *(v6 + 4 * v5) - v7;
      if (v10)
      {
        v11 = *(a1 + 32) + 4 * v7;
        v13 = *a3;
        v12 = a3[1];
        v14 = 1;
        v15 = v10;
        v16 = v11;
        do
        {
          v17 = *v16++;
          v18 = (a2 + 32 * v17);
          v19 = *v18;
          v20 = v18[1];
          if (v17 == *(a1 + 4))
          {
            v21 = v14;
            if (v15 == 1)
            {
              v21 = 0;
            }

            v22 = (a2 + 32 * *(v11 + 4 * v21));
            v13 = vaddq_f64(v13, *v22);
            v12 = vaddq_f64(v12, v22[1]);
            *a3 = v13;
            a3[1] = v12;
          }

          v9 = vaddq_f64(v9, v20);
          v8 = vaddq_f64(v8, v19);
          ++v14;
          --v15;
        }

        while (v15);
      }

      v23 = vdupq_lane_s64(COERCE__INT64(v10), 0);
      v24 = vaddq_f64(vdivq_f64(v9, v23), a4[1]);
      result = vaddq_f64(vdivq_f64(v8, v23), *a4);
      *a4 = result;
      a4[1] = v24;
      ++v5;
    }

    while (v5 < *(a1 + 24));
  }

  return result;
}

uint64_t geom::catmull_clark_vertex_evaluator<double>::compute_bspline_boundary_tangents(uint64_t result, uint64_t a2, _OWORD *a3, float64x2_t *a4)
{
  *a3 = 0u;
  a3[1] = 0u;
  *a4 = 0u;
  a4[1] = 0u;
  v4 = *(result + 16);
  v5 = *(result + 32);
  v6 = *v4;
  v7 = *(result + 4);
  if (v6)
  {
    v8 = 0;
    while (*(v5 + 4 * v8) != v7)
    {
      if (v6 == ++v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    LOBYTE(v8) = 0;
  }

  v9 = *(v5 + 4 * ((v8 + 1) & 3));
  v10 = *(v5 + 4 * ((v8 - 1) & 3));
  v11 = *(result + 24);
  if (v11 == 2)
  {
    v18 = *(v5 + 4 * (v8 & 3 ^ 2));
    v19 = v5 + 4 * v6;
    v20 = v4[1] - v6;
    if (v20)
    {
      v21 = 0;
      while (*(v19 + 4 * v21) != v7)
      {
        if (v20 == ++v21)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      LOBYTE(v21) = 0;
    }

    v22 = (a2 + 32 * *(v19 + 4 * (v21 & 3 ^ 2)));
    v23 = (a2 + 32 * *(v19 + 4 * ((v21 - 1) & 3)));
    v24 = (a2 + 32 * v9);
    v25 = vsubq_f64(v24[1], v23[1]);
    *a3 = vsubq_f64(*v24, *v23);
    a3[1] = v25;
    v26 = (a2 + 32 * v10);
    v27 = (a2 + 32 * v7);
    v28 = vsubq_f64(v26[1], v27[1]);
    v29 = vsubq_f64(*v26, *v27);
    v30 = (a2 + 32 * v18);
    __asm { FMOV            V4.2D, #4.0 }

    v36 = vmlaq_f64(vsubq_f64(vsubq_f64(vaddq_f64(*v30, *v22), *v23), *v24), _Q4, v29);
    v37 = vmlaq_f64(vsubq_f64(vsubq_f64(vaddq_f64(v30[1], v22[1]), v23[1]), v24[1]), _Q4, v28);
    __asm { FMOV            V1.2D, #6.0 }

    v16 = vdivq_f64(v37, _Q1);
    v17 = vdivq_f64(v36, _Q1);
  }

  else
  {
    if (v11 != 1)
    {
      return result;
    }

    v12 = (a2 + 32 * v9);
    v13 = (a2 + 32 * v7);
    v14 = vsubq_f64(v12[1], v13[1]);
    *a3 = vsubq_f64(*v12, *v13);
    a3[1] = v14;
    v15 = (a2 + 32 * v10);
    v16 = vsubq_f64(v15[1], v13[1]);
    v17 = vsubq_f64(*v15, *v13);
  }

  *a4 = v17;
  a4[1] = v16;
  return result;
}

float64x2_t geom::catmull_clark_vertex_evaluator<double>::compute_bspline_tangents(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4)
{
  v4 = 0;
  v45 = *MEMORY[0x277D85DE8];
  *a3 = 0u;
  a3[1] = 0u;
  *a4 = 0u;
  a4[1] = 0u;
  v5 = *(a1 + 32);
  v6 = *(a1 + 4);
  v7 = (a2 + 32 * v6);
  __asm { FMOV            V0.2D, #0.25 }

  v13 = v5;
  do
  {
    v14 = 0;
    v15 = &v36[2 * v4];
    *v15 = 0uLL;
    v15[1] = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    do
    {
      v18 = *(v13 + 4 * v14);
      if (v18 == v6)
      {
        if (v14 == 3)
        {
          v19 = 0;
        }

        else
        {
          v19 = v14 + 1;
        }

        v20 = (a2 + 32 * *(v5 + 16 * v4 + 4 * v19));
        v21 = vaddq_f64(v7[1], v20[1]);
        *v15 = vaddq_f64(*v7, *v20);
        v15[1] = v21;
      }

      v22 = (a2 + 32 * v18);
      v17 = vaddq_f64(v17, v22[1]);
      v16 = vaddq_f64(v16, *v22);
      ++v14;
    }

    while (v14 != 4);
    v23 = &v37 + 2 * v4;
    *v23 = vmulq_f64(v16, _Q0);
    v23[1] = vmulq_f64(v17, _Q0);
    ++v4;
    v13 += 16;
  }

  while (v4 != 4);
  v24 = v37;
  v25 = v38;
  v26 = v39;
  v27 = v40;
  v28 = vaddq_f64(v37, vaddq_f64(v36[2], v39));
  v29 = vaddq_f64(v38, vaddq_f64(v36[3], v40));
  __asm { FMOV            V25.2D, #4.0 }

  v31 = vaddq_f64(v43, vmlaq_f64(v41, _Q25, vmulq_f64(vaddq_f64(v41, vaddq_f64(v43, v36[6])), _Q0)));
  v32 = vaddq_f64(v44, vmlaq_f64(v42, _Q25, vmulq_f64(vaddq_f64(v42, vaddq_f64(v44, v36[7])), _Q0)));
  v33 = vsubq_f64(vaddq_f64(v38, vmlaq_f64(v44, _Q25, vmulq_f64(vaddq_f64(vaddq_f64(v36[1], v38), v44), _Q0))), vaddq_f64(v42, vmlaq_f64(v40, _Q25, vmulq_f64(vaddq_f64(v40, vaddq_f64(v36[5], v42)), _Q0))));
  *a3 = vsubq_f64(vaddq_f64(v37, vmlaq_f64(v43, _Q25, vmulq_f64(vaddq_f64(vaddq_f64(v36[0], v37), v43), _Q0))), vaddq_f64(v41, vmlaq_f64(v39, _Q25, vmulq_f64(vaddq_f64(v39, vaddq_f64(v36[4], v41)), _Q0))));
  a3[1] = v33;
  v34 = vmlaq_f64(v24, _Q25, vmulq_f64(v28, _Q0));
  result = vsubq_f64(vaddq_f64(v27, vmlaq_f64(v25, _Q25, vmulq_f64(v29, _Q0))), v32);
  *a4 = vsubq_f64(vaddq_f64(v26, v34), v31);
  a4[1] = result;
  return result;
}

uint64_t geom::catmull_clark_vertex_evaluator<double>::compute_average_face_normal@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, float64x2_t *a3@<X8>)
{
  v3 = *(result + 4);
  v4 = (a2 + 32 * v3);
  v6 = *v4;
  v5 = v4[1];
  v7 = *(result + 16);
  v8 = *(result + 32);
  v9 = *v7;
  if (v9)
  {
    v10 = 0;
    v11 = 1;
    while (1)
    {
      v12 = *(v8 + 4 * v10++);
      if (v12 == v3)
      {
        break;
      }

      if (v9 == v10)
      {
        goto LABEL_8;
      }
    }

    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

LABEL_8:
  v13 = (a2 + 32 * *(v8 + 4 * (v11 % v9)));
  v14 = vsubq_f64(v13[1], v5);
  v15 = vsubq_f64(*v13, v6);
  v16 = *(result + 24);
  v17 = 0uLL;
  if (v16 < 2)
  {
    v27 = v15;
    v26 = v14;
    v19 = 0uLL;
  }

  else
  {
    v18 = 1;
    v19 = 0uLL;
    do
    {
      v20 = v9;
      v21 = v8 + 4 * v9;
      LODWORD(v9) = v7[v18];
      v22 = (v9 - v20);
      if (v22)
      {
        v23 = 0;
        while (*(v21 + 4 * v23) != v3)
        {
          if (v22 == ++v23)
          {
            goto LABEL_14;
          }
        }

        v24 = (v23 + 1);
      }

      else
      {
LABEL_14:
        v24 = 1;
      }

      v25 = (a2 + 32 * *(v21 + 4 * (v24 - (v24 / v22) * v22)));
      v26 = vsubq_f64(v25[1], v5);
      v27 = vsubq_f64(*v25, v6);
      v28.f64[0] = v26.f64[0];
      v28.f64[1] = v27.f64[0];
      v29 = vnegq_f64(v14);
      v14.f64[1] = v15.f64[0];
      *&v29.f64[0] = *&vmlaq_laneq_f64(vmulq_laneq_f64(v29, v27, 1), v26, v15, 1);
      v30 = vmlaq_f64(vmulq_f64(v28, vnegq_f64(v15)), v27, v14);
      *&v29.f64[1] = v30.i64[0];
      v17 = vaddq_f64(v17, v29);
      v19 = vaddq_f64(v19, vdupq_laneq_s64(v30, 1));
      ++v18;
      v15 = v27;
      v14 = v26;
    }

    while (v18 != v16);
  }

  if (*result)
  {
    v31 = v16 - 1;
    if (v16 == 1)
    {
      v32 = 0;
    }

    else
    {
      v32 = v7[(v16 - 2)];
    }

    v33 = v8 + 4 * v32;
    v34 = v7[v31] - v32;
    if (v34)
    {
      v35 = 0;
      while (*(v33 + 4 * v35) != v3)
      {
        if (v34 == ++v35)
        {
          goto LABEL_27;
        }
      }

      v36 = v35;
    }

    else
    {
LABEL_27:
      v36 = 0;
    }

    v37 = (a2 + 32 * *(v33 + 4 * ((v34 + v36 - 1) % v34)));
    v38 = vsubq_f64(*v37, v6);
    v39 = vsubq_f64(v37[1], v5);
    v40.f64[0] = v39.f64[0];
    v40.f64[1] = v38.f64[0];
    *&v41.f64[0] = *&vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v26), v38, 1), v39, v27, 1);
    v26.f64[1] = v27.f64[0];
    v42 = vmlaq_f64(vmulq_f64(v40, vnegq_f64(v27)), v38, v26);
    *&v41.f64[1] = v42.i64[0];
    v17 = vaddq_f64(v17, v41);
    v19 = vaddq_f64(v19, vdupq_laneq_s64(v42, 1));
  }

  *a3 = v17;
  a3[1] = v19;
  return result;
}

void geom::catmull_clark_vertex_evaluator<double>::compute_xor_boundary_tangents(uint64_t a1, uint64_t a2, float64x2_t *a3, float64x2_t *a4)
{
  v7 = (a2 + 32 * *(a1 + 8));
  v8 = (a2 + 32 * *(a1 + 12));
  v9 = vsubq_f64(v7[1], v8[1]);
  *a3 = vsubq_f64(*v7, *v8);
  a3[1] = v9;
  v10 = *(a1 + 24);
  if (v10 == 2)
  {
    v21 = *(a1 + 32);
    v22 = **(a1 + 16);
    v23 = *(a1 + 4);
    if (v22)
    {
      v24 = 0;
      while (*(v21 + 4 * v24) != v23)
      {
        if (v22 == ++v24)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      v24 = 0;
    }

    v25 = (a2 + 32 * *(v21 + 4 * ((v22 + v24 - 1) % v22)));
    v26 = *v25;
    v27 = v25[1];
    v28 = (a2 + 32 * v23);
    v19 = vsubq_f64(v27, v28[1]);
    v20 = vsubq_f64(v26, *v28);
    goto LABEL_35;
  }

  if (v10 == 1)
  {
    v11 = vaddq_f64(*v7, *v8);
    v12 = vaddq_f64(v7[1], v8[1]);
    v13 = (a2 + 32 * *(a1 + 4));
    __asm { FMOV            V4.2D, #-2.0 }

    v19 = vmlaq_f64(v12, _Q4, v13[1]);
    v20 = vmlaq_f64(v11, _Q4, *v13);
LABEL_35:
    *a4 = v20;
    a4[1] = v19;
    return;
  }

  if (*(a1 + 2) != 1)
  {
    v52 = (a2 + 32 * *(a1 + 8));
    v53 = (a2 + 32 * *(a1 + 12));
    v54 = vsubq_f64(v52[1], v53[1]);
    *a3 = vsubq_f64(*v52, *v53);
    a3[1] = v54;
    LODWORD(v54.f64[0]) = *(a1 + 24);
    v55 = 3.14159265 / *&v54.f64[0];
    v56 = 0uLL;
    *a4 = 0u;
    a4[1] = 0u;
    if ((*(a1 + 24) & 0xFFFFFFFE) != 0)
    {
      v57 = 1;
      v73 = 0u;
      do
      {
        v58 = (*(a1 + 16) + 4 * v57);
        v59 = *(v58 - 1);
        v60 = *(a1 + 32) + 4 * v59;
        v61 = (*v58 - v59);
        v75 = v56;
        if (v61)
        {
          v62 = 0;
          while (*(v60 + 4 * v62) != *(a1 + 4))
          {
            if (v61 == ++v62)
            {
              goto LABEL_29;
            }
          }

          v63 = (v62 + 1);
        }

        else
        {
LABEL_29:
          v63 = 1;
        }

        v64 = (a2 + 32 * *(v60 + 4 * (v63 - (v63 / v61) * v61)));
        v65 = sin(v55 * v57);
        v56 = vmlaq_n_f64(v75, *v64, v65);
        v73 = vmlaq_n_f64(v73, v64[1], v65);
        *a4 = v56;
        a4[1] = v73;
        ++v57;
      }

      while (v57 < *(a1 + 24));
    }

    else
    {
      v73 = 0u;
    }

    v76 = v56;
    v67 = __sincos_stret(v55);
    v66.f64[0] = v67.__sinval;
    v68.f64[0] = v67.__cosval * 2.0 + -2.0;
    v69 = vmulq_n_f64(v76, v68.f64[0]);
    v70 = vmulq_f64(v68, v73);
    *a4 = v69;
    a4[1] = v70;
    v19 = vmlaq_f64(v70, vaddq_f64(v52[1], v53[1]), v66);
    v20 = vmlaq_n_f64(v69, vaddq_f64(*v52, *v53), v67.__sinval);
    goto LABEL_35;
  }

  v29 = v10;
  v30 = __sincos_stret(3.14159265 / v10);
  v31 = v30.__cosval + (3 * v10);
  v32 = v30.__sinval * -4.0 / v31;
  v33 = -((v30.__cosval * 2.0 + 1.0) * sqrt(v30.__cosval + 1.0)) / (v31 * sqrt(1.0 - v30.__cosval));
  v34 = (a2 + 32 * *(a1 + 4));
  v35 = vmlaq_n_f64(vmulq_n_f64(*v8, v33), *v34, v32);
  v36 = vmlaq_n_f64(vmulq_n_f64(v8[1], v33), v34[1], v32);
  *a4 = v35;
  a4[1] = v36;
  if (*(a1 + 24))
  {
    v37 = 0;
    v38 = 0.0;
    v39 = 1.0 / v31;
    do
    {
      v71 = v35;
      v72 = v36;
      v74 = v33;
      v40 = v37 + 1;
      v41 = sin((v37 + 1) * 3.14159265 / v29);
      v42 = *(a1 + 16);
      if (v37)
      {
        v43 = *(v42 + 4 * v37 - 4);
      }

      else
      {
        v43 = 0;
      }

      v44 = *(a1 + 32) + 4 * v43;
      v45 = *(v42 + 4 * v37) - v43;
      if (v45)
      {
        v46 = 0;
        while (*(v44 + 4 * v46) != *(a1 + 4))
        {
          if (v45 == ++v46)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
LABEL_20:
        LOBYTE(v46) = 0;
      }

      v47 = v39 * (v38 + v41);
      v48 = *(v44 + 4 * ((v46 + 1) & 3));
      v49 = *(v44 + 4 * (v46 & 3 ^ 2));
      v50 = (a2 + 32 * v48);
      v51 = (a2 + 32 * v49);
      v35 = vmlaq_n_f64(vmlaq_n_f64(v71, *v50, v74), *v51, v47);
      v36 = vmlaq_n_f64(vmlaq_n_f64(v72, v50[1], v74), v51[1], v47);
      *a4 = v35;
      a4[1] = v36;
      v33 = v39 * (v41 * 4.0);
      ++v37;
      v38 = v41;
    }

    while (v40 < *(a1 + 24));
  }
}

void geom::catmull_clark_vertex_evaluator<double>::compute_xor_tangents(uint64_t a1, uint64_t a2, float64x2_t *a3, float64x2_t *a4)
{
  *a3 = 0u;
  a3[1] = 0u;
  *a4 = 0u;
  a4[1] = 0u;
  v8 = *(a1 + 24);
  v9 = cos(6.28318531 / v8);
  v10 = cos(3.14159265 / v8);
  geom::catmull_clark_vertex_evaluator<double>::edge_point(a1, 0, a2, v53);
  v11 = **(a1 + 16);
  if (v11)
  {
    v12 = *(a1 + 32);
    v13 = 0uLL;
    v14 = **(a1 + 16);
    v15 = 0uLL;
    do
    {
      v16 = *v12++;
      v17 = (a2 + 32 * v16);
      v15 = vaddq_f64(v15, v17[1]);
      v13 = vaddq_f64(v13, *v17);
      --v14;
    }

    while (v14);
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v15 = 0uLL;
    v13 = 0uLL;
    if (!v8)
    {
      return;
    }
  }

  v18 = 0;
  v19 = v9;
  v20 = (v19 + 1.0) + v10 * sqrtf((v19 + 9.0) + (v19 + 9.0));
  v22 = v53[0];
  v21 = v53[1];
  v23 = vdupq_lane_s64(COERCE__INT64(v11), 0);
  v24 = vdivq_f64(v15, v23);
  v25 = vdivq_f64(v13, v23);
  v26 = v20;
  v27 = 1.0;
  do
  {
    v48 = v22;
    v49 = v25;
    v50 = v24;
    v51 = v21;
    v28 = v18 + 1;
    if (v18 + 1 == v8)
    {
      v29 = 0;
    }

    else
    {
      v29 = v18 + 1;
    }

    v30 = cos(v29 * 6.28318531 / v8);
    geom::catmull_clark_vertex_evaluator<double>::edge_point(a1, v29, a2, v52);
    if (v28 == v8)
    {
      v33 = 0;
      v34 = *(a1 + 16);
    }

    else
    {
      v34 = *(a1 + 16);
      v33 = *(v34 + 4 * v18);
    }

    v36 = v52[0];
    v35 = v52[1];
    v37 = *(v34 + 4 * v29);
    v38 = 0uLL;
    v39 = 0uLL;
    v40.f64[1] = v48.f64[1];
    if (v37 > v33)
    {
      v41 = v37 - v33;
      v42 = (*(a1 + 32) + 4 * v33);
      do
      {
        v43 = *v42++;
        v44 = (a2 + 32 * v43);
        v31 = *v44;
        v39 = vaddq_f64(v39, v44[1]);
        v38 = vaddq_f64(v38, *v44);
        --v41;
      }

      while (v41);
    }

    *v31.f64 = v27 * v26;
    v31.f64[0] = *v31.f64;
    v40.f64[0] = (v37 - v33);
    *v32.f64 = v27 + v30;
    v32.f64[0] = *v32.f64;
    v25 = vdivq_f64(v38, vdupq_lane_s64(*&v40.f64[0], 0));
    v45 = vmlaq_n_f64(vmlaq_n_f64(a3[1], v51, v31.f64[0]), v50, v32.f64[0]);
    v24 = vdivq_f64(v39, v40);
    *a3 = vmlaq_n_f64(vmlaq_n_f64(*a3, v48, v31.f64[0]), v49, v32.f64[0]);
    a3[1] = v45;
    v46 = vmlaq_f64(vmlaq_f64(a4[1], v35, v31), v24, v32);
    v47 = vmlaq_n_f64(vmlaq_n_f64(*a4, v36, v31.f64[0]), v25, v32.f64[0]);
    v27 = v30;
    v22 = v36;
    v21 = v35;
    *a4 = v47;
    a4[1] = v46;
    ++v18;
  }

  while (v28 != v8);
}

float64x2_t geom::catmull_clark_vertex_evaluator<double>::edge_point@<Q0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, float64x2_t *a4@<X8>)
{
  v4 = *(a1 + 4);
  if (a2)
  {
    v5 = *(a1 + 16);
    v6 = *(v5 + 4 * (a2 - 1));
  }

  else
  {
    v6 = 0;
    v5 = *(a1 + 16);
  }

  v7 = *(a1 + 32);
  v8 = v7 + 4 * v6;
  v9 = *(v5 + 4 * a2);
  v10 = v9 - v6;
  if (v10)
  {
    v12 = 0;
    v11 = 1;
    while (*(v8 + 4 * v12) != v4)
    {
      if (v10 == ++v12)
      {
        goto LABEL_11;
      }
    }

    v11 = (v12 + 1);
  }

  else
  {
    v11 = 1;
  }

LABEL_11:
  v13 = *(v8 + 4 * (v11 - (v11 / v10) * v10));
  v14 = (a2 - 1 + *(a1 + 24)) % *(a1 + 24);
  if (a2)
  {
    v15 = *(v5 + 4 * (a2 - 1));
  }

  else
  {
    v15 = 0;
  }

  v16 = 0uLL;
  v17 = 0uLL;
  if (v9 > v15)
  {
    v18 = v9 - v15;
    v19 = (v7 + 4 * v15);
    do
    {
      v20 = *v19++;
      v21 = (a3 + 32 * v20);
      v17 = vaddq_f64(v17, v21[1]);
      v16 = vaddq_f64(v16, *v21);
      --v18;
    }

    while (v18);
  }

  v22 = (a3 + 32 * v4);
  v23 = (a3 + 32 * v13);
  if (v14)
  {
    v24 = *(v5 + 4 * (v14 - 1));
  }

  else
  {
    v24 = 0;
  }

  v25 = *v23;
  v26 = v23[1];
  v27 = *(v5 + 4 * v14);
  v28 = 0uLL;
  v29 = 0uLL;
  if (v27 > v24)
  {
    v30 = v27 - v24;
    v31 = (v7 + 4 * v24);
    do
    {
      v32 = *v31++;
      v33 = (a3 + 32 * v32);
      v29 = vaddq_f64(v29, v33[1]);
      v28 = vaddq_f64(v28, *v33);
      --v30;
    }

    while (v30);
  }

  v34 = vdupq_lane_s64(COERCE__INT64((v9 - v15)), 0);
  v35 = vdivq_f64(v16, v34);
  v36 = vdivq_f64(v17, v34);
  v37 = vdupq_lane_s64(COERCE__INT64((v27 - v24)), 0);
  __asm { FMOV            V2.2D, #0.25 }

  result = vmulq_f64(vaddq_f64(v35, vaddq_f64(vaddq_f64(*v22, v25), vdivq_f64(v28, v37))), _Q2);
  v44 = vmulq_f64(vaddq_f64(v36, vaddq_f64(vaddq_f64(v22[1], v26), vdivq_f64(v29, v37))), _Q2);
  *a4 = result;
  a4[1] = v44;
  return result;
}

uint64_t geom_sparse_linear_solver_create_f(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = geom_sparse_linear_solver_f_obj_alloc();
  geom::sparse_linear_solver<float>::sparse_linear_solver(v4 + 16, v3, v2);
  return v4;
}

uint64_t geom_sparse_linear_solver_create_d(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = geom_sparse_linear_solver_d_obj_alloc();
  geom::sparse_linear_solver<float>::sparse_linear_solver(v4 + 16, v3, v2);
  return v4;
}

uint64_t geom::z_order_code(double a1)
{
  v1 = WORD2(a1) | (HIDWORD(a1) << 16) & 0xFFFF0000FFFFLL;
  v2 = (v1 | (v1 << 8)) & 0xF000F000F000FLL | (16 * ((v1 | (v1 << 8)) & 0xFF00FF00FF00FFLL)) & 0xF0F0F0F0F0F0F0FLL;
  v3 = LOWORD(a1) | (LODWORD(a1) << 16) & 0xFFFF0000FFFFLL;
  v4 = (v3 | (v3 << 8)) & 0xF000F000F000FLL | (16 * ((v3 | (v3 << 8)) & 0xFF00FF00FF00FFLL)) & 0xF0F0F0F0F0F0F0FLL;
  return (v4 | (4 * v4)) & 0x1111111111111111 | (2 * ((v4 | (4 * v4)) & 0x3333333333333333)) & 0x5555555555555555 | (2 * ((v2 | (4 * v2)) & 0x1111111111111111 | (2 * ((v2 | (4 * v2)) & 0x3333333333333333)) & 0x5555555555555555));
}

uint64_t geom::z_order_code(unsigned int a1)
{
  return (4 * ((16 * (a1 | (BYTE1(a1) << 16))) & 0xF000F00 | a1 & 0xF | (BYTE1(a1) << 16) & 0xF000F)) & 0x10101010 | (16 * (a1 | (BYTE1(a1) << 16))) & 0x1000100 | a1 & 1 | (BYTE1(a1) << 16) & 0x10001 | (2 * ((4 * ((16 * (a1 | (BYTE1(a1) << 16))) & 0xF000F00 | a1 & 0xF | (BYTE1(a1) << 16) & 0xF000F)) & 0x30303030 | (16 * (a1 | (BYTE1(a1) << 16))) & 0x3000300 | a1 & 3 | (BYTE1(a1) << 16) & 0x30003)) & 0x44444444 | (2 * ((2 * ((4 * ((16 * ((a1 >> 8) & 0xFF0000 | BYTE2(a1))) & 0xF000F00 | (a1 >> 8) & 0xF0000 | BYTE2(a1) & 0xF)) & 0x30303030 | (16 * ((a1 >> 8) & 0xFF0000 | BYTE2(a1))) & 0x3000300 | (a1 >> 8) & 0x30000 | BYTE2(a1) & 3)) & 0x44444444 | (4 * ((16 * ((a1 >> 8) & 0xFF0000 | BYTE2(a1))) & 0xF000F00 | (a1 >> 8) & 0xF0000 | BYTE2(a1) & 0xF)) & 0x10101010 | (16 * ((a1 >> 8) & 0xFF0000 | BYTE2(a1))) & 0x1000100 | (a1 >> 8) & 0x10000 | BYTE2(a1) & 1));
}

{
  v1 = (a1 >> 4) & 0xF00 | (a1 >> 8) & 0xF;
  v2 = a1 & 0xF | (a1 >> 4 << 8);
  return (v2 | (4 * v2)) & 0xD1D1D1D1 | (2 * ((v2 | (4 * v2)) & 0xF3F3F3F3)) & 0xDDDDDDDD | (2 * ((v1 | (4 * v1)) & 0xD1D1D1D1 | (2 * ((v1 | (4 * v1)) & 0xF3F3F3F3)) & 0xDDDDDDDD));
}

unint64_t geom::z_order_code(int32x2_t a1)
{
  v1 = (a1.u8[0] | (a1.u16[0] << 16)) & 0xFF0000FF;
  v2 = (v1 | (v1 << 8)) & 0x3003003003 | (16 * ((v1 | (v1 << 8)) & 0xF00F00F00FLL)) & 0xC30C30C30C3;
  a1.i32[0] = a1.u16[1];
  a1.i32[1] = a1.u16[2];
  v3 = vorr_s8((*&vshl_n_s32(a1, 0x10uLL) & 0xFF00FFFFFF00FFFFLL), vand_s8(a1, 0xFF000000FFLL));
  v4.i64[0] = v3.u32[0];
  v4.i64[1] = v3.u32[1];
  v5 = vextq_s8(v4, v4, 8uLL);
  v6 = vorrq_s8(vandq_s8(vshlq_n_s64(v5, 8uLL), vdupq_n_s64(0xF00000F000uLL)), vandq_s8(v5, vdupq_n_s64(0xF00000FuLL)));
  v7 = vorrq_s8(vandq_s8(vshlq_n_s64(v6, 4uLL), vdupq_n_s64(0xC00C00C00C0uLL)), vandq_s8(v6, vdupq_n_s64(0x3003003003uLL)));
  v8 = vshlq_u64(vorrq_s8(vandq_s8(vshlq_n_s64(v7, 2uLL), vdupq_n_s64(0x208208208208uLL)), vandq_s8(v7, vdupq_n_s64(0x41041041041uLL))), xmmword_2500CBA40);
  return vorrq_s8(v8, vdupq_laneq_s64(v8, 1)).u64[0] | (v2 | (4 * v2)) & 0x249249249249;
}

uint64_t geom::z_order_code(int a1)
{
  v1 = a1 & 0xF | (a1 >> 4 << 12);
  v2.i32[0] = BYTE1(a1);
  v2.i32[1] = BYTE2(a1);
  v3 = vand_s8(v2, 0xFF000000FFLL);
  v4 = vorr_s8((*&vshl_n_s32(v3, 8uLL) & 0xFFFFF0FFFFFFF0FFLL), (*&v3 & 0xFFFFFF0FFFFFFF0FLL));
  v5 = vorr_s8(vand_s8(vshl_n_s32(v4, 4uLL), vdup_n_s32(0xC00C0u)), vand_s8(v4, vdup_n_s32(0x3003u)));
  v6 = vshl_u32(vorr_s8(vand_s8(vshl_n_s32(v5, 2uLL), vdup_n_s32(0x208208u)), vand_s8(v5, vdup_n_s32(0x41041u))), 0x200000001);
  return vorr_s8(vdup_lane_s32(v6, 1), v6).u32[0] | (v1 | (16 * v1)) & 0x41041 | (4 * ((v1 | (16 * v1)) & 0xC30C3)) & 0x249249;
}

{
  v1.i32[0] = HIBYTE(a1);
  v1.i32[1] = BYTE1(a1);
  v2 = vand_s8(v1, 0xFF000000FFLL);
  v3 = vorr_s8((*&vshl_n_s32(v2, 0xCuLL) & 0xFFFF0FFFFFFF0FFFLL), (*&v2 & 0xFFFFFF0FFFFFFF0FLL));
  v4 = vorr_s8((*&vshl_n_s32(v3, 6uLL) & 0xFF3FFF3FFF3FFF3FLL), (*&v3 & 0xFFF3FFF3FFF3FFF3));
  v5 = vshl_u32(vorr_s8(vand_s8(vshl_n_s32(v4, 3uLL), 0x1010101010101010), vand_s8(v4, 0x101010101010101)), 0x100000003);
  return v5.i32[0] | (4 * ((8 * (((BYTE2(a1) & 0xF | (BYTE2(a1) << 12)) << 6) & 0x3000300 | BYTE2(a1) & 3 | (BYTE2(a1) << 12) & 0x30003)) & 0x10101010 | ((BYTE2(a1) & 0xF | (BYTE2(a1) << 12)) << 6) & 0x1000100 | BYTE2(a1) & 1 | (BYTE2(a1) << 12) & 0x10001)) | ((a1 & 0xF | (a1 >> 4 << 16)) << 6) & 0x1000100 | a1 & 1 | (a1 >> 4 << 16) & 0x10001 | (8 * (((a1 & 0xF | (a1 >> 4 << 16)) << 6) & 0x3000300 | a1 & 3 | (a1 >> 4 << 16) & 0x30003)) & 0x10101010u | v5.i32[1];
}

unint64_t geom::z_order_code(double a1)
{
  v1 = (LOBYTE(a1) | (LOWORD(a1) << 24)) & 0xF0000000FLL | ((LOBYTE(a1) | (LOWORD(a1) << 24)) << 12);
  v2 = (BYTE4(a1) | (WORD2(a1) << 24)) & 0xF0000000FLL | ((BYTE4(a1) | (WORD2(a1) << 24)) << 12) & 0xF000F000F000FLL;
  v3.i32[0] = HIWORD(a1);
  v3.i32[1] = WORD1(a1);
  v4.i64[0] = HIWORD(a1);
  v4.i64[1] = WORD1(a1);
  v5.i64[0] = 0xFF00000000;
  v5.i64[1] = 0xFF00000000;
  v6 = vandq_s8(vshlq_n_s64(v4, 0x18uLL), v5);
  v7 = vand_s8(v3, 0xFF000000FFLL);
  v4.i64[0] = v7.u32[0];
  v4.i64[1] = v7.u32[1];
  v8 = vorrq_s8(v6, v4);
  v9 = vorrq_s8((*&vshlq_n_s64(v8, 0xCuLL) & __PAIR128__(0xFFFF0FFFFFFF0FFFLL, 0xFFFF0FFFFFFF0FFFLL)), (*&v8 & __PAIR128__(0xFFFFFF0FFFFFFF0FLL, 0xFFFFFF0FFFFFFF0FLL)));
  v10 = vorrq_s8((*&vshlq_n_s64(v9, 6uLL) & __PAIR128__(0xFF3FFF3FFF3FFF3FLL, 0xFF3FFF3FFF3FFF3FLL)), (*&v9 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)));
  v5.i64[0] = 0x1010101010101010;
  v5.i64[1] = 0x1010101010101010;
  v11 = vandq_s8(vshlq_n_s64(v10, 3uLL), v5);
  v5.i64[0] = 0x101010101010101;
  v5.i64[1] = 0x101010101010101;
  v12 = vshlq_u64(vorrq_s8(v11, vandq_s8(v10, v5)), xmmword_2500CBA50);
  return v12.i64[0] | (4 * ((v2 | (v2 << 6) | (8 * (v2 | (v2 << 6)))) & 0x1111111111111111)) | v1 & 0x1000100010001 | ((v1 & 0xF000F000F000FLL) << 6) & 0x1111111111111111 | (8 * (v1 & 0xF000F000F000FLL | ((v1 & 0xF000F000F000FLL) << 6))) & 0x1111111111111111 | v12.i64[1];
}

BOOL geom::compare_z_order<float,(unsigned char)2>(float32x2_t a1, float32x2_t a2)
{
  v2 = vceq_f32(a1, a2);
  if ((vpmin_u32(v2, v2).u32[0] & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = vmvn_s8(v2).u8[0];
  v4 = ~v3;
  v5 = a1.f32[1];
  v6 = a2.f32[1];
  if (a1.f32[1] != a2.f32[1])
  {
    v11 = a1;
    v12 = a2;
    a1 = v11;
    a2 = v12;
    v15 = __PAIR64__(v8, v7);
    if ((v3 & (*(&v15 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v3 & 1) == 0))) > v8)) == 0)
    {
      v4 = 1;
    }
  }

  v13 = a1;
  v10 = *(&v13 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v4 & 1)));
  v14 = a2;
  return v10 < *(&v14 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v4 & 1)));
}

BOOL geom_compare_z_order_2f(double a1, double a2)
{
  v2 = vceq_f32(*&a1, *&a2);
  if ((vpmin_u32(v2, v2).u32[0] & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = vmvn_s8(v2).u8[0];
  v4 = ~v3;
  v5 = *(&a1 + 1);
  v6 = *(&a2 + 1);
  if (*(&a1 + 1) != *(&a2 + 1))
  {
    v11 = a1;
    v12 = a2;
    a1 = v11;
    a2 = v12;
    v15 = __PAIR64__(v8, v7);
    if ((v3 & (*(&v15 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v3 & 1) == 0))) > v8)) == 0)
    {
      v4 = 1;
    }
  }

  v13 = a1;
  v10 = *(&v13 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v4 & 1)));
  v14 = a2;
  return v10 < *(&v14 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v4 & 1)));
}

BOOL geom::compare_z_order<float,(unsigned char)3>(float32x4_t a1, float32x4_t a2)
{
  v2 = vceqq_f32(a1, a2);
  v3 = v2;
  v3.i32[3] = v2.i32[2];
  if ((vminvq_u32(v3) & 0x80000000) != 0)
  {
    return 0;
  }

  v13 = v2;
  *&v7 = __PAIR64__(v5, v4);
  DWORD2(v7) = v6;
  v8 = vmovn_s32(vmvnq_s8(v13)).u8[0];
  v9 = (v8 & 1) - 1;
  if (a1.f32[1] != a2.f32[1])
  {
    v19 = v7;
    if ((v8 & (*(&v19 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v8 & 1) - 1) & 3))) > v5)) == 0)
    {
      v9 = 1;
    }
  }

  if (a1.f32[2] != a2.f32[2])
  {
    v18 = v7;
    if (*(&v18 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3))) <= v6 || ~v9 == 0)
    {
      v9 = 2;
    }
  }

  v17 = a1;
  v12 = *(&v17 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3)));
  v16 = a2;
  return v12 < *(&v16 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3)));
}

BOOL geom_compare_z_order_3f(float32x4_t a1, float32x4_t a2)
{
  v2 = vceqq_f32(a1, a2);
  v3 = v2;
  v3.i32[3] = v2.i32[2];
  if ((vminvq_u32(v3) & 0x80000000) != 0)
  {
    return 0;
  }

  v13 = v2;
  *&v7 = __PAIR64__(v5, v4);
  DWORD2(v7) = v6;
  v8 = vmovn_s32(vmvnq_s8(v13)).u8[0];
  v9 = (v8 & 1) - 1;
  if (a1.f32[1] != a2.f32[1])
  {
    v19 = v7;
    if ((v8 & (*(&v19 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v8 & 1) - 1) & 3))) > v5)) == 0)
    {
      v9 = 1;
    }
  }

  if (a1.f32[2] != a2.f32[2])
  {
    v18 = v7;
    if (*(&v18 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3))) <= v6 || ~v9 == 0)
    {
      v9 = 2;
    }
  }

  v17 = a1;
  v12 = *(&v17 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3)));
  v16 = a2;
  return v12 < *(&v16 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3)));
}

BOOL geom::compare_z_order<float,(unsigned char)4>(float32x4_t a1, float32x4_t a2)
{
  v2 = vceqq_f32(a1, a2);
  if ((vminvq_u32(v2) & 0x80000000) != 0)
  {
    return 0;
  }

  v14 = v2;
  *&v7 = __PAIR64__(v4, v3);
  *(&v7 + 1) = __PAIR64__(v6, v5);
  v8 = vmovn_s32(vmvnq_s8(v14)).u8[0];
  v9 = (v8 & 1) - 1;
  if (a1.f32[1] != a2.f32[1])
  {
    v21 = v7;
    if ((v8 & (*(&v21 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v8 & 1) - 1) & 3))) > v4)) == 0)
    {
      v9 = 1;
    }
  }

  if (a1.f32[2] != a2.f32[2])
  {
    v20 = v7;
    if (*(&v20 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3))) <= v5 || ~v9 == 0)
    {
      v9 = 2;
    }
  }

  if (a1.f32[3] != a2.f32[3])
  {
    v19 = v7;
    if (*(&v19 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3))) <= v6 || ~v9 == 0)
    {
      v9 = 3;
    }
  }

  v17 = a1;
  v13 = *(&v17 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3)));
  v18 = a2;
  return v13 < *(&v18 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3)));
}

BOOL geom_compare_z_order_4f(float32x4_t a1, float32x4_t a2)
{
  v2 = vceqq_f32(a1, a2);
  if ((vminvq_u32(v2) & 0x80000000) != 0)
  {
    return 0;
  }

  v14 = v2;
  *&v7 = __PAIR64__(v4, v3);
  *(&v7 + 1) = __PAIR64__(v6, v5);
  v8 = vmovn_s32(vmvnq_s8(v14)).u8[0];
  v9 = (v8 & 1) - 1;
  if (a1.f32[1] != a2.f32[1])
  {
    v21 = v7;
    if ((v8 & (*(&v21 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v8 & 1) - 1) & 3))) > v4)) == 0)
    {
      v9 = 1;
    }
  }

  if (a1.f32[2] != a2.f32[2])
  {
    v20 = v7;
    if (*(&v20 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3))) <= v5 || ~v9 == 0)
    {
      v9 = 2;
    }
  }

  if (a1.f32[3] != a2.f32[3])
  {
    v19 = v7;
    if (*(&v19 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3))) <= v6 || ~v9 == 0)
    {
      v9 = 3;
    }
  }

  v17 = a1;
  v13 = *(&v17 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3)));
  v18 = a2;
  return v13 < *(&v18 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3)));
}

BOOL geom::compare_z_order<double,(unsigned char)2>(float64x2_t a1, float64x2_t a2)
{
  v2 = vceqq_f64(a1, a2);
  if ((vandq_s8(vdupq_laneq_s64(v2, 1), v2).u64[0] & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v3 = vmovn_s64(vmvnq_s8(v2)).u8[0];
  v4 = ~v3;
  v5 = a1.f64[1];
  v6 = a2.f64[1];
  if (a1.f64[1] != a2.f64[1])
  {
    v11 = a1;
    v12 = a2;
    a1 = v11;
    a2 = v12;
    v15 = __PAIR64__(v8, v7);
    if ((v3 & (*(&v15 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v3 & 1) == 0))) > v8)) == 0)
    {
      v4 = 1;
    }
  }

  v13 = a1;
  v10 = *(&v13 & 0xFFFFFFFFFFFFFFF7 | (8 * (v4 & 1)));
  v14 = a2;
  return v10 < *(&v14 & 0xFFFFFFFFFFFFFFF7 | (8 * (v4 & 1)));
}

BOOL geom_compare_z_order_2d(float64x2_t a1, float64x2_t a2)
{
  v2 = vceqq_f64(a1, a2);
  if ((vandq_s8(vdupq_laneq_s64(v2, 1), v2).u64[0] & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v3 = vmovn_s64(vmvnq_s8(v2)).u8[0];
  v4 = ~v3;
  v5 = a1.f64[1];
  v6 = a2.f64[1];
  if (a1.f64[1] != a2.f64[1])
  {
    v11 = a1;
    v12 = a2;
    a1 = v11;
    a2 = v12;
    v15 = __PAIR64__(v8, v7);
    if ((v3 & (*(&v15 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v3 & 1) == 0))) > v8)) == 0)
    {
      v4 = 1;
    }
  }

  v13 = a1;
  v10 = *(&v13 & 0xFFFFFFFFFFFFFFF7 | (8 * (v4 & 1)));
  v14 = a2;
  return v10 < *(&v14 & 0xFFFFFFFFFFFFFFF7 | (8 * (v4 & 1)));
}

BOOL geom::compare_z_order<double,(unsigned char)3>(uint64_t a1, uint64_t a2)
{
  v7 = *a1;
  v8 = *(a1 + 16);
  v9 = *a2;
  v10 = *(a2 + 16);
  v11 = vceqq_f64(*a1, *a2);
  if (((v11.i64[0] & v11.i64[1] & vceqq_f64(v8, v10).u64[0] & 0x8000000000000000) != 0) != v2)
  {
    return 0;
  }

  v34 = v6;
  v35 = v5;
  v36 = v3;
  v37 = v4;
  v24 = vextq_s8(v7, v7, 8uLL).u64[0];
  v25 = vextq_s8(v9, v9, 8uLL).u64[0];
  v28 = v10;
  v29 = v9;
  v26 = v8;
  v27 = v7;
  *&v15 = v27.i64[0];
  *&v16 = v29.i64[0];
  *&v17 = __PAIR64__(v13, v12);
  DWORD2(v17) = v14;
  if (*v27.i64 == *v29.i64)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  if (*&v27.i64[1] != *&v29.i64[1])
  {
    v33 = v17;
    if (*(&v33 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3))) <= v13 || *v27.i64 == *v29.i64)
    {
      v18 = 1;
    }
  }

  if (v26.f64[0] != v28.f64[0])
  {
    v32 = v17;
    if (*(&v32 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3))) <= v14 || ~v18 == 0)
    {
      v18 = 2;
    }
  }

  *(&v15 + 1) = v24;
  v31[0] = v15;
  v31[1] = v26;
  v22 = v18 & 3;
  v23 = *(v31 + v22);
  *(&v16 + 1) = v25;
  v30[0] = v16;
  v30[1] = v28;
  return v23 < *(v30 + v22);
}

BOOL geom_compare_z_order_3d(uint64_t a1, uint64_t a2)
{
  v7 = *a1;
  v8 = *(a1 + 16);
  v9 = *a2;
  v10 = *(a2 + 16);
  v11 = vceqq_f64(*a1, *a2);
  if (((v11.i64[0] & v11.i64[1] & vceqq_f64(v8, v10).u64[0] & 0x8000000000000000) != 0) != v2)
  {
    return 0;
  }

  v34 = v6;
  v35 = v5;
  v36 = v3;
  v37 = v4;
  v24 = vextq_s8(v7, v7, 8uLL).u64[0];
  v25 = vextq_s8(v9, v9, 8uLL).u64[0];
  v28 = v10;
  v29 = v9;
  v26 = v8;
  v27 = v7;
  *&v15 = v27.i64[0];
  *&v16 = v29.i64[0];
  *&v17 = __PAIR64__(v13, v12);
  DWORD2(v17) = v14;
  if (*v27.i64 == *v29.i64)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  if (*&v27.i64[1] != *&v29.i64[1])
  {
    v33 = v17;
    if (*(&v33 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3))) <= v13 || *v27.i64 == *v29.i64)
    {
      v18 = 1;
    }
  }

  if (v26.f64[0] != v28.f64[0])
  {
    v32 = v17;
    if (*(&v32 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3))) <= v14 || ~v18 == 0)
    {
      v18 = 2;
    }
  }

  *(&v15 + 1) = v24;
  v31[0] = v15;
  v31[1] = v26;
  v22 = v18 & 3;
  v23 = *(v31 + v22);
  *(&v16 + 1) = v25;
  v30[0] = v16;
  v30[1] = v28;
  return v23 < *(v30 + v22);
}

BOOL geom::compare_z_order<double,(unsigned char)4>(float64x2_t *a1, float64x2_t *a2)
{
  v2 = vandq_s8(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1]));
  if ((vandq_s8(v2, vdupq_laneq_s64(v2, 1)).u64[0] & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v15 = *a1;
  v16 = *a2;
  v17 = a1[1];
  v18 = a2[1];
  *&v7 = __PAIR64__(v4, v3);
  *(&v7 + 1) = __PAIR64__(v6, v5);
  if (v15.f64[0] == v16.f64[0])
  {
    v8 = -1;
  }

  else
  {
    v8 = 0;
  }

  if (v15.f64[1] != v16.f64[1])
  {
    v23 = v7;
    if (*(&v23 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3))) <= v4 || v15.f64[0] == v16.f64[0])
    {
      v8 = 1;
    }
  }

  if (v17.f64[0] != v18.f64[0])
  {
    v22 = v7;
    if (*(&v22 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3))) <= v5 || ~v8 == 0)
    {
      v8 = 2;
    }
  }

  if (v17.f64[1] != v18.f64[1])
  {
    v21 = v7;
    if (*(&v21 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3))) <= v6 || ~v8 == 0)
    {
      v8 = 3;
    }
  }

  v20[0] = v15;
  v20[1] = v17;
  v13 = v8 & 3;
  v14 = *(v20 + v13);
  v19[0] = v16;
  v19[1] = v18;
  return v14 < *(v19 + v13);
}

BOOL geom_compare_z_order_4d(float64x2_t *a1, float64x2_t *a2)
{
  v2 = vandq_s8(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1]));
  if ((vandq_s8(v2, vdupq_laneq_s64(v2, 1)).u64[0] & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v15 = *a1;
  v16 = *a2;
  v17 = a1[1];
  v18 = a2[1];
  *&v7 = __PAIR64__(v4, v3);
  *(&v7 + 1) = __PAIR64__(v6, v5);
  if (v15.f64[0] == v16.f64[0])
  {
    v8 = -1;
  }

  else
  {
    v8 = 0;
  }

  if (v15.f64[1] != v16.f64[1])
  {
    v23 = v7;
    if (*(&v23 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3))) <= v4 || v15.f64[0] == v16.f64[0])
    {
      v8 = 1;
    }
  }

  if (v17.f64[0] != v18.f64[0])
  {
    v22 = v7;
    if (*(&v22 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3))) <= v5 || ~v8 == 0)
    {
      v8 = 2;
    }
  }

  if (v17.f64[1] != v18.f64[1])
  {
    v21 = v7;
    if (*(&v21 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3))) <= v6 || ~v8 == 0)
    {
      v8 = 3;
    }
  }

  v20[0] = v15;
  v20[1] = v17;
  v13 = v8 & 3;
  v14 = *(v20 + v13);
  v19[0] = v16;
  v19[1] = v18;
  return v14 < *(v19 + v13);
}

BOOL geom::compare_z_order<unsigned char,(unsigned char)2>(__int16 a1, __int16 a2, uint8x8_t a3, uint8x8_t a4)
{
  HIWORD(v21) = a1;
  LOWORD(v21) = a1;
  a3.i32[0] = v21;
  v4 = vmovl_u8(a3).u64[0];
  HIWORD(v20) = a2;
  LOWORD(v20) = a2;
  a4.i32[0] = v20;
  v5 = vmovl_u8(a4).u64[0];
  if ((vminv_u8(vceq_s8(vuzp1_s8(v4, v4), vuzp1_s8(v5, v5))) & 0x80) != 0)
  {
    return 0;
  }

  v6.i32[0] = a1;
  v6.i32[1] = HIBYTE(a1);
  v7.i32[0] = a2;
  v7.i32[1] = HIBYTE(a2);
  if (a1 == a2)
  {
    v8 = -1;
  }

  else
  {
    v8 = 0;
  }

  if ((vceq_s32(vand_s8(v6, 0xFF000000FFLL), vand_s8(v7, 0xFF000000FFLL)).i32[1] & 1) == 0)
  {
    v9.i32[0] = (a2 ^ a1);
    v9.i32[1] = ((a2 ^ a1) >> 8);
    v10 = vand_s8(v9, 0xFF000000FFLL);
    v11 = vand_s8(vcgt_u32(v10, 0xF0000000FLL), 0x400000004);
    v12 = vshl_u32(v10, vneg_s32(v11));
    v13 = vbic_s8(0x200000002, vceqz_s32((*&v12 & 0xFFFFFF0CFFFFFF0CLL)));
    v19 = vand_s8(vorr_s8(vsub_s32(v11, vtst_s32(vshl_u32(0x200000002, v13), v12)), v13), 0xFF000000FFLL);
    if (*(&v19 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v8 & 1))) <= v19.i32[1] || a1 == a2)
    {
      v8 = 1;
    }
  }

  v18 = v6;
  v15 = *(&v18 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v8 & 1)));
  v17 = v7;
  return v15 < *(&v17 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v8 & 1)));
}

BOOL geom_compare_z_order_2u8(__int16 a1, __int16 a2, uint8x8_t a3, uint8x8_t a4)
{
  HIWORD(v21) = a1;
  LOWORD(v21) = a1;
  a3.i32[0] = v21;
  v4 = vmovl_u8(a3).u64[0];
  HIWORD(v20) = a2;
  LOWORD(v20) = a2;
  a4.i32[0] = v20;
  v5 = vmovl_u8(a4).u64[0];
  if ((vminv_u8(vceq_s8(vuzp1_s8(v4, v4), vuzp1_s8(v5, v5))) & 0x80) != 0)
  {
    return 0;
  }

  v6.i32[0] = a1;
  v6.i32[1] = HIBYTE(a1);
  v7.i32[0] = a2;
  v7.i32[1] = HIBYTE(a2);
  if (a1 == a2)
  {
    v8 = -1;
  }

  else
  {
    v8 = 0;
  }

  if ((vceq_s32(vand_s8(v6, 0xFF000000FFLL), vand_s8(v7, 0xFF000000FFLL)).i32[1] & 1) == 0)
  {
    v9.i32[0] = (a2 ^ a1);
    v9.i32[1] = ((a2 ^ a1) >> 8);
    v10 = vand_s8(v9, 0xFF000000FFLL);
    v11 = vand_s8(vcgt_u32(v10, 0xF0000000FLL), 0x400000004);
    v12 = vshl_u32(v10, vneg_s32(v11));
    v13 = vbic_s8(0x200000002, vceqz_s32((*&v12 & 0xFFFFFF0CFFFFFF0CLL)));
    v19 = vand_s8(vorr_s8(vsub_s32(v11, vtst_s32(vshl_u32(0x200000002, v13), v12)), v13), 0xFF000000FFLL);
    if (*(&v19 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v8 & 1))) <= v19.i32[1] || a1 == a2)
    {
      v8 = 1;
    }
  }

  v18 = v6;
  v15 = *(&v18 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v8 & 1)));
  v17 = v7;
  return v15 < *(&v17 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v8 & 1)));
}

BOOL geom::compare_z_order<unsigned char,(unsigned char)3>(__int32 a1, __int32 a2, int8x8_t a3, int8x8_t a4)
{
  a3.i32[0] = a1;
  v4 = vzip1_s8(a3, a3);
  a4.i32[0] = a2;
  v5 = vzip1_s8(a4, a3);
  v6 = vceq_s16((*&v4 & 0xFF00FF00FF00FFLL), (*&v5 & 0xFF00FF00FF00FFLL));
  v7.i8[0] = v6.i8[0];
  v7.i8[1] = v6.i8[2];
  v7.i8[2] = v6.i8[4];
  v7.i8[3] = v6.i8[4];
  v7.i8[4] = v6.i8[0];
  v7.i8[5] = v6.i8[2];
  v7.i8[6] = v6.i8[4];
  v7.i8[7] = v6.i8[4];
  if ((vminv_u8(v7) & 0x80) != 0)
  {
    return 0;
  }

  v8 = *&veor_s8(v5, v4) & 0xFF00FF00FF00FFLL;
  v9 = vand_s8(vcgt_u16(v8, 0xF000F000FLL), 0x4000400040004);
  v10 = vshl_u16(v8, vneg_s16((*&v9 & 0xFF00FF00FF00FFLL)));
  v11 = vbic_s8(0x2000200020002, vceqz_s16(vand_s8(v10, 0xC000C000CLL)));
  v12 = vmovl_u16(vorr_s8(vsub_s16(v9, vtst_s16(vshl_u16(0x2000200020002, (*&v11 & 0xFF00FF00FF00FFLL)), v10)), v11));
  v13.i64[0] = 0xFF000000FFLL;
  v13.i64[1] = 0xFF000000FFLL;
  v14 = vandq_s8(v12, v13);
  if (a1 == a2)
  {
    v15 = -1;
  }

  else
  {
    v15 = 0;
  }

  if ((v6.i8[2] & 1) == 0)
  {
    v23 = v14;
    if (*(&v23 & 0xFFFFFFFFFFFFFFF3 | (4 * (v15 & 3))) <= v14.i32[1] || a1 == a2)
    {
      v15 = 1;
    }
  }

  if ((v6.i8[4] & 1) == 0)
  {
    v22 = v14;
    if (*(&v22 & 0xFFFFFFFFFFFFFFF3 | (4 * (v15 & 3))) <= v14.i32[2] || ~v15 == 0)
    {
      v15 = 2;
    }
  }

  a3.i16[0] = a1;
  a3.i16[1] = BYTE1(a1);
  a3.i16[2] = BYTE2(a1);
  v20 = a3;
  v18 = *(&v20 & 0xFFFFFFFFFFFFFFF9 | (2 * (v15 & 3)));
  a3.i16[0] = a2;
  a3.i16[1] = BYTE1(a2);
  a3.i16[2] = BYTE2(a2);
  v21 = a3;
  return v18 < *(&v21 & 0xFFFFFFFFFFFFFFF9 | (2 * (v15 & 3)));
}

BOOL geom_compare_z_order_3u8(__int32 a1, __int32 a2, int8x8_t a3, int8x8_t a4)
{
  a3.i32[0] = a1;
  v4 = vzip1_s8(a3, a3);
  a4.i32[0] = a2;
  v5 = vzip1_s8(a4, a3);
  v6 = vceq_s16((*&v4 & 0xFF00FF00FF00FFLL), (*&v5 & 0xFF00FF00FF00FFLL));
  v7.i8[0] = v6.i8[0];
  v7.i8[1] = v6.i8[2];
  v7.i8[2] = v6.i8[4];
  v7.i8[3] = v6.i8[4];
  v7.i8[4] = v6.i8[0];
  v7.i8[5] = v6.i8[2];
  v7.i8[6] = v6.i8[4];
  v7.i8[7] = v6.i8[4];
  if ((vminv_u8(v7) & 0x80) != 0)
  {
    return 0;
  }

  v8 = *&veor_s8(v5, v4) & 0xFF00FF00FF00FFLL;
  v9 = vand_s8(vcgt_u16(v8, 0xF000F000FLL), 0x4000400040004);
  v10 = vshl_u16(v8, vneg_s16((*&v9 & 0xFF00FF00FF00FFLL)));
  v11 = vbic_s8(0x2000200020002, vceqz_s16(vand_s8(v10, 0xC000C000CLL)));
  v12 = vmovl_u16(vorr_s8(vsub_s16(v9, vtst_s16(vshl_u16(0x2000200020002, (*&v11 & 0xFF00FF00FF00FFLL)), v10)), v11));
  v13.i64[0] = 0xFF000000FFLL;
  v13.i64[1] = 0xFF000000FFLL;
  v14 = vandq_s8(v12, v13);
  if (a1 == a2)
  {
    v15 = -1;
  }

  else
  {
    v15 = 0;
  }

  if ((v6.i8[2] & 1) == 0)
  {
    v23 = v14;
    if (*(&v23 & 0xFFFFFFFFFFFFFFF3 | (4 * (v15 & 3))) <= v14.i32[1] || a1 == a2)
    {
      v15 = 1;
    }
  }

  if ((v6.i8[4] & 1) == 0)
  {
    v22 = v14;
    if (*(&v22 & 0xFFFFFFFFFFFFFFF3 | (4 * (v15 & 3))) <= v14.i32[2] || ~v15 == 0)
    {
      v15 = 2;
    }
  }

  a3.i16[0] = a1;
  a3.i16[1] = BYTE1(a1);
  a3.i16[2] = BYTE2(a1);
  v20 = a3;
  v18 = *(&v20 & 0xFFFFFFFFFFFFFFF9 | (2 * (v15 & 3)));
  a3.i16[0] = a2;
  a3.i16[1] = BYTE1(a2);
  a3.i16[2] = BYTE2(a2);
  v21 = a3;
  return v18 < *(&v21 & 0xFFFFFFFFFFFFFFF9 | (2 * (v15 & 3)));
}

BOOL geom::compare_z_order<unsigned char,(unsigned char)4>(__int32 a1, __int32 a2, int8x8_t a3)
{
  a3.i32[0] = a1;
  v3 = vzip1_s8(a3, a3);
  a3.i32[0] = a2;
  v4 = vzip1_s8(a3, a3);
  v5 = vceq_s16((*&v3 & 0xFF00FF00FF00FFLL), (*&v4 & 0xFF00FF00FF00FFLL));
  v6 = vuzp1_s8(v5, v5);
  if ((vminv_u8(v6) & 0x80) != 0)
  {
    return 0;
  }

  v6.i32[0] = a2 ^ a1;
  v7 = *&vzip1_s8(v6, v4) & 0xFF00FF00FF00FFLL;
  v8 = vand_s8(vcgt_u16(v7, 0xF000F000F000FLL), 0x4000400040004);
  v9 = vshl_u16(v7, vneg_s16(v8));
  v10 = vbic_s8(0x2000200020002, vceqz_s16((*&v9 & 0xFF0CFF0CFF0CFF0CLL)));
  v11 = vmovl_u16(vorr_s8(vsub_s16(v8, vtst_s16(vshl_u16(0x2000200020002, v10), v9)), v10));
  v12.i64[0] = 0xFF000000FFLL;
  v12.i64[1] = 0xFF000000FFLL;
  v13 = vandq_s8(v11, v12);
  if (a1 == a2)
  {
    v14 = -1;
  }

  else
  {
    v14 = 0;
  }

  if ((v5.i8[2] & 1) == 0)
  {
    v24 = v13;
    if (*(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3))) <= v13.i32[1] || a1 == a2)
    {
      v14 = 1;
    }
  }

  if ((v5.i8[4] & 1) == 0)
  {
    v23 = v13;
    if (*(&v23 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3))) <= v13.i32[2] || ~v14 == 0)
    {
      v14 = 2;
    }
  }

  if ((v5.i8[6] & 1) == 0)
  {
    v22 = v13;
    if (*(&v22 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3))) <= v13.i32[3] || ~v14 == 0)
    {
      v14 = 3;
    }
  }

  v21 = v3;
  v18 = *(&v21 & 0xFFFFFFFFFFFFFFF9 | (2 * (v14 & 3)));
  v20 = v4;
  return v18 < *(&v20 & 0xFFFFFFFFFFFFFFF9 | (2 * (v14 & 3)));
}

BOOL geom_compare_z_order_4u8(__int32 a1, __int32 a2, int8x8_t a3)
{
  a3.i32[0] = a1;
  v3 = vzip1_s8(a3, a3);
  a3.i32[0] = a2;
  v4 = vzip1_s8(a3, a3);
  v5 = vceq_s16((*&v3 & 0xFF00FF00FF00FFLL), (*&v4 & 0xFF00FF00FF00FFLL));
  v6 = vuzp1_s8(v5, v5);
  if ((vminv_u8(v6) & 0x80) != 0)
  {
    return 0;
  }

  v6.i32[0] = a2 ^ a1;
  v7 = *&vzip1_s8(v6, v4) & 0xFF00FF00FF00FFLL;
  v8 = vand_s8(vcgt_u16(v7, 0xF000F000F000FLL), 0x4000400040004);
  v9 = vshl_u16(v7, vneg_s16(v8));
  v10 = vbic_s8(0x2000200020002, vceqz_s16((*&v9 & 0xFF0CFF0CFF0CFF0CLL)));
  v11 = vmovl_u16(vorr_s8(vsub_s16(v8, vtst_s16(vshl_u16(0x2000200020002, v10), v9)), v10));
  v12.i64[0] = 0xFF000000FFLL;
  v12.i64[1] = 0xFF000000FFLL;
  v13 = vandq_s8(v11, v12);
  if (a1 == a2)
  {
    v14 = -1;
  }

  else
  {
    v14 = 0;
  }

  if ((v5.i8[2] & 1) == 0)
  {
    v24 = v13;
    if (*(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3))) <= v13.i32[1] || a1 == a2)
    {
      v14 = 1;
    }
  }

  if ((v5.i8[4] & 1) == 0)
  {
    v23 = v13;
    if (*(&v23 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3))) <= v13.i32[2] || ~v14 == 0)
    {
      v14 = 2;
    }
  }

  if ((v5.i8[6] & 1) == 0)
  {
    v22 = v13;
    if (*(&v22 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3))) <= v13.i32[3] || ~v14 == 0)
    {
      v14 = 3;
    }
  }

  v21 = v3;
  v18 = *(&v21 & 0xFFFFFFFFFFFFFFF9 | (2 * (v14 & 3)));
  v20 = v4;
  return v18 < *(&v20 & 0xFFFFFFFFFFFFFFF9 | (2 * (v14 & 3)));
}

BOOL geom::compare_z_order<unsigned short,(unsigned char)2>(__int32 a1, __int32 a2, uint16x4_t a3)
{
  a3.i32[0] = a1;
  v3 = vmovl_u16(a3).u64[0];
  a3.i32[0] = a2;
  v4 = vmovl_u16(a3).u64[0];
  v5 = vceq_s32(vand_s8(v3, 0xFFFF0000FFFFLL), vand_s8(v4, 0xFFFF0000FFFFLL));
  if ((vminv_u16(vuzp1_s16(v5, v5)) & 0x8000) != 0)
  {
    return 0;
  }

  if (a1 == a2)
  {
    v6 = -1;
  }

  else
  {
    v6 = 0;
  }

  if ((v5.i8[4] & 1) == 0)
  {
    v5.i32[0] = a2 ^ a1;
    v7 = vmovl_u16(v5).u64[0];
    v8 = vand_s8(vcgt_u32(v7, 0xFF000000FFLL), 0x800000008);
    v9 = vshl_u32(v7, vneg_s32(v8));
    v10 = vbic_s8(0x400000004, vceqz_s32(vand_s8(v9, 0xF0000000F0)));
    v11 = vshl_u32(v9, vneg_s32(v10));
    v12 = vbic_s8(0x200000002, vceqz_s32(vand_s8(v11, 0xC0000000CLL)));
    v18 = vand_s8(vorr_s8(vsub_s32(v8, vtst_s32(vshl_u32(0x200000002, v12), v11)), vorr_s8(v10, v12)), 0xFFFF0000FFFFLL);
    if (*(&v18 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v6 & 1))) <= v18.i32[1] || a1 == a2)
    {
      v6 = 1;
    }
  }

  v17 = v3;
  v14 = *(&v17 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v6 & 1)));
  v16 = v4;
  return v14 < *(&v16 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v6 & 1)));
}

BOOL geom_compare_z_order_2u16(__int32 a1, __int32 a2, uint16x4_t a3)
{
  a3.i32[0] = a1;
  v3 = vmovl_u16(a3).u64[0];
  a3.i32[0] = a2;
  v4 = vmovl_u16(a3).u64[0];
  v5 = vceq_s32(vand_s8(v3, 0xFFFF0000FFFFLL), vand_s8(v4, 0xFFFF0000FFFFLL));
  if ((vminv_u16(vuzp1_s16(v5, v5)) & 0x8000) != 0)
  {
    return 0;
  }

  if (a1 == a2)
  {
    v6 = -1;
  }

  else
  {
    v6 = 0;
  }

  if ((v5.i8[4] & 1) == 0)
  {
    v5.i32[0] = a2 ^ a1;
    v7 = vmovl_u16(v5).u64[0];
    v8 = vand_s8(vcgt_u32(v7, 0xFF000000FFLL), 0x800000008);
    v9 = vshl_u32(v7, vneg_s32(v8));
    v10 = vbic_s8(0x400000004, vceqz_s32(vand_s8(v9, 0xF0000000F0)));
    v11 = vshl_u32(v9, vneg_s32(v10));
    v12 = vbic_s8(0x200000002, vceqz_s32(vand_s8(v11, 0xC0000000CLL)));
    v18 = vand_s8(vorr_s8(vsub_s32(v8, vtst_s32(vshl_u32(0x200000002, v12), v11)), vorr_s8(v10, v12)), 0xFFFF0000FFFFLL);
    if (*(&v18 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v6 & 1))) <= v18.i32[1] || a1 == a2)
    {
      v6 = 1;
    }
  }

  v17 = v3;
  v14 = *(&v17 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v6 & 1)));
  v16 = v4;
  return v14 < *(&v16 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v6 & 1)));
}

BOOL geom::compare_z_order<unsigned short,(unsigned char)3>(int16x4_t a1, int16x4_t a2)
{
  v2 = vceq_s16(a1, a2);
  v3 = v2;
  v3.i16[3] = v2.i16[2];
  if ((vminv_u16(v3) & 0x8000) != 0)
  {
    return 0;
  }

  v4 = veor_s8(a2, a1);
  v5 = vand_s8(vcgt_u16(v4, 0xFF00FF00FF00FFLL), 0x8000800080008);
  v6 = vshl_u16(v4, vneg_s16(v5));
  v7 = vbic_s8(0x4000400040004, vceqz_s16(vand_s8(v6, 0xF000F000F000F0)));
  v8 = vshl_u16(v6, vneg_s16(v7));
  v9 = vbic_s8(0x2000200020002, vceqz_s16(vand_s8(v8, 0xC000C000C000CLL)));
  v10 = vmovl_u16(vorr_s8(vsub_s16(v5, vtst_s16(vshl_u16(0x2000200020002, v9), v8)), vorr_s8(v7, v9)));
  v11 = vmvn_s8(v2).u8[0];
  v12 = (v11 & 1) - 1;
  if ((v2.i8[2] & 1) == 0)
  {
    v19 = v10;
    if ((v11 & (*(&v19 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v11 & 1) - 1) & 3))) > v10.i32[1])) == 0)
    {
      v12 = 1;
    }
  }

  if ((v2.i8[4] & 1) == 0)
  {
    v18 = v10;
    if (*(&v18 & 0xFFFFFFFFFFFFFFF3 | (4 * (v12 & 3))) <= v10.i32[2] || ~v12 == 0)
    {
      v12 = 2;
    }
  }

  v17 = a1;
  v14 = *(&v17 & 0xFFFFFFFFFFFFFFF9 | (2 * (v12 & 3)));
  v16 = a2;
  return v14 < *(&v16 & 0xFFFFFFFFFFFFFFF9 | (2 * (v12 & 3)));
}

BOOL geom_compare_z_order_3u16(int16x4_t a1, int16x4_t a2)
{
  v2 = vceq_s16(a1, a2);
  v3 = v2;
  v3.i16[3] = v2.i16[2];
  if ((vminv_u16(v3) & 0x8000) != 0)
  {
    return 0;
  }

  v4 = veor_s8(a2, a1);
  v5 = vand_s8(vcgt_u16(v4, 0xFF00FF00FF00FFLL), 0x8000800080008);
  v6 = vshl_u16(v4, vneg_s16(v5));
  v7 = vbic_s8(0x4000400040004, vceqz_s16(vand_s8(v6, 0xF000F000F000F0)));
  v8 = vshl_u16(v6, vneg_s16(v7));
  v9 = vbic_s8(0x2000200020002, vceqz_s16(vand_s8(v8, 0xC000C000C000CLL)));
  v10 = vmovl_u16(vorr_s8(vsub_s16(v5, vtst_s16(vshl_u16(0x2000200020002, v9), v8)), vorr_s8(v7, v9)));
  v11 = vmvn_s8(v2).u8[0];
  v12 = (v11 & 1) - 1;
  if ((v2.i8[2] & 1) == 0)
  {
    v19 = v10;
    if ((v11 & (*(&v19 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v11 & 1) - 1) & 3))) > v10.i32[1])) == 0)
    {
      v12 = 1;
    }
  }

  if ((v2.i8[4] & 1) == 0)
  {
    v18 = v10;
    if (*(&v18 & 0xFFFFFFFFFFFFFFF3 | (4 * (v12 & 3))) <= v10.i32[2] || ~v12 == 0)
    {
      v12 = 2;
    }
  }

  v17 = a1;
  v14 = *(&v17 & 0xFFFFFFFFFFFFFFF9 | (2 * (v12 & 3)));
  v16 = a2;
  return v14 < *(&v16 & 0xFFFFFFFFFFFFFFF9 | (2 * (v12 & 3)));
}

BOOL geom::compare_z_order<unsigned short,(unsigned char)4>(int16x4_t a1, int16x4_t a2)
{
  v2 = vceq_s16(a1, a2);
  if ((vminv_u16(v2) & 0x8000) != 0)
  {
    return 0;
  }

  v3 = veor_s8(a2, a1);
  v4 = vand_s8(vcgt_u16(v3, 0xFF00FF00FF00FFLL), 0x8000800080008);
  v5 = vshl_u16(v3, vneg_s16(v4));
  v6 = vbic_s8(0x4000400040004, vceqz_s16(vand_s8(v5, 0xF000F000F000F0)));
  v7 = vshl_u16(v5, vneg_s16(v6));
  v8 = vbic_s8(0x2000200020002, vceqz_s16(vand_s8(v7, 0xC000C000C000CLL)));
  v9 = vmovl_u16(vorr_s8(vsub_s16(v4, vtst_s16(vshl_u16(0x2000200020002, v8), v7)), vorr_s8(v6, v8)));
  v10 = vmvn_s8(v2).u8[0];
  v11 = (v10 & 1) - 1;
  if ((v2.i8[2] & 1) == 0)
  {
    v20 = v9;
    if ((v10 & (*(&v20 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v10 & 1) - 1) & 3))) > v9.i32[1])) == 0)
    {
      v11 = 1;
    }
  }

  if ((v2.i8[4] & 1) == 0)
  {
    v19 = v9;
    if (*(&v19 & 0xFFFFFFFFFFFFFFF3 | (4 * (v11 & 3))) <= v9.i32[2] || ~v11 == 0)
    {
      v11 = 2;
    }
  }

  if ((v2.i8[6] & 1) == 0)
  {
    v18 = v9;
    if (*(&v18 & 0xFFFFFFFFFFFFFFF3 | (4 * (v11 & 3))) <= v9.i32[3] || ~v11 == 0)
    {
      v11 = 3;
    }
  }

  v17 = a1;
  v14 = *(&v17 & 0xFFFFFFFFFFFFFFF9 | (2 * (v11 & 3)));
  v16 = a2;
  return v14 < *(&v16 & 0xFFFFFFFFFFFFFFF9 | (2 * (v11 & 3)));
}

BOOL geom_compare_z_order_4u16(int16x4_t a1, int16x4_t a2)
{
  v2 = vceq_s16(a1, a2);
  if ((vminv_u16(v2) & 0x8000) != 0)
  {
    return 0;
  }

  v3 = veor_s8(a2, a1);
  v4 = vand_s8(vcgt_u16(v3, 0xFF00FF00FF00FFLL), 0x8000800080008);
  v5 = vshl_u16(v3, vneg_s16(v4));
  v6 = vbic_s8(0x4000400040004, vceqz_s16(vand_s8(v5, 0xF000F000F000F0)));
  v7 = vshl_u16(v5, vneg_s16(v6));
  v8 = vbic_s8(0x2000200020002, vceqz_s16(vand_s8(v7, 0xC000C000C000CLL)));
  v9 = vmovl_u16(vorr_s8(vsub_s16(v4, vtst_s16(vshl_u16(0x2000200020002, v8), v7)), vorr_s8(v6, v8)));
  v10 = vmvn_s8(v2).u8[0];
  v11 = (v10 & 1) - 1;
  if ((v2.i8[2] & 1) == 0)
  {
    v20 = v9;
    if ((v10 & (*(&v20 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v10 & 1) - 1) & 3))) > v9.i32[1])) == 0)
    {
      v11 = 1;
    }
  }

  if ((v2.i8[4] & 1) == 0)
  {
    v19 = v9;
    if (*(&v19 & 0xFFFFFFFFFFFFFFF3 | (4 * (v11 & 3))) <= v9.i32[2] || ~v11 == 0)
    {
      v11 = 2;
    }
  }

  if ((v2.i8[6] & 1) == 0)
  {
    v18 = v9;
    if (*(&v18 & 0xFFFFFFFFFFFFFFF3 | (4 * (v11 & 3))) <= v9.i32[3] || ~v11 == 0)
    {
      v11 = 3;
    }
  }

  v17 = a1;
  v14 = *(&v17 & 0xFFFFFFFFFFFFFFF9 | (2 * (v11 & 3)));
  v16 = a2;
  return v14 < *(&v16 & 0xFFFFFFFFFFFFFFF9 | (2 * (v11 & 3)));
}

BOOL geom::compare_z_order<unsigned int,(unsigned char)2>(int32x2_t a1, int32x2_t a2)
{
  v2 = vceq_s32(a1, a2);
  if ((vpmin_u32(v2, v2).u32[0] & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = vmvn_s8(v2).u8[0];
  v4 = ~v3;
  if ((v2.i8[4] & 1) == 0)
  {
    v5 = veor_s8(a2, a1);
    v6 = vand_s8(vcgt_u32(v5, 0xFFFF0000FFFFLL), 0x1000000010);
    v7 = vshl_u32(v5, vneg_s32(v6));
    v8 = vbic_s8(0x800000008, vceqz_s32(vand_s8(v7, 0xFF000000FF00)));
    v9 = vshl_u32(v7, vneg_s32(v8));
    v10 = vbic_s8(0x400000004, vceqz_s32(vand_s8(v9, 0xF0000000F0)));
    v11 = vshl_u32(v9, vneg_s32(v10));
    v12 = vbic_s8(0x200000002, vceqz_s32(vand_s8(v11, 0xC0000000CLL)));
    v17 = vorr_s8(vsub_s32(v6, vtst_s32(vshl_u32(0x200000002, v12), v11)), vorr_s8(vorr_s8(v8, v10), v12));
    if ((v3 & (*(&v17 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v3 & 1) == 0))) > v17.i32[1])) == 0)
    {
      v4 = 1;
    }
  }

  v15 = a1;
  v13 = *(&v15 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v4 & 1)));
  v16 = a2;
  return v13 < *(&v16 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v4 & 1)));
}

BOOL geom_compare_z_order_2u(int32x2_t a1, int32x2_t a2)
{
  v2 = vceq_s32(a1, a2);
  if ((vpmin_u32(v2, v2).u32[0] & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = vmvn_s8(v2).u8[0];
  v4 = ~v3;
  if ((v2.i8[4] & 1) == 0)
  {
    v5 = veor_s8(a2, a1);
    v6 = vand_s8(vcgt_u32(v5, 0xFFFF0000FFFFLL), 0x1000000010);
    v7 = vshl_u32(v5, vneg_s32(v6));
    v8 = vbic_s8(0x800000008, vceqz_s32(vand_s8(v7, 0xFF000000FF00)));
    v9 = vshl_u32(v7, vneg_s32(v8));
    v10 = vbic_s8(0x400000004, vceqz_s32(vand_s8(v9, 0xF0000000F0)));
    v11 = vshl_u32(v9, vneg_s32(v10));
    v12 = vbic_s8(0x200000002, vceqz_s32(vand_s8(v11, 0xC0000000CLL)));
    v17 = vorr_s8(vsub_s32(v6, vtst_s32(vshl_u32(0x200000002, v12), v11)), vorr_s8(vorr_s8(v8, v10), v12));
    if ((v3 & (*(&v17 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v3 & 1) == 0))) > v17.i32[1])) == 0)
    {
      v4 = 1;
    }
  }

  v15 = a1;
  v13 = *(&v15 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v4 & 1)));
  v16 = a2;
  return v13 < *(&v16 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v4 & 1)));
}

BOOL geom::compare_z_order<unsigned int,(unsigned char)3>(int32x4_t a1, int32x4_t a2)
{
  v2 = vceqq_s32(a1, a2);
  v3 = v2;
  v3.i32[3] = v2.i32[2];
  if ((vminvq_u32(v3) & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = veorq_s8(a2, a1);
  v5.i64[0] = 0xFFFF0000FFFFLL;
  v5.i64[1] = 0xFFFF0000FFFFLL;
  v6.i64[0] = 0x1000000010;
  v6.i64[1] = 0x1000000010;
  v7 = vandq_s8(vcgtq_u32(v4, v5), v6);
  v8 = vshlq_u32(v4, vnegq_s32(v7));
  v6.i64[0] = 0xFF000000FF00;
  v6.i64[1] = 0xFF000000FF00;
  v9.i64[0] = 0x800000008;
  v9.i64[1] = 0x800000008;
  v10 = vbicq_s8(v9, vceqzq_s32(vandq_s8(v8, v6)));
  v11 = vshlq_u32(v8, vnegq_s32(v10));
  v9.i64[0] = 0xF0000000F0;
  v9.i64[1] = 0xF0000000F0;
  v12.i64[0] = 0x400000004;
  v12.i64[1] = 0x400000004;
  v13 = vbicq_s8(v12, vceqzq_s32(vandq_s8(v11, v9)));
  v14 = vshlq_u32(v11, vnegq_s32(v13));
  v12.i64[0] = 0xC0000000CLL;
  v12.i64[1] = 0xC0000000CLL;
  v15.i64[0] = 0x200000002;
  v15.i64[1] = 0x200000002;
  v16 = vbicq_s8(v15, vceqzq_s32(vandq_s8(v14, v12)));
  v17 = vmovn_s32(vmvnq_s8(v2)).u8[0];
  v18 = vorrq_s8(vsubq_s32(v7, vtstq_s32(vshlq_u32(v15, v16), v14)), vorrq_s8(vorrq_s8(v10, v13), v16));
  v19 = (v17 & 1) - 1;
  v20 = vmovn_s32(v2);
  if ((v20.i8[2] & 1) == 0)
  {
    v27 = v18;
    if ((v17 & (*(&v27 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v17 & 1) - 1) & 3))) > v18.i32[1])) == 0)
    {
      v19 = 1;
    }
  }

  if ((v20.i8[4] & 1) == 0)
  {
    v26 = v18;
    if (*(&v26 & 0xFFFFFFFFFFFFFFF3 | (4 * (v19 & 3))) <= v18.i32[2] || ~v19 == 0)
    {
      v19 = 2;
    }
  }

  v25 = a1;
  v22 = *(&v25 & 0xFFFFFFFFFFFFFFF3 | (4 * (v19 & 3)));
  v24 = a2;
  return v22 < *(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v19 & 3)));
}

BOOL geom_compare_z_order_3u(int32x4_t a1, int32x4_t a2)
{
  v2 = vceqq_s32(a1, a2);
  v3 = v2;
  v3.i32[3] = v2.i32[2];
  if ((vminvq_u32(v3) & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = veorq_s8(a2, a1);
  v5.i64[0] = 0xFFFF0000FFFFLL;
  v5.i64[1] = 0xFFFF0000FFFFLL;
  v6.i64[0] = 0x1000000010;
  v6.i64[1] = 0x1000000010;
  v7 = vandq_s8(vcgtq_u32(v4, v5), v6);
  v8 = vshlq_u32(v4, vnegq_s32(v7));
  v6.i64[0] = 0xFF000000FF00;
  v6.i64[1] = 0xFF000000FF00;
  v9.i64[0] = 0x800000008;
  v9.i64[1] = 0x800000008;
  v10 = vbicq_s8(v9, vceqzq_s32(vandq_s8(v8, v6)));
  v11 = vshlq_u32(v8, vnegq_s32(v10));
  v9.i64[0] = 0xF0000000F0;
  v9.i64[1] = 0xF0000000F0;
  v12.i64[0] = 0x400000004;
  v12.i64[1] = 0x400000004;
  v13 = vbicq_s8(v12, vceqzq_s32(vandq_s8(v11, v9)));
  v14 = vshlq_u32(v11, vnegq_s32(v13));
  v12.i64[0] = 0xC0000000CLL;
  v12.i64[1] = 0xC0000000CLL;
  v15.i64[0] = 0x200000002;
  v15.i64[1] = 0x200000002;
  v16 = vbicq_s8(v15, vceqzq_s32(vandq_s8(v14, v12)));
  v17 = vmovn_s32(vmvnq_s8(v2)).u8[0];
  v18 = vorrq_s8(vsubq_s32(v7, vtstq_s32(vshlq_u32(v15, v16), v14)), vorrq_s8(vorrq_s8(v10, v13), v16));
  v19 = (v17 & 1) - 1;
  v20 = vmovn_s32(v2);
  if ((v20.i8[2] & 1) == 0)
  {
    v27 = v18;
    if ((v17 & (*(&v27 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v17 & 1) - 1) & 3))) > v18.i32[1])) == 0)
    {
      v19 = 1;
    }
  }

  if ((v20.i8[4] & 1) == 0)
  {
    v26 = v18;
    if (*(&v26 & 0xFFFFFFFFFFFFFFF3 | (4 * (v19 & 3))) <= v18.i32[2] || ~v19 == 0)
    {
      v19 = 2;
    }
  }

  v25 = a1;
  v22 = *(&v25 & 0xFFFFFFFFFFFFFFF3 | (4 * (v19 & 3)));
  v24 = a2;
  return v22 < *(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v19 & 3)));
}

BOOL geom::compare_z_order<unsigned int,(unsigned char)4>(int32x4_t a1, int32x4_t a2)
{
  v2 = vceqq_s32(a1, a2);
  if ((vminvq_u32(v2) & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = veorq_s8(a2, a1);
  v4.i64[0] = 0xFFFF0000FFFFLL;
  v4.i64[1] = 0xFFFF0000FFFFLL;
  v5.i64[0] = 0x1000000010;
  v5.i64[1] = 0x1000000010;
  v6 = vandq_s8(vcgtq_u32(v3, v4), v5);
  v7 = vshlq_u32(v3, vnegq_s32(v6));
  v5.i64[0] = 0xFF000000FF00;
  v5.i64[1] = 0xFF000000FF00;
  v8.i64[0] = 0x800000008;
  v8.i64[1] = 0x800000008;
  v9 = vbicq_s8(v8, vceqzq_s32(vandq_s8(v7, v5)));
  v10 = vshlq_u32(v7, vnegq_s32(v9));
  v8.i64[0] = 0xF0000000F0;
  v8.i64[1] = 0xF0000000F0;
  v11.i64[0] = 0x400000004;
  v11.i64[1] = 0x400000004;
  v12 = vbicq_s8(v11, vceqzq_s32(vandq_s8(v10, v8)));
  v13 = vshlq_u32(v10, vnegq_s32(v12));
  v11.i64[0] = 0xC0000000CLL;
  v11.i64[1] = 0xC0000000CLL;
  v14.i64[0] = 0x200000002;
  v14.i64[1] = 0x200000002;
  v15 = vbicq_s8(v14, vceqzq_s32(vandq_s8(v13, v11)));
  v16 = vmovn_s32(vmvnq_s8(v2)).u8[0];
  v17 = vorrq_s8(vsubq_s32(v6, vtstq_s32(vshlq_u32(v14, v15), v13)), vorrq_s8(vorrq_s8(v9, v12), v15));
  v18 = (v16 & 1) - 1;
  v19 = vmovn_s32(v2);
  if ((v19.i8[2] & 1) == 0)
  {
    v28 = v17;
    if ((v16 & (*(&v28 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v16 & 1) - 1) & 3))) > v17.i32[1])) == 0)
    {
      v18 = 1;
    }
  }

  if ((v19.i8[4] & 1) == 0)
  {
    v27 = v17;
    if (*(&v27 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3))) <= v17.i32[2] || ~v18 == 0)
    {
      v18 = 2;
    }
  }

  if ((v19.i8[6] & 1) == 0)
  {
    v26 = v17;
    if (*(&v26 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3))) <= v17.i32[3] || ~v18 == 0)
    {
      v18 = 3;
    }
  }

  v24 = a1;
  v22 = *(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3)));
  v25 = a2;
  return v22 < *(&v25 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3)));
}

BOOL geom_compare_z_order_4u(int32x4_t a1, int32x4_t a2)
{
  v2 = vceqq_s32(a1, a2);
  if ((vminvq_u32(v2) & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = veorq_s8(a2, a1);
  v4.i64[0] = 0xFFFF0000FFFFLL;
  v4.i64[1] = 0xFFFF0000FFFFLL;
  v5.i64[0] = 0x1000000010;
  v5.i64[1] = 0x1000000010;
  v6 = vandq_s8(vcgtq_u32(v3, v4), v5);
  v7 = vshlq_u32(v3, vnegq_s32(v6));
  v5.i64[0] = 0xFF000000FF00;
  v5.i64[1] = 0xFF000000FF00;
  v8.i64[0] = 0x800000008;
  v8.i64[1] = 0x800000008;
  v9 = vbicq_s8(v8, vceqzq_s32(vandq_s8(v7, v5)));
  v10 = vshlq_u32(v7, vnegq_s32(v9));
  v8.i64[0] = 0xF0000000F0;
  v8.i64[1] = 0xF0000000F0;
  v11.i64[0] = 0x400000004;
  v11.i64[1] = 0x400000004;
  v12 = vbicq_s8(v11, vceqzq_s32(vandq_s8(v10, v8)));
  v13 = vshlq_u32(v10, vnegq_s32(v12));
  v11.i64[0] = 0xC0000000CLL;
  v11.i64[1] = 0xC0000000CLL;
  v14.i64[0] = 0x200000002;
  v14.i64[1] = 0x200000002;
  v15 = vbicq_s8(v14, vceqzq_s32(vandq_s8(v13, v11)));
  v16 = vmovn_s32(vmvnq_s8(v2)).u8[0];
  v17 = vorrq_s8(vsubq_s32(v6, vtstq_s32(vshlq_u32(v14, v15), v13)), vorrq_s8(vorrq_s8(v9, v12), v15));
  v18 = (v16 & 1) - 1;
  v19 = vmovn_s32(v2);
  if ((v19.i8[2] & 1) == 0)
  {
    v28 = v17;
    if ((v16 & (*(&v28 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v16 & 1) - 1) & 3))) > v17.i32[1])) == 0)
    {
      v18 = 1;
    }
  }

  if ((v19.i8[4] & 1) == 0)
  {
    v27 = v17;
    if (*(&v27 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3))) <= v17.i32[2] || ~v18 == 0)
    {
      v18 = 2;
    }
  }

  if ((v19.i8[6] & 1) == 0)
  {
    v26 = v17;
    if (*(&v26 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3))) <= v17.i32[3] || ~v18 == 0)
    {
      v18 = 3;
    }
  }

  v24 = a1;
  v22 = *(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3)));
  v25 = a2;
  return v22 < *(&v25 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3)));
}

BOOL geom::compare_z_order<unsigned long long,(unsigned char)2>(int64x2_t a1, int64x2_t a2)
{
  v2 = vceqq_s64(a1, a2);
  if ((vandq_s8(vdupq_laneq_s64(v2, 1), v2).u64[0] & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v3 = vmovn_s64(vmvnq_s8(v2)).u8[0];
  v4 = ~v3;
  if ((vmovn_s64(*&v2).i32[1] & 1) == 0)
  {
    v5 = veorq_s8(a2, a1);
    v6.i64[0] = 0xFFFFFFFFLL;
    v6.i64[1] = 0xFFFFFFFFLL;
    v7 = vandq_s8(vcgtq_u64(v5, v6), vdupq_n_s64(0x20uLL));
    v8 = vshlq_u64(v5, vnegq_s64(v7));
    v9.i64[0] = 4294901760;
    v9.i64[1] = 4294901760;
    v10 = vbicq_s8(vdupq_n_s64(0x10uLL), vceqzq_s64(vandq_s8(v8, v9)));
    v11 = vshlq_u64(v8, vnegq_s64(v10));
    v12.i64[0] = 65280;
    v12.i64[1] = 65280;
    v13 = vbicq_s8(vdupq_n_s64(8uLL), vceqzq_s64(vandq_s8(v11, v12)));
    v14 = vshlq_u64(v11, vnegq_s64(v13));
    v15 = vbicq_s8(vdupq_n_s64(4uLL), vceqzq_s64(vandq_s8(v14, vdupq_n_s64(0xF0uLL))));
    v16 = vshlq_u64(v14, vnegq_s64(v15));
    v17 = vdupq_n_s64(2uLL);
    v18 = vbicq_s8(v17, vceqzq_s64(vandq_s8(v16, vdupq_n_s64(0xCuLL))));
    v23 = vmovn_s64(vorrq_s8(vsubq_s64(v7, vtstq_s64(vshlq_u64(v17, v18), v16)), vorrq_s8(vorrq_s8(vorrq_s8(v10, v13), v15), v18)));
    if ((v3 & (*(&v23 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v3 & 1) == 0))) > v23.i32[1])) == 0)
    {
      v4 = 1;
    }
  }

  v21 = a1;
  v19 = *(&v21 & 0xFFFFFFFFFFFFFFF7 | (8 * (v4 & 1)));
  v22 = a2;
  return v19 < *(&v22 & 0xFFFFFFFFFFFFFFF7 | (8 * (v4 & 1)));
}

BOOL geom_compare_z_order_2u64(int64x2_t a1, int64x2_t a2)
{
  v2 = vceqq_s64(a1, a2);
  if ((vandq_s8(vdupq_laneq_s64(v2, 1), v2).u64[0] & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v3 = vmovn_s64(vmvnq_s8(v2)).u8[0];
  v4 = ~v3;
  if ((vmovn_s64(*&v2).i32[1] & 1) == 0)
  {
    v5 = veorq_s8(a2, a1);
    v6.i64[0] = 0xFFFFFFFFLL;
    v6.i64[1] = 0xFFFFFFFFLL;
    v7 = vandq_s8(vcgtq_u64(v5, v6), vdupq_n_s64(0x20uLL));
    v8 = vshlq_u64(v5, vnegq_s64(v7));
    v9.i64[0] = 4294901760;
    v9.i64[1] = 4294901760;
    v10 = vbicq_s8(vdupq_n_s64(0x10uLL), vceqzq_s64(vandq_s8(v8, v9)));
    v11 = vshlq_u64(v8, vnegq_s64(v10));
    v12.i64[0] = 65280;
    v12.i64[1] = 65280;
    v13 = vbicq_s8(vdupq_n_s64(8uLL), vceqzq_s64(vandq_s8(v11, v12)));
    v14 = vshlq_u64(v11, vnegq_s64(v13));
    v15 = vbicq_s8(vdupq_n_s64(4uLL), vceqzq_s64(vandq_s8(v14, vdupq_n_s64(0xF0uLL))));
    v16 = vshlq_u64(v14, vnegq_s64(v15));
    v17 = vdupq_n_s64(2uLL);
    v18 = vbicq_s8(v17, vceqzq_s64(vandq_s8(v16, vdupq_n_s64(0xCuLL))));
    v23 = vmovn_s64(vorrq_s8(vsubq_s64(v7, vtstq_s64(vshlq_u64(v17, v18), v16)), vorrq_s8(vorrq_s8(vorrq_s8(v10, v13), v15), v18)));
    if ((v3 & (*(&v23 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v3 & 1) == 0))) > v23.i32[1])) == 0)
    {
      v4 = 1;
    }
  }

  v21 = a1;
  v19 = *(&v21 & 0xFFFFFFFFFFFFFFF7 | (8 * (v4 & 1)));
  v22 = a2;
  return v19 < *(&v22 & 0xFFFFFFFFFFFFFFF7 | (8 * (v4 & 1)));
}

BOOL geom::compare_z_order<unsigned long long,(unsigned char)3>(int64x2_t *a1, int64x2_t *a2)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *a2;
  v11 = a2[1];
  v12 = vceqq_s64(v9, v11);
  v13 = vceqq_s64(*a1, *a2);
  if ((v13.i64[0] & v13.i64[1] & v12.i64[0]) < 0 != v2)
  {
    return 0;
  }

  v14 = vextq_s8(v8, v8, 8uLL).u64[0];
  v15 = vextq_s8(v10, v10, 8uLL).u64[0];
  v16 = veorq_s8(v11, v9);
  v17 = veorq_s8(v10, v8);
  v18.i64[0] = 0xFFFFFFFFLL;
  v18.i64[1] = 0xFFFFFFFFLL;
  v19 = vcgtq_u64(v17, v18);
  v3.i64[0] = 32;
  v20 = vandq_s8(vcgtq_u64(v16, v18), v3);
  v21 = vandq_s8(v19, vdupq_n_s64(0x20uLL));
  v22 = vshlq_u64(v17, vnegq_s64(v21));
  v23 = vshlq_u64(v16, vnegq_s64(v20));
  LOBYTE(v24) = 0;
  v16.i16[0] = 0;
  v16.i16[1] = v23.i16[1];
  v17.i64[0] = 4294901760;
  v17.i64[1] = 4294901760;
  v4.i64[0] = 16;
  v25 = vbicq_s8(v4, vceqzq_s64(v16.u32[0]));
  v26 = vbicq_s8(vdupq_n_s64(0x10uLL), vceqzq_s64(vandq_s8(v22, v17)));
  v27 = vshlq_u64(v22, vnegq_s64(v26));
  v28 = vshlq_u64(v23, vnegq_s64(v25));
  HIBYTE(v24) = v28.i8[1];
  v29.i64[0] = 65280;
  v29.i64[1] = 65280;
  v5.i64[0] = 8;
  v30 = vbicq_s8(v5, vceqzq_s64(v24));
  v31 = vbicq_s8(vdupq_n_s64(8uLL), vceqzq_s64(vandq_s8(v27, v29)));
  v32 = vshlq_u64(v27, vnegq_s64(v31));
  v33 = vshlq_u64(v28, vnegq_s64(v30));
  v5.i64[0] = 240;
  v6.i64[0] = 4;
  v34 = vbicq_s8(v6, vceqzq_s64(vandq_s8(v33, v5)));
  v35 = vbicq_s8(vdupq_n_s64(4uLL), vceqzq_s64(vandq_s8(v32, vdupq_n_s64(0xF0uLL))));
  v36 = vshlq_u64(v32, vnegq_s64(v35));
  v37 = vshlq_u64(v33, vnegq_s64(v34));
  v6.i64[0] = 12;
  v38 = vdupq_n_s64(2uLL);
  v7.i64[0] = 2;
  v39 = vbicq_s8(v7, vceqzq_s64(vandq_s8(v37, v6)));
  v40 = vbicq_s8(v38, vceqzq_s64(vandq_s8(v36, vdupq_n_s64(0xCuLL))));
  v41 = vuzp1q_s32(vorrq_s8(vsubq_s64(v21, vtstq_s64(vshlq_u64(v38, v40), v36)), vorrq_s8(vorrq_s8(vorrq_s8(v26, v31), v35), v40)), vorrq_s8(vsubq_s64(v20, vtstq_s64(vshlq_u64(v7, v39), v37)), vorrq_s8(vorrq_s8(vorrq_s8(v25, v30), v34), v39)));
  v42 = vuzp1_s16(vmovn_s64(vmvnq_s8(v13)), *v10.i8).u8[0];
  v43 = (v42 & 1) - 1;
  if ((vuzp1_s16(vmovn_s64(*&v13), *&v10).i8[2] & 1) == 0)
  {
    v51 = v41;
    if ((v42 & (*(&v51 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v42 & 1) - 1) & 3))) > v41.i32[1])) == 0)
    {
      v43 = 1;
    }
  }

  if ((vuzp1_s16(*&v10, vmovn_s64(v12)).i32[1] & 1) == 0)
  {
    v50 = v41;
    if (*(&v50 & 0xFFFFFFFFFFFFFFF3 | (4 * (v43 & 3))) <= v41.i32[2] || ~v43 == 0)
    {
      v43 = 2;
    }
  }

  v8.i64[1] = v14;
  v49[0] = v8;
  v49[1] = v9;
  v45 = v43 & 3;
  v46 = *(v49 + v45);
  v10.i64[1] = v15;
  v48[0] = v10;
  v48[1] = v11;
  return v46 < *(v48 + v45);
}

BOOL geom_compare_z_order_3u64(int64x2_t *a1, int64x2_t *a2)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *a2;
  v11 = a2[1];
  v12 = vceqq_s64(v9, v11);
  v13 = vceqq_s64(*a1, *a2);
  if ((v13.i64[0] & v13.i64[1] & v12.i64[0]) < 0 != v2)
  {
    return 0;
  }

  v14 = vextq_s8(v8, v8, 8uLL).u64[0];
  v15 = vextq_s8(v10, v10, 8uLL).u64[0];
  v16 = veorq_s8(v11, v9);
  v17 = veorq_s8(v10, v8);
  v18.i64[0] = 0xFFFFFFFFLL;
  v18.i64[1] = 0xFFFFFFFFLL;
  v19 = vcgtq_u64(v17, v18);
  v3.i64[0] = 32;
  v20 = vandq_s8(vcgtq_u64(v16, v18), v3);
  v21 = vandq_s8(v19, vdupq_n_s64(0x20uLL));
  v22 = vshlq_u64(v17, vnegq_s64(v21));
  v23 = vshlq_u64(v16, vnegq_s64(v20));
  LOBYTE(v24) = 0;
  v16.i16[0] = 0;
  v16.i16[1] = v23.i16[1];
  v17.i64[0] = 4294901760;
  v17.i64[1] = 4294901760;
  v4.i64[0] = 16;
  v25 = vbicq_s8(v4, vceqzq_s64(v16.u32[0]));
  v26 = vbicq_s8(vdupq_n_s64(0x10uLL), vceqzq_s64(vandq_s8(v22, v17)));
  v27 = vshlq_u64(v22, vnegq_s64(v26));
  v28 = vshlq_u64(v23, vnegq_s64(v25));
  HIBYTE(v24) = v28.i8[1];
  v29.i64[0] = 65280;
  v29.i64[1] = 65280;
  v5.i64[0] = 8;
  v30 = vbicq_s8(v5, vceqzq_s64(v24));
  v31 = vbicq_s8(vdupq_n_s64(8uLL), vceqzq_s64(vandq_s8(v27, v29)));
  v32 = vshlq_u64(v27, vnegq_s64(v31));
  v33 = vshlq_u64(v28, vnegq_s64(v30));
  v5.i64[0] = 240;
  v6.i64[0] = 4;
  v34 = vbicq_s8(v6, vceqzq_s64(vandq_s8(v33, v5)));
  v35 = vbicq_s8(vdupq_n_s64(4uLL), vceqzq_s64(vandq_s8(v32, vdupq_n_s64(0xF0uLL))));
  v36 = vshlq_u64(v32, vnegq_s64(v35));
  v37 = vshlq_u64(v33, vnegq_s64(v34));
  v6.i64[0] = 12;
  v38 = vdupq_n_s64(2uLL);
  v7.i64[0] = 2;
  v39 = vbicq_s8(v7, vceqzq_s64(vandq_s8(v37, v6)));
  v40 = vbicq_s8(v38, vceqzq_s64(vandq_s8(v36, vdupq_n_s64(0xCuLL))));
  v41 = vuzp1q_s32(vorrq_s8(vsubq_s64(v21, vtstq_s64(vshlq_u64(v38, v40), v36)), vorrq_s8(vorrq_s8(vorrq_s8(v26, v31), v35), v40)), vorrq_s8(vsubq_s64(v20, vtstq_s64(vshlq_u64(v7, v39), v37)), vorrq_s8(vorrq_s8(vorrq_s8(v25, v30), v34), v39)));
  v42 = vuzp1_s16(vmovn_s64(vmvnq_s8(v13)), *v10.i8).u8[0];
  v43 = (v42 & 1) - 1;
  if ((vuzp1_s16(vmovn_s64(*&v13), *&v10).i8[2] & 1) == 0)
  {
    v51 = v41;
    if ((v42 & (*(&v51 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v42 & 1) - 1) & 3))) > v41.i32[1])) == 0)
    {
      v43 = 1;
    }
  }

  if ((vuzp1_s16(*&v10, vmovn_s64(v12)).i32[1] & 1) == 0)
  {
    v50 = v41;
    if (*(&v50 & 0xFFFFFFFFFFFFFFF3 | (4 * (v43 & 3))) <= v41.i32[2] || ~v43 == 0)
    {
      v43 = 2;
    }
  }

  v8.i64[1] = v14;
  v49[0] = v8;
  v49[1] = v9;
  v45 = v43 & 3;
  v46 = *(v49 + v45);
  v10.i64[1] = v15;
  v48[0] = v10;
  v48[1] = v11;
  return v46 < *(v48 + v45);
}

BOOL geom::compare_z_order<unsigned long long,(unsigned char)4>(int64x2_t *a1, int64x2_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = vceqq_s64(v3, v5);
  v7 = vceqq_s64(*a1, *a2);
  v8 = vandq_s8(v7, v6);
  if ((vandq_s8(v8, vdupq_laneq_s64(v8, 1)).u64[0] & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v9 = veorq_s8(v5, v3);
  v10 = veorq_s8(v4, v2);
  v11.i64[0] = 0xFFFFFFFFLL;
  v11.i64[1] = 0xFFFFFFFFLL;
  v12 = vcgtq_u64(v10, v11);
  v13 = vdupq_n_s64(0x20uLL);
  v14 = vandq_s8(vcgtq_u64(v9, v11), v13);
  v15 = vandq_s8(v12, v13);
  v16 = vshlq_u64(v10, vnegq_s64(v15));
  v17 = vshlq_u64(v9, vnegq_s64(v14));
  v13.i64[0] = 4294901760;
  v13.i64[1] = 4294901760;
  v18 = vdupq_n_s64(0x10uLL);
  v19 = vbicq_s8(v18, vceqzq_s64(vandq_s8(v17, v13)));
  v20 = vbicq_s8(v18, vceqzq_s64(vandq_s8(v16, v13)));
  v21 = vshlq_u64(v16, vnegq_s64(v20));
  v22 = vshlq_u64(v17, vnegq_s64(v19));
  v18.i64[0] = 65280;
  v18.i64[1] = 65280;
  v23 = vdupq_n_s64(8uLL);
  v24 = vbicq_s8(v23, vceqzq_s64(vandq_s8(v22, v18)));
  v25 = vbicq_s8(v23, vceqzq_s64(vandq_s8(v21, v18)));
  v26 = vshlq_u64(v21, vnegq_s64(v25));
  v27 = vshlq_u64(v22, vnegq_s64(v24));
  v28 = vdupq_n_s64(0xF0uLL);
  v29 = vdupq_n_s64(4uLL);
  v30 = vbicq_s8(v29, vceqzq_s64(vandq_s8(v27, v28)));
  v31 = vbicq_s8(v29, vceqzq_s64(vandq_s8(v26, v28)));
  v32 = vshlq_u64(v26, vnegq_s64(v31));
  v33 = vdupq_n_s64(0xCuLL);
  v34 = vshlq_u64(v27, vnegq_s64(v30));
  v35 = vdupq_n_s64(2uLL);
  v36 = vbicq_s8(v35, vceqzq_s64(vandq_s8(v34, v33)));
  v37 = vbicq_s8(v35, vceqzq_s64(vandq_s8(v32, v33)));
  v38 = vuzp1q_s32(vorrq_s8(vsubq_s64(v15, vtstq_s64(vshlq_u64(v35, v37), v32)), vorrq_s8(vorrq_s8(vorrq_s8(v20, v25), v31), v37)), vorrq_s8(vsubq_s64(v14, vtstq_s64(vshlq_u64(v35, v36), v34)), vorrq_s8(vorrq_s8(vorrq_s8(v19, v24), v30), v36)));
  v39 = vuzp1_s16(vmovn_s64(vmvnq_s8(v7)), *v4.i8).u8[0];
  v40 = (v39 & 1) - 1;
  if ((vuzp1_s16(vmovn_s64(*&v7), *&v4).i8[2] & 1) == 0)
  {
    v51 = v38;
    if ((v39 & (*(&v51 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v39 & 1) - 1) & 3))) > v38.i32[1])) == 0)
    {
      v40 = 1;
    }
  }

  v41 = vmovn_s64(v6);
  if ((vuzp1_s16(*&v4, v41).i32[1] & 1) == 0)
  {
    v50 = v38;
    if (*(&v50 & 0xFFFFFFFFFFFFFFF3 | (4 * (v40 & 3))) <= v38.i32[2] || ~v40 == 0)
    {
      v40 = 2;
    }
  }

  if ((vuzp1_s16(*&v4, v41).i8[6] & 1) == 0)
  {
    v49 = v38;
    if (*(&v49 & 0xFFFFFFFFFFFFFFF3 | (4 * (v40 & 3))) <= v38.i32[3] || ~v40 == 0)
    {
      v40 = 3;
    }
  }

  v48[0] = v2;
  v48[1] = v3;
  v44 = v40 & 3;
  v45 = *(v48 + v44);
  v47[0] = v4;
  v47[1] = v5;
  return v45 < *(v47 + v44);
}

BOOL geom_compare_z_order_4u64(int64x2_t *a1, int64x2_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = vceqq_s64(v3, v5);
  v7 = vceqq_s64(*a1, *a2);
  v8 = vandq_s8(v7, v6);
  if ((vandq_s8(v8, vdupq_laneq_s64(v8, 1)).u64[0] & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v9 = veorq_s8(v5, v3);
  v10 = veorq_s8(v4, v2);
  v11.i64[0] = 0xFFFFFFFFLL;
  v11.i64[1] = 0xFFFFFFFFLL;
  v12 = vcgtq_u64(v10, v11);
  v13 = vdupq_n_s64(0x20uLL);
  v14 = vandq_s8(vcgtq_u64(v9, v11), v13);
  v15 = vandq_s8(v12, v13);
  v16 = vshlq_u64(v10, vnegq_s64(v15));
  v17 = vshlq_u64(v9, vnegq_s64(v14));
  v13.i64[0] = 4294901760;
  v13.i64[1] = 4294901760;
  v18 = vdupq_n_s64(0x10uLL);
  v19 = vbicq_s8(v18, vceqzq_s64(vandq_s8(v17, v13)));
  v20 = vbicq_s8(v18, vceqzq_s64(vandq_s8(v16, v13)));
  v21 = vshlq_u64(v16, vnegq_s64(v20));
  v22 = vshlq_u64(v17, vnegq_s64(v19));
  v18.i64[0] = 65280;
  v18.i64[1] = 65280;
  v23 = vdupq_n_s64(8uLL);
  v24 = vbicq_s8(v23, vceqzq_s64(vandq_s8(v22, v18)));
  v25 = vbicq_s8(v23, vceqzq_s64(vandq_s8(v21, v18)));
  v26 = vshlq_u64(v21, vnegq_s64(v25));
  v27 = vshlq_u64(v22, vnegq_s64(v24));
  v28 = vdupq_n_s64(0xF0uLL);
  v29 = vdupq_n_s64(4uLL);
  v30 = vbicq_s8(v29, vceqzq_s64(vandq_s8(v27, v28)));
  v31 = vbicq_s8(v29, vceqzq_s64(vandq_s8(v26, v28)));
  v32 = vshlq_u64(v26, vnegq_s64(v31));
  v33 = vdupq_n_s64(0xCuLL);
  v34 = vshlq_u64(v27, vnegq_s64(v30));
  v35 = vdupq_n_s64(2uLL);
  v36 = vbicq_s8(v35, vceqzq_s64(vandq_s8(v34, v33)));
  v37 = vbicq_s8(v35, vceqzq_s64(vandq_s8(v32, v33)));
  v38 = vuzp1q_s32(vorrq_s8(vsubq_s64(v15, vtstq_s64(vshlq_u64(v35, v37), v32)), vorrq_s8(vorrq_s8(vorrq_s8(v20, v25), v31), v37)), vorrq_s8(vsubq_s64(v14, vtstq_s64(vshlq_u64(v35, v36), v34)), vorrq_s8(vorrq_s8(vorrq_s8(v19, v24), v30), v36)));
  v39 = vuzp1_s16(vmovn_s64(vmvnq_s8(v7)), *v4.i8).u8[0];
  v40 = (v39 & 1) - 1;
  if ((vuzp1_s16(vmovn_s64(*&v7), *&v4).i8[2] & 1) == 0)
  {
    v51 = v38;
    if ((v39 & (*(&v51 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v39 & 1) - 1) & 3))) > v38.i32[1])) == 0)
    {
      v40 = 1;
    }
  }

  v41 = vmovn_s64(v6);
  if ((vuzp1_s16(*&v4, v41).i32[1] & 1) == 0)
  {
    v50 = v38;
    if (*(&v50 & 0xFFFFFFFFFFFFFFF3 | (4 * (v40 & 3))) <= v38.i32[2] || ~v40 == 0)
    {
      v40 = 2;
    }
  }

  if ((vuzp1_s16(*&v4, v41).i8[6] & 1) == 0)
  {
    v49 = v38;
    if (*(&v49 & 0xFFFFFFFFFFFFFFF3 | (4 * (v40 & 3))) <= v38.i32[3] || ~v40 == 0)
    {
      v40 = 3;
    }
  }

  v48[0] = v2;
  v48[1] = v3;
  v44 = v40 & 3;
  v45 = *(v48 + v44);
  v47[0] = v4;
  v47[1] = v5;
  return v45 < *(v47 + v44);
}

BOOL geom::compare_z_order<signed char,(unsigned char)2>(__int16 a1, __int16 a2, uint8x8_t a3, uint8x8_t a4)
{
  HIWORD(v21) = a1;
  LOWORD(v21) = a1;
  a3.i32[0] = v21;
  v4 = vmovl_u8(a3).u64[0];
  HIWORD(v20) = a2;
  LOWORD(v20) = a2;
  a4.i32[0] = v20;
  v5 = vmovl_u8(a4).u64[0];
  if ((vminv_u8(vceq_s8(vuzp1_s8(v4, v4), vuzp1_s8(v5, v5))) & 0x80) != 0)
  {
    return 0;
  }

  v6.i32[0] = a1;
  v6.i32[1] = HIBYTE(a1);
  v7.i32[0] = a2;
  v7.i32[1] = HIBYTE(a2);
  if (a1 == a2)
  {
    v8 = -1;
  }

  else
  {
    v8 = 0;
  }

  if ((vceq_s32(vand_s8(v6, 0xFF000000FFLL), vand_s8(v7, 0xFF000000FFLL)).i32[1] & 1) == 0)
  {
    v9.i32[0] = (a2 ^ a1);
    v9.i32[1] = ((a2 ^ a1) >> 8);
    v10 = vand_s8(v9, 0xFF000000FFLL);
    v11 = vand_s8(vcgt_u32(v10, 0xF0000000FLL), 0x400000004);
    v12 = vshl_u32(v10, vneg_s32(v11));
    v13 = vbic_s8(0x200000002, vceqz_s32((*&v12 & 0xFFFFFF0CFFFFFF0CLL)));
    v19 = vand_s8(vorr_s8(vsub_s32(v11, vtst_s32(vshl_u32(0x200000002, v13), v12)), v13), 0xFF000000FFLL);
    if (*(&v19 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v8 & 1))) <= v19.i32[1] || a1 == a2)
    {
      v8 = 1;
    }
  }

  v18 = v6;
  v15 = *(&v18 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v8 & 1)));
  v17 = v7;
  return v15 < *(&v17 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v8 & 1)));
}

BOOL geom_compare_z_order_2i8(__int16 a1, __int16 a2, uint8x8_t a3, uint8x8_t a4)
{
  HIWORD(v21) = a1;
  LOWORD(v21) = a1;
  a3.i32[0] = v21;
  v4 = vmovl_u8(a3).u64[0];
  HIWORD(v20) = a2;
  LOWORD(v20) = a2;
  a4.i32[0] = v20;
  v5 = vmovl_u8(a4).u64[0];
  if ((vminv_u8(vceq_s8(vuzp1_s8(v4, v4), vuzp1_s8(v5, v5))) & 0x80) != 0)
  {
    return 0;
  }

  v6.i32[0] = a1;
  v6.i32[1] = HIBYTE(a1);
  v7.i32[0] = a2;
  v7.i32[1] = HIBYTE(a2);
  if (a1 == a2)
  {
    v8 = -1;
  }

  else
  {
    v8 = 0;
  }

  if ((vceq_s32(vand_s8(v6, 0xFF000000FFLL), vand_s8(v7, 0xFF000000FFLL)).i32[1] & 1) == 0)
  {
    v9.i32[0] = (a2 ^ a1);
    v9.i32[1] = ((a2 ^ a1) >> 8);
    v10 = vand_s8(v9, 0xFF000000FFLL);
    v11 = vand_s8(vcgt_u32(v10, 0xF0000000FLL), 0x400000004);
    v12 = vshl_u32(v10, vneg_s32(v11));
    v13 = vbic_s8(0x200000002, vceqz_s32((*&v12 & 0xFFFFFF0CFFFFFF0CLL)));
    v19 = vand_s8(vorr_s8(vsub_s32(v11, vtst_s32(vshl_u32(0x200000002, v13), v12)), v13), 0xFF000000FFLL);
    if (*(&v19 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v8 & 1))) <= v19.i32[1] || a1 == a2)
    {
      v8 = 1;
    }
  }

  v18 = v6;
  v15 = *(&v18 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v8 & 1)));
  v17 = v7;
  return v15 < *(&v17 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v8 & 1)));
}

BOOL geom::compare_z_order<signed char,(unsigned char)3>(__int32 a1, __int32 a2, int8x8_t a3, int8x8_t a4)
{
  a3.i32[0] = a1;
  v4 = vzip1_s8(a3, a3);
  a4.i32[0] = a2;
  v5 = vzip1_s8(a4, a3);
  v6 = vceq_s16((*&v4 & 0xFF00FF00FF00FFLL), (*&v5 & 0xFF00FF00FF00FFLL));
  v7.i8[0] = v6.i8[0];
  v7.i8[1] = v6.i8[2];
  v7.i8[2] = v6.i8[4];
  v7.i8[3] = v6.i8[4];
  v7.i8[4] = v6.i8[0];
  v7.i8[5] = v6.i8[2];
  v7.i8[6] = v6.i8[4];
  v7.i8[7] = v6.i8[4];
  if ((vminv_u8(v7) & 0x80) != 0)
  {
    return 0;
  }

  v8 = *&veor_s8(v5, v4) & 0xFF00FF00FF00FFLL;
  v9 = vand_s8(vcgt_u16(v8, 0xF000F000FLL), 0x4000400040004);
  v10 = vshl_u16(v8, vneg_s16((*&v9 & 0xFF00FF00FF00FFLL)));
  v11 = vbic_s8(0x2000200020002, vceqz_s16(vand_s8(v10, 0xC000C000CLL)));
  v12 = vmovl_u16(vorr_s8(vsub_s16(v9, vtst_s16(vshl_u16(0x2000200020002, (*&v11 & 0xFF00FF00FF00FFLL)), v10)), v11));
  v13.i64[0] = 0xFF000000FFLL;
  v13.i64[1] = 0xFF000000FFLL;
  v14 = vandq_s8(v12, v13);
  if (a1 == a2)
  {
    v15 = -1;
  }

  else
  {
    v15 = 0;
  }

  if ((v6.i8[2] & 1) == 0)
  {
    v23 = v14;
    if (*(&v23 & 0xFFFFFFFFFFFFFFF3 | (4 * (v15 & 3))) <= v14.i32[1] || a1 == a2)
    {
      v15 = 1;
    }
  }

  if ((v6.i8[4] & 1) == 0)
  {
    v22 = v14;
    if (*(&v22 & 0xFFFFFFFFFFFFFFF3 | (4 * (v15 & 3))) <= v14.i32[2] || ~v15 == 0)
    {
      v15 = 2;
    }
  }

  a3.i16[0] = a1;
  a3.i16[1] = BYTE1(a1);
  a3.i16[2] = BYTE2(a1);
  v20 = a3;
  v18 = *(&v20 & 0xFFFFFFFFFFFFFFF9 | (2 * (v15 & 3)));
  a3.i16[0] = a2;
  a3.i16[1] = BYTE1(a2);
  a3.i16[2] = BYTE2(a2);
  v21 = a3;
  return v18 < *(&v21 & 0xFFFFFFFFFFFFFFF9 | (2 * (v15 & 3)));
}

BOOL geom_compare_z_order_3i8(__int32 a1, __int32 a2, int8x8_t a3, int8x8_t a4)
{
  a3.i32[0] = a1;
  v4 = vzip1_s8(a3, a3);
  a4.i32[0] = a2;
  v5 = vzip1_s8(a4, a3);
  v6 = vceq_s16((*&v4 & 0xFF00FF00FF00FFLL), (*&v5 & 0xFF00FF00FF00FFLL));
  v7.i8[0] = v6.i8[0];
  v7.i8[1] = v6.i8[2];
  v7.i8[2] = v6.i8[4];
  v7.i8[3] = v6.i8[4];
  v7.i8[4] = v6.i8[0];
  v7.i8[5] = v6.i8[2];
  v7.i8[6] = v6.i8[4];
  v7.i8[7] = v6.i8[4];
  if ((vminv_u8(v7) & 0x80) != 0)
  {
    return 0;
  }

  v8 = *&veor_s8(v5, v4) & 0xFF00FF00FF00FFLL;
  v9 = vand_s8(vcgt_u16(v8, 0xF000F000FLL), 0x4000400040004);
  v10 = vshl_u16(v8, vneg_s16((*&v9 & 0xFF00FF00FF00FFLL)));
  v11 = vbic_s8(0x2000200020002, vceqz_s16(vand_s8(v10, 0xC000C000CLL)));
  v12 = vmovl_u16(vorr_s8(vsub_s16(v9, vtst_s16(vshl_u16(0x2000200020002, (*&v11 & 0xFF00FF00FF00FFLL)), v10)), v11));
  v13.i64[0] = 0xFF000000FFLL;
  v13.i64[1] = 0xFF000000FFLL;
  v14 = vandq_s8(v12, v13);
  if (a1 == a2)
  {
    v15 = -1;
  }

  else
  {
    v15 = 0;
  }

  if ((v6.i8[2] & 1) == 0)
  {
    v23 = v14;
    if (*(&v23 & 0xFFFFFFFFFFFFFFF3 | (4 * (v15 & 3))) <= v14.i32[1] || a1 == a2)
    {
      v15 = 1;
    }
  }

  if ((v6.i8[4] & 1) == 0)
  {
    v22 = v14;
    if (*(&v22 & 0xFFFFFFFFFFFFFFF3 | (4 * (v15 & 3))) <= v14.i32[2] || ~v15 == 0)
    {
      v15 = 2;
    }
  }

  a3.i16[0] = a1;
  a3.i16[1] = BYTE1(a1);
  a3.i16[2] = BYTE2(a1);
  v20 = a3;
  v18 = *(&v20 & 0xFFFFFFFFFFFFFFF9 | (2 * (v15 & 3)));
  a3.i16[0] = a2;
  a3.i16[1] = BYTE1(a2);
  a3.i16[2] = BYTE2(a2);
  v21 = a3;
  return v18 < *(&v21 & 0xFFFFFFFFFFFFFFF9 | (2 * (v15 & 3)));
}

BOOL geom::compare_z_order<signed char,(unsigned char)4>(__int32 a1, __int32 a2, int8x8_t a3)
{
  a3.i32[0] = a1;
  v3 = vzip1_s8(a3, a3);
  a3.i32[0] = a2;
  v4 = vzip1_s8(a3, a3);
  v5 = vceq_s16((*&v3 & 0xFF00FF00FF00FFLL), (*&v4 & 0xFF00FF00FF00FFLL));
  v6 = vuzp1_s8(v5, v5);
  if ((vminv_u8(v6) & 0x80) != 0)
  {
    return 0;
  }

  v6.i32[0] = a2 ^ a1;
  v7 = *&vzip1_s8(v6, v4) & 0xFF00FF00FF00FFLL;
  v8 = vand_s8(vcgt_u16(v7, 0xF000F000F000FLL), 0x4000400040004);
  v9 = vshl_u16(v7, vneg_s16(v8));
  v10 = vbic_s8(0x2000200020002, vceqz_s16((*&v9 & 0xFF0CFF0CFF0CFF0CLL)));
  v11 = vmovl_u16(vorr_s8(vsub_s16(v8, vtst_s16(vshl_u16(0x2000200020002, v10), v9)), v10));
  v12.i64[0] = 0xFF000000FFLL;
  v12.i64[1] = 0xFF000000FFLL;
  v13 = vandq_s8(v11, v12);
  if (a1 == a2)
  {
    v14 = -1;
  }

  else
  {
    v14 = 0;
  }

  if ((v5.i8[2] & 1) == 0)
  {
    v24 = v13;
    if (*(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3))) <= v13.i32[1] || a1 == a2)
    {
      v14 = 1;
    }
  }

  if ((v5.i8[4] & 1) == 0)
  {
    v23 = v13;
    if (*(&v23 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3))) <= v13.i32[2] || ~v14 == 0)
    {
      v14 = 2;
    }
  }

  if ((v5.i8[6] & 1) == 0)
  {
    v22 = v13;
    if (*(&v22 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3))) <= v13.i32[3] || ~v14 == 0)
    {
      v14 = 3;
    }
  }

  v21 = v3;
  v18 = *(&v21 & 0xFFFFFFFFFFFFFFF9 | (2 * (v14 & 3)));
  v20 = v4;
  return v18 < *(&v20 & 0xFFFFFFFFFFFFFFF9 | (2 * (v14 & 3)));
}

BOOL geom_compare_z_order_4i8(__int32 a1, __int32 a2, int8x8_t a3)
{
  a3.i32[0] = a1;
  v3 = vzip1_s8(a3, a3);
  a3.i32[0] = a2;
  v4 = vzip1_s8(a3, a3);
  v5 = vceq_s16((*&v3 & 0xFF00FF00FF00FFLL), (*&v4 & 0xFF00FF00FF00FFLL));
  v6 = vuzp1_s8(v5, v5);
  if ((vminv_u8(v6) & 0x80) != 0)
  {
    return 0;
  }

  v6.i32[0] = a2 ^ a1;
  v7 = *&vzip1_s8(v6, v4) & 0xFF00FF00FF00FFLL;
  v8 = vand_s8(vcgt_u16(v7, 0xF000F000F000FLL), 0x4000400040004);
  v9 = vshl_u16(v7, vneg_s16(v8));
  v10 = vbic_s8(0x2000200020002, vceqz_s16((*&v9 & 0xFF0CFF0CFF0CFF0CLL)));
  v11 = vmovl_u16(vorr_s8(vsub_s16(v8, vtst_s16(vshl_u16(0x2000200020002, v10), v9)), v10));
  v12.i64[0] = 0xFF000000FFLL;
  v12.i64[1] = 0xFF000000FFLL;
  v13 = vandq_s8(v11, v12);
  if (a1 == a2)
  {
    v14 = -1;
  }

  else
  {
    v14 = 0;
  }

  if ((v5.i8[2] & 1) == 0)
  {
    v24 = v13;
    if (*(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3))) <= v13.i32[1] || a1 == a2)
    {
      v14 = 1;
    }
  }

  if ((v5.i8[4] & 1) == 0)
  {
    v23 = v13;
    if (*(&v23 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3))) <= v13.i32[2] || ~v14 == 0)
    {
      v14 = 2;
    }
  }

  if ((v5.i8[6] & 1) == 0)
  {
    v22 = v13;
    if (*(&v22 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3))) <= v13.i32[3] || ~v14 == 0)
    {
      v14 = 3;
    }
  }

  v21 = v3;
  v18 = *(&v21 & 0xFFFFFFFFFFFFFFF9 | (2 * (v14 & 3)));
  v20 = v4;
  return v18 < *(&v20 & 0xFFFFFFFFFFFFFFF9 | (2 * (v14 & 3)));
}

BOOL geom::compare_z_order<short,(unsigned char)2>(__int32 a1, __int32 a2, uint16x4_t a3)
{
  a3.i32[0] = a1;
  v3 = vmovl_u16(a3).u64[0];
  a3.i32[0] = a2;
  v4 = vmovl_u16(a3).u64[0];
  v5 = vceq_s32(vand_s8(v3, 0xFFFF0000FFFFLL), vand_s8(v4, 0xFFFF0000FFFFLL));
  if ((vminv_u16(vuzp1_s16(v5, v5)) & 0x8000) != 0)
  {
    return 0;
  }

  if (a1 == a2)
  {
    v6 = -1;
  }

  else
  {
    v6 = 0;
  }

  if ((v5.i8[4] & 1) == 0)
  {
    v5.i32[0] = a2 ^ a1;
    v7 = vmovl_u16(v5).u64[0];
    v8 = vand_s8(vcgt_u32(v7, 0xFF000000FFLL), 0x800000008);
    v9 = vshl_u32(v7, vneg_s32(v8));
    v10 = vbic_s8(0x400000004, vceqz_s32(vand_s8(v9, 0xF0000000F0)));
    v11 = vshl_u32(v9, vneg_s32(v10));
    v12 = vbic_s8(0x200000002, vceqz_s32(vand_s8(v11, 0xC0000000CLL)));
    v18 = vand_s8(vorr_s8(vsub_s32(v8, vtst_s32(vshl_u32(0x200000002, v12), v11)), vorr_s8(v10, v12)), 0xFFFF0000FFFFLL);
    if (*(&v18 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v6 & 1))) <= v18.i32[1] || a1 == a2)
    {
      v6 = 1;
    }
  }

  v17 = v3;
  v14 = *(&v17 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v6 & 1)));
  v16 = v4;
  return v14 < *(&v16 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v6 & 1)));
}

BOOL geom_compare_z_order_2i16(__int32 a1, __int32 a2, uint16x4_t a3)
{
  a3.i32[0] = a1;
  v3 = vmovl_u16(a3).u64[0];
  a3.i32[0] = a2;
  v4 = vmovl_u16(a3).u64[0];
  v5 = vceq_s32(vand_s8(v3, 0xFFFF0000FFFFLL), vand_s8(v4, 0xFFFF0000FFFFLL));
  if ((vminv_u16(vuzp1_s16(v5, v5)) & 0x8000) != 0)
  {
    return 0;
  }

  if (a1 == a2)
  {
    v6 = -1;
  }

  else
  {
    v6 = 0;
  }

  if ((v5.i8[4] & 1) == 0)
  {
    v5.i32[0] = a2 ^ a1;
    v7 = vmovl_u16(v5).u64[0];
    v8 = vand_s8(vcgt_u32(v7, 0xFF000000FFLL), 0x800000008);
    v9 = vshl_u32(v7, vneg_s32(v8));
    v10 = vbic_s8(0x400000004, vceqz_s32(vand_s8(v9, 0xF0000000F0)));
    v11 = vshl_u32(v9, vneg_s32(v10));
    v12 = vbic_s8(0x200000002, vceqz_s32(vand_s8(v11, 0xC0000000CLL)));
    v18 = vand_s8(vorr_s8(vsub_s32(v8, vtst_s32(vshl_u32(0x200000002, v12), v11)), vorr_s8(v10, v12)), 0xFFFF0000FFFFLL);
    if (*(&v18 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v6 & 1))) <= v18.i32[1] || a1 == a2)
    {
      v6 = 1;
    }
  }

  v17 = v3;
  v14 = *(&v17 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v6 & 1)));
  v16 = v4;
  return v14 < *(&v16 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v6 & 1)));
}

BOOL geom::compare_z_order<short,(unsigned char)3>(int16x4_t a1, int16x4_t a2)
{
  v2 = vceq_s16(a1, a2);
  v3 = v2;
  v3.i16[3] = v2.i16[2];
  if ((vminv_u16(v3) & 0x8000) != 0)
  {
    return 0;
  }

  v4 = veor_s8(a2, a1);
  v5 = vand_s8(vcgt_u16(v4, 0xFF00FF00FF00FFLL), 0x8000800080008);
  v6 = vshl_u16(v4, vneg_s16(v5));
  v7 = vbic_s8(0x4000400040004, vceqz_s16(vand_s8(v6, 0xF000F000F000F0)));
  v8 = vshl_u16(v6, vneg_s16(v7));
  v9 = vbic_s8(0x2000200020002, vceqz_s16(vand_s8(v8, 0xC000C000C000CLL)));
  v10 = vmovl_u16(vorr_s8(vsub_s16(v5, vtst_s16(vshl_u16(0x2000200020002, v9), v8)), vorr_s8(v7, v9)));
  v11 = vmvn_s8(v2).u8[0];
  v12 = (v11 & 1) - 1;
  if ((v2.i8[2] & 1) == 0)
  {
    v19 = v10;
    if ((v11 & (*(&v19 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v11 & 1) - 1) & 3))) > v10.i32[1])) == 0)
    {
      v12 = 1;
    }
  }

  if ((v2.i8[4] & 1) == 0)
  {
    v18 = v10;
    if (*(&v18 & 0xFFFFFFFFFFFFFFF3 | (4 * (v12 & 3))) <= v10.i32[2] || ~v12 == 0)
    {
      v12 = 2;
    }
  }

  v17 = a1;
  v14 = *(&v17 & 0xFFFFFFFFFFFFFFF9 | (2 * (v12 & 3)));
  v16 = a2;
  return v14 < *(&v16 & 0xFFFFFFFFFFFFFFF9 | (2 * (v12 & 3)));
}

BOOL geom_compare_z_order_3i16(int16x4_t a1, int16x4_t a2)
{
  v2 = vceq_s16(a1, a2);
  v3 = v2;
  v3.i16[3] = v2.i16[2];
  if ((vminv_u16(v3) & 0x8000) != 0)
  {
    return 0;
  }

  v4 = veor_s8(a2, a1);
  v5 = vand_s8(vcgt_u16(v4, 0xFF00FF00FF00FFLL), 0x8000800080008);
  v6 = vshl_u16(v4, vneg_s16(v5));
  v7 = vbic_s8(0x4000400040004, vceqz_s16(vand_s8(v6, 0xF000F000F000F0)));
  v8 = vshl_u16(v6, vneg_s16(v7));
  v9 = vbic_s8(0x2000200020002, vceqz_s16(vand_s8(v8, 0xC000C000C000CLL)));
  v10 = vmovl_u16(vorr_s8(vsub_s16(v5, vtst_s16(vshl_u16(0x2000200020002, v9), v8)), vorr_s8(v7, v9)));
  v11 = vmvn_s8(v2).u8[0];
  v12 = (v11 & 1) - 1;
  if ((v2.i8[2] & 1) == 0)
  {
    v19 = v10;
    if ((v11 & (*(&v19 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v11 & 1) - 1) & 3))) > v10.i32[1])) == 0)
    {
      v12 = 1;
    }
  }

  if ((v2.i8[4] & 1) == 0)
  {
    v18 = v10;
    if (*(&v18 & 0xFFFFFFFFFFFFFFF3 | (4 * (v12 & 3))) <= v10.i32[2] || ~v12 == 0)
    {
      v12 = 2;
    }
  }

  v17 = a1;
  v14 = *(&v17 & 0xFFFFFFFFFFFFFFF9 | (2 * (v12 & 3)));
  v16 = a2;
  return v14 < *(&v16 & 0xFFFFFFFFFFFFFFF9 | (2 * (v12 & 3)));
}

BOOL geom::compare_z_order<short,(unsigned char)4>(int16x4_t a1, int16x4_t a2)
{
  v2 = vceq_s16(a1, a2);
  if ((vminv_u16(v2) & 0x8000) != 0)
  {
    return 0;
  }

  v3 = veor_s8(a2, a1);
  v4 = vand_s8(vcgt_u16(v3, 0xFF00FF00FF00FFLL), 0x8000800080008);
  v5 = vshl_u16(v3, vneg_s16(v4));
  v6 = vbic_s8(0x4000400040004, vceqz_s16(vand_s8(v5, 0xF000F000F000F0)));
  v7 = vshl_u16(v5, vneg_s16(v6));
  v8 = vbic_s8(0x2000200020002, vceqz_s16(vand_s8(v7, 0xC000C000C000CLL)));
  v9 = vmovl_u16(vorr_s8(vsub_s16(v4, vtst_s16(vshl_u16(0x2000200020002, v8), v7)), vorr_s8(v6, v8)));
  v10 = vmvn_s8(v2).u8[0];
  v11 = (v10 & 1) - 1;
  if ((v2.i8[2] & 1) == 0)
  {
    v20 = v9;
    if ((v10 & (*(&v20 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v10 & 1) - 1) & 3))) > v9.i32[1])) == 0)
    {
      v11 = 1;
    }
  }

  if ((v2.i8[4] & 1) == 0)
  {
    v19 = v9;
    if (*(&v19 & 0xFFFFFFFFFFFFFFF3 | (4 * (v11 & 3))) <= v9.i32[2] || ~v11 == 0)
    {
      v11 = 2;
    }
  }

  if ((v2.i8[6] & 1) == 0)
  {
    v18 = v9;
    if (*(&v18 & 0xFFFFFFFFFFFFFFF3 | (4 * (v11 & 3))) <= v9.i32[3] || ~v11 == 0)
    {
      v11 = 3;
    }
  }

  v17 = a1;
  v14 = *(&v17 & 0xFFFFFFFFFFFFFFF9 | (2 * (v11 & 3)));
  v16 = a2;
  return v14 < *(&v16 & 0xFFFFFFFFFFFFFFF9 | (2 * (v11 & 3)));
}

BOOL geom_compare_z_order_4i16(int16x4_t a1, int16x4_t a2)
{
  v2 = vceq_s16(a1, a2);
  if ((vminv_u16(v2) & 0x8000) != 0)
  {
    return 0;
  }

  v3 = veor_s8(a2, a1);
  v4 = vand_s8(vcgt_u16(v3, 0xFF00FF00FF00FFLL), 0x8000800080008);
  v5 = vshl_u16(v3, vneg_s16(v4));
  v6 = vbic_s8(0x4000400040004, vceqz_s16(vand_s8(v5, 0xF000F000F000F0)));
  v7 = vshl_u16(v5, vneg_s16(v6));
  v8 = vbic_s8(0x2000200020002, vceqz_s16(vand_s8(v7, 0xC000C000C000CLL)));
  v9 = vmovl_u16(vorr_s8(vsub_s16(v4, vtst_s16(vshl_u16(0x2000200020002, v8), v7)), vorr_s8(v6, v8)));
  v10 = vmvn_s8(v2).u8[0];
  v11 = (v10 & 1) - 1;
  if ((v2.i8[2] & 1) == 0)
  {
    v20 = v9;
    if ((v10 & (*(&v20 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v10 & 1) - 1) & 3))) > v9.i32[1])) == 0)
    {
      v11 = 1;
    }
  }

  if ((v2.i8[4] & 1) == 0)
  {
    v19 = v9;
    if (*(&v19 & 0xFFFFFFFFFFFFFFF3 | (4 * (v11 & 3))) <= v9.i32[2] || ~v11 == 0)
    {
      v11 = 2;
    }
  }

  if ((v2.i8[6] & 1) == 0)
  {
    v18 = v9;
    if (*(&v18 & 0xFFFFFFFFFFFFFFF3 | (4 * (v11 & 3))) <= v9.i32[3] || ~v11 == 0)
    {
      v11 = 3;
    }
  }

  v17 = a1;
  v14 = *(&v17 & 0xFFFFFFFFFFFFFFF9 | (2 * (v11 & 3)));
  v16 = a2;
  return v14 < *(&v16 & 0xFFFFFFFFFFFFFFF9 | (2 * (v11 & 3)));
}

BOOL geom::compare_z_order<int,(unsigned char)2>(int32x2_t a1, int32x2_t a2)
{
  v2 = vceq_s32(a1, a2);
  if ((vpmin_u32(v2, v2).u32[0] & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = vmvn_s8(v2).u8[0];
  v4 = ~v3;
  if ((v2.i8[4] & 1) == 0)
  {
    v5 = veor_s8(a2, a1);
    v6 = vand_s8(vcgt_u32(v5, 0xFFFF0000FFFFLL), 0x1000000010);
    v7 = vshl_u32(v5, vneg_s32(v6));
    v8 = vbic_s8(0x800000008, vceqz_s32(vand_s8(v7, 0xFF000000FF00)));
    v9 = vshl_u32(v7, vneg_s32(v8));
    v10 = vbic_s8(0x400000004, vceqz_s32(vand_s8(v9, 0xF0000000F0)));
    v11 = vshl_u32(v9, vneg_s32(v10));
    v12 = vbic_s8(0x200000002, vceqz_s32(vand_s8(v11, 0xC0000000CLL)));
    v17 = vorr_s8(vsub_s32(v6, vtst_s32(vshl_u32(0x200000002, v12), v11)), vorr_s8(vorr_s8(v8, v10), v12));
    if ((v3 & (*(&v17 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v3 & 1) == 0))) > v17.i32[1])) == 0)
    {
      v4 = 1;
    }
  }

  v15 = a1;
  v13 = *(&v15 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v4 & 1)));
  v16 = a2;
  return v13 < *(&v16 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v4 & 1)));
}

BOOL geom_compare_z_order_2i(int32x2_t a1, int32x2_t a2)
{
  v2 = vceq_s32(a1, a2);
  if ((vpmin_u32(v2, v2).u32[0] & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = vmvn_s8(v2).u8[0];
  v4 = ~v3;
  if ((v2.i8[4] & 1) == 0)
  {
    v5 = veor_s8(a2, a1);
    v6 = vand_s8(vcgt_u32(v5, 0xFFFF0000FFFFLL), 0x1000000010);
    v7 = vshl_u32(v5, vneg_s32(v6));
    v8 = vbic_s8(0x800000008, vceqz_s32(vand_s8(v7, 0xFF000000FF00)));
    v9 = vshl_u32(v7, vneg_s32(v8));
    v10 = vbic_s8(0x400000004, vceqz_s32(vand_s8(v9, 0xF0000000F0)));
    v11 = vshl_u32(v9, vneg_s32(v10));
    v12 = vbic_s8(0x200000002, vceqz_s32(vand_s8(v11, 0xC0000000CLL)));
    v17 = vorr_s8(vsub_s32(v6, vtst_s32(vshl_u32(0x200000002, v12), v11)), vorr_s8(vorr_s8(v8, v10), v12));
    if ((v3 & (*(&v17 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v3 & 1) == 0))) > v17.i32[1])) == 0)
    {
      v4 = 1;
    }
  }

  v15 = a1;
  v13 = *(&v15 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v4 & 1)));
  v16 = a2;
  return v13 < *(&v16 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v4 & 1)));
}

BOOL geom::compare_z_order<int,(unsigned char)3>(int32x4_t a1, int32x4_t a2)
{
  v2 = vceqq_s32(a1, a2);
  v3 = v2;
  v3.i32[3] = v2.i32[2];
  if ((vminvq_u32(v3) & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = veorq_s8(a2, a1);
  v5.i64[0] = 0xFFFF0000FFFFLL;
  v5.i64[1] = 0xFFFF0000FFFFLL;
  v6.i64[0] = 0x1000000010;
  v6.i64[1] = 0x1000000010;
  v7 = vandq_s8(vcgtq_u32(v4, v5), v6);
  v8 = vshlq_u32(v4, vnegq_s32(v7));
  v6.i64[0] = 0xFF000000FF00;
  v6.i64[1] = 0xFF000000FF00;
  v9.i64[0] = 0x800000008;
  v9.i64[1] = 0x800000008;
  v10 = vbicq_s8(v9, vceqzq_s32(vandq_s8(v8, v6)));
  v11 = vshlq_u32(v8, vnegq_s32(v10));
  v9.i64[0] = 0xF0000000F0;
  v9.i64[1] = 0xF0000000F0;
  v12.i64[0] = 0x400000004;
  v12.i64[1] = 0x400000004;
  v13 = vbicq_s8(v12, vceqzq_s32(vandq_s8(v11, v9)));
  v14 = vshlq_u32(v11, vnegq_s32(v13));
  v12.i64[0] = 0xC0000000CLL;
  v12.i64[1] = 0xC0000000CLL;
  v15.i64[0] = 0x200000002;
  v15.i64[1] = 0x200000002;
  v16 = vbicq_s8(v15, vceqzq_s32(vandq_s8(v14, v12)));
  v17 = vmovn_s32(vmvnq_s8(v2)).u8[0];
  v18 = vorrq_s8(vsubq_s32(v7, vtstq_s32(vshlq_u32(v15, v16), v14)), vorrq_s8(vorrq_s8(v10, v13), v16));
  v19 = (v17 & 1) - 1;
  v20 = vmovn_s32(v2);
  if ((v20.i8[2] & 1) == 0)
  {
    v27 = v18;
    if ((v17 & (*(&v27 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v17 & 1) - 1) & 3))) > v18.i32[1])) == 0)
    {
      v19 = 1;
    }
  }

  if ((v20.i8[4] & 1) == 0)
  {
    v26 = v18;
    if (*(&v26 & 0xFFFFFFFFFFFFFFF3 | (4 * (v19 & 3))) <= v18.i32[2] || ~v19 == 0)
    {
      v19 = 2;
    }
  }

  v25 = a1;
  v22 = *(&v25 & 0xFFFFFFFFFFFFFFF3 | (4 * (v19 & 3)));
  v24 = a2;
  return v22 < *(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v19 & 3)));
}

BOOL geom_compare_z_order_3i(int32x4_t a1, int32x4_t a2)
{
  v2 = vceqq_s32(a1, a2);
  v3 = v2;
  v3.i32[3] = v2.i32[2];
  if ((vminvq_u32(v3) & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = veorq_s8(a2, a1);
  v5.i64[0] = 0xFFFF0000FFFFLL;
  v5.i64[1] = 0xFFFF0000FFFFLL;
  v6.i64[0] = 0x1000000010;
  v6.i64[1] = 0x1000000010;
  v7 = vandq_s8(vcgtq_u32(v4, v5), v6);
  v8 = vshlq_u32(v4, vnegq_s32(v7));
  v6.i64[0] = 0xFF000000FF00;
  v6.i64[1] = 0xFF000000FF00;
  v9.i64[0] = 0x800000008;
  v9.i64[1] = 0x800000008;
  v10 = vbicq_s8(v9, vceqzq_s32(vandq_s8(v8, v6)));
  v11 = vshlq_u32(v8, vnegq_s32(v10));
  v9.i64[0] = 0xF0000000F0;
  v9.i64[1] = 0xF0000000F0;
  v12.i64[0] = 0x400000004;
  v12.i64[1] = 0x400000004;
  v13 = vbicq_s8(v12, vceqzq_s32(vandq_s8(v11, v9)));
  v14 = vshlq_u32(v11, vnegq_s32(v13));
  v12.i64[0] = 0xC0000000CLL;
  v12.i64[1] = 0xC0000000CLL;
  v15.i64[0] = 0x200000002;
  v15.i64[1] = 0x200000002;
  v16 = vbicq_s8(v15, vceqzq_s32(vandq_s8(v14, v12)));
  v17 = vmovn_s32(vmvnq_s8(v2)).u8[0];
  v18 = vorrq_s8(vsubq_s32(v7, vtstq_s32(vshlq_u32(v15, v16), v14)), vorrq_s8(vorrq_s8(v10, v13), v16));
  v19 = (v17 & 1) - 1;
  v20 = vmovn_s32(v2);
  if ((v20.i8[2] & 1) == 0)
  {
    v27 = v18;
    if ((v17 & (*(&v27 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v17 & 1) - 1) & 3))) > v18.i32[1])) == 0)
    {
      v19 = 1;
    }
  }

  if ((v20.i8[4] & 1) == 0)
  {
    v26 = v18;
    if (*(&v26 & 0xFFFFFFFFFFFFFFF3 | (4 * (v19 & 3))) <= v18.i32[2] || ~v19 == 0)
    {
      v19 = 2;
    }
  }

  v25 = a1;
  v22 = *(&v25 & 0xFFFFFFFFFFFFFFF3 | (4 * (v19 & 3)));
  v24 = a2;
  return v22 < *(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v19 & 3)));
}

BOOL geom::compare_z_order<int,(unsigned char)4>(int32x4_t a1, int32x4_t a2)
{
  v2 = vceqq_s32(a1, a2);
  if ((vminvq_u32(v2) & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = veorq_s8(a2, a1);
  v4.i64[0] = 0xFFFF0000FFFFLL;
  v4.i64[1] = 0xFFFF0000FFFFLL;
  v5.i64[0] = 0x1000000010;
  v5.i64[1] = 0x1000000010;
  v6 = vandq_s8(vcgtq_u32(v3, v4), v5);
  v7 = vshlq_u32(v3, vnegq_s32(v6));
  v5.i64[0] = 0xFF000000FF00;
  v5.i64[1] = 0xFF000000FF00;
  v8.i64[0] = 0x800000008;
  v8.i64[1] = 0x800000008;
  v9 = vbicq_s8(v8, vceqzq_s32(vandq_s8(v7, v5)));
  v10 = vshlq_u32(v7, vnegq_s32(v9));
  v8.i64[0] = 0xF0000000F0;
  v8.i64[1] = 0xF0000000F0;
  v11.i64[0] = 0x400000004;
  v11.i64[1] = 0x400000004;
  v12 = vbicq_s8(v11, vceqzq_s32(vandq_s8(v10, v8)));
  v13 = vshlq_u32(v10, vnegq_s32(v12));
  v11.i64[0] = 0xC0000000CLL;
  v11.i64[1] = 0xC0000000CLL;
  v14.i64[0] = 0x200000002;
  v14.i64[1] = 0x200000002;
  v15 = vbicq_s8(v14, vceqzq_s32(vandq_s8(v13, v11)));
  v16 = vmovn_s32(vmvnq_s8(v2)).u8[0];
  v17 = vorrq_s8(vsubq_s32(v6, vtstq_s32(vshlq_u32(v14, v15), v13)), vorrq_s8(vorrq_s8(v9, v12), v15));
  v18 = (v16 & 1) - 1;
  v19 = vmovn_s32(v2);
  if ((v19.i8[2] & 1) == 0)
  {
    v28 = v17;
    if ((v16 & (*(&v28 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v16 & 1) - 1) & 3))) > v17.i32[1])) == 0)
    {
      v18 = 1;
    }
  }

  if ((v19.i8[4] & 1) == 0)
  {
    v27 = v17;
    if (*(&v27 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3))) <= v17.i32[2] || ~v18 == 0)
    {
      v18 = 2;
    }
  }

  if ((v19.i8[6] & 1) == 0)
  {
    v26 = v17;
    if (*(&v26 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3))) <= v17.i32[3] || ~v18 == 0)
    {
      v18 = 3;
    }
  }

  v24 = a1;
  v22 = *(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3)));
  v25 = a2;
  return v22 < *(&v25 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3)));
}

BOOL geom_compare_z_order_4i(int32x4_t a1, int32x4_t a2)
{
  v2 = vceqq_s32(a1, a2);
  if ((vminvq_u32(v2) & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = veorq_s8(a2, a1);
  v4.i64[0] = 0xFFFF0000FFFFLL;
  v4.i64[1] = 0xFFFF0000FFFFLL;
  v5.i64[0] = 0x1000000010;
  v5.i64[1] = 0x1000000010;
  v6 = vandq_s8(vcgtq_u32(v3, v4), v5);
  v7 = vshlq_u32(v3, vnegq_s32(v6));
  v5.i64[0] = 0xFF000000FF00;
  v5.i64[1] = 0xFF000000FF00;
  v8.i64[0] = 0x800000008;
  v8.i64[1] = 0x800000008;
  v9 = vbicq_s8(v8, vceqzq_s32(vandq_s8(v7, v5)));
  v10 = vshlq_u32(v7, vnegq_s32(v9));
  v8.i64[0] = 0xF0000000F0;
  v8.i64[1] = 0xF0000000F0;
  v11.i64[0] = 0x400000004;
  v11.i64[1] = 0x400000004;
  v12 = vbicq_s8(v11, vceqzq_s32(vandq_s8(v10, v8)));
  v13 = vshlq_u32(v10, vnegq_s32(v12));
  v11.i64[0] = 0xC0000000CLL;
  v11.i64[1] = 0xC0000000CLL;
  v14.i64[0] = 0x200000002;
  v14.i64[1] = 0x200000002;
  v15 = vbicq_s8(v14, vceqzq_s32(vandq_s8(v13, v11)));
  v16 = vmovn_s32(vmvnq_s8(v2)).u8[0];
  v17 = vorrq_s8(vsubq_s32(v6, vtstq_s32(vshlq_u32(v14, v15), v13)), vorrq_s8(vorrq_s8(v9, v12), v15));
  v18 = (v16 & 1) - 1;
  v19 = vmovn_s32(v2);
  if ((v19.i8[2] & 1) == 0)
  {
    v28 = v17;
    if ((v16 & (*(&v28 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v16 & 1) - 1) & 3))) > v17.i32[1])) == 0)
    {
      v18 = 1;
    }
  }

  if ((v19.i8[4] & 1) == 0)
  {
    v27 = v17;
    if (*(&v27 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3))) <= v17.i32[2] || ~v18 == 0)
    {
      v18 = 2;
    }
  }

  if ((v19.i8[6] & 1) == 0)
  {
    v26 = v17;
    if (*(&v26 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3))) <= v17.i32[3] || ~v18 == 0)
    {
      v18 = 3;
    }
  }

  v24 = a1;
  v22 = *(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3)));
  v25 = a2;
  return v22 < *(&v25 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3)));
}

BOOL geom::compare_z_order<long long,(unsigned char)2>(int64x2_t a1, int64x2_t a2)
{
  v2 = vceqq_s64(a1, a2);
  if ((vandq_s8(vdupq_laneq_s64(v2, 1), v2).u64[0] & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v3 = vmovn_s64(vmvnq_s8(v2)).u8[0];
  v4 = ~v3;
  if ((vmovn_s64(*&v2).i32[1] & 1) == 0)
  {
    v5 = veorq_s8(a2, a1);
    v6.i64[0] = 0xFFFFFFFFLL;
    v6.i64[1] = 0xFFFFFFFFLL;
    v7 = vandq_s8(vcgtq_u64(v5, v6), vdupq_n_s64(0x20uLL));
    v8 = vshlq_u64(v5, vnegq_s64(v7));
    v9.i64[0] = 4294901760;
    v9.i64[1] = 4294901760;
    v10 = vbicq_s8(vdupq_n_s64(0x10uLL), vceqzq_s64(vandq_s8(v8, v9)));
    v11 = vshlq_u64(v8, vnegq_s64(v10));
    v12.i64[0] = 65280;
    v12.i64[1] = 65280;
    v13 = vbicq_s8(vdupq_n_s64(8uLL), vceqzq_s64(vandq_s8(v11, v12)));
    v14 = vshlq_u64(v11, vnegq_s64(v13));
    v15 = vbicq_s8(vdupq_n_s64(4uLL), vceqzq_s64(vandq_s8(v14, vdupq_n_s64(0xF0uLL))));
    v16 = vshlq_u64(v14, vnegq_s64(v15));
    v17 = vdupq_n_s64(2uLL);
    v18 = vbicq_s8(v17, vceqzq_s64(vandq_s8(v16, vdupq_n_s64(0xCuLL))));
    v23 = vmovn_s64(vorrq_s8(vsubq_s64(v7, vtstq_s64(vshlq_u64(v17, v18), v16)), vorrq_s8(vorrq_s8(vorrq_s8(v10, v13), v15), v18)));
    if ((v3 & (*(&v23 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v3 & 1) == 0))) > v23.i32[1])) == 0)
    {
      v4 = 1;
    }
  }

  v21 = a1;
  v19 = *(&v21 & 0xFFFFFFFFFFFFFFF7 | (8 * (v4 & 1)));
  v22 = a2;
  return v19 < *(&v22 & 0xFFFFFFFFFFFFFFF7 | (8 * (v4 & 1)));
}

BOOL geom_compare_z_order_2i64(int64x2_t a1, int64x2_t a2)
{
  v2 = vceqq_s64(a1, a2);
  if ((vandq_s8(vdupq_laneq_s64(v2, 1), v2).u64[0] & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v3 = vmovn_s64(vmvnq_s8(v2)).u8[0];
  v4 = ~v3;
  if ((vmovn_s64(*&v2).i32[1] & 1) == 0)
  {
    v5 = veorq_s8(a2, a1);
    v6.i64[0] = 0xFFFFFFFFLL;
    v6.i64[1] = 0xFFFFFFFFLL;
    v7 = vandq_s8(vcgtq_u64(v5, v6), vdupq_n_s64(0x20uLL));
    v8 = vshlq_u64(v5, vnegq_s64(v7));
    v9.i64[0] = 4294901760;
    v9.i64[1] = 4294901760;
    v10 = vbicq_s8(vdupq_n_s64(0x10uLL), vceqzq_s64(vandq_s8(v8, v9)));
    v11 = vshlq_u64(v8, vnegq_s64(v10));
    v12.i64[0] = 65280;
    v12.i64[1] = 65280;
    v13 = vbicq_s8(vdupq_n_s64(8uLL), vceqzq_s64(vandq_s8(v11, v12)));
    v14 = vshlq_u64(v11, vnegq_s64(v13));
    v15 = vbicq_s8(vdupq_n_s64(4uLL), vceqzq_s64(vandq_s8(v14, vdupq_n_s64(0xF0uLL))));
    v16 = vshlq_u64(v14, vnegq_s64(v15));
    v17 = vdupq_n_s64(2uLL);
    v18 = vbicq_s8(v17, vceqzq_s64(vandq_s8(v16, vdupq_n_s64(0xCuLL))));
    v23 = vmovn_s64(vorrq_s8(vsubq_s64(v7, vtstq_s64(vshlq_u64(v17, v18), v16)), vorrq_s8(vorrq_s8(vorrq_s8(v10, v13), v15), v18)));
    if ((v3 & (*(&v23 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v3 & 1) == 0))) > v23.i32[1])) == 0)
    {
      v4 = 1;
    }
  }

  v21 = a1;
  v19 = *(&v21 & 0xFFFFFFFFFFFFFFF7 | (8 * (v4 & 1)));
  v22 = a2;
  return v19 < *(&v22 & 0xFFFFFFFFFFFFFFF7 | (8 * (v4 & 1)));
}

BOOL geom::compare_z_order<long long,(unsigned char)3>(int64x2_t *a1, int64x2_t *a2)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *a2;
  v11 = a2[1];
  v12 = vceqq_s64(v9, v11);
  v13 = vceqq_s64(*a1, *a2);
  if ((v13.i64[0] & v13.i64[1] & v12.i64[0]) < 0 != v2)
  {
    return 0;
  }

  v14 = vextq_s8(v8, v8, 8uLL).u64[0];
  v15 = vextq_s8(v10, v10, 8uLL).u64[0];
  v16 = veorq_s8(v11, v9);
  v17 = veorq_s8(v10, v8);
  v18.i64[0] = 0xFFFFFFFFLL;
  v18.i64[1] = 0xFFFFFFFFLL;
  v19 = vcgtq_u64(v17, v18);
  v3.i64[0] = 32;
  v20 = vandq_s8(vcgtq_u64(v16, v18), v3);
  v21 = vandq_s8(v19, vdupq_n_s64(0x20uLL));
  v22 = vshlq_u64(v17, vnegq_s64(v21));
  v23 = vshlq_u64(v16, vnegq_s64(v20));
  LOBYTE(v24) = 0;
  v16.i16[0] = 0;
  v16.i16[1] = v23.i16[1];
  v17.i64[0] = 4294901760;
  v17.i64[1] = 4294901760;
  v4.i64[0] = 16;
  v25 = vbicq_s8(v4, vceqzq_s64(v16.u32[0]));
  v26 = vbicq_s8(vdupq_n_s64(0x10uLL), vceqzq_s64(vandq_s8(v22, v17)));
  v27 = vshlq_u64(v22, vnegq_s64(v26));
  v28 = vshlq_u64(v23, vnegq_s64(v25));
  HIBYTE(v24) = v28.i8[1];
  v29.i64[0] = 65280;
  v29.i64[1] = 65280;
  v5.i64[0] = 8;
  v30 = vbicq_s8(v5, vceqzq_s64(v24));
  v31 = vbicq_s8(vdupq_n_s64(8uLL), vceqzq_s64(vandq_s8(v27, v29)));
  v32 = vshlq_u64(v27, vnegq_s64(v31));
  v33 = vshlq_u64(v28, vnegq_s64(v30));
  v5.i64[0] = 240;
  v6.i64[0] = 4;
  v34 = vbicq_s8(v6, vceqzq_s64(vandq_s8(v33, v5)));
  v35 = vbicq_s8(vdupq_n_s64(4uLL), vceqzq_s64(vandq_s8(v32, vdupq_n_s64(0xF0uLL))));
  v36 = vshlq_u64(v32, vnegq_s64(v35));
  v37 = vshlq_u64(v33, vnegq_s64(v34));
  v6.i64[0] = 12;
  v38 = vdupq_n_s64(2uLL);
  v7.i64[0] = 2;
  v39 = vbicq_s8(v7, vceqzq_s64(vandq_s8(v37, v6)));
  v40 = vbicq_s8(v38, vceqzq_s64(vandq_s8(v36, vdupq_n_s64(0xCuLL))));
  v41 = vuzp1q_s32(vorrq_s8(vsubq_s64(v21, vtstq_s64(vshlq_u64(v38, v40), v36)), vorrq_s8(vorrq_s8(vorrq_s8(v26, v31), v35), v40)), vorrq_s8(vsubq_s64(v20, vtstq_s64(vshlq_u64(v7, v39), v37)), vorrq_s8(vorrq_s8(vorrq_s8(v25, v30), v34), v39)));
  v42 = vuzp1_s16(vmovn_s64(vmvnq_s8(v13)), *v10.i8).u8[0];
  v43 = (v42 & 1) - 1;
  if ((vuzp1_s16(vmovn_s64(*&v13), *&v10).i8[2] & 1) == 0)
  {
    v51 = v41;
    if ((v42 & (*(&v51 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v42 & 1) - 1) & 3))) > v41.i32[1])) == 0)
    {
      v43 = 1;
    }
  }

  if ((vuzp1_s16(*&v10, vmovn_s64(v12)).i32[1] & 1) == 0)
  {
    v50 = v41;
    if (*(&v50 & 0xFFFFFFFFFFFFFFF3 | (4 * (v43 & 3))) <= v41.i32[2] || ~v43 == 0)
    {
      v43 = 2;
    }
  }

  v8.i64[1] = v14;
  v49[0] = v8;
  v49[1] = v9;
  v45 = v43 & 3;
  v46 = *(v49 + v45);
  v10.i64[1] = v15;
  v48[0] = v10;
  v48[1] = v11;
  return v46 < *(v48 + v45);
}

BOOL geom_compare_z_order_3i64(int64x2_t *a1, int64x2_t *a2)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *a2;
  v11 = a2[1];
  v12 = vceqq_s64(v9, v11);
  v13 = vceqq_s64(*a1, *a2);
  if ((v13.i64[0] & v13.i64[1] & v12.i64[0]) < 0 != v2)
  {
    return 0;
  }

  v14 = vextq_s8(v8, v8, 8uLL).u64[0];
  v15 = vextq_s8(v10, v10, 8uLL).u64[0];
  v16 = veorq_s8(v11, v9);
  v17 = veorq_s8(v10, v8);
  v18.i64[0] = 0xFFFFFFFFLL;
  v18.i64[1] = 0xFFFFFFFFLL;
  v19 = vcgtq_u64(v17, v18);
  v3.i64[0] = 32;
  v20 = vandq_s8(vcgtq_u64(v16, v18), v3);
  v21 = vandq_s8(v19, vdupq_n_s64(0x20uLL));
  v22 = vshlq_u64(v17, vnegq_s64(v21));
  v23 = vshlq_u64(v16, vnegq_s64(v20));
  LOBYTE(v24) = 0;
  v16.i16[0] = 0;
  v16.i16[1] = v23.i16[1];
  v17.i64[0] = 4294901760;
  v17.i64[1] = 4294901760;
  v4.i64[0] = 16;
  v25 = vbicq_s8(v4, vceqzq_s64(v16.u32[0]));
  v26 = vbicq_s8(vdupq_n_s64(0x10uLL), vceqzq_s64(vandq_s8(v22, v17)));
  v27 = vshlq_u64(v22, vnegq_s64(v26));
  v28 = vshlq_u64(v23, vnegq_s64(v25));
  HIBYTE(v24) = v28.i8[1];
  v29.i64[0] = 65280;
  v29.i64[1] = 65280;
  v5.i64[0] = 8;
  v30 = vbicq_s8(v5, vceqzq_s64(v24));
  v31 = vbicq_s8(vdupq_n_s64(8uLL), vceqzq_s64(vandq_s8(v27, v29)));
  v32 = vshlq_u64(v27, vnegq_s64(v31));
  v33 = vshlq_u64(v28, vnegq_s64(v30));
  v5.i64[0] = 240;
  v6.i64[0] = 4;
  v34 = vbicq_s8(v6, vceqzq_s64(vandq_s8(v33, v5)));
  v35 = vbicq_s8(vdupq_n_s64(4uLL), vceqzq_s64(vandq_s8(v32, vdupq_n_s64(0xF0uLL))));
  v36 = vshlq_u64(v32, vnegq_s64(v35));
  v37 = vshlq_u64(v33, vnegq_s64(v34));
  v6.i64[0] = 12;
  v38 = vdupq_n_s64(2uLL);
  v7.i64[0] = 2;
  v39 = vbicq_s8(v7, vceqzq_s64(vandq_s8(v37, v6)));
  v40 = vbicq_s8(v38, vceqzq_s64(vandq_s8(v36, vdupq_n_s64(0xCuLL))));
  v41 = vuzp1q_s32(vorrq_s8(vsubq_s64(v21, vtstq_s64(vshlq_u64(v38, v40), v36)), vorrq_s8(vorrq_s8(vorrq_s8(v26, v31), v35), v40)), vorrq_s8(vsubq_s64(v20, vtstq_s64(vshlq_u64(v7, v39), v37)), vorrq_s8(vorrq_s8(vorrq_s8(v25, v30), v34), v39)));
  v42 = vuzp1_s16(vmovn_s64(vmvnq_s8(v13)), *v10.i8).u8[0];
  v43 = (v42 & 1) - 1;
  if ((vuzp1_s16(vmovn_s64(*&v13), *&v10).i8[2] & 1) == 0)
  {
    v51 = v41;
    if ((v42 & (*(&v51 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v42 & 1) - 1) & 3))) > v41.i32[1])) == 0)
    {
      v43 = 1;
    }
  }

  if ((vuzp1_s16(*&v10, vmovn_s64(v12)).i32[1] & 1) == 0)
  {
    v50 = v41;
    if (*(&v50 & 0xFFFFFFFFFFFFFFF3 | (4 * (v43 & 3))) <= v41.i32[2] || ~v43 == 0)
    {
      v43 = 2;
    }
  }

  v8.i64[1] = v14;
  v49[0] = v8;
  v49[1] = v9;
  v45 = v43 & 3;
  v46 = *(v49 + v45);
  v10.i64[1] = v15;
  v48[0] = v10;
  v48[1] = v11;
  return v46 < *(v48 + v45);
}

BOOL geom::compare_z_order<long long,(unsigned char)4>(int64x2_t *a1, int64x2_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = vceqq_s64(v3, v5);
  v7 = vceqq_s64(*a1, *a2);
  v8 = vandq_s8(v7, v6);
  if ((vandq_s8(v8, vdupq_laneq_s64(v8, 1)).u64[0] & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v9 = veorq_s8(v5, v3);
  v10 = veorq_s8(v4, v2);
  v11.i64[0] = 0xFFFFFFFFLL;
  v11.i64[1] = 0xFFFFFFFFLL;
  v12 = vcgtq_u64(v10, v11);
  v13 = vdupq_n_s64(0x20uLL);
  v14 = vandq_s8(vcgtq_u64(v9, v11), v13);
  v15 = vandq_s8(v12, v13);
  v16 = vshlq_u64(v10, vnegq_s64(v15));
  v17 = vshlq_u64(v9, vnegq_s64(v14));
  v13.i64[0] = 4294901760;
  v13.i64[1] = 4294901760;
  v18 = vdupq_n_s64(0x10uLL);
  v19 = vbicq_s8(v18, vceqzq_s64(vandq_s8(v17, v13)));
  v20 = vbicq_s8(v18, vceqzq_s64(vandq_s8(v16, v13)));
  v21 = vshlq_u64(v16, vnegq_s64(v20));
  v22 = vshlq_u64(v17, vnegq_s64(v19));
  v18.i64[0] = 65280;
  v18.i64[1] = 65280;
  v23 = vdupq_n_s64(8uLL);
  v24 = vbicq_s8(v23, vceqzq_s64(vandq_s8(v22, v18)));
  v25 = vbicq_s8(v23, vceqzq_s64(vandq_s8(v21, v18)));
  v26 = vshlq_u64(v21, vnegq_s64(v25));
  v27 = vshlq_u64(v22, vnegq_s64(v24));
  v28 = vdupq_n_s64(0xF0uLL);
  v29 = vdupq_n_s64(4uLL);
  v30 = vbicq_s8(v29, vceqzq_s64(vandq_s8(v27, v28)));
  v31 = vbicq_s8(v29, vceqzq_s64(vandq_s8(v26, v28)));
  v32 = vshlq_u64(v26, vnegq_s64(v31));
  v33 = vdupq_n_s64(0xCuLL);
  v34 = vshlq_u64(v27, vnegq_s64(v30));
  v35 = vdupq_n_s64(2uLL);
  v36 = vbicq_s8(v35, vceqzq_s64(vandq_s8(v34, v33)));
  v37 = vbicq_s8(v35, vceqzq_s64(vandq_s8(v32, v33)));
  v38 = vuzp1q_s32(vorrq_s8(vsubq_s64(v15, vtstq_s64(vshlq_u64(v35, v37), v32)), vorrq_s8(vorrq_s8(vorrq_s8(v20, v25), v31), v37)), vorrq_s8(vsubq_s64(v14, vtstq_s64(vshlq_u64(v35, v36), v34)), vorrq_s8(vorrq_s8(vorrq_s8(v19, v24), v30), v36)));
  v39 = vuzp1_s16(vmovn_s64(vmvnq_s8(v7)), *v4.i8).u8[0];
  v40 = (v39 & 1) - 1;
  if ((vuzp1_s16(vmovn_s64(*&v7), *&v4).i8[2] & 1) == 0)
  {
    v51 = v38;
    if ((v39 & (*(&v51 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v39 & 1) - 1) & 3))) > v38.i32[1])) == 0)
    {
      v40 = 1;
    }
  }

  v41 = vmovn_s64(v6);
  if ((vuzp1_s16(*&v4, v41).i32[1] & 1) == 0)
  {
    v50 = v38;
    if (*(&v50 & 0xFFFFFFFFFFFFFFF3 | (4 * (v40 & 3))) <= v38.i32[2] || ~v40 == 0)
    {
      v40 = 2;
    }
  }

  if ((vuzp1_s16(*&v4, v41).i8[6] & 1) == 0)
  {
    v49 = v38;
    if (*(&v49 & 0xFFFFFFFFFFFFFFF3 | (4 * (v40 & 3))) <= v38.i32[3] || ~v40 == 0)
    {
      v40 = 3;
    }
  }

  v48[0] = v2;
  v48[1] = v3;
  v44 = v40 & 3;
  v45 = *(v48 + v44);
  v47[0] = v4;
  v47[1] = v5;
  return v45 < *(v47 + v44);
}

BOOL geom_compare_z_order_4i64(int64x2_t *a1, int64x2_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = vceqq_s64(v3, v5);
  v7 = vceqq_s64(*a1, *a2);
  v8 = vandq_s8(v7, v6);
  if ((vandq_s8(v8, vdupq_laneq_s64(v8, 1)).u64[0] & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v9 = veorq_s8(v5, v3);
  v10 = veorq_s8(v4, v2);
  v11.i64[0] = 0xFFFFFFFFLL;
  v11.i64[1] = 0xFFFFFFFFLL;
  v12 = vcgtq_u64(v10, v11);
  v13 = vdupq_n_s64(0x20uLL);
  v14 = vandq_s8(vcgtq_u64(v9, v11), v13);
  v15 = vandq_s8(v12, v13);
  v16 = vshlq_u64(v10, vnegq_s64(v15));
  v17 = vshlq_u64(v9, vnegq_s64(v14));
  v13.i64[0] = 4294901760;
  v13.i64[1] = 4294901760;
  v18 = vdupq_n_s64(0x10uLL);
  v19 = vbicq_s8(v18, vceqzq_s64(vandq_s8(v17, v13)));
  v20 = vbicq_s8(v18, vceqzq_s64(vandq_s8(v16, v13)));
  v21 = vshlq_u64(v16, vnegq_s64(v20));
  v22 = vshlq_u64(v17, vnegq_s64(v19));
  v18.i64[0] = 65280;
  v18.i64[1] = 65280;
  v23 = vdupq_n_s64(8uLL);
  v24 = vbicq_s8(v23, vceqzq_s64(vandq_s8(v22, v18)));
  v25 = vbicq_s8(v23, vceqzq_s64(vandq_s8(v21, v18)));
  v26 = vshlq_u64(v21, vnegq_s64(v25));
  v27 = vshlq_u64(v22, vnegq_s64(v24));
  v28 = vdupq_n_s64(0xF0uLL);
  v29 = vdupq_n_s64(4uLL);
  v30 = vbicq_s8(v29, vceqzq_s64(vandq_s8(v27, v28)));
  v31 = vbicq_s8(v29, vceqzq_s64(vandq_s8(v26, v28)));
  v32 = vshlq_u64(v26, vnegq_s64(v31));
  v33 = vdupq_n_s64(0xCuLL);
  v34 = vshlq_u64(v27, vnegq_s64(v30));
  v35 = vdupq_n_s64(2uLL);
  v36 = vbicq_s8(v35, vceqzq_s64(vandq_s8(v34, v33)));
  v37 = vbicq_s8(v35, vceqzq_s64(vandq_s8(v32, v33)));
  v38 = vuzp1q_s32(vorrq_s8(vsubq_s64(v15, vtstq_s64(vshlq_u64(v35, v37), v32)), vorrq_s8(vorrq_s8(vorrq_s8(v20, v25), v31), v37)), vorrq_s8(vsubq_s64(v14, vtstq_s64(vshlq_u64(v35, v36), v34)), vorrq_s8(vorrq_s8(vorrq_s8(v19, v24), v30), v36)));
  v39 = vuzp1_s16(vmovn_s64(vmvnq_s8(v7)), *v4.i8).u8[0];
  v40 = (v39 & 1) - 1;
  if ((vuzp1_s16(vmovn_s64(*&v7), *&v4).i8[2] & 1) == 0)
  {
    v51 = v38;
    if ((v39 & (*(&v51 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v39 & 1) - 1) & 3))) > v38.i32[1])) == 0)
    {
      v40 = 1;
    }
  }

  v41 = vmovn_s64(v6);
  if ((vuzp1_s16(*&v4, v41).i32[1] & 1) == 0)
  {
    v50 = v38;
    if (*(&v50 & 0xFFFFFFFFFFFFFFF3 | (4 * (v40 & 3))) <= v38.i32[2] || ~v40 == 0)
    {
      v40 = 2;
    }
  }

  if ((vuzp1_s16(*&v4, v41).i8[6] & 1) == 0)
  {
    v49 = v38;
    if (*(&v49 & 0xFFFFFFFFFFFFFFF3 | (4 * (v40 & 3))) <= v38.i32[3] || ~v40 == 0)
    {
      v40 = 3;
    }
  }

  v48[0] = v2;
  v48[1] = v3;
  v44 = v40 & 3;
  v45 = *(v48 + v44);
  v47[0] = v4;
  v47[1] = v5;
  return v45 < *(v47 + v44);
}