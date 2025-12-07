void std::deque<unsigned int>::push_back(unint64_t *result, _DWORD *a2)
{
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 7) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    std::deque<unsigned int>::__add_back_capacity(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v8 & 0x3FF)) = *a2;
  result[5] = v7 + 1;
}

void std::deque<unsigned int>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
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

void std::__split_buffer<unsigned int *>::emplace_back<unsigned int *&>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int *>>(a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__split_buffer<unsigned int *>::emplace_front<unsigned int *>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int *>>(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__split_buffer<unsigned int *>::emplace_back<unsigned int *>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int *>>(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__split_buffer<unsigned int *>::emplace_front<unsigned int *&>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int *>>(a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::deque<unsigned int>::__maybe_remove_front_spare[abi:nn200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x400)
  {
    a2 = 1;
  }

  if (v2 < 0x800)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 1024;
  }

  return v4 ^ 1u;
}

uint64_t geom::anonymous namespace::integer_hashset::erase(geom::_anonymous_namespace_::integer_hashset *this, unsigned int a2)
{
  v3 = *(this + 1);
  v4 = *(this + 2);
  if (*(v3 + 4 * result) != -1)
  {
    v6 = (v4 - v3) >> 2;
    do
    {
      v7 = result;
      do
      {
        result = (result + 1) % v6;
        v8 = *(v3 + 4 * result);
        v9 = 73244475 * ((73244475 * (v8 ^ HIWORD(v8))) ^ ((73244475 * (v8 ^ HIWORD(v8))) >> 16));
        v10 = (v9 ^ HIWORD(v9)) % v6;
        v12 = v7 < result && v7 >= v10;
        v14 = v7 < result || v7 >= v10;
        if (v10 > result)
        {
          v15 = v14;
        }

        else
        {
          v15 = v12;
        }
      }

      while (v8 != -1 && !v15);
      *(v3 + 4 * v7) = v8;
    }

    while (*(v3 + 4 * result) != -1);
    --*this;
  }

  return result;
}

__n128 std::__function::__func<geom::anonymous namespace::hull_mesh<float>::repartition_points_after_grow(std::vector<unsigned int> const&,unsigned int const&,unsigned int const&)::{lambda(unsigned int const&)#1},std::allocator<geom::anonymous namespace::hull_mesh<float>::repartition_points_after_grow(std::vector<unsigned int> const&,unsigned int const&,unsigned int const&)::{lambda(unsigned int const&)#1}>,unsigned int ()(unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28628F758;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<geom::anonymous namespace::hull_mesh<float>::repartition_points_after_grow(std::vector<unsigned int> const&,unsigned int const&,unsigned int const&)::{lambda(unsigned int const&)#1},std::allocator<geom::anonymous namespace::hull_mesh<float>::repartition_points_after_grow(std::vector<unsigned int> const&,unsigned int const&,unsigned int const&)::{lambda(unsigned int const&)#1}>,unsigned int ()(unsigned int)>::operator()(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  result = *(a1 + 20);
  if (result)
  {
    v5 = 0;
    LODWORD(v6) = -1;
    v7 = 1;
    v8 = -INFINITY;
    do
    {
      v9 = vmulq_f32(vsubq_f32(*(*(v2 + 96) + 16 * v3), *(*(v2 + 376) + 16 * (v7 - 1))), *(*(v2 + 376) + 16 * v7));
      v10 = vaddv_f32(*v9.f32);
      if ((v9.f32[2] + v10) <= v8)
      {
        v6 = v6;
      }

      else
      {
        v8 = v9.f32[2] + v10;
        v6 = v5;
      }

      ++v5;
      v7 += 2;
    }

    while (result != v5);
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
    v8 = -INFINITY;
  }

  if (v8 > (*(v2 + 528) * -2.0))
  {
    *(*(v2 + 120) + 4 * v3) = v8;
    return v6;
  }

  return result;
}

uint64_t std::__function::__func<geom::anonymous namespace::hull_mesh<float>::repartition_points_after_grow(std::vector<unsigned int> const&,unsigned int const&,unsigned int const&)::{lambda(unsigned int const&)#1},std::allocator<geom::anonymous namespace::hull_mesh<float>::repartition_points_after_grow(std::vector<unsigned int> const&,unsigned int const&,unsigned int const&)::{lambda(unsigned int const&)#1}>,unsigned int ()(unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE7reserveEm(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 5)
  {
    if (!(a2 >> 59))
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_dEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }
}

void _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v5 - *a1;
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

    if (v11)
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_dEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

void geom::anonymous namespace::hull_mesh<double>::grow_hull(void *a1, void *a2, unsigned int **a3, unsigned int *a4, unsigned int **a5, std::vector<unsigned int> *a6)
{
  v9 = *a3;
  v10 = a3[1];
  if (*a3 != v10)
  {
    do
    {
      if (*(a1[9] + 112 * *v9) != -1)
      {
      }

      ++v9;
    }

    while (v9 != v10);
  }

  v11 = a2[1] - *a2;
  v12 = v11 >> 2;
  std::vector<float>::resize(a6, 3 * (v11 >> 2));
  v13 = (v11 >> 2);
  if ((v11 >> 2))
  {
    v14 = 0;
    v57 = v11;
    v15 = v11 >> 1;
    v16 = v11 >> 2;
    do
    {
      begin = a6->__begin_;
      v19 = *(*a2 + v14 * 4);
      v20 = a1[6];
      v21 = *(*a2 + 4 * ((v16 - 1) % v12));
      v22 = v20 + 16 * v19;
      v23 = (v20 + 16 * begin[v16]);
      v24 = begin[v14];
      v25 = (v20 + 16 * v24);
      v26 = (v20 + 16 * begin[v15]);
      v27 = a1[9] + 112 * v18;
      v23[2] = v24;
      v25[2] = begin[v15];
      v26[2] = begin[v16];
      *v23 = v18;
      *v25 = v18;
      *v26 = v18;
      v23[3] = *(v20 + 16 * v21 + 12);
      v25[3] = *(v22 + 12);
      v28 = *a4;
      v26[3] = v28;
      v23[1] = v19;
      *(v22 + 4) = begin[v16];
      v29 = a1[12];
      v30 = (v29 + 32 * v28);
      v31 = *v30;
      v32 = v30[1];
      v33 = (v29 + 32 * v23[3]);
      v34 = *v33;
      v35 = v33[1];
      v36 = (v29 + 32 * v25[3]);
      v37 = *v36;
      v38 = v36[1];
      v39 = vnegq_f64(v32);
      v40 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v38), v31, 1), v32, *v36, 1);
      v41 = vaddq_f64(v32, v35);
      v32.f64[1] = v31.f64[0];
      v42 = vmlaq_laneq_f64(vmulq_laneq_f64(v39, *v33, 1), v35, v31, 1);
      v43 = vnegq_f64(v35);
      v35.f64[1] = v33->f64[0];
      v44 = vmlaq_laneq_f64(vmulq_laneq_f64(v43, *v36, 1), v38, *v33, 1);
      v45 = vaddq_f64(v41, v38);
      v38.f64[1] = v36->f64[0];
      v46 = vaddq_f64(vmlaq_f64(vmulq_f64(v32, vnegq_f64(*v36)), v31, v38), vaddq_f64(vmlaq_f64(vmulq_f64(v35, vnegq_f64(v31)), *v33, v32), vmlaq_f64(vmulq_f64(v38, vnegq_f64(*v33)), *v36, v35)));
      v47 = vaddq_f64(v40, vaddq_f64(v42, v44));
      v35.f64[0] = vmulq_f64(v47, v47).f64[0];
      v47.f64[1] = v46.f64[0];
      *(v27 + 16) = v47;
      *(v27 + 32) = vdupq_laneq_s64(v46, 1);
      v48 = vmulq_f64(v46, v46);
      v48.f64[0] = sqrt(v48.f64[1] + v35.f64[0] + v48.f64[0]);
      *(v27 + 48) = v48.f64[0];
      *(v27 + 56) = v48.f64[0] <= 2.22044605e-16;
      *(v27 + 64) = vaddq_f64(vaddq_f64(v31, v34), v37);
      *(v27 + 80) = v45;
      *(v27 + 96) = 3;
      *v27 = begin[v16];
      if (v48.f64[0] > 2.22044605e-16)
      {
      }

      ++v14;
      LODWORD(v15) = v15 + 1;
      LODWORD(v16) = v16 + 1;
    }

    while (v13 != v14);
    v49 = 0;
    v50 = a6->__begin_;
    v51 = a1[6];
    do
    {
      v52 = v49 + 1;
      if (v13 - 1 == v49)
      {
        v53 = 0;
      }

      else
      {
        v53 = v49 + 1;
      }

      if (v49)
      {
        v54 = v49;
      }

      else
      {
        v54 = v12;
      }

      v55 = v50[v49];
      v56 = v50[2 * (v57 >> 2) + v49];
      *(v51 + 16 * v55 + 4) = v50[(v53 + 2 * v12)];
      *(v51 + 16 * v56 + 4) = v50[v54 - 1];
      v49 = v52;
    }

    while (v13 != v52);
  }

  std::vector<float>::resize(a6, v13);
}

uint64_t geom::anonymous namespace::hull_mesh<double>::new_face(void *a1)
{
  v2 = a1[4];
  if (v2 == a1[3])
  {
    v5 = a1[10];
    v6 = a1[11];
    if (v5 >= v6)
    {
      v8 = a1[9];
      v9 = 0x6DB6DB6DB6DB6DB7 * ((v5 - v8) >> 4) + 1;
      if (v9 > 0x249249249249249)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v10 = 0x6DB6DB6DB6DB6DB7 * ((v6 - v8) >> 4);
      if (2 * v10 > v9)
      {
        v9 = 2 * v10;
      }

      if (v10 >= 0x124924924924924)
      {
        v11 = 0x249249249249249;
      }

      else
      {
        v11 = v9;
      }

      if (v11)
      {
        if (v11 <= 0x249249249249249)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v12 = 16 * ((v5 - v8) >> 4);
      *v12 = -1;
      *(v12 + 4) = 0u;
      *(v12 + 20) = 0u;
      *(v12 + 36) = 0u;
      *(v12 + 52) = 0;
      *(v12 + 56) = 1;
      *(v12 + 57) = 0u;
      *(v12 + 73) = 0u;
      *(v12 + 84) = 0u;
      *(v12 + 100) = -1;
      *(v12 + 104) = 0;
      v7 = v12 + 112;
      v13 = (v12 - (v5 - v8));
      memcpy(v13, v8, v5 - v8);
      a1[9] = v13;
      a1[10] = v7;
      a1[11] = 0;
      if (v8)
      {
        operator delete(v8);
      }
    }

    else
    {
      *v5 = -1;
      *(v5 + 4) = 0u;
      *(v5 + 20) = 0u;
      *(v5 + 36) = 0u;
      *(v5 + 52) = 0;
      *(v5 + 56) = 1;
      *(v5 + 57) = 0u;
      *(v5 + 73) = 0u;
      *(v5 + 84) = 0u;
      *(v5 + 100) = -1;
      v7 = v5 + 112;
      *(v5 + 104) = 0;
    }

    a1[10] = v7;
    return -1227133513 * ((v7 - a1[9]) >> 4) - 1;
  }

  else
  {
    result = *(v2 - 4);
    a1[4] = v2 - 4;
    v4 = a1[9] + 112 * result;
    *(v4 + 48) = 0;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *(v4 + 56) = 1;
    *(v4 + 96) = 0xFFFFFFFF00000000;
    *(v4 + 64) = 0;
    *(v4 + 72) = 0;
    *(v4 + 80) = 0u;
  }

  return result;
}

__n128 geom::anonymous namespace::max_heap<geom::anonymous namespace::hull_mesh<double>::conflict_face,geom::anonymous namespace::hull_mesh<double>::conflict_face_selector_cmp>::insert(std::vector<int> *a1, unsigned int *a2, _OWORD *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  end = a1->__end_;
  v7 = 0xAAAAAAAAAAAAAAABLL * ((end - a1->__begin_) >> 3);
  v8 = *a2;
  begin = a1[1].__begin_;
  v9 = a1 + 1;
  v10 = begin;
  if (v8 >= a1[1].__end_ - begin)
  {
    *__x = 0;
    std::vector<unsigned int>::resize(v9, (v8 + 1), __x);
    v8 = *a2;
    v10 = a1[1].__begin_;
    end = a1->__end_;
  }

  v10[v8] = v7;
  v13 = *a2;
  *&__x[4] = *a3;
  value = a1->__end_cap_.__value_;
  if (end >= value)
  {
    v16 = a1->__begin_;
    v17 = 0xAAAAAAAAAAAAAAABLL * ((end - a1->__begin_) >> 3);
    v18 = v17 + 1;
    if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v19 = 0xAAAAAAAAAAAAAAABLL * ((value - v16) >> 3);
    if (2 * v19 > v18)
    {
      v18 = 2 * v19;
    }

    if (v19 >= 0x555555555555555)
    {
      v20 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v21 = 8 * ((end - a1->__begin_) >> 3);
    *v21 = v13;
    *(v21 + 4) = *__x;
    *(v21 + 20) = *&__x[16];
    v15 = (24 * v17 + 24);
    v22 = (v21 - (end - v16));
    memcpy(v22, v16, end - v16);
    a1->__begin_ = v22;
    a1->__end_ = v15;
    a1->__end_cap_.__value_ = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *end = v13;
    result.n128_u64[0] = *__x;
    *(end + 1) = *__x;
    end[5] = *&__x[16];
    v15 = end + 6;
  }

  v23 = v7;
  a1->__end_ = v15;
  if (v7 >= 2uLL)
  {
    v24 = a1->__begin_;
    do
    {
      v25 = &v24[6 * v23];
      v26 = &v24[6 * (v23 >> 1)];
      result.n128_u64[0] = *(v25 + 2);
      if (result.n128_f64[0] < *(v26 + 2))
      {
        break;
      }

      v27 = *v25;
      *v25 = *v26;
      *v26 = v27;
      result = *(v25 + 2);
      *(v25 + 2) = *(v26 + 2);
      *(v26 + 2) = result;
      v24 = a1->__begin_;
      v28 = a1[1].__begin_;
      v28[a1->__begin_[6 * v23]] = v23;
      v28[v24[6 * (v23 >> 1)]] = v23 >> 1;
      v29 = v23 > 3;
      v23 >>= 1;
    }

    while (v29);
  }

  return result;
}

void geom::anonymous namespace::hull_mesh<double>::dissolve_edge_if_coplanar(uint64_t a1, int a2, unsigned int **a3, const void **a4)
{
  v110 = *MEMORY[0x277D85DE8];
  v108 = a2;
  v5 = (a1 + 416);
  v6 = &v108;
LABEL_2:
  std::deque<unsigned int>::push_back(v5, v6);
  while (1)
  {
    v7 = *(a1 + 456);
    if (!v7)
    {
      break;
    }

    v8 = *(*(*(a1 + 424) + ((*(a1 + 448) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (*(a1 + 448) & 0x3FFLL));
    ++*(a1 + 448);
    *(a1 + 456) = v7 - 1;
    std::deque<unsigned int>::__maybe_remove_front_spare[abi:nn200100](a1 + 416, 1);
    v11 = *(a1 + 48);
    v12 = (v11 + 16 * v8);
    v13 = *v12;
    if (v13 != -1)
    {
      v14 = v12[1];
      v15 = (v11 + 16 * v14);
      v16 = *v15;
      if (*v15 != -1 && v16 != v13)
      {
        v18 = *(a1 + 72);
        v19 = v18 + 112 * v13;
        if ((*(v19 + 56) & 1) == 0)
        {
          v20 = v18 + 112 * v16;
          if ((*(v20 + 56) & 1) == 0)
          {
            v9.f64[0] = *(v20 + 48);
            v21 = vdupq_lane_s64(*&v9.f64[0], 0);
            v22 = vdivq_f64(*(v20 + 32), v9);
            v23 = vdivq_f64(*(v20 + 16), v21);
            v10.f64[0] = *(v19 + 48);
            v24 = vdupq_lane_s64(*&v10.f64[0], 0);
            v25 = vdivq_f64(*(v19 + 32), v10);
            v26 = vdivq_f64(*(v19 + 16), v24);
            if (vmulq_f64(v22, v25).f64[0] + vaddvq_f64(vmulq_f64(v23, v26)) > 0.0)
            {
              *&v27 = vextq_s8(v23, v23, 8uLL).u64[0];
              v28 = vdupq_lane_s64(COERCE__INT64(*(v20 + 96)), 0);
              v29 = vdivq_f64(*(v20 + 64), v28);
              v30 = vdivq_f64(*(v20 + 80), v28);
              v31 = vdupq_lane_s64(COERCE__INT64(*(v19 + 96)), 0);
              v32 = vdivq_f64(*(v19 + 64), v31);
              v33 = vdivq_f64(*(v19 + 80), v31);
              v26.i64[1] = vextq_s8(v26, v26, 8uLL).u64[0];
              v34 = vmulq_f64(vsubq_f64(v30, v33), v25).f64[0] + vaddvq_f64(vmulq_f64(vsubq_f64(v29, v32), v26));
              v35 = *(a1 + 544);
              v36 = -v35;
              v37 = vsubq_f64(v33, v30);
              *&v23.i64[1] = v27;
              *v23.i64 = vaddvq_f64(vmulq_f64(vsubq_f64(v32, v29), v23));
              v39 = vmulq_f64(v37, v22).f64[0] + *v23.i64;
              v40 = v39 <= v35 && v39 < v36;
              v41 = v40 && v34 <= v35;
              if (!v41 || v34 >= v36)
              {
                v103 = *(v20 + 32);
                v104 = *(v20 + 16);
                v102 = *(v19 + 96);
                v100 = *(v19 + 80);
                v101 = *(v19 + 64);
                v99 = *(v20 + 96);
                v97 = *(v20 + 64);
                v98 = *(v20 + 80);
                v95 = *(v19 + 32);
                v96 = *(v19 + 16);
                if (is_halfedge_dissolvable && v50)
                {
                  v51 = v12[2];
                  v52 = v15[2];
                  v92 = *(v11 + 16 * *(v11 + 16 * v52 + 4) + 8);
                  v94 = *(v11 + 16 * *(v11 + 16 * v51 + 4) + 8);
                  v53 = v8;
                  do
                  {
                    v54 = v11 + 16 * v53;
                    v56 = *(v54 + 8);
                    v55 = (v54 + 8);
                    v53 = v56;
                  }

                  while (v56 != v8);
                  v57 = v14;
                  do
                  {
                    v58 = v11 + 16 * v57;
                    v60 = *(v58 + 8);
                    v59 = (v58 + 8);
                    v57 = v60;
                  }

                  while (v60 != v14);
                  v61 = *(a1 + 96);
                  v62 = (v61 + 32 * v12[3]);
                  v63 = (v61 + 32 * v15[3]);
                  v64 = vaddq_f64(v104, v96);
                  v65 = vaddq_f64(v103, v95);
                  *(v19 + 16) = v64;
                  *(v19 + 32) = v65;
                  v64.f64[0] = sqrt(vmulq_f64(v65, v65).f64[0] + vaddvq_f64(vmulq_f64(v64, v64)));
                  *(v19 + 48) = v64.f64[0];
                  *(v19 + 56) = v64.f64[0] <= 2.22044605e-16;
                  v66 = vaddq_f64(v100, vsubq_f64(v98, vaddq_f64(v62[1], v63[1])));
                  *(v19 + 64) = vaddq_f64(v101, vsubq_f64(v97, vaddq_f64(*v62, *v63)));
                  *(v19 + 80) = v66;
                  *(v19 + 96) = v102 + v99 - 2;
                  v67 = v12[1];
                  v68 = *(a1 + 48);
                  v69 = v67;
                  do
                  {
                    v70 = (v68 + 16 * v69);
                    *v70 = v13;
                    v69 = v70[2];
                  }

                  while (v69 != v67);
                  *v55 = v52;
                  *v59 = v51;
                  *v19 = v51;
                  if (*(v19 + 100) != -1)
                  {
                    std::vector<unsigned int>::push_back[abi:nn200100](a4, (v19 + 100));
                    *(v19 + 100) = -1;
                  }

                  v72 = *(v20 + 100);
                  v71 = (v20 + 100);
                  if (v72 != -1)
                  {
                    std::vector<unsigned int>::push_back[abi:nn200100](a4, v71);
                    *v71 = -1;
                  }

                  *v109 = v8;
                  v73 = (*(a1 + 48) + 16 * v8);
                  *v73 = -1;
                  v73[1] = -1;
                  std::vector<unsigned int>::push_back[abi:nn200100](a1, v109);
                  *v109 = v14;
                  v74 = (*(a1 + 48) + 16 * v14);
                  *v74 = -1;
                  v74[1] = -1;
                  std::vector<unsigned int>::push_back[abi:nn200100](a1, v109);
                  if ((*(v19 + 56) & 1) == 0)
                  {
                    v75 = *(a1 + 168);
                    if (v13 < (*(a1 + 176) - v75) >> 2)
                    {
                      v76 = *(v75 + 4 * v13);
                      if (v76)
                      {
                        v77 = *(a1 + 144);
                        v78 = (v77 + 24 * v76);
                        *(v75 + 4 * *v78) = 0;
                        v79 = *(a1 + 152);
                        v81 = *(v79 - 24);
                        v79 -= 24;
                        v80 = v81;
                        *v109 = *(v79 + 4);
                        *&v109[16] = *(v79 + 20);
                        *(a1 + 152) = v79;
                        if (0xAAAAAAAAAAAAAAABLL * ((v79 - v77) >> 3) != v76)
                        {
                          *v78 = v80;
                          *(v78 + 2) = *&v109[4];
                          *(*(a1 + 168) + 4 * v80) = v76;
                          v83 = (2 * v76);
                          v84 = *(a1 + 144);
                          v85 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 152) - v84) >> 3);
                          while (v85 > v83)
                          {
                            v86 = v83 | 1;
                            if (v85 <= v86)
                            {
                              LODWORD(v86) = v83;
                            }

                            else if (*(v84 + 24 * v83 + 16) >= *(v84 + 24 * v86 + 16))
                            {
                              LODWORD(v86) = v83;
                            }

                            v87 = (v84 + 24 * v86);
                            v88 = (v84 + 24 * v76);
                            if (*(v87 + 2) < *(v88 + 2))
                            {
                              break;
                            }

                            v89 = *v88;
                            *v88 = *v87;
                            *v87 = v89;
                            v90 = *(v88 + 2);
                            *(v88 + 2) = *(v87 + 2);
                            *(v87 + 2) = v90;
                            v84 = *(a1 + 144);
                            v91 = *(a1 + 168);
                            *(v91 + 4 * *(v84 + 24 * v76)) = v76;
                            *(v91 + 4 * *(v84 + 24 * v86)) = v86;
                            v83 = (2 * v86);
                            v85 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 152) - v84) >> 3);
                            LODWORD(v76) = v86;
                          }
                        }
                      }
                    }
                  }

                  v107 = v82;
                  if (*v109 != -1)
                  {
                    std::deque<unsigned int>::push_back((a1 + 416), v109);
                    v82 = v107;
                  }

                  if (v82 != -1)
                  {
                    v5 = (a1 + 416);
                    v6 = &v107;
                    goto LABEL_2;
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

__n128 std::__function::__func<geom::anonymous namespace::hull_mesh<double>::build_initial_hull(void)::{lambda(unsigned int)#1},std::allocator<geom::anonymous namespace::hull_mesh<double>::build_initial_hull(void)::{lambda(unsigned int)#1}>,unsigned int ()(unsigned int const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28628F7D8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<geom::anonymous namespace::hull_mesh<double>::build_initial_hull(void)::{lambda(unsigned int)#1},std::allocator<geom::anonymous namespace::hull_mesh<double>::build_initial_hull(void)::{lambda(unsigned int)#1}>,unsigned int ()(unsigned int const&)>::operator()(uint64_t a1, unsigned int *a2, double a3, double a4, float64x2_t a5, double a6, float64x2_t a7)
{
  v7 = *a2;
  if (*(a1 + 8) == v7 || *(a1 + 12) == v7 || *(a1 + 16) == v7)
  {
    return 0;
  }

  if (*(a1 + 24))
  {
    return 1;
  }

  v11 = *(a1 + 32);
  v12 = (*(v11 + 96) + 32 * v7);
  v13 = *(v11 + 72) + 112 * *(a1 + 20);
  LODWORD(a5.f64[0]) = *(v13 + 96);
  a5.f64[0] = *&a5.f64[0];
  a7.f64[0] = *(v13 + 48);
  if (vmulq_f64(vsubq_f64(v12[1], vdivq_f64(*(v13 + 80), a5)), vdivq_f64(*(v13 + 32), a7)).f64[0] + vaddvq_f64(vmulq_f64(vsubq_f64(*v12, vdivq_f64(*(v13 + 64), vdupq_lane_s64(*&a5.f64[0], 0))), vdivq_f64(*(v13 + 16), vdupq_lane_s64(*&a7.f64[0], 0)))) > 0.0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t std::__function::__func<geom::anonymous namespace::hull_mesh<double>::build_initial_hull(void)::{lambda(unsigned int)#1},std::allocator<geom::anonymous namespace::hull_mesh<double>::build_initial_hull(void)::{lambda(unsigned int)#1}>,unsigned int ()(unsigned int const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void geom::anonymous namespace::hull_mesh<double>::delete_face(uint64_t a1, unsigned int a2, int a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v25[0] = a2;
  v4 = a2;
  v5 = (*(a1 + 72) + 112 * a2);
  if (a3)
  {
    v6 = *v5;
    do
    {
      v7 = *(a1 + 48) + 16 * v6;
      v8 = *(v7 + 8);
      *v26 = v6;
      *v7 = -1;
      *(v7 + 8) = -1;
      std::vector<unsigned int>::push_back[abi:nn200100](a1, v26);
      v6 = v8;
    }

    while (v8 != *v5);
  }

  *v5 = -1;
  *(v5 + 6) = 0;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 56) = 1;
  *(v5 + 4) = 0u;
  *(v5 + 5) = 0u;
  v5[24] = 0;
  v9 = *(a1 + 168);
  if (v4 < (*(a1 + 176) - v9) >> 2)
  {
    v10 = *(v9 + 4 * v4);
    if (v10)
    {
      v11 = *(a1 + 144);
      v12 = (v11 + 24 * v10);
      *(v9 + 4 * *v12) = 0;
      v13 = *(a1 + 152);
      v15 = *(v13 - 24);
      v13 -= 24;
      v14 = v15;
      *v26 = *(v13 + 4);
      *&v26[16] = *(v13 + 20);
      *(a1 + 152) = v13;
      if (0xAAAAAAAAAAAAAAABLL * ((v13 - v11) >> 3) != v10)
      {
        *v12 = v14;
        *(v12 + 2) = *&v26[4];
        *(*(a1 + 168) + 4 * v14) = v10;
        v16 = (2 * v10);
        v17 = *(a1 + 144);
        for (i = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 152) - v17) >> 3); i > v16; LODWORD(v10) = v19)
        {
          v19 = v16 | 1;
          if (i <= v19)
          {
            LODWORD(v19) = v16;
          }

          else if (*(v17 + 24 * v16 + 16) >= *(v17 + 24 * v19 + 16))
          {
            LODWORD(v19) = v16;
          }

          v20 = (v17 + 24 * v19);
          v21 = (v17 + 24 * v10);
          if (*(v20 + 2) < *(v21 + 2))
          {
            break;
          }

          v22 = *v21;
          *v21 = *v20;
          *v20 = v22;
          v23 = *(v21 + 2);
          *(v21 + 2) = *(v20 + 2);
          *(v20 + 2) = v23;
          v17 = *(a1 + 144);
          v24 = *(a1 + 168);
          *(v24 + 4 * *(v17 + 24 * v10)) = v10;
          *(v24 + 4 * *(v17 + 24 * v19)) = v19;
          v16 = (2 * v19);
          i = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 152) - v17) >> 3);
        }
      }
    }
  }

  std::vector<unsigned int>::push_back[abi:nn200100]((a1 + 24), v25);
}

__n128 std::__function::__func<geom::anonymous namespace::hull_mesh<double>::find_horizon(std::vector<unsigned int> &,std::vector<unsigned int> &,unsigned int &,double &)::{lambda(unsigned int)#1},std::allocator<geom::anonymous namespace::hull_mesh<double>::find_horizon(std::vector<unsigned int> &,std::vector<unsigned int> &,unsigned int &,double &)::{lambda(unsigned int)#1}>,BOOL ()(unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28628F858;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

BOOL std::__function::__func<geom::anonymous namespace::hull_mesh<double>::find_horizon(std::vector<unsigned int> &,std::vector<unsigned int> &,unsigned int &,double &)::{lambda(unsigned int)#1},std::allocator<geom::anonymous namespace::hull_mesh<double>::find_horizon(std::vector<unsigned int> &,std::vector<unsigned int> &,unsigned int &,double &)::{lambda(unsigned int)#1}>,BOOL ()(unsigned int)>::operator()(uint64_t a1, unsigned int *a2, double a3, double a4, double a5, double a6, float64x2_t a7)
{
  v7 = *(a1 + 8);
  v8 = (*(v7 + 72) + 112 * *a2);
  if (LOBYTE(v8[3].f64[1]))
  {
    return 1;
  }

  v10 = (*(v7 + 96) + 32 * *(*(v7 + 48) + 16 * LODWORD(v8->f64[0]) + 12));
  a7.f64[0] = v8[3].f64[0];
  return vmulq_f64(vsubq_f64(*(*(a1 + 16) + 16), v10[1]), vdivq_f64(v8[2], a7)).f64[0] + vaddvq_f64(vmulq_f64(vsubq_f64(**(a1 + 16), *v10), vdivq_f64(v8[1], vdupq_lane_s64(*&a7.f64[0], 0)))) >= -*(v7 + 544);
}

uint64_t std::__function::__func<geom::anonymous namespace::hull_mesh<double>::find_horizon(std::vector<unsigned int> &,std::vector<unsigned int> &,unsigned int &,double &)::{lambda(unsigned int)#1},std::allocator<geom::anonymous namespace::hull_mesh<double>::find_horizon(std::vector<unsigned int> &,std::vector<unsigned int> &,unsigned int &,double &)::{lambda(unsigned int)#1}>,BOOL ()(unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL geom::anonymous namespace::hull_mesh<double>::is_halfedge_dissolvable(uint64_t a1, unsigned int a2, double a3, double a4, double a5, double a6, double a7, double a8, float64x2_t a9)
{
  v9 = *(a1 + 48);
  v10 = v9 + 16 * *(v9 + 16 * a2 + 4);
  v11 = (v9 + 16 * *(v10 + 8));
  v12 = v11[1];
  v13 = (v9 + 16 * v12);
  v14 = (v9 + 16 * v13[2]);
  v15 = v14[1];
  v16 = (v9 + 16 * v15);
  if (v16[2] != a2)
  {
    return 1;
  }

  if (*(v9 + 16 * *(v9 + 16 * *(v9 + 16 * *(v9 + 16 * *(v9 + 16 * v13[1] + 8) + 4) + 8) + 4) + 8) == v12)
  {
    return 0;
  }

  if (*(v9 + 16 * *(v9 + 16 * *(v9 + 16 * *(v9 + 16 * *(v9 + 16 * v16[1] + 8) + 4) + 8) + 4) + 8) == v15)
  {
    return 0;
  }

  v17 = *(a1 + 72);
  v18 = v17 + 112 * *v14;
  v19 = *(v18 + 96);
  if (v19 == 3)
  {
    return 0;
  }

  v20 = (v9 + 16 * a2);
  v21 = v17 + 112 * *v20;
  v22 = *(v21 + 96);
  if (v22 == 3)
  {
    return 0;
  }

  v25 = *(v18 + 16);
  v24 = *(v18 + 32);
  v26 = vaddq_f64(v25, *(v21 + 16));
  v27 = vaddq_f64(v24, *(v21 + 32));
  a9.f64[0] = sqrt(vmulq_f64(v27, v27).f64[0] + vaddvq_f64(vmulq_f64(v26, v26)));
  if (fabs(a9.f64[0]) <= 2.22044605e-16)
  {
    return 1;
  }

  v28 = v17 + 112 * *v11;
  v29 = *(a1 + 96);
  v30 = (v29 + 32 * v20[3]);
  v32 = *v30;
  v31 = v30[1];
  v33 = (v29 + 32 * *(v10 + 12));
  v34 = *v33;
  v34.f64[0] = (v22 + *(v28 + 96) - 3);
  __asm { FMOV            V18.2D, #-2.0 }

  v39 = vsubq_f64(*v30, vdivq_f64(vmlaq_f64(vsubq_f64(vaddq_f64(*(v28 + 64), *(v21 + 64)), *v33), _Q18, *v30), vdupq_lane_s64(*&v34.f64[0], 0)));
  v40 = vmulq_f64(vdivq_f64(v27, a9), vsubq_f64(v31, vdivq_f64(vmlaq_f64(vsubq_f64(vaddq_f64(*(v28 + 80), *(v21 + 80)), v33[1]), _Q18, v31), v34))).f64[0] + vaddvq_f64(vmulq_f64(vdivq_f64(v26, vdupq_lane_s64(*&a9.f64[0], 0)), v39));
  v41 = *(a1 + 544);
  v42 = -v41;
  if (v40 > v41 || v40 < v42)
  {
    return 0;
  }

  v39.f64[0] = (v19 - 1);
  v44 = vdivq_f64(vsubq_f64(*(v18 + 80), v31), v39);
  v45 = (v29 + 32 * v16[3]);
  v46 = v45[1];
  v47 = (v29 + 32 * v13[3]);
  v48 = v47[1];
  v49 = vnegq_f64(v46);
  *&v50.f64[0] = *&vmlaq_laneq_f64(vmulq_laneq_f64(v49, *v47, 1), v48, *v45, 1);
  *&v51.f64[0] = *&vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v31), *v47, 1), v48, v32, 1);
  v48.f64[1] = v47->f64[0];
  v52 = vnegq_f64(*v45);
  v46.f64[1] = v45->f64[0];
  v53 = vmlaq_f64(vmulq_f64(v48, v52), *v47, v46);
  *&v50.f64[1] = v53.i64[0];
  v54 = vdivq_f64(vsubq_f64(*(v18 + 64), v32), vdupq_lane_s64(*&v39.f64[0], 0));
  v55 = vaddq_f64(v25, v50);
  v56.f64[0] = v30[1].f64[0];
  v56.f64[1] = v30->f64[0];
  v57 = vmlaq_f64(vmulq_f64(v56, v52), v32, v46);
  *&v49.f64[0] = *&vmlaq_laneq_f64(vmulq_laneq_f64(v49, v32, 1), v31, *v45, 1);
  *&v49.f64[1] = v57.i64[0];
  v58 = vmlaq_f64(vmulq_f64(v48, vnegq_f64(v32)), *v47, v56);
  *&v51.f64[1] = v58.i64[0];
  v59 = vsubq_f64(vsubq_f64(v55, v49), v51);
  v60 = vsubq_f64(vsubq_f64(vaddq_f64(v24, vdupq_laneq_s64(v53, 1)), vdupq_laneq_s64(v57, 1)), vdupq_laneq_s64(v58, 1));
  v61 = vmulq_f64(v60, v60);
  v61.f64[0] = sqrt(v61.f64[0] + vaddvq_f64(vmulq_f64(v59, v59)));
  v62 = vmulq_f64(vsubq_f64(v31, v44), vdivq_f64(v60, v61)).f64[0] + vaddvq_f64(vmulq_f64(vsubq_f64(v32, v54), vdivq_f64(v59, vdupq_lane_s64(*&v61.f64[0], 0))));
  return v62 <= v41 && v62 >= v42;
}

uint64_t geom::anonymous namespace::hull_mesh<double>::dissolve_vertex_if_redundant(uint64_t a1, unsigned int a2, unsigned int **a3, const void **a4)
{
  v131 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 72);
  if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 80) - v4) >> 4) - ((*(a1 + 32) - *(a1 + 24)) >> 2) == 2)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(a1 + 48);
  v7 = *(v6 + 16 * a2 + 4);
  if (*(v6 + 16 * *(v6 + 16 * *(v6 + 16 * v7 + 8) + 4) + 8) != a2)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = (v6 + 16 * a2);
  if (*(v4 + 112 * *(v6 + 16 * v7) + 96) >= *(v4 + 112 * *v10 + 96))
  {
    v11 = a2;
  }

  else
  {
    v11 = *(v6 + 16 * v7 + 8);
  }

  v12 = v11;
  do
  {
    v13 = v12;
    v14 = v6 + 16 * v12;
    v12 = *(v14 + 8);
  }

  while (v12 != v11);
  v15 = v10[2];
  v16 = (v6 + 16 * v11);
  if (*(v6 + 16 * v15 + 8) == v13)
  {
    v17 = *(v14 + 4);
    v128 = *(v6 + 16 * v17 + 8);
    v18 = *v16;
    v19 = v16[1];
    v20 = v19;
    do
    {
      v21 = v20;
      v20 = *(v6 + 16 * v20 + 8);
    }

    while (v20 != v19);
    v22 = *(v6 + 16 * v19);
    v23 = (*(a1 + 96) + 32 * v16[3]);
    v24 = 112 * v22;
    v25 = (v4 + v24);
    v26 = (v4 + 112 * v18);
    v27 = vaddq_f64(v26[2], v25[2]);
    v28 = vaddq_f64(v26[1], v25[1]);
    v25[1] = v28;
    v25[2] = v27;
    v28.f64[0] = sqrt(vmulq_f64(v27, v27).f64[0] + vaddvq_f64(vmulq_f64(v28, v28)));
    v29 = *(a1 + 72) + v24;
    *(v29 + 48) = v28.f64[0];
    *(v29 + 56) = v28.f64[0] <= 2.22044605e-16;
    v30 = vsubq_f64(*(v29 + 80), v23[1]);
    *(v29 + 64) = vsubq_f64(*(v29 + 64), *v23);
    *(v29 + 80) = v30;
    v31 = *(a1 + 72);
    --*(v31 + v24 + 96);
    v32 = (v31 + 112 * v18 + 100);
    if (*v32 != -1)
    {
      std::vector<unsigned int>::push_back[abi:nn200100](a4, v32);
      v31 = *(a1 + 72);
      *(v31 + 112 * v18 + 100) = -1;
    }

    v33 = v31 + 112 * v22;
    v35 = *(v33 + 100);
    v34 = (v33 + 100);
    if (v35 != -1)
    {
      std::vector<unsigned int>::push_back[abi:nn200100](a4, v34);
      *(*(a1 + 72) + 112 * v22 + 100) = -1;
    }

    v36 = *(a1 + 48);
    *(v36 + 16 * v15) = v22;
    *v130 = v13;
    v37 = (v36 + 16 * v13);
    *v37 = -1;
    v37[1] = -1;
    std::vector<unsigned int>::push_back[abi:nn200100](a1, v130);
    *v130 = v11;
    v38 = (*(a1 + 48) + 16 * v11);
    *v38 = -1;
    v38[1] = -1;
    std::vector<unsigned int>::push_back[abi:nn200100](a1, v130);
    *v130 = v17;
    v39 = (*(a1 + 48) + 16 * v17);
    *v39 = -1;
    v39[1] = -1;
    std::vector<unsigned int>::push_back[abi:nn200100](a1, v130);
    *v130 = v19;
    v40 = (*(a1 + 48) + 16 * v19);
    *v40 = -1;
    v40[1] = -1;
    std::vector<unsigned int>::push_back[abi:nn200100](a1, v130);
    v41 = *(a1 + 72) + 112 * v22;
    *v41 = v15;
    v42 = *(a1 + 48);
    *(v42 + 16 * v21 + 8) = v15;
    *(v42 + 16 * v15 + 8) = v128;
    if ((*(v41 + 56) & 1) == 0)
    {
      v43 = *(a1 + 168);
      if (v22 < (*(a1 + 176) - v43) >> 2)
      {
        v44 = *(v43 + 4 * v22);
        if (v44)
        {
          v45 = *(a1 + 144);
          v46 = (v45 + 24 * v44);
          *(v43 + 4 * *v46) = 0;
          v47 = *(a1 + 152);
          v49 = *(v47 - 24);
          v47 -= 24;
          v48 = v49;
          *v130 = *(v47 + 4);
          *&v130[16] = *(v47 + 20);
          *(a1 + 152) = v47;
          if (0xAAAAAAAAAAAAAAABLL * ((v47 - v45) >> 3) != v44)
          {
            *v46 = v48;
            *(v46 + 2) = *&v130[4];
            *(*(a1 + 168) + 4 * v48) = v44;
            v50 = (2 * v44);
            v51 = *(a1 + 144);
            for (i = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 152) - v51) >> 3); i > v50; LODWORD(v44) = v53)
            {
              v53 = v50 | 1;
              if (i <= v53)
              {
                LODWORD(v53) = v50;
              }

              else if (*(v51 + 24 * v50 + 16) >= *(v51 + 24 * v53 + 16))
              {
                LODWORD(v53) = v50;
              }

              v54 = (v51 + 24 * v53);
              v55 = (v51 + 24 * v44);
              if (*(v54 + 2) < *(v55 + 2))
              {
                break;
              }

              v56 = *v55;
              *v55 = *v54;
              *v54 = v56;
              v57 = *(v55 + 2);
              *(v55 + 2) = *(v54 + 2);
              *(v54 + 2) = v57;
              v51 = *(a1 + 144);
              v58 = *(a1 + 168);
              *(v58 + 4 * *(v51 + 24 * v44)) = v44;
              *(v58 + 4 * *(v51 + 24 * v53)) = v53;
              v50 = (2 * v53);
              i = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 152) - v51) >> 3);
            }
          }
        }
      }
    }
  }

  else
  {
    v60 = *(v16 + 1);
    v61 = (v6 + 16 * v60);
    v62 = v61[2];
    v63 = v6 + 16 * v62;
    v15 = *(v63 + 4);
    v64 = (v6 + 16 * v15);
    *(v64 + 1) = v60;
    LODWORD(v63) = *(v63 + 8);
    v61[1] = v15;
    v61[2] = v63;
    *(v4 + 112 * *v64) = v15;
    v65 = *v61;
    v66 = v4 + 112 * v65;
    *v66 = v60;
    v67 = *v16;
    v68 = v4 + 112 * v67;
    v69 = v64[3];
    v70 = *(a1 + 96);
    v71 = (v70 + 32 * v69);
    v72 = (v70 + 32 * v16[3]);
    v73 = (v70 + 32 * v61[3]);
    v74 = v71[1];
    v75 = v72[1];
    v76 = vnegq_f64(v74);
    v77 = vmlaq_laneq_f64(vmulq_laneq_f64(v76, *v72, 1), v75, *v71, 1);
    v78 = vnegq_f64(v75);
    v75.f64[1] = v72->f64[0];
    v74.f64[1] = v71->f64[0];
    v79 = vnegq_f64(*v71);
    v80 = vmlaq_f64(vmulq_f64(v75, v79), *v72, v74);
    v81 = v73[1];
    v82 = vmlaq_laneq_f64(vmulq_laneq_f64(v78, *v73, 1), v81, *v72, 1);
    *&v76.f64[0] = *&vmlaq_laneq_f64(vmulq_laneq_f64(v76, *v73, 1), v81, *v71, 1);
    v81.f64[1] = v73->f64[0];
    v83 = vmlaq_f64(vmulq_f64(v81, v79), *v73, v74);
    *&v76.f64[1] = v83.i64[0];
    v84 = vdupq_laneq_s64(v83, 1);
    v85 = vaddq_f64(v80, vmlaq_f64(vmulq_f64(v81, vnegq_f64(*v72)), *v73, v75));
    v86 = vdupq_laneq_s64(v85, 1);
    *&v75.f64[0] = *&vaddq_f64(v77, v82);
    *&v75.f64[1] = v85.i64[0];
    v87 = vsubq_f64(*(v68 + 32), v86);
    *(v68 + 16) = vsubq_f64(*(v68 + 16), v75);
    *(v68 + 32) = v87;
    v88 = vaddq_f64(*(v66 + 32), v86);
    *(v66 + 16) = vaddq_f64(*(v66 + 16), v75);
    *(v66 + 32) = v88;
    v89 = vaddq_f64(*(v68 + 32), v84);
    *(v68 + 16) = vaddq_f64(*(v68 + 16), v76);
    *(v68 + 32) = v89;
    v90 = vsubq_f64(*(v66 + 32), v84);
    v91 = vsubq_f64(*(v66 + 16), v76);
    *(v66 + 16) = v91;
    *(v66 + 32) = v90;
    *(v68 + 48) = sqrt(vmulq_f64(*(v68 + 32), *(v68 + 32)).f64[0] + vaddvq_f64(vmulq_f64(*(v68 + 16), *(v68 + 16))));
    v91.f64[0] = sqrt(vmulq_f64(v90, v90).f64[0] + vaddvq_f64(vmulq_f64(v91, v91)));
    *(v66 + 48) = v91.f64[0];
    *(v68 + 56) = *(v68 + 48) <= 2.22044605e-16;
    *(v66 + 56) = v91.f64[0] <= 2.22044605e-16;
    v92 = vsubq_f64(*(v68 + 80), v72[1]);
    *(v68 + 64) = vsubq_f64(*(v68 + 64), *v72);
    *(v68 + 80) = v92;
    v93 = vsubq_f64(*(v66 + 80), v72[1]);
    *(v66 + 64) = vsubq_f64(*(v66 + 64), *v72);
    *(v66 + 80) = v93;
    --*(v68 + 96);
    --*(v66 + 96);
    *v130 = v11;
    v94 = (*(a1 + 48) + 16 * v11);
    *v94 = -1;
    v94[1] = -1;
    std::vector<unsigned int>::push_back[abi:nn200100](a1, v130);
    *v130 = v62;
    v95 = (*(a1 + 48) + 16 * v62);
    *v95 = -1;
    v95[1] = -1;
    std::vector<unsigned int>::push_back[abi:nn200100](a1, v130);
    if ((*(v68 + 56) & 1) == 0)
    {
      v96 = *(a1 + 168);
      if (v67 < (*(a1 + 176) - v96) >> 2)
      {
        v97 = *(v96 + 4 * v67);
        if (v97)
        {
          v98 = *(a1 + 144);
          v99 = (v98 + 24 * v97);
          *(v96 + 4 * *v99) = 0;
          v100 = *(a1 + 152);
          v102 = *(v100 - 24);
          v100 -= 24;
          v101 = v102;
          *v130 = *(v100 + 4);
          *&v130[16] = *(v100 + 20);
          *(a1 + 152) = v100;
          if (0xAAAAAAAAAAAAAAABLL * ((v100 - v98) >> 3) != v97)
          {
            *v99 = v101;
            *(v99 + 2) = *&v130[4];
            *(*(a1 + 168) + 4 * v101) = v97;
            v103 = (2 * v97);
            v104 = *(a1 + 144);
            for (j = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 152) - v104) >> 3); j > v103; LODWORD(v97) = v106)
            {
              v106 = v103 | 1;
              if (j <= v106)
              {
                LODWORD(v106) = v103;
              }

              else if (*(v104 + 24 * v103 + 16) >= *(v104 + 24 * v106 + 16))
              {
                LODWORD(v106) = v103;
              }

              v107 = (v104 + 24 * v106);
              v108 = (v104 + 24 * v97);
              if (*(v107 + 2) < *(v108 + 2))
              {
                break;
              }

              v109 = *v108;
              *v108 = *v107;
              *v107 = v109;
              v110 = *(v108 + 2);
              *(v108 + 2) = *(v107 + 2);
              *(v107 + 2) = v110;
              v104 = *(a1 + 144);
              v111 = *(a1 + 168);
              *(v111 + 4 * *(v104 + 24 * v97)) = v97;
              *(v111 + 4 * *(v104 + 24 * v106)) = v106;
              v103 = (2 * v106);
              j = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 152) - v104) >> 3);
            }
          }
        }
      }
    }

    if ((*(v66 + 56) & 1) == 0)
    {
      v112 = *(a1 + 168);
      if (v65 < (*(a1 + 176) - v112) >> 2)
      {
        v113 = *(v112 + 4 * v65);
        if (v113)
        {
          v114 = *(a1 + 144);
          v115 = (v114 + 24 * v113);
          *(v112 + 4 * *v115) = 0;
          v116 = *(a1 + 152);
          v118 = *(v116 - 24);
          v116 -= 24;
          v117 = v118;
          *v130 = *(v116 + 4);
          *&v130[16] = *(v116 + 20);
          *(a1 + 152) = v116;
          if (0xAAAAAAAAAAAAAAABLL * ((v116 - v114) >> 3) != v113)
          {
            *v115 = v117;
            *(v115 + 2) = *&v130[4];
            *(*(a1 + 168) + 4 * v117) = v113;
            v119 = (2 * v113);
            v120 = *(a1 + 144);
            for (k = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 152) - v120) >> 3); k > v119; LODWORD(v113) = v122)
            {
              v122 = v119 | 1;
              if (k <= v122)
              {
                LODWORD(v122) = v119;
              }

              else if (*(v120 + 24 * v119 + 16) >= *(v120 + 24 * v122 + 16))
              {
                LODWORD(v122) = v119;
              }

              v123 = (v120 + 24 * v122);
              v124 = (v120 + 24 * v113);
              if (*(v123 + 2) < *(v124 + 2))
              {
                break;
              }

              v125 = *v124;
              *v124 = *v123;
              *v123 = v125;
              v126 = *(v124 + 2);
              *(v124 + 2) = *(v123 + 2);
              *(v123 + 2) = v126;
              v120 = *(a1 + 144);
              v127 = *(a1 + 168);
              *(v127 + 4 * *(v120 + 24 * v113)) = v113;
              *(v127 + 4 * *(v120 + 24 * v122)) = v122;
              v119 = (2 * v122);
              k = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 152) - v120) >> 3);
            }
          }
        }
      }
    }
  }

  return v15;
}

__n128 std::__function::__func<geom::anonymous namespace::hull_mesh<double>::repartition_points_after_grow(std::vector<unsigned int> const&,unsigned int const&,unsigned int const&)::{lambda(unsigned int const&)#1},std::allocator<geom::anonymous namespace::hull_mesh<double>::repartition_points_after_grow(std::vector<unsigned int> const&,unsigned int const&,unsigned int const&)::{lambda(unsigned int const&)#1}>,unsigned int ()(unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28628F8D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<geom::anonymous namespace::hull_mesh<double>::repartition_points_after_grow(std::vector<unsigned int> const&,unsigned int const&,unsigned int const&)::{lambda(unsigned int const&)#1},std::allocator<geom::anonymous namespace::hull_mesh<double>::repartition_points_after_grow(std::vector<unsigned int> const&,unsigned int const&,unsigned int const&)::{lambda(unsigned int const&)#1}>,unsigned int ()(unsigned int)>::operator()(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  result = *(a1 + 20);
  if (result)
  {
    v5 = 0;
    v9 = *(v2 + 96) + 32 * v3;
    v7 = *v9;
    v6 = *(v9 + 16);
    LODWORD(v9) = -1;
    v10 = 1;
    v11 = -INFINITY;
    do
    {
      v8 = *(v2 + 392);
      v12 = vmulq_f64(vsubq_f64(v6, *(v8 + 32 * (v10 - 1) + 16)), *(v8 + 32 * v10 + 16)).f64[0] + vaddvq_f64(vmulq_f64(vsubq_f64(v7, *(v8 + 32 * (v10 - 1))), *(v8 + 32 * v10)));
      if (v12 <= v11)
      {
        v9 = v9;
      }

      else
      {
        v11 = v12;
        v9 = v5;
      }

      ++v5;
      v10 += 2;
    }

    while (result != v5);
  }

  else
  {
    v9 = 0xFFFFFFFFLL;
    v11 = -INFINITY;
  }

  if (v11 > *(v2 + 544) * -2.0)
  {
    *(*(v2 + 120) + 8 * v3) = v11;
    return v9;
  }

  return result;
}

uint64_t std::__function::__func<geom::anonymous namespace::hull_mesh<double>::repartition_points_after_grow(std::vector<unsigned int> const&,unsigned int const&,unsigned int const&)::{lambda(unsigned int const&)#1},std::allocator<geom::anonymous namespace::hull_mesh<double>::repartition_points_after_grow(std::vector<unsigned int> const&,unsigned int const&,unsigned int const&)::{lambda(unsigned int const&)#1}>,unsigned int ()(unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table(uint64_t a1)
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

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(float *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
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
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
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

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__rehash<true>(uint64_t result, size_t __n)
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

      std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__do_rehash<true>(result, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::vector<BOOL>::reserve(char **a1, unint64_t a2)
{
  if (a2 > a1[2] << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:nn200100](&v2, a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }
}

void std::vector<BOOL>::__vallocate[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(a1, v2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 2);
  v10 = *a3;
  v11 = *(a3 + 2);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  std::__copy_move_unwrap_iters[abi:nn200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(&v18, &v16, &v14, v13);
}

void std::__copy_move_unwrap_iters[abi:nn200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  std::__copy_impl::operator()[abi:nn200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void std::__copy_impl::operator()[abi:nn200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

unint64_t *std::__copy_aligned[abi:nn200100]<std::vector<BOOL>,true>@<X0>(unint64_t **__return_ptr a1@<X8>, unint64_t *__src@<X0>, unsigned int a3@<W1>, uint64_t a4@<X2>, unsigned int a5@<W3>, uint64_t a6@<X4>)
{
  v8 = a5 - a3 + 8 * (a4 - __src);
  if (v8 <= 0)
  {
    v16 = *a6;
  }

  else
  {
    v9 = __src;
    __src = *a6;
    if (a3)
    {
      if (v8 >= (64 - a3))
      {
        v10 = 64 - a3;
      }

      else
      {
        v10 = v8;
      }

      v8 -= v10;
      v11 = *v9++;
      *__src = *__src & ~((0xFFFFFFFFFFFFFFFFLL >> (64 - a3 - v10)) & (-1 << a3)) | v11 & (0xFFFFFFFFFFFFFFFFLL >> (64 - a3 - v10)) & (-1 << a3);
      v12 = v10 + *(a6 + 8);
      __src = (__src + ((v12 >> 3) & 0x3FFFFFF8));
      *a6 = __src;
      *(a6 + 8) = v12 & 0x3F;
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
    if ((v8 + 63) >= 0x7F)
    {
      memmove(__src, v9, 8 * v14);
      __src = *a6;
    }

    v15 = v8 - (v14 << 6);
    v16 = &__src[v14];
    *a6 = v16;
    if (v15 >= 1)
    {
      *v16 = *v16 & ~(0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8)) | v9[v14] & (0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8));
      *(a6 + 8) = v15;
    }
  }

  *a1 = v16;
  *(a1 + 2) = *(a6 + 8);
  return __src;
}

void *std::__fill_n_BOOL[abi:nn200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:nn200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

double geom_create_bvh_create_opt_2f()
{
  opt_2f_obj_alloc = geom_bvh_create_opt_2f_obj_alloc();
  result = 0.0;
  *(opt_2f_obj_alloc + 24) = 0u;
  *(opt_2f_obj_alloc + 40) = 0u;
  *(opt_2f_obj_alloc + 16) = 1;
  *(opt_2f_obj_alloc + 24) = 1;
  *(opt_2f_obj_alloc + 48) = 1;
  return result;
}

double geom_create_bvh_create_opt_2d()
{
  opt_2d_obj_alloc = geom_bvh_create_opt_2d_obj_alloc();
  result = 0.0;
  *(opt_2d_obj_alloc + 24) = 0u;
  *(opt_2d_obj_alloc + 40) = 0u;
  *(opt_2d_obj_alloc + 16) = 1;
  *(opt_2d_obj_alloc + 24) = 1;
  *(opt_2d_obj_alloc + 48) = 1;
  return result;
}

double geom_create_bvh_create_opt_3f()
{
  opt_3f_obj_alloc = geom_bvh_create_opt_3f_obj_alloc();
  result = 0.0;
  *(opt_3f_obj_alloc + 24) = 0u;
  *(opt_3f_obj_alloc + 40) = 0u;
  *(opt_3f_obj_alloc + 16) = 1;
  *(opt_3f_obj_alloc + 24) = 1;
  *(opt_3f_obj_alloc + 48) = 1;
  return result;
}

double geom_create_bvh_create_opt_3d()
{
  opt_3d_obj_alloc = geom_bvh_create_opt_3d_obj_alloc();
  result = 0.0;
  *(opt_3d_obj_alloc + 24) = 0u;
  *(opt_3d_obj_alloc + 40) = 0u;
  *(opt_3d_obj_alloc + 16) = 1;
  *(opt_3d_obj_alloc + 24) = 1;
  *(opt_3d_obj_alloc + 48) = 1;
  return result;
}

uint64_t geom_bvh_create_opt_get_strategy_builtin_2f(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == 1)
  {
    return *(a1 + 32);
  }

  v3 = std::__throw_bad_variant_access[abi:nn200100]();
  return geom_bvh_create_opt_set_strategy_builtin_2f(v3, v4);
}

uint64_t geom_bvh_create_opt_set_strategy_builtin_2f(uint64_t result, int a2)
{
  if (*(result + 48) != 1)
  {
    *(result + 48) = 1;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t geom_bvh_create_opt_get_strategy_custom_heuristic_2f(uint64_t result, void *a2, _DWORD *a3)
{
  if (*(result + 48))
  {
    v3 = std::__throw_bad_variant_access[abi:nn200100]();
    return geom_bvh_create_opt_set_strategy_custom_heuristic_2f(v3, v4, v5);
  }

  else
  {
    if (a2)
    {
      *a2 = *(result + 32);
    }

    if (a3)
    {
      *a3 = *(result + 40);
    }
  }

  return result;
}

uint64_t geom_bvh_create_opt_set_strategy_custom_heuristic_2f(uint64_t result, uint64_t a2, int a3)
{
  if (*(result + 48))
  {
    *(result + 48) = 0;
  }

  *(result + 32) = a2;
  *(result + 40) = a3;
  return result;
}

uint64_t geom_bvh_create_opt_get_strategy_builtin_2d(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == 1)
  {
    return *(a1 + 32);
  }

  v3 = std::__throw_bad_variant_access[abi:nn200100]();
  return geom_bvh_create_opt_set_strategy_builtin_2d(v3, v4);
}

uint64_t geom_bvh_create_opt_set_strategy_builtin_2d(uint64_t result, int a2)
{
  if (*(result + 48) != 1)
  {
    *(result + 48) = 1;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t geom_bvh_create_opt_get_strategy_custom_heuristic_2d(uint64_t result, void *a2, _DWORD *a3)
{
  if (*(result + 48))
  {
    v3 = std::__throw_bad_variant_access[abi:nn200100]();
    return geom_bvh_create_opt_set_strategy_custom_heuristic_2d(v3, v4, v5);
  }

  else
  {
    if (a2)
    {
      *a2 = *(result + 32);
    }

    if (a3)
    {
      *a3 = *(result + 40);
    }
  }

  return result;
}

uint64_t geom_bvh_create_opt_set_strategy_custom_heuristic_2d(uint64_t result, uint64_t a2, int a3)
{
  if (*(result + 48))
  {
    *(result + 48) = 0;
  }

  *(result + 32) = a2;
  *(result + 40) = a3;
  return result;
}

uint64_t geom_bvh_create_opt_get_strategy_builtin_3f(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == 1)
  {
    return *(a1 + 32);
  }

  v3 = std::__throw_bad_variant_access[abi:nn200100]();
  return geom_bvh_create_opt_set_strategy_builtin_3f(v3, v4);
}

uint64_t geom_bvh_create_opt_set_strategy_builtin_3f(uint64_t result, int a2)
{
  if (*(result + 48) != 1)
  {
    *(result + 48) = 1;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t geom_bvh_create_opt_get_strategy_custom_heuristic_3f(uint64_t result, void *a2, _DWORD *a3)
{
  if (*(result + 48))
  {
    v3 = std::__throw_bad_variant_access[abi:nn200100]();
    return geom_bvh_create_opt_set_strategy_custom_heuristic_3f(v3, v4, v5);
  }

  else
  {
    if (a2)
    {
      *a2 = *(result + 32);
    }

    if (a3)
    {
      *a3 = *(result + 40);
    }
  }

  return result;
}

uint64_t geom_bvh_create_opt_set_strategy_custom_heuristic_3f(uint64_t result, uint64_t a2, int a3)
{
  if (*(result + 48))
  {
    *(result + 48) = 0;
  }

  *(result + 32) = a2;
  *(result + 40) = a3;
  return result;
}

uint64_t geom_bvh_create_opt_get_strategy_builtin_3d(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == 1)
  {
    return *(a1 + 32);
  }

  v3 = std::__throw_bad_variant_access[abi:nn200100]();
  return geom_bvh_create_opt_set_strategy_builtin_3d(v3, v4);
}

uint64_t geom_bvh_create_opt_set_strategy_builtin_3d(uint64_t result, int a2)
{
  if (*(result + 48) != 1)
  {
    *(result + 48) = 1;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t geom_bvh_create_opt_get_strategy_custom_heuristic_3d(uint64_t result, void *a2, _DWORD *a3)
{
  if (*(result + 48))
  {
    v3 = std::__throw_bad_variant_access[abi:nn200100]();
    return geom_bvh_create_opt_set_strategy_custom_heuristic_3d(v3, v4, v5);
  }

  else
  {
    if (a2)
    {
      *a2 = *(result + 32);
    }

    if (a3)
    {
      *a3 = *(result + 40);
    }
  }

  return result;
}

uint64_t geom_bvh_create_opt_set_strategy_custom_heuristic_3d(uint64_t result, uint64_t a2, int a3)
{
  if (*(result + 48))
  {
    *(result + 48) = 0;
  }

  *(result + 32) = a2;
  *(result + 40) = a3;
  return result;
}

uint64_t geom_create_bvh_with_default_options_2f(const void *a1, void *a2, const void *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = 0u;
  v6 = 0u;
  v4 = 1;
  LOBYTE(v5) = 1;
  DWORD2(v6) = 1;
  return create_bvh_with_opt<float,(unsigned char)2>(a1, a2, a3, &v4, 0);
}

uint64_t create_bvh_with_opt<float,(unsigned char)2>(const void *a1, void *a2, const void *a3, void *a4, uint64_t a5)
{
  if (a5)
  {
    v9 = a5;
    geom::bvh<float,(unsigned char)2>::reset(a5 + 16, a2, a1, a3, a1, *(a4 + 8));
  }

  else
  {
    v9 = geom_bvh_2f_obj_alloc();
    geom::bvh<float,(unsigned char)2>::bvh(v9 + 16, a2, a1, a3, a1, *(a4 + 8));
  }

  v10 = *(a4 + 8);
  if (!v10)
  {
  }

  if (v10 == 1)
  {
    return v9;
  }

  else
  {
    v12 = std::__throw_bad_variant_access[abi:nn200100]();
    return geom_recreate_bvh_with_options_2f(v12, v13, v14, v15, v16);
  }
}

uint64_t geom_create_bvh_with_default_options_2d(const void *a1, void *a2, const void *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = 0u;
  v6 = 0u;
  v4 = 1;
  LOBYTE(v5) = 1;
  DWORD2(v6) = 1;
  return create_bvh_with_opt<double,(unsigned char)2>(a1, a2, a3, &v4, 0);
}

uint64_t create_bvh_with_opt<double,(unsigned char)2>(const void *a1, void *a2, const void *a3, void *a4, uint64_t a5)
{
  if (a5)
  {
    v9 = a5;
    geom::bvh<double,(unsigned char)2>::reset(a5 + 16, a2, a1, a3, a1, *(a4 + 8));
  }

  else
  {
    v9 = geom_bvh_2d_obj_alloc();
    geom::bvh<double,(unsigned char)2>::bvh(v9 + 16, a2, a1, a3, a1, *(a4 + 8));
  }

  v10 = *(a4 + 8);
  if (!v10)
  {
  }

  if (v10 == 1)
  {
    return v9;
  }

  else
  {
    v12 = std::__throw_bad_variant_access[abi:nn200100]();
    return geom_recreate_bvh_with_options_2d(v12, v13, v14, v15, v16);
  }
}

uint64_t geom_create_bvh_with_default_options_3f(const void *a1, void *a2, const void *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = 0u;
  v6 = 0u;
  v4 = 1;
  LOBYTE(v5) = 1;
  DWORD2(v6) = 1;
  return create_bvh_with_opt<float,(unsigned char)3>(a1, a2, a3, &v4, 0);
}

uint64_t create_bvh_with_opt<float,(unsigned char)3>(const void *a1, void *a2, const void *a3, void *a4, uint64_t a5)
{
  if (a5)
  {
    v9 = a5;
    geom::bvh<float,(unsigned char)3>::reset(a5 + 16, a2, a1, a3, a1, *(a4 + 8));
  }

  else
  {
    v9 = geom_bvh_3f_obj_alloc();
    geom::bvh<float,(unsigned char)3>::bvh(v9 + 16, a2, a1, a3, a1, *(a4 + 8));
  }

  v10 = *(a4 + 8);
  if (!v10)
  {
  }

  if (v10 == 1)
  {
    return v9;
  }

  else
  {
    v12 = std::__throw_bad_variant_access[abi:nn200100]();
    return geom_recreate_bvh_with_options_3f(v12, v13, v14, v15, v16);
  }
}

uint64_t geom_create_bvh_with_default_options_3d(const void *a1, void *a2, const void *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = 0u;
  v6 = 0u;
  v4 = 1;
  LOBYTE(v5) = 1;
  DWORD2(v6) = 1;
  return create_bvh_with_opt<double,(unsigned char)3>(a1, a2, a3, &v4, 0);
}

uint64_t create_bvh_with_opt<double,(unsigned char)3>(const void *a1, void *a2, const void *a3, void *a4, uint64_t a5)
{
  if (a5)
  {
    v9 = a5;
    geom::bvh<double,(unsigned char)3>::reset(a5 + 16, a2, a1, a3, a1, *(a4 + 8));
  }

  else
  {
    v9 = geom_bvh_3d_obj_alloc();
    geom::bvh<double,(unsigned char)3>::bvh(v9 + 16, a2, a1, a3, a1, *(a4 + 8));
  }

  v10 = *(a4 + 8);
  if (!v10)
  {
  }

  if (v10 == 1)
  {
    return v9;
  }

  else
  {
    v12 = std::__throw_bad_variant_access[abi:nn200100]();
    return geom_recreate_bvh_with_options_3d(v12, v13, v14, v15, v16);
  }
}

uint64_t create_bvh<float,(unsigned char)2>(const void *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v12 = geom_bvh_2f_obj_alloc();
  geom::bvh<float,(unsigned char)2>::bvh(v12 + 16, a2, a1, a3, a1, a6);
  return v12;
}

uint64_t create_bvh<double,(unsigned char)2>(const void *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v12 = geom_bvh_2d_obj_alloc();
  geom::bvh<double,(unsigned char)2>::bvh(v12 + 16, a2, a1, a3, a1, a6);
  return v12;
}

uint64_t create_bvh<float,(unsigned char)3>(const void *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v12 = geom_bvh_3f_obj_alloc();
  geom::bvh<float,(unsigned char)3>::bvh(v12 + 16, a2, a1, a3, a1, a6);
  return v12;
}

uint64_t create_bvh<double,(unsigned char)3>(const void *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v12 = geom_bvh_3d_obj_alloc();
  geom::bvh<double,(unsigned char)3>::bvh(v12 + 16, a2, a1, a3, a1, a6);
  return v12;
}

void create_bvh_custom_heuristic<float,(unsigned char)2,true>(const void *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v15[4] = *MEMORY[0x277D85DE8];
  v12 = a5;
  v11 = geom_bvh_2f_obj_alloc();
  geom::bvh<float,(unsigned char)2>::bvh(v11 + 16, a2, a1, a3, a1, 1);
  v15[0] = &unk_28628F958;
  v15[1] = a4;
  v15[3] = v15;
  v14[0] = &unk_28628FEB8;
  v14[1] = &v12;
  v14[3] = v14;
  std::__function::__value_func<float ()(unsigned int,geom::bbox<float,(unsigned char)2> const&,unsigned int,geom::bbox<float,(unsigned char)2> const&)>::__value_func[abi:nn200100](v13, v15);
  geom::bvh<float,(unsigned char)2>::build_from_custom_heuristic<std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)2> const&,unsigned int,geom::bbox<float,(unsigned char)2> const&)>>(v11 + 16, v14, v13, v6);
}

void sub_24FFBF01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  std::__function::__value_func<float ()(unsigned int,geom::bbox<float,(unsigned char)2> const&,unsigned int,geom::bbox<float,(unsigned char)2> const&)>::~__value_func[abi:nn200100](va);
  std::__function::__value_func<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>::~__value_func[abi:nn200100](va1);
  std::__function::__value_func<float ()(unsigned int,geom::bbox<float,(unsigned char)2> const&,unsigned int,geom::bbox<float,(unsigned char)2> const&)>::~__value_func[abi:nn200100](va2);
  _Unwind_Resume(a1);
}

void create_bvh_custom_heuristic<double,(unsigned char)2,true>(const void *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v15[4] = *MEMORY[0x277D85DE8];
  v12 = a5;
  v11 = geom_bvh_2d_obj_alloc();
  geom::bvh<double,(unsigned char)2>::bvh(v11 + 16, a2, a1, a3, a1, 1);
  v15[0] = &unk_28628FA78;
  v15[1] = a4;
  v15[3] = v15;
  v14[0] = &unk_28628FF38;
  v14[1] = &v12;
  v14[3] = v14;
  std::__function::__value_func<double ()(unsigned int,geom::bbox<double,(unsigned char)2> const&,unsigned int,geom::bbox<double,(unsigned char)2> const&)>::__value_func[abi:nn200100](v13, v15);
  geom::bvh<double,(unsigned char)2>::build_from_custom_heuristic<std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)2> const&,unsigned int,geom::bbox<double,(unsigned char)2> const&)>>(v11 + 16, v14, v13, v6);
}

void sub_24FFBF170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  std::__function::__value_func<double ()(unsigned int,geom::bbox<double,(unsigned char)2> const&,unsigned int,geom::bbox<double,(unsigned char)2> const&)>::~__value_func[abi:nn200100](va);
  std::__function::__value_func<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>::~__value_func[abi:nn200100](va1);
  std::__function::__value_func<double ()(unsigned int,geom::bbox<double,(unsigned char)2> const&,unsigned int,geom::bbox<double,(unsigned char)2> const&)>::~__value_func[abi:nn200100](va2);
  _Unwind_Resume(a1);
}

void create_bvh_custom_heuristic<float,(unsigned char)3,true>(const void *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v15[4] = *MEMORY[0x277D85DE8];
  v12 = a5;
  v11 = geom_bvh_3f_obj_alloc();
  geom::bvh<float,(unsigned char)3>::bvh(v11 + 16, a2, a1, a3, a1, 1);
  v15[0] = &unk_28628FC18;
  v15[1] = a4;
  v15[3] = v15;
  v14[0] = &unk_28628FFB8;
  v14[1] = &v12;
  v14[3] = v14;
  std::__function::__value_func<float ()(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)>::__value_func[abi:nn200100](v13, v15);
  geom::bvh<float,(unsigned char)3>::build_from_custom_heuristic<std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)>>(v11 + 16, v14, v13, v6);
}

void sub_24FFBF2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  std::__function::__value_func<float ()(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)>::~__value_func[abi:nn200100](va);
  std::__function::__value_func<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>::~__value_func[abi:nn200100](va1);
  std::__function::__value_func<float ()(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)>::~__value_func[abi:nn200100](va2);
  _Unwind_Resume(a1);
}

void create_bvh_custom_heuristic<double,(unsigned char)3,true>(const void *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v15[4] = *MEMORY[0x277D85DE8];
  v12 = a5;
  v11 = geom_bvh_3d_obj_alloc();
  geom::bvh<double,(unsigned char)3>::bvh(v11 + 16, a2, a1, a3, a1, 1);
  v15[0] = &unk_28628FDA8;
  v15[1] = a4;
  v15[3] = v15;
  v14[0] = &unk_286290038;
  v14[1] = &v12;
  v14[3] = v14;
  std::__function::__value_func<double ()(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)>::__value_func[abi:nn200100](v13, v15);
  geom::bvh<double,(unsigned char)3>::build_from_custom_heuristic<std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)>>(v11 + 16, v14, v13, v6);
}

void sub_24FFBF418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  std::__function::__value_func<double ()(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)>::~__value_func[abi:nn200100](va);
  std::__function::__value_func<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>::~__value_func[abi:nn200100](va1);
  std::__function::__value_func<double ()(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)>::~__value_func[abi:nn200100](va2);
  _Unwind_Resume(a1);
}

void geom_triangle_mesh_bvh_3f_dispose(uint64_t a1)
{
  if (*(a1 + 160) == 1)
  {
    v2 = *(a1 + 144);
    if (v2)
    {
      MEMORY[0x25305E3D0](v2, 0x1000C80451B5BE8);
    }
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  if (*(a1 + 184) == 1)
  {
    v3 = *(a1 + 168);
    if (v3)
    {
      MEMORY[0x25305E3D0](v3, 0x1000C8052888210);
    }
  }

  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  v4 = *(a1 + 120);
  if (v4)
  {
    *(a1 + 128) = v4;

    operator delete(v4);
  }
}

void geom_triangle_mesh_bvh_3d_dispose(uint64_t a1)
{
  if (*(a1 + 160) == 1)
  {
    v2 = *(a1 + 144);
    if (v2)
    {
      MEMORY[0x25305E3D0](v2, 0x1000C80E0EAB150);
    }
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  if (*(a1 + 184) == 1)
  {
    v3 = *(a1 + 168);
    if (v3)
    {
      MEMORY[0x25305E3D0](v3, 0x1000C8052888210);
    }
  }

  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  v4 = *(a1 + 120);
  if (v4)
  {
    *(a1 + 128) = v4;

    operator delete(v4);
  }
}

uint64_t geom_bezier_curve_bvh_2f_dispose(uint64_t result)
{
  v1 = result;
  if (*(result + 136) == 1)
  {
    result = *(result + 120);
    if (result)
    {
      result = MEMORY[0x25305E3D0](result, 0x1000C8000313F17);
    }
  }

  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  if (*(v1 + 160) == 1)
  {
    result = *(v1 + 144);
    if (result)
    {
      result = MEMORY[0x25305E3D0](result, 0x1000C8052888210);
    }
  }

  *(v1 + 144) = 0;
  *(v1 + 152) = 0;
  *(v1 + 160) = 0;
  return result;
}

uint64_t geom_bezier_curve_bvh_2d_dispose(uint64_t result)
{
  v1 = result;
  if (*(result + 136) == 1)
  {
    result = *(result + 120);
    if (result)
    {
      result = MEMORY[0x25305E3D0](result, 0x1000C80451B5BE8);
    }
  }

  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  if (*(v1 + 160) == 1)
  {
    result = *(v1 + 144);
    if (result)
    {
      result = MEMORY[0x25305E3D0](result, 0x1000C8052888210);
    }
  }

  *(v1 + 144) = 0;
  *(v1 + 152) = 0;
  *(v1 + 160) = 0;
  return result;
}

void *geom_create_triangle_mesh_bvh_3f(unint64_t a1, float32x4_t *a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v8 = a5;
  v10 = v9[19];
  v16[0] = v9[18];
  v16[1] = v10;
  v11 = v9[22];
  v15[0] = v9[21];
  v15[1] = v11;
  v12 = (v9[7] - v9[6]) >> 2;
  v14[0] = v9[6];
  v14[1] = v12;
  return v9;
}

void *geom_create_triangle_mesh_bvh_3d(unint64_t a1, char *a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v9 = v8[19];
  v15[0] = v8[18];
  v15[1] = v9;
  v10 = v8[22];
  v14[0] = v8[21];
  v14[1] = v10;
  v11 = (v8[7] - v8[6]) >> 2;
  v13[0] = v8[6];
  v13[1] = v11;
  return v8;
}

void geom_create_triangle_mesh_bvh_custom_heuristic_3f(unint64_t a1, float32x4_t *a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, __n128 a8)
{
  v8 = a7;
  v14[4] = *MEMORY[0x277D85DE8];
  v11 = a6;
  v14[0] = &unk_28628FC18;
  v14[1] = a5;
  v14[3] = v14;
  v13[0] = &unk_2862900B8;
  v13[1] = &v11;
  v13[3] = v13;
  std::__function::__value_func<float ()(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)>::__value_func[abi:nn200100](v12, v14);
  geom::bvh<float,(unsigned char)3>::build_from_custom_heuristic<std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)>>(v10 + 16, v13, v12, v8);
}

void geom_create_triangle_mesh_bvh_custom_heuristic_3d(unint64_t a1, char *a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v13[4] = *MEMORY[0x277D85DE8];
  v10 = a6;
  v13[0] = &unk_28628FDA8;
  v13[1] = a5;
  v13[3] = v13;
  v12[0] = &unk_286290138;
  v12[1] = &v10;
  v12[3] = v12;
  std::__function::__value_func<double ()(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)>::__value_func[abi:nn200100](v11, v13);
  geom::bvh<double,(unsigned char)3>::build_from_custom_heuristic<std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)>>(v9 + 16, v12, v11, v7);
}

void *geom_create_triangle_mesh_bvh_with_default_options_3f(unint64_t a1, float32x4_t *a2, unint64_t a3, char *a4)
{
  opt_3f_obj_alloc = geom_bvh_create_opt_3f_obj_alloc();
  *(opt_3f_obj_alloc + 24) = 0u;
  *(opt_3f_obj_alloc + 40) = 0u;
  *(opt_3f_obj_alloc + 16) = 1;
  *(opt_3f_obj_alloc + 24) = 1;
  *(opt_3f_obj_alloc + 48) = 1;
}

void *anonymous namespace::create_triangle_mesh_bvh_with_opt<float>(unint64_t a1, float32x4_t *a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v9 = v8;
  v10 = *(a5 + 48);
  if (!v10)
  {
  }

  if (v10 == 1)
  {
    v11 = v9[19];
    v23[0] = v9[18];
    v23[1] = v11;
    v12 = v9[22];
    v22[0] = v9[21];
    v22[1] = v12;
    v13 = (v9[7] - v9[6]) >> 2;
    v21[0] = v9[6];
    v21[1] = v13;
    return v9;
  }

  else
  {
    v15 = std::__throw_bad_variant_access[abi:nn200100]();
    return geom_recreate_triangle_mesh_bvh_with_options_3f(v15, v16, v17, v18, v19, v20);
  }
}

void *geom_create_triangle_mesh_bvh_with_default_options_3d(unint64_t a1, char *a2, unint64_t a3, char *a4)
{
  opt_3d_obj_alloc = geom_bvh_create_opt_3d_obj_alloc();
  *(opt_3d_obj_alloc + 24) = 0u;
  *(opt_3d_obj_alloc + 40) = 0u;
  *(opt_3d_obj_alloc + 16) = 1;
  *(opt_3d_obj_alloc + 24) = 1;
  *(opt_3d_obj_alloc + 48) = 1;
}

void *anonymous namespace::create_triangle_mesh_bvh_with_opt<double>(unint64_t a1, char *a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v8 = v7;
  v9 = *(a5 + 48);
  if (!v9)
  {
  }

  if (v9 == 1)
  {
    v10 = v8[19];
    v22[0] = v8[18];
    v22[1] = v10;
    v11 = v8[22];
    v21[0] = v8[21];
    v21[1] = v11;
    v12 = (v8[7] - v8[6]) >> 2;
    v20[0] = v8[6];
    v20[1] = v12;
    return v8;
  }

  else
  {
    v14 = std::__throw_bad_variant_access[abi:nn200100]();
    return geom_recreate_triangle_mesh_bvh_with_options_3d(v14, v15, v16, v17, v18, v19);
  }
}

uint64_t geom_create_bezier_curve_bvh_2f(unint64_t a1, unsigned int *a2, char *a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v7 = a4;
  return v8;
}

uint64_t anonymous namespace::construct_bezier_curve_bvh<float>(unint64_t a1, unsigned int *a2, char *a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v7 = a4;
  if (a5)
  {
    if (a1)
    {
      v11 = a2[a1 - 1];
      v28 = a3;
      v29 = v11;
      v26 = a2;
      v27 = a1;
      if (v11)
      {
        if (a4)
        {
          operator new[]();
        }

        v15 = a3;
      }

      else
      {
        v11 = 0;
        v15 = 0;
      }
    }

    else
    {
      v11 = 0;
      v15 = 0;
      v28 = a3;
      v29 = 0;
      v26 = a2;
      v27 = 0;
    }

    v16 = a1;
    if (*(a5 + 136) == 1)
    {
      v17 = *(a5 + 120);
      v16 = a1;
      if (v17)
      {
        MEMORY[0x25305E3D0](v17, 0x1000C8000313F17);
        v16 = v27;
      }
    }

    *(a5 + 120) = v15;
    *(a5 + 128) = v11;
    *(a5 + 136) = 0;
    if (v16)
    {
      v18 = a2;
    }

    else
    {
      v18 = 0;
    }

    if (v16 && v7)
    {
      operator new[]();
    }

    if (*(a5 + 160) == 1)
    {
      v19 = *(a5 + 144);
      if (v19)
      {
        MEMORY[0x25305E3D0](v19, 0x1000C8052888210);
      }
    }

    *(a5 + 144) = v18;
    *(a5 + 152) = v16;
    v13 = a5;
    *(a5 + 160) = 0;
    if (a1)
    {
LABEL_25:
      operator new[]();
    }
  }

  else
  {
    v12 = geom_bezier_curve_bvh_2f_obj_alloc();
    v13 = v12;
    if (a1)
    {
      v14 = a2[a1 - 1];
      v28 = a3;
      v29 = v14;
      v26 = a2;
      v27 = a1;
      _ZN4geom19make_external_arrayINS_5sliceIDv2_fEEEENSt3__19enable_ifIXaa21collection_has_size_vIT_E21collection_has_data_vIS6_EENS_14external_arrayINS6_10value_typeEEEE4typeERKS6_b(&v28, v7, v12 + 120);
      geom::make_external_array<geom::slice<unsigned int>>(&v26, v7, v13 + 144);
      goto LABEL_25;
    }

    v28 = a3;
    v29 = 0;
    v26 = a2;
    v27 = 0;
    _ZN4geom19make_external_arrayINS_5sliceIDv2_fEEEENSt3__19enable_ifIXaa21collection_has_size_vIT_E21collection_has_data_vIS6_EENS_14external_arrayINS6_10value_typeEEEE4typeERKS6_b(&v28, v7, v12 + 120);
    geom::make_external_array<geom::slice<unsigned int>>(&v26, v7, v13 + 144);
  }

  v23 = 0;
  v24 = a1;
  v25 = 0;
  v21[0] = 0;
  v21[1] = 0;
  v22 = 0;
  if (a5)
  {
    geom::bvh<float,(unsigned char)2>::reset(v13 + 16, &v23, v21);
    if ((v22 & 1) != 0 && v21[0])
    {
      MEMORY[0x25305E3D0](v21[0], 0x1000C80451B5BE8);
    }
  }

  else
  {
    *(v13 + 16) = 0;
    *(v13 + 24) = 0u;
    *(v13 + 40) = 0u;
    *(v13 + 56) = 0u;
    *(v13 + 72) = 0;
    *(v13 + 80) = a1;
    *(v13 + 88) = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    *(v13 + 96) = 0;
    *(v13 + 104) = 0;
    *(v13 + 112) = 0;
  }

  if (v25 == 1 && v23)
  {
    MEMORY[0x25305E3D0](v23, 0x1000C8000313F17);
  }

  return v13;
}

uint64_t anonymous namespace::build_bvh_with_strategy<float,(unsigned char)2>(uint64_t result, int a2, uint64_t a3)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v3 = v8;
      v8[0] = &unk_2862901B8;
      v8[1] = &v4;
      v8[3] = v8;
      geom::bvh<float,(unsigned char)2>::build_median(result, v8);
    }

    else
    {
      v3 = v9;
      v9[0] = &unk_2862901B8;
      v9[1] = &v4;
      v9[3] = v9;
      geom::bvh<float,(unsigned char)2>::build_middle_split(result, v9);
    }

    return std::__function::__value_func<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>::~__value_func[abi:nn200100](v3);
  }

  else
  {
    switch(a2)
    {
      case 2:
        v7[0] = &unk_2862901B8;
        v7[1] = &v4;
        v7[3] = v7;
        geom::bvh<float,(unsigned char)2>::build_surface_area_heuristic(result, v7);
      case 3:
        v6[0] = &unk_2862901B8;
        v6[1] = &v4;
        v6[3] = v6;
        geom::bvh<float,(unsigned char)2>::build_volume_heuristic(result, v6);
      case 4:
        v5[0] = &unk_2862901B8;
        v5[1] = &v4;
        v5[3] = v5;
        geom::bvh<float,(unsigned char)2>::build_intersection_volume_heuristic(result, v5);
    }
  }

  return result;
}

uint64_t geom_create_bezier_curve_bvh_2d(unint64_t a1, unsigned int *a2, char *a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v7 = a4;
  return v8;
}

uint64_t anonymous namespace::construct_bezier_curve_bvh<double>(unint64_t a1, unsigned int *a2, char *a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v7 = a4;
  if (a5)
  {
    if (a1)
    {
      v11 = a2[a1 - 1];
      v28 = a3;
      v29 = v11;
      v26 = a2;
      v27 = a1;
      if (v11)
      {
        if (a4)
        {
          operator new[]();
        }

        v15 = a3;
      }

      else
      {
        v11 = 0;
        v15 = 0;
      }
    }

    else
    {
      v11 = 0;
      v15 = 0;
      v28 = a3;
      v29 = 0;
      v26 = a2;
      v27 = 0;
    }

    v16 = a1;
    if (*(a5 + 136) == 1)
    {
      v17 = *(a5 + 120);
      v16 = a1;
      if (v17)
      {
        MEMORY[0x25305E3D0](v17, 0x1000C80451B5BE8);
        v16 = v27;
      }
    }

    *(a5 + 120) = v15;
    *(a5 + 128) = v11;
    *(a5 + 136) = 0;
    if (v16)
    {
      v18 = a2;
    }

    else
    {
      v18 = 0;
    }

    if (v16 && v7)
    {
      operator new[]();
    }

    if (*(a5 + 160) == 1)
    {
      v19 = *(a5 + 144);
      if (v19)
      {
        MEMORY[0x25305E3D0](v19, 0x1000C8052888210);
      }
    }

    *(a5 + 144) = v18;
    *(a5 + 152) = v16;
    v13 = a5;
    *(a5 + 160) = 0;
    if (a1)
    {
LABEL_25:
      operator new[]();
    }
  }

  else
  {
    v12 = geom_bezier_curve_bvh_2d_obj_alloc();
    v13 = v12;
    if (a1)
    {
      v14 = a2[a1 - 1];
      v28 = a3;
      v29 = v14;
      v26 = a2;
      v27 = a1;
      _ZN4geom19make_external_arrayINS_5sliceIDv2_dEEEENSt3__19enable_ifIXaa21collection_has_size_vIT_E21collection_has_data_vIS6_EENS_14external_arrayINS6_10value_typeEEEE4typeERKS6_b(&v28, v7, v12 + 120);
      geom::make_external_array<geom::slice<unsigned int>>(&v26, v7, v13 + 144);
      goto LABEL_25;
    }

    v28 = a3;
    v29 = 0;
    v26 = a2;
    v27 = 0;
    _ZN4geom19make_external_arrayINS_5sliceIDv2_dEEEENSt3__19enable_ifIXaa21collection_has_size_vIT_E21collection_has_data_vIS6_EENS_14external_arrayINS6_10value_typeEEEE4typeERKS6_b(&v28, v7, v12 + 120);
    geom::make_external_array<geom::slice<unsigned int>>(&v26, v7, v13 + 144);
  }

  v23 = 0;
  v24 = a1;
  v25 = 0;
  v21[0] = 0;
  v21[1] = 0;
  v22 = 0;
  if (a5)
  {
    geom::bvh<double,(unsigned char)2>::reset(v13 + 16, &v23, v21);
    if ((v22 & 1) != 0 && v21[0])
    {
      MEMORY[0x25305E3D0](v21[0], 0x1000C80E0EAB150);
    }
  }

  else
  {
    *(v13 + 16) = 0;
    *(v13 + 24) = 0u;
    *(v13 + 40) = 0u;
    *(v13 + 56) = 0u;
    *(v13 + 72) = 0;
    *(v13 + 80) = a1;
    *(v13 + 88) = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    *(v13 + 96) = 0;
    *(v13 + 104) = 0;
    *(v13 + 112) = 0;
  }

  if (v25 == 1 && v23)
  {
    MEMORY[0x25305E3D0](v23, 0x1000C80451B5BE8);
  }

  return v13;
}

uint64_t anonymous namespace::build_bvh_with_strategy<double,(unsigned char)2>(uint64_t result, int a2, uint64_t a3)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v3 = v8;
      v8[0] = &unk_286290238;
      v8[1] = &v4;
      v8[3] = v8;
      geom::bvh<double,(unsigned char)2>::build_median(result, v8);
    }

    else
    {
      v3 = v9;
      v9[0] = &unk_286290238;
      v9[1] = &v4;
      v9[3] = v9;
      geom::bvh<double,(unsigned char)2>::build_middle_split(result, v9);
    }

    return std::__function::__value_func<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>::~__value_func[abi:nn200100](v3);
  }

  else
  {
    switch(a2)
    {
      case 2:
        v7[0] = &unk_286290238;
        v7[1] = &v4;
        v7[3] = v7;
        geom::bvh<double,(unsigned char)2>::build_surface_area_heuristic(result, v7);
      case 3:
        v6[0] = &unk_286290238;
        v6[1] = &v4;
        v6[3] = v6;
        geom::bvh<double,(unsigned char)2>::build_volume_heuristic(result, v6);
      case 4:
        v5[0] = &unk_286290238;
        v5[1] = &v4;
        v5[3] = v5;
        geom::bvh<double,(unsigned char)2>::build_intersection_volume_heuristic(result, v5);
    }
  }

  return result;
}

uint64_t geom_create_bezier_curve_bvh_with_default_options_2f(unint64_t a1, unsigned int *a2, char *a3)
{
  opt_2f_obj_alloc = geom_bvh_create_opt_2f_obj_alloc();
  *(opt_2f_obj_alloc + 24) = 0u;
  *(opt_2f_obj_alloc + 40) = 0u;
  *(opt_2f_obj_alloc + 16) = 1;
  *(opt_2f_obj_alloc + 24) = 1;
  *(opt_2f_obj_alloc + 48) = 1;
}

uint64_t anonymous namespace::create_bezier_curve_bvh_with_opt<float>(unint64_t a1, unsigned int *a2, char *a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v8 = v7;
  v9 = *(a4 + 48);
  if (!v9)
  {
  }

  if (v9 == 1)
  {
    return v8;
  }

  else
  {
    v11 = std::__throw_bad_variant_access[abi:nn200100]();
    return geom_recreate_bezier_curve_bvh_with_options_2f(v11, v12, v13, v14, v15, v16);
  }
}

uint64_t geom_create_bezier_curve_bvh_with_default_options_2d(unint64_t a1, unsigned int *a2, char *a3)
{
  opt_2d_obj_alloc = geom_bvh_create_opt_2d_obj_alloc();
  *(opt_2d_obj_alloc + 24) = 0u;
  *(opt_2d_obj_alloc + 40) = 0u;
  *(opt_2d_obj_alloc + 16) = 1;
  *(opt_2d_obj_alloc + 24) = 1;
  *(opt_2d_obj_alloc + 48) = 1;
}

uint64_t anonymous namespace::create_bezier_curve_bvh_with_opt<double>(unint64_t a1, unsigned int *a2, char *a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v8 = v7;
  v9 = *(a4 + 48);
  if (!v9)
  {
  }

  if (v9 == 1)
  {
    return v8;
  }

  else
  {
    v11 = std::__throw_bad_variant_access[abi:nn200100]();
    return geom_recreate_bezier_curve_bvh_with_options_2d(v11, v12, v13, v14, v15, v16);
  }
}

uint64_t geom_bvh_tree_statistics_2f(uint64_t a1, unsigned int *a2, int *a3)
{
  v5 = 0;
  v4 = 0;
  if (!a2)
  {
    a2 = &v5;
  }

  if (!a3)
  {
    a3 = &v4;
  }

  return geom::bvh<float,(unsigned char)2>::tree_statistics(a1 + 16, a2, a3);
}

uint64_t geom_bvh_tree_statistics_2d(uint64_t a1, unsigned int *a2, int *a3)
{
  v5 = 0;
  v4 = 0;
  if (!a2)
  {
    a2 = &v5;
  }

  if (!a3)
  {
    a3 = &v4;
  }

  return geom::bvh<double,(unsigned char)2>::tree_statistics(a1 + 16, a2, a3);
}

uint64_t geom_bvh_tree_statistics_3f(uint64_t a1, unsigned int *a2, int *a3)
{
  v5 = 0;
  v4 = 0;
  if (!a2)
  {
    a2 = &v5;
  }

  if (!a3)
  {
    a3 = &v4;
  }

  return geom::bvh<double,(unsigned char)2>::tree_statistics(a1 + 16, a2, a3);
}

uint64_t geom_bvh_tree_statistics_3d(uint64_t a1, unsigned int *a2, int *a3)
{
  v5 = 0;
  v4 = 0;
  if (!a2)
  {
    a2 = &v5;
  }

  if (!a3)
  {
    a3 = &v4;
  }

  return geom::bvh<double,(unsigned char)3>::tree_statistics(a1 + 16, a2, a3);
}

uint64_t geom_bvh_get_nodes_2f(uint64_t a1, void *a2)
{
  result = *(a1 + 24);
  if (a2)
  {
    *a2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 32) - result) >> 3);
  }

  return result;
}

uint64_t geom_bvh_get_nodes_2d(uint64_t a1, uint64_t *a2)
{
  result = *(a1 + 24);
  if (a2)
  {
    *a2 = (*(a1 + 32) - result) >> 6;
  }

  return result;
}

uint64_t geom_bvh_get_nodes_3f(uint64_t a1, uint64_t *a2)
{
  result = *(a1 + 24);
  if (a2)
  {
    *a2 = (*(a1 + 32) - result) >> 6;
  }

  return result;
}

uint64_t geom_bvh_get_nodes_3d(uint64_t a1, void *a2)
{
  result = *(a1 + 24);
  if (a2)
  {
    *a2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 32) - result) >> 5);
  }

  return result;
}

uint64_t geom_bvh_get_primitive_partition_2f(uint64_t a1, uint64_t *a2)
{
  result = *(a1 + 48);
  if (a2)
  {
    *a2 = (*(a1 + 56) - result) >> 2;
  }

  return result;
}

uint64_t geom_bvh_get_primitive_partition_2d(uint64_t a1, uint64_t *a2)
{
  result = *(a1 + 48);
  if (a2)
  {
    *a2 = (*(a1 + 56) - result) >> 2;
  }

  return result;
}

uint64_t geom_bvh_get_primitive_partition_3f(uint64_t a1, uint64_t *a2)
{
  result = *(a1 + 48);
  if (a2)
  {
    *a2 = (*(a1 + 56) - result) >> 2;
  }

  return result;
}

uint64_t geom_bvh_get_primitive_partition_3d(uint64_t a1, uint64_t *a2)
{
  result = *(a1 + 48);
  if (a2)
  {
    *a2 = (*(a1 + 56) - result) >> 2;
  }

  return result;
}

uint64_t geom_bvh_get_primitives_for_node_2f(uint64_t a1, unsigned int a2, void *a3)
{
  v3 = *(a1 + 24) + 40 * a2;
  v4 = *(a1 + 48);
  v5 = *(v3 + 12);
  if (a3)
  {
    *a3 = (*(v3 + 16) + v5) - v5;
  }

  return v4 + 4 * v5;
}

uint64_t geom_bvh_get_primitives_for_node_2d(uint64_t a1, unsigned int a2, void *a3)
{
  v3 = *(a1 + 24) + (a2 << 6);
  v4 = *(a1 + 48);
  v5 = *(v3 + 12);
  if (a3)
  {
    *a3 = (*(v3 + 16) + v5) - v5;
  }

  return v4 + 4 * v5;
}

uint64_t geom_bvh_get_primitives_for_node_3f(uint64_t a1, unsigned int a2, void *a3)
{
  v3 = *(a1 + 24) + (a2 << 6);
  v4 = *(a1 + 48);
  v5 = *(v3 + 12);
  if (a3)
  {
    *a3 = (*(v3 + 16) + v5) - v5;
  }

  return v4 + 4 * v5;
}

uint64_t geom_bvh_get_primitives_for_node_3d(uint64_t a1, unsigned int a2, void *a3)
{
  v3 = *(a1 + 24) + 96 * a2;
  v4 = *(a1 + 48);
  v5 = *(v3 + 12);
  if (a3)
  {
    *a3 = (*(v3 + 16) + v5) - v5;
  }

  return v4 + 4 * v5;
}

uint64_t geom_bvh_raycast_2f(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, unsigned int *a5, __n128 a6, double a7)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a2;
  v11 = 0;
  v14[0] = &unk_2862902B8;
  v14[1] = &v13;
  v14[2] = &v12;
  v14[3] = v14;
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = &v11 + 1;
  }

  if (a5)
  {
    v8 = a5;
  }

  else
  {
    v8 = &v11;
  }

  v9 = geom::bvh<float,(unsigned char)2>::raycast((a1 + 16), v14, v7, v8, a6, a7);
  std::__function::__value_func<BOOL ()(unsigned int,geom::ray<float,(unsigned char)2>,float &)>::~__value_func[abi:nn200100](v14);
  return v9;
}

void sub_24FFC0F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<BOOL ()(unsigned int,geom::ray<float,(unsigned char)2>,float &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t geom_bvh_raycast_2d(uint64_t a1, uint64_t a2, uint64_t a3, float64_t *a4, unsigned int *a5, float64x2_t a6, __n128 a7)
{
  v15[4] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a2;
  v12 = 0;
  v11 = 0;
  v15[0] = &unk_286290348;
  v15[1] = &v14;
  v15[2] = &v13;
  v15[3] = v15;
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = &v12;
  }

  if (a5)
  {
    v8 = a5;
  }

  else
  {
    v8 = &v11;
  }

  v9 = geom::bvh<double,(unsigned char)2>::raycast((a1 + 16), v15, v7, v8, a6, a7);
  std::__function::__value_func<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>::~__value_func[abi:nn200100](v15);
  return v9;
}

void sub_24FFC1008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__function::__value_func<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t geom_bvh_raycast_3f(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, unsigned int *a5, float32x4_t a6, __n128 a7)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a2;
  v11 = 0;
  v14[0] = &unk_2862903D8;
  v14[1] = &v13;
  v14[2] = &v12;
  v14[3] = v14;
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = &v11 + 1;
  }

  if (a5)
  {
    v8 = a5;
  }

  else
  {
    v8 = &v11;
  }

  v9 = geom::bvh<float,(unsigned char)3>::raycast((a1 + 16), v14, v7, v8, a6, a7);
  std::__function::__value_func<BOOL ()(unsigned int,geom::ray<float,(unsigned char)3>,float &)>::~__value_func[abi:nn200100](v14);
  return v9;
}

void sub_24FFC10D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<BOOL ()(unsigned int,geom::ray<float,(unsigned char)3>,float &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t geom_bvh_raycast_3d(uint64_t a1, uint64_t a2, __n128 *a3, uint64_t a4, double *a5, unsigned int *a6)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v16 = a4;
  v17 = a2;
  v15 = 0;
  v14 = 0;
  v18[0] = &unk_286290468;
  v18[1] = &v17;
  v18[2] = &v16;
  v18[3] = v18;
  v6 = a3[1];
  v13[0] = *a3;
  v13[1] = v6;
  v7 = a3[2];
  v8 = a3[3];
  v13[2] = v7;
  v13[3] = v8;
  if (a5)
  {
    v9 = a5;
  }

  else
  {
    v9 = &v15;
  }

  if (a6)
  {
    v10 = a6;
  }

  else
  {
    v10 = &v14;
  }

  v11 = geom::bvh<double,(unsigned char)3>::raycast((a1 + 16), v18, v13, v9, v10, v7.n128_f64[0], v8);
  std::__function::__value_func<BOOL ()(unsigned int,geom::ray<double,(unsigned char)3>,double &)>::~__value_func[abi:nn200100](v18);
  return v11;
}

double geom_bvh_closest_point_2f(void *a1, double (*a2)(void, uint64_t, double), uint64_t a3, float *a4, unsigned int *a5, float32x2_t a6)
{
  if (a4)
  {
    *a4 = INFINITY;
  }

  if (a5)
  {
    *a5 = -1;
  }

  v6 = COERCE_DOUBLE(vneg_f32(0x3F0000003FLL));
  if (a1[7] != a1[6])
  {
    v7 = a1[4] - a1[3];
    if (v7)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      if (__clz(-858993459 * (v7 >> 3)) != 31)
      {
        operator new();
      }

      operator new();
    }
  }

  return v6;
}

void sub_24FFC158C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void geom_bvh_closest_point_2d(void *a1, void (*a2)(void, uint64_t, __n128), uint64_t a3, double *a4, unsigned int *a5, float64x2_t a6)
{
  if (a4)
  {
    *a4 = INFINITY;
    v11 = 0;
  }

  else
  {
    v11 = 0x7FF0000000000000;
  }

  v12 = -1;
  if (a5)
  {
    *a5 = -1;
    v12 = 0;
  }

  if (a1[7] != a1[6])
  {
    v13 = a1[3];
    v14 = a1[4] - v13;
    if (v14)
    {
      __p = 0;
      v70 = 0uLL;
      v15 = __clz(v14 >> 6);
      if (v15 == 31)
      {
        v16 = 0;
        v17 = 0;
      }

      else
      {
        _ZNSt3__114__split_bufferIZNK4geom3bvhIdLh2EE13closest_pointIZ25geom_bvh_closest_point_2dE3__0EEDv2_dT_S6_RdRjE5stateRNS_9allocatorISA_EEEC1EmmSD_(&v71, 31 - v15, 0, &__p);
        v18 = (*(&v71 + 1) - (v70 - __p));
        memcpy(v18, __p, v70 - __p);
        v19 = __p;
        v20 = *(&v70 + 1);
        v16 = *(&v72 + 1);
        v17 = v72;
        __p = v18;
        v70 = v72;
        *&v71 = v19;
        *&v72 = v19;
        *(&v72 + 1) = v20;
        *(&v71 + 1) = v19;
        if (v19)
        {
          operator delete(v19);
          v16 = *(&v70 + 1);
          v17 = v70;
        }

        v13 = a1[3];
      }

      v21 = vsubq_f64(vmaxnmq_f64(vminnmq_f64(a6, v13[3]), v13[2]), a6);
      v22 = vaddvq_f64(vmulq_f64(v21, v21));
      if (v17 >= v16)
      {
        v24 = (v17 - __p) >> 4;
        v25 = v24 + 1;
        if ((v24 + 1) >> 60)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v26 = v16 - __p;
        if (v26 >> 3 > v25)
        {
          v25 = v26 >> 3;
        }

        if (v26 >= 0x7FFFFFFFFFFFFFF0)
        {
          v27 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v25;
        }

        _ZNSt3__114__split_bufferIZNK4geom3bvhIdLh2EE13closest_pointIZ25geom_bvh_closest_point_2dE3__0EEDv2_dT_S6_RdRjE5stateRNS_9allocatorISA_EEEC1EmmSD_(&v71, v27, v24, &__p);
        v28 = v72;
        *v72 = 0;
        *(v28 + 8) = v22;
        *&v72 = v72 + 16;
        v29 = (*(&v71 + 1) - (v70 - __p));
        memcpy(v29, __p, v70 - __p);
        v30 = __p;
        v31 = *(&v70 + 1);
        __p = v29;
        v32 = v72;
        v70 = v72;
        *&v72 = v30;
        *(&v72 + 1) = v31;
        *&v71 = v30;
        *(&v71 + 1) = v30;
        if (v30)
        {
          v65 = v32;
          operator delete(v30);
          v32 = v65;
        }

        v23 = v32;
      }

      else
      {
        *v17 = 0;
        v23 = (v17 + 16);
        *(v17 + 8) = v22;
      }

      v33 = __p;
      v34 = vdupq_n_s64(0x7FF8000000000000uLL);
      while (v33 != v23)
      {
        v37 = *(v23 - 4);
        v36 = (v23 - 4);
        v35 = v37;
        v38 = v36[1];
        *&v70 = v36;
        v39 = *&v11;
        if (a4)
        {
          v39 = *a4;
        }

        if (v39 > v38)
        {
          v40 = a1[3];
          v41 = (v40 + (v35 << 6));
          v43 = v41[1];
          v42 = v41[2];
          if (v43 == -1 && v42 == -1)
          {
            v52 = v41[4];
            if (!v52)
            {
              goto LABEL_66;
            }

            v53 = v41[3];
            v54 = (a1[6] + 4 * v53);
            v55 = 4 * (v52 + v53) - 4 * v53;
            v56 = v34;
            while (2)
            {
              v67 = v56;
              v57 = *v54;
              a2(*v54, a3, a6);
              v58 = *&v11;
              if (a4)
              {
                v58 = *a4;
              }

              v59 = vsubq_f64(a6, v34);
              v60 = vaddvq_f64(vmulq_f64(v59, v59));
              if (v60 < v58)
              {
                goto LABEL_53;
              }

              v61 = v12;
              if (a5)
              {
                v61 = *a5;
              }

              if (v60 != v58 || v57 >= v61)
              {
                v34 = v67;
              }

              else
              {
LABEL_53:
                if (a4)
                {
                  *a4 = v60;
                  if (a5)
                  {
                    goto LABEL_55;
                  }

LABEL_57:
                  v12 = v57;
                }

                else
                {
                  v11 = *&v60;
                  if (!a5)
                  {
                    goto LABEL_57;
                  }

LABEL_55:
                  *a5 = v57;
                }
              }

              ++v54;
              v56 = v34;
              v55 -= 4;
              if (!v55)
              {
                goto LABEL_66;
              }

              continue;
            }
          }

          v45 = vsubq_f64(vmaxnmq_f64(vminnmq_f64(a6, *(v40 + (v43 << 6) + 48)), *(v40 + (v43 << 6) + 32)), a6);
          v46 = vmulq_f64(v45, v45);
          v47 = vaddvq_f64(v46);
          v48 = vsubq_f64(vmaxnmq_f64(vminnmq_f64(a6, *(v40 + (v42 << 6) + 48)), *(v40 + (v42 << 6) + 32)), a6);
          v49 = vmulq_f64(v48, v48);
          v50 = vaddvq_f64(v49);
          if (v47 < v39 && v50 < v39)
          {
            v66 = v34;
            v63 = vcgtq_f64(vaddq_f64(v49, vdupq_laneq_s64(v49, 1)), vaddq_f64(v46, vdupq_laneq_s64(v46, 1)));
            v63.n128_u64[0] = vmovn_s64(v63);
            if (v63.n128_u8[0])
            {
              LODWORD(v71) = v41[2];
              *(&v71 + 1) = v50;
              _ZNSt3__16vectorIZNK4geom3bvhIdLh2EE13closest_pointIZ25geom_bvh_closest_point_2dE3__0EEDv2_dT_S6_RdRjE5stateNS_9allocatorISA_EEE9push_backB8nn200100EOSA_(&__p, &v71, v63);
              LODWORD(v71) = v41[1];
              *(&v71 + 1) = v47;
            }

            else
            {
              LODWORD(v71) = v41[1];
              *(&v71 + 1) = v47;
              _ZNSt3__16vectorIZNK4geom3bvhIdLh2EE13closest_pointIZ25geom_bvh_closest_point_2dE3__0EEDv2_dT_S6_RdRjE5stateNS_9allocatorISA_EEE9push_backB8nn200100EOSA_(&__p, &v71, v63);
              LODWORD(v71) = v41[2];
              *(&v71 + 1) = v50;
            }

            _ZNSt3__16vectorIZNK4geom3bvhIdLh2EE13closest_pointIZ25geom_bvh_closest_point_2dE3__0EEDv2_dT_S6_RdRjE5stateNS_9allocatorISA_EEE9push_backB8nn200100EOSA_(&__p, &v71, v64);
          }

          else if (v47 < v39)
          {
            v66 = v34;
            LODWORD(v71) = v41[1];
            *(&v71 + 1) = v47;
            _ZNSt3__16vectorIZNK4geom3bvhIdLh2EE13closest_pointIZ25geom_bvh_closest_point_2dE3__0EEDv2_dT_S6_RdRjE5stateNS_9allocatorISA_EEE9push_backB8nn200100EOSA_(&__p, &v71, v34);
          }

          else
          {
            if (v50 >= v39)
            {
              goto LABEL_66;
            }

            v66 = v34;
            LODWORD(v71) = v41[2];
            *(&v71 + 1) = v50;
            _ZNSt3__16vectorIZNK4geom3bvhIdLh2EE13closest_pointIZ25geom_bvh_closest_point_2dE3__0EEDv2_dT_S6_RdRjE5stateNS_9allocatorISA_EEE9push_backB8nn200100EOSA_(&__p, &v71, v34);
          }

          v34 = v66;
        }

LABEL_66:
        v33 = __p;
        v23 = v70;
      }

      if (v33)
      {
        *&v70 = v33;
        operator delete(v33);
      }
    }
  }
}

void sub_24FFC1A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 geom_bvh_closest_point_3f(void *a1, void (*a2)(void, uint64_t, __n128), uint64_t a3, __int32 *a4, unsigned int *a5, float32x4_t a6)
{
  if (a4)
  {
    *a4 = 2139095040;
  }

  if (a5)
  {
    *a5 = -1;
  }

  v6.i64[0] = 0x3F0000003FLL;
  v6.i64[1] = 0x3F0000003FLL;
  v9 = vnegq_f32(v6);
  if (a1[7] != a1[6])
  {
    v7 = a1[4] - a1[3];
    if (v7)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      if (__clz(v7 >> 6) != 31)
      {
        operator new();
      }

      operator new();
    }
  }

  return v9;
}

void sub_24FFC1E40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void geom_bvh_closest_point_3d(void *a1@<X0>, void (*a2)(float64x2_t *__return_ptr, uint64_t, _OWORD *, uint64_t)@<X1>, float64x2_t *a3@<X2>, uint64_t a4@<X3>, double *a5@<X4>, unsigned int *a6@<X5>, int64x2_t *a7@<X8>)
{
  v80 = *a3;
  v81 = a3[1];
  if (a5)
  {
    *a5 = INFINITY;
    *&v14 = 0.0;
  }

  else
  {
    *&v14 = INFINITY;
  }

  v15 = -1;
  if (a6)
  {
    *a6 = -1;
    v15 = 0;
  }

  v16 = vdupq_n_s64(0x7FF8000000000000uLL);
  if (a1[7] == a1[6] || (v17 = a1[3], (v18 = a1[4] - v17) == 0))
  {
    v7.f64[0] = NAN;
    goto LABEL_70;
  }

  __p = 0;
  v83 = 0uLL;
  v19 = __clz(-1431655765 * (v18 >> 5));
  if (v19 == 31)
  {
    v20 = 0.0;
    v21 = 0.0;
  }

  else
  {
    _ZNSt3__114__split_bufferIZNK4geom3bvhIdLh2EE13closest_pointIZ25geom_bvh_closest_point_2dE3__0EEDv2_dT_S6_RdRjE5stateRNS_9allocatorISA_EEEC1EmmSD_(&v84, 31 - v19, 0, &__p);
    v22 = (*&v84.f64[1] - (*&v83.f64[0] - __p));
    memcpy(v22, __p, *&v83.f64[0] - __p);
    v23 = __p;
    v24 = v83.f64[1];
    v20 = v85.f64[1];
    v21 = v85.f64[0];
    __p = v22;
    v83 = v85;
    *&v84.f64[0] = v23;
    *&v85.f64[0] = v23;
    v85.f64[1] = v24;
    *&v84.f64[1] = v23;
    if (v23)
    {
      operator delete(v23);
      v20 = v83.f64[1];
      v21 = v83.f64[0];
    }

    v17 = a1[3];
  }

  v25 = vsubq_f64(vmaxnmq_f64(vminnmq_f64(v80, *(v17 + 64)), *(v17 + 32)), v80);
  v26 = vsubq_f64(vmaxnmq_f64(*&vminnmq_f64(*&v81.f64[0], *(v17 + 80)), *(v17 + 48)), v81);
  v27 = vmulq_f64(v26, v26);
  v28 = v27.f64[0] + vaddvq_f64(vmulq_f64(v25, v25));
  if (*&v21 >= *&v20)
  {
    v30 = (*&v21 - __p) >> 4;
    v31 = v30 + 1;
    if ((v30 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v32 = *&v20 - __p;
    if (v32 >> 3 > v31)
    {
      v31 = v32 >> 3;
    }

    if (v32 >= 0x7FFFFFFFFFFFFFF0)
    {
      v33 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v33 = v31;
    }

    _ZNSt3__114__split_bufferIZNK4geom3bvhIdLh2EE13closest_pointIZ25geom_bvh_closest_point_2dE3__0EEDv2_dT_S6_RdRjE5stateRNS_9allocatorISA_EEEC1EmmSD_(&v84, v33, v30, &__p);
    v34 = v85.f64[0];
    **&v85.f64[0] = 0;
    *(*&v34 + 8) = v28;
    *&v85.f64[0] += 16;
    v35 = (*&v84.f64[1] - (*&v83.f64[0] - __p));
    memcpy(v35, __p, *&v83.f64[0] - __p);
    v36 = __p;
    v37 = v83.f64[1];
    __p = v35;
    v27 = v85;
    v83 = v85;
    *&v85.f64[0] = v36;
    v85.f64[1] = v37;
    *&v84.f64[0] = v36;
    *&v84.f64[1] = v36;
    if (v36)
    {
      v76 = v27;
      operator delete(v36);
      v27 = v76;
    }

    v29 = v27.f64[0];
  }

  else
  {
    **&v21 = 0;
    *&v29 = *&v21 + 16;
    *(*&v21 + 8) = v28;
  }

  v38 = __p;
  if (__p != *&v29)
  {
    v72 = a7;
    v7.f64[0] = NAN;
    v16 = vdupq_n_s64(0x7FF8000000000000uLL);
    while (1)
    {
      v41 = *(*&v29 - 16);
      v40 = (*&v29 - 16);
      v39 = v41;
      v42 = v40[1];
      *&v83.f64[0] = v40;
      *&v27.f64[0] = v14;
      if (a5)
      {
        v27.f64[0] = *a5;
      }

      if (v27.f64[0] <= v42)
      {
        goto LABEL_67;
      }

      v43 = a1[3];
      v44 = (v43 + 96 * v39);
      v46 = v44[1];
      v45 = v44[2];
      if (v46 == -1 && v45 == -1)
      {
        break;
      }

      v48 = v43 + 96 * v46;
      v49 = vsubq_f64(vmaxnmq_f64(vminnmq_f64(v80, *(v48 + 64)), *(v48 + 32)), v80);
      v50 = vsubq_f64(vmaxnmq_f64(*&vminnmq_f64(*&v81.f64[0], *(v48 + 80)), *(v48 + 48)), v81);
      v51 = vmulq_f64(v50, v50).f64[0] + vaddvq_f64(vmulq_f64(v49, v49));
      v52 = v43 + 96 * v45;
      v53 = vsubq_f64(vmaxnmq_f64(vminnmq_f64(v80, *(v52 + 64)), *(v52 + 32)), v80);
      v54 = vsubq_f64(vmaxnmq_f64(*&vminnmq_f64(*&v81.f64[0], *(v52 + 80)), *(v52 + 48)), v81);
      v55 = vmulq_f64(v54, v54).f64[0];
      v56 = vaddvq_f64(vmulq_f64(v53, v53));
      v57 = v55 + v56;
      if (v51 < v27.f64[0] && v57 < v27.f64[0])
      {
        v73 = v7;
        v77 = v16;
        if (v51 >= v57)
        {
          LODWORD(v84.f64[0]) = v44[1];
          v84.f64[1] = v51;
          _ZNSt3__16vectorIZNK4geom3bvhIdLh2EE13closest_pointIZ25geom_bvh_closest_point_2dE3__0EEDv2_dT_S6_RdRjE5stateNS_9allocatorISA_EEE9push_backB8nn200100EOSA_(&__p, &v84, v27);
          LODWORD(v84.f64[0]) = v44[2];
          v84.f64[1] = v57;
        }

        else
        {
          LODWORD(v84.f64[0]) = v44[2];
          v84.f64[1] = v55 + v56;
          _ZNSt3__16vectorIZNK4geom3bvhIdLh2EE13closest_pointIZ25geom_bvh_closest_point_2dE3__0EEDv2_dT_S6_RdRjE5stateNS_9allocatorISA_EEE9push_backB8nn200100EOSA_(&__p, &v84, v27);
          LODWORD(v84.f64[0]) = v44[1];
          v84.f64[1] = v51;
        }

        _ZNSt3__16vectorIZNK4geom3bvhIdLh2EE13closest_pointIZ25geom_bvh_closest_point_2dE3__0EEDv2_dT_S6_RdRjE5stateNS_9allocatorISA_EEE9push_backB8nn200100EOSA_(&__p, &v84, v71);
        goto LABEL_66;
      }

      if (v51 < v27.f64[0])
      {
        v73 = v7;
        v77 = v16;
        LODWORD(v84.f64[0]) = v44[1];
        v84.f64[1] = v51;
        _ZNSt3__16vectorIZNK4geom3bvhIdLh2EE13closest_pointIZ25geom_bvh_closest_point_2dE3__0EEDv2_dT_S6_RdRjE5stateNS_9allocatorISA_EEE9push_backB8nn200100EOSA_(&__p, &v84, v27);
        goto LABEL_66;
      }

      if (v57 < v27.f64[0])
      {
        v73 = v7;
        v77 = v16;
        LODWORD(v84.f64[0]) = v44[2];
        v84.f64[1] = v55 + v56;
        _ZNSt3__16vectorIZNK4geom3bvhIdLh2EE13closest_pointIZ25geom_bvh_closest_point_2dE3__0EEDv2_dT_S6_RdRjE5stateNS_9allocatorISA_EEE9push_backB8nn200100EOSA_(&__p, &v84, v27);
LABEL_66:
        v7 = v73;
        v16 = v77;
      }

LABEL_67:
      v38 = __p;
      v29 = v83.f64[0];
      if (__p == *&v83.f64[0])
      {
        a7 = v72;
        if (__p)
        {
          goto LABEL_69;
        }

        goto LABEL_70;
      }
    }

    v59 = v44[4];
    if (!v59)
    {
      goto LABEL_67;
    }

    v60 = v44[3];
    v61 = (a1[6] + 4 * v60);
    v62 = 4 * (v59 + v60) - 4 * v60;
    v27 = v16;
    v63 = v7;
    while (1)
    {
      v74 = v63;
      v78 = v27;
      v64 = *v61;
      v86[0] = v80;
      v86[1] = v81;
      a2(&v84, v64, v86, a4);
      v65 = *&v14;
      if (a5)
      {
        v65 = *a5;
      }

      v16 = v84;
      v7 = v85;
      v66 = vsubq_f64(v80, v84);
      v67 = vsubq_f64(v81, v85);
      v68 = vmulq_f64(v67, v67).f64[0] + vaddvq_f64(vmulq_f64(v66, v66));
      if (v68 < v65)
      {
        goto LABEL_54;
      }

      v69 = v15;
      if (a6)
      {
        v69 = *a6;
      }

      if (v68 != v65 || v64 >= v69)
      {
        v7 = v74;
        v16 = v78;
      }

      else
      {
LABEL_54:
        if (a5)
        {
          *a5 = v68;
          if (!a6)
          {
            goto LABEL_58;
          }
        }

        else
        {
          *&v14 = v68;
          if (!a6)
          {
LABEL_58:
            v15 = v64;
            goto LABEL_59;
          }
        }

        *a6 = v64;
      }

LABEL_59:
      ++v61;
      v27 = v16;
      v63 = v7;
      v62 -= 4;
      if (!v62)
      {
        goto LABEL_67;
      }
    }
  }

  v7.f64[0] = NAN;
  v16 = vdupq_n_s64(0x7FF8000000000000uLL);
  if (__p)
  {
LABEL_69:
    *&v83.f64[0] = v38;
    v75 = v7;
    v79 = v16;
    operator delete(v38);
    v7 = v75;
    v16 = v79;
  }

LABEL_70:
  *a7 = v16;
  a7[1] = v7;
}

void sub_24FFC2380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void geom_triangle_mesh_bvh_raycast_3d(uint64_t a1, _OWORD *a2, uint64_t *a3, int *a4, int64x2_t *a5, double a6, __n128 a7)
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = 0x7FF0000000000000;
  v13 = a1;
  v11 = -1;
  a7.n128_u64[0] = 0x7FF8000000000000;
  v9 = vdupq_n_s64(0x7FF8000000000000uLL);
  v10 = a7;
  v8 = 0;
  v7 = 0;
  operator new();
}

double geom_triangle_mesh_bvh_closest_point_3f(void *a1, _DWORD *a2, unsigned int *a3, int8x16_t *a4, float32x4_t a5)
{
  v10 = a1[18];
  v11 = a1[21];
  v12.i64[0] = 0x3F0000003FLL;
  v12.i64[1] = 0x3F0000003FLL;
  v13.i64[0] = vnegq_f32(v12).u64[0];
  if (a1[7] == a1[6] || (v15 = a1[4] - a1[3]) == 0)
  {
    v27 = -1;
    LODWORD(v5) = 2139095040;
    goto LABEL_62;
  }

  v187 = a5;
  v16 = a1[15];
  v199 = 0;
  v200 = 0;
  v201 = 0;
  _ZNSt3__16vectorIZNK4geom3bvhIfLh3EE13closest_pointIN12_GLOBAL__N_130triangle_closest_point_functorIfEEEEDv3_fT_S8_RfRjE5stateNS_9allocatorISC_EEE7reserveEm(&v199, 31 - __clz(v15 >> 6));
  v196 = 0;
  v17 = a1[3];
  v18 = a5;
  v18.i32[3] = 0;
  v20 = v17[2];
  v19 = v17[3];
  v19.i32[3] = 0;
  v186 = v18;
  v21 = vminnmq_f32(v18, v19);
  v21.i32[3] = 0;
  v20.i32[3] = 0;
  v22 = vsubq_f32(vmaxnmq_f32(v21, v20), a5);
  v23 = vmulq_f32(v22, v22);
  *(&v196 + 1) = v23.f32[2] + vaddv_f32(*v23.f32);
  _ZNSt3__16vectorIZNK4geom3bvhIfLh2EE13closest_pointIZ25geom_bvh_closest_point_2fE3__0EEDv2_fT_S6_RfRjE5stateNS_9allocatorISA_EEE9push_backB8nn200100EOSA_(&v199, &v196);
  v196 = 0;
  v197 = 0;
  v198 = 0;
  v25 = v199;
  v24 = v200;
  v26.i64[0] = 0x3F0000003FLL;
  v26.i64[1] = 0x3F0000003FLL;
  if (v199 == v200)
  {
    v13.i64[0] = vnegq_f32(v26).u64[0];
    v27 = -1;
    LODWORD(v5) = 2139095040;
    if (!v199)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  v181 = a3;
  v182 = v11;
  v183 = v10;
  v184 = a4;
  v190 = vdupq_lane_s32(*a5.f32, 1);
  v191 = vdupq_lane_s32(*a5.f32, 0);
  v189 = vdupq_laneq_s32(a5, 2);
  v13.i64[0] = vnegq_f32(v26).u64[0];
  v27 = -1;
  LODWORD(v5) = 2139095040;
  do
  {
    v30 = *(v24 - 2);
    v28 = v24 - 2;
    v29 = v30;
    v31 = v28[1];
    v200 = v28;
    if (*&v5 <= v31)
    {
      goto LABEL_54;
    }

    v32 = a1[3];
    v33 = (v32 + (v29 << 6));
    v35 = v33[1];
    v34 = v33[2];
    _ZF = v35 == -1 && v34 == -1;
    v188 = v5;
    if (_ZF)
    {
      v51 = a1[6];
      v52 = v33[3];
      v53 = v33[4];
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v196, v53 + v52 - v52);
      v54 = v33[3];
      v55 = v33[4] + v54;
      a5 = v187;
      v56 = v189;
      v58 = v190;
      v57 = v191;
      if (v54 >> 2 < (v55 + 3) >> 2)
      {
        v59 = v196;
        v60 = v54 >> 2;
        v61 = 4 * (v54 >> 2);
        do
        {
          v62 = (v16 + 144 * v60);
          v63 = *v62;
          v64 = v62[1];
          v65 = v62[2];
          v66 = v62[3];
          v67 = vsubq_f32(v66, *v62);
          v68 = v62[4];
          v69 = v62[5];
          v70 = vsubq_f32(v68, v64);
          v71 = vsubq_f32(v69, v65);
          v72 = v62[6];
          v73 = v62[7];
          v74 = vsubq_f32(v72, *v62);
          v75 = vsubq_f32(v73, v64);
          v76 = v62[8];
          v77 = vsubq_f32(v76, v65);
          v78 = vsubq_f32(v57, *v62);
          v79 = vsubq_f32(v58, v64);
          v80 = vsubq_f32(v56, v65);
          v81 = vmlaq_f32(vmlaq_f32(vmulq_f32(v70, v79), v78, v67), v80, v71);
          v82 = vmlaq_f32(vmlaq_f32(vmulq_f32(v79, v75), v78, v74), v80, v77);
          v83 = vandq_s8(vclezq_f32(v82), vclezq_f32(v81));
          if ((vminvq_u32(v83) & 0x80000000) != 0)
          {
            goto LABEL_28;
          }

          v84 = vmovn_s32(v83);
          v85 = vsubq_f32(v56, v69);
          v86 = vsubq_f32(v58, v68);
          v87 = vsubq_f32(v57, v66);
          v88 = vmlaq_f32(vmlaq_f32(vmulq_f32(v86, v70), v87, v67), v85, v71);
          v89 = vmlaq_f32(vmlaq_f32(vmulq_f32(v86, v75), v87, v74), v85, v77);
          v90 = vmovn_s32(vandq_s8(vcgeq_f32(v88, v89), vcgezq_f32(v88)));
          v91 = vmovl_s16(vbic_s8(v90, v84));
          v92 = vbslq_s8(v91, v66, v63);
          v93 = vbslq_s8(v91, v68, v64);
          v94 = vbslq_s8(v91, v69, v65);
          v95 = vorr_s8(v84, v90);
          if ((vminvq_u32(vmovl_s16(v95)) & 0x80000000) != 0)
          {
            v63 = v92;
            v64 = v93;
            v65 = v94;
            goto LABEL_28;
          }

          v96 = vmlaq_f32(vmulq_f32(v82, vnegq_f32(v88)), v89, v81);
          v97 = vsubq_f32(v81, v88);
          v98 = vmovn_s32(vandq_s8(vbicq_s8(vandq_s8(vclezq_f32(v88), vcgezq_f32(v81)), vceqzq_f32(v97)), vclezq_f32(v96)));
          v99 = vdivq_f32(v81, v97);
          v100 = vmovl_s16(vbic_s8(v98, v95));
          v101 = vbslq_s8(v100, vaddq_f32(vmulq_f32(v67, v99), v63), v92);
          v102 = vbslq_s8(v100, vaddq_f32(vmulq_f32(v70, v99), v64), v93);
          v103 = vbslq_s8(v100, vaddq_f32(vmulq_f32(v71, v99), v65), v94);
          v104 = vorr_s8(v98, v95);
          if ((vminvq_u32(vmovl_s16(v104)) & 0x80000000) != 0)
          {
            v63 = v101;
          }

          else
          {
            v105 = vsubq_f32(v191, v72);
            v106 = vsubq_f32(v190, v73);
            v107 = vsubq_f32(v189, v76);
            v108 = vmlaq_f32(vmlaq_f32(vmulq_f32(v70, v106), v105, v67), v107, v71);
            v109 = vmlaq_f32(vmlaq_f32(vmulq_f32(v75, v106), v105, v74), v107, v77);
            *v107.f32 = vmovn_s32(vandq_s8(vcgezq_f32(v109), vcgeq_f32(v109, v108)));
            v110 = vmovl_s16(vbic_s8(*v107.f32, v104));
            v111 = vbslq_s8(v110, v72, v101);
            v102 = vbslq_s8(v110, v73, v102);
            v103 = vbslq_s8(v110, v76, v103);
            v112 = vorr_s8(v104, *v107.f32);
            if ((vminvq_u32(vmovl_s16(v112)) & 0x80000000) == 0)
            {
              v113 = vmlaq_f32(vmulq_f32(v109, vnegq_f32(v81)), v82, v108);
              v114 = vmovn_s32(vandq_s8(vbicq_s8(vandq_s8(vclezq_f32(v109), vcgezq_f32(v82)), vceqq_f32(v82, v109)), vclezq_f32(v113)));
              v115 = vdivq_f32(v82, vsubq_f32(v82, v109));
              v116 = vmovl_s16(vbic_s8(v114, v112));
              v117 = vbslq_s8(v116, vaddq_f32(vmulq_f32(v74, v115), v63), v111);
              v118 = vbslq_s8(v116, vaddq_f32(vmulq_f32(v75, v115), v64), v102);
              v119 = vbslq_s8(v116, vaddq_f32(vmulq_f32(v77, v115), v65), v103);
              v120 = vorr_s8(v112, v114);
              if ((vminvq_u32(vmovl_s16(v120)) & 0x80000000) != 0)
              {
                v63 = v117;
                v64 = v118;
                v65 = v119;
                a5 = v187;
                v5 = v188;
              }

              else
              {
                v121 = vsubq_f32(v72, v66);
                v122 = vmlaq_f32(vmulq_f32(v89, vnegq_f32(v108)), v109, v88);
                v123 = vsubq_f32(v89, v88);
                v124 = vsubq_f32(v108, v109);
                v125 = vmovn_s32(vandq_s8(vandq_s8(vcgezq_f32(v124), vcgezq_f32(v123)), vclezq_f32(v122)));
                v126 = vdivq_f32(v123, vaddq_f32(v123, v124));
                v127 = vaddq_f32(vmulq_f32(vsubq_f32(v73, v68), v126), v68);
                v128 = vaddq_f32(vmulq_f32(vsubq_f32(v76, v69), v126), v69);
                v129 = vmovl_s16(vbic_s8(v125, v120));
                v130 = vbslq_s8(v129, vaddq_f32(vmulq_f32(v121, v126), v66), v117);
                v131 = vbslq_s8(v129, v127, v118);
                v132 = vbslq_s8(v129, v128, v119);
                v133 = vmovl_s16(vorr_s8(v120, v125));
                a5 = v187;
                v5 = v188;
                if ((vminvq_u32(v133) & 0x80000000) != 0)
                {
                  v63 = v130;
                  v64 = v131;
                  v65 = v132;
                }

                else
                {
                  __asm { FMOV            V22.4S, #1.0 }

                  v137 = vdivq_f32(_Q22, vaddq_f32(v96, vaddq_f32(v122, v113)));
                  v138 = vmulq_f32(v113, v137);
                  v139 = vmulq_f32(v96, v137);
                  v63 = vbslq_s8(v133, v130, vaddq_f32(vmulq_f32(v74, v139), vaddq_f32(vmulq_f32(v67, v138), v63)));
                  v64 = vbslq_s8(v133, v131, vaddq_f32(vmulq_f32(v75, v139), vaddq_f32(vmulq_f32(v70, v138), v64)));
                  v65 = vbslq_s8(v133, v132, vaddq_f32(vmulq_f32(v77, v139), vaddq_f32(vmulq_f32(v71, v138), v65)));
                }
              }

              goto LABEL_27;
            }

            v63 = v111;
          }

          v64 = v102;
          v65 = v103;
LABEL_27:
          v58 = v190;
          v57 = v191;
          v56 = v189;
LABEL_28:
          for (i = 0; i != 4; ++i)
          {
            if (v61 + i >= v54 && v61 + i < v55)
            {
              v142 = &v59[(v61 - v54 + i)];
              v192 = v63;
              LODWORD(v143) = *(&v192 & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3)));
              v193 = v64;
              v194 = v65;
              HIDWORD(v143) = *(&v193 & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3)));
              v142->i32[2] = *(&v194 & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3)));
              v142->i64[0] = v143;
            }
          }

          ++v60;
          v61 += 4;
        }

        while (v60 != (v55 + 3) >> 2);
      }

      if (!v53)
      {
        goto LABEL_54;
      }

      v144 = 0;
      v145 = v51 + 4 * v52;
      while (1)
      {
        v146 = vsubq_f32(a5, v196[v144]);
        v147 = vmulq_f32(v146, v146);
        v148 = vaddv_f32(*v147.f32);
        if ((v147.f32[2] + v148) >= *&v5)
        {
          if ((v147.f32[2] + v148) != *&v5)
          {
            goto LABEL_46;
          }

          v149 = *(v145 + 4 * v144);
          if (v149 >= v27)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v149 = *(v145 + 4 * v144);
        }

        v27 = v149;
        *&v5 = v147.f32[2] + v148;
        v13 = v196[v144];
LABEL_46:
        if ((v53 + v52) - v52 <= ++v144)
        {
          goto LABEL_54;
        }
      }
    }

    v37 = (v32 + (v35 << 6));
    v39 = v37[2];
    v38 = v37[3];
    v38.i32[3] = 0;
    v40 = vminnmq_f32(v186, v38);
    v40.i32[3] = 0;
    v39.i32[3] = 0;
    v41 = vsubq_f32(vmaxnmq_f32(v40, v39), a5);
    v42 = (v32 + (v34 << 6));
    v44 = v42[2];
    v43 = v42[3];
    v43.i32[3] = 0;
    v45 = vmulq_f32(v41, v41);
    v46 = vminnmq_f32(v186, v43);
    v46.i32[3] = 0;
    v44.i32[3] = 0;
    v47 = vsubq_f32(vmaxnmq_f32(v46, v44), a5);
    v48 = vmulq_f32(v47, v47);
    v49 = vadd_f32(vzip1_s32(*&vextq_s8(v48, v48, 8uLL), *&vextq_s8(v45, v45, 8uLL)), vadd_f32(vzip1_s32(*v48.i8, *v45.i8), vzip2_s32(*v48.i8, *v45.i8)));
    v50 = vmvn_s8(vcgt_f32(vdup_lane_s32(*&v5, 0), v49));
    if ((v50.i32[1] | v50.i32[0]))
    {
      if (v50.i8[4])
      {
        if (v50.i8[0])
        {
          goto LABEL_54;
        }

        v195 = __PAIR64__(v49.u32[0], v34);
        _ZNSt3__16vectorIZNK4geom3bvhIfLh2EE13closest_pointIZ25geom_bvh_closest_point_2fE3__0EEDv2_fT_S6_RfRjE5stateNS_9allocatorISA_EEE9push_backB8nn200100EOSA_(&v199, &v195);
      }

      else
      {
        v195 = __PAIR64__(v49.u32[1], v35);
        _ZNSt3__16vectorIZNK4geom3bvhIfLh2EE13closest_pointIZ25geom_bvh_closest_point_2fE3__0EEDv2_fT_S6_RfRjE5stateNS_9allocatorISA_EEE9push_backB8nn200100EOSA_(&v199, &v195);
      }
    }

    else
    {
      v150 = v49.i32[1];
      if (v49.f32[1] >= v49.f32[0])
      {
        v185 = v49.i32[0];
        v195 = __PAIR64__(v49.u32[1], v35);
        _ZNSt3__16vectorIZNK4geom3bvhIfLh2EE13closest_pointIZ25geom_bvh_closest_point_2fE3__0EEDv2_fT_S6_RfRjE5stateNS_9allocatorISA_EEE9push_backB8nn200100EOSA_(&v199, &v195);
        LODWORD(v195) = v33[2];
        HIDWORD(v195) = v185;
      }

      else
      {
        v195 = __PAIR64__(v49.u32[0], v34);
        _ZNSt3__16vectorIZNK4geom3bvhIfLh2EE13closest_pointIZ25geom_bvh_closest_point_2fE3__0EEDv2_fT_S6_RfRjE5stateNS_9allocatorISA_EEE9push_backB8nn200100EOSA_(&v199, &v195);
        LODWORD(v195) = v33[1];
        HIDWORD(v195) = v150;
      }

      _ZNSt3__16vectorIZNK4geom3bvhIfLh2EE13closest_pointIZ25geom_bvh_closest_point_2fE3__0EEDv2_fT_S6_RfRjE5stateNS_9allocatorISA_EEE9push_backB8nn200100EOSA_(&v199, &v195);
    }

    a5 = v187;
LABEL_54:
    v25 = v199;
    v24 = v200;
  }

  while (v199 != v200);
  v10 = v183;
  a4 = v184;
  a3 = v181;
  v11 = v182;
  if (v196)
  {
    v197 = v196;
    operator delete(v196);
    a5 = v187;
  }

  if (v25)
  {
LABEL_61:
    operator delete(v25);
    a5 = v187;
  }

LABEL_62:
  if (a2)
  {
    *a2 = v5;
  }

  if (a3)
  {
    *a3 = v27;
  }

  if (a4)
  {
    if (v27 == -1)
    {
      v161.i64[0] = 0x3F0000003FLL;
      v161.i64[1] = 0x3F0000003FLL;
      _Q0 = vnegq_f32(v161);
    }

    else
    {
      v151 = *(v10 + 16 * *(v11 + 12 * v27));
      v152 = *(v10 + 16 * *(v11 + 4 * (3 * v27 + 1)));
      v153 = *(v10 + 16 * *(v11 + 4 * (3 * v27 + 2)));
      v154 = vsubq_f32(v152, v151);
      v155 = vsubq_f32(v153, v151);
      v156 = vsubq_f32(a5, v151);
      v157 = vmulq_f32(v156, v154);
      v158 = vmulq_f32(v156, v155);
      v159 = vadd_f32(vzip1_s32(*v158.i8, *v157.i8), vzip2_s32(*v158.i8, *v157.i8));
      _Q0 = vextq_s8(v158, v158, 8uLL);
      *_Q0.i8 = vadd_f32(vzip1_s32(*_Q0.i8, *&vextq_s8(v157, v157, 8uLL)), v159);
      *v157.i8 = vclez_f32(*_Q0.i8);
      if (v157.i32[1] & v157.i32[0])
      {
        _Q0 = xmmword_2500C1620;
      }

      else
      {
        v162 = vsubq_f32(a5, v152);
        v163 = vmulq_f32(v154, v162);
        v164 = vmulq_f32(v162, v155);
        _D2 = vadd_f32(vzip1_s32(*&vextq_s8(v164, v164, 8uLL), *&vextq_s8(v163, v163, 8uLL)), vadd_f32(vzip1_s32(*v164.i8, *v163.i8), vzip2_s32(*v164.i8, *v163.i8)));
        if (_D2.f32[1] < 0.0 || _D2.f32[0] > _D2.f32[1])
        {
          __asm { FMLA            S1, S2, V0.S[1] }

          if (*&_Q0.i32[1] == _D2.f32[1] || _D2.f32[1] > 0.0 || *&_Q0.i32[1] < 0.0 || _S1 > 0.0)
          {
            v169 = vsubq_f32(a5, v153);
            v170 = vmulq_f32(v154, v169);
            v171 = vmulq_f32(v155, v169);
            v172 = vadd_f32(vzip1_s32(*&vextq_s8(v170, v170, 8uLL), *&vextq_s8(v171, v171, 8uLL)), vadd_f32(vzip1_s32(*v170.i8, *v171.i8), vzip2_s32(*v170.i8, *v171.i8)));
            if (v172.f32[1] < 0.0 || v172.f32[0] > v172.f32[1])
            {
              v174 = (v172.f32[0] * *_Q0.i32) - (*&_Q0.i32[1] * v172.f32[1]);
              if (v172.f32[1] > 0.0 || v174 > 0.0 || (*_Q0.i32 >= 0.0 ? (v175 = *_Q0.i32 == v172.f32[1]) : (v175 = 1), v175))
              {
                v177 = (_D2.f32[1] * v172.f32[1]) - (v172.f32[0] * _D2.f32[0]);
                if (v177 <= 0.0 && (v178 = _D2.f32[0] - _D2.f32[1], v178 >= 0.0) && (v172.f32[0] - v172.f32[1]) >= 0.0)
                {
                  v176 = v178 / (v178 + (v172.f32[0] - v172.f32[1]));
                  _Q0.i32[0] = 0;
                  _Q0.i32[3] = 0;
                  *&_Q0.i32[1] = 1.0 - v176;
                }

                else
                {
                  v179 = 1.0 / (_S1 + (v177 + v174));
                  *&v180 = v174 * v179;
                  v176 = _S1 * v179;
                  *_Q0.i32 = (1.0 - (v174 * v179)) - v176;
                  _Q0.i32[1] = v180;
                }
              }

              else
              {
                v176 = *_Q0.i32 / (*_Q0.i32 - v172.f32[1]);
                _Q0.i32[1] = 0;
                _Q0.i32[3] = 0;
                *_Q0.i32 = 1.0 - v176;
              }

              *&_Q0.i32[2] = v176;
            }

            else
            {
              _Q0 = xmmword_2500C2810;
            }
          }

          else
          {
            _Q0.i64[1] = 0;
            *_Q0.i32 = 1.0 - (*&_Q0.i32[1] / (*&_Q0.i32[1] - _D2.f32[1]));
            *&_Q0.i32[1] = *&_Q0.i32[1] / (*&_Q0.i32[1] - _D2.f32[1]);
          }
        }

        else
        {
          _Q0 = xmmword_2500C1630;
        }
      }
    }

    *a4 = _Q0;
  }

  return *v13.i64;
}

void sub_24FFC3050(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 200);
  if (v3)
  {
    *(v1 - 192) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 176);
  if (v4)
  {
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void geom_triangle_mesh_bvh_closest_point_3d(void *a1@<X0>, float64x2_t *a2@<X1>, double *a3@<X2>, unsigned int *a4@<X3>, int64x2_t *a5@<X4>, __n128 *a6@<X8>, __n128 a7@<Q0>, __n128 a8@<Q1>, __n128 a9@<Q2>, __n128 a10@<Q3>, __n128 a11@<Q5>)
{
  v13 = a3;
  v16 = *a2;
  v15 = a2[1];
  v17 = a1[18];
  v18 = a1[21];
  v19 = vdupq_n_s64(0x7FF8000000000000uLL);
  __asm { FMOV            V20.2D, #1.0 }

  if (a1[7] == a1[6] || (v22 = a1, (v23 = a1[4] - a1[3]) == 0))
  {
    a11.n128_u64[0] = 0x7FF8000000000000;
    v33 = -1;
    v34 = INFINITY;
    if (!a3)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  v297 = *a2;
  v298 = a2[1];
  v294 = _Q20;
  v24 = a1[15];
  v346 = 0;
  v347 = 0;
  v348 = 0;
  _ZNSt3__16vectorIZNK4geom3bvhIdLh3EE13closest_pointIN12_GLOBAL__N_130triangle_closest_point_functorIdEEEEDv3_dT_S8_RdRjE5stateNS_9allocatorISC_EEE7reserveEm(&v346, 31 - __clz(-1431655765 * (v23 >> 5)));
  v25 = v22[3];
  v26 = *(v25 + 64);
  v27 = *(v25 + 80);
  *&v344 = 0;
  v28 = vsubq_f64(vmaxnmq_f64(vminnmq_f64(v297, v26), *(v25 + 32)), v297);
  v29 = vsubq_f64(vmaxnmq_f64(*&vminnmq_f64(*&v298.f64[0], v27), *(v25 + 48)), v298);
  v30 = vmulq_f64(v28, v28);
  v30.n128_f64[0] = vmulq_f64(v29, v29).f64[0] + vaddvq_f64(v30);
  *(&v344 + 1) = v30.n128_u64[0];
  _ZNSt3__16vectorIZNK4geom3bvhIdLh2EE13closest_pointIZ25geom_bvh_closest_point_2dE3__0EEDv2_dT_S6_RdRjE5stateNS_9allocatorISA_EEE9push_backB8nn200100EOSA_(&v346, &v344, v30);
  v344 = 0uLL;
  v345 = 0;
  v31 = v346;
  v32 = v347;
  if (v346 != v347)
  {
    v290 = v13;
    v291 = a4;
    v292 = a5;
    v16 = v297;
    v15 = v298;
    v322 = vdupq_laneq_s64(v297, 1);
    v323 = vdupq_lane_s64(*&v297.f64[0], 0);
    a11.n128_u64[0] = 0x7FF8000000000000;
    v19 = vdupq_n_s64(0x7FF8000000000000uLL);
    v33 = -1;
    v34 = INFINITY;
    v321 = vdupq_lane_s64(*&v298.f64[0], 0);
    v293 = v22;
    while (1)
    {
      v37 = *(v32 - 4);
      v35 = v32 - 16;
      v36 = v37;
      v38 = *(v35 + 1);
      v347 = v35;
      if (v34 > v38)
      {
        v39 = v22[3];
        v40 = (v39 + 96 * v36);
        v42 = v40[1];
        v41 = v40[2];
        _ZF = v42 == -1 && v41 == -1;
        v299 = a11;
        v302 = v19;
        if (!_ZF)
        {
          v44 = v39 + 96 * v42;
          v45 = vsubq_f64(vmaxnmq_f64(vminnmq_f64(v16, *(v44 + 64)), *(v44 + 32)), v16);
          v46 = vsubq_f64(vmaxnmq_f64(*&vminnmq_f64(*&v298.f64[0], *(v44 + 80)), *(v44 + 48)), v15);
          v47 = vmulq_f64(v46, v46).f64[0] + vaddvq_f64(vmulq_f64(v45, v45));
          v48 = v39 + 96 * v41;
          v49 = vsubq_f64(vmaxnmq_f64(vminnmq_f64(v16, *(v48 + 64)), *(v48 + 32)), v16);
          v50 = vsubq_f64(vmaxnmq_f64(*&vminnmq_f64(*&v298.f64[0], *(v48 + 80)), *(v48 + 48)), v15);
          v51 = vmulq_f64(v50, v50).f64[0];
          v52 = vmulq_f64(v49, v49);
          v52.n128_f64[0] = vaddvq_f64(v52);
          v53 = v51 + v52.n128_f64[0];
          if (v47 < v34 && v53 < v34)
          {
            v253 = v34;
            if (v47 >= v53)
            {
              LODWORD(v343) = v40[1];
              *(&v343 + 1) = v47;
              _ZNSt3__16vectorIZNK4geom3bvhIdLh2EE13closest_pointIZ25geom_bvh_closest_point_2dE3__0EEDv2_dT_S6_RdRjE5stateNS_9allocatorISA_EEE9push_backB8nn200100EOSA_(&v346, &v343, v52);
              LODWORD(v343) = v40[2];
              *(&v343 + 1) = v53;
            }

            else
            {
              LODWORD(v343) = v40[2];
              *(&v343 + 1) = v51 + v52.n128_f64[0];
              _ZNSt3__16vectorIZNK4geom3bvhIdLh2EE13closest_pointIZ25geom_bvh_closest_point_2dE3__0EEDv2_dT_S6_RdRjE5stateNS_9allocatorISA_EEE9push_backB8nn200100EOSA_(&v346, &v343, v52);
              LODWORD(v343) = v40[1];
              *(&v343 + 1) = v47;
            }

            _ZNSt3__16vectorIZNK4geom3bvhIdLh2EE13closest_pointIZ25geom_bvh_closest_point_2dE3__0EEDv2_dT_S6_RdRjE5stateNS_9allocatorISA_EEE9push_backB8nn200100EOSA_(&v346, &v343, v254);
            a11 = v299;
            v19 = v302;
            v16 = v297;
            v15 = v298;
            v34 = v253;
          }

          else if (v47 < v34)
          {
            v255 = v34;
            LODWORD(v343) = v40[1];
            *(&v343 + 1) = v47;
            _ZNSt3__16vectorIZNK4geom3bvhIdLh2EE13closest_pointIZ25geom_bvh_closest_point_2dE3__0EEDv2_dT_S6_RdRjE5stateNS_9allocatorISA_EEE9push_backB8nn200100EOSA_(&v346, &v343, v52);
            a11 = v299;
            v19 = v302;
            v16 = v297;
            v15 = v298;
            v34 = v255;
          }

          else if (v53 < v34)
          {
            v55 = v34;
            LODWORD(v343) = v40[2];
            *(&v343 + 1) = v51 + v52.n128_f64[0];
            _ZNSt3__16vectorIZNK4geom3bvhIdLh2EE13closest_pointIZ25geom_bvh_closest_point_2dE3__0EEDv2_dT_S6_RdRjE5stateNS_9allocatorISA_EEE9push_backB8nn200100EOSA_(&v346, &v343, v52);
            a11 = v299;
            v19 = v302;
            v16 = v297;
            v15 = v298;
            v34 = v55;
          }

          goto LABEL_56;
        }

        v296 = v34;
        v295 = v22[6];
        v57 = v40[3];
        v56 = v40[4];
        v58 = (v56 + v57) - v57;
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE6resizeEm(&v344, v58);
        v59 = v40[3];
        v60 = (v40[4] + v59);
        v62 = v322;
        v61 = v323;
        v63 = v321;
        if (v59 >> 2 < (v60 + 3) >> 2)
        {
          v64 = v344;
          v65 = v59 >> 2;
          v66 = 4 * (v59 >> 2);
          do
          {
            v67 = (v24 + 288 * v65);
            v69 = v67[6];
            v68 = v67[7];
            v70 = *v67;
            v71 = v67[1];
            v73 = v67[8];
            v72 = v67[9];
            v74 = v67[2];
            v75 = v67[3];
            v77 = v67[10];
            v76 = v67[11];
            v78 = v67[4];
            v79 = v67[5];
            v326 = v67[12];
            v80 = vsubq_f64(v326, *v67);
            v332 = v67[13];
            v81 = vsubq_f64(v332, v71);
            v329 = v67[15];
            v330 = v67[14];
            v82 = vsubq_f64(v329, v75);
            v83 = vsubq_f64(v330, v74);
            v84 = vsubq_f64(v61, *v67);
            v85 = vsubq_f64(v61, v71);
            v86 = v61;
            v87 = vsubq_f64(v62, v75);
            v88 = vsubq_f64(v62, v74);
            v338 = vsubq_f64(v77, v78);
            v339 = vsubq_f64(v72, v75);
            v334 = vsubq_f64(v73, v74);
            v335 = vsubq_f64(v68, v71);
            v89 = vsubq_f64(v69, *v67);
            v90 = vmlaq_f64(vmulq_f64(v334, v88), v84, v89);
            v91 = vmlaq_f64(vmulq_f64(v88, v83), v84, v80);
            v92 = vsubq_f64(v63, v78);
            v93 = vmlaq_f64(v90, v92, v338);
            v327 = v67[17];
            v328 = v67[16];
            v94 = vsubq_f64(v328, v78);
            v95 = vmlaq_f64(v91, v92, v94);
            v96 = vsubq_f64(v63, v79);
            v337 = vsubq_f64(v76, v79);
            v97 = vmlaq_f64(vmlaq_f64(vmulq_f64(v339, v87), v85, v335), v96, v337);
            v98 = vsubq_f64(v327, v79);
            v99 = vmlaq_f64(vmlaq_f64(vmulq_f64(v87, v82), v85, v81), v96, v98);
            v100 = vclezq_f64(v97);
            v333 = v95;
            v101 = vclezq_f64(v99);
            v102 = vclezq_f64(v93);
            v103 = vclezq_f64(v95);
            v104 = vand_s8(vand_s8(vmovn_s64(v103), vmovn_s64(v102)), vand_s8(vmovn_s64(v101), vmovn_s64(v100)));
            v105.i64[0] = v104.i32[0];
            v105.i64[1] = v104.i32[1];
            if ((vandq_s8(v105, vdupq_laneq_s64(v105, 1)).u64[0] & 0x8000000000000000) != 0)
            {
              v61 = v86;
            }

            else
            {
              v106 = vandq_s8(vuzp1q_s32(v103, v101), vuzp1q_s32(v102, v100));
              v107 = v62;
              v108 = vmovn_s32(v106);
              v109 = vsubq_f64(v63, v77);
              v110 = vsubq_f64(v63, v76);
              v111 = vsubq_f64(v107, v73);
              v112 = vsubq_f64(v107, v72);
              v113 = vsubq_f64(v86, v68);
              v336 = v94;
              v114 = vsubq_f64(v86, v69);
              v115 = vmlaq_f64(vmlaq_f64(vmulq_f64(v112, v339), v113, v335), v110, v337);
              v116 = vmlaq_f64(vmlaq_f64(vmulq_f64(v111, v334), v114, v89), v109, v338);
              v318 = v82;
              v319 = v81;
              v117 = vmulq_f64(v112, v82);
              v324 = v98;
              v325 = v83;
              v320 = v80;
              v118 = vmlaq_f64(vmulq_f64(v111, v83), v114, v80);
              v119 = vmlaq_f64(vmlaq_f64(v117, v113, v81), v110, v98);
              v120 = vmlaq_f64(v118, v109, v336);
              *&v110.f64[0] = vmovn_s32(vandq_s8(vuzp1q_s32(vcgeq_f64(v116, v120), vcgeq_f64(v115, v119)), vuzp1q_s32(vcgezq_f64(v116), vcgezq_f64(v115))));
              v121 = vmovl_u16(vbic_s8(*&v110.f64[0], v108));
              v122.i64[0] = v121.u32[2];
              v122.i64[1] = v121.u32[3];
              v123 = vcltzq_s64(vshlq_n_s64(v122, 0x3FuLL));
              v315 = v67[7];
              v124 = vbslq_s8(v123, v68, v71);
              v122.i64[0] = v121.u32[0];
              v122.i64[1] = v121.u32[1];
              v125 = vcltzq_s64(vshlq_n_s64(v122, 0x3FuLL));
              v126 = vbslq_s8(v125, v69, v70);
              v127 = vorr_s8(v108, *&v110.f64[0]);
              v128 = vmovl_u16(v127);
              *v128.i8 = vand_s8(*v128.i8, *&vextq_s8(v128, v128, 8uLL));
              v122.i64[0] = v128.u32[0];
              v122.i64[1] = v128.u32[1];
              v129 = vcltzq_s64(vshlq_n_s64(v122, 0x3FuLL));
              v130 = vbslq_s8(v123, v72, v75);
              v131 = vandq_s8(v129, vdupq_laneq_s64(v129, 1)).u64[0];
              v132 = vbslq_s8(v125, v73, v74);
              v133 = vbslq_s8(v123, v76, v79);
              v134 = vbslq_s8(v125, v77, v78);
              if ((v131 & 0x8000000000000000) != 0)
              {
                v70 = v126;
                v71 = v124;
                v74 = v132;
                v75 = v130;
                v78 = v134;
                v79 = v133;
                v63 = v321;
                v62 = v322;
                v61 = v323;
              }

              else
              {
                v135 = v115;
                v308 = v69;
                v309 = v119;
                v310 = v76;
                v311 = v77;
                v312 = v72;
                v313 = v73;
                v136 = vmlaq_f64(vmulq_f64(v99, vnegq_f64(v115)), v119, v97);
                v137 = vmlaq_f64(vmulq_f64(v333, vnegq_f64(v116)), v120, v93);
                v138 = vsubq_f64(v97, v115);
                v139 = vsubq_f64(v93, v116);
                v140 = vmovn_s32(vandq_s8(vbicq_s8(vandq_s8(vuzp1q_s32(vclezq_f64(v116), vclezq_f64(v115)), vuzp1q_s32(vcgezq_f64(v93), vcgezq_f64(v97))), vuzp1q_s32(vceqzq_f64(v139), vceqzq_f64(v138))), vuzp1q_s32(vclezq_f64(v137), vclezq_f64(v136))));
                v141 = vdivq_f64(v97, v138);
                v142 = vmovl_u16(vbic_s8(v140, v127));
                v143.i64[0] = v142.u32[2];
                v143.i64[1] = v142.u32[3];
                v144 = vcltzq_s64(vshlq_n_s64(v143, 0x3FuLL));
                v316 = vbslq_s8(v144, vaddq_f64(vmulq_f64(v335, v141), v71), v124);
                v145 = vbslq_s8(v144, vaddq_f64(vmulq_f64(v339, v141), v75), v130);
                v146 = vbslq_s8(v144, vaddq_f64(vmulq_f64(v337, v141), v79), v133);
                v147 = vdivq_f64(v93, v139);
                v143.i64[0] = v142.u32[0];
                v143.i64[1] = v142.u32[1];
                v148 = vcltzq_s64(vshlq_n_s64(v143, 0x3FuLL));
                v149 = vbslq_s8(v148, vaddq_f64(vmulq_f64(v89, v147), v70), v126);
                v150 = vbslq_s8(v148, vaddq_f64(vmulq_f64(v334, v147), v74), v132);
                v151 = vbslq_s8(v148, vaddq_f64(vmulq_f64(v338, v147), v78), v134);
                v152 = vorr_s8(v140, v127);
                v153 = vmovl_u16(v152);
                *v153.i8 = vand_s8(*v153.i8, *&vextq_s8(v153, v153, 8uLL));
                v143.i64[0] = v153.u32[0];
                v143.i64[1] = v153.u32[1];
                v154 = vcltzq_s64(vshlq_n_s64(v143, 0x3FuLL));
                if ((vandq_s8(v154, vdupq_laneq_s64(v154, 1)).u64[0] & 0x8000000000000000) != 0)
                {
                  v70 = v149;
                  v71 = v316;
                  v74 = v150;
                  v75 = v145;
                  v78 = v151;
                  v79 = v146;
                }

                else
                {
                  v305 = v136;
                  v306 = v137;
                  v155 = vsubq_f64(v323, v332);
                  v156 = vsubq_f64(v323, v326);
                  v314 = v146;
                  v157 = vsubq_f64(v322, v329);
                  v158 = vsubq_f64(v322, v330);
                  v159 = vsubq_f64(v321, v327);
                  v160 = vsubq_f64(v321, v328);
                  v307 = v89;
                  v161 = vmlaq_f64(vmlaq_f64(vmulq_f64(v339, v157), v155, v335), v159, v337);
                  v162 = vmlaq_f64(vmlaq_f64(vmulq_f64(v334, v158), v156, v89), v160, v338);
                  v163 = vmlaq_f64(vmlaq_f64(vmulq_f64(v318, v157), v155, v319), v159, v324);
                  v164 = vmlaq_f64(vmlaq_f64(vmulq_f64(v325, v158), v156, v320), v160, v336);
                  *&v159.f64[0] = vmovn_s32(vandq_s8(vuzp1q_s32(vcgezq_f64(v164), vcgezq_f64(v163)), vuzp1q_s32(vcgeq_f64(v164, v162), vcgeq_f64(v163, v161))));
                  v165 = vmovl_u16(vbic_s8(*&v159.f64[0], v152));
                  v166.i64[0] = v165.u32[2];
                  v166.i64[1] = v165.u32[3];
                  v167 = vcltzq_s64(vshlq_n_s64(v166, 0x3FuLL));
                  v168 = vbslq_s8(v167, v332, v316);
                  v169 = vbslq_s8(v167, v329, v145);
                  v170 = vbslq_s8(v167, v327, v314);
                  v166.i64[0] = v165.u32[0];
                  v166.i64[1] = v165.u32[1];
                  v171 = vcltzq_s64(vshlq_n_s64(v166, 0x3FuLL));
                  v172 = vbslq_s8(v171, v326, v149);
                  v173 = vbslq_s8(v171, v330, v150);
                  v174 = vbslq_s8(v171, v328, v151);
                  v175 = vorr_s8(v152, *&v159.f64[0]);
                  v176 = vmovl_u16(v175);
                  *v176.i8 = vand_s8(*v176.i8, *&vextq_s8(v176, v176, 8uLL));
                  v166.i64[0] = v176.u32[0];
                  v166.i64[1] = v176.u32[1];
                  v177 = vcltzq_s64(vshlq_n_s64(v166, 0x3FuLL));
                  if ((vandq_s8(v177, vdupq_laneq_s64(v177, 1)).u64[0] & 0x8000000000000000) != 0)
                  {
                    v70 = v172;
                    v71 = v168;
                    v74 = v173;
                    v75 = v169;
                    v78 = v174;
                    v79 = v170;
                  }

                  else
                  {
                    v178 = vmulq_f64(v164, vnegq_f64(v93));
                    v179 = vmlaq_f64(vmulq_f64(v163, vnegq_f64(v97)), v99, v161);
                    v317 = vmlaq_f64(v178, v333, v162);
                    *&v178.f64[0] = vmovn_s32(vandq_s8(vbicq_s8(vandq_s8(vuzp1q_s32(vclezq_f64(v164), vclezq_f64(v163)), vuzp1q_s32(vcgezq_f64(v333), vcgezq_f64(v99))), vuzp1q_s32(vceqq_f64(v333, v164), vceqq_f64(v99, v163))), vuzp1q_s32(vclezq_f64(v317), vclezq_f64(v179))));
                    v180 = vdivq_f64(v99, vsubq_f64(v99, v163));
                    v181 = vmovl_u16(vbic_s8(*&v178.f64[0], v175));
                    v182.i64[0] = v181.u32[2];
                    v182.i64[1] = v181.u32[3];
                    v183 = vcltzq_s64(vshlq_n_s64(v182, 0x3FuLL));
                    v184 = v170;
                    v185 = vbslq_s8(v183, vaddq_f64(vmulq_f64(v319, v180), v71), v168);
                    v186 = vbslq_s8(v183, vaddq_f64(vmulq_f64(v318, v180), v75), v169);
                    v187 = vbslq_s8(v183, vaddq_f64(vmulq_f64(v324, v180), v79), v184);
                    v188 = vdivq_f64(v333, vsubq_f64(v333, v164));
                    v182.i64[0] = v181.u32[0];
                    v182.i64[1] = v181.u32[1];
                    v189 = vcltzq_s64(vshlq_n_s64(v182, 0x3FuLL));
                    v190 = vbslq_s8(v189, vaddq_f64(vmulq_f64(v320, v188), v70), v172);
                    v191 = vbslq_s8(v189, vaddq_f64(vmulq_f64(v325, v188), v74), v173);
                    v192 = vbslq_s8(v189, vaddq_f64(vmulq_f64(v336, v188), v78), v174);
                    v193 = vorr_s8(v175, *&v178.f64[0]);
                    v194 = vmovl_u16(v193);
                    *v194.i8 = vand_s8(*v194.i8, *&vextq_s8(v194, v194, 8uLL));
                    v182.i64[0] = v194.u32[0];
                    v182.i64[1] = v194.u32[1];
                    v195 = vcltzq_s64(vshlq_n_s64(v182, 0x3FuLL));
                    if ((vandq_s8(v195, vdupq_laneq_s64(v195, 1)).u64[0] & 0x8000000000000000) != 0)
                    {
                      v70 = v190;
                      v71 = v185;
                      v74 = v191;
                      v75 = v186;
                      v78 = v192;
                      v79 = v187;
                    }

                    else
                    {
                      v196 = vsubq_f64(v330, v313);
                      v331 = v191;
                      v197 = v185;
                      v198 = vmlaq_f64(vmulq_f64(v309, vnegq_f64(v161)), v163, v135);
                      v199 = vmlaq_f64(vmulq_f64(v120, vnegq_f64(v162)), v164, v116);
                      v200 = vsubq_f64(v309, v135);
                      v201 = vsubq_f64(v120, v116);
                      v202 = vsubq_f64(v161, v163);
                      v203 = vsubq_f64(v162, v164);
                      v204 = vmovn_s32(vandq_s8(vandq_s8(vuzp1q_s32(vcgezq_f64(v203), vcgezq_f64(v202)), vuzp1q_s32(vcgezq_f64(v201), vcgezq_f64(v200))), vuzp1q_s32(vclezq_f64(v199), vclezq_f64(v198))));
                      v205 = vdivq_f64(v201, vaddq_f64(v201, v203));
                      v206 = vdivq_f64(v200, vaddq_f64(v200, v202));
                      v207 = vmulq_f64(vsubq_f64(v332, v315), v206);
                      v208 = vmulq_f64(vsubq_f64(v329, v312), v206);
                      v209 = vaddq_f64(vmulq_f64(vsubq_f64(v328, v311), v205), v311);
                      v210 = vaddq_f64(vmulq_f64(vsubq_f64(v327, v310), v206), v310);
                      v211 = vmovl_u16(vbic_s8(v204, v193));
                      v212.i64[0] = v211.u32[2];
                      v212.i64[1] = v211.u32[3];
                      v213 = vcltzq_s64(vshlq_n_s64(v212, 0x3FuLL));
                      v214 = vbslq_s8(v213, vaddq_f64(v207, v315), v197);
                      v212.i64[0] = v211.u32[0];
                      v212.i64[1] = v211.u32[1];
                      v215 = vcltzq_s64(vshlq_n_s64(v212, 0x3FuLL));
                      v216 = vbslq_s8(v215, vaddq_f64(vmulq_f64(vsubq_f64(v326, v308), v205), v308), v190);
                      v217 = vbslq_s8(v213, vaddq_f64(v208, v312), v186);
                      v218 = vbslq_s8(v215, vaddq_f64(vmulq_f64(v196, v205), v313), v331);
                      v219 = vbslq_s8(v213, v210, v187);
                      v220 = vbslq_s8(v215, v209, v192);
                      v221 = vmovl_u16(vorr_s8(v193, v204));
                      v222 = vand_s8(*v221.i8, *&vextq_s8(v221, v221, 8uLL));
                      v212.i64[0] = v222.u32[0];
                      v212.i64[1] = v222.u32[1];
                      v223 = vcltzq_s64(vshlq_n_s64(v212, 0x3FuLL));
                      if ((vandq_s8(v223, vdupq_laneq_s64(v223, 1)).u64[0] & 0x8000000000000000) != 0)
                      {
                        v70 = v216;
                        v71 = v214;
                        v74 = v218;
                        v75 = v217;
                        v78 = v220;
                        v79 = v219;
                      }

                      else
                      {
                        v224 = vdivq_f64(v294, vaddq_f64(v305, vaddq_f64(v198, v179)));
                        v225 = vdivq_f64(v294, vaddq_f64(v306, vaddq_f64(v199, v317)));
                        v226 = vmulq_f64(v317, v225);
                        v227 = vmulq_f64(v179, v224);
                        v228 = vmulq_f64(v305, v224);
                        v229 = vmulq_f64(v306, v225);
                        v230 = vaddq_f64(vmulq_f64(v335, v227), v71);
                        v231 = vaddq_f64(vmulq_f64(v339, v227), v75);
                        v232 = vaddq_f64(vmulq_f64(v337, v227), v79);
                        v233 = vmulq_f64(v319, v228);
                        v234 = vmulq_f64(v318, v228);
                        v235 = vaddq_f64(vmulq_f64(v324, v228), v232);
                        v236.i64[0] = v221.u32[0];
                        v236.i64[1] = v221.u32[1];
                        v237 = vcltzq_s64(vshlq_n_s64(v236, 0x3FuLL));
                        v70 = vbslq_s8(v237, v216, vaddq_f64(vmulq_f64(v320, v229), vaddq_f64(vmulq_f64(v307, v226), v70)));
                        v236.i64[0] = v221.u32[2];
                        v236.i64[1] = v221.u32[3];
                        v238 = vcltzq_s64(vshlq_n_s64(v236, 0x3FuLL));
                        v71 = vbslq_s8(v238, v214, vaddq_f64(v233, v230));
                        v74 = vbslq_s8(v237, v218, vaddq_f64(vmulq_f64(v325, v229), vaddq_f64(vmulq_f64(v334, v226), v74)));
                        v75 = vbslq_s8(v238, v217, vaddq_f64(v234, v231));
                        v78 = vbslq_s8(v237, v220, vaddq_f64(vmulq_f64(v336, v229), vaddq_f64(vmulq_f64(v338, v226), v78)));
                        v79 = vbslq_s8(v238, v219, v235);
                      }
                    }
                  }
                }

                v62 = v322;
                v61 = v323;
                v63 = v321;
              }
            }

            for (i = 0; i != 4; ++i)
            {
              if (v66 + i >= v59 && v66 + i < v60)
              {
                v241 = v64 + 32 * (v66 - v59 + i);
                v342[0] = v70;
                v342[1] = v71;
                v242 = 8 * (i & 3);
                v341[0] = v74;
                v341[1] = v75;
                v340[0] = v78;
                v340[1] = v79;
                *&v243 = *(v342 + v242);
                *(&v243 + 1) = *(v341 + v242);
                *(v241 + 16) = *(v340 + v242);
                *v241 = v243;
              }
            }

            ++v65;
            v66 += 4;
          }

          while (v65 != (v60 + 3) >> 2);
        }

        if (v56)
        {
          v244 = 0;
          v245 = v295 + 4 * v57;
          a11 = v299;
          v19 = v302;
          v22 = v293;
          v16 = v297;
          v15 = v298;
          v34 = v296;
          while (1)
          {
            v246 = (v344 + 32 * v244);
            v248 = *v246;
            v247 = v246[1];
            v249 = vsubq_f64(v297, *v246);
            v250 = vsubq_f64(v298, v247);
            v251 = vmulq_f64(v250, v250).f64[0] + vaddvq_f64(vmulq_f64(v249, v249));
            if (v251 >= v34)
            {
              if (v251 != v34)
              {
                goto LABEL_48;
              }

              v252 = *(v245 + 4 * v244);
              if (v252 >= v33)
              {
                goto LABEL_48;
              }
            }

            else
            {
              v252 = *(v245 + 4 * v244);
            }

            v33 = v252;
            v34 = v251;
            v19 = v248;
            a11 = v247;
LABEL_48:
            if (v58 <= ++v244)
            {
              goto LABEL_56;
            }
          }
        }

        a11 = v299;
        v19 = v302;
        v22 = v293;
        v16 = v297;
        v15 = v298;
        v34 = v296;
      }

LABEL_56:
      v31 = v346;
      v32 = v347;
      if (v346 == v347)
      {
        a5 = v292;
        v13 = v290;
        a4 = v291;
        if (v344)
        {
          *(&v344 + 1) = v344;
          v300 = a11;
          v303 = v19;
          v256 = v34;
          operator delete(v344);
          v34 = v256;
          v16 = v297;
          v15 = v298;
          a11 = v300;
          v19 = v303;
          v31 = v346;
        }

        if (v31)
        {
          goto LABEL_60;
        }

        goto LABEL_61;
      }
    }
  }

  a11.n128_u64[0] = 0x7FF8000000000000;
  v19 = vdupq_n_s64(0x7FF8000000000000uLL);
  v33 = -1;
  v34 = INFINITY;
  v16 = v297;
  v15 = v298;
  if (v346)
  {
LABEL_60:
    v347 = v31;
    v301 = a11;
    v304 = v19;
    v257 = v34;
    operator delete(v31);
    v34 = v257;
    v16 = v297;
    v15 = v298;
    a11 = v301;
    v19 = v304;
  }

LABEL_61:
  _Q20 = v294;
  if (v13)
  {
LABEL_64:
    *v13 = v34;
  }

LABEL_65:
  if (a4)
  {
    *a4 = v33;
  }

  if (a5)
  {
    v258 = a11;
    v259 = v19;
    if (v33 == -1)
    {
      v275 = vdupq_n_s64(0x7FF8000000000000uLL);
      _Q20.i64[0] = 0x7FF8000000000000;
    }

    else
    {
      v260 = (v17 + 32 * *(v18 + 12 * v33));
      v262 = *v260;
      v261 = v260[1];
      v263 = (v17 + 32 * *(v18 + 4 * (3 * v33 + 1)));
      v264 = v263[1];
      v265 = (v17 + 32 * *(v18 + 4 * (3 * v33 + 2)));
      v266 = v265[1];
      v267 = vsubq_f64(*v263, v262);
      v268 = vsubq_f64(v264, v261);
      v269 = vsubq_f64(*v265, v262);
      v270 = vsubq_f64(v266, v261);
      v271 = vsubq_f64(v16, v262);
      v272 = vsubq_f64(v15, v261);
      v273 = vmulq_f64(v272, v268).f64[0] + vaddvq_f64(vmulq_f64(v271, v267));
      v274 = vmulq_f64(v272, v270).f64[0] + vaddvq_f64(vmulq_f64(v271, v269));
      if (v273 > 0.0 || v274 > 0.0)
      {
        v276 = vsubq_f64(v16, *v263);
        v277 = vsubq_f64(v15, v264);
        v278 = vaddq_f64(vzip1q_s64(vmulq_f64(v277, v270), vmulq_f64(v268, v277)), vpaddq_f64(vmulq_f64(v276, v269), vmulq_f64(v267, v276)));
        if (v278.f64[1] < 0.0 || v278.f64[0] > v278.f64[1])
        {
          v280 = v273 * v278.f64[0] - v278.f64[1] * v274;
          if (v273 == v278.f64[1] || v278.f64[1] > 0.0 || v273 < 0.0 || v280 > 0.0)
          {
            v281 = vsubq_f64(v16, *v265);
            v282 = vsubq_f64(v15, v266);
            v283 = vaddq_f64(vzip1q_s64(vmulq_f64(v268, v282), vmulq_f64(v270, v282)), vpaddq_f64(vmulq_f64(v267, v281), vmulq_f64(v269, v281)));
            v275 = 0uLL;
            if (v283.f64[1] < 0.0 || v283.f64[0] > v283.f64[1])
            {
              v285 = v283.f64[0] * v274 - v273 * v283.f64[1];
              if (v283.f64[1] > 0.0 || v285 > 0.0 || (v274 >= 0.0 ? (v286 = v274 == v283.f64[1]) : (v286 = 1), v286))
              {
                v287 = v278.f64[1] * v283.f64[1] - v283.f64[0] * v278.f64[0];
                if (v287 <= 0.0 && v278.f64[0] - v278.f64[1] >= 0.0 && v283.f64[0] - v283.f64[1] >= 0.0)
                {
                  *_Q20.i64 = (v278.f64[0] - v278.f64[1]) / (v278.f64[0] - v278.f64[1] + v283.f64[0] - v283.f64[1]);
                  *&v275.i64[1] = 1.0 - *_Q20.i64;
                }

                else
                {
                  v288 = 1.0 / (v280 + v287 + v285);
                  v289 = v285 * v288;
                  *_Q20.i64 = v280 * v288;
                  *v275.i64 = 1.0 - v289 - v280 * v288;
                  *&v275.i64[1] = v289;
                }
              }

              else
              {
                *_Q20.i64 = v274 / (v274 - v283.f64[1]);
                *v275.i64 = 1.0 - *_Q20.i64;
              }
            }

            goto LABEL_86;
          }

          *v275.i64 = 1.0 - v273 / (v273 - v278.f64[1]);
          *&v275.i64[1] = v273 / (v273 - v278.f64[1]);
        }

        else
        {
          v275 = xmmword_2500C1660;
        }
      }

      else
      {
        v275 = xmmword_2500C1650;
      }

      _Q20 = 0uLL;
    }

LABEL_86:
    *a5 = v275;
    a5[1] = _Q20;
    v19 = v259;
    a11 = v258;
  }

  *a6 = v19;
  a6[1] = a11;
}

void sub_24FFC40B4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 200);
  if (v3)
  {
    *(v1 - 192) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 176);
  if (v4)
  {
    *(v1 - 168) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

double geom_bezier_curve_bvh_closest_point_2f(void *a1, float *a2, unsigned int *a3, int *a4, double a5)
{
  if (a2)
  {
    *a2 = INFINITY;
  }

  if (a3)
  {
    *a3 = -1;
  }

  v5 = COERCE_DOUBLE(vneg_f32(0x3F0000003FLL));
  if (a1[7] != a1[6])
  {
    v6 = a1[4] - a1[3];
    if (v6)
    {
      if (__clz(-858993459 * (v6 >> 3)) == 31)
      {
        operator new();
      }

      operator new();
    }
  }

  if (a4)
  {
    *a4 = 2143289344;
  }

  return v5;
}

void sub_24FFC4614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void geom_bezier_curve_bvh_closest_point_2d(void *a1, double *a2, unsigned int *a3, double *a4, float64x2_t a5)
{
  v8 = a5;
  if (a2)
  {
    *a2 = INFINITY;
    v10 = 0;
  }

  else
  {
    v10 = 0x7FF0000000000000;
  }

  v11 = -1;
  if (a3)
  {
    *a3 = -1;
    v11 = 0;
  }

  if (a1[7] == a1[6] || (v12 = a1[3], (v13 = a1[4] - v12) == 0))
  {
    v17 = 0x7FF8000000000000;
    goto LABEL_86;
  }

  __p = 0;
  v84 = 0uLL;
  v14 = __clz(v13 >> 6);
  if (v14 == 31)
  {
    v15 = 0;
    v16 = 0;
  }

  else
  {
    _ZNSt3__114__split_bufferIZNK4geom3bvhIdLh2EE13closest_pointIZ25geom_bvh_closest_point_2dE3__0EEDv2_dT_S6_RdRjE5stateRNS_9allocatorISA_EEEC1EmmSD_(&v85, 31 - v14, 0, &__p);
    v18 = (*(&v85 + 1) - (v84 - __p));
    memcpy(v18, __p, v84 - __p);
    v19 = __p;
    v20 = *(&v84 + 1);
    v15 = *(&v86 + 1);
    v16 = v86;
    __p = v18;
    v84 = v86;
    *&v85 = v19;
    *&v86 = v19;
    *(&v86 + 1) = v20;
    *(&v85 + 1) = v19;
    if (v19)
    {
      operator delete(v19);
      v15 = *(&v84 + 1);
      v16 = v84;
    }

    v8 = a5;
    v12 = a1[3];
  }

  v21 = vsubq_f64(vmaxnmq_f64(vminnmq_f64(v8, v12[3]), v12[2]), v8);
  v22 = vaddvq_f64(vmulq_f64(v21, v21));
  if (v16 >= v15)
  {
    v24 = (v16 - __p) >> 4;
    v25 = v24 + 1;
    if ((v24 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v26 = v15 - __p;
    if (v26 >> 3 > v25)
    {
      v25 = v26 >> 3;
    }

    if (v26 >= 0x7FFFFFFFFFFFFFF0)
    {
      v27 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v27 = v25;
    }

    _ZNSt3__114__split_bufferIZNK4geom3bvhIdLh2EE13closest_pointIZ25geom_bvh_closest_point_2dE3__0EEDv2_dT_S6_RdRjE5stateRNS_9allocatorISA_EEEC1EmmSD_(&v85, v27, v24, &__p);
    v28 = v86;
    *v86 = 0;
    *(v28 + 8) = v22;
    *&v86 = v86 + 16;
    v29 = (*(&v85 + 1) - (v84 - __p));
    memcpy(v29, __p, v84 - __p);
    v30 = __p;
    v31 = *(&v84 + 1);
    __p = v29;
    v32 = v86;
    v84 = v86;
    *&v86 = v30;
    *(&v86 + 1) = v31;
    *&v85 = v30;
    *(&v85 + 1) = v30;
    if (v30)
    {
      v80 = v32;
      operator delete(v30);
      v32 = v80;
    }

    v23 = v32;
    v8 = a5;
  }

  else
  {
    *v16 = 0;
    v23 = (v16 + 16);
    *(v16 + 8) = v22;
  }

  v33 = __p;
  v34 = vdupq_n_s64(0x7FF8000000000000uLL);
  if (__p != v23)
  {
    v35 = -1;
    v17 = 0x7FF8000000000000;
    v36 = INFINITY;
    while (1)
    {
      v39 = *(v23 - 4);
      v37 = (v23 - 4);
      v38 = v39;
      v40 = v37[1];
      *&v84 = v37;
      v41 = *&v10;
      if (a2)
      {
        v41 = *a2;
      }

      if (v41 <= v40)
      {
        goto LABEL_83;
      }

      v42 = a1[3];
      v43 = (v42 + (v38 << 6));
      v45 = v43[1];
      v44 = v43[2];
      if (v45 == -1 && v44 == -1)
      {
        break;
      }

      v47 = vsubq_f64(vmaxnmq_f64(vminnmq_f64(v8, *(v42 + (v45 << 6) + 48)), *(v42 + (v45 << 6) + 32)), v8);
      v48 = vmulq_f64(v47, v47);
      v49 = vaddvq_f64(v48);
      v50 = vsubq_f64(vmaxnmq_f64(vminnmq_f64(v8, *(v42 + (v44 << 6) + 48)), *(v42 + (v44 << 6) + 32)), v8);
      v51 = vmulq_f64(v50, v50);
      v52 = vaddvq_f64(v51);
      if (v49 < v41 && v52 < v41)
      {
        v81 = v34;
        v77 = vcgtq_f64(vaddq_f64(v51, vdupq_laneq_s64(v51, 1)), vaddq_f64(v48, vdupq_laneq_s64(v48, 1)));
        v77.n128_u64[0] = vmovn_s64(v77);
        if (v77.n128_u8[0])
        {
          LODWORD(v85) = v43[2];
          *(&v85 + 1) = v52;
          _ZNSt3__16vectorIZNK4geom3bvhIdLh2EE13closest_pointIZ25geom_bvh_closest_point_2dE3__0EEDv2_dT_S6_RdRjE5stateNS_9allocatorISA_EEE9push_backB8nn200100EOSA_(&__p, &v85, v77);
          LODWORD(v85) = v43[1];
          *(&v85 + 1) = v49;
        }

        else
        {
          LODWORD(v85) = v43[1];
          *(&v85 + 1) = v49;
          _ZNSt3__16vectorIZNK4geom3bvhIdLh2EE13closest_pointIZ25geom_bvh_closest_point_2dE3__0EEDv2_dT_S6_RdRjE5stateNS_9allocatorISA_EEE9push_backB8nn200100EOSA_(&__p, &v85, v77);
          LODWORD(v85) = v43[2];
          *(&v85 + 1) = v52;
        }

        _ZNSt3__16vectorIZNK4geom3bvhIdLh2EE13closest_pointIZ25geom_bvh_closest_point_2dE3__0EEDv2_dT_S6_RdRjE5stateNS_9allocatorISA_EEE9push_backB8nn200100EOSA_(&__p, &v85, v78);
        goto LABEL_82;
      }

      if (v49 < v41)
      {
        v81 = v34;
        LODWORD(v85) = v43[1];
        *(&v85 + 1) = v49;
        _ZNSt3__16vectorIZNK4geom3bvhIdLh2EE13closest_pointIZ25geom_bvh_closest_point_2dE3__0EEDv2_dT_S6_RdRjE5stateNS_9allocatorISA_EEE9push_backB8nn200100EOSA_(&__p, &v85, v34);
        goto LABEL_82;
      }

      if (v52 < v41)
      {
        v81 = v34;
        LODWORD(v85) = v43[2];
        *(&v85 + 1) = v52;
        _ZNSt3__16vectorIZNK4geom3bvhIdLh2EE13closest_pointIZ25geom_bvh_closest_point_2dE3__0EEDv2_dT_S6_RdRjE5stateNS_9allocatorISA_EEE9push_backB8nn200100EOSA_(&__p, &v85, v34);
LABEL_82:
        v8 = a5;
        v34 = v81;
      }

LABEL_83:
      v33 = __p;
      v23 = v84;
      if (__p == v84)
      {
        if (__p)
        {
          goto LABEL_85;
        }

        goto LABEL_86;
      }
    }

    v54 = v43[4];
    if (!v54)
    {
      goto LABEL_83;
    }

    v55 = v43[3];
    v56 = (a1[6] + 4 * v55);
    v57 = 4 * (v54 + v55) - 4 * v55;
    v58 = v34;
    while (1)
    {
      v59 = *v56;
      *&v85 = 0;
      v87 = 0.0;
      if (v59)
      {
        v60 = a1[18];
        v61 = *(v60 + 4 * (v59 - 1));
      }

      else
      {
        v61 = 0;
        v60 = a1[18];
      }

      v62 = a1[15];
      v63 = v61 + 1;
      v64 = *(v60 + 4 * v59) - v61;
      if (v64 == 4)
      {
        break;
      }

      if (v64 == 3)
      {
        v82 = v58;
        geom_closest_point_to_quadratic_bezier_2d(&v85, &v87, v8, *(v62 + 16 * v61), *(v62 + 16 * v63), *(v62 + 16 * (v61 + 2)));
LABEL_54:
        v8 = a5;
        v58 = v82;
        goto LABEL_55;
      }

      v34 = 0uLL;
      if (v64 == 2)
      {
        v65 = *(v62 + 16 * v61);
        v66 = *(v62 + 16 * v63);
        v67 = vsubq_f64(v66, v65);
        v68 = vmulq_f64(v67, v67);
        v69 = 0.0;
        if (vaddvq_f64(v68) != 0.0)
        {
          v70 = vmulq_f64(vsubq_f64(v8, v65), v67);
          v69 = fmax(fmin(vdivq_f64(vaddq_f64(v70, vdupq_laneq_s64(v70, 1)), vaddq_f64(v68, vdupq_laneq_s64(v68, 1))).f64[0], 1.0), 0.0);
        }

        *&v85 = v69;
        v34 = vmlaq_n_f64(vmulq_n_f64(v66, v69), v65, 1.0 - v69);
        v71 = vsubq_f64(v8, v34);
        v87 = vaddvq_f64(vmulq_f64(v71, v71));
      }

LABEL_55:
      if (v87 < v36 || v87 == v36 && v35 > v59)
      {
        v17 = v85;
        v36 = v87;
        v35 = v59;
      }

      v72 = *&v10;
      if (a2)
      {
        v72 = *a2;
      }

      v73 = vsubq_f64(v8, v34);
      v74 = vaddvq_f64(vmulq_f64(v73, v73));
      if (v74 < v72)
      {
        goto LABEL_70;
      }

      v75 = v11;
      if (a3)
      {
        v75 = *a3;
      }

      if (v74 != v72 || v59 >= v75)
      {
        v34 = v58;
      }

      else
      {
LABEL_70:
        if (a2)
        {
          *a2 = v74;
          if (!a3)
          {
            goto LABEL_74;
          }
        }

        else
        {
          v10 = *&v74;
          if (!a3)
          {
LABEL_74:
            v11 = v59;
            goto LABEL_75;
          }
        }

        *a3 = v59;
      }

LABEL_75:
      ++v56;
      v58 = v34;
      v57 -= 4;
      if (!v57)
      {
        goto LABEL_83;
      }
    }

    v82 = v58;
    geom_closest_point_to_cubic_bezier_2d(&v85, &v87, v8, *(v62 + 16 * v61), *(v62 + 16 * v63), *(v62 + 16 * (v61 + 2)), *(v62 + 16 * (v61 + 3)), a3, a4);
    goto LABEL_54;
  }

  v17 = 0x7FF8000000000000;
  if (__p)
  {
LABEL_85:
    *&v84 = v33;
    operator delete(v33);
  }

LABEL_86:
  if (a4)
  {
    *a4 = v17;
  }
}

void sub_24FFC4BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t geom_create_kd_tree_with_default_options_2f(const void *a1, void *a2)
{
  opt_2f_obj_alloc = geom_kd_tree_create_opt_2f_obj_alloc();
  *(opt_2f_obj_alloc + 16) = 1;
}

uint64_t geom_create_kd_tree_with_default_options_2d(const void *a1, void *a2)
{
  opt_2d_obj_alloc = geom_kd_tree_create_opt_2d_obj_alloc();
  *(opt_2d_obj_alloc + 16) = 1;
}

uint64_t geom_create_kd_tree_with_default_options_3f(const void *a1, void *a2)
{
  opt_3f_obj_alloc = geom_kd_tree_create_opt_3f_obj_alloc();
  *(opt_3f_obj_alloc + 16) = 1;
}

uint64_t geom_create_kd_tree_with_default_options_3d(const void *a1, void *a2)
{
  opt_3d_obj_alloc = geom_kd_tree_create_opt_3d_obj_alloc();
  *(opt_3d_obj_alloc + 16) = 1;
}

uint64_t geom_create_kd_tree_create_opt_2f()
{
  result = geom_kd_tree_create_opt_2f_obj_alloc();
  *(result + 16) = 1;
  return result;
}

uint64_t geom_create_kd_tree_create_opt_2d()
{
  result = geom_kd_tree_create_opt_2d_obj_alloc();
  *(result + 16) = 1;
  return result;
}

uint64_t geom_create_kd_tree_create_opt_3f()
{
  result = geom_kd_tree_create_opt_3f_obj_alloc();
  *(result + 16) = 1;
  return result;
}

uint64_t geom_create_kd_tree_create_opt_3d()
{
  result = geom_kd_tree_create_opt_3d_obj_alloc();
  *(result + 16) = 1;
  return result;
}

uint64_t anonymous namespace::create_kd_tree_with_opt<float,(unsigned char)2>(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v7 = a4;
    geom::kd_tree<float,(unsigned char)2>::reset((a4 + 16), a2, a1, *(a3 + 16));
  }

  else
  {
    v7 = geom_kd_tree_2f_obj_alloc();
    v8 = *(a3 + 16);
    v10[0] = a2;
    v10[1] = a1;
    *(v7 + 16) = 0;
    _ZN4geom19make_external_arrayINS_5sliceIDv2_fEEEENSt3__19enable_ifIXaa21collection_has_size_vIT_E21collection_has_data_vIS6_EENS_14external_arrayINS6_10value_typeEEEE4typeERKS6_b(v10, v8, v7 + 24);
    *(v7 + 64) = 0u;
    *(v7 + 80) = 0u;
    *(v7 + 48) = 0u;
  }

  geom::kd_tree<float,(unsigned char)2>::build(v7 + 16, *(a3 + 20));
  return v7;
}

uint64_t anonymous namespace::create_kd_tree_with_opt<double,(unsigned char)2>(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v7 = a4;
    geom::kd_tree<float,(unsigned char)3>::reset((a4 + 16), a2, a1, *(a3 + 16));
  }

  else
  {
    v7 = geom_kd_tree_2d_obj_alloc();
    v8 = *(a3 + 16);
    v10[0] = a2;
    v10[1] = a1;
    *(v7 + 16) = 0;
    _ZN4geom19make_external_arrayINS_5sliceIDv2_dEEEENSt3__19enable_ifIXaa21collection_has_size_vIT_E21collection_has_data_vIS6_EENS_14external_arrayINS6_10value_typeEEEE4typeERKS6_b(v10, v8, v7 + 24);
    *(v7 + 64) = 0u;
    *(v7 + 80) = 0u;
    *(v7 + 48) = 0u;
  }

  geom::kd_tree<double,(unsigned char)2>::build(v7 + 16, *(a3 + 20));
  return v7;
}

uint64_t anonymous namespace::create_kd_tree_with_opt<float,(unsigned char)3>(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v7 = a4;
    geom::kd_tree<float,(unsigned char)3>::reset((a4 + 16), a2, a1, *(a3 + 16));
  }

  else
  {
    v7 = geom_kd_tree_3f_obj_alloc();
    v8 = *(a3 + 16);
    v10[0] = a2;
    v10[1] = a1;
    *(v7 + 16) = 0;
    _ZN4geom19make_external_arrayINS_5sliceIDv2_dEEEENSt3__19enable_ifIXaa21collection_has_size_vIT_E21collection_has_data_vIS6_EENS_14external_arrayINS6_10value_typeEEEE4typeERKS6_b(v10, v8, v7 + 24);
    *(v7 + 64) = 0u;
    *(v7 + 80) = 0u;
    *(v7 + 48) = 0u;
  }

  geom::kd_tree<float,(unsigned char)3>::build(v7 + 16, *(a3 + 20));
  return v7;
}

uint64_t anonymous namespace::create_kd_tree_with_opt<double,(unsigned char)3>(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v7 = a4;
    geom::kd_tree<double,(unsigned char)3>::reset((a4 + 16), a2, a1, *(a3 + 16));
  }

  else
  {
    v7 = geom_kd_tree_3d_obj_alloc();
    v8 = *(a3 + 16);
    v10[0] = a2;
    v10[1] = a1;
    *(v7 + 16) = 0;
    _ZN4geom19make_external_arrayINS_5sliceIDv3_dEEEENSt3__19enable_ifIXaa21collection_has_size_vIT_E21collection_has_data_vIS6_EENS_14external_arrayINS6_10value_typeEEEE4typeERKS6_b(v10, v8, v7 + 24);
    *(v7 + 64) = 0u;
    *(v7 + 80) = 0u;
    *(v7 + 48) = 0u;
  }

  geom::kd_tree<double,(unsigned char)3>::build(v7 + 16, *(a3 + 20));
  return v7;
}

uint64_t geom_create_kd_tree_2f(const void *a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  v6 = geom_kd_tree_2f_obj_alloc();
  v8[0] = a2;
  v8[1] = a1;
  *(v6 + 16) = 0;
  _ZN4geom19make_external_arrayINS_5sliceIDv2_fEEEENSt3__19enable_ifIXaa21collection_has_size_vIT_E21collection_has_data_vIS6_EENS_14external_arrayINS6_10value_typeEEEE4typeERKS6_b(v8, 1, v6 + 24);
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 48) = 0u;
  geom::kd_tree<float,(unsigned char)2>::build(v6 + 16, v3);
  return v6;
}

uint64_t geom_create_kd_tree_2d(const void *a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  v6 = geom_kd_tree_2d_obj_alloc();
  v8[0] = a2;
  v8[1] = a1;
  *(v6 + 16) = 0;
  _ZN4geom19make_external_arrayINS_5sliceIDv2_dEEEENSt3__19enable_ifIXaa21collection_has_size_vIT_E21collection_has_data_vIS6_EENS_14external_arrayINS6_10value_typeEEEE4typeERKS6_b(v8, 1, v6 + 24);
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 48) = 0u;
  geom::kd_tree<double,(unsigned char)2>::build(v6 + 16, v3);
  return v6;
}

uint64_t geom_create_kd_tree_3f(const void *a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  v6 = geom_kd_tree_3f_obj_alloc();
  v8[0] = a2;
  v8[1] = a1;
  *(v6 + 16) = 0;
  _ZN4geom19make_external_arrayINS_5sliceIDv2_dEEEENSt3__19enable_ifIXaa21collection_has_size_vIT_E21collection_has_data_vIS6_EENS_14external_arrayINS6_10value_typeEEEE4typeERKS6_b(v8, 1, v6 + 24);
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 48) = 0u;
  geom::kd_tree<float,(unsigned char)3>::build(v6 + 16, v3);
  return v6;
}

uint64_t geom_create_kd_tree_3d(const void *a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  v6 = geom_kd_tree_3d_obj_alloc();
  v8[0] = a2;
  v8[1] = a1;
  *(v6 + 16) = 0;
  _ZN4geom19make_external_arrayINS_5sliceIDv3_dEEEENSt3__19enable_ifIXaa21collection_has_size_vIT_E21collection_has_data_vIS6_EENS_14external_arrayINS6_10value_typeEEEE4typeERKS6_b(v8, 1, v6 + 24);
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 48) = 0u;
  geom::kd_tree<double,(unsigned char)3>::build(v6 + 16, v3);
  return v6;
}

uint64_t geom_kd_tree_find_closest_3d(uint64_t a1, float64x2_t *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  return geom::kd_tree<double,(unsigned char)3>::find_closest((a1 + 16), v4);
}

uint64_t geom_kd_tree_find_within_radius_2f(uint64_t a1, uint64_t a2, float32x2_t a3, float a4)
{
  v8 = a3;
  v6 = geom::collection_to_vector<float>(a2);
  return geom::kd_tree<float,(unsigned char)2>::find_within_radius((a1 + 16), &v8, v6, a4);
}

uint64_t geom_kd_tree_find_within_radius_3f(uint64_t a1, uint64_t a2, float32x4_t a3, float a4)
{
  v8 = a3;
  v6 = geom::collection_to_vector<float>(a2);
  return geom::kd_tree<float,(unsigned char)3>::find_within_radius((a1 + 16), &v8, v6, a4);
}

uint64_t geom_kd_tree_find_within_radius_2d(uint64_t a1, uint64_t a2, float64x2_t a3, double a4)
{
  v8 = a3;
  v6 = geom::collection_to_vector<float>(a2);
  return geom::kd_tree<double,(unsigned char)2>::find_within_radius((a1 + 16), &v8, v6, a4);
}

uint64_t geom_kd_tree_find_within_radius_3d(uint64_t a1, float64x2_t *a2, uint64_t a3, double a4)
{
  v6 = a2[1];
  v9[0] = *a2;
  v9[1] = v6;
  v7 = geom::collection_to_vector<float>(a3);
  return geom::kd_tree<double,(unsigned char)3>::find_within_radius((a1 + 16), v9, v7, a4);
}

uint64_t geom_kd_tree_points_2f(uint64_t a1, void *a2)
{
  result = *(a1 + 24);
  if (a2)
  {
    *a2 = *(a1 + 32);
  }

  return result;
}

uint64_t geom_kd_tree_points_3f(uint64_t a1, void *a2)
{
  result = *(a1 + 24);
  if (a2)
  {
    *a2 = *(a1 + 32);
  }

  return result;
}

uint64_t geom_kd_tree_points_2d(uint64_t a1, void *a2)
{
  result = *(a1 + 24);
  if (a2)
  {
    *a2 = *(a1 + 32);
  }

  return result;
}

uint64_t geom_kd_tree_points_3d(uint64_t a1, void *a2)
{
  result = *(a1 + 24);
  if (a2)
  {
    *a2 = *(a1 + 32);
  }

  return result;
}

void anonymous namespace::build_bvh_with_custom_heuristic<float,(unsigned char)2>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v5 = *a2;
  v9[0] = &unk_28628F958;
  v9[1] = v5;
  v9[3] = v9;
  v8[0] = &unk_28628F9E8;
  v8[1] = &v6;
  v8[3] = v8;
  std::__function::__value_func<float ()(unsigned int,geom::bbox<float,(unsigned char)2> const&,unsigned int,geom::bbox<float,(unsigned char)2> const&)>::__value_func[abi:nn200100](v7, v9);
  geom::bvh<float,(unsigned char)2>::build_from_custom_heuristic<std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)2> const&,unsigned int,geom::bbox<float,(unsigned char)2> const&)>>(a1, v8, v7, *(a2 + 2));
}

void sub_24FFC5750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::__function::__value_func<float ()(unsigned int,geom::bbox<float,(unsigned char)2> const&,unsigned int,geom::bbox<float,(unsigned char)2> const&)>::~__value_func[abi:nn200100](va);
  std::__function::__value_func<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>::~__value_func[abi:nn200100](va1);
  std::__function::__value_func<float ()(unsigned int,geom::bbox<float,(unsigned char)2> const&,unsigned int,geom::bbox<float,(unsigned char)2> const&)>::~__value_func[abi:nn200100](v3 - 56);
  _Unwind_Resume(a1);
}

const void **_ZN4geom19make_external_arrayINS_5sliceIDv2_fEEEENSt3__19enable_ifIXaa21collection_has_size_vIT_E21collection_has_data_vIS6_EENS_14external_arrayINS6_10value_typeEEEE4typeERKS6_b@<X0>(const void **result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  if (v3)
  {
    if (a2)
    {
      operator new[]();
    }

    *a3 = *result;
    *(a3 + 8) = v3;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  *(a3 + 16) = 0;
  return result;
}

uint64_t std::__function::__func<geom::bvh<float,(unsigned char)2>::heuristic_fn anonymous namespace::fn_ptr_to_std_fn<float,(unsigned char)2>(geom::user_bvh_types<float,(unsigned char)2>::heuristic_fn_type)::{lambda(unsigned int,geom::bbox<float,(unsigned char)2> const&,unsigned int,geom::bbox<float,(unsigned char)2> const&)#1},std::allocator<geom::bvh<float,(unsigned char)2>::heuristic_fn anonymous namespace::fn_ptr_to_std_fn<float,(unsigned char)2>(geom::user_bvh_types<float,(unsigned char)2>::heuristic_fn_type)::{lambda(unsigned int,geom::bbox<float,(unsigned char)2> const&,unsigned int,geom::bbox<float,(unsigned char)2> const&)#1}>,float ()(unsigned int,geom::bbox<float,(unsigned char)2> const&,unsigned int,geom::bbox<float,(unsigned char)2> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28628F958;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<geom::bvh<float,(unsigned char)2>::heuristic_fn anonymous namespace::fn_ptr_to_std_fn<float,(unsigned char)2>(geom::user_bvh_types<float,(unsigned char)2>::heuristic_fn_type)::{lambda(unsigned int,geom::bbox<float,(unsigned char)2> const&,unsigned int,geom::bbox<float,(unsigned char)2> const&)#1},std::allocator<geom::bvh<float,(unsigned char)2>::heuristic_fn anonymous namespace::fn_ptr_to_std_fn<float,(unsigned char)2>(geom::user_bvh_types<float,(unsigned char)2>::heuristic_fn_type)::{lambda(unsigned int,geom::bbox<float,(unsigned char)2> const&,unsigned int,geom::bbox<float,(unsigned char)2> const&)#1}>,float ()(unsigned int,geom::bbox<float,(unsigned char)2> const&,unsigned int,geom::bbox<float,(unsigned char)2> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void anonymous namespace::build_bvh_with_custom_heuristic<float,(unsigned char)2>(geom::bvh<float,(unsigned char)2> &,std::pair<geom::user_bvh_types<float,(unsigned char)2>::heuristic_fn_type,unsigned int> const&,unsigned long)::{lambda(geom::bvh_node<float,(unsigned char)2> &)#1},std::allocator<void anonymous namespace::build_bvh_with_custom_heuristic<float,(unsigned char)2>(geom::bvh<float,(unsigned char)2> &,std::pair<geom::user_bvh_types<float,(unsigned char)2>::heuristic_fn_type,unsigned int> const&,unsigned long)::{lambda(geom::bvh_node<float,(unsigned char)2> &)#1}>,BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28628F9E8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void anonymous namespace::build_bvh_with_custom_heuristic<float,(unsigned char)2>(geom::bvh<float,(unsigned char)2> &,std::pair<geom::user_bvh_types<float,(unsigned char)2>::heuristic_fn_type,unsigned int> const&,unsigned long)::{lambda(geom::bvh_node<float,(unsigned char)2> &)#1},std::allocator<void anonymous namespace::build_bvh_with_custom_heuristic<float,(unsigned char)2>(geom::bvh<float,(unsigned char)2> &,std::pair<geom::user_bvh_types<float,(unsigned char)2>::heuristic_fn_type,unsigned int> const&,unsigned long)::{lambda(geom::bvh_node<float,(unsigned char)2> &)#1}>,BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<float ()(unsigned int,geom::bbox<float,(unsigned char)2> const&,unsigned int,geom::bbox<float,(unsigned char)2> const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<float ()(unsigned int,geom::bbox<float,(unsigned char)2> const&,unsigned int,geom::bbox<float,(unsigned char)2> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void anonymous namespace::build_bvh_with_custom_heuristic<double,(unsigned char)2>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v5 = *a2;
  v9[0] = &unk_28628FA78;
  v9[1] = v5;
  v9[3] = v9;
  v8[0] = &unk_28628FB08;
  v8[1] = &v6;
  v8[3] = v8;
  std::__function::__value_func<double ()(unsigned int,geom::bbox<double,(unsigned char)2> const&,unsigned int,geom::bbox<double,(unsigned char)2> const&)>::__value_func[abi:nn200100](v7, v9);
  geom::bvh<double,(unsigned char)2>::build_from_custom_heuristic<std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)2> const&,unsigned int,geom::bbox<double,(unsigned char)2> const&)>>(a1, v8, v7, *(a2 + 2));
}

void sub_24FFC5C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::__function::__value_func<double ()(unsigned int,geom::bbox<double,(unsigned char)2> const&,unsigned int,geom::bbox<double,(unsigned char)2> const&)>::~__value_func[abi:nn200100](va);
  std::__function::__value_func<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>::~__value_func[abi:nn200100](va1);
  std::__function::__value_func<double ()(unsigned int,geom::bbox<double,(unsigned char)2> const&,unsigned int,geom::bbox<double,(unsigned char)2> const&)>::~__value_func[abi:nn200100](v3 - 56);
  _Unwind_Resume(a1);
}

const void **_ZN4geom19make_external_arrayINS_5sliceIDv2_dEEEENSt3__19enable_ifIXaa21collection_has_size_vIT_E21collection_has_data_vIS6_EENS_14external_arrayINS6_10value_typeEEEE4typeERKS6_b@<X0>(const void **result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  if (v3)
  {
    if (a2)
    {
      operator new[]();
    }

    *a3 = *result;
    *(a3 + 8) = v3;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  *(a3 + 16) = 0;
  return result;
}

uint64_t std::__function::__func<geom::bvh<double,(unsigned char)2>::heuristic_fn anonymous namespace::fn_ptr_to_std_fn<double,(unsigned char)2>(geom::user_bvh_types<double,(unsigned char)2>::heuristic_fn_type)::{lambda(unsigned int,geom::bbox<double,(unsigned char)2> const&,unsigned int,geom::bbox<double,(unsigned char)2> const&)#1},std::allocator<geom::bvh<double,(unsigned char)2>::heuristic_fn anonymous namespace::fn_ptr_to_std_fn<double,(unsigned char)2>(geom::user_bvh_types<double,(unsigned char)2>::heuristic_fn_type)::{lambda(unsigned int,geom::bbox<double,(unsigned char)2> const&,unsigned int,geom::bbox<double,(unsigned char)2> const&)#1}>,double ()(unsigned int,geom::bbox<double,(unsigned char)2> const&,unsigned int,geom::bbox<double,(unsigned char)2> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28628FA78;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<geom::bvh<double,(unsigned char)2>::heuristic_fn anonymous namespace::fn_ptr_to_std_fn<double,(unsigned char)2>(geom::user_bvh_types<double,(unsigned char)2>::heuristic_fn_type)::{lambda(unsigned int,geom::bbox<double,(unsigned char)2> const&,unsigned int,geom::bbox<double,(unsigned char)2> const&)#1},std::allocator<geom::bvh<double,(unsigned char)2>::heuristic_fn anonymous namespace::fn_ptr_to_std_fn<double,(unsigned char)2>(geom::user_bvh_types<double,(unsigned char)2>::heuristic_fn_type)::{lambda(unsigned int,geom::bbox<double,(unsigned char)2> const&,unsigned int,geom::bbox<double,(unsigned char)2> const&)#1}>,double ()(unsigned int,geom::bbox<double,(unsigned char)2> const&,unsigned int,geom::bbox<double,(unsigned char)2> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void anonymous namespace::build_bvh_with_custom_heuristic<double,(unsigned char)2>(geom::bvh<double,(unsigned char)2> &,std::pair<geom::user_bvh_types<double,(unsigned char)2>::heuristic_fn_type,unsigned int> const&,unsigned long)::{lambda(geom::bvh_node<double,(unsigned char)2> &)#1},std::allocator<void anonymous namespace::build_bvh_with_custom_heuristic<double,(unsigned char)2>(geom::bvh<double,(unsigned char)2> &,std::pair<geom::user_bvh_types<double,(unsigned char)2>::heuristic_fn_type,unsigned int> const&,unsigned long)::{lambda(geom::bvh_node<double,(unsigned char)2> &)#1}>,BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28628FB08;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void anonymous namespace::build_bvh_with_custom_heuristic<double,(unsigned char)2>(geom::bvh<double,(unsigned char)2> &,std::pair<geom::user_bvh_types<double,(unsigned char)2>::heuristic_fn_type,unsigned int> const&,unsigned long)::{lambda(geom::bvh_node<double,(unsigned char)2> &)#1},std::allocator<void anonymous namespace::build_bvh_with_custom_heuristic<double,(unsigned char)2>(geom::bvh<double,(unsigned char)2> &,std::pair<geom::user_bvh_types<double,(unsigned char)2>::heuristic_fn_type,unsigned int> const&,unsigned long)::{lambda(geom::bvh_node<double,(unsigned char)2> &)#1}>,BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<double ()(unsigned int,geom::bbox<double,(unsigned char)2> const&,unsigned int,geom::bbox<double,(unsigned char)2> const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<double ()(unsigned int,geom::bbox<double,(unsigned char)2> const&,unsigned int,geom::bbox<double,(unsigned char)2> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t anonymous namespace::build_bvh_with_strategy<float,(unsigned char)3>(uint64_t result, int a2, uint64_t a3)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v3 = v8;
      v8[0] = &unk_28628FB98;
      v8[1] = &v4;
      v8[3] = v8;
      geom::bvh<float,(unsigned char)3>::build_median(result, v8);
    }

    else
    {
      v3 = v9;
      v9[0] = &unk_28628FB98;
      v9[1] = &v4;
      v9[3] = v9;
      geom::bvh<float,(unsigned char)3>::build_middle_split(result, v9);
    }

    return std::__function::__value_func<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>::~__value_func[abi:nn200100](v3);
  }

  else
  {
    switch(a2)
    {
      case 2:
        v7[0] = &unk_28628FB98;
        v7[1] = &v4;
        v7[3] = v7;
        geom::bvh<float,(unsigned char)3>::build_surface_area_heuristic(result, v7);
      case 3:
        v6[0] = &unk_28628FB98;
        v6[1] = &v4;
        v6[3] = v6;
        geom::bvh<float,(unsigned char)3>::build_volume_heuristic(result, v6);
      case 4:
        v5[0] = &unk_28628FB98;
        v5[1] = &v4;
        v5[3] = v5;
        geom::bvh<float,(unsigned char)3>::build_intersection_volume_heuristic(result, v5);
    }
  }

  return result;
}

void anonymous namespace::build_bvh_with_custom_heuristic<float,(unsigned char)3>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v5 = *a2;
  v9[0] = &unk_28628FC18;
  v9[1] = v5;
  v9[3] = v9;
  v8[0] = &unk_28628FCA8;
  v8[1] = &v6;
  v8[3] = v8;
  std::__function::__value_func<float ()(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)>::__value_func[abi:nn200100](v7, v9);
  geom::bvh<float,(unsigned char)3>::build_from_custom_heuristic<std::function<float ()(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)>>(a1, v8, v7, *(a2 + 2));
}

void sub_24FFC63B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::__function::__value_func<float ()(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)>::~__value_func[abi:nn200100](va);
  std::__function::__value_func<BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>::~__value_func[abi:nn200100](va1);
  std::__function::__value_func<float ()(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)>::~__value_func[abi:nn200100](v3 - 56);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void anonymous namespace::build_bvh_with_strategy<float,(unsigned char)3>(geom::bvh<float,(unsigned char)3> &,geom_bvh_create_strategy,unsigned long)::{lambda(geom::bvh_node<float,(unsigned char)3> &)#1},std::allocator<void anonymous namespace::build_bvh_with_strategy<float,(unsigned char)3>(geom::bvh<float,(unsigned char)3> &,geom_bvh_create_strategy,unsigned long)::{lambda(geom::bvh_node<float,(unsigned char)3> &)#1}>,BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28628FB98;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void anonymous namespace::build_bvh_with_strategy<float,(unsigned char)3>(geom::bvh<float,(unsigned char)3> &,geom_bvh_create_strategy,unsigned long)::{lambda(geom::bvh_node<float,(unsigned char)3> &)#1},std::allocator<void anonymous namespace::build_bvh_with_strategy<float,(unsigned char)3>(geom::bvh<float,(unsigned char)3> &,geom_bvh_create_strategy,unsigned long)::{lambda(geom::bvh_node<float,(unsigned char)3> &)#1}>,BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<geom::bvh<float,(unsigned char)3>::heuristic_fn anonymous namespace::fn_ptr_to_std_fn<float,(unsigned char)3>(geom::user_bvh_types<float,(unsigned char)3>::heuristic_fn_type)::{lambda(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)#1},std::allocator<geom::bvh<float,(unsigned char)3>::heuristic_fn anonymous namespace::fn_ptr_to_std_fn<float,(unsigned char)3>(geom::user_bvh_types<float,(unsigned char)3>::heuristic_fn_type)::{lambda(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)#1}>,float ()(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28628FC18;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<geom::bvh<float,(unsigned char)3>::heuristic_fn anonymous namespace::fn_ptr_to_std_fn<float,(unsigned char)3>(geom::user_bvh_types<float,(unsigned char)3>::heuristic_fn_type)::{lambda(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)#1},std::allocator<geom::bvh<float,(unsigned char)3>::heuristic_fn anonymous namespace::fn_ptr_to_std_fn<float,(unsigned char)3>(geom::user_bvh_types<float,(unsigned char)3>::heuristic_fn_type)::{lambda(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)#1}>,float ()(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void anonymous namespace::build_bvh_with_custom_heuristic<float,(unsigned char)3>(geom::bvh<float,(unsigned char)3> &,std::pair<geom::user_bvh_types<float,(unsigned char)3>::heuristic_fn_type,unsigned int> const&,unsigned long)::{lambda(geom::bvh_node<float,(unsigned char)3> &)#1},std::allocator<void anonymous namespace::build_bvh_with_custom_heuristic<float,(unsigned char)3>(geom::bvh<float,(unsigned char)3> &,std::pair<geom::user_bvh_types<float,(unsigned char)3>::heuristic_fn_type,unsigned int> const&,unsigned long)::{lambda(geom::bvh_node<float,(unsigned char)3> &)#1}>,BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28628FCA8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void anonymous namespace::build_bvh_with_custom_heuristic<float,(unsigned char)3>(geom::bvh<float,(unsigned char)3> &,std::pair<geom::user_bvh_types<float,(unsigned char)3>::heuristic_fn_type,unsigned int> const&,unsigned long)::{lambda(geom::bvh_node<float,(unsigned char)3> &)#1},std::allocator<void anonymous namespace::build_bvh_with_custom_heuristic<float,(unsigned char)3>(geom::bvh<float,(unsigned char)3> &,std::pair<geom::user_bvh_types<float,(unsigned char)3>::heuristic_fn_type,unsigned int> const&,unsigned long)::{lambda(geom::bvh_node<float,(unsigned char)3> &)#1}>,BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<float ()(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<float ()(unsigned int,geom::bbox<float,(unsigned char)3> const&,unsigned int,geom::bbox<float,(unsigned char)3> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t anonymous namespace::build_bvh_with_strategy<double,(unsigned char)3>(uint64_t result, int a2, uint64_t a3)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v3 = v8;
      v8[0] = &unk_28628FD28;
      v8[1] = &v4;
      v8[3] = v8;
      geom::bvh<double,(unsigned char)3>::build_median(result, v8);
    }

    else
    {
      v3 = v9;
      v9[0] = &unk_28628FD28;
      v9[1] = &v4;
      v9[3] = v9;
      geom::bvh<double,(unsigned char)3>::build_middle_split(result, v9);
    }

    return std::__function::__value_func<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>::~__value_func[abi:nn200100](v3);
  }

  else
  {
    switch(a2)
    {
      case 2:
        v7[0] = &unk_28628FD28;
        v7[1] = &v4;
        v7[3] = v7;
        geom::bvh<double,(unsigned char)3>::build_surface_area_heuristic(result, v7);
      case 3:
        v6[0] = &unk_28628FD28;
        v6[1] = &v4;
        v6[3] = v6;
        geom::bvh<double,(unsigned char)3>::build_volume_heuristic(result, v6);
      case 4:
        v5[0] = &unk_28628FD28;
        v5[1] = &v4;
        v5[3] = v5;
        geom::bvh<double,(unsigned char)3>::build_intersection_volume_heuristic(result, v5);
    }
  }

  return result;
}

void anonymous namespace::build_bvh_with_custom_heuristic<double,(unsigned char)3>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v5 = *a2;
  v9[0] = &unk_28628FDA8;
  v9[1] = v5;
  v9[3] = v9;
  v8[0] = &unk_28628FE38;
  v8[1] = &v6;
  v8[3] = v8;
  std::__function::__value_func<double ()(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)>::__value_func[abi:nn200100](v7, v9);
  geom::bvh<double,(unsigned char)3>::build_from_custom_heuristic<std::function<double ()(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)>>(a1, v8, v7, *(a2 + 2));
}

void sub_24FFC6AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::__function::__value_func<double ()(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)>::~__value_func[abi:nn200100](va);
  std::__function::__value_func<BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>::~__value_func[abi:nn200100](va1);
  std::__function::__value_func<double ()(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)>::~__value_func[abi:nn200100](v3 - 56);
  _Unwind_Resume(a1);
}

const void **_ZN4geom19make_external_arrayINS_5sliceIDv3_dEEEENSt3__19enable_ifIXaa21collection_has_size_vIT_E21collection_has_data_vIS6_EENS_14external_arrayINS6_10value_typeEEEE4typeERKS6_b@<X0>(const void **result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  if (v3)
  {
    if (a2)
    {
      operator new[]();
    }

    *a3 = *result;
    *(a3 + 8) = v3;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  *(a3 + 16) = 0;
  return result;
}

uint64_t std::__function::__func<void anonymous namespace::build_bvh_with_strategy<double,(unsigned char)3>(geom::bvh<double,(unsigned char)3> &,geom_bvh_create_strategy,unsigned long)::{lambda(geom::bvh_node<double,(unsigned char)3> &)#1},std::allocator<void anonymous namespace::build_bvh_with_strategy<double,(unsigned char)3>(geom::bvh<double,(unsigned char)3> &,geom_bvh_create_strategy,unsigned long)::{lambda(geom::bvh_node<double,(unsigned char)3> &)#1}>,BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28628FD28;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void anonymous namespace::build_bvh_with_strategy<double,(unsigned char)3>(geom::bvh<double,(unsigned char)3> &,geom_bvh_create_strategy,unsigned long)::{lambda(geom::bvh_node<double,(unsigned char)3> &)#1},std::allocator<void anonymous namespace::build_bvh_with_strategy<double,(unsigned char)3>(geom::bvh<double,(unsigned char)3> &,geom_bvh_create_strategy,unsigned long)::{lambda(geom::bvh_node<double,(unsigned char)3> &)#1}>,BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<geom::bvh<double,(unsigned char)3>::heuristic_fn anonymous namespace::fn_ptr_to_std_fn<double,(unsigned char)3>(geom::user_bvh_types<double,(unsigned char)3>::heuristic_fn_type)::{lambda(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)#1},std::allocator<geom::bvh<double,(unsigned char)3>::heuristic_fn anonymous namespace::fn_ptr_to_std_fn<double,(unsigned char)3>(geom::user_bvh_types<double,(unsigned char)3>::heuristic_fn_type)::{lambda(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)#1}>,double ()(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28628FDA8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<geom::bvh<double,(unsigned char)3>::heuristic_fn anonymous namespace::fn_ptr_to_std_fn<double,(unsigned char)3>(geom::user_bvh_types<double,(unsigned char)3>::heuristic_fn_type)::{lambda(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)#1},std::allocator<geom::bvh<double,(unsigned char)3>::heuristic_fn anonymous namespace::fn_ptr_to_std_fn<double,(unsigned char)3>(geom::user_bvh_types<double,(unsigned char)3>::heuristic_fn_type)::{lambda(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)#1}>,double ()(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)>::operator()(uint64_t a1, unsigned int *a2, _OWORD *a3, unsigned int *a4, _OWORD *a5)
{
  v5 = *a2;
  v6 = *a4;
  v7 = *(a1 + 8);
  v8 = a3[1];
  v14[0] = *a3;
  v14[1] = v8;
  v9 = a3[3];
  v14[2] = a3[2];
  v14[3] = v9;
  v10 = a5[1];
  v13[0] = *a5;
  v13[1] = v10;
  v11 = a5[3];
  v13[2] = a5[2];
  v13[3] = v11;
  return v7(v5, v14, v6, v13);
}

uint64_t std::__function::__func<geom::bvh<double,(unsigned char)3>::heuristic_fn anonymous namespace::fn_ptr_to_std_fn<double,(unsigned char)3>(geom::user_bvh_types<double,(unsigned char)3>::heuristic_fn_type)::{lambda(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)#1},std::allocator<geom::bvh<double,(unsigned char)3>::heuristic_fn anonymous namespace::fn_ptr_to_std_fn<double,(unsigned char)3>(geom::user_bvh_types<double,(unsigned char)3>::heuristic_fn_type)::{lambda(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)#1}>,double ()(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void anonymous namespace::build_bvh_with_custom_heuristic<double,(unsigned char)3>(geom::bvh<double,(unsigned char)3> &,std::pair<geom::user_bvh_types<double,(unsigned char)3>::heuristic_fn_type,unsigned int> const&,unsigned long)::{lambda(geom::bvh_node<double,(unsigned char)3> &)#1},std::allocator<void anonymous namespace::build_bvh_with_custom_heuristic<double,(unsigned char)3>(geom::bvh<double,(unsigned char)3> &,std::pair<geom::user_bvh_types<double,(unsigned char)3>::heuristic_fn_type,unsigned int> const&,unsigned long)::{lambda(geom::bvh_node<double,(unsigned char)3> &)#1}>,BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28628FE38;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void anonymous namespace::build_bvh_with_custom_heuristic<double,(unsigned char)3>(geom::bvh<double,(unsigned char)3> &,std::pair<geom::user_bvh_types<double,(unsigned char)3>::heuristic_fn_type,unsigned int> const&,unsigned long)::{lambda(geom::bvh_node<double,(unsigned char)3> &)#1},std::allocator<void anonymous namespace::build_bvh_with_custom_heuristic<double,(unsigned char)3>(geom::bvh<double,(unsigned char)3> &,std::pair<geom::user_bvh_types<double,(unsigned char)3>::heuristic_fn_type,unsigned int> const&,unsigned long)::{lambda(geom::bvh_node<double,(unsigned char)3> &)#1}>,BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<double ()(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<double ()(unsigned int,geom::bbox<double,(unsigned char)3> const&,unsigned int,geom::bbox<double,(unsigned char)3> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<geom::user_bvh_types<float,(unsigned char)2>::bvh_type create_bvh_custom_heuristic<float,(unsigned char)2,true>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,geom::user_primitive_types<float,(unsigned char)2>::bbox const*,geom::user_bvh_types<float,(unsigned char)2>::heuristic_fn_type,unsigned long,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)2> &)#1},std::allocator<geom::user_bvh_types<float,(unsigned char)2>::bvh_type create_bvh_custom_heuristic<float,(unsigned char)2,true>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,geom::user_primitive_types<float,(unsigned char)2>::bbox const*,geom::user_bvh_types<float,(unsigned char)2>::heuristic_fn_type,unsigned long,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)2> &)#1}>,BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28628FEB8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<geom::user_bvh_types<float,(unsigned char)2>::bvh_type create_bvh_custom_heuristic<float,(unsigned char)2,true>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,geom::user_primitive_types<float,(unsigned char)2>::bbox const*,geom::user_bvh_types<float,(unsigned char)2>::heuristic_fn_type,unsigned long,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)2> &)#1},std::allocator<geom::user_bvh_types<float,(unsigned char)2>::bvh_type create_bvh_custom_heuristic<float,(unsigned char)2,true>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,geom::user_primitive_types<float,(unsigned char)2>::bbox const*,geom::user_bvh_types<float,(unsigned char)2>::heuristic_fn_type,unsigned long,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)2> &)#1}>,BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<geom::user_bvh_types<double,(unsigned char)2>::bvh_type create_bvh_custom_heuristic<double,(unsigned char)2,true>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,geom::user_primitive_types<double,(unsigned char)2>::bbox const*,geom::user_bvh_types<double,(unsigned char)2>::heuristic_fn_type,unsigned long,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)2> &)#1},std::allocator<geom::user_bvh_types<double,(unsigned char)2>::bvh_type create_bvh_custom_heuristic<double,(unsigned char)2,true>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,geom::user_primitive_types<double,(unsigned char)2>::bbox const*,geom::user_bvh_types<double,(unsigned char)2>::heuristic_fn_type,unsigned long,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)2> &)#1}>,BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28628FF38;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<geom::user_bvh_types<double,(unsigned char)2>::bvh_type create_bvh_custom_heuristic<double,(unsigned char)2,true>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,geom::user_primitive_types<double,(unsigned char)2>::bbox const*,geom::user_bvh_types<double,(unsigned char)2>::heuristic_fn_type,unsigned long,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)2> &)#1},std::allocator<geom::user_bvh_types<double,(unsigned char)2>::bvh_type create_bvh_custom_heuristic<double,(unsigned char)2,true>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,geom::user_primitive_types<double,(unsigned char)2>::bbox const*,geom::user_bvh_types<double,(unsigned char)2>::heuristic_fn_type,unsigned long,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)2> &)#1}>,BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<geom::user_bvh_types<float,(unsigned char)3>::bvh_type create_bvh_custom_heuristic<float,(unsigned char)3,true>(unsigned long,geom::vector_type<float,(unsigned char)3,void>::value const*,geom::user_primitive_types<float,(unsigned char)3>::bbox const*,geom::user_bvh_types<float,(unsigned char)3>::heuristic_fn_type,unsigned long,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)3> &)#1},std::allocator<geom::user_bvh_types<float,(unsigned char)3>::bvh_type create_bvh_custom_heuristic<float,(unsigned char)3,true>(unsigned long,geom::vector_type<float,(unsigned char)3,void>::value const*,geom::user_primitive_types<float,(unsigned char)3>::bbox const*,geom::user_bvh_types<float,(unsigned char)3>::heuristic_fn_type,unsigned long,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)3> &)#1}>,BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28628FFB8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<geom::user_bvh_types<float,(unsigned char)3>::bvh_type create_bvh_custom_heuristic<float,(unsigned char)3,true>(unsigned long,geom::vector_type<float,(unsigned char)3,void>::value const*,geom::user_primitive_types<float,(unsigned char)3>::bbox const*,geom::user_bvh_types<float,(unsigned char)3>::heuristic_fn_type,unsigned long,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)3> &)#1},std::allocator<geom::user_bvh_types<float,(unsigned char)3>::bvh_type create_bvh_custom_heuristic<float,(unsigned char)3,true>(unsigned long,geom::vector_type<float,(unsigned char)3,void>::value const*,geom::user_primitive_types<float,(unsigned char)3>::bbox const*,geom::user_bvh_types<float,(unsigned char)3>::heuristic_fn_type,unsigned long,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)3> &)#1}>,BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<geom::user_bvh_types<double,(unsigned char)3>::bvh_type create_bvh_custom_heuristic<double,(unsigned char)3,true>(unsigned long,geom::vector_type<double,(unsigned char)3,void>::value const*,geom::user_primitive_types<double,(unsigned char)3>::bbox const*,geom::user_bvh_types<double,(unsigned char)3>::heuristic_fn_type,unsigned long,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)3> &)#1},std::allocator<geom::user_bvh_types<double,(unsigned char)3>::bvh_type create_bvh_custom_heuristic<double,(unsigned char)3,true>(unsigned long,geom::vector_type<double,(unsigned char)3,void>::value const*,geom::user_primitive_types<double,(unsigned char)3>::bbox const*,geom::user_bvh_types<double,(unsigned char)3>::heuristic_fn_type,unsigned long,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)3> &)#1}>,BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286290038;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<geom::user_bvh_types<double,(unsigned char)3>::bvh_type create_bvh_custom_heuristic<double,(unsigned char)3,true>(unsigned long,geom::vector_type<double,(unsigned char)3,void>::value const*,geom::user_primitive_types<double,(unsigned char)3>::bbox const*,geom::user_bvh_types<double,(unsigned char)3>::heuristic_fn_type,unsigned long,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)3> &)#1},std::allocator<geom::user_bvh_types<double,(unsigned char)3>::bvh_type create_bvh_custom_heuristic<double,(unsigned char)3,true>(unsigned long,geom::vector_type<double,(unsigned char)3,void>::value const*,geom::user_primitive_types<double,(unsigned char)3>::bbox const*,geom::user_bvh_types<double,(unsigned char)3>::heuristic_fn_type,unsigned long,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)3> &)#1}>,BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t anonymous namespace::construct_triangle_mesh_bvh<float>(unint64_t a1, float32x4_t *a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6, __n128 _Q0)
{
  v8 = a5;
  v29 = *MEMORY[0x277D85DE8];
  v13 = 3 * a3;
  if (a6)
  {
    v27 = a2;
    v28 = a1;
    v25 = a4;
    v26 = 3 * a3;
    if (a1)
    {
      v14 = a2;
    }

    else
    {
      v14 = 0;
    }

    if (a1 && a5)
    {
      operator new[]();
    }

    if (*(a6 + 160) == 1)
    {
      v15 = *(a6 + 144);
      if (v15)
      {
        MEMORY[0x25305E3D0](v15, 0x1000C80451B5BE8, _Q0);
      }
    }

    *(a6 + 144) = v14;
    *(a6 + 152) = a1;
    *(a6 + 160) = 0;
    if (a3)
    {
      v16 = a4;
    }

    else
    {
      v16 = 0;
    }

    if (a3 && v8)
    {
      operator new[]();
    }

    if (*(a6 + 184) == 1)
    {
      v17 = *(a6 + 168);
      if (v17)
      {
        MEMORY[0x25305E3D0](v17, 0x1000C8052888210, _Q0);
      }
    }

    *(a6 + 168) = v16;
    *(a6 + 176) = v13;
    *(a6 + 184) = 0;
    *(a6 + 128) = *(a6 + 120);
    v18 = a6;
    if (a3)
    {
LABEL_21:
      operator new[]();
    }
  }

  else
  {
    v18 = geom_triangle_mesh_bvh_3f_obj_alloc();
    v27 = a2;
    v28 = a1;
    v25 = a4;
    v26 = v13;
    _ZN4geom19make_external_arrayINS_5sliceIDv2_dEEEENSt3__19enable_ifIXaa21collection_has_size_vIT_E21collection_has_data_vIS6_EENS_14external_arrayINS6_10value_typeEEEE4typeERKS6_b(&v27, v8, v18 + 144);
    geom::make_external_array<geom::slice<unsigned int>>(&v25, v8, v18 + 168);
    *(v18 + 120) = 0;
    *(v18 + 128) = 0;
    *(v18 + 136) = 0;
    if (a3)
    {
      goto LABEL_21;
    }
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  if (a6)
  {
    geom::bvh<double,(unsigned char)2>::reset(v18 + 16, &v22, v20);
    if ((v21 & 1) != 0 && v20[0])
    {
      MEMORY[0x25305E3D0](v20[0], 0x1000C80E0EAB150);
    }
  }

  else
  {
    *(v18 + 16) = 0;
    *(v18 + 24) = 0u;
    *(v18 + 40) = 0u;
    *(v18 + 56) = 0u;
    *(v18 + 72) = 0;
    *(v18 + 80) = a3;
    *(v18 + 88) = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    *(v18 + 96) = 0;
    *(v18 + 104) = a3;
    *(v18 + 112) = 0;
  }

  if (v24 == 1 && v22)
  {
    MEMORY[0x25305E3D0](v22, 0x1000C80451B5BE8);
  }

  return v18;
}

void geom::anonymous namespace::build_soa_triangle_mesh_bvh_data<float>(void *a1, void *a2, void *a3, void *a4)
{
  std::vector<std::array<geom::soa_vec3<float,(unsigned char)4>,3ul>>::resize(a4, (a3[1] + 3) >> 2);
  if (a3[1])
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = 3 * *(*a3 + 4 * v8);
      v11 = (*a4 + ((4 * (v9 & 3)) | (144 * (v9 >> 2))) + 16);
      v12 = 3;
      do
      {
        v13 = (*a1 + 16 * *(*a2 + 4 * v10));
        *(v11 - 4) = *v13;
        *v11 = v13[1];
        v11[4] = v13[2];
        ++v10;
        v11 += 12;
        --v12;
      }

      while (v12);
      v8 = ++v9;
    }

    while (a3[1] > v9);
  }
}

const void **geom::make_external_array<geom::slice<unsigned int>>@<X0>(const void **result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  if (v3)
  {
    if (a2)
    {
      operator new[]();
    }

    *a3 = *result;
    *(a3 + 8) = v3;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  *(a3 + 16) = 0;
  return result;
}

void std::vector<std::array<geom::soa_vec3<float,(unsigned char)4>,3ul>>::resize(void *result, unint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((result[1] - *result) >> 4);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<std::array<geom::soa_vec3<float,(unsigned char)4>,3ul>>::__append(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 144 * a2;
  }
}

void std::vector<std::array<geom::soa_vec3<float,(unsigned char)4>,3ul>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x8E38E38E38E38E39 * ((v4 - v5) >> 4) >= a2)
  {
    if (a2)
    {
      v10 = 144 * ((144 * a2 - 144) / 0x90) + 144;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 4);
    if (v6 + a2 > 0x1C71C71C71C71C7)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v7 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 4);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0xE38E38E38E38E3)
    {
      v9 = 0x1C71C71C71C71C7;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::array<geom::soa_vec3<float,(unsigned char)4>,3ul>>>(a1, v9);
    }

    v11 = 144 * v6;
    v12 = 144 * ((144 * a2 - 144) / 0x90) + 144;
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

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::array<geom::soa_vec3<float,(unsigned char)4>,3ul>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t anonymous namespace::construct_triangle_mesh_bvh<double>(unint64_t a1, char *a2, unint64_t a3, char *a4, int a5, uint64_t a6)
{
  v28 = *MEMORY[0x277D85DE8];
  v12 = 3 * a3;
  if (a6)
  {
    v26 = a2;
    v27 = a1;
    v24 = a4;
    v25 = 3 * a3;
    if (a1)
    {
      v13 = a2;
    }

    else
    {
      v13 = 0;
    }

    if (a1 && a5)
    {
      operator new[]();
    }

    if (*(a6 + 160) == 1)
    {
      v14 = *(a6 + 144);
      if (v14)
      {
        MEMORY[0x25305E3D0](v14, 0x1000C80E0EAB150);
      }
    }

    *(a6 + 144) = v13;
    *(a6 + 152) = a1;
    *(a6 + 160) = 0;
    if (a3)
    {
      v15 = a4;
    }

    else
    {
      v15 = 0;
    }

    if (a3 && a5)
    {
      operator new[]();
    }

    if (*(a6 + 184) == 1)
    {
      v16 = *(a6 + 168);
      if (v16)
      {
        MEMORY[0x25305E3D0](v16, 0x1000C8052888210);
      }
    }

    *(a6 + 168) = v15;
    *(a6 + 176) = v12;
    *(a6 + 184) = 0;
    *(a6 + 128) = *(a6 + 120);
    v17 = a6;
    if (a3)
    {
LABEL_21:
      operator new[]();
    }
  }

  else
  {
    v17 = geom_triangle_mesh_bvh_3d_obj_alloc();
    v26 = a2;
    v27 = a1;
    v24 = a4;
    v25 = v12;
    _ZN4geom19make_external_arrayINS_5sliceIDv3_dEEEENSt3__19enable_ifIXaa21collection_has_size_vIT_E21collection_has_data_vIS6_EENS_14external_arrayINS6_10value_typeEEEE4typeERKS6_b(&v26, a5, v17 + 144);
    geom::make_external_array<geom::slice<unsigned int>>(&v24, a5, v17 + 168);
    *(v17 + 120) = 0;
    *(v17 + 128) = 0;
    *(v17 + 136) = 0;
    if (a3)
    {
      goto LABEL_21;
    }
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  v19[0] = 0;
  v19[1] = 0;
  v20 = 0;
  if (a6)
  {
    geom::bvh<double,(unsigned char)3>::reset(v17 + 16, &v21, v19);
    if ((v20 & 1) != 0 && v19[0])
    {
      MEMORY[0x25305E3D0](v19[0], 0x1000C80FA0F61DDLL);
    }
  }

  else
  {
    *(v17 + 16) = 0;
    *(v17 + 24) = 0u;
    *(v17 + 40) = 0u;
    *(v17 + 56) = 0u;
    *(v17 + 72) = 0;
    *(v17 + 80) = a3;
    *(v17 + 88) = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    *(v17 + 96) = 0;
    *(v17 + 104) = a3;
    *(v17 + 112) = 0;
  }

  if (v23 == 1 && v21)
  {
    MEMORY[0x25305E3D0](v21, 0x1000C80E0EAB150);
  }

  return v17;
}

void geom::anonymous namespace::build_soa_triangle_mesh_bvh_data<double>(void *a1, void *a2, void *a3, void *a4)
{
  std::vector<std::array<geom::soa_vec3<double,(unsigned char)4>,3ul>>::resize(a4, (a3[1] + 3) >> 2);
  if (a3[1])
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = 3 * *(*a3 + 4 * v8);
      v11 = (*a4 + ((8 * (v9 & 3)) | (288 * (v9 >> 2))) + 32);
      v12 = 3;
      do
      {
        v13 = (*a1 + 32 * *(*a2 + 4 * v10));
        *(v11 - 4) = *v13;
        *v11 = v13[1];
        v11[4] = v13[2];
        ++v10;
        v11 += 12;
        --v12;
      }

      while (v12);
      v8 = ++v9;
    }

    while (a3[1] > v9);
  }
}

void std::vector<std::array<geom::soa_vec3<double,(unsigned char)4>,3ul>>::resize(void *result, unint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((result[1] - *result) >> 5);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<std::array<geom::soa_vec3<double,(unsigned char)4>,3ul>>::__append(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 288 * a2;
  }
}

void std::vector<std::array<geom::soa_vec3<double,(unsigned char)4>,3ul>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x8E38E38E38E38E39 * ((v4 - v5) >> 5) >= a2)
  {
    if (a2)
    {
      v10 = 288 * ((288 * a2 - 288) / 0x120) + 288;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 5);
    if (v6 + a2 > 0xE38E38E38E38E3)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v7 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 5);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x71C71C71C71C71)
    {
      v9 = 0xE38E38E38E38E3;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::array<geom::soa_vec3<double,(unsigned char)4>,3ul>>>(a1, v9);
    }

    v11 = 288 * v6;
    v12 = 288 * ((288 * a2 - 288) / 0x120) + 288;
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

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::array<geom::soa_vec3<double,(unsigned char)4>,3ul>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xE38E38E38E38E4)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__function::__func<geom::user_bvh_types<float,(unsigned char)3>::triangle_mesh_bvh_type anonymous namespace::create_triangle_mesh_bvh_custom_heuristic<float>(unsigned long,geom::vector_type<float,(unsigned char)3,void>::value const*,unsigned long,unsigned int const*,geom::user_bvh_types<float,(unsigned char)3>::heuristic_fn_type,unsigned long,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)3> &)#1},std::allocator<geom::user_bvh_types<float,(unsigned char)3>::triangle_mesh_bvh_type anonymous namespace::create_triangle_mesh_bvh_custom_heuristic<float>(unsigned long,geom::vector_type<float,(unsigned char)3,void>::value const*,unsigned long,unsigned int const*,geom::user_bvh_types<float,(unsigned char)3>::heuristic_fn_type,unsigned long,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)3> &)#1}>,BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2862900B8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<geom::user_bvh_types<float,(unsigned char)3>::triangle_mesh_bvh_type anonymous namespace::create_triangle_mesh_bvh_custom_heuristic<float>(unsigned long,geom::vector_type<float,(unsigned char)3,void>::value const*,unsigned long,unsigned int const*,geom::user_bvh_types<float,(unsigned char)3>::heuristic_fn_type,unsigned long,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)3> &)#1},std::allocator<geom::user_bvh_types<float,(unsigned char)3>::triangle_mesh_bvh_type anonymous namespace::create_triangle_mesh_bvh_custom_heuristic<float>(unsigned long,geom::vector_type<float,(unsigned char)3,void>::value const*,unsigned long,unsigned int const*,geom::user_bvh_types<float,(unsigned char)3>::heuristic_fn_type,unsigned long,unsigned int)::{lambda(geom::bvh_node<float,(unsigned char)3> &)#1}>,BOOL ()(geom::bvh_node<float,(unsigned char)3> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<geom::user_bvh_types<double,(unsigned char)3>::triangle_mesh_bvh_type anonymous namespace::create_triangle_mesh_bvh_custom_heuristic<double>(unsigned long,geom::vector_type<double,(unsigned char)3,void>::value const*,unsigned long,unsigned int const*,geom::user_bvh_types<double,(unsigned char)3>::heuristic_fn_type,unsigned long,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)3> &)#1},std::allocator<geom::user_bvh_types<double,(unsigned char)3>::triangle_mesh_bvh_type anonymous namespace::create_triangle_mesh_bvh_custom_heuristic<double>(unsigned long,geom::vector_type<double,(unsigned char)3,void>::value const*,unsigned long,unsigned int const*,geom::user_bvh_types<double,(unsigned char)3>::heuristic_fn_type,unsigned long,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)3> &)#1}>,BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286290138;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<geom::user_bvh_types<double,(unsigned char)3>::triangle_mesh_bvh_type anonymous namespace::create_triangle_mesh_bvh_custom_heuristic<double>(unsigned long,geom::vector_type<double,(unsigned char)3,void>::value const*,unsigned long,unsigned int const*,geom::user_bvh_types<double,(unsigned char)3>::heuristic_fn_type,unsigned long,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)3> &)#1},std::allocator<geom::user_bvh_types<double,(unsigned char)3>::triangle_mesh_bvh_type anonymous namespace::create_triangle_mesh_bvh_custom_heuristic<double>(unsigned long,geom::vector_type<double,(unsigned char)3,void>::value const*,unsigned long,unsigned int const*,geom::user_bvh_types<double,(unsigned char)3>::heuristic_fn_type,unsigned long,unsigned int)::{lambda(geom::bvh_node<double,(unsigned char)3> &)#1}>,BOOL ()(geom::bvh_node<double,(unsigned char)3> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void anonymous namespace::build_bvh_with_strategy<float,(unsigned char)2>(geom::bvh<float,(unsigned char)2> &,geom_bvh_create_strategy,unsigned long)::{lambda(geom::bvh_node<float,(unsigned char)2> &)#1},std::allocator<void anonymous namespace::build_bvh_with_strategy<float,(unsigned char)2>(geom::bvh<float,(unsigned char)2> &,geom_bvh_create_strategy,unsigned long)::{lambda(geom::bvh_node<float,(unsigned char)2> &)#1}>,BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2862901B8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void anonymous namespace::build_bvh_with_strategy<float,(unsigned char)2>(geom::bvh<float,(unsigned char)2> &,geom_bvh_create_strategy,unsigned long)::{lambda(geom::bvh_node<float,(unsigned char)2> &)#1},std::allocator<void anonymous namespace::build_bvh_with_strategy<float,(unsigned char)2>(geom::bvh<float,(unsigned char)2> &,geom_bvh_create_strategy,unsigned long)::{lambda(geom::bvh_node<float,(unsigned char)2> &)#1}>,BOOL ()(geom::bvh_node<float,(unsigned char)2> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void anonymous namespace::build_bvh_with_strategy<double,(unsigned char)2>(geom::bvh<double,(unsigned char)2> &,geom_bvh_create_strategy,unsigned long)::{lambda(geom::bvh_node<double,(unsigned char)2> &)#1},std::allocator<void anonymous namespace::build_bvh_with_strategy<double,(unsigned char)2>(geom::bvh<double,(unsigned char)2> &,geom_bvh_create_strategy,unsigned long)::{lambda(geom::bvh_node<double,(unsigned char)2> &)#1}>,BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286290238;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void anonymous namespace::build_bvh_with_strategy<double,(unsigned char)2>(geom::bvh<double,(unsigned char)2> &,geom_bvh_create_strategy,unsigned long)::{lambda(geom::bvh_node<double,(unsigned char)2> &)#1},std::allocator<void anonymous namespace::build_bvh_with_strategy<double,(unsigned char)2>(geom::bvh<double,(unsigned char)2> &,geom_bvh_create_strategy,unsigned long)::{lambda(geom::bvh_node<double,(unsigned char)2> &)#1}>,BOOL ()(geom::bvh_node<double,(unsigned char)2> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<geom_bvh_raycast_2f::$_0,std::allocator<geom_bvh_raycast_2f::$_0>,BOOL ()(unsigned int,geom::ray<float,(unsigned char)2>,float &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2862902B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<geom_bvh_raycast_2f::$_0,std::allocator<geom_bvh_raycast_2f::$_0>,BOOL ()(unsigned int,geom::ray<float,(unsigned char)2>,float &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(unsigned int,geom::ray<float,(unsigned char)2>,float &)>::~__value_func[abi:nn200100](uint64_t a1)
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

__n128 std::__function::__func<geom_bvh_raycast_2d::$_0,std::allocator<geom_bvh_raycast_2d::$_0>,BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286290348;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<geom_bvh_raycast_2d::$_0,std::allocator<geom_bvh_raycast_2d::$_0>,BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(unsigned int,geom::ray<double,(unsigned char)2>,double &)>::~__value_func[abi:nn200100](uint64_t a1)
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

__n128 std::__function::__func<geom_bvh_raycast_3f::$_0,std::allocator<geom_bvh_raycast_3f::$_0>,BOOL ()(unsigned int,geom::ray<float,(unsigned char)3>,float &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2862903D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<geom_bvh_raycast_3f::$_0,std::allocator<geom_bvh_raycast_3f::$_0>,BOOL ()(unsigned int,geom::ray<float,(unsigned char)3>,float &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(unsigned int,geom::ray<float,(unsigned char)3>,float &)>::~__value_func[abi:nn200100](uint64_t a1)
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

__n128 std::__function::__func<geom_bvh_raycast_3d::$_0,std::allocator<geom_bvh_raycast_3d::$_0>,BOOL ()(unsigned int,geom::ray<double,(unsigned char)3>,double &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286290468;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<geom_bvh_raycast_3d::$_0,std::allocator<geom_bvh_raycast_3d::$_0>,BOOL ()(unsigned int,geom::ray<double,(unsigned char)3>,double &)>::operator()(uint64_t a1, unsigned int *a2, _OWORD *a3)
{
  v3 = *a2;
  v4 = *(a1 + 16);
  v5 = **(a1 + 8);
  v6 = a3[1];
  v9[0] = *a3;
  v9[1] = v6;
  v7 = a3[3];
  v9[2] = a3[2];
  v9[3] = v7;
  return v5(v3, v9, *v4);
}

uint64_t std::__function::__func<geom_bvh_raycast_3d::$_0,std::allocator<geom_bvh_raycast_3d::$_0>,BOOL ()(unsigned int,geom::ray<double,(unsigned char)3>,double &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(unsigned int,geom::ray<double,(unsigned char)3>,double &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void _ZNSt3__16vectorIZNK4geom3bvhIfLh2EE13closest_pointIZ25geom_bvh_closest_point_2fE3__0EEDv2_fT_S6_RfRjE5stateNS_9allocatorISA_EEE9push_backB8nn200100EOSA_(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void _ZNSt3__16vectorIZNK4geom3bvhIdLh2EE13closest_pointIZ25geom_bvh_closest_point_2dE3__0EEDv2_dT_S6_RdRjE5stateNS_9allocatorISA_EEE9push_backB8nn200100EOSA_(char **a1, _OWORD *a2, __n128 a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v6 >= v5)
  {
    v8 = (v6 - *a1) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v5 - *a1;
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

    _ZNSt3__114__split_bufferIZNK4geom3bvhIdLh2EE13closest_pointIZ25geom_bvh_closest_point_2dE3__0EEDv2_dT_S6_RdRjE5stateRNS_9allocatorISA_EEEC1EmmSD_(&v18, v11, v8, a1);
    *v20 = *a2;
    *&v20 = v20 + 16;
    v12 = a1[1] - *a1;
    v13 = &v19[-v12];
    memcpy(&v19[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    v15 = a1[2];
    v16 = v20;
    *(a1 + 1) = v20;
    *&v20 = v14;
    *(&v20 + 1) = v15;
    v18 = v14;
    v19 = v14;
    if (v14)
    {
      v17 = v16;
      operator delete(v14);
      v16 = v17;
    }

    v7 = v16;
  }

  else
  {
    *v6 = *a2;
    v7 = v6 + 16;
  }

  a1[1] = v7;
}

uint64_t *_ZNSt3__114__split_bufferIZNK4geom3bvhIdLh2EE13closest_pointIZ25geom_bvh_closest_point_2dE3__0EEDv2_dT_S6_RdRjE5stateRNS_9allocatorISA_EEEC1EmmSD_(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    if (!(a2 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *a1 = 0;
  a1[1] = 16 * a3;
  a1[2] = 16 * a3;
  a1[3] = 0;
  return a1;
}

__n128 std::__function::__func<geom_triangle_mesh_bvh_raycast_3f::$_0,std::allocator<geom_triangle_mesh_bvh_raycast_3f::$_0>,BOOL ()(unsigned int,geom::ray<float,(unsigned char)3>,float &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2862904F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<geom_triangle_mesh_bvh_raycast_3f::$_0,std::allocator<geom_triangle_mesh_bvh_raycast_3f::$_0>,BOOL ()(unsigned int,geom::ray<float,(unsigned char)3>,float &)>::operator()(uint64_t a1, unsigned int *a2, uint64_t a3, float *a4)
{
  v5 = *a2;
  v6 = **(a1 + 8);
  v7 = *(v6 + 168);
  v8 = *(v6 + 144);
  v9 = *(v8 + 16 * *(v7 + 12 * *a2));
  v10 = *(v8 + 16 * *(v7 + 4 * (3 * *a2 + 1)));
  v11 = *(v8 + 16 * *(v7 + 4 * (3 * *a2 + 2)));
  v12 = vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL);
  v13 = vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL);
  v14 = vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL);
  v15 = vmlaq_f32(vmulq_f32(v14, vnegq_f32(v10)), v11, v13);
  v16 = vaddq_f32(vmlaq_f32(vmulq_f32(v12, vnegq_f32(v11)), v9, v14), vaddq_f32(vmlaq_f32(vmulq_f32(v13, vnegq_f32(v9)), v10, v12), v15));
  v17 = vmulq_f32(v16, v16);
  if (fabsf(v17.f32[1] + (v17.f32[2] + v17.f32[0])) <= 1.0e-10)
  {
    goto LABEL_6;
  }

  v18 = *(a3 + 16);
  v19 = vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL);
  v20 = vmulq_f32(v18, v19);
  v15.f32[0] = v20.f32[2] + vaddv_f32(*v20.f32);
  if (fabsf(v15.f32[0]) <= 0.00001)
  {
    goto LABEL_6;
  }

  v21 = -v15.f32[0];
  v4.i64[0] = 0;
  v22 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v15, v4), 0), vnegq_f32(v19), v19);
  if (v15.f32[0] > 0.0)
  {
    v21 = v15.f32[0];
  }

  v23 = vsubq_f32(*a3, v9);
  v24 = 1.0 / v21;
  v25 = vmulq_f32(v23, v22);
  v26 = (1.0 / v21) * (v25.f32[2] + vaddv_f32(*v25.f32));
  *a4 = v26;
  if (v26 == 0.0)
  {
    goto LABEL_6;
  }

  v28 = fabsf(v26);
  if (v28 != INFINITY)
  {
    if (((v28 + 1.0) * 0.00000011921) < v26)
    {
      goto LABEL_11;
    }

LABEL_6:
    result = 0;
    *a4 = INFINITY;
    return result;
  }

  if (v26 <= 0.0)
  {
    goto LABEL_6;
  }

LABEL_11:
  v29 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), vnegq_f32(v23)), v18, vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL));
  v30 = vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL);
  v34 = v15.f32[0] <= 0.0;
  v31 = 1.0;
  if (!v34)
  {
    v31 = -1.0;
  }

  v32 = vmulq_n_f32(v30, v31);
  v33 = vmulq_f32(vsubq_f32(v11, v9), v32);
  v33.f32[0] = v33.f32[2] + vaddv_f32(*v33.f32);
  v34 = v33.f32[0] >= 0.0 && v33.f32[0] <= v21;
  if (!v34)
  {
    goto LABEL_6;
  }

  v35 = vmulq_f32(vsubq_f32(v9, v10), v32);
  v36 = v35.f32[2] + vaddv_f32(*v35.f32);
  if (v36 < 0.0 || (v33.f32[0] + v36) > v21)
  {
    goto LABEL_6;
  }

  v38 = *(a1 + 16);
  if (v26 >= *v38)
  {
    if (v26 != *v38)
    {
      return 1;
    }

    v39 = *(a1 + 24);
    if (*v39 <= v5)
    {
      return 1;
    }
  }

  else
  {
    v39 = *(a1 + 24);
  }

  v40 = v24 * v33.f32[0];
  v41 = v24 * v36;
  v33.f32[0] = (1.0 - (v24 * v33.f32[0])) - v41;
  v33.f32[1] = v40;
  v33.f32[2] = v41;
  *v38 = v26;
  *v39 = v5;
  **(a1 + 32) = v33;
  return 1;
}

uint64_t std::__function::__func<geom_triangle_mesh_bvh_raycast_3f::$_0,std::allocator<geom_triangle_mesh_bvh_raycast_3f::$_0>,BOOL ()(unsigned int,geom::ray<float,(unsigned char)3>,float &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<geom_triangle_mesh_bvh_raycast_3d::$_0,std::allocator<geom_triangle_mesh_bvh_raycast_3d::$_0>,BOOL ()(unsigned int,geom::ray<double,(unsigned char)3>,double &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286290578;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<geom_triangle_mesh_bvh_raycast_3d::$_0,std::allocator<geom_triangle_mesh_bvh_raycast_3d::$_0>,BOOL ()(unsigned int,geom::ray<double,(unsigned char)3>,double &)>::operator()(uint64_t a1, unsigned int *a2, float64x2_t *a3, double *a4)
{
  v5 = *a2;
  v6 = **(a1 + 8);
  v7 = *(v6 + 168);
  v8 = *(v6 + 144);
  v9 = (v8 + 32 * *(v7 + 12 * *a2));
  v10 = *(v7 + 4 * (3 * *a2 + 2));
  v11 = (v8 + 32 * *(v7 + 4 * (3 * *a2 + 1)));
  v12 = (v8 + 32 * v10);
  v14 = *v9;
  v13 = v9[1];
  v16 = *v11;
  v15 = v11[1];
  v18 = *v12;
  v17 = v12[1];
  v19.f64[0] = v9[1].f64[0];
  v19.f64[1] = v9->f64[0];
  v20.f64[0] = v11[1].f64[0];
  v20.f64[1] = v11->f64[0];
  v21.f64[0] = v12[1].f64[0];
  v21.f64[1] = v12->f64[0];
  v22 = vaddq_f64(vmlaq_f64(vmulq_f64(v19, vnegq_f64(*v12)), *v9, v21), vaddq_f64(vmlaq_f64(vmulq_f64(v20, vnegq_f64(*v9)), *v11, v19), vmlaq_f64(vmulq_f64(v21, vnegq_f64(*v11)), *v12, v20)));
  v23 = vaddq_f64(vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v17), *v9, 1), v13, *v12, 1), vaddq_f64(vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v13), *v11, 1), v15, *v9, 1), vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v15), *v12, 1), v17, *v11, 1)));
  v24 = vmulq_f64(v22, v22);
  if (fabs(v24.f64[1] + vmulq_f64(v23, v23).f64[0] + v24.f64[0]) <= 1.0e-12)
  {
    goto LABEL_22;
  }

  v26 = a3[2];
  v25 = a3[3];
  v23.i64[1] = *&v22.f64[0];
  v27 = vmulq_f64(v26, v23);
  v27.f64[0] = vmulq_laneq_f64(v25, v22, 1).f64[0] + vaddvq_f64(v27);
  if (fabs(v27.f64[0]) <= 0.000001)
  {
    goto LABEL_22;
  }

  v28 = vdupq_laneq_s64(v22, 1);
  v29 = -v27.f64[0];
  v4.f64[0] = 0.0;
  v30 = vcgtq_f64(v27, v4);
  v31 = vandq_s8(vnegq_f64(v28), v30);
  v32 = vdupq_lane_s64(v30.i64[0], 0);
  v33 = vorrq_s8(v31, vbicq_s8(v28, v32));
  v34 = vbslq_s8(v32, vnegq_f64(v23), v23);
  if (v27.f64[0] > 0.0)
  {
    v29 = v27.f64[0];
  }

  v35 = vsubq_f64(*a3, v14);
  v36 = vsubq_f64(a3[1], v13);
  v37 = 1.0 / v29;
  v38 = 1.0 / v29 * (vmulq_f64(v36, v33).f64[0] + vaddvq_f64(vmulq_f64(v35, v34)));
  *a4 = v38;
  v39 = v38 != 0.0 && v38 > 2.22044605e-16;
  if (!v39 || ((v40.f64[0] = v25.f64[0], v40.f64[1] = v26.f64[0], v41 = vnegq_f64(v36), v36.f64[1] = v35.f64[0], v42 = vmlaq_f64(vmulq_f64(v40, vnegq_f64(v35)), v26, v36), *&v43.f64[0] = *&vmlaq_laneq_f64(vmulq_laneq_f64(v41, v26, 1), v25, v35, 1), v43.f64[1] = v42.f64[0], v27.f64[0] <= 0.0) ? (v26.f64[0] = 1.0) : (v26.f64[0] = -1.0), (v44 = vmulq_n_f64(v43, v26.f64[0]), v45 = vmulq_laneq_f64(v26, v42, 1), v46 = vmulq_f64(vsubq_f64(v17, v13), v45).f64[0] + vaddvq_f64(vmulq_f64(vsubq_f64(v18, v14), v44)), v46 >= 0.0) ? (v47 = v46 <= v29) : (v47 = 0), !v47 || ((v48 = vmulq_f64(vsubq_f64(v13, v15), v45), v48.f64[0] = v48.f64[0] + vaddvq_f64(vmulq_f64(vsubq_f64(v14, v16), v44)), v48.f64[0] >= 0.0) ? (v49 = v46 + v48.f64[0] <= v29) : (v49 = 0), !v49)))
  {
LABEL_22:
    result = 0;
    *a4 = INFINITY;
    return result;
  }

  v51 = *(a1 + 16);
  if (v38 >= *v51)
  {
    if (v38 != *v51)
    {
      return 1;
    }

    v52 = *(a1 + 24);
    if (*v52 <= v5)
    {
      return 1;
    }
  }

  else
  {
    v52 = *(a1 + 24);
  }

  v48.f64[0] = v37 * v48.f64[0];
  *&v53 = 1.0 - v37 * v46 - v48.f64[0];
  *(&v53 + 1) = v37 * v46;
  *v51 = v38;
  *v52 = v5;
  v54 = *(a1 + 32);
  *v54 = v53;
  v54[1] = v48;
  return 1;
}

uint64_t std::__function::__func<geom_triangle_mesh_bvh_raycast_3d::$_0,std::allocator<geom_triangle_mesh_bvh_raycast_3d::$_0>,BOOL ()(unsigned int,geom::ray<double,(unsigned char)3>,double &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__16vectorIZNK4geom3bvhIfLh3EE13closest_pointIN12_GLOBAL__N_130triangle_closest_point_functorIfEEEEDv3_fT_S8_RfRjE5stateNS_9allocatorISC_EEE7reserveEm(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }
}

void _ZNSt3__16vectorIZNK4geom3bvhIdLh3EE13closest_pointIN12_GLOBAL__N_130triangle_closest_point_functorIdEEEEDv3_dT_S8_RdRjE5stateNS_9allocatorISC_EEE7reserveEm(char **a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (a2 >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    _ZNSt3__114__split_bufferIZNK4geom3bvhIdLh2EE13closest_pointIZ25geom_bvh_closest_point_2dE3__0EEDv2_dT_S6_RdRjE5stateRNS_9allocatorISA_EEEC1EmmSD_(&v7, a2, (a1[1] - *a1) >> 4, a1);
    v3 = a1[1] - *a1;
    v4 = &v8[-v3];
    memcpy(&v8[-v3], *a1, v3);
    v5 = *a1;
    *a1 = v4;
    v6 = a1[2];
    *(a1 + 1) = v9;
    *&v9 = v5;
    *(&v9 + 1) = v6;
    v7 = v5;
    v8 = v5;
    if (v5)
    {
      operator delete(v5);
    }
  }
}

uint64_t geom::intersect_lines_point_direction<float>(float *a1, float *a2, float32x2_t a3, double a4, float32x2_t a5, double a6, double a7, double a8)
{
  v8 = vmul_f32(*&a4, *&a4);
  v9 = vaddv_f32(v8);
  v10 = vmul_f32(*&a6, *&a6);
  v11 = vaddv_f32(v10);
  *&a8 = fabsf(v9);
  v12 = fabsf(v11);
  if (*&a8 > 0.00000011921 || v12 > 0.00000011921)
  {
    v14 = vsub_f32(a5, a3);
    if (*&a8 > 0.00000011921)
    {
      v15 = v9;
    }

    else
    {
      v15 = v11;
    }

    if (*&a8 > 0.00000011921 && v12 > 0.00000011921)
    {
      v23 = vadd_f32(v8, vdup_lane_s32(v8, 1));
      v24 = vadd_f32(v10, vdup_lane_s32(v10, 1));
      v25 = (-*(&a4 + 1) * *&a6) + (*&a4 * *(&a6 + 1));
      if (fabsf(v25 * v25) <= (1.0e-10 * vmul_f32(v23, v24).f32[0]))
      {
        v26 = vmul_f32(v14, v14);
        if (fabsf(((v14.f32[0] * *(&a4 + 1)) - (v14.f32[1] * *&a4)) * ((v14.f32[0] * *(&a4 + 1)) - (v14.f32[1] * *&a4))) > (1.0e-10 * vmul_f32(v23, vadd_f32(v26, vdup_lane_s32(v26, 1))).f32[0]))
        {
          return 0;
        }

        if (a1)
        {
          v27 = vmul_f32(v14, *&a4);
          *a1 = vdiv_f32(vadd_f32(v27, vdup_lane_s32(v27, 1)), v23).u32[0];
        }

        if (!a2)
        {
          return 2;
        }

        v28 = vmul_f32(vneg_f32(v14), *&a6);
        LODWORD(v19) = vdiv_f32(vadd_f32(v28, vdup_lane_s32(v28, 1)), v24).u32[0];
        result = 2;
        goto LABEL_33;
      }

      if (a1)
      {
        *a1 = ((v14.f32[0] * *(&a6 + 1)) - (v14.f32[1] * *&a6)) / v25;
      }

      if (a2)
      {
        v19 = ((v14.f32[0] * *(&a4 + 1)) - (v14.f32[1] * *&a4)) / v25;
LABEL_29:
        result = 1;
LABEL_33:
        *a2 = v19;
        return result;
      }
    }

    else
    {
      v17 = vbsl_s8(vdup_lane_s32(vcge_f32(0x3400000034000000, *&a8), 0), *&a6, *&a4);
      v18 = vbsl_s8(vdup_lane_s32(vcge_f32(0x3400000034000000, *&a8), 0), vneg_f32(v14), v14);
      if ((((-v17.f32[1] * v18.f32[0]) + (v17.f32[0] * v18.f32[1])) * ((-v17.f32[1] * v18.f32[0]) + (v17.f32[0] * v18.f32[1]))) > (v15 * 1.0e-10))
      {
        return 0;
      }

      v19 = vaddv_f32(vmul_f32(v17, v18)) / v15;
      if (a1)
      {
        v20 = 0.0;
        if (*&a8 > 0.00000011921)
        {
          v20 = v19;
        }

        *a1 = v20;
      }

      if (a2)
      {
        if (v12 <= 0.00000011921)
        {
          v19 = 0.0;
        }

        goto LABEL_29;
      }
    }

    return 1;
  }

  v21 = vsub_f32(a3, a5);
  if (sqrtf(vaddv_f32(vmul_f32(v21, v21))) > 0.00001)
  {
    return 0;
  }

  if (a1)
  {
    *a1 = 0.0;
  }

  v19 = 0.0;
  result = 1;
  if (a2)
  {
    goto LABEL_33;
  }

  return result;
}

uint64_t geom::intersect_lines_point_direction<double>(double *a1, double *a2, float64x2_t a3, float64x2_t a4, float64x2_t a5, float64x2_t a6, double a7, float64x2_t a8)
{
  v9 = vmulq_f64(a4, a4);
  v10 = vaddvq_f64(v9);
  v11 = vmulq_f64(a6, a6);
  v12 = vaddvq_f64(v11);
  a8.f64[0] = fabs(v10);
  v13 = fabs(v12);
  if (a8.f64[0] > 2.22044605e-16 || v13 > 2.22044605e-16)
  {
    v15 = vsubq_f64(a5, a3);
    v8.f64[0] = 2.22044605e-16;
    if (a8.f64[0] > 2.22044605e-16)
    {
      v16 = v10;
    }

    else
    {
      v16 = v12;
    }

    if (a8.f64[0] > 2.22044605e-16 && v13 > 2.22044605e-16)
    {
      v24 = vaddq_f64(v9, vdupq_laneq_s64(v9, 1));
      v25 = vaddq_f64(v11, vdupq_laneq_s64(v11, 1));
      v26 = -a4.f64[1] * a6.f64[0] + a4.f64[0] * a6.f64[1];
      if (fabs(v26 * v26) <= 1.0e-12 * vmulq_f64(v24, v25).f64[0])
      {
        v27 = vmulq_f64(v15, v15);
        if (fabs((*v15.i64 * a4.f64[1] - *&v15.i64[1] * a4.f64[0]) * (*v15.i64 * a4.f64[1] - *&v15.i64[1] * a4.f64[0])) > 1.0e-12 * vmulq_f64(v24, vaddq_f64(v27, vdupq_laneq_s64(v27, 1))).f64[0])
        {
          return 0;
        }

        if (a1)
        {
          v28 = vmulq_f64(v15, a4);
          *a1 = *&vdivq_f64(vaddq_f64(v28, vdupq_laneq_s64(v28, 1)), v24);
        }

        if (!a2)
        {
          return 2;
        }

        v29 = vmulq_f64(vnegq_f64(v15), a6);
        *&v20 = *&vdivq_f64(vaddq_f64(v29, vdupq_laneq_s64(v29, 1)), v25);
        result = 2;
        goto LABEL_33;
      }

      if (a1)
      {
        *a1 = (*v15.i64 * a6.f64[1] - *&v15.i64[1] * a6.f64[0]) / v26;
      }

      if (a2)
      {
        v20 = (*v15.i64 * a4.f64[1] - *&v15.i64[1] * a4.f64[0]) / v26;
LABEL_29:
        result = 1;
LABEL_33:
        *a2 = v20;
        return result;
      }
    }

    else
    {
      v18 = vbslq_s8(vdupq_lane_s64(vcgeq_f64(v8, a8).i64[0], 0), a6, a4);
      a6.f64[0] = 2.22044605e-16;
      v19 = vbslq_s8(vdupq_lane_s64(vcgeq_f64(a6, a8).i64[0], 0), vnegq_f64(v15), v15);
      if ((-v18.f64[1] * v19.f64[0] + v18.f64[0] * v19.f64[1]) * (-v18.f64[1] * v19.f64[0] + v18.f64[0] * v19.f64[1]) > v16 * 1.0e-12)
      {
        return 0;
      }

      v20 = vaddvq_f64(vmulq_f64(v18, v19)) / v16;
      if (a1)
      {
        v21 = 0.0;
        if (a8.f64[0] > 2.22044605e-16)
        {
          v21 = v20;
        }

        *a1 = v21;
      }

      if (a2)
      {
        if (v13 <= 2.22044605e-16)
        {
          v20 = 0.0;
        }

        goto LABEL_29;
      }
    }

    return 1;
  }

  v22 = vsubq_f64(a3, a5);
  if (sqrt(vaddvq_f64(vmulq_f64(v22, v22))) > 0.000001)
  {
    return 0;
  }

  if (a1)
  {
    *a1 = 0.0;
  }

  v20 = 0.0;
  result = 1;
  if (a2)
  {
    goto LABEL_33;
  }

  return result;
}

uint64_t geom::intersect_ray_line<float>(uint64_t a1, int a2, float *a3, float32x2_t a4, double a5, double a6, double a7, double a8, double a9)
{
  if ((*&a2 * *&a2) <= (vaddv_f32(vmul_f32(a1, a1)) * 1.0e-10))
  {
    v11 = 0;
  }

  else
  {
    v9 = fabsf(*(&a1 + 1)) > COERCE_FLOAT(a1 & 0x7FFFFFFF);
    v34 = a1;
    v10 = -*&a2 / *(&v34 | (4 * v9));
    v35 = 0;
    *(&v35 & 0xFFFFFFFFFFFFFFFBLL | (4 * v9)) = v10;
    v11 = v35;
  }

  *&a9 = -*(&a1 + 1);
  v12 = vzip1_s32(*&a9, a1);
  v13 = vmul_f32(*&a5, *&a5);
  v14 = vaddv_f32(v13);
  v15 = vmul_f32(v12, v12);
  v16 = vaddv_f32(v15);
  *&a9 = fabsf(v14);
  v17 = fabsf(v16);
  if (*&a9 <= 0.00000011921 && v17 <= 0.00000011921)
  {
    v27 = vsub_f32(a4, v11);
    v28 = sqrtf(vaddv_f32(vmul_f32(v27, v27)));
    v26 = 0.0;
    if (v28 > 0.00001)
    {
      v29 = 0;
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  v19 = vsub_f32(v11, a4);
  v20 = vadd_f32(v13, vdup_lane_s32(v13, 1));
  if (*&a9 <= 0.00000011921 || v17 <= 0.00000011921)
  {
    v22 = vbsl_s8(vdup_lane_s32(vcge_f32(0x3400000034000000, *&a9), 0), v12, *&a5);
    v23 = vbsl_s8(vdup_lane_s32(vcge_f32(0x3400000034000000, *&a9), 0), vneg_f32(v19), v19);
    if (*&a9 > 0.00000011921)
    {
      v24 = v14;
    }

    else
    {
      v24 = v16;
    }

    if ((((-v22.f32[1] * v23.f32[0]) + (v22.f32[0] * v23.f32[1])) * ((-v22.f32[1] * v23.f32[0]) + (v22.f32[0] * v23.f32[1]))) <= (v24 * 1.0e-10))
    {
      v25 = vmul_f32(v22, v23);
      LODWORD(v26) = vdiv_f32(vadd_f32(v25, vdup_lane_s32(v25, 1)), v20).u32[0];
      if (*&a9 <= 0.00000011921)
      {
        v26 = 0.0;
      }

      goto LABEL_24;
    }

LABEL_26:
    v29 = 0;
    v26 = 0.0;
    goto LABEL_28;
  }

  v30 = vmuls_lane_f32(*(&a1 + 1), *&a5, 1) + (*&a5 * *&a1);
  if (fabsf(v30 * v30) > (1.0e-10 * vmul_f32(v20, vadd_f32(v15, vdup_lane_s32(v15, 1))).f32[0]))
  {
    v26 = (vmuls_lane_f32(*(&a1 + 1), v19, 1) + (v19.f32[0] * *&a1)) / v30;
LABEL_24:
    v29 = 1;
    goto LABEL_28;
  }

  v31 = vmul_f32(v19, v19);
  if (fabsf(((v19.f32[0] * *(&a5 + 1)) - (v19.f32[1] * *&a5)) * ((v19.f32[0] * *(&a5 + 1)) - (v19.f32[1] * *&a5))) > (1.0e-10 * vmul_f32(v20, vadd_f32(v31, vdup_lane_s32(v31, 1))).f32[0]))
  {
    goto LABEL_26;
  }

  v32 = vmul_f32(*&a5, v19);
  LODWORD(v26) = vdiv_f32(vadd_f32(v32, vdup_lane_s32(v32, 1)), v20).u32[0];
  v29 = 2;
LABEL_28:
  if (v26 >= 0.0)
  {
    result = v29;
  }

  else
  {
    result = 0;
  }

  if (a3)
  {
    if (!result)
    {
      v26 = INFINITY;
    }

    *a3 = v26;
  }

  return result;
}

uint64_t geom::intersect_ray_line<double>(float64x2_t *a1, double *a2, float64x2_t a3, float64x2_t a4, double a5, double a6, float64x2_t a7, double a8, int64x2_t a9)
{
  v9 = a1[1].f64[0];
  v10 = *a1;
  v11 = a1->f64[1];
  if (v9 * v9 <= vaddvq_f64(vmulq_f64(v10, v10)) * 1.0e-12)
  {
    v14 = 0uLL;
  }

  else
  {
    v12 = fabs(v10.f64[1]) > fabs(v10.f64[0]);
    v37 = *a1;
    v13 = -v9 / *(&v37 | (8 * v12));
    a9.i64[1] = 0;
    v38 = 0u;
    *(&v38 & 0xFFFFFFFFFFFFFFF7 | (8 * v12)) = v13;
    v14 = v38;
  }

  *a9.i64 = -v11;
  v15 = vzip1q_s64(a9, v10);
  v16 = vmulq_f64(a4, a4);
  v17 = vaddvq_f64(v16);
  v18 = vmulq_f64(v15, v15);
  v19 = vaddvq_f64(v18);
  *a9.i64 = fabs(v17);
  v20 = fabs(v19);
  if (*a9.i64 <= 2.22044605e-16 && v20 <= 2.22044605e-16)
  {
    v30 = vsubq_f64(a3, v14);
    v31 = sqrt(vaddvq_f64(vmulq_f64(v30, v30)));
    v29 = 0.0;
    if (v31 > 0.000001)
    {
      v32 = 0;
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  v22 = vsubq_f64(v14, a3);
  v23 = vaddq_f64(v16, vdupq_laneq_s64(v16, 1));
  v16.f64[0] = 2.22044605e-16;
  if (*a9.i64 <= 2.22044605e-16 || v20 <= 2.22044605e-16)
  {
    v25 = vbslq_s8(vdupq_lane_s64(vcgeq_f64(v16, a9).i64[0], 0), v15, a4);
    a7.f64[0] = 2.22044605e-16;
    v26 = vbslq_s8(vdupq_lane_s64(vcgeq_f64(a7, a9).i64[0], 0), vnegq_f64(v22), v22);
    if (*a9.i64 > 2.22044605e-16)
    {
      v27 = v17;
    }

    else
    {
      v27 = v19;
    }

    if ((-v25.f64[1] * v26.f64[0] + v25.f64[0] * v26.f64[1]) * (-v25.f64[1] * v26.f64[0] + v25.f64[0] * v26.f64[1]) <= v27 * 1.0e-12)
    {
      v28 = vmulq_f64(v25, v26);
      *&v29 = *&vdivq_f64(vaddq_f64(v28, vdupq_laneq_s64(v28, 1)), v23);
      if (*a9.i64 <= 2.22044605e-16)
      {
        v29 = 0.0;
      }

      goto LABEL_24;
    }

LABEL_26:
    v32 = 0;
    v29 = 0.0;
    goto LABEL_28;
  }

  v33 = vmuld_lane_f64(v11, a4, 1) + a4.f64[0] * v10.f64[0];
  if (fabs(v33 * v33) > 1.0e-12 * vmulq_f64(v23, vaddq_f64(v18, vdupq_laneq_s64(v18, 1))).f64[0])
  {
    v29 = (vmuld_lane_f64(v11, v22, 1) + *v22.i64 * v10.f64[0]) / v33;
LABEL_24:
    v32 = 1;
    goto LABEL_28;
  }

  v34 = vmulq_f64(v22, v22);
  if (fabs((*v22.i64 * a4.f64[1] - *&v22.i64[1] * a4.f64[0]) * (*v22.i64 * a4.f64[1] - *&v22.i64[1] * a4.f64[0])) > 1.0e-12 * vmulq_f64(v23, vaddq_f64(v34, vdupq_laneq_s64(v34, 1))).f64[0])
  {
    goto LABEL_26;
  }

  v35 = vmulq_f64(a4, v22);
  *&v29 = *&vdivq_f64(vaddq_f64(v35, vdupq_laneq_s64(v35, 1)), v23);
  v32 = 2;
LABEL_28:
  if (v29 >= 0.0)
  {
    result = v32;
  }

  else
  {
    result = 0;
  }

  if (a2)
  {
    if (!result)
    {
      v29 = INFINITY;
    }

    *a2 = v29;
  }

  return result;
}

uint64_t geom::intersect_ray_ray<float>(float *a1, float *a2, float32x2_t a3, double a4, float32x2_t a5, double a6)
{
  v6 = vmul_f32(*&a4, *&a4);
  v7 = vmul_f32(*&a6, *&a6);
  v8 = vadd_f32(vzip1_s32(v7, v6), vzip2_s32(v7, v6));
  v9 = vcge_f32(0x3400000034000000, vabs_f32(v8));
  if (v9.i32[1] & v9.i32[0])
  {
    v10 = vsub_f32(a3, a5);
    v11 = 0.0;
    v27 = sqrtf(vaddv_f32(vmul_f32(v10, v10))) > 0.00001;
    v12 = 0.0;
    if (!v27)
    {
      goto LABEL_24;
    }

LABEL_28:
    v21 = 0;
    v12 = INFINITY;
    v11 = INFINITY;
    goto LABEL_29;
  }

  v13 = vsub_f32(a5, a3);
  if (v9.i8[4])
  {
    v14 = v8.f32[0];
  }

  else
  {
    v14 = v8.f32[1];
  }

  if (v9.i8[4])
  {
    v15 = -1;
  }

  else
  {
    v15 = 0;
  }

  if ((v9.i8[4] | v9.i8[0]))
  {
    v16 = vbsl_s8(vdup_n_s32(v15), *&a6, *&a4);
    if (v9.i8[4])
    {
      v17 = -1;
    }

    else
    {
      v17 = 0;
    }

    v18 = vbsl_s8(vdup_n_s32(v17), vneg_f32(v13), v13);
    if ((((-v16.f32[1] * v18.f32[0]) + (v16.f32[0] * v18.f32[1])) * ((-v16.f32[1] * v18.f32[0]) + (v16.f32[0] * v18.f32[1]))) > (v14 * 1.0e-10))
    {
      goto LABEL_28;
    }

    v12 = vaddv_f32(vmul_f32(v16, v18)) / v14;
    if (v9.i8[4])
    {
      v11 = 0.0;
    }

    else
    {
      v11 = v12;
    }

    if (v9.i8[0])
    {
      v12 = 0.0;
    }

LABEL_24:
    if (v11 >= 0.0 && v12 >= 0.0)
    {
      v21 = 1;
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v19 = (-*(&a4 + 1) * *&a6) + (*&a4 * *(&a6 + 1));
  v20 = (v8.f32[1] * v8.f32[0]) * 1.0e-10;
  if (fabsf(v19 * v19) > v20)
  {
    v11 = ((v13.f32[0] * *(&a6 + 1)) - (v13.f32[1] * *&a6)) / v19;
    v12 = ((v13.f32[0] * *(&a4 + 1)) - (v13.f32[1] * *&a4)) / v19;
    goto LABEL_24;
  }

  if (fabsf(((v13.f32[0] * *(&a4 + 1)) - (v13.f32[1] * *&a4)) * ((v13.f32[0] * *(&a4 + 1)) - (v13.f32[1] * *&a4))) > ((v8.f32[1] * vaddv_f32(vmul_f32(v13, v13))) * 1.0e-10))
  {
    goto LABEL_28;
  }

  v23 = vmul_f32(*&a4, v13);
  v24 = vmul_f32(*&a6, vneg_f32(v13));
  v25 = vdiv_f32(vadd_f32(vzip1_s32(v24, v23), vzip2_s32(v24, v23)), v8);
  v26 = fabsf(vmul_f32(v25, v25).f32[0]);
  v12 = 0.0;
  v27 = fabsf(vmuls_lane_f32(v25.f32[1], v25, 1)) > v20 || v26 > v20;
  if (!v27)
  {
    v21 = 1;
LABEL_43:
    v11 = 0.0;
    goto LABEL_29;
  }

  if (v25.f32[1] < 0.0 && v25.f32[0] < 0.0)
  {
    goto LABEL_28;
  }

  v28 = vcgez_f32(v25);
  if (v28.i32[1] & v28.i32[0])
  {
    v21 = 2;
    goto LABEL_43;
  }

  if (v25.f32[1] >= 0.0)
  {
    v11 = v25.f32[1];
  }

  else
  {
    v11 = 0.0;
  }

  if (v25.f32[0] >= 0.0)
  {
    v12 = v25.f32[0];
  }

  v21 = 2;
LABEL_29:
  if (a1)
  {
    *a1 = v11;
  }

  if (a2)
  {
    *a2 = v12;
  }

  return v21;
}

uint64_t geom::intersect_ray_ray<double>(double *a1, double *a2, float64x2_t a3, float64x2_t a4, float64x2_t a5, float64x2_t a6)
{
  v6 = vpaddq_f64(vmulq_f64(a6, a6), vmulq_f64(a4, a4));
  v7 = vmovn_s64(vcgeq_f64(vdupq_n_s64(0x3CB0000000000000uLL), vabsq_f64(v6)));
  v8 = v7.i8[4];
  v9 = v7.i8[0];
  if (v7.i32[1] & v7.i32[0])
  {
    v10 = vsubq_f64(a3, a5);
    v11 = 0.0;
    v25 = sqrt(vaddvq_f64(vmulq_f64(v10, v10))) > 0.000001;
    v12 = 0.0;
    if (!v25)
    {
      goto LABEL_24;
    }

LABEL_28:
    v21 = 0;
    v12 = INFINITY;
    v11 = INFINITY;
    goto LABEL_29;
  }

  v13 = vsubq_f64(a5, a3);
  if (v7.i8[4])
  {
    v14 = v6.f64[0];
  }

  else
  {
    v14 = v6.f64[1];
  }

  if (v8)
  {
    v15 = -1;
  }

  else
  {
    v15 = 0;
  }

  if ((v8 | v9))
  {
    v16 = vbslq_s8(vdupq_n_s64(v15), a6, a4);
    if (v8)
    {
      v17 = -1;
    }

    else
    {
      v17 = 0;
    }

    v18 = vbslq_s8(vdupq_n_s64(v17), vnegq_f64(v13), v13);
    if ((-v16.f64[1] * v18.f64[0] + v16.f64[0] * v18.f64[1]) * (-v16.f64[1] * v18.f64[0] + v16.f64[0] * v18.f64[1]) > v14 * 1.0e-12)
    {
      goto LABEL_28;
    }

    v12 = vaddvq_f64(vmulq_f64(v16, v18)) / v14;
    if (v8)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = v12;
    }

    if (v9)
    {
      v12 = 0.0;
    }

LABEL_24:
    if (v11 >= 0.0 && v12 >= 0.0)
    {
      v21 = 1;
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v19 = -a4.f64[1] * a6.f64[0] + a4.f64[0] * a6.f64[1];
  v20 = v6.f64[1] * v6.f64[0] * 1.0e-12;
  if (fabs(v19 * v19) > v20)
  {
    v11 = (*v13.i64 * a6.f64[1] - *&v13.i64[1] * a6.f64[0]) / v19;
    v12 = (*v13.i64 * a4.f64[1] - *&v13.i64[1] * a4.f64[0]) / v19;
    goto LABEL_24;
  }

  if (fabs((*v13.i64 * a4.f64[1] - *&v13.i64[1] * a4.f64[0]) * (*v13.i64 * a4.f64[1] - *&v13.i64[1] * a4.f64[0])) > v6.f64[1] * vaddvq_f64(vmulq_f64(v13, v13)) * 1.0e-12)
  {
    goto LABEL_28;
  }

  v23 = vdivq_f64(vpaddq_f64(vmulq_f64(a6, vnegq_f64(v13)), vmulq_f64(a4, v13)), v6);
  v11 = v23.f64[1];
  v24 = fabs(vmulq_f64(v23, v23).f64[0]);
  v12 = 0.0;
  v25 = fabs(vmuld_lane_f64(v23.f64[1], v23, 1)) > v20 || v24 > v20;
  if (!v25)
  {
    v21 = 1;
LABEL_43:
    v11 = 0.0;
    goto LABEL_29;
  }

  if (v23.f64[1] < 0.0 && v23.f64[0] < 0.0)
  {
    goto LABEL_28;
  }

  v26 = vmovn_s64(vcgezq_f64(v23));
  if (v26.i32[1] & v26.i32[0])
  {
    v21 = 2;
    goto LABEL_43;
  }

  if (v23.f64[1] < 0.0)
  {
    v11 = 0.0;
  }

  if (v23.f64[0] >= 0.0)
  {
    v12 = v23.f64[0];
  }

  v21 = 2;
LABEL_29:
  if (a1)
  {
    *a1 = v11;
  }

  if (a2)
  {
    *a2 = v12;
  }

  return v21;
}

uint64_t geom::intersect_ray_line_segment<float>(float *a1, int *a2, float32x2_t a3, double a4, float32x2_t a5, float32x2_t a6, double a7, double a8)
{
  v8 = vsub_f32(a6, a5);
  v9 = vmul_f32(*&a4, *&a4);
  v10 = vaddv_f32(v9);
  v11 = vmul_f32(v8, v8);
  v12 = vaddv_f32(v11);
  *&a8 = fabsf(v10);
  v13 = fabsf(v12);
  if (*&a8 > 0.00000011921 || v13 > 0.00000011921)
  {
    v15 = vsub_f32(a5, a3);
    if (*&a8 > 0.00000011921)
    {
      v16 = v10;
    }

    else
    {
      v16 = v12;
    }

    if (*&a8 > 0.00000011921 && v13 > 0.00000011921)
    {
      v27 = vadd_f32(v9, vdup_lane_s32(v9, 1));
      v28 = (-*(&a4 + 1) * v8.f32[0]) + (*&a4 * v8.f32[1]);
      if (fabsf(v28 * v28) <= (1.0e-10 * vmul_f32(v27, vadd_f32(v11, vdup_lane_s32(v11, 1))).f32[0]))
      {
        v30 = vmul_f32(v15, v15);
        if (fabsf(((v15.f32[0] * *(&a4 + 1)) - (v15.f32[1] * *&a4)) * ((v15.f32[0] * *(&a4 + 1)) - (v15.f32[1] * *&a4))) > (1.0e-10 * vmul_f32(v27, vadd_f32(v30, vdup_lane_s32(v30, 1))).f32[0]))
        {
          goto LABEL_21;
        }

        v31 = vmul_f32(*&a4, v15);
        v32 = vdiv_f32(vadd_f32(v31, vdup_lane_s32(v31, 1)), v27);
        v33 = vmul_f32(*&a4, vadd_f32(v15, v8));
        v34 = vdiv_f32(vadd_f32(v33, vdup_lane_s32(v33, 1)), v27);
        if (v32.f32[0] < 0.0 && v34.f32[0] < 0.0)
        {
          goto LABEL_21;
        }

        v35 = vcgt_f32(v32, v34).u8[0];
        if (v35)
        {
          v22 = v34.f32[0];
        }

        else
        {
          v22 = v32.f32[0];
        }

        if (v35)
        {
          v21 = 0.0;
        }

        else
        {
          v21 = 1.0;
        }

        v24 = 2;
        goto LABEL_28;
      }

      v22 = ((v15.f32[0] * v8.f32[1]) - (v15.f32[1] * v8.f32[0])) / v28;
      v21 = ((v15.f32[0] * *(&a4 + 1)) - (v15.f32[1] * *&a4)) / v28;
    }

    else
    {
      v18 = vbsl_s8(vdup_lane_s32(vcge_f32(0x3400000034000000, *&a8), 0), v8, *&a4);
      v19 = vbsl_s8(vdup_lane_s32(vcge_f32(0x3400000034000000, *&a8), 0), vneg_f32(v15), v15);
      if ((((-v18.f32[1] * v19.f32[0]) + (v18.f32[0] * v19.f32[1])) * ((-v18.f32[1] * v19.f32[0]) + (v18.f32[0] * v19.f32[1]))) > (v16 * 1.0e-10))
      {
LABEL_21:
        v24 = 0;
        v25 = INFINITY;
        v26 = 2143289344;
        goto LABEL_29;
      }

      v20 = vaddv_f32(vmul_f32(v18, v19)) / v16;
      v21 = 0.0;
      if (*&a8 > 0.00000011921)
      {
        v22 = v20;
      }

      else
      {
        v22 = 0.0;
      }

      if (v13 > 0.00000011921)
      {
        v21 = v20;
      }
    }
  }

  else
  {
    v23 = vsub_f32(a3, a5);
    v22 = 0.0;
    v21 = 0.0;
    if (sqrtf(vaddv_f32(vmul_f32(v23, v23))) > 0.00001)
    {
      goto LABEL_21;
    }
  }

  v24 = 0;
  v25 = INFINITY;
  v26 = 2143289344;
  if (v22 >= 0.0 && v21 >= 0.0 && v21 <= 1.0)
  {
    v24 = 1;
LABEL_28:
    v25 = fmaxf(v22, 0.0);
    v26 = LODWORD(v21);
  }

LABEL_29:
  if (a1)
  {
    *a1 = v25;
  }

  if (a2)
  {
    *a2 = v26;
  }

  return v24;
}

uint64_t geom::intersect_ray_line_segment<double>(double *a1, uint64_t *a2, float64x2_t a3, float64x2_t a4, float64x2_t a5, float64x2_t a6, double a7, float64x2_t a8)
{
  v9 = vsubq_f64(a6, a5);
  v10 = vmulq_f64(a4, a4);
  v11 = vaddvq_f64(v10);
  v12 = vmulq_f64(v9, v9);
  v13 = vaddvq_f64(v12);
  a8.f64[0] = fabs(v11);
  v14 = fabs(v13);
  if (a8.f64[0] > 2.22044605e-16 || v14 > 2.22044605e-16)
  {
    v16 = vsubq_f64(a5, a3);
    v8.f64[0] = 2.22044605e-16;
    if (a8.f64[0] > 2.22044605e-16)
    {
      v17 = v11;
    }

    else
    {
      v17 = v13;
    }

    if (a8.f64[0] > 2.22044605e-16 && v14 > 2.22044605e-16)
    {
      v28 = vaddq_f64(v10, vdupq_laneq_s64(v10, 1));
      v29 = -a4.f64[1] * *v9.i64 + a4.f64[0] * *&v9.i64[1];
      if (fabs(v29 * v29) <= 1.0e-12 * vmulq_f64(v28, vaddq_f64(v12, vdupq_laneq_s64(v12, 1))).f64[0])
      {
        v31 = vmulq_f64(v16, v16);
        if (fabs((*v16.i64 * a4.f64[1] - *&v16.i64[1] * a4.f64[0]) * (*v16.i64 * a4.f64[1] - *&v16.i64[1] * a4.f64[0])) > 1.0e-12 * vmulq_f64(v28, vaddq_f64(v31, vdupq_laneq_s64(v31, 1))).f64[0])
        {
          goto LABEL_21;
        }

        v32 = vmulq_f64(a4, v16);
        v33 = vdivq_f64(vaddq_f64(v32, vdupq_laneq_s64(v32, 1)), v28);
        v34 = vmulq_f64(a4, vaddq_f64(v16, v9));
        v35 = vdivq_f64(vaddq_f64(v34, vdupq_laneq_s64(v34, 1)), v28);
        if (v33.f64[0] < 0.0 && v35.f64[0] < 0.0)
        {
          goto LABEL_21;
        }

        v36 = vmovn_s64(vcgtq_f64(v33, v35)).u8[0];
        if (v36)
        {
          v23 = v35.f64[0];
        }

        else
        {
          v23 = v33.f64[0];
        }

        if (v36)
        {
          v22 = 0.0;
        }

        else
        {
          v22 = 1.0;
        }

        v25 = 2;
        goto LABEL_28;
      }

      v23 = (*v16.i64 * *&v9.i64[1] - *&v16.i64[1] * *v9.i64) / v29;
      v22 = (*v16.i64 * a4.f64[1] - *&v16.i64[1] * a4.f64[0]) / v29;
    }

    else
    {
      v19 = vbslq_s8(vdupq_lane_s64(vcgeq_f64(v8, a8).i64[0], 0), v9, a4);
      v9.i64[0] = 0x3CB0000000000000;
      v20 = vbslq_s8(vdupq_lane_s64(vcgeq_f64(v9, a8).i64[0], 0), vnegq_f64(v16), v16);
      if ((-v19.f64[1] * v20.f64[0] + v19.f64[0] * v20.f64[1]) * (-v19.f64[1] * v20.f64[0] + v19.f64[0] * v20.f64[1]) > v17 * 1.0e-12)
      {
LABEL_21:
        v25 = 0;
        v26 = INFINITY;
        v27 = 0x7FF8000000000000;
        goto LABEL_29;
      }

      v21 = vaddvq_f64(vmulq_f64(v19, v20)) / v17;
      v22 = 0.0;
      if (a8.f64[0] > 2.22044605e-16)
      {
        v23 = v21;
      }

      else
      {
        v23 = 0.0;
      }

      if (v14 > 2.22044605e-16)
      {
        v22 = v21;
      }
    }
  }

  else
  {
    v24 = vsubq_f64(a3, a5);
    v23 = 0.0;
    v22 = 0.0;
    if (sqrt(vaddvq_f64(vmulq_f64(v24, v24))) > 0.000001)
    {
      goto LABEL_21;
    }
  }

  v25 = 0;
  v26 = INFINITY;
  v27 = 0x7FF8000000000000;
  if (v23 >= 0.0 && v22 >= 0.0 && v22 <= 1.0)
  {
    v25 = 1;
LABEL_28:
    v26 = fmax(v23, 0.0);
    v27 = *&v22;
  }

LABEL_29:
  if (a1)
  {
    *a1 = v26;
  }

  if (a2)
  {
    *a2 = v27;
  }

  return v25;
}