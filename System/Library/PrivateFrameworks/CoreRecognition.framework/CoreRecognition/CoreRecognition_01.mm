void sub_247823E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  if (__p)
  {
    operator delete(__p);
  }

  if (a45)
  {
    operator delete(a45);
  }

  CTCLayer::~CTCLayer(va);

  _Unwind_Resume(a1);
}

id decodeCreditCardExpirationActivations(uint64_t *a1, unsigned int *a2, unsigned int a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (a1[1] != *a1)
  {
    CTCLayer::CTCLayer(&v32);
    CTCLayer::setCodeMap(&v32, a2, a3);
    memset(v31, 0, sizeof(v31));
    std::vector<std::vector<std::vector<float>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(v31, *a1, a1[1], 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
    CTCLayer::setActivations(&v32, v31);
    v29[0] = v31;
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](v29);
    CTCLayer::getMaxActivations(&v32);
    CTCLayer::setCummulativeScores(&v32);
    CTCLayer::bestPathDecoding(v29, &v32);
    if (v29[1] != v29[0])
    {
      __p = 0;
      v27 = 0;
      v28 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v29[0], v29[1], (v29[1] - v29[0]) >> 2);
      CTCLayer::computeScore(&v32, &__p);
      if (__p)
      {
        v27 = __p;
        operator delete(__p);
      }
    }

    v22 = 0;
    v23 = 0;
    v21 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v21, v29[0], v29[1], (v29[1] - v29[0]) >> 2);
    CTCLayer::injectSpaces(&v32, &v21, &v24);
    if (v29[0])
    {
      v29[1] = v29[0];
      operator delete(v29[0]);
    }

    *v29 = v24;
    v30 = v25;
    v25 = 0;
    v24 = 0uLL;
    if (v21)
    {
      v22 = v21;
      operator delete(v21);
    }

    v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v8 = v29[0];
    v9 = v29[1];
    while (v8 != v9)
    {
      v10 = unicodeToNSString();
      [v7 appendString:?];

      v8 += 4;
    }

    v11 = [MEMORY[0x277CBEB18] array];
    v24 = 0uLL;
    v25 = 0;
    std::vector<std::pair<float,float>>::__init_with_size[abi:ne200100]<std::pair<float,float>*,std::pair<float,float>*>(&v24, v33, v34, v34 - v33);
    v13 = *(&v24 + 1);
    v12 = v24;
    if (v24 != *(&v24 + 1))
    {
      do
      {
        v14 = [MEMORY[0x277CCABB0] numberWithInteger:?];
        [v11 addObject:?];

        v12 += 8;
      }

      while (v12 != v13);
      v12 = v24;
    }

    if (v12)
    {
      *(&v24 + 1) = v12;
      operator delete(v12);
    }

    v35 = v7;
    v36 = v11;
    v15 = [MEMORY[0x277CCABB0] numberWithInt:?];
    v37 = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    [v6 setObject:? forKey:?];

    v17 = [ActivationMapTools textFromActivationMap:"textFromActivationMap:codeMap:invert:" codeMap:? invert:?];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 objectForKey:?];
      if (v19)
      {
        [v6 setObject:? forKey:?];
      }
    }

    if (v29[0])
    {
      v29[1] = v29[0];
      operator delete(v29[0]);
    }

    CTCLayer::~CTCLayer(&v32);
  }

  return v6;
}

void sub_2478244B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);

  if (__p)
  {
    operator delete(__p);
  }

  CTCLayer::~CTCLayer(va);

  _Unwind_Resume(a1);
}

id decodeCreditCardholderActivations(uint64_t *a1, unsigned int *a2, unsigned int a3)
{
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (a1[1] != *a1)
  {
    CTCLayer::CTCLayer(&v33);
    CTCLayer::setCodeMap(&v33, a2, a3);
    memset(v32, 0, sizeof(v32));
    std::vector<std::vector<std::vector<float>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(v32, *a1, a1[1], 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
    CTCLayer::setActivations(&v33, v32);
    v30[0] = v32;
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](v30);
    CTCLayer::getMaxActivations(&v33);
    CTCLayer::setCummulativeScores(&v33);
    CTCLayer::bestPathDecoding(v30, &v33);
    if (v30[1] != v30[0])
    {
      __p = 0;
      v28 = 0;
      v29 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v30[0], v30[1], (v30[1] - v30[0]) >> 2);
      CTCLayer::computeScore(&v33, &__p);
      if (__p)
      {
        v28 = __p;
        operator delete(__p);
      }
    }

    v23 = 0;
    v24 = 0;
    v22 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v22, v30[0], v30[1], (v30[1] - v30[0]) >> 2);
    CTCLayer::removeNoise(&v33, &v22, &v25);
    if (v30[0])
    {
      v30[1] = v30[0];
      operator delete(v30[0]);
    }

    *v30 = v25;
    v31 = v26;
    v26 = 0;
    v25 = 0uLL;
    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }

    v7 = [MEMORY[0x277CBEB18] array];
    v8 = v34;
    v25 = 0uLL;
    v26 = 0;
    std::vector<std::pair<float,float>>::__init_with_size[abi:ne200100]<std::pair<float,float>*,std::pair<float,float>*>(&v25, v35, v36, v36 - v35);
    v10 = *(&v25 + 1);
    v9 = v25;
    if (v25 != *(&v25 + 1))
    {
      v11 = 0;
      do
      {
        if (v11 >= v8 && v8 + ((v30[1] - v30[0]) >> 2) > v11)
        {
          v12 = [MEMORY[0x277CCABB0] numberWithInteger:?];
          [v7 addObject:?];
        }

        ++v11;
        v9 += 8;
      }

      while (v9 != v10);
      v9 = v25;
    }

    if (v9)
    {
      *(&v25 + 1) = v9;
      operator delete(v9);
    }

    v20 = 0;
    v21 = 0;
    v19 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v19, v30[0], v30[1], (v30[1] - v30[0]) >> 2);
    CTCLayer::injectSpaces(&v33, &v19, &v25);
    if (v30[0])
    {
      v30[1] = v30[0];
      operator delete(v30[0]);
    }

    *v30 = v25;
    v31 = v26;
    v26 = 0;
    v25 = 0uLL;
    if (v19)
    {
      v20 = v19;
      operator delete(v19);
    }

    v13 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v14 = v30[0];
    v15 = v30[1];
    while (v14 != v15)
    {
      v16 = unicodeToNSString();
      [v13 appendString:?];

      v14 += 4;
    }

    [v6 addObject:?];
    [v6 addObject:?];
    v17 = [MEMORY[0x277CCABB0] numberWithInt:?];
    [v6 addObject:?];

    if (v30[0])
    {
      v30[1] = v30[0];
      operator delete(v30[0]);
    }

    CTCLayer::~CTCLayer(&v33);
  }

  return v6;
}

void sub_24782492C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  CTCLayer::~CTCLayer(va);

  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<float,float>>::__init_with_size[abi:ne200100]<std::pair<float,float>*,std::pair<float,float>*>(uint64_t result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(result, a4);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_247824A9C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<std::vector<std::vector<float>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<std::vector<float>>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_247824B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<std::vector<float>>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::vector<float>>>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::vector<float>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::vector<float>>>,std::vector<std::vector<float>>*,std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v4, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3));
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<float>>>,std::vector<std::vector<float>>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t *std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_247824D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float>*,std::vector<float>*,std::vector<float>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 2);
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<float>>>,std::vector<std::vector<float>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<float>>>,std::vector<std::vector<float>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<float>>>,std::vector<std::vector<float>>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

void std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](void ****a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t *std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_247824FC0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<std::vector<float>>>::resize(const void **a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<std::vector<float>>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    while (v3 != v7)
    {
      v3 -= 3;
      v8 = v3;
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
    }

    a1[1] = v7;
  }
}

void std::__tree<int>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<int>::destroy(a1, *a2);
    std::__tree<int>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::vector<std::vector<std::vector<float>>>::__append(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(a1[1], v10);
      v5 += v10;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
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

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::vector<float>>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = a1[1] - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    a1[1] = v13;
    v17 = a1[2];
    a1[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<std::vector<float>>>::~__split_buffer(v18);
  }
}

void **std::__split_buffer<std::vector<std::vector<float>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<std::vector<float>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::vector<float>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

CGImageSource *createCGImageFromFile(uint64_t a1)
{
  result = CGImageSourceCreateWithURL([MEMORY[0x277CBEBC0] fileURLWithPath:?], 0);
  if (result)
  {
    v2 = result;
    ImageAtIndex = CGImageSourceCreateImageAtIndex(result, 0, 0);
    CFRelease(v2);
    return ImageAtIndex;
  }

  return result;
}

void _findCodeRectInImage(_OWORD *a1, uint64_t a2, float64_t a3, float64_t a4, double a5, double a6)
{
  v6 = a1[1];
  v7[0] = *a1;
  v7[1] = v6;
  _findCodeRectInImageWithModel(v7, a2, 95158272, 0, a3, a4);
}

uint64_t findTopLeftIndex(CGPoint *a1)
{
  x = a1[1].x;
  y = a1[1].y;
  v3 = (a1->x - x) * (a1->x - x) + (a1->y - y) * (a1->y - y);
  v4 = (x - a1[2].x) * (x - a1[2].x) + (y - a1[2].y) * (y - a1[2].y);
  v5 = v3 > v4;
  v6 = v3 <= v4;
  if (v5)
  {
    v7 = 2;
  }

  else
  {
    v7 = 3;
  }

  if ((a1[v6].y * a1[v6].y + a1[v6].x * a1[v6].x) >= (a1[v7].y * a1[v7].y + a1[v7].x * a1[v7].x))
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

uint64_t _segmentHomeKitCodeImages(_OWORD *a1, CGPoint *a2, CFArrayRef *a3)
{
  x = a2->x;
  y = a2->y;
  v6 = a1[1];
  v9[0] = *a1;
  v9[1] = v6;
  _perspectiveCorrectImageWithTargetRect(v9, a2, v10, x, y, 170.0, 64.0);
  DigitCodeImages = extractDigitCodeImages(v10, a3, 10);
  free(v10[0]);
  return DigitCodeImages;
}

uint64_t _segmentCodeImages(__int128 *a1, CGPoint *a2, CFArrayRef *a3)
{
  x = a2->x;
  y = a2->y;
  v8 = a1[1];
  v13 = *a1;
  v14 = v8;
  _perspectiveCorrectImageWithTargetRect(&v13, a2, v15, x, y, 272.0, 64.0);
  v13 = *v15;
  v14 = v16;
  DigitCodeImages = extractDigitCodeImages(&v13, a3, 16);
  free(v15[0]);
  if (DigitCodeImages)
  {
    return 1;
  }

  v11 = a1[1];
  v13 = *a1;
  v14 = v11;
  _perspectiveCorrectImageWithTargetRect(&v13, a2, v15, x, y, 204.0, 64.0);
  v13 = *v15;
  v14 = v16;
  v10 = extractDigitCodeImages(&v13, a3, 12);
  free(v15[0]);
  return v10;
}

uint64_t _recognizeCodeImages(const __CFArray *a1, char *a2, uint64_t a3, float a4)
{
  v58 = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    if ((Count + 1) < 2)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  v9 = 0;
  v44 = 0;
  v45 = Count;
  v10 = Count & 0x7FFFFFFF;
  v11 = 1.0;
  v12 = 0.0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v9);
    Value = CFDictionaryGetValue(ValueAtIndex, @"height");
    v15 = CFDictionaryGetValue(ValueAtIndex, @"width");
    v16 = CFDictionaryGetValue(ValueAtIndex, @"rowBytes");
    v17 = CFDictionaryGetValue(ValueAtIndex, @"data");
    valuePtr = 0;
    CFNumberGetValue(Value, kCFNumberSInt8Type, &valuePtr);
    v47 = 0;
    CFNumberGetValue(v15, kCFNumberSInt8Type, &v47);
    v46 = 0;
    CFNumberGetValue(v16, kCFNumberSInt8Type, &v46);
    v18 = malloc_type_calloc(valuePtr * v47, 1uLL, 0x100004077774924uLL);
    v59.length = CFDataGetLength(v17);
    v59.location = 0;
    CFDataGetBytes(v17, v59, v18);
    v56 = xmmword_24783F900;
    if (!v47 || !valuePtr)
    {
      a2[v9] = 45;
      goto LABEL_30;
    }

    v19 = malloc_type_calloc(0x190uLL, 1uLL, 0x100004077774924uLL);
    v20 = v19;
    v21 = 0;
    v22 = vld1q_dup_s8(v18);
    *v19 = v22;
    *(v19 + 1) = v22;
    *(v19 + 2) = v22;
    *(v19 + 3) = v22;
    *(v19 + 4) = v22;
    *(v19 + 5) = v22;
    *(v19 + 6) = v22;
    *(v19 + 7) = v22;
    *(v19 + 8) = v22;
    *(v19 + 9) = v22;
    *(v19 + 10) = v22;
    *(v19 + 11) = v22;
    *(v19 + 12) = v22;
    *(v19 + 13) = v22;
    *(v19 + 14) = v22;
    *(v19 + 15) = v22;
    *(v19 + 16) = v22;
    *(v19 + 17) = v22;
    *(v19 + 18) = v22;
    *(v19 + 19) = v22;
    *(v19 + 20) = v22;
    *(v19 + 21) = v22;
    *(v19 + 22) = v22;
    *(v19 + 23) = v22;
    v23 = v19 + 2;
    v24 = v18;
    *(v19 + 24) = v22;
    do
    {
      for (i = 0; i != 16; ++i)
      {
        v23[i] = v24[i];
      }

      ++v21;
      v23 += 20;
      v24 += 16;
    }

    while (v21 != 20);
    if (v45 != 10)
    {
      if (v45 == 12)
      {
        v26 = CNNQueue(void)::CNNQueue;
        if (!CNNQueue(void)::CNNQueue)
        {
          v26 = dispatch_queue_create("com.apple.CoreRecognition.CNNQueue", 0);
          CNNQueue(void)::CNNQueue = v26;
        }

        block = MEMORY[0x277D85DD0];
        v50 = 3221225472;
        v27 = __codeImage2char12_block_invoke;
      }

      else
      {
        v26 = CNNQueue(void)::CNNQueue;
        if (!CNNQueue(void)::CNNQueue)
        {
          v26 = dispatch_queue_create("com.apple.CoreRecognition.CNNQueue", 0);
          CNNQueue(void)::CNNQueue = v26;
        }

        block = MEMORY[0x277D85DD0];
        v50 = 3221225472;
        v27 = __codeImage2char_block_invoke;
      }

LABEL_24:
      v51 = v27;
      v52 = &__block_descriptor_56_e5_v8__0l;
      v53 = v20;
      v54 = &v57;
      v55 = &v56;
      dispatch_sync(v26, &block);
      v28 = v57;
      free(v20);
      v29 = *&v56;
      if (v28 >= 0x5B)
      {
        v30 = v28 - 111 > 0x26 || ((1 << (v28 - 111)) & 0x5806854059) == 0;
        v12 = v12 + *&v56;
        LODWORD(v44) = v30 + v44;
        ++HIDWORD(v44);
      }

      goto LABEL_29;
    }

    if (v9 != 6 && v9 != 3)
    {
      v26 = CNNQueue(void)::CNNQueue;
      if (!CNNQueue(void)::CNNQueue)
      {
        v26 = dispatch_queue_create("com.apple.CoreRecognition.CNNQueue", 0);
        CNNQueue(void)::CNNQueue = v26;
      }

      block = MEMORY[0x277D85DD0];
      v50 = 3221225472;
      v27 = __codeImage2char10_block_invoke;
      goto LABEL_24;
    }

    LOBYTE(v28) = 45;
    v57 = 45;
    LODWORD(v56) = 1065353216;
    free(v19);
    v29 = 1.0;
LABEL_29:
    a2[v9] = v28;
    *(a3 + 4 * v9) = v29;
    v11 = v11 * v29;
LABEL_30:
    free(v18);
    if (v11 < a4)
    {
      return 0;
    }

    ++v9;
  }

  while (v9 != v10);
  if (SHIDWORD(v44) <= (v45 >> 1) && v12 <= 4.0 && v44 <= 0)
  {
    v32 = a2;
    while (1)
    {
      v33 = *v32;
      if (v33 >= 0x5B)
      {
        break;
      }

LABEL_74:
      ++v32;
      if (!--v10)
      {
        result = 1;
        goto LABEL_117;
      }
    }

    if (*v32 <= 0x80u)
    {
      if (*v32 > 0x74u)
      {
        switch(v33)
        {
          case 'u':
            v34 = 54;
            break;
          case '}':
            v34 = 86;
            break;
          case '\x7F':
            v34 = 74;
            break;
          default:
            goto LABEL_72;
        }
      }

      else
      {
        switch(v33)
        {
          case 'o':
            v34 = 69;
            break;
          case 'r':
            v34 = 57;
            break;
          case 's':
            v34 = 76;
            break;
          default:
            goto LABEL_72;
        }
      }
    }

    else if (*v32 <= 0x88u)
    {
      switch(v33)
      {
        case 0x81u:
          v34 = 51;
          break;
        case 0x86u:
          v34 = 67;
          break;
        case 0x88u:
          v34 = 55;
          break;
        default:
          goto LABEL_72;
      }
    }

    else if (*v32 > 0x92u)
    {
      if (v33 != 147)
      {
        if (v33 != 149)
        {
          goto LABEL_72;
        }

        goto LABEL_63;
      }

      v34 = 77;
    }

    else if (v33 == 137)
    {
      v34 = 87;
    }

    else
    {
      if (v33 != 146)
      {
LABEL_72:
        v34 = v33 - 60;
        goto LABEL_73;
      }

LABEL_63:
      v34 = 65;
    }

LABEL_73:
    *v32 = v34;
    goto LABEL_74;
  }

  if (v45 != 1)
  {
    v35 = 0;
    v36 = v10 - 1;
    do
    {
      v37 = a2[v35];
      a2[v35] = a2[v36];
      a2[v36] = v37;
      v38 = *(a3 + 4 * v35);
      *(a3 + 4 * v35) = *(a3 + 4 * v36);
      *(a3 + 4 * v36) = v38;
      ++v35;
      --v36;
    }

    while (v45 >> 1 != v35);
  }

  v39 = a2;
  while (2)
  {
    v40 = *v39;
    if (v40 > 0x44)
    {
      if (*v39 > 0x4Cu)
      {
        if (*v39 > 0x56u)
        {
          if (v40 == 87)
          {
            LOBYTE(v40) = 77;
            goto LABEL_114;
          }

          if (v40 != 89)
          {
            goto LABEL_112;
          }
        }

        else
        {
          if (v40 == 77)
          {
            LOBYTE(v40) = 87;
            goto LABEL_114;
          }

          if (v40 != 86)
          {
            goto LABEL_112;
          }
        }

        LOBYTE(v40) = 65;
        goto LABEL_114;
      }

      switch(v40)
      {
        case 'E':
          LOBYTE(v40) = 51;
          break;
        case 'J':
          LOBYTE(v40) = 67;
          break;
        case 'L':
          LOBYTE(v40) = 55;
          break;
        default:
          goto LABEL_112;
      }

      goto LABEL_114;
    }

    if (*v39 <= 0x36u)
    {
      if (v40 != 45)
      {
        if (v40 == 51)
        {
          LOBYTE(v40) = 69;
        }

        else
        {
          if (v40 != 54)
          {
            goto LABEL_112;
          }

          LOBYTE(v40) = 57;
        }
      }

LABEL_114:
      *v39 = v40;
      goto LABEL_115;
    }

    if (*v39 > 0x40u)
    {
      if (v40 == 65)
      {
        LOBYTE(v40) = 86;
      }

      else
      {
        if (v40 != 67)
        {
          goto LABEL_112;
        }

        LOBYTE(v40) = 74;
      }

      goto LABEL_114;
    }

    if (v40 == 55)
    {
      LOBYTE(v40) = 76;
      goto LABEL_114;
    }

    if (v40 == 57)
    {
      LOBYTE(v40) = 54;
      goto LABEL_114;
    }

LABEL_112:
    if (v40 >= 0x5B)
    {
      LOBYTE(v40) = v40 - 60;
      goto LABEL_114;
    }

LABEL_115:
    ++v39;
    if (--v10)
    {
      continue;
    }

    break;
  }

  result = 2;
LABEL_117:
  if (v45 == 10)
  {
    v41 = 0;
    while (1)
    {
      v42 = a2[v41];
      if (v42 > 0x50)
      {
        break;
      }

      if (v42 != 45)
      {
        if (v42 != 68)
        {
          goto LABEL_122;
        }

        goto LABEL_126;
      }

LABEL_129:
      if (++v41 == 10)
      {
        return result;
      }
    }

    if (v42 == 84)
    {
      v43 = 49;
    }

    else
    {
      if (v42 != 81)
      {
LABEL_122:
        if (v42 - 58 < 0xFFFFFFF6)
        {
          return 0;
        }

        goto LABEL_129;
      }

LABEL_126:
      v43 = 48;
    }

    a2[v41] = v43;
    goto LABEL_129;
  }

  return result;
}

void _perspectiveCorrectImageWithTargetRect(unint64_t *a1, CGPoint *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v11 = malloc_type_calloc(a7 * a6, 1uLL, 0x100004077774924uLL);
  findTopLeftIndex(a2);
  find_homography();
  applyHomograpyMatrix();
  v12 = malloc_type_calloc(a7 * a6, 1uLL, 0x100004077774924uLL);
  correctHistogram();
  free(v11);
  *a3 = v12;
  a3[1] = a7;
  a3[2] = a6;
  a3[3] = a6;
}

uint64_t extractDigitCodeImages(uint64_t *a1, CFArrayRef *a2, int a3)
{
  v80[5] = *MEMORY[0x277D85DE8];
  theArray = a3;
  if (a3)
  {
    if ((a3 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[1];
  v7 = a1[2];
  v75 = malloc_type_calloc(v6 * v7, 1uLL, 0x100004077774924uLL);
  v76 = v6;
  v77 = v7;
  v78 = v7;
  v8 = *(a1 + 1);
  *&src.data = *a1;
  *&src.width = v8;
  adaptiveThresholdIntegralImage();
  v9 = malloc_type_calloc(v7, 8uLL, 0x100004000313F17uLL);
  v10 = malloc_type_calloc(v6, 8uLL, 0x100004000313F17uLL);
  v11 = v10;
  v12 = (v6 >> 1);
  v13 = v6 - 15;
  if (v13 >= 0x10)
  {
    for (i = 15; i != v13; ++i)
    {
      if (v7 - 15 >= 0x10)
      {
        v15 = *&v10[8 * i];
        v16 = *a1 + 15;
        v17 = v7 - 30;
        do
        {
          v15 += ~*(v16 + i * a1[3]);
          *&v10[8 * i] = v15;
          ++v16;
          --v17;
        }

        while (v17);
      }
    }
  }

  v70 = a2;
  v18 = (v12 + -10.0);
  v19 = v18;
  v20 = v18 + 20;
  v21 = *&v10[8 * v18];
  v22 = v20 - v18;
  if (v22 > 1)
  {
    v28 = (v22 & 0xFFFFFFFFFFFFFFFELL) + v18;
    v29 = vdupq_n_s64(v21);
    v30 = &v10[8 * v18 + 16];
    v31 = 0uLL;
    v32 = v22 & 0xFFFFFFFFFFFFFFFELL;
    v33 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v36 = 0uLL;
    do
    {
      v37 = v29;
      v31 = vaddq_s64(v30[-2], v31);
      v33 = vaddq_s64(*(v30 - 24), v33);
      v29 = *(v30 - 8);
      v34 = vaddq_s64(v34, vextq_s8(v37, v29, 8uLL));
      v35 = vaddq_s64(v29, v35);
      v38 = *v30++;
      v36 = vaddq_s64(v38, v36);
      v32 -= 2;
    }

    while (v32);
    v23 = vaddvq_s64(v31);
    v24 = vaddvq_s64(v33);
    v25 = vaddvq_s64(v34);
    v26 = vaddvq_s64(v35);
    v27 = vaddvq_s64(v36);
    if (v22 == (v22 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_18;
    }

    v21 = v29.u64[1];
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = v19;
  }

  v39 = v20 - v28;
  v40 = &v10[8 * v28 + 16];
  do
  {
    v23 += *(v40 - 4);
    v24 += *(v40 - 3);
    v25 += v21;
    v21 = *(v40 - 1);
    v26 += v21;
    v27 += *v40;
    v40 += 8;
    --v39;
  }

  while (v39);
LABEL_18:
  v41 = 0;
  v80[0] = v23;
  v80[1] = v24;
  v80[2] = v25;
  v80[3] = v26;
  v42 = 2;
  v80[4] = v27;
  do
  {
    if (v80[v41] > v80[v42])
    {
      v42 = v41;
    }

    ++v41;
  }

  while (v41 != 5);
  v73 = v19 + v42 - 2;
  if (v7)
  {
    v43 = 0;
    v44 = *a1;
    do
    {
      v45 = v9[v43];
      v46 = 20;
      v47 = v73;
      do
      {
        v45 += ~*(v44 + v43 + a1[3] * v47);
        v9[v43] = v45;
        ++v47;
        --v46;
      }

      while (v46);
      ++v43;
    }

    while (v43 != v7);
  }

  v71 = a3;
  v48 = a1[2];
  v49 = malloc_type_calloc(v7, 8uLL, 0x100004000313F17uLL);
  v50 = v49;
  v51 = ((v7 >> 1) - ((v48 - 40) >> 1));
  v52 = v73;
  if (v7)
  {
    v53 = 0;
    v54 = v52 + 20.0;
    v55 = v75;
    do
    {
      if (v54 > v52)
      {
        v56 = v49[v53];
        v57 = v19 + v42 - 1;
        v58 = v73;
        do
        {
          if (!v55[v53 + v78 * v58])
          {
            ++v56;
          }

          v49[v53] = v56;
          ++v58;
          v59 = v57++;
        }

        while (v54 > v59);
      }

      ++v53;
    }

    while (v53 != v7);
  }

  v60 = v51;
  if (v51 >= 11)
  {
    do
    {
      if (v49[v60] < 1)
      {
        break;
      }

      v60 = v60 + -1.0;
    }

    while (v60 > 10.0);
  }

  for (j = a1[2]; v60 < j; v60 = v60 + 1.0)
  {
    if (v49[v60])
    {
      break;
    }
  }

  LODWORD(src.data) = 0;
  std::vector<int>::vector[abi:ne200100](__p, v71 + 1, &src);
  v62 = v60 + -1.0;
  v63 = __p[0];
  *__p[0] = (v60 + -1.0);
  v64 = v63[theArray - 1] - (v60 + -1.0) + 8.0;
  v65 = a1[2];
  for (k = (v65 - 20); v64 < k; v64 = v64 + 1.0)
  {
    if (v62 + v64 >= v65)
    {
      break;
    }

    if (v50[(v62 + v64)] < 1)
    {
      break;
    }
  }

  v63[theArray] = (v62 + v64);
  free(v9);
  free(v50);
  free(v11);
  free(v75);
  v67 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], theArray, MEMORY[0x277CBF128]);
  *v70 = CFArrayCreateCopy(v67, Mutable);
  CFRelease(Mutable);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return 0;
}

void sub_247826F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (v25)
  {
    operator delete(v25);
  }

  _Unwind_Resume(exception_object);
}

double rectFromPoints(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  v3 = (a1 + 8);
  v4 = 0x7FFFFFFF;
  v5 = 4;
  v6 = 0x7FFFFFFF;
  do
  {
    v7 = v6;
    v8 = *(v3 - 1);
    v9 = *v3;
    if (v8 <= v6)
    {
      v7 = *(v3 - 1);
    }

    v6 = v7;
    v10 = v2;
    if (v8 >= v2)
    {
      v10 = *(v3 - 1);
    }

    v2 = v10;
    v11 = v4;
    if (v9 <= v4)
    {
      v11 = *v3;
    }

    v4 = v11;
    v12 = v1;
    if (v9 >= v1)
    {
      v12 = *v3;
    }

    v1 = v12;
    v3 += 2;
    --v5;
  }

  while (v5);
  return v6;
}

void calculatePointsWithPaddingInCorrectedSpace(double *a1, double *a2, double *a3, double *a4, double a5, double a6, double a7, double a8, float a9, double a10, double a11)
{
  *&v70[16] = a7;
  *&v70[24] = a8;
  *v70 = a5;
  *&v70[8] = a6;
  v96 = *MEMORY[0x277D85DE8];
  v16 = *a1;
  v15 = a1[1];
  v17 = *a2;
  v18 = a2[1];
  v19 = *a3;
  v20 = a3[1];
  v21 = *a4;
  v22 = a4[1];
  v23 = *a4 - *a3;
  v24 = v22 - v20;
  v66 = hypotf(v23, v24);
  v25 = v17 - v16;
  v26 = v18 - v15;
  v65 = hypotf(v25, v26);
  v27 = v21 - v16;
  v28 = v22 - v15;
  v64 = hypotf(v27, v28);
  v29 = v17 - v19;
  v30 = v18 - v20;
  v31 = hypotf(v29, v30);
  v32 = vdiv_f32(__PAIR64__(LODWORD(v66), LODWORD(v64)), __PAIR64__(LODWORD(v65), LODWORD(v31)));
  __asm { FMOV            V2.2S, #1.0 }

  v38 = vbsl_s8(vcgt_f32(v32, _D2), v32, vdiv_f32(_D2, v32));
  v39 = v38.f32[1];
  if (v38.f32[0] > v38.f32[1])
  {
    v39 = v38.f32[0];
  }

  if (v39 > 2.0)
  {
    v38 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v38), 2.0 / v39));
  }

  v40 = fmaxf(v66, v65) * v38.f32[0];
  v79 = *v70;
  v80 = *&v70[8];
  v41 = vmuls_lane_f32(fmaxf(v64, v31), v38, 1);
  v42 = v40;
  v81 = *v70 + *&v70[16];
  v82 = *&v70[8];
  v43 = v41;
  v83 = *v70 + *&v70[16];
  v84 = *&v70[8] + *&v70[24];
  v85 = *v70;
  v86 = *&v70[8] + *&v70[24];
  v44 = *a3;
  v75 = *a4;
  v76 = v44;
  v45 = *a1;
  v77 = *a2;
  v78 = v45;
  find_homography();
  v46 = a9;
  v47 = a11;
  if (v40 <= v41)
  {
    v48 = a11;
  }

  else
  {
    v48 = a10;
  }

  if (v40 <= v41)
  {
    v47 = a10;
  }

  v49 = v48 / v42 * v46;
  v50 = v47 / v43 * v46;
  v99 = CGRectInset(*v70, -(v42 * v49), -(v43 * v50));
  v51 = 0;
  *&v71 = v99.origin.x;
  *(&v71 + 1) = *&v99.origin.y;
  *&v72 = v99.origin.x + v99.size.width;
  *(&v72 + 1) = *&v99.origin.y;
  *&v73 = v99.origin.x + v99.size.width;
  *(&v73 + 1) = v99.origin.y + v99.size.height;
  *&v74 = v99.origin.x;
  *(&v74 + 1) = v99.origin.y + v99.size.height;
  v52 = v91;
  v53 = v94;
  v54 = v88;
  v55 = vdupq_lane_s64(COERCE__INT64(v87), 0);
  v56 = vdupq_lane_s64(COERCE__INT64(v89), 0);
  v57 = vdupq_lane_s64(COERCE__INT64(v93), 0);
  v58 = vdupq_lane_s64(COERCE__INT64(v95), 0);
  v59 = vdupq_lane_s64(COERCE__INT64(v90), 0);
  v60 = vdupq_lane_s64(COERCE__INT64(v92), 0);
  do
  {
    v61 = (&v71 + v51);
    v97 = vld2q_f64(v61);
    v62 = vaddq_f64(vmlaq_f64(vmulq_n_f64(v97.val[1], v53), v57, v97.val[0]), v58);
    v98.val[0] = vdivq_f64(vaddq_f64(vmlaq_f64(vmulq_n_f64(v97.val[1], v54), v55, v97.val[0]), v56), v62);
    v98.val[1] = vdivq_f64(vaddq_f64(vmlaq_f64(vmulq_n_f64(v97.val[1], v52), v59, v97.val[0]), v60), v62);
    vst2q_f64(v61, v98);
    v51 += 32;
  }

  while (v51 != 64);
  *a4 = v71;
  v63 = v73;
  *a3 = v72;
  *a2 = v63;
  *a1 = v74;
}

void __codeImage2char12_block_invoke(void *a1)
{
  std::vector<unsigned char>::vector[abi:ne200100](&v6, 400);
  for (i = 0; i != 400; ++i)
  {
    *(v6 + i) = *(a1[4] + i);
  }

  v3 = [objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] "bundleWithIdentifier:{"resourcePath"), "stringByAppendingPathComponent:"), "UTF8String"}")];
  v4 = sCNN12;
  if (!sCNN12)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, v3);
    v4 = CNN::CNNFromModel(__p);
    sCNN12 = v4;
    if (v9 < 0)
    {
      operator delete(__p[0]);
      v4 = sCNN12;
    }
  }

  memset(v5, 0, sizeof(v5));
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v5, v6, v7, v7 - v6);
  CNN::ClassifyOne(v4, v5, a1[5], a1[6]);
}

void sub_24782740C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void __codeImage2char10_block_invoke(void *a1)
{
  std::vector<unsigned char>::vector[abi:ne200100](&v6, 400);
  for (i = 0; i != 400; ++i)
  {
    *(v6 + i) = *(a1[4] + i);
  }

  v3 = [objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] "bundleWithIdentifier:{"resourcePath"), "stringByAppendingPathComponent:"), "UTF8String"}")];
  v4 = sCNN10;
  if (!sCNN10)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, v3);
    v4 = CNN::CNNFromModel(__p);
    sCNN10 = v4;
    if (v9 < 0)
    {
      operator delete(__p[0]);
      v4 = sCNN10;
    }
  }

  memset(v5, 0, sizeof(v5));
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v5, v6, v7, v7 - v6);
  CNN::ClassifyOne(v4, v5, a1[5], a1[6]);
}

void sub_247827560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void __codeImage2char_block_invoke(void *a1)
{
  std::vector<unsigned char>::vector[abi:ne200100](&v6, 400);
  for (i = 0; i != 400; ++i)
  {
    *(v6 + i) = *(a1[4] + i);
  }

  v3 = [objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] "bundleWithIdentifier:{"resourcePath"), "stringByAppendingPathComponent:"), "UTF8String"}")];
  v4 = sCNN;
  if (!sCNN)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, v3);
    v4 = CNN::CNNFromModel(__p);
    sCNN = v4;
    if (v9 < 0)
    {
      operator delete(__p[0]);
      v4 = sCNN;
    }
  }

  memset(v5, 0, sizeof(v5));
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v5, v6, v7, v7 - v6);
  CNN::ClassifyOne(v4, v5, a1[5], a1[6]);
}

void sub_2478276B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t closestNameInContacts(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0x7FFFFFFFLL;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy_;
  v24[4] = __Block_byref_object_dispose_;
  v25 = 0;
  v10 = [v7 uppercaseString];

  v11 = [v8 objectForKey:?];
  if (v11)
  {
    v12 = (v27 + 5);
    obj = v27[5];
    matched = matchAgainstContact(v10, v11, &obj);
    objc_storeStrong(v12, obj);
    v33[3] = matched;
  }

  else
  {
    matched = v33[3];
  }

  if (matched >= 2)
  {
    v14 = [v9 objectForKey:?];
    if (v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = (v27 + 5);
        v22 = v27[5];
        v16 = matchAgainstContact(v10, v14, &v22);
        objc_storeStrong(v15, v22);
        v33[3] = v16;
      }
    }

    else
    {
      v20 = MEMORY[0x277D85DD0];
      v21 = v10;
      [v8 enumerateKeysAndObjectsUsingBlock:{v20, 3221225472, __closestNameInContacts_block_invoke, &unk_278EAAC78}];
      v17 = [MEMORY[0x277CCACA8] _newZStringWithString:?];
      [v9 setObject:? forKey:?];
    }
  }

  *a2 = v27[5];
  v18 = v33[3];

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);
  return v18;
}

void sub_247827E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t matchAgainstContact(void *a1, void *a2, void *a3)
{
  v139[17] = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = a2;
  if (!objc_opt_class())
  {
    v9 = 0x7FFFFFFFLL;
    goto LABEL_104;
  }

  v6 = [v5 objectForKey:?];
  v131 = [v5 objectForKey:?];
  v136 = [v5 objectForKey:?];
  v138 = [v5 objectForKey:?];
  v134 = [v5 objectForKey:?];
  v133 = [v5 objectForKey:?];
  v7 = [v5 objectForKey:?];
  v123 = [v5 objectForKey:?];
  v132 = v7;
  v8 = [v7 componentsSeparatedByString:?];
  if ([v8 count])
  {
    v129 = [v8 lastObject];
  }

  else
  {
    v129 = 0;
  }

  if ([v8 count] < 2)
  {
    v130 = 0;
  }

  else
  {
    [v8 count];
    v10 = [v8 subarrayWithRange:?];
    v130 = [v10 componentsJoinedByString:?];
  }

  if ([v8 count])
  {
    v128 = [v8 firstObject];
  }

  else
  {
    v128 = 0;
  }

  v115 = v8;
  v116 = v5;
  if ([v8 count] < 2)
  {
    v127 = 0;
  }

  else
  {
    [v8 count];
    v11 = [v8 subarrayWithRange:?];
    v127 = [v11 componentsJoinedByString:?];
  }

  v12 = [v6 length] - 1;
  v13 = [v136 length] - 1;
  v14 = [v138 length];
  v15 = [v138 length];
  v16 = [v134 length];
  v17 = [v133 length];
  v18 = [v132 length];
  v117 = [v123 count];
  v137 = v4;
  v135 = v6;
  v19 = v12 > 0x1C || !stringContainsApproximateSubstring(v4, v6);
  v20 = v14 - 1;
  v21 = v13 > 0x1C || !stringContainsApproximateSubstring(v137, v136);
  v22 = v17 - 1;
  if (v20 > 0x1C)
  {
    v24 = 0;
    v23 = v137;
  }

  else
  {
    v23 = v137;
    v24 = stringContainsApproximateSubstring(v137, v138);
  }

  v25 = v16 - 1;
  v26 = v22 > 0x1C || !stringContainsApproximateSubstring(v23, v133);
  v120 = v26;
  v27 = v25 > 0x1C || !stringContainsApproximateSubstring(v23, v134);
  v113 = v27;
  v28 = v18 - 1;
  if (v15 - 1 > 0x1C)
  {
    v31 = 0;
  }

  else
  {
    v29 = [v138 substringToIndex:?];
    v30 = [@" " stringByAppendingString:?];
    v31 = [v23 containsString:?];
  }

  if (v28 > 0x1C)
  {
    v32 = 0;
  }

  else
  {
    v32 = stringContainsApproximateSubstring(v23, v130) || stringContainsApproximateSubstring(v23, v129);
  }

  if (v19 || v21)
  {
    v119 = 0;
    v111 = 0x7FFFFFFFLL;
    v33 = v6;
    if (!v24)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v33 = v6;
    v119 = [MEMORY[0x277CCACA8] stringWithFormat:v6, v136];
    v111 = [v119 editDistanceFromString:? threshold:?];
    if (!v24)
    {
LABEL_40:
      v124 = 0x7FFFFFFFLL;
      v126 = 0;
      v34 = 0x7FFFFFFFLL;
      if (!v31)
      {
        goto LABEL_41;
      }

LABEL_46:
      v39 = MEMORY[0x277CCACA8];
      v40 = [v138 substringToIndex:?];
      v41 = [v39 stringWithFormat:v33, v40, v136];

      v42 = [v41 editDistanceFromString:? threshold:?];
      if (v42 < v34 || [v41 editDistanceFromStringIgnoringSpaces:? threshold:?] < v34)
      {
        v43 = v41;

        v34 = v42;
        v126 = v43;
      }

      v44 = MEMORY[0x277CCACA8];
      v45 = [v138 substringToIndex:?];
      v46 = [v44 stringWithFormat:v33, v45, v136];

      v47 = [v46 editDistanceFromString:? threshold:?];
      if (v47 < v34 || [v46 editDistanceFromStringIgnoringSpaces:? threshold:?] < v34)
      {
        v48 = v46;

        v34 = v47;
        v126 = v48;
      }

      if (v32)
      {
        goto LABEL_42;
      }

      goto LABEL_53;
    }
  }

  v38 = [MEMORY[0x277CCACA8] stringWithFormat:v33, v138, v136];
  v34 = [v38 editDistanceFromString:? threshold:?];
  v126 = v38;
  v124 = [v38 editDistanceFromStringIgnoringSpaces:? threshold:?];
  if (v31)
  {
    goto LABEL_46;
  }

LABEL_41:
  if (v32)
  {
LABEL_42:
    v35 = [v132 editDistanceFromString:? threshold:?];
    v36 = [v132 stringByReplacingOccurrencesOfString:? withString:?];
    v37 = [v132 length];
    if (v35 <= (v37 - [v36 length]))
    {
      v9 = [v36 editDistanceFromString:? threshold:?];
    }

    else
    {
      v9 = 0x7FFFFFFFLL;
    }

    if (v35 >= 2 && v9 >= 2)
    {
      v49 = [MEMORY[0x277CCACA8] stringWithFormat:v129, v130];
      v50 = [v49 editDistanceFromString:? threshold:?];
      v51 = [v49 stringByReplacingOccurrencesOfString:? withString:?];
      if (v50 >= v35)
      {
        v50 = v35;
        v52 = v132;
      }

      else
      {
        v52 = v49;

        v53 = [v52 length];
        if (v50 <= v53 - [v51 length])
        {
          v9 = [v51 editDistanceFromString:? threshold:?];
        }
      }

      v35 = v50;
      v132 = v52;
    }

    if (v35 >= 2 && v9 >= 2)
    {
      v54 = [MEMORY[0x277CCACA8] stringWithFormat:v127, v128];
      v55 = [v132 stringByReplacingOccurrencesOfString:? withString:?];
      v56 = [v54 editDistanceFromString:? threshold:?];
      if (v56 >= v35)
      {
        v57 = v35;
        v58 = v132;
      }

      else
      {
        v57 = v56;
        v58 = v54;

        v59 = [v58 length];
        if (v57 <= v59 - [v55 length])
        {
          v9 = [v55 editDistanceFromString:? threshold:?];
        }
      }

      v35 = v57;
      v132 = v58;
    }

    if (v35 >= 2 && v9 >= 2)
    {
      v60 = [MEMORY[0x277CCACA8] stringWithFormat:v128, v127];
      v61 = [v60 editDistanceFromString:? threshold:?];
      v62 = [v60 stringByReplacingOccurrencesOfString:? withString:?];
      if (v61 >= v35)
      {
        v61 = v35;
        v63 = v132;
      }

      else
      {
        v63 = v60;

        v64 = [v63 length];
        if (v61 <= v64 - [v62 length])
        {
          v9 = [v62 editDistanceFromString:? threshold:?];
        }
      }

      v35 = v61;
      v132 = v63;
    }

    goto LABEL_77;
  }

LABEL_53:
  v9 = 0x7FFFFFFFLL;
  v35 = 0x7FFFFFFFLL;
LABEL_77:
  if (v117)
  {
    v139[0] = 0;
    v65 = bestMatchInStringCandidates(v123, v137, v139, 1);
    v66 = v139[0];
    v67 = [v66 stringByReplacingOccurrencesOfString:? withString:?];
    v118 = v66;
    v68 = [v66 length];
    if (v65 <= (v68 - [v67 length]))
    {
      v69 = [v67 editDistanceFromString:? threshold:?];
    }

    else
    {
      v69 = 0x7FFFFFFFLL;
    }
  }

  else
  {
    v118 = 0;
    v69 = 0x7FFFFFFFLL;
    v65 = 0x7FFFFFFFLL;
  }

  if (v113 || v120)
  {
    v114 = 0;
    v70 = 0;
    v71 = 0;
    v72 = v111;
  }

  else
  {
    v73 = [MEMORY[0x277CCACA8] stringWithFormat:v134, v133];
    v74 = [v73 editDistanceFromString:? threshold:?];
    v75 = [v73 stringByReplacingOccurrencesOfString:? withString:?];
    v114 = v73;
    v76 = [v73 length];
    v70 = v74 <= v76 - [v75 length] && objc_msgSend(v75, "editDistanceFromString:threshold:") < 2;
    v72 = v111;

    v71 = v74 == 0;
  }

  if (!v72 || !v34 || !v35 || v71 || !v65)
  {
    v4 = v137;
    v78 = v137;
    *a3 = v137;
    v9 = -1;
LABEL_101:
    v5 = v116;
    v79 = v135;
LABEL_102:
    v80 = v114;
    goto LABEL_103;
  }

  if (v72 == 1)
  {
    v77 = v119;
LABEL_99:
    *a3 = v77;
    v9 = 1;
LABEL_100:
    v4 = v137;
    goto LABEL_101;
  }

  if (v34 == 1)
  {
    v77 = v126;
    goto LABEL_99;
  }

  if (v124 <= 1)
  {
    *a3 = v126;
    v4 = v137;
    v5 = v116;
    v79 = v135;
    v9 = v124;
    goto LABEL_102;
  }

  if (v35 <= 1)
  {
    *a3 = v132;
    v9 = v35;
    goto LABEL_100;
  }

  if (v9 <= 1)
  {
    *a3 = v132;
    goto LABEL_100;
  }

  v4 = v137;
  if (v65 <= 1)
  {
    *a3 = v118;
    v9 = v65;
    goto LABEL_101;
  }

  if (v69 <= 1)
  {
    *a3 = v118;
    v9 = v69;
    goto LABEL_101;
  }

  v5 = v116;
  v79 = v135;
  if (v70)
  {
    v80 = v114;
    v82 = v114;
    *a3 = v114;
    v9 = 1;
    goto LABEL_103;
  }

  v83 = [v137 uppercaseString];
  v84 = [v83 componentsSeparatedByString:?];

  v110 = [MEMORY[0x277CCAB68] string];
  v85 = v84;
  v112 = [v85 countByEnumeratingWithState:? objects:? count:?];
  if (!v112)
  {

    v80 = v114;
    v104 = v85;
    goto LABEL_179;
  }

  obj = v85;
  v9 = 0;
  v106 = 0;
  v108 = 0;
  v109 = MEMORY[0];
  do
  {
    v86 = 0;
    do
    {
      v125 = v9;
      if (MEMORY[0] != v109)
      {
        objc_enumerationMutation(obj);
      }

      v121 = v86;
      v87 = *(8 * v86);
      v88 = [v87 editDistanceFromString:? threshold:?];
      v89 = [v87 editDistanceFromString:? threshold:?];
      v90 = [v87 editDistanceFromString:? threshold:?];
      v91 = [v87 editDistanceFromString:? threshold:?];
      v92 = [v87 editDistanceFromString:? threshold:?];
      v93 = [v87 editDistanceFromString:? threshold:?];
      v94 = [v87 editDistanceFromString:? threshold:?];
      v95 = [v87 editDistanceFromString:? threshold:?];
      v96 = [v87 editDistanceFromString:? threshold:?];
      v97 = [v87 editDistanceFromString:? threshold:?];
      if (v88 >= v89)
      {
        v98 = v89;
      }

      else
      {
        v98 = v88;
      }

      if (v98 >= v90)
      {
        v98 = v90;
      }

      if (v98 >= v91)
      {
        v98 = v91;
      }

      if (v98 >= v92)
      {
        v98 = v92;
      }

      if (v98 >= v93)
      {
        v98 = v93;
      }

      if (v98 >= v94)
      {
        v98 = v94;
      }

      if (v98 >= v95)
      {
        v98 = v95;
      }

      if (v98 >= v96)
      {
        v98 = v96;
      }

      if (v98 >= v97)
      {
        v99 = v97;
      }

      else
      {
        v99 = v98;
      }

      if (v135 && v88 <= 1 || v131 && v89 <= 1 || v138 && v90 <= 1 || v129 && v94 <= 1 || v128 && v96 <= 1 || v134 && v92 <= 1)
      {
        v100 = v99;
        [v110 appendString:?];
        [v110 appendString:?];
        v108 = 1;
LABEL_157:
        v4 = v137;
        v101 = v125;
        goto LABEL_158;
      }

      if (v130 && v95 <= 1)
      {
        v100 = v99;
        [v110 appendString:?];
        [v110 appendString:?];
        v106 = 1;
        goto LABEL_157;
      }

      v101 = v125;
      if (v127 && v97 <= 1)
      {
        v100 = v99;
        [v110 appendString:?];
        v102 = v110;
      }

      else
      {
        v100 = v99;
        if (v133 && v93 <= 1)
        {
          [v110 appendString:?];
          v102 = v110;
        }

        else
        {
          [v110 appendString:?];
          if (!v136 || v91 > 1)
          {
            [v110 appendString:?];
            goto LABEL_173;
          }

          v102 = v110;
        }
      }

      [v102 appendString:?];
      v106 = 1;
LABEL_173:
      v4 = v137;
LABEL_158:
      v9 = v100 + v101;
      v86 = v121 + 1;
    }

    while (v112 != (v121 + 1));
    v103 = [obj countByEnumeratingWithState:? objects:? count:?];
    v112 = v103;
  }

  while (v103);
  v104 = obj;

  v5 = v116;
  v79 = v135;
  v80 = v114;
  if (v108 & v106)
  {
    [v110 deleteCharactersInRange:?];
    v105 = v110;
    *a3 = v110;

    goto LABEL_103;
  }

LABEL_179:

  v9 = 0x7FFFFFFFLL;
LABEL_103:

LABEL_104:
  return v9;
}

void __closestNameInContacts_block_invoke(void *a1, void *a2, void *a3, BOOL *a4)
{
  v14 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  v9 = a1[4];
  v15 = 0;
  matched = matchAgainstContact(v9, v7, &v15);
  v11 = v15;
  v12 = v15;
  v13 = *(*(a1[5] + 8) + 24);
  if (matched < v13)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v11);
    *(*(a1[5] + 8) + 24) = matched;
    objc_storeStrong((*(a1[7] + 8) + 40), a3);
    v13 = *(*(a1[5] + 8) + 24);
  }

  *a4 = v13 < 1;

  objc_autoreleasePoolPop(v8);
}

BOOL isValidNameString(void *a1)
{
  v1 = a1;
  if ([v1 rangeOfString:? options:?] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = [v1 stringByReplacingOccurrencesOfString:? withString:?];
    v3 = [v2 length] > 5;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t isNonNameString(void *a1)
{
  v1 = a1;
  v2 = [v1 componentsSeparatedByString:?];
  v3 = [v2 count];

  if (v3 >= 2 && ([v1 componentsSeparatedByString:?], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v5 <= 2))
  {
    v7 = [v1 stringByReplacingOccurrencesOfString:? withString:?];
    v8 = [&unk_285976770 countByEnumeratingWithState:0 objects:? count:?];
    if (v8)
    {
      v9 = v8;
      v10 = MEMORY[0];
      while (2)
      {
        for (i = 0; i != v9; i = (i + 1))
        {
          if (MEMORY[0] != v10)
          {
            objc_enumerationMutation(&unk_285976770);
          }

          if ([v1 rangeOfString:?] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v7, "rangeOfString:") != 0x7FFFFFFFFFFFFFFFLL)
          {
            v6 = 1;
            goto LABEL_16;
          }
        }

        v9 = [&unk_285976770 countByEnumeratingWithState:? objects:? count:?];
        v6 = 0;
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v6 = 0;
    }

LABEL_16:
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

id extractBestDateString(void *a1, char a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  v6 = [MEMORY[0x277CBEA80] calendarWithIdentifier:?];
  v33 = v5;
  v7 = [v6 components:? fromDate:?];

  v36 = [v7 year];
  v35 = [v7 month];
  v32 = v7;
  v8 = [v7 year];
  obj = v4;
  v9 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (!v9)
  {
    v11 = 0;
    goto LABEL_33;
  }

  v10 = v9;
  v11 = 0;
  v34 = v8 + 15;
  v12 = -2147483647;
  v13 = MEMORY[0];
  do
  {
    v14 = 0;
    do
    {
      if (MEMORY[0] != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(8 * v14);
      v16 = [v15 objectForKey:?];
      v17 = [v16 integerValue];

      if (v17 <= 99)
      {
        v18 = [v15 objectForKey:?];
        v19 = [v18 integerValue];

        v20 = [v15 objectForKey:?];
        if (v19 <= 80)
        {
          v21 = @"20";
        }

        else
        {
          v21 = @"19";
        }

        v22 = [(__CFString *)v21 stringByAppendingString:?];
        v17 = [v22 integerValue];
      }

      v23 = [v15 objectForKey:?];
      v24 = [v23 integerValue];

      if (a2)
      {
        if (v17 <= v12)
        {
          goto LABEL_14;
        }

LABEL_13:
        v25 = v15;

        v11 = v25;
        v12 = v17;
        goto LABEL_14;
      }

      v26 = v36 != v17;
      if (v24 >= v35)
      {
        v26 = 1;
      }

      if (v36 <= v17 && v17 <= v34 && v26 && v17 > v12)
      {
        goto LABEL_13;
      }

LABEL_14:
      v14 = (v14 + 1);
    }

    while (v10 != v14);
    v30 = [obj countByEnumeratingWithState:? objects:? count:?];
    v10 = v30;
  }

  while (v30);
LABEL_33:

  return v11;
}

id extractValidDateStrings(void *a1)
{
  v73 = *MEMORY[0x277D85DE8];
  v68 = a1;
  v63 = [MEMORY[0x277CBEB18] array];
  v1 = [MEMORY[0x277CBEB18] array];
  v2 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:? options:? error:?];
  v3 = 0;
  [v1 addObject:?];

  v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:? options:? error:?];
  v5 = v3;

  [v1 addObject:?];
  v6 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:? options:? error:?];
  v7 = v5;

  [v1 addObject:?];
  v8 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:? options:? error:?];
  v9 = v7;

  [v1 addObject:?];
  v10 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:? options:? error:?];
  v11 = v9;

  [v1 addObject:?];
  v12 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:? options:? error:?];
  v56 = v11;

  [v1 addObject:?];
  obj = v1;
  v60 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v60)
  {
    v13 = 0;
    v59 = MEMORY[0];
    do
    {
      v14 = 0;
      v57 = v13;
      v15 = v13;
      do
      {
        if (MEMORY[0] != v59)
        {
          objc_enumerationMutation(obj);
        }

        v61 = v14;
        v16 = *(8 * v14);
        [v68 length];
        v66 = [v16 matchesInString:? options:? range:?];
        v17 = [v66 countByEnumeratingWithState:? objects:? count:?];
        if (v17)
        {
          v18 = v17;
          v19 = MEMORY[0];
          v64 = v15;
          v62 = MEMORY[0];
          do
          {
            v20 = 0;
            v65 = v18;
            do
            {
              if (MEMORY[0] != v19)
              {
                objc_enumerationMutation(v66);
              }

              v21 = *(8 * v20);
              if ([v21 range] != 0x7FFFFFFFFFFFFFFFLL)
              {
                [v21 rangeAtIndex:?];
                v70 = [v68 substringWithRange:?];
                v71 = [MEMORY[0x277CBEB38] dictionary];
                v22 = MEMORY[0x277CCAE60];
                [v21 rangeAtIndex:?];
                v23 = [v22 valueWithRange:?];
                v69 = v20;
                if (v15 <= 2)
                {
                  v67 = v21;
                  if (v15)
                  {
                    v24 = v71;
                    if (v15 != 1)
                    {
                      if (v15 == 2)
                      {
                        v25 = v63;
                        v26 = [v25 countByEnumeratingWithState:? objects:? count:?];
                        if (v26)
                        {
                          v27 = v26;
                          v28 = 0;
                          v29 = MEMORY[0];
                          do
                          {
                            for (i = 0; i != v27; i = (i + 1))
                            {
                              if (MEMORY[0] != v29)
                              {
                                objc_enumerationMutation(v25);
                              }

                              v31 = [*(8 * i) objectForKey:?];
                              v32 = v31;
                              if (v31)
                              {
                                v33 = [v31 rangeValue];
                                v35 = v34;
                                v77.location = [v23 rangeValue];
                                v77.length = v36;
                                v75.location = v33;
                                v75.length = v35;
                                v28 |= NSIntersectionRange(v75, v77).length != 0;
                              }
                            }

                            v27 = [v25 countByEnumeratingWithState:? objects:? count:?];
                          }

                          while (v27);

                          v15 = v64;
                          v19 = v62;
                          v18 = v65;
                          v24 = v71;
                          if (v28)
                          {
                            goto LABEL_50;
                          }
                        }

                        else
                        {

                          v24 = v71;
                        }

                        v46 = [v67 rangeAtIndex:?];
                        v48 = v47;
                        v78.location = [v67 rangeAtIndex:?];
                        v78.length = v49;
                        v76.location = v46;
                        v76.length = v48;
                        v50 = NSUnionRange(v76, v78);
                        v79.location = [v67 rangeAtIndex:?];
                        v79.length = v51;
                        NSUnionRange(v50, v79);
                        v52 = [v68 substringWithRange:?];
                        [v24 setObject:? forKey:?];

                        [v67 numberOfRanges];
                        [v67 rangeAtIndex:?];
                        v37 = [v68 substringWithRange:?];
                        [v24 setObject:? forKey:?];
                        [v67 rangeAtIndex:?];
                        v38 = [v68 substringWithRange:?];
                        v39 = v24;
LABEL_46:
                        [v39 setObject:? forKey:?];
LABEL_47:

                        v15 = v64;
                        v18 = v65;
                        v24 = v71;
                      }

                      goto LABEL_48;
                    }

                    [v71 setObject:? forKey:?];
                    [v21 numberOfRanges];
                    [v21 rangeAtIndex:?];
                    v37 = [v68 substringWithRange:?];
                    [v71 setObject:? forKey:?];
                    [v21 rangeAtIndex:?];
                    v38 = [v68 substringWithRange:?];
                    [v71 setObject:? forKey:?];
                    [v21 rangeAtIndex:?];
                    v40 = [v68 substringWithRange:?];
                    v41 = v71;
                  }

                  else
                  {
                    v24 = v71;
                    [v71 setObject:? forKey:?];
                    [v21 numberOfRanges];
                    [v21 rangeAtIndex:?];
                    v37 = [v68 substringWithRange:?];
                    [v71 setObject:? forKey:?];
                    [v21 rangeAtIndex:?];
                    v38 = [v68 substringWithRange:?];
                    [v71 setObject:? forKey:?];
                    [v21 rangeAtIndex:?];
                    v40 = [v68 substringWithRange:?];
                    v41 = v71;
                  }

                  [v41 setObject:? forKey:?];
                  [v24 setObject:? forKey:?];

                  goto LABEL_47;
                }

                if (v15 == 3)
                {
                  [v71 setObject:? forKey:?];
                  [v21 numberOfRanges];
                  [v21 rangeAtIndex:?];
                  v37 = [v68 substringWithRange:?];
                  [v71 setObject:? forKey:?];
                  [v21 numberOfRanges];
                  [v21 rangeAtIndex:?];
                  v38 = [v68 substringWithRange:?];
                  v42 = 0;
                  v72[2] = xmmword_278EAACB8;
                  v72[3] = *&off_278EAACC8;
                  v72[4] = xmmword_278EAACD8;
                  v72[5] = *off_278EAACE8;
                  v72[0] = xmmword_278EAAC98;
                  v72[1] = *&off_278EAACA8;
                  do
                  {
                    ++v42;
                    if ([v38 isEqualToString:?])
                    {
                      v43 = [MEMORY[0x277CCACA8] stringWithFormat:v42];
                      [v71 setObject:? forKey:?];
                    }
                  }

                  while (v42 != 12);
                  if ([v21 rangeAtIndex:?] != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v44 = [v68 substringWithRange:?];
                    [v71 setObject:? forKey:?];
                  }

                  v45 = 88;
                  v19 = v62;
                  do
                  {

                    v45 -= 8;
                  }

                  while (v45 != -8);
                  goto LABEL_47;
                }

                v24 = v71;
                if (v15 == 4)
                {
                  [v71 setObject:? forKey:?];
                  [v21 rangeAtIndex:?];
                  v37 = [v68 substringWithRange:?];
                  [v71 setObject:? forKey:?];
                  [v21 rangeAtIndex:?];
                  v38 = [v68 substringWithRange:?];
                  [v71 setObject:? forKey:?];
                  v19 = v62;
                  goto LABEL_47;
                }

                v19 = v62;
                if (v15 == 5)
                {
                  [v71 setObject:? forKey:?];
                  [v21 rangeAtIndex:?];
                  v37 = [v68 substringWithRange:?];
                  [v71 setObject:? forKey:?];
                  [v21 rangeAtIndex:?];
                  v38 = [v68 substringWithRange:?];
                  v39 = v71;
                  goto LABEL_46;
                }

LABEL_48:
                v53 = [v24 objectForKey:?];

                if (v53)
                {
                  [v63 addObject:?];
                }

LABEL_50:

                v20 = v69;
              }

              v20 = (v20 + 1);
            }

            while (v20 != v18);
            v18 = [v66 countByEnumeratingWithState:? objects:? count:?];
          }

          while (v18);
        }

        ++v15;

        v14 = v61 + 1;
      }

      while ((v61 + 1) != v60);
      v54 = [obj countByEnumeratingWithState:? objects:? count:?];
      v13 = v57 + v60;
      v60 = v54;
    }

    while (v54);
  }

  return v63;
}

id computeReferenceDateFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 length])
  {
    v3 = [v2 stringByReplacingOccurrencesOfString:? withString:?];

    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    v5 = [&unk_285976788 countByEnumeratingWithState:0 objects:? count:?];
    if (v5)
    {
      v6 = v5;
      v7 = MEMORY[0];
LABEL_5:
      v8 = 0;
      while (1)
      {
        if (MEMORY[0] != v7)
        {
          objc_enumerationMutation(&unk_285976788);
        }

        [v4 setDateFormat:?];
        v9 = [v4 dateFromString:?];
        if (v9)
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [&unk_285976788 countByEnumeratingWithState:? objects:? count:?];
          if (v6)
          {
            goto LABEL_5;
          }

          goto LABEL_15;
        }
      }

      v11 = v9;
      v12 = [MEMORY[0x277CBEA80] currentCalendar];
      v13 = [v12 components:? fromDate:?];
      if ([v13 year] >= 1981)
      {
      }

      else
      {
        [v13 year];
        [v13 setYear:?];
        v14 = [v12 dateFromComponents:?];

        v11 = v14;
        if (!v14)
        {
          goto LABEL_15;
        }
      }

      v15 = [MEMORY[0x277CBEA80] currentCalendar];
      v16 = [v15 components:? fromDate:?];
      [v16 year];
      [v16 setYear:?];
      v17 = [v15 dateFromComponents:?];

      v10 = v17;
    }

    else
    {
LABEL_15:
      fwrite("\nCould not extract date from ground truth. Using current date", 0x3DuLL, 1uLL, *MEMORY[0x277D85DF8]);
      v10 = [MEMORY[0x277CBEAA8] date];
    }

    v2 = v3;
  }

  else
  {
    v10 = [MEMORY[0x277CBEAA8] date];
  }

  return v10;
}

uint64_t checkPartialCodePrefix(void *a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v15 = &unk_2859768C0;
  v16 = &unk_2859768D8;
  v21 = &unk_2859767A0;
  v22 = &unk_2859767B8;
  v17 = &unk_2859768F0;
  v18 = &unk_285976908;
  v23 = &unk_2859767D0;
  v24 = &unk_2859767E8;
  v19 = &unk_285976920;
  v20 = &unk_285976938;
  v25 = &unk_285976800;
  v26 = &unk_285976818;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v5 = [v3 objectForKey:?];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:0 objects:? count:?];
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if ([v2 hasPrefix:?])
        {
          v7 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

uint64_t checkCodePrefix(void *a1)
{
  v1 = a1;
  v2 = checkPartialCodePrefix(v1, [v1 length]);

  return v2;
}

id extractExpirationDateResults(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [v5 objectForKey:?];
  v7 = [v6 BOOLValue];

  v8 = [MEMORY[0x277CBEB38] dictionary];
  if (v3 && [v3 count])
  {
    v9 = [v3 objectAtIndex:?];
    v10 = extractValidDateStrings(v9);

    if (!v10 || ![v10 count])
    {
      v11 = [v3 objectAtIndex:?];
      v12 = [v11 stringByReplacingOccurrencesOfString:? withString:?];
      v13 = extractValidDateStrings(v12);

      v10 = v13;
    }

    v14 = [v3 objectAtIndex:?];
    [v8 setObject:? forKey:?];

    v15 = extractBestDateString(v10, v7, v4);
    v16 = v15;
    if (v15)
    {
      v17 = [v15 objectForKey:?];
      if ([v17 length] == 6)
      {
        v18 = [v17 stringByReplacingCharactersInRange:? withString:?];

        v17 = v18;
      }

      [v8 setObject:? forKey:?];
      v19 = [v16 objectForKey:?];
      [v8 setObject:? forKey:?];

      v20 = [v16 objectForKey:?];

      if (v20)
      {
        v21 = [v16 objectForKey:?];
        [v8 setObject:? forKey:?];
      }

      v22 = [v16 objectForKey:?];

      if (v22)
      {
        v23 = [v16 objectForKey:?];
        [v8 setObject:? forKey:?];
      }

      [v8 setObject:? forKey:?];
      v24 = [v3 objectAtIndex:?];
      v25 = [v24 stringByReplacingOccurrencesOfString:? withString:?];
      v26 = [v16 objectForKey:?];
      [v25 rangeOfString:?];

      if ([v3 count] >= 2)
      {
        v27 = [v3 objectAtIndex:?];
        v28 = [v27 objectAtIndex:?];
        [v8 setObject:? forKey:?];

        if ([v3 count] >= 3)
        {
          v29 = [v3 objectAtIndex:?];
          [v29 integerValue];
        }

        v30 = [v3 objectAtIndex:?];
        v31 = [v30 objectAtIndex:?];
        [v31 integerValue];

        v32 = [MEMORY[0x277CCABB0] numberWithFloat:?];
        [v8 setObject:? forKey:?];
      }
    }
  }

  return v8;
}

id extractCardholderNameResults(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [MEMORY[0x277CBEB38] dictionary];
  if ([v5 count])
  {
    v9 = [v5 objectAtIndex:?];
    v10 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v11 = [v9 stringByTrimmingCharactersInSet:?];

    if ([v11 length])
    {
      v33 = 0;
      v12 = closestNameInContacts(v11, &v33, v6, v7);
      v13 = v33;
      v14 = [MEMORY[0x277CCACA8] _newZStringWithString:?];
      [v8 setObject:? forKey:?];

      if ([v5 count] >= 2)
      {
        v15 = [v5 objectAtIndex:?];
        v16 = [v15 objectAtIndex:?];
        [v8 setObject:? forKey:?];

        if ([v5 count] >= 3)
        {
          v17 = [v5 objectAtIndex:?];
          [v17 integerValue];
        }

        v18 = [v5 objectAtIndex:?];
        v19 = [v18 objectAtIndex:?];
        [v19 integerValue];

        v20 = [MEMORY[0x277CCABB0] numberWithFloat:?];
        [v8 setObject:? forKey:?];
      }

      if (v13)
      {
        v21 = [v13 length] / 3;
        v22 = [MEMORY[0x277CCACA8] _newZStringWithString:?];
        [v8 setObject:? forKey:?];

        v23 = [MEMORY[0x277CCABB0] numberWithInteger:?];
        [v8 setObject:? forKey:?];

        v24 = [MEMORY[0x277CCABB0] numberWithInteger:?];
        [v8 setObject:? forKey:?];

        if (v12 <= v21)
        {
          if (v12 < 0)
          {
            [v8 setObject:? forKey:?];
          }

          v25 = [MEMORY[0x277CCACA8] _newZStringWithString:?];
          [v8 setObject:? forKey:?];

          if ([v5 count] >= 2)
          {
            v26 = [v5 objectAtIndex:?];
            v27 = [v26 objectAtIndex:?];
            [v8 setObject:? forKey:?];

            if ([v5 count] >= 3)
            {
              v28 = [v5 objectAtIndex:?];
              [v28 integerValue];
            }

            v29 = [v5 objectAtIndex:?];
            v30 = [v29 objectAtIndex:?];
            [v30 integerValue];

            v31 = [MEMORY[0x277CCABB0] numberWithFloat:?];
            [v8 setObject:? forKey:?];
          }
        }
      }
    }
  }

  return v8;
}

id extractCardNumberResults(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEB38] dictionary];
  if (v1 && [v1 count])
  {
    v3 = [v1 objectAtIndex:?];
    v4 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v5 = [v3 stringByTrimmingCharactersInSet:?];

    v6 = extractCardCode(v5);
    if (v6)
    {
      [v2 setObject:? forKey:?];
    }

    [v2 setObject:? forKey:?];
  }

  return v2;
}

void *extractCardCode(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:?];
  v4 = [v3 BOOLValue];

  v5 = [v1 stringByReplacingOccurrencesOfString:? withString:?];
  if ([v5 length] && objc_msgSend(v5, "length") == 16 && checkCardCode(v5) && ((v4 & 1) != 0 || checkCodePrefix(v5)))
  {
    v6 = [v5 mutableCopy];
    [v6 insertString:? atIndex:?];
    [v6 insertString:? atIndex:?];
    [v6 insertString:? atIndex:?];
    v7 = [MEMORY[0x277CCACA8] _newZStringWithString:?];
    goto LABEL_50;
  }

  v6 = [v1 stringByReplacingOccurrencesOfString:? withString:?];
  if ([v6 length] && objc_msgSend(v6, "length") == 15 && checkCardCode(v6) && ((v4 & 1) != 0 || checkCodePrefix(v6)))
  {
    v8 = [v6 mutableCopy];
    v9 = [MEMORY[0x277CBEB98] setWithArray:?];
    v10 = [v8 substringToIndex:?];
    [v9 containsObject:?];

    [v8 insertString:? atIndex:?];
    [v8 insertString:? atIndex:?];
    v11 = MEMORY[0x277CCACA8];
  }

  else
  {
    v8 = [v1 stringByReplacingOccurrencesOfString:? withString:?];
    if ([v8 length] < 0x11 || objc_msgSend(v8, "length") > 0x13 || !checkCardCode(v8) || (v4 & 1) == 0 && !checkCodePrefix(v8))
    {
      v9 = [v1 stringByReplacingOccurrencesOfString:? withString:?];
      if ([v9 length] != 12 && objc_msgSend(v9, "length") != 11)
      {
        goto LABEL_34;
      }

      if ([v9 length] == 12 && (objc_msgSend(v1, "length"), objc_msgSend(v1, "characterAtIndex:") != 32) || objc_msgSend(v9, "length") == 11 && (objc_msgSend(v1, "length"), objc_msgSend(v1, "characterAtIndex:") != 32))
      {
        v7 = 0;
        goto LABEL_49;
      }

      if (([v9 length] != 11 || objc_msgSend(v9, "characterAtIndex:") == 49) && (objc_msgSend(v9, "substringWithRange:"), v12 = objc_claimAutoreleasedReturnValue(), v13 = checkCardCode(v12), v12, v13))
      {
        v14 = [v9 mutableCopy];
        if ([v9 length] == 12)
        {
          [v14 insertString:? atIndex:?];
          [v14 insertString:? atIndex:?];
          [v14 insertString:? atIndex:?];
        }

        if ([v9 length] == 11)
        {
          [v14 insertString:? atIndex:?];
          [v14 insertString:? atIndex:?];
          [v14 insertString:? atIndex:?];
          [v14 insertString:? atIndex:?];
        }

        v7 = [MEMORY[0x277CCACA8] _newZStringWithString:?];
      }

      else
      {
LABEL_34:
        v14 = [v1 stringByReplacingOccurrencesOfString:? withString:?];
        if ([v14 length] == 14 && checkCardCode(v14) && ((v4 & 1) != 0 || checkCodePrefix(v14)))
        {
          v15 = [v14 mutableCopy];
          [v15 insertString:? atIndex:?];
          [v15 insertString:? atIndex:?];
          v7 = [MEMORY[0x277CCACA8] _newZStringWithString:?];
        }

        else
        {
          v15 = [v1 stringByReplacingOccurrencesOfString:? withString:?];
          if ([v15 length] == 13 && objc_msgSend(v1, "rangeOfString:") == 4)
          {
            v16 = [@"589297" stringByAppendingString:?];

            if (checkCardCode(v16))
            {
              v17 = [v16 mutableCopy];
              [v17 insertString:? atIndex:?];
              [v17 insertString:? atIndex:?];
              [v17 insertString:? atIndex:?];
              [v17 insertString:? atIndex:?];
              v7 = [MEMORY[0x277CCACA8] _newZStringWithString:?];
            }

            else
            {
              v7 = 0;
            }

            v15 = v16;
          }

          else
          {
            v7 = 0;
          }
        }
      }

      goto LABEL_49;
    }

    v9 = [v8 mutableCopy];
    v11 = MEMORY[0x277CCACA8];
  }

  v7 = [v11 _newZStringWithString:?];
LABEL_49:

LABEL_50:

  return v7;
}

BOOL isValidCodeLocation(void *a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = [a1 stringByReplacingOccurrencesOfString:? withString:?];
  v12 = [v11 length];

  result = 1;
  if (v12 == 12)
  {
    if (a2)
    {
      return 0;
    }

    v14.origin.y = 0.2;
    v14.size.height = 0.6;
    v14.origin.x = 0.0;
    v14.size.width = 1.0;
    v15.origin.x = a3;
    v15.origin.y = a4;
    v15.size.width = a5;
    v15.size.height = a6;
    if (!CGRectContainsRect(v14, v15))
    {
      return 0;
    }
  }

  return result;
}

uint64_t isValidNameLocationForCode(void *a1, double a2, double a3)
{
  v4 = a1;
  v5 = [&unk_285976830 arrayByAddingObjectsFromArray:0];
  v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = MEMORY[0];
    do
    {
      for (i = 0; i != v7; i = (i + 1))
      {
        if (MEMORY[0] != v9)
        {
          objc_enumerationMutation(v5);
        }

        v8 |= [v4 hasPrefix:?];
      }

      v7 = [v5 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v7);

    v11 = v8 ^ 1 | (a3 < 14.53);
  }

  else
  {

    v11 = 1;
  }

  return v11 & 1;
}

BOOL checkCardCode(void *a1)
{
  v1 = a1;
  if ([v1 length] >= 0xA && objc_msgSend(v1, "length") <= 0x13)
  {
    v3 = [MEMORY[0x277CBEB98] setWithArray:?];
    if (([v3 containsObject:?] & 1) != 0 || (v4 = objc_msgSend(v1, "UTF8String"), !objc_msgSend(v1, "length")))
    {
LABEL_9:
      v2 = 0;
    }

    else
    {
      v5 = 0;
      while (*(v4 + v5) == 48)
      {
        if ([v1 length] <= ++v5)
        {
          goto LABEL_9;
        }
      }

      v7 = [v1 length];
      v8 = [v1 length];
      if (v8 < 1)
      {
        v2 = 1;
      }

      else
      {
        v9 = 0;
        v10 = (v8 & 0x7FFFFFFF) - 1;
        do
        {
          LOBYTE(v11) = *(v4 + v10) - 48;
          if (((v10 ^ v7) & 1) == 0)
          {
            v11 = (2 * v11);
            if (v11 >= 10)
            {
              v11 = v11 - 10 * (v11 / 0xAu) + v11 / 0xAu;
            }
          }

          v9 += v11;
          v12 = v10-- + 1;
        }

        while (v12 > 1);
        HIDWORD(v13) = -858993459 * v9 + 429496728;
        LODWORD(v13) = HIDWORD(v13);
        v2 = (v13 >> 1) < 0x19999999;
      }
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void *extractCardCodeHK(void *a1)
{
  v1 = a1;
  v2 = [v1 stringByReplacingOccurrencesOfString:? withString:?];
  if ([v2 length] != 13 || objc_msgSend(v1, "characterAtIndex:") != 32)
  {
    if ([v2 length] == 11 && objc_msgSend(v1, "characterAtIndex:") == 32)
    {
      v9 = [&unk_285976890 countByEnumeratingWithState:0 objects:? count:?];
      if (v9)
      {
        v10 = v9;
        v11 = MEMORY[0];
LABEL_16:
        v12 = 0;
        while (1)
        {
          if (MEMORY[0] != v11)
          {
            objc_enumerationMutation(&unk_285976890);
          }

          v7 = [*(8 * v12) stringByAppendingString:?];
          if (checkCardCode(v7))
          {
            goto LABEL_24;
          }

          if (v10 == ++v12)
          {
            v10 = [&unk_285976890 countByEnumeratingWithState:? objects:? count:?];
            v8 = 0;
            if (v10)
            {
              goto LABEL_16;
            }

            goto LABEL_25;
          }
        }
      }
    }

LABEL_23:
    v8 = 0;
    goto LABEL_25;
  }

  v3 = [&unk_285976878 countByEnumeratingWithState:? objects:? count:?];
  if (!v3)
  {
    goto LABEL_23;
  }

  v4 = v3;
  v5 = MEMORY[0];
LABEL_5:
  v6 = 0;
  while (1)
  {
    if (MEMORY[0] != v5)
    {
      objc_enumerationMutation(&unk_285976878);
    }

    v7 = [*(8 * v6) stringByAppendingString:?];
    if (checkCardCode(v7))
    {
      break;
    }

    if (v4 == ++v6)
    {
      v4 = [&unk_285976878 countByEnumeratingWithState:? objects:? count:?];
      v8 = 0;
      if (v4)
      {
        goto LABEL_5;
      }

      goto LABEL_25;
    }
  }

LABEL_24:
  v13 = [v7 mutableCopy];
  [v13 insertString:? atIndex:?];
  [v13 insertString:? atIndex:?];
  [v13 insertString:? atIndex:?];
  [v13 insertString:? atIndex:?];
  v8 = [MEMORY[0x277CCACA8] _newZStringWithString:?];

LABEL_25:

  return v8;
}

void *enrichedNumbersListHK(void *a1)
{
  v1 = a1;
  v38 = [v1 mutableCopy];
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:? objects:? count:?];
  if (v3)
  {
    v4 = v3;
    v5 = MEMORY[0];
    v39 = v2;
    v40 = MEMORY[0];
    do
    {
      for (i = 0; i != v4; i = (i + 1))
      {
        if (MEMORY[0] != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(8 * i);
        v8 = [v7 stringByReplacingOccurrencesOfString:? withString:?];
        if ([v7 length] >= 0xC && objc_msgSend(v8, "length") >= 0xA)
        {
          v9 = [v7 length];
          if ([v7 length])
          {
            v10 = v9 == 0;
          }

          else
          {
            v10 = 1;
          }

          if (!v10)
          {
            while (1)
            {
              v11 = [v7 rangeOfString:? options:? range:?];
              if (v11 > 0xA || ((1 << v11) & 0x428) == 0)
              {
                break;
              }

              v13 = v11 + 1;
              v14 = [v7 length] + ~v11;
              if (v13 >= [v7 length] || v14 == 0)
              {
                goto LABEL_23;
              }
            }

            if (v11 != 0x7FFFFFFFFFFFFFFFLL)
            {
              [v38 removeObject:?];
              v5 = v40;
              goto LABEL_57;
            }
          }

LABEL_23:
          v16 = [v7 copy];
          v17 = [v7 characterAtIndex:?];
          if (v17 > 0x37)
          {
            goto LABEL_56;
          }

          v18 = v17;
          if (((1 << v17) & 0x81000100000000) == 0)
          {
            goto LABEL_56;
          }

          if ([v16 length] >= 0xC && objc_msgSend(v16, "rangeOfString:") == 5)
          {
            if ([v16 length] >= 0xD)
            {
              v19 = [v16 substringToIndex:?];

              v16 = v19;
            }

            v20 = [v16 stringByReplacingOccurrencesOfString:? withString:?];
            v21 = [v20 length];

            v22 = v21 >= 0xA;
            goto LABEL_48;
          }

          if ([v16 length] <= 0xD)
          {
            v23 = [v16 characterAtIndex:?];
            if (v23 <= 0x39 && ((1 << v23) & 0x228000000000000) != 0)
            {
              v24 = [v16 stringByReplacingCharactersInRange:? withString:?];

              v16 = v24;
            }

            v25 = [v16 stringByReplacingOccurrencesOfString:? withString:?];
            v26 = [v25 length];

            v27 = v26 > 9;
            v2 = v39;
            if (!v27)
            {
              goto LABEL_56;
            }

LABEL_50:
            if (v18 == 55 || v18 == 48)
            {
              v33 = [v16 stringByReplacingCharactersInRange:? withString:?];

              v16 = v33;
            }

            v34 = [v16 stringByReplacingOccurrencesOfString:? withString:?];
            v35 = [v34 length];

            if (v35 >= 0xA && ([v38 containsObject:?] & 1) == 0)
            {
              v36 = [MEMORY[0x277CCACA8] _newZStringWithString:?];
              [v38 addObject:?];
            }

LABEL_56:

            v5 = v40;
            goto LABEL_57;
          }

          if ([v16 length] < 0xE)
          {
            goto LABEL_56;
          }

          v28 = [v16 characterAtIndex:?];
          if (v28 <= 50)
          {
            if (v28 != 32)
            {
              if (v28 != 48)
              {
                goto LABEL_56;
              }

LABEL_44:
              v29 = [v16 stringByReplacingCharactersInRange:? withString:?];

              v16 = v29;
            }

            if ([v16 length] >= 0xF)
            {
              v30 = [v16 substringToIndex:?];

              v16 = v30;
            }

            v31 = [v16 stringByReplacingOccurrencesOfString:? withString:?];
            v32 = [v31 length];

            v22 = v32 >= 0xC;
LABEL_48:
            v2 = v39;
            if (v22)
            {
              goto LABEL_50;
            }

            goto LABEL_56;
          }

          if (v28 != 55 && v28 != 51)
          {
            goto LABEL_56;
          }

          goto LABEL_44;
        }

LABEL_57:
      }

      v4 = [v2 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v4);
  }

  return v38;
}

void sortOverlappingCALayers(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v142 = a1;
  v141 = a2;
  v9 = 0;
  v10 = 0;
  v11 = 2 * [v142 count];
  v12 = a4 + a6;
  do
  {
    rect2 = v11;
    v13 = v10;
    v14 = v9;
    v158 = v9;
    v159[0] = v10;
    sortLayersWithYCoordinate(v142, v141, v159, &v158);
    v10 = v159[0];

    v9 = v158;
    v15 = [v10 lastObject];
    [v15 frame];
    v17 = v16;
    [v15 frame];
    if (v12 - (v17 + v18) < 0.0)
    {
      [v15 position];
      [v15 position];
      [v15 setPosition:?];
    }

    v149 = v15;
    v19 = [v10 count];
    if (v19 < 2)
    {
LABEL_20:

      break;
    }

    v20 = (v19 - 1);
    v21 = v19 & 0x7FFFFFFF;
    while (1)
    {
      v22 = [v10 objectAtIndex:?];
      v23 = [v10 objectAtIndex:?];
      v24 = [v9 objectAtIndex:?];
      v25 = [v24 unsignedIntegerValue];

      v26 = [v9 objectAtIndex:?];
      v27 = [v26 unsignedIntegerValue];

      v153 = v22;
      [v22 frame];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v151 = v23;
      [v23 frame];
      v167.origin.x = v36;
      v167.origin.y = v37;
      v167.size.width = v38;
      v167.size.height = v39;
      v161.origin.x = v29;
      v161.origin.y = v31;
      v161.size.width = v33;
      v161.size.height = v35;
      v162 = CGRectIntersection(v161, v167);
      *&v162.origin.x = v162.size.height;
      if (vcvtps_s32_f32(*&v162.origin.x) >= 1)
      {
        break;
      }

LABEL_15:

      --v20;
      if (v21-- <= 2)
      {
        goto LABEL_20;
      }
    }

    if (v25 < v27)
    {
      if ([v10 count] > v21 - 1)
      {
        v40 = v20;
        while (1)
        {
          v41 = [v10 objectAtIndex:?];
          v42 = [v9 objectAtIndex:?];
          v43 = [v42 unsignedIntegerValue];

          if ([v10 count] > ++v40)
          {
            v44 = [v9 objectAtIndex:?];
            v45 = [v44 unsignedIntegerValue];

            if (v45 < v43)
            {
              break;
            }
          }

          [v41 position];
          [v41 position];
          [v41 setPosition:?];

          if ([v10 count] <= v40)
          {
            goto LABEL_15;
          }
        }
      }

      goto LABEL_15;
    }

    [v22 position];
    [v22 position];
    [v22 setPosition:?];

    v11 = rect2 - 1;
  }

  while (rect2 != 1);
  v47 = [v10 firstObject];
  [v47 frame];
  v49 = a4 - v48;
  if (vcvtps_s32_f32(v49) >= 1)
  {
    [v47 position];
    [v47 position];
    [v47 setPosition:?];
  }

  if ([v10 count] >= 2)
  {
    for (i = 1; [v10 count] > i; ++i)
    {
      v51 = [v10 objectAtIndex:?];
      v52 = [v10 objectAtIndex:?];
      v53 = [v9 objectAtIndex:?];
      v54 = [v53 unsignedIntegerValue];

      v55 = [v9 objectAtIndex:?];
      v56 = [v55 unsignedIntegerValue];

      [v51 frame];
      v58 = v57;
      v60 = v59;
      v62 = v61;
      v64 = v63;
      [v52 frame];
      v168.origin.x = v65;
      v168.origin.y = v66;
      v168.size.width = v67;
      v168.size.height = v68;
      v163.origin.x = v58;
      v163.origin.y = v60;
      v163.size.width = v62;
      v163.size.height = v64;
      v164 = CGRectIntersection(v163, v168);
      *&v164.origin.x = v164.size.height;
      if (vcvtps_s32_f32(*&v164.origin.x) >= 1)
      {
        if (v56 < v54)
        {

          break;
        }

        [v52 position];
        [v52 position];
        [v52 setPosition:?];
      }
    }
  }

  v156 = v9;
  v157 = v10;
  sortLayersWithYCoordinate(v142, v141, &v157, &v156);
  v69 = v157;

  v70 = v156;
  v150 = [MEMORY[0x277CBEB38] dictionary];
  v152 = [MEMORY[0x277CBEB38] dictionary];
  if ([v69 count])
  {
    v71 = 0;
    v144 = a6 + 1.79769313e308 - a4;
    do
    {
      if (v71)
      {
        v72 = [v69 objectAtIndex:?];
        [v72 frame];
        v74 = v73;
        v76 = v75;
        v154 = v77;
        rect2a = v78;
      }

      else
      {
        v76 = -1.79769313e308;
        v154 = INFINITY;
        rect2a = 1.79769313e308 - a4;
        v74 = -1.79769313e308;
      }

      v79 = [v69 objectAtIndex:?];
      if ([v69 count] - 1 <= v71)
      {
        v82 = -1.79769313e308;
        v86 = INFINITY;
        v88 = v144;
        v84 = v12;
        if (v71)
        {
LABEL_38:
          v89 = [v70 objectAtIndex:?];
          v90 = [v89 unsignedIntegerValue];

          goto LABEL_41;
        }
      }

      else
      {
        v80 = [v69 objectAtIndex:?];
        [v80 frame];
        v82 = v81;
        v84 = v83;
        v86 = v85;
        v88 = v87;

        if (v71)
        {
          goto LABEL_38;
        }
      }

      v90 = -1;
LABEL_41:
      v91 = [v70 objectAtIndex:?];
      v92 = [v91 unsignedIntegerValue];

      if ([v70 count] - 1 <= v71)
      {
        v94 = -1;
      }

      else
      {
        v93 = [v70 objectAtIndex:?];
        v94 = [v93 unsignedIntegerValue];
      }

      if ((v90 == -1 || v92 > v90) && ([v79 frame], v169.origin.x = v74, v169.origin.y = v76, v169.size.width = v154, v169.size.height = rect2a, CGRectIntersectsRect(v165, v169)) || (v94 == -1 || v92 >= v94) && (objc_msgSend(v79, "frame"), v170.origin.x = v82, v170.origin.y = v84, v170.size.width = v86, v170.size.height = v88, CGRectIntersectsRect(v166, v170)))
      {
        v95 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
        v96 = [v150 objectForKey:?];

        if (!v96)
        {
          v96 = [MEMORY[0x277CBEB18] array];
          v97 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
          [v150 setObject:? forKey:?];
        }

        [v96 addObject:?];
      }

      v98 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
      v99 = [v152 objectForKey:?];

      if (!v99)
      {
        v99 = [MEMORY[0x277CBEB18] array];
        v100 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
        [v152 setObject:? forKey:?];
      }

      [v99 addObject:?];

      ++v71;
    }

    while ([v69 count] > v71);
  }

  v143 = v70;
  v145 = v69;
  v101 = [v150 allKeys];
  v102 = [v101 sortedArrayUsingComparator:?];

  v103 = [v152 allKeys];
  v104 = [v103 sortedArrayUsingComparator:?];

  v105 = [MEMORY[0x277CBEB18] array];
  if ([v102 count])
  {
    v106 = 0;
    LODWORD(v107) = 0;
    v108 = v152;
    rect2b = v102;
    do
    {
      v155 = v106;
      v109 = [v102 objectAtIndex:?];
      v110 = [v109 unsignedIntegerValue];

      if ([v104 count] > v107)
      {
        v107 = v107;
        while (1)
        {
          v111 = [v104 objectAtIndex:?];
          v112 = [v111 unsignedIntegerValue];

          if (v110 < v112)
          {
            break;
          }

          v113 = [v104 objectAtIndex:?];
          v114 = [v108 objectForKey:?];
          v115 = [v105 arrayByAddingObjectsFromArray:?];

          ++v107;
          v105 = v115;
          if ([v104 count] <= v107)
          {
            goto LABEL_64;
          }
        }

        v115 = v105;
LABEL_64:
        v105 = v115;
        v102 = rect2b;
      }

      v116 = [v102 objectAtIndex:?];
      v117 = [v150 objectForKey:?];

      if ([v117 count])
      {
        v118 = 0;
        do
        {
          v119 = [v105 sortedArrayUsingComparator:?];
          v120 = [v117 objectAtIndex:?];
          v121 = a4;
          if ([v119 count])
          {
            v122 = 0;
            v121 = a4;
            while (1)
            {
              v123 = [v119 objectAtIndex:?];
              [v123 frame];
              v125 = v124;
              v126 = v124 - v121;
              [v120 frame];
              if (v126 >= v127)
              {
                break;
              }

              [v123 frame];
              v121 = v121 + v128;

              if ([v119 count] <= ++v122)
              {
                goto LABEL_71;
              }
            }

            [v120 frame];
            v137 = vabdd_f64(v136, v121);
            [v120 frame];
            v139 = vabdd_f64(v138, v125);
            [v120 frame];
            [v120 frame];
            if (v137 >= v139)
            {
              [v120 frame];
            }

            [v120 frame];
            [v120 setFrame:?];
          }

          else
          {
LABEL_71:
            [v120 frame];
            if (v12 - v121 >= v129)
            {
              [v120 frame];
              v131 = v130;
              [v120 frame];
              v133 = vabdd_f64(v131 + v132, v121);
              [v120 frame];
              v135 = vabdd_f64(v134, v12);
              [v120 frame];
              [v120 frame];
              if (v133 >= v135)
              {
                [v120 frame];
              }

              [v120 frame];
              [v120 setFrame:?];
            }
          }

          ++v118;
        }

        while ([v117 count] > v118);
      }

      v106 = v155 + 1;
      v102 = rect2b;
      v108 = v152;
    }

    while ([rect2b count] > v155 + 1);
  }

  else
  {
    v108 = v152;
  }
}

void sortLayersWithYCoordinate(void *a1, void *a2, void **a3, void **a4)
{
  v7 = a1;
  v8 = a2;
  v9 = MEMORY[0x277CBEB18];
  [v7 count];
  v10 = [v9 arrayWithCapacity:?];
  if ([v7 count])
  {
    v11 = 0;
    do
    {
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
      [v10 addObject:?];

      ++v11;
    }

    while (v11 < [v7 count]);
  }

  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __sortLayersWithYCoordinate_block_invoke;
  v27 = &unk_278EAAD40;
  v13 = v7;
  v28 = v13;
  v14 = [v10 sortedArrayUsingComparator:?];
  v15 = MEMORY[0x277CBEB18];
  [v14 count];
  *a3 = [v15 arrayWithCapacity:?];
  v16 = MEMORY[0x277CBEB18];
  [v14 count];
  *a4 = [v16 arrayWithCapacity:?];
  if ([v14 count])
  {
    v17 = 0;
    do
    {
      v18 = *a3;
      v19 = [v14 objectAtIndexedSubscript:?];
      [v19 unsignedIntegerValue];
      v20 = [v13 objectAtIndex:?];
      [v18 addObject:?];

      v21 = *a4;
      v22 = [v14 objectAtIndexedSubscript:?];
      [v22 unsignedIntegerValue];
      v23 = [v8 objectAtIndex:?];
      [v21 addObject:?];

      ++v17;
    }

    while (v17 < [v14 count]);
  }
}

uint64_t __sortOverlappingCALayers_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 frame];
  v7 = v6;
  [v5 frame];
  if (v7 >= v8)
  {
    [v4 frame];
    v11 = v10;
    [v5 frame];
    v9 = v11 > v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

void keepAllLayersWithinHorizontalBounds(void *a1, double a2, double a3, double a4)
{
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:0 objects:? count:?];
  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0];
    do
    {
      for (i = 0; i != v8; i = (i + 1))
      {
        if (MEMORY[0] != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(8 * i);
        [v11 frame];
        if (v12 < a4)
        {
          [v11 frame];
          v14 = v13;
          [v11 frame];
          v16 = v15;
          [v11 frame];
          if (v14 >= a2)
          {
            if (v16 + v17 <= a2 + a4)
            {
              continue;
            }

            [v11 frame];
          }

          [v11 position];
          [v11 setPosition:?];
        }
      }

      v8 = [v6 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v8);
  }
}

Float64 secondsBetweenTimestamps(CMTime *a1, CMTime *a2)
{
  lhs = *a1;
  v3 = *a2;
  CMTimeSubtract(&time, &lhs, &v3);
  return CMTimeGetSeconds(&time);
}

id stringByTransliteratingNameToPinyin(void *a1, void *a2)
{
  v3 = qword_27EE544E0;
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    dispatch_once(&qword_27EE544E0, &__block_literal_global_510_0);
  }

  v6 = [v5 uppercaseString];

  v7 = [v4 uppercaseString];

  v8 = qword_27EE544C8;
  v9 = [v8 countByEnumeratingWithState:? objects:? count:?];
  if (v9)
  {
    v10 = v9;
    v11 = MEMORY[0];
    do
    {
      for (i = 0; i != v10; i = (i + 1))
      {
        if (MEMORY[0] != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ([(__CFString *)v7 containsString:?])
        {
          v13 = [_MergedGlobals_4 objectForKeyedSubscript:?];
          v14 = [v13 lowercaseString];
          v15 = [__CFString stringByReplacingOccurrencesOfString:v7 withString:"stringByReplacingOccurrencesOfString:withString:"];

          v7 = v15;
        }
      }

      v10 = [v8 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v10);
  }

  v16 = qword_27EE544D8;
  v17 = [v16 countByEnumeratingWithState:0 objects:? count:?];
  if (v17)
  {
    v18 = v17;
    v19 = MEMORY[0];
    do
    {
      for (j = 0; j != v18; j = (j + 1))
      {
        if (MEMORY[0] != v19)
        {
          objc_enumerationMutation(v16);
        }

        if ([(__CFString *)v6 containsString:?])
        {
          v21 = [qword_27EE544D0 objectForKeyedSubscript:?];
          v22 = [v21 lowercaseString];
          v23 = [__CFString stringByReplacingOccurrencesOfString:v6 withString:"stringByReplacingOccurrencesOfString:withString:"];

          v6 = v23;
        }
      }

      v18 = [v16 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v18);
  }

  v24 = [MEMORY[0x277CCAB68] string];
  v25 = CFLocaleCreate(0, @"zh-Hans");
  v48.location = 0;
  v48.length = 0;
  v26 = CFStringTokenizerCreate(0, &stru_2859636D0, v48, 0, v25);
  CFRelease(v25);
  v49.length = [(__CFString *)v7 length];
  v49.location = 0;
  CFStringTokenizerSetString(v26, v7, v49);
  while (CFStringTokenizerAdvanceToNextToken(v26))
  {
    v27 = CFStringTokenizerCopyCurrentTokenAttribute(v26, 0x10000uLL);
    if (v27)
    {
      v28 = v27;
      if (CFStringGetLength(v27) >= 1)
      {
        location = CFStringTokenizerGetCurrentTokenRange(v26).location;
        if (location != -1)
        {
          v30 = location;
          v31 = [(__CFString *)v7 substringWithRange:?];
          v32 = v30 >= 1 && [(__CFString *)v7 characterAtIndex:?]== 32;
          if ([v31 isCaseApplicable])
          {
            v33 = [v31 isLowercase];
          }

          else
          {
            v33 = 0;
          }

          v34 = 0;
          if (![v31 caseInsensitiveCompare:?] && (v33 & 1) == 0)
          {
            v34 = [v31 isCaseApplicable];
          }

          if ((v32 | v34))
          {
            if ([(__CFString *)v24 length])
            {
              [(__CFString *)v24 length];
              if ([(__CFString *)v24 characterAtIndex:?]!= 32)
              {
                CFStringAppend(v24, @" ");
              }
            }
          }

          CFStringAppend(v24, v28);
          if (v34)
          {
            CFStringAppend(v24, @" ");
          }
        }
      }

      CFRelease(v28);
    }
  }

  if ([(__CFString *)v24 length])
  {
    [(__CFString *)v24 length];
    if ([(__CFString *)v24 characterAtIndex:?]!= 32)
    {
      CFStringAppend(v24, @" ");
    }
  }

  v50.length = [(__CFString *)v6 length];
  v50.location = 0;
  CFStringTokenizerSetString(v26, v6, v50);
  while (CFStringTokenizerAdvanceToNextToken(v26))
  {
    v35 = CFStringTokenizerCopyCurrentTokenAttribute(v26, 0x10000uLL);
    if (v35)
    {
      v36 = v35;
      if (CFStringGetLength(v35) >= 1)
      {
        v37 = CFStringTokenizerGetCurrentTokenRange(v26).location;
        if (v37 != -1)
        {
          v38 = v37;
          v39 = [(__CFString *)v6 substringWithRange:?];
          v40 = v38 >= 1 && [(__CFString *)v6 characterAtIndex:?]== 32;
          if ([v39 isCaseApplicable])
          {
            v41 = [v39 isLowercase];
          }

          else
          {
            v41 = 0;
          }

          v42 = 0;
          if (![v39 caseInsensitiveCompare:?] && (v41 & 1) == 0)
          {
            v42 = [v39 isCaseApplicable];
          }

          if ((v40 | v42))
          {
            if ([(__CFString *)v24 length])
            {
              [(__CFString *)v24 length];
              if ([(__CFString *)v24 characterAtIndex:?]!= 32)
              {
                CFStringAppend(v24, @" ");
              }
            }
          }

          CFStringAppend(v24, v36);
          if (v42)
          {
            CFStringAppend(v24, @" ");
          }
        }
      }

      CFRelease(v36);
    }
  }

  CFStringTransform(v24, 0, *MEMORY[0x277CBF100], 0);
  CFRelease(v26);
  v43 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v44 = [(__CFString *)v24 stringByTrimmingCharactersInSet:?];
  v45 = [v44 lowercaseString];

  return v45;
}

void __stringByTransliteratingNameToPinyin_block_invoke()
{
  v0 = getZhHansLN();
  v1 = _MergedGlobals_4;
  _MergedGlobals_4 = v0;

  v2 = getZhHansFN();
  v3 = qword_27EE544D0;
  qword_27EE544D0 = v2;

  v4 = [_MergedGlobals_4 allKeys];
  v5 = [v4 sortedArrayUsingComparator:?];
  v6 = qword_27EE544C8;
  qword_27EE544C8 = v5;

  v9 = [qword_27EE544D0 allKeys];
  v7 = [v9 sortedArrayUsingComparator:?];
  v8 = qword_27EE544D8;
  qword_27EE544D8 = v7;
}

void *__stringByTransliteratingNameToPinyin_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 length];
  v6 = [v4 numberWithInteger:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 length];

  v8 = [v7 numberWithInteger:?];
  v9 = [v8 compare:?];

  return v9;
}

void *__stringByTransliteratingNameToPinyin_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 length];
  v6 = [v4 numberWithInteger:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 length];

  v8 = [v7 numberWithInteger:?];
  v9 = [v8 compare:?];

  return v9;
}

uint64_t bestMatchInStringCandidates(void *a1, void *a2, void *a3, int a4)
{
  v33 = a3;
  v6 = a1;
  v7 = a2;
  v8 = [v6 countByEnumeratingWithState:? objects:? count:?];
  if (!v8)
  {
    v10 = 0;
    v12 = 0x7FFFFFFFLL;
    if (!a4)
    {
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  v9 = v8;
  v10 = 0;
  v11 = MEMORY[0];
  v12 = 0x7FFFFFFFLL;
  do
  {
    for (i = 0; i != v9; i = (i + 1))
    {
      if (MEMORY[0] != v11)
      {
        objc_enumerationMutation(v6);
      }

      v14 = *(8 * i);
      v15 = [v14 editDistanceFromString:v33 threshold:?];
      if (v15 < v12)
      {
        v16 = v15;
        v17 = v14;

        v10 = v17;
        v12 = v16;
      }
    }

    v9 = [v6 countByEnumeratingWithState:? objects:? count:?];
  }

  while (v9);
  if (a4)
  {
LABEL_13:
    obj = v6;
    v18 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (v18)
    {
      v19 = v18;
      v20 = MEMORY[0];
      v34 = MEMORY[0];
      do
      {
        v21 = 0;
        v35 = v19;
        do
        {
          if (MEMORY[0] != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = [*(8 * v21) componentsSeparatedByString:v33];
          if ([v22 count] >= 2)
          {
            v23 = v6;
            [v22 count];
            v24 = [v22 subarrayWithRange:?];
            v25 = [v22 firstObject];
            v26 = [v24 arrayByAddingObject:?];

            v27 = [v26 componentsJoinedByString:?];
            v28 = [v27 editDistanceFromString:? threshold:?];
            if (v28 < v12)
            {
              v29 = v28;
              v30 = v27;

              v10 = v30;
              v12 = v29;
            }

            v19 = v35;

            v6 = v23;
            v20 = v34;
          }

          v21 = (v21 + 1);
        }

        while (v19 != v21);
        v19 = [obj countByEnumeratingWithState:? objects:? count:?];
      }

      while (v19);
    }
  }

LABEL_25:
  if (v33)
  {
    v31 = v10;
    *v33 = v10;
  }

  return v12;
}

id stringCandidatesByTransliteratingNameToRomaji(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 uppercaseString];
  v5 = [v3 uppercaseString];

  v6 = [MEMORY[0x277CCAB68] string];
  v7 = CFLocaleCreate(0, @"ja");
  v73.location = 0;
  v73.length = 0;
  v8 = CFStringTokenizerCreate(0, 0, v73, 0, v7);
  CFRelease(v7);
  v74.length = [(__CFString *)v5 length];
  v69 = v5;
  v74.location = 0;
  CFStringTokenizerSetString(v8, v5, v74);
  while (CFStringTokenizerAdvanceToNextToken(v8))
  {
    v9 = CFStringTokenizerCopyCurrentTokenAttribute(v8, 0x1000000uLL);
    if (v9)
    {
      v10 = v9;
      if (CFStringGetLength(v9) >= 1)
      {
        CFStringAppend(v6, v10);
      }

      CFRelease(v10);
    }
  }

  if ([(__CFString *)v6 length])
  {
    [(__CFString *)v6 length];
    if ([(__CFString *)v6 characterAtIndex:?]!= 32)
    {
      CFStringAppend(v6, @" ");
    }
  }

  v75.length = [(__CFString *)v4 length];
  v75.location = 0;
  CFStringTokenizerSetString(v8, v4, v75);
  while (CFStringTokenizerAdvanceToNextToken(v8))
  {
    v11 = CFStringTokenizerCopyCurrentTokenAttribute(v8, 0x1000000uLL);
    if (v11)
    {
      v12 = v11;
      if (CFStringGetLength(v11) >= 1)
      {
        CFStringAppend(v6, v12);
      }

      CFRelease(v12);
    }
  }

  CFRelease(v8);
  v13 = v6;
  v70 = v4;
  if (qword_27EE54508 != -1)
  {
    dispatch_once(&qword_27EE54508, &__block_literal_global_542);
  }

  v68 = v13;
  v14 = [(__CFString *)v13 mutableCopy];
  v15 = qword_27EE54500;
  v16 = [v15 countByEnumeratingWithState:? objects:? count:?];
  if (v16)
  {
    v17 = v16;
    v18 = MEMORY[0];
    do
    {
      for (i = 0; i != v17; i = (i + 1))
      {
        if (MEMORY[0] != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [qword_27EE544F8 objectForKey:?];
        [v14 length];
        [v14 replaceOccurrencesOfString:? withString:? options:? range:?];
      }

      v17 = [v15 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v17);
  }

  v21 = MEMORY[0x277CBEB58];
  v22 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v23 = [v14 stringByTrimmingCharactersInSet:?];
  v24 = [v21 setWithObject:?];

  v25 = [v24 allObjects];
  v26 = [v25 countByEnumeratingWithState:? objects:? count:?];
  if (v26)
  {
    v27 = v26;
    v28 = MEMORY[0];
    do
    {
      for (j = 0; j != v27; j = (j + 1))
      {
        if (MEMORY[0] != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(8 * j);
        v31 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:? options:? error:?];
        [v30 length];
        v32 = [v31 stringByReplacingMatchesInString:? options:? range:? withTemplate:?];
        [v24 addObject:?];
      }

      v27 = [v25 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v27);
  }

  v33 = [v24 allObjects];
  v34 = [v33 countByEnumeratingWithState:? objects:? count:?];
  if (v34)
  {
    v35 = v34;
    v36 = MEMORY[0];
    do
    {
      for (k = 0; k != v35; k = (k + 1))
      {
        if (MEMORY[0] != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(8 * k);
        v39 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:? options:? error:?];
        [v38 length];
        v40 = [v39 stringByReplacingMatchesInString:? options:? range:? withTemplate:?];
        [v24 addObject:?];
      }

      v35 = [v33 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v35);
  }

  v41 = [v24 allObjects];
  v42 = [v41 countByEnumeratingWithState:? objects:? count:?];
  if (v42)
  {
    v43 = v42;
    v44 = MEMORY[0];
    do
    {
      for (m = 0; m != v43; m = (m + 1))
      {
        if (MEMORY[0] != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(8 * m);
        v47 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:? options:? error:?];
        [v46 length];
        v48 = [v47 stringByReplacingMatchesInString:? options:? range:? withTemplate:?];
        [v24 addObject:?];
      }

      v43 = [v41 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v43);
  }

  v49 = [v24 allObjects];
  v50 = [v49 countByEnumeratingWithState:? objects:? count:?];
  if (v50)
  {
    v51 = v50;
    v52 = MEMORY[0];
    do
    {
      for (n = 0; n != v51; n = (n + 1))
      {
        if (MEMORY[0] != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = *(8 * n);
        v55 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:? options:? error:?];
        [v54 length];
        v56 = [v55 stringByReplacingMatchesInString:? options:? range:? withTemplate:?];
        [v24 addObject:?];
      }

      v51 = [v49 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v51);
  }

  obj = [v24 allObjects];
  v57 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v57)
  {
    v58 = v57;
    v59 = MEMORY[0];
    do
    {
      for (ii = 0; ii != v58; ii = (ii + 1))
      {
        if (MEMORY[0] != v59)
        {
          objc_enumerationMutation(obj);
        }

        v61 = *(8 * ii);
        v62 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:? options:? error:?];
        [v61 length];
        v63 = [v62 stringByReplacingMatchesInString:? options:? range:? withTemplate:?];
        [v24 addObject:?];
        [v61 length];
        v64 = [v62 stringByReplacingMatchesInString:? options:? range:? withTemplate:?];
        [v24 addObject:?];
      }

      v58 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v58);
  }

  v65 = [v24 valueForKey:?];
  v66 = [v65 allObjects];

  return v66;
}

BOOL stringContainsApproximateSubstring(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = a1;
  v6 = [v3 editDistance:? string:?] - 4;
  v7 = [v5 length];

  v8 = [v4 length];
  return v6 < v7 - v8;
}

id createCachedContact(void *a1)
{
  v1 = a1;
  if (objc_opt_class())
  {
    v2 = [MEMORY[0x277CBEB38] dictionary];
    v3 = [MEMORY[0x277CCA900] controlCharacterSet];
    v4 = [v1 givenName];
    v5 = [v4 uppercaseString];
    v6 = [v5 stringByTrimmingCharactersInSet:?];

    if (v6)
    {
      [v2 setObject:? forKey:?];
    }

    v7 = [v1 nickname];
    v8 = [v7 uppercaseString];
    v9 = [v8 stringByTrimmingCharactersInSet:?];

    if (v9)
    {
      [v2 setObject:? forKey:?];
    }

    v10 = [v1 familyName];
    v11 = [v10 uppercaseString];
    v12 = [v11 stringByTrimmingCharactersInSet:?];

    if (v12)
    {
      [v2 setObject:? forKey:?];
    }

    v13 = [v1 middleName];
    v14 = [v13 uppercaseString];
    v15 = [v14 stringByTrimmingCharactersInSet:?];

    if (v15)
    {
      [v2 setObject:? forKey:?];
    }

    v16 = [v1 phoneticGivenName];
    v17 = [v16 uppercaseString];
    v18 = [v17 stringByTrimmingCharactersInSet:?];

    if (v18)
    {
      [v2 setObject:? forKey:?];
    }

    v61 = v18;
    v62 = v15;
    v63 = v12;
    v64 = v9;
    v65 = v6;
    v19 = [v1 phoneticFamilyName];
    v20 = [v19 uppercaseString];
    v66 = v3;
    v21 = [v20 stringByTrimmingCharactersInSet:?];

    if (v21)
    {
      [v2 setObject:? forKey:?];
    }

    v60 = v21;
    v22 = MEMORY[0x277CCA900];
    v23 = v1;
    v24 = [v22 controlCharacterSet];
    v25 = [v23 givenName];
    v26 = [v25 uppercaseString];

    v27 = [v23 familyName];

    v28 = [v27 uppercaseString];

    v29 = [v26 stringByTrimmingCharactersInSet:?];

    v30 = [v28 stringByTrimmingCharactersInSet:?];

    v31 = [v29 stringByAppendingString:?];
    v32 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:? options:? error:?];
    [v31 length];
    if ([v32 numberOfMatchesInString:? options:? range:?])
    {
      v33 = stringByTransliteratingNameToPinyin(v29, v30);
      v34 = [v33 uppercaseString];

      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    if (v35)
    {
      [v2 setObject:? forKey:?];
    }

    v59 = v35;
    v67 = v2;
    v37 = MEMORY[0x277CCA900];
    v38 = v23;
    v39 = [v37 controlCharacterSet];
    v40 = [v38 givenName];
    v41 = [v40 uppercaseString];

    v42 = [v38 familyName];
    v43 = [v42 uppercaseString];

    v44 = [v38 phoneticGivenName];
    v45 = [v44 uppercaseString];

    v46 = [v38 phoneticFamilyName];

    v47 = [v46 uppercaseString];

    v48 = [v41 stringByTrimmingCharactersInSet:?];

    v49 = [v43 stringByTrimmingCharactersInSet:?];

    v50 = [v45 stringByTrimmingCharactersInSet:?];

    v51 = [v47 stringByTrimmingCharactersInSet:?];

    v52 = [v48 stringByAppendingString:?];
    v53 = [v52 stringByAppendingString:?];

    v54 = [v50 stringByAppendingString:?];
    v55 = [v54 stringByAppendingString:?];

    v56 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:? options:? error:?];
    if (!v55 || ![v55 length] || (objc_msgSend(v55, "length"), !objc_msgSend(v56, "numberOfMatchesInString:options:range:")) || (stringCandidatesByTransliteratingNameToRomaji(v50, v51), (v57 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      [v53 length];
      if ([v56 numberOfMatchesInString:? options:? range:?])
      {
        v57 = stringCandidatesByTransliteratingNameToRomaji(v48, v49);
      }

      else
      {
        v57 = 0;
      }
    }

    v36 = v67;
    if (v57)
    {
      [v67 setObject:? forKey:?];
    }
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

id deviceModel()
{
  if (qword_27EE544E8 != -1)
  {
    dispatch_once(&qword_27EE544E8, &__block_literal_global_540);
  }

  v1 = qword_27EE544F0;

  return v1;
}

void __deviceModel_block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  memset(&v2, 0, 512);
  uname(&v2);
  v0 = [MEMORY[0x277CCACA8] stringWithCString:? encoding:?];
  v1 = qword_27EE544F0;
  qword_27EE544F0 = v0;
}

uint64_t __sortLayersWithYCoordinate_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [a2 unsignedIntegerValue];
  v7 = [v5 objectAtIndexedSubscript:?];
  [v7 frame];
  v9 = v8;

  v10 = *(a1 + 32);
  [v6 unsignedIntegerValue];

  v11 = [v10 objectAtIndexedSubscript:?];
  [v11 frame];
  v13 = v12;

  if (v9 < v13)
  {
    return -1;
  }

  else
  {
    return v9 > v13;
  }
}

void __romajiFromKana_block_invoke()
{
  v0 = getJPHepburn();
  v1 = qword_27EE544F8;
  qword_27EE544F8 = v0;

  v4 = [qword_27EE544F8 allKeys];
  v2 = [v4 sortedArrayUsingComparator:?];
  v3 = qword_27EE54500;
  qword_27EE54500 = v2;
}

uint64_t __romajiFromKana_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 length];
  if (v6 <= [v5 length])
  {
    v8 = [v4 length];
    v7 = v8 < [v5 length];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

uint64_t hasVXD(void)
{
  if (byte_27EE54511 == 1)
  {
    return _MergedGlobals_5;
  }

  v1 = *MEMORY[0x277CD2898];
  v2 = IOServiceMatching("AppleVXD375");
  MatchingService = IOServiceGetMatchingService(v1, v2);
  v4 = IOServiceMatching("AppleVXD390");
  result = (MatchingService | IOServiceGetMatchingService(v1, v4)) != 0;
  _MergedGlobals_5 = result;
  byte_27EE54511 = 1;
  return result;
}

void setIntValue(__CFDictionary *a1, const __CFString *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

CVPixelBufferRef createPlanar420PixelBufferFromImageFile(const __CFURL *a1)
{
  v1 = CGImageSourceCreateWithURL(a1, 0);
  pixelBufferOut = 0;
  if (v1)
  {
    v2 = v1;
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v1, 0, 0);
    DataProvider = CGImageGetDataProvider(ImageAtIndex);
    v5 = CGDataProviderCopyData(DataProvider);
    BitsPerPixel = CGImageGetBitsPerPixel(ImageAtIndex);
    AlphaInfo = CGImageGetAlphaInfo(ImageAtIndex);
    Width = CGImageGetWidth(ImageAtIndex);
    Height = CGImageGetHeight(ImageAtIndex);
    v8 = MEMORY[0x277CBF138];
    v9 = MEMORY[0x277CBF150];
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v11 = hasVXD();
    v12 = hasVXD();
    v13 = CFDictionaryCreateMutable(0, 0, v8, v9);
    v14 = v13;
    if (v11)
    {
      if (v12)
      {
        setIntValue(v13, *MEMORY[0x277CD2970], 1280);
      }
    }

    else
    {
      CFDictionarySetValue(v13, *MEMORY[0x277CD2A48], @"PurpleGfxMem");
    }

    v15 = (2 * Width + 30) & 0xFFFFFFE0;
    v16 = v15 * ((Height + 15) & 0xFFFFFFF0);
    setIntValue(v14, *MEMORY[0x277CD2968], v15);
    setIntValue(v14, *MEMORY[0x277CD2B88], Width);
    setIntValue(v14, *MEMORY[0x277CD2A28], Height);
    setIntValue(v14, *MEMORY[0x277CD2A70], 875704422);
    setIntValue(v14, *MEMORY[0x277CD2948], v16);
    if (v14)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277CC4DE8], v14);
      CFRelease(v14);
    }

    if (!CVPixelBufferCreate(*MEMORY[0x277CBECE8], Width, Height, 0x34323066u, Mutable, &pixelBufferOut))
    {
      CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
      BytePtr = CFDataGetBytePtr(v5);
      BytesPerRow = CGImageGetBytesPerRow(ImageAtIndex);
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBufferOut, 0);
      CVPixelBufferGetBytesPerRowOfPlane(pixelBufferOut, 0);
      v20 = CVPixelBufferGetBaseAddressOfPlane(pixelBufferOut, 1uLL);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBufferOut, 1uLL);
      v24 = (BitsPerPixel >> 3);
      v25 = (BytesPerRow - v24 * Width);
      v26 = Height >> 1;
      if (AlphaInfo == kCGImageAlphaFirst)
      {
        v27 = BytePtr + 1;
      }

      else
      {
        v27 = BytePtr;
      }

      v28 = BytesPerRowOfPlane;
      v29 = 2 * v24;
      do
      {
        v30 = &v27[2 * v25 + 2 * (BitsPerPixel >> 3)];
        v31 = v20;
        v32 = v27;
        v33 = Width >> 1;
        do
        {
          v27 = v30;
          LOBYTE(v22) = *v32;
          LOBYTE(v23) = v32[1];
          *&v34 = LODWORD(v23) * 0.5872;
          v35 = *&v34 + (LODWORD(v22) * 0.2988);
          LOBYTE(v34) = v32[2];
          v36 = v34;
          v37 = (v35 + (v36 * 0.114)) + 0.5;
          v38 = v37;
          if (v37 < 0.0)
          {
            LOBYTE(v38) = 0;
          }

          if (v37 > 255.0)
          {
            LOBYTE(v38) = -1;
          }

          *BaseAddressOfPlane = v38;
          LOBYTE(v37) = *v32;
          LOBYTE(v36) = v32[1];
          *&v39 = LODWORD(v36) * -0.3391;
          v40 = *&v39 + (LODWORD(v37) * -0.1726);
          LOBYTE(v39) = v32[2];
          v41 = v39;
          v42 = (v40 + (v41 * 0.5117)) + 128.5;
          v43 = v42;
          if (v42 < 0.0)
          {
            LOBYTE(v43) = 0;
          }

          if (v42 > 255.0)
          {
            LOBYTE(v43) = -1;
          }

          *v31 = v43;
          LOBYTE(v42) = *v32;
          LOBYTE(v41) = v32[1];
          *&v44 = LODWORD(v41) * -0.4282;
          v45 = *&v44 + (LODWORD(v42) * 0.5115);
          LOBYTE(v44) = v32[2];
          v46 = v44;
          v47 = (v45 + (v46 * -0.083)) + 128.5;
          v48 = v47;
          if (v47 < 0.0)
          {
            LOBYTE(v48) = 0;
          }

          if (v47 > 255.0)
          {
            LOBYTE(v48) = -1;
          }

          v31[1] = v48;
          v49 = &v32[v24];
          v50 = &v32[v24 + 1];
          LOBYTE(v47) = *v49;
          LOBYTE(v46) = *v50;
          *&v51 = LODWORD(v46) * 0.5872;
          v52 = *&v51 + (LODWORD(v47) * 0.2988);
          LOBYTE(v51) = v50[1];
          v53 = v51;
          v54 = (v52 + (v53 * 0.114)) + 0.5;
          v55 = v54;
          if (v54 < 0.0)
          {
            LOBYTE(v55) = 0;
          }

          if (v54 > 255.0)
          {
            LOBYTE(v55) = -1;
          }

          BaseAddressOfPlane[1] = v55;
          LOBYTE(v54) = *v31;
          LOBYTE(v53) = *(v50 - 1);
          *&v56 = LODWORD(v53);
          v57 = LODWORD(v54) + (*&v56 * -0.1726);
          LOBYTE(v56) = *v50;
          *&v58 = v56;
          v59 = v57 + (*&v58 * -0.3391);
          LOBYTE(v58) = v50[1];
          v60 = v58;
          v61 = ((v59 + (v60 * 0.5117)) + 128.5) * 0.5;
          v62 = v61;
          if (v61 < 0.0)
          {
            LOBYTE(v62) = 0;
          }

          if (v61 > 255.0)
          {
            LOBYTE(v62) = -1;
          }

          *v31 = v62;
          LOBYTE(v61) = v31[1];
          LOBYTE(v60) = *(v50 - 1);
          *&v63 = LODWORD(v60);
          v64 = LODWORD(v61) + (*&v63 * 0.5115);
          LOBYTE(v63) = *v50;
          *&v65 = v63;
          v66 = v64 + (*&v65 * -0.4282);
          LOBYTE(v65) = v50[1];
          v23 = v65;
          v22 = ((v66 + (v23 * -0.083)) + 128.5) * 0.5;
          if (v22 <= 255.0)
          {
            if (v22 >= 0.0)
            {
              v67 = v22;
            }

            else
            {
              LOBYTE(v67) = 0;
            }
          }

          else
          {
            LOBYTE(v67) = -1;
          }

          BaseAddressOfPlane += 2;
          v31[1] = v67;
          v31 += 2;
          v32 = &v49[v24];
          v30 = &v27[v29];
          --v33;
        }

        while (v33);
        v68 = &v32[v25];
        v69 = BaseAddressOfPlane;
        v70 = Width >> 1;
        do
        {
          LOBYTE(v22) = *v68;
          LOBYTE(v23) = v68[1];
          *&v71 = LODWORD(v23) * 0.5872;
          v72 = *&v71 + (LODWORD(v22) * 0.2988);
          LOBYTE(v71) = v68[2];
          *&v73 = v71;
          *&v74 = (v72 + (*&v73 * 0.114)) + 0.5;
          *v69 = *&v74;
          v75 = &v68[v24];
          LOBYTE(v74) = *v75;
          LOBYTE(v73) = v75[1];
          *&v76 = v73 * 0.5872;
          v77 = *&v76 + (v74 * 0.2988);
          LOBYTE(v76) = v75[2];
          v23 = v76;
          v22 = (v77 + (v23 * 0.114)) + 0.5;
          BaseAddressOfPlane = v69 + 2;
          v69[1] = v22;
          v68 = &v75[v24];
          v27 += v29;
          v69 += 2;
          --v70;
        }

        while (v70);
        v20 += v28;
        --v26;
      }

      while (v26);
      CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
    }

    CGImageRelease(ImageAtIndex);
    CFRelease(v2);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  return pixelBufferOut;
}

double ccArea1Rect(float a1)
{
  v1 = a1;
  v3.size.width = a1 * 68.61;
  v3.size.height = a1 * 4.89;
  v3.origin.x = a1 * 8.66;
  v3.origin.y = v1 * 54.05 + v1 * -19.14 - v3.size.height;
  *&result = CGRectInset(v3, -8.0, -2.0);
  return result;
}

double ccArea2Rect(float a1)
{
  v1 = a1;
  v3.size.width = a1 * 69.34;
  v3.size.height = a1 * 15.29;
  v3.origin.x = a1 * 6.13;
  v3.origin.y = v1 * 54.05 + v1 * -2.54 - v3.size.height;
  *&result = CGRectInset(v3, -8.0, -2.0);
  return result;
}

double ccUnitRectToMMRectIsPortrait(int a1, double a2)
{
  v2 = 54.05;
  if (!a1)
  {
    v2 = 85.685;
  }

  return a2 * v2;
}

double ccMMRectToUnitRectIsPortait(int a1, double a2)
{
  v2 = 54.05;
  if (!a1)
  {
    v2 = 85.685;
  }

  return a2 / v2;
}

void *allocatePixel8Buffer@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[1] = a2;
  a3[2] = a1;
  a3[3] = a1;
  result = malloc_type_malloc(a2 * a1, 0x100004077774924uLL);
  *a3 = result;
  return result;
}

void rotateBuffer180(vImage_Buffer *a1)
{
  width = a1->width;
  v3.height = a1->height;
  v3.width = width;
  v3.rowBytes = width;
  v3.data = malloc_type_malloc(v3.height * width, 0x100004077774924uLL);
  vImageRotate90_Planar8(a1, &v3, 2u, 0, 0);
  free(a1->data);
  a1->data = v3.data;
}

float calculateImageBlur(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x277CE2D50]) initWithCIImage:? options:?];
  v3 = objc_alloc_init(MEMORY[0x277CE2D38]);
  v4 = [MEMORY[0x277CBEA60] arrayWithObject:?];
  [v2 performRequests:? error:?];
  v5 = 0;

  v6 = [v3 results];
  v7 = [v6 firstObject];
  v8 = [v7 blurScore];
  [v8 floatValue];
  v10 = v9;

  return v10;
}

void sub_24782F904(_Unwind_Exception *a1)
{
  v8 = v5;

  _Unwind_Resume(a1);
}

BOOL isLeastBlurryFrame(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = calculateImageBlur(v5);
  if ([v6 count] >= a3)
  {
    v10 = [v6 valueForKeyPath:?];
    [v10 floatValue];
    v12 = v11;

    [v6 removeObjectAtIndex:?];
    v13 = [MEMORY[0x277CCABB0] numberWithFloat:?];
    [v6 addObject:?];

    v9 = v7 < v12;
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithFloat:?];
    [v6 addObject:?];

    v9 = 0;
  }

  return v9;
}

void sub_24782FA68(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_24782FB00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_247830064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  *(v33 - 112) = &a27;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100]((v33 - 112));

  _Unwind_Resume(a1);
}

void std::vector<std::vector<std::vector<float>>>::__vdeallocate(void ***a1)
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
        v3 -= 3;
        v5 = v3;
        std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v5);
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

void sub_2478312E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29)
{
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&a29);

  _Unwind_Resume(a1);
}

void CTCLayer::CTCLayer(CTCLayer *this)
{
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = this + 32;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  v2 = operator new(0x100uLL, 0x80uLL);
  *v2 = &unk_2859634D8;
  v2[16] = 0;
  v2[17] = 0;
  *(this + 25) = v2;
  v3 = operator new(0x100uLL, 0x80uLL);
  *v3 = &unk_2859634D8;
  v3[16] = 0;
  v3[17] = 0;
  *(this + 26) = v3;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 24) = 103;
}

void sub_247831530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = v4;
  v3[25] = 0;
  Matrix<float>::~Matrix(v6);
  v8 = v3[22];
  if (v8)
  {
    v3[23] = v8;
    operator delete(v8);
  }

  v9 = v3[19];
  if (v9)
  {
    v3[20] = v9;
    operator delete(v9);
  }

  v10 = v3[16];
  if (v10)
  {
    v3[17] = v10;
    operator delete(v10);
  }

  v11 = v3[13];
  if (v11)
  {
    v3[14] = v11;
    operator delete(v11);
  }

  v12 = v3[10];
  if (v12)
  {
    v3[11] = v12;
    operator delete(v12);
  }

  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(*v5);
  _Unwind_Resume(a1);
}

void CTCLayer::~CTCLayer(CTCLayer *this)
{
  v2 = *(this + 26);
  *(this + 26) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 25);
  *(this + 25) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 22);
  if (v4)
  {
    *(this + 23) = v4;
    operator delete(v4);
  }

  v5 = *(this + 19);
  if (v5)
  {
    *(this + 20) = v5;
    operator delete(v5);
  }

  v6 = *(this + 16);
  if (v6)
  {
    *(this + 17) = v6;
    operator delete(v6);
  }

  v7 = *(this + 13);
  if (v7)
  {
    *(this + 14) = v7;
    operator delete(v7);
  }

  v8 = *(this + 10);
  if (v8)
  {
    *(this + 11) = v8;
    operator delete(v8);
  }

  v9 = (this + 56);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(*(this + 4));
}

void CTCLayer::bestPathDecoding(const void **__return_ptr a1@<X8>, CTCLayer *this@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = *(this + 16);
  for (i = *(this + 17); v2 != i; ++v2)
  {
    v5 = *v2;
    std::vector<unsigned int>::push_back[abi:ne200100](a1, &v5 + 1);
  }
}

void sub_247831714(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void CTCLayer::setCummulativeScores(CTCLayer *this)
{
  v2 = this + 128;
  *(this + 17) = *(this + 16);
  v17 = this + 152;
  *(this + 20) = *(this + 19);
  v18 = this + 176;
  *(this + 23) = *(this + 22);
  v3 = *(*(this + 10) + 4);
  v4 = *(this + 24);
  v19 = v4;
  v20 = &v19;
  v5 = *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(this + 24, v4, &v20) + 8);
  v6 = *(v2 - 6);
  v7 = *(v2 - 5);
  if (v7 == v6)
  {
    v15 = 0;
    v10 = 0;
    v12 = 0.0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0.0;
    do
    {
      v13 = *(v6 + v8 + 4);
      if (v13 == v3)
      {
        v12 = v12 + *(v6 + v8);
      }

      else
      {
        if (v3 != v5)
        {
          v20 = (LODWORD(v12) | (v3 << 32));
          std::vector<std::pair<float,int>>::push_back[abi:ne200100](v2, &v20);
          v20 = (LODWORD(v12) | (v11 << 32));
          std::vector<std::pair<float,int>>::push_back[abi:ne200100](v17, &v20);
          *&v14 = (v9 - v10) * 0.5 + v10;
          v20 = __PAIR64__(v14, LODWORD(v12));
          std::vector<std::pair<float,float>>::push_back[abi:ne200100](v18, &v20);
          v11 = (v11 + 1);
          v6 = *(this + 10);
          v7 = *(this + 11);
        }

        v10 = v9;
        v12 = *(v6 + v8);
      }

      ++v9;
      v8 += 8;
      v3 = v13;
    }

    while (v9 < (v7 - v6) >> 3);
    v15 = v11 << 32;
    v3 = v13;
  }

  if (v3 != v5)
  {
    v20 = (LODWORD(v12) | (v3 << 32));
    std::vector<std::pair<float,int>>::push_back[abi:ne200100](v2, &v20);
    v20 = (v15 | LODWORD(v12));
    std::vector<std::pair<float,int>>::push_back[abi:ne200100](v17, &v20);
    *&v16 = (((*(this + 11) - *(this + 10)) >> 3) - v10) * 0.5 + v10;
    v20 = __PAIR64__(v16, LODWORD(v12));
    std::vector<std::pair<float,float>>::push_back[abi:ne200100](v18, &v20);
  }
}

void std::vector<std::pair<float,int>>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::pair<float,int>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
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

void std::vector<std::pair<float,float>>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
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

void CTCLayer::pathDecodingFixedLengthInjectSpaces(const void **__return_ptr a1@<X8>, CTCLayer *this@<X0>, int a3@<W1>)
{
  v6 = *(this + 20);
  v7 = *(this + 19);
  v8 = 126 - 2 * __clz((v6 - v7) >> 3);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (v6 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<float,int> *>>,false>(v6, v6, v7, v7, v9, 1);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v10 = a3;
  v11 = *(this + 19);
  v12 = (*(this + 20) - v11) >> 3;
  if (v12 >= a3)
  {
    v12 = a3;
  }

  if (v12)
  {
    v13 = 0;
    v14 = 4;
    do
    {
      std::vector<unsigned int>::push_back[abi:ne200100](&v22, (v11 + v14));
      ++v13;
      v11 = *(this + 19);
      v15 = (*(this + 20) - v11) >> 3;
      if (v15 >= v10)
      {
        v15 = v10;
      }

      v14 += 8;
    }

    while (v15 > v13);
  }

  std::__sort<std::__less<int,int> &,int *>();
  v16 = v22;
  if (v23 != v22)
  {
    std::vector<unsigned int>::push_back[abi:ne200100](a1, (*(this + 16) + 8 * *v22 + 4));
    v16 = v22;
    if ((v23 - v22) >= 5)
    {
      v17 = 0;
      do
      {
        v18 = *(this + 22);
        v19 = v16[v17 + 1];
        v20 = *(v18 + 8 * v16[v17] + 4);
        if (((*(v18 + 8 * v19 + 4) - v20) + (*(v18 + 8 * v19 + 4) - v20)) > 30.0)
        {
          std::vector<unsigned int>::push_back[abi:ne200100](a1, this + 1);
          v19 = v22[v17 + 1];
        }

        std::vector<unsigned int>::push_back[abi:ne200100](a1, (*(this + 16) + 8 * v19 + 4));
        v16 = v22;
        v21 = v17 + 2;
        ++v17;
      }

      while (v21 < v23 - v22);
    }
  }

  if (v16)
  {
    v23 = v16;
    operator delete(v16);
  }
}

void sub_247831C84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void CTCLayer::pathDecodingCTCSegment(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v8 = *(a1 + 48);
  LODWORD(v149) = v8;
  v153 = &v149;
  v9 = *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(a1 + 24, v8, &v153) + 8);
  *(a1 + 184) = *(a1 + 176);
  v10 = *(a1 + 56);
  v11 = -1431655765 * ((*(a1 + 64) - v10) >> 3);
  if (v11 != 1)
  {
    v152 = (v10[1] - *v10) >> 2;
    LODWORD(v149) = 1;
    std::vector<int>::vector[abi:ne200100](&v153, v11, &v149);
    v26 = v153;
    if (v11 >= 1)
    {
      v27 = 0;
      v28 = *(a1 + 56);
      do
      {
        v29 = (v28 + 24 * v27);
        v30 = *v29;
        v31 = v29[1];
        v32 = v30 + 1;
        v33 = v30 == v31 || v32 == v31;
        v34 = v30;
        if (!v33)
        {
          v35 = *v30;
          v34 = v30;
          v36 = v30 + 1;
          do
          {
            v37 = *v36++;
            v38 = v37;
            if (v35 < v37)
            {
              v35 = v38;
              v34 = v32;
            }

            v32 = v36;
          }

          while (v36 != v31);
        }

        v39 = *v34;
        if (v9 == ((v34 - v30) >> 2))
        {
          v26[v27] = 0;
        }

        if (v39 == 0.0)
        {
          v26[v27] = 0;
        }

        ++v27;
      }

      while (v27 != (v11 & 0x7FFFFFFF));
    }

    v149 = 0;
    v150 = 0;
    v151 = 0;
    v147 = 0;
    v148 = 0;
    v146 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v146, v26, v154, v154 - v26);
    v40 = indexGrouping(&v146, &v149, 0);
    if (v146)
    {
      v147 = v146;
      operator delete(v146);
    }

    if (v40)
    {
      v122 = a4;
      v41 = v153;
      if (v150 != v149)
      {
        v42 = v153 + 1;
        if (0xAAAAAAAAAAAAAAABLL * (v150 - v149) <= 1)
        {
          v43 = 1;
        }

        else
        {
          v43 = 0xAAAAAAAAAAAAAAABLL * (v150 - v149);
        }

        v44 = v149 + 1;
        do
        {
          v45 = *(v44 - 1);
          v46 = *v44 - v45;
          if (v46 <= 8)
          {
            if (v46 == 8)
            {
              v47 = &v41[*v45];
              v48 = v42 - v47 + 4 * v45[1];
              if (v48 >= 1)
              {
                memset_pattern16(v47, &unk_24783FBC0, v48);
              }
            }

            else
            {
              v41[*v45] = 1;
            }
          }

          v44 += 3;
          --v43;
        }

        while (v43);
      }

      v143 = 0;
      v144 = 0;
      v145 = 0;
      v141 = 0;
      v142 = 0;
      __p = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v41, v154, v154 - v41);
      v49 = indexGrouping(&__p, &v143, 1);
      if (__p)
      {
        v141 = __p;
        operator delete(__p);
      }

      if (v49)
      {
        v50 = v143;
        v51 = v144;
        v52 = 0xAAAAAAAAAAAAAAABLL * (v144 - v143);
        if (v52 >= 0x14)
        {
          v53 = v153;
          v54 = v143 + 1;
          v55 = 0xAAAAAAAAAAAAAAABLL * (v144 - v143);
          do
          {
            v56 = *(v54 - 1);
            if ((*v54 - v56) <= 4)
            {
              v53[*v56] = 0;
              if (v55 < 21)
              {
                break;
              }

              LODWORD(v55) = v55 - 1;
            }

            v54 += 3;
            --v52;
          }

          while (v52);
        }

        v137 = 0;
        v138 = 0;
        v139 = 0;
        v134 = 0;
        v135 = 0;
        v136 = 0;
        LODWORD(__dst) = 0;
        if (v51 != v50)
        {
          v57 = 0;
          do
          {
            v58 = &v50[3 * v57];
            v59 = *v58;
            v60 = v58[1] - *v58;
            LODWORD(v126) = *&v59[(v60 >> 1) & 0xFFFFFFFFFFFFFFFCLL];
            v61 = *(a1 + 56) + 24 * v126;
            v62 = *v61;
            v63 = *(v61 + 8);
            v64 = v62 + 1;
            if (v62 != v63 && v64 != v63)
            {
              v66 = *v62;
              v67 = v62 + 1;
              do
              {
                v68 = *v67++;
                v69 = v68;
                if (v66 < v68)
                {
                  v66 = v69;
                  v62 = v64;
                }

                v64 = v67;
              }

              while (v67 != v63);
            }

            v70 = *v62 < 0.5;
            v71 = (v60 >> 2) < 2;
            if (v71 && v70)
            {
              v72 = &v134;
            }

            else
            {
              v72 = &v137;
            }

            if (v71 && v70)
            {
              p_dst = &__dst;
            }

            else
            {
              p_dst = &v126;
            }

            std::vector<unsigned int>::push_back[abi:ne200100](v72, p_dst);
            v57 = __dst + 1;
            LODWORD(__dst) = __dst + 1;
            v50 = v143;
          }

          while (0xAAAAAAAAAAAAAAABLL * (v144 - v143) > v57);
          if (v137 != v138)
          {
            LODWORD(v126) = 0;
            std::vector<int>::vector[abi:ne200100](&__dst, (v138 - v137) >> 2, &v126);
            v74 = v138;
            v75 = __dst;
            v76 = a1 + 176;
            if (v137 != v138)
            {
              v77 = (v137 + 4);
              v78 = *v137;
              *__dst = *v137;
              if (v77 != v74)
              {
                v79 = v75 + 4;
                do
                {
                  v80 = *v77++;
                  *v79++ = v80 - v78;
                  v78 = v80;
                }

                while (v77 != v74);
              }
            }

            v81 = v133 - (v75 + 4);
            if (v133 == v75 + 4)
            {
              v82 = v75;
            }

            else
            {
              memmove(v75, v75 + 4, v133 - (v75 + 4));
              v82 = __dst;
            }

            v133 = &v75[v81];
            v130 = 0;
            v131 = 0;
            v129 = 0;
            std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v129, v82, &v75[v81], (&v75[v81] - v82) >> 2);
            if (v130 == v129)
            {
              v90 = 0.0;
            }

            else
            {
              v83 = 0;
              v84 = 0;
              v85 = 0;
              v86 = v130 - v129;
              if (v86 <= 1)
              {
                v86 = 1;
              }

              do
              {
                v87 = 0;
                v88 = v129;
                do
                {
                  v89 = *v88++;
                  if (v89 == v129[v83])
                  {
                    ++v87;
                  }
                }

                while (v88 != v130);
                if (v87 > v84)
                {
                  v85 = v129[v83];
                  v84 = v87;
                }

                ++v83;
              }

              while (v83 != v86);
              v90 = v85;
            }

            if (v129)
            {
              v130 = v129;
              operator delete(v129);
            }

            v91 = v137;
            v92 = v138;
            if (v138 != v137)
            {
              v93 = 0;
              v94 = 0;
              v95 = 0;
              v96 = v90 * 1.7;
              v97 = v90 * 1.3;
              while (1)
              {
                if (v95)
                {
                  if (*(v122 + 8) - *v122 > 0x10uLL)
                  {
                    goto LABEL_148;
                  }

                  *(v122 + 8) = *v122;
                }

                if (v94)
                {
                  std::vector<unsigned int>::push_back[abi:ne200100](v122, &v152);
                  v91 = v137;
                  v92 = v138;
                }

                if (v92 - v91 - 1 == v93)
                {
                  v98 = 0;
                  v94 = 0;
                }

                else
                {
                  v99 = *(__dst + v93);
                  v98 = v96 < v99;
                  v94 = v96 >= v99 && v97 < v99;
                }

                v100 = *(a1 + 56) + 24 * v91[v93];
                v127 = 0;
                v128 = 0;
                v126 = 0;
                std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v126, *v100, *(v100 + 8), (*(v100 + 8) - *v100) >> 2);
                v124 = v98;
                v101 = v126;
                if (v127 != v126)
                {
                  break;
                }

                v104 = -1;
LABEL_131:
                if (v104 != v9)
                {
                  v123 = v94;
                  v111 = *(v122 + 8);
                  v110 = *(v122 + 16);
                  if (v111 >= v110)
                  {
                    v113 = *v122;
                    v114 = v111 - *v122;
                    v115 = (v114 >> 2) + 1;
                    if (v115 >> 62)
                    {
                      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
                    }

                    v116 = v110 - v113;
                    if (v116 >> 1 > v115)
                    {
                      v115 = v116 >> 1;
                    }

                    v117 = v116 >= 0x7FFFFFFFFFFFFFFCLL;
                    v118 = 0x3FFFFFFFFFFFFFFFLL;
                    if (!v117)
                    {
                      v118 = v115;
                    }

                    if (v118)
                    {
                      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v122, v118);
                    }

                    v119 = (4 * (v114 >> 2));
                    *v119 = v104;
                    v112 = v119 + 1;
                    memcpy(0, v113, v114);
                    v120 = *v122;
                    *v122 = 0;
                    *(v122 + 8) = v112;
                    *(v122 + 16) = 0;
                    if (v120)
                    {
                      operator delete(v120);
                    }

                    v76 = a1 + 176;
                  }

                  else
                  {
                    *v111 = v104;
                    v112 = v111 + 1;
                  }

                  *(v122 + 8) = v112;
                  v121 = *(v137 + v93) / 2;
                  LODWORD(v125) = 1065353216;
                  *(&v125 + 1) = v121;
                  std::vector<std::pair<float,float>>::push_back[abi:ne200100](v76, &v125);
                  v101 = v126;
                  v94 = v123;
                }

                if (v101)
                {
                  v127 = v101;
                  operator delete(v101);
                }

                ++v93;
                v91 = v137;
                v92 = v138;
                v95 = v124;
                if (v93 >= (v138 - v137) >> 2)
                {
                  goto LABEL_148;
                }
              }

              v102 = 0;
              v103 = (v127 - v126) >> 2;
              if (v103 <= 1)
              {
                v103 = 1;
              }

              v104 = -1;
              v105 = -INFINITY;
              while (1)
              {
                if (a2 == 3)
                {
                  v108 = *(a3 + 4 * v102);
                  if (v108 != 103 && (v108 - 91) <= 0xFFFFFFE5)
                  {
LABEL_126:
                    if (*(v126 + v102) > v105)
                    {
                      v105 = *(v126 + v102);
                      v104 = v102;
                    }
                  }
                }

                else if (a2 == 2)
                {
                  v106 = *(a3 + 4 * v102);
                  if (v106 != 103 && (v106 - 58) <= 0xFFFFFFF5)
                  {
                    goto LABEL_126;
                  }
                }

                else if (a2 == 1 && (*(a3 + 4 * v102) - 48) <= 9)
                {
                  goto LABEL_126;
                }

                if (v103 == ++v102)
                {
                  goto LABEL_131;
                }
              }
            }

LABEL_148:
            if (__dst)
            {
              v133 = __dst;
              operator delete(__dst);
            }
          }
        }

        if (v134)
        {
          v135 = v134;
          operator delete(v134);
        }

        if (v137)
        {
          v138 = v137;
          operator delete(v137);
        }
      }

      v137 = &v143;
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v137);
    }

    v143 = &v149;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v143);
    goto LABEL_156;
  }

  std::vector<int>::vector[abi:ne200100](&v153, (v10[1] - *v10) >> 2);
  v12 = v153;
  v13 = v154;
  v14 = v154 - v153;
  if (v154 != v153)
  {
    v15 = 0;
    if (v14 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v154 - v153;
    }

    v17 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v18 = vdupq_n_s64(v16 - 1);
    v19 = xmmword_24783F580;
    v20 = xmmword_24783F590;
    v21 = v153 + 2;
    v22 = vdupq_n_s64(4uLL);
    do
    {
      v23 = vmovn_s64(vcgeq_u64(v18, v20));
      if (vuzp1_s16(v23, *v18.i8).u8[0])
      {
        *(v21 - 2) = v15;
      }

      if (vuzp1_s16(v23, *&v18).i8[2])
      {
        *(v21 - 1) = v15 + 1;
      }

      if (vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, *&v19))).i32[1])
      {
        *v21 = v15 + 2;
        v21[1] = v15 + 3;
      }

      v15 += 4;
      v19 = vaddq_s64(v19, v22);
      v20 = vaddq_s64(v20, v22);
      v21 += 4;
    }

    while (v17 != v15);
  }

  v149 = v10;
  v24 = 126 - 2 * __clz(v14);
  if (v13 == v12)
  {
    v25 = 0;
  }

  else
  {
    v25 = v24;
  }

  std::__introsort<std::_ClassicAlgPolicy,returnIndiciesOfSortedFloatVector(std::vector<float> const&)::$_0 &,int *,false>(v12, v13, &v149, v25, 1);
  std::vector<unsigned int>::push_back[abi:ne200100](a4, &v153[*v153 == v9]);
LABEL_156:
  if (v153)
  {
    v154 = v153;
    operator delete(v153);
  }
}

void sub_2478325B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t *a25, uint64_t *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a25)
  {
    a26 = a25;
    operator delete(a25);
  }

  a25 = &a31;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a25);
  a31 = v31 - 160;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a31);
  v33 = *(v31 - 128);
  if (v33)
  {
    *(v31 - 120) = v33;
    operator delete(v33);
  }

  v34 = *a9;
  if (*a9)
  {
    *(a9 + 8) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(a1);
}

uint64_t indexGrouping(char **a1, const void **a2, int a3)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    v8 = v5 + 4;
    while (v8 != v6)
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v8 += 4;
      if (v9 != v10)
      {
        __p = 0;
        v30 = 0;
        v11 = v5 + 4;
        v31 = 0;
        do
        {
          if (v11 == v6)
          {
            goto LABEL_16;
          }

          v12 = *(v11 - 1);
          v13 = *v11;
          v11 += 4;
        }

        while (v12 == v13);
        if (v11 - 8 == v6)
        {
LABEL_16:
          std::vector<std::vector<int>>::push_back[abi:ne200100](a2, a1);
          goto LABEL_17;
        }

        v14 = v5;
        while (*v14 != a3)
        {
          v14 += 4;
          if (v14 == v6)
          {
            v14 = v6;
            break;
          }
        }

        v28 = (v14 - v5) >> 2;
        std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v28);
        std::vector<std::vector<int>>::push_back[abi:ne200100](a2, &__p);
        v15 = v28;
        v16 = v28 + 1;
        v17 = *a1;
        v18 = (a1[1] - *a1) >> 2;
        if (v18 < v16)
        {
LABEL_14:
          v19 = 0;
          goto LABEL_18;
        }

        v27 = v28 + 1;
        if (v18 != v16)
        {
          do
          {
            v21 = *&v17[4 * v16];
            v22 = *&v17[4 * v15];
            if (v21 == a3 && v21 == v22)
            {
              if (a2[1] - *a2 == 6120)
              {
                goto LABEL_14;
              }

              std::vector<unsigned int>::push_back[abi:ne200100](a2[1] - 3, &v27);
            }

            else if (v21 == a3)
            {
              v24 = 0;
              v25 = 0;
              v26 = 0;
              std::vector<unsigned int>::push_back[abi:ne200100](&v24, &v27);
              std::vector<std::vector<int>>::push_back[abi:ne200100](a2, &v24);
              if (v24)
              {
                v25 = v24;
                operator delete(v24);
              }
            }

            v15 = v27;
            v16 = ++v27;
            v17 = *a1;
          }

          while (v16 != (a1[1] - *a1) >> 2);
        }

LABEL_17:
        v19 = 1;
LABEL_18:
        if (__p)
        {
          v30 = __p;
          operator delete(__p);
        }

        return v19;
      }
    }
  }

  std::vector<std::vector<int>>::push_back[abi:ne200100](a2, a1);
  return 1;
}

void sub_2478328A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2478328C4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2478328ACLL);
}

void CTCLayer::removeNoise(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a2;
  if (v5 != *(a2 + 8))
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    std::vector<unsigned int>::push_back[abi:ne200100](&v19, v5);
    v7 = *a2;
    if (*(a2 + 8) - *a2 < 5uLL)
    {
      v9 = 0;
      v15 = 0;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = 1;
      v11 = 1;
      do
      {
        if (((*(*(a1 + 176) + v8 + 12) - *(*(a1 + 176) + v8 + 4)) + (*(*(a1 + 176) + v8 + 12) - *(*(a1 + 176) + v8 + 4))) > 50.0)
        {
          v12 = v19;
          v13 = v20;
          v14 = v20 - v19;
          if (v20 - v19 > (a3[1] - *a3))
          {
            *(a1 + 16) = v9;
            if (&v19 != a3)
            {
              std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a3, v12, v13, v14 >> 2);
              v12 = v19;
              v7 = *a2;
            }
          }

          v20 = v12;
          v9 = v10;
        }

        std::vector<unsigned int>::push_back[abi:ne200100](&v19, &v7[v11]);
        ++v10;
        v7 = *a2;
        ++v11;
        v8 += 8;
      }

      while (v10 < (*(a2 + 8) - *a2) >> 2);
      v15 = a3[1] - *a3;
    }

    v16 = v19;
    v17 = v20;
    v18 = v20 - v19;
    if (v20 - v19 > v15)
    {
      *(a1 + 16) = v9;
      if (&v19 != a3)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a3, v16, v17, v18 >> 2);
        v16 = v19;
      }
    }

    if (v16)
    {
      v20 = v16;
      operator delete(v16);
    }
  }
}

void sub_247832A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void CTCLayer::injectSpaces(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v5 = *a2;
  if (v5 != *(a2 + 8))
  {
    std::vector<unsigned int>::push_back[abi:ne200100](a3, v5);
    v7 = *a2;
    if (*(a2 + 8) - *a2 >= 5uLL)
    {
      v8 = 1;
      v9 = 1;
      do
      {
        v10 = *(a1 + 176) + 8 * (v8 + *(a1 + 16));
        if (((*(v10 + 4) - *(v10 - 4)) + (*(v10 + 4) - *(v10 - 4))) > 30.0)
        {
          std::vector<unsigned int>::push_back[abi:ne200100](a3, (a1 + 4));
          v7 = *a2;
        }

        std::vector<unsigned int>::push_back[abi:ne200100](a3, &v7[v9]);
        ++v8;
        v7 = *a2;
        ++v9;
      }

      while (v8 < (*(a2 + 8) - *a2) >> 2);
    }
  }
}

void sub_247832B68(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void CTCLayer::getMaxActivations(CTCLayer *this)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  v1 = this + 80;
  *(this + 11) = *(this + 10);
  if (*(this + 2) >= 1)
  {
    v3 = 0;
    do
    {
      v4 = (*(this + 7) + 24 * v3);
      if (&__p != v4)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&__p, *v4, v4[1], (v4[1] - *v4) >> 2);
      }

      if (v12 == __p)
      {
        v9 = 0;
      }

      else
      {
        v5 = 0;
        LODWORD(v6) = 0;
        v7 = (v12 - __p) >> 2;
        if (v7 <= 1)
        {
          v7 = 1;
        }

        v8 = 0.0;
        do
        {
          if (*(__p + v5) <= v8)
          {
            v6 = v6;
          }

          else
          {
            v8 = *(__p + v5);
            v6 = v5;
          }

          ++v5;
        }

        while (v7 != v5);
        v9 = LODWORD(v8) | (v6 << 32);
      }

      v10 = v9;
      std::vector<std::pair<float,int>>::push_back[abi:ne200100](v1, &v10);
      ++v3;
    }

    while (v3 < *(this + 2));
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }
  }
}

void sub_247832C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CTCLayer::setActivations(uint64_t a1, uint64_t **a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2);
  v5 = **a2;
  v6 = 0xAAAAAAAAAAAAAAABLL * (((*a2)[1] - v5) >> 3);
  *(a1 + 4) = (v5[1] - *v5) >> 2;
  *(a1 + 8) = v6;
  if (v4 <= 1)
  {
    std::vector<std::vector<float>>::resize((a1 + 56), v6);
    v30 = *(a1 + 8);
    if (v30 >= 1)
    {
      v31 = 0;
      for (i = 0; i < v30; ++i)
      {
        v33 = **a2;
        v34 = *(a1 + 56);
        if (v34 != v33)
        {
          std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((v34 + v31), *(v33 + v31), *(v33 + v31 + 8), (*(v33 + v31 + 8) - *(v33 + v31)) >> 2);
          v30 = *(a1 + 8);
        }

        v31 += 24;
      }
    }
  }

  else
  {
    std::vector<std::vector<float>>::clear[abi:ne200100]((a1 + 56));
    std::vector<std::vector<float>>::resize((a1 + 56), *(a1 + 8));
    v7 = *(a1 + 8);
    if (v7 >= 1)
    {
      v8 = 0;
      v9 = v4;
      LODWORD(v10) = *(a1 + 4);
      v11 = v4 & 0x7FFFFFFF;
      do
      {
        if (v10 >= 1)
        {
          v12 = 0;
          do
          {
            v13 = *a2;
            v14 = 0.0;
            v15 = v11;
            do
            {
              v16 = *v13;
              v13 += 3;
              v14 = v14 + *(*(v16 + 24 * v8) + 4 * v12);
              --v15;
            }

            while (v15);
            v17 = *(a1 + 56) + 24 * v8;
            v18 = v14 / v9;
            v20 = *(v17 + 8);
            v19 = *(v17 + 16);
            if (v20 >= v19)
            {
              v22 = *v17;
              v23 = v20 - *v17;
              v24 = v23 >> 2;
              v25 = (v23 >> 2) + 1;
              if (v25 >> 62)
              {
                std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
              }

              v26 = v19 - v22;
              if (v26 >> 1 > v25)
              {
                v25 = v26 >> 1;
              }

              v27 = v26 >= 0x7FFFFFFFFFFFFFFCLL;
              v28 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v27)
              {
                v28 = v25;
              }

              if (v28)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(*(a1 + 56) + 24 * v8, v28);
              }

              *(4 * v24) = v18;
              v21 = 4 * v24 + 4;
              memcpy(0, v22, v23);
              v29 = *v17;
              *v17 = 0;
              *(v17 + 8) = v21;
              *(v17 + 16) = 0;
              if (v29)
              {
                operator delete(v29);
              }
            }

            else
            {
              *v20 = v18;
              v21 = (v20 + 1);
            }

            *(v17 + 8) = v21;
            ++v12;
            v10 = *(a1 + 4);
          }

          while (v12 < v10);
          v7 = *(a1 + 8);
        }

        ++v8;
      }

      while (v8 < v7);
    }
  }
}

uint64_t *CTCLayer::setCodeMap(uint64_t *this, unsigned int *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v9[7] = v3;
    v9[8] = v4;
    v6 = this;
    v7 = 0;
    v8 = a3;
    do
    {
      v9[0] = a2;
      this = std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((v6 + 3), a2, &std::piecewise_construct, v9);
      *(this + 8) = v7++;
      ++a2;
    }

    while (v8 != v7);
  }

  return this;
}

float CTCLayer::computeScore(CTCLayer *this, char **a2)
{
  v4 = (this + 104);
  if (v4 != a2)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v4, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  if ((a2[1] - *a2) < 5)
  {
    if (logZero(void)::onceToken != -1)
    {
      dispatch_once(&logZero(void)::onceToken, &__block_literal_global_2);
    }

    v5 = *&logZero(void)::slogZero;
    *this = v5;
  }

  else
  {
    CTCLayer::computeForwardVariables(this);
    v5 = *this;
  }

  return -v5;
}

uint64_t CTCLayer::computeForwardVariables(uint64_t this)
{
  v1 = *(this + 200);
  if (v1)
  {
    v2 = ((*(this + 112) - *(this + 104)) >> 1) | 1;
    *(this + 12) = v2;
    v3 = *(this + 8);
    if (logZero(void)::onceToken != -1)
    {
      dispatch_once(&logZero(void)::onceToken, &__block_literal_global_2);
    }

    v4 = *(v1 + 128);
    if (v4)
    {
      MEMORY[0x24C1AA8A0](v4, 0x1000C8052888210);
    }

    *(v1 + 136) = v2;
    *(v1 + 140) = v3;
    operator new[]();
  }

  return this;
}

float logAdd(float a1, float a2)
{
  v4 = a1;
  if (logZero(void)::onceToken != -1)
  {
    dispatch_once(&logZero(void)::onceToken, &__block_literal_global_2);
  }

  if (*&logZero(void)::slogZero != v4)
  {
    if (*&logZero(void)::slogZero == a2)
    {
      return a1;
    }

    else if (a1 <= a2)
    {
      v8 = a1 - a2;
      v9 = expf(v8) + 1.0;
      if (v8 >= 1024.0)
      {
        v9 = INFINITY;
      }

      if (v9 <= 2.22507386e-308)
      {
        v10 = *&logZero(void)::slogZero;
      }

      else
      {
        v10 = logf(v9);
      }

      return v10 + a2;
    }

    else
    {
      v5 = a2 - a1;
      v6 = expf(v5) + 1.0;
      if (v5 >= 1024.0)
      {
        v6 = INFINITY;
      }

      if (v6 <= 2.22507386e-308)
      {
        v7 = *&logZero(void)::slogZero;
      }

      else
      {
        v7 = logf(v6);
      }

      return v7 + a1;
    }
  }

  return a2;
}

void *Matrix<float>::~Matrix(void *a1)
{
  *a1 = &unk_2859634D8;
  v2 = a1[16];
  if (v2)
  {
    MEMORY[0x24C1AA8A0](v2, 0x1000C8052888210);
    a1[16] = 0;
  }

  return a1;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,returnIndiciesOfSortedFloatVector(std::vector<float> const&)::$_0 &,int *,false>(uint64_t result, int *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v85 = *(a2 - 1);
        v86 = *v10;
        if (*(**a3 + 4 * v85) > *(**a3 + 4 * v86))
        {
          *v10 = v85;
          *(a2 - 1) = v86;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v94 = v10 + 1;
      v95 = v10[1];
      v96 = v10 + 2;
      v97 = v10[2];
      v98 = *v10;
      v99 = **a3;
      v100 = *(v99 + 4 * v95);
      v101 = *(v99 + 4 * *v10);
      v102 = v97;
      v103 = *(v99 + 4 * v97);
      if (v100 <= v101)
      {
        if (v103 > v100)
        {
          v104 = v95;
          *v94 = v97;
          *v96 = v95;
          v105 = v10;
          v106 = v10 + 1;
          v102 = v95;
          if (v103 > v101)
          {
            goto LABEL_174;
          }

LABEL_176:
          v159 = *(a2 - 1);
          if (*(v99 + 4 * v159) > *(v99 + 4 * v102))
          {
            *v96 = v159;
            *(a2 - 1) = v95;
            v160 = *v96;
            v161 = *v94;
            v162 = *(v99 + 4 * v160);
            if (v162 > *(v99 + 4 * v161))
            {
              v10[1] = v160;
              v10[2] = v161;
              v163 = *v10;
              if (v162 > *(v99 + 4 * v163))
              {
                *v10 = v160;
                v10[1] = v163;
              }
            }
          }

          return result;
        }
      }

      else
      {
        v104 = v98;
        if (v103 > v100)
        {
          v105 = v10;
          v106 = v10 + 2;
          v95 = *v10;
          goto LABEL_174;
        }

        *v10 = v95;
        v10[1] = v98;
        v105 = v10 + 1;
        v106 = v10 + 2;
        v95 = v98;
        if (v103 > v101)
        {
LABEL_174:
          *v105 = v97;
          *v106 = v98;
          v102 = v104;
          goto LABEL_176;
        }
      }

      v95 = v97;
      goto LABEL_176;
    }

    if (v11 == 5)
    {
      v84 = **a3;

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,returnIndiciesOfSortedFloatVector(std::vector<float> const&)::$_0 &,int *,0>(v10, v10 + 1, v10 + 2, v10 + 3, a2 - 1, v84);
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v107 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v108 = **a3;
            v109 = 4;
            v110 = v10;
            do
            {
              v112 = *v110;
              v111 = v110[1];
              v110 = v107;
              v113 = *(v108 + 4 * v111);
              if (v113 > *(v108 + 4 * v112))
              {
                v114 = v109;
                while (1)
                {
                  *(v10 + v114) = v112;
                  v115 = v114 - 4;
                  if (v114 == 4)
                  {
                    break;
                  }

                  v112 = *(v10 + v114 - 8);
                  v114 -= 4;
                  if (v113 <= *(v108 + 4 * v112))
                  {
                    v116 = (v10 + v115);
                    goto LABEL_124;
                  }
                }

                v116 = v10;
LABEL_124:
                *v116 = v111;
              }

              v107 = v110 + 1;
              v109 += 4;
            }

            while (v110 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v153 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v154 = **a3;
          do
          {
            v156 = *v9;
            v155 = v9[1];
            v9 = v153;
            v157 = *(v154 + 4 * v155);
            if (v157 > *(v154 + 4 * v156))
            {
              do
              {
                *v153 = v156;
                v156 = *(v153 - 2);
                --v153;
              }

              while (v157 > *(v154 + 4 * v156));
              *v153 = v155;
            }

            v153 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v117 = (v11 - 2) >> 1;
        v118 = *a3;
        v119 = v117;
        do
        {
          v120 = v119;
          if (v117 >= v119)
          {
            v121 = (2 * v119) | 1;
            v122 = &v10[v121];
            v123 = 2 * v119 + 2;
            v124 = *v118;
            if (v123 < v11 && *(v124 + 4 * *v122) > *(v124 + 4 * v122[1]))
            {
              ++v122;
              v121 = 2 * v120 + 2;
            }

            v125 = &v10[v120];
            result = *v122;
            v126 = *v125;
            v127 = *(v124 + 4 * v126);
            if (*(v124 + 4 * result) <= v127)
            {
              do
              {
                v128 = v122;
                *v125 = result;
                if (v117 < v121)
                {
                  break;
                }

                v129 = 2 * v121;
                v121 = (2 * v121) | 1;
                v122 = &v10[v121];
                v130 = v129 + 2;
                if (v130 < v11 && *(v124 + 4 * *v122) > *(v124 + 4 * v122[1]))
                {
                  ++v122;
                  v121 = v130;
                }

                result = *v122;
                v125 = v128;
              }

              while (*(v124 + 4 * result) <= v127);
              *v128 = v126;
            }
          }

          v119 = v120 - 1;
        }

        while (v120);
        do
        {
          v131 = 0;
          v132 = *v10;
          v133 = *a3;
          v134 = v10;
          do
          {
            v135 = v134;
            v136 = &v134[v131];
            v134 = v136 + 1;
            v137 = 2 * v131;
            v131 = (2 * v131) | 1;
            v138 = v137 + 2;
            if (v138 < v11)
            {
              v140 = v136[2];
              v139 = v136 + 2;
              result = *(v139 - 1);
              if (*(*v133 + 4 * result) > *(*v133 + 4 * v140))
              {
                v134 = v139;
                v131 = v138;
              }
            }

            *v135 = *v134;
          }

          while (v131 <= ((v11 - 2) >> 1));
          if (v134 == --a2)
          {
            *v134 = v132;
          }

          else
          {
            *v134 = *a2;
            *a2 = v132;
            v141 = (v134 - v10 + 4) >> 2;
            v142 = v141 < 2;
            v143 = v141 - 2;
            if (!v142)
            {
              v144 = v143 >> 1;
              v145 = &v10[v144];
              v146 = *v145;
              v147 = *v134;
              v148 = *v133;
              v149 = *(v148 + 4 * v147);
              if (*(v148 + 4 * v146) > v149)
              {
                do
                {
                  v150 = v145;
                  *v134 = v146;
                  if (!v144)
                  {
                    break;
                  }

                  v144 = (v144 - 1) >> 1;
                  v145 = &v10[v144];
                  v146 = *v145;
                  v134 = v150;
                }

                while (*(v148 + 4 * v146) > v149);
                *v150 = v147;
              }
            }
          }

          v142 = v11-- <= 2;
        }

        while (!v142);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = **a3;
    v15 = *(a2 - 1);
    v16 = *(v14 + 4 * v15);
    if (v11 >= 0x81)
    {
      v17 = *v12;
      v18 = *v10;
      v19 = *(v14 + 4 * v17);
      v20 = *(v14 + 4 * v18);
      if (v19 <= v20)
      {
        if (v16 > v19)
        {
          *v12 = v15;
          *(a2 - 1) = v17;
          v25 = *v12;
          v26 = *v10;
          if (*(v14 + 4 * v25) > *(v14 + 4 * v26))
          {
            *v10 = v25;
            *v12 = v26;
          }
        }
      }

      else
      {
        if (v16 > v19)
        {
          *v10 = v15;
          goto LABEL_27;
        }

        *v10 = v17;
        *v12 = v18;
        v29 = *(a2 - 1);
        if (*(v14 + 4 * v29) > v20)
        {
          *v12 = v29;
LABEL_27:
          *(a2 - 1) = v18;
        }
      }

      v30 = v12 - 1;
      v31 = *(v12 - 1);
      v32 = v10[1];
      v33 = *(v14 + 4 * v31);
      v34 = *(v14 + 4 * v32);
      v35 = *(a2 - 2);
      v36 = *(v14 + 4 * v35);
      if (v33 <= v34)
      {
        if (v36 > v33)
        {
          *v30 = v35;
          *(a2 - 2) = v31;
          v37 = *v30;
          v38 = v10[1];
          if (*(v14 + 4 * v37) > *(v14 + 4 * v38))
          {
            v10[1] = v37;
            *v30 = v38;
          }
        }
      }

      else
      {
        if (v36 > v33)
        {
          v10[1] = v35;
          goto LABEL_39;
        }

        v10[1] = v31;
        *v30 = v32;
        v40 = *(a2 - 2);
        if (*(v14 + 4 * v40) > v34)
        {
          *v30 = v40;
LABEL_39:
          *(a2 - 2) = v32;
        }
      }

      v43 = v12[1];
      v41 = v12 + 1;
      v42 = v43;
      v44 = v10[2];
      v45 = *(v14 + 4 * v43);
      v46 = *(v14 + 4 * v44);
      v47 = *(a2 - 3);
      v48 = *(v14 + 4 * v47);
      if (v45 <= v46)
      {
        if (v48 > v45)
        {
          *v41 = v47;
          *(a2 - 3) = v42;
          v49 = *v41;
          v50 = v10[2];
          if (*(v14 + 4 * v49) > *(v14 + 4 * v50))
          {
            v10[2] = v49;
            *v41 = v50;
          }
        }
      }

      else
      {
        if (v48 > v45)
        {
          v10[2] = v47;
          goto LABEL_48;
        }

        v10[2] = v42;
        *v41 = v44;
        v51 = *(a2 - 3);
        if (*(v14 + 4 * v51) > v46)
        {
          *v41 = v51;
LABEL_48:
          *(a2 - 3) = v44;
        }
      }

      v52 = *v13;
      v53 = *v30;
      v54 = *(v14 + 4 * v52);
      v55 = *(v14 + 4 * v53);
      v56 = *v41;
      v57 = *(v14 + 4 * v56);
      if (v54 <= v55)
      {
        if (v57 <= v54)
        {
          goto LABEL_56;
        }

        *v13 = v56;
        *v41 = v52;
        v41 = v13;
        LODWORD(v52) = v53;
        if (v57 <= v55)
        {
          LODWORD(v52) = v56;
          goto LABEL_56;
        }
      }

      else if (v57 <= v54)
      {
        *v30 = v52;
        *v13 = v53;
        v30 = v13;
        LODWORD(v52) = v56;
        if (v57 <= v55)
        {
          LODWORD(v52) = v53;
LABEL_56:
          v58 = *v10;
          *v10 = v52;
          *v13 = v58;
          goto LABEL_57;
        }
      }

      *v30 = v56;
      *v41 = v53;
      goto LABEL_56;
    }

    v21 = *v10;
    v22 = *v13;
    v23 = *(v14 + 4 * v21);
    v24 = *(v14 + 4 * v22);
    if (v23 <= v24)
    {
      if (v16 > v23)
      {
        *v10 = v15;
        *(a2 - 1) = v21;
        v27 = *v10;
        v28 = *v13;
        if (*(v14 + 4 * v27) > *(v14 + 4 * v28))
        {
          *v13 = v27;
          *v10 = v28;
        }
      }

      goto LABEL_57;
    }

    if (v16 > v23)
    {
      *v13 = v15;
LABEL_36:
      *(a2 - 1) = v22;
      goto LABEL_57;
    }

    *v13 = v21;
    *v10 = v22;
    v39 = *(a2 - 1);
    if (*(v14 + 4 * v39) > v24)
    {
      *v10 = v39;
      goto LABEL_36;
    }

LABEL_57:
    --a4;
    v59 = *v10;
    if (a5)
    {
      v60 = *(v14 + 4 * v59);
LABEL_60:
      v61 = 0;
      do
      {
        v62 = v10[++v61];
      }

      while (*(v14 + 4 * v62) > v60);
      v63 = &v10[v61];
      v64 = a2;
      if (v61 == 1)
      {
        v64 = a2;
        do
        {
          if (v63 >= v64)
          {
            break;
          }

          v66 = *--v64;
        }

        while (*(v14 + 4 * v66) <= v60);
      }

      else
      {
        do
        {
          v65 = *--v64;
        }

        while (*(v14 + 4 * v65) <= v60);
      }

      if (v63 >= v64)
      {
        v73 = v63 - 1;
      }

      else
      {
        v67 = *v64;
        v68 = v62;
        v69 = &v10[v61];
        v70 = v64;
        do
        {
          *v69 = v67;
          *v70 = v68;
          do
          {
            v71 = v69[1];
            ++v69;
            v68 = v71;
          }

          while (*(v14 + 4 * v71) > v60);
          do
          {
            v72 = *--v70;
            v67 = v72;
          }

          while (*(v14 + 4 * v72) <= v60);
        }

        while (v69 < v70);
        v73 = v69 - 1;
      }

      if (v73 != v10)
      {
        *v10 = *v73;
      }

      *v73 = v59;
      if (v63 < v64)
      {
        goto LABEL_81;
      }

      v74 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,returnIndiciesOfSortedFloatVector(std::vector<float> const&)::$_0 &,int *>(v10, v73, *a3);
      v10 = v73 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,returnIndiciesOfSortedFloatVector(std::vector<float> const&)::$_0 &,int *>(v73 + 1, a2, *a3);
      if (result)
      {
        a2 = v73;
        if (!v74)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v74)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,returnIndiciesOfSortedFloatVector(std::vector<float> const&)::$_0 &,int *,false>(v9, v73, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v73 + 1;
      }
    }

    else
    {
      v60 = *(v14 + 4 * v59);
      if (*(v14 + 4 * *(v10 - 1)) > v60)
      {
        goto LABEL_60;
      }

      if (v60 <= *(v14 + 4 * *(a2 - 1)))
      {
        v76 = (v10 + 1);
        do
        {
          v10 = v76;
          if (v76 >= a2)
          {
            break;
          }

          v76 += 4;
        }

        while (v60 <= *(v14 + 4 * *v10));
      }

      else
      {
        do
        {
          v75 = v10[1];
          ++v10;
        }

        while (v60 <= *(v14 + 4 * v75));
      }

      v77 = a2;
      if (v10 < a2)
      {
        v77 = a2;
        do
        {
          v78 = *--v77;
        }

        while (v60 > *(v14 + 4 * v78));
      }

      if (v10 < v77)
      {
        v79 = *v10;
        v80 = *v77;
        do
        {
          *v10 = v80;
          *v77 = v79;
          do
          {
            v81 = v10[1];
            ++v10;
            v79 = v81;
          }

          while (v60 <= *(v14 + 4 * v81));
          do
          {
            v82 = *--v77;
            v80 = v82;
          }

          while (v60 > *(v14 + 4 * v82));
        }

        while (v10 < v77);
      }

      v83 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v83;
      }

      a5 = 0;
      *v83 = v59;
    }
  }

  v87 = *v10;
  v88 = v10[1];
  v89 = **a3;
  v90 = *(v89 + 4 * v88);
  v91 = *(v89 + 4 * v87);
  v92 = *(a2 - 1);
  v93 = *(v89 + 4 * v92);
  if (v90 <= v91)
  {
    if (v93 > v90)
    {
      v10[1] = v92;
      *(a2 - 1) = v88;
      v152 = *v10;
      v151 = v10[1];
      if (*(v89 + 4 * v151) > *(v89 + 4 * v152))
      {
        *v10 = v151;
        v10[1] = v152;
      }
    }
  }

  else
  {
    if (v93 <= v90)
    {
      *v10 = v88;
      v10[1] = v87;
      v158 = *(a2 - 1);
      if (*(v89 + 4 * v158) <= v91)
      {
        return result;
      }

      v10[1] = v158;
    }

    else
    {
      *v10 = v92;
    }

    *(a2 - 1) = v87;
  }

  return result;
}

int *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,returnIndiciesOfSortedFloatVector(std::vector<float> const&)::$_0 &,int *,0>(int *result, int *a2, int *a3, int *a4, int *a5, uint64_t a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *(a6 + 4 * *a2);
  v9 = *(a6 + 4 * *result);
  v10 = *a3;
  v11 = *(a6 + 4 * *a3);
  if (v8 <= v9)
  {
    if (v11 <= v8)
    {
      v12 = v10;
      goto LABEL_13;
    }

    *a2 = v10;
    *a3 = v6;
    v13 = *a2;
    v14 = *result;
    if (*(a6 + 4 * v13) <= *(a6 + 4 * v14))
    {
      v12 = v6;
      v10 = v6;
      goto LABEL_13;
    }

    *result = v13;
    *a2 = v14;
    v10 = *a3;
    goto LABEL_11;
  }

  v12 = v7;
  if (v11 <= v8)
  {
    *result = v6;
    *a2 = v7;
    v10 = *a3;
    if (*(a6 + 4 * *a3) > v9)
    {
      *a2 = v10;
      goto LABEL_9;
    }

LABEL_11:
    v12 = v10;
    goto LABEL_13;
  }

  *result = v10;
LABEL_9:
  *a3 = v7;
  v10 = v7;
LABEL_13:
  v15 = *a4;
  if (*(a6 + 4 * v15) > *(a6 + 4 * v12))
  {
    *a3 = v15;
    *a4 = v10;
    v16 = *a3;
    v17 = *a2;
    if (*(a6 + 4 * v16) > *(a6 + 4 * v17))
    {
      *a2 = v16;
      *a3 = v17;
      v18 = *a2;
      v19 = *result;
      if (*(a6 + 4 * v18) > *(a6 + 4 * v19))
      {
        *result = v18;
        *a2 = v19;
      }
    }
  }

  v20 = *a5;
  v21 = *a4;
  if (*(a6 + 4 * v20) > *(a6 + 4 * v21))
  {
    *a4 = v20;
    *a5 = v21;
    v22 = *a4;
    v23 = *a3;
    if (*(a6 + 4 * v22) > *(a6 + 4 * v23))
    {
      *a3 = v22;
      *a4 = v23;
      v24 = *a3;
      v25 = *a2;
      if (*(a6 + 4 * v24) > *(a6 + 4 * v25))
      {
        *a2 = v24;
        *a3 = v25;
        v26 = *a2;
        v27 = *result;
        if (*(a6 + 4 * v26) > *(a6 + 4 * v27))
        {
          *result = v26;
          *a2 = v27;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,returnIndiciesOfSortedFloatVector(std::vector<float> const&)::$_0 &,int *>(int *a1, int *a2, uint64_t *a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *a3;
      v8 = *(*a3 + 4 * v6);
      v9 = *(*a3 + 4 * v5);
      v10 = *(a2 - 1);
      v11 = *(*a3 + 4 * v10);
      if (v8 <= v9)
      {
        if (v11 > v8)
        {
          a1[1] = v10;
          *(a2 - 1) = v6;
          v36 = *a1;
          v35 = a1[1];
          if (*(v7 + 4 * v35) > *(v7 + 4 * v36))
          {
            *a1 = v35;
            a1[1] = v36;
          }
        }

        return 1;
      }

      if (v11 > v8)
      {
        *a1 = v10;
        goto LABEL_42;
      }

      *a1 = v6;
      a1[1] = v5;
      v46 = *(a2 - 1);
      if (*(v7 + 4 * v46) > v9)
      {
        a1[1] = v46;
        goto LABEL_42;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,returnIndiciesOfSortedFloatVector(std::vector<float> const&)::$_0 &,int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, *a3);
        return 1;
      }

      goto LABEL_13;
    }

    v22 = a1 + 1;
    v23 = a1[1];
    v24 = a1 + 2;
    v25 = a1[2];
    v26 = *a1;
    v27 = *a3;
    v28 = *(*a3 + 4 * v23);
    v29 = *(*a3 + 4 * *a1);
    v30 = v25;
    v31 = *(*a3 + 4 * v25);
    if (v28 <= v29)
    {
      if (v31 > v28)
      {
        v32 = v23;
        *v22 = v25;
        *v24 = v23;
        v33 = a1;
        v34 = a1 + 1;
        v30 = v23;
        if (v31 <= v29)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }
    }

    else
    {
      v32 = v26;
      if (v31 > v28)
      {
        v33 = a1;
        v34 = a1 + 2;
        v23 = *a1;
LABEL_44:
        *v33 = v25;
        *v34 = v26;
        v30 = v32;
LABEL_46:
        v47 = *(a2 - 1);
        if (*(v27 + 4 * v47) > *(v27 + 4 * v30))
        {
          *v24 = v47;
          *(a2 - 1) = v23;
          v48 = *v24;
          v49 = *v22;
          v50 = *(v27 + 4 * v48);
          if (v50 > *(v27 + 4 * v49))
          {
            a1[1] = v48;
            a1[2] = v49;
            v51 = *a1;
            if (v50 > *(v27 + 4 * v51))
            {
              *a1 = v48;
              a1[1] = v51;
            }
          }
        }

        return 1;
      }

      *a1 = v23;
      a1[1] = v26;
      v33 = a1 + 1;
      v34 = a1 + 2;
      v23 = v26;
      if (v31 > v29)
      {
        goto LABEL_44;
      }
    }

    v23 = v25;
    goto LABEL_46;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    if (*(*a3 + 4 * v4) > *(*a3 + 4 * v5))
    {
      *a1 = v4;
LABEL_42:
      *(a2 - 1) = v5;
      return 1;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v12 = a1[2];
  v14 = a1[1];
  v15 = *a3;
  v16 = *(*a3 + 4 * v14);
  v17 = *a1;
  v18 = *(*a3 + 4 * v17);
  v19 = *(*a3 + 4 * v12);
  if (v16 > v18)
  {
    v20 = a1;
    v21 = a1 + 2;
    if (v19 <= v16)
    {
      *a1 = v14;
      a1[1] = v17;
      v20 = a1 + 1;
      v21 = a1 + 2;
      if (v19 <= v18)
      {
        goto LABEL_26;
      }
    }

LABEL_25:
    *v20 = v12;
    *v21 = v17;
    goto LABEL_26;
  }

  if (v19 > v16)
  {
    a1[1] = v12;
    *v13 = v14;
    v20 = a1;
    v21 = a1 + 1;
    if (v19 > v18)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  v37 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v38 = 0;
  for (i = 12; ; i += 4)
  {
    v40 = *v37;
    v41 = *v13;
    v42 = *(v15 + 4 * v40);
    if (v42 > *(v15 + 4 * v41))
    {
      v43 = i;
      while (1)
      {
        *(a1 + v43) = v41;
        v44 = v43 - 4;
        if (v43 == 4)
        {
          break;
        }

        v41 = *(a1 + v43 - 8);
        v43 -= 4;
        if (v42 <= *(v15 + 4 * v41))
        {
          v45 = (a1 + v44);
          goto LABEL_34;
        }
      }

      v45 = a1;
LABEL_34:
      *v45 = v40;
      if (++v38 == 8)
      {
        break;
      }
    }

    v13 = v37++;
    if (v37 == a2)
    {
      return 1;
    }
  }

  return v37 + 1 == a2;
}

uint64_t std::vector<std::vector<int>>::push_back[abi:ne200100](const void **a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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

    v21 = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(a1, v11);
    }

    v12 = 24 * v8;
    v17 = 0;
    v18 = v12;
    v19 = 24 * v8;
    v20 = 0;
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((24 * v8), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    v7 = (v19 + 24);
    v13 = a1[1] - *a1;
    v14 = &v18[-v13];
    memcpy(&v18[-v13], *a1, v13);
    v15 = *a1;
    *a1 = v14;
    a1[1] = v7;
    v16 = a1[2];
    a1[2] = v20;
    v19 = v15;
    v20 = v16;
    v17 = v15;
    v18 = v15;
    result = std::__split_buffer<std::vector<float>>::~__split_buffer(&v17);
  }

  else
  {
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v5, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    v7 = v5 + 3;
    a1[1] = v7;
  }

  a1[1] = v7;
  return result;
}

void sub_2478346B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void Matrix<float>::~Matrix(void *a1)
{
  *a1 = &unk_2859634D8;
  v1 = a1[16];
  if (v1)
  {
    MEMORY[0x24C1AA8A0](v1, 0x1000C8052888210);
  }

  JUMPOUT(0x24C1AA8C0);
}

void Matrix<float>::operator*(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 140);
  v5 = *(a2 + 136);
  *a3 = &unk_2859634D8;
  *(a3 + 136) = v5;
  *(a3 + 140) = v4;
  operator new[]();
}

void Matrix<float>::operator*(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 136);
  v4 = *(a1 + 140);
  *a3 = &unk_2859634D8;
  *(a3 + 136) = v5;
  *(a3 + 140) = v4;
  operator new[]();
}

void Matrix<float>::operator+(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 136);
  v4 = *(a1 + 140);
  *a3 = &unk_2859634D8;
  *(a3 + 136) = v5;
  *(a3 + 140) = v4;
  operator new[]();
}

uint64_t Matrix<float>::operator+=(uint64_t result, uint64_t a2)
{
  v2 = *(result + 140);
  if (v2)
  {
    v3 = 0;
    v4 = *(result + 136);
    v5 = *(a2 + 128);
    v6 = *(a2 + 136);
    do
    {
      if (v4)
      {
        v7 = *(result + 128);
        v8 = v3;
        v9 = v3;
        v10 = v4;
        do
        {
          *(v7 + 4 * v9) = *(v5 + 4 * v8) + *(v7 + 4 * v9);
          v9 += v4;
          v8 += v6;
          --v10;
        }

        while (v10);
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return result;
}

void Matrix<float>::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 128);
  if (v4)
  {
    MEMORY[0x24C1AA8A0](v4, 0x1000C8052888210);
  }

  v5 = *(a2 + 140);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 140) = v5;
  operator new[]();
}

BOOL Matrix<float>::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 136);
  if (v2 == *(a2 + 136) && (v3 = *(a1 + 140), v3 == *(a2 + 140)))
  {
    return memcmp(*(a1 + 128), *(a2 + 128), 4 * (v3 * v2)) == 0;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(uint64_t a1, int a2, unsigned int **a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 28);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<float,int> *>>,false>(float *result, float *a2, float *a3, float *a4, uint64_t a5, char a6)
{
  while (1)
  {
    v10 = (a2 - a4) >> 3;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<float,int> *>>,0>(result, a2, (a2 - 2), (a2 - 2), a3, (a4 + 2));
          return;
        case 4:
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<float,int> *>>,0>(result, a2, (a2 - 2), (a2 - 2), (a2 - 4), (a2 - 4));
          v56 = *a4;
          v57 = *(a2 - 6);
          if (*a4 >= v57)
          {
            if (v57 < v56)
            {
              return;
            }

            v59 = *(a4 + 1);
            v58 = *(a2 - 5);
            if (v59 >= v58)
            {
              return;
            }
          }

          else
          {
            v58 = *(a2 - 5);
            v59 = *(a4 + 1);
          }

          *(a2 - 6) = v56;
          *a4 = v57;
          *(a2 - 5) = v59;
          *(a4 + 1) = v58;
          v60 = *(a2 - 6);
          v61 = *(a2 - 4);
          if (v60 >= v61)
          {
            if (v61 < v60)
            {
              return;
            }

            v63 = *(a2 - 5);
            v62 = *(a2 - 3);
            if (v63 >= v62)
            {
              return;
            }
          }

          else
          {
            v62 = *(a2 - 3);
            v63 = *(a2 - 5);
          }

          *(a2 - 4) = v60;
          *(a2 - 6) = v61;
          *(a2 - 3) = v63;
          *(a2 - 5) = v62;
          v64 = *(a2 - 2);
          if (v60 >= v64)
          {
            if (v64 < v60)
            {
              return;
            }

            v66 = *(a2 - 3);
            v65 = *(a2 - 1);
            if (v66 >= v65)
            {
              return;
            }
          }

          else
          {
            v65 = *(a2 - 1);
            v66 = *(a2 - 3);
          }

          *(a2 - 2) = v60;
          *(a2 - 4) = v64;
          *(a2 - 1) = v66;
          *(a2 - 3) = v65;
          return;
        case 5:
          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<float,int> *>>,0>(result, a2, (a2 - 2), (a2 - 2), (a2 - 4), (a2 - 4), (a2 - 6), (a2 - 6), a3, (a4 + 2));
          return;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return;
      }

      if (v10 == 2)
      {
        v52 = *a4;
        v53 = *(a2 - 2);
        if (*a4 >= v53)
        {
          if (v53 < v52)
          {
            return;
          }

          v55 = *(a4 + 1);
          v54 = *(a2 - 1);
          if (v55 >= v54)
          {
            return;
          }
        }

        else
        {
          v54 = *(a2 - 1);
          v55 = *(a4 + 1);
        }

        *(a2 - 2) = v52;
        *a4 = v53;
        *(a2 - 1) = v55;
        *(a4 + 1) = v54;
        return;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (!a5)
    {
      if (a2 == a4)
      {
        return;
      }

      v81 = (v10 - 2) >> 1;
      v82 = v81;
      while (2)
      {
        v83 = v82;
        v84 = 8 * v82;
        if (v81 >= v84 >> 3)
        {
          v85 = v84 >> 2;
          v86 = (v84 >> 2) | 1;
          v87 = &a2[-2 * v86];
          v88 = v85 + 2;
          if (v85 + 2 < v10 && ((v89 = v87 - 2, v90 = *(v87 - 2), v91 = *(v87 - 4), v90 < v91) || v91 >= v90 && *(v87 - 1) < *(v87 - 3)))
          {
            v86 = v88;
          }

          else
          {
            v89 = &a2[-2 * v86];
          }

          v92 = &a2[-2 * v83];
          v93 = *(v89 - 2);
          v94 = *(v92 - 2);
          if (v93 >= v94)
          {
            if (v94 < v93)
            {
              v95 = *(v92 - 1);
              v96 = *(v89 - 1);
              goto LABEL_146;
            }

            v96 = *(v89 - 1);
            v95 = *(v92 - 1);
            if (v96 >= v95)
            {
LABEL_146:
              *(v92 - 2) = v93;
              *(v92 - 1) = v96;
              if (v81 >= v86)
              {
                while (1)
                {
                  v98 = 2 * v86;
                  v86 = (2 * v86) | 1;
                  v99 = &a2[-2 * v86];
                  v100 = v98 + 2;
                  if (v98 + 2 < v10 && ((v97 = v99 - 2, v101 = *(v99 - 2), v102 = *(v99 - 4), v101 < v102) || v102 >= v101 && *(v99 - 1) < *(v99 - 3)))
                  {
                    v86 = v100;
                  }

                  else
                  {
                    v97 = &a2[-2 * v86];
                  }

                  v103 = *(v97 - 2);
                  if (v103 < v94)
                  {
                    break;
                  }

                  v104 = *(v97 - 1);
                  v105 = v94 >= v103 && v104 < v95;
                  if (v105)
                  {
                    break;
                  }

                  *(v89 - 2) = v103;
                  *(v89 - 1) = v104;
                  v89 = v97;
                  if (v81 < v86)
                  {
                    goto LABEL_148;
                  }
                }
              }

              v97 = v89;
LABEL_148:
              *(v97 - 2) = v94;
              *(v97 - 1) = v95;
            }
          }
        }

        v82 = v83 - 1;
        if (v83)
        {
          continue;
        }

        break;
      }

LABEL_164:
      v106 = 0;
      v107 = *(a2 - 2);
      v108 = *(a2 - 1);
      v109 = a2;
      do
      {
        v110 = v109;
        v109 += 2 * ~v106;
        v111 = 2 * v106;
        v106 = (2 * v106) | 1;
        v112 = v111 + 2;
        if (v112 < v10)
        {
          v113 = *(v109 - 2);
          v114 = *(v109 - 4);
          if (v113 < v114 || v114 >= v113 && *(v109 - 1) < *(v109 - 3))
          {
            v109 -= 2;
            v106 = v112;
          }
        }

        *(v110 - 2) = *(v109 - 2);
        *(v110 - 1) = *(v109 - 1);
      }

      while (v106 <= ((v10 - 2) >> 1));
      if (a4 + 2 == v109)
      {
        *(v109 - 2) = v107;
        *(v109 - 1) = v108;
        goto LABEL_189;
      }

      v115 = v109 - 2;
      *(v109 - 2) = *a4;
      *(v109 - 1) = a4[1];
      *a4 = v107;
      *(a4 + 1) = v108;
      v116 = (a2 - (v109 - 2)) >> 3;
      v117 = v116 - 2;
      if (v116 < 2)
      {
        goto LABEL_189;
      }

      v118 = v117 >> 1;
      v119 = &a2[-2 * (v117 >> 1)];
      v120 = *(v119 - 2);
      v121 = *v115;
      if (v120 >= *v115)
      {
        if (v121 < v120)
        {
          goto LABEL_189;
        }

        v123 = *(v119 - 1);
        v122 = *(v109 - 1);
        if (v123 >= v122)
        {
          goto LABEL_189;
        }
      }

      else
      {
        v122 = *(v109 - 1);
        v123 = *(v119 - 1);
      }

      *(v109 - 2) = v120;
      *(v109 - 1) = v123;
      if (v117 < 2)
      {
        goto LABEL_188;
      }

      v124 = &a2[-2 * (v117 >> 1)];
      while (1)
      {
        v125 = v118 - 1;
        v118 = (v118 - 1) >> 1;
        v119 = &a2[-2 * v118];
        v126 = *(v119 - 2);
        if (v126 >= v121)
        {
          if (v121 < v126 || (v127 = *(v119 - 1), v127 >= v122))
          {
            v119 = v124;
LABEL_188:
            *(v119 - 2) = v121;
            *(v119 - 1) = v122;
LABEL_189:
            a4 += 2;
            v105 = v10-- <= 2;
            if (v105)
            {
              return;
            }

            goto LABEL_164;
          }
        }

        else
        {
          v127 = *(v119 - 1);
        }

        *(v124 - 2) = v126;
        *(v124 - 1) = v127;
        v124 = &a2[-2 * v118];
        if (v125 <= 1)
        {
          goto LABEL_188;
        }
      }
    }

    v11 = ((a2 - a4) >> 1) & 0x7FFFFFFFFFFFFFF8;
    v12 = (a2 - v11);
    v13 = a2;
    v14 = result;
    if (v10 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<float,int> *>>,0>(a2 - v11, a2 - v11, result, a2, (a4 + 2), (a4 + 2));
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<float,int> *>>,0>(result, a2, a2 - v11, a2 - v11, (a4 + 2), (a4 + 2));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<float,int> *>>,0>((a2 - 2), (a2 - 2), (v12 + 2), (v12 + 2), (a4 + 4), (a4 + 4));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<float,int> *>>,0>((a2 - 4), (a2 - 4), a2 - v11 - 8, a2 - v11 - 8, (a4 + 6), (a4 + 6));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<float,int> *>>,0>((v12 + 2), (v12 + 2), a2 - v11, a2 - v11, a2 - v11 - 8, a2 - v11 - 8);
      v15 = *(a2 - 2);
      *(a2 - 2) = *(v12 - 2);
      *(v12 - 2) = v15;
      v16 = *(a2 - 1);
      *(a2 - 1) = *(v12 - 1);
      *(v12 - 1) = v16;
    }

    --a5;
    if (a6)
    {
      v17 = *(a2 - 2);
      goto LABEL_16;
    }

    v18 = a2 - 2;
    v17 = *(a2 - 2);
    if (*a2 >= v17)
    {
      if (v17 >= *a2)
      {
        v38 = *(a2 - 1);
        if (*(a2 + 1) < v38)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v38 = *(a2 - 1);
      }

      if (v17 < *a4 || *a4 >= v17 && v38 < *(a4 + 1))
      {
        v39 = *(a2 - 4);
        if (v17 >= v39)
        {
          v40 = a2 - 6;
          do
          {
            if (v39 >= v17 && v38 < *(v40 + 3))
            {
              break;
            }

            v41 = *v40;
            v40 -= 2;
            v39 = v41;
          }

          while (v17 >= v41);
          v18 = v40 + 4;
        }
      }

      else
      {
        while (v18 > a4)
        {
          v51 = *(v18 - 2);
          if (v17 < v51 || v51 >= v17 && v38 < *(v18 - 1))
          {
            break;
          }

          v18 -= 2;
        }
      }

      i = a4;
      if (v18 > a4)
      {
        for (i = (a4 + 2); ; i += 8)
        {
          v43 = *(i - 8);
          if (v17 >= v43 && (v43 < v17 || v38 >= *(i - 4)))
          {
            break;
          }
        }
      }

      if (i >= v18)
      {
        v44 = v18;
      }

      else
      {
        v44 = v18;
        do
        {
          v45 = *(v44 - 2);
          v44 -= 2;
          *v44 = *(i - 8);
          *(i - 8) = v45;
          v46 = *(v44 + 1);
          v44[1] = *(i - 4);
          *(i - 4) = v46;
          v47 = *(v44 - 2);
          if (v17 >= v47)
          {
            v48 = v18 - 6;
            do
            {
              if (v47 >= v17 && v38 < *(v48 + 3))
              {
                break;
              }

              v49 = *v48;
              v48 -= 2;
              v47 = v49;
            }

            while (v17 >= v49);
            v44 = v48 + 4;
          }

          do
          {
            do
            {
              i += 8;
              v50 = *(i - 8);
            }

            while (v17 < v50);
          }

          while (v50 >= v17 && v38 < *(i - 4));
          v18 = v44;
        }

        while (i < v44);
      }

      if (v44 + 2 != a2)
      {
        *(a2 - 2) = *v44;
        *(a2 - 1) = v44[1];
      }

      a6 = 0;
      *v44 = v17;
      *(v44 + 1) = v38;
      a2 = v44;
    }

    else
    {
LABEL_16:
      v19 = 0;
      v20 = *(a2 - 1);
      while (1)
      {
        v21 = a2[v19 - 4];
        if (v21 >= v17 && (v17 < v21 || SLODWORD(a2[v19 - 3]) >= v20))
        {
          break;
        }

        v19 -= 2;
      }

      v22 = &a2[v19];
      v23 = &a2[v19 - 2];
      if (v19 * 4)
      {
        v24 = a4;
        do
        {
          v25 = *v24;
          v24 += 2;
          v26 = v25;
        }

        while (v25 >= v17 && (v17 < v26 || *(v24 - 1) >= v20));
      }

      else
      {
        v24 = a4;
        if (v23 > a4)
        {
          v24 = a4;
          while (1)
          {
            v27 = *v24;
            v24 += 2;
            v28 = v27;
            if (v27 < v17)
            {
              break;
            }

            if (v17 >= v28)
            {
              if (*(v24 - 1) < v20 || v24 >= v23)
              {
                break;
              }
            }

            else if (v24 >= v23)
            {
              break;
            }
          }
        }
      }

      if (v24 < v23)
      {
        v30 = v23;
        v31 = v24;
        do
        {
          v32 = *(v30 - 1);
          *(v30 - 1) = *(v31 - 1);
          v33 = *(v30 - 2);
          v22 = v30;
          *(v30 - 2) = *(v31 - 2);
          *(v31 - 2) = v33;
          *(v31 - 1) = v32;
          for (v30 -= 2; ; v30 -= 2)
          {
            v34 = *(v30 - 2);
            if (v34 >= v17 && (v17 < v34 || *(v30 - 1) >= v20))
            {
              break;
            }

            v22 -= 2;
          }

          do
          {
            v35 = *v31;
            v31 += 2;
            v36 = v35;
          }

          while (v35 >= v17 && (v17 < v36 || *(v31 - 1) >= v20));
        }

        while (v31 < v30);
      }

      if (v22 != a2)
      {
        *(a2 - 2) = *(v22 - 2);
        *(a2 - 1) = *(v22 - 1);
      }

      *(v22 - 2) = v17;
      *(v22 - 1) = v20;
      if (v24 >= v23)
      {
        v37 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<float,int> *>>>(result, a2, v22, v22);
        if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<float,int> *>>>((v22 - 2), v22 - 2, a3, a4))
        {
          a3 = v22;
          a4 = v22;
          if (v37)
          {
            return;
          }
        }

        else
        {
          result = v22;
          a2 = v22 - 2;
          if ((v37 & 1) == 0)
          {
            goto LABEL_52;
          }
        }
      }

      else
      {
LABEL_52:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<float,int> *>>,false>(v14, v13, v22, v22, a5, a6 & 1);
        a6 = 0;
        result = v22;
        a2 = v22 - 2;
      }
    }
  }

  if ((a6 & 1) == 0)
  {
    if (a2 == a4)
    {
      return;
    }

    v128 = a2 - 2;
    if (a2 - 2 == a4)
    {
      return;
    }

    v129 = a2 - 2;
    while (1)
    {
      v130 = v128 + 2;
      v131 = *v128;
      v132 = *(v129 - 2);
      v129 -= 2;
      v133 = v132;
      if (v132 < *v128)
      {
        break;
      }

      if (v131 >= v133)
      {
        v134 = *(v128 - 1);
        if (v134 < *(v128 + 1))
        {
          goto LABEL_203;
        }
      }

LABEL_209:
      v128 = v129;
      if (v129 == a4)
      {
        return;
      }
    }

    v134 = *(v128 - 1);
    do
    {
      do
      {
LABEL_203:
        v135 = v130;
        *(v128 - 2) = v131;
        *(v128 - 1) = *(v130 - 1);
        v130 += 2;
        v131 = *v135;
        v128 = v135;
      }

      while (v133 < *v135);
      if (v131 < v133)
      {
        break;
      }

      v128 = v135;
    }

    while (v134 < *(v135 + 1));
    *(v135 - 2) = v133;
    *(v135 - 1) = v134;
    goto LABEL_209;
  }

  if (a2 == a4)
  {
    return;
  }

  v67 = a2 - 2;
  if (a2 - 2 == a4)
  {
    return;
  }

  v68 = 0;
  v69 = a2 - 2;
  while (2)
  {
    v70 = v67 + 2;
    v71 = *v67;
    v72 = *(v69 - 2);
    v69 -= 2;
    v73 = v72;
    if (v72 >= *v67)
    {
      if (v71 < v73)
      {
        goto LABEL_131;
      }

      v74 = *(v67 - 1);
      v75 = *(v67 + 1);
      if (v74 >= v75)
      {
        goto LABEL_131;
      }
    }

    else
    {
      v74 = *(v67 - 1);
      v75 = *(v67 + 1);
    }

    *(v67 - 2) = v71;
    *(v67 - 1) = v75;
    v76 = a2;
    if (v70 == a2)
    {
      goto LABEL_130;
    }

    v77 = v68;
    v76 = v70;
    while (2)
    {
      v78 = *(a2 + v77);
      if (v73 < v78)
      {
        v79 = *(a2 + v77 + 4);
        goto LABEL_124;
      }

      if (v78 < v73)
      {
        goto LABEL_130;
      }

      v79 = *(a2 + v77 + 4);
      if (v74 < v79)
      {
LABEL_124:
        v76 += 2;
        v80 = (a2 + v77);
        *(v80 - 2) = v78;
        *(v80 - 1) = v79;
        v77 += 8;
        if (!v77)
        {
          v76 = a2;
          goto LABEL_130;
        }

        continue;
      }

      break;
    }

    v76 = (a2 + v77);
LABEL_130:
    *(v76 - 2) = v73;
    *(v76 - 1) = v74;
LABEL_131:
    v68 -= 8;
    v67 = v69;
    if (v69 != a4)
    {
      continue;
    }

    break;
  }
}