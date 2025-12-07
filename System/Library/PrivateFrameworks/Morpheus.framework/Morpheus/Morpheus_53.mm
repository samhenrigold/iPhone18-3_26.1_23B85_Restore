unsigned __int16 *mlx::core::quantize<mlx::core::_MLX_BFloat16,unsigned char>(unsigned __int16 *result, uint64_t a2, uint64_t a3, uint64_t a4, __int32 a5, int a6, unint64_t a7, int8x8_t a8)
{
  if (a5 == 3)
  {
    v8 = 8;
  }

  else if (a5 == 6)
  {
    v8 = 4;
  }

  else
  {
    v8 = 32 / a5;
  }

  if (a6 <= a7)
  {
    v9 = 0;
    a8.i32[0] = a5;
    v11 = vcnt_s8(a8);
    v10 = ~(-1 << a5);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = a7 / a6;
    if (v11.i32[0] == 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = 3;
    }

    v14 = v13 * a6 / v8;
    v15 = (a6 / v8);
    do
    {
      if (a6 < 1)
      {
        v17 = INFINITY;
        v16 = -INFINITY;
      }

      else
      {
        v16 = -INFINITY;
        v17 = INFINITY;
        v18 = a6;
        v19 = result;
        do
        {
          v20 = *v19++;
          LODWORD(v21) = v20 << 16;
          if (v16 < COERCE_FLOAT(v20 << 16))
          {
            v16 = v21;
          }

          if (v17 > v21)
          {
            v17 = v21;
          }

          --v18;
        }

        while (v18);
      }

      v22 = fabsf(v17);
      v23 = fabsf(v16);
      v24 = (v16 - v17) / v10;
      if (v24 < 0.0000001)
      {
        v24 = 0.0000001;
      }

      v25 = v22 <= v23;
      if (v22 <= v23)
      {
        v26 = -v24;
      }

      else
      {
        v26 = v24;
      }

      if (v25)
      {
        v17 = v16;
      }

      v27 = rintf(v17 / v26);
      v28 = v27 == 0.0;
      if (v27 == 0.0)
      {
        v29 = v26;
      }

      else
      {
        v29 = v17 / v27;
      }

      if (v28)
      {
        v17 = 0.0;
      }

      if (v15 >= 1)
      {
        v30 = 0;
        v31 = a2 + v9 * v14;
        v32 = result;
        do
        {
          if (v8 < 1)
          {
            v34 = 0;
          }

          else
          {
            v33 = 0;
            v34 = 0;
            v35 = v8;
            v36 = v32;
            do
            {
              v37 = *v36++;
              v38 = rintf((COERCE_FLOAT(v37 << 16) - v17) / v29);
              if (v38 < 0.0)
              {
                v38 = 0.0;
              }

              if (v38 > v10)
              {
                v38 = ~(-1 << a5);
              }

              v34 |= v38 << v33;
              v33 += a5;
              --v35;
            }

            while (v35);
          }

          if (v11.i32[0] == 1)
          {
            *(v31 + v30) = v34;
          }

          else
          {
            v39 = v31 + 3 * v30;
            *v39 = v34;
            *(v39 + 2) = BYTE2(v34);
          }

          ++v30;
          v32 += v8;
        }

        while (v30 != v15);
      }

      *(a3 + 2 * v9) = (LODWORD(v29) + (HIWORD(LODWORD(v29)) & 1u) + 0x7FFF) >> 16;
      *(a4 + 2 * v9++) = (LODWORD(v17) + (HIWORD(LODWORD(v17)) & 1u) + 0x7FFF) >> 16;
      result += a6;
    }

    while (v9 < v12);
  }

  return result;
}

float *mlx::core::quantize<float,unsigned int>(float *result, uint64_t a2, uint64_t a3, uint64_t a4, __int32 a5, int a6, unint64_t a7, int8x8_t a8, float a9)
{
  if (a5 == 3)
  {
    v9 = 8;
  }

  else if (a5 == 6)
  {
    v9 = 4;
  }

  else
  {
    v9 = 32 / a5;
  }

  if (a6 <= a7)
  {
    v10 = 0;
    a8.i32[0] = a5;
    LOWORD(a9) = vaddlv_u8(vcnt_s8(a8));
    v11 = ~(-1 << a5);
    v12 = a7 / a6;
    if (LODWORD(a9) == 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = 3;
    }

    v14 = v13 * a6 / v9;
    v15 = (a6 / v9);
    do
    {
      if (a6 < 1)
      {
        v17 = INFINITY;
        v16 = -INFINITY;
      }

      else
      {
        v16 = -INFINITY;
        v17 = INFINITY;
        v18 = a6;
        v19 = result;
        do
        {
          v20 = *v19++;
          v21 = v20;
          if (v16 < v20)
          {
            v16 = v21;
          }

          if (v21 < v17)
          {
            v17 = v21;
          }

          --v18;
        }

        while (v18);
      }

      v22 = fabsf(v17);
      v23 = fabsf(v16);
      v24 = (v16 - v17) / v11;
      if (v24 < 0.0000001)
      {
        v24 = 0.0000001;
      }

      v25 = v22 <= v23;
      if (v22 <= v23)
      {
        v26 = -v24;
      }

      else
      {
        v26 = v24;
      }

      if (!v25)
      {
        v16 = v17;
      }

      v27 = rintf(v16 / v26);
      v28 = v27 == 0.0;
      if (v27 == 0.0)
      {
        v29 = v26;
      }

      else
      {
        v29 = v16 / v27;
      }

      if (v28)
      {
        v16 = 0.0;
      }

      if (v15 >= 1)
      {
        v30 = 0;
        v31 = a2 + 4 * v10 * v14;
        v32 = result;
        do
        {
          if (v9 < 1)
          {
            v34 = 0;
          }

          else
          {
            v33 = 0;
            v34 = 0;
            v35 = v9;
            v36 = v32;
            do
            {
              v37 = *v36++;
              v38 = rintf((v37 - v16) / v29);
              if (v38 < 0.0)
              {
                v38 = 0.0;
              }

              if (v38 > v11)
              {
                v38 = ~(-1 << a5);
              }

              v34 |= v38 << v33;
              v33 += a5;
              --v35;
            }

            while (v35);
          }

          if (LODWORD(a9) == 1)
          {
            *(v31 + 4 * v30) = v34;
          }

          else
          {
            v39 = v31 + 12 * v30;
            *v39 = v34;
            *(v39 + 4) = vand_s8(vshl_u32(vdup_n_s32(v34), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL);
          }

          ++v30;
          v32 += v9;
        }

        while (v30 != v15);
      }

      *(a3 + 4 * v10) = v29;
      *(a4 + 4 * v10++) = v16;
      result += a6;
    }

    while (v10 < v12);
  }

  return result;
}

float *mlx::core::quantize<float,unsigned char>(float *result, uint64_t a2, uint64_t a3, uint64_t a4, __int32 a5, int a6, unint64_t a7, int8x8_t a8, float a9)
{
  if (a5 == 3)
  {
    v9 = 8;
  }

  else if (a5 == 6)
  {
    v9 = 4;
  }

  else
  {
    v9 = 32 / a5;
  }

  if (a6 <= a7)
  {
    v10 = 0;
    a8.i32[0] = a5;
    LOWORD(a9) = vaddlv_u8(vcnt_s8(a8));
    v11 = ~(-1 << a5);
    v12 = a7 / a6;
    if (LODWORD(a9) == 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = 3;
    }

    v14 = v13 * a6 / v9;
    v15 = (a6 / v9);
    do
    {
      if (a6 < 1)
      {
        v17 = INFINITY;
        v16 = -INFINITY;
      }

      else
      {
        v16 = -INFINITY;
        v17 = INFINITY;
        v18 = a6;
        v19 = result;
        do
        {
          v20 = *v19++;
          v21 = v20;
          if (v16 < v20)
          {
            v16 = v21;
          }

          if (v21 < v17)
          {
            v17 = v21;
          }

          --v18;
        }

        while (v18);
      }

      v22 = fabsf(v17);
      v23 = fabsf(v16);
      v24 = (v16 - v17) / v11;
      if (v24 < 0.0000001)
      {
        v24 = 0.0000001;
      }

      v25 = v22 <= v23;
      if (v22 <= v23)
      {
        v26 = -v24;
      }

      else
      {
        v26 = v24;
      }

      if (!v25)
      {
        v16 = v17;
      }

      v27 = rintf(v16 / v26);
      v28 = v27 == 0.0;
      if (v27 == 0.0)
      {
        v29 = v26;
      }

      else
      {
        v29 = v16 / v27;
      }

      if (v28)
      {
        v16 = 0.0;
      }

      if (v15 >= 1)
      {
        v30 = 0;
        v31 = a2 + v10 * v14;
        v32 = result;
        do
        {
          if (v9 < 1)
          {
            v34 = 0;
          }

          else
          {
            v33 = 0;
            v34 = 0;
            v35 = v9;
            v36 = v32;
            do
            {
              v37 = *v36++;
              v38 = rintf((v37 - v16) / v29);
              if (v38 < 0.0)
              {
                v38 = 0.0;
              }

              if (v38 > v11)
              {
                v38 = ~(-1 << a5);
              }

              v34 |= v38 << v33;
              v33 += a5;
              --v35;
            }

            while (v35);
          }

          if (LODWORD(a9) == 1)
          {
            *(v31 + v30) = v34;
          }

          else
          {
            v39 = v31 + 3 * v30;
            *v39 = v34;
            *(v39 + 2) = BYTE2(v34);
          }

          ++v30;
          v32 += v9;
        }

        while (v30 != v15);
      }

      *(a3 + 4 * v10) = v29;
      *(a4 + 4 * v10++) = v16;
      result += a6;
    }

    while (v10 < v12);
  }

  return result;
}

void *std::__function::__func<std::__bind<mlx::core::fast::AffineQuantize::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1>,std::allocator<std::__bind<mlx::core::fast::AffineQuantize::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF6FA0;
  v2 = (a1 + 3);
  mlx::core::array::~array((a1 + 7));
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<mlx::core::fast::AffineQuantize::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1>,std::allocator<std::__bind<mlx::core::fast::AffineQuantize::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF6FA0;
  v2 = (a1 + 3);
  mlx::core::array::~array((a1 + 7));
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<mlx::core::fast::AffineQuantize::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1>,std::allocator<std::__bind<mlx::core::fast::AffineQuantize::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BF6FA0;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  *(a2 + 24) = result[3];
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = result[6];
  *(a2 + 40) = result[5];
  *(a2 + 48) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = result[8];
  *(a2 + 56) = result[7];
  *(a2 + 64) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 72) = result[9];
  *(a2 + 81) = 0;
  *(a2 + 84) = 0;
  return result;
}

void std::__function::__func<std::__bind<mlx::core::fast::AffineQuantize::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1>,std::allocator<std::__bind<mlx::core::fast::AffineQuantize::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 56));
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<mlx::core::fast::AffineQuantize::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1>,std::allocator<std::__bind<mlx::core::fast::AffineQuantize::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 56));
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::fast::AffineQuantize::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1>,std::allocator<std::__bind<mlx::core::fast::AffineQuantize::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::SVD::eval_cpu(uint64_t a1, mlx::core::array **a2, int ****a3)
{
  v4 = *a2;
  v5 = *(**a2 + 56);
  if (v5 != 11)
  {
    if (v5 == 10)
    {
      v6 = *(a1 + 8);
      v7 = *(a1 + 16);
      v9 = *(a1 + 20);

      mlx::core::svd_impl<float>(v4, a3, v9, v6, v7);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[SVD::eval_cpu] only supports float32 or float64.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v13 = *(a1 + 20);

  mlx::core::svd_impl<double>(v4, a3, v13, v10, v11);
}

void mlx::core::svd_impl<float>(mlx::core::array *a1, int ****a2, int a3, uint64_t a4, unsigned int a5)
{
  v25[4] = *MEMORY[0x277D85DE8];
  v7 = **a1;
  v8 = *(*a1 + 8);
  if ((v8 - v7) > 4)
  {
    v21 = 0;
    v22 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v7, v8, (v8 - v7) >> 2);
    v12 = *(*a1 + 56);
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    mlx::core::array::array(&v23, &__p, v12 & 0xFFFFFFFFFFLL);
    v17 = v18;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v17);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    if (__p)
    {
      v21 = __p;
      operator delete(__p);
    }

    if ((*(*a1 + 168) & 2) != 0)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    mlx::core::copy(a1, &v23, v13, a4, a5);
    mlx::core::cpu::get_command_encoder(a4, a5);
    v14 = *a2;
    if (a3)
    {
      v15 = mlx::core::allocator::malloc((*(*v14 + 60) * (*v14)[6]));
      v25[0] = &unk_286BE3468;
      v25[1] = mlx::core::allocator::free;
      v25[3] = v25;
      mlx::core::array::set_data(v14, v15, v25);
    }

    v16 = mlx::core::allocator::malloc((*(*v14 + 60) * (*v14)[6]));
    v24[0] = &unk_286BE3468;
    v24[1] = mlx::core::allocator::free;
    v24[3] = v24;
    mlx::core::array::set_data(v14, v16, v24);
  }

  std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
}

void sub_25A54CAB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](va);
  mlx::core::array::~array(&a27);
  _Unwind_Resume(a1);
}

void mlx::core::svd_impl<double>(mlx::core::array *a1, int ****a2, int a3, uint64_t a4, unsigned int a5)
{
  v25[4] = *MEMORY[0x277D85DE8];
  v7 = **a1;
  v8 = *(*a1 + 8);
  if ((v8 - v7) > 4)
  {
    v21 = 0;
    v22 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v7, v8, (v8 - v7) >> 2);
    v12 = *(*a1 + 56);
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    mlx::core::array::array(&v23, &__p, v12 & 0xFFFFFFFFFFLL);
    v17 = v18;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v17);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    if (__p)
    {
      v21 = __p;
      operator delete(__p);
    }

    if ((*(*a1 + 168) & 2) != 0)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    mlx::core::copy(a1, &v23, v13, a4, a5);
    mlx::core::cpu::get_command_encoder(a4, a5);
    v14 = *a2;
    if (a3)
    {
      v15 = mlx::core::allocator::malloc((*(*v14 + 60) * (*v14)[6]));
      v25[0] = &unk_286BE3468;
      v25[1] = mlx::core::allocator::free;
      v25[3] = v25;
      mlx::core::array::set_data(v14, v15, v25);
    }

    v16 = mlx::core::allocator::malloc((*(*v14 + 60) * (*v14)[6]));
    v24[0] = &unk_286BE3468;
    v24[1] = mlx::core::allocator::free;
    v24[3] = v24;
    mlx::core::array::set_data(v14, v16, v24);
  }

  std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
}

void sub_25A54CECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](va);
  mlx::core::array::~array(&a27);
  _Unwind_Resume(a1);
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::svd_impl<float>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, __int128 *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = (*(a1 + 10) + 1) % 10;
  *(a1 + 10) = v3;
  v4 = a2[1];
  v10 = *a2;
  v11 = v4;
  *v12 = a2[2];
  *&v12[16] = *(a2 + 6);
  v5 = mlx::core::scheduler::scheduler(a1);
  if (v3)
  {
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::svd_impl<float>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v10);
  }

  mlx::core::scheduler::Scheduler::notify_new_task(v5);
  *&v8[0] = *a1;
  DWORD2(v8[0]) = *(a1 + 2);
  v8[1] = v10;
  v8[2] = v11;
  v9[0] = *v12;
  *(v9 + 9) = *&v12[9];
  v7 = mlx::core::scheduler::scheduler(v6);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::svd_impl<float>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::svd_impl<float>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(*(v7[1] + 8 * *a1), v8);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::svd_impl<float>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::svd_impl<float>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::svd_impl<float>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::svd_impl<float>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(&a1[1], a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A54D138(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::svd_impl<float>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::svd_impl<float>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(unint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = 16 * (v4 - v3) - 1;
  if (v4 == v3)
  {
    v5 = 0;
  }

  if (v5 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v3 = a1[1];
    v4 = a1[2];
  }

  if (v4 == v3)
  {
    v7 = 0;
  }

  else
  {
    v6 = a1[5] + a1[4];
    v7 = *(v3 + ((v6 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v6 & 0x7F);
  }

  *(v7 + 24) = 0;
  operator new();
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8svd_implIfEEvRKNS3_5arrayERNS_6vectorIS8_NS_9allocatorIS8_EEEEbNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSC_ISN_EEFvvEE7__cloneEPNS0_6__baseISP_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF7110;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8svd_implIfEEvRKNS3_5arrayERNS_6vectorIS8_NS_9allocatorIS8_EEEEbNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSC_ISN_EEFvvEEclEv(uint64_t a1)
{
  mlx::core::svd_impl<float>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1}::operator()((a1 + 24));
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8svd_implIfEEvRKNS3_5arrayERNS_6vectorIS8_NS_9allocatorIS8_EEEEbNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSC_ISN_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::svd_impl<float>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t *a1)
{
  v26[4] = *MEMORY[0x277D85DE8];
  v19 = *(a1 + 9);
  v20 = v19;
  v2 = *(a1 + 8);
  v17 = 0;
  v18 = v2;
  v16 = 0;
  v3 = mlx::core::allocator::malloc((48 * *(a1 + 10)));
  v24[0] = &unk_286BE3468;
  v24[1] = mlx::core::allocator::free;
  v24[3] = v24;
  v25 = v3;
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::__value_func[abi:ne200100](v26, v24);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](v24);
  v15 = 0;
  mlx::core::allocator::Buffer::raw_ptr(&v25);
  sgesvdx_NEWLAPACK();
  v12 = 0.0;
  v4 = mlx::core::allocator::malloc((4 * 0.0));
  v21[0] = &unk_286BE3468;
  v21[1] = mlx::core::allocator::free;
  v21[3] = v21;
  v22 = v4;
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::__value_func[abi:ne200100](&v23, v21);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](v21);
  if (a1[6])
  {
    v5 = 0;
    do
    {
      mlx::core::allocator::Buffer::raw_ptr(&v22);
      mlx::core::allocator::Buffer::raw_ptr(&v25);
      sgesvdx_NEWLAPACK();
      if (v17 != *(a1 + 10))
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v13);
        v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "svd_impl: expected ", 19);
        v7 = MEMORY[0x25F851360](v6, *(a1 + 10));
        v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " singular values, but ", 22);
        v9 = MEMORY[0x25F851360](v8, v17);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " were computed.", 15);
        exception = __cxa_allocate_exception(0x10uLL);
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v13, v11);
        MEMORY[0x25F851100](exception, v11);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      ++v5;
    }

    while (a1[6] > v5);
  }

  mlx::core::array::Data::~Data(&v22);
  mlx::core::array::Data::~Data(&v25);
}

void sub_25A54D8BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32)
{
  if (*(v34 - 185) < 0)
  {
    operator delete(*(v34 - 208));
    if ((v33 & 1) == 0)
    {
LABEL_6:
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a32);
      mlx::core::array::Data::~Data((v34 - 136));
      _Unwind_Resume(a1);
    }
  }

  else if (!v33)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v32);
  goto LABEL_6;
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::svd_impl<float>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::svd_impl<float>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1], a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A54DA44(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::svd_impl<float>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1}>>(unint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = 16 * (v4 - v3) - 1;
  if (v4 == v3)
  {
    v5 = 0;
  }

  if (v5 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v3 = a1[1];
    v4 = a1[2];
  }

  if (v4 == v3)
  {
    v7 = 0;
  }

  else
  {
    v6 = a1[5] + a1[4];
    v7 = *(v3 + ((v6 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v6 & 0x7F);
  }

  *(v7 + 24) = 0;
  operator new();
}

__n128 std::__function::__func<std::__bind<void mlx::core::svd_impl<float>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::svd_impl<float>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF7190;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 65) = 0;
  *(a2 + 68) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::svd_impl<float>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::svd_impl<float>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::svd_impl<double>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, __int128 *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = (*(a1 + 10) + 1) % 10;
  *(a1 + 10) = v3;
  v4 = a2[1];
  v10 = *a2;
  v11 = v4;
  *v12 = a2[2];
  *&v12[16] = *(a2 + 6);
  v5 = mlx::core::scheduler::scheduler(a1);
  if (v3)
  {
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::svd_impl<double>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v10);
  }

  mlx::core::scheduler::Scheduler::notify_new_task(v5);
  *&v8[0] = *a1;
  DWORD2(v8[0]) = *(a1 + 2);
  v8[1] = v10;
  v8[2] = v11;
  v9[0] = *v12;
  *(v9 + 9) = *&v12[9];
  v7 = mlx::core::scheduler::scheduler(v6);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::svd_impl<double>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::svd_impl<double>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(*(v7[1] + 8 * *a1), v8);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::svd_impl<double>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::svd_impl<double>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::svd_impl<double>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::svd_impl<double>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(&a1[1], a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A54DEB0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::svd_impl<double>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::svd_impl<double>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(unint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = 16 * (v4 - v3) - 1;
  if (v4 == v3)
  {
    v5 = 0;
  }

  if (v5 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v3 = a1[1];
    v4 = a1[2];
  }

  if (v4 == v3)
  {
    v7 = 0;
  }

  else
  {
    v6 = a1[5] + a1[4];
    v7 = *(v3 + ((v6 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v6 & 0x7F);
  }

  *(v7 + 24) = 0;
  operator new();
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8svd_implIdEEvRKNS3_5arrayERNS_6vectorIS8_NS_9allocatorIS8_EEEEbNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSC_ISN_EEFvvEE7__cloneEPNS0_6__baseISP_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF7288;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8svd_implIdEEvRKNS3_5arrayERNS_6vectorIS8_NS_9allocatorIS8_EEEEbNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSC_ISN_EEFvvEEclEv(uint64_t a1)
{
  mlx::core::svd_impl<double>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1}::operator()((a1 + 24));
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8svd_implIdEEvRKNS3_5arrayERNS_6vectorIS8_NS_9allocatorIS8_EEEEbNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSC_ISN_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::svd_impl<double>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t *a1)
{
  v26[4] = *MEMORY[0x277D85DE8];
  v19 = *(a1 + 9);
  v20 = v19;
  v2 = *(a1 + 8);
  v17 = 0;
  v18 = v2;
  v16 = 0;
  v3 = mlx::core::allocator::malloc((48 * *(a1 + 10)));
  v24[0] = &unk_286BE3468;
  v24[1] = mlx::core::allocator::free;
  v24[3] = v24;
  v25 = v3;
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::__value_func[abi:ne200100](v26, v24);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](v24);
  v15 = 0;
  mlx::core::allocator::Buffer::raw_ptr(&v25);
  dgesvdx_NEWLAPACK();
  v12 = 0.0;
  v4 = mlx::core::allocator::malloc((8 * 0.0));
  v21[0] = &unk_286BE3468;
  v21[1] = mlx::core::allocator::free;
  v21[3] = v21;
  v22 = v4;
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::__value_func[abi:ne200100](&v23, v21);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](v21);
  if (a1[6])
  {
    v5 = 0;
    do
    {
      mlx::core::allocator::Buffer::raw_ptr(&v22);
      mlx::core::allocator::Buffer::raw_ptr(&v25);
      dgesvdx_NEWLAPACK();
      if (v17 != *(a1 + 10))
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v13);
        v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "svd_impl: expected ", 19);
        v7 = MEMORY[0x25F851360](v6, *(a1 + 10));
        v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " singular values, but ", 22);
        v9 = MEMORY[0x25F851360](v8, v17);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " were computed.", 15);
        exception = __cxa_allocate_exception(0x10uLL);
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v13, v11);
        MEMORY[0x25F851100](exception, v11);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      ++v5;
    }

    while (a1[6] > v5);
  }

  mlx::core::array::Data::~Data(&v22);
  mlx::core::array::Data::~Data(&v25);
}

void sub_25A54E634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33)
{
  if (*(v35 - 185) < 0)
  {
    operator delete(*(v35 - 208));
    if ((v34 & 1) == 0)
    {
LABEL_6:
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a33);
      mlx::core::array::Data::~Data((v35 - 136));
      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v33);
  goto LABEL_6;
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::svd_impl<double>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::svd_impl<double>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1], a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A54E7BC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::svd_impl<double>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1}>>(unint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = 16 * (v4 - v3) - 1;
  if (v4 == v3)
  {
    v5 = 0;
  }

  if (v5 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v3 = a1[1];
    v4 = a1[2];
  }

  if (v4 == v3)
  {
    v7 = 0;
  }

  else
  {
    v6 = a1[5] + a1[4];
    v7 = *(v3 + ((v6 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v6 & 0x7F);
  }

  *(v7 + 24) = 0;
  operator new();
}

__n128 std::__function::__func<std::__bind<void mlx::core::svd_impl<double>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::svd_impl<double>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF7308;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 65) = 0;
  *(a2 + 68) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::svd_impl<double>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::svd_impl<double>(mlx::core::array const&,std::vector<mlx::core::array> &,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::QRF::eval_cpu(uint64_t a1, const void ****a2, int ****a3)
{
  v4 = *a2;
  v5 = *(**a2 + 14);
  if (v5 != 11)
  {
    if (v5 == 10)
    {
      v6 = *a3;
      v7 = *(a1 + 8);
      v8 = *(a1 + 16);
      v9 = *a3 + 2;

      mlx::core::qrf_impl<float>(v4, v6, v9, v7, v8);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[QRF::eval_cpu] only supports float32 or float64.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v10 = *a3;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *a3 + 2;

  mlx::core::qrf_impl<double>(v4, v10, v13, v11, v12);
}

void mlx::core::qrf_impl<float>(const void ***a1, int ***a2, int ***a3, uint64_t a4, unsigned int a5)
{
  v31[4] = *MEMORY[0x277D85DE8];
  v5 = **a1;
  v6 = (*a1)[1];
  if ((v6 - v5) > 4)
  {
    v9 = *(v6 - 8);
    v8 = *(v6 - 4);
    v10 = (*a1)[6];
    v28 = 0;
    v29 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v5, v6, (v6 - v5) >> 2);
    v11 = (*a1)[7];
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    mlx::core::array::array(&v30, &__p, v11 & 0xFFFFFFFFFFLL);
    v12 = v8 * v9;
    v20 = v25;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v20);
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    v13 = v10 / v12;
    if (__p)
    {
      v28 = __p;
      operator delete(__p);
    }

    v14 = *(v30 + 168);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v22, *(v30 + 24), *(v30 + 32), (*(v30 + 32) - *(v30 + 24)) >> 3);
    v15 = v30;
    v16 = v22 + 2 * (*(v30 + 8) - *v30);
    *(v16 - 2) = 1;
    *(v16 - 1) = v9;
    v17 = mlx::core::allocator::malloc((*(v15 + 60) * *(v15 + 48)));
    v18 = *(v30 + 48);
    v19 = *(v30 + 56);
    memset(v21, 0, sizeof(v21));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v21, v22, v23, (v23 - v22) >> 3);
    v31[0] = &unk_286BE3468;
    v31[1] = mlx::core::allocator::free;
    v31[3] = v31;
    mlx::core::array::set_data(&v30, v17, BYTE4(v19) * v18, v21, v14 & 0xF9 | (4 * (v13 == 1)), v31);
  }

  std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
}

void sub_25A54EEF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  mlx::core::array::~array(&a13);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::qrf_impl<double>(const void ***a1, int ***a2, int ***a3, uint64_t a4, unsigned int a5)
{
  v31[4] = *MEMORY[0x277D85DE8];
  v5 = **a1;
  v6 = (*a1)[1];
  if ((v6 - v5) > 4)
  {
    v9 = *(v6 - 8);
    v8 = *(v6 - 4);
    v10 = (*a1)[6];
    v28 = 0;
    v29 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v5, v6, (v6 - v5) >> 2);
    v11 = (*a1)[7];
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    mlx::core::array::array(&v30, &__p, v11 & 0xFFFFFFFFFFLL);
    v12 = v8 * v9;
    v20 = v25;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v20);
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    v13 = v10 / v12;
    if (__p)
    {
      v28 = __p;
      operator delete(__p);
    }

    v14 = *(v30 + 168);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v22, *(v30 + 24), *(v30 + 32), (*(v30 + 32) - *(v30 + 24)) >> 3);
    v15 = v30;
    v16 = v22 + 2 * (*(v30 + 8) - *v30);
    *(v16 - 2) = 1;
    *(v16 - 1) = v9;
    v17 = mlx::core::allocator::malloc((*(v15 + 60) * *(v15 + 48)));
    v18 = *(v30 + 48);
    v19 = *(v30 + 56);
    memset(v21, 0, sizeof(v21));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v21, v22, v23, (v23 - v22) >> 3);
    v31[0] = &unk_286BE3468;
    v31[1] = mlx::core::allocator::free;
    v31[3] = v31;
    mlx::core::array::set_data(&v30, v17, BYTE4(v19) * v18, v21, v14 & 0xF9 | (4 * (v13 == 1)), v31);
  }

  std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
}

void sub_25A54F33C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  mlx::core::array::~array(&a13);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::qrf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, __int128 *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = (*(a1 + 10) + 1) % 10;
  *(a1 + 10) = v3;
  v4 = a2[1];
  v10 = *a2;
  v11 = v4;
  v12 = a2[2];
  v5 = mlx::core::scheduler::scheduler(a1);
  if (v3)
  {
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::qrf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v10);
  }

  mlx::core::scheduler::Scheduler::notify_new_task(v5);
  *&v8[0] = *a1;
  DWORD2(v8[0]) = *(a1 + 2);
  v8[1] = v10;
  v8[2] = v11;
  v8[3] = v12;
  v9 = v13;
  v7 = mlx::core::scheduler::scheduler(v6);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::qrf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::qrf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(*(v7[1] + 8 * *a1), v8);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::qrf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::qrf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::qrf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::qrf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(&a1[1], a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A54F5BC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::qrf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::qrf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(unint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = 16 * (v4 - v3) - 1;
  if (v4 == v3)
  {
    v5 = 0;
  }

  if (v5 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v3 = a1[1];
    v4 = a1[2];
  }

  if (v4 == v3)
  {
    v7 = 0;
  }

  else
  {
    v6 = a1[5] + a1[4];
    v7 = *(v3 + ((v6 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v6 & 0x7F);
  }

  *(v7 + 24) = 0;
  operator new();
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8qrf_implIfEEvRKNS3_5arrayERS8_SB_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF7478;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8qrf_implIfEEvRKNS3_5arrayERS8_SB_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEEclEv(uint64_t a1)
{
  v1 = mlx::core::qrf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}::operator()((a1 + 24));
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8qrf_implIfEEvRKNS3_5arrayERS8_SB_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mlx::core::qrf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t *a1)
{
  v3 = a1 + 3;
  v2 = *(a1 + 6);
  v5 = a1 + 7;
  v4 = *(a1 + 7);
  if (v4 >= v2)
  {
    v6 = v2;
  }

  else
  {
    v6 = v4;
  }

  v49 = v6;
  v48 = mlx::core::allocator::malloc((4 * v6 * a1[5]));
  v47 = 0.0;
  v45 = 0;
  sgeqrf_NEWLAPACK();
  v46 = 0.0;
  v7 = mlx::core::allocator::malloc((4 * 0.0));
  v44 = v7;
  if (v3[2])
  {
    v8 = 0;
    v9 = 0;
    do
    {
      mlx::core::allocator::Buffer::raw_ptr(&v48);
      mlx::core::allocator::Buffer::raw_ptr(&v44);
      sgeqrf_NEWLAPACK();
      ++v9;
      v8 += v6;
    }

    while (a1[5] > v9);
    v7 = v44;
  }

  mlx::core::allocator::free(v7);
  v10 = a1[5];
  if (v10)
  {
    v11 = 0;
    for (i = 0; i != v10; ++i)
    {
      if (v6 >= 1)
      {
        v13 = 0;
        v14 = *v5;
        v15 = v14;
        v16 = v14 * v11;
        v17 = v14 + 1;
        v18 = v14 * i;
        v19 = v14 * v11;
        do
        {
          if (v13)
          {
            v20 = a1[2];
            v21 = v13;
            v22 = v19;
            do
            {
              *(v20 + 4 * v22++) = 0;
              --v21;
            }

            while (v21);
          }

          if (v13 < v15)
          {
            v23 = *a1;
            v24 = *(a1 + 6);
            v25 = a1[2];
            v26 = v13 + v24 * v18;
            v27 = v14;
            v28 = v16;
            do
            {
              *(v25 + 4 * v28++) = *(v23 + 4 * v26);
              v26 += v24;
              --v27;
            }

            while (v27);
          }

          ++v13;
          v19 += v15;
          v16 += v17;
          ++v18;
          --v14;
        }

        while (v13 != v6);
      }

      v11 += v6;
    }
  }

  v46 = -1;
  sorgqr_NEWLAPACK();
  v46 = v47;
  v44 = mlx::core::allocator::malloc((4 * v47));
  if (a1[5])
  {
    v29 = 0;
    do
    {
      mlx::core::allocator::Buffer::raw_ptr(&v48);
      mlx::core::allocator::Buffer::raw_ptr(&v44);
      sorgqr_NEWLAPACK();
      ++v29;
      v30 = a1[5];
    }

    while (v30 > v29);
    if (v30)
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = *(a1 + 6);
      v35 = v49;
      v36 = v34 * v49;
      do
      {
        if (v34 >= 1)
        {
          v37 = 0;
          v38 = v32;
          do
          {
            if (v35 >= 1)
            {
              v39 = *a1;
              v40 = (a1[1] + 4 * v38);
              v41 = v37 + v31 * *(a1 + 7);
              v42 = v35;
              do
              {
                *v40++ = *(v39 + 4 * v41);
                v41 += v34;
                --v42;
              }

              while (v42);
            }

            ++v37;
            v38 += v35;
          }

          while (v37 != v34);
        }

        ++v33;
        v32 += v36;
        v31 += v34;
      }

      while (v33 != v30);
    }
  }

  mlx::core::allocator::free(v44);
  return mlx::core::allocator::free(v48);
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::qrf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::qrf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1], a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A54FCA8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::qrf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>(unint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = 16 * (v4 - v3) - 1;
  if (v4 == v3)
  {
    v5 = 0;
  }

  if (v5 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v3 = a1[1];
    v4 = a1[2];
  }

  if (v4 == v3)
  {
    v7 = 0;
  }

  else
  {
    v6 = a1[5] + a1[4];
    v7 = *(v3 + ((v6 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v6 & 0x7F);
  }

  *(v7 + 24) = 0;
  operator new();
}

__n128 std::__function::__func<std::__bind<void mlx::core::qrf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::qrf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF74F8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 57) = 0;
  *(a2 + 60) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::qrf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::qrf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::qrf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, __int128 *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = (*(a1 + 10) + 1) % 10;
  *(a1 + 10) = v3;
  v4 = a2[1];
  v10 = *a2;
  v11 = v4;
  v12 = a2[2];
  v5 = mlx::core::scheduler::scheduler(a1);
  if (v3)
  {
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::qrf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v10);
  }

  mlx::core::scheduler::Scheduler::notify_new_task(v5);
  *&v8[0] = *a1;
  DWORD2(v8[0]) = *(a1 + 2);
  v8[1] = v10;
  v8[2] = v11;
  v8[3] = v12;
  v9 = v13;
  v7 = mlx::core::scheduler::scheduler(v6);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::qrf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::qrf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(*(v7[1] + 8 * *a1), v8);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::qrf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::qrf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::qrf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::qrf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(&a1[1], a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A55011C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::qrf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::qrf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(unint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = 16 * (v4 - v3) - 1;
  if (v4 == v3)
  {
    v5 = 0;
  }

  if (v5 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v3 = a1[1];
    v4 = a1[2];
  }

  if (v4 == v3)
  {
    v7 = 0;
  }

  else
  {
    v6 = a1[5] + a1[4];
    v7 = *(v3 + ((v6 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v6 & 0x7F);
  }

  *(v7 + 24) = 0;
  operator new();
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8qrf_implIdEEvRKNS3_5arrayERS8_SB_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF75F0;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8qrf_implIdEEvRKNS3_5arrayERS8_SB_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEEclEv(uint64_t a1)
{
  v1 = mlx::core::qrf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}::operator()((a1 + 24));
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8qrf_implIdEEvRKNS3_5arrayERS8_SB_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mlx::core::qrf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t *a1)
{
  v3 = a1 + 3;
  v2 = *(a1 + 6);
  v5 = a1 + 7;
  v4 = *(a1 + 7);
  if (v4 >= v2)
  {
    v6 = v2;
  }

  else
  {
    v6 = v4;
  }

  v50 = v6;
  v7 = mlx::core::allocator::malloc((8 * v6 * a1[5]));
  v48 = 0.0;
  v49 = v7;
  v46 = 0;
  dgeqrf_NEWLAPACK();
  v47 = 0.0;
  v8 = mlx::core::allocator::malloc((8 * 0.0));
  v45 = v8;
  if (v3[2])
  {
    v9 = 0;
    v10 = 0;
    do
    {
      mlx::core::allocator::Buffer::raw_ptr(&v49);
      mlx::core::allocator::Buffer::raw_ptr(&v45);
      dgeqrf_NEWLAPACK();
      ++v10;
      v9 += v6;
    }

    while (a1[5] > v10);
    v8 = v45;
  }

  mlx::core::allocator::free(v8);
  v11 = a1[5];
  if (v11)
  {
    v12 = 0;
    for (i = 0; i != v11; ++i)
    {
      if (v6 >= 1)
      {
        v14 = 0;
        v15 = *v5;
        v16 = v15;
        v17 = v15 * v12;
        v18 = v15 + 1;
        v19 = v15 * i;
        v20 = v15 * v12;
        do
        {
          if (v14)
          {
            v21 = a1[2];
            v22 = v14;
            v23 = v20;
            do
            {
              *(v21 + 8 * v23++) = 0;
              --v22;
            }

            while (v22);
          }

          if (v14 < v16)
          {
            v24 = *a1;
            v25 = *(a1 + 6);
            v26 = a1[2];
            v27 = v14 + v25 * v19;
            v28 = v15;
            v29 = v17;
            do
            {
              *(v26 + 8 * v29++) = *(v24 + 8 * v27);
              v27 += v25;
              --v28;
            }

            while (v28);
          }

          ++v14;
          v20 += v16;
          v17 += v18;
          ++v19;
          --v15;
        }

        while (v14 != v6);
      }

      v12 += v6;
    }
  }

  v47 = -1;
  dorgqr_NEWLAPACK();
  v47 = v48;
  v45 = mlx::core::allocator::malloc((8 * v48));
  if (a1[5])
  {
    v30 = 0;
    do
    {
      mlx::core::allocator::Buffer::raw_ptr(&v49);
      mlx::core::allocator::Buffer::raw_ptr(&v45);
      dorgqr_NEWLAPACK();
      ++v30;
      v31 = a1[5];
    }

    while (v31 > v30);
    if (v31)
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = *(a1 + 6);
      v36 = v50;
      v37 = v35 * v50;
      do
      {
        if (v35 >= 1)
        {
          v38 = 0;
          v39 = v33;
          do
          {
            if (v36 >= 1)
            {
              v40 = *a1;
              v41 = (a1[1] + 8 * v39);
              v42 = v38 + v32 * *(a1 + 7);
              v43 = v36;
              do
              {
                *v41++ = *(v40 + 8 * v42);
                v42 += v35;
                --v43;
              }

              while (v43);
            }

            ++v38;
            v39 += v36;
          }

          while (v38 != v35);
        }

        ++v34;
        v33 += v37;
        v32 += v35;
      }

      while (v34 != v31);
    }
  }

  mlx::core::allocator::free(v45);
  return mlx::core::allocator::free(v49);
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::qrf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::qrf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1], a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A550804(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::qrf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>(unint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = 16 * (v4 - v3) - 1;
  if (v4 == v3)
  {
    v5 = 0;
  }

  if (v5 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v3 = a1[1];
    v4 = a1[2];
  }

  if (v4 == v3)
  {
    v7 = 0;
  }

  else
  {
    v6 = a1[5] + a1[4];
    v7 = *(v3 + ((v6 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v6 & 0x7F);
  }

  *(v7 + 24) = 0;
  operator new();
}

__n128 std::__function::__func<std::__bind<void mlx::core::qrf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::qrf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF7670;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 57) = 0;
  *(a2 + 60) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::qrf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::qrf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::reshape(mlx::core *this, uint64_t **a2, mlx::core::array *a3)
{
  v8[4] = *MEMORY[0x277D85DE8];
  mlx::core::prepare_reshape(this, a2, v6);
  if (v6[0] == 1)
  {
    v5 = mlx::core::allocator::malloc((*(*a2 + 60) * (*a2)[6]));
    v8[0] = &unk_286BE3468;
    v8[1] = mlx::core::allocator::free;
    v8[3] = v8;
    mlx::core::array::set_data(a2, v5, v8);
  }

  mlx::core::shared_buffer_reshape(this, __p, a2);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_25A550BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](va);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::Arange::eval_cpu(uint64_t a1, void *a2, int ***a3)
{
  v5[4] = *MEMORY[0x277D85DE8];
  if (a2[1] == *a2)
  {
    v4 = mlx::core::allocator::malloc((*(*a3 + 60) * (*a3)[6]));
    v5[0] = &unk_286BE3468;
    v5[1] = mlx::core::allocator::free;
    v5[3] = v5;
    mlx::core::array::set_data(a3, v4, v5);
  }

  mlx::core::Arange::eval_cpu();
}

void sub_25A552F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, char a12)
{
  __cxa_free_exception(v13);
  std::mutex::unlock(v12);
  _Unwind_Resume(a1);
}

void mlx::core::AsType::eval_cpu(uint64_t a1, mlx::core::array **a2, mlx::core::array *a3)
{
  if (a2[1] - *a2 != 16)
  {
    mlx::core::AsType::eval_cpu();
  }

  if (*(**a2 + 168))
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *a2;

  mlx::core::copy(v7, a3, v4, v5, v6);
}

void mlx::core::Concatenate::eval_cpu(uint64_t a1, uint64_t ***a2, int ***a3)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = 0;
  v16 = 0;
  LODWORD(v13) = 0;
  std::vector<int>::push_back[abi:ne200100](&v14, &v13);
  v6 = *a2;
  v7 = a2[1];
  while (v6 != v7)
  {
    LODWORD(v13) = mlx::core::array::shape(v6, *(a1 + 20));
    std::vector<int>::push_back[abi:ne200100](&v14, &v13);
    v6 += 2;
  }

  v8 = v15;
  v9 = v14 + 4;
  if (v14 != v15 && v9 != v15)
  {
    v11 = *v14;
    do
    {
      v11 += *v9;
      *v9++ = v11;
    }

    while (v9 != v8);
  }

  v12 = mlx::core::allocator::malloc((*(*a3 + 60) * (*a3)[6]));
  v17[0] = &unk_286BE3468;
  v17[1] = mlx::core::allocator::free;
  v17[3] = v17;
  mlx::core::array::set_data(a3, v12, v17);
}

void sub_25A5533D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Contiguous::eval_cpu(uint64_t a1, uint64_t a2, mlx::core::array *a3)
{
  v3 = *a2;
  if (*(a2 + 8) - *a2 != 16)
  {
    mlx::core::Contiguous::eval_cpu();
  }

  v6 = mlx::core::allocator::allocator(a1);
  if (*(*v6 + 16))(v6, **(*v3 + 136)) <= *(*a3 + 60) * *(*a3 + 48) + 0x4000 && ((*(*v3 + 168) & 2) != 0 || (*(*v3 + 168) & 4) != 0 && (*(a1 + 20)))
  {

    mlx::core::array::copy_shared_buffer(a3, v3);
  }

  else
  {
    v7 = *(a1 + 8);
    v8 = *(a1 + 16);

    mlx::core::copy(v3, a3, 2, v7, v8);
  }
}

void mlx::core::Full::eval_cpu(uint64_t a1, uint64_t a2, mlx::core::array *a3)
{
  v4 = *a2;
  if (*(a2 + 8) - *a2 != 16)
  {
    mlx::core::Full::eval_cpu();
  }

  v5 = *v4;
  if (*(*v4 + 56) != *(*a3 + 56))
  {
    mlx::core::Full::eval_cpu();
  }

  if (*(v5 + 160) == 1)
  {
    v6 = 0;
  }

  else if (*(v5 + 168))
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);

  mlx::core::copy(v4, a3, v6, v7, v8);
}

void mlx::core::Pad::eval_cpu(uint64_t a1, uint64_t **a2, mlx::core::array *a3)
{
  v3 = *a2;
  if (a2[1] - *a2 == 32)
  {
    v5 = v3[2];
    if (*(v5 + 48) == 1)
    {
      v6 = *(v5 + 56);
      if (v6 == *(*v3 + 56) && v6 == *(*a3 + 56))
      {
        mlx::core::copy((v3 + 2), a3, 0, *(a1 + 8), *(a1 + 16));
        v8 = *(a1 + 24);
        v9 = 0;
        v10 = *(a1 + 32) - v8;
        if (v10)
        {
          v11 = v10 >> 2;
          v12 = *(a1 + 48);
          if ((v10 >> 2) <= 1)
          {
            v11 = 1;
          }

          do
          {
            v14 = *v8++;
            v13 = v14;
            if ((v14 & 0x80000000) != 0)
            {
              v13 += (*(*a3 + 8) - **a3) >> 2;
            }

            v15 = *v12++;
            v9 += *(*(*a3 + 24) + 8 * v13) * v15;
            --v11;
          }

          while (v11);
        }

        v16 = *v3;
        __p = 0;
        v21 = 0;
        v22 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v16, *(v16 + 8), (*(v16 + 8) - *v16) >> 2);
        v17 = *(*a3 + 56);
        v19 = 0;
        memset(v18, 0, sizeof(v18));
        mlx::core::array::array(v23, &__p, v17 & 0xFFFFFFFFFFLL);
        v24 = v18;
        std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v24);
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        if (__p)
        {
          v21 = __p;
          operator delete(__p);
        }

        mlx::core::array::copy_shared_buffer(v23, a3, (*a3 + 24), *(*a3 + 168), *(v23[0] + 48), v9);
        mlx::core::copy_inplace(v3, v23, 3, *(a1 + 8), *(a1 + 16));
      }

      mlx::core::Pad::eval_cpu();
    }

    mlx::core::Pad::eval_cpu();
  }

  mlx::core::Pad::eval_cpu();
}

void sub_25A5537AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, uint64_t a17, char a18)
{
  *(v19 - 56) = v18;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v19 - 56));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::RandomBits::eval_cpu(uint64_t a1, void *a2, int ***a3)
{
  v5[42] = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    v4 = mlx::core::allocator::malloc((*(*a3 + 60) * (*a3)[6]));
    v5[0] = &unk_286BE3468;
    v5[1] = mlx::core::allocator::free;
    v5[3] = v5;
    mlx::core::array::set_data(a3, v4, v5);
  }

  mlx::core::RandomBits::eval_cpu();
}

void sub_25A553D0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  __cxa_free_exception(v42);
  std::mutex::unlock(v41);
  mlx::core::cpu::CommandEncoder::dispatch<mlx::core::RandomBits::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>(mlx::core::RandomBits::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0 &&)::{lambda(void)#1}::~dispatch(&a28);
  std::__state<char>::~__state(&a41);
  std::__state<char>::~__state(&a14);
  _Unwind_Resume(a1);
}

void mlx::core::DynamicSlice::eval_cpu(uint64_t a1, mlx::core::array **a2, int ***a3)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v4 = (*a3)[6];
  if (v4)
  {
    v5 = mlx::core::allocator::malloc((*(*a3 + 60) * v4));
    v6[0] = &unk_286BE3468;
    v6[1] = mlx::core::allocator::free;
    v6[3] = v6;
    mlx::core::array::set_data(a3, v5, v6);
  }

  v7[0] = &unk_286BE3468;
  v7[1] = mlx::core::allocator::free;
  v7[3] = v7;
  mlx::core::array::set_data(a3, 0, v7);
}

void sub_25A553FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  mlx::core::array::~array(va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::compute_dynamic_offset(const mlx::core::array *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v135[4] = *MEMORY[0x277D85DE8];
  LODWORD(v107) = 1;
  v104 = 0;
  v105 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v107, &v107 + 1, 1uLL);
  v102 = 0;
  memset(v101, 0, sizeof(v101));
  mlx::core::array::array(&v106, &__p, 0x800000008);
  v125 = v101;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v125);
  if (v102)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v102);
  }

  if (__p)
  {
    v104 = __p;
    operator delete(__p);
  }

  v11 = *(a1 + 1);
  if (!v11 || *(v11 + 8) || (v49 = *(*a1 + 144)) == 0 || *(v49 + 8) || *(*a1 + 60) * *(*a1 + 160) < *(v106 + 60))
  {
    v12 = mlx::core::allocator::malloc(*(v106 + 60));
    v135[0] = &unk_286BE3468;
    v135[1] = mlx::core::allocator::free;
    v135[3] = v135;
    mlx::core::array::set_data(&v106, v12, v135);
  }

  mlx::core::array::copy_shared_buffer(&v106, a1);
  command_encoder = mlx::core::cpu::get_command_encoder(a4, a5);
  v94 = 0;
  v95 = 0;
  v96 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v94, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  v97 = 0;
  v98 = 0;
  v99 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v97, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
  v100 = v106[19];
  v14 = *a1;
  v15 = *(*a1 + 56);
  if (v15 > 4)
  {
    if (v15 <= 6)
    {
      if (v15 != 5)
      {
        goto LABEL_15;
      }

      goto LABEL_36;
    }

    if (v15 != 7)
    {
      if (v15 != 8)
      {
        goto LABEL_25;
      }

      goto LABEL_28;
    }
  }

  else
  {
    if (v15 <= 2)
    {
      if (v15 != 1)
      {
        if (v15 != 2)
        {
LABEL_25:
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Invalid indices type.");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

LABEL_15:
        v16 = *(v14 + 152);
        *(command_encoder + 10) = (*(command_encoder + 10) + 1) % 10;
        v117 = 0;
        v118 = 0;
        v119 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v117, v94, v95, (v95 - v94) >> 3);
        v120 = 0;
        v121 = 0;
        v122 = 0;
        v17 = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v120, v97, v98, (v98 - v97) >> 2);
        v123 = v100;
        v124 = v16;
        if (*(command_encoder + 10))
        {
          v18 = *(mlx::core::scheduler::scheduler(v17)[1] + 8 * *command_encoder);
          std::mutex::lock(v18);
          if (*(v18 + 160) != 1)
          {
            v19 = *(v18 + 72);
            v20 = *(v18 + 80);
            v21 = 16 * (v20 - v19) - 1;
            if (v20 == v19)
            {
              v21 = 0;
            }

            if (v21 == *(v18 + 104) + *(v18 + 96))
            {
              std::deque<std::function<void ()(void)>>::__add_back_capacity((v18 + 64));
              v19 = *(v18 + 72);
              v20 = *(v18 + 80);
            }

            if (v20 == v19)
            {
              v23 = 0;
            }

            else
            {
              v22 = *(v18 + 104) + *(v18 + 96);
              v23 = *(v19 + ((v22 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v22 & 0x7F);
            }

            v125 = 0;
            v126 = 0;
            v127 = 0;
            std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v125, v117, v118, (v118 - v117) >> 3);
            v128 = 0;
            v129 = 0;
            v130 = 0;
            std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v128, v120, v121, (v121 - v120) >> 2);
            v131 = v123;
            v132 = v124;
            *(v23 + 24) = 0;
            operator new();
          }

          v86 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v86, "Cannot enqueue work after stream is stopped.");
          __cxa_throw(v86, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v68 = mlx::core::scheduler::scheduler(v17);
        mlx::core::scheduler::Scheduler::notify_new_task(v68);
        v69 = *command_encoder;
        v108 = *(command_encoder + 2);
        v107 = v69;
        v110 = 0;
        v111 = 0;
        v109 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v109, v117, v118, (v118 - v117) >> 3);
        v112 = 0;
        v113 = 0;
        v114 = 0;
        v70 = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v112, v120, v121, (v121 - v120) >> 2);
        v115 = v123;
        v116 = v124;
        v71 = *(mlx::core::scheduler::scheduler(v70)[1] + 8 * *command_encoder);
        std::mutex::lock(v71);
        if (*(v71 + 160) != 1)
        {
          v72 = *(v71 + 72);
          v73 = *(v71 + 80);
          v74 = 16 * (v73 - v72) - 1;
          if (v73 == v72)
          {
            v74 = 0;
          }

          if (v74 == *(v71 + 104) + *(v71 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v71 + 64));
            v72 = *(v71 + 72);
            v73 = *(v71 + 80);
          }

          if (v73 == v72)
          {
            v76 = 0;
          }

          else
          {
            v75 = *(v71 + 104) + *(v71 + 96);
            v76 = *(v72 + ((v75 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v75 & 0x7F);
          }

          v125 = v107;
          LODWORD(v126) = v108;
          v128 = 0;
          v129 = 0;
          v127 = 0;
          std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v127, v109, v110, (v110 - v109) >> 3);
          v130 = 0;
          v131 = 0;
          v132 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v130, v112, v113, (v113 - v112) >> 2);
          v133 = v115;
          v134 = v116;
          *(v76 + 24) = 0;
          operator new();
        }

        v92 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v92, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v92, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

LABEL_36:
      v33 = *(v14 + 152);
      *(command_encoder + 10) = (*(command_encoder + 10) + 1) % 10;
      v117 = 0;
      v118 = 0;
      v119 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v117, v94, v95, (v95 - v94) >> 3);
      v120 = 0;
      v121 = 0;
      v122 = 0;
      v34 = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v120, v97, v98, (v98 - v97) >> 2);
      v123 = v100;
      v124 = v33;
      if (*(command_encoder + 10))
      {
        v35 = *(mlx::core::scheduler::scheduler(v34)[1] + 8 * *command_encoder);
        std::mutex::lock(v35);
        if (*(v35 + 160) != 1)
        {
          v36 = *(v35 + 72);
          v37 = *(v35 + 80);
          v38 = 16 * (v37 - v36) - 1;
          if (v37 == v36)
          {
            v38 = 0;
          }

          if (v38 == *(v35 + 104) + *(v35 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v35 + 64));
            v36 = *(v35 + 72);
            v37 = *(v35 + 80);
          }

          if (v37 == v36)
          {
            v40 = 0;
          }

          else
          {
            v39 = *(v35 + 104) + *(v35 + 96);
            v40 = *(v36 + ((v39 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v39 & 0x7F);
          }

          v125 = 0;
          v126 = 0;
          v127 = 0;
          std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v125, v117, v118, (v118 - v117) >> 3);
          v128 = 0;
          v129 = 0;
          v130 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v128, v120, v121, (v121 - v120) >> 2);
          v131 = v123;
          v132 = v124;
          *(v40 + 24) = 0;
          operator new();
        }

        v88 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v88, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v88, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v50 = mlx::core::scheduler::scheduler(v34);
      mlx::core::scheduler::Scheduler::notify_new_task(v50);
      v51 = *command_encoder;
      v108 = *(command_encoder + 2);
      v107 = v51;
      v110 = 0;
      v111 = 0;
      v109 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v109, v117, v118, (v118 - v117) >> 3);
      v112 = 0;
      v113 = 0;
      v114 = 0;
      v52 = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v112, v120, v121, (v121 - v120) >> 2);
      v115 = v123;
      v116 = v124;
      v53 = *(mlx::core::scheduler::scheduler(v52)[1] + 8 * *command_encoder);
      std::mutex::lock(v53);
      if (*(v53 + 160) != 1)
      {
        v54 = *(v53 + 72);
        v55 = *(v53 + 80);
        v56 = 16 * (v55 - v54) - 1;
        if (v55 == v54)
        {
          v56 = 0;
        }

        if (v56 == *(v53 + 104) + *(v53 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v53 + 64));
          v54 = *(v53 + 72);
          v55 = *(v53 + 80);
        }

        if (v55 == v54)
        {
          v58 = 0;
        }

        else
        {
          v57 = *(v53 + 104) + *(v53 + 96);
          v58 = *(v54 + ((v57 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v57 & 0x7F);
        }

        v125 = v107;
        LODWORD(v126) = v108;
        v128 = 0;
        v129 = 0;
        v127 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v127, v109, v110, (v110 - v109) >> 3);
        v130 = 0;
        v131 = 0;
        v132 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v130, v112, v113, (v113 - v112) >> 2);
        v133 = v115;
        v134 = v116;
        *(v58 + 24) = 0;
        operator new();
      }

      v90 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v90, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v90, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if (v15 != 3)
    {
LABEL_28:
      v25 = *(v14 + 152);
      *(command_encoder + 10) = (*(command_encoder + 10) + 1) % 10;
      v117 = 0;
      v118 = 0;
      v119 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v117, v94, v95, (v95 - v94) >> 3);
      v120 = 0;
      v121 = 0;
      v122 = 0;
      v26 = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v120, v97, v98, (v98 - v97) >> 2);
      v123 = v100;
      v124 = v25;
      if (*(command_encoder + 10))
      {
        v27 = *(mlx::core::scheduler::scheduler(v26)[1] + 8 * *command_encoder);
        std::mutex::lock(v27);
        if (*(v27 + 160) != 1)
        {
          v28 = *(v27 + 72);
          v29 = *(v27 + 80);
          v30 = 16 * (v29 - v28) - 1;
          if (v29 == v28)
          {
            v30 = 0;
          }

          if (v30 == *(v27 + 104) + *(v27 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v27 + 64));
            v28 = *(v27 + 72);
            v29 = *(v27 + 80);
          }

          if (v29 == v28)
          {
            v32 = 0;
          }

          else
          {
            v31 = *(v27 + 104) + *(v27 + 96);
            v32 = *(v28 + ((v31 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v31 & 0x7F);
          }

          v125 = 0;
          v126 = 0;
          v127 = 0;
          std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v125, v117, v118, (v118 - v117) >> 3);
          v128 = 0;
          v129 = 0;
          v130 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v128, v120, v121, (v121 - v120) >> 2);
          v131 = v123;
          v132 = v124;
          *(v32 + 24) = 0;
          operator new();
        }

        v87 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v87, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v87, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v77 = mlx::core::scheduler::scheduler(v26);
      mlx::core::scheduler::Scheduler::notify_new_task(v77);
      v78 = *command_encoder;
      v108 = *(command_encoder + 2);
      v107 = v78;
      v110 = 0;
      v111 = 0;
      v109 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v109, v117, v118, (v118 - v117) >> 3);
      v112 = 0;
      v113 = 0;
      v114 = 0;
      v79 = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v112, v120, v121, (v121 - v120) >> 2);
      v115 = v123;
      v116 = v124;
      v80 = *(mlx::core::scheduler::scheduler(v79)[1] + 8 * *command_encoder);
      std::mutex::lock(v80);
      if (*(v80 + 160) != 1)
      {
        v81 = *(v80 + 72);
        v82 = *(v80 + 80);
        v83 = 16 * (v82 - v81) - 1;
        if (v82 == v81)
        {
          v83 = 0;
        }

        if (v83 == *(v80 + 104) + *(v80 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v80 + 64));
          v81 = *(v80 + 72);
          v82 = *(v80 + 80);
        }

        if (v82 == v81)
        {
          v85 = 0;
        }

        else
        {
          v84 = *(v80 + 104) + *(v80 + 96);
          v85 = *(v81 + ((v84 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v84 & 0x7F);
        }

        v125 = v107;
        LODWORD(v126) = v108;
        v128 = 0;
        v129 = 0;
        v127 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v127, v109, v110, (v110 - v109) >> 3);
        v130 = 0;
        v131 = 0;
        v132 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v130, v112, v113, (v113 - v112) >> 2);
        v133 = v115;
        v134 = v116;
        *(v85 + 24) = 0;
        operator new();
      }

      v93 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v93, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v93, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  v41 = *(v14 + 152);
  *(command_encoder + 10) = (*(command_encoder + 10) + 1) % 10;
  v117 = 0;
  v118 = 0;
  v119 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v117, v94, v95, (v95 - v94) >> 3);
  v120 = 0;
  v121 = 0;
  v122 = 0;
  v42 = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v120, v97, v98, (v98 - v97) >> 2);
  v123 = v100;
  v124 = v41;
  if (*(command_encoder + 10))
  {
    v43 = *(mlx::core::scheduler::scheduler(v42)[1] + 8 * *command_encoder);
    std::mutex::lock(v43);
    if (*(v43 + 160) != 1)
    {
      v44 = *(v43 + 72);
      v45 = *(v43 + 80);
      v46 = 16 * (v45 - v44) - 1;
      if (v45 == v44)
      {
        v46 = 0;
      }

      if (v46 == *(v43 + 104) + *(v43 + 96))
      {
        std::deque<std::function<void ()(void)>>::__add_back_capacity((v43 + 64));
        v44 = *(v43 + 72);
        v45 = *(v43 + 80);
      }

      if (v45 == v44)
      {
        v48 = 0;
      }

      else
      {
        v47 = *(v43 + 104) + *(v43 + 96);
        v48 = *(v44 + ((v47 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v47 & 0x7F);
      }

      v125 = 0;
      v126 = 0;
      v127 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v125, v117, v118, (v118 - v117) >> 3);
      v128 = 0;
      v129 = 0;
      v130 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v128, v120, v121, (v121 - v120) >> 2);
      v131 = v123;
      v132 = v124;
      *(v48 + 24) = 0;
      operator new();
    }

    v89 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v89, "Cannot enqueue work after stream is stopped.");
    __cxa_throw(v89, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v59 = mlx::core::scheduler::scheduler(v42);
  mlx::core::scheduler::Scheduler::notify_new_task(v59);
  v60 = *command_encoder;
  v108 = *(command_encoder + 2);
  v107 = v60;
  v110 = 0;
  v111 = 0;
  v109 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v109, v117, v118, (v118 - v117) >> 3);
  v112 = 0;
  v113 = 0;
  v114 = 0;
  v61 = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v112, v120, v121, (v121 - v120) >> 2);
  v115 = v123;
  v116 = v124;
  v62 = *(mlx::core::scheduler::scheduler(v61)[1] + 8 * *command_encoder);
  std::mutex::lock(v62);
  if (*(v62 + 160) != 1)
  {
    v63 = *(v62 + 72);
    v64 = *(v62 + 80);
    v65 = 16 * (v64 - v63) - 1;
    if (v64 == v63)
    {
      v65 = 0;
    }

    if (v65 == *(v62 + 104) + *(v62 + 96))
    {
      std::deque<std::function<void ()(void)>>::__add_back_capacity((v62 + 64));
      v63 = *(v62 + 72);
      v64 = *(v62 + 80);
    }

    if (v64 == v63)
    {
      v67 = 0;
    }

    else
    {
      v66 = *(v62 + 104) + *(v62 + 96);
      v67 = *(v63 + ((v66 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v66 & 0x7F);
    }

    v125 = v107;
    LODWORD(v126) = v108;
    v128 = 0;
    v129 = 0;
    v127 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v127, v109, v110, (v110 - v109) >> 3);
    v130 = 0;
    v131 = 0;
    v132 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v130, v112, v113, (v113 - v112) >> 2);
    v133 = v115;
    v134 = v116;
    *(v67 + 24) = 0;
    operator new();
  }

  v91 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v91, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(v91, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A5553F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37)
{
  __cxa_free_exception(v38);
  std::mutex::unlock(v37);
  mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const* &&)::{lambda(void)#1}::~dispatch(&a26);
  std::tuple<std::vector<int>,std::vector<int>,BOOL>::~tuple(&a36);
  std::tuple<std::vector<int>,std::vector<int>,BOOL>::~tuple(&a9);
  mlx::core::array::~array(&a24);
  _Unwind_Resume(a1);
}

void sub_25A5558D0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x25A5558B0);
}

void sub_25A5558F8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, void *__p, uint64_t a22)
{
  *(v23 - 184) = v22;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v23 - 184));
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x25A5558B8);
}

void mlx::core::DynamicSliceUpdate::eval_cpu(uint64_t a1, mlx::core::array **a2, mlx::core::array *a3)
{
  v13[4] = *MEMORY[0x277D85DE8];
  if (*(*a3 + 48))
  {
    v6 = **a2;
    if (*(v6 + 168))
    {
      v7 = *(v6 + 48);
      v8 = *(v6 + 160);
      if (v7 == v8)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }
    }

    else
    {
      v8 = *(v6 + 160);
      v9 = 2;
    }

    if (v8 == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    v11 = (a1 + 8);
    v12 = (a1 + 16);
    mlx::core::copy(*a2, a3, v10, *(a1 + 8), *(a1 + 16));
    mlx::core::compute_dynamic_offset((*a2 + 32), *a3 + 24, a1 + 24, *v11, *v12);
  }

  v13[0] = &unk_286BE3468;
  v13[1] = mlx::core::allocator::free;
  v13[3] = v13;
  mlx::core::array::set_data(a3, 0, v13);
}

void sub_25A555B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  mlx::core::array::~array(va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::SliceUpdate::eval_cpu(uint64_t a1, uint64_t a2, int ***this)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*(a2 + 8) - *a2 != 32)
  {
    mlx::core::SliceUpdate::eval_cpu();
  }

  if (!(*this)[6])
  {
    v19[0] = &unk_286BE3468;
    v19[1] = mlx::core::allocator::free;
    v19[3] = v19;
    mlx::core::array::set_data(this, 0, v19);
  }

  if (*(*(v3 + 2) + 48))
  {
    v5 = *v3;
    if (*(*v3 + 168))
    {
      v6 = *(v5 + 48);
      v7 = *(v5 + 160);
      if (v6 == v7)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }
    }

    else
    {
      v7 = *(v5 + 160);
      v8 = 2;
    }

    if (v7 == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = v8;
    }

    v11 = a1 + 8;
    mlx::core::copy(*a2, this, v10, *(a1 + 8), *(a1 + 16));
    mlx::core::prepare_slice(this, (v11 + 16), (v11 + 64), &v17);
    v12 = *(v3 + 2);
    v13 = *v11;
    v14 = *(v11 + 8);
    v16[0] = 0;
    v16[16] = 0;
    v15[0] = 0;
    v15[16] = 0;
    mlx::core::copy_inplace((v3 + 16), this, v12, v12 + 24, &__p, 0, v17, 3, v13, v14, v16, v15);
  }

  v9 = *a2;

  mlx::core::array::copy_shared_buffer(this, v9);
}

void mlx::core::View::eval_cpu(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (a2[1] - *a2 != 16)
  {
    mlx::core::View::eval_cpu();
  }

  v5 = *v3;
  v6 = BYTE4(*(*v3 + 56));
  v7 = BYTE4(*(*a3 + 56));
  if (v6 != v7 && (v7 >= v6 || *(*(v5 + 32) - 8) != 1) && (*(v5 + 168) & 2) == 0)
  {
    v18 = 0;
    v19 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v5, *(v5 + 8), (*(v5 + 8) - *v5) >> 2);
    v8 = *(*v3 + 56);
    if (v8)
    {
      v9 = v8 & 0xFFFFFFFFFFLL;
    }

    else
    {
      v9 = 0x100000001;
    }

    v16 = 0;
    memset(v15, 0, sizeof(v15));
    mlx::core::array::array(&v20, &__p, v9);
    v14 = v15;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v14);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (__p)
    {
      v18 = __p;
      operator delete(__p);
    }

    v10 = mlx::core::allocator::malloc((v20[60] * *(v20 + 6)));
    v23[0] = &unk_286BE3468;
    v23[1] = mlx::core::allocator::free;
    v23[3] = v23;
    mlx::core::array::set_data(&v20, v10, v23);
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v20, *(v5 + 24), *(v5 + 32), (*(v5 + 32) - *(v5 + 24)) >> 3);
  v11 = v20;
  v12 = (v21 - v20) >> 3;
  if (v12 > 1)
  {
    v13 = (v12 - 1);
    do
    {
      *v11 = *v11 * v6 / v7;
      v11 += 8;
      --v13;
    }

    while (v13);
  }

  mlx::core::array::copy_shared_buffer(a3, v3, &v20, *(*v3 + 168), *(*v3 + 160) * v6 / v7, 0);
  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }
}

void sub_25A5561A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  *(v27 - 96) = v26;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v27 - 96));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array((v27 - 120));
  _Unwind_Resume(a1);
}

void mlx::core::AsType::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A556348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::AsStrided::~AsStrided(mlx::core::AsStrided *this)
{
  *this = &unk_286BF7878;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }
}

{
  *this = &unk_286BF7878;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x25F851760);
}

void mlx::core::BroadcastAxes::~BroadcastAxes(mlx::core::BroadcastAxes *this)
{
  *this = &unk_286BF7900;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_286BF7900;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F851760);
}

void mlx::core::Broadcast::~Broadcast(mlx::core::Broadcast *this)
{
  *this = &unk_286BF7988;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_286BF7988;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F851760);
}

void mlx::core::Contiguous::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A556708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Copy::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A556808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::CustomTransforms::~CustomTransforms(mlx::core::CustomTransforms *this)
{
  *this = &unk_286BF7BA8;
  v2 = this + 24;
  std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](this + 88);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](this + 56);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v2);
}

{
  *this = &unk_286BF7BA8;
  v2 = this + 24;
  std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](this + 88);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](this + 56);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v2);

  JUMPOUT(0x25F851760);
}

void mlx::core::ExpandDims::~ExpandDims(mlx::core::ExpandDims *this)
{
  *this = &unk_286BF7C98;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_286BF7C98;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F851760);
}

void mlx::core::NumberOfElements::output_shapes(uint64_t *a1@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  __p = 0;
  v2 = 0;
  v3 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a1, &__p, &v4, 1uLL);
  if (__p)
  {
    v2 = __p;
    operator delete(__p);
  }
}

void sub_25A556B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::NumberOfElements::~NumberOfElements(mlx::core::NumberOfElements *this)
{
  *this = &unk_286BF7E30;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_286BF7E30;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F851760);
}

void mlx::core::Pad::~Pad(mlx::core::Pad *this)
{
  *this = &unk_286BF7EB8;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }
}

{
  *this = &unk_286BF7EB8;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }

  JUMPOUT(0x25F851760);
}

void mlx::core::RandomBits::~RandomBits(mlx::core::RandomBits *this)
{
  *this = &unk_286BF7F40;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_286BF7F40;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F851760);
}

void mlx::core::Reshape::~Reshape(mlx::core::Reshape *this)
{
  *this = &unk_286BF7FC8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_286BF7FC8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F851760);
}

void mlx::core::Slice::~Slice(mlx::core::Slice *this)
{
  *this = &unk_286BF8050;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }
}

{
  *this = &unk_286BF8050;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }

  JUMPOUT(0x25F851760);
}

void mlx::core::SliceUpdate::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A557094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::SliceUpdate::~SliceUpdate(mlx::core::SliceUpdate *this)
{
  *this = &unk_286BF80D8;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }
}

{
  *this = &unk_286BF80D8;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }

  JUMPOUT(0x25F851760);
}

void mlx::core::DynamicSlice::~DynamicSlice(mlx::core::DynamicSlice *this)
{
  *this = &unk_286BF8160;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }
}

{
  *this = &unk_286BF8160;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x25F851760);
}

void mlx::core::DynamicSliceUpdate::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A557368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::DynamicSliceUpdate::~DynamicSliceUpdate(mlx::core::DynamicSliceUpdate *this)
{
  *this = &unk_286BF81E8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_286BF81E8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F851760);
}

void mlx::core::Split::~Split(mlx::core::Split *this)
{
  *this = &unk_286BF8270;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_286BF8270;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F851760);
}

void mlx::core::StopGradient::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A5575E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Squeeze::~Squeeze(mlx::core::Squeeze *this)
{
  *this = &unk_286BF8370;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_286BF8370;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F851760);
}

void mlx::core::Unflatten::~Unflatten(mlx::core::Unflatten *this)
{
  *this = &unk_286BF83F8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_286BF83F8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F851760);
}

void mlx::core::Transpose::~Transpose(mlx::core::Transpose *this)
{
  *this = &unk_286BF8508;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_286BF8508;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F851760);
}

void *mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const* &&)::{lambda(void)#1}::~dispatch(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

void *std::__function::__func<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const* &&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const* &&)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF8590;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::__function::__func<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const* &&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const* &&)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF8590;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x25F851760);
}

void sub_25A557A8C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[4] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t *std::__function::__func<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const* &&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const* &&)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF8590;
  v4 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a2 + 24), *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 3);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a2 + 48), *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 2);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  return result;
}

void sub_25A557B5C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const* &&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const* &&)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(char *a1)
{
  std::__function::__alloc_func<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const* &&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const* &&)::{lambda(void)#1}>,void ()(void)>::destroy[abi:ne200100](a1 + 1);

  operator delete(a1);
}

void std::__function::__func<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const* &&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const* &&)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const*>::operator()[abi:ne200100]<>(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t std::__function::__func<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const* &&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const* &&)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__alloc_func<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const* &&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const* &&)::{lambda(void)#1}>,void ()(void)>::destroy[abi:ne200100](void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;

    operator delete(v3);
  }
}

uint64_t std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const*>::operator()[abi:ne200100]<>(uint64_t result)
{
  v2 = *(result + 24);
  v1 = *(result + 32);
  v3 = v1 - v2;
  if (v1 == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = *(result + 56);
    v6 = v3 >> 2;
    if ((v3 >> 2) <= 1)
    {
      v6 = 1;
    }

    do
    {
      v8 = *v5++;
      v7 = v8;
      v9 = *v2++;
      v4 += *(*result + 8 * v9) * v7;
      --v6;
    }

    while (v6);
  }

  **(result + 48) = v4;
  return result;
}

void *std::__function::__func<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const*>,std::allocator<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const*>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF8610;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::__function::__func<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const*>,std::allocator<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const*>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF8610;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x25F851760);
}

void sub_25A557E78(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[2] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t *std::__function::__func<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const*>,std::allocator<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const*>>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_286BF8610;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a2 + 1, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 3);
  a2[4] = 0;
  a2[5] = 0;
  a2[6] = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a2 + 4, *(a1 + 32), *(a1 + 40), (*(a1 + 40) - *(a1 + 32)) >> 2);
  a2[7] = *(a1 + 56);
  a2[8] = *(a1 + 64);
  return result;
}

void sub_25A557F38(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const*>,std::allocator<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const*>>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<mlx::core::fast::affine_dequantize(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,int,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0,std::allocator<mlx::core::fast::affine_dequantize(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,int,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const*>,std::allocator<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const*>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned short const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned short const* &&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned short const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned short const* &&)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF8708;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::__function::__func<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned short const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned short const* &&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned short const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned short const* &&)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF8708;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x25F851760);
}

void sub_25A558180(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[4] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t *std::__function::__func<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned short const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned short const* &&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned short const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned short const* &&)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF8708;
  v4 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a2 + 24), *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 3);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a2 + 48), *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 2);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  return result;
}

void sub_25A558250(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned short const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned short const* &&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned short const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned short const* &&)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const* &&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const* &&)::{lambda(void)#1}>,void ()(void)>::destroy[abi:ne200100](a1 + 1);

  operator delete(a1);
}

void std::__function::__func<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned short const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned short const* &&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned short const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned short const* &&)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned short const*>::operator()[abi:ne200100]<>(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t std::__function::__func<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned short const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned short const* &&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned short const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned short const* &&)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned short const*>::operator()[abi:ne200100]<>(uint64_t result)
{
  v2 = *(result + 24);
  v1 = *(result + 32);
  v3 = v1 - v2;
  if (v1 == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = *(result + 56);
    v6 = v3 >> 2;
    if ((v3 >> 2) <= 1)
    {
      v6 = 1;
    }

    do
    {
      v8 = *v5++;
      v7 = v8;
      v9 = *v2++;
      v4 += *(*result + 8 * v9) * v7;
      --v6;
    }

    while (v6);
  }

  **(result + 48) = v4;
  return result;
}

void *std::__function::__func<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned short const*>,std::allocator<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned short const*>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF8788;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::__function::__func<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned short const*>,std::allocator<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned short const*>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF8788;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x25F851760);
}

void sub_25A558514(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[2] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t *std::__function::__func<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned short const*>,std::allocator<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned short const*>>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_286BF8788;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a2 + 1, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 3);
  a2[4] = 0;
  a2[5] = 0;
  a2[6] = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a2 + 4, *(a1 + 32), *(a1 + 40), (*(a1 + 40) - *(a1 + 32)) >> 2);
  a2[7] = *(a1 + 56);
  a2[8] = *(a1 + 64);
  return result;
}

void sub_25A5585D4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned short const*>,std::allocator<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned short const*>>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<mlx::core::fast::affine_dequantize(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,int,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0,std::allocator<mlx::core::fast::affine_dequantize(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,int,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned short const*>,std::allocator<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned short const*>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned int const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned int const* &&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned int const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned int const* &&)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF8810;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::__function::__func<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned int const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned int const* &&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned int const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned int const* &&)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF8810;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x25F851760);
}

void sub_25A55881C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[4] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t *std::__function::__func<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned int const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned int const* &&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned int const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned int const* &&)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF8810;
  v4 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a2 + 24), *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 3);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a2 + 48), *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 2);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  return result;
}

void sub_25A5588EC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned int const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned int const* &&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned int const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned int const* &&)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const* &&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const* &&)::{lambda(void)#1}>,void ()(void)>::destroy[abi:ne200100](a1 + 1);

  operator delete(a1);
}

void std::__function::__func<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned int const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned int const* &&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned int const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned int const* &&)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned int const*>::operator()[abi:ne200100]<>(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t std::__function::__func<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned int const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned int const* &&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned int const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned int const* &&)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned int const*>::operator()[abi:ne200100]<>(uint64_t result)
{
  v2 = *(result + 24);
  v1 = *(result + 32);
  v3 = v1 - v2;
  if (v1 == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = *(result + 56);
    v6 = v3 >> 2;
    if ((v3 >> 2) <= 1)
    {
      v6 = 1;
    }

    do
    {
      v8 = *v5++;
      v7 = v8;
      v9 = *v2++;
      v4 += *(*result + 8 * v9) * v7;
      --v6;
    }

    while (v6);
  }

  **(result + 48) = v4;
  return result;
}

void *std::__function::__func<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned int const*>,std::allocator<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned int const*>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF8890;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::__function::__func<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned int const*>,std::allocator<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned int const*>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF8890;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x25F851760);
}

void sub_25A558BB0(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[2] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t *std::__function::__func<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned int const*>,std::allocator<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned int const*>>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_286BF8890;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a2 + 1, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 3);
  a2[4] = 0;
  a2[5] = 0;
  a2[6] = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a2 + 4, *(a1 + 32), *(a1 + 40), (*(a1 + 40) - *(a1 + 32)) >> 2);
  a2[7] = *(a1 + 56);
  a2[8] = *(a1 + 64);
  return result;
}

void sub_25A558C70(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned int const*>,std::allocator<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned int const*>>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<mlx::core::fast::affine_dequantize(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,int,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0,std::allocator<mlx::core::fast::affine_dequantize(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,int,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned int const*>,std::allocator<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned int const*>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned long long const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned long long const* &&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned long long const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned long long const* &&)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF8918;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::__function::__func<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned long long const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned long long const* &&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned long long const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned long long const* &&)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF8918;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x25F851760);
}

void sub_25A558EB8(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[4] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t *std::__function::__func<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned long long const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned long long const* &&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned long long const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned long long const* &&)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF8918;
  v4 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a2 + 24), *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 3);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a2 + 48), *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 2);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  return result;
}

void sub_25A558F88(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned long long const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned long long const* &&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned long long const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned long long const* &&)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const* &&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned char const* &&)::{lambda(void)#1}>,void ()(void)>::destroy[abi:ne200100](a1 + 1);

  operator delete(a1);
}

void std::__function::__func<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned long long const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned long long const* &&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned long long const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned long long const* &&)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned long long const*>::operator()[abi:ne200100]<>(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t std::__function::__func<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned long long const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned long long const* &&)::{lambda(void)#1},std::allocator<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned long long const*>(mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned long long const* &&)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned long long const*>::operator()[abi:ne200100]<>(uint64_t result)
{
  v2 = *(result + 24);
  v1 = *(result + 32);
  v3 = v1 - v2;
  if (v1 == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = *(result + 56);
    v6 = v3 >> 2;
    if ((v3 >> 2) <= 1)
    {
      v6 = 1;
    }

    do
    {
      v8 = *v5++;
      v7 = v8;
      v9 = *v2++;
      v4 += *(*result + 8 * v9) * v7;
      --v6;
    }

    while (v6);
  }

  **(result + 48) = v4;
  return result;
}

void *std::__function::__func<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned long long const*>,std::allocator<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned long long const*>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF8998;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::__function::__func<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned long long const*>,std::allocator<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned long long const*>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF8998;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x25F851760);
}

void sub_25A55924C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[2] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t *std::__function::__func<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned long long const*>,std::allocator<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned long long const*>>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_286BF8998;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a2 + 1, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 3);
  a2[4] = 0;
  a2[5] = 0;
  a2[6] = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a2 + 4, *(a1 + 32), *(a1 + 40), (*(a1 + 40) - *(a1 + 32)) >> 2);
  a2[7] = *(a1 + 56);
  a2[8] = *(a1 + 64);
  return result;
}

void sub_25A55930C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned long long const*>,std::allocator<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned long long const*>>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<mlx::core::fast::affine_dequantize(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,int,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0,std::allocator<mlx::core::fast::affine_dequantize(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,int,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned long long const*>,std::allocator<std::__bind<mlx::core::compute_dynamic_offset(mlx::core::array const&,std::vector<long long> const&,std::vector<int> const&,mlx::core::Stream)::$_0 &,unsigned long long const*>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeIhEEvT_S9_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOS9_DpOT0_EUlvE_NS_9allocatorISI_EEFvvEE7__cloneEPNS0_6__baseISL_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF8A20;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeIhEEvT_S9_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOS9_DpOT0_EUlvE_NS_9allocatorISI_EEFvvEEclEv(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 0;
    v2 = *(a1 + 32);
    do
    {
      *(*(a1 + 24) + v1) = v2;
      v2 = *(a1 + 32) + *(a1 + 36);
      *(a1 + 32) = v2;
      ++v1;
    }

    while (*(a1 + 40) > v1);
  }

  v3 = mlx::core::scheduler::scheduler(a1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v3);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeIhEEvT_S9_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOS9_DpOT0_EUlvE_NS_9allocatorISI_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<unsigned char>(unsigned char,unsigned char,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<unsigned char>(unsigned char,unsigned char,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF8AA0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<unsigned char>(unsigned char,unsigned char,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<unsigned char>(unsigned char,unsigned char,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::operator()(uint64_t result)
{
  if (*(result + 24))
  {
    v1 = 0;
    v2 = *(result + 16);
    do
    {
      *(*(result + 8) + v1) = v2;
      v2 = *(result + 16) + *(result + 20);
      *(result + 16) = v2;
      ++v1;
    }

    while (*(result + 24) > v1);
  }

  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<unsigned char>(unsigned char,unsigned char,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<unsigned char>(unsigned char,unsigned char,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeItEEvT_S9_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOS9_DpOT0_EUlvE_NS_9allocatorISI_EEFvvEE7__cloneEPNS0_6__baseISL_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF8B98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeItEEvT_S9_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOS9_DpOT0_EUlvE_NS_9allocatorISI_EEFvvEEclEv(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(a1 + 24);
    v3 = *(a1 + 36);
    v4 = *(a1 + 32);
    do
    {
      *v2++ = v4;
      v4 = *(a1 + 32) + v3;
      *(a1 + 32) = v4;
      --v1;
    }

    while (v1);
  }

  v5 = mlx::core::scheduler::scheduler(a1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v5);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeItEEvT_S9_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOS9_DpOT0_EUlvE_NS_9allocatorISI_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<unsigned short>(unsigned short,unsigned short,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<unsigned short>(unsigned short,unsigned short,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF8C18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<unsigned short>(unsigned short,unsigned short,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<unsigned short>(unsigned short,unsigned short,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(result + 8);
    v3 = *(result + 20);
    v4 = *(result + 16);
    do
    {
      *v2++ = v4;
      v4 = *(result + 16) + v3;
      *(result + 16) = v4;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<unsigned short>(unsigned short,unsigned short,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<unsigned short>(unsigned short,unsigned short,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeIjEEvT_S9_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOS9_DpOT0_EUlvE_NS_9allocatorISI_EEFvvEE7__cloneEPNS0_6__baseISL_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF8D10;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeIjEEvT_S9_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOS9_DpOT0_EUlvE_NS_9allocatorISI_EEFvvEEclEv(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(a1 + 24);
    v3 = *(a1 + 32);
    do
    {
      *v2++ = v3;
      v3 = *(a1 + 32) + *(a1 + 36);
      *(a1 + 32) = v3;
      --v1;
    }

    while (v1);
  }

  v4 = mlx::core::scheduler::scheduler(a1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v4);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeIjEEvT_S9_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOS9_DpOT0_EUlvE_NS_9allocatorISI_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<unsigned int>(unsigned int,unsigned int,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<unsigned int>(unsigned int,unsigned int,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF8D90;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<unsigned int>(unsigned int,unsigned int,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<unsigned int>(unsigned int,unsigned int,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(result + 8);
    v3 = *(result + 16);
    do
    {
      *v2++ = v3;
      v3 = *(result + 16) + *(result + 20);
      *(result + 16) = v3;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<unsigned int>(unsigned int,unsigned int,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<unsigned int>(unsigned int,unsigned int,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeIyEEvT_S9_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOS9_DpOT0_EUlvE_NS_9allocatorISI_EEFvvEE7__cloneEPNS0_6__baseISL_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF8E88;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeIyEEvT_S9_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOS9_DpOT0_EUlvE_NS_9allocatorISI_EEFvvEEclEv(mlx::core::scheduler *a1)
{
  v1 = *(a1 + 6);
  if (v1)
  {
    v2 = *(a1 + 3);
    v3 = *(a1 + 4);
    do
    {
      *v2++ = v3;
      v3 = *(a1 + 4) + *(a1 + 5);
      *(a1 + 4) = v3;
      --v1;
    }

    while (v1);
  }

  v4 = mlx::core::scheduler::scheduler(a1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v4);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeIyEEvT_S9_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOS9_DpOT0_EUlvE_NS_9allocatorISI_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<unsigned long long>(unsigned long long,unsigned long long,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<unsigned long long>(unsigned long long,unsigned long long,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF8F08;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 41) = 0;
  *(a2 + 44) = 0;
  return result;
}

void *std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<unsigned long long>(unsigned long long,unsigned long long,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<unsigned long long>(unsigned long long,unsigned long long,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::operator()(void *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = result[1];
    v3 = result[2];
    do
    {
      *v2++ = v3;
      v3 = result[2] + result[3];
      result[2] = v3;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<unsigned long long>(unsigned long long,unsigned long long,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<unsigned long long>(unsigned long long,unsigned long long,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeIaEEvT_S9_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOS9_DpOT0_EUlvE_NS_9allocatorISI_EEFvvEE7__cloneEPNS0_6__baseISL_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF9000;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeIaEEvT_S9_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOS9_DpOT0_EUlvE_NS_9allocatorISI_EEFvvEEclEv(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 0;
    v2 = *(a1 + 32);
    do
    {
      *(*(a1 + 24) + v1) = v2;
      v2 = *(a1 + 32) + *(a1 + 36);
      *(a1 + 32) = v2;
      ++v1;
    }

    while (*(a1 + 40) > v1);
  }

  v3 = mlx::core::scheduler::scheduler(a1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v3);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeIaEEvT_S9_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOS9_DpOT0_EUlvE_NS_9allocatorISI_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<signed char>(signed char,signed char,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<signed char>(signed char,signed char,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF9080;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<signed char>(signed char,signed char,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<signed char>(signed char,signed char,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::operator()(uint64_t result)
{
  if (*(result + 24))
  {
    v1 = 0;
    v2 = *(result + 16);
    do
    {
      *(*(result + 8) + v1) = v2;
      v2 = *(result + 16) + *(result + 20);
      *(result + 16) = v2;
      ++v1;
    }

    while (*(result + 24) > v1);
  }

  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<signed char>(signed char,signed char,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<signed char>(signed char,signed char,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeIsEEvT_S9_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOS9_DpOT0_EUlvE_NS_9allocatorISI_EEFvvEE7__cloneEPNS0_6__baseISL_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF9178;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeIsEEvT_S9_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOS9_DpOT0_EUlvE_NS_9allocatorISI_EEFvvEEclEv(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(a1 + 24);
    v3 = *(a1 + 36);
    v4 = *(a1 + 32);
    do
    {
      *v2++ = v4;
      v4 = *(a1 + 32) + v3;
      *(a1 + 32) = v4;
      --v1;
    }

    while (v1);
  }

  v5 = mlx::core::scheduler::scheduler(a1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v5);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeIsEEvT_S9_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOS9_DpOT0_EUlvE_NS_9allocatorISI_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<short>(short,short,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<short>(short,short,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF91F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<short>(short,short,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<short>(short,short,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(result + 8);
    v3 = *(result + 20);
    v4 = *(result + 16);
    do
    {
      *v2++ = v4;
      v4 = *(result + 16) + v3;
      *(result + 16) = v4;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<short>(short,short,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<short>(short,short,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeIiEEvT_S9_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOS9_DpOT0_EUlvE_NS_9allocatorISI_EEFvvEE7__cloneEPNS0_6__baseISL_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF92F0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeIiEEvT_S9_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOS9_DpOT0_EUlvE_NS_9allocatorISI_EEFvvEEclEv(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(a1 + 24);
    v3 = *(a1 + 32);
    do
    {
      *v2++ = v3;
      v3 = *(a1 + 32) + *(a1 + 36);
      *(a1 + 32) = v3;
      --v1;
    }

    while (v1);
  }

  v4 = mlx::core::scheduler::scheduler(a1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v4);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeIiEEvT_S9_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOS9_DpOT0_EUlvE_NS_9allocatorISI_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<int>(int,int,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<int>(int,int,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF9370;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<int>(int,int,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<int>(int,int,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(result + 8);
    v3 = *(result + 16);
    do
    {
      *v2++ = v3;
      v3 = *(result + 16) + *(result + 20);
      *(result + 16) = v3;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<int>(int,int,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<int>(int,int,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeIxEEvT_S9_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOS9_DpOT0_EUlvE_NS_9allocatorISI_EEFvvEE7__cloneEPNS0_6__baseISL_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF9468;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeIxEEvT_S9_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOS9_DpOT0_EUlvE_NS_9allocatorISI_EEFvvEEclEv(mlx::core::scheduler *a1)
{
  v1 = *(a1 + 6);
  if (v1)
  {
    v2 = *(a1 + 3);
    v3 = *(a1 + 4);
    do
    {
      *v2++ = v3;
      v3 = *(a1 + 4) + *(a1 + 5);
      *(a1 + 4) = v3;
      --v1;
    }

    while (v1);
  }

  v4 = mlx::core::scheduler::scheduler(a1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v4);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeIxEEvT_S9_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOS9_DpOT0_EUlvE_NS_9allocatorISI_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<long long>(long long,long long,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<long long>(long long,long long,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF94E8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 41) = 0;
  *(a2 + 44) = 0;
  return result;
}

void *std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<long long>(long long,long long,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<long long>(long long,long long,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::operator()(void *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = result[1];
    v3 = result[2];
    do
    {
      *v2++ = v3;
      v3 = result[2] + result[3];
      result[2] = v3;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<long long>(long long,long long,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<long long>(long long,long long,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeIDhEEvT_S9_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOS9_DpOT0_EUlvE_NS_9allocatorISI_EEFvvEE7__cloneEPNS0_6__baseISL_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF95E0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeIDhEEvT_S9_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOS9_DpOT0_EUlvE_NS_9allocatorISI_EEFvvEEclEv(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(a1 + 24);
    v3 = *(a1 + 36);
    _H1 = *(a1 + 32);
    do
    {
      *v2++ = _H1;
      _H1 = *(a1 + 32);
      __asm { FCVT            S1, H1 }

      _S1 = v3 + _S1;
      __asm { FCVT            H1, S1 }

      *(a1 + 32) = _H1;
      --v1;
    }

    while (v1);
  }

  v12 = mlx::core::scheduler::scheduler(a1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v12);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeIDhEEvT_S9_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOS9_DpOT0_EUlvE_NS_9allocatorISI_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<half>(half,half,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<half>(half,half,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF9660;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<half>(half,half,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<half>(half,half,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(result + 8);
    v3 = *(result + 20);
    _H1 = *(result + 16);
    do
    {
      *v2++ = _H1;
      _H1 = *(result + 16);
      __asm { FCVT            S1, H1 }

      _S1 = v3 + _S1;
      __asm { FCVT            H1, S1 }

      *(result + 16) = _H1;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<half>(half,half,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<half>(half,half,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeIfEEvT_S9_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOS9_DpOT0_EUlvE_NS_9allocatorISI_EEFvvEE7__cloneEPNS0_6__baseISL_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF9758;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeIfEEvT_S9_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOS9_DpOT0_EUlvE_NS_9allocatorISI_EEFvvEEclEv(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(a1 + 24);
    v3 = *(a1 + 32);
    do
    {
      *v2++ = v3;
      v3 = *(a1 + 36) + *(a1 + 32);
      *(a1 + 32) = v3;
      --v1;
    }

    while (v1);
  }

  v4 = mlx::core::scheduler::scheduler(a1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v4);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeIfEEvT_S9_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOS9_DpOT0_EUlvE_NS_9allocatorISI_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<float>(float,float,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<float>(float,float,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF97D8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

float std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<float>(float,float,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<float>(float,float,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::operator()(uint64_t a1, float result)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 8);
    result = *(a1 + 16);
    do
    {
      *v3++ = result;
      result = *(a1 + 20) + *(a1 + 16);
      *(a1 + 16) = result;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<float>(float,float,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<float>(float,float,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeIdEEvT_S9_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOS9_DpOT0_EUlvE_NS_9allocatorISI_EEFvvEE7__cloneEPNS0_6__baseISL_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF98D0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeIdEEvT_S9_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOS9_DpOT0_EUlvE_NS_9allocatorISI_EEFvvEEclEv(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v2 = *(a1 + 24);
    v3 = *(a1 + 32);
    do
    {
      *v2++ = v3;
      v3 = *(a1 + 40) + *(a1 + 32);
      *(a1 + 32) = v3;
      --v1;
    }

    while (v1);
  }

  v4 = mlx::core::scheduler::scheduler(a1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v4);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeIdEEvT_S9_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOS9_DpOT0_EUlvE_NS_9allocatorISI_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<double>(double,double,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<double>(double,double,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF9950;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 41) = 0;
  *(a2 + 44) = 0;
  return result;
}

double std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<double>(double,double,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<double>(double,double,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::operator()(uint64_t a1, double result)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 8);
    result = *(a1 + 16);
    do
    {
      *v3++ = result;
      result = *(a1 + 24) + *(a1 + 16);
      *(a1 + 16) = result;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<double>(double,double,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<double>(double,double,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeINS3_13_MLX_BFloat16EEEvT_SA_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOSA_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF9A48;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeINS3_13_MLX_BFloat16EEEvT_SA_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOSA_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeINS3_13_MLX_BFloat16EEEvT_SA_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOSA_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__bind<void mlx::core::anonymous namespace::arange<mlx::core::_MLX_BFloat16>(mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = *result;
    LOWORD(v3) = *(result + 8);
    do
    {
      *v2 = v3;
      v4 = COERCE_FLOAT(*(result + 10) << 16) + COERCE_FLOAT(*(result + 8) << 16);
      v3 = (LODWORD(v4) + (HIWORD(LODWORD(v4)) & 1u) + 0x7FFF) >> 16;
      *(result + 8) = v3;
      ++v2;
      --v1;
    }

    while (v1);
  }

  return result;
}

__n128 std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<mlx::core::_MLX_BFloat16>(mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<mlx::core::_MLX_BFloat16>(mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF9AC8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<mlx::core::_MLX_BFloat16>(mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<mlx::core::_MLX_BFloat16>(mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeINS3_11complex64_tEEEvT_SA_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOSA_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF9BC0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeINS3_11complex64_tEEEvT_SA_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOSA_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEEclEv(float32x2_t *a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16arangeINS3_11complex64_tEEEvT_SA_RNS3_5arrayEmNS3_6StreamEEUlvE_JEEEvOSA_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

float32x2_t std::__bind<void mlx::core::anonymous namespace::arange<mlx::core::complex64_t>(mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(float32x2_t *a1)
{
  if (a1[3])
  {
    v1 = 0;
    do
    {
      *(*a1 + 8 * v1) = a1[1];
      result = vadd_f32(a1[2], a1[1]);
      a1[1] = result;
      ++v1;
    }

    while (*&a1[3] > v1);
  }

  return result;
}

__n128 std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<mlx::core::complex64_t>(mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<mlx::core::complex64_t>(mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF9C40;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 41) = 0;
  *(a2 + 44) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::arange<mlx::core::complex64_t>(mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::arange<mlx::core::complex64_t>(mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::array &,unsigned long,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *mlx::core::cpu::CommandEncoder::dispatch<mlx::core::RandomBits::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>(mlx::core::RandomBits::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0 &&)::{lambda(void)#1}::~dispatch(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  return a1;
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_10RandomBits8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BF9D38;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_10RandomBits8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BF9D38;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x25F851760);
}

void sub_25A55B950(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[8] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t *_ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_10RandomBits8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF9D38;
  v4 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v4;
  v5 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v5;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a2 + 56), *(a1 + 56), *(a1 + 64), (*(a1 + 64) - *(a1 + 56)) >> 2);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  return std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a2 + 80), *(a1 + 80), *(a1 + 88), (*(a1 + 88) - *(a1 + 80)) >> 3);
}

void sub_25A55BA20(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_10RandomBits8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE18destroy_deallocateEv(char *a1)
{
  _ZNSt3__110__function12__alloc_funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_10RandomBits8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7destroyB8ne200100Ev(a1 + 1);

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_10RandomBits8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEEclEv(uint64_t a1)
{
  v1 = std::__bind<mlx::core::RandomBits::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>::operator()[abi:ne200100]<>((a1 + 24));
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_10RandomBits8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function12__alloc_funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_10RandomBits8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7destroyB8ne200100Ev(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;

    operator delete(v3);
  }
}

void *std::__bind<mlx::core::RandomBits::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>::operator()[abi:ne200100]<>(void *result)
{
  if (result[3])
  {
    v1 = result;
    v2 = 0;
    v3 = result[1];
    v4 = result[2] + 3;
    v27 = v4 >> 3;
    v28 = v4;
    v26 = v4 & 4;
    v5 = (v4 >> 3) + (v26 >> 2);
    v24 = 4 * v5;
    v25 = v5;
    v23 = v5 << 32;
    do
    {
      v6 = v1[4];
      v7 = (v1[5] - v6) >> 2;
      v8 = 0;
      v9 = (v7 - 1);
      if (v7 - 1 < 0)
      {
        v15 = 0;
      }

      else
      {
        v29 = v2;
        v10 = 2 * v2;
        v11 = v1[7];
        v12 = (v7 - 1);
        quot = v10;
        do
        {
          v14 = ldiv(quot, *(v6 + 4 * v12));
          quot = v14.quot;
          v8 += *(v11 + 8 * v12--) * v14.rem;
        }

        while (v12 != -1);
        v15 = 0;
        LODWORD(result) = v10 | 1;
        do
        {
          v16 = ldiv(result, *(v6 + 4 * v9));
          result = v16.quot;
          v15 += *(v11 + 8 * v9--) * v16.rem;
        }

        while (v9 != -1);
        v2 = v29;
      }

      v31 = *(*v1 + 4 * v8) | (*(*v1 + 4 * v15) << 32);
      if (v28 < 0x10)
      {
        v17 = 0;
        v19 = v25;
        v21 = 1;
        v20 = v27;
      }

      else
      {
        v17 = 0;
        v18 = v23;
        do
        {
          result = mlx::core::random::threefry2x32_hash(&v31, v18 + v17);
          *(v3 + 4 * v17) = result;
          *(v3 + v24 + 4 * v17++) = HIDWORD(result);
          v18 += 0x100000000;
        }

        while (v27 - 1 != v17);
        v19 = v25 + v17;
        v20 = v27;
        v21 = v27;
      }

      if (v17 >= v20)
      {
        v21 = v17;
      }

      else
      {
        result = mlx::core::random::threefry2x32_hash(&v31, v17 | (v19 << 32));
        __src = HIDWORD(result);
        *(v3 + 4 * v17) = result;
        v22 = v1[2] & 3;
        if (v22)
        {
          result = memcpy((v1[1] + 4 * v19), &__src, v22);
        }

        else
        {
          *(v3 + 4 * v19) = HIDWORD(result);
        }
      }

      if (v26)
      {
        result = mlx::core::random::threefry2x32_hash(&v31, v21);
        *(v3 + 4 * v20) = result;
      }

      ++v2;
      v3 = v1[1] + v1[2];
      v1[1] = v3;
    }

    while (v1[3] > v2);
  }

  return result;
}

void *std::__function::__func<std::__bind<mlx::core::RandomBits::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::RandomBits::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF9DB8;
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::__function::__func<std::__bind<mlx::core::RandomBits::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::RandomBits::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF9DB8;
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x25F851760);
}

void sub_25A55BF04(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[6] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t *std::__function::__func<std::__bind<mlx::core::RandomBits::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::RandomBits::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF9DB8;
  v4 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v4;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a2 + 40), *(a1 + 40), *(a1 + 48), (*(a1 + 48) - *(a1 + 40)) >> 2);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  result = std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a2 + 64), *(a1 + 64), *(a1 + 72), (*(a1 + 72) - *(a1 + 64)) >> 3);
  *(a2 + 92) = 0;
  *(a2 + 89) = 0;
  return result;
}

void sub_25A55BFCC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<std::__bind<mlx::core::RandomBits::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::RandomBits::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__destroy_at[abi:ne200100]<std::__state<char>,0>(a1 + 1);

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::RandomBits::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::RandomBits::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::set_unary_output_data(mlx::core *this, int ***a2, mlx::core::array *a3)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v4 = *this;
  if ((*(*this + 168) & 1) == 0)
  {
    v11 = mlx::core::allocator::malloc((*(*a2 + 60) * (*a2)[6]));
    v15[0] = &unk_286BE3468;
    v15[1] = mlx::core::allocator::free;
    v15[3] = v15;
    mlx::core::array::set_data(a2, v11, v15);
  }

  v6 = *(this + 1);
  if (!v6 || *(v6 + 8) || (v12 = v4[18]) == 0 || *(v12 + 8) || (((*a2)[7] ^ v4[7]) & 0xFF00000000) != 0)
  {
LABEL_4:
    v7 = v4[20];
    v8 = mlx::core::allocator::malloc((*(*a2 + 60) * v7));
    v9 = *this;
    memset(__p, 0, sizeof(__p));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(__p, *(v9 + 24), *(v9 + 32), (*(v9 + 32) - *(v9 + 24)) >> 3);
    v10 = *(*this + 168);
    v16[0] = &unk_286BE3468;
    v16[1] = mlx::core::allocator::free;
    v16[3] = v16;
    mlx::core::array::set_data(a2, v8, v7, __p, v10, v16);
  }

  v13 = mlx::core::allocator::allocator(this);
  if ((*(*v13 + 16))(v13, **(*this + 136)) > *(*a2 + 60) * (*a2)[6] + 0x4000)
  {
    v4 = *this;
    goto LABEL_4;
  }

  mlx::core::array::copy_shared_buffer(a2, this);
}

void sub_25A55C2C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](va);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *mlx::core::Abs::eval_cpu(uint64_t a1, const mlx::core::array **a2, int ***a3)
{
  v5 = *a2;
  v6 = *(**a2 + 56);
  v8 = v6;
  v9 = BYTE4(v6);
  if ((mlx::core::issubdtype(&v8, &mlx::core::unsignedinteger) & 1) == 0 && *(*v5 + 56))
  {
    mlx::core::unary_signed<mlx::core::detail::Abs>(v5, a3, *(a1 + 8), *(a1 + 16));
  }

  return mlx::core::array::copy_shared_buffer(a3, v5);
}

void mlx::core::unary_signed<mlx::core::detail::Abs>(mlx::core *a1, int ***a2, mlx::core::array *a3, unsigned int a4)
{
  v7[5] = *MEMORY[0x277D85DE8];
  mlx::core::set_unary_output_data(a1, a2, a3);
  mlx::core::cpu::get_command_encoder(a3, a4);
  mlx::core::array::unsafe_weak_copy(a1, v7);
}

void sub_25A55C448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

void mlx::core::ArcCos::eval_cpu(uint64_t a1, mlx::core **a2, int ***a3)
{
  if (a2[1] - *a2 == 16)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *a2;

    mlx::core::unary_fp<mlx::core::detail::ArcCos>(v6, a3, v4, v5);
  }

  mlx::core::ArcCos::eval_cpu();
}

void mlx::core::unary_fp<mlx::core::detail::ArcCos>(mlx::core *a1, int ***a2, mlx::core::array *a3, unsigned int a4)
{
  v7[5] = *MEMORY[0x277D85DE8];
  mlx::core::set_unary_output_data(a1, a2, a3);
  mlx::core::cpu::get_command_encoder(a3, a4);
  mlx::core::array::unsafe_weak_copy(a1, v7);
}

void sub_25A55C56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

void mlx::core::ArcCosh::eval_cpu(uint64_t a1, mlx::core **a2, int ***a3)
{
  if (a2[1] - *a2 == 16)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *a2;

    mlx::core::unary_fp<mlx::core::detail::ArcCosh>(v6, a3, v4, v5);
  }

  mlx::core::ArcCosh::eval_cpu();
}

void mlx::core::unary_fp<mlx::core::detail::ArcCosh>(mlx::core *a1, int ***a2, mlx::core::array *a3, unsigned int a4)
{
  v7[5] = *MEMORY[0x277D85DE8];
  mlx::core::set_unary_output_data(a1, a2, a3);
  mlx::core::cpu::get_command_encoder(a3, a4);
  mlx::core::array::unsafe_weak_copy(a1, v7);
}

void sub_25A55C690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

void mlx::core::ArcSin::eval_cpu(uint64_t a1, mlx::core **a2, int ***a3)
{
  if (a2[1] - *a2 == 16)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *a2;

    mlx::core::unary_fp<mlx::core::detail::ArcSin>(v6, a3, v4, v5);
  }

  mlx::core::ArcSin::eval_cpu();
}

void mlx::core::unary_fp<mlx::core::detail::ArcSin>(mlx::core *a1, int ***a2, mlx::core::array *a3, unsigned int a4)
{
  v7[5] = *MEMORY[0x277D85DE8];
  mlx::core::set_unary_output_data(a1, a2, a3);
  mlx::core::cpu::get_command_encoder(a3, a4);
  mlx::core::array::unsafe_weak_copy(a1, v7);
}

void sub_25A55C7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

void mlx::core::ArcSinh::eval_cpu(uint64_t a1, mlx::core **a2, int ***a3)
{
  if (a2[1] - *a2 == 16)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *a2;

    mlx::core::unary_fp<mlx::core::detail::ArcSinh>(v6, a3, v4, v5);
  }

  mlx::core::ArcSinh::eval_cpu();
}

void mlx::core::unary_fp<mlx::core::detail::ArcSinh>(mlx::core *a1, int ***a2, mlx::core::array *a3, unsigned int a4)
{
  v7[5] = *MEMORY[0x277D85DE8];
  mlx::core::set_unary_output_data(a1, a2, a3);
  mlx::core::cpu::get_command_encoder(a3, a4);
  mlx::core::array::unsafe_weak_copy(a1, v7);
}

void sub_25A55C8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

void mlx::core::ArcTan::eval_cpu(uint64_t a1, mlx::core **a2, int ***a3)
{
  if (a2[1] - *a2 == 16)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *a2;

    mlx::core::unary_fp<mlx::core::detail::ArcTan>(v6, a3, v4, v5);
  }

  mlx::core::ArcTan::eval_cpu();
}

void mlx::core::unary_fp<mlx::core::detail::ArcTan>(mlx::core *a1, int ***a2, mlx::core::array *a3, unsigned int a4)
{
  v7[5] = *MEMORY[0x277D85DE8];
  mlx::core::set_unary_output_data(a1, a2, a3);
  mlx::core::cpu::get_command_encoder(a3, a4);
  mlx::core::array::unsafe_weak_copy(a1, v7);
}

void sub_25A55C9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

void mlx::core::ArcTanh::eval_cpu(uint64_t a1, mlx::core **a2, int ***a3)
{
  if (a2[1] - *a2 == 16)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *a2;

    mlx::core::unary_fp<mlx::core::detail::ArcTanh>(v6, a3, v4, v5);
  }

  mlx::core::ArcTanh::eval_cpu();
}

void mlx::core::unary_fp<mlx::core::detail::ArcTanh>(mlx::core *a1, int ***a2, mlx::core::array *a3, unsigned int a4)
{
  v7[5] = *MEMORY[0x277D85DE8];
  mlx::core::set_unary_output_data(a1, a2, a3);
  mlx::core::cpu::get_command_encoder(a3, a4);
  mlx::core::array::unsafe_weak_copy(a1, v7);
}

void sub_25A55CB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

void mlx::core::BitwiseInvert::eval_cpu(uint64_t a1, mlx::core **a2, int ***a3)
{
  if (a2[1] - *a2 == 16)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *a2;

    mlx::core::unary_int<mlx::core::detail::BitwiseInvert>(v6, a3, v4, v5);
  }

  mlx::core::BitwiseInvert::eval_cpu();
}

void mlx::core::unary_int<mlx::core::detail::BitwiseInvert>(mlx::core *a1, int ***a2, mlx::core::array *a3, unsigned int a4)
{
  v7[5] = *MEMORY[0x277D85DE8];
  mlx::core::set_unary_output_data(a1, a2, a3);
  mlx::core::cpu::get_command_encoder(a3, a4);
  mlx::core::array::unsafe_weak_copy(a1, v7);
}

void sub_25A55CC44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

uint64_t *mlx::core::Ceil::eval_cpu(uint64_t a1, uint64_t a2, int ***a3)
{
  v3 = *a2;
  if (*(a2 + 8) - *a2 != 16)
  {
    mlx::core::Ceil::eval_cpu();
  }

  v6 = *(*v3 + 56);
  v8 = v6;
  v9 = BYTE4(v6);
  if (mlx::core::issubdtype(&v8, &mlx::core::inexact))
  {
    mlx::core::unary_fp<mlx::core::detail::Ceil>(v3, a3, *(a1 + 8), *(a1 + 16));
  }

  return mlx::core::array::copy_shared_buffer(a3, v3);
}

void mlx::core::unary_fp<mlx::core::detail::Ceil>(mlx::core *a1, int ***a2, mlx::core::array *a3, unsigned int a4)
{
  v7[5] = *MEMORY[0x277D85DE8];
  mlx::core::set_unary_output_data(a1, a2, a3);
  mlx::core::cpu::get_command_encoder(a3, a4);
  mlx::core::array::unsafe_weak_copy(a1, v7);
}

void sub_25A55CDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

void mlx::core::Conjugate::eval_cpu(uint64_t a1, mlx::core **a2, int ***a3)
{
  if (a2[1] - *a2 == 16)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *a2;

    mlx::core::unary_complex<mlx::core::detail::Conjugate>(v6, a3, v4, v5);
  }

  mlx::core::Conjugate::eval_cpu();
}

void mlx::core::unary_complex<mlx::core::detail::Conjugate>(mlx::core *a1, int ***a2, mlx::core::array *a3, unsigned int a4)
{
  v7[5] = *MEMORY[0x277D85DE8];
  mlx::core::set_unary_output_data(a1, a2, a3);
  mlx::core::cpu::get_command_encoder(a3, a4);
  mlx::core::array::unsafe_weak_copy(a1, v7);
}

void sub_25A55CEDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

void mlx::core::Cos::eval_cpu(uint64_t a1, mlx::core **a2, int ***a3)
{
  if (a2[1] - *a2 == 16)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *a2;

    mlx::core::unary_fp<mlx::core::detail::Cos>(v6, a3, v4, v5);
  }

  mlx::core::Cos::eval_cpu();
}

void mlx::core::unary_fp<mlx::core::detail::Cos>(mlx::core *a1, int ***a2, mlx::core::array *a3, unsigned int a4)
{
  v7[5] = *MEMORY[0x277D85DE8];
  mlx::core::set_unary_output_data(a1, a2, a3);
  mlx::core::cpu::get_command_encoder(a3, a4);
  mlx::core::array::unsafe_weak_copy(a1, v7);
}

void sub_25A55D000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

void mlx::core::Cosh::eval_cpu(uint64_t a1, mlx::core **a2, int ***a3)
{
  if (a2[1] - *a2 == 16)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *a2;

    mlx::core::unary_fp<mlx::core::detail::Cosh>(v6, a3, v4, v5);
  }

  mlx::core::Cosh::eval_cpu();
}

void mlx::core::unary_fp<mlx::core::detail::Cosh>(mlx::core *a1, int ***a2, mlx::core::array *a3, unsigned int a4)
{
  v7[5] = *MEMORY[0x277D85DE8];
  mlx::core::set_unary_output_data(a1, a2, a3);
  mlx::core::cpu::get_command_encoder(a3, a4);
  mlx::core::array::unsafe_weak_copy(a1, v7);
}

void sub_25A55D124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

void mlx::core::Erf::eval_cpu(uint64_t a1, mlx::core **a2, int ***a3)
{
  if (a2[1] - *a2 == 16)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *a2;

    mlx::core::unary_real_fp<mlx::core::detail::Erf>(v6, a3, v4, v5);
  }

  mlx::core::Erf::eval_cpu();
}

void mlx::core::unary_real_fp<mlx::core::detail::Erf>(mlx::core *a1, int ***a2, mlx::core::array *a3, unsigned int a4)
{
  v7[5] = *MEMORY[0x277D85DE8];
  mlx::core::set_unary_output_data(a1, a2, a3);
  mlx::core::cpu::get_command_encoder(a3, a4);
  mlx::core::array::unsafe_weak_copy(a1, v7);
}

void sub_25A55D248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

void mlx::core::ErfInv::eval_cpu(uint64_t a1, mlx::core **a2, int ***a3)
{
  if (a2[1] - *a2 == 16)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *a2;

    mlx::core::unary_real_fp<mlx::core::detail::ErfInv>(v6, a3, v4, v5);
  }

  mlx::core::ErfInv::eval_cpu();
}

void mlx::core::unary_real_fp<mlx::core::detail::ErfInv>(mlx::core *a1, int ***a2, mlx::core::array *a3, unsigned int a4)
{
  v7[5] = *MEMORY[0x277D85DE8];
  mlx::core::set_unary_output_data(a1, a2, a3);
  mlx::core::cpu::get_command_encoder(a3, a4);
  mlx::core::array::unsafe_weak_copy(a1, v7);
}

void sub_25A55D36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

void mlx::core::Exp::eval_cpu(uint64_t a1, mlx::core **a2, int ***a3)
{
  if (a2[1] - *a2 == 16)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *a2;

    mlx::core::unary_fp<mlx::core::detail::Exp>(v6, a3, v4, v5);
  }

  mlx::core::Exp::eval_cpu();
}

void mlx::core::unary_fp<mlx::core::detail::Exp>(mlx::core *a1, int ***a2, mlx::core::array *a3, unsigned int a4)
{
  v7[5] = *MEMORY[0x277D85DE8];
  mlx::core::set_unary_output_data(a1, a2, a3);
  mlx::core::cpu::get_command_encoder(a3, a4);
  mlx::core::array::unsafe_weak_copy(a1, v7);
}

void sub_25A55D490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

void mlx::core::Expm1::eval_cpu(uint64_t a1, mlx::core **a2, int ***a3)
{
  if (a2[1] - *a2 == 16)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *a2;

    mlx::core::unary_fp<mlx::core::detail::Expm1>(v6, a3, v4, v5);
  }

  mlx::core::Expm1::eval_cpu();
}

void mlx::core::unary_fp<mlx::core::detail::Expm1>(mlx::core *a1, int ***a2, mlx::core::array *a3, unsigned int a4)
{
  v7[5] = *MEMORY[0x277D85DE8];
  mlx::core::set_unary_output_data(a1, a2, a3);
  mlx::core::cpu::get_command_encoder(a3, a4);
  mlx::core::array::unsafe_weak_copy(a1, v7);
}

void sub_25A55D5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

uint64_t *mlx::core::Floor::eval_cpu(uint64_t a1, uint64_t a2, int ***a3)
{
  v3 = *a2;
  if (*(a2 + 8) - *a2 != 16)
  {
    mlx::core::Floor::eval_cpu();
  }

  v6 = *(*v3 + 56);
  v8 = v6;
  v9 = BYTE4(v6);
  if (mlx::core::issubdtype(&v8, &mlx::core::inexact))
  {
    mlx::core::unary_fp<mlx::core::detail::Floor>(v3, a3, *(a1 + 8), *(a1 + 16));
  }

  return mlx::core::array::copy_shared_buffer(a3, v3);
}

void mlx::core::unary_fp<mlx::core::detail::Floor>(mlx::core *a1, int ***a2, mlx::core::array *a3, unsigned int a4)
{
  v7[5] = *MEMORY[0x277D85DE8];
  mlx::core::set_unary_output_data(a1, a2, a3);
  mlx::core::cpu::get_command_encoder(a3, a4);
  mlx::core::array::unsafe_weak_copy(a1, v7);
}

void sub_25A55D728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

void mlx::core::unary_complex_to_float<mlx::core::detail::Imag>(mlx::core *a1, int ***a2, mlx::core::array *a3, unsigned int a4)
{
  v7[5] = *MEMORY[0x277D85DE8];
  mlx::core::set_unary_output_data(a1, a2, a3);
  mlx::core::cpu::get_command_encoder(a3, a4);
  mlx::core::array::unsafe_weak_copy(a1, v7);
}

void sub_25A55D824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

mlx::core *mlx::core::Log::eval_cpu(uint64_t a1, mlx::core **a2, int ***a3)
{
  result = *a2;
  if (a2[1] - *a2 != 16)
  {
    mlx::core::Log::eval_cpu();
  }

  v6 = *(a1 + 20);
  switch(v6)
  {
    case 0:
      v13 = *(a1 + 16);
      v15 = *(a1 + 8);

      mlx::core::unary_fp<mlx::core::detail::Log2>(result, a3, v15, v13);
    case 1:
      v10 = *(a1 + 16);
      v12 = *(a1 + 8);

      mlx::core::unary_fp<mlx::core::detail::Log10>(result, a3, v12, v10);
    case 2:
      v7 = *(a1 + 16);
      v9 = *(a1 + 8);

      mlx::core::unary_fp<mlx::core::detail::Log>(result, a3, v9, v7);
  }

  return result;
}

void mlx::core::unary_fp<mlx::core::detail::Log>(mlx::core *a1, int ***a2, mlx::core::array *a3, unsigned int a4)
{
  v7[5] = *MEMORY[0x277D85DE8];
  mlx::core::set_unary_output_data(a1, a2, a3);
  mlx::core::cpu::get_command_encoder(a3, a4);
  mlx::core::array::unsafe_weak_copy(a1, v7);
}

void sub_25A55D9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

void mlx::core::unary_fp<mlx::core::detail::Log2>(mlx::core *a1, int ***a2, mlx::core::array *a3, unsigned int a4)
{
  v7[5] = *MEMORY[0x277D85DE8];
  mlx::core::set_unary_output_data(a1, a2, a3);
  mlx::core::cpu::get_command_encoder(a3, a4);
  mlx::core::array::unsafe_weak_copy(a1, v7);
}

void sub_25A55DA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

void mlx::core::unary_fp<mlx::core::detail::Log10>(mlx::core *a1, int ***a2, mlx::core::array *a3, unsigned int a4)
{
  v7[5] = *MEMORY[0x277D85DE8];
  mlx::core::set_unary_output_data(a1, a2, a3);
  mlx::core::cpu::get_command_encoder(a3, a4);
  mlx::core::array::unsafe_weak_copy(a1, v7);
}

void sub_25A55DB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

void mlx::core::Log1p::eval_cpu(uint64_t a1, mlx::core **a2, int ***a3)
{
  if (a2[1] - *a2 == 16)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *a2;

    mlx::core::unary_fp<mlx::core::detail::Log1p>(v6, a3, v4, v5);
  }

  mlx::core::Log1p::eval_cpu();
}

void mlx::core::unary_fp<mlx::core::detail::Log1p>(mlx::core *a1, int ***a2, mlx::core::array *a3, unsigned int a4)
{
  v7[5] = *MEMORY[0x277D85DE8];
  mlx::core::set_unary_output_data(a1, a2, a3);
  mlx::core::cpu::get_command_encoder(a3, a4);
  mlx::core::array::unsafe_weak_copy(a1, v7);
}

void sub_25A55DC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

void mlx::core::LogicalNot::eval_cpu(uint64_t a1, mlx::core **a2, int ***a3)
{
  if (a2[1] - *a2 == 16)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *a2;

    mlx::core::unary<mlx::core::detail::LogicalNot>(v6, a3, v4, v5);
  }

  mlx::core::LogicalNot::eval_cpu();
}

void mlx::core::unary<mlx::core::detail::LogicalNot>(mlx::core *a1, int ***a2, mlx::core::array *a3, unsigned int a4)
{
  v7[5] = *MEMORY[0x277D85DE8];
  mlx::core::set_unary_output_data(a1, a2, a3);
  mlx::core::cpu::get_command_encoder(a3, a4);
  mlx::core::array::unsafe_weak_copy(a1, v7);
}

void sub_25A55DDAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

void mlx::core::Negative::eval_cpu(uint64_t a1, mlx::core **a2, int ***a3)
{
  if (a2[1] - *a2 == 16)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *a2;

    mlx::core::unary<mlx::core::detail::Negative>(v6, a3, v4, v5);
  }

  mlx::core::Negative::eval_cpu();
}

void mlx::core::unary<mlx::core::detail::Negative>(mlx::core *a1, int ***a2, mlx::core::array *a3, unsigned int a4)
{
  v7[5] = *MEMORY[0x277D85DE8];
  mlx::core::set_unary_output_data(a1, a2, a3);
  mlx::core::cpu::get_command_encoder(a3, a4);
  mlx::core::array::unsafe_weak_copy(a1, v7);
}

void sub_25A55DED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

void mlx::core::unary_complex_to_float<mlx::core::detail::Real>(mlx::core *a1, int ***a2, mlx::core::array *a3, unsigned int a4)
{
  v7[5] = *MEMORY[0x277D85DE8];
  mlx::core::set_unary_output_data(a1, a2, a3);
  mlx::core::cpu::get_command_encoder(a3, a4);
  mlx::core::array::unsafe_weak_copy(a1, v7);
}

void sub_25A55DFCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

uint64_t *mlx::core::Round::eval_cpu(uint64_t a1, uint64_t a2, int ***a3)
{
  v3 = *a2;
  if (*(a2 + 8) - *a2 != 16)
  {
    mlx::core::Round::eval_cpu();
  }

  v6 = *(*v3 + 56);
  v8 = v6;
  v9 = BYTE4(v6);
  if (mlx::core::issubdtype(&v8, &mlx::core::inexact))
  {
    mlx::core::unary_fp<mlx::core::detail::Round>(v3, a3, *(a1 + 8), *(a1 + 16));
  }

  return mlx::core::array::copy_shared_buffer(a3, v3);
}

void mlx::core::unary_fp<mlx::core::detail::Round>(mlx::core *a1, int ***a2, mlx::core::array *a3, unsigned int a4)
{
  v7[5] = *MEMORY[0x277D85DE8];
  mlx::core::set_unary_output_data(a1, a2, a3);
  mlx::core::cpu::get_command_encoder(a3, a4);
  mlx::core::array::unsafe_weak_copy(a1, v7);
}

void sub_25A55E140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

void mlx::core::Sigmoid::eval_cpu(uint64_t a1, mlx::core **a2, int ***a3)
{
  if (a2[1] - *a2 == 16)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *a2;

    mlx::core::unary_fp<mlx::core::detail::Sigmoid>(v6, a3, v4, v5);
  }

  mlx::core::Sigmoid::eval_cpu();
}

void mlx::core::unary_fp<mlx::core::detail::Sigmoid>(mlx::core *a1, int ***a2, mlx::core::array *a3, unsigned int a4)
{
  v7[5] = *MEMORY[0x277D85DE8];
  mlx::core::set_unary_output_data(a1, a2, a3);
  mlx::core::cpu::get_command_encoder(a3, a4);
  mlx::core::array::unsafe_weak_copy(a1, v7);
}

void sub_25A55E264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

uint64_t *mlx::core::Sign::eval_cpu(uint64_t a1, uint64_t a2, int ***this)
{
  v4 = *a2;
  if (*(a2 + 8) - v4 != 16)
  {
    mlx::core::Sign::eval_cpu();
  }

  if (*(*v4 + 56))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);

    mlx::core::unary<mlx::core::detail::Sign>(v4, this, v6, v7);
  }

  return mlx::core::array::copy_shared_buffer(this, v4);
}

void mlx::core::unary<mlx::core::detail::Sign>(mlx::core *a1, int ***a2, mlx::core::array *a3, unsigned int a4)
{
  v7[5] = *MEMORY[0x277D85DE8];
  mlx::core::set_unary_output_data(a1, a2, a3);
  mlx::core::cpu::get_command_encoder(a3, a4);
  mlx::core::array::unsafe_weak_copy(a1, v7);
}

void sub_25A55E3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

void mlx::core::Sin::eval_cpu(uint64_t a1, mlx::core **a2, int ***a3)
{
  if (a2[1] - *a2 == 16)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *a2;

    mlx::core::unary_fp<mlx::core::detail::Sin>(v6, a3, v4, v5);
  }

  mlx::core::Sin::eval_cpu();
}

void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core *a1, int ***a2, mlx::core::array *a3, unsigned int a4)
{
  v7[5] = *MEMORY[0x277D85DE8];
  mlx::core::set_unary_output_data(a1, a2, a3);
  mlx::core::cpu::get_command_encoder(a3, a4);
  mlx::core::array::unsafe_weak_copy(a1, v7);
}

void sub_25A55E4CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

void mlx::core::Sinh::eval_cpu(uint64_t a1, mlx::core **a2, int ***a3)
{
  if (a2[1] - *a2 == 16)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *a2;

    mlx::core::unary_fp<mlx::core::detail::Sinh>(v6, a3, v4, v5);
  }

  mlx::core::Sinh::eval_cpu();
}

void mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core *a1, int ***a2, mlx::core::array *a3, unsigned int a4)
{
  v7[5] = *MEMORY[0x277D85DE8];
  mlx::core::set_unary_output_data(a1, a2, a3);
  mlx::core::cpu::get_command_encoder(a3, a4);
  mlx::core::array::unsafe_weak_copy(a1, v7);
}

void sub_25A55E5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

void mlx::core::Square::eval_cpu(uint64_t a1, mlx::core **a2, int ***a3)
{
  if (a2[1] - *a2 == 16)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *a2;

    mlx::core::unary<mlx::core::detail::Square>(v6, a3, v4, v5);
  }

  mlx::core::Square::eval_cpu();
}

void mlx::core::unary<mlx::core::detail::Square>(mlx::core *a1, int ***a2, mlx::core::array *a3, unsigned int a4)
{
  v7[5] = *MEMORY[0x277D85DE8];
  mlx::core::set_unary_output_data(a1, a2, a3);
  mlx::core::cpu::get_command_encoder(a3, a4);
  mlx::core::array::unsafe_weak_copy(a1, v7);
}

void sub_25A55E714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

void mlx::core::Sqrt::eval_cpu(uint64_t a1, mlx::core **a2, int ***a3)
{
  v5 = *a2;
  if (a2[1] - *a2 == 16)
  {
    v6 = *(a1 + 16);
    v8 = *(a1 + 8);
    if (*(a1 + 20) == 1)
    {

      mlx::core::unary_fp<mlx::core::detail::Rsqrt>(v5, a3, v8, v6);
    }

    mlx::core::unary_fp<mlx::core::detail::Sqrt>(v5, a3, v8, v6);
  }

  mlx::core::Sqrt::eval_cpu();
}

void mlx::core::unary_fp<mlx::core::detail::Rsqrt>(mlx::core *a1, int ***a2, mlx::core::array *a3, unsigned int a4)
{
  v7[5] = *MEMORY[0x277D85DE8];
  mlx::core::set_unary_output_data(a1, a2, a3);
  mlx::core::cpu::get_command_encoder(a3, a4);
  mlx::core::array::unsafe_weak_copy(a1, v7);
}

void sub_25A55E854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

void mlx::core::unary_fp<mlx::core::detail::Sqrt>(mlx::core *a1, int ***a2, mlx::core::array *a3, unsigned int a4)
{
  v7[5] = *MEMORY[0x277D85DE8];
  mlx::core::set_unary_output_data(a1, a2, a3);
  mlx::core::cpu::get_command_encoder(a3, a4);
  mlx::core::array::unsafe_weak_copy(a1, v7);
}

void sub_25A55E934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

void mlx::core::Tan::eval_cpu(uint64_t a1, mlx::core **a2, int ***a3)
{
  if (a2[1] - *a2 == 16)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *a2;

    mlx::core::unary_fp<mlx::core::detail::Tan>(v6, a3, v4, v5);
  }

  mlx::core::Tan::eval_cpu();
}

void mlx::core::unary_fp<mlx::core::detail::Tan>(mlx::core *a1, int ***a2, mlx::core::array *a3, unsigned int a4)
{
  v7[5] = *MEMORY[0x277D85DE8];
  mlx::core::set_unary_output_data(a1, a2, a3);
  mlx::core::cpu::get_command_encoder(a3, a4);
  mlx::core::array::unsafe_weak_copy(a1, v7);
}

void sub_25A55EA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

void mlx::core::Tanh::eval_cpu(uint64_t a1, mlx::core **a2, int ***a3)
{
  if (a2[1] - *a2 == 16)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *a2;

    mlx::core::unary_fp<mlx::core::detail::Tanh>(v6, a3, v4, v5);
  }

  mlx::core::Tanh::eval_cpu();
}

void mlx::core::unary_fp<mlx::core::detail::Tanh>(mlx::core *a1, int ***a2, mlx::core::array *a3, unsigned int a4)
{
  v7[5] = *MEMORY[0x277D85DE8];
  mlx::core::set_unary_output_data(a1, a2, a3);
  mlx::core::cpu::get_command_encoder(a3, a4);
  mlx::core::array::unsafe_weak_copy(a1, v7);
}

void sub_25A55EB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

void mlx::core::Abs::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A55EC6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::ArcCos::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A55ED6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::ArcCosh::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A55EE6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::ArcSin::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A55EF6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::ArcSinh::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A55F06C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::ArcTan::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A55F16C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::ArcTanh::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A55F26C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::BitwiseInvert::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A55F36C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Ceil::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A55F46C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Conjugate::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A55F56C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Cos::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A55F66C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Cosh::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A55F76C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Erf::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A55F86C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::ErfInv::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A55F96C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Exp::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A55FA6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Expm1::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A55FB64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Floor::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A55FC64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Imag::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A55FD64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *mlx::core::Log::print(void *result, void *a2)
{
  v2 = *(result + 5);
  switch(v2)
  {
    case 0:
      return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Log2", 4);
    case 1:
      return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Log10", 5);
    case 2:
      return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Log", 3);
  }

  return result;
}

void mlx::core::Log::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A55FEB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Log1p::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A55FFAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::LogicalNot::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A5600AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Negative::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A5601AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Real::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A5602AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Round::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A5603AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Sigmoid::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A5604AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Sign::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A5605AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Sin::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A5606AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Sinh::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A5607AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Square::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A5608AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *mlx::core::Sqrt::print(uint64_t a1, void *a2)
{
  if (*(a1 + 20) == 1)
  {
    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Rsqrt", 5);
  }

  else
  {
    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Sqrt", 4);
  }
}

void mlx::core::Sqrt::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A5609C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Tan::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A560AC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Tanh::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A560BC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_signed<mlx::core::detail::Abs>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Abs,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, __int128 *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  *(a1 + 10) = (*(a1 + 10) + 1) % 10;
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0uLL;
  v14 = v3;
  v15 = v4;
  a2[1] = 0uLL;
  if (*(a1 + 10))
  {
    v5 = mlx::core::scheduler::scheduler(a1);
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_signed<mlx::core::detail::Abs>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Abs,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v14);
  }

  v6 = mlx::core::scheduler::scheduler(a1);
  mlx::core::scheduler::Scheduler::notify_new_task(v6);
  v10 = *a1;
  v11 = *(a1 + 2);
  v7 = v14;
  v14 = 0uLL;
  v12 = v7;
  v13 = v15;
  v15 = 0uLL;
  v9 = mlx::core::scheduler::scheduler(v8);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_signed<mlx::core::detail::Abs>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Abs,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Abs&&)::{lambda(void)#1}>(*(v9[1] + 8 * *a1), &v10);
}

void sub_25A560D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  mlx::core::array::~array((v17 + 32));
  mlx::core::array::~array((v17 + 16));
  mlx::core::array::~array((v16 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_signed<mlx::core::detail::Abs>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Abs,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Abs&&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_signed<mlx::core::detail::Abs>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Abs,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Abs&&)::{lambda(void)#1}>(&a1[1], a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A560E00(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_signed<mlx::core::detail::Abs>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Abs,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Abs&&)::{lambda(void)#1}>(unint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_signed<mlx::core::detail::Abs>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Abs,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Abs&&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_signed<mlx::core::detail::Abs>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Abs,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Abs&&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
{
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A560FE4(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v1 + 32));
  mlx::core::array::~array((v1 + 16));
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12unary_signedINS3_6detail3AbsEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFAFB0;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12unary_signedINS3_6detail3AbsEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFAFB0;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12unary_signedINS3_6detail3AbsEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFAFB0;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  v3 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 48);
  *(a2 + 40) = *(result + 40);
  *(a2 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12unary_signedINS3_6detail3AbsEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12unary_signedINS3_6detail3AbsEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12unary_signedINS3_6detail3AbsEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1, int8x16_t a2)
{
  mlx::core::unary_signed<mlx::core::detail::Abs>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Abs,mlx::core::Stream)::{lambda(void)#1}::operator()((a1 + 24), a2);
  v3 = mlx::core::scheduler::scheduler(v2);

  mlx::core::scheduler::Scheduler::notify_task_completion(v3);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12unary_signedINS3_6detail3AbsEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::unary_signed<mlx::core::detail::Abs>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Abs,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t *a1, int8x16_t a2)
{
  v2 = (a1 + 2);
  v3 = *(a1[2] + 56);
  if (v3 <= 8)
  {
    if (v3 > 6)
    {
      if (v3 == 7)
      {

        mlx::core::unary_op<int,int,mlx::core::detail::Abs>(a1, v2);
      }

      else
      {

        mlx::core::unary_op<long long,long long,mlx::core::detail::Abs>(a1, v2);
      }
    }

    else if (v3 == 5)
    {

      mlx::core::unary_op<signed char,signed char,mlx::core::detail::Abs>(a1, v2);
    }

    else
    {
      if (v3 != 6)
      {
        goto LABEL_38;
      }

      mlx::core::unary_op<short,short,mlx::core::detail::Abs>(a1, v2);
    }
  }

  else if (v3 <= 10)
  {
    if (v3 == 9)
    {

      mlx::core::unary_op<half,half,mlx::core::detail::Abs>(a1, v2);
    }

    else
    {

      mlx::core::unary_op<float,float,mlx::core::detail::Abs>(a1, v2);
    }
  }

  else
  {
    switch(v3)
    {
      case 11:

        mlx::core::unary_op<double,double,mlx::core::detail::Abs>(a1, v2, a2);
        break;
      case 12:

        mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Abs>(a1, v2);
        break;
      case 13:

        mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Abs>(a1, v2);
        return;
      default:
LABEL_38:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "[Abs] Called on unsigned type");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }
}

void mlx::core::unary_op<signed char,signed char,mlx::core::detail::Abs>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    v6 = *(v3 + 160);
    if (v6 >= 0x10)
    {
      do
      {
        v7 = *v4++;
        *v5++ = vabsq_s8(v7);
        v6 -= 16;
      }

      while (v6 > 0xF);
    }

    for (; v6; --v6)
    {
      v9 = v4->i8[0];
      v4 = (v4 + 1);
      v8 = v9;
      if (v9 < 0)
      {
        v8 = -v8;
      }

      v5->i8[0] = v8;
      v5 = (v5 + 1);
    }

    return;
  }

  v10 = *(v3 + 8);
  if (v10 == *v3)
  {
    v12 = 1;
    v13 = 1;
  }

  else
  {
    v11 = v10 - *v3;
    v12 = *(v10 - 4);
    v13 = *(*(v3 + 32) - 8);
    if ((v11 >> 2) > 1)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v37, v3, (v3 + 24), (v11 >> 2) - 1);
      if (*(*a1 + 48))
      {
        v15 = 0;
        v16 = v37;
        do
        {
          if (v12)
          {
            v17 = &v4->i8[v16];
            v18 = v5;
            v19 = v12;
            do
            {
              v20 = *v17;
              if (v20 < 0)
              {
                v20 = -v20;
              }

              v18->i8[0] = v20;
              v18 = (v18 + 1);
              v17 += v13;
              --v19;
            }

            while (v19);
          }

          v21 = v39 - v38;
          v22 = (v39 - v38) >> 2;
          if (v22)
          {
            v23 = ((v21 << 30) - 0x100000000) >> 32;
            v24 = __p;
            v25 = v40;
            v26 = __p + 4 * v23;
            v27 = *v26;
            v28 = v38 + 4 * v23;
            if (v22 >= 2 && v27 == *v28 - 1)
            {
              v31 = (v21 >> 2) & 0x7FFFFFFF;
              v30 = v31 - 1;
              v32 = 4 * v31;
              v33 = v38 - 8;
              do
              {
                v34 = v30;
                *v26 = 0;
                v16 -= v25[v23] * (*v28 - 1);
                v37 = v16;
                --v30;
                v26 = &v24[v32 - 8];
                v27 = *v26;
                v24 -= 4;
                if (v34 < 2)
                {
                  break;
                }

                v28 = &v33[v32];
                v35 = *&v33[4 * v31] - 1;
                v33 -= 4;
                v23 = v30;
              }

              while (v27 == v35);
              v26 = &v24[4 * v31 - 4];
            }

            else
            {
              v30 = ((v21 << 30) - 0x100000000) >> 32;
            }

            *v26 = v27 + 1;
            v16 += v25[v30];
            v37 = v16;
          }

          v15 += v12;
          v5 = (v5 + v12);
        }

        while (v15 < *(*a1 + 48));
      }

      if (__p)
      {
        v43 = __p;
        operator delete(__p);
      }

      if (v40)
      {
        v41 = v40;
        operator delete(v40);
      }

      if (v38)
      {
        v39 = v38;
        operator delete(v38);
      }

      return;
    }

    if (!v12)
    {
      return;
    }
  }

  do
  {
    v36 = v4->i8[0];
    if (v36 < 0)
    {
      v36 = -v36;
    }

    v5->i8[0] = v36;
    v5 = (v5 + 1);
    v4 = (v4 + v13);
    --v12;
  }

  while (v12);
}

void mlx::core::unary_op<short,short,mlx::core::detail::Abs>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    v6 = *(v3 + 160);
    if (v6 >= 0x10)
    {
      do
      {
        v8 = *v4;
        v7 = *(v4 + 1);
        v4 += 2;
        *v5 = vabsq_s16(v8);
        v5[1] = vabsq_s16(v7);
        v5 += 2;
        v6 -= 16;
      }

      while (v6 > 0xF);
    }

    for (; v6; --v6)
    {
      v10 = *v4;
      v4 = (v4 + 2);
      v9 = v10;
      if (v10 < 0)
      {
        v9 = -v9;
      }

      v5->i16[0] = v9;
      v5 = (v5 + 2);
    }

    return;
  }

  v11 = *(v3 + 8);
  if (v11 == *v3)
  {
    v13 = 1;
    v14 = 1;
  }

  else
  {
    v12 = v11 - *v3;
    v13 = *(v11 - 4);
    v14 = *(*(v3 + 32) - 8);
    if ((v12 >> 2) > 1)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v43, v3, (v3 + 24), (v12 >> 2) - 1);
      v16 = *(*a1 + 48);
      if (v16)
      {
        v17 = 0;
        v18 = v43;
        v19 = v46;
        v20 = (v45 - v44) >> 2;
        v21 = (((v45 - v44) << 30) - 0x100000000) >> 32;
        v22 = __p;
        v23 = __p + 4 * v21;
        v24 = v44 + 4 * v21;
        v25 = 2 * v14;
        v26 = 4 * (v20 & 0x7FFFFFFF);
        v27 = v44 - 8;
        do
        {
          if (v13)
          {
            v28 = v4 + v18;
            v29 = v5;
            v30 = v13;
            do
            {
              v31 = *v28;
              if (v31 < 0)
              {
                v31 = -v31;
              }

              v29->i16[0] = v31;
              v29 = (v29 + 2);
              v28 = (v28 + v25);
              --v30;
            }

            while (v30);
          }

          if (v20)
          {
            v32 = *v23;
            if (v20 >= 2 && v32 == *v24 - 1)
            {
              v33 = v22;
              v34 = v27;
              v35 = (v20 & 0x7FFFFFFF) - 1;
              v36 = v24;
              v37 = v23;
              v38 = v21;
              do
              {
                v39 = v35;
                *v37 = 0;
                v18 -= v19[v38] * (*v36 - 1);
                v43 = v18;
                --v35;
                v37 = &v33[v26 - 8];
                v32 = *v37;
                v33 -= 4;
                if (v39 < 2)
                {
                  break;
                }

                v36 = &v34[v26];
                v40 = *&v34[4 * (v20 & 0x7FFFFFFF)] - 1;
                v34 -= 4;
                v38 = v35;
              }

              while (v32 == v40);
              v41 = &v33[v26 - 4];
            }

            else
            {
              v35 = v21;
              v41 = v23;
            }

            *v41 = v32 + 1;
            v18 += v19[v35];
            v43 = v18;
          }

          v17 += v13;
          v5 = (v5 + 2 * v13);
        }

        while (v17 < v16);
        if (!v22)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v22 = __p;
        if (!__p)
        {
          goto LABEL_30;
        }
      }

      v49 = v22;
      operator delete(v22);
LABEL_30:
      if (v46)
      {
        v47 = v46;
        operator delete(v46);
      }

      if (v44)
      {
        v45 = v44;
        operator delete(v44);
      }

      return;
    }

    if (!v13)
    {
      return;
    }
  }

  do
  {
    v42 = *v4;
    if (v42 < 0)
    {
      v42 = -v42;
    }

    v5->i16[0] = v42;
    v5 = (v5 + 2);
    v4 = (v4 + 2 * v14);
    --v13;
  }

  while (v13);
}

void mlx::core::unary_op<int,int,mlx::core::detail::Abs>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    v6 = *(v3 + 160);
    if (v6 >= 8)
    {
      do
      {
        v8 = *v4;
        v7 = *(v4 + 1);
        v4 += 2;
        *v5 = vabsq_s32(v8);
        v5[1] = vabsq_s32(v7);
        v5 += 2;
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v10 = *v4;
      v4 = (v4 + 4);
      v9 = v10;
      if (v10 < 0)
      {
        v9 = -v9;
      }

      v5->i32[0] = v9;
      v5 = (v5 + 4);
    }

    return;
  }

  v11 = *(v3 + 8);
  if (v11 == *v3)
  {
    v13 = 1;
    v14 = 1;
  }

  else
  {
    v12 = v11 - *v3;
    v13 = *(v11 - 4);
    v14 = *(*(v3 + 32) - 8);
    if ((v12 >> 2) > 1)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v43, v3, (v3 + 24), (v12 >> 2) - 1);
      v16 = *(*a1 + 48);
      if (v16)
      {
        v17 = 0;
        v18 = v43;
        v19 = v46;
        v20 = (v45 - v44) >> 2;
        v21 = (((v45 - v44) << 30) - 0x100000000) >> 32;
        v22 = __p;
        v23 = __p + 4 * v21;
        v24 = v44 + 4 * v21;
        v25 = 4 * v14;
        v26 = 4 * (v20 & 0x7FFFFFFF);
        v27 = v44 - 8;
        do
        {
          if (v13)
          {
            v28 = v4 + v18;
            v29 = v5;
            v30 = v13;
            do
            {
              v31 = *v28;
              if (*v28 < 0)
              {
                v31 = -v31;
              }

              v29->i32[0] = v31;
              v29 = (v29 + 4);
              v28 = (v28 + v25);
              --v30;
            }

            while (v30);
          }

          if (v20)
          {
            v32 = *v23;
            if (v20 >= 2 && v32 == *v24 - 1)
            {
              v33 = v22;
              v34 = v27;
              v35 = (v20 & 0x7FFFFFFF) - 1;
              v36 = v24;
              v37 = v23;
              v38 = v21;
              do
              {
                v39 = v35;
                *v37 = 0;
                v18 -= v19[v38] * (*v36 - 1);
                v43 = v18;
                --v35;
                v37 = &v33[v26 - 8];
                v32 = *v37;
                v33 -= 4;
                if (v39 < 2)
                {
                  break;
                }

                v36 = &v34[v26];
                v40 = *&v34[4 * (v20 & 0x7FFFFFFF)] - 1;
                v34 -= 4;
                v38 = v35;
              }

              while (v32 == v40);
              v41 = &v33[v26 - 4];
            }

            else
            {
              v35 = v21;
              v41 = v23;
            }

            *v41 = v32 + 1;
            v18 += v19[v35];
            v43 = v18;
          }

          v17 += v13;
          v5 = (v5 + 4 * v13);
        }

        while (v17 < v16);
        if (!v22)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v22 = __p;
        if (!__p)
        {
          goto LABEL_30;
        }
      }

      v49 = v22;
      operator delete(v22);
LABEL_30:
      if (v46)
      {
        v47 = v46;
        operator delete(v46);
      }

      if (v44)
      {
        v45 = v44;
        operator delete(v44);
      }

      return;
    }

    if (!v13)
    {
      return;
    }
  }

  do
  {
    v42 = *v4;
    if (*v4 < 0)
    {
      v42 = -v42;
    }

    v5->i32[0] = v42;
    v5 = (v5 + 4);
    v4 = (v4 + 4 * v14);
    --v13;
  }

  while (v13);
}

void mlx::core::unary_op<long long,long long,mlx::core::detail::Abs>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    v6 = *(v3 + 160);
    if (v6 >= 4)
    {
      do
      {
        v8 = *v4;
        v7 = *(v4 + 1);
        v4 += 2;
        *v5 = vabsq_s64(v8);
        v5[1] = vabsq_s64(v7);
        v5 += 2;
        v6 -= 4;
      }

      while (v6 > 3);
    }

    for (; v6; --v6)
    {
      v10 = *v4;
      v4 = (v4 + 8);
      v9 = v10;
      if (v10 < 0)
      {
        v9 = -v9;
      }

      v5->i64[0] = v9;
      v5 = (v5 + 8);
    }

    return;
  }

  v11 = *(v3 + 8);
  if (v11 == *v3)
  {
    v13 = 1;
    v14 = 1;
  }

  else
  {
    v12 = v11 - *v3;
    v13 = *(v11 - 4);
    v14 = *(*(v3 + 32) - 8);
    if ((v12 >> 2) > 1)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v43, v3, (v3 + 24), (v12 >> 2) - 1);
      v16 = *(*a1 + 48);
      if (v16)
      {
        v17 = 0;
        v18 = v46;
        v19 = v43;
        v20 = (v45 - v44) >> 2;
        v21 = (((v45 - v44) << 30) - 0x100000000) >> 32;
        v22 = __p;
        v23 = __p + 4 * v21;
        v24 = v44 + 4 * v21;
        v25 = 8 * v14;
        v26 = 4 * (v20 & 0x7FFFFFFF);
        v27 = v44 - 8;
        do
        {
          if (v13)
          {
            v28 = v4 + v19;
            v29 = v5;
            v30 = v13;
            do
            {
              v31 = *v28;
              if (*v28 < 0)
              {
                v31 = -v31;
              }

              *v29++ = v31;
              v28 = (v28 + v25);
              --v30;
            }

            while (v30);
          }

          if (v20)
          {
            v32 = *v23;
            if (v20 >= 2 && v32 == *v24 - 1)
            {
              v33 = v22;
              v34 = v27;
              v35 = (v20 & 0x7FFFFFFF) - 1;
              v36 = v24;
              v37 = v23;
              v38 = v21;
              do
              {
                v39 = v35;
                *v37 = 0;
                v19 -= v18[v38] * (*v36 - 1);
                v43 = v19;
                --v35;
                v37 = &v33[v26 - 8];
                v32 = *v37;
                v33 -= 4;
                if (v39 < 2)
                {
                  break;
                }

                v36 = &v34[v26];
                v40 = *&v34[4 * (v20 & 0x7FFFFFFF)] - 1;
                v34 -= 4;
                v38 = v35;
              }

              while (v32 == v40);
              v41 = &v33[v26 - 4];
            }

            else
            {
              v35 = v21;
              v41 = v23;
            }

            *v41 = v32 + 1;
            v19 += v18[v35];
            v43 = v19;
          }

          v17 += v13;
          v5 = (v5 + 8 * v13);
        }

        while (v17 < v16);
        if (!v22)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v22 = __p;
        if (!__p)
        {
          goto LABEL_30;
        }
      }

      v49 = v22;
      operator delete(v22);
LABEL_30:
      if (v46)
      {
        v47 = v46;
        operator delete(v46);
      }

      if (v44)
      {
        v45 = v44;
        operator delete(v44);
      }

      return;
    }

    if (!v13)
    {
      return;
    }
  }

  do
  {
    v42 = *v4;
    if (*v4 < 0)
    {
      v42 = -v42;
    }

    v5->i64[0] = v42;
    v5 = (v5 + 8);
    v4 = (v4 + 8 * v14);
    --v13;
  }

  while (v13);
}

__int16 mlx::core::unary_op<half,half,mlx::core::detail::Abs>@<H0>(uint64_t *a1@<X0>, uint64_t a2@<X1>)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    v6 = *(v3 + 160);
    if (v6 >= 8)
    {
      do
      {
        v7 = *v4;
        v4 += 8;
        v8 = vabsq_f16(v7);
        *v5++ = v8;
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v9 = *v4++;
      *v8.i16 = fabsl(v9);
      v5->i16[0] = v8.i16[0];
      v5 = (v5 + 2);
    }

    return v8.i16[0];
  }

  v10 = *(v3 + 8);
  if (v10 == *v3)
  {
    v12 = 1;
    v13 = 1;
    do
    {
LABEL_32:
      *v8.i16 = fabsl(*v4);
      v5->i16[0] = v8.i16[0];
      v5 = (v5 + 2);
      v4 += v13;
      --v12;
    }

    while (v12);
    return v8.i16[0];
  }

  v11 = v10 - *v3;
  v12 = *(v10 - 4);
  v13 = *(*(v3 + 32) - 8);
  if ((v11 >> 2) <= 1)
  {
    if (!v12)
    {
      return v8.i16[0];
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v41, v3, (v3 + 24), (v11 >> 2) - 1);
  v15 = *(*a1 + 48);
  if (v15)
  {
    v16 = 0;
    v17 = v41;
    v18 = v44;
    v19 = (v43 - v42) >> 2;
    v20 = (((v43 - v42) << 30) - 0x100000000) >> 32;
    v21 = __p;
    v22 = __p + 4 * v20;
    v23 = v42 + 4 * v20;
    v24 = 2 * v13;
    v25 = 4 * (v19 & 0x7FFFFFFF);
    v26 = v42 - 8;
    do
    {
      if (v12)
      {
        v27 = &v4[v17];
        v28 = v5;
        v29 = v12;
        do
        {
          *v8.i16 = fabsl(*v27);
          v28->i16[0] = v8.i16[0];
          v28 = (v28 + 2);
          v27 = (v27 + v24);
          --v29;
        }

        while (v29);
      }

      if (v19)
      {
        v30 = *v22;
        if (v19 >= 2 && v30 == *v23 - 1)
        {
          v31 = v21;
          v32 = v26;
          v33 = (v19 & 0x7FFFFFFF) - 1;
          v34 = v23;
          v35 = v22;
          v36 = v20;
          do
          {
            v37 = v33;
            *v35 = 0;
            v17 -= v18[v36] * (*v34 - 1);
            v41 = v17;
            --v33;
            v35 = &v31[v25 - 8];
            v30 = *v35;
            v31 -= 4;
            if (v37 < 2)
            {
              break;
            }

            v34 = &v32[v25];
            v38 = *&v32[4 * (v19 & 0x7FFFFFFF)] - 1;
            v32 -= 4;
            v36 = v33;
          }

          while (v30 == v38);
          v39 = &v31[v25 - 4];
        }

        else
        {
          v33 = v20;
          v39 = v22;
        }

        *v39 = v30 + 1;
        v17 += v18[v33];
        v41 = v17;
      }

      v16 += v12;
      v5 = (v5 + 2 * v12);
    }

    while (v16 < v15);
    if (!v21)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v21 = __p;
    if (!__p)
    {
      goto LABEL_26;
    }
  }

  v47 = v21;
  operator delete(v21);
LABEL_26:
  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  return v8.i16[0];
}