uint64_t AnimCodec::ArithmeticDecoder::decodeExpGolomb(unsigned int *a1, int a2, _WORD *a3)
{
  v6 = 0;
  if (AnimCodec::ArithmeticDecoder::decode(a1, a3))
  {
    v7 = a2;
    do
    {
      a2 = v7 + 1;
      v6 |= 1 << v7;
      v8 = AnimCodec::ArithmeticDecoder::decode(a1, a3);
      v7 = a2;
    }

    while (v8);
  }

  v9 = 0;
  if (a2)
  {
    v10 = a2 - 1;
    do
    {
      v12 = 0x8000;
      v9 |= AnimCodec::ArithmeticDecoder::decode(a1, &v12) << v10--;
    }

    while (v10 != -1);
  }

  return (v9 + v6);
}

uint64_t AnimCodec::ComputeAdjacencyInfo(AnimCodec *this, int *a2, const int *a3, unsigned int a4, int a5, std::vector<int> *a6, AnimCodec::StaticAdjacencyInformation *a7)
{
  result = 2;
  if (this && a2 && a3 >= 1)
  {
    AnimCodec::StaticAdjacencyInformation::resize(a6, a3);
    if (a5 >= 1)
    {
      v12 = a5;
      v13 = a2;
      do
      {
        v14 = *v13++;
        AnimCodec::StaticAdjacencyInformation::incrementNeighborCount(a6, v14, 2);
        --v12;
      }

      while (v12);
    }

    AnimCodec::StaticAdjacencyInformation::updateShift(a6);
    if (a4 < 1)
    {
      return 0;
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v27 = a2 - 1;
      v28 = a2;
      v26 = a2 + 1;
      v17 = a4;
      while (1)
      {
        v18 = *(this + v15);
        v19 = (v18 - 1);
        if (v18 < 1)
        {
          break;
        }

        if (v18 == 1)
        {
          v20 = v16;
        }

        else
        {
          v20 = (v18 + v16);
          if (v20 > a5)
          {
            return 2;
          }

          v21 = &v26[v16];
          do
          {
            v22 = *(v21 - 1);
            v23 = *v21;
            if (v22 != v23)
            {
              AnimCodec::StaticAdjacencyInformation::insertNeighbor(a6, *(v21 - 1), *v21);
              AnimCodec::StaticAdjacencyInformation::insertNeighbor(a6, v23, v22);
            }

            ++v21;
            --v19;
          }

          while (v19);
          v24 = v28[v16];
          v25 = v27[v20];
          if (v24 != v25)
          {
            AnimCodec::StaticAdjacencyInformation::insertNeighbor(a6, v28[v16], v27[v20]);
            AnimCodec::StaticAdjacencyInformation::insertNeighbor(a6, v25, v24);
          }
        }

        ++v15;
        v16 = v20;
        if (v15 == v17)
        {
          return 0;
        }
      }

      return 2;
    }
  }

  return result;
}

uint64_t AnimCodec::ComputeTraversalOrder(AnimCodec::StaticAdjacencyInformation *a1, std::vector<int> *this)
{
  v2 = *(a1 + 4) - *(a1 + 3);
  v3 = v2 >> 2;
  if ((v2 >> 2) < 1)
  {
    return 2;
  }

  v39 = 0u;
  memset(v38, 0, sizeof(v38));
  v6 = (v2 >> 2) & 0x7FFFFFFF;
  std::vector<float>::resize(this, v6);
  __p = 0;
  v36 = 0;
  v37 = 0;
  std::vector<BOOL>::resize(&__p, v6, 0);
  if (v36 >= 1)
  {
    v40 = __p;
    v41 = 0;
    std::__fill_n_BOOL[abi:nn200100]<true,std::vector<BOOL>>(&v40, v36);
  }

  v7 = 0;
  v8 = 0;
  LODWORD(v40) = 0;
  while (1)
  {
    v9 = v8 >> 6;
    v10 = *(__p + v9);
    if ((v10 & (1 << v8)) != 0)
    {
      *(__p + v9) = v10 & ~(1 << v8);
      this->__begin_[v7] = v8;
      std::deque<int>::push_back(v38, &v40);
      v11 = *(&v39 + 1);
      ++v7;
      if (*(&v39 + 1))
      {
        break;
      }
    }

LABEL_19:
    v8 = v40 + 1;
    LODWORD(v40) = v8;
    if (v8 >= v3)
    {
      v20 = 0;
      do
      {
        v21 = this->__begin_[v20];
        *(__p + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        started = AnimCodec::StaticAdjacencyInformation::neighborsStartIndex(a1, v21);
        v23 = AnimCodec::StaticAdjacencyInformation::neighborsEndIndex(a1, v21);
        v24 = *(a1 + 6);
        if (started >= v23)
        {
          v25 = started;
          v26 = v23;
        }

        else
        {
          v25 = started;
          v26 = v23;
          v27 = __p;
          v28 = (v24 + 4 * started);
          v29 = v23 - started;
          do
          {
            if (((*&v27[(*v28 >> 3) & 0x1FFFFFFFFFFFFFF8] >> *v28) & 1) == 0)
            {
              *v28 = -1;
            }

            ++v28;
            --v29;
          }

          while (v29);
        }

        v30 = 126 - 2 * __clz((4 * v26 - 4 * v25) >> 2);
        if (4 * v26 == 4 * v25)
        {
          v31 = 0;
        }

        else
        {
          v31 = v30;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::greater<int> &,int *,true>(v24 + 4 * v25, (v24 + 4 * v26), &v40, v31, 1);
        ++v20;
      }

      while (v20 != v6);
      v32 = 2 * (v7 != v3);
      goto LABEL_34;
    }
  }

  while (1)
  {
    v12 = *(*(*(&v38[0] + 1) + ((v39 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v39 & 0x3FF));
    *&v39 = v39 + 1;
    *(&v39 + 1) = v11 - 1;
    if (v39 >= 0x800)
    {
      operator delete(**(&v38[0] + 1));
      *(&v38[0] + 1) += 8;
      *&v39 = v39 - 1024;
    }

    v13 = AnimCodec::StaticAdjacencyInformation::neighborsStartIndex(a1, v12);
    v14 = AnimCodec::StaticAdjacencyInformation::neighborsEndIndex(a1, v12);
    v15 = v14 - v13;
    if (v14 > v13)
    {
      break;
    }

LABEL_18:
    v11 = *(&v39 + 1);
    if (!*(&v39 + 1))
    {
      goto LABEL_19;
    }
  }

  v16 = 4 * v13;
  while (1)
  {
    v17 = *(*(a1 + 6) + v16);
    v34 = v17;
    if (v17 >= v3 || v17 == v12)
    {
      break;
    }

    v19 = *(__p + (v17 >> 6));
    if ((v19 & (1 << v17)) != 0)
    {
      *(__p + (v17 >> 6)) = v19 & ~(1 << v17);
      this->__begin_[v7] = v17;
      std::deque<int>::push_back(v38, &v34);
      ++v7;
    }

    v16 += 4;
    if (!--v15)
    {
      goto LABEL_18;
    }
  }

  v32 = 2;
LABEL_34:
  if (__p)
  {
    operator delete(__p);
  }

  std::deque<int>::~deque[abi:nn200100](v38);
  return v32;
}

void AnimCodec::StaticAdjacencyInformation::resize(std::vector<int> *this, int a2)
{
  std::vector<float>::resize(this, a2 + 1);
  std::vector<float>::resize(this + 1, a2);
  v4 = this->__end_ - this->__begin_;
  if (v4 >= 1)
  {
    bzero(this->__begin_, v4);
  }

  begin = this[1].__begin_;
  v6 = this[1].__end_ - begin;
  if (v6 >= 1)
  {

    bzero(begin, v6);
  }
}

void *AnimCodec::StaticAdjacencyInformation::incrementNeighborCount(void *this, uint64_t a2, int a3)
{
  if (((this[4] - this[3]) >> 2) <= a2)
  {
    AnimCodec::StaticAdjacencyInformation::incrementNeighborCount();
  }

  *(*this + 4 * a2 + 4) += a3;
  return this;
}

void AnimCodec::StaticAdjacencyInformation::updateShift(std::vector<int> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  v3 = end - this->__begin_;
  if ((v3 >> 2) >= 2)
  {
    v4 = (v3 >> 2) & 0x7FFFFFFF;
    v7 = *begin;
    v5 = begin + 1;
    v6 = v7;
    v8 = v4 - 1;
    do
    {
      v6 += *v5;
      *v5++ = v6;
      --v8;
    }

    while (v8);
  }

  std::vector<float>::resize(this + 2, *(end - 1));
}

AnimCodec::StaticAdjacencyInformation *AnimCodec::StaticAdjacencyInformation::insertNeighbor(AnimCodec::StaticAdjacencyInformation *this, uint64_t a2, int a3)
{
  v3 = *(*(this + 3) + 4 * a2);
  if (v3 < 1)
  {
    return AnimCodec::StaticAdjacencyInformation::addNeighbor(this, a2, a3);
  }

  v4 = (*(this + 6) + 4 * *(*this + 4 * a2));
  while (1)
  {
    v5 = *v4++;
    if (v5 == a3)
    {
      break;
    }

    if (!--v3)
    {
      return AnimCodec::StaticAdjacencyInformation::addNeighbor(this, a2, a3);
    }
  }

  return this;
}

uint64_t AnimCodec::StaticAdjacencyInformation::addNeighbor(AnimCodec::StaticAdjacencyInformation *this, uint64_t a2, int a3)
{
  v4 = a2;
  v6 = *(*(this + 3) + 4 * a2);
  result = AnimCodec::StaticAdjacencyInformation::maxNeighborCount(this, a2);
  if (v6 >= result)
  {
    AnimCodec::StaticAdjacencyInformation::addNeighbor();
  }

  v8 = *(*this + 4 * v4);
  v9 = *(this + 3);
  v10 = *(v9 + 4 * v4);
  *(v9 + 4 * v4) = v10 + 1;
  *(*(this + 6) + 4 * (v10 + v8)) = a3;
  return result;
}

uint64_t AnimCodec::StaticAdjacencyInformation::maxNeighborCount(AnimCodec::StaticAdjacencyInformation *this, uint64_t a2)
{
  if (((*(this + 4) - *(this + 3)) >> 2) <= a2)
  {
    AnimCodec::StaticAdjacencyInformation::maxNeighborCount();
  }

  return (*(*this + 4 * a2 + 4) - *(*this + 4 * a2));
}

void std::vector<BOOL>::resize(void *result, unint64_t a2, int a3)
{
  v4 = result[1];
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    result[1] = a2;
    return;
  }

  v7 = result[2];
  v8 = v7 << 6;
  if (v7 << 6 < v5 || v4 > (v7 << 6) - v5)
  {
    v20 = 0;
    v21 = 0uLL;
    if ((a2 & 0x8000000000000000) != 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v7 << 7;
    if (v10 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
    {
      v10 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    if (v8 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(&v20, v11);
    v12 = *result;
    v13 = result[1];
    *&v21 = v13 + v5;
    v22 = v20;
    v23 = 0;
    std::__copy_aligned[abi:nn200100]<std::vector<BOOL>,true>(&v18, v12, 0, &v12[v13 >> 6], v13 & 0x3F, &v22);
    v14 = v18;
    LODWORD(v15) = v19;
    v16 = *result;
    *result = v20;
    v20 = v16;
    v17 = *(result + 1);
    *(result + 1) = v21;
    v21 = v17;
    if (v16)
    {
      operator delete(v16);
    }

    if (!a3)
    {
      goto LABEL_19;
    }

LABEL_16:
    v20 = v14;
    LODWORD(v21) = v15;
    std::__fill_n_BOOL[abi:nn200100]<true,std::vector<BOOL>>(&v20, v5);
    return;
  }

  v14 = (*result + 8 * (v4 >> 6));
  v15 = result[1] & 0x3FLL;
  result[1] = a2;
  if (a3)
  {
    goto LABEL_16;
  }

LABEL_19:
  v20 = v14;
  LODWORD(v21) = v15;
  std::__fill_n_BOOL[abi:nn200100]<false,std::vector<BOOL>>(&v20, v5);
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

void std::deque<int>::push_back(unint64_t *result, _DWORD *a2)
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
    std::deque<int>::__add_back_capacity(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v8 & 0x3FF)) = *a2;
  result[5] = v7 + 1;
}

void std::deque<int>::__add_back_capacity(unint64_t *a1)
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
    std::__allocate_at_least[abi:nn200100]<std::allocator<int *>>(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<int *>::emplace_back<int *&>(a1, &v9);
}

void std::__split_buffer<int *>::emplace_back<int *&>(unint64_t *a1, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<int *>>(a1, v11);
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

void std::__split_buffer<int *>::emplace_front<int *>(const void **a1, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<int *>>(a1, v9);
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

void std::__split_buffer<int *>::emplace_back<int *>(unint64_t *a1, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<int *>>(a1[4], v11);
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

void std::__split_buffer<int *>::emplace_front<int *&>(const void **a1, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<int *>>(a1[4], v9);
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

void std::__allocate_at_least[abi:nn200100]<std::allocator<int *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::greater<int> &,int *,true>(uint64_t result, int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:
          v59 = v9[1];
          v60 = *(a2 - 1);
          if (v59 <= v60)
          {
            v61 = *(a2 - 1);
          }

          else
          {
            v61 = v9[1];
          }

          if (v59 >= v60)
          {
            v59 = *(a2 - 1);
          }

          *(a2 - 1) = v59;
          v9[1] = v61;
          v62 = *(a2 - 1);
          if (v62 <= *v9)
          {
            v63 = *v9;
          }

          else
          {
            v63 = *(a2 - 1);
          }

          if (v62 >= *v9)
          {
            v62 = *v9;
          }

          *(a2 - 1) = v62;
          v65 = *v9;
          v64 = v9[1];
          if (v63 <= v64)
          {
            v65 = v9[1];
          }

          if (v63 < v64)
          {
            v64 = v63;
          }

          *v9 = v65;
          v9[1] = v64;
          return result;
        case 4:
          v89 = v9[1];
          v88 = v9[2];
          if (*v9 <= v88)
          {
            v90 = v9[2];
          }

          else
          {
            v90 = *v9;
          }

          if (*v9 < v88)
          {
            v88 = *v9;
          }

          v9[2] = v88;
          *v9 = v90;
          v91 = *(a2 - 1);
          if (v89 <= v91)
          {
            v92 = *(a2 - 1);
          }

          else
          {
            v92 = v89;
          }

          if (v89 < v91)
          {
            v91 = v89;
          }

          *(a2 - 1) = v91;
          v93 = *v9;
          if (*v9 <= v92)
          {
            v94 = v92;
          }

          else
          {
            v94 = *v9;
          }

          if (v93 >= v92)
          {
            v93 = v92;
          }

          *v9 = v94;
          v9[1] = v93;
          v95 = v9[2];
          v96 = *(a2 - 1);
          if (v95 <= v96)
          {
            v97 = *(a2 - 1);
          }

          else
          {
            v97 = v9[2];
          }

          if (v95 >= v96)
          {
            v95 = *(a2 - 1);
          }

          *(a2 - 1) = v95;
          v98 = v9[1];
          if (v98 <= v97)
          {
            v99 = v97;
          }

          else
          {
            v99 = v9[1];
          }

          if (v98 >= v97)
          {
            v98 = v97;
          }

          v9[1] = v99;
          v9[2] = v98;
          return result;
        case 5:
          v66 = *v9;
          v67 = v9[1];
          if (*v9 <= v67)
          {
            v68 = v9[1];
          }

          else
          {
            v68 = *v9;
          }

          if (v66 >= v67)
          {
            v66 = v9[1];
          }

          *v9 = v68;
          v9[1] = v66;
          v69 = v9[3];
          v70 = *(a2 - 1);
          if (v69 <= v70)
          {
            v71 = *(a2 - 1);
          }

          else
          {
            v71 = v9[3];
          }

          if (v69 >= v70)
          {
            v69 = *(a2 - 1);
          }

          *(a2 - 1) = v69;
          v9[3] = v71;
          v72 = *(a2 - 1);
          v73 = v9[2];
          if (v72 <= v73)
          {
            v74 = v9[2];
          }

          else
          {
            v74 = *(a2 - 1);
          }

          if (v72 >= v73)
          {
            v72 = v9[2];
          }

          *(a2 - 1) = v72;
          v76 = v9[2];
          v75 = v9[3];
          v77 = v9[1];
          if (v74 <= v75)
          {
            v76 = v9[3];
          }

          if (v74 < v75)
          {
            v75 = v74;
          }

          v9[2] = v76;
          v9[3] = v75;
          v78 = *(a2 - 1);
          if (v77 <= v78)
          {
            v79 = *(a2 - 1);
          }

          else
          {
            v79 = v77;
          }

          if (v77 < v78)
          {
            v78 = v77;
          }

          *(a2 - 1) = v78;
          v80 = *v9;
          v82 = v9[2];
          v81 = v9[3];
          if (v81 <= *v9)
          {
            v83 = *v9;
          }

          else
          {
            v83 = v9[3];
          }

          if (v81 >= v80)
          {
            v81 = *v9;
          }

          if (v83 <= v82)
          {
            v80 = v9[2];
          }

          if (v83 < v82)
          {
            v82 = v83;
          }

          if (v81 <= v79)
          {
            v84 = v79;
          }

          else
          {
            v84 = v81;
          }

          if (v81 >= v79)
          {
            v81 = v79;
          }

          if (v84 <= v82)
          {
            v79 = v82;
          }

          *v9 = v80;
          v9[1] = v79;
          if (v84 >= v82)
          {
            v85 = v82;
          }

          else
          {
            v85 = v84;
          }

          v9[2] = v85;
          v9[3] = v81;
          return result;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v86 = *(a2 - 1);
        v87 = *v9;
        if (v86 > *v9)
        {
          *v9 = v86;
          *(a2 - 1) = v87;
        }

        return result;
      }
    }

    if (v12 <= 23)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *,int *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = *(a2 - 1);
    if (v12 < 0x81)
    {
      v48 = *v9;
      if (*v9 <= v14)
      {
        v49 = *(a2 - 1);
      }

      else
      {
        v49 = *v9;
      }

      if (v48 >= v14)
      {
        v48 = *(a2 - 1);
      }

      *(a2 - 1) = v48;
      *v9 = v49;
      v50 = *(a2 - 1);
      v51 = v9[v13];
      if (v50 <= v51)
      {
        v52 = v9[v13];
      }

      else
      {
        v52 = *(a2 - 1);
      }

      if (v50 >= v51)
      {
        v50 = v9[v13];
      }

      *(a2 - 1) = v50;
      v53 = *v9;
      v54 = v52 <= *v9;
      if (v52 > *v9)
      {
        v53 = v9[v13];
      }

      v9[v13] = v53;
      v55 = *v9;
      if (v54)
      {
        v55 = v52;
      }

      *v9 = v55;
      if (a5)
      {
        goto LABEL_94;
      }
    }

    else
    {
      v15 = &v9[v13];
      v16 = *v15;
      if (*v15 <= v14)
      {
        v17 = *(a2 - 1);
      }

      else
      {
        v17 = *v15;
      }

      if (v16 >= v14)
      {
        v16 = *(a2 - 1);
      }

      *(a2 - 1) = v16;
      *v15 = v17;
      v18 = *(a2 - 1);
      if (v18 <= *v9)
      {
        v19 = *v9;
      }

      else
      {
        v19 = *(a2 - 1);
      }

      if (v18 >= *v9)
      {
        v18 = *v9;
      }

      *(a2 - 1) = v18;
      v20 = *v15;
      v21 = v19 <= *v15;
      if (v19 > *v15)
      {
        v20 = *v9;
      }

      *v9 = v20;
      v22 = *v15;
      if (v21)
      {
        v22 = v19;
      }

      *v15 = v22;
      v23 = *(v15 - 1);
      v24 = *(a2 - 2);
      if (v23 <= v24)
      {
        v25 = *(a2 - 2);
      }

      else
      {
        v25 = *(v15 - 1);
      }

      if (v23 >= v24)
      {
        v23 = *(a2 - 2);
      }

      *(a2 - 2) = v23;
      *(v15 - 1) = v25;
      v26 = *(a2 - 2);
      v27 = v9[1];
      if (v26 <= v27)
      {
        v28 = v9[1];
      }

      else
      {
        v28 = *(a2 - 2);
      }

      if (v26 >= v27)
      {
        v26 = v9[1];
      }

      *(a2 - 2) = v26;
      v29 = *(v15 - 1);
      v30 = v28 <= v29;
      if (v28 > v29)
      {
        v29 = v9[1];
      }

      v9[1] = v29;
      v31 = *(v15 - 1);
      if (v30)
      {
        v31 = v28;
      }

      *(v15 - 1) = v31;
      v32 = v15[1];
      v33 = *(a2 - 3);
      if (v32 <= v33)
      {
        v34 = *(a2 - 3);
      }

      else
      {
        v34 = v15[1];
      }

      if (v32 >= v33)
      {
        v32 = *(a2 - 3);
      }

      *(a2 - 3) = v32;
      v15[1] = v34;
      v35 = *(a2 - 3);
      v36 = v9[2];
      if (v35 <= v36)
      {
        v37 = v9[2];
      }

      else
      {
        v37 = *(a2 - 3);
      }

      if (v35 >= v36)
      {
        v35 = v9[2];
      }

      *(a2 - 3) = v35;
      v38 = v15[1];
      v39 = v37 <= v38;
      if (v37 > v38)
      {
        v38 = v9[2];
      }

      v9[2] = v38;
      v41 = *v15;
      v40 = v15[1];
      if (v39)
      {
        v40 = v37;
      }

      if (v41 <= v40)
      {
        v42 = v40;
      }

      else
      {
        v42 = *v15;
      }

      if (v41 < v40)
      {
        v40 = *v15;
      }

      v43 = *(v15 - 1);
      if (v40 <= v43)
      {
        v44 = *(v15 - 1);
      }

      else
      {
        v44 = v40;
      }

      if (v40 >= v43)
      {
        v40 = *(v15 - 1);
      }

      v15[1] = v40;
      if (v43 <= v42)
      {
        v45 = v42;
      }

      else
      {
        v45 = v43;
      }

      if (v43 <= v42)
      {
        v46 = v44;
      }

      else
      {
        v46 = v42;
      }

      *(v15 - 1) = v45;
      *v15 = v46;
      v47 = *v9;
      *v9 = v46;
      *v15 = v47;
      if (a5)
      {
        goto LABEL_94;
      }
    }

    if (*(v9 - 1) <= *v9)
    {
      result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,int *,std::greater<int> &>(v9, a2);
      v9 = result;
      goto LABEL_99;
    }

LABEL_94:
    v56 = std::__bitset_partition[abi:nn200100]<std::_ClassicAlgPolicy,int *,std::greater<int> &>(v9, a2);
    if ((v57 & 1) == 0)
    {
      goto LABEL_97;
    }

    v58 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *>(v9, v56);
    v9 = v56 + 1;
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *>(v56 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v56;
      if (v58)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v58)
    {
LABEL_97:
      result = std::__introsort<std::_ClassicAlgPolicy,std::greater<int> &,int *,true>(v8, v56, a3, -v11, a5 & 1);
      v9 = v56 + 1;
LABEL_99:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v100 = v9 + 1;
  v102 = v9 == a2 || v100 == a2;
  if (a5)
  {
    if (!v102)
    {
      v103 = 0;
      v104 = v9;
      do
      {
        v106 = *v104;
        v105 = v104[1];
        v104 = v100;
        if (v105 > v106)
        {
          v107 = v103;
          while (1)
          {
            *(v9 + v107 + 4) = v106;
            if (!v107)
            {
              break;
            }

            v106 = *(v9 + v107 - 4);
            v107 -= 4;
            if (v105 <= v106)
            {
              v108 = (v9 + v107 + 4);
              goto LABEL_204;
            }
          }

          v108 = v9;
LABEL_204:
          *v108 = v105;
        }

        v100 = v104 + 1;
        v103 += 4;
      }

      while (v104 + 1 != a2);
    }
  }

  else if (!v102)
  {
    do
    {
      v110 = *v8;
      v109 = v8[1];
      v8 = v100;
      if (v109 > v110)
      {
        do
        {
          *v100 = v110;
          v110 = *(v100 - 2);
          --v100;
        }

        while (v109 > v110);
        *v100 = v109;
      }

      v100 = v8 + 1;
    }

    while (v8 + 1 != a2);
  }

  return result;
}

int *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,int *,std::greater<int> &>(int *a1, int *a2)
{
  v2 = *a1;
  if (*a1 <= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 <= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 <= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 > v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 <= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 > v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

signed int *std::__bitset_partition[abi:nn200100]<std::_ClassicAlgPolicy,int *,std::greater<int> &>(signed int *a1, signed int *a2)
{
  v2 = *a1;
  if (*a1 <= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 <= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 <= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 > v6);
  }

  v7 = v3;
  if (v3 < a2)
  {
    v8 = *v3;
    *v3 = *a2;
    v7 = v3 + 1;
    *a2 = v8;
  }

  v9 = a2 - 1;
  v10 = (a2 - 1) - v7;
  if (v10 < 505)
  {
    v11 = 0;
    v41 = v10 >> 2;
    v39 = 1;
    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0;
  v13 = vdupq_n_s32(v2);
  v14 = vdupq_n_s64(1uLL);
  v15 = vdupq_n_s64(4uLL);
  do
  {
    if (v12)
    {
      if (v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 0uLL;
      v17 = xmmword_21C27F640;
      v18 = xmmword_21C27F630;
      v19 = 0uLL;
      do
      {
        v20 = vcgeq_s32(v13, *(v7 + v12));
        v21.i64[0] = v20.u32[2];
        v21.i64[1] = v20.u32[3];
        v22 = vandq_s8(v21, v14);
        v21.i64[0] = v20.u32[0];
        v21.i64[1] = v20.u32[1];
        v19 = vorrq_s8(vshlq_u64(v22, v18), v19);
        v16 = vorrq_s8(vshlq_u64(vandq_s8(v21, v14), v17), v16);
        v18 = vaddq_s64(v18, v15);
        v17 = vaddq_s64(v17, v15);
        v12 += 16;
      }

      while (v12 != 256);
      v23 = vorrq_s8(v16, v19);
      v12 = vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
      if (v11)
      {
LABEL_16:
        if (!v12)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }
    }

    v24 = 0uLL;
    v25 = 0x3FFFFFFFFFFFFFFDLL;
    v26 = xmmword_21C27F640;
    v27 = xmmword_21C27F630;
    v28 = 0uLL;
    do
    {
      v29 = vrev64q_s32(*&v9[v25]);
      v30 = vcgtq_s32(vextq_s8(v29, v29, 8uLL), v13);
      v31.i64[0] = v30.u32[2];
      v31.i64[1] = v30.u32[3];
      v32 = vdupq_n_s64(1uLL);
      v33 = vandq_s8(v31, v32);
      v31.i64[0] = v30.u32[0];
      v31.i64[1] = v30.u32[1];
      v28 = vorrq_s8(vshlq_u64(v33, v27), v28);
      v24 = vorrq_s8(vshlq_u64(vandq_s8(v31, v32), v26), v24);
      v34 = vdupq_n_s64(4uLL);
      v27 = vaddq_s64(v27, v34);
      v26 = vaddq_s64(v26, v34);
      v25 -= 4;
    }

    while (v25 != -67);
    v35 = vorrq_s8(v24, v28);
    v11 = vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
    if (!v12)
    {
      goto LABEL_27;
    }

LABEL_24:
    if (v11)
    {
      do
      {
        v36 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v37 = &v9[-__clz(__rbit64(v11))];
        v38 = v7[v36];
        v7[v36] = *v37;
        *v37 = v38;
        v11 &= v11 - 1;
      }

      while (v11 && v12);
    }

LABEL_27:
    v7 += 64 * (v12 == 0);
    v39 = v11 == 0;
    if (v11)
    {
      v40 = 0;
    }

    else
    {
      v40 = -256;
    }

    v9 = (v9 + v40);
  }

  while (v9 - v7 > 504);
  v41 = v9 - v7;
  if (!(v12 | v11))
  {
LABEL_36:
    v45 = v41 + 1;
    v42 = (v41 + 1) / 2;
    v43 = v45 - v45 / 2;
    goto LABEL_37;
  }

  v42 = v41 - 63;
  v43 = 64;
  v44 = 64;
  if (v12)
  {
    if (v11)
    {
      goto LABEL_46;
    }

LABEL_43:
    if (v42 >= 1)
    {
      v47 = 0;
      v11 = 0;
      v48 = v9;
      do
      {
        v49 = *v48--;
        v11 |= (v49 > v2) << v47++;
      }

      while (v42 != v47);
      goto LABEL_46;
    }

    if (v12)
    {
      v57 = 0;
    }

    else
    {
      v57 = v44;
    }

    v53 = &v7[v57];
LABEL_62:
    if (v12)
    {
      v9 -= v42;
      goto LABEL_64;
    }

    goto LABEL_68;
  }

LABEL_37:
  if (v42 < 1)
  {
    v12 = 0;
  }

  else
  {
    v46 = 0;
    v12 = 0;
    do
    {
      v12 |= (v7[v46] <= v2) << v46;
      ++v46;
    }

    while (v42 != v46);
  }

  v44 = v42;
  v42 = v43;
  if (v39)
  {
    goto LABEL_43;
  }

LABEL_46:
  if (v12 && v11)
  {
    do
    {
      v50 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v51 = &v9[-__clz(__rbit64(v11))];
      v52 = v7[v50];
      v7[v50] = *v51;
      *v51 = v52;
      v11 &= v11 - 1;
    }

    while (v11 && v12);
  }

  if (v12)
  {
    v44 = 0;
  }

  v53 = &v7[v44];
  if (!v11)
  {
    goto LABEL_62;
  }

  if (v12)
  {
    do
    {
LABEL_64:
      v58 = __clz(v12) ^ 0x3F;
      v59 = &v53[v58];
      if (v9 != v59)
      {
        v60 = *v59;
        *v59 = *v9;
        *v9 = v60;
      }

      v12 &= ~(-1 << v58);
      --v9;
    }

    while (v12);
    v53 = v9 + 1;
  }

  else
  {
    do
    {
      v54 = __clz(v11) ^ 0x3F;
      v55 = &v9[-v54];
      if (v53 != v55)
      {
        v56 = *v55;
        *v55 = *v53;
        *v53 = v56;
      }

      v11 &= ~(-1 << v54);
      ++v53;
    }

    while (v11);
  }

LABEL_68:
  v61 = v53 - 1;
  if (v53 - 1 != a1)
  {
    *a1 = *v61;
  }

  *v61 = v2;
  return v53 - 1;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *>(int *a1, int *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v25 = a1[1];
        v26 = *(a2 - 1);
        if (v25 <= v26)
        {
          v27 = *(a2 - 1);
        }

        else
        {
          v27 = a1[1];
        }

        if (v25 >= v26)
        {
          v25 = *(a2 - 1);
        }

        *(a2 - 1) = v25;
        a1[1] = v27;
        v28 = *(a2 - 1);
        if (v28 <= *a1)
        {
          v29 = *a1;
        }

        else
        {
          v29 = *(a2 - 1);
        }

        if (v28 >= *a1)
        {
          v28 = *a1;
        }

        *(a2 - 1) = v28;
        v31 = *a1;
        v30 = a1[1];
        if (v29 <= v30)
        {
          v31 = a1[1];
        }

        if (v29 < v30)
        {
          v30 = v29;
        }

        *a1 = v31;
        a1[1] = v30;
        return 1;
      case 4:
        v48 = a1[1];
        v47 = a1[2];
        if (*a1 <= v47)
        {
          v49 = a1[2];
        }

        else
        {
          v49 = *a1;
        }

        if (*a1 < v47)
        {
          v47 = *a1;
        }

        a1[2] = v47;
        *a1 = v49;
        v50 = *(a2 - 1);
        if (v48 <= v50)
        {
          v51 = *(a2 - 1);
        }

        else
        {
          v51 = v48;
        }

        if (v48 < v50)
        {
          v50 = v48;
        }

        *(a2 - 1) = v50;
        v52 = *a1;
        if (*a1 <= v51)
        {
          v53 = v51;
        }

        else
        {
          v53 = *a1;
        }

        if (v52 >= v51)
        {
          v52 = v51;
        }

        *a1 = v53;
        a1[1] = v52;
        v54 = a1[2];
        v55 = *(a2 - 1);
        if (v54 <= v55)
        {
          v56 = *(a2 - 1);
        }

        else
        {
          v56 = a1[2];
        }

        if (v54 >= v55)
        {
          v54 = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = a1[1];
        if (v57 <= v56)
        {
          v58 = v56;
        }

        else
        {
          v58 = a1[1];
        }

        if (v57 >= v56)
        {
          v57 = v56;
        }

        a1[1] = v58;
        a1[2] = v57;
        return 1;
      case 5:
        v5 = *a1;
        v6 = a1[1];
        if (*a1 <= v6)
        {
          v7 = a1[1];
        }

        else
        {
          v7 = *a1;
        }

        if (v5 >= v6)
        {
          v5 = a1[1];
        }

        *a1 = v7;
        a1[1] = v5;
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 <= v9)
        {
          v10 = *(a2 - 1);
        }

        else
        {
          v10 = a1[3];
        }

        if (v8 >= v9)
        {
          v8 = *(a2 - 1);
        }

        *(a2 - 1) = v8;
        a1[3] = v10;
        v11 = *(a2 - 1);
        v12 = a1[2];
        if (v11 <= v12)
        {
          v13 = a1[2];
        }

        else
        {
          v13 = *(a2 - 1);
        }

        if (v11 >= v12)
        {
          v11 = a1[2];
        }

        *(a2 - 1) = v11;
        v15 = a1[2];
        v14 = a1[3];
        v16 = a1[1];
        if (v13 <= v14)
        {
          v15 = a1[3];
        }

        if (v13 < v14)
        {
          v14 = v13;
        }

        a1[2] = v15;
        a1[3] = v14;
        v17 = *(a2 - 1);
        if (v16 <= v17)
        {
          v18 = *(a2 - 1);
        }

        else
        {
          v18 = v16;
        }

        if (v16 < v17)
        {
          v17 = v16;
        }

        *(a2 - 1) = v17;
        v19 = *a1;
        v21 = a1[2];
        v20 = a1[3];
        if (v20 <= *a1)
        {
          v22 = *a1;
        }

        else
        {
          v22 = a1[3];
        }

        if (v20 >= v19)
        {
          v20 = *a1;
        }

        if (v22 <= v21)
        {
          v19 = a1[2];
        }

        if (v22 < v21)
        {
          v21 = v22;
        }

        if (v20 <= v18)
        {
          v23 = v18;
        }

        else
        {
          v23 = v20;
        }

        if (v20 >= v18)
        {
          v20 = v18;
        }

        if (v23 <= v21)
        {
          v18 = v21;
        }

        *a1 = v19;
        a1[1] = v18;
        if (v23 >= v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v23;
        }

        a1[2] = v24;
        a1[3] = v20;
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      if (v3 > *a1)
      {
        *a1 = v3;
        *(a2 - 1) = v4;
      }

      return 1;
    }
  }

  v33 = a1 + 2;
  v32 = a1[2];
  v35 = *a1;
  v34 = a1[1];
  if (v34 <= v32)
  {
    v36 = a1[2];
  }

  else
  {
    v36 = a1[1];
  }

  if (v34 < v32)
  {
    v32 = a1[1];
  }

  if (v32 <= v35)
  {
    v37 = *a1;
  }

  else
  {
    v37 = v32;
  }

  if (v32 >= v35)
  {
    v32 = *a1;
  }

  *v33 = v32;
  if (v35 <= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if (v35 > v36)
  {
    v37 = v36;
  }

  *a1 = v38;
  a1[1] = v37;
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 12; ; i += 4)
  {
    v42 = *v39;
    v43 = *v33;
    if (*v39 > v43)
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v43;
        v45 = v44 - 4;
        if (v44 == 4)
        {
          break;
        }

        v43 = *(a1 + v44 - 8);
        v44 -= 4;
        if (v42 <= v43)
        {
          v46 = (a1 + v45);
          goto LABEL_91;
        }
      }

      v46 = a1;
LABEL_91:
      *v46 = v42;
      if (++v40 == 8)
      {
        break;
      }
    }

    v33 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}

int *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *,int *>(int *a1, int *a2, int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        if (*v12 > *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = &v16[v14];
          v18 = v17 + 1;
          v19 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v20 = *v18;
            v14 = v19;
          }

          else
          {
            v22 = v17[2];
            v21 = v17 + 2;
            v20 = v22;
            v23 = *(v21 - 1);
            v24 = v23 <= v22;
            if (v23 < v22)
            {
              v20 = *(v21 - 1);
            }

            if (v24)
            {
              v14 = v19;
            }

            else
            {
              v18 = v21;
            }
          }

          *v16 = v20;
          v16 = v18;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v18 == --v6)
        {
          *v18 = v15;
        }

        else
        {
          *v18 = *v6;
          *v6 = v15;
          v25 = (v18 - a1 + 4) >> 2;
          v24 = v25 < 2;
          v26 = v25 - 2;
          if (!v24)
          {
            v27 = v26 >> 1;
            v28 = &a1[v27];
            v29 = *v28;
            v30 = *v18;
            if (*v28 > *v18)
            {
              do
              {
                *v18 = v29;
                v18 = v28;
                if (!v27)
                {
                  break;
                }

                v27 = (v27 - 1) >> 1;
                v28 = &a1[v27];
                v29 = *v28;
              }

              while (*v28 > v30);
              *v18 = v30;
            }
          }
        }

        v24 = v8-- <= 2;
      }

      while (!v24);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *>(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 2)
    {
      v6 = v4 >> 1;
      v7 = (v4 >> 1) + 1;
      v8 = (result + 4 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        v11 = v8[1];
        if (*v8 >= v11)
        {
          v10 = v8[1];
        }

        if (*v8 > v11)
        {
          ++v8;
          v7 = v9;
        }
      }

      v12 = *a4;
      if (v10 <= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v13 = (2 * v7) | 1;
          v8 = (result + 4 * v13);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v10 = *v8;
            v7 = v13;
          }

          else
          {
            v10 = *v8;
            v14 = v8[1];
            if (*v8 >= v14)
            {
              v10 = v8[1];
            }

            if (*v8 <= v14)
            {
              v7 = v13;
            }

            else
            {
              ++v8;
            }
          }
        }

        while (v10 <= v12);
        *a4 = v12;
      }
    }
  }

  return result;
}

uint64_t std::deque<int>::~deque[abi:nn200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<int *>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<int *>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void std::vector<AnimCodec::ArithmeticContext>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      memset_pattern16(*(a1 + 8), &unk_21C2A4E10, 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - v6;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(a1, v10);
    }

    v11 = (2 * (v7 >> 1));
    memset_pattern16(v11, &unk_21C2A4E10, 2 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[2 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t AnimCodec::AnimEncoder::compress(uint64_t a1, AnimCodec *this, int *a3, uint64_t a4, uint64_t a5, int *a6, AnimCodec::StaticAdjacencyInformation *a7, int a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t *a12, _DWORD *a13)
{
  v13 = 2;
  if (a5 && a6 && a9)
  {
    if (4 * a5 * a6 * a9 + 1024 >= a11 && HIDWORD(a11) == 0)
    {
      v22 = 0;
      memset(v21, 0, sizeof(v21));
      memset(&__p, 0, sizeof(__p));
      v18 = AnimCodec::ComputeAdjacencyInfo(this, a3, a6, a7, a8, v21, a7);
      if (!v18)
      {
        v18 = AnimCodec::ComputeTraversalOrder(v21, &__p);
        if (!v18)
        {
          v18 = AnimCodec::AnimEncoder::compress(a1, a4, v21, &__p, a5, a9, a10, a11, a12, a13);
        }
      }

      v13 = v18;
      if (__p.__begin_)
      {
        __p.__end_ = __p.__begin_;
        operator delete(__p.__begin_);
      }

      vmesh::StaticAdjacencyInformation<Pair>::~StaticAdjacencyInformation(v21);
    }

    else
    {
      return 1;
    }
  }

  return v13;
}

uint64_t AnimCodec::AnimEncoder::compress(uint64_t a1, uint64_t a2, AnimCodec::StaticAdjacencyInformation *a3, void *a4, uint64_t a5, unsigned int a6, uint64_t a7, unint64_t a8, uint64_t *a9, _DWORD *a10)
{
  v15[0] = a7;
  v15[1] = a8;
  *a7 = 179426549;
  *(a7 + 8) = 1;
  *(a7 + 16) = a6;
  *(a7 + 20) = *a10;
  *(a7 + 21) = a10[1];
  *(a7 + 22) = 0;
  v16 = 24;
  result = AnimCodec::AnimEncoder::compress(a1, a2, a3, a4, a5, a6, v15);
  if (!result)
  {
    v12 = v16;
    *a9 = v16;
    if (v12 <= a8)
    {
      v13 = v15[0];
      *(v15[0] + 12) = v12;
      v14 = AnimCodec::ComputeCRC32(v13 + 8, (*a9 - 8));
      result = 0;
      *(v13 + 4) = v14;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t AnimCodec::AnimEncoder::compress(uint64_t a1, uint64_t a2, AnimCodec::StaticAdjacencyInformation *a3, void *a4, int a5, unsigned int a6, uint64_t a7)
{
  v7 = a7;
  v12 = *(a7 + 16);
  v13 = *(a7 + 8) - v12;
  v14 = *a7 + v12;
  v80 = v13;
  v81 = v14;
  AnimCodec::ArithmeticEncoder::start(&v80);
  v15 = *(a3 + 4) - *(a3 + 3);
  if ((v15 >> 2) < 1)
  {
    return 2;
  }

  v60 = v15 >> 2;
  v79 = 0x8000;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  __p = 0;
  v68 = 0;
  v69 = 0;
  std::vector<AnimCodec::ArithmeticContext>::resize(&v76, a5);
  std::vector<AnimCodec::ArithmeticContext>::resize(&v73, a5);
  std::vector<AnimCodec::ArithmeticContext>::resize(&v70, a5);
  std::vector<AnimCodec::ArithmeticContext>::resize(&__p, 31 * a5);
  memset(&v66, 0, sizeof(v66));
  memset(&v65, 0, sizeof(v65));
  memset(&v64, 0, sizeof(v64));
  std::vector<float>::resize(&v66, a5);
  std::vector<float>::resize(&v65, a5);
  std::vector<float>::resize(&v64, a5);
  if (a6 < 1)
  {
LABEL_41:
    v55 = 0;
    *(v7 + 16) += AnimCodec::ArithmeticEncoder::stop(&v80);
  }

  else
  {
    v16 = 0;
    v61 = (v15 >> 2) & 0x7FFFFFFF;
    v62 = a3;
    v17 = a5;
    v57 = a6;
    v58 = v7;
LABEL_4:
    v59 = v16;
    v18 = 0;
    v19 = 1;
LABEL_5:
    v20 = v19;
    v21 = *(*a4 + 4 * v18);
    if (a5 >= 1)
    {
      begin = v66.__begin_;
      v23 = v65.__begin_;
      v24 = (a2 + 4 * v21 * a5);
      v25 = v17;
      do
      {
        v26 = *v24++;
        *begin++ = v26;
        *v23++ = 0;
        --v25;
      }

      while (v25);
    }

    started = AnimCodec::StaticAdjacencyInformation::neighborsStartIndex(a3, v21);
    v28 = AnimCodec::StaticAdjacencyInformation::neighborsEndIndex(a3, v21);
    if (v28 <= started)
    {
      goto LABEL_21;
    }

    v29 = 0;
    v30 = *(a3 + 6);
    v31 = v65.__begin_;
    v32 = started;
    while (1)
    {
      v33 = *(v30 + 4 * v32);
      if (v33 < 0)
      {
        goto LABEL_17;
      }

      if (v33 >= v60)
      {
        break;
      }

      if (a5 >= 1)
      {
        v34 = 4 * (v33 * a5);
        v35 = v17;
        v36 = v31;
        do
        {
          *v36++ += *(a2 + v34);
          v34 += 4;
          --v35;
        }

        while (v35);
      }

      ++v29;
      ++v32;
      if (v29 == v28 - started)
      {
        v29 = v28 - started;
LABEL_17:
        if (v29 >= 2)
        {
          if (a5 >= 1)
          {
            v37 = v65.__begin_;
            v38 = v17;
            do
            {
              *v37 = (*v37 + (v29 >> 1)) / v29;
              ++v37;
              --v38;
            }

            while (v38);
            goto LABEL_21;
          }

LABEL_25:
          v19 = 1;
          goto LABEL_26;
        }

LABEL_21:
        if (a5 < 1)
        {
          goto LABEL_25;
        }

        v39 = v66.__begin_;
        v40 = v65.__begin_;
        v19 = 1;
        v41 = v17;
        v42 = v64.__begin_;
        do
        {
          v44 = *v39++;
          v43 = v44;
          v45 = *v40++;
          v46 = v43 - v45;
          *v42++ = v46;
          v19 &= v46 == 0;
          --v41;
        }

        while (v41);
LABEL_26:
        AnimCodec::ArithmeticEncoder::encode(&v80, (v20 ^ v19) & 1, &v79);
        if ((v19 & 1) == 0 && a5 >= 1)
        {
          v47 = 0;
          v48 = 0;
          v49 = 0;
          do
          {
            v50 = v64.__begin_[v48];
            v51 = v70 + v47;
            if (v50)
            {
              AnimCodec::ArithmeticEncoder::encode(&v80, 1, v51);
              v52 = v76 + v47;
              if ((v50 & 0x80000000) != 0)
              {
                AnimCodec::ArithmeticEncoder::encode(&v80, 0, v52);
                v50 = -v50;
              }

              else
              {
                AnimCodec::ArithmeticEncoder::encode(&v80, 1, v52);
              }

              if (v50 > 0x1F)
              {
                AnimCodec::ArithmeticEncoder::encode(&v80, 1, __p + v49);
                AnimCodec::ArithmeticEncoder::encode(&v80, 1, __p + v49 + 4);
                AnimCodec::ArithmeticEncoder::encode(&v80, 1, __p + v49 + 12);
                AnimCodec::ArithmeticEncoder::encode(&v80, 1, __p + v49 + 28);
                AnimCodec::ArithmeticEncoder::encode(&v80, 1, __p + v49 + 60);
                AnimCodec::ArithmeticEncoder::encodeExpGolomb(&v80, v50 - 32, 6, v73 + v47);
                goto LABEL_38;
              }

              v54 = v50 - 1;
              AnimCodec::ArithmeticEncoder::encode(&v80, (v50 - 1) & 1, __p + v49);
              AnimCodec::ArithmeticEncoder::encode(&v80, (v54 >> 1) & 1, __p + 2 * (v54 & 1) + v49 + 2);
              AnimCodec::ArithmeticEncoder::encode(&v80, (v54 >> 2) & 1, __p + 2 * (v54 & 3) + v49 + 6);
              AnimCodec::ArithmeticEncoder::encode(&v80, (v54 >> 3) & 1, __p + 2 * (v54 & 7) + v49 + 14);
              v53 = (v50 - 1) >> 4;
              v51 = __p + 2 * ((v50 - 1) & 0xF) + v49 + 30;
            }

            else
            {
              v53 = 0;
            }

            AnimCodec::ArithmeticEncoder::encode(&v80, v53, v51);
LABEL_38:
            v49 += 62;
            v47 += 2;
            ++v48;
          }

          while (62 * a5 != v49);
        }

        ++v18;
        a3 = v62;
        v17 = a5;
        if (v18 == v61)
        {
          v7 = v58;
          v16 = v59 + 1;
          a2 += 4 * v60 * a5;
          if (v59 + 1 == v57)
          {
            goto LABEL_41;
          }

          goto LABEL_4;
        }

        goto LABEL_5;
      }
    }

    v55 = 2;
  }

  if (v64.__begin_)
  {
    v64.__end_ = v64.__begin_;
    operator delete(v64.__begin_);
  }

  if (v65.__begin_)
  {
    v65.__end_ = v65.__begin_;
    operator delete(v65.__begin_);
  }

  if (v66.__begin_)
  {
    v66.__end_ = v66.__begin_;
    operator delete(v66.__begin_);
  }

  if (__p)
  {
    v68 = __p;
    operator delete(__p);
  }

  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }

  if (v76)
  {
    v77 = v76;
    operator delete(v76);
  }

  return v55;
}

uint64_t AnimCodec::ArithmeticEncoder::encode(uint64_t result, int a2, _WORD *a3)
{
  v3 = *a3;
  v4 = *(result + 28);
  v5 = (v4 * v3) >> 16;
  if (a2)
  {
    *(result + 24) += v5;
    v5 = v4 - v5;
    v6 = v3 - *(result + 2 * (v3 >> 8) + 48);
  }

  else
  {
    v6 = *(result + 2 * (~v3 >> 8) + 48) + v3;
  }

  *(result + 28) = v5;
  *a3 = v6;
  if (v5 <= 0x4000)
  {
    v7 = *(result + 24);
    v8 = *(result + 40);
    while (1)
    {
      v7 *= 2;
      v5 *= 2;
      *(result + 24) = v7;
      *(result + 28) = v5;
      *(result + 40) = ++v8;
      if (v8 == 8)
      {
        break;
      }

LABEL_17:
      if (v5 > 0x4000)
      {
        return result;
      }
    }

    if (HIBYTE(v7))
    {
      v10 = *(result + 8) + *(result + 16);
      ++*(v10 - 1);
      v11 = *(result + 16);
      if (*(result + 44))
      {
        do
        {
          *(*(result + 8) + v11) = 0;
          v12 = *(result + 44);
          v11 = *(result + 16) + 1;
          *(result + 16) = v11;
          *(result + 44) = --v12;
        }

        while (v12);
      }
    }

    else
    {
      v9 = *(result + 44);
      if ((v7 + v5) >> 24)
      {
        *(result + 44) = v9 + 1;
LABEL_16:
        v8 = 0;
        v7 = v7;
        *(result + 24) = v7;
        *(result + 40) = 0;
        goto LABEL_17;
      }

      v11 = *(result + 16);
      if (v9)
      {
        do
        {
          *(*(result + 8) + v11) = -1;
          v13 = *(result + 44);
          v11 = *(result + 16) + 1;
          *(result + 16) = v11;
          *(result + 44) = --v13;
        }

        while (v13);
      }
    }

    *(*(result + 8) + v11) = *(result + 26);
    ++*(result + 16);
    LOWORD(v7) = *(result + 24);
    v5 = *(result + 28);
    goto LABEL_16;
  }

  return result;
}

uint64_t AnimCodec::ArithmeticEncoder::encodeExpGolomb(uint64_t a1, unsigned int a2, int a3, _WORD *a4)
{
  v5 = a3;
  v6 = a2;
  for (i = 1 << a3; v6 >= 1 << v5; i = 1 << v5)
  {
    AnimCodec::ArithmeticEncoder::encode(a1, 1, a4);
    ++v5;
    v6 -= i;
  }

  result = AnimCodec::ArithmeticEncoder::encode(a1, 0, a4);
  if (v5)
  {
    v10 = v5 - 1;
    do
    {
      v11 = 0x8000;
      result = AnimCodec::ArithmeticEncoder::encode(a1, (v6 >> v10--) & 1, &v11);
    }

    while (v10 != -1);
  }

  return result;
}

unint64_t AnimCodec::ArithmeticEncoder::stop(AnimCodec::ArithmeticEncoder *this)
{
  v1 = 0;
  v2 = *(this + 10);
  v3 = *(this + 6);
  do
  {
    if ((v3 | ((2 << v1) - 1)) > *(this + 7) - 1)
    {
      break;
    }

    ++v1;
  }

  while (v1 != 16);
  v4 = v3 | ~(-1 << v1);
  *(this + 6) = v4;
  if (v2 <= 7)
  {
    v5 = v2 - 8;
    do
    {
      v4 = (2 * v4) | 1;
    }

    while (!__CFADD__(v5++, 1));
    *(this + 6) = v4;
    *(this + 10) = 8;
  }

  if (HIBYTE(v4))
  {
    v7 = *(this + 1) + *(this + 2);
    ++*(v7 - 1);
    if (*(this + 11))
    {
      v8 = *(this + 2);
      do
      {
        *(*(this + 1) + v8) = 0;
        v9 = *(this + 11);
        v8 = *(this + 2) + 1;
        *(this + 2) = v8;
        *(this + 11) = --v9;
      }

      while (v9);
    }
  }

  else if (*(this + 11))
  {
    v10 = *(this + 2);
    do
    {
      *(*(this + 1) + v10) = -1;
      v11 = *(this + 11);
      v10 = *(this + 2) + 1;
      *(this + 2) = v10;
      *(this + 11) = --v11;
    }

    while (v11);
  }

  *(*(this + 1) + *(this + 2)) = *(this + 13);
  v12 = *(this + 1);
  v13 = *(this + 2) + 1;
  *(this + 2) = v13;
  *(v12 + v13) = BYTE1(*(this + 6));
  v14 = *(this + 2) + 1;
  *(this + 2) = v14;
  if (v2 >= 1)
  {
    *(*(this + 1) + v14) = *(this + 6);
    v14 = *(this + 2) + 1;
    *(this + 2) = v14;
  }

  if (v14 >= 2)
  {
    v15 = *(this + 1) - 1;
    while (*(v15 + v14) == 255)
    {
      *(this + 2) = --v14;
      if (v14 <= 1)
      {
        return 1;
      }
    }
  }

  return v14;
}

uint64_t AnimCodec::ArithmeticEncoder::start(uint64_t this)
{
  v1 = 0;
  *&v2 = 0xFFFF00000000;
  *(&v2 + 1) = 0xFFFF00000000;
  *(this + 24) = v2;
  *(this + 16) = 0;
  *(this + 40) = 0;
  v3 = 0x217u;
  do
  {
    *(this + v1 * 2 + 48) = word_21C2A4E28[v1];
    *(this + v3 * 2) = word_21C2A4E28[v3 - 280];
    --v3;
    ++v1;
  }

  while (v1 != 256);
  return this;
}

void *AnimCodec::ArithmeticDecoder::start(AnimCodec::ArithmeticDecoder *this)
{
  *&v1 = 0xFFFF000000000000;
  *(&v1 + 1) = 0xFFFF000000000000;
  *(this + 24) = v1;
  *(this + 5) = 16;
  v2 = *this;
  if (*this < 1)
  {
    v4 = -16777216;
    goto LABEL_7;
  }

  v3 = *(this + 1);
  v4 = *v3 << 24;
  *(this + 8) = v4;
  if (v2 == 1)
  {
LABEL_7:
    v5 = v4 | 0xFF0000;
    goto LABEL_8;
  }

  v5 = v4 | (v3[1] << 16);
  *(this + 8) = v5;
  if (v2 <= 2)
  {
LABEL_8:
    v6 = v5 | 0xFF00;
    goto LABEL_9;
  }

  v6 = v5 | (v3[2] << 8);
  *(this + 8) = v6;
  if (v2 == 3)
  {
LABEL_9:
    v7 = 255;
    goto LABEL_10;
  }

  v7 = v3[3];
LABEL_10:
  *(this + 8) = v7 | v6;
  *(this + 2) = 3;
  return memcpy(this + 48, &unk_21C2A5028, 0x400uLL);
}

uint64_t AnimCodec::ComputeCRC32(uint64_t this, const unsigned __int8 *a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = this;
  LODWORD(this) = -1;
  do
  {
    v3 = *v2++;
    this = (dword_21C2A5428[v3 ^ BYTE3(this)] ^ (this << 8));
    --a2;
  }

  while (a2);
  return this;
}

void C3DShapeMeshCreationInitProfile_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "profilePath.points";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", &v1, 0xCu);
}

void C3DSceneSourceGetFileFormat_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: unabled to create a read stream at %@", &v2, 0xCu);
}

void C3DSceneSourceCreateSceneAtIndex_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: failed to load %@ - unknown file format.", &v3, 0xCu);
}

void C3D::CopyTextureComputePass::execute(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "descriptor().renderStartIndex == 0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. renderStartIndex is not taken into account in this pass", a5, a6, a7, a8, v8, DWORD2(v8));
}

{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "srcElementType == dstElementType";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Type mismatch", a5, a6, a7, a8, v8, DWORD2(v8));
}

void SCNMTLComputeCommandEncoder::dispatchOnTextureCube(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_computePipelineState";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_ptr != NULL";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Dereferencing null pointer", a5, a6, a7, a8, v8, DWORD2(v8));
}

void SCNMTLRenderCommandEncoder::setFragmentTexture(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "!texture || [texture conformsToProtocol:@protocol(MTLTexture)]";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. texture is not a MTLTexture", a5, a6, a7, a8, v8, DWORD2(v8));
}

void SCNMTLComputeCommandEncoder::_bindPendingTextures(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "firstIndexOfRange == UINT_MAX";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

void SCNMTLRenderCommandEncoder::applyChangedStates(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "SCNMTLDeviceSupportsDepthClipMode(_encoder.device)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Depth Clip Mode is not supported on this device", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __CopyParticles_cold_1(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = "dstParticles != srcParticles";
  OUTLINED_FUNCTION_0_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", &v3);
}

void __CopyParticles_cold_2(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "invLifeSpanArray";
  OUTLINED_FUNCTION_0_0(&dword_21BEF7000, a3, a3, "Assertion '%s' failed. Null argument", a1);
}

void C3DParticleSystemInstancePushRendererElements_cold_1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "sequence->count + count <= sequence->allocatedCount";
  OUTLINED_FUNCTION_0_0(&dword_21BEF7000, a3, a3, "Assertion '%s' failed. Not enough space allocated", a1);
}

void C3DParticleSystemInstancePushRendererElements_cold_2(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = "sequence->count + count <= sequence->allocatedCount";
  OUTLINED_FUNCTION_0_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Not enough space allocated", &v3);
}

void _C3DCGColorGetComponentsInColorSpace_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "color";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DGetColorMatchingComputeKernelParameters_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void C3DGetColorMatchingComputeKernelParameters_cold_2()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void C3DGetColorMatchingComputeKernelParameters_cold_3()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __C3DGetColorMatchingComputeKernelParameters_block_invoke_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "trcOther == trc";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Unsupported conversion info - different TRCs for input components", buf, 0xCu);
}

void _C3DGeometryCFFinalize_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "!geometry->_trackedNodes || !CFSetGetCount(geometry->_trackedNodes)";
  v4 = 2112;
  v5 = a1;
  _os_log_fault_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. No node should be tracked anymore by the geometry %@", &v2, 0x16u);
}

void C3DGeometryGetName_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "geometry";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DGeometryFillLibraryForSerialization_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "object";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DGeometryFinalizeDeserialization_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "serializedData";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _loadBindInfos_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: Could not deserialize the property %@ in the serialized effect %@", &v3, 0x16u);
}

void C3DGeometryAppendMaterial_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "material";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DGeometryCreateCopy_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "input";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DGeometryCopy_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "src";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DGeometryCopy_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "dst";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DGeometryTrackNode_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "node";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DGeometryTrackNode_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "!CFSetContainsValue(geometry->_trackedNodes, node)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Node should not already been tracked by this geometry", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DGeometryUntrackNode_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "geometry->_trackedNodes && CFSetContainsValue(geometry->_trackedNodes, node)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Node should been tracked by this geometry", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DGeometryUntrackNode_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "geometry->_trackedNodes";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void loadMDLAssetWithURL_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"MDLAssetLoadingOption getMDLAssetLoadingOptionDefaultUSDColorSpace()") description:{@"SCNModelIOPrivate.mm", 42, @"%s", dlerror()}];
  __break(1u);
}

void anonymous namespace::add_corners(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "positionAttribute";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", &v1, 0xCu);
}

void ___ZL53getMDLAssetLoadingOptionDefaultUSDColorSpaceSymbolLocv_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *ModelIOLibrary()") description:{@"SCNModelIOPrivate.mm", 41, @"%s", *a1}];
  __break(1u);
}

void C3D::SSAORaytracePass::execute(os_log_t log)
{
  *v1 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: No camera set for tone mapping pass", v1, 2u);
}

{
  *v1 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: No point of view set for tone mapping pass", v1, 2u);
}

void C3DMeshElementCreate_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "meshElement";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DMeshElementCreateByMergingElements_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "elements";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DMeshElementGetContent_cold_1(unsigned __int8 a1, int a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  v4 = "channel >= 0 && channel < channelCount";
  v5 = 1024;
  v6 = a1;
  v7 = 1024;
  v8 = a2;
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Mesh element has %d channels but channel %d was requested", &v3, 0x18u);
}

void __readIndexInBuffer_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = 136315650;
  v3 = "false";
  v4 = 2080;
  v5 = "__readIndexInBuffer";
  v6 = 2048;
  v7 = a1;
  _os_log_fault_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. %s - unsupported index size (%ld)", &v2, 0x20u);
}

void _C3DMeshElementComputePolygonOffsetsIfNeeded_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "meshElement->_topology.type == kC3DMeshElementTypePolygonsArray";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Only compute offsets for polygon", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DIndicesContentArrayEnumeratePrimitives_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: unexpected vertex count", buf, 2u);
}

void C3DTransformBoundingSphere_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "sphere";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DTransformBoundingSphere_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "transformedSphere";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __MakeNormalMatrix_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "modelMatrix";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __MakeNormalMatrix_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "normalMatrix";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __CompareMaterials_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "couple1";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __CompareMaterials_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "couple2";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DCreateFlattenedGeometryFromNodeHierarchy_cold_1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "componentsCount!=0";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. __AllocateNewSource - componentsCount is zero", a1);
}

void __CreateAndDispatchRendererElements_cold_2(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "element";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

void _finalizeSplit_cold_1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "oldIndexToNewIndex[sourceIndex]";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. inconsistency in _finalizeSplit", a1);
}

void _finalizeSplit_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "w == count * indexCountPerPrimitive";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. _finalizeSplit - inconsistent data length", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _finalizeSplit_cold_3(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "w == dataLength";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. _createSubSource - inconsistent data length", a1);
}

void C3DVRAMResourceGetID_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "vramResource";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DVRAMResourceSetID_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "VRAMResource";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DMeshCreateWithMeshSourcesAndMeshElements_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "sourceChannels";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DMeshCreateByMergingMeshes_cold_1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "0";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Unsupported element type in C3DMeshCreateByMergingMeshes", a1);
}

void C3DMeshSubdivide_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: C3DMeshSubdivide inconsistency", buf, 2u);
}

void C3DMeshSubdivide_cold_2(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "D!=-1 && E!=-1 && F !=-1";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. inconsistency (2) in C3DMeshSubdivide", a1);
}

void __C3DWarmupGeometryVRAMResourcesForEngineContext_block_invoke_2_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: WARNING: NULL data in mesh source (warming geometry)", buf, 2u);
}

void C3DWarmupSceneVRAMResourcesForEngineContext_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "enginePipeline";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DCreateTangentsWithGeometryOptimized_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "mesh";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DCreateTangentsWithGeometryOptimized_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "positionSource";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DCreateTangentsWithGeometryOptimized_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "normalSource";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DCreateTangentsWithGeometryOptimized_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "uvSource";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DCreateTangentsWithGeometry_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "mesh";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DCreateTangentsWithGeometry_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "positionSource";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DCreateNormalsForMorphTargetWithBaseMesh_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "baseMesh";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DCreateNormalsForMorphTargetWithBaseMesh_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "targetPositionSource";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DMeshUnifyNormals_cold_1(int a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: target mesh has a different number of vertices (%d != %d)", v3, 0xEu);
}

void C3DNodeGetProjectionInfos_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "pointOfView";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DAdjustZRangeOfProjectionInfos_cold_2(os_log_t log, float a2, double a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  v4 = "shortestPosition <= farthestPosition";
  v5 = 2048;
  v6 = a3;
  v7 = 2048;
  v8 = a2;
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. We badly computed zFar (%f) and zNear (%f) in this scene", &v3, 0x20u);
}

void __MergeRendererElementsSharingSameMaterial_cold_1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "material == elt->material";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. different material!!!!", a1);
}

void ___unifyNormalsOptimized_block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "faceVertexCount >= 3";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. unexpected vertex count", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DHitTestResultGetNode_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "result";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DHitTestResultGetTextureCoordinates_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "hit";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DMeshElementGetPrimitiveGroupBoundingBoxes_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "groupIndex == meshElement->_primitiveGroupCount";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. error in computing triangle bbox", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DIndicesContentGetVertexIndicesForTrianglePrimitiveAtIndex_cold_1_0(unsigned __int8 *a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Unreachable code: Invalid bytes per index (%d)", v3, 8u);
}

void __ProcessTriangleRange_Mask_Ind16VrtFloat3CullBack_cold_1(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136315394;
  v2 = "ctx->_currentIndicesContent.indicesOffset == 0 && ctx->_currentIndicesContent.indicesStride == 1";
  v3 = 2080;
  v4 = "__ProcessTriangleRange_Mask_Ind16VrtFloat3CullBack";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Update %s to support mesh element channels", &v1, 0x16u);
}

void __ProcessTriangleRange_Ind16VrtFloat3CullBack_cold_1(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136315394;
  v2 = "ctx->_currentIndicesContent.indicesOffset == 0 && ctx->_currentIndicesContent.indicesStride == 1";
  v3 = 2080;
  v4 = "__ProcessTriangleRange_Ind16VrtFloat3CullBack";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Update %s to support mesh element channels", &v1, 0x16u);
}

void __ProcessSkinnedGeometryForJointIndex_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "boneIndicesSrc";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DSceneCreateHitTestResultsWithSegment_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "scene";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DSceneCreateHitTestResultsWithSegment_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "segment";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DListGetLastLinkableObject_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "list";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void SCNMTLComputeCommandEncoder::endEncoding(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = "_encoder != nil";
  OUTLINED_FUNCTION_0_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", &v3);
}

void C3D::SmartPtr<SCNMTLComputePipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLComputePipeline *(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = "_ptr != NULL";
  OUTLINED_FUNCTION_0_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Dereferencing null pointer", &v3);
}

void C3DNodeIterateTree_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "node";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. C3DNodeIterateTree : null node", &v1, 0xCu);
}

void C3DNodeIterateTree_cold_2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "callbacks";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. C3DNodeIterateTree : no callbacks", &v1, 0xCu);
}

void C3DPlaneMakeWithVectors_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "out";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DPlaneMakeWithVectors_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "point";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DPlaneMakeWithVectors_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "normal";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFXTechniqueCreateFloor_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "floor";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFXTechniqueCreateFloor_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "pass";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _willExecuteRenderFloor(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "d > 0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Fov is larger that 180 degrees. this can't be", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __computeFloorOpacity(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "mirrorNode";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DCreateCopy_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: object %@ doesn't conform to the copying protocol", &v2, 0xCu);
}

void C3DRemoveSceneRef_cold_3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: invalid ref count for entity %@", &v2, 0xCu);
}

void C3DGetScene_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFTypeIsC3DEntity(object)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Must call GetScene with an entity", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3D::ShadowMapPass::ShadowMapPass(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "light";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. ShadowMapPass::setup() - Light missing from light node", a5, a6, a7, a8, v8, DWORD2(v8));
}

{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "C3DLightGetCastsShadow(light)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. ShadowMapPass::setup() - Light doesn't cast shadow", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DSphereMake_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "center";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DStackCFFinalize_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "stack";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DStackPop_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "stack->_currentLevel != 0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Stack Pop error", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DStackSetValue_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "stack->_elementSize == sizeof(void*)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DStackSetValue only accept CFTypeRef stacks", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DStackGetValue_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "stack->_elementSize == sizeof(void*)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DStackGetValue only accept CFTypeRef stacks", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _createConstraintFromDefinition(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "jointDef->bodyA";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", &v1, 0xCu);
}

void SCNMTLComputeCommandEncoder::dispatchOnGrid1D(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_computePipelineState";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", &v1, 0xCu);
}

void SCNMTLBlitCommandEncoder::beginEncoding(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_encoder == nil";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "commandBuffer != nil";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void SCNMTLBlitCommandEncoder::endEncoding(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_encoder != nil";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3D::FinalPass::setup(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "lastPassOutputingDepth";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "mainPassLastPassColorOutputDescriptor";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "mainDepthDesc";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3D::FinalPass::_createCustomTechniquePassesIfNeeded(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "finalPass";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "technique";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3D::FinalPass::_createCustomTechniquePassesIfNeeded(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_0_3(a1, a2);
  OUTLINED_FUNCTION_2_1(&dword_21BEF7000, v2, v3, "Error: Unsupported draw instruction kC3DFXDrawMetalCustom", v4);
}

{
  OUTLINED_FUNCTION_0_3(a1, a2);
  OUTLINED_FUNCTION_2_1(&dword_21BEF7000, v2, v3, "Error: Unsupported draw instruction kC3DFXDrawGeometry", v4);
}

{
  OUTLINED_FUNCTION_0_3(a1, a2);
  OUTLINED_FUNCTION_2_1(&dword_21BEF7000, v2, v3, "Error: C3DEngineContextRenderTechnique - unknown draw instruction", v4);
}

void C3D::FinalPass::_setupTechniquePassCommonData(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_0_3(a1, a2);
  OUTLINED_FUNCTION_2_1(&dword_21BEF7000, v2, v3, "Unreachable code: Invalid render buffer type for attachment type", v4);
}

{
  OUTLINED_FUNCTION_0_3(a1, a2);
  OUTLINED_FUNCTION_2_1(&dword_21BEF7000, v2, v3, "Unreachable code: Invalid render buffer type for attachment id", v4);
}

{
  OUTLINED_FUNCTION_0_3(a1, a2);
  OUTLINED_FUNCTION_2_1(&dword_21BEF7000, v2, v3, "Unreachable code: Invalid semantic for attachment id", v4);
}

void C3D::FinalPass::_setupTechniquePassCommonData(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "attachmentID < fboDesc->colorsDescriptionCount";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. attachementID out of bounds", a1);
}

{
  *a1 = 136315138;
  *a2 = "inputIndex < passOutput.size()";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Render target not found", a1);
}

{
  *a1 = 136315138;
  *a2 = "param.name";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

void C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::Array(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "allocator";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. NULL allocator", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DAnimationClusterCreateWithAnimationGroup_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "keyCount";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DAnimationClusterCreateWithAnimationGroup_cold_3(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "!isnan(t)";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. bad time", buf, 0xCu);
}

void C3DAnimationClusterCreateWithAnimationGroup_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "keyIndex == (int)keyCount";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. bad count", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DAnimationClusterCreateWithAnimationGroup_cold_5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "valueWrt == kf->_values + (totalValueSize * keyCount)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DAnimationClusterCreateWithAnimationGroup out of bounds", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _getAnimations_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "CFGetTypeID(animation) == C3DKeyframedAnimationGetTypeID()";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. unexpected animation class", buf, 0xCu);
}

void _getNextKeyTime_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "kf->_keytimes[index+1] >= (float)time";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. _getNextKeyTime twice the same keytime?", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DAnimationClusterCopy_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "source";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DAnimationClusterCopy_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "dest";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DCullingSystemAdd_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "cullingSystem";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DCullingSystemUpdateBoundingBox_cold_2(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Unreachable code: invalid spatial handle (%d) given", v2, 8u);
}

void C3DCullingSystemUpdateFlags_cold_2()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_2(&dword_21BEF7000, v0, v1, "Assertion '%s' failed. invalid spatial handle (%d) given", v2, v3, v4, v5, v6);
}

void __C3DCullingSystem::remove()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_2(&dword_21BEF7000, v0, v1, "Assertion '%s' failed. invalid spatial handle (%d) given", v2, v3, v4, v5, v6);
}

void __C3DCullingSystem::remove(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "indexToRemove < _count";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. handle should not point to non existing index", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DCullingSystem_AABBRange_x8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "(start & kSOALaneMask) == 0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DMeshSourceCreateWithData_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "data";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DMeshSourceCreateWithData_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "componentCount <= 4";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. No more than 4 components for mesh source value types", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DMeshSourceCreateWithAccessor_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "meshSource";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DMeshSourceCreateDeltaSource_cold_1(int a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: Morph: target vertex count do not match base vertex count (%d != %d)", v3, 0xEu);
}

void C3DMeshSourceCreateDeltaSource_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "bse.ptr";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DMeshSourceCreateDeltaSource_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "tgt.ptr";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DMeshSourceCreateAbsoluteSource_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "dlt.ptr";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DMeshSourceCreatePackedCopy_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "baseSource";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DMeshSourceCreatePackedCopy_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "intervalList";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DMeshSourceCreateUnpackedCopy_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "ind.type == kC3DMeshElementTypeLinesArray";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Provided mesh element is not an interval list", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DMeshSourceCreateCopyWithComponentsBaseType_cold_2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: C3DMeshSourceCreateCopyWithComponentsBaseType: unsupported type", buf, 2u);
}

void C3DMeshSourceCreateCopyWithBaseType_cold_1(__int16 a1, uint64_t a2, NSObject *a3)
{
  v4 = a2;
  v10 = *MEMORY[0x277D85DE8];
  v6 = 138412546;
  v7 = C3DBaseTypeStringDescription(a1, a2);
  v8 = 2112;
  v9 = C3DBaseTypeStringDescription(v4, v5);
  _os_log_error_impl(&dword_21BEF7000, a3, OS_LOG_TYPE_ERROR, "Error: Conversion from %@ to %@ to is not supported", &v6, 0x16u);
}

void _C3DMeshSourceInitWithPropertyList_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_C3DMeshSourceInitWithPropertyList";
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: invalid propertylist in %s", &v1, 0xCu);
}

void C3D::CopyProbeFromOldTextureToNewTexture(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "!newIndex && !oldIndex";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Cube conversion can only happen for global probe", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3D::ComputeProbeFromTextureOrPreviousPass(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "customEnvResource";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3D::Array<unsigned int,0u,C3D::MallocAllocator>::operator[]()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_3();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x22u);
}

void __CreateProbeArrayResourceIfNeeded_block_invoke_cold_1(_DWORD *a1, void *a2)
{
  *a1 = 136315138;
  *a2 = "C3DLightGetProbeType(light) == kC3DLightProbeTypeRadiance";
  OUTLINED_FUNCTION_2_3();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __CreateProbeArrayResourceIfNeeded_block_invoke_cold_2(_DWORD *a1, void *a2)
{
  *a1 = 136315138;
  *a2 = "probeIndex != (uint32_t)kProbeSliceIndexInvalid";
  OUTLINED_FUNCTION_2_3();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

void _C3DAnimationManagerAddAnimationNode_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "manager";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DAnimationManagerAddAnimationNode_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "animationNode";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DAnimationManagerAddAnimationNode_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "target";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DAnimationManagerAddAnimationNode_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFGetTypeID(animationNode) != C3DAnimationClusterNodeGetTypeID()";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. _C3DAnimationManagerAddAnimationNode - cluster not expected", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __C3DAnimationManagerAddAnimationNodeToAnimationStackWithKey_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFDictionaryContainsKey(manager->_targetAddressToStackIndex, (void*)key) == false";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DAnimationManagerNewStackWithKey key already exist", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __C3DAnimationManagerAddAnimationNodeToAnimationStackWithKey_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "animationNode->_target->_semantic != kC3DTypeSemanticNone";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. unexpected semantic", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __C3DAnimationManagerAddAnimationNodeToAnimationStackWithKey_cold_5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "modelValueStorage";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DAnimationManagerTriggerCallbacks_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "manager->_mute == false";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. _C3DAnimationManagerAppendCallback triggered while animation manager is muted", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DAnimationManagerGetAnimationNodeForKey_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "rootObject";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DAnimationManagerGetAnimationNodeForKey_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "key";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DAnimationManagerDiscardAnimationNodeFromStack_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFDictionaryContainsKey(manager->_targetAddressToStackIndex, (void*)key) == true";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DAnimationManagerNewStackWithKey key doesn't exist", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DAnimationManagerDiscardAnimationNodeFromStack_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "removedIndex";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DAnimationManagerDiscardAnimationNodeFromStack_cold_5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "lastIndex";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DAnimationManagerSetSystemTime_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "animationManager";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DAnimationManagerUpdateConstantCount_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "manager->_constantStackCount >= 0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DAnimationManagerUpdateConstantCount", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DAnimationManagerApplyStack_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "manager";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", buf, 0xCu);
}

void _C3DAnimationManagerApplyStack_cold_2(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "stackItem->_modelValueItem";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", buf, 0xCu);
}

void C3DAnimationManagerNeedsRedraw_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "stackCount >= animationManager->_constantStackCount";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DAnimationManagerNeedsRedraw - inconsistant constant count", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "root";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DAnimationManagerAddAnimationPlayerForKey_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: failed to assign animation with keypath %@", &v3, 0xCu);
}

void _C3DAnimationManagerAddAnimationForKey_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "animation";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __C3DAnimationManagerRemoveAllAnimationsForObject_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: C3DAnimationManagerRemoveAllAnimationsForObject - null animation for key %@", &v2, 0xCu);
}

void C3DAnimationManagerRemoveAnimationNode_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "manager->_applying == false";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Inconsistency in _C3DAnimationManagerRemoveAnimationNode: triggered while applying animations", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DAnimationManagerRemoveAnimationNode_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "manager->_applying==false";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DAnimationManagerRemoveAnimationNode removing an animation while applying", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DAnimationManagerSetModelValueStorage_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "storage";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DAnimationManagerAddBinding_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  v3 = v0;
  _os_log_error_impl(&dword_21BEF7000, v1, OS_LOG_TYPE_ERROR, "Error: Binding: Unable to resolve destination keypath: %@(%@)", v2, 0x16u);
}

void C3DAnimationManagerAddBinding_cold_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  C3DEntityGetName(a1, a2);
  OUTLINED_FUNCTION_1_3();
  v6 = a2;
  _os_log_error_impl(&dword_21BEF7000, a3, OS_LOG_TYPE_ERROR, "Error: Binding: Unable to resolve destination keypath: %@(%@)", v5, 0x16u);
}

void _C3DKeyframeControllerSetupWithCapacity_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "kf";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DKeyframeControllerSetupWithCapacity_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "keyCount";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DKeyframeControllerSetKeyframeAtIndex_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "controller";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DKeyframeControllerEvaluateAtTime_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "controller->_values";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DKeyframeControllerEvaluateAtTime_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "controller->_evaluate";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DKeyframeControllerEvaluateAtTime_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "controller->_keyCount > 0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DKeyframeControllerEvaluateAtTime animation has no key", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DKeyframeControllerInitWithPropertyList_cold_11(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "timeCount";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DKeyframeControllerInitWithPropertyList_cold_14(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "keyCount == (int)(length/keyStride)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. wrong number of keyCount in data", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DKeyframeControllerInitWithPropertyList_cold_15(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: _C3DKeyframeControllerFlattenKeyframeData unexpected value", buf, 2u);
}

void _C3DKeyframeControllerInitWithPropertyList_cold_16(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "CFGetTypeID(value) == CFNumberGetTypeID()";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. _C3DKeyframeControllerFlattenKeyframeData bad value type", a1);
}

void _C3DKeyframeControllerInitWithPropertyList_cold_19(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "CFGetTypeID(value) == CFBooleanGetTypeID()";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. _C3DKeyframeControllerFlattenKeyframeData bad value type", a1);
}

void _C3DKeyframeControllerInitWithPropertyList_cold_22(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: _C3DKeyframeControllerCreateKeyframeArray unknown key type", buf, 2u);
}

void SCNMTLComputeCommandEncoder::beginEncoding(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_encoder == nil";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3D::RenderGraph::addDependency()
{
  __assert_rtn("addDependency", "C3DRenderGraph.mm", 244, "_renderGraph->size() > n1");
}

{
  __assert_rtn("addDependency", "C3DRenderGraph.mm", 245, "_renderGraph->size() > n2");
}

{
  __assert_rtn("addDependency", "C3DRenderGraph.mm", 250, "n1Port == kPartialDependencyPort || node1.pass->descriptor().inputCount() > n1Port");
}

{
  __assert_rtn("addDependency", "C3DRenderGraph.mm", 251, "n2Port == kPartialDependencyPort || node2.pass->descriptor().outputCount() > n2Port");
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = (*v0)();
  OUTLINED_FUNCTION_8_0();
  (*v2)();
  LODWORD(v9) = 136315394;
  *(&v9 + 4) = v1;
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_5_0(&dword_21BEF7000, v3, v4, "Error: Can't add dependency %s on %s\n", v5, v6, v7, v8, v9, DWORD2(v9));
}

{
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

{
  __assert_rtn("addDependency", "C3DRenderGraph.mm", 277, "b->identifier() != kInvalidPass");
}

{
  __assert_rtn("addDependency", "C3DRenderGraph.mm", 276, "a->identifier() != kInvalidPass");
}

{
  __assert_rtn("addDependency", "C3DRenderGraph.mm", 283, "(*_renderGraph).size() > n1");
}

{
  __assert_rtn("addDependency", "C3DRenderGraph.mm", 284, "(*_renderGraph).size() > n2");
}

{
  __assert_rtn("addDependency", "C3DRenderGraph.mm", 312, "b->identifier() != kInvalidPass");
}

{
  __assert_rtn("addDependency", "C3DRenderGraph.mm", 311, "a->identifier() != kInvalidPass");
}

void C3D::RenderGraph::removeInvalidPasses(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_0_6(a1, a2);
  v4 = (*v3)(v2);
  OUTLINED_FUNCTION_10_0(v4, 4.8149e-34);
  OUTLINED_FUNCTION_7(&dword_21BEF7000, v5, v6, "Error: Pass %s is not linked to the rendering graph and will be ignored check it's input/output");
}

void C3D::RenderGraph::sort(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "!_stageFirst->passes.empty()";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Can't find first stage, all nodes have inputs.", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3D::RenderGraph::sort()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_8_0();
  v1 = (*v0)();
  OUTLINED_FUNCTION_8_0();
  (*v2)();
  LODWORD(v9) = 136315394;
  *(&v9 + 4) = v1;
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_5_0(&dword_21BEF7000, v3, v4, "Error: ** Cycle detected ** involving pass %s and input pass %s", v5, v6, v7, v8, v9, DWORD2(v9));
}

{
  __assert_rtn("sort", "C3DRenderGraph.mm", 1968, "_renderGraph->size() < 32767");
}

void C3D::RenderGraph::resolvePartialCompatibility(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_0_6(a1, a2);
  v4 = (*v3)(v2);
  OUTLINED_FUNCTION_10_0(v4, 4.8149e-34);
  OUTLINED_FUNCTION_7(&dword_21BEF7000, v5, v6, "Error: ReadWrite pass %s can't be the present on first stage since it will load it's input.");
}

void C3D::RenderGraph::resolvePartialCompatibility(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "false";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Invalid pass", a1);
}

{
  *a1 = 136315138;
  *a2 = "strlen(inputParam.name) != 0";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Can't dispatch input to output with multiple output without a named input.", a1);
}

{
  *a1 = 136315138;
  *a2 = "inputParam.type == outputParam->type";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Can't dispatchToOutput to output of different type", a1);
}

void C3D::RenderGraph::validate(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_0_6(a1, a2);
  v4 = (*v3)(v2);
  OUTLINED_FUNCTION_10_0(v4, 4.8149e-34);
  OUTLINED_FUNCTION_7(&dword_21BEF7000, v5, v6, "Error: ReadWrite pass %s must have compatible input/output.");
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1, a2);
  v4 = (*v3)(v2);
  OUTLINED_FUNCTION_10_0(v4, 4.8149e-34);
  OUTLINED_FUNCTION_7(&dword_21BEF7000, v5, v6, "Error: Invalid output parameter for pass %s");
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1, a2);
  v4 = (*v3)(v2);
  OUTLINED_FUNCTION_10_0(v4, 4.8149e-34);
  OUTLINED_FUNCTION_7(&dword_21BEF7000, v5, v6, "Error: Invalid input parameter for pass %s");
}

void C3D::RenderGraph::validate(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "false";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Unresolved dependency", a1);
}

{
  *a1 = 136315138;
  *a2 = "false";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Invalid pass parameter", a1);
}

{
  *a1 = 136315138;
  *a2 = "false";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Incompatible passes", a1);
}

void C3D::RenderGraph::allocateResources(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "node.resource().outputCount() == node.descriptor().outputCount()";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Pass output resources should be allocated", a1);
}

{
  *a1 = 136315138;
  *a2 = "resDestination == outputRes";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. node output resource should match destination node input resource", a1);
}

{
  *a1 = 136315138;
  *a2 = "inputRes";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

{
  *a1 = 136315138;
  *a2 = "res->usedCount >= 0";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Invalid used count for pass internal resource", a1);
}

{
  *a1 = 136315138;
  *a2 = "res->poolSubBuffer.buffer";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Invalid resource, buffer is NULL", a1);
}

{
  *a1 = 136315138;
  *a2 = "res->texture";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Invalid resource, texture is NULL", a1);
}

void C3D::RenderGraph::allocateResources()
{
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1(&dword_21BEF7000, v0, v1, "Unreachable code: ", v2, v3, v4, v5);
}

void C3D::__setupRenderEncoder()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1(&dword_21BEF7000, v0, v1, "Unreachable code: Multi-viewport rendering is lacking a multiple output vertex streams generator", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1(&dword_21BEF7000, v0, v1, "Unreachable code: Layered rendering is lacking a multiple output vertex streams generator", v2, v3, v4, v5);
}

void C3D::__setupRenderEncoder(uint64_t a1, unsigned __int16 *a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_0();
  v6 = (*v5)();
  v7 = *a2;
  v8 = 136315650;
  v9 = "simd_all(viewport != -1)";
  v10 = 2080;
  v11 = v6;
  v12 = 1024;
  v13 = v7;
  _os_log_fault_impl(&dword_21BEF7000, a3, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Pass %s has specific viewport but it's not specified for index : %d", &v8, 0x1Cu);
}

void C3D::__renderSlice(uint8_t *buf, _DWORD *a2, os_log_t log)
{
  *buf = 67109120;
  *a2 = 1;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Unreachable code: Invalid buffer type: %hhu", buf, 8u);
}

void C3D::__renderSlice(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "output.textureDesc.sampleCount != 1";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Invalid sample count", a1);
}

{
  *a1 = 136315138;
  *a2 = "nextInput.textureDesc.sampleCount != 1";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Invalid sample count", a1);
}

void SCNMTLRenderCommandEncoder::useCommandEncoder(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "commandBuffer";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "commandEncoder";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void SCNMTLRenderCommandEncoder::endEncoding(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_encoder != nil";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3D::RenderGraph::execute(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "outputResource->type == output.type";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Mismatch between resource type and resource description type, forgot useInternally ?", a1);
}

{
  *a1 = 136315138;
  *a2 = "0";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

void C3D::RenderGraph::addPass(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "pass";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Trying to add NULL pass", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3D::RenderGraph::createResource(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "res->texture";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Texture pool allocator failed, texture is NULL", a5, a6, a7, a8, v8, DWORD2(v8));
}

{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "param.attachmentType == TextureAttachmentType::Color";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Only color attachement can use drawable texture", a5, a6, a7, a8, v8, DWORD2(v8));
}

{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "res->resolveTexture";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Texture pool allocator failed, texture is NULL", a5, a6, a7, a8, v8, DWORD2(v8));
}

{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "resolveParam->textureDesc.sampleCount == 0 || resolveParam->textureDesc.sampleCount == 1";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Depth resolved texture must have sample count 0 or 1", a5, a6, a7, a8, v8, DWORD2(v8));
}

{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "!SCNMTLTextureTypeIsMultisampled((MTLTextureType)resolveParam->textureDesc.textureType)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Depth resolve texture type must not be multisampled", a5, a6, a7, a8, v8, DWORD2(v8));
}

{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "res->poolSubBuffer.buffer";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Buffer pool allocator failed, buffer is NULL", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3D::Array<C3D::RefCountedResource,0u,C3D::ScratchAllocator>::back(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "!empty()";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Trying to access last element of empty Array.", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator=(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "Allocator::_allocator";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. NULL allocator", a5, a6, a7, a8, v8, DWORD2(v8));
}

{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "initial_capacity || _capacity == 0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Array capacity inconsistency", a5, a6, a7, a8, v8, DWORD2(v8));
}

{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "a._capacity == initial_capacity";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Array capacity inconsistency", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3D::Array<C3D::RenderGraph::GraphNode *,0u,C3D::StackAllocator>::pop_back(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "!empty()";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. pop_back() on empty Array.", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3D::RenderGraph::spriteKitTransitionEnd(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "renderEncoder";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3D::RenderGraph::logDependencyInputMismatch()
{
  OUTLINED_FUNCTION_9_0();
  v2 = C3D::ResourceTypeDescription(*v1);
  C3D::ResourceTypeDescription(*v0);
  LODWORD(v9) = 136315394;
  *(&v9 + 4) = v2;
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_5_0(&dword_21BEF7000, v3, v4, "Error: Types mismatch %s <-> %s", v5, v6, v7, v8, v9, DWORD2(v9));
}

{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

{
  OUTLINED_FUNCTION_9_0();
  SCNMTLTextureTypeToString(v1);
  SCNMTLTextureTypeToString(v0);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_5_0(&dword_21BEF7000, v2, v3, "Error: Texture type mismatch %@ <-> %@", v4, v5, v6, v7);
}

{
  OUTLINED_FUNCTION_9_0();
  SCNMTLTextureTypeToString(v1);
  SCNMTLTextureTypeToString(v0);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_5_0(&dword_21BEF7000, v2, v3, "Error: Texture type mismatch %@ <-> %@", v4, v5, v6, v7);
}

{
  OUTLINED_FUNCTION_9_0();
  SCNMTLStorageModeToString(*v1);
  SCNMTLStorageModeToString(*v0);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_5_0(&dword_21BEF7000, v2, v3, "Error: Texture storage mode mismatch %@ <-> %@", v4, v5, v6, v7);
}

{
  OUTLINED_FUNCTION_9_0();
  SCNMTLCPUCacheModeToString(*v1);
  SCNMTLCPUCacheModeToString(*v0);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_5_0(&dword_21BEF7000, v2, v3, "Error: Texture CPU cache mode mismatch %@ <-> %@", v4, v5, v6, v7);
}

{
  OUTLINED_FUNCTION_9_0();
  SCNMTLPixelFormatToString(*v1);
  SCNMTLPixelFormatToString(*v0);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_5_0(&dword_21BEF7000, v2, v3, "Error: Texture pixel format mismatch %@ <-> %@", v4, v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

{
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void C3D::ScratchAllocator::ScratchAllocator(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_allocator";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. NULL allocator", a5, a6, a7, a8, v8, DWORD2(v8));
}

void VMAllocateChunk()
{
  __assert_rtn("VMAllocateChunk", "C3DScratchAllocator.cpp", 158, "!chunk->next");
}

{
  __assert_rtn("VMAllocateChunk", "C3DScratchAllocator.cpp", 171, "chunk->data");
}

{
  __assert_rtn("VMAllocateChunk", "C3DScratchAllocator.cpp", 159, "n");
}

{
  __assert_rtn("VMAllocateChunk", "C3DScratchAllocator.cpp", 157, "chunk");
}

void VMAllocateChunk(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Unreachable code: vm_allocate failed allocating %zu bytes", &v2, 0xCu);
}

void _fillVertexDescriptor()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

void _fillVertexDescriptor(__int16 a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = C3DBaseTypeStringDescription(a1, a2);
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: format %@ not convertible to MTLVertexFormat", &v3, 0xCu);
}

void _C3DTimingFunctionInitWithPropertyList_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_C3DTimingFunctionInitWithPropertyList";
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: invalid propertylist in %s", &v1, 0xCu);
}

void _C3DTimingFunctionCopyPropertyList_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "function";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DTimingFunctionGetControlPoints_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "timingFunc";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFXTechniqueCreateWithDescription_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "description";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFXTechniqueSetDescription_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "td";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFXTechniqueCompile_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "technique->_isCompiled==false";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. compiling a technique twice", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFXTechniqueCompile_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_1_6(&dword_21BEF7000, a2, a3, "Error: C3DFXTechniqueCompile - invalid description (sequence missing or empty) %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFXTechniqueAppendPass_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "technique";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFXTechniqueAppendPass_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "pass";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFXTechniqueGetPassAtIndex_cold_2(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = 136315650;
  v5 = "index < technique->_count";
  v6 = 2048;
  v7 = a2;
  v8 = 2048;
  v9 = v3;
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. C3DFXTechniqueGetPassAtIndex index %ld is out of bounds (%ld)", &v4, 0x20u);
}

void C3DFXTechniqueDeclareSymbol_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "symbolName";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFXTechniqueDeclareSymbol_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "technique->_parameterStorage == NULL || technique->_parameterStorage->storage == NULL";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Must declare upfront", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFXTechniqueDeclareSymbol_cold_4(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "CFDictionaryGetValue(technique->_parameterStorage->parameters, symbolName) == 0";
  v4 = 2112;
  v5 = a1;
  _os_log_fault_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Cannot declare twice the same symbol (%@)", &v2, 0x16u);
}

void C3DFXTechniqueSetValueForSymbolWithCount_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "paramName";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFXTechniqueSetValueForSymbolWithCount_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "count == 1";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Assumed count is 1", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFXTechniqueSetValueForSymbolWithCount_cold_4(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_1_6(&dword_21BEF7000, a2, a3, "Error: C3DFXTechniqueSetValueForSymbol - unknown param named %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFXTechniqueGetValueOffsetForSymbol_cold_3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_1_6(&dword_21BEF7000, a2, a3, "Error: C3DFXTechniqueGetValueForSymbol - unknown param named %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFXTechniqueCreateBySequencingTechniques_cold_1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "sourcePass->_inputCount == dstPass->_inputCount";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. unexpected pass inputs in merge", a1);
}

void C3DFXTechniqueCreateBySequencingTechniques_cold_2(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "!dstPass->_customInitializeBlock";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. _customInitializeBlock not nil", a1);
}

void C3DFXTechniqueCreateBySequencingTechniques_cold_3(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "!dstPass->_customExecuteBlock";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. _customExecuteBlock not nil", a1);
}

void C3DFXTechniqueAddSubTechnique_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "subtechnique";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DAnimationStackInit_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "animationStack->_valid == false";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DAnimationStackInit called twice", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DAnimationStackSetTarget_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "animationStack";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DAnimationStackAppendAnimationNode_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "animationStack->_valid == true";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DAnimationStack invalid", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DAnimationStackAppendAnimationNode_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFGetTypeID(animationNode) == C3DAnimationClusterNodeGetTypeID()";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. unexpected animation node class", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DAnimationStackAppendAnimationNode_cold_5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "modelValueStorage";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DAnimationStackAppendAnimationNode_cold_6(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "animationCluster->_keyframes->_valueSize[index] == C3DSizeOfBaseType(target->_baseType)";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. unexpected size", buf, 0xCu);
}

void C3DKeyframedAnimationEvaluate_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "anim";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DKeyframedAnimationEvaluate_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "outputAddress";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DKeyframedAnimationCopy_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "source";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DKeyframedAnimationCopy_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "dest";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DAnimationPlayerSetAnimation_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "animationPlayer";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DAnimationNodeAddChild_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "child";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DAnimationNodeSetRepeatStep_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "cumulativeCache";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DAnimationNodeCreateWithAnimationGroupAndAddToAnimationManager_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "animationGroup";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DAnimationNodeCreateWithAnimationCluster_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "animationCluster";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DAnimationNodeCFFinalize_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "node->_completionItem == NULL";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Completion item will be released without having handled a completion or interruption event. This can lead to an inconsistent state.", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _applyCIFilter_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "texture";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", &v1, 0xCu);
}

void _applyCIFilter_cold_2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "image";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", &v1, 0xCu);
}

void __fillMeshElementInfo(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "0";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Unsupported indices stride", &v1, 0xCu);
}

void C3DWrapModeToMTLAddressMode_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "mode <= C3DWrapModeMirror";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. bad type", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFilterModeToMTLFilter_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "mode <= kC3DFilterModeLinear";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. bad type", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DImageTypeToMTLTextureType_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "type < kC3DImageCount";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. bad image type", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DCullModeToMTLCullMode_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "cull <= kC3DCullNone";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. bad cull mode", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFillModeToMTLFillMode_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "fillMode == kC3DFillModeLines || fillMode == kC3DFillModeFill";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. bad fill mode", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DBlendFactorToMTLBlendFactor_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "blend < kC3DBlendFactorCount";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. bad blend mode", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DBlendOpToMTLBlendOperation_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "blendOp < kC3DBlendOpCount";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. bad blend operation", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DComparisonFuncToMTLCompareFunction_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "func < kC3DComparisonFuncCount";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. bad comparison func", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DStencilOpToMTLStencilOperation_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "op < kC3DStencilOpCount";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. bad stencil op", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DMeshElementTypeToMTLPrimitiveType_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Polygon Array not supported in Metal", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DMeshElementTypeToMTLPrimitiveType_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Triangle Fan not supported in Metal", a5, a6, a7, a8, v8, DWORD2(v8));
}

void SCNMTLVertexFormatToC3DBaseType_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "format < sizeof(__SCNMTLVertexFormatToC3DBaseTypeArray) / sizeof(__SCNMTLVertexFormatToC3DBaseTypeArray[0])";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. bad type", a5, a6, a7, a8, v8, DWORD2(v8));
}

void SCNMTLDataTypeFromC3DBaseType_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "type < kC3DBaseTypeCount";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. bad type", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DCreateImageWithTexture_cold_1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = [a1 pixelFormat];
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: Unexpected pixel format %lu", &v3, 0xCu);
}

void C3DMeshSourceCreateWithMTLBuffer_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "mtlBuffer";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DMeshSourceCreateWithMTLBuffer_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "mtlVertexFormat";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void SCNSampleCountForAntialiasingMode_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Unreachable code: Unexpected antialiasing mode (%d)", v2, 8u);
}

void C3DImageGetURL_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "image";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DImageCreateTextureRawData_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "image->_textureRawData == NULL";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. image has already compression infos", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DImageGetSize_cold_1()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void C3DImageCopyCGImage_cold_2(CGImageSource *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = 138412802;
  v6 = a1;
  v7 = 1024;
  StatusAtIndex = CGImageSourceGetStatusAtIndex(a1, 0);
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_21BEF7000, a3, OS_LOG_TYPE_ERROR, "Error: Failed to create image from image source %@ (status: %d) (%@)", &v5, 0x1Cu);
}

void C3DImageCopyCGImage_cold_3(CGImageSource *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 1024;
  StatusAtIndex = CGImageSourceGetStatusAtIndex(a1, 0);
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: Failed to create image from image source %@ (status: %d)", &v3, 0x12u);
}

void C3DImageCopyCGImage_cold_4()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void C3DImageCreateVerticalStripCubemapWithImage_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __ImageResize_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DImageGetCatalogTextureName_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "image->_sourceType == kC3DImageSourceTypeCatalogTexture";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Can't get name for non catalog texture", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DImageCopyUSDZEmbeddedData_cold_1()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void C3DImageCopyUSDZEmbeddedData_cold_2()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void C3DImageCacheBitmap_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "image->_bitmapContext==NULL";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DImageCacheBitmap context is not null when it should be", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DImageCacheBitmap_cold_3()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void C3DImageEnumerateCubeMapFacePixelBuffers_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: Cannot support rotation layout for compressed texture", buf, 2u);
}

void C3DImageEnumerateCubeMapFacePixelBuffers_cold_2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DImageEnumerateTexture3DSlicePixelBuffers_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _C3DImageInitWithPropertyList_cold_3()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void _C3DImageCopyPropertyList_cold_2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void SCNMTLBlitCommandEncoder::copyTextureToTexture(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "sliceCount == SCNMTLComputeTextureSliceCount(dstTexture)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. slice count must match to copy", a5, a6, a7, a8, v8, DWORD2(v8));
}

{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "srcTexture.width == dstTexture.width";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. width must match to copy", a5, a6, a7, a8, v8, DWORD2(v8));
}

{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "srcTexture.height == dstTexture.height";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. height must match to copy", a5, a6, a7, a8, v8, DWORD2(v8));
}

{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "srcTexture.depth == dstTexture.depth";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. depth must match to copy", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DTextureSamplerSetAnisotropy_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "textureSampler";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DTextureSamplerInitWithPropertyList_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_C3DTextureSamplerInitWithPropertyList";
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: invalid propertylist in %s", &v1, 0xCu);
}

void _C3DTextureSamplerInitWithPropertyList_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "dic";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DBezierCurveGeometryCreateCopy_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "object";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", &v1, 0xCu);
}

void C3D::FloorPass::setup(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "floor";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", &v1, 0xCu);
}

void C3DEngineContextGetStats_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "engineContext";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DEngineContextGetScene_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "context";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DEngineContextRenderScene_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "rendererContext";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DEngineContextRenderScene_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "enginePipeline";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DEngineContextSetGLContext_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "glContext";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DEngineContextGetPointOfView_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "context->_pointOfView";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DEngineContextGetViewportAtIndex_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "index < C3DRenderingEyeMaxCount";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DEngineContextGetEyeMatrix4x4_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "eye < C3DRenderingEyeMaxCount";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DEngineContextComputeJitterMatrix_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "viewport.z > 0 && viewport.w > 0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. wrong viewport", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DEngineContextGetTAAJitter_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "engineContext->_viewport[0].z > 0 && engineContext->_viewport[0].w > 0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. wrong viewport", a5, a6, a7, a8, v8, DWORD2(v8));
}

void btMatrix3x3::getIdentity()
{
  {
    btMatrix3x3::getIdentity(void)::identityMatrix = xmmword_21C27F910;
    unk_27CDD67A0 = xmmword_21C27F8C0;
    xmmword_27CDD67B0 = xmmword_21C27F600;
  }
}

void C3DEngineStatsResetResourceStats_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "stats";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DEngineStatsMergeResourceStats_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "srcStats && dstStats";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _createKTXDataRepresentation_cold_1(void *a1)
{
  *v8 = 138412546;
  *&v8[4] = SCNMTLTextureTypeToString([a1 textureType]);
  *&v8[12] = 1024;
  *&v8[14] = [a1 textureType];
  OUTLINED_FUNCTION_0_8(&dword_21BEF7000, v2, v3, "Error: Unsupported texture type %@ (%u) in KTX encoder", v4, v5, v6, v7, *v8, *&v8[8], *&v8[16]);
}

void _createKTXDataRepresentation_cold_2(uint64_t a1)
{
  v1 = a1;
  *v8 = 138412546;
  *&v8[4] = SCNMTLPixelFormatToString(a1);
  *&v8[12] = 1024;
  *&v8[14] = v1;
  OUTLINED_FUNCTION_0_8(&dword_21BEF7000, v2, v3, "Error: Unsupported pixel format %@ (%u) in KTX encoder", v4, v5, v6, v7, *v8, *&v8[8], *&v8[16]);
}

void _C3DRendererElementSync_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "rendererElement";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DRendererElementStateCreate_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "rendererElementState";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DRendererElementStateBindProgramRendererElement_cold_2(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "CFArrayGetCount(shaderModifiers)";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. unoptimal : don't keep empty arrays", buf, 0xCu);
}

void C3DRendererElementStateDrawRendererElement_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "programObject";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DRendererElementStateProcessRendererElement_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "passInstance";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DRendererElementStateProcessRendererElement_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "C3DRendererElementIsHidden(rendererElement) != true";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Hidden nodes should have been removed from the pipeline already", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DRendererElementStateProcessRendererElement_cold_5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "theNode==NULL || C3DNodeGetOpacity(theNode) > 0 || rendererElement->_renderableAttributeKind == kC3DRenderableAttributeKindParticleSystem";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Fully transparents objects should have been removed from the pipeline already", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DRendererElementStateProcessRendererElement_cold_6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "rendererDelegate";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DRendererContextSetMatrix4x4UniformAtLocation_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "count";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DRendererContextExecuteSlotTextureProxy_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "effectSlot";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DRendererContextCreateProgramObjectForProgram_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "program";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __FillProgramObjectLocations_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "nextFreeIndex < bufferCount";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. fillProgramLocation: index out of bounds", buf, 0xCu);
}

void __FillProgramObjectLocations_cold_2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: __FillProgramObjectLocations uniform index out of bounds", buf, 2u);
}

void C3DRendererContextDeleteBufferObject_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "bufferObject";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DRendererContextApplyTextureSampler_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "texture";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DRendererContextCreateTextureWithImage_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "idTexture != 0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. gl texture allocation failed", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DRendererContextCreateTextureWithImage_cold_8(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  URL = C3DImageGetURL(a1, a2);
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: Cannot load image %@.", &v3, 0xCu);
}

void C3DRendererContextCreateRenderTargetWithDescription_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "description.sampleCount == C3DFramebufferGetSampleCount(fbo)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. inconsistent sample count", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DRendererContextSetupFramebuffer_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "fb";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DRendererContextUnbindFramebuffer_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "currentFBO->_inUse==true";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DRendererContextUnbindFramebuffer - fbo is not bound", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DRendererContextSetRasterizerStates_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "setMask";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DRendererContextSetLight_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "rendererContext->_bindedProgram";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DRendererContextSetLight_cold_2(int a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "lightIndex < C3D_MAX_LIGHTS";
  v4 = 1024;
  v5 = a1;
  _os_log_fault_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Wrong light index %d", &v2, 0x12u);
}

void C3DRendererContextSetLight_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "*currentTextureUnit <= 7";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DRendererContextSetLight texture unit out of bounds", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __SetupCommonProfileEffectProperty_cold_2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void __SetupCommonProfileEffectProperty_cold_3()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void __SetupCommonProfileEffectProperty_cold_4()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void C3DRendererContextCreateBufferObjectForMeshElement_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "element";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DRendererContextBindMeshElement_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void C3DRendererContextBindMeshElement_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "rendererContext->_meshElementsVBOs != NULL";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. mesh elements to vbo id dictionary should already be allocated", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DRendererContextMapVolatileMesh_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. You can only map volatile mesh", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DRendererContextMapVolatileMeshElement_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "0";
}

void C3DRendererContextMapVolatileMeshElement_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "indicesCount != 0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. there should be at least one primitive of a known type", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DRendererContextMapVolatileMeshElement_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "rendererContext->_meshElementsVBOs != NULL";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. mesh elements to vbo id dictionary should be allocated by now", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DRendererContextUnmapVolatileMeshElement_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "C3DMeshElementIsVolatile(meshElement)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. mesh element should be volatile", a5, a6, a7, a8, v8, DWORD2(v8));
}

void ___ZL17__renderToTexturePU45objcproto34SCNMaterialPropertyTextureProvider11objc_objectPU21objcproto10MTLTexture11objc_objectPU51objcproto40SCNMaterialPropertyTextureProviderHelper11objc_objectP19SCNMTLRenderContext_block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "scnComputeEncoder->isEncoding()";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. We should have a compute command encoder open at this point", a5, a6, a7, a8, v8, DWORD2(v8));
}

void ___ZL17__renderToTexturePU45objcproto34SCNMaterialPropertyTextureProvider11objc_objectPU21objcproto10MTLTexture11objc_objectPU51objcproto40SCNMaterialPropertyTextureProviderHelper11objc_objectP19SCNMTLRenderContext_block_invoke_79_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "scnBlitEncoder->isEncoding()";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. We should have a blit command encoder open at this point", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DRendererContextSetGLContext_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "context";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", &v1, 0xCu);
}

void C3DParticleManagerComputeTechniqueForSystem_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: ParticleSystem shaders missing : %@", &v2, 0xCu);
}

void _willExecuteParticleSystemPass_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "cullingContext";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", &v1, 0xCu);
}

void _executeParticleSystemPass_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "CFGetTypeID(instance) == C3DParticleSystemInstanceGetTypeID()";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. ParticleSystemInstance: wrong instance stored in rendererElement", &v1, 0xCu);
}

void C3DConvertBatch_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "dst.count == src.count";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. src and dst count must be equal", &v1, 0xCu);
}

void C3DConvertFloatingTypeToFloat4_cold_1(__int16 a1, uint64_t a2)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = C3DBaseTypeStringDescription(a1, a2);
  OUTLINED_FUNCTION_1_7(&dword_21BEF7000, v2, v3, "Error: unsupported conversion %@ -> float4", v4, v5, v6, v7, v8, DWORD2(v8));
}

void C3DConvertGetReadToFloat4Function_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "srcType < kC3DBaseTypeCount";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. unknown type", &v1, 0xCu);
}

void C3DFramebufferSetFBO_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "framebuffer";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __C3DFramebufferCleanup_block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "renderTarget->_fboRetainCount > 0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DFramebufferCleanup - bad retain count", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFramebufferDescriptionSetSampleCount_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "description";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFramebufferDescriptionSetSampleCount_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "description->depthDescription.renderToTexture == false";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. can't render to texture if multisampled", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFramebufferDescriptionSetSampleCount_cold_3(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "description->colorsDescription[i].renderToTexture == false";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. can't render to texture if multisampled", buf, 0xCu);
}

void _processRendererElement(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "C3DRendererElementIsHidden(rendererElement) != true";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Hidden nodes should have been removed from the pipeline already", a5, a6, a7, a8, v8, DWORD2(v8));
}

{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "theNode==NULL || C3DNodeGetOpacity(theNode) > 0 || (rendererElement->_renderableAttributeKind == kC3DRenderableAttributeKindParticleSystem)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Fully transparents objects should have been removed from the pipeline already", a5, a6, a7, a8, v8, DWORD2(v8));
}

{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "rendererDelegate";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _processRendererElement(uint8_t *a1, _BYTE *a2, NSObject *a3)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_0_2(&dword_21BEF7000, a3, a3, "Error: C3DEngineContextRenderTechnique - unknown draw instruction", a1);
}

void SCNMTLRenderCommandEncoder::setVertexTexture(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "!texture || [texture conformsToProtocol:@protocol(MTLTexture)]";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. texture is not a MTLTexture", a5, a6, a7, a8, v8, DWORD2(v8));
}

void ___Z18__slideWithinWorldP15__C3DConstraintP18__C3DEngineContextP18__C3DCullingSystemP9__C3DNodefDv3_fS7__block_invoke_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "vertices.type == kC3DBaseTypeVector3";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed.  - Only vector3 type is supported.", buf, 0xCu);
}

void ___Z18__slideWithinWorldP15__C3DConstraintP18__C3DEngineContextP18__C3DCullingSystemP9__C3DNodefDv3_fS7__block_invoke_9_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "vertexCountPerPolygon >= 3";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. unexpected vertex count", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DConstaintSliderSetCategoryBitMask_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "c";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void ___Z31C3DConstraintApplyAvoidOccluderP18__C3DEngineContextP25__C3DConstraintControllerPKvP16__C3DModelTargetf_block_invoke_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "positions.type == kC3DBaseTypeVector3";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed.  - Only vector3 type is supported.", buf, 0xCu);
}

void __StoreTexture_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "resourceManager";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DResourceManagerMakeImageResident_cold_4(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: Failed to load texture named %@ : %@", &v4, 0x16u);
}

void C3DResourceManagerMakeImageProxyResident_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "proxy";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DResourceManagerMakeMeshElementResident_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "element";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DResourceManagerMakeProgramResident_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "program";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __ResourceManagerReleaseResidentVRAMResource_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "vramResource";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __HandleVRAMResourcesRemovalFromCommands_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "textureProxy";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", buf, 0xCu);
}

void __deleteTextureProxies_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "textureProxy";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __ResourceManagerRemoveResidentMeshSourceData_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "meshSourceData";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __RemoveVRAMResourceFromDic_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "value";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DTextureCreate_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "t";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DImageProxyCreateTextureProxy_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "imageProxy";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DImageProxyGetCaptureDeviceInfo_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "imageProxy->_callbacks.getCaptureDeviceInfo";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DEnginePipelineSyncNodeAttribute_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "attribute";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DEnginePipelineSyncNodeAttribute_cold_3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Unreachable code: Unsupported node attribute '%@'", &v2, 0xCu);
}

void __HandleNodeNotification_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "notifications._eventType == kC3DNotificationEventType_Node";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. wrong notification type", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __HandleMaterialDidChangeNotifications_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "notifications._eventType == kC3DNotificationEventType_Material";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. wrong notification type", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __ApplyMaterialDidChange_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "engineIterationContext";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __HandleGeometryDidChangeNotifications_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "notifications._eventType == kC3DNotificationEventType_Geometry";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. wrong notification type", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __HandleLightDidChangeNotifications_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "notifications._eventType == kC3DNotificationEventType_Light";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. wrong notification type", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __HandleNodeWillDieNotification_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "name == kC3DNotificationNodeWillDie";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. wrong notification sent", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DEnginePipelineAllocateAndTrackRendererElements_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "span.count > 0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. no render elements have been created", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DEnginePipelineReset_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "pipeline";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DEnginePipelineRenderSubTree_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "passInstance";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "commonProfile";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DRendererContextSetTypedBytesUniformAtLocation_cold_3(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: C3DRendererContextSetValueUniformAtLocation not implemented for this type (%d) yet", v2, 8u);
}

void C3DFXProgramDelegateGetUserInfo_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "programDelegate";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _SCNStartCollectingPerformanceStatisticsForPid_cold_1()
{
  if (__cxa_guard_acquire(_MergedGlobals))
  {
    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_0_9(v0, v1, &dword_21BEF7000);
    __cxa_guard_release(_MergedGlobals);
  }
}

void _SCNStopCollectingPerformanceStatisticsForPid_cold_1()
{
  if (__cxa_guard_acquire(_MergedGlobals))
  {
    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_0_9(v0, v1, &dword_21BEF7000);

    __cxa_guard_release(_MergedGlobals);
  }
}

void SCNSetShaderCollectionEnabled_cold_1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: unable to create the shader cache folder at %@ (%@)", &v4, 0x16u);
}

void _C3DInitNumberArrayWithPropertyList_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _C3DInitNumberArrayWithPropertyList_cold_2()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void _C3DInitNumberArrayWithPropertyList_cold_3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DBaseTypeForCFNumberType_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DConvertToPlatformIndependentData_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "count * readStride <= read_length";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Not enough room for the specified count & stride to read", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DConvertToPlatformIndependentData_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "count * writeStride <= write_length";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Not enough room for the specified count & stride to write", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DConvertToPlatformIndependentData_cold_3(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: C3DConvertToPlatformIndependentData - archiving pointers makes no sense", buf, 2u);
}

void C3DConvertToPlatformIndependentData_cold_4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DConvertFromPlatformIndependentData_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DConvertFromPlatformIndependentData_cold_2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DConvertFromPlatformIndependentData_cold_3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DSizeOfBaseType_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "type < kC3DBaseTypeCount";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. unknown type", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DBaseTypeGetComponentType_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DBaseTypeGetCompoundType_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void C3DBaseTypeGetCompoundType_cold_2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void C3DBaseTypeGetCompoundType_cold_3()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void C3DBaseTypeGetCompoundType_cold_4()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void C3DBaseTypeGetCompoundType_cold_5()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void C3DBaseTypeGetCompoundType_cold_6()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void C3DBaseTypeGetCompoundType_cold_7()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void C3DBaseTypeGetCompoundType_cold_8()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void C3DBaseTypeGetCompoundType_cold_9()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void C3DBaseTypeGetCompoundType_cold_10()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void C3DBaseTypeGetCompoundType_cold_11()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void C3DBaseTypeGetCompoundType_cold_12(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "componentCount == 1";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Only one compound type per vector", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DBaseTypeDescription_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "bytesPerComponent && componentsCount && floatComponents";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. wrong parameters", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DBaseTypeFromDescription_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DBaseTypeFromDescription_cold_3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DAddBaseType_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_a";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DAddBaseType_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_b";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DAddBaseType_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_dst";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DAddBaseType_cold_4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DAddBaseType_cold_6()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DSubBaseType_cold_4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DSubBaseType_cold_6()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DCreateCStringFromStringWithEncoding_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "string";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DCreateCStringFromStringWithEncoding_cold_2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DStringNamed_cold_1()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void C3DDictionaryNamed_cold_1()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void C3DJsonNamed_cold_3()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void C3DDataFromMTLBuffer_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DDeduceSphericalHarmonicsOrderFromDataLength_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "length";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DDeduceSphericalHarmonicsOrderFromDataLength_cold_2()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 136315650;
  OUTLINED_FUNCTION_1_2();
  v3 = 2048;
  v4 = v0;
  _os_log_fault_impl(&dword_21BEF7000, v1, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Spherical Harmonics Data seems malformed: order(%d) !=> length(%zu)", v2, 0x1Cu);
}

void C3DFXShaderGetStage_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "shader";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFXShaderGetSource_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "stage";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _resizeProbesData_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "probesSystem->_probesCapacity";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _resizeProbesData_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "probesSystem->_probesPositions";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _computeNeighbourIndexes_cold_1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "tetrahedronIndexes";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. _computeNeighbourIndexes - missing tetrahedron", a1);
}

void _computeNeighbourIndexes_cold_2(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "_tetrahedrons[tetraderonIndex].neighbourIndexes[otherTetraderonFaceIndex] == -1";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. overwrite a neighbour index", a1);
}

void C3DLightProbesSystemSetProbeData_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "sh_sizeof(shOrder) == (size_t)CFDataGetLength(irradianceSH)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. wrong data size for SH", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DLightProbesBeginQueries_cold_2(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "vCount <=2";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. _faceHasEdgeSharedWithMoreThanTwoOtherOpenFace", a1);
}

void C3DLightProbesBeginQueries_cold_3(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: tetrahedrisation: index out of bounds", buf, 2u);
}

void C3DLightProbesBeginQueries_cold_4(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "validTetraCount <= (uint32_t)indexToRecycle";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. validTetraCount > indexToRecycle", a1);
}

void C3DLightProbesBeginQueries_cold_5(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "tetrahedronIsValid[indexValid]";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. will make an invalid tetrahedron valid", a1);
}

void __lookupTetrahedron_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "lastIndex != (uint32_t)-1";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Should never have been outside the tetras", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DLightProbesQuerySH2_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "cacheIndex";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DLightProbesSetGlobalSH3_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "sh_sizeof(shOrder) == (size_t)shLength";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. wrong data size for SH", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DEffectCommonProfileReleaseSlot_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "effect";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DEffectCommonProfileGetHashCode_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "commonProfile->_lightingModel < C3DLightingModelCount && C3DLightingModelCount < 15";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DEffectCommonProfileGetHashCode: inconsistency error", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __PostParentDidChangeNotification_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "typeID == C3DSceneGetTypeID()";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. LightingEnvironment not set on a Light or a Scene", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DEffectSlotSetHasNoContents_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "slot";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DEffectCommonProfileInitWithPropertyList_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_C3DEffectCommonProfileInitWithPropertyList";
  OUTLINED_FUNCTION_1_6(&dword_21BEF7000, a1, a3, "Error: invalid propertylist in %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DEffectCommonProfileCopyPropertyList_cold_4(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "key";
  OUTLINED_FUNCTION_0_0(&dword_21BEF7000, a3, a3, "Assertion '%s' failed. Null argument", a1);
}

void _C3DEffectCommonProfileCopyPropertyList_cold_6(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "imageID < INT_MAX";
  OUTLINED_FUNCTION_0_0(&dword_21BEF7000, a3, a3, "Assertion '%s' failed. Too many objects", a1);
}

void __DeserializeImage_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "entryID";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void vmesh::InterpolateNormals()
{
  __assert_rtn("InterpolateNormals", "VMesh.cpp", 495, "neighbor.a >= 0 && neighbor.a < int32_t(normals.size())");
}

{
  __assert_rtn("InterpolateNormals", "VMesh.cpp", 496, "neighbor.b >= 0 && neighbor.b < int32_t(normals.size())");
}

void vmesh::TriangleMesh::loadBaseMeshFromVectors()
{
  __assert_rtn("loadBaseMeshFromVectors", "VMesh.cpp", 515, "uvVec.size() == pointCountInVec");
}

{
  __assert_rtn("loadBaseMeshFromVectors", "VMesh.cpp", 520, "normalVec.size() == pointCountInVec");
}

{
  __assert_rtn("loadBaseMeshFromVectors", "VMesh.cpp", 532, "(idxVec.size() % 3) == 0");
}

{
  __assert_rtn("loadBaseMeshFromVectors", "VMesh.cpp", 512, "pointVec.size() > 0");
}

void C3DLODGetEntity_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "lod";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __C3DSubdivisionOsdGPURefine(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "refiner->computeEvaluator";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "evaluatorDidSucceed";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Internal consistency error.", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __C3DSubdivisionOsdGPUCreateSynchronizeCoarsePositionsPipeline(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "topologyInfo";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "osdRuntimeData->coarseVertexCount == remappingTableSize";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Internal consistency error.", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DSubdivisionOsdGPURuntimeDataCreateWithData(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "commandQueue";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DSubdivisionOsdGPURuntimeDataCreateWithData(id *a1)
{
  [*a1 status];
  [*a1 error];
  [*a1 logs];
  OUTLINED_FUNCTION_2_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void __C3DSubdivisionOsdGPURuntimeDataDecodeRefiner()
{
  __assert_rtn("__C3DSubdivisionOsdGPURuntimeDataDecodeEvaluatorInput", "C3DGeometryOpenSubdivSupport_Metal.mm", 684, "srcLength == sizeof(OpenSubdiv::Osd::BufferDescriptor)");
}

{
  __assert_rtn("__C3DSubdivisionOsdGPURuntimeDataDecodeEvaluatorInput", "C3DGeometryOpenSubdivSupport_Metal.mm", 685, "dstLength == sizeof(OpenSubdiv::Osd::BufferDescriptor)");
}

void C3DGeometryOpenSubdivGetGPUContext_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "geometry->_subdivInfo.subdivisionLevel > 0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. GPU support for OpenSubdiv must not be enabled when there is a tessellator but the subdivision level is still 0.", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __C3DGeometryOpenSubdivGetGPUContext_block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  C3DEntityGetName(*(a1 + 40), a2);
  OUTLINED_FUNCTION_2_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void C3DSubdivisionOsdGPURuntimeDataCreateWithGeometry(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "fvarChannelCount == fvarPrimvarCount";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Internal consistency error.", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DSubdivisionOsdGPURuntimeDataCreateWithGeometry(int *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3[0] = 67109376;
  v3[1] = 12;
  v4 = 1024;
  v5 = v2;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: OSD_MAX_VALENCE is set to %d and current mesh has a max valence of %d", v3, 0xEu);
}

void C3DSubdivisionOsdGPUSynchroniseCoarseMeshForDeformers_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "osdRuntimeData->skinMorphContext.synchronizeCoarsePositionsPipeline";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DSubdivisionOsdGPUDraw_cold_1(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136315394;
  v2 = "__C3DSubdivisionOsdGPUHasPatchOfType(osdRuntimeData, c3dPatchType)";
  v3 = 2080;
  v4 = "C3DSubdivisionOsdGPUDraw";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. %s called but there's no patch to draw.", &v1, 0x16u);
}

void C3DSubdivisionOsdGPUDraw_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "vertexDataBuffer";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DGeometryOpenSubdivGPUUpdateAuthoringEnvironmentData_cold_1(void *a1)
{
  [a1 format];
  OUTLINED_FUNCTION_2_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void ___ZL49C3DSubdivisionOsdGPURuntimeDataCreateWithGeometryP13__C3DGeometryP18__C3DEngineContextRK36C3DSubdivisionOsdGPUSubdivParametersP21SCNMTLResourceManagerPU26objcproto15MTLCommandQueue11objc_objectU13block_pointerFvPU27objcproto16MTLCommandBuffer11objc_objectbE_block_invoke_cold_1(void *a1)
{
  [a1 status];
  [a1 error];
  [a1 logs];
  OUTLINED_FUNCTION_2_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void ___ZL49C3DSubdivisionOsdGPURuntimeDataCreateWithGeometryP13__C3DGeometryP18__C3DEngineContextRK36C3DSubdivisionOsdGPUSubdivParametersP21SCNMTLResourceManagerPU26objcproto15MTLCommandQueue11objc_objectU13block_pointerFvPU27objcproto16MTLCommandBuffer11objc_objectbE_block_invoke_537_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "mtlBlitContext.computeCommandEncoder";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void ___ZL49C3DSubdivisionOsdGPURuntimeDataCreateWithGeometryP13__C3DGeometryP18__C3DEngineContextRK36C3DSubdivisionOsdGPUSubdivParametersP21SCNMTLResourceManagerPU26objcproto15MTLCommandQueue11objc_objectU13block_pointerFvPU27objcproto16MTLCommandBuffer11objc_objectbE_block_invoke_537_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "mtlBlitContext.commandBuffer";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DMeshSourcePrepareAppend_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "(size_t)CFDataGetLength(data) == stride * C3DSourceAccessorGetCount(accessor)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. We do not support appending to really complicated interleavings", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DMeshSourceCreateVolatile_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "accessor";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DMeshSourceSetVolatileData_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "C3DMeshSourceIsVolatile(source)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Cannot set volatile data of a non volatile source", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DEdgeArrayCreateFromMeshElement_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "edges";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DEdgeArrayCreateFromMeshElement_cold_3(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = 136315650;
  v5 = "edgeCount == edges->_count";
  v6 = 2048;
  v7 = a2;
  v8 = 2048;
  v9 = v3;
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. memory smasher found in C3DEdgeArrayCreateFromMeshElement (%ld != %ld)", &v4, 0x20u);
}

void C3DEdgeArrayGetEdgeAtIndex_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "index < edges->_count";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DEdgeArrayGetEdgeAtIndex index out of bounds", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DTriangulationInfoCreateFromMeshElement_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "element";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DTriangulationInfoCreateFromMeshElement_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "vertices";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DTriangulationInfoCreateFromMeshElement_cold_4(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "edgeIndexesPerFaceCounter[j] <= 2";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. C3DTriangulationInfoCreateFromMeshElement - edge out of bounds", buf, 0xCu);
}

void C3DTriangulationInfoGetEdgesAtFaceIndex_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "info";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DMeshElementEditorCreate_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "MeshElementEditor";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DMeshElementEditorSubdivideTriangleAtIndex_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "editor";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _addLightsInFrustum(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "shadowMapName";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

{
  *a1 = 136315138;
  *a2 = "C3DLightGetType(light) == kC3DLightTypeProbe";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Wrong light type", a1);
}

{
  *a1 = 136315138;
  *a2 = "outData->parameters.probe.index >= 0";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Slice index should have been attributed already", a1);
}

void ___Z19_addLightsInFrustumP19SCNMTLClusterSystem11scn_frustumhRKN13SCNMTLCluster7ContextEPNS_4InfoE_block_invoke_5_cold_1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "C3DLightGetProbeType(lights[i]) == kC3DLightProbeTypeRadiance";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Wrong probe type", a1);
}

void __append(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "ctx.packedIndices.data[fl - 1] == li";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. first light was not of the same index", a1);
}

{
  *a1 = 136315138;
  *a2 = "pl != 0";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. end index should be set already", a1);
}

{
  *a1 = 136315138;
  *a2 = "ctx.packedIndices.data[pl - 1] == li";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. previous light was not of the same index", a1);
}

{
  *a1 = 136315138;
  *a2 = "ctx.nextIndex[i] <= newIndicesCount";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. nextIndex out of range", a1);
}

void __addFroxelLightIndicesInBuffer(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "ctx.nextIndex[i] <= indicesCount";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. nextIndex out of range", a1);
}

void __compactLightIndices()
{
  __assert_rtn("__compactLightIndices", "SCNMTLClusterSystem.mm", 1452, "clusterCellSize == sizeof(simd_ushort2)");
}

{
  __assert_rtn("__compactLightIndices", "SCNMTLClusterSystem.mm", 1474, "clusterCellSize == sizeof(simd_ushort2)");
}

void __compactLightIndices(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "count > 0";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Should be non empty", a1);
}

void SCNMTLClusterSystem::compute(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "i < lightRange.y";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. range overflow", a1);
}

void btQuaternion::getIdentity()
{
  {
    btQuaternion::getIdentity(void)::identityQuat = xmmword_21C27F610;
  }
}

void C3DAnimationSetup_cold_3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DSimpleAnimationEvaluate_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "anim";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DSimpleAnimationEvaluate_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "outputAddress";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DSimpleAnimationEvaluate_cold_3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DSimpleAnimationCopy_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "dest";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DSimpleAnimationInitWithPropertyList_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _C3DSimpleAnimationInitWithPropertyList_cold_2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __C3DLightDidChange_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "light";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DLightGetIESProfileURL_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "light->_type == kC3DLightTypeIES";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Light should be a IES", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DLightGetProjectionInfo_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "projInfoOut";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DLightAddLightSHContribution_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "lightNode";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DLightInitWithPropertyList_cold_5()
{
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _C3DLightInitWithPropertyList_cold_6()
{
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void C3DCameraNeedsPostProcess_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "camera";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DProjectionInfosSetZFar_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "infos";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DProjectionInfosUnproject_cold_2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: error in C3DProjectionInfosUnproject", buf, 2u);
}

void _C3DCameraInitWithPropertyList_cold_2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_C3DCameraInitWithPropertyList";
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: invalid propertylist in %s", &v1, 0xCu);
}

void C3DNodeGetWorldMatrix_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "node->_transformHandle != kC3DTransformHandleInvalid";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Node should have a TT handle already", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DNodeAddChildNode_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "child";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DNodeCreateSubdividedCopy_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "subdivisionLevel > 0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. need subdivision level", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DNodeInsertChildNodeAtIndex_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "child->_nextSibling == NULL";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. child is already inserted in a tree", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DNodeInsertChildNodeAtIndex_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "child->_parent == NULL";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. child is already inserted in a tree", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DNodeInsertChildNodeAfterChild_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "prevSibling->_parent == node";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. prevChild is not parented to the right node", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DNodeRemoveFromParentNode_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "prevChild";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DNodeRemoveFromParentNode_cold_2(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "prevChild";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", buf, 0xCu);
}

void C3DNodeGetWorldPosition_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "position";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DNodeGetWorldOrientation_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "orientation";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DNodeComputeWorldMatrix_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "m";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DNodeGetNodeWithName_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "name";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DNodeCopyNodesWithAttribute_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "attributeName";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __UpdateNodeVisibilityIfNeeded_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "!C3DNodeShouldBePutInCullingSystem(root) || (root->_cullingHandle != kC3DCullingHandleInvalid)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Node should already be in CullingSystem", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DNodeIsAncestor_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "ancestor";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DNodeFindCommonAncestor_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "arrayOfNodes";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DNodeAddParticleSystem_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "ps";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DNodeAddAudioPlayer_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "player";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __UpdateAudioTransform_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "array";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DNodeSetLayerIndex_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "layer < C3D_MAX_LAYERS";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. layer index out of bound", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DNodeCFFinalize_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: inconsistency in scene graph found in C3DNode finalize", buf, 2u);
}

void _serializeNodeAttribute_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "libID!=0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. _serializeNodeAttribute lighmap not serialized", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DNodeGetBoundingSphere_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "sphereOut";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __BuildSemanticInfosForData_cold_1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "semantic > currentSemantic";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Mesh sources are not sorted correctly", a1);
}

void __BuildSemanticInfosForData_cold_2(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "data->sourcesSemanticInfos[semantic].index == -1";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Mesh sources with same semantic non contiguous", a1);
}

void __BuildSemanticInfosForData_cold_3(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "semantic != kC3DMeshSourceSemanticPosition || data->sourcesSemanticInfos[semantic].count == 0";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. No double position sources allowed", a1);
}

void __DropOriginalTopology_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "mesh->_renderableData.sources";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __DropOriginalTopology_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "mesh->_renderableData.elements";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DMeshApplySources_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "__meshDataForDataKind";
  OUTLINED_FUNCTION_1_6(&dword_21BEF7000, a1, a3, "Unreachable code: Internal consistency error in %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DMeshFinalizeDeserialization_cold_2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _C3DMeshFinalizeDeserialization_cold_3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _C3DMeshFinalizeDeserialization_cold_4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _C3DMeshFinalizeDeserialization_cold_5(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_1_6(&dword_21BEF7000, a2, a3, "Error: Mesh deserialization: cannot find the sources in %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __DeserializePrimarySource_cold_1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "C3DSourceAccessorGetSource(accessor) == (C3DGenericSourceRef) primarySource";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. This accessor doesn't point back to the primary source", a1);
}

void __DeserializePrimarySource_cold_2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __DeserializePrimarySource_cold_3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DMeshCopyBoundingVolumes_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "srcCount == dstCount";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Can't copy bounding volumes from meshes with different element count", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DMeshGetElementAtIndex_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "mesh->_originalData.elements";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DMeshGetElementAtIndex_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "C3DMeshGetElementAtIndex";
  OUTLINED_FUNCTION_1_6(&dword_21BEF7000, a1, a3, "Unreachable code: Internal consistency error in %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __C3DMeshRemoveSourceWithSemanticAtIndex_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "sourceIndex < oldSourceCount";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Mesh sources are malformed", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __C3DMeshSetSourceWithInputSetAndDataKind_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "(dataKind != kC3DMeshDataKindRenderable) || (channel == kC3DSharedRenderableIndexChannel)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Renderable data kind must not give a channel", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __C3DMeshSetSourceWithInputSetAndDataKind_cold_5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "channel != kAutomaticChannelIndex";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. need to provide a valid channel index when adding a new source", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __indexOfSourceWithSemanticAtIndex_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "sourceIndex < CFArrayGetCount(meshData->sources)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Mesh sources are malformed", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DMeshHasSourcesWithSemantic_cold_1(uint64_t a1, uint64_t a2)
{
  v3 = scn_default_log(a1, a2);
  OUTLINED_FUNCTION_6_2(v3);
  *a1 = 136315138;
  *(a1 + 4) = "__meshDataForDataKind";
  OUTLINED_FUNCTION_4_3(&dword_21BEF7000, v4, v5, "Unreachable code: Internal consistency error in %s");
  __break(1u);
}

void C3DMeshGetChannelForSourceAtIndex_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "mesh->_originalData.sourceChannels";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DMeshGetChannelForSourceWithSemanticAtIndex_cold_1(char a1, int a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = 136315650;
  v6 = "sourceIndex != kCFNotFound";
  v7 = 2112;
  v8 = C3DMeshSourceSemanticToSemanticString(a1);
  v9 = 1024;
  v10 = a2;
  _os_log_fault_impl(&dword_21BEF7000, a3, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Could not find source with semantic %@ at index %d", &v5, 0x1Cu);
}

void __C3DMeshFixAccessorLinks_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: __C3DMeshCopy - unable to resolve interleaved mesh", buf, 2u);
}

void C3DMeshGetIndexOfElement_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "C3DMeshGetIndexOfElement";
  OUTLINED_FUNCTION_1_6(&dword_21BEF7000, a1, a3, "Unreachable code: Internal consistency error in %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DMeshGetMeshElements_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "C3DMeshGetMeshElements";
  OUTLINED_FUNCTION_1_6(&dword_21BEF7000, a1, a3, "Unreachable code: Internal consistency error in %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DMeshInitWithPropertyList_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_C3DMeshInitWithPropertyList";
  OUTLINED_FUNCTION_1_6(&dword_21BEF7000, a1, a3, "Error: invalid propertylist in %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DMeshCopyPropertyList_cold_2(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "sourceID <= INT_MAX";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Too many objects in the library", a1);
}

void _C3DMeshCopyPropertyList_cold_3(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "C3DGenericSourceIsPrimary(primarySource)";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. This source should be a primary one", a1);
}

void _C3DMeshCopyPropertyList_cold_4(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "source";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

void C3D::flattenedNodesForSelectedNodes(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "nodes";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "scratchAllocator";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DMaterialSetFillMode_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "fillMode == kC3DFillModeFill || fillMode == kC3DFillModeLines";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. invalid fill mode", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DMaterialGetBlendStates_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "material->_commonProfile";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DMaterialGetBlendStates_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "oBlendColor";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DMaterialInitWithPropertyList_cold_3(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_C3DMaterialInitWithPropertyList";
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: invalid propertylist in %s", &v1, 0xCu);
}

void C3DSceneNodeWasAdded_cold_3(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "player != NULL";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. There should only be valid audio sources in this array", buf, 0xCu);
}

void C3DScenePostPipelineEvent_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "originator";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DSceneSetLayerRootNode_cold_2()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315650;
  OUTLINED_FUNCTION_2_11();
  _os_log_fault_impl(&dword_21BEF7000, v0, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Only %d layers are available, but layer %d requested", v1, 0x18u);
}

void _C3DSceneInitWithPropertyList_cold_3(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_C3DSceneInitWithPropertyList";
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: invalid propertylist in %s", &v1, 0xCu);
}

void _C3DSceneFinalizeDeserialization_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "library";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _copySerializedHierarchy_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "libID < INT_MAX";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Too many objects", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _deserializeHierarchy_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: Library could not remap the ID %@", &v2, 0xCu);
}

void C3DPhysicsWorldAddBodyToWorld(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "C3DNodeIsHidden(nodeRef) == false";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Node should be visible", a5, a6, a7, a8, v8, DWORD2(v8));
}

void btC3DCollisionDispatcher::updateContact(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_implementDidUpdateContact";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. update should not be called if not implemented by the delegate", a5, a6, a7, a8, v8, DWORD2(v8));
}

void btC3DCollisionDispatcher::deleteContact(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_implementDidEndContact";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. update should not be called if not implemented by the delegate", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3D::PassDescriptor::inputAtIndex()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

void C3D::PassDescriptor::outputAtIndex()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

void C3D::PassResource::inputAtIndex()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

void C3D::PassResource::outputAtIndex()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

void C3D::Pass::addDependency()
{
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void C3DFramebufferRegistryPrepareFramebufferWithDescription_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "registry";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _addRenderTargetIfNeeded_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "renderTarget";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFramebufferRegistryFinalizeAndGetFramebuffer_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "registry->_currentFramebuffer";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFramebufferRegistryRetainTextureWithName_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "targetName";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFramebufferRegistryRetainTextureWithName_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "retainCount > 0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DFramebufferRegistryRetainTextureWithName retainCount==0", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _removeReference_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "nameIndex!=0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. _removeReference - index==0", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFramebufferRegistryReleaseFramebuffer_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "fbo";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __rayIntersectSphere_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "*oLength > 0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. wrong length", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DParticleInitLife_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "lifeArray";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DParticleInitLifeWithVariation_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "invLifeSpan";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DParticleInitBirthTime_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "birthTimeArray";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DParticleInitMass_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "invMassArray";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DParticleInitSize_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "sizeArray";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DParticleInitBounce_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "bounceArray";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DParticleInitFriction_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "frictionArray";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DParticleInitCharge_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "chargeArray";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DParticleInitColor_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "colorsArray";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DParticleInitRotationAxis_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "rotAxisArray";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DParticleInitFrame_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "valueArray";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __reserveData_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "type < kC3DLightEffectiveTypeCount";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. wrong light type", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __updateWorldData_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "C3DLightGetProbeType(light) == kC3DLightProbeTypeRadiance";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. wrong probe type", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __updateWorldData_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "C3DLightGetProbeType(light) == kC3DLightProbeTypeIrradiance";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. wrong probe type", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __lightOptimizedType_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DLightingSystemBeginQueries_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "lightingSpaceMatrix";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DLightingSystemGetIrradianceProbesCount_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "lightingSystem";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DLightingSystemGetLightingSetProgramHashCodes_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "((rInd > 0) && (rInd <= pipelineData->_runtimeLightsCount)) || (rInd == kDefaultRuntimeIndex)";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Invalid runtime light index", buf, 0xCu);
}

void C3DLightingSystemGetLightingSetDesc_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: Invalid runtime light index", buf, 2u);
}

void C3DLightingSystemComputeShadowMatrices_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "lightNode";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DLightingSystemComputeShadowMatrices_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Light does not casts shadow. Cannot compute shadow parameters.", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DLightingSystemComputeShadowMatrices_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "shadowInd <= kMaxRuntimeShadows";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Max caster index overflow", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DLightingSystemComputeShadowMatrices_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Not Yet Implemented!!!!", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DLightingSystemGetActiveShadowCasterData_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "casterIndex <= kMaxRuntimeShadows";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Max caster index overflow", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DLightingSystemGetActiveShadowCasterData_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "casterIndex > 0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. 0 caster index is reserved", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _copyAnimations_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _findClone_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void createGLFramebufferInfo_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "info->frameBuffer == NULL";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. framebuffer should be null", a5, a6, a7, a8, v8, DWORD2(v8));
}

void createGLFramebufferInfo_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "info->multisamplingFrameBuffer == NULL";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. multisampling framebuffer should be null", a5, a6, a7, a8, v8, DWORD2(v8));
}

void createGLFramebufferInfo_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "drawableSize.x > 0 && drawableSize.y > 0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. invalid framebuffer size", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DToCAFillMode_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void CABasicAnimationToC3DAnimation_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void CAKeyframeAnimationToC3DAnimation_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _CAAnimationToC3DAnimation_cold_1(uint64_t a1)
{
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void _CAAnimationToC3DAnimation_cold_2(uint64_t a1)
{
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void _C3DAnimationToCAAnimation_cold_1()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void SCNAddAnimation_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFTypeIsC3DEntity(rootCF)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. SCNAddAnimationGroup target is not an entity", a5, a6, a7, a8, v8, DWORD2(v8));
}

void SCNAddAnimation_cold_3()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void SCNRemoveAnimation_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFTypeIsC3DEntity(rootCF)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. SCNRemoveAnimation target is not an entity", a5, a6, a7, a8, v8, DWORD2(v8));
}

void SCNFadeAndRemoveAnimation_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFTypeIsC3DEntity(rootCF)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. SCNFadeAndRemoveAnimation target is not an entity", a5, a6, a7, a8, v8, DWORD2(v8));
}

void SCNRemoveAllAnimations_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFTypeIsC3DEntity(rootCF)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. SCNRemoveAllAnimations target is not an entity", a5, a6, a7, a8, v8, DWORD2(v8));
}

void SCNFadeAndRemoveAllAnimations_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFTypeIsC3DEntity(rootCF)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. SCNFadeAndRemoveAllAnimations target is not an entity", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3D::RenderProbePass::RenderProbePass(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "C3DNodeGetLight(_drawNodesParameters.pointOfView)";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", &v1, 0xCu);
}

void SCNStandardConstants::_setPropertyFlags(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "*texcoord_io_index < kSCNTexcoordCount";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. too many io texcoord needed", &v1, 0xCu);
}

void C3DParticleSystemGetRenderingMode_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "particleSystem";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DLibraryGetRemappedID_cold_2(int a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: library does not contain an entry %d with kind %d", v3, 0xEu);
}

void C3DLibraryTrackID_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "documentIDRef";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DLibraryGetEntry_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "lib->_entries";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DLibraryGetEntryWithUniqueID_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "lib";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DLibraryGetEntryWithUniqueID_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "uniqueID";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DLibraryGetEntryWithDocumentID_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "documentID";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DLibraryFinalizeDeserialization_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "object == lib";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. inconsistent parameters", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DLibraryFinalizeDeserialization_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "library->_storage";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __finalizeDeserialization_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "entryToSerializedData";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFloorGetReflectivity_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "floor";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DFloorInitWithPropertyList_cold_2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_C3DFloorInitWithPropertyList";
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: invalid propertylist in %s", &v1, 0xCu);
}

void C3D::SmartPtr<__C3DArray *,C3D::detail::CFRetainFct,C3D::detail::CFReleaseFct>::operator __C3DArray *(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_ptr != NULL";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Dereferencing null pointer", &v1, 0xCu);
}

void C3DProgramHashCodeStoreRegisterProgramForRendererElementAndHashPass_cold_1(int *a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4[0] = 67109376;
  v4[1] = a2;
  v5 = 1024;
  v6 = v3;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: C3DProgramHashCodeStoreRegisterProgramForRendererElement - index out of capacity (%d > %d)", v4, 0xEu);
}

void C3DProgramHashCodeStoreRegisterProgramForRendererElementAndHashPass_cold_2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "programIndex < 0xffffffff";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. C3DProgramHashCodeStoreRegisterProgramForRendererElement - programIndex out of uint32_t. will crash soon", &v1, 0xCu);
}

void C3DMeshCreateFromProfile_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "C3DMeshElementTypeDefinesTopology(meshType)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Mesh type has to define a topology", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DSubdivErrorCallbackFunc()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void C3DSubdivGetGPUPrimvarDataTypeHash(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "topologyInfo";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void ___Z34C3DSubdivGetGPUPrimvarDataTypeHashPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void _Z68C3DSubdivCPUPrimvarDataCopyCrossNormalizedDataAtIndexToBufferAtIndexIDv2_fEvRNSt3__16vectorI16C3DSubdivCPUDataIT_ENS1_9allocatorIS5_EEEES9_iPfi_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DGeometryInitSubdivTopologyInfoIfNeeded()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  __assert_rtn("C3DGeometryInitSubdivTopologyInfoIfNeeded", "C3DGeometryOpenSubdivSupportInternal.cpp", 771, "(int32_t)vertexCountPerFaceCurrentIndex == topologyInfo->topologyDescriptor.numFaces");
}

{
  __assert_rtn("C3DGeometryInitSubdivTopologyInfoIfNeeded", "C3DGeometryOpenSubdivSupportInternal.cpp", 812, "vertIndicesPerFaceCurrentIndex == topologyInfo->totalIndexCount");
}

void C3DGeometrySubdivTopologyInfoInitCreasesAndCorners(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "C3DMeshElementGetIndicesChannelCount(creasesElement) == 1";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Found crease element with more than 1 channel", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DSubdivInitCPUPrimvarContext(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "currentIndex == topologyInfo->totalIndexCount";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Error while building face-varying channel.", a1);
}

void ___Z30C3DSubdivInitCPUPrimvarContextP26C3DSubdivCPUPrimvarContextPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_8_1();
  _os_log_fault_impl(&dword_21BEF7000, v0, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Semantic %d can not be a primvar", v1, 0x12u);
}

void C3DSubdivSourceGetPrimvarDataType()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_8_1();
  _os_log_fault_impl(&dword_21BEF7000, v0, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Semantic %d can not be a primvar", v1, 0x12u);
}

void __C3DSubdivFeedCPUPrimvar()
{
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void C3DSubdivInitGPUPrimvarDescriptor(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "overallVertexIndex == topologyInfo->totalIndexCount";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Error while building face-varying channel.", a1);
}

void ___Z33C3DSubdivInitGPUPrimvarDescriptorP29C3DSubdivGPUPrimvarDescriptorPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke_cold_1(char a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  C3DMeshSourceSemanticToSemanticString(a1);
  OUTLINED_FUNCTION_2_7();
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Unreachable code: Invalid GPU primvar semantic '%@'", v3, 0xCu);
}

void ___Z33C3DSubdivInitGPUPrimvarDescriptorP29C3DSubdivGPUPrimvarDescriptorPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke_cold_2(uint8_t *a1, uint64_t a2)
{
  v3 = scn_default_log(a1, a2);
  os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
  *a1 = 0;
  _os_log_error_impl(&dword_21BEF7000, v3, OS_LOG_TYPE_ERROR, "Unreachable code: Internal consistency error", a1, 2u);
  __break(1u);
}

void C3DSubdivComputeElementToFaceRangeTable(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "subdividedElementIndexForFace < subdividedElementCount";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Internal consistency error", a1);
}

void C3DSubdivComputeElementToPatchRangeTable(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Unreachable code: Internal consistency error - Unexpected element type", buf, 2u);
}

void C3DSubdivCreateMesh()
{
  __assert_rtn("C3DSubdivCreateMesh", "C3DGeometryOpenSubdivSupportInternal.cpp", 1733, "faceVertexIndices.size() == 4");
}

{
  __assert_rtn("C3DSubdivCreateMesh", "C3DGeometryOpenSubdivSupportInternal.cpp", 1753, "faceVertexIndices.size() == 4");
}

void C3DSubdivCreateMesh(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "indexBufferIndex == indexBufferIndexCount";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Internal consistency error", a1);
}

void _ZN23C3DSubdivCPUPrimvarDataIDv2_fE11InterpolateEiPN10OpenSubdiv6v3_1_13Far14PrimvarRefinerEPNS4_15TopologyRefinerE_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "level <= _finalLevel";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Can't subdivide further", a5, a6, a7, a8, v8, DWORD2(v8));
}

void OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeVertexVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>()
{
  __assert_rtn("assignSmoothMaskForVertex", "catmarkScheme.h", 182, "vertex.GetNumFaces() == vertex.GetNumEdges()");
}

{
  __assert_rtn("CombineVertexVertexMasks", "scheme.h", 289, "this->AreFaceWeightsForFaceCenters() == dst.AreFaceWeightsForFaceCenters()");
}

void _ZN23C3DSubdivCPUPrimvarDataIDv2_fE17CreateMeshSourcesERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEPNS4_14PrimvarRefinerEbPK22C3DSubdivisionSettingsP31C3DSubdivCPUMeshCreationContext_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_interpolationMode == kC3DSubdivPrimvarDataInterpolationModeInterpolateVertex";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Position sources must use the 'vertex' interpolation mode", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _ZN23C3DSubdivCPUPrimvarDataIDv2_fE17CreateMeshSourcesERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEPNS4_14PrimvarRefinerEbPK22C3DSubdivisionSettingsP31C3DSubdivCPUMeshCreationContext_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "subdividedDataCount == refiner.GetLevel(refiner.GetMaxLevel()).GetNumVertices()";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Number of normals at limit surface is not equal to number of vertex positions", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _ZN23C3DSubdivCPUPrimvarDataIDv2_fE26_CreateMeshSourceForSourceERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEbPK15__C3DMeshSourceP31C3DSubdivCPUMeshCreationContext_cold_1()
{
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void C3DSkinnerSetOwnerNode_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "skinner";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __C3DSkinnerPrepareSkinnedMesh_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "skinnedMesh";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __C3DSkinnerPrepareSkinnedMesh_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "C3DMeshGetSourceWithSemanticAtIndex(skinnedMesh, kC3DMeshSourceSemanticSkinningJoints, 0, kC3DMeshDataKindRenderable)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __C3DSkinnerPrepareSkinnedMesh_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "C3DMeshGetSourceWithSemanticAtIndex(skinnedMesh, kC3DMeshSourceSemanticSkinningWeights, 0, kC3DMeshDataKindRenderable)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _computeJointMatrices_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "joint";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", buf, 0xCu);
}

void C3DSkinnerUpdateCurrentMesh_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "needPrepare == false";
}

void C3DSkinnerUpdateCurrentMesh_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "calculationMode == kC3DSkinnerCalculationModeGPUComputeKernel || skinner->_meshIsGPUVertexReady";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. flags not up to date", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DSkinnerUpdateCurrentMesh_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "skinner->_meshIsCPUReady";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. flags not up to date", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DSkinnerUpdateCurrentMesh_cold_5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "C3DMeshSourceIsMutable(C3DMeshGetPositionSource(skinnedMesh, kC3DMeshDataKindRenderable))";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Position source should be mutable", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DSkinnerUpdateCurrentMesh_cold_6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "!C3DMeshGetNormalSource(skinnedMesh, kC3DMeshDataKindRenderable) || C3DMeshSourceIsMutable(C3DMeshGetNormalSource(skinnedMesh, kC3DMeshDataKindRenderable))";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Normal source should be mutable", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DSkinnerGetSkinnedMeshLegacy_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "ownerNode";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DSkinnerUpdateJointsAndBoundingBox_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "skin";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DSkinnerUpdateJointsAndBoundingBox_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "currentPositionSource && currentPositionSource != originalPositionSource";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. CPU Skinning dst position source not created.", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DSkinnerUpdateJointsAndBoundingBox_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "C3DMeshSourceIsMutable(currentPositionSource)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. CPU skinning: position not mutable", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DSkinnerUpdateJointsAndBoundingBox_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "currentNormalSource != originalNormalSource";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. CPU Skinning dst normal source not created.", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DSkinnerUpdateJointsAndBoundingBox_cold_5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "C3DMeshSourceIsMutable(currentNormalSource)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. CPU skinning: normal not mutable", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DSkinnerAdjustTransformIfUsesNodeTransformCalculationMode_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "vectorCount == 3";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. there should be exactly one transposed matrix in here", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __EntryNumberCreate_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "libID < INT_MAX";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Too many objects", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DSkinCopyInverseBindMatricesPtr_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "skin->_inverseBindMatrices";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DSkinFillJointWeightsBuffers_cold_1(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136315394;
  v2 = "count == dstJoints.count && (!dstWeights.ptr || (count == dstWeights.count))";
  v3 = 2080;
  v4 = "C3DSkinFillJointWeightsBuffers";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. inconsistency in %s", &v1, 0x16u);
}

void _C3DSkinInitWithPropertyList_cold_3()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void _C3DSkinInitWithPropertyList_cold_4()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void _C3DSkinInitWithPropertyList_cold_5()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void _C3DSkinInitWithPropertyList_cold_6()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void _C3DSkinCopyPropertyList_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: A vertex weight index does not fit on an int", buf, 2u);
}

void _C3DSkinFinalizeDeserialization_cold_4()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void _C3DSkinFinalizeDeserialization_cold_5()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void _C3DSkinFinalizeDeserialization_cold_6()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void _C3DSourceAccessorInitWithPropertyList_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_C3DSourceAccessorInitWithPropertyList";
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: invalid propertylist in %s", &v1, 0xCu);
}

void _C3DSourceAccessorFinalizeDeserialization_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: Accessor deserialization: Could not remap the ID for source %d", v2, 8u);
}

void _C3DSourceAccessorFinalizeDeserialization_cold_2(os_log_t log)
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 67109120;
  v1[1] = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: Accessor deserialization: Could not remap the ID for source %d", v1, 8u);
}

void C3DSourceAccessorGetData_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "accessor";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DSourceAccessorGetVolatileValuePtrAtIndex_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "accessor->_source->_dataIsVolatile";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. cannot access volatile data on non volatile source", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DGenericSourceInitWithPropertyList_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_C3DGenericSourceInitWithPropertyList";
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: invalid propertylist in %s", &v1, 0xCu);
}

void _C3DGenericSourceInitWithPropertyList_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "(numberType == kCFNumberFloatType) || (numberType == kCFNumberFloat32Type)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. We used to support only floats, but another type was encountered", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DGenericSourceCreate_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "genericSource";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DGenericSourceSetData_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "!genericSource->_dataIsVolatile";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. cannot set data to volatile source", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DGenericSourceSetData_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "genericSource->_mtlVertexFormat == 0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. cannot set data to MTL buffer", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DGenericSourceSetVolatileData_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "genericSource->_dataIsVolatile";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. cannot set volatile data to non volatile source", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DGenericSourceSetVolatileData_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "genericSource->_mtlVertexFormat == 0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. cannot set volatile data to MTL buffer", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DGenericSourceCreateDeserializedDataWithAccessors_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "C3DSourceAccessorGetSource(accessor) == (C3DGenericSourceRef) genericsource";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. This accessor doesn't point back to the primary source", buf, 0xCu);
}

void C3DResourceCacheCreate_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "resourceCache";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DResourceCacheCopyResourceOrCreateIfNeededForSource_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "cache";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DResourceCacheCopyResourceOrCreateIfNeededForSource_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "originalSource";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DResourceCacheCopySourceForResource_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "resource";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3D::DrawNodesPass::setup(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "out0.attachmentType == TextureAttachmentType::Color || out0.attachmentType == TextureAttachmentType::Depth";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. DrawNodes must output in color or depth as first outputs", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3D::DrawNodesPass::_renderEye(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "visibleElements";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3D::DrawNodesPass::_setupPointOfView(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_cullingContext.scene";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3D::DrawNodesPass::_setupPointOfViewMatrices(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "NULL";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Can't get a valid projection info", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DAnimationGroupAddAnimation_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "AnimationGroup";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DAnimationGroupAddAnimations_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "group";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DAnimationGroupAddAnimations_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "animations";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DAnimationGroupCopy_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "dest";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DAnimationGroupCopyPropertyList_cold_2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: _C3DAnimationChannelCopyPropertyList - no target path", buf, 2u);
}

void C3D::SSAOUpSamplePass::execute(os_log_t log)
{
  *v1 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: No camera set for tone mapping pass", v1, 2u);
}

{
  *v1 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: No point of view set for tone mapping pass", v1, 2u);
}

void C3D::JitteringPass::execute(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "count > 0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Count should be > 0", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3D::ScenePass::setup(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "previousFilterPass";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", buf, 0xCu);
}

void C3D::ScenePass::_shouldPushNodeToVisible(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "topLevelFilterNode->_hasFilter";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Top level filtered node must have a filter", a5, a6, a7, a8, v8, DWORD2(v8));
}

{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "sequence->count + count <= sequence->allocatedCount";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Not enough space allocated", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DParametricGeometryGetChamferRadius_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "parametricGeometry";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DParametricGeometryCreate_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "callBacks";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DParametricGeometryCopy_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "hasMesh == (hash != NULL)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. A parametric geometry with a mesh must also have a hash", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DParametricGeometryCacheIncrRetainCountForHash_not_thread_safe_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "retainCount != 0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. inconsistency in _C3DParametricGeometryCacheIncrRetainCount", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DParametricGeometryIsHemispheric_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "parametricgeometry";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DParametricGeometryReleaseCachedMesh_not_thread_safe_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "retainCount>0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. inconsistency in _C3DParametricGeometryReleaseCachedMesh", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DValueSetValueFromString_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. string to type conversion not supported", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DValueConcat_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "a";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DValueConcat_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "b";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DValueConcat_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "output";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DValueConcat_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "type == C3DValueGetType(b)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DValueAdd - invalid arguments", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DValueConcat_cold_5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "type == C3DValueGetType(output)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DValueAdd - invalid arguments", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFXSamplerSetTextureSampler_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "sampler";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DIOFinalizeLoadScene_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Unreachable code: __OptimizeMesh:bytesPerIndex != 1, 2, or 4 during conversion, this should not happen !!", buf, 2u);
}

void C3D::CIFilterPass::execute(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "outputTex";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DIOCreateSceneWithData_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: Error loading the unzipped data: %@", &v3, 0xCu);
}

void _C3DCreatePropertyListFromScene_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: can't serize plist :%@", &v2, 0xCu);
}

void C3DEntityRemoveAllAnimations_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "entity";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DEntityGetAttribute_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "name";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DEntityInitWithPropertyList_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "C3DEntityInitWithPropertyList";
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: invalid propertylist in %s", &v1, 0xCu);
}

void __CFTypeIsC3DEntity_block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_cfTypeRegistry == NULL";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. CFTypeIsC3DEntity - dispatched twice", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DEntityGetSubAttributeOrderedDictionary_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFGetRetainCount(dict) >= 2";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DEntitySetAttribute failed to cache attribute", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DEntityRemoveBindingWithKeyPath_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "keyPath";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DEntityAddAction_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "action";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DEntitySetValueForKey_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "propertyName";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DEngineNotificationQueueEnqueueEvent_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "notificationQueue";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DEngineNotificationQueueEnqueueEvent_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "nil";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. missing attribute", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DEngineNotificationQueueStartObserving_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "queue";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DDynamicBatchingSystemSetMaxBatchSize_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "dynamicBatchingSystem->_currentBatchInstancesCount == 0";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Can't change max batch size while in batch", &v1, 0xCu);
}

void __morphWeightsHaveChanged_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "overallRuntimeTargetIndex == totalMorphTargetCount";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Morpher failed to update all its runtime weights", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DMorphUpdateCPUMeshIncrementally_cold_1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "element";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

void __blendsparse_dst_float_src_float_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "dst.componentType == kC3DBaseTypeFloat";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Morph of other type than float not yet implemented", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DMorphGetWeightCount_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "morph";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DMorphConvertToSparse_cold_1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "channels[i] == channels[0]";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. It doesn't make sense to call C3DMeshElementCreateIntervalList for sources with different channels", a1);
}

void C3DMorphConvertToSparse_cold_2(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "C3DMeshGetElementsCount(targetMesh) == 1";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. sparse target should only contain 1 mesh element", a1);
}

void C3DMorphConvertToSparse_cold_3(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "morph->_calculationMode == kC3DMorpherCalculationModeAdditive";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. sparse targets should be in additive mode", a1);
}

void C3DMorphGetIndexOfTargetWithName_cold_1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "name";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

void __evaluateRuntimeWeightsForInBetween_cold_1(int a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109376;
  v3[1] = a2;
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: Internal consistency error. There should be %d runtime morph target weights, but we the current morph weight index is %d.", v3, 0xEu);
}

void C3DMorpherBeginIncrementalPass_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "morpher";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DMorpherPrepareMorphedMesh_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_C3DMorpherPrepareMorphedMesh";
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Unreachable code: %s should never be called when using the new deformer pipeline", &v1, 0xCu);
}

void C3DFXContextSetPostProcessTechnique_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "fxContext";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFXContextIsMainPass_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "pass";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFXContextGetCurrentPassInstance_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "fxContext->_currentPassIndex<fxContext->_renderPassCount";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DFXContextGetCurrentPassInstance - invalid index", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFXContextSetup_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __C3DFXContextSetup_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DEngineContextRenderSubTechnique_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "passInstance";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DEngineContextRenderSubTechnique_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "technique->_isBeingRendered==false";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DEngineContextRenderSubTechnique is already being rendered", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DEngineContextRenderSubTechnique_cold_5(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "pass->_drawInstruction != kC3DFXDrawScene";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. sub techniques of type draw scene is not supported", a1);
}

void __C3DEngineContextRenderPassInstance_cold_6()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __C3DEngineContextRenderPassInstance_cold_7(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "fbo == NULL";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. unexpected subpass fbo", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __C3DEngineContextRenderPassInstance_cold_9()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __appendTechnique_cold_1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "scene";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

void __appendTechnique_cold_2(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "pipeline";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

void __appendTechnique_cold_3(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "store";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

void C3DEngineContextRenderMainTechnique_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "renderContext || rendererContextGL";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Need one type of render context", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DEngineContextRenderMainTechnique_cold_2(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "engineContext";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

void C3DEngineContextRenderMainTechnique_cold_3(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "passInstance";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

void C3DFXContextSetCurrentColor_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "fxContext->_currentColorTarget->_referenceCount>0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DFXContextSetCurrentColor invalid retainCount", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFXContextSetCurrentDepth_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "fxContext->_currentDepthTarget->_referenceCount>0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DFXContextSetCurrentDepth invalid retainCount", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3D::CustomPass::name(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_fxPass";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Override custom pass name if it doesn't have any fxPass", &v1, 0xCu);
}

void C3D::CustomPass::execute(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_fxPass";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Override custom pass execute if it doesn't have any fxPass", &v1, 0xCu);
}

void __HandleProfileWillDieNotification_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFEqual(name, kC3DNotificationProfileWillDie)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. wrong notification sent", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFXGLSLProgramSetUniformIndex_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "uniformName";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFXGLSLProgramSetUniformIndex_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFGetTypeID(program) == C3DFXGLSLProgramGetTypeID()";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. program is of wrong type", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFXGLSLProgramSetAttributeIndex_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "attributeName";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DVertexAttribFromParameterSemantic_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "channelIndex < 8";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DVertexAttribFromParameterSemantic channel out of bounds", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DRendererDelegateCreate_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "render";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DRendererDelegateFireWithNode_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "rendererDelegate";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void SCNMTLTexturePool::allocate(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: Could not create texture with descriptor : %@", &v2, 0xCu);
}

void SCNMTLTexturePool::allocateWithStagingBuffer(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = "(tex.pixelFormat == MTLPixelFormatR16Uint) || (tex.pixelFormat == MTLPixelFormatRG16Uint) || (tex.pixelFormat == MTLPixelFormatRGBA16Uint)";
  OUTLINED_FUNCTION_0_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Only uint16 format are supported for the compute path of the copy buffer to texture", &v3);
}

void SCNMTLTexturePool::free(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Unreachable code: Wrong texture given to the cache %@", &v2, 0xCu);
}

void SCNMTLComputeCommandEncoder::dispatchOnGrid3D(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = "_computePipelineState";
  OUTLINED_FUNCTION_0_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", &v3);
}

void __ReplaceCodeWithModifiers_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: Invalid shader modifier : no code provided", buf, 2u);
}

void C3DExecuteProgressBlocks_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "progress == nil || (progress == [NSProgress currentProgress])";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Progress not current.", buf, 0xCu);
}

void C3DExecuteProgressBlocks_cold_2(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "progress.fractionCompleted <= 1.0";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Progress fraction is greater than 1.0", buf, 0xCu);
}

void C3DExecuteIncrementalProgressBlock_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "progress == nil || (progress == [NSProgress currentProgress])";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Progress not current.", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DExecuteIncrementalProgressBlock_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "progress.fractionCompleted <= 1.0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Progress fraction is greater than 1.0", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __C3DExecuteIncrementalProgressBlock_block_invoke_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "completedUnits <= units";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. To many calls to the unitCompletedBlock", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _createSCNGeometrySubArrayFromC3DGeometryArray_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "range.location + range.length <= targets.count";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Invalid range", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DProgramHashCodeCFFinalize_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFDictionaryContainsKey(s_ProgramHashCodeDictionary, programHashCode->_hashCodeHash)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. ProgramHashCode should be in the dictionary", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DProgramHashCodeCFFinalize_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "programHashCode->_hashCodeHash";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __UpdateHashCodeWithTextureType_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "textureType < 7";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. __UpdateHashCodeWithTextureType:inconsistent textureType", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DProgramHashCodeGetUVSetInfo_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "index < C3D_MAX_TEXCOORD";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DProgramHashCodeCreate_cold_2(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "programHashCode->_desc.effectSlotsHash[i] <= ((1 << (kC3DEffectSlotHashIndexMax + 1)) - 1)";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. effect slot hash out of bounds", buf, 0xCu);
}

void C3DResourceManagerRegistryReleaseContext_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "retainCount >= 0";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. C3DResourceManagerRegistryReleaseContext invalid retainCount", &v1, 0xCu);
}

void C3DTransactionCheckUncommitted_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "(count == 1)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Unflushed transaction present.", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DTransactionFlush_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "nc";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DTransactionCommit_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "(count >= 2)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Error in C3DTransactionPop -> stack empty", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DTransactionTestForDidComplete_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "t->childTransactions";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DTransactionTestForDidComplete_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "child->parentTransaction == t";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DTransactionRemoveChild inconsistency", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DTransactionAllowImmediate_cold_1(id *a1, id **a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  ObjCWrapper = C3DEntityGetObjCWrapper(a1);
  v6 = C3DEntityGetObjCWrapper(*a2);
  v7 = 138412546;
  v8 = ObjCWrapper;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_21BEF7000, a3, OS_LOG_TYPE_ERROR, "Error: Scene %@ is modified within a rendering callback of another scene (%@). This is not allowed and may lead to crash", &v7, 0x16u);
}

void C3DTransactionAnimationDidComplete_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "t->pendingAnimationCount>0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DTransactionAnimationDidComplete inconsistent animation count", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DTransactionAnimationDidInterrupt_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "t->pendingAnimationCount>0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DTransactionAnimationDidInterrupt inconsistent animation count", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DTransactionAddCommandBlock_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "applyBlock";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DTransactionAddCommandBlock_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "transaction";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void CPP3DAudioContext::Init(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "mainMixerNode";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", &v1, 0xCu);
}

void CPP3DAudioEngine::GetAVEngine(id *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [*a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: Error starting the audio engine: %@", &v4, 0xCu);
}

void __appendVerticesAndIndices_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Only GL_LINES and kC3DManipulatorDrawModeTriangles are supported", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __appendVerticesAndIndices_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "glInfo->baseVertex == 0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. basevertex should be 0 here.", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __appendVerticesAndIndices_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "glInfo->baseIndex == 0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Base index should be reset at this point\n", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __appendVerticesAndIndices_cold_5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "glInfo->mesh != NULL";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. A mesh should have been allocated by now", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __createGLInfoIfNeeded_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. There should be at lease a valid C3DRendererContext or a valid SCNRenderer", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __createGLInfoIfNeeded_cold_5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "glInfo->weakProgram != nil";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. No program for the auth env!", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __appendRect2D_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "glInfo->textureImage != nil";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. __appendRect2D: uv but not texture", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __appendRect2D_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "glInfo->textureImage == nil";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. __appendRect2D: no uv but texture", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DAuthoringEnvironmentBeginTimedRecord_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "authoringEnvironment->_timedRecordingExpirationTime == 0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Can not nest two Timed record", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __displayRangeTimeRecord_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "start != end";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. start != end", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __UnifyModifierVaryings_cold_1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "modifier";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

void __InjectModifiers_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "C3DShaderModifierGetEntryPoint(shaderModifier) == entryPoint";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. wrong entry point", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DIOCopyURLForInitialURL_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 138412290;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: Unable to resolve URL %@", buf, 0xCu);
}

void C3DAvoidOccluderConstraintDelegateCreate_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "objcConstraint";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DAvoidOccluderConstraintDelegateShouldAvoidOccluder_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "delegate";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DCreateProgram_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_1_6(&dword_21BEF7000, a2, a3, "Error: program failed to build:\n%s\n", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _create_and_compile_shader_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_1_6(&dword_21BEF7000, a2, a3, "Error: failed to link program: %s\n", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _create_and_compile_shader_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_1_6(&dword_21BEF7000, a2, a3, "Error: Cannot compile empty shader %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DRasterizerStatesCFFinalize_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "!scn_mutex_trylock(&s_RasterizerStatesRegistryLock)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Calling C3DRasterizerStatesCFFinalize outside of C3DReleaseRasterizerStates probably direct call to CFRelease", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DRasterizerStatesCFFinalize_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFSetContainsValue(s_RasterizerStatesRegistry, cf)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. RasterizerStates should be in the registry", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DRasterizerStatesGetDesc_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "states";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DShapeBuildConnectedComponents_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "boundaryCount > 1";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. realloc has an allocation size of 0 bytes", buf, 0xCu);
}

void C3DShapeTriangulationGetNewTriangle_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "triangulation->triangleCount < triangulation->maxTriangleCount";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Cannot produce any additional triangle.", &v1, 0xCu);
}

void C3DOffsetBuild_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "bestSplitEvents";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", &v1, 0xCu);
}

void C3DRenderBufferGetSlotForOutputBufferType_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: C3DRenderBufferGetSlotForOutputBufferType : unsupported type %d", v2, 8u);
}

void __C3DShaderModifierCreate_cold_7(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "newDefines";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DShaderModifierGetDeclaration_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "iModifier";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void SCNCopyValueFromObjCValue_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: unexpected value (%@)", &v2, 0xCu);
}

void SCNCopyValueFromObjCProperty_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: unexpected returned value for property %@ of object %@", &v3, 0x16u);
}

void SCNObject_resolveInstanceMethod_cold_1(unsigned __int16 a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: can't generate implementation for property of type %d", v2, 8u);
}

void __analyseUniformDeclaration_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: syntax error in the uniform declaration : %@", &v2, 0xCu);
}

void C3DConstraintControllerInitializeConstraint_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "constraint";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DConstraintApply_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "constraintController";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DConstraintApplyIK_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "storage";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DConstraintManagerSetConstraintsForKey_cold_5(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "path";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", buf, 0xCu);
}

void _C3DModelPathResolveEntity_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. _C3DModelPathResolveEntity inconsistent cftype", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DModelPathResolverRegisterProperty_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_currentClassRegistry";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DModelPathResolverRegisterProperty_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "CFDictionaryGetCountOfKey(_currentClassRegistry, propertyName) == 0";
  v4 = 2112;
  v5 = a1;
  _os_log_fault_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Cannot register twice the same propertyName : %@", &v2, 0x16u);
}

void _C3DModelPathResolveArray_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "prefix";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DModelPathResolveArray_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "indexString";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DModelTargetGetValue_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "output";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DModelValueStorageItemRelease_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "item";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DModelValueStorageAddAndRetainModelValue_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "item->_getter";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DModelValueStorageAddAndRetainModelValue_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "item->_setter";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DModelValueStorageUpdateModelValueFromPresentationValue_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFGetTypeID(target->_owner) == C3DNodeGetTypeID()";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DModelValueStorageUpdateModelValueFromPresentationValue - unexpected class", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DModelValueStorageGetModelValueForAddressIfAny_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "address";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DModelValueStorageUpdateItemModelValueWithValue_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "aValue";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DTransformTreeAddNode_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "transformTree";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __C3DTransformTree::add(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "handle.index != kC3DTransformIndexInvalid";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. no more handle available", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __C3DTransformTree::remove()
{
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __C3DTransformTree::remove(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "firstChild.index != kC3DTransformIndexInvalid";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

{
  *a1 = 136315138;
  *a2 = "lastChild.index != kC3DTransformIndexInvalid";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

{
  *a1 = 136315138;
  *a2 = "lastChild.level == firstChild.level";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

{
  *a1 = 136315138;
  *a2 = "lastChild.index >= firstChild.index";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

{
  *a1 = 136315138;
  *a2 = "firstChildToRemainAfterDeletion != INT32_MAX";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

{
  *a1 = 136315138;
  *a2 = "_handles[ node->_transformHandle ].level == l";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

{
  *a1 = 136315138;
  *a2 = "_handles[ node->_transformHandle ].index >= minIndexToDestroyPerLevel[ l ]";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

void __C3DTransformTree::update(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "handle.level < _levelCount";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DTransformTreeUpdateCullingHandle_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "handle.level < transformTree->_levelCount";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __C3DTransformTree::_fixupParentAndSiblings(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "newHandle.level == (parentHandle.level + 1)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. child must be one level under parent", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DTransformLevel::moveData(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "countToMove >= 0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. can't move negative number of data", a5, a6, a7, a8, v8, DWORD2(v8));
}

{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "(handle + offset + countToMove) <= _capacity";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. overflow !", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DTransformLevel::offsetChildIndices(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "startParentHandle < _count";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __C3DTransformTree::_findFirstChildInRange(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "firstHandle.level == lastHandle.level";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "firstHandle.index <= lastHandle.index";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void getFloat(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "!line.empty()";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void computeFilterPos(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "anglesCount > 0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void computeFilterPos(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "start != index";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", buf, 0xCu);
}

{
  *buf = 136315138;
  *a2 = "end != index - 1";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", buf, 0xCu);
}

void getCandelaValue(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "x < anglesNumH";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "y < anglesNumV";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DIESInfoGenerateTexture2D_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "width > 0 && height > 0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DIESInfoGenerateTexture2D_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "channelCount == 1 || channelCount == 4";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DIESInfoGenerateTexture2D_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "channelSize == 1 || channelSize == 2 || channelSize == 4";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DAnimationEventsAddEvent_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "events";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DAnimationEventsAddEvent_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "events->_eventCount < events->_eventCapacity";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DAnimationEventsAddEvent - index out of bounds", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DAnimationEventsTriggerEventsWithTimeChanges_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "t0 <= t1";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. _C3DAnimationEventsTriggerEventsWithTimeChanges invalid time", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DAnimationEventsTriggerEventsWithTimeChanges_cold_3(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "index < events->_eventCount";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. _C3DAnimationEventsTriggerEventAtIndex - index out of bounds", buf, 0xCu);
}

void __C3DRendererElementStoreDeallocateSpan_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "span.count > 0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DRendererElementStoreDeallocateSpan - null span", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DRendererElementStoreAllocateSpanForNode_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "node == NULL || node->_rendererElementSpan.count == 0 || renderableHash & kC3DRenderableAttributeHashParticleSystem";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. RendererElement should not be in span already", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __AllocateSpansAndInitializeRendererElementsForNodeGeometryLOD_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "node->_rendererLOD->count == count";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. __AllocateSpansForNodeGeometryLOD unexpected lod count", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DRendererElementStoreDeallocateSpanForNode_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "store";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DRendererElementStoreDeallocateSpanForNode_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "node->_rendererLOD->count == count";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DRendererElementStoreDeallocateSpanForNodeGeometryLOD unexpected lod count", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DRendererElementStoreGetElementInSpanAtIndex_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "index < (CFIndex)span.count";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. wrong index in rendererElements span", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DIndexStoreGetIndexForKey_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "indexStore";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DIndexStoreGetOrderedIndexForKey_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "alignedIndex >= 0 && alignedIndex < bufferLength";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. C3DIndexStoreGetOrderedIndexForKey index out of bounds", buf, 0xCu);
}

void C3DAllocatorNew_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "allocator";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _pipelineDescriptorForPipelineDesc_cold_1()
{
  OUTLINED_FUNCTION_3_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_15();
}

void _pipelineDescriptorForPipelineDesc_cold_2()
{
  OUTLINED_FUNCTION_3_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_15();
}

void _pipelineDescriptorForPipelineDesc_cold_3()
{
  OUTLINED_FUNCTION_3_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void _pipelineDescriptorForPipelineDesc_cold_4()
{
  OUTLINED_FUNCTION_3_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void C3DMeshBuildRenderableData_cold_2()
{
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void C3DMeshBuildRenderableData_cold_3(int a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "__C3DMeshElementCreateRenderablePrimitiveTypeCopy";
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: %s - Invalid polygon edge count (%u)", &v2, 0x12u);
}

void C3DMeshBuildRenderableData_cold_4(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: Inconsistent index count after triangulation.", buf, 2u);
}

void C3DMeshBuildRenderableData_cold_7(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_1_6(&dword_21BEF7000, a2, a3, "Error: Failed to build renderable data for mesh %p", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __C3DMeshDeindex(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "indexBufferWriteOffset == headerLength";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Deindexing failed - Polygon edge counts inconsistency", a1);
}

{
  *a1 = 136315138;
  *a2 = "value == sourceInfo.dataVectorCount";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Deindexer failed - Hash value inconsistency", a1);
}

{
  *a1 = 136315138;
  *a2 = "overallVertexIndex == (CFIndex)effectiveIndexCount";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Deindexing failed - Vertex count inconsistency", a1);
}

void __C3DMeshDeindex()
{
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __C3DMeshDeindex(unsigned __int8 a1, uint64_t a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 2048;
  v5 = a2;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Unreachable code: Requested channel (%d) does not exist in element (%p)", v3, 0x12u);
}

void __C3DMeshDeindex(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_1_6(&dword_21BEF7000, a2, a3, "Error: Deindexing failed - mesh %p has no position source", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __writeIndexInBuffer()
{
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __readIndexInBuffer()
{
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x20u);
}

void C3D::ConvertCubeComputePass::compile(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = "computeFunction";
  OUTLINED_FUNCTION_0_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", &v3);
}

void C3DAnimatableParamControllerGetParamDescription_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "address < (void*) ((unsigned char*)controller+sizeof(struct __C3DAnimatableParamController))";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DAnimatableParamControllerGetParamDescription - address out of bounds", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _C3DAnimatableParamControllerSetValue_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "pname";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __allocateChunk()
{
  __assert_rtn("__allocateChunk", "C3DStackAllocator.cpp", 43, "chunk->data");
}

{
  __assert_rtn("__allocateChunk", "C3DStackAllocator.cpp", 39, "n");
}

{
  __assert_rtn("__allocateChunk", "C3DStackAllocator.cpp", 38, "chunk");
}

void C3DStackAllocatorAllocateAligned_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "allocator->_framesCount > 0";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. You have to push frames before allocating memory.", &v1, 0xCu);
}

void C3DStackAllocatorPopFrame_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "allocator->_framesCount > 0";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. C3DStackAllocator: You cannot pop frames without pushing first.", &v1, 0xCu);
}

void C3DCullingContextForcePushGeometryRenderableElementsToVisible_cold_2(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "sequence->count + count <= sequence->allocatedCount";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Not enough space allocated", buf, 0xCu);
}

void C3DCullingContextSetupLOD_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "NULL";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Invalid point of view", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DCullingContextSetupCullingMatricesAndPlanes_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "cullingContext->eyeCount == 2";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Multiple viewport is for stero only", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DCullingContextInitialize_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "passInstance->_cullingData[eye] == NULL";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. leaking culling data", buf, 0xCu);
}

void C3DCullingContextInitialize_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "cullingContext->scene";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFXMetalProgramUpdateHashWithCommonProfileHashCode_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "commonProfileHashCode";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFXMetalProgramGetHash_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "CFGetTypeID(program) == C3DFXMetalProgramGetTypeID()";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. program is of wrong type", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __updateRequireLighting_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "fxPass";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFXPassSetupWithPropertyList_cold_3(os_log_t log)
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 67109120;
  v1[1] = 4;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: too many blend states: max render target is %d", v1, 8u);
}

void C3DFXPassAddInputWithName_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "inputName";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFXPassInitialize_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "context->pass->_setup==0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DFXPassInitialize pass is already initialized", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFXPassInitialize_cold_2(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 56);
  v2 = *(*a1 + 64);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = v2;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: failed to load program %@ %@", &v4, 0x16u);
}

void C3DFXPassInitialize_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "C3DFXTechniqueGetPassCount(subTechnique) == 1";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Sub technique should only have 1 pass", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFXPassInitialize_cold_5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFXPassInitialize_cold_6(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "input->_semantic != kC3DFXSemanticNone";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. attributes should have a semantic", buf, 0xCu);
}

void C3DFXPassAddInputsWithDescription_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "fxPass->_inputCount == count";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. unexpected error in C3DFXPassSetInputs", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _convertInputsDescriptionToInputs_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "targetName";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DFXPassAddOutputsWithDescription_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "(CFIndex)fxPass->_outputCount <= count";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. unexpected error in C3DFXPassSetOutput", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __RendererElementWillDie_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "pass->_overridedRendererElementsProgramHashcodes";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _setupInput_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "typeTest == input->_baseType";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. pass:_setupInput unexpected type", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DBlendFactorToString_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "blend < kC3DBlendFactorCount";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. bad blend mode", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DBlendOpToString_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "blendOp < kC3DBlendOpCount";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. bad blend operation", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DBlendStatesGetDesc_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "states";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DBlendStatesGetDesc_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "renderTargetIndex < states->_targetCount";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. wrong target index", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _updateMatrix_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_affineValid(t)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. _updateMatrix - no valid rep", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _updateMatrix_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "!_matrixValid(t)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. _updateMatrix - already valid", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _updateAffine_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_matrixValid(t)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. _updateAffine - no valid rep", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _updateAffine_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "!_affineValid(t)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. _updateAffine - already valid", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _updateAffineScale_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_matrixValid(t)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. _updateAffineScale - no valid rep", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _updateAffineScale_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "!_affineValid(t)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. _updateAffineScale - already valid", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DTransformSetScale_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_matrixValid(t)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. _updateAffineRotation - no valid rep", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DTransformSetScale_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "!_affineValid(t)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. _updateAffineRotation - already valid", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DTransformGetValue_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "offset < 4";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DTransformGetValue offset out of bounds", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __setQuaternionValue_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "size == sizeof(C3DFloat)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DTransformSetValue unexpected size", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DTransformSetValue_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "offset < 4";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DTransformSetValue offset out of bounds", a5, a6, a7, a8, v8, DWORD2(v8));
}

void ____arrayOfC3DModifiersFromDictionary_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void C3DArrayGetCount_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "array";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DArrayGetValuePtrAtIndex_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "index < C3DArrayGetCount(array)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. index out of bounds", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __AddToFreeList_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "span.count > 0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. cannot remove null span", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __AddToFreeList_cold_2(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "(freeSpan->start.index + freeSpan->count) <= page->capacity";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. page overflow", buf, 0xCu);
}

void __AddToFreeList_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "page->freeCapacity";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __AllocateNewSpanInPage_cold_1(int a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "spanSize <= page->freeMaxSpan";
  v4 = 1024;
  v5 = a1;
  _os_log_fault_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. wrong page selected for span size %d", &v2, 0x12u);
}

void __AllocateNewSpanInPage_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "span.start.index + span.count <= page->capacity";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. page overflow", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __AllocateNewSpan_cold_1(os_log_t log)
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 67109120;
  v1[1] = 0x10000;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: RendererElementStore does not support span of more than %d elements", v1, 8u);
}

void __DeallocateSpan_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "page->pageIndex == span.start.page";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. pages are broken...", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DSpanAllocatorGetElementInSpanAtIndex_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "handle.page < allocator->_pageCount";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. handle is broken...", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DSpanAllocatorGetElementInSpanAtIndex_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "(page->pageIndex == handle.page) && (handle.index < page->capacity)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. re is broken...", a5, a6, a7, a8, v8, DWORD2(v8));
}

void fillPositions(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "vertexCount == CFIndex(baseMesh.pointCount())";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Morph target has a vertex count different from the base geometry", &v1, 0xCu);
}

void C3DGeometryOpenSubdivAuthoringEnvironmentEnumerateCreases_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "C3DMeshElementGetIndicesChannelCount(creaseElement) == 1";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Found crease element with more than 1 channel", &v1, 0xCu);
}

void C3DShapeGeometryValidate_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "newMesh";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DShapeGeometryGetChamferMode_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "shapeGeometry";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void C3DShaderAddStandardUniform_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "CFDictionaryGetValue(dic, uniformName) == NULL";
  v4 = 2112;
  v5 = a1;
  _os_log_fault_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. uniform %@ already set", &v2, 0x16u);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114C8](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CTFontGetBoundingBox(CTFontRef font)
{
  MEMORY[0x282114778](font);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGSize CTFramesetterSuggestFrameSizeWithConstraints(CTFramesetterRef framesetter, CFRange stringRange, CFDictionaryRef frameAttributes, CGSize constraints, CFRange *fitRange)
{
  MEMORY[0x2821148B0](framesetter, stringRange.location, stringRange.length, frameAttributes, fitRange, constraints, *&constraints.height);
  result.height = v6;
  result.width = v5;
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F7900]();
}

void operator delete[]()
{
    ;
  }
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

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

simd_float3x3 __invert_f3(simd_float3x3 a1)
{
  MEMORY[0x2822043A0](a1.columns[0], a1.columns[1], a1.columns[2]);
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
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

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}