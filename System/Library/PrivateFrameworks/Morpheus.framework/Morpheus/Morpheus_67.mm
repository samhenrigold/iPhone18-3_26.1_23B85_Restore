void sub_25A62B208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<float,float,true,mlx::core::ScalarVector<mlx::core::detail::Add>>(_DWORD *a1, float *a2, float *a3, int a4, int a5, int **a6, uint64_t **a7, uint64_t **a8, double d0_0, void *a9)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::Add>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0, d0_0);
      break;
    case 2:

      mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::Add>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0, d0_0);
      break;
    case 1:

      mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::Add>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0, d0_0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v62, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v55, a6, a8, v16);
      if (a5 >= 1)
      {
        v20 = a5;
        v21 = 0;
        v54 = *(*a9 + 8 * a4 - 32);
        v22 = v20;
        do
        {
          mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::Add>,3,true>(&a1[v62], &a2[v55], &a3[v21], a6, a7, a8, a9, v16, v19);
          v23 = v64 - v63;
          v24 = (v64 - v63) >> 2;
          if (v24)
          {
            v25 = v67;
            v26 = ((v23 << 30) - 0x100000000) >> 32;
            v27 = v67 + 4 * v26;
            v28 = *v27;
            v29 = v63 + 4 * v26;
            v30 = v65;
            v31 = v62;
            if (v24 >= 2 && v28 == *v29 - 1)
            {
              v34 = (v23 >> 2) & 0x7FFFFFFF;
              v33 = v34 - 1;
              v35 = 4 * v34;
              v36 = v63 - 8;
              do
              {
                v37 = v33;
                *v27 = 0;
                v31 -= v30[v26] * (*v29 - 1);
                v62 = v31;
                --v33;
                v27 = &v25[v35 - 8];
                v28 = *v27;
                v25 -= 4;
                if (v37 < 2)
                {
                  break;
                }

                v29 = &v36[v35];
                v38 = *&v36[4 * v34] - 1;
                v36 -= 4;
                v26 = v33;
              }

              while (v28 == v38);
              v27 = &v25[4 * v34 - 4];
            }

            else
            {
              v33 = ((v23 << 30) - 0x100000000) >> 32;
            }

            *v27 = v28 + 1;
            v62 = v30[v33] + v31;
          }

          v39 = v57 - v56;
          v40 = (v57 - v56) >> 2;
          if (v40)
          {
            v41 = __p;
            v42 = ((v39 << 30) - 0x100000000) >> 32;
            v43 = __p + 4 * v42;
            v44 = *v43;
            v45 = v58;
            v46 = v55;
            if (v40 >= 2 && (v47 = v56 + 4 * v42, v44 == *v47 - 1))
            {
              v48 = (v39 >> 2) & 0x7FFFFFFF;
              v49 = v48 - 1;
              v50 = 4 * v48;
              v51 = v56 - 8;
              do
              {
                v52 = v49;
                *v43 = 0;
                v46 -= v45[v42] * (*v47 - 1);
                v55 = v46;
                --v49;
                v43 = &v41[v50 - 8];
                v44 = *v43;
                v41 -= 4;
                if (v52 < 2)
                {
                  break;
                }

                v47 = &v51[v50];
                v53 = *&v51[4 * v48] - 1;
                v51 -= 4;
                v42 = v49;
              }

              while (v44 == v53);
              v43 = &v41[4 * v48 - 4];
            }

            else
            {
              v49 = ((v39 << 30) - 0x100000000) >> 32;
            }

            *v43 = v44 + 1;
            v55 = v45[v49] + v46;
          }

          v21 += v54;
        }

        while (v21 < v22);
      }

      if (__p)
      {
        v61 = __p;
        operator delete(__p);
      }

      if (v58)
      {
        v59 = v58;
        operator delete(v58);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
      }

      if (v67)
      {
        v68 = v67;
        operator delete(v67);
      }

      if (v65)
      {
        v66 = v65;
        operator delete(v65);
      }

      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      break;
  }
}

void sub_25A62B620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<float,float,false,mlx::core::detail::Add>(float *a1, float *a2, float *a3, int a4, int a5, int **a6, uint64_t **a7, uint64_t **a8, void **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<float,float,mlx::core::detail::Add,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<float,float,mlx::core::detail::Add,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:
      v17 = **a6;
      if (v17 >= 1)
      {
        v18 = 4 * **a7;
        v19 = 4 * **a8;
        v20 = 4 * **a9;
        do
        {
          *v12 = *v14 + *v13;
          v14 = (v14 + v18);
          v13 = (v13 + v19);
          v12 = (v12 + v20);
          --v17;
        }

        while (v17);
      }

      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v62, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v55, a6, a8, v15);
      if (a5 >= 1)
      {
        v22 = 0;
        v23 = (*a9)[a4 - 4];
        do
        {
          mlx::core::binary_op_dims<float,float,mlx::core::detail::Add,3,false>(&v14[v62], &v13[v55], &v12[v22], a6, a7, a8, a9, v15);
          v24 = v64 - v63;
          v25 = (v64 - v63) >> 2;
          if (v25)
          {
            v26 = v67;
            v27 = ((v24 << 30) - 0x100000000) >> 32;
            v28 = v67 + 4 * v27;
            v29 = *v28;
            v30 = v63 + 4 * v27;
            v31 = v65;
            v32 = v62;
            if (v25 >= 2 && v29 == *v30 - 1)
            {
              v35 = (v24 >> 2) & 0x7FFFFFFF;
              v34 = v35 - 1;
              v36 = 4 * v35;
              v37 = v63 - 8;
              do
              {
                v38 = v34;
                *v28 = 0;
                v32 -= v31[v27] * (*v30 - 1);
                v62 = v32;
                --v34;
                v28 = &v26[v36 - 8];
                v29 = *v28;
                v26 -= 4;
                if (v38 < 2)
                {
                  break;
                }

                v30 = &v37[v36];
                v39 = *&v37[4 * v35] - 1;
                v37 -= 4;
                v27 = v34;
              }

              while (v29 == v39);
              v28 = &v26[4 * v35 - 4];
            }

            else
            {
              v34 = ((v24 << 30) - 0x100000000) >> 32;
            }

            *v28 = v29 + 1;
            v62 = v31[v34] + v32;
          }

          v40 = v57 - v56;
          v41 = (v57 - v56) >> 2;
          if (v41)
          {
            v42 = __p;
            v43 = ((v40 << 30) - 0x100000000) >> 32;
            v44 = __p + 4 * v43;
            v45 = *v44;
            v46 = v58;
            v47 = v55;
            if (v41 >= 2 && (v48 = v56 + 4 * v43, v45 == *v48 - 1))
            {
              v49 = (v40 >> 2) & 0x7FFFFFFF;
              v50 = v49 - 1;
              v51 = 4 * v49;
              v52 = v56 - 8;
              do
              {
                v53 = v50;
                *v44 = 0;
                v47 -= v46[v43] * (*v48 - 1);
                v55 = v47;
                --v50;
                v44 = &v42[v51 - 8];
                v45 = *v44;
                v42 -= 4;
                if (v53 < 2)
                {
                  break;
                }

                v48 = &v52[v51];
                v54 = *&v52[4 * v49] - 1;
                v52 -= 4;
                v43 = v50;
              }

              while (v45 == v54);
              v44 = &v42[4 * v49 - 4];
            }

            else
            {
              v50 = ((v40 << 30) - 0x100000000) >> 32;
            }

            *v44 = v45 + 1;
            v55 = v46[v50] + v47;
          }

          v22 += v23;
        }

        while (v22 < a5);
      }

      if (__p)
      {
        v61 = __p;
        operator delete(__p);
      }

      if (v58)
      {
        v59 = v58;
        operator delete(v58);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
      }

      if (v67)
      {
        v68 = v67;
        operator delete(v67);
      }

      if (v65)
      {
        v66 = v65;
        operator delete(v65);
      }

      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      break;
  }
}

void sub_25A62BA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

float *mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::Add>,1,true>(float *result, float *a2, float *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a7 + 8 * a8);
    v11 = 4 * *(*a5 + 8 * a8);
    v12 = 4 * *(*a6 + 8 * a8);
    do
    {
      v13 = a2;
      v14 = a3;
      v15 = v10;
      v16 = result;
      if (v10 >= 8)
      {
        v17 = 0;
        v15 = v10;
        do
        {
          v18 = v15;
          v19 = &a3[v17];
          v20 = vaddq_f32(*&result[v17 + 4], *&a2[v17 + 4]);
          *v19 = vaddq_f32(*&result[v17], *&a2[v17]);
          *(v19 + 1) = v20;
          v15 = v18 - 8;
          v17 += 8;
        }

        while (v18 > 0xF);
        v16 = &result[v17];
        v14 = &a3[v17];
        v13 = &a2[v17];
      }

      if (v15 >= 1)
      {
        v21 = v15 + 1;
        do
        {
          v22 = *v16++;
          v23 = v22;
          v24 = *v13++;
          *v14++ = v23 + v24;
          --v21;
        }

        while (v21 > 1);
      }

      a3 += v10;
      result = (result + v11);
      a2 = (a2 + v12);
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

float *mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::Add>,2,true>(float *result, float *a2, float *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * *(*a6 + 8 * a8);
    v17 = 4 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::Add>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

float *mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::Add>,3,true>(float *result, float *a2, float *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * *(*a6 + 8 * a8);
    v17 = 4 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::Add>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

float *mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::Add>,1,true>(float *result, _DWORD *a2, float *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(*a6 + 8 * a8);
    v12 = *(*a7 + 8 * a8);
    v13 = 4 * *(*a5 + 8 * a8);
    do
    {
      LODWORD(a9) = *a2;
      v14 = v12;
      v15 = a3;
      v16 = result;
      if (v12 >= 8)
      {
        v17 = 0;
        v18 = vdupq_lane_s32(*&a9, 0);
        v14 = v12;
        do
        {
          v19 = v14;
          v20 = &a3[v17];
          v21 = vaddq_f32(v18, *&result[v17 + 4]);
          *v20 = vaddq_f32(v18, *&result[v17]);
          *(v20 + 1) = v21;
          v14 -= 8;
          v17 += 8;
        }

        while (v19 > 0xF);
        v16 = &result[v17];
        v15 = &a3[v17];
      }

      if (v14 >= 1)
      {
        v22 = v14 + 1;
        do
        {
          v23 = *v16++;
          *v15++ = *&a9 + v23;
          --v22;
        }

        while (v22 > 1);
      }

      a3 += v12;
      result = (result + v13);
      a2 += v11;
      ++v10;
    }

    while (v10 != v9);
  }

  return result;
}

float *mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::Add>,2,true>(float *result, _DWORD *a2, float *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v15 = result;
    v16 = 4 * *(*a5 + 8 * a8);
    v17 = 4 * *(*a6 + 8 * a8);
    v18 = 4 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::Add>,1,true>(v15, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      v15 = (v15 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }

  return result;
}

float *mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::Add>,3,true>(float *result, _DWORD *a2, float *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v15 = result;
    v16 = 4 * *(*a5 + 8 * a8);
    v17 = 4 * *(*a6 + 8 * a8);
    v18 = 4 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::Add>,2,true>(v15, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      v15 = (v15 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }

  return result;
}

_DWORD *mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::Add>,1,true>(_DWORD *result, float *a2, float *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(*a5 + 8 * a8);
    v12 = *(*a7 + 8 * a8);
    v13 = 4 * *(*a6 + 8 * a8);
    do
    {
      LODWORD(a9) = *result;
      v14 = v12;
      v15 = a3;
      v16 = a2;
      if (v12 >= 8)
      {
        v17 = 0;
        v18 = vdupq_lane_s32(*&a9, 0);
        v14 = v12;
        do
        {
          v19 = v14;
          v20 = &a3[v17];
          v21 = vaddq_f32(v18, *&a2[v17 + 4]);
          *v20 = vaddq_f32(v18, *&a2[v17]);
          *(v20 + 1) = v21;
          v14 -= 8;
          v17 += 8;
        }

        while (v19 > 0xF);
        v16 = &a2[v17];
        v15 = &a3[v17];
      }

      if (v14 >= 1)
      {
        v22 = v14 + 1;
        do
        {
          v23 = *v16++;
          *v15++ = *&a9 + v23;
          --v22;
        }

        while (v22 > 1);
      }

      a3 += v12;
      result += v11;
      a2 = (a2 + v13);
      ++v10;
    }

    while (v10 != v9);
  }

  return result;
}

_DWORD *mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::Add>,2,true>(_DWORD *result, float *a2, float *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v15 = result;
    v16 = 4 * *(*a5 + 8 * a8);
    v17 = 4 * *(*a6 + 8 * a8);
    v18 = 4 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::Add>,1,true>(v15, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      v15 = (v15 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }

  return result;
}

_DWORD *mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::Add>,3,true>(_DWORD *result, float *a2, float *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v15 = result;
    v16 = 4 * *(*a5 + 8 * a8);
    v17 = 4 * *(*a6 + 8 * a8);
    v18 = 4 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::Add>,2,true>(v15, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      v15 = (v15 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }

  return result;
}

float *mlx::core::binary_op_dims<float,float,mlx::core::detail::Add,2,false>(float *result, float *a2, float *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = a8 + 1;
    v11 = *(*a5 + 8 * v10);
    v12 = *(*a6 + 8 * v10);
    v13 = *(*a7 + 8 * v10);
    v14 = *(*a4 + 4 * v10);
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * v11;
    v17 = 4 * *(*a6 + 8 * a8);
    v18 = 4 * v12;
    v19 = 4 * *(*a7 + 8 * a8);
    v20 = 4 * v13;
    do
    {
      if (v14 >= 1)
      {
        v21 = a3;
        v22 = a2;
        v23 = result;
        v24 = v14;
        do
        {
          *v21 = *v23 + *v22;
          v23 = (v23 + v16);
          v22 = (v22 + v18);
          v21 = (v21 + v20);
          --v24;
        }

        while (v24);
      }

      ++v9;
      result = (result + v15);
      a2 = (a2 + v17);
      a3 = (a3 + v19);
    }

    while (v9 != v8);
  }

  return result;
}

float *mlx::core::binary_op_dims<float,float,mlx::core::detail::Add,3,false>(float *result, float *a2, float *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * *(*a6 + 8 * a8);
    v17 = 4 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<float,float,mlx::core::detail::Add,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<double,double,mlx::core::detail::Add>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v79 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 <= 1)
  {
    if (!a4)
    {
      v11->f64[0] = *v9 + v10->f64[0];
      return;
    }

    if (a4 == 1)
    {
      v12 = *(*a2 + 160);
      v13 = *v9;
      if (v12 < 4)
      {
        v17 = *(*a2 + 160);
      }

      else
      {
        v14 = vdupq_lane_s64(v13, 0);
        do
        {
          v16 = *v10;
          v15 = v10[1];
          v10 += 2;
          *v11 = vaddq_f64(v14, v16);
          v11[1] = vaddq_f64(v14, v15);
          v11 += 2;
          v17 = v12 - 4;
          v18 = v12 > 7;
          v12 -= 4;
        }

        while (v18);
      }

      if (v17 >= 1)
      {
        v62 = v17 + 1;
        do
        {
          v63 = v10->f64[0];
          v10 = (v10 + 8);
          v11->f64[0] = *&v13 + v63;
          v11 = (v11 + 8);
          --v62;
        }

        while (v62 > 1);
      }

      return;
    }

LABEL_13:
    memset(v75, 0, sizeof(v75));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v75, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
    v25 = *a2;
    memset(v76, 0, sizeof(v76));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v76, *(v25 + 24), *(v25 + 32), (*(v25 + 32) - *(v25 + 24)) >> 3);
    v26 = *a3;
    v78[0] = 0;
    v78[1] = 0;
    v77 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v77, *(v26 + 24), *(v26 + 32), (*(v26 + 32) - *(v26 + 24)) >> 3);
    memset(v70, 0, sizeof(v70));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v70, v75, &v79, 3uLL);
    mlx::core::collapse_contiguous_dims(v8, v70, 0x7FFFFFFFuLL, &__p);
    v74 = v70;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v74);
    for (i = 0; i != -9; i -= 3)
    {
      v28 = v78[i - 1];
      if (v28)
      {
        v78[i] = v28;
        operator delete(v28);
      }
    }

    v29 = v73 + 6;
    v30 = *v73;
    v31 = (v73[1] - *v73) >> 3;
    v32 = v31 - 1;
    if (v31 - 1 >= -1)
    {
      v32 = -1;
    }

    v33 = v32 + 1;
    v34 = v31 + 1;
    v35 = v31 - 1;
    v36 = v31 - 1;
    while ((v36 & 0x80000000) == 0)
    {
      v37 = v36 & 0x7FFFFFFF;
      --v34;
      --v36;
      if (v30[v37] != (*v29)[v37])
      {
        goto LABEL_29;
      }
    }

    v34 = v33;
LABEL_29:
    v44 = v73[3];
    v45 = (v73[4] - v44) >> 3;
    v46 = v45 - 1;
    if (v45 - 1 >= -1)
    {
      v46 = -1;
    }

    v47 = v46 + 1;
    v48 = v45 + 1;
    v49 = v45 - 1;
    v50 = v45 - 1;
    while ((v50 & 0x80000000) == 0)
    {
      v51 = v50 & 0x7FFFFFFF;
      --v48;
      --v50;
      if (v44[v51] != (*v29)[v51])
      {
        goto LABEL_36;
      }
    }

    v48 = v47;
LABEL_36:
    v52 = v31 + 1;
    while ((v35 & 0x80000000) == 0)
    {
      v53 = v30[v35 & 0x7FFFFFFF];
      --v52;
      --v35;
      if (v53)
      {
        goto LABEL_41;
      }
    }

    v52 = v33;
LABEL_41:
    v54 = v45 + 1;
    while ((v49 & 0x80000000) == 0)
    {
      v55 = v44[v49 & 0x7FFFFFFF];
      --v54;
      --v49;
      if (v55)
      {
        goto LABEL_46;
      }
    }

    v54 = v47;
LABEL_46:
    v56 = (v72 - __p) >> 2;
    if (v34 <= v48)
    {
      v57 = v48;
    }

    else
    {
      v57 = v34;
    }

    if (v34 <= v54)
    {
      v34 = v54;
    }

    if (v52 > v48)
    {
      v48 = v52;
    }

    if (v56 > v48)
    {
      v58 = 1;
    }

    else
    {
      v48 = (v72 - __p) >> 2;
      v58 = a4;
    }

    if (v56 > v34)
    {
      v59 = 2;
    }

    else
    {
      v34 = v48;
      v59 = v58;
    }

    if (v56 <= v57)
    {
      v60 = v34;
    }

    else
    {
      v60 = v57;
    }

    if (v56 <= v57)
    {
      v61 = v59;
    }

    else
    {
      v61 = 3;
    }

    if (!v60 || (*v29)[v60 - 1] < 16)
    {
      goto LABEL_67;
    }

    switch(v61)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<double,double,true,mlx::core::ScalarVector<mlx::core::detail::Add>>(v9, v10->f64, v11->f64, v60, *(*a1 + 48), &__p, v73, v73 + 3, v73 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<double,double,true,mlx::core::VectorScalar<mlx::core::detail::Add>>(v9, v10->f64, v11->f64, v60, *(*a1 + 48), &__p, v73, v73 + 3, v73 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<double,double,true,mlx::core::VectorVector<mlx::core::detail::Add>>(v9, v10->f64, v11->f64, v60, *(*a1 + 48), &__p, v73, v73 + 3, v73 + 6);
        break;
      default:
        LODWORD(v56) = v60;
LABEL_67:
        mlx::core::binary_op_dispatch_dims<double,double,false,mlx::core::detail::Add>(v9, v10->f64, v11->f64, v56, *(*a1 + 48), &__p, v73, v73 + 3, v73 + 6);
        break;
    }

    v75[0] = &v73;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v75);
    if (__p)
    {
      v72 = __p;
      operator delete(__p);
    }

    return;
  }

  if (a4 == 2)
  {
    v38 = *(v8 + 160);
    v39 = *&v10->f64[0];
    if (v38 < 4)
    {
      v43 = *(v8 + 160);
    }

    else
    {
      v40 = vdupq_lane_s64(v39, 0);
      do
      {
        v42 = *v9;
        v41 = *(v9 + 16);
        v9 += 32;
        *v11 = vaddq_f64(v40, v42);
        v11[1] = vaddq_f64(v40, v41);
        v11 += 2;
        v43 = v38 - 4;
        v18 = v38 > 7;
        v38 -= 4;
      }

      while (v18);
    }

    if (v43 >= 1)
    {
      v68 = v43 + 1;
      do
      {
        v69 = *v9;
        v9 += 8;
        v11->f64[0] = *&v39 + v69;
        v11 = (v11 + 8);
        --v68;
      }

      while (v68 > 1);
    }
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_13;
    }

    v19 = *(v8 + 48);
    if (v19 < 4)
    {
      v24 = *(v8 + 48);
    }

    else
    {
      do
      {
        v21 = *v9;
        v20 = *(v9 + 16);
        v9 += 32;
        v23 = *v10;
        v22 = v10[1];
        v10 += 2;
        *v11 = vaddq_f64(v21, v23);
        v11[1] = vaddq_f64(v20, v22);
        v11 += 2;
        v24 = v19 - 4;
        v18 = v19 > 7;
        v19 -= 4;
      }

      while (v18);
    }

    if (v24 >= 1)
    {
      v64 = v24 + 1;
      do
      {
        v65 = *v9;
        v9 += 8;
        v66 = v65;
        v67 = v10->f64[0];
        v10 = (v10 + 8);
        v11->f64[0] = v66 + v67;
        v11 = (v11 + 8);
        --v64;
      }

      while (v64 > 1);
    }
  }
}

void sub_25A62C834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<double,double,true,mlx::core::VectorVector<mlx::core::detail::Add>>(double *a1, double *a2, double *a3, int a4, int a5, int **a6, uint64_t **a7, uint64_t **a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::Add>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::Add>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::Add>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v60, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v53, a6, a8, v15);
      if (a5 >= 1)
      {
        v18 = a5;
        v19 = 0;
        v52 = *(*a9 + 8 * a4 - 32);
        v20 = v18;
        do
        {
          mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::Add>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
          v21 = v62 - v61;
          v22 = (v62 - v61) >> 2;
          if (v22)
          {
            v23 = v65;
            v24 = ((v21 << 30) - 0x100000000) >> 32;
            v25 = v65 + 4 * v24;
            v26 = *v25;
            v27 = v61 + 4 * v24;
            v28 = v63;
            v29 = v60;
            if (v22 >= 2 && v26 == *v27 - 1)
            {
              v32 = (v21 >> 2) & 0x7FFFFFFF;
              v31 = v32 - 1;
              v33 = 4 * v32;
              v34 = v61 - 8;
              do
              {
                v35 = v31;
                *v25 = 0;
                v29 -= v28[v24] * (*v27 - 1);
                v60 = v29;
                --v31;
                v25 = &v23[v33 - 8];
                v26 = *v25;
                v23 -= 4;
                if (v35 < 2)
                {
                  break;
                }

                v27 = &v34[v33];
                v36 = *&v34[4 * v32] - 1;
                v34 -= 4;
                v24 = v31;
              }

              while (v26 == v36);
              v25 = &v23[4 * v32 - 4];
            }

            else
            {
              v31 = ((v21 << 30) - 0x100000000) >> 32;
            }

            *v25 = v26 + 1;
            v60 = v28[v31] + v29;
          }

          v37 = v55 - v54;
          v38 = (v55 - v54) >> 2;
          if (v38)
          {
            v39 = __p;
            v40 = ((v37 << 30) - 0x100000000) >> 32;
            v41 = __p + 4 * v40;
            v42 = *v41;
            v43 = v56;
            v44 = v53;
            if (v38 >= 2 && (v45 = v54 + 4 * v40, v42 == *v45 - 1))
            {
              v46 = (v37 >> 2) & 0x7FFFFFFF;
              v47 = v46 - 1;
              v48 = 4 * v46;
              v49 = v54 - 8;
              do
              {
                v50 = v47;
                *v41 = 0;
                v44 -= v43[v40] * (*v45 - 1);
                v53 = v44;
                --v47;
                v41 = &v39[v48 - 8];
                v42 = *v41;
                v39 -= 4;
                if (v50 < 2)
                {
                  break;
                }

                v45 = &v49[v48];
                v51 = *&v49[4 * v46] - 1;
                v49 -= 4;
                v40 = v47;
              }

              while (v42 == v51);
              v41 = &v39[4 * v46 - 4];
            }

            else
            {
              v47 = ((v37 << 30) - 0x100000000) >> 32;
            }

            *v41 = v42 + 1;
            v53 = v43[v47] + v44;
          }

          v19 += v52;
        }

        while (v19 < v20);
      }

      if (__p)
      {
        v59 = __p;
        operator delete(__p);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v65)
      {
        v66 = v65;
        operator delete(v65);
      }

      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      if (v61)
      {
        v62 = v61;
        operator delete(v61);
      }

      break;
  }
}

void sub_25A62CCB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<double,double,true,mlx::core::VectorScalar<mlx::core::detail::Add>>(double *a1, double *a2, double *a3, int a4, int a5, int **a6, uint64_t **a7, uint64_t **a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::Add>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::Add>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::Add>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v60, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v53, a6, a8, v15);
      if (a5 >= 1)
      {
        v18 = a5;
        v19 = 0;
        v52 = *(*a9 + 8 * a4 - 32);
        v20 = v18;
        do
        {
          mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::Add>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
          v21 = v62 - v61;
          v22 = (v62 - v61) >> 2;
          if (v22)
          {
            v23 = v65;
            v24 = ((v21 << 30) - 0x100000000) >> 32;
            v25 = v65 + 4 * v24;
            v26 = *v25;
            v27 = v61 + 4 * v24;
            v28 = v63;
            v29 = v60;
            if (v22 >= 2 && v26 == *v27 - 1)
            {
              v32 = (v21 >> 2) & 0x7FFFFFFF;
              v31 = v32 - 1;
              v33 = 4 * v32;
              v34 = v61 - 8;
              do
              {
                v35 = v31;
                *v25 = 0;
                v29 -= v28[v24] * (*v27 - 1);
                v60 = v29;
                --v31;
                v25 = &v23[v33 - 8];
                v26 = *v25;
                v23 -= 4;
                if (v35 < 2)
                {
                  break;
                }

                v27 = &v34[v33];
                v36 = *&v34[4 * v32] - 1;
                v34 -= 4;
                v24 = v31;
              }

              while (v26 == v36);
              v25 = &v23[4 * v32 - 4];
            }

            else
            {
              v31 = ((v21 << 30) - 0x100000000) >> 32;
            }

            *v25 = v26 + 1;
            v60 = v28[v31] + v29;
          }

          v37 = v55 - v54;
          v38 = (v55 - v54) >> 2;
          if (v38)
          {
            v39 = __p;
            v40 = ((v37 << 30) - 0x100000000) >> 32;
            v41 = __p + 4 * v40;
            v42 = *v41;
            v43 = v56;
            v44 = v53;
            if (v38 >= 2 && (v45 = v54 + 4 * v40, v42 == *v45 - 1))
            {
              v46 = (v37 >> 2) & 0x7FFFFFFF;
              v47 = v46 - 1;
              v48 = 4 * v46;
              v49 = v54 - 8;
              do
              {
                v50 = v47;
                *v41 = 0;
                v44 -= v43[v40] * (*v45 - 1);
                v53 = v44;
                --v47;
                v41 = &v39[v48 - 8];
                v42 = *v41;
                v39 -= 4;
                if (v50 < 2)
                {
                  break;
                }

                v45 = &v49[v48];
                v51 = *&v49[4 * v46] - 1;
                v49 -= 4;
                v40 = v47;
              }

              while (v42 == v51);
              v41 = &v39[4 * v46 - 4];
            }

            else
            {
              v47 = ((v37 << 30) - 0x100000000) >> 32;
            }

            *v41 = v42 + 1;
            v53 = v43[v47] + v44;
          }

          v19 += v52;
        }

        while (v19 < v20);
      }

      if (__p)
      {
        v59 = __p;
        operator delete(__p);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v65)
      {
        v66 = v65;
        operator delete(v65);
      }

      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      if (v61)
      {
        v62 = v61;
        operator delete(v61);
      }

      break;
  }
}

void sub_25A62D0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<double,double,true,mlx::core::ScalarVector<mlx::core::detail::Add>>(double *a1, double *a2, double *a3, int a4, int a5, int **a6, uint64_t **a7, uint64_t **a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::Add>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::Add>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::Add>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v60, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v53, a6, a8, v15);
      if (a5 >= 1)
      {
        v18 = a5;
        v19 = 0;
        v52 = *(*a9 + 8 * a4 - 32);
        v20 = v18;
        do
        {
          mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::Add>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
          v21 = v62 - v61;
          v22 = (v62 - v61) >> 2;
          if (v22)
          {
            v23 = v65;
            v24 = ((v21 << 30) - 0x100000000) >> 32;
            v25 = v65 + 4 * v24;
            v26 = *v25;
            v27 = v61 + 4 * v24;
            v28 = v63;
            v29 = v60;
            if (v22 >= 2 && v26 == *v27 - 1)
            {
              v32 = (v21 >> 2) & 0x7FFFFFFF;
              v31 = v32 - 1;
              v33 = 4 * v32;
              v34 = v61 - 8;
              do
              {
                v35 = v31;
                *v25 = 0;
                v29 -= v28[v24] * (*v27 - 1);
                v60 = v29;
                --v31;
                v25 = &v23[v33 - 8];
                v26 = *v25;
                v23 -= 4;
                if (v35 < 2)
                {
                  break;
                }

                v27 = &v34[v33];
                v36 = *&v34[4 * v32] - 1;
                v34 -= 4;
                v24 = v31;
              }

              while (v26 == v36);
              v25 = &v23[4 * v32 - 4];
            }

            else
            {
              v31 = ((v21 << 30) - 0x100000000) >> 32;
            }

            *v25 = v26 + 1;
            v60 = v28[v31] + v29;
          }

          v37 = v55 - v54;
          v38 = (v55 - v54) >> 2;
          if (v38)
          {
            v39 = __p;
            v40 = ((v37 << 30) - 0x100000000) >> 32;
            v41 = __p + 4 * v40;
            v42 = *v41;
            v43 = v56;
            v44 = v53;
            if (v38 >= 2 && (v45 = v54 + 4 * v40, v42 == *v45 - 1))
            {
              v46 = (v37 >> 2) & 0x7FFFFFFF;
              v47 = v46 - 1;
              v48 = 4 * v46;
              v49 = v54 - 8;
              do
              {
                v50 = v47;
                *v41 = 0;
                v44 -= v43[v40] * (*v45 - 1);
                v53 = v44;
                --v47;
                v41 = &v39[v48 - 8];
                v42 = *v41;
                v39 -= 4;
                if (v50 < 2)
                {
                  break;
                }

                v45 = &v49[v48];
                v51 = *&v49[4 * v46] - 1;
                v49 -= 4;
                v40 = v47;
              }

              while (v42 == v51);
              v41 = &v39[4 * v46 - 4];
            }

            else
            {
              v47 = ((v37 << 30) - 0x100000000) >> 32;
            }

            *v41 = v42 + 1;
            v53 = v43[v47] + v44;
          }

          v19 += v52;
        }

        while (v19 < v20);
      }

      if (__p)
      {
        v59 = __p;
        operator delete(__p);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v65)
      {
        v66 = v65;
        operator delete(v65);
      }

      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      if (v61)
      {
        v62 = v61;
        operator delete(v61);
      }

      break;
  }
}

void sub_25A62D4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<double,double,false,mlx::core::detail::Add>(double *a1, double *a2, double *a3, int a4, int a5, int **a6, uint64_t **a7, uint64_t **a8, void **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<double,double,mlx::core::detail::Add,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<double,double,mlx::core::detail::Add,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:
      v17 = **a6;
      if (v17 >= 1)
      {
        v18 = 8 * **a7;
        v19 = 8 * **a8;
        v20 = 8 * **a9;
        do
        {
          *v12 = *v14 + *v13;
          v14 = (v14 + v18);
          v13 = (v13 + v19);
          v12 = (v12 + v20);
          --v17;
        }

        while (v17);
      }

      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v62, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v55, a6, a8, v15);
      if (a5 >= 1)
      {
        v22 = 0;
        v23 = (*a9)[a4 - 4];
        do
        {
          mlx::core::binary_op_dims<double,double,mlx::core::detail::Add,3,false>(&v14[v62], &v13[v55], &v12[v22], a6, a7, a8, a9, v15);
          v24 = v64 - v63;
          v25 = (v64 - v63) >> 2;
          if (v25)
          {
            v26 = v67;
            v27 = ((v24 << 30) - 0x100000000) >> 32;
            v28 = v67 + 4 * v27;
            v29 = *v28;
            v30 = v63 + 4 * v27;
            v31 = v65;
            v32 = v62;
            if (v25 >= 2 && v29 == *v30 - 1)
            {
              v35 = (v24 >> 2) & 0x7FFFFFFF;
              v34 = v35 - 1;
              v36 = 4 * v35;
              v37 = v63 - 8;
              do
              {
                v38 = v34;
                *v28 = 0;
                v32 -= v31[v27] * (*v30 - 1);
                v62 = v32;
                --v34;
                v28 = &v26[v36 - 8];
                v29 = *v28;
                v26 -= 4;
                if (v38 < 2)
                {
                  break;
                }

                v30 = &v37[v36];
                v39 = *&v37[4 * v35] - 1;
                v37 -= 4;
                v27 = v34;
              }

              while (v29 == v39);
              v28 = &v26[4 * v35 - 4];
            }

            else
            {
              v34 = ((v24 << 30) - 0x100000000) >> 32;
            }

            *v28 = v29 + 1;
            v62 = v31[v34] + v32;
          }

          v40 = v57 - v56;
          v41 = (v57 - v56) >> 2;
          if (v41)
          {
            v42 = __p;
            v43 = ((v40 << 30) - 0x100000000) >> 32;
            v44 = __p + 4 * v43;
            v45 = *v44;
            v46 = v58;
            v47 = v55;
            if (v41 >= 2 && (v48 = v56 + 4 * v43, v45 == *v48 - 1))
            {
              v49 = (v40 >> 2) & 0x7FFFFFFF;
              v50 = v49 - 1;
              v51 = 4 * v49;
              v52 = v56 - 8;
              do
              {
                v53 = v50;
                *v44 = 0;
                v47 -= v46[v43] * (*v48 - 1);
                v55 = v47;
                --v50;
                v44 = &v42[v51 - 8];
                v45 = *v44;
                v42 -= 4;
                if (v53 < 2)
                {
                  break;
                }

                v48 = &v52[v51];
                v54 = *&v52[4 * v49] - 1;
                v52 -= 4;
                v43 = v50;
              }

              while (v45 == v54);
              v44 = &v42[4 * v49 - 4];
            }

            else
            {
              v50 = ((v40 << 30) - 0x100000000) >> 32;
            }

            *v44 = v45 + 1;
            v55 = v46[v50] + v47;
          }

          v22 += v23;
        }

        while (v22 < a5);
      }

      if (__p)
      {
        v61 = __p;
        operator delete(__p);
      }

      if (v58)
      {
        v59 = v58;
        operator delete(v58);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
      }

      if (v67)
      {
        v68 = v67;
        operator delete(v67);
      }

      if (v65)
      {
        v66 = v65;
        operator delete(v65);
      }

      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      break;
  }
}

void sub_25A62D904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

double *mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::Add>,1,true>(double *result, double *a2, double *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a7 + 8 * a8);
    v11 = 8 * *(*a5 + 8 * a8);
    v12 = 8 * *(*a6 + 8 * a8);
    do
    {
      v13 = a2;
      v14 = a3;
      v15 = v10;
      v16 = result;
      if (v10 >= 4)
      {
        v17 = 0;
        v15 = v10;
        do
        {
          v18 = v15;
          v19 = &a3[v17];
          v20 = vaddq_f64(*&result[v17 + 2], *&a2[v17 + 2]);
          *v19 = vaddq_f64(*&result[v17], *&a2[v17]);
          *(v19 + 1) = v20;
          v15 = v18 - 4;
          v17 += 4;
        }

        while (v18 > 7);
        v16 = &result[v17];
        v14 = &a3[v17];
        v13 = &a2[v17];
      }

      if (v15 >= 1)
      {
        v21 = v15 + 1;
        do
        {
          v22 = *v16++;
          v23 = v22;
          v24 = *v13++;
          *v14++ = v23 + v24;
          --v21;
        }

        while (v21 > 1);
      }

      a3 += v10;
      result = (result + v11);
      a2 = (a2 + v12);
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

double *mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::Add>,2,true>(double *result, double *a2, double *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::Add>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

double *mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::Add>,3,true>(double *result, double *a2, double *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::Add>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

double *mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::Add>,1,true>(double *result, double *a2, double *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a6 + 8 * a8);
    v11 = *(*a7 + 8 * a8);
    v12 = 8 * *(*a5 + 8 * a8);
    do
    {
      v13 = *a2;
      v14 = v11;
      v15 = a3;
      v16 = result;
      if (v11 >= 4)
      {
        v17 = 0;
        v18 = vdupq_lane_s64(v13, 0);
        v14 = v11;
        do
        {
          v19 = v14;
          v20 = &a3[v17];
          v21 = vaddq_f64(v18, *&result[v17 + 2]);
          *v20 = vaddq_f64(v18, *&result[v17]);
          *(v20 + 1) = v21;
          v14 -= 4;
          v17 += 4;
        }

        while (v19 > 7);
        v16 = &result[v17];
        v15 = &a3[v17];
      }

      if (v14 >= 1)
      {
        v22 = v14 + 1;
        do
        {
          v23 = *v16++;
          *v15++ = *&v13 + v23;
          --v22;
        }

        while (v22 > 1);
      }

      a3 += v11;
      result = (result + v12);
      a2 += v10;
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

double *mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::Add>,2,true>(double *result, double *a2, double *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::Add>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

double *mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::Add>,3,true>(double *result, double *a2, double *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::Add>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

double *mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::Add>,1,true>(double *result, double *a2, double *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a5 + 8 * a8);
    v11 = *(*a7 + 8 * a8);
    v12 = 8 * *(*a6 + 8 * a8);
    do
    {
      v13 = *result;
      v14 = v11;
      v15 = a3;
      v16 = a2;
      if (v11 >= 4)
      {
        v17 = 0;
        v18 = vdupq_lane_s64(v13, 0);
        v14 = v11;
        do
        {
          v19 = v14;
          v20 = &a3[v17];
          v21 = vaddq_f64(v18, *&a2[v17 + 2]);
          *v20 = vaddq_f64(v18, *&a2[v17]);
          *(v20 + 1) = v21;
          v14 -= 4;
          v17 += 4;
        }

        while (v19 > 7);
        v16 = &a2[v17];
        v15 = &a3[v17];
      }

      if (v14 >= 1)
      {
        v22 = v14 + 1;
        do
        {
          v23 = *v16++;
          *v15++ = *&v13 + v23;
          --v22;
        }

        while (v22 > 1);
      }

      a3 += v11;
      result += v10;
      a2 = (a2 + v12);
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

double *mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::Add>,2,true>(double *result, double *a2, double *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::Add>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

double *mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::Add>,3,true>(double *result, double *a2, double *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::Add>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

double *mlx::core::binary_op_dims<double,double,mlx::core::detail::Add,2,false>(double *result, double *a2, double *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = a8 + 1;
    v11 = *(*a5 + 8 * v10);
    v12 = *(*a6 + 8 * v10);
    v13 = *(*a7 + 8 * v10);
    v14 = *(*a4 + 4 * v10);
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * v11;
    v17 = 8 * *(*a6 + 8 * a8);
    v18 = 8 * v12;
    v19 = 8 * *(*a7 + 8 * a8);
    v20 = 8 * v13;
    do
    {
      if (v14 >= 1)
      {
        v21 = a3;
        v22 = a2;
        v23 = result;
        v24 = v14;
        do
        {
          *v21 = *v23 + *v22;
          v23 = (v23 + v16);
          v22 = (v22 + v18);
          v21 = (v21 + v20);
          --v24;
        }

        while (v24);
      }

      ++v9;
      result = (result + v15);
      a2 = (a2 + v17);
      a3 = (a3 + v19);
    }

    while (v9 != v8);
  }

  return result;
}

double *mlx::core::binary_op_dims<double,double,mlx::core::detail::Add,3,false>(double *result, double *a2, double *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<double,double,mlx::core::detail::Add,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Add>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v62 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 <= 1)
  {
    if (!a4)
    {
      v31 = COERCE_FLOAT(*v9 << 16) + COERCE_FLOAT(*v10 << 16);
      *v11 = (LODWORD(v31) + (HIWORD(LODWORD(v31)) & 1u) + 0x7FFF) >> 16;
      return;
    }

    if (a4 == 1)
    {
      v12 = *(*a2 + 160);
      if (v12 >= 1)
      {
        LODWORD(v13) = *v9 << 16;
        v14 = v12 + 1;
        do
        {
          *v11++ = (COERCE_INT(v13 + COERCE_FLOAT(*v10 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v13 + COERCE_FLOAT(*v10 << 16))) & 1) + 0x7FFF) >> 16;
          ++v10;
          --v14;
        }

        while (v14 > 1);
      }

      return;
    }

LABEL_14:
    memset(v58, 0, sizeof(v58));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v58, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
    v18 = *a2;
    memset(v59, 0, sizeof(v59));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v59, *(v18 + 24), *(v18 + 32), (*(v18 + 32) - *(v18 + 24)) >> 3);
    v19 = *a3;
    v61[0] = 0;
    v61[1] = 0;
    v60 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v60, *(v19 + 24), *(v19 + 32), (*(v19 + 32) - *(v19 + 24)) >> 3);
    memset(v53, 0, sizeof(v53));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v53, v58, &v62, 3uLL);
    mlx::core::collapse_contiguous_dims(v8, v53, 0x7FFFFFFFuLL, &__p);
    v57 = v53;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v57);
    for (i = 0; i != -9; i -= 3)
    {
      v21 = v61[i - 1];
      if (v21)
      {
        v61[i] = v21;
        operator delete(v21);
      }
    }

    v22 = v56 + 6;
    v23 = *v56;
    v24 = (v56[1] - *v56) >> 3;
    v25 = v24 - 1;
    if (v24 - 1 >= -1)
    {
      v25 = -1;
    }

    v26 = v25 + 1;
    v27 = v24 + 1;
    v28 = v24 - 1;
    v29 = v24 - 1;
    while ((v29 & 0x80000000) == 0)
    {
      v30 = v29 & 0x7FFFFFFF;
      --v27;
      --v29;
      if (v23[v30] != (*v22)[v30])
      {
        goto LABEL_30;
      }
    }

    v27 = v26;
LABEL_30:
    v35 = v56[3];
    v36 = (v56[4] - v35) >> 3;
    v37 = v36 - 1;
    if (v36 - 1 >= -1)
    {
      v37 = -1;
    }

    v38 = v37 + 1;
    v39 = v36 + 1;
    v40 = v36 - 1;
    v41 = v36 - 1;
    while ((v41 & 0x80000000) == 0)
    {
      v42 = v41 & 0x7FFFFFFF;
      --v39;
      --v41;
      if (v35[v42] != (*v22)[v42])
      {
        goto LABEL_37;
      }
    }

    v39 = v38;
LABEL_37:
    v43 = v24 + 1;
    while ((v28 & 0x80000000) == 0)
    {
      v44 = v23[v28 & 0x7FFFFFFF];
      --v43;
      --v28;
      if (v44)
      {
        goto LABEL_42;
      }
    }

    v43 = v26;
LABEL_42:
    v45 = v36 + 1;
    while ((v40 & 0x80000000) == 0)
    {
      v46 = v35[v40 & 0x7FFFFFFF];
      --v45;
      --v40;
      if (v46)
      {
        goto LABEL_47;
      }
    }

    v45 = v38;
LABEL_47:
    v47 = (v55 - __p) >> 2;
    if (v27 <= v39)
    {
      v48 = v39;
    }

    else
    {
      v48 = v27;
    }

    if (v27 <= v45)
    {
      v27 = v45;
    }

    if (v43 > v39)
    {
      v39 = v43;
    }

    if (v47 > v39)
    {
      v49 = 1;
    }

    else
    {
      v39 = (v55 - __p) >> 2;
      v49 = a4;
    }

    if (v47 > v27)
    {
      v50 = 2;
    }

    else
    {
      v27 = v39;
      v50 = v49;
    }

    if (v47 <= v48)
    {
      v51 = v27;
    }

    else
    {
      v51 = v48;
    }

    if (v47 <= v48)
    {
      v52 = v50;
    }

    else
    {
      v52 = 3;
    }

    if (!v51 || (*v22)[v51 - 1] < 16)
    {
      goto LABEL_68;
    }

    switch(v52)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,true,mlx::core::ScalarVector<mlx::core::detail::Add>>(v9, v10, v11, v51, *(*a1 + 48), &__p, v56, v56 + 3, v56 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,true,mlx::core::VectorScalar<mlx::core::detail::Add>>(v9, v10, v11, v51, *(*a1 + 48), &__p, v56, v56 + 3, v56 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,true,mlx::core::VectorVector<mlx::core::detail::Add>>(v9, v10, v11, v51, *(*a1 + 48), &__p, v56, v56 + 3, v56 + 6);
        break;
      default:
        LODWORD(v47) = v51;
LABEL_68:
        mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,false,mlx::core::detail::Add>(v9, v10, v11, v47, *(*a1 + 48), &__p, v56, v56 + 3, v56 + 6);
        break;
    }

    v58[0] = &v56;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v58);
    if (__p)
    {
      v55 = __p;
      operator delete(__p);
    }

    return;
  }

  if (a4 == 2)
  {
    v32 = *(v8 + 160);
    if (v32 >= 1)
    {
      LODWORD(v33) = *v10 << 16;
      v34 = v32 + 1;
      do
      {
        *v11++ = (COERCE_INT(v33 + COERCE_FLOAT(*v9 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v33 + COERCE_FLOAT(*v9 << 16))) & 1) + 0x7FFF) >> 16;
        ++v9;
        --v34;
      }

      while (v34 > 1);
    }
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_14;
    }

    v15 = *(v8 + 48);
    if (v15 >= 1)
    {
      v16 = v15 + 1;
      do
      {
        v17 = COERCE_FLOAT(*v9 << 16) + COERCE_FLOAT(*v10 << 16);
        *v11++ = (LODWORD(v17) + (HIWORD(LODWORD(v17)) & 1u) + 0x7FFF) >> 16;
        ++v9;
        ++v10;
        --v16;
      }

      while (v16 > 1);
    }
  }
}

void sub_25A62E74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,true,mlx::core::VectorVector<mlx::core::detail::Add>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int **a6, uint64_t **a7, uint64_t **a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::Add>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::Add>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::Add>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v60, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v53, a6, a8, v15);
      if (a5 >= 1)
      {
        v18 = a5;
        v19 = 0;
        v52 = *(*a9 + 8 * a4 - 32);
        v20 = v18;
        do
        {
          mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::Add>,3,true>(a1 + 2 * v60, a2 + 2 * v53, a3 + 2 * v19, a6, a7, a8, a9, v15);
          v21 = v62 - v61;
          v22 = (v62 - v61) >> 2;
          if (v22)
          {
            v23 = v65;
            v24 = ((v21 << 30) - 0x100000000) >> 32;
            v25 = v65 + 4 * v24;
            v26 = *v25;
            v27 = v61 + 4 * v24;
            v28 = v63;
            v29 = v60;
            if (v22 >= 2 && v26 == *v27 - 1)
            {
              v32 = (v21 >> 2) & 0x7FFFFFFF;
              v31 = v32 - 1;
              v33 = 4 * v32;
              v34 = v61 - 8;
              do
              {
                v35 = v31;
                *v25 = 0;
                v29 -= v28[v24] * (*v27 - 1);
                v60 = v29;
                --v31;
                v25 = &v23[v33 - 8];
                v26 = *v25;
                v23 -= 4;
                if (v35 < 2)
                {
                  break;
                }

                v27 = &v34[v33];
                v36 = *&v34[4 * v32] - 1;
                v34 -= 4;
                v24 = v31;
              }

              while (v26 == v36);
              v25 = &v23[4 * v32 - 4];
            }

            else
            {
              v31 = ((v21 << 30) - 0x100000000) >> 32;
            }

            *v25 = v26 + 1;
            v60 = v28[v31] + v29;
          }

          v37 = v55 - v54;
          v38 = (v55 - v54) >> 2;
          if (v38)
          {
            v39 = __p;
            v40 = ((v37 << 30) - 0x100000000) >> 32;
            v41 = __p + 4 * v40;
            v42 = *v41;
            v43 = v56;
            v44 = v53;
            if (v38 >= 2 && (v45 = v54 + 4 * v40, v42 == *v45 - 1))
            {
              v46 = (v37 >> 2) & 0x7FFFFFFF;
              v47 = v46 - 1;
              v48 = 4 * v46;
              v49 = v54 - 8;
              do
              {
                v50 = v47;
                *v41 = 0;
                v44 -= v43[v40] * (*v45 - 1);
                v53 = v44;
                --v47;
                v41 = &v39[v48 - 8];
                v42 = *v41;
                v39 -= 4;
                if (v50 < 2)
                {
                  break;
                }

                v45 = &v49[v48];
                v51 = *&v49[4 * v46] - 1;
                v49 -= 4;
                v40 = v47;
              }

              while (v42 == v51);
              v41 = &v39[4 * v46 - 4];
            }

            else
            {
              v47 = ((v37 << 30) - 0x100000000) >> 32;
            }

            *v41 = v42 + 1;
            v53 = v43[v47] + v44;
          }

          v19 += v52;
        }

        while (v19 < v20);
      }

      if (__p)
      {
        v59 = __p;
        operator delete(__p);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v65)
      {
        v66 = v65;
        operator delete(v65);
      }

      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      if (v61)
      {
        v62 = v61;
        operator delete(v61);
      }

      break;
  }
}

void sub_25A62EBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,true,mlx::core::VectorScalar<mlx::core::detail::Add>>(uint64_t a1, unsigned __int16 *a2, uint64_t a3, int a4, int a5, int **a6, uint64_t **a7, uint64_t **a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::Add>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::Add>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::Add>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v60, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v53, a6, a8, v15);
      if (a5 >= 1)
      {
        v18 = a5;
        v19 = 0;
        v52 = *(*a9 + 8 * a4 - 32);
        v20 = v18;
        do
        {
          mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::Add>,3,true>(a1 + 2 * v60, &a2[v53], a3 + 2 * v19, a6, a7, a8, a9, v15);
          v21 = v62 - v61;
          v22 = (v62 - v61) >> 2;
          if (v22)
          {
            v23 = v65;
            v24 = ((v21 << 30) - 0x100000000) >> 32;
            v25 = v65 + 4 * v24;
            v26 = *v25;
            v27 = v61 + 4 * v24;
            v28 = v63;
            v29 = v60;
            if (v22 >= 2 && v26 == *v27 - 1)
            {
              v32 = (v21 >> 2) & 0x7FFFFFFF;
              v31 = v32 - 1;
              v33 = 4 * v32;
              v34 = v61 - 8;
              do
              {
                v35 = v31;
                *v25 = 0;
                v29 -= v28[v24] * (*v27 - 1);
                v60 = v29;
                --v31;
                v25 = &v23[v33 - 8];
                v26 = *v25;
                v23 -= 4;
                if (v35 < 2)
                {
                  break;
                }

                v27 = &v34[v33];
                v36 = *&v34[4 * v32] - 1;
                v34 -= 4;
                v24 = v31;
              }

              while (v26 == v36);
              v25 = &v23[4 * v32 - 4];
            }

            else
            {
              v31 = ((v21 << 30) - 0x100000000) >> 32;
            }

            *v25 = v26 + 1;
            v60 = v28[v31] + v29;
          }

          v37 = v55 - v54;
          v38 = (v55 - v54) >> 2;
          if (v38)
          {
            v39 = __p;
            v40 = ((v37 << 30) - 0x100000000) >> 32;
            v41 = __p + 4 * v40;
            v42 = *v41;
            v43 = v56;
            v44 = v53;
            if (v38 >= 2 && (v45 = v54 + 4 * v40, v42 == *v45 - 1))
            {
              v46 = (v37 >> 2) & 0x7FFFFFFF;
              v47 = v46 - 1;
              v48 = 4 * v46;
              v49 = v54 - 8;
              do
              {
                v50 = v47;
                *v41 = 0;
                v44 -= v43[v40] * (*v45 - 1);
                v53 = v44;
                --v47;
                v41 = &v39[v48 - 8];
                v42 = *v41;
                v39 -= 4;
                if (v50 < 2)
                {
                  break;
                }

                v45 = &v49[v48];
                v51 = *&v49[4 * v46] - 1;
                v49 -= 4;
                v40 = v47;
              }

              while (v42 == v51);
              v41 = &v39[4 * v46 - 4];
            }

            else
            {
              v47 = ((v37 << 30) - 0x100000000) >> 32;
            }

            *v41 = v42 + 1;
            v53 = v43[v47] + v44;
          }

          v19 += v52;
        }

        while (v19 < v20);
      }

      if (__p)
      {
        v59 = __p;
        operator delete(__p);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v65)
      {
        v66 = v65;
        operator delete(v65);
      }

      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      if (v61)
      {
        v62 = v61;
        operator delete(v61);
      }

      break;
  }
}

void sub_25A62EFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,true,mlx::core::ScalarVector<mlx::core::detail::Add>>(unsigned __int16 *a1, uint64_t a2, uint64_t a3, int a4, int a5, int **a6, uint64_t **a7, uint64_t **a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::Add>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::Add>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::Add>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v60, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v53, a6, a8, v15);
      if (a5 >= 1)
      {
        v18 = a5;
        v19 = 0;
        v52 = *(*a9 + 8 * a4 - 32);
        v20 = v18;
        do
        {
          mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::Add>,3,true>(&a1[v60], a2 + 2 * v53, a3 + 2 * v19, a6, a7, a8, a9, v15);
          v21 = v62 - v61;
          v22 = (v62 - v61) >> 2;
          if (v22)
          {
            v23 = v65;
            v24 = ((v21 << 30) - 0x100000000) >> 32;
            v25 = v65 + 4 * v24;
            v26 = *v25;
            v27 = v61 + 4 * v24;
            v28 = v63;
            v29 = v60;
            if (v22 >= 2 && v26 == *v27 - 1)
            {
              v32 = (v21 >> 2) & 0x7FFFFFFF;
              v31 = v32 - 1;
              v33 = 4 * v32;
              v34 = v61 - 8;
              do
              {
                v35 = v31;
                *v25 = 0;
                v29 -= v28[v24] * (*v27 - 1);
                v60 = v29;
                --v31;
                v25 = &v23[v33 - 8];
                v26 = *v25;
                v23 -= 4;
                if (v35 < 2)
                {
                  break;
                }

                v27 = &v34[v33];
                v36 = *&v34[4 * v32] - 1;
                v34 -= 4;
                v24 = v31;
              }

              while (v26 == v36);
              v25 = &v23[4 * v32 - 4];
            }

            else
            {
              v31 = ((v21 << 30) - 0x100000000) >> 32;
            }

            *v25 = v26 + 1;
            v60 = v28[v31] + v29;
          }

          v37 = v55 - v54;
          v38 = (v55 - v54) >> 2;
          if (v38)
          {
            v39 = __p;
            v40 = ((v37 << 30) - 0x100000000) >> 32;
            v41 = __p + 4 * v40;
            v42 = *v41;
            v43 = v56;
            v44 = v53;
            if (v38 >= 2 && (v45 = v54 + 4 * v40, v42 == *v45 - 1))
            {
              v46 = (v37 >> 2) & 0x7FFFFFFF;
              v47 = v46 - 1;
              v48 = 4 * v46;
              v49 = v54 - 8;
              do
              {
                v50 = v47;
                *v41 = 0;
                v44 -= v43[v40] * (*v45 - 1);
                v53 = v44;
                --v47;
                v41 = &v39[v48 - 8];
                v42 = *v41;
                v39 -= 4;
                if (v50 < 2)
                {
                  break;
                }

                v45 = &v49[v48];
                v51 = *&v49[4 * v46] - 1;
                v49 -= 4;
                v40 = v47;
              }

              while (v42 == v51);
              v41 = &v39[4 * v46 - 4];
            }

            else
            {
              v47 = ((v37 << 30) - 0x100000000) >> 32;
            }

            *v41 = v42 + 1;
            v53 = v43[v47] + v44;
          }

          v19 += v52;
        }

        while (v19 < v20);
      }

      if (__p)
      {
        v59 = __p;
        operator delete(__p);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v65)
      {
        v66 = v65;
        operator delete(v65);
      }

      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      if (v61)
      {
        v62 = v61;
        operator delete(v61);
      }

      break;
  }
}

void sub_25A62F3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,false,mlx::core::detail::Add>(unsigned __int16 *a1, unsigned __int16 *a2, _WORD *a3, int a4, int a5, int **a6, uint64_t **a7, uint64_t **a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Add,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Add,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Add,1,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v60, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v53, a6, a8, v15);
      if (a5 >= 1)
      {
        v18 = a5;
        v19 = 0;
        v52 = *(*a9 + 8 * a4 - 32);
        v20 = v18;
        do
        {
          mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Add,3,false>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
          v21 = v62 - v61;
          v22 = (v62 - v61) >> 2;
          if (v22)
          {
            v23 = v65;
            v24 = ((v21 << 30) - 0x100000000) >> 32;
            v25 = v65 + 4 * v24;
            v26 = *v25;
            v27 = v61 + 4 * v24;
            v28 = v63;
            v29 = v60;
            if (v22 >= 2 && v26 == *v27 - 1)
            {
              v32 = (v21 >> 2) & 0x7FFFFFFF;
              v31 = v32 - 1;
              v33 = 4 * v32;
              v34 = v61 - 8;
              do
              {
                v35 = v31;
                *v25 = 0;
                v29 -= v28[v24] * (*v27 - 1);
                v60 = v29;
                --v31;
                v25 = &v23[v33 - 8];
                v26 = *v25;
                v23 -= 4;
                if (v35 < 2)
                {
                  break;
                }

                v27 = &v34[v33];
                v36 = *&v34[4 * v32] - 1;
                v34 -= 4;
                v24 = v31;
              }

              while (v26 == v36);
              v25 = &v23[4 * v32 - 4];
            }

            else
            {
              v31 = ((v21 << 30) - 0x100000000) >> 32;
            }

            *v25 = v26 + 1;
            v60 = v28[v31] + v29;
          }

          v37 = v55 - v54;
          v38 = (v55 - v54) >> 2;
          if (v38)
          {
            v39 = __p;
            v40 = ((v37 << 30) - 0x100000000) >> 32;
            v41 = __p + 4 * v40;
            v42 = *v41;
            v43 = v56;
            v44 = v53;
            if (v38 >= 2 && (v45 = v54 + 4 * v40, v42 == *v45 - 1))
            {
              v46 = (v37 >> 2) & 0x7FFFFFFF;
              v47 = v46 - 1;
              v48 = 4 * v46;
              v49 = v54 - 8;
              do
              {
                v50 = v47;
                *v41 = 0;
                v44 -= v43[v40] * (*v45 - 1);
                v53 = v44;
                --v47;
                v41 = &v39[v48 - 8];
                v42 = *v41;
                v39 -= 4;
                if (v50 < 2)
                {
                  break;
                }

                v45 = &v49[v48];
                v51 = *&v49[4 * v46] - 1;
                v49 -= 4;
                v40 = v47;
              }

              while (v42 == v51);
              v41 = &v39[4 * v46 - 4];
            }

            else
            {
              v47 = ((v37 << 30) - 0x100000000) >> 32;
            }

            *v41 = v42 + 1;
            v53 = v43[v47] + v44;
          }

          v19 += v52;
        }

        while (v19 < v20);
      }

      if (__p)
      {
        v59 = __p;
        operator delete(__p);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v65)
      {
        v66 = v65;
        operator delete(v65);
      }

      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      if (v61)
      {
        v62 = v61;
        operator delete(v61);
      }

      break;
  }
}

void sub_25A62F814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::Add>,1,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a7 + 8 * a8);
    v11 = 2 * *(*a5 + 8 * a8);
    v12 = 2 * *(*a6 + 8 * a8);
    do
    {
      if (v10 >= 1)
      {
        v13 = 0;
        v14 = v10 + 1;
        do
        {
          v15 = COERCE_FLOAT(*(result + v13) << 16) + COERCE_FLOAT(*(a2 + v13) << 16);
          *(a3 + v13) = (LODWORD(v15) + (HIWORD(LODWORD(v15)) & 1u) + 0x7FFF) >> 16;
          v13 += 2;
          --v14;
        }

        while (v14 > 1);
      }

      ++v9;
      result += v11;
      a2 += v12;
      a3 += 2 * v10;
    }

    while (v9 != v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::Add>,2,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::Add>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 += v15;
      a2 += v16;
      a3 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::Add>,3,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::Add>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 += v15;
      a2 += v16;
      a3 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::Add>,1,true>(uint64_t result, unsigned __int16 *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a6 + 8 * a8);
    v11 = *(*a7 + 8 * a8);
    v12 = 2 * *(*a5 + 8 * a8);
    do
    {
      if (v11 >= 1)
      {
        v13 = 0;
        LODWORD(v14) = *a2 << 16;
        v15 = v11 + 1;
        do
        {
          v16 = v14 + COERCE_FLOAT(*(result + v13) << 16);
          *(a3 + v13) = (LODWORD(v16) + (HIWORD(LODWORD(v16)) & 1u) + 0x7FFF) >> 16;
          v13 += 2;
          --v15;
        }

        while (v15 > 1);
      }

      a2 += v10;
      ++v9;
      result += v12;
      a3 += 2 * v11;
    }

    while (v9 != v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::Add>,2,true>(uint64_t result, unsigned __int16 *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::Add>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 += v15;
      a2 = (a2 + v16);
      a3 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::Add>,3,true>(uint64_t result, unsigned __int16 *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::Add>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 += v15;
      a2 = (a2 + v16);
      a3 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::Add>,1,true>(unsigned __int16 *result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a5 + 8 * a8);
    v11 = *(*a7 + 8 * a8);
    v12 = 2 * *(*a6 + 8 * a8);
    do
    {
      if (v11 >= 1)
      {
        v13 = 0;
        LODWORD(v14) = *result << 16;
        v15 = v11 + 1;
        do
        {
          v16 = v14 + COERCE_FLOAT(*(a2 + v13) << 16);
          *(a3 + v13) = (LODWORD(v16) + (HIWORD(LODWORD(v16)) & 1u) + 0x7FFF) >> 16;
          v13 += 2;
          --v15;
        }

        while (v15 > 1);
      }

      result += v10;
      ++v9;
      a2 += v12;
      a3 += 2 * v11;
    }

    while (v9 != v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::Add>,2,true>(unsigned __int16 *result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::Add>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 += v16;
      a3 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::Add>,3,true>(unsigned __int16 *result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::Add>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 += v16;
      a3 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Add,1,false>(unsigned __int16 *result, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 2 * *(*a5 + 8 * a8);
    v10 = 2 * *(*a6 + 8 * a8);
    v11 = 2 * *(*a7 + 8 * a8);
    do
    {
      v12 = COERCE_FLOAT(*result << 16) + COERCE_FLOAT(*a2 << 16);
      *a3 = (LODWORD(v12) + (HIWORD(LODWORD(v12)) & 1u) + 0x7FFF) >> 16;
      result = (result + v9);
      a2 = (a2 + v10);
      a3 = (a3 + v11);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Add,2,false>(unsigned __int16 *result, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Add,1,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Add,3,false>(unsigned __int16 *result, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Add,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Add>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v65 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 <= 1)
  {
    if (!a4)
    {
      *v11 = vadd_f32(*v9, *v10);
      return;
    }

    if (a4 == 1)
    {
      v12 = *(*a2 + 160);
      if (v12 >= 1)
      {
        v13 = *v9;
        v14 = v12 + 1;
        do
        {
          v15 = *v10++;
          *v11++ = vadd_f32(v13, v15);
          --v14;
        }

        while (v14 > 1);
      }

      return;
    }

LABEL_14:
    memset(v61, 0, sizeof(v61));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v61, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
    v21 = *a2;
    memset(v62, 0, sizeof(v62));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v62, *(v21 + 24), *(v21 + 32), (*(v21 + 32) - *(v21 + 24)) >> 3);
    v22 = *a3;
    v64[0] = 0;
    v64[1] = 0;
    v63 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v63, *(v22 + 24), *(v22 + 32), (*(v22 + 32) - *(v22 + 24)) >> 3);
    memset(v56, 0, sizeof(v56));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v56, v61, &v65, 3uLL);
    mlx::core::collapse_contiguous_dims(v8, v56, 0x7FFFFFFFuLL, &__p);
    v60 = v56;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v60);
    for (i = 0; i != -9; i -= 3)
    {
      v24 = v64[i - 1];
      if (v24)
      {
        v64[i] = v24;
        operator delete(v24);
      }
    }

    v25 = v59 + 6;
    v26 = *v59;
    v27 = (v59[1] - *v59) >> 3;
    v28 = v27 - 1;
    if (v27 - 1 >= -1)
    {
      v28 = -1;
    }

    v29 = v28 + 1;
    v30 = v27 + 1;
    v31 = v27 - 1;
    v32 = v27 - 1;
    while ((v32 & 0x80000000) == 0)
    {
      v33 = v32 & 0x7FFFFFFF;
      --v30;
      --v32;
      if (v26[v33] != (*v25)[v33])
      {
        goto LABEL_30;
      }
    }

    v30 = v29;
LABEL_30:
    v38 = v59[3];
    v39 = (v59[4] - v38) >> 3;
    v40 = v39 - 1;
    if (v39 - 1 >= -1)
    {
      v40 = -1;
    }

    v41 = v40 + 1;
    v42 = v39 + 1;
    v43 = v39 - 1;
    v44 = v39 - 1;
    while ((v44 & 0x80000000) == 0)
    {
      v45 = v44 & 0x7FFFFFFF;
      --v42;
      --v44;
      if (v38[v45] != (*v25)[v45])
      {
        goto LABEL_37;
      }
    }

    v42 = v41;
LABEL_37:
    v46 = v27 + 1;
    while ((v31 & 0x80000000) == 0)
    {
      v47 = v26[v31 & 0x7FFFFFFF];
      --v46;
      --v31;
      if (v47)
      {
        goto LABEL_42;
      }
    }

    v46 = v29;
LABEL_42:
    v48 = v39 + 1;
    while ((v43 & 0x80000000) == 0)
    {
      v49 = v38[v43 & 0x7FFFFFFF];
      --v48;
      --v43;
      if (v49)
      {
        goto LABEL_47;
      }
    }

    v48 = v41;
LABEL_47:
    v50 = (v58 - __p) >> 2;
    if (v30 <= v42)
    {
      v51 = v42;
    }

    else
    {
      v51 = v30;
    }

    if (v30 <= v48)
    {
      v30 = v48;
    }

    if (v46 > v42)
    {
      v42 = v46;
    }

    if (v50 > v42)
    {
      v52 = 1;
    }

    else
    {
      v42 = (v58 - __p) >> 2;
      v52 = a4;
    }

    if (v50 > v30)
    {
      v53 = 2;
    }

    else
    {
      v30 = v42;
      v53 = v52;
    }

    if (v50 <= v51)
    {
      v54 = v30;
    }

    else
    {
      v54 = v51;
    }

    if (v50 <= v51)
    {
      v55 = v53;
    }

    else
    {
      v55 = 3;
    }

    if (!v54 || (*v25)[v54 - 1] < 16)
    {
      goto LABEL_68;
    }

    switch(v55)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,true,mlx::core::ScalarVector<mlx::core::detail::Add>>(v9, v10, v11, v54, *(*a1 + 48), &__p, v59, v59 + 3, v59 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,true,mlx::core::VectorScalar<mlx::core::detail::Add>>(v9, v10, v11, v54, *(*a1 + 48), &__p, v59, v59 + 3, v59 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,true,mlx::core::VectorVector<mlx::core::detail::Add>>(v9, v10, v11, v54, *(*a1 + 48), &__p, v59, v59 + 3, v59 + 6);
        break;
      default:
        LODWORD(v50) = v54;
LABEL_68:
        mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,false,mlx::core::detail::Add>(v9, v10, v11, v50, *(*a1 + 48), &__p, v59, v59 + 3, v59 + 6);
        break;
    }

    v61[0] = &v59;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v61);
    if (__p)
    {
      v58 = __p;
      operator delete(__p);
    }

    return;
  }

  if (a4 == 2)
  {
    v34 = *(v8 + 160);
    if (v34 >= 1)
    {
      v35 = *v10;
      v36 = v34 + 1;
      do
      {
        v37 = *v9++;
        *v11++ = vadd_f32(v35, v37);
        --v36;
      }

      while (v36 > 1);
    }
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_14;
    }

    v16 = *(v8 + 48);
    if (v16 >= 1)
    {
      v17 = v16 + 1;
      do
      {
        v18 = *v9++;
        v19 = v18;
        v20 = *v10++;
        *v11++ = vadd_f32(v19, v20);
        --v17;
      }

      while (v17 > 1);
    }
  }
}

void sub_25A6305EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,true,mlx::core::VectorVector<mlx::core::detail::Add>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int **a6, uint64_t **a7, uint64_t **a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::Add>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::Add>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::Add>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v60, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v53, a6, a8, v15);
      if (a5 >= 1)
      {
        v18 = a5;
        v19 = 0;
        v52 = *(*a9 + 8 * a4 - 32);
        v20 = v18;
        do
        {
          mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::Add>,3,true>(a1 + 8 * v60, a2 + 8 * v53, a3 + 8 * v19, a6, a7, a8, a9, v15);
          v21 = v62 - v61;
          v22 = (v62 - v61) >> 2;
          if (v22)
          {
            v23 = v65;
            v24 = ((v21 << 30) - 0x100000000) >> 32;
            v25 = v65 + 4 * v24;
            v26 = *v25;
            v27 = v61 + 4 * v24;
            v28 = v63;
            v29 = v60;
            if (v22 >= 2 && v26 == *v27 - 1)
            {
              v32 = (v21 >> 2) & 0x7FFFFFFF;
              v31 = v32 - 1;
              v33 = 4 * v32;
              v34 = v61 - 8;
              do
              {
                v35 = v31;
                *v25 = 0;
                v29 -= v28[v24] * (*v27 - 1);
                v60 = v29;
                --v31;
                v25 = &v23[v33 - 8];
                v26 = *v25;
                v23 -= 4;
                if (v35 < 2)
                {
                  break;
                }

                v27 = &v34[v33];
                v36 = *&v34[4 * v32] - 1;
                v34 -= 4;
                v24 = v31;
              }

              while (v26 == v36);
              v25 = &v23[4 * v32 - 4];
            }

            else
            {
              v31 = ((v21 << 30) - 0x100000000) >> 32;
            }

            *v25 = v26 + 1;
            v60 = v28[v31] + v29;
          }

          v37 = v55 - v54;
          v38 = (v55 - v54) >> 2;
          if (v38)
          {
            v39 = __p;
            v40 = ((v37 << 30) - 0x100000000) >> 32;
            v41 = __p + 4 * v40;
            v42 = *v41;
            v43 = v56;
            v44 = v53;
            if (v38 >= 2 && (v45 = v54 + 4 * v40, v42 == *v45 - 1))
            {
              v46 = (v37 >> 2) & 0x7FFFFFFF;
              v47 = v46 - 1;
              v48 = 4 * v46;
              v49 = v54 - 8;
              do
              {
                v50 = v47;
                *v41 = 0;
                v44 -= v43[v40] * (*v45 - 1);
                v53 = v44;
                --v47;
                v41 = &v39[v48 - 8];
                v42 = *v41;
                v39 -= 4;
                if (v50 < 2)
                {
                  break;
                }

                v45 = &v49[v48];
                v51 = *&v49[4 * v46] - 1;
                v49 -= 4;
                v40 = v47;
              }

              while (v42 == v51);
              v41 = &v39[4 * v46 - 4];
            }

            else
            {
              v47 = ((v37 << 30) - 0x100000000) >> 32;
            }

            *v41 = v42 + 1;
            v53 = v43[v47] + v44;
          }

          v19 += v52;
        }

        while (v19 < v20);
      }

      if (__p)
      {
        v59 = __p;
        operator delete(__p);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v65)
      {
        v66 = v65;
        operator delete(v65);
      }

      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      if (v61)
      {
        v62 = v61;
        operator delete(v61);
      }

      break;
  }
}

void sub_25A630A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,true,mlx::core::VectorScalar<mlx::core::detail::Add>>(uint64_t a1, float32x2_t *a2, uint64_t a3, int a4, int a5, int **a6, uint64_t **a7, uint64_t **a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::Add>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::Add>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::Add>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v60, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v53, a6, a8, v15);
      if (a5 >= 1)
      {
        v18 = a5;
        v19 = 0;
        v52 = *(*a9 + 8 * a4 - 32);
        v20 = v18;
        do
        {
          mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::Add>,3,true>(a1 + 8 * v60, &a2[v53], a3 + 8 * v19, a6, a7, a8, a9, v15);
          v21 = v62 - v61;
          v22 = (v62 - v61) >> 2;
          if (v22)
          {
            v23 = v65;
            v24 = ((v21 << 30) - 0x100000000) >> 32;
            v25 = v65 + 4 * v24;
            v26 = *v25;
            v27 = v61 + 4 * v24;
            v28 = v63;
            v29 = v60;
            if (v22 >= 2 && v26 == *v27 - 1)
            {
              v32 = (v21 >> 2) & 0x7FFFFFFF;
              v31 = v32 - 1;
              v33 = 4 * v32;
              v34 = v61 - 8;
              do
              {
                v35 = v31;
                *v25 = 0;
                v29 -= v28[v24] * (*v27 - 1);
                v60 = v29;
                --v31;
                v25 = &v23[v33 - 8];
                v26 = *v25;
                v23 -= 4;
                if (v35 < 2)
                {
                  break;
                }

                v27 = &v34[v33];
                v36 = *&v34[4 * v32] - 1;
                v34 -= 4;
                v24 = v31;
              }

              while (v26 == v36);
              v25 = &v23[4 * v32 - 4];
            }

            else
            {
              v31 = ((v21 << 30) - 0x100000000) >> 32;
            }

            *v25 = v26 + 1;
            v60 = v28[v31] + v29;
          }

          v37 = v55 - v54;
          v38 = (v55 - v54) >> 2;
          if (v38)
          {
            v39 = __p;
            v40 = ((v37 << 30) - 0x100000000) >> 32;
            v41 = __p + 4 * v40;
            v42 = *v41;
            v43 = v56;
            v44 = v53;
            if (v38 >= 2 && (v45 = v54 + 4 * v40, v42 == *v45 - 1))
            {
              v46 = (v37 >> 2) & 0x7FFFFFFF;
              v47 = v46 - 1;
              v48 = 4 * v46;
              v49 = v54 - 8;
              do
              {
                v50 = v47;
                *v41 = 0;
                v44 -= v43[v40] * (*v45 - 1);
                v53 = v44;
                --v47;
                v41 = &v39[v48 - 8];
                v42 = *v41;
                v39 -= 4;
                if (v50 < 2)
                {
                  break;
                }

                v45 = &v49[v48];
                v51 = *&v49[4 * v46] - 1;
                v49 -= 4;
                v40 = v47;
              }

              while (v42 == v51);
              v41 = &v39[4 * v46 - 4];
            }

            else
            {
              v47 = ((v37 << 30) - 0x100000000) >> 32;
            }

            *v41 = v42 + 1;
            v53 = v43[v47] + v44;
          }

          v19 += v52;
        }

        while (v19 < v20);
      }

      if (__p)
      {
        v59 = __p;
        operator delete(__p);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v65)
      {
        v66 = v65;
        operator delete(v65);
      }

      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      if (v61)
      {
        v62 = v61;
        operator delete(v61);
      }

      break;
  }
}

void sub_25A630E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,true,mlx::core::ScalarVector<mlx::core::detail::Add>>(float32x2_t *a1, uint64_t a2, uint64_t a3, int a4, int a5, int **a6, uint64_t **a7, uint64_t **a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::Add>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::Add>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::Add>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v60, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v53, a6, a8, v15);
      if (a5 >= 1)
      {
        v18 = a5;
        v19 = 0;
        v52 = *(*a9 + 8 * a4 - 32);
        v20 = v18;
        do
        {
          mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::Add>,3,true>(&a1[v60], a2 + 8 * v53, a3 + 8 * v19, a6, a7, a8, a9, v15);
          v21 = v62 - v61;
          v22 = (v62 - v61) >> 2;
          if (v22)
          {
            v23 = v65;
            v24 = ((v21 << 30) - 0x100000000) >> 32;
            v25 = v65 + 4 * v24;
            v26 = *v25;
            v27 = v61 + 4 * v24;
            v28 = v63;
            v29 = v60;
            if (v22 >= 2 && v26 == *v27 - 1)
            {
              v32 = (v21 >> 2) & 0x7FFFFFFF;
              v31 = v32 - 1;
              v33 = 4 * v32;
              v34 = v61 - 8;
              do
              {
                v35 = v31;
                *v25 = 0;
                v29 -= v28[v24] * (*v27 - 1);
                v60 = v29;
                --v31;
                v25 = &v23[v33 - 8];
                v26 = *v25;
                v23 -= 4;
                if (v35 < 2)
                {
                  break;
                }

                v27 = &v34[v33];
                v36 = *&v34[4 * v32] - 1;
                v34 -= 4;
                v24 = v31;
              }

              while (v26 == v36);
              v25 = &v23[4 * v32 - 4];
            }

            else
            {
              v31 = ((v21 << 30) - 0x100000000) >> 32;
            }

            *v25 = v26 + 1;
            v60 = v28[v31] + v29;
          }

          v37 = v55 - v54;
          v38 = (v55 - v54) >> 2;
          if (v38)
          {
            v39 = __p;
            v40 = ((v37 << 30) - 0x100000000) >> 32;
            v41 = __p + 4 * v40;
            v42 = *v41;
            v43 = v56;
            v44 = v53;
            if (v38 >= 2 && (v45 = v54 + 4 * v40, v42 == *v45 - 1))
            {
              v46 = (v37 >> 2) & 0x7FFFFFFF;
              v47 = v46 - 1;
              v48 = 4 * v46;
              v49 = v54 - 8;
              do
              {
                v50 = v47;
                *v41 = 0;
                v44 -= v43[v40] * (*v45 - 1);
                v53 = v44;
                --v47;
                v41 = &v39[v48 - 8];
                v42 = *v41;
                v39 -= 4;
                if (v50 < 2)
                {
                  break;
                }

                v45 = &v49[v48];
                v51 = *&v49[4 * v46] - 1;
                v49 -= 4;
                v40 = v47;
              }

              while (v42 == v51);
              v41 = &v39[4 * v46 - 4];
            }

            else
            {
              v47 = ((v37 << 30) - 0x100000000) >> 32;
            }

            *v41 = v42 + 1;
            v53 = v43[v47] + v44;
          }

          v19 += v52;
        }

        while (v19 < v20);
      }

      if (__p)
      {
        v59 = __p;
        operator delete(__p);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v65)
      {
        v66 = v65;
        operator delete(v65);
      }

      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      if (v61)
      {
        v62 = v61;
        operator delete(v61);
      }

      break;
  }
}

void sub_25A63129C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,false,mlx::core::detail::Add>(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3, int a4, int a5, int **a6, uint64_t **a7, uint64_t **a8, void **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Add,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Add,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:
      v17 = **a6;
      if (v17 >= 1)
      {
        v18 = 8 * **a7;
        v19 = 8 * **a8;
        v20 = 8 * **a9;
        do
        {
          *v12 = vadd_f32(*v14, *v13);
          v14 = (v14 + v18);
          v13 = (v13 + v19);
          v12 = (v12 + v20);
          --v17;
        }

        while (v17);
      }

      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v62, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v55, a6, a8, v15);
      if (a5 >= 1)
      {
        v22 = 0;
        v23 = (*a9)[a4 - 4];
        do
        {
          mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Add,3,false>(&v14[v62], &v13[v55], &v12[v22], a6, a7, a8, a9, v15);
          v24 = v64 - v63;
          v25 = (v64 - v63) >> 2;
          if (v25)
          {
            v26 = v67;
            v27 = ((v24 << 30) - 0x100000000) >> 32;
            v28 = v67 + 4 * v27;
            v29 = *v28;
            v30 = v63 + 4 * v27;
            v31 = v65;
            v32 = v62;
            if (v25 >= 2 && v29 == *v30 - 1)
            {
              v35 = (v24 >> 2) & 0x7FFFFFFF;
              v34 = v35 - 1;
              v36 = 4 * v35;
              v37 = v63 - 8;
              do
              {
                v38 = v34;
                *v28 = 0;
                v32 -= v31[v27] * (*v30 - 1);
                v62 = v32;
                --v34;
                v28 = &v26[v36 - 8];
                v29 = *v28;
                v26 -= 4;
                if (v38 < 2)
                {
                  break;
                }

                v30 = &v37[v36];
                v39 = *&v37[4 * v35] - 1;
                v37 -= 4;
                v27 = v34;
              }

              while (v29 == v39);
              v28 = &v26[4 * v35 - 4];
            }

            else
            {
              v34 = ((v24 << 30) - 0x100000000) >> 32;
            }

            *v28 = v29 + 1;
            v62 = v31[v34] + v32;
          }

          v40 = v57 - v56;
          v41 = (v57 - v56) >> 2;
          if (v41)
          {
            v42 = __p;
            v43 = ((v40 << 30) - 0x100000000) >> 32;
            v44 = __p + 4 * v43;
            v45 = *v44;
            v46 = v58;
            v47 = v55;
            if (v41 >= 2 && (v48 = v56 + 4 * v43, v45 == *v48 - 1))
            {
              v49 = (v40 >> 2) & 0x7FFFFFFF;
              v50 = v49 - 1;
              v51 = 4 * v49;
              v52 = v56 - 8;
              do
              {
                v53 = v50;
                *v44 = 0;
                v47 -= v46[v43] * (*v48 - 1);
                v55 = v47;
                --v50;
                v44 = &v42[v51 - 8];
                v45 = *v44;
                v42 -= 4;
                if (v53 < 2)
                {
                  break;
                }

                v48 = &v52[v51];
                v54 = *&v52[4 * v49] - 1;
                v52 -= 4;
                v43 = v50;
              }

              while (v45 == v54);
              v44 = &v42[4 * v49 - 4];
            }

            else
            {
              v50 = ((v40 << 30) - 0x100000000) >> 32;
            }

            *v44 = v45 + 1;
            v55 = v46[v50] + v47;
          }

          v22 += v23;
        }

        while (v22 < a5);
      }

      if (__p)
      {
        v61 = __p;
        operator delete(__p);
      }

      if (v58)
      {
        v59 = v58;
        operator delete(v58);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
      }

      if (v67)
      {
        v68 = v67;
        operator delete(v67);
      }

      if (v65)
      {
        v66 = v65;
        operator delete(v65);
      }

      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      break;
  }
}

void sub_25A6316BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::Add>,1,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a7 + 8 * a8);
    v11 = 8 * *(*a5 + 8 * a8);
    v12 = 8 * *(*a6 + 8 * a8);
    do
    {
      if (v10 >= 1)
      {
        v13 = 0;
        v14 = v10 + 1;
        do
        {
          *(a3 + v13) = vadd_f32(*(result + v13), *(a2 + v13));
          v13 += 8;
          --v14;
        }

        while (v14 > 1);
      }

      ++v9;
      result += v11;
      a2 += v12;
      a3 += 8 * v10;
    }

    while (v9 != v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::Add>,2,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::Add>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 += v15;
      a2 += v16;
      a3 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::Add>,3,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::Add>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 += v15;
      a2 += v16;
      a3 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::Add>,1,true>(uint64_t result, float32x2_t *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a6 + 8 * a8);
    v11 = *(*a7 + 8 * a8);
    v12 = 8 * *(*a5 + 8 * a8);
    do
    {
      if (v11 >= 1)
      {
        v13 = 0;
        v14 = *a2;
        v15 = v11 + 1;
        do
        {
          *(a3 + v13) = vadd_f32(v14, *(result + v13));
          v13 += 8;
          --v15;
        }

        while (v15 > 1);
      }

      a2 += v10;
      ++v9;
      result += v12;
      a3 += 8 * v11;
    }

    while (v9 != v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::Add>,2,true>(uint64_t result, float32x2_t *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::Add>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 += v15;
      a2 = (a2 + v16);
      a3 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::Add>,3,true>(uint64_t result, float32x2_t *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::Add>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 += v15;
      a2 = (a2 + v16);
      a3 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

float32x2_t *mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::Add>,1,true>(float32x2_t *result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a5 + 8 * a8);
    v11 = *(*a7 + 8 * a8);
    v12 = 8 * *(*a6 + 8 * a8);
    do
    {
      if (v11 >= 1)
      {
        v13 = 0;
        v14 = *result;
        v15 = v11 + 1;
        do
        {
          *(a3 + v13) = vadd_f32(v14, *(a2 + v13));
          v13 += 8;
          --v15;
        }

        while (v15 > 1);
      }

      result += v10;
      ++v9;
      a2 += v12;
      a3 += 8 * v11;
    }

    while (v9 != v8);
  }

  return result;
}

float32x2_t *mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::Add>,2,true>(float32x2_t *result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::Add>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 += v16;
      a3 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

float32x2_t *mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::Add>,3,true>(float32x2_t *result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::Add>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 += v16;
      a3 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

float32x2_t *mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Add,2,false>(float32x2_t *result, float32x2_t *a2, float32x2_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = 8 * *(*a5 + 8 * a8);
    v11 = a8 + 1;
    v12 = 8 * *(*a6 + 8 * a8);
    v13 = 8 * *(*a7 + 8 * a8);
    do
    {
      v14 = *(*a4 + 4 * v11);
      if (v14 >= 1)
      {
        v15 = 8 * *(*a5 + 8 * v11);
        v16 = 8 * *(*a6 + 8 * v11);
        v17 = 8 * *(*a7 + 8 * v11);
        v18 = a3;
        v19 = a2;
        v20 = result;
        do
        {
          *v18 = vadd_f32(*v20, *v19);
          v20 = (v20 + v15);
          v19 = (v19 + v16);
          v18 = (v18 + v17);
          --v14;
        }

        while (v14);
      }

      ++v9;
      result = (result + v10);
      a2 = (a2 + v12);
      a3 = (a3 + v13);
    }

    while (v9 != v8);
  }

  return result;
}

float32x2_t *mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Add,3,false>(float32x2_t *result, float32x2_t *a2, float32x2_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Add,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void *std::__function::__func<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Add>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Add,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Add>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Add,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C01360;
  v2 = (a1 + 3);
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Add>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Add,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Add>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Add,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C01360;
  v2 = (a1 + 3);
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Add>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Add,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Add>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Add,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286C01360;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(result + 48);
  *(a2 + 40) = *(result + 40);
  *(a2 + 48) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 56) = *(result + 56);
  *(a2 + 65) = 0;
  *(a2 + 68) = 0;
  return result;
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Add>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Add,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Add>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Add,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Add>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Add,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Add>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Add,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Add>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Add,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Add>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Add,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_6DivMod8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERSC_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286C01458;
  v2 = (a1 + 5);
  mlx::core::array::~array((a1 + 9));
  mlx::core::array::~array((a1 + 7));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_6DivMod8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERSC_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286C01458;
  v2 = (a1 + 5);
  mlx::core::array::~array((a1 + 9));
  mlx::core::array::~array((a1 + 7));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_6DivMod8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERSC_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286C01458;
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

  v5 = *(result + 64);
  *(a2 + 56) = *(result + 56);
  *(a2 + 64) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(result + 80);
  *(a2 + 72) = *(result + 72);
  *(a2 + 80) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 88) = *(result + 88);
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_6DivMod8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERSC_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 72));
  mlx::core::array::~array((a1 + 56));
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_6DivMod8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERSC_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 72));
  mlx::core::array::~array((a1 + 56));
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_6DivMod8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERSC_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEEclEv(uint64_t a1)
{
  mlx::core::DivMod::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_0::operator()((a1 + 24));
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_6DivMod8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERSC_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::DivMod::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_0::operator()(uint64_t *a1)
{
  v994[1] = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  v2 = a1;
  switch(*(v1 + 56))
  {
    case 0:
      v3 = *(a1 + 16);
      if (v3 == 4)
      {
        v4 = *a1;
        v985 = 0;
        v986 = 0;
        v987 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v985, *(v4 + 24), *(v4 + 32), (*(v4 + 32) - *(v4 + 24)) >> 3);
        v5 = v2[2];
        v989 = 0;
        v990 = 0;
        v988 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v988, *(v5 + 24), *(v5 + 32), (*(v5 + 32) - *(v5 + 24)) >> 3);
        v6 = v2[4];
        v992 = 0;
        v993 = 0;
        v991 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v991, *(v6 + 24), *(v6 + 32), (*(v6 + 32) - *(v6 + 24)) >> 3);
        v974 = 0;
        v975 = 0;
        v976 = 0;
        std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v974, &v985, v994, 3uLL);
        mlx::core::collapse_contiguous_dims(v4, &v974, 0x7FFFFFFFuLL, &v981);
        v984 = &v974;
        std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v984);
        for (i = 0; i != -9; i -= 3)
        {
          v8 = *(&v991 + i * 8);
          if (v8)
          {
            (&v992)[i] = v8;
            operator delete(v8);
          }
        }

        v9 = *(*v2 + 152);
        v10 = *(v2[4] + 152);
        v11 = *(v2[6] + 152);
        v12 = v983[0];
        v13 = v982 - v981;
        v14 = (v982 - v981) >> 2;
        if (v14 == 1)
        {
          v367 = *v981;
          if (*v981 >= 1)
          {
            v368 = 0;
            v369 = **v983[0];
            v370 = **(v983[0] + 6);
            do
            {
              *(v10 + v368) = *v9;
              *(v11 + v368) = 0;
              v9 += v369;
              v368 += v370;
              --v367;
            }

            while (v367);
          }

          goto LABEL_598;
        }

        v15 = (v14 - 2);
        if (v14 == 2)
        {
          v16 = *v981;
          if (*v981 >= 1)
          {
            v17 = 0;
            v18 = v983[0][6];
            v19 = **v983[0];
            v20 = *(*v983[0] + 8);
            v21 = *v18;
            v22 = v18[1];
            v23 = *(v981 + 1);
            do
            {
              if (v23 >= 1)
              {
                v24 = 0;
                v25 = v23;
                v26 = v9;
                do
                {
                  *(v10 + v24) = *v26;
                  *(v11 + v24) = 0;
                  v26 += v20;
                  v24 += v22;
                  --v25;
                }

                while (v25);
              }

              v9 += v19;
              v10 += v21;
              v11 += v21;
              ++v17;
            }

            while (v17 != v16);
          }

          goto LABEL_598;
        }

        mlx::core::ContiguousIterator::ContiguousIterator(&v985, &v981, v983[0], v14 - 2);
        mlx::core::ContiguousIterator::ContiguousIterator(&v974, &v981, v12 + 3, v15);
        v970 = *(*v2 + 48);
        if (!v970)
        {
          v637 = __p;
LABEL_586:
          if (v637)
          {
            v980 = v637;
            operator delete(v637);
          }

          if (v977)
          {
            v978 = v977;
            operator delete(v977);
          }

          if (v975)
          {
            v976 = v975;
            operator delete(v975);
          }

          if (v992)
          {
            v993 = v992;
            operator delete(v992);
          }

          if (v989)
          {
            v990 = v989;
            operator delete(v989);
          }

          if (v986)
          {
            v987 = v986;
            operator delete(v986);
          }

LABEL_598:
          v985 = v983;
          std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v985);
          if (v981)
          {
            v982 = v981;
            operator delete(v981);
          }

          goto LABEL_600;
        }

        v958 = v2;
        v588 = 0;
        v968 = v12[6];
        v969 = *(v968 + (((v13 << 30) - 0x300000000) >> 29));
        v967 = *v12;
        v973 = v981;
        v965 = ((v13 << 30) - 0x100000000) >> 32;
        v589 = v985;
        v590 = v989;
        v591 = (v987 - v986) >> 2;
        v592 = (((v987 - v986) << 30) - 0x100000000) >> 32;
        v962 = v992;
        v972 = &v992[4 * v592];
        v966 = v592;
        v593 = &v986[4 * v592];
        v594 = v974;
        v595 = v977;
        v596 = (v976 - v975) >> 2;
        v963 = __p;
        v964 = (((v976 - v975) << 30) - 0x100000000) >> 32;
        v971 = __p + 4 * v964;
        v597 = 4 * (v591 & 0x7FFFFFFF);
        v960 = v986 - 8;
        v961 = (v596 & 0x7FFFFFFF) - 1;
        v598 = 4 * (v596 & 0x7FFFFFFF);
        v959 = v975 - 8;
        v599 = v975 + 4 * v964;
        while (1)
        {
          v600 = v596;
          v601 = v593;
          v602 = v15;
          v603 = v973[v15];
          if (v603 >= 1)
          {
            v604 = 0;
            v605 = *(v967 + 8 * v15);
            v606 = *(v968 + 8 * v15);
            v607 = v11 + v588;
            v608 = v10 + v588;
            v609 = v589 + v9;
            v610 = *(v967 + 8 * v965);
            v611 = *(v968 + 8 * v965);
            v612 = v973[v965];
            do
            {
              if (v612 >= 1)
              {
                v613 = 0;
                v614 = 0;
                v615 = v612;
                do
                {
                  *(v608 + v613) = v609[v614];
                  *(v607 + v613) = 0;
                  v614 += v610;
                  v613 += v611;
                  --v615;
                }

                while (v615);
              }

              v609 += v605;
              v608 += v606;
              v607 += v606;
              ++v604;
            }

            while (v604 != v603);
          }

          if (v591)
          {
            break;
          }

          v593 = v601;
          v596 = v600;
          v15 = v602;
          if (v600)
          {
            goto LABEL_396;
          }

LABEL_404:
          v588 += v969;
          if (v588 >= v970)
          {
            v637 = v963;
            v2 = v958;
            goto LABEL_586;
          }
        }

        v616 = *v972;
        v593 = v601;
        v15 = v602;
        if (v591 < 2)
        {
          v618 = v966;
          v626 = v972;
          v596 = v600;
        }

        else
        {
          v617 = *v601 - 1;
          v596 = v600;
          if (v616 == v617)
          {
            v618 = (v591 & 0x7FFFFFFF) - 1;
            v619 = v962;
            v620 = v960;
            v621 = v593;
            v622 = v972;
            v623 = v966;
            do
            {
              v624 = v618;
              *v622 = 0;
              v589 = (v589 - v590[v623] * (*v621 - 1));
              v985 = v589;
              --v618;
              v622 = &v619[v597 - 8];
              v616 = *v622;
              v619 -= 4;
              if (v624 < 2)
              {
                break;
              }

              v621 = &v620[v597];
              v625 = *&v620[4 * (v591 & 0x7FFFFFFF)] - 1;
              v620 -= 4;
              v623 = v618;
            }

            while (v616 == v625);
            v626 = &v619[v597 - 4];
          }

          else
          {
            v618 = v966;
            v626 = v972;
          }
        }

        *v626 = v616 + 1;
        v589 = (v589 + v590[v618]);
        v985 = v589;
        if (!v596)
        {
          goto LABEL_404;
        }

LABEL_396:
        v627 = *v971;
        if (v596 >= 2 && v627 == *v599 - 1)
        {
          v628 = v963;
          v629 = v964;
          v630 = v959;
          v631 = v961;
          v632 = v599;
          v633 = v971;
          do
          {
            v634 = v631;
            *v633 = 0;
            v594 -= v595[v629] * (*v632 - 1);
            v974 = v594;
            --v631;
            v633 = &v628[v598 - 8];
            v627 = *v633;
            v628 -= 4;
            if (v634 < 2)
            {
              break;
            }

            v632 = &v630[v598];
            v635 = *&v630[v598] - 1;
            v630 -= 4;
            v629 = v631;
          }

          while (v627 == v635);
          v636 = &v628[v598 - 4];
        }

        else
        {
          v631 = v964;
          v636 = v971;
        }

        *v636 = v627 + 1;
        v594 += v595[v631];
        v974 = v594;
        goto LABEL_404;
      }

      v254 = *a1;
      v255 = *(*a1 + 152);
      v256 = *(v1 + 152);
      v257 = *(a1[6] + 152);
      if (v3)
      {
        if (v3 == 1)
        {
          for (j = *(a1[2] + 160); j; --j)
          {
            *v256++ = *v255;
            *v257++ = 0;
          }
        }

        else if (v3 == 2)
        {
          for (k = *(v254 + 160); k; --k)
          {
            v259 = *v255++;
            *v256++ = v259;
            *v257++ = 0;
          }
        }

        else
        {
          for (m = *(v254 + 48); m; --m)
          {
            v858 = *v255++;
            *v256++ = v858;
            *v257++ = 0;
          }
        }
      }

      else
      {
        *v256 = *v255;
        *v257 = 0;
      }

LABEL_600:
      v890 = *(v2 + 16);
      if (v890 == 4)
      {
        v891 = *v2;
        v985 = 0;
        v986 = 0;
        v987 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v985, *(v891 + 24), *(v891 + 32), (*(v891 + 32) - *(v891 + 24)) >> 3);
        v892 = v2[2];
        v989 = 0;
        v990 = 0;
        v988 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v988, *(v892 + 24), *(v892 + 32), (*(v892 + 32) - *(v892 + 24)) >> 3);
        v893 = v2[4];
        v992 = 0;
        v993 = 0;
        v991 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v991, *(v893 + 24), *(v893 + 32), (*(v893 + 32) - *(v893 + 24)) >> 3);
        v974 = 0;
        v975 = 0;
        v976 = 0;
        std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v974, &v985, v994, 3uLL);
        mlx::core::collapse_contiguous_dims(v891, &v974, 0x7FFFFFFFuLL, &v981);
        v984 = &v974;
        std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v984);
        for (n = 0; n != -9; n -= 3)
        {
          v895 = *(&v991 + n * 8);
          if (v895)
          {
            (&v992)[n] = v895;
            operator delete(v895);
          }
        }

        v896 = *(*v2 + 152);
        v897 = *(v2[2] + 152);
        v898 = *(v2[4] + 152);
        v899 = *(v2[6] + 152);
        v900 = v983[0];
        v901 = v982 - v981;
        v902 = (v982 - v981) >> 2;
        if (v902 == 1)
        {
          v912 = *v981;
          if (*v981 >= 1)
          {
            v913 = 0;
            v914 = **v983[0];
            v915 = **(v983[0] + 3);
            v916 = **(v983[0] + 6);
            do
            {
              v917 = *v896 % *v897;
              *(v898 + v913) = *v896 / *v897;
              *(v899 + v913) = v917;
              v896 += v914;
              v897 += v915;
              v913 += v916;
              --v912;
            }

            while (v912);
          }
        }

        else
        {
          v903 = v902 - 2;
          if (v902 == 2)
          {
          }

          else
          {
            mlx::core::ContiguousIterator::ContiguousIterator(&v985, &v981, v983[0], v902 - 2);
            mlx::core::ContiguousIterator::ContiguousIterator(&v974, &v981, v900 + 3, v903);
            if (*(*v2 + 48))
            {
              v918 = 0;
              v919 = *(v900[6] + (((v901 << 30) - 0x300000000) >> 29));
              do
              {
                v920 = v987 - v986;
                v921 = (v987 - v986) >> 2;
                if (v921)
                {
                  v922 = v992;
                  v923 = ((v920 << 30) - 0x100000000) >> 32;
                  v924 = &v992[4 * v923];
                  v925 = *v924;
                  v926 = &v986[4 * v923];
                  v927 = v989;
                  v928 = v985;
                  if (v921 >= 2 && v925 == *v926 - 1)
                  {
                    v931 = (v920 >> 2) & 0x7FFFFFFF;
                    v930 = v931 - 1;
                    v932 = 4 * v931;
                    v933 = v986 - 8;
                    do
                    {
                      v934 = v930;
                      *v924 = 0;
                      v928 = (v928 - v927[v923] * (*v926 - 1));
                      v985 = v928;
                      --v930;
                      v924 = &v922[v932 - 8];
                      v925 = *v924;
                      v922 -= 4;
                      if (v934 < 2)
                      {
                        break;
                      }

                      v926 = &v933[v932];
                      v935 = *&v933[4 * v931] - 1;
                      v933 -= 4;
                      v923 = v930;
                    }

                    while (v925 == v935);
                    v924 = &v922[4 * v931 - 4];
                  }

                  else
                  {
                    v930 = ((v920 << 30) - 0x100000000) >> 32;
                  }

                  *v924 = v925 + 1;
                  v985 = (v928 + v927[v930]);
                }

                v936 = v976 - v975;
                v937 = (v976 - v975) >> 2;
                if (v937)
                {
                  v938 = __p;
                  v939 = ((v936 << 30) - 0x100000000) >> 32;
                  v940 = __p + 4 * v939;
                  v941 = *v940;
                  v942 = v977;
                  v943 = v974;
                  if (v937 >= 2 && (v944 = v975 + 4 * v939, v941 == *v944 - 1))
                  {
                    v945 = (v936 >> 2) & 0x7FFFFFFF;
                    v946 = v945 - 1;
                    v947 = 4 * v945;
                    v948 = v975 - 8;
                    do
                    {
                      v949 = v946;
                      *v940 = 0;
                      v943 -= v942[v939] * (*v944 - 1);
                      v974 = v943;
                      --v946;
                      v940 = &v938[v947 - 8];
                      v941 = *v940;
                      v938 -= 4;
                      if (v949 < 2)
                      {
                        break;
                      }

                      v944 = &v948[v947];
                      v950 = *&v948[4 * v945] - 1;
                      v948 -= 4;
                      v939 = v946;
                    }

                    while (v941 == v950);
                    v940 = &v938[4 * v945 - 4];
                  }

                  else
                  {
                    v946 = ((v936 << 30) - 0x100000000) >> 32;
                  }

                  *v940 = v941 + 1;
                  v974 = v942[v946] + v943;
                }

                v918 += v919;
              }

              while (v918 < *(*v2 + 48));
            }

LABEL_642:
            if (__p)
            {
              v980 = __p;
              operator delete(__p);
            }

            if (v977)
            {
              v978 = v977;
              operator delete(v977);
            }

            if (v975)
            {
              v976 = v975;
              operator delete(v975);
            }

            if (v992)
            {
              v993 = v992;
              operator delete(v992);
            }

            if (v989)
            {
              v990 = v989;
              operator delete(v989);
            }

            if (v986)
            {
              v987 = v986;
              operator delete(v986);
            }
          }
        }

LABEL_654:
        v985 = v983;
        std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v985);
        if (v981)
        {
          v982 = v981;
          operator delete(v981);
        }
      }

      else
      {
        v904 = *v2;
        v905 = *(*v2 + 152);
        v906 = v2[2];
        v907 = *(v906 + 152);
        v908 = *(v2[4] + 152);
        v909 = *(v2[6] + 152);
        if (v890)
        {
          if (v890 == 1)
          {
            if (*(v906 + 160))
            {
              v951 = 0;
              do
              {
                v952 = *v905 % v907[v951];
                v908[v951] = *v905 / v907[v951];
                v909[v951++] = v952;
              }

              while (v951 < *(v2[2] + 160));
            }
          }

          else if (v890 == 2)
          {
            if (*(v904 + 160))
            {
              v910 = 0;
              do
              {
                v911 = v905[v910] % *v907;
                v908[v910] = v905[v910] / *v907;
                v909[v910++] = v911;
              }

              while (v910 < *(*v2 + 160));
            }
          }

          else if (*(v904 + 48))
          {
            v955 = 0;
            do
            {
              v956 = v905[v955] % v907[v955];
              v908[v955] = v905[v955] / v907[v955];
              v909[v955++] = v956;
            }

            while (v955 < *(*v2 + 48));
          }
        }

        else
        {
          v953 = *v905;
          v954 = *v907;
          *v908 = v953 / v954;
          *v909 = v953 % v954;
        }
      }

      return;
    case 1:
      goto LABEL_600;
    case 2:
      v83 = *(a1 + 16);
      if (v83 != 4)
      {
        v228 = *a1;
        v229 = *(*a1 + 152);
        v230 = a1[2];
        v231 = *(v230 + 152);
        v232 = *(v1 + 152);
        v233 = *(a1[6] + 152);
        switch(v83)
        {
          case 0:
            v829 = *v229;
            v830 = *v231;
            v831 = v829 / v830;
            goto LABEL_568;
          case 1:
            for (ii = *(v230 + 160); ii; --ii)
            {
              v807 = *v231++;
              v808 = *v229 % v807;
              *v232++ = *v229 / v807;
              *v233++ = v808;
            }

            break;
          case 2:
            for (jj = *(v228 + 160); jj; --jj)
            {
              v235 = *v229++;
              v236 = *v231;
              v237 = v235 / *v231;
              *v232++ = v237;
              *v233++ = v235 - v237 * v236;
            }

            break;
          default:
            for (kk = *(v228 + 48); kk; --kk)
            {
              v840 = *v229++;
              v839 = v840;
              v841 = *v231++;
              *v232++ = v839 / v841;
              *v233++ = v839 % v841;
            }

            break;
        }

        return;
      }

      v84 = *a1;
      v985 = 0;
      v986 = 0;
      v987 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v985, *(v84 + 24), *(v84 + 32), (*(v84 + 32) - *(v84 + 24)) >> 3);
      v85 = v2[2];
      v989 = 0;
      v990 = 0;
      v988 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v988, *(v85 + 24), *(v85 + 32), (*(v85 + 32) - *(v85 + 24)) >> 3);
      v86 = v2[4];
      v992 = 0;
      v993 = 0;
      v991 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v991, *(v86 + 24), *(v86 + 32), (*(v86 + 32) - *(v86 + 24)) >> 3);
      v974 = 0;
      v975 = 0;
      v976 = 0;
      std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v974, &v985, v994, 3uLL);
      mlx::core::collapse_contiguous_dims(v84, &v974, 0x7FFFFFFFuLL, &v981);
      v984 = &v974;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v984);
      for (mm = 0; mm != -9; mm -= 3)
      {
        v88 = *(&v991 + mm * 8);
        if (v88)
        {
          (&v992)[mm] = v88;
          operator delete(v88);
        }
      }

      v89 = *(*v2 + 152);
      v90 = *(v2[2] + 152);
      v91 = *(v2[4] + 152);
      v92 = *(v2[6] + 152);
      v93 = v983[0];
      v94 = v982 - v981;
      v95 = (v982 - v981) >> 2;
      if (v95 == 1)
      {
        v317 = *v981;
        if (*v981 >= 1)
        {
          v318 = 0;
          v319 = 2 * **v983[0];
          v320 = 2 * **(v983[0] + 3);
          v321 = 2 * **(v983[0] + 6);
          do
          {
            v322 = *v89 % *v90;
            *(v91 + v318) = *v89 / *v90;
            *(v92 + v318) = v322;
            v89 = (v89 + v319);
            v90 = (v90 + v320);
            v318 += v321;
            --v317;
          }

          while (v317);
        }

        goto LABEL_654;
      }

      v96 = v95 - 2;
      if (v95 == 2)
      {
        goto LABEL_654;
      }

      mlx::core::ContiguousIterator::ContiguousIterator(&v985, &v981, v983[0], v95 - 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v974, &v981, v93 + 3, v96);
      if (*(*v2 + 48))
      {
        v492 = 0;
        v493 = *(v93[6] + (((v94 << 30) - 0x300000000) >> 29));
        do
        {
          v494 = v987 - v986;
          v495 = (v987 - v986) >> 2;
          if (v495)
          {
            v496 = v992;
            v497 = ((v494 << 30) - 0x100000000) >> 32;
            v498 = &v992[4 * v497];
            v499 = *v498;
            v500 = v989;
            v501 = v985;
            if (v495 >= 2 && (v502 = &v986[4 * v497], v499 == *v502 - 1))
            {
              v503 = (v494 >> 2) & 0x7FFFFFFF;
              v504 = v503 - 1;
              v505 = 4 * v503;
              v506 = v986 - 8;
              do
              {
                v507 = v504;
                *v498 = 0;
                v501 = (v501 - v500[v497] * (*v502 - 1));
                v985 = v501;
                --v504;
                v498 = &v496[v505 - 8];
                v499 = *v498;
                v496 -= 4;
                if (v507 < 2)
                {
                  break;
                }

                v502 = &v506[v505];
                v508 = *&v506[4 * v503] - 1;
                v506 -= 4;
                v497 = v504;
              }

              while (v499 == v508);
              v498 = &v496[4 * v503 - 4];
            }

            else
            {
              v504 = ((v494 << 30) - 0x100000000) >> 32;
            }

            *v498 = v499 + 1;
            v985 = (v501 + v500[v504]);
          }

          v509 = v976 - v975;
          v510 = (v976 - v975) >> 2;
          if (v510)
          {
            v511 = __p;
            v512 = ((v509 << 30) - 0x100000000) >> 32;
            v513 = __p + 4 * v512;
            v514 = *v513;
            v515 = v977;
            v516 = v974;
            if (v510 >= 2 && (v517 = v975 + 4 * v512, v514 == *v517 - 1))
            {
              v518 = (v509 >> 2) & 0x7FFFFFFF;
              v519 = v518 - 1;
              v520 = 4 * v518;
              v521 = v975 - 8;
              do
              {
                v522 = v519;
                *v513 = 0;
                v516 -= v515[v512] * (*v517 - 1);
                v974 = v516;
                --v519;
                v513 = &v511[v520 - 8];
                v514 = *v513;
                v511 -= 4;
                if (v522 < 2)
                {
                  break;
                }

                v517 = &v521[v520];
                v523 = *&v521[4 * v518] - 1;
                v521 -= 4;
                v512 = v519;
              }

              while (v514 == v523);
              v513 = &v511[4 * v518 - 4];
            }

            else
            {
              v519 = ((v509 << 30) - 0x100000000) >> 32;
            }

            *v513 = v514 + 1;
            v974 = v515[v519] + v516;
          }

          v492 += v493;
        }

        while (v492 < *(*v2 + 48));
      }

      goto LABEL_642;
    case 3:
      v97 = *(a1 + 16);
      if (v97 != 4)
      {
        v238 = *a1;
        v239 = *(*a1 + 152);
        v240 = a1[2];
        v241 = *(v240 + 152);
        v242 = *(v1 + 152);
        v243 = *(a1[6] + 152);
        switch(v97)
        {
          case 0:
            v843 = *v239;
            v844 = *v241;
            v845 = v843 / v844;
            goto LABEL_542;
          case 1:
            for (nn = *(v240 + 160); nn; --nn)
            {
              v833 = *v241++;
              v834 = *v239 % v833;
              *v242++ = *v239 / v833;
              *v243++ = v834;
            }

            break;
          case 2:
            for (i1 = *(v238 + 160); i1; --i1)
            {
              v245 = *v239++;
              v246 = *v241;
              *v242++ = v245 / *v241;
              *v243++ = v245 % v246;
            }

            break;
          default:
            for (i2 = *(v238 + 48); i2; --i2)
            {
              v848 = *v239++;
              v847 = v848;
              v849 = *v241++;
              *v242++ = v847 / v849;
              *v243++ = v847 % v849;
            }

            break;
        }

        return;
      }

      v98 = *a1;
      v985 = 0;
      v986 = 0;
      v987 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v985, *(v98 + 24), *(v98 + 32), (*(v98 + 32) - *(v98 + 24)) >> 3);
      v99 = v2[2];
      v989 = 0;
      v990 = 0;
      v988 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v988, *(v99 + 24), *(v99 + 32), (*(v99 + 32) - *(v99 + 24)) >> 3);
      v100 = v2[4];
      v992 = 0;
      v993 = 0;
      v991 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v991, *(v100 + 24), *(v100 + 32), (*(v100 + 32) - *(v100 + 24)) >> 3);
      v974 = 0;
      v975 = 0;
      v976 = 0;
      std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v974, &v985, v994, 3uLL);
      mlx::core::collapse_contiguous_dims(v98, &v974, 0x7FFFFFFFuLL, &v981);
      v984 = &v974;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v984);
      for (i3 = 0; i3 != -9; i3 -= 3)
      {
        v102 = *(&v991 + i3 * 8);
        if (v102)
        {
          (&v992)[i3] = v102;
          operator delete(v102);
        }
      }

      v103 = *(*v2 + 152);
      v104 = *(v2[2] + 152);
      v105 = *(v2[4] + 152);
      v106 = *(v2[6] + 152);
      v107 = v983[0];
      v108 = v982 - v981;
      v109 = (v982 - v981) >> 2;
      if (v109 == 1)
      {
        v355 = *v981;
        if (*v981 >= 1)
        {
          v356 = 0;
          v357 = 4 * **v983[0];
          v358 = 4 * **(v983[0] + 3);
          v359 = 4 * **(v983[0] + 6);
          do
          {
            v360 = *v103 % *v104;
            *(v105 + v356) = *v103 / *v104;
            *(v106 + v356) = v360;
            v103 = (v103 + v357);
            v104 = (v104 + v358);
            v356 += v359;
            --v355;
          }

          while (v355);
        }

        goto LABEL_654;
      }

      v110 = v109 - 2;
      if (v109 == 2)
      {
        goto LABEL_654;
      }

      mlx::core::ContiguousIterator::ContiguousIterator(&v985, &v981, v983[0], v109 - 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v974, &v981, v107 + 3, v110);
      if (*(*v2 + 48))
      {
        v524 = 0;
        v525 = *(v107[6] + (((v108 << 30) - 0x300000000) >> 29));
        do
        {
          v526 = v987 - v986;
          v527 = (v987 - v986) >> 2;
          if (v527)
          {
            v528 = v992;
            v529 = ((v526 << 30) - 0x100000000) >> 32;
            v530 = &v992[4 * v529];
            v531 = *v530;
            v532 = v989;
            v533 = v985;
            if (v527 >= 2 && (v534 = &v986[4 * v529], v531 == *v534 - 1))
            {
              v535 = (v526 >> 2) & 0x7FFFFFFF;
              v536 = v535 - 1;
              v537 = 4 * v535;
              v538 = v986 - 8;
              do
              {
                v539 = v536;
                *v530 = 0;
                v533 = (v533 - v532[v529] * (*v534 - 1));
                v985 = v533;
                --v536;
                v530 = &v528[v537 - 8];
                v531 = *v530;
                v528 -= 4;
                if (v539 < 2)
                {
                  break;
                }

                v534 = &v538[v537];
                v540 = *&v538[4 * v535] - 1;
                v538 -= 4;
                v529 = v536;
              }

              while (v531 == v540);
              v530 = &v528[4 * v535 - 4];
            }

            else
            {
              v536 = ((v526 << 30) - 0x100000000) >> 32;
            }

            *v530 = v531 + 1;
            v985 = (v533 + v532[v536]);
          }

          v541 = v976 - v975;
          v542 = (v976 - v975) >> 2;
          if (v542)
          {
            v543 = __p;
            v544 = ((v541 << 30) - 0x100000000) >> 32;
            v545 = __p + 4 * v544;
            v546 = *v545;
            v547 = v977;
            v548 = v974;
            if (v542 >= 2 && (v549 = v975 + 4 * v544, v546 == *v549 - 1))
            {
              v550 = (v541 >> 2) & 0x7FFFFFFF;
              v551 = v550 - 1;
              v552 = 4 * v550;
              v553 = v975 - 8;
              do
              {
                v554 = v551;
                *v545 = 0;
                v548 -= v547[v544] * (*v549 - 1);
                v974 = v548;
                --v551;
                v545 = &v543[v552 - 8];
                v546 = *v545;
                v543 -= 4;
                if (v554 < 2)
                {
                  break;
                }

                v549 = &v553[v552];
                v555 = *&v553[4 * v550] - 1;
                v553 -= 4;
                v544 = v551;
              }

              while (v546 == v555);
              v545 = &v543[4 * v550 - 4];
            }

            else
            {
              v551 = ((v541 << 30) - 0x100000000) >> 32;
            }

            *v545 = v546 + 1;
            v974 = v547[v551] + v548;
          }

          v524 += v525;
        }

        while (v524 < *(*v2 + 48));
      }

      goto LABEL_642;
    case 4:
      v41 = *(a1 + 16);
      if (v41 != 4)
      {
        v191 = *a1;
        v192 = *(*a1 + 152);
        v193 = a1[2];
        v194 = *(v193 + 152);
        v195 = *(v1 + 152);
        v196 = *(a1[6] + 152);
        switch(v41)
        {
          case 0:
            v795 = *v192;
            v796 = *v194;
            v797 = v795 / v796;
            goto LABEL_575;
          case 1:
            for (i4 = *(v193 + 160); i4; --i4)
            {
              v774 = *v194++;
              v775 = *v192 % v774;
              *v195++ = *v192 / v774;
              *v196++ = v775;
            }

            break;
          case 2:
            for (i5 = *(v191 + 160); i5; --i5)
            {
              v198 = *v192++;
              v199 = v198 % *v194;
              *v195++ = v198 / *v194;
              *v196++ = v199;
            }

            break;
          default:
            for (i6 = *(v191 + 48); i6; --i6)
            {
              v804 = *v192++;
              v803 = v804;
              v805 = *v194++;
              *v195++ = v803 / v805;
              *v196++ = v803 % v805;
            }

            break;
        }

        return;
      }

      v42 = *a1;
      v985 = 0;
      v986 = 0;
      v987 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v985, *(v42 + 24), *(v42 + 32), (*(v42 + 32) - *(v42 + 24)) >> 3);
      v43 = v2[2];
      v989 = 0;
      v990 = 0;
      v988 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v988, *(v43 + 24), *(v43 + 32), (*(v43 + 32) - *(v43 + 24)) >> 3);
      v44 = v2[4];
      v992 = 0;
      v993 = 0;
      v991 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v991, *(v44 + 24), *(v44 + 32), (*(v44 + 32) - *(v44 + 24)) >> 3);
      v974 = 0;
      v975 = 0;
      v976 = 0;
      std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v974, &v985, v994, 3uLL);
      mlx::core::collapse_contiguous_dims(v42, &v974, 0x7FFFFFFFuLL, &v981);
      v984 = &v974;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v984);
      for (i7 = 0; i7 != -9; i7 -= 3)
      {
        v46 = *(&v991 + i7 * 8);
        if (v46)
        {
          (&v992)[i7] = v46;
          operator delete(v46);
        }
      }

      v47 = *(*v2 + 152);
      v48 = *(v2[2] + 152);
      v49 = *(v2[4] + 152);
      v50 = *(v2[6] + 152);
      v51 = v983[0];
      v52 = v982 - v981;
      v53 = (v982 - v981) >> 2;
      if (v53 == 1)
      {
        v300 = *v981;
        if (*v981 >= 1)
        {
          v301 = 0;
          v302 = 8 * **v983[0];
          v303 = 8 * **(v983[0] + 3);
          v304 = 8 * **(v983[0] + 6);
          do
          {
            v305 = *v47 % *v48;
            *(v49 + v301) = *v47 / *v48;
            *(v50 + v301) = v305;
            v47 = (v47 + v302);
            v48 = (v48 + v303);
            v301 += v304;
            --v300;
          }

          while (v300);
        }

        goto LABEL_654;
      }

      v54 = v53 - 2;
      if (v53 == 2)
      {
        goto LABEL_654;
      }

      mlx::core::ContiguousIterator::ContiguousIterator(&v985, &v981, v983[0], v53 - 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v974, &v981, v51 + 3, v54);
      if (*(*v2 + 48))
      {
        v371 = 0;
        v372 = *(v51[6] + (((v52 << 30) - 0x300000000) >> 29));
        do
        {
          v373 = v987 - v986;
          v374 = (v987 - v986) >> 2;
          if (v374)
          {
            v375 = v992;
            v376 = ((v373 << 30) - 0x100000000) >> 32;
            v377 = &v992[4 * v376];
            v378 = *v377;
            v379 = v989;
            v380 = v985;
            if (v374 >= 2 && (v381 = &v986[4 * v376], v378 == *v381 - 1))
            {
              v382 = (v373 >> 2) & 0x7FFFFFFF;
              v383 = v382 - 1;
              v384 = 4 * v382;
              v385 = v986 - 8;
              do
              {
                v386 = v383;
                *v377 = 0;
                v380 = (v380 - v379[v376] * (*v381 - 1));
                v985 = v380;
                --v383;
                v377 = &v375[v384 - 8];
                v378 = *v377;
                v375 -= 4;
                if (v386 < 2)
                {
                  break;
                }

                v381 = &v385[v384];
                v387 = *&v385[4 * v382] - 1;
                v385 -= 4;
                v376 = v383;
              }

              while (v378 == v387);
              v377 = &v375[4 * v382 - 4];
            }

            else
            {
              v383 = ((v373 << 30) - 0x100000000) >> 32;
            }

            *v377 = v378 + 1;
            v985 = (v380 + v379[v383]);
          }

          v388 = v976 - v975;
          v389 = (v976 - v975) >> 2;
          if (v389)
          {
            v390 = __p;
            v391 = ((v388 << 30) - 0x100000000) >> 32;
            v392 = __p + 4 * v391;
            v393 = *v392;
            v394 = v977;
            v395 = v974;
            if (v389 >= 2 && (v396 = v975 + 4 * v391, v393 == *v396 - 1))
            {
              v397 = (v388 >> 2) & 0x7FFFFFFF;
              v398 = v397 - 1;
              v399 = 4 * v397;
              v400 = v975 - 8;
              do
              {
                v401 = v398;
                *v392 = 0;
                v395 -= v394[v391] * (*v396 - 1);
                v974 = v395;
                --v398;
                v392 = &v390[v399 - 8];
                v393 = *v392;
                v390 -= 4;
                if (v401 < 2)
                {
                  break;
                }

                v396 = &v400[v399];
                v402 = *&v400[4 * v397] - 1;
                v400 -= 4;
                v391 = v398;
              }

              while (v393 == v402);
              v392 = &v390[4 * v397 - 4];
            }

            else
            {
              v398 = ((v388 << 30) - 0x100000000) >> 32;
            }

            *v392 = v393 + 1;
            v974 = v394[v398] + v395;
          }

          v371 += v372;
        }

        while (v371 < *(*v2 + 48));
      }

      goto LABEL_642;
    case 5:
      v125 = *(a1 + 16);
      if (v125 != 4)
      {
        v260 = *a1;
        v261 = *(*a1 + 152);
        v262 = a1[2];
        v263 = *(v262 + 152);
        v264 = *(v1 + 152);
        v265 = *(a1[6] + 152);
        if (v125)
        {
          if (v125 == 1)
          {
            if (*(v262 + 160))
            {
              v854 = 0;
              do
              {
                v855 = v263[v854];
                v856 = *v261 % v855;
                v264[v854] = *v261 / v855;
                v265[v854++] = v856;
              }

              while (v854 < *(a1[2] + 160));
            }
          }

          else if (v125 == 2)
          {
            if (*(v260 + 160))
            {
              v266 = 0;
              do
              {
                v267 = v261[v266];
                v268 = *v263;
                v264[v266] = v267 / *v263;
                v265[v266++] = v267 % v268;
              }

              while (v266 < *(*a1 + 160));
            }
          }

          else if (*(v260 + 48))
          {
            v871 = 0;
            do
            {
              v872 = v261[v871];
              v873 = v263[v871];
              v264[v871] = v872 / v873;
              v265[v871++] = v872 % v873;
            }

            while (v871 < *(*a1 + 48));
          }
        }

        else
        {
          v869 = *v261;
          v870 = *v263;
          *v264 = v869 / *v263;
          *v265 = v869 % v870;
        }

        return;
      }

      v126 = *a1;
      v985 = 0;
      v986 = 0;
      v987 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v985, *(v126 + 24), *(v126 + 32), (*(v126 + 32) - *(v126 + 24)) >> 3);
      v127 = v2[2];
      v989 = 0;
      v990 = 0;
      v988 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v988, *(v127 + 24), *(v127 + 32), (*(v127 + 32) - *(v127 + 24)) >> 3);
      v128 = v2[4];
      v992 = 0;
      v993 = 0;
      v991 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v991, *(v128 + 24), *(v128 + 32), (*(v128 + 32) - *(v128 + 24)) >> 3);
      v974 = 0;
      v975 = 0;
      v976 = 0;
      std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v974, &v985, v994, 3uLL);
      mlx::core::collapse_contiguous_dims(v126, &v974, 0x7FFFFFFFuLL, &v981);
      v984 = &v974;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v984);
      for (i8 = 0; i8 != -9; i8 -= 3)
      {
        v130 = *(&v991 + i8 * 8);
        if (v130)
        {
          (&v992)[i8] = v130;
          operator delete(v130);
        }
      }

      v131 = *(*v2 + 152);
      v132 = *(v2[2] + 152);
      v133 = *(v2[4] + 152);
      v134 = *(v2[6] + 152);
      v135 = v983[0];
      v136 = v982 - v981;
      v137 = (v982 - v981) >> 2;
      if (v137 == 1)
      {
        v467 = *v981;
        if (*v981 >= 1)
        {
          v468 = 0;
          v469 = **v983[0];
          v470 = **(v983[0] + 3);
          v471 = **(v983[0] + 6);
          do
          {
            v472 = *v131 % *v132;
            *(v133 + v468) = *v131 / *v132;
            *(v134 + v468) = v472;
            v131 += v469;
            v132 += v470;
            v468 += v471;
            --v467;
          }

          while (v467);
        }

        goto LABEL_654;
      }

      v138 = v137 - 2;
      if (v137 == 2)
      {
        goto LABEL_654;
      }

      mlx::core::ContiguousIterator::ContiguousIterator(&v985, &v981, v983[0], v137 - 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v974, &v981, v135 + 3, v138);
      if (*(*v2 + 48))
      {
        v638 = 0;
        v639 = *(v135[6] + (((v136 << 30) - 0x300000000) >> 29));
        do
        {
          v640 = v987 - v986;
          v641 = (v987 - v986) >> 2;
          if (v641)
          {
            v642 = v992;
            v643 = ((v640 << 30) - 0x100000000) >> 32;
            v644 = &v992[4 * v643];
            v645 = *v644;
            v646 = &v986[4 * v643];
            v647 = v989;
            v648 = v985;
            if (v641 >= 2 && v645 == *v646 - 1)
            {
              v651 = (v640 >> 2) & 0x7FFFFFFF;
              v650 = v651 - 1;
              v652 = 4 * v651;
              v653 = v986 - 8;
              do
              {
                v654 = v650;
                *v644 = 0;
                v648 = (v648 - v647[v643] * (*v646 - 1));
                v985 = v648;
                --v650;
                v644 = &v642[v652 - 8];
                v645 = *v644;
                v642 -= 4;
                if (v654 < 2)
                {
                  break;
                }

                v646 = &v653[v652];
                v655 = *&v653[4 * v651] - 1;
                v653 -= 4;
                v643 = v650;
              }

              while (v645 == v655);
              v644 = &v642[4 * v651 - 4];
            }

            else
            {
              v650 = ((v640 << 30) - 0x100000000) >> 32;
            }

            *v644 = v645 + 1;
            v985 = (v648 + v647[v650]);
          }

          v656 = v976 - v975;
          v657 = (v976 - v975) >> 2;
          if (v657)
          {
            v658 = __p;
            v659 = ((v656 << 30) - 0x100000000) >> 32;
            v660 = __p + 4 * v659;
            v661 = *v660;
            v662 = v977;
            v663 = v974;
            if (v657 >= 2 && (v664 = v975 + 4 * v659, v661 == *v664 - 1))
            {
              v665 = (v656 >> 2) & 0x7FFFFFFF;
              v666 = v665 - 1;
              v667 = 4 * v665;
              v668 = v975 - 8;
              do
              {
                v669 = v666;
                *v660 = 0;
                v663 -= v662[v659] * (*v664 - 1);
                v974 = v663;
                --v666;
                v660 = &v658[v667 - 8];
                v661 = *v660;
                v658 -= 4;
                if (v669 < 2)
                {
                  break;
                }

                v664 = &v668[v667];
                v670 = *&v668[4 * v665] - 1;
                v668 -= 4;
                v659 = v666;
              }

              while (v661 == v670);
              v660 = &v658[4 * v665 - 4];
            }

            else
            {
              v666 = ((v656 << 30) - 0x100000000) >> 32;
            }

            *v660 = v661 + 1;
            v974 = v662[v666] + v663;
          }

          v638 += v639;
        }

        while (v638 < *(*v2 + 48));
      }

      goto LABEL_642;
    case 6:
      v139 = *(a1 + 16);
      if (v139 != 4)
      {
        v269 = *a1;
        v270 = *(*a1 + 152);
        v271 = a1[2];
        v272 = *(v271 + 152);
        v232 = *(v1 + 152);
        v233 = *(a1[6] + 152);
        if (v139)
        {
          if (v139 == 1)
          {
            for (i9 = *(v271 + 160); i9; --i9)
            {
              v860 = *v272++;
              v861 = *v270 % v860;
              *v232++ = *v270 / v860;
              *v233++ = v861;
            }
          }

          else if (v139 == 2)
          {
            for (i10 = *(v269 + 160); i10; --i10)
            {
              v274 = *v270++;
              v275 = *v272;
              *v232++ = v274 / *v272;
              *v233++ = v274 % v275;
            }
          }

          else
          {
            for (i11 = *(v269 + 48); i11; --i11)
            {
              v878 = *v270++;
              v877 = v878;
              v879 = *v272++;
              *v232++ = v877 / v879;
              *v233++ = v877 % v879;
            }
          }
        }

        else
        {
          v829 = *v270;
          v830 = *v272;
          v831 = v829 / v830;
LABEL_568:
          *v232 = v831;
          *v233 = v829 - v831 * v830;
        }

        return;
      }

      v140 = *a1;
      v985 = 0;
      v986 = 0;
      v987 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v985, *(v140 + 24), *(v140 + 32), (*(v140 + 32) - *(v140 + 24)) >> 3);
      v141 = v2[2];
      v989 = 0;
      v990 = 0;
      v988 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v988, *(v141 + 24), *(v141 + 32), (*(v141 + 32) - *(v141 + 24)) >> 3);
      v142 = v2[4];
      v992 = 0;
      v993 = 0;
      v991 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v991, *(v142 + 24), *(v142 + 32), (*(v142 + 32) - *(v142 + 24)) >> 3);
      v974 = 0;
      v975 = 0;
      v976 = 0;
      std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v974, &v985, v994, 3uLL);
      mlx::core::collapse_contiguous_dims(v140, &v974, 0x7FFFFFFFuLL, &v981);
      v984 = &v974;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v984);
      for (i12 = 0; i12 != -9; i12 -= 3)
      {
        v144 = *(&v991 + i12 * 8);
        if (v144)
        {
          (&v992)[i12] = v144;
          operator delete(v144);
        }
      }

      v145 = *(*v2 + 152);
      v146 = *(v2[2] + 152);
      v147 = *(v2[4] + 152);
      v148 = *(v2[6] + 152);
      v149 = v983[0];
      v150 = v982 - v981;
      v151 = (v982 - v981) >> 2;
      if (v151 == 1)
      {
        v473 = *v981;
        if (*v981 >= 1)
        {
          v474 = 0;
          v475 = 2 * **v983[0];
          v476 = 2 * **(v983[0] + 3);
          v477 = 2 * **(v983[0] + 6);
          do
          {
            v478 = *v145 % *v146;
            *(v147 + v474) = *v145 / *v146;
            *(v148 + v474) = v478;
            v145 = (v145 + v475);
            v146 = (v146 + v476);
            v474 += v477;
            --v473;
          }

          while (v473);
        }

        goto LABEL_654;
      }

      v152 = v151 - 2;
      if (v151 == 2)
      {
        goto LABEL_654;
      }

      mlx::core::ContiguousIterator::ContiguousIterator(&v985, &v981, v983[0], v151 - 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v974, &v981, v149 + 3, v152);
      if (*(*v2 + 48))
      {
        v671 = 0;
        v672 = *(v149[6] + (((v150 << 30) - 0x300000000) >> 29));
        do
        {
          v673 = v987 - v986;
          v674 = (v987 - v986) >> 2;
          if (v674)
          {
            v675 = v992;
            v676 = ((v673 << 30) - 0x100000000) >> 32;
            v677 = &v992[4 * v676];
            v678 = *v677;
            v679 = v989;
            v680 = v985;
            if (v674 >= 2 && (v681 = &v986[4 * v676], v678 == *v681 - 1))
            {
              v682 = (v673 >> 2) & 0x7FFFFFFF;
              v683 = v682 - 1;
              v684 = 4 * v682;
              v685 = v986 - 8;
              do
              {
                v686 = v683;
                *v677 = 0;
                v680 = (v680 - v679[v676] * (*v681 - 1));
                v985 = v680;
                --v683;
                v677 = &v675[v684 - 8];
                v678 = *v677;
                v675 -= 4;
                if (v686 < 2)
                {
                  break;
                }

                v681 = &v685[v684];
                v687 = *&v685[4 * v682] - 1;
                v685 -= 4;
                v676 = v683;
              }

              while (v678 == v687);
              v677 = &v675[4 * v682 - 4];
            }

            else
            {
              v683 = ((v673 << 30) - 0x100000000) >> 32;
            }

            *v677 = v678 + 1;
            v985 = (v680 + v679[v683]);
          }

          v688 = v976 - v975;
          v689 = (v976 - v975) >> 2;
          if (v689)
          {
            v690 = __p;
            v691 = ((v688 << 30) - 0x100000000) >> 32;
            v692 = __p + 4 * v691;
            v693 = *v692;
            v694 = v977;
            v695 = v974;
            if (v689 >= 2 && (v696 = v975 + 4 * v691, v693 == *v696 - 1))
            {
              v697 = (v688 >> 2) & 0x7FFFFFFF;
              v698 = v697 - 1;
              v699 = 4 * v697;
              v700 = v975 - 8;
              do
              {
                v701 = v698;
                *v692 = 0;
                v695 -= v694[v691] * (*v696 - 1);
                v974 = v695;
                --v698;
                v692 = &v690[v699 - 8];
                v693 = *v692;
                v690 -= 4;
                if (v701 < 2)
                {
                  break;
                }

                v696 = &v700[v699];
                v702 = *&v700[4 * v697] - 1;
                v700 -= 4;
                v691 = v698;
              }

              while (v693 == v702);
              v692 = &v690[4 * v697 - 4];
            }

            else
            {
              v698 = ((v688 << 30) - 0x100000000) >> 32;
            }

            *v692 = v693 + 1;
            v974 = v694[v698] + v695;
          }

          v671 += v672;
        }

        while (v671 < *(*v2 + 48));
      }

      goto LABEL_642;
    case 7:
      v111 = *(a1 + 16);
      if (v111 != 4)
      {
        v247 = *a1;
        v248 = *(*a1 + 152);
        v249 = a1[2];
        v250 = *(v249 + 152);
        v242 = *(v1 + 152);
        v243 = *(a1[6] + 152);
        if (v111)
        {
          if (v111 == 1)
          {
            for (i13 = *(v249 + 160); i13; --i13)
            {
              v836 = *v250++;
              v837 = *v248 % v836;
              *v242++ = *v248 / v836;
              *v243++ = v837;
            }
          }

          else if (v111 == 2)
          {
            for (i14 = *(v247 + 160); i14; --i14)
            {
              v252 = *v248++;
              v253 = *v250;
              *v242++ = v252 / *v250;
              *v243++ = v252 % v253;
            }
          }

          else
          {
            for (i15 = *(v247 + 48); i15; --i15)
            {
              v852 = *v248++;
              v851 = v852;
              v853 = *v250++;
              *v242++ = v851 / v853;
              *v243++ = v851 % v853;
            }
          }
        }

        else
        {
          v843 = *v248;
          v844 = *v250;
          v845 = v843 / v844;
LABEL_542:
          *v242 = v845;
          *v243 = v843 - v845 * v844;
        }

        return;
      }

      v112 = *a1;
      v985 = 0;
      v986 = 0;
      v987 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v985, *(v112 + 24), *(v112 + 32), (*(v112 + 32) - *(v112 + 24)) >> 3);
      v113 = v2[2];
      v989 = 0;
      v990 = 0;
      v988 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v988, *(v113 + 24), *(v113 + 32), (*(v113 + 32) - *(v113 + 24)) >> 3);
      v114 = v2[4];
      v992 = 0;
      v993 = 0;
      v991 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v991, *(v114 + 24), *(v114 + 32), (*(v114 + 32) - *(v114 + 24)) >> 3);
      v974 = 0;
      v975 = 0;
      v976 = 0;
      std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v974, &v985, v994, 3uLL);
      mlx::core::collapse_contiguous_dims(v112, &v974, 0x7FFFFFFFuLL, &v981);
      v984 = &v974;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v984);
      for (i16 = 0; i16 != -9; i16 -= 3)
      {
        v116 = *(&v991 + i16 * 8);
        if (v116)
        {
          (&v992)[i16] = v116;
          operator delete(v116);
        }
      }

      v117 = *(*v2 + 152);
      v118 = *(v2[2] + 152);
      v119 = *(v2[4] + 152);
      v120 = *(v2[6] + 152);
      v121 = v983[0];
      v122 = v982 - v981;
      v123 = (v982 - v981) >> 2;
      if (v123 == 1)
      {
        v361 = *v981;
        if (*v981 >= 1)
        {
          v362 = 0;
          v363 = 4 * **v983[0];
          v364 = 4 * **(v983[0] + 3);
          v365 = 4 * **(v983[0] + 6);
          do
          {
            v366 = *v117 % *v118;
            *(v119 + v362) = *v117 / *v118;
            *(v120 + v362) = v366;
            v117 = (v117 + v363);
            v118 = (v118 + v364);
            v362 += v365;
            --v361;
          }

          while (v361);
        }

        goto LABEL_654;
      }

      v124 = v123 - 2;
      if (v123 == 2)
      {
        goto LABEL_654;
      }

      mlx::core::ContiguousIterator::ContiguousIterator(&v985, &v981, v983[0], v123 - 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v974, &v981, v121 + 3, v124);
      if (*(*v2 + 48))
      {
        v556 = 0;
        v557 = *(v121[6] + (((v122 << 30) - 0x300000000) >> 29));
        do
        {
          v558 = v987 - v986;
          v559 = (v987 - v986) >> 2;
          if (v559)
          {
            v560 = v992;
            v561 = ((v558 << 30) - 0x100000000) >> 32;
            v562 = &v992[4 * v561];
            v563 = *v562;
            v564 = v989;
            v565 = v985;
            if (v559 >= 2 && (v566 = &v986[4 * v561], v563 == *v566 - 1))
            {
              v567 = (v558 >> 2) & 0x7FFFFFFF;
              v568 = v567 - 1;
              v569 = 4 * v567;
              v570 = v986 - 8;
              do
              {
                v571 = v568;
                *v562 = 0;
                v565 = (v565 - v564[v561] * (*v566 - 1));
                v985 = v565;
                --v568;
                v562 = &v560[v569 - 8];
                v563 = *v562;
                v560 -= 4;
                if (v571 < 2)
                {
                  break;
                }

                v566 = &v570[v569];
                v572 = *&v570[4 * v567] - 1;
                v570 -= 4;
                v561 = v568;
              }

              while (v563 == v572);
              v562 = &v560[4 * v567 - 4];
            }

            else
            {
              v568 = ((v558 << 30) - 0x100000000) >> 32;
            }

            *v562 = v563 + 1;
            v985 = (v565 + v564[v568]);
          }

          v573 = v976 - v975;
          v574 = (v976 - v975) >> 2;
          if (v574)
          {
            v575 = __p;
            v576 = ((v573 << 30) - 0x100000000) >> 32;
            v577 = __p + 4 * v576;
            v578 = *v577;
            v579 = v977;
            v580 = v974;
            if (v574 >= 2 && (v581 = v975 + 4 * v576, v578 == *v581 - 1))
            {
              v582 = (v573 >> 2) & 0x7FFFFFFF;
              v583 = v582 - 1;
              v584 = 4 * v582;
              v585 = v975 - 8;
              do
              {
                v586 = v583;
                *v577 = 0;
                v580 -= v579[v576] * (*v581 - 1);
                v974 = v580;
                --v583;
                v577 = &v575[v584 - 8];
                v578 = *v577;
                v575 -= 4;
                if (v586 < 2)
                {
                  break;
                }

                v581 = &v585[v584];
                v587 = *&v585[4 * v582] - 1;
                v585 -= 4;
                v576 = v583;
              }

              while (v578 == v587);
              v577 = &v575[4 * v582 - 4];
            }

            else
            {
              v583 = ((v573 << 30) - 0x100000000) >> 32;
            }

            *v577 = v578 + 1;
            v974 = v579[v583] + v580;
          }

          v556 += v557;
        }

        while (v556 < *(*v2 + 48));
      }

      goto LABEL_642;
    case 8:
      v167 = *(a1 + 16);
      if (v167 != 4)
      {
        v286 = *a1;
        v287 = *(*a1 + 152);
        v288 = a1[2];
        v289 = *(v288 + 152);
        v195 = *(v1 + 152);
        v196 = *(a1[6] + 152);
        if (v167)
        {
          if (v167 == 1)
          {
            for (i17 = *(v288 + 160); i17; --i17)
            {
              v867 = *v289++;
              v868 = *v287 % v867;
              *v195++ = *v287 / v867;
              *v196++ = v868;
            }
          }

          else if (v167 == 2)
          {
            for (i18 = *(v286 + 160); i18; --i18)
            {
              v291 = *v287++;
              v292 = v291 % *v289;
              *v195++ = v291 / *v289;
              *v196++ = v292;
            }
          }

          else
          {
            for (i19 = *(v286 + 48); i19; --i19)
            {
              v888 = *v287++;
              v887 = v888;
              v889 = *v289++;
              *v195++ = v887 / v889;
              *v196++ = v887 % v889;
            }
          }
        }

        else
        {
          v795 = *v287;
          v796 = *v289;
          v797 = v795 / v796;
LABEL_575:
          *v195 = v797;
          *v196 = v795 - v797 * v796;
        }

        return;
      }

      v168 = *a1;
      v985 = 0;
      v986 = 0;
      v987 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v985, *(v168 + 24), *(v168 + 32), (*(v168 + 32) - *(v168 + 24)) >> 3);
      v169 = v2[2];
      v989 = 0;
      v990 = 0;
      v988 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v988, *(v169 + 24), *(v169 + 32), (*(v169 + 32) - *(v169 + 24)) >> 3);
      v170 = v2[4];
      v992 = 0;
      v993 = 0;
      v991 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v991, *(v170 + 24), *(v170 + 32), (*(v170 + 32) - *(v170 + 24)) >> 3);
      v974 = 0;
      v975 = 0;
      v976 = 0;
      std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v974, &v985, v994, 3uLL);
      mlx::core::collapse_contiguous_dims(v168, &v974, 0x7FFFFFFFuLL, &v981);
      v984 = &v974;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v984);
      for (i20 = 0; i20 != -9; i20 -= 3)
      {
        v172 = *(&v991 + i20 * 8);
        if (v172)
        {
          (&v992)[i20] = v172;
          operator delete(v172);
        }
      }

      v173 = *(*v2 + 152);
      v174 = *(v2[2] + 152);
      v175 = *(v2[4] + 152);
      v176 = *(v2[6] + 152);
      v177 = v983[0];
      v178 = v982 - v981;
      v179 = (v982 - v981) >> 2;
      if (v179 == 1)
      {
        v486 = *v981;
        if (*v981 >= 1)
        {
          v487 = 0;
          v488 = 8 * **v983[0];
          v489 = 8 * **(v983[0] + 3);
          v490 = 8 * **(v983[0] + 6);
          do
          {
            v491 = *v173 % *v174;
            *(v175 + v487) = *v173 / *v174;
            *(v176 + v487) = v491;
            v173 = (v173 + v488);
            v174 = (v174 + v489);
            v487 += v490;
            --v486;
          }

          while (v486);
        }

        goto LABEL_654;
      }

      v180 = v179 - 2;
      if (v179 == 2)
      {
        goto LABEL_654;
      }

      mlx::core::ContiguousIterator::ContiguousIterator(&v985, &v981, v983[0], v179 - 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v974, &v981, v177 + 3, v180);
      if (*(*v2 + 48))
      {
        v735 = 0;
        v736 = *(v177[6] + (((v178 << 30) - 0x300000000) >> 29));
        do
        {
          v737 = v987 - v986;
          v738 = (v987 - v986) >> 2;
          if (v738)
          {
            v739 = v992;
            v740 = ((v737 << 30) - 0x100000000) >> 32;
            v741 = &v992[4 * v740];
            v742 = *v741;
            v743 = v989;
            v744 = v985;
            if (v738 >= 2 && (v745 = &v986[4 * v740], v742 == *v745 - 1))
            {
              v746 = (v737 >> 2) & 0x7FFFFFFF;
              v747 = v746 - 1;
              v748 = 4 * v746;
              v749 = v986 - 8;
              do
              {
                v750 = v747;
                *v741 = 0;
                v744 = (v744 - v743[v740] * (*v745 - 1));
                v985 = v744;
                --v747;
                v741 = &v739[v748 - 8];
                v742 = *v741;
                v739 -= 4;
                if (v750 < 2)
                {
                  break;
                }

                v745 = &v749[v748];
                v751 = *&v749[4 * v746] - 1;
                v749 -= 4;
                v740 = v747;
              }

              while (v742 == v751);
              v741 = &v739[4 * v746 - 4];
            }

            else
            {
              v747 = ((v737 << 30) - 0x100000000) >> 32;
            }

            *v741 = v742 + 1;
            v985 = (v744 + v743[v747]);
          }

          v752 = v976 - v975;
          v753 = (v976 - v975) >> 2;
          if (v753)
          {
            v754 = __p;
            v755 = ((v752 << 30) - 0x100000000) >> 32;
            v756 = __p + 4 * v755;
            v757 = *v756;
            v758 = v977;
            v759 = v974;
            if (v753 >= 2 && (v760 = v975 + 4 * v755, v757 == *v760 - 1))
            {
              v761 = (v752 >> 2) & 0x7FFFFFFF;
              v762 = v761 - 1;
              v763 = 4 * v761;
              v764 = v975 - 8;
              do
              {
                v765 = v762;
                *v756 = 0;
                v759 -= v758[v755] * (*v760 - 1);
                v974 = v759;
                --v762;
                v756 = &v754[v763 - 8];
                v757 = *v756;
                v754 -= 4;
                if (v765 < 2)
                {
                  break;
                }

                v760 = &v764[v763];
                v766 = *&v764[4 * v761] - 1;
                v764 -= 4;
                v755 = v762;
              }

              while (v757 == v766);
              v756 = &v754[4 * v761 - 4];
            }

            else
            {
              v762 = ((v752 << 30) - 0x100000000) >> 32;
            }

            *v756 = v757 + 1;
            v974 = v758[v762] + v759;
          }

          v735 += v736;
        }

        while (v735 < *(*v2 + 48));
      }

      goto LABEL_642;
    case 9:
      v69 = *(a1 + 16);
      if (v69 != 4)
      {
        v211 = *a1;
        v212 = *(*a1 + 152);
        v213 = a1[2];
        v214 = *(v213 + 152);
        v215 = *(v1 + 152);
        v216 = *(a1[6] + 152);
        if (v69)
        {
          if (v69 == 1)
          {
            for (i21 = *(v213 + 160); i21; --i21)
            {
              _H0 = *v212;
              v789 = *v214++;
              _H1 = v789;
              __asm
              {
                FCVT            S0, H0; float
                FCVT            S1, H1; float
              }

              _S2 = truncf(_S0 / _S1);
              __asm { FCVT            H2, S2 }

              *v215++ = LOWORD(_S2);
              _S0 = fmodf(_S0, _S1);
              __asm { FCVT            H0, S0 }

              *v216++ = LOWORD(_S0);
            }
          }

          else if (v69 == 2)
          {
            for (i22 = *(v211 + 160); i22; --i22)
            {
              v218 = *v212++;
              _H0 = v218;
              _H1 = *v214;
              __asm
              {
                FCVT            S0, H0; float
                FCVT            S1, H1; float
              }

              _S2 = truncf(_S0 / _S1);
              __asm { FCVT            H2, S2 }

              *v215++ = LOWORD(_S2);
              _S0 = fmodf(_S0, _S1);
              __asm { FCVT            H0, S0 }

              *v216++ = LOWORD(_S0);
            }
          }

          else
          {
            for (i23 = *(v211 + 48); i23; --i23)
            {
              v821 = *v212++;
              _H0 = v821;
              v823 = *v214++;
              _H1 = v823;
              __asm
              {
                FCVT            S0, H0; float
                FCVT            S1, H1; float
              }

              _S2 = truncf(_S0 / _S1);
              __asm { FCVT            H2, S2 }

              *v215++ = LOWORD(_S2);
              _S0 = fmodf(_S0, _S1);
              __asm { FCVT            H0, S0 }

              *v216++ = LOWORD(_S0);
            }
          }
        }

        else
        {
          _H0 = *v212;
          _H1 = *v214;
          __asm
          {
            FCVT            S0, H0; float
            FCVT            S1, H1; float
          }

          _S2 = truncf(_S0 / _S1);
          __asm { FCVT            H2, S2 }

          *v215 = LOWORD(_S2);
          _S0 = fmodf(_S0, _S1);
          __asm { FCVT            H0, S0 }

          *v216 = LOWORD(_S0);
        }

        return;
      }

      v70 = *a1;
      v985 = 0;
      v986 = 0;
      v987 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v985, *(v70 + 24), *(v70 + 32), (*(v70 + 32) - *(v70 + 24)) >> 3);
      v71 = v2[2];
      v989 = 0;
      v990 = 0;
      v988 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v988, *(v71 + 24), *(v71 + 32), (*(v71 + 32) - *(v71 + 24)) >> 3);
      v72 = v2[4];
      v992 = 0;
      v993 = 0;
      v991 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v991, *(v72 + 24), *(v72 + 32), (*(v72 + 32) - *(v72 + 24)) >> 3);
      v974 = 0;
      v975 = 0;
      v976 = 0;
      std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v974, &v985, v994, 3uLL);
      mlx::core::collapse_contiguous_dims(v70, &v974, 0x7FFFFFFFuLL, &v981);
      v984 = &v974;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v984);
      for (i24 = 0; i24 != -9; i24 -= 3)
      {
        v74 = *(&v991 + i24 * 8);
        if (v74)
        {
          (&v992)[i24] = v74;
          operator delete(v74);
        }
      }

      v75 = *(*v2 + 152);
      v76 = *(v2[2] + 152);
      v77 = *(v2[4] + 152);
      v78 = *(v2[6] + 152);
      v79 = v983[0];
      v80 = v982 - v981;
      v81 = (v982 - v981) >> 2;
      if (v81 == 1)
      {
        v306 = *v981;
        if (*v981 >= 1)
        {
          v307 = 0;
          v308 = 2 * **v983[0];
          v309 = 2 * **(v983[0] + 3);
          v310 = 2 * **(v983[0] + 6);
          do
          {
            _H0 = *v75;
            _H1 = *v76;
            __asm
            {
              FCVT            S0, H0; float
              FCVT            S1, H1; float
            }

            _S2 = truncf(_S0 / _S1);
            __asm { FCVT            H2, S2 }

            *(v77 + v307) = LOWORD(_S2);
            _S0 = fmodf(_S0, _S1);
            __asm { FCVT            H0, S0 }

            *(v78 + v307) = LOWORD(_S0);
            v75 = (v75 + v308);
            v76 = (v76 + v309);
            v307 += v310;
            --v306;
          }

          while (v306);
        }

        goto LABEL_654;
      }

      v82 = v81 - 2;
      if (v81 == 2)
      {
        goto LABEL_654;
      }

      mlx::core::ContiguousIterator::ContiguousIterator(&v985, &v981, v983[0], v81 - 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v974, &v981, v79 + 3, v82);
      if (*(*v2 + 48))
      {
        v435 = 0;
        v436 = *(v79[6] + (((v80 << 30) - 0x300000000) >> 29));
        do
        {
          v437 = v987 - v986;
          v438 = (v987 - v986) >> 2;
          if (v438)
          {
            v439 = v992;
            v440 = ((v437 << 30) - 0x100000000) >> 32;
            v441 = &v992[4 * v440];
            v442 = *v441;
            v443 = v989;
            v444 = v985;
            if (v438 >= 2 && (v445 = &v986[4 * v440], v442 == *v445 - 1))
            {
              v446 = (v437 >> 2) & 0x7FFFFFFF;
              v447 = v446 - 1;
              v448 = 4 * v446;
              v449 = v986 - 8;
              do
              {
                v450 = v447;
                *v441 = 0;
                v444 = (v444 - v443[v440] * (*v445 - 1));
                v985 = v444;
                --v447;
                v441 = &v439[v448 - 8];
                v442 = *v441;
                v439 -= 4;
                if (v450 < 2)
                {
                  break;
                }

                v445 = &v449[v448];
                v451 = *&v449[4 * v446] - 1;
                v449 -= 4;
                v440 = v447;
              }

              while (v442 == v451);
              v441 = &v439[4 * v446 - 4];
            }

            else
            {
              v447 = ((v437 << 30) - 0x100000000) >> 32;
            }

            *v441 = v442 + 1;
            v985 = (v444 + v443[v447]);
          }

          v452 = v976 - v975;
          v453 = (v976 - v975) >> 2;
          if (v453)
          {
            v454 = __p;
            v455 = ((v452 << 30) - 0x100000000) >> 32;
            v456 = __p + 4 * v455;
            v457 = *v456;
            v458 = v977;
            v459 = v974;
            if (v453 >= 2 && (v460 = v975 + 4 * v455, v457 == *v460 - 1))
            {
              v461 = (v452 >> 2) & 0x7FFFFFFF;
              v462 = v461 - 1;
              v463 = 4 * v461;
              v464 = v975 - 8;
              do
              {
                v465 = v462;
                *v456 = 0;
                v459 -= v458[v455] * (*v460 - 1);
                v974 = v459;
                --v462;
                v456 = &v454[v463 - 8];
                v457 = *v456;
                v454 -= 4;
                if (v465 < 2)
                {
                  break;
                }

                v460 = &v464[v463];
                v466 = *&v464[4 * v461] - 1;
                v464 -= 4;
                v455 = v462;
              }

              while (v457 == v466);
              v456 = &v454[4 * v461 - 4];
            }

            else
            {
              v462 = ((v452 << 30) - 0x100000000) >> 32;
            }

            *v456 = v457 + 1;
            v974 = v458[v462] + v459;
          }

          v435 += v436;
        }

        while (v435 < *(*v2 + 48));
      }

      goto LABEL_642;
    case 0xA:
      v153 = *(a1 + 16);
      if (v153 != 4)
      {
        v276 = *a1;
        v277 = *(*a1 + 152);
        v278 = a1[2];
        v279 = *(v278 + 152);
        v280 = *(v1 + 152);
        v281 = *(a1[6] + 152);
        if (v153)
        {
          if (v153 == 1)
          {
            for (i25 = *(v278 + 160); i25; --i25)
            {
              v863 = *v279++;
              v864 = truncf(*v277 / v863);
              v865 = fmodf(*v277, v863);
              *v280++ = v864;
              *v281++ = v865;
            }
          }

          else if (v153 == 2)
          {
            for (i26 = *(v276 + 160); i26; --i26)
            {
              v283 = *v277++;
              v284 = truncf(v283 / *v279);
              v285 = fmodf(v283, *v279);
              *v280++ = v284;
              *v281++ = v285;
            }
          }

          else
          {
            for (i27 = *(v276 + 48); i27; --i27)
            {
              v881 = *v277++;
              v882 = v881;
              v883 = *v279++;
              v884 = truncf(v882 / v883);
              v885 = fmodf(v882, v883);
              *v280++ = v884;
              *v281++ = v885;
            }
          }
        }

        else
        {
          v874 = truncf(*v277 / *v279);
          v875 = fmodf(*v277, *v279);
          *v280 = v874;
          *v281 = v875;
        }

        return;
      }

      v154 = *a1;
      v985 = 0;
      v986 = 0;
      v987 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v985, *(v154 + 24), *(v154 + 32), (*(v154 + 32) - *(v154 + 24)) >> 3);
      v155 = v2[2];
      v989 = 0;
      v990 = 0;
      v988 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v988, *(v155 + 24), *(v155 + 32), (*(v155 + 32) - *(v155 + 24)) >> 3);
      v156 = v2[4];
      v992 = 0;
      v993 = 0;
      v991 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v991, *(v156 + 24), *(v156 + 32), (*(v156 + 32) - *(v156 + 24)) >> 3);
      v974 = 0;
      v975 = 0;
      v976 = 0;
      std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v974, &v985, v994, 3uLL);
      mlx::core::collapse_contiguous_dims(v154, &v974, 0x7FFFFFFFuLL, &v981);
      v984 = &v974;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v984);
      for (i28 = 0; i28 != -9; i28 -= 3)
      {
        v158 = *(&v991 + i28 * 8);
        if (v158)
        {
          (&v992)[i28] = v158;
          operator delete(v158);
        }
      }

      v159 = *(*v2 + 152);
      v160 = *(v2[2] + 152);
      v161 = *(v2[4] + 152);
      v162 = *(v2[6] + 152);
      v163 = v983[0];
      v164 = v982 - v981;
      v165 = (v982 - v981) >> 2;
      if (v165 == 1)
      {
        v479 = *v981;
        if (*v981 >= 1)
        {
          v480 = 0;
          v481 = 4 * **v983[0];
          v482 = 4 * **(v983[0] + 3);
          v483 = 4 * **(v983[0] + 6);
          do
          {
            v484 = truncf(*v159 / *v160);
            v485 = fmodf(*v159, *v160);
            *(v161 + v480) = v484;
            *(v162 + v480) = v485;
            v159 = (v159 + v481);
            v160 = (v160 + v482);
            v480 += v483;
            --v479;
          }

          while (v479);
        }

        goto LABEL_654;
      }

      v166 = v165 - 2;
      if (v165 == 2)
      {
        goto LABEL_654;
      }

      mlx::core::ContiguousIterator::ContiguousIterator(&v985, &v981, v983[0], v165 - 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v974, &v981, v163 + 3, v166);
      if (*(*v2 + 48))
      {
        v703 = 0;
        v704 = *(v163[6] + (((v164 << 30) - 0x300000000) >> 29));
        do
        {
          v705 = v987 - v986;
          v706 = (v987 - v986) >> 2;
          if (v706)
          {
            v707 = v992;
            v708 = ((v705 << 30) - 0x100000000) >> 32;
            v709 = &v992[4 * v708];
            v710 = *v709;
            v711 = v989;
            v712 = v985;
            if (v706 >= 2 && (v713 = &v986[4 * v708], v710 == *v713 - 1))
            {
              v714 = (v705 >> 2) & 0x7FFFFFFF;
              v715 = v714 - 1;
              v716 = 4 * v714;
              v717 = v986 - 8;
              do
              {
                v718 = v715;
                *v709 = 0;
                v712 = (v712 - v711[v708] * (*v713 - 1));
                v985 = v712;
                --v715;
                v709 = &v707[v716 - 8];
                v710 = *v709;
                v707 -= 4;
                if (v718 < 2)
                {
                  break;
                }

                v713 = &v717[v716];
                v719 = *&v717[4 * v714] - 1;
                v717 -= 4;
                v708 = v715;
              }

              while (v710 == v719);
              v709 = &v707[4 * v714 - 4];
            }

            else
            {
              v715 = ((v705 << 30) - 0x100000000) >> 32;
            }

            *v709 = v710 + 1;
            v985 = (v712 + v711[v715]);
          }

          v720 = v976 - v975;
          v721 = (v976 - v975) >> 2;
          if (v721)
          {
            v722 = __p;
            v723 = ((v720 << 30) - 0x100000000) >> 32;
            v724 = __p + 4 * v723;
            v725 = *v724;
            v726 = v977;
            v727 = v974;
            if (v721 >= 2 && (v728 = v975 + 4 * v723, v725 == *v728 - 1))
            {
              v729 = (v720 >> 2) & 0x7FFFFFFF;
              v730 = v729 - 1;
              v731 = 4 * v729;
              v732 = v975 - 8;
              do
              {
                v733 = v730;
                *v724 = 0;
                v727 -= v726[v723] * (*v728 - 1);
                v974 = v727;
                --v730;
                v724 = &v722[v731 - 8];
                v725 = *v724;
                v722 -= 4;
                if (v733 < 2)
                {
                  break;
                }

                v728 = &v732[v731];
                v734 = *&v732[4 * v729] - 1;
                v732 -= 4;
                v723 = v730;
              }

              while (v725 == v734);
              v724 = &v722[4 * v729 - 4];
            }

            else
            {
              v730 = ((v720 << 30) - 0x100000000) >> 32;
            }

            *v724 = v725 + 1;
            v974 = v726[v730] + v727;
          }

          v703 += v704;
        }

        while (v703 < *(*v2 + 48));
      }

      goto LABEL_642;
    case 0xB:
      v27 = *(a1 + 16);
      if (v27 != 4)
      {
        v181 = *a1;
        v182 = *(*a1 + 152);
        v183 = a1[2];
        v184 = *(v183 + 152);
        v185 = *(v1 + 152);
        v186 = *(a1[6] + 152);
        if (v27)
        {
          if (v27 == 1)
          {
            for (i29 = *(v183 + 160); i29; --i29)
            {
              v768 = *v184++;
              v769 = trunc(*v182 / v768);
              v770 = fmod(*v182, v768);
              *v185++ = v769;
              *v186++ = v770;
            }
          }

          else if (v27 == 2)
          {
            for (i30 = *(v181 + 160); i30; --i30)
            {
              v188 = *v182++;
              v189 = trunc(v188 / *v184);
              v190 = fmod(v188, *v184);
              *v185++ = v189;
              *v186++ = v190;
            }
          }

          else
          {
            for (i31 = *(v181 + 48); i31; --i31)
            {
              v777 = *v182++;
              v778 = v777;
              v779 = *v184++;
              v780 = trunc(v778 / v779);
              v781 = fmod(v778, v779);
              *v185++ = v780;
              *v186++ = v781;
            }
          }
        }

        else
        {
          v771 = trunc(*v182 / *v184);
          v772 = fmod(*v182, *v184);
          *v185 = v771;
          *v186 = v772;
        }

        return;
      }

      v28 = *a1;
      v985 = 0;
      v986 = 0;
      v987 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v985, *(v28 + 24), *(v28 + 32), (*(v28 + 32) - *(v28 + 24)) >> 3);
      v29 = v2[2];
      v989 = 0;
      v990 = 0;
      v988 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v988, *(v29 + 24), *(v29 + 32), (*(v29 + 32) - *(v29 + 24)) >> 3);
      v30 = v2[4];
      v992 = 0;
      v993 = 0;
      v991 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v991, *(v30 + 24), *(v30 + 32), (*(v30 + 32) - *(v30 + 24)) >> 3);
      v974 = 0;
      v975 = 0;
      v976 = 0;
      std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v974, &v985, v994, 3uLL);
      mlx::core::collapse_contiguous_dims(v28, &v974, 0x7FFFFFFFuLL, &v981);
      v984 = &v974;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v984);
      for (i32 = 0; i32 != -9; i32 -= 3)
      {
        v32 = *(&v991 + i32 * 8);
        if (v32)
        {
          (&v992)[i32] = v32;
          operator delete(v32);
        }
      }

      v33 = *(*v2 + 152);
      v34 = *(v2[2] + 152);
      v35 = *(v2[4] + 152);
      v36 = *(v2[6] + 152);
      v37 = v983[0];
      v38 = v982 - v981;
      v39 = (v982 - v981) >> 2;
      if (v39 == 1)
      {
        v293 = *v981;
        if (*v981 >= 1)
        {
          v294 = 0;
          v295 = 8 * **v983[0];
          v296 = 8 * **(v983[0] + 3);
          v297 = 8 * **(v983[0] + 6);
          do
          {
            v298 = trunc(*v33 / *v34);
            v299 = fmod(*v33, *v34);
            *(v35 + v294) = v298;
            *(v36 + v294) = v299;
            v33 = (v33 + v295);
            v34 = (v34 + v296);
            v294 += v297;
            --v293;
          }

          while (v293);
        }

        goto LABEL_654;
      }

      v40 = v39 - 2;
      if (v39 == 2)
      {
        goto LABEL_654;
      }

      mlx::core::ContiguousIterator::ContiguousIterator(&v985, &v981, v983[0], v39 - 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v974, &v981, v37 + 3, v40);
      if (*(*v2 + 48))
      {
        v323 = 0;
        v324 = *(v37[6] + (((v38 << 30) - 0x300000000) >> 29));
        do
        {
          v325 = v987 - v986;
          v326 = (v987 - v986) >> 2;
          if (v326)
          {
            v327 = v992;
            v328 = ((v325 << 30) - 0x100000000) >> 32;
            v329 = &v992[4 * v328];
            v330 = *v329;
            v331 = v989;
            v332 = v985;
            if (v326 >= 2 && (v333 = &v986[4 * v328], v330 == *v333 - 1))
            {
              v334 = (v325 >> 2) & 0x7FFFFFFF;
              v335 = v334 - 1;
              v336 = 4 * v334;
              v337 = v986 - 8;
              do
              {
                v338 = v335;
                *v329 = 0;
                v332 = (v332 - v331[v328] * (*v333 - 1));
                v985 = v332;
                --v335;
                v329 = &v327[v336 - 8];
                v330 = *v329;
                v327 -= 4;
                if (v338 < 2)
                {
                  break;
                }

                v333 = &v337[v336];
                v339 = *&v337[4 * v334] - 1;
                v337 -= 4;
                v328 = v335;
              }

              while (v330 == v339);
              v329 = &v327[4 * v334 - 4];
            }

            else
            {
              v335 = ((v325 << 30) - 0x100000000) >> 32;
            }

            *v329 = v330 + 1;
            v985 = (v332 + v331[v335]);
          }

          v340 = v976 - v975;
          v341 = (v976 - v975) >> 2;
          if (v341)
          {
            v342 = __p;
            v343 = ((v340 << 30) - 0x100000000) >> 32;
            v344 = __p + 4 * v343;
            v345 = *v344;
            v346 = v977;
            v347 = v974;
            if (v341 >= 2 && (v348 = v975 + 4 * v343, v345 == *v348 - 1))
            {
              v349 = (v340 >> 2) & 0x7FFFFFFF;
              v350 = v349 - 1;
              v351 = 4 * v349;
              v352 = v975 - 8;
              do
              {
                v353 = v350;
                *v344 = 0;
                v347 -= v346[v343] * (*v348 - 1);
                v974 = v347;
                --v350;
                v344 = &v342[v351 - 8];
                v345 = *v344;
                v342 -= 4;
                if (v353 < 2)
                {
                  break;
                }

                v348 = &v352[v351];
                v354 = *&v352[4 * v349] - 1;
                v352 -= 4;
                v343 = v350;
              }

              while (v345 == v354);
              v344 = &v342[4 * v349 - 4];
            }

            else
            {
              v350 = ((v340 << 30) - 0x100000000) >> 32;
            }

            *v344 = v345 + 1;
            v974 = v346[v350] + v347;
          }

          v323 += v324;
        }

        while (v323 < *(*v2 + 48));
      }

      goto LABEL_642;
    case 0xC:
      v55 = *(a1 + 16);
      if (v55 != 4)
      {
        v200 = *a1;
        v201 = *(*a1 + 152);
        v202 = a1[2];
        v203 = *(v202 + 152);
        v204 = *(v1 + 152);
        v205 = *(a1[6] + 152);
        if (v55)
        {
          if (v55 == 1)
          {
            for (i33 = *(v202 + 160); i33; --i33)
            {
              LODWORD(v783) = *v201 << 16;
              LODWORD(v784) = *v203 << 16;
              v785 = truncf(COERCE_FLOAT((COERCE_INT(v783 / v784) + (HIWORD(COERCE_UNSIGNED_INT(v783 / v784)) & 1) + 0x7FFF) & 0xFFFF0000));
              v786 = fmodf(v783, v784);
              *v204 = (LODWORD(v785) + (HIWORD(LODWORD(v785)) & 1u) + 0x7FFF) >> 16;
              *v205++ = (LODWORD(v786) + (HIWORD(LODWORD(v786)) & 1u) + 0x7FFF) >> 16;
              ++v204;
              ++v203;
            }
          }

          else if (v55 == 2)
          {
            for (i34 = *(v200 + 160); i34; --i34)
            {
              LODWORD(v207) = *v201 << 16;
              LODWORD(v208) = *v203 << 16;
              v209 = truncf(COERCE_FLOAT((COERCE_INT(v207 / v208) + (HIWORD(COERCE_UNSIGNED_INT(v207 / v208)) & 1) + 0x7FFF) & 0xFFFF0000));
              v210 = fmodf(v207, v208);
              *v204 = (LODWORD(v209) + (HIWORD(LODWORD(v209)) & 1u) + 0x7FFF) >> 16;
              *v205++ = (LODWORD(v210) + (HIWORD(LODWORD(v210)) & 1u) + 0x7FFF) >> 16;
              ++v204;
              ++v201;
            }
          }

          else
          {
            for (i35 = *(v200 + 48); i35; --i35)
            {
              LODWORD(v816) = *v201 << 16;
              LODWORD(v817) = *v203 << 16;
              v818 = truncf(COERCE_FLOAT((COERCE_INT(v816 / v817) + (HIWORD(COERCE_UNSIGNED_INT(v816 / v817)) & 1) + 0x7FFF) & 0xFFFF0000));
              v819 = fmodf(v816, v817);
              *v204 = (LODWORD(v818) + (HIWORD(LODWORD(v818)) & 1u) + 0x7FFF) >> 16;
              *v205++ = (LODWORD(v819) + (HIWORD(LODWORD(v819)) & 1u) + 0x7FFF) >> 16;
              ++v204;
              ++v201;
              ++v203;
            }
          }
        }

        else
        {
          LODWORD(v798) = *v201 << 16;
          LODWORD(v799) = *v203 << 16;
          v800 = truncf(COERCE_FLOAT((COERCE_INT(v798 / v799) + (HIWORD(COERCE_UNSIGNED_INT(v798 / v799)) & 1) + 0x7FFF) & 0xFFFF0000));
          v801 = fmodf(v798, v799);
          *v204 = (LODWORD(v800) + (HIWORD(LODWORD(v800)) & 1u) + 0x7FFF) >> 16;
          *v205 = (LODWORD(v801) + (HIWORD(LODWORD(v801)) & 1u) + 0x7FFF) >> 16;
        }

        return;
      }

      v56 = *a1;
      v985 = 0;
      v986 = 0;
      v987 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v985, *(v56 + 24), *(v56 + 32), (*(v56 + 32) - *(v56 + 24)) >> 3);
      v57 = v2[2];
      v989 = 0;
      v990 = 0;
      v988 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v988, *(v57 + 24), *(v57 + 32), (*(v57 + 32) - *(v57 + 24)) >> 3);
      v58 = v2[4];
      v992 = 0;
      v993 = 0;
      v991 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v991, *(v58 + 24), *(v58 + 32), (*(v58 + 32) - *(v58 + 24)) >> 3);
      v974 = 0;
      v975 = 0;
      v976 = 0;
      std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v974, &v985, v994, 3uLL);
      mlx::core::collapse_contiguous_dims(v56, &v974, 0x7FFFFFFFuLL, &v981);
      v984 = &v974;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v984);
      for (i36 = 0; i36 != -9; i36 -= 3)
      {
        v60 = *(&v991 + i36 * 8);
        if (v60)
        {
          (&v992)[i36] = v60;
          operator delete(v60);
        }
      }

      v61 = *(*v2 + 152);
      v62 = *(v2[2] + 152);
      v63 = *(v2[4] + 152);
      v64 = *(v2[6] + 152);
      v65 = v983[0];
      v66 = v982 - v981;
      v67 = (v982 - v981) >> 2;
      if (v67 == 1)
      {
        goto LABEL_654;
      }

      v68 = v67 - 2;
      if (v67 == 2)
      {
        goto LABEL_654;
      }

      mlx::core::ContiguousIterator::ContiguousIterator(&v985, &v981, v983[0], v67 - 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v974, &v981, v65 + 3, v68);
      if (*(*v2 + 48))
      {
        v403 = 0;
        v404 = *(v65[6] + (((v66 << 30) - 0x300000000) >> 29));
        do
        {
          v405 = v987 - v986;
          v406 = (v987 - v986) >> 2;
          if (v406)
          {
            v407 = v992;
            v408 = ((v405 << 30) - 0x100000000) >> 32;
            v409 = &v992[4 * v408];
            v410 = *v409;
            v411 = v989;
            v412 = v985;
            if (v406 >= 2 && (v413 = &v986[4 * v408], v410 == *v413 - 1))
            {
              v414 = (v405 >> 2) & 0x7FFFFFFF;
              v415 = v414 - 1;
              v416 = 4 * v414;
              v417 = v986 - 8;
              do
              {
                v418 = v415;
                *v409 = 0;
                v412 = (v412 - v411[v408] * (*v413 - 1));
                v985 = v412;
                --v415;
                v409 = &v407[v416 - 8];
                v410 = *v409;
                v407 -= 4;
                if (v418 < 2)
                {
                  break;
                }

                v413 = &v417[v416];
                v419 = *&v417[4 * v414] - 1;
                v417 -= 4;
                v408 = v415;
              }

              while (v410 == v419);
              v409 = &v407[4 * v414 - 4];
            }

            else
            {
              v415 = ((v405 << 30) - 0x100000000) >> 32;
            }

            *v409 = v410 + 1;
            v985 = (v412 + v411[v415]);
          }

          v420 = v976 - v975;
          v421 = (v976 - v975) >> 2;
          if (v421)
          {
            v422 = __p;
            v423 = ((v420 << 30) - 0x100000000) >> 32;
            v424 = __p + 4 * v423;
            v425 = *v424;
            v426 = v977;
            v427 = v974;
            if (v421 >= 2 && (v428 = v975 + 4 * v423, v425 == *v428 - 1))
            {
              v429 = (v420 >> 2) & 0x7FFFFFFF;
              v430 = v429 - 1;
              v431 = 4 * v429;
              v432 = v975 - 8;
              do
              {
                v433 = v430;
                *v424 = 0;
                v427 -= v426[v423] * (*v428 - 1);
                v974 = v427;
                --v430;
                v424 = &v422[v431 - 8];
                v425 = *v424;
                v422 -= 4;
                if (v433 < 2)
                {
                  break;
                }

                v428 = &v432[v431];
                v434 = *&v432[4 * v429] - 1;
                v432 -= 4;
                v423 = v430;
              }

              while (v425 == v434);
              v424 = &v422[4 * v429 - 4];
            }

            else
            {
              v430 = ((v420 << 30) - 0x100000000) >> 32;
            }

            *v424 = v425 + 1;
            v974 = v426[v430] + v427;
          }

          v403 += v404;
        }

        while (v403 < *(*v2 + 48));
      }

      goto LABEL_642;
    case 0xD:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "[DivMod] Complex type not supported");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    default:
      return;
  }
}

void sub_25A6368A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  mlx::core::ContiguousIterator::~ContiguousIterator((v37 - 192));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

_BYTE *mlx::core::anonymous namespace::binary_op_dims<unsigned char,unsigned char,mlx::core::DivMod::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_0::operator()(void)::{lambda(unsigned char,unsigned char)#1},2>(_BYTE *result, _BYTE *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, int a9)
{
  v9 = *(*a5 + 4 * a9);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(*a6 + 8 * a9);
    v12 = *(*a7 + 8 * a9);
    v13 = *(*a8 + 8 * a9);
    v14 = a9 + 1;
    do
    {
      v15 = *(*a5 + 4 * v14);
      if (v15 >= 1)
      {
        v16 = 0;
        v17 = *(*a6 + 8 * v14);
        v18 = *(*a7 + 8 * v14);
        v19 = *(*a8 + 8 * v14);
        v20 = result;
        v21 = a2;
        do
        {
          v22 = *v20 % *v21;
          *(a3 + v16) = *v20 / *v21;
          *(a4 + v16) = v22;
          v20 += v17;
          v21 += v18;
          v16 += v19;
          --v15;
        }

        while (v15);
      }

      result += v11;
      a2 += v12;
      a3 += v13;
      a4 += v13;
      ++v10;
    }

    while (v10 != v9);
  }

  return result;
}

_WORD *mlx::core::anonymous namespace::binary_op_dims<unsigned short,unsigned short,mlx::core::DivMod::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_0::operator()(void)::{lambda(unsigned short,unsigned short)#1},2>(_WORD *result, _WORD *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, int a9)
{
  v9 = *(*a5 + 4 * a9);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = a9 + 1;
    v12 = *(*a6 + 8 * v11);
    v13 = *(*a7 + 8 * v11);
    v14 = *(*a8 + 8 * v11);
    v15 = *(*a5 + 4 * v11);
    v16 = 2 * *(*a6 + 8 * a9);
    v17 = 2 * v12;
    v18 = 2 * *(*a7 + 8 * a9);
    v19 = 2 * v13;
    v20 = 2 * *(*a8 + 8 * a9);
    v21 = 2 * v14;
    do
    {
      if (v15 >= 1)
      {
        v22 = 0;
        v23 = a2;
        v24 = result;
        v25 = v15;
        do
        {
          v26 = *v24 % *v23;
          *(a3 + v22) = *v24 / *v23;
          *(a4 + v22) = v26;
          v24 = (v24 + v17);
          v23 = (v23 + v19);
          v22 += v21;
          --v25;
        }

        while (v25);
      }

      ++v10;
      result = (result + v16);
      a2 = (a2 + v18);
      a3 += v20;
      a4 += v20;
    }

    while (v10 != v9);
  }

  return result;
}

_DWORD *mlx::core::anonymous namespace::binary_op_dims<unsigned int,unsigned int,mlx::core::DivMod::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_0::operator()(void)::{lambda(unsigned int,unsigned int)#1},2>(_DWORD *result, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6, void *a7, void *a8, int a9)
{
  v9 = *a5;
  v10 = *(*a5 + 4 * a9);
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = a9 + 1;
    v13 = 4 * *(*a6 + 8 * a9);
    v14 = 4 * *(*a6 + 8 * v12);
    v15 = 4 * *(*a7 + 8 * a9);
    v16 = 4 * *(*a7 + 8 * v12);
    v17 = 4 * *(*a8 + 8 * a9);
    v18 = 4 * *(*a8 + 8 * v12);
    do
    {
      v19 = *(v9 + 4 * v12);
      if (v19 >= 1)
      {
        v20 = 0;
        v21 = a2;
        v22 = result;
        do
        {
          v23 = *v22 % *v21;
          *(a3 + v20) = *v22 / *v21;
          *(a4 + v20) = v23;
          v22 = (v22 + v14);
          v21 = (v21 + v16);
          v20 += v18;
          --v19;
        }

        while (v19);
      }

      ++v11;
      result = (result + v13);
      a2 = (a2 + v15);
      a3 += v17;
      a4 += v17;
    }

    while (v11 != v10);
  }

  return result;
}

void *mlx::core::anonymous namespace::binary_op_dims<unsigned long long,unsigned long long,mlx::core::DivMod::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_0::operator()(void)::{lambda(unsigned long long,unsigned long long)#1},2>(void *result, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, int a9)
{
  v9 = *(*a5 + 4 * a9);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *a6;
    v12 = *a7;
    v13 = *a8;
    v14 = a9 + 1;
    v15 = *(*a5 + 4 * v14);
    v16 = 8 * *(*a6 + 8 * a9);
    v17 = 8 * *(*a7 + 8 * a9);
    v18 = 8 * *(*a8 + 8 * a9);
    do
    {
      if (v15 >= 1)
      {
        v19 = 0;
        v20 = 8 * *(v11 + 8 * v14);
        v21 = 8 * *(v12 + 8 * v14);
        v22 = 8 * *(v13 + 8 * v14);
        v23 = a2;
        v24 = result;
        v25 = v15;
        do
        {
          v26 = *v24 % *v23;
          *(a3 + v19) = *v24 / *v23;
          *(a4 + v19) = v26;
          v24 = (v24 + v20);
          v23 = (v23 + v21);
          v19 += v22;
          --v25;
        }

        while (v25);
      }

      ++v10;
      result = (result + v16);
      a2 = (a2 + v17);
      a3 += v18;
      a4 += v18;
    }

    while (v10 != v9);
  }

  return result;
}

char *mlx::core::anonymous namespace::binary_op_dims<signed char,signed char,mlx::core::DivMod::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_0::operator()(void)::{lambda(signed char,signed char)#1},2>(char *result, char *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, int a9)
{
  v9 = *(*a5 + 4 * a9);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(*a6 + 8 * a9);
    v12 = *(*a7 + 8 * a9);
    v13 = *(*a8 + 8 * a9);
    v14 = a9 + 1;
    do
    {
      v15 = *(*a5 + 4 * v14);
      if (v15 >= 1)
      {
        v16 = 0;
        v17 = *(*a6 + 8 * v14);
        v18 = *(*a7 + 8 * v14);
        v19 = *(*a8 + 8 * v14);
        v20 = result;
        v21 = a2;
        do
        {
          v22 = *v20 % *v21;
          *(a3 + v16) = *v20 / *v21;
          *(a4 + v16) = v22;
          v20 += v17;
          v21 += v18;
          v16 += v19;
          --v15;
        }

        while (v15);
      }

      result += v11;
      a2 += v12;
      a3 += v13;
      a4 += v13;
      ++v10;
    }

    while (v10 != v9);
  }

  return result;
}

__int16 *mlx::core::anonymous namespace::binary_op_dims<short,short,mlx::core::DivMod::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_0::operator()(void)::{lambda(short,short)#1},2>(__int16 *result, __int16 *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, int a9)
{
  v9 = *(*a5 + 4 * a9);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = a9 + 1;
    v12 = *(*a6 + 8 * v11);
    v13 = *(*a7 + 8 * v11);
    v14 = *(*a8 + 8 * v11);
    v15 = *(*a5 + 4 * v11);
    v16 = 2 * *(*a6 + 8 * a9);
    v17 = 2 * v12;
    v18 = 2 * *(*a7 + 8 * a9);
    v19 = 2 * v13;
    v20 = 2 * *(*a8 + 8 * a9);
    v21 = 2 * v14;
    do
    {
      if (v15 >= 1)
      {
        v22 = 0;
        v23 = a2;
        v24 = result;
        v25 = v15;
        do
        {
          v26 = *v24 % *v23;
          *(a3 + v22) = *v24 / *v23;
          *(a4 + v22) = v26;
          v24 = (v24 + v17);
          v23 = (v23 + v19);
          v22 += v21;
          --v25;
        }

        while (v25);
      }

      ++v10;
      result = (result + v16);
      a2 = (a2 + v18);
      a3 += v20;
      a4 += v20;
    }

    while (v10 != v9);
  }

  return result;
}

_DWORD *mlx::core::anonymous namespace::binary_op_dims<int,int,mlx::core::DivMod::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_0::operator()(void)::{lambda(int,int)#1},2>(_DWORD *result, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6, void *a7, void *a8, int a9)
{
  v9 = *a5;
  v10 = *(*a5 + 4 * a9);
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = a9 + 1;
    v13 = 4 * *(*a6 + 8 * a9);
    v14 = 4 * *(*a6 + 8 * v12);
    v15 = 4 * *(*a7 + 8 * a9);
    v16 = 4 * *(*a7 + 8 * v12);
    v17 = 4 * *(*a8 + 8 * a9);
    v18 = 4 * *(*a8 + 8 * v12);
    do
    {
      v19 = *(v9 + 4 * v12);
      if (v19 >= 1)
      {
        v20 = 0;
        v21 = a2;
        v22 = result;
        do
        {
          v23 = *v22 % *v21;
          *(a3 + v20) = *v22 / *v21;
          *(a4 + v20) = v23;
          v22 = (v22 + v14);
          v21 = (v21 + v16);
          v20 += v18;
          --v19;
        }

        while (v19);
      }

      ++v11;
      result = (result + v13);
      a2 = (a2 + v15);
      a3 += v17;
      a4 += v17;
    }

    while (v11 != v10);
  }

  return result;
}

uint64_t *mlx::core::anonymous namespace::binary_op_dims<long long,long long,mlx::core::DivMod::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_0::operator()(void)::{lambda(long long,long long)#1},2>(uint64_t *result, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, int a9)
{
  v9 = *(*a5 + 4 * a9);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *a6;
    v12 = *a7;
    v13 = *a8;
    v14 = a9 + 1;
    v15 = *(*a5 + 4 * v14);
    v16 = 8 * *(*a6 + 8 * a9);
    v17 = 8 * *(*a7 + 8 * a9);
    v18 = 8 * *(*a8 + 8 * a9);
    do
    {
      if (v15 >= 1)
      {
        v19 = 0;
        v20 = 8 * *(v11 + 8 * v14);
        v21 = 8 * *(v12 + 8 * v14);
        v22 = 8 * *(v13 + 8 * v14);
        v23 = a2;
        v24 = result;
        v25 = v15;
        do
        {
          v26 = *v24 % *v23;
          *(a3 + v19) = *v24 / *v23;
          *(a4 + v19) = v26;
          v24 = (v24 + v20);
          v23 = (v23 + v21);
          v19 += v22;
          --v25;
        }

        while (v25);
      }

      ++v10;
      result = (result + v16);
      a2 = (a2 + v17);
      a3 += v18;
      a4 += v18;
    }

    while (v10 != v9);
  }

  return result;
}

void mlx::core::anonymous namespace::binary_op_dims<half,half,mlx::core::DivMod::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_0::operator()(void)::{lambda(half,half)#2},2>(__int16 *a1, __int16 *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, int a9)
{
  v33 = *(*a5 + 4 * a9);
  if (v33 >= 1)
  {
    v11 = 0;
    v12 = a9 + 1;
    v34 = *(*a5 + 4 * v12);
    v13 = 2 * *(*a6 + 8 * v12);
    v31 = 2 * *(*a7 + 8 * a9);
    v32 = 2 * *(*a6 + 8 * a9);
    v14 = 2 * *(*a7 + 8 * v12);
    v30 = 2 * *(*a8 + 8 * a9);
    v15 = 2 * *(*a8 + 8 * v12);
    do
    {
      if (v34 >= 1)
      {
        v16 = 0;
        v18 = a1;
        v17 = a2;
        v19 = v34;
        do
        {
          _H0 = *v18;
          _H1 = *v17;
          __asm
          {
            FCVT            S0, H0; float
            FCVT            S1, H1; float
          }

          _S2 = truncf(_S0 / _S1);
          __asm { FCVT            H2, S2 }

          *(a3 + v16) = LOWORD(_S2);
          _S0 = fmodf(_S0, _S1);
          __asm { FCVT            H0, S0 }

          *(a4 + v16) = LOWORD(_S0);
          v18 = (v18 + v13);
          v17 = (v17 + v14);
          v16 += v15;
          --v19;
        }

        while (v19);
      }

      ++v11;
      a1 = (a1 + v32);
      a2 = (a2 + v31);
      a3 += v30;
      a4 += v30;
    }

    while (v11 != v33);
  }
}

void mlx::core::anonymous namespace::binary_op_dims<float,float,mlx::core::DivMod::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_0::operator()(void)::{lambda(float,float)#2},2>(float *a1, float *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, int a9)
{
  v25 = *(*a5 + 4 * a9);
  if (v25 >= 1)
  {
    v11 = 0;
    v12 = a9 + 1;
    v26 = *(*a5 + 4 * v12);
    v13 = 4 * *(*a6 + 8 * v12);
    v23 = 4 * *(*a7 + 8 * a9);
    v24 = 4 * *(*a6 + 8 * a9);
    v14 = 4 * *(*a7 + 8 * v12);
    v22 = 4 * *(*a8 + 8 * a9);
    v15 = 4 * *(*a8 + 8 * v12);
    do
    {
      if (v26 >= 1)
      {
        v16 = 0;
        v18 = a1;
        v17 = a2;
        v19 = v26;
        do
        {
          v20 = truncf(*v18 / *v17);
          v21 = fmodf(*v18, *v17);
          *(a3 + v16) = v20;
          *(a4 + v16) = v21;
          v18 = (v18 + v13);
          v17 = (v17 + v14);
          v16 += v15;
          --v19;
        }

        while (v19);
      }

      ++v11;
      a1 = (a1 + v24);
      a2 = (a2 + v23);
      a3 += v22;
      a4 += v22;
    }

    while (v11 != v25);
  }
}

void mlx::core::anonymous namespace::binary_op_dims<double,double,mlx::core::DivMod::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_0::operator()(void)::{lambda(double,double)#2},2>(long double *a1, long double *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, int a9)
{
  v25 = *(*a5 + 4 * a9);
  if (v25 >= 1)
  {
    v11 = 0;
    v12 = a9 + 1;
    v26 = *(*a5 + 4 * v12);
    v13 = 8 * *(*a6 + 8 * v12);
    v23 = 8 * *(*a7 + 8 * a9);
    v24 = 8 * *(*a6 + 8 * a9);
    v14 = 8 * *(*a7 + 8 * v12);
    v22 = 8 * *(*a8 + 8 * a9);
    v15 = 8 * *(*a8 + 8 * v12);
    do
    {
      if (v26 >= 1)
      {
        v16 = 0;
        v18 = a1;
        v17 = a2;
        v19 = v26;
        do
        {
          v20 = trunc(*v18 / *v17);
          v21 = fmod(*v18, *v17);
          *(a3 + v16) = v20;
          *(a4 + v16) = v21;
          v18 = (v18 + v13);
          v17 = (v17 + v14);
          v16 += v15;
          --v19;
        }

        while (v19);
      }

      ++v11;
      a1 = (a1 + v24);
      a2 = (a2 + v23);
      a3 += v22;
      a4 += v22;
    }

    while (v11 != v25);
  }
}

void mlx::core::anonymous namespace::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::DivMod::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_0::operator()(void)::{lambda(mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16)#2},1>(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, int a9)
{
  v9 = *(*a5 + 4 * a9);
  if (v9 >= 1)
  {
    v14 = 0;
    v15 = 2 * *(*a6 + 8 * a9);
    v16 = 2 * *(*a7 + 8 * a9);
    v17 = 2 * *(*a8 + 8 * a9);
    do
    {
      LODWORD(v18) = *a1 << 16;
      LODWORD(v19) = *a2 << 16;
      v20 = truncf(COERCE_FLOAT((COERCE_INT(v18 / v19) + (HIWORD(COERCE_UNSIGNED_INT(v18 / v19)) & 1) + 0x7FFF) & 0xFFFF0000));
      v21 = fmodf(v18, v19);
      *(a3 + v14) = (LODWORD(v20) + (HIWORD(LODWORD(v20)) & 1u) + 0x7FFF) >> 16;
      *(a4 + v14) = (LODWORD(v21) + (HIWORD(LODWORD(v21)) & 1u) + 0x7FFF) >> 16;
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      v14 += v17;
      --v9;
    }

    while (v9);
  }
}

void mlx::core::anonymous namespace::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::DivMod::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_0::operator()(void)::{lambda(mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16)#2},2>(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, int a9)
{
  v9 = *(*a5 + 4 * a9);
  if (v9 >= 1)
  {
    v15 = 2 * *(*a6 + 8 * a9);
    v16 = 2 * *(*a7 + 8 * a9);
    v17 = 2 * *(*a8 + 8 * a9);
    do
    {
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 += v17;
      a4 += v17;
      --v9;
    }

    while (v9);
  }
}

void *std::__function::__func<std::__bind<mlx::core::DivMod::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_0>,std::allocator<std::__bind<mlx::core::DivMod::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_0>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C014D8;
  v2 = (a1 + 3);
  mlx::core::array::~array((a1 + 7));
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<mlx::core::DivMod::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_0>,std::allocator<std::__bind<mlx::core::DivMod::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_0>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C014D8;
  v2 = (a1 + 3);
  mlx::core::array::~array((a1 + 7));
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<mlx::core::DivMod::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_0>,std::allocator<std::__bind<mlx::core::DivMod::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_0>>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286C014D8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(result + 48);
  *(a2 + 40) = *(result + 40);
  *(a2 + 48) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(result + 64);
  *(a2 + 56) = *(result + 56);
  *(a2 + 64) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 72) = *(result + 72);
  *(a2 + 81) = 0;
  *(a2 + 84) = 0;
  return result;
}

void std::__function::__func<std::__bind<mlx::core::DivMod::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_0>,std::allocator<std::__bind<mlx::core::DivMod::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_0>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 56));
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<mlx::core::DivMod::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_0>,std::allocator<std::__bind<mlx::core::DivMod::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_0>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 56));
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::DivMod::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_0>,std::allocator<std::__bind<mlx::core::DivMod::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_0>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16binaryINS3_6detail6DivideEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286C015D0;
  v2 = (a1 + 5);
  mlx::core::array::~array((a1 + 7));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16binaryINS3_6detail6DivideEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286C015D0;
  v2 = (a1 + 5);
  mlx::core::array::~array((a1 + 7));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16binaryINS3_6detail6DivideEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEE7__cloneEPNS0_6__baseISP_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286C015D0;
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

  v5 = *(result + 64);
  *(a2 + 56) = *(result + 56);
  *(a2 + 64) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 72) = *(result + 72);
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16binaryINS3_6detail6DivideEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 56));
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16binaryINS3_6detail6DivideEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 56));
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16binaryINS3_6detail6DivideEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEEclEv(uint64_t a1, double a2, __n128 a3)
{
  v4 = mlx::core::scheduler::scheduler(v3);

  mlx::core::scheduler::Scheduler::notify_task_completion(v4);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16binaryINS3_6detail6DivideEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Divide>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Divide,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t result, double a2, __n128 a3)
{
  v3 = (result + 32);
  switch(*(*(result + 32) + 56))
  {
    case 0:
      mlx::core::binary_op<BOOL,BOOL,mlx::core::detail::Divide>(result, (result + 16), v3, *(result + 48));
      break;
    case 1:
      mlx::core::binary_op<unsigned char,unsigned char,mlx::core::detail::Divide>(result, (result + 16), v3, *(result + 48));
      break;
    case 2:
      mlx::core::binary_op<unsigned short,unsigned short,mlx::core::detail::Divide>(result, (result + 16), v3, *(result + 48));
      break;
    case 3:
      mlx::core::binary_op<unsigned int,unsigned int,mlx::core::detail::Divide>(result, (result + 16), v3, *(result + 48));
      break;
    case 4:
      mlx::core::binary_op<unsigned long long,unsigned long long,mlx::core::detail::Divide>(result, (result + 16), v3, *(result + 48));
      break;
    case 5:
      mlx::core::binary_op<signed char,signed char,mlx::core::detail::Divide>(result, (result + 16), v3, *(result + 48));
      break;
    case 6:
      mlx::core::binary_op<short,short,mlx::core::detail::Divide>(result, (result + 16), v3, *(result + 48));
      break;
    case 7:
      mlx::core::binary_op<int,int,mlx::core::detail::Divide>(result, (result + 16), v3, *(result + 48));
      break;
    case 8:
      mlx::core::binary_op<long long,long long,mlx::core::detail::Divide>(result, (result + 16), v3, *(result + 48));
      break;
    case 9:
      mlx::core::binary_op<half,half,mlx::core::detail::Divide>(result, (result + 16), v3, *(result + 48), *&a2);
      break;
    case 0xA:
      mlx::core::binary_op<float,float,mlx::core::detail::Divide>(result, (result + 16), v3, *(result + 48), a2);
      break;
    case 0xB:
      mlx::core::binary_op<double,double,mlx::core::detail::Divide>(result, (result + 16), v3, *(result + 48));
      break;
    case 0xC:
      mlx::core::binary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Divide>(result, (result + 16), v3, *(result + 48));
      break;
    case 0xD:
      mlx::core::binary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Divide>(result, (result + 16), v3, *(result + 48), a2, a3);
      break;
    default:
      return;
  }
}

void mlx::core::binary_op<BOOL,BOOL,mlx::core::detail::Divide>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v60 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 <= 1)
  {
    if (!a4)
    {
      *v11 = *v9;
      return;
    }

    if (a4 == 1)
    {
      v12 = *(*a2 + 160);
      if (v12 >= 1)
      {
        v13 = *v9;

        memset(v11, v13, v12 & 0x7FFFFFFF);
      }

      return;
    }

LABEL_14:
    memset(v56, 0, sizeof(v56));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v56, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
    v17 = *a2;
    memset(v57, 0, sizeof(v57));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v57, *(v17 + 24), *(v17 + 32), (*(v17 + 32) - *(v17 + 24)) >> 3);
    v18 = *a3;
    v59[0] = 0;
    v59[1] = 0;
    v58 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v58, *(v18 + 24), *(v18 + 32), (*(v18 + 32) - *(v18 + 24)) >> 3);
    memset(v51, 0, sizeof(v51));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v51, v56, &v60, 3uLL);
    mlx::core::collapse_contiguous_dims(v8, v51, 0x7FFFFFFFuLL, &__p);
    v55 = v51;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v55);
    for (i = 0; i != -9; i -= 3)
    {
      v20 = v59[i - 1];
      if (v20)
      {
        v59[i] = v20;
        operator delete(v20);
      }
    }

    v21 = (*v54 + 48);
    v22 = **v54;
    v23 = (*(*v54 + 8) - **v54) >> 3;
    v24 = v23 - 1;
    if (v23 - 1 >= -1)
    {
      v24 = -1;
    }

    v25 = v24 + 1;
    v26 = v23 + 1;
    v27 = v23 - 1;
    v28 = v23 - 1;
    while ((v28 & 0x80000000) == 0)
    {
      v29 = 8 * (v28 & 0x7FFFFFFF);
      --v26;
      --v28;
      if (*(v22 + v29) != *(*v21 + v29))
      {
        goto LABEL_30;
      }
    }

    v26 = v25;
LABEL_30:
    v33 = *(*v54 + 24);
    v34 = (*(*v54 + 32) - v33) >> 3;
    v35 = v34 - 1;
    if (v34 - 1 >= -1)
    {
      v35 = -1;
    }

    v36 = v35 + 1;
    v37 = v34 + 1;
    v38 = v34 - 1;
    v39 = v34 - 1;
    while ((v39 & 0x80000000) == 0)
    {
      v40 = 8 * (v39 & 0x7FFFFFFF);
      --v37;
      --v39;
      if (*(v33 + v40) != *(*v21 + v40))
      {
        goto LABEL_37;
      }
    }

    v37 = v36;
LABEL_37:
    v41 = v23 + 1;
    while ((v27 & 0x80000000) == 0)
    {
      v42 = *(v22 + 8 * (v27 & 0x7FFFFFFF));
      --v41;
      --v27;
      if (v42)
      {
        goto LABEL_42;
      }
    }

    v41 = v25;
LABEL_42:
    v43 = v34 + 1;
    while ((v38 & 0x80000000) == 0)
    {
      v44 = *(v33 + 8 * (v38 & 0x7FFFFFFF));
      --v43;
      --v38;
      if (v44)
      {
        goto LABEL_47;
      }
    }

    v43 = v36;
LABEL_47:
    v45 = (v53 - __p) >> 2;
    if (v26 <= v37)
    {
      v46 = v37;
    }

    else
    {
      v46 = v26;
    }

    if (v26 <= v43)
    {
      v26 = v43;
    }

    if (v41 > v37)
    {
      v37 = v41;
    }

    if (v45 > v37)
    {
      v47 = 1;
    }

    else
    {
      v37 = (v53 - __p) >> 2;
      v47 = a4;
    }

    if (v45 > v26)
    {
      v48 = 2;
    }

    else
    {
      v26 = v37;
      v48 = v47;
    }

    if (v45 <= v46)
    {
      v49 = v26;
    }

    else
    {
      v49 = v46;
    }

    if (v45 <= v46)
    {
      v50 = v48;
    }

    else
    {
      v50 = 3;
    }

    if (!v49 || *(*v21 + 8 * v49 - 8) < 16)
    {
      goto LABEL_68;
    }

    if (v50 == 1)
    {
      mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::Divide>>(v9, v10, v11, v49, *(*a1 + 48), &__p, *v54, (*v54 + 24), (*v54 + 48));
    }

    else
    {
      if (v50 != 2 && v50 != 3)
      {
        LODWORD(v45) = v49;
LABEL_68:
        mlx::core::binary_op_dispatch_dims<BOOL,BOOL,false,mlx::core::detail::Divide>(v9, v10, v11, v45, *(*a1 + 48), &__p, *v54, (*v54 + 24), (*v54 + 48));
        goto LABEL_69;
      }

      mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::VectorVector<mlx::core::detail::Divide>>(v9, v10, v11, v49, *(*a1 + 48), &__p, *v54, (*v54 + 24), (*v54 + 48));
    }

LABEL_69:
    v56[0] = v54;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v56);
    if (__p)
    {
      v53 = __p;
      operator delete(__p);
    }

    return;
  }

  if (a4 == 2)
  {
    v30 = *(v8 + 160);
    if (v30 >= 1)
    {
      v31 = v30 + 1;
      do
      {
        v32 = *v9++;
        *v11++ = v32 & 1;
        --v31;
      }

      while (v31 > 1);
    }
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_14;
    }

    v14 = *(v8 + 48);
    if (v14 >= 1)
    {
      v15 = v14 + 1;
      do
      {
        v16 = *v9++;
        *v11++ = v16 & 1;
        --v15;
      }

      while (v15 > 1);
    }
  }
}

void sub_25A638808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::VectorVector<mlx::core::detail::Divide>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int **a6, uint64_t **a7, uint64_t **a8, uint64_t **a9)
{
  v12 = a3;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::Divide>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::Divide>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:
      v17 = **a6;
      if (v17 >= 1)
      {
        v18 = 0;
        v19 = **a7;
        v20 = **a9;
        do
        {
          if (v20 >= 1)
          {
            v21 = 0;
            v22 = v20 + 1;
            do
            {
              *(v12 + v21) = *(v14 + v21) & 1;
              ++v21;
              --v22;
            }

            while (v22 > 1);
          }

          v12 += v20;
          v14 += v19;
          ++v18;
        }

        while (v18 != v17);
      }

      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v67, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v60, a6, a8, v15);
      if (a5 >= 1)
      {
        v24 = a5;
        v25 = 0;
        v59 = (*a9)[a4 - 4];
        v26 = v24;
        do
        {
          mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::Divide>,3,true>(v14 + v67, a2 + v60, v12 + v25, a6, a7, a8, a9, v15);
          v27 = v69 - v68;
          v28 = (v69 - v68) >> 2;
          if (v28)
          {
            v29 = v72;
            v30 = ((v27 << 30) - 0x100000000) >> 32;
            v31 = v72 + 4 * v30;
            v32 = *v31;
            v33 = v68 + 4 * v30;
            v34 = v70;
            v35 = v67;
            if (v28 >= 2 && v32 == *v33 - 1)
            {
              v38 = (v27 >> 2) & 0x7FFFFFFF;
              v37 = v38 - 1;
              v39 = 4 * v38;
              v40 = v68 - 8;
              do
              {
                v41 = v37;
                *v31 = 0;
                v35 -= v34[v30] * (*v33 - 1);
                v67 = v35;
                --v37;
                v31 = &v29[v39 - 8];
                v32 = *v31;
                v29 -= 4;
                if (v41 < 2)
                {
                  break;
                }

                v33 = &v40[v39];
                v42 = *&v40[4 * v38] - 1;
                v40 -= 4;
                v30 = v37;
              }

              while (v32 == v42);
              v31 = &v29[4 * v38 - 4];
            }

            else
            {
              v37 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v31 = v32 + 1;
            v67 = v34[v37] + v35;
          }

          v43 = v62 - v61;
          v44 = (v62 - v61) >> 2;
          if (v44)
          {
            v45 = __p;
            v46 = ((v43 << 30) - 0x100000000) >> 32;
            v47 = __p + 4 * v46;
            v48 = *v47;
            v49 = v61 + 4 * v46;
            v50 = v63;
            v51 = v60;
            if (v44 >= 2 && v48 == *v49 - 1)
            {
              v54 = (v43 >> 2) & 0x7FFFFFFF;
              v53 = v54 - 1;
              v55 = 4 * v54;
              v56 = v61 - 8;
              do
              {
                v57 = v53;
                *v47 = 0;
                v51 -= v50[v46] * (*v49 - 1);
                v60 = v51;
                --v53;
                v47 = &v45[v55 - 8];
                v48 = *v47;
                v45 -= 4;
                if (v57 < 2)
                {
                  break;
                }

                v49 = &v56[v55];
                v58 = *&v56[4 * v54] - 1;
                v56 -= 4;
                v46 = v53;
              }

              while (v48 == v58);
              v47 = &v45[4 * v54 - 4];
            }

            else
            {
              v53 = ((v43 << 30) - 0x100000000) >> 32;
            }

            *v47 = v48 + 1;
            v60 = v50[v53] + v51;
          }

          v25 += v59;
        }

        while (v25 < v26);
      }

      if (__p)
      {
        v66 = __p;
        operator delete(__p);
      }

      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      if (v61)
      {
        v62 = v61;
        operator delete(v61);
      }

      if (v72)
      {
        v73 = v72;
        operator delete(v72);
      }

      if (v70)
      {
        v71 = v70;
        operator delete(v70);
      }

      if (v68)
      {
        v69 = v68;
        operator delete(v68);
      }

      break;
  }
}