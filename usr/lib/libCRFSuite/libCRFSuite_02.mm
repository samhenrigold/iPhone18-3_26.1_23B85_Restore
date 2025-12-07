void ME_Efficient_Model_Trainer::backtracking_line_search(ME_Efficient_Model_Trainer *this, const Vec *a2, const Vec *a3, double a4, const Vec *a5, void **a6, double **a7)
{
  v15 = *a5;
  v14 = *(a5 + 1);
  v16 = 2.0;
  do
  {
    v16 = v16 * 0.5;
    Vec::Vec(&v35, 0.0, (v14 - v15) >> 3);
    v17 = *a5;
    v18 = *(a5 + 1);
    v19 = v18 - *a5;
    if (v18 != *a5)
    {
      v20 = 0;
      v21 = v19 >> 3;
      v22 = v35;
      if (v21 <= 1)
      {
        v21 = 1;
      }

      do
      {
        *&v22[v20 >> 29] = v16 * *(v17 + (v20 >> 29));
        v20 += 0x100000000;
        --v21;
      }

      while (v21);
    }

    Vec::Vec(&__p, 0.0, (*(a2 + 1) - *a2) >> 3);
    v23 = *a2;
    v24 = *(a2 + 1);
    v25 = v24 - *a2;
    v26 = v35;
    if (v25 != v36 - v35)
    {
      __assert_rtn("operator+", "mathvec.h", 64, "a.Size() == b.Size()");
    }

    if (v24 != v23)
    {
      v27 = 0;
      v28 = v25 >> 3;
      v29 = __p;
      if (v28 <= 1)
      {
        v28 = 1;
      }

      do
      {
        *&v29[v27 >> 29] = *(v23 + (v27 >> 29)) + *&v26[v27 >> 29];
        v27 += 0x100000000;
        --v28;
      }

      while (v28);
    }

    if (&__p != a6)
    {
      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a6, __p, v38, (v38 - __p) >> 3);
    }

    if (__p)
    {
      v38 = __p;
      operator delete(__p);
    }

    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }

    v30 = ME_Efficient_Model_Trainer::FunctionGradient(this, a6, a7);
    v15 = *a5;
    v14 = *(a5 + 1);
    v31 = v14 - *a5;
    if (v14 == *a5)
    {
      v34 = 0.0;
    }

    else
    {
      v32 = 0;
      v33 = v31 >> 3;
      if ((v31 >> 3) <= 1)
      {
        v33 = 1;
      }

      v34 = 0.0;
      do
      {
        v34 = v34 + *(v15 + (v32 >> 29)) * *(*a3 + (v32 >> 29));
        v32 += 0x100000000;
        --v33;
      }

      while (v33);
    }
  }

  while (v30 > a4 + v16 * 0.1 * v34);
}

void sub_29771A734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void approximate_Hg(uint64_t *__return_ptr a1@<X8>, const Vec *a2@<X1>, const Vec *a3@<X2>, const Vec *a4@<X3>, const double *a5@<X4>, int a6@<W0>)
{
  v61[10] = *MEMORY[0x29EDCA608];
  v56 = a6 - 1;
  if (a6 >= 11)
  {
    v10 = 9;
  }

  else
  {
    v10 = (a6 - 1);
  }

  if (a6 >= 11)
  {
    v11 = a6 - 10;
  }

  else
  {
    v11 = 0;
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1, *a2, *(a2 + 1), (*(a2 + 1) - *a2) >> 3);
  v58 = v10;
  if ((v10 & 0x80000000) == 0)
  {
    v12 = v10;
    do
    {
      v13 = (v11 + v12) % 0xAu;
      v14 = *(a3 + 3 * v13);
      v15 = *(a3 + 3 * v13 + 1);
      v16 = 0.0;
      v17 = v15 - v14;
      if (v15 != v14)
      {
        v18 = 0;
        v19 = v17 >> 3;
        if ((v17 >> 3) <= 1)
        {
          v19 = 1;
        }

        do
        {
          v16 = v16 + *(v14 + (v18 >> 29)) * *(*a1 + (v18 >> 29));
          v18 += 0x100000000;
          --v19;
        }

        while (v19);
      }

      v20 = a5[v13];
      *&v61[v12] = v20 * v16;
      v21 = (a4 + 24 * v13);
      Vec::Vec(&__p, 0.0, (v21[1] - *v21) >> 3);
      v22 = *v21;
      v23 = v21[1];
      v24 = v23 - *v21;
      if (v23 != *v21)
      {
        v25 = 0;
        v26 = v24 >> 3;
        v27 = __p;
        if (v26 <= 1)
        {
          v26 = 1;
        }

        do
        {
          *&v27[v25 >> 29] = *(v22 + (v25 >> 29)) * -(v20 * v16);
          v25 += 0x100000000;
          --v26;
        }

        while (v26);
      }

      Vec::operator+=(a1, &__p);
      if (__p)
      {
        v60 = __p;
        operator delete(__p);
      }
    }

    while (v12-- > 0);
  }

  if (a6 > 0)
  {
    v29 = *(a4 + 3 * (v56 % 0xA));
    v30 = *(a4 + 3 * (v56 % 0xA) + 1);
    v31 = v30 - v29;
    if (v30 == v29)
    {
      v34 = 0.0;
    }

    else
    {
      v32 = 0;
      v33 = v31 >> 3;
      if (v33 <= 1)
      {
        v33 = 1;
      }

      v34 = 0.0;
      do
      {
        v34 = v34 + *(v29 + (v32 >> 29)) * *(v29 + (v32 >> 29));
        v32 += 0x100000000;
        --v33;
      }

      while (v33);
    }

    v35 = *a1;
    v36 = a1[1] - *a1;
    if (v36)
    {
      v37 = 1.0 / a5[v56 % 0xA] / v34;
      v38 = v36 >> 3;
      if ((v36 >> 3) <= 1)
      {
        v38 = 1;
      }

      do
      {
        *v35 = v37 * *v35;
        ++v35;
        --v38;
      }

      while (v38);
    }
  }

  if ((v10 & 0x80000000) == 0)
  {
    v39 = 0;
    do
    {
      v40 = (v11 + v39) % 10;
      v41 = *(a4 + 3 * v40);
      v42 = *(a4 + 3 * v40 + 1);
      v43 = 0.0;
      v44 = v42 - v41;
      if (v42 != v41)
      {
        v45 = 0;
        v46 = v44 >> 3;
        if ((v44 >> 3) <= 1)
        {
          v46 = 1;
        }

        do
        {
          v43 = v43 + *(v41 + (v45 >> 29)) * *(*a1 + (v45 >> 29));
          v45 += 0x100000000;
          --v46;
        }

        while (v46);
      }

      v47 = a5[v40];
      v48 = (a3 + 24 * v40);
      v49 = *&v61[v39];
      Vec::Vec(&__p, 0.0, (v48[1] - *v48) >> 3);
      v50 = *v48;
      v51 = v48[1];
      v52 = v51 - *v48;
      if (v51 != *v48)
      {
        v53 = 0;
        v54 = v52 >> 3;
        v55 = __p;
        if (v54 <= 1)
        {
          v54 = 1;
        }

        do
        {
          *&v55[v53 >> 29] = (v49 - v47 * v43) * *(v50 + (v53 >> 29));
          v53 += 0x100000000;
          --v54;
        }

        while (v54);
      }

      Vec::operator+=(a1, &__p);
      if (__p)
      {
        v60 = __p;
        operator delete(__p);
      }

      ++v39;
    }

    while (v39 != v58 + 1);
  }
}

void sub_29771AB08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  v15 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

double Vec::operator+=(double **a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 - *a1;
  if (a2[1] - *a2 != v5)
  {
    Vec::operator+=();
  }

  if (v4 != v3)
  {
    v6 = 0;
    v7 = v5 >> 3;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    do
    {
      result = *(v2 + (v6 >> 29)) + *v3;
      *v3++ = result;
      v6 += 0x100000000;
      --v7;
    }

    while (v7);
  }

  return result;
}

void ME_Efficient_Model_Trainer::perform_LBFGS(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v61 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  v5 = *(a2 + 8);
  v7 = (v5 - v4) >> 3;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v55, v4, v5, v7);
  Vec::Vec(&v53, 0.0, v7);
  Vec::Vec(v52, 0.0, v7);
  v8 = ME_Efficient_Model_Trainer::FunctionGradient(a1, &v55, &v53);
  for (i = 0; i != 30; i += 3)
  {
    Vec::Vec(&v60[i], 0.0, 0);
  }

  for (j = 0; j != 30; j += 3)
  {
    Vec::Vec(&v59[j], 0.0, 0);
  }

  v11 = 0;
  v12 = MEMORY[0x29EDCA610];
  do
  {
    v13 = v11 + 1;
    fprintf(*v12, "%3d  obj(err) = %f (%6.4f)", v11 + 1, -v8, *(a1 + 336));
    if (*(a1 + 352) >= 1)
    {
      v14 = ME_Efficient_Model_Trainer::heldout_likelihood(a1);
      fprintf(*v12, "  heldout_logl(err) = %f (%6.4f)", v14, *(a1 + 344));
    }

    fputc(10, *v12);
    if (v54 == v53)
    {
      v17 = 0.0;
    }

    else
    {
      v15 = 0;
      v16 = (v54 - v53) >> 3;
      if (v16 <= 1)
      {
        v16 = 1;
      }

      v17 = 0.0;
      do
      {
        v17 = v17 + *(v53 + (v15 >> 29)) * *(v53 + (v15 >> 29));
        v15 += 0x100000000;
        --v16;
      }

      while (v16);
    }

    if (sqrt(v17) < 0.0001)
    {
      break;
    }

    approximate_Hg(&v48, &v53, v60, v59, v58, v11);
    Vec::Vec(&__p, 0.0, (v49 - v48) >> 3);
    v18 = v48;
    if (v49 != v48)
    {
      v19 = 0;
      v20 = (v49 - v48) >> 3;
      v21 = __p;
      if (v20 <= 1)
      {
        v20 = 1;
      }

      do
      {
        *&v21[v19 >> 29] = -*&v18[v19 >> 29];
        v19 += 0x100000000;
        --v20;
      }

      while (v20);
    }

    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v52, __p, v51, (v51 - __p) >> 3);
    if (__p)
    {
      v51 = __p;
      operator delete(__p);
    }

    if (v48)
    {
      v49 = v48;
      operator delete(v48);
    }

    Vec::Vec(&__p, 0.0, v7);
    Vec::Vec(&v48, 0.0, v7);
    ME_Efficient_Model_Trainer::backtracking_line_search(a1, &v55, &v53, v8, v52, &__p, &v48);
    v8 = v22;
    Vec::Vec(&v46, 0.0, (v51 - __p) >> 3);
    v23 = __p;
    v24 = v55;
    if (v51 - __p != v56 - v55)
    {
      __assert_rtn("operator-", "mathvec.h", 74, "a.Size() == b.Size()");
    }

    if (v51 != __p)
    {
      v25 = 0;
      v26 = (v51 - __p) >> 3;
      v27 = v46;
      if (v26 <= 1)
      {
        v26 = 1;
      }

      do
      {
        *&v27[v25 >> 29] = *&v23[v25 >> 29] - *&v24[v25 >> 29];
        v25 += 0x100000000;
        --v26;
      }

      while (v26);
    }

    v28 = v11 % 0xA;
    v29 = &v60[3 * v28];
    if (v29 != &v46)
    {
      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(&v60[3 * v28], v46, v47, (v47 - v46) >> 3);
    }

    if (v46)
    {
      v47 = v46;
      operator delete(v46);
    }

    Vec::Vec(&v46, 0.0, (v49 - v48) >> 3);
    v30 = v48;
    v31 = v53;
    if (v49 - v48 != v54 - v53)
    {
      __assert_rtn("operator-", "mathvec.h", 74, "a.Size() == b.Size()");
    }

    if (v49 != v48)
    {
      v32 = 0;
      v33 = (v49 - v48) >> 3;
      v34 = v46;
      if (v33 <= 1)
      {
        v33 = 1;
      }

      do
      {
        *&v34[v32 >> 29] = *&v30[v32 >> 29] - *&v31[v32 >> 29];
        v32 += 0x100000000;
        --v33;
      }

      while (v33);
    }

    v35 = &v59[3 * v28];
    if (v35 != &v46)
    {
      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(&v59[3 * v28], v46, v47, (v47 - v46) >> 3);
    }

    if (v46)
    {
      v47 = v46;
      operator delete(v46);
    }

    v36 = v35[1];
    v37 = v36 - *v35;
    if (v36 == *v35)
    {
      v40 = 0.0;
    }

    else
    {
      v38 = 0;
      v39 = v37 >> 3;
      if ((v37 >> 3) <= 1)
      {
        v39 = 1;
      }

      v40 = 0.0;
      do
      {
        v40 = v40 + *(*v35 + (v38 >> 29)) * *(*v29 + (v38 >> 29));
        v38 += 0x100000000;
        --v39;
      }

      while (v39);
    }

    v58[v28] = 1.0 / v40;
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(&v55, __p, v51, (v51 - __p) >> 3);
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(&v53, v48, v49, (v49 - v48) >> 3);
    if (v48)
    {
      v49 = v48;
      operator delete(v48);
    }

    if (__p)
    {
      v51 = __p;
      operator delete(__p);
    }

    v11 = v13;
  }

  while (v13 != 300);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a3, v55, v56, (v56 - v55) >> 3);
  for (k = 0; k != -30; k -= 3)
  {
    v42 = v59[k + 27];
    if (v42)
    {
      v59[k + 28] = v42;
      operator delete(v42);
    }
  }

  for (m = 0; m != -30; m -= 3)
  {
    v44 = v60[m + 27];
    if (v44)
    {
      v60[m + 28] = v44;
      operator delete(v44);
    }
  }

  if (v52[0])
  {
    v52[1] = v52[0];
    operator delete(v52[0]);
  }

  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }

  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }
}

void sub_29771B16C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = &a65;
  v67 = -240;
  while (1)
  {
    v68 = *(v66 - 1);
    if (v68)
    {
      *v66 = v68;
      operator delete(v68);
    }

    v66 -= 3;
    v67 += 24;
    if (!v67)
    {
      v69 = &STACK[0x2D0];
      v70 = -240;
      while (1)
      {
        v71 = *(v69 - 1);
        if (v71)
        {
          *v69 = v71;
          operator delete(v71);
        }

        v69 -= 3;
        v70 += 24;
        if (!v70)
        {
          if (__p)
          {
            operator delete(__p);
          }

          if (a25)
          {
            operator delete(a25);
          }

          if (a28)
          {
            operator delete(a28);
          }

          _Unwind_Resume(a1);
        }
      }
    }
  }
}

uint64_t exchange_options_1(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 < 0)
  {
    (*(a1 + 96))(a1, "c1", a2);
    (*(a1 + 96))(a1, "c2", a2 + 8);
    (*(a1 + 88))(a1, "max_iterations", a2 + 48);
    (*(a1 + 88))(a1, "num_memories", a2 + 16);
    (*(a1 + 96))(a1, "epsilon", a2 + 24);
    (*(a1 + 88))(a1, "period", a2 + 32);
    (*(a1 + 96))(a1, "delta", a2 + 40);
    (*(a1 + 104))(a1, "linesearch", a2 + 56);
    v6 = *(a1 + 88);

    return v6(a1, "max_linesearch", a2 + 64);
  }

  else
  {
    params_add_float(a1, "c1", "Coefficient for L1 regularization.", 0.0);
    params_add_float(a1, "c2", "Coefficient for L2 regularization.", 1.0);
    params_add_int(a1, "max_iterations", 0x7FFFFFFF, "The maximum number of iterations for L-BFGS optimization.");
    params_add_int(a1, "num_memories", 6, "The number of limited memories for approximating the inverse hessian matrix.");
    params_add_float(a1, "epsilon", "Epsilon for testing the convergence of the objective.", 0.00001);
    params_add_int(a1, "period", 10, "The duration of iterations to test the stopping criterion.");
    params_add_float(a1, "delta", "The threshold for the stopping criterion; an L-BFGS iteration stops when the\nimprovement of the log likelihood over the last ${period} iterations is no\ngreater than this threshold.", 0.00001);
    params_add_string(a1, "linesearch", "MoreThuente", "The line search algorithm used in L-BFGS updates:\n{   'MoreThuente': More and Thuente's method,\n    'Backtracking': Backtracking method with regular Wolfe condition,\n    'StrongBacktracking': Backtracking method with strong Wolfe condition\n}\n");

    return params_add_int(a1, "max_linesearch", 20, "The maximum number of trials for the line search algorithm.");
  }
}

uint64_t crfsuite_train_lbfgs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, double **a6)
{
  v12 = clock();
  v13 = *(a1 + 44);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  *__s1 = 0u;
  v28 = 0;
  lbfgs_parameter_init(&v29);
  v14 = malloc_type_calloc(8uLL, v13, 0x100004000313F17uLL);
  if (!v14)
  {
    v16 = 2147483649;
    v17 = 0;
    goto LABEL_21;
  }

  *(&v38 + 1) = malloc_type_calloc(8uLL, v13, 0x100004000313F17uLL);
  if (!*(&v38 + 1))
  {
    v16 = 2147483649;
    v17 = v14;
    v14 = 0;
    goto LABEL_21;
  }

  exchange_options_1(a4, &v24, -1);
  logging(a5, "L-BFGS optimization\n");
  logging(a5, "c1: %f\n", *&v24);
  logging(a5, "c2: %f\n", *(&v24 + 1));
  logging(a5, "num_memories: %d\n", v25);
  logging(a5, "max_iterations: %d\n", LODWORD(__s1[0]));
  logging(a5, "epsilon: %f\n", *(&v25 + 1));
  logging(a5, "stop: %d\n", v26);
  logging(a5, "delta: %f\n", *(&v26 + 1));
  logging(a5, "linesearch: %s\n", __s1[1]);
  logging(a5, "linesearch.max_iterations: %d\n", v28);
  logging(a5, "\n");
  LODWORD(v29) = v25;
  *(&v29 + 1) = *(&v25 + 1);
  LODWORD(v30) = v26;
  *(&v30 + 1) = *(&v26 + 1);
  LODWORD(v31) = __s1[0];
  v15 = __s1[1];
  if (!strcmp(__s1[1], "Backtracking"))
  {
    v18 = 2;
LABEL_10:
    DWORD1(v31) = v18;
    goto LABEL_11;
  }

  if (!strcmp(v15, "StrongBacktracking"))
  {
    v18 = 3;
    goto LABEL_10;
  }

  DWORD1(v31) = 0;
LABEL_11:
  DWORD2(v31) = v28;
  v19 = 0;
  if (*&v24 > 0.0)
  {
    DWORD1(v31) = 2;
    v19 = v24;
  }

  *&v35 = v19;
  *&v36 = a1;
  *(&v36 + 1) = a2;
  *&v38 = *(&v24 + 1);
  *&v37 = a3;
  *(&v37 + 1) = a5;
  v39 = clock();
  v20 = lbfgs(v13, v14, 0, lbfgs_evaluate, lbfgs_progress, &v36, &v29);
  if (v20 == -997)
  {
    logging(a5, "L-BFGS terminated with the maximum number of iterations\n");
  }

  else if (v20 == 1)
  {
    logging(a5, "L-BFGS terminated with the stopping criteria\n", v23);
  }

  else if (v20)
  {
    logging(a5, "L-BFGS terminated with error code (%d)\n");
  }

  else
  {
    logging(a5, "L-BFGS resulted in convergence\n", v23);
  }

  memcpy(v14, *(&v38 + 1), 8 * v13);
  v21 = clock();
  logging(a5, "Total seconds required for training: %.3f\n", (v21 - v12) / 1000000.0);
  logging(a5, "\n");
  v16 = 0;
  v17 = *(&v38 + 1);
LABEL_21:
  free(v17);
  *a6 = v14;
  return v16;
}

double lbfgs_evaluate(double *a1, double *a2, double *a3, unsigned int a4)
{
  (*(*a1 + 72))();
  v8 = a1[4];
  if (v8 <= 0.0)
  {
    return 0.0;
  }

  if (a4 < 1)
  {
    v11 = 0.0;
  }

  else
  {
    v9 = v8 + v8;
    v10 = a4;
    v11 = 0.0;
    do
    {
      *a3 = *a3 + v9 * *a2;
      ++a3;
      v12 = *a2++;
      v11 = v11 + v12 * v12;
      --v10;
    }

    while (v10);
    v8 = a1[4];
  }

  return v8 * v11 + 0.0;
}

uint64_t lbfgs_progress(uint64_t *a1, double *a2, double a3, double a4, double a5, double a6, uint64_t a7, unsigned int a8, int a9, int a10)
{
  v19 = clock();
  v20 = *a1;
  v22 = a1[2];
  v21 = a1[3];
  v23 = v19 - a1[6];
  a1[6] = v19;
  if (a8 < 1)
  {
    v24 = 0;
  }

  else
  {
    v24 = 0;
    v25 = a1[5];
    v26 = a8;
    v27 = a2;
    do
    {
      v28 = *v27++;
      *v25++ = v28;
      if (v28 != 0.0)
      {
        ++v24;
      }

      --v26;
    }

    while (v26);
  }

  logging(v21, "***** Iteration #%d *****\n", a9);
  logging(v21, "Loss: %f\n", a3);
  logging(v21, "Feature norm: %f\n", a4);
  logging(v21, "Error norm: %f\n", a5);
  logging(v21, "Active features: %d\n", v24);
  logging(v21, "Line search trials: %d\n", a10);
  logging(v21, "Line search step: %f\n", a6);
  logging(v21, "Seconds required for this iteration: %.3f\n", v23 / 1000000.0);
  if (v22)
  {
    holdout_evaluation(v20, v22, a2, v21);
  }

  logging(v21, "\n");
  return 0;
}

uint64_t exchange_options_2(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 < 0)
  {
    (*(a1 + 88))(a1, "type", a2);
    (*(a1 + 96))(a1, "c", a2 + 8);
    (*(a1 + 88))(a1, "error_sensitive", a2 + 16);
    (*(a1 + 88))(a1, "averaging", a2 + 20);
    (*(a1 + 88))(a1, "max_iterations", a2 + 24);
    v6 = *(a1 + 96);

    return v6(a1, "epsilon", a2 + 32);
  }

  else
  {
    params_add_int(a1, "type", 1, "The strategy for updating feature weights: {\n    0: PA without slack variables,\n    1: PA type I,\n    2: PA type II\n}.\n");
    params_add_float(a1, "c", "The aggressiveness parameter.", 1.0);
    params_add_int(a1, "error_sensitive", 1, "Consider the number of incorrect labels to the cost function.");
    params_add_int(a1, "averaging", 1, "Compute the average of feature weights (similarly to Averaged Perceptron).");
    params_add_int(a1, "max_iterations", 100, "The maximum number of iterations.");

    return params_add_float(a1, "epsilon", "The stopping criterion (the mean loss).", 0.0);
  }
}

uint64_t crfsuite_train_passive_aggressive(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t *a5, char **a6)
{
  v76 = *(a2 + 16);
  v10 = *(a1 + 44);
  v11 = *(a1 + 48);
  v83 = 0.0;
  v81 = 0u;
  v82 = 0u;
  v12 = clock();
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v13 = malloc_type_calloc(v10, 1uLL, 0x100004077774924uLL);
  *&v79 = v13;
  v14 = 0;
  *&v80 = malloc_type_calloc(v10, 8uLL, 0x100004000313F17uLL);
  size = v10;
  DWORD2(v80) = v10;
  if (!v80)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_61;
  }

  v69 = a3;
  v66 = v12;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  if (!v13)
  {
LABEL_61:
    free(v17);
    v64 = 2147483649;
    v17 = v14;
    v18 = 0;
    goto LABEL_62;
  }

  exchange_options_2(a4, &v81, -1);
  v16 = malloc_type_calloc(8uLL, size, 0x100004000313F17uLL);
  v15 = malloc_type_calloc(8uLL, size, 0x100004000313F17uLL);
  v18 = malloc_type_calloc(8uLL, size, 0x100004000313F17uLL);
  v19 = malloc_type_calloc(4uLL, v11, 0x100004052888210uLL);
  v17 = v19;
  if (!v16 || !v15 || !v18 || !v19)
  {
    v14 = v18;
    goto LABEL_61;
  }

  if (v82)
  {
    v20 = cost_sensitive;
  }

  else
  {
    v20 = cost_insensitive;
  }

  v21 = tau0;
  if (v81 == 2)
  {
    v21 = tau2;
  }

  if (v81 == 1)
  {
    v21 = tau1;
  }

  v74 = v21;
  v75 = v20;
  v22 = a5;
  logging(a5, "Passive Aggressive\n");
  logging(a5, "type: %d\n", v81);
  logging(a5, "c: %f\n", *(&v81 + 1));
  logging(a5, "error_sensitive: %d\n", v82);
  logging(a5, "averaging: %d\n", DWORD1(v82));
  logging(a5, "max_iterations: %d\n", DWORD2(v82));
  logging(a5, "epsilon: %f\n", v83);
  logging(a5, "\n");
  v73 = 0;
  v23 = v76;
  v24 = 1;
  v68 = v18;
  while (v73 < SDWORD2(v82))
  {
    v71 = clock();
    dataset_shuffle(a2);
    if (v76 < 1)
    {
      v26 = 0.0;
    }

    else
    {
      v25 = 0;
      v26 = 0.0;
      do
      {
        v77 = 0.0;
        v27 = dataset_get(a2, v25);
        (*(a1 + 88))(a1, v16, 1.0);
        (*(a1 + 96))(a1, v27);
        (*(a1 + 112))(a1, v17, &v77);
        v28 = *v27;
        if (v28 >= 1)
        {
          v29 = 0;
          v30 = 0;
          v31 = 4 * v28;
          do
          {
            if (*(*(v27 + 2) + v29) != *&v17[v29])
            {
              ++v30;
            }

            v29 += 4;
          }

          while (v31 != v29);
          if (v30)
          {
            (*(a1 + 104))(a1);
            v32 = v75(v77 - 0.0, v30);
            v33 = DWORD2(v78);
            if (SDWORD2(v78) >= 1)
            {
              v34 = v78;
              v35 = v80;
              do
              {
                v36 = *v34++;
                *(v35 + 8 * v36) = 0;
                --v33;
              }

              while (v33);
            }

            DWORD2(v78) = 0;
            *(&v79 + 1) = 0x3FF0000000000000;
            (*(a1 + 80))(a1, v27, *(v27 + 2), delta_collect_0, &v78);
            *(&v79 + 1) = 0xBFF0000000000000;
            v37 = (*(a1 + 80))(a1, v27, v17, delta_collect_0, &v78);
            v39 = DWORD2(v78);
            if (SDWORD2(v78) < 1)
            {
              DWORD2(v78) = 0;
              v38.n128_u64[0] = 0;
            }

            else
            {
              v40 = 0;
              v41 = 0;
              do
              {
                v42 = v79;
                v43 = *(v78 + 4 * v40);
                if (!*(v79 + v43))
                {
                  *(v78 + 4 * v41++) = v43;
                  *(v42 + v43) = 1;
                  v39 = DWORD2(v78);
                }

                ++v40;
              }

              while (v40 < v39);
              DWORD2(v78) = v41;
              v38.n128_u64[0] = 0;
              if (v41 >= 1)
              {
                v44 = 0;
                do
                {
                  *(v79 + *(v78 + 4 * v44++)) = 0;
                  v45 = SDWORD2(v78);
                }

                while (v44 < SDWORD2(v78));
                if (SDWORD2(v78) >= 1)
                {
                  v38.n128_u64[0] = 0;
                  v46 = v78;
                  do
                  {
                    v47 = *v46++;
                    v38.n128_f64[0] = v38.n128_f64[0] + *(v80 + 8 * v47) * *(v80 + 8 * v47);
                    --v45;
                  }

                  while (v45);
                }
              }
            }

            v74(v37, v32, v38, *(&v81 + 1));
            v49 = DWORD2(v78);
            if (SDWORD2(v78) >= 1)
            {
              v50 = v78;
              v51 = v80;
              do
              {
                v52 = *v50++;
                v16[v52] = v16[v52] + v48 * *(v51 + 8 * v52);
                v15[v52] = v15[v52] + v48 * v24 * *(v51 + 8 * v52);
                --v49;
              }

              while (v49);
            }

            v26 = v26 + v32;
          }
        }

        ++v24;
        ++v25;
      }

      while (v25 != v76);
    }

    v53 = DWORD1(v82);
    v18 = v68;
    memcpy(v68, v16, 8 * size);
    if (v53 && size >= 1)
    {
      v54 = v15;
      v55 = v68;
      v56 = size;
      do
      {
        v57 = *v54++;
        *v55 = *v55 + -1.0 / v24 * v57;
        ++v55;
        --v56;
      }

      while (v56);
    }

    ++v73;
    v22 = a5;
    logging(a5, "***** Iteration #%d *****\n", v73);
    logging(a5, "Loss: %f\n", v26);
    v58 = 0.0;
    if (size >= 1)
    {
      v59 = v16;
      v60 = size;
      do
      {
        v61 = *v59++;
        v58 = v58 + v61 * v61;
        --v60;
      }

      while (v60);
    }

    logging(a5, "Feature norm: %f\n", sqrt(v58));
    v62 = clock();
    logging(a5, "Seconds required for this iteration: %.3f\n", (v62 - v71) / 1000000.0);
    if (v69)
    {
      holdout_evaluation(a1, v69, v68, a5);
    }

    logging(a5, "\n");
    if (v26 / v23 < v83)
    {
      logging(a5, "Terminated with the stopping criterion\n", v26 / v23);
      logging(a5, "\n");
      break;
    }
  }

  v63 = clock();
  logging(v22, "Total seconds required for training: %.3f\n", (v63 - v66) / 1000000.0);
  logging(v22, "\n");
  v64 = 0;
LABEL_62:
  free(v17);
  free(v15);
  free(v16);
  *a6 = v18;
  delta_finish(&v78);
  return v64;
}

double tau1(double a1, double a2, double a3)
{
  result = a1 / a2;
  if (result > a3)
  {
    return a3;
  }

  return result;
}

double delta_collect_0(uint64_t a1, int a2, double a3)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  v8 = *a1;
  if (v7 <= v6)
  {
    v9 = 2 * v7 + 2;
    *(a1 + 12) = v9;
    v8 = malloc_type_realloc(v8, 4 * v9, 0x100004052888210uLL);
    *a1 = v8;
    v6 = *(a1 + 8);
  }

  *(a1 + 8) = v6 + 1;
  *(v8 + v6) = a2;
  v10 = *(a1 + 32);
  result = *(v10 + 8 * a2) + *(a1 + 24) * a3;
  *(v10 + 8 * a2) = result;
  return result;
}

void *lbfgs_malloc(int a1)
{
  v1 = 8 * a1;
  v2 = malloc_type_malloc(v1, 0xCF5EDA64uLL);
  v3 = v2;
  if (v2)
  {
    bzero(v2, v1);
  }

  return v3;
}

void *vecalloc(size_t a1)
{
  v2 = malloc_type_malloc(a1, 0xCF5EDA64uLL);
  v3 = v2;
  if (v2)
  {
    bzero(v2, a1);
  }

  return v3;
}

double lbfgs_parameter_init(_OWORD *a1)
{
  a1[4] = xmmword_2977327B0;
  a1[5] = unk_2977327C0;
  a1[6] = xmmword_2977327D0;
  *a1 = _defparam;
  a1[1] = unk_297732780;
  result = 1.0e-20;
  a1[2] = xmmword_297732790;
  a1[3] = *dbl_2977327A0;
  return result;
}

uint64_t lbfgs(uint64_t a1, double *a2, double *a3, double (*a4)(void, void, void, void, double), uint64_t (*a5)(uint64_t, double *, double *, void, uint64_t, uint64_t, double, double, double, double), uint64_t a6, __int128 *a7)
{
  if (a7)
  {
    v12 = a7[5];
    v174 = a7[4];
    v175 = v12;
    v176 = a7[6];
    v13 = a7[1];
    v170 = *a7;
    v171 = v13;
    v14 = a7[3];
    v172 = a7[2];
    v173 = v14;
    v15 = v170;
  }

  else
  {
    v174 = xmmword_2977327B0;
    v175 = unk_2977327C0;
    v176 = xmmword_2977327D0;
    v170 = _defparam;
    v171 = unk_297732780;
    v172 = xmmword_297732790;
    v173 = *dbl_2977327A0;
    v15 = 6;
  }

  v168 = a5;
  v169 = 0.0;
  v166 = a6;
  v165 = a1;
  v167 = a4;
  if (a1 < 1)
  {
    return 4294966276;
  }

  if (*(&v170 + 1) < 0.0)
  {
    return 4294966279;
  }

  v17 = v171;
  if ((v171 & 0x80000000) != 0)
  {
    return 4294966280;
  }

  if (*(&v171 + 1) < 0.0)
  {
    return 4294966281;
  }

  if (*&v173 < 0.0)
  {
    return 4294966283;
  }

  if (*(&v173 + 1) < *&v173)
  {
    return 4294966284;
  }

  if (*&v174 < 0.0)
  {
    return 4294966285;
  }

  if ((DWORD1(v172) & 0xFFFFFFFE) != 2 || (v16 = 4294966286, *(&v174 + 1) > *&v174) && *(&v174 + 1) < 1.0)
  {
    if (*&v175 < 0.0)
    {
      return 4294966287;
    }

    if (*(&v175 + 1) < 0.0)
    {
      return 4294966288;
    }

    if (SDWORD2(v172) < 1)
    {
      return 4294966289;
    }

    v18 = *&v176;
    if (*&v176 < 0.0)
    {
      return 4294966290;
    }

    if (DWORD2(v176) > a1)
    {
      return 4294966291;
    }

    v19 = HIDWORD(v176);
    if ((HIDWORD(v176) & 0x80000000) != 0)
    {
      HIDWORD(v176) = a1;
      v19 = a1;
    }

    else if (HIDWORD(v176) > a1)
    {
      return 4294966292;
    }

    if (*&v176 == 0.0)
    {
      v154 = v19;
      v156 = SDWORD2(v176);
      if (DWORD1(v172) <= 3)
      {
        v158 = *(&off_2A1E520D8 + DWORD1(v172));
        goto LABEL_40;
      }
    }

    else
    {
      v158 = line_search_backtracking_owlqn;
      if (DWORD1(v172) == 2)
      {
        v154 = v19;
        v156 = SDWORD2(v176);
LABEL_40:
        v177[0] = 0.0;
        v162 = vecalloc(8 * a1);
        v20 = vecalloc(8 * a1);
        v161 = vecalloc(8 * a1);
        v160 = vecalloc(8 * a1);
        v159 = vecalloc(8 * a1);
        v163 = v20;
        v164 = 0;
        v16 = 4294966274;
        if (!v162 || !v20 || !v161 || !v160)
        {
          v21 = 0;
          v22 = 0;
          if (!a3)
          {
            goto LABEL_174;
          }

          goto LABEL_173;
        }

        v21 = 0;
        v22 = 0;
        if (v159)
        {
          if (*&v176 == 0.0)
          {
            v164 = 0;
          }

          else
          {
            v22 = vecalloc(8 * a1);
            v164 = v22;
            if (!v22)
            {
              v164 = 0;
              goto LABEL_62;
            }
          }

          v22 = vecalloc(32 * v15);
          v155 = v22;
          if (!v22)
          {
LABEL_62:
            v21 = 0;
            if (!a3)
            {
              goto LABEL_174;
            }

            goto LABEL_173;
          }

          if (v15 >= 1)
          {
            v23 = v15;
            v24 = v22 + 2;
            while (1)
            {
              *(v24 - 2) = 0;
              v24[1] = 0;
              *(v24 - 1) = vecalloc(8 * a1);
              v25 = vecalloc(8 * a1);
              *v24 = v25;
              if (!*(v24 - 1) || v25 == 0)
              {
                break;
              }

              v24 += 4;
              if (!--v23)
              {
                goto LABEL_60;
              }
            }

            v22 = 0;
            v16 = 4294966274;
LABEL_65:
            v21 = v155;
            if (!a3)
            {
              goto LABEL_174;
            }

            goto LABEL_173;
          }

LABEL_60:
          if (v17)
          {
            v153 = vecalloc(8 * v17);
          }

          else
          {
            v153 = 0;
          }

          v27 = 0.0;
          v28 = a4(a6, a2, v163, a1, 0.0);
          v169 = v28;
          if (v18 != 0.0)
          {
            if (v156 < v154)
            {
              v29 = v154 - v156;
              v30 = &a2[v156];
              do
              {
                v31 = *v30++;
                v27 = v27 + fabs(v31);
                --v29;
              }

              while (v29);
            }

            v28 = v28 + v27 * v18;
            v169 = v28;
            owlqn_pseudo_gradient(v164, a2, v163, a1, v156, v154, v18);
          }

          v32 = a1;
          if (v153)
          {
            *v153 = v28;
            v18 = *&v176;
          }

          if (v18 == 0.0)
          {
            v33 = v163;
            v34 = v160;
            v35 = a1;
            do
            {
              v36 = *v33++;
              *v34++ = -v36;
              --v35;
            }

            while (v35);
          }

          else
          {
            v37 = v164;
            v38 = v160;
            v39 = a1;
            do
            {
              v40 = *v37++;
              *v38++ = -v40;
              --v39;
            }

            while (v39);
          }

          v41 = 0;
          v42 = 0.0;
          do
          {
            v42 = v42 + a2[v41] * a2[v41];
            ++v41;
          }

          while (a1 != v41);
          v43 = sqrt(v42);
          v44 = 0.0;
          if (*&v176 == 0.0)
          {
            v45 = v163;
            v46 = a1;
            do
            {
              v47 = *v45++;
              v44 = v44 + v47 * v47;
              --v46;
            }

            while (v46);
          }

          else
          {
            v48 = v164;
            v49 = a1;
            do
            {
              v50 = *v48++;
              v44 = v44 + v50 * v50;
              --v49;
            }

            while (v49);
          }

          v51 = sqrt(v44);
          if (v43 < 1.0)
          {
            v43 = 1.0;
          }

          if (v51 / v43 <= *(&v170 + 1))
          {
            v16 = 2;
          }

          else
          {
            v52 = 0;
            v53 = 0.0;
            do
            {
              v53 = v53 + v160[v52] * v160[v52];
              ++v52;
            }

            while (a1 != v52);
            v157 = 0;
            v54 = 1.0 / sqrt(v53);
            v55 = 1;
            while (1)
            {
              v56 = 0;
              v57 = v15 >= v55 ? v55 : v15;
              v177[0] = v54;
              do
              {
                v162[v56] = a2[v56];
                ++v56;
              }

              while (a1 != v56);
              v58 = 0;
              do
              {
                *&v161[v58] = v163[v58];
                ++v58;
              }

              while (a1 != v58);
              if (*&v176 == 0.0)
              {
                v16 = v158(a1, a2, &v169, v163, v160, v177, v162, v161, *&v176, v159, &v165, &v170);
              }

              else
              {
                v16 = v158(a1, a2, &v169, v163, v160, v177, v162, v164, *&v176, v159, &v165, &v170);
                owlqn_pseudo_gradient(v164, a2, v163, a1, SDWORD2(v176), SHIDWORD(v176), *&v176);
              }

              if ((v16 & 0x80000000) != 0)
              {
                break;
              }

              v59 = 0;
              v60 = 0.0;
              do
              {
                v60 = v60 + a2[v59] * a2[v59];
                ++v59;
              }

              while (a1 != v59);
              if (*&v176 == 0.0)
              {
                v61 = 0.0;
                v62 = v163;
                v63 = a1;
                do
                {
                  v64 = *v62++;
                  v61 = v61 + v64 * v64;
                  --v63;
                }

                while (v63);
              }

              else
              {
                v61 = 0.0;
                v65 = v164;
                v66 = a1;
                do
                {
                  v67 = *v65++;
                  v61 = v61 + v67 * v67;
                  --v66;
                }

                while (v66);
              }

              v68 = sqrt(v60);
              v69 = sqrt(v61);
              if (v168)
              {
                v70 = v168(v166, a2, v163, v165, v55, v16, v169, v68, v69, v177[0]);
                if (v70)
                {
                  v16 = v70;
                  goto LABEL_171;
                }
              }

              if (v68 >= 1.0)
              {
                v71 = v68;
              }

              else
              {
                v71 = 1.0;
              }

              if (v69 / v71 <= *(&v170 + 1))
              {
                v16 = 0;
                goto LABEL_171;
              }

              v22 = v153;
              if (v153)
              {
                v72 = v55 % v171;
                if (v171 <= v55 && (v153[v72] - v169) / v169 < *(&v171 + 1))
                {
                  v16 = 1;
                  goto LABEL_65;
                }

                v153[v72] = v169;
              }

              if (v172 && v172 <= v55)
              {
                v16 = 4294966299;
                goto LABEL_171;
              }

              v73 = &v155[4 * v157];
              v74 = v73[1];
              v75 = a2;
              v76 = v162;
              v77 = v74;
              v78 = a1;
              do
              {
                v79 = *v75++;
                v80 = v79;
                v81 = *v76++;
                *v77++ = v80 - v81;
                --v78;
              }

              while (v78);
              v82 = v73[2];
              v83 = v163;
              v84 = v161;
              v85 = v82;
              v86 = a1;
              do
              {
                v87 = *v83++;
                v88 = v87;
                v89 = *v84++;
                *v85++ = v88 - v89;
                --v86;
              }

              while (v86);
              v90 = 0.0;
              v91 = v82;
              v92 = a1;
              do
              {
                v93 = *v91++;
                v94 = v93;
                v95 = *v74++;
                v90 = v90 + v94 * v95;
                --v92;
              }

              while (v92);
              v96 = 0.0;
              v97 = a1;
              do
              {
                v98 = *v82++;
                v96 = v96 + v98 * v98;
                --v97;
              }

              while (v97);
              *(v73 + 3) = v90;
              v99 = v164;
              v100 = v160;
              v101 = a1;
              if (*&v176 == 0.0)
              {
                v102 = v163;
                v103 = v160;
                v104 = a1;
                do
                {
                  v105 = *v102++;
                  *v103++ = -v105;
                  --v104;
                }

                while (v104);
              }

              else
              {
                do
                {
                  v106 = *v99++;
                  *v100++ = -v106;
                  --v101;
                }

                while (v101);
              }

              v107 = (v157 + 1) % v15;
              v157 = v107;
              if (v15 >= 1)
              {
                v108 = 0;
                do
                {
                  v107 = (v15 - 1 + v107) % v15;
                  v109 = &v155[4 * v107];
                  v110 = v109[1];
                  *v109 = 0;
                  v111 = 0.0;
                  v112 = v160;
                  v113 = a1;
                  do
                  {
                    v114 = *v110++;
                    v115 = v114;
                    v116 = *v112++;
                    v111 = v111 + v115 * v116;
                    *v109 = v111;
                    --v113;
                  }

                  while (v113);
                  v117 = v111 / *(v109 + 3);
                  *v109 = v117;
                  v118 = v109[2];
                  v119 = -v117;
                  v120 = v160;
                  v121 = a1;
                  do
                  {
                    v122 = *v118++;
                    *v120 = *v120 + v119 * v122;
                    ++v120;
                    --v121;
                  }

                  while (v121);
                  ++v108;
                }

                while (v108 != v57);
              }

              v55 = (v55 + 1);
              v123 = v160;
              v124 = a1;
              v125 = v90 / v96;
              do
              {
                *v123 = v125 * *v123;
                ++v123;
                --v124;
              }

              while (v124);
              if (v15 >= 1)
              {
                v126 = 0;
                do
                {
                  v127 = &v155[4 * v107];
                  v128 = v127[2];
                  v129 = 0.0;
                  v130 = v160;
                  v131 = a1;
                  do
                  {
                    v132 = *v128++;
                    v133 = v132;
                    v134 = *v130++;
                    v129 = v129 + v133 * v134;
                    --v131;
                  }

                  while (v131);
                  v135 = v127[1];
                  v136 = *v127 - v129 / *(v127 + 3);
                  v137 = v160;
                  v138 = a1;
                  do
                  {
                    v139 = *v135++;
                    *v137 = *v137 + v136 * v139;
                    ++v137;
                    --v138;
                  }

                  while (v138);
                  v107 = (v107 + 1) % v15;
                  ++v126;
                }

                while (v126 != v57);
              }

              v54 = 1.0;
              if (*&v176 != 0.0 && SDWORD2(v176) < SHIDWORD(v176))
              {
                v140 = &v160[SDWORD2(v176)];
                v141 = SHIDWORD(v176) - SDWORD2(v176);
                v142 = &v164[SDWORD2(v176)];
                do
                {
                  if (*v140 * *v142 >= 0.0)
                  {
                    *v140 = 0.0;
                  }

                  ++v140;
                  ++v142;
                  --v141;
                }

                while (v141);
              }
            }

            v143 = v162;
            v144 = a1;
            do
            {
              v145 = *v143++;
              *a2++ = v145;
              --v144;
            }

            while (v144);
            v146 = v161;
            v147 = v163;
            do
            {
              v148 = *v146++;
              *v147++ = v148;
              --v32;
            }

            while (v32);
          }

LABEL_171:
          v21 = v155;
          v22 = v153;
        }

        if (!a3)
        {
LABEL_174:
          free(v22);
          if (v21)
          {
            if (v15 >= 1)
            {
              v149 = v15;
              v150 = v21 + 2;
              do
              {
                free(*(v150 - 1));
                v151 = *v150;
                v150 += 4;
                free(v151);
                --v149;
              }

              while (v149);
            }

            free(v21);
          }

          free(v164);
          free(v159);
          free(v160);
          free(v161);
          free(v163);
          free(v162);
          return v16;
        }

LABEL_173:
        *a3 = v169;
        goto LABEL_174;
      }
    }

    return 4294966282;
  }

  return v16;
}

uint64_t line_search_morethuente(int a1, void *a2, double *a3, double *a4, double *a5, double *a6, uint64_t *a7, __n128 a8, uint64_t a9, uint64_t a10, unsigned int *a11, uint64_t a12)
{
  if (*a6 <= 0.0)
  {
    return 4294966301;
  }

  v15 = a1;
  v16 = 0.0;
  if (a1 < 1)
  {
    goto LABEL_9;
  }

  v17 = a4;
  v18 = a5;
  v19 = a1;
  do
  {
    v20 = *v17++;
    v21 = v20;
    v22 = *v18++;
    v16 = v16 + v21 * v22;
    --v19;
  }

  while (v19);
  if (v16 <= 0.0)
  {
LABEL_9:
    LODWORD(v23) = 0;
    updated = 0;
    v81[0] = 0;
    v25 = *a3;
    v26 = v16 * *(a12 + 64);
    v27 = *(a12 + 56) - *(a12 + 48);
    v63 = v27 + v27;
    v76 = 0.0;
    v79 = 0.0;
    v74 = v16;
    v75 = v25;
    v77 = v16;
    v78 = v25;
    v28 = 1;
    v29 = 1;
LABEL_10:
    v31 = v27;
    while (1)
    {
      v32 = v79;
      if (v28)
      {
        a8.n128_f64[0] = *a6;
        v33 = *a6 + (*a6 - v79) * 4.0;
        v34 = v79;
      }

      else
      {
        if (v79 > v76)
        {
          v34 = v76;
        }

        else
        {
          v34 = v79;
        }

        if (v79 < v76)
        {
          v33 = v76;
        }

        else
        {
          v33 = v79;
        }

        a8.n128_f64[0] = *a6;
      }

      v35 = *(a12 + 48);
      if (a8.n128_f64[0] < v35)
      {
        *a6 = v35;
        a8.n128_f64[0] = v35;
      }

      v36 = *(a12 + 56);
      if (v36 < a8.n128_f64[0])
      {
        *a6 = v36;
        a8.n128_f64[0] = v36;
      }

      if ((v28 & 1) == 0)
      {
        v37 = a8.n128_f64[0] > v34 && v33 > a8.n128_f64[0];
        if (!v37 || *(a12 + 40) <= v23 + 1 || updated || v33 - v34 <= v33 * *(a12 + 88))
        {
          *a6 = v32;
          a8.n128_f64[0] = v32;
        }
      }

      if (a1 >= 1)
      {
        v38 = a7;
        v39 = a2;
        v40 = v15;
        do
        {
          v41 = *v38++;
          *v39++ = v41;
          --v40;
        }

        while (v40);
        v42 = *a6;
        v43 = a5;
        v44 = a2;
        v45 = v15;
        do
        {
          v46 = *v43++;
          *v44 = *v44 + v42 * v46;
          ++v44;
          --v45;
        }

        while (v45);
        a8.n128_f64[0] = *a6;
      }

      v47 = (*(a11 + 2))(*(a11 + 1), a2, a4, *a11, a8);
      *a3 = v47;
      v80 = 0.0;
      v48 = 0.0;
      if (a1 >= 1)
      {
        v49 = a4;
        v50 = a5;
        v51 = v15;
        do
        {
          v52 = *v49++;
          v53 = v52;
          v54 = *v50++;
          v48 = v48 + v53 * v54;
          --v51;
        }

        while (v51);
        v80 = v48;
      }

      v55 = *a6;
      if ((v28 & 1) == 0)
      {
        if (v55 <= v34)
        {
          return 4294966295;
        }

        if (v33 <= v55 || updated != 0)
        {
          return 4294966295;
        }
      }

      v57 = v25 + v55 * v26;
      if (v55 == *(a12 + 56) && v47 <= v57 && v48 <= v26)
      {
        return 4294966297;
      }

      if (v55 == *(a12 + 48) && (v57 < v47 || v26 <= v48))
      {
        return 4294966296;
      }

      if ((v28 & 1) == 0 && v33 - v34 <= v33 * *(a12 + 88))
      {
        return 4294966300;
      }

      v23 = (v23 + 1);
      if (*(a12 + 40) <= v23)
      {
        return 4294966298;
      }

      if (v47 <= v57)
      {
        v61 = *(a12 + 80);
        if (fabs(v48) <= v61 * -v16)
        {
          return v23;
        }

        if (!v29)
        {
          goto LABEL_83;
        }

        if (*(a12 + 64) <= v61)
        {
          v61 = *(a12 + 64);
        }

        if (v16 * v61 <= v48)
        {
          v29 = 0;
          goto LABEL_83;
        }
      }

      else if (!v29)
      {
        goto LABEL_83;
      }

      if (v57 >= v47 || v47 > v78)
      {
        v29 = 1;
LABEL_83:
        updated = update_trial_interval(&v79, &v78, &v77, &v76, &v75, &v74, a6, a3, v34, v33, &v80, v81);
        goto LABEL_84;
      }

      v68 = v48 - v26;
      v69 = v47 - v55 * v26;
      v72 = v77 - v26;
      v73 = v78 - v32 * v26;
      v70 = v74 - v26;
      v71 = v75 - v76 * v26;
      updated = update_trial_interval(&v79, &v73, &v72, &v76, &v71, &v70, a6, &v69, v34, v33, &v68, v81);
      v77 = v26 + v72;
      v78 = v73 + v79 * v26;
      v74 = v26 + v70;
      v75 = v71 + v76 * v26;
      v29 = 1;
LABEL_84:
      v28 = 1;
      if (v81[0])
      {
        v28 = 0;
        v27 = vabdd_f64(v76, v79);
        v37 = v63 * 0.66 > v27;
        v63 = v31;
        if (!v37)
        {
          v28 = 0;
          *a6 = v79 + (v76 - v79) * 0.5;
          v63 = v31;
        }

        goto LABEL_10;
      }
    }
  }

  return 4294966302;
}

uint64_t line_search_backtracking_owlqn(int a1, void *a2, double *a3, uint64_t a4, double *a5, double *a6, double *a7, double *a8, double *a9, unsigned int *a10, uint64_t a11)
{
  if (*a6 <= 0.0)
  {
    return 4294966301;
  }

  v17 = a1;
  v18 = *a3;
  if (a1 >= 1)
  {
    v19 = a1;
    v20 = a7;
    v21 = a8;
    v22 = a9;
    do
    {
      v23 = *v20;
      if (*v20 == 0.0)
      {
        v23 = -*v21;
      }

      *v22++ = v23;
      ++v21;
      ++v20;
      --v19;
    }

    while (v19);
  }

  LODWORD(v24) = 0;
  while (1)
  {
    if (a1 >= 1)
    {
      v25 = a7;
      v26 = a2;
      v27 = v17;
      do
      {
        v28 = *v25++;
        *v26++ = v28;
        --v27;
      }

      while (v27);
      v29 = *a6;
      v30 = a5;
      v31 = a2;
      v32 = v17;
      do
      {
        v33 = *v30++;
        *v31 = *v31 + v29 * v33;
        ++v31;
        --v32;
      }

      while (v32);
    }

    v35 = *(a11 + 104);
    v34 = *(a11 + 108);
    if (v35 < v34)
    {
      v36 = v34 - v35;
      v37 = &a9[v35];
      v38 = &a2[v35];
      do
      {
        if (*v38 * *v37 <= 0.0)
        {
          *v38 = 0.0;
        }

        ++v37;
        ++v38;
        --v36;
      }

      while (v36);
    }

    v39 = (*(a10 + 2))(*(a10 + 1), a2, a4, *a10, *a6);
    *a3 = v39;
    v41 = *(a11 + 104);
    v40 = *(a11 + 108);
    v42 = 0.0;
    v43 = 0.0;
    if (v41 < v40)
    {
      v44 = v40 - v41;
      v45 = &a2[v41];
      do
      {
        v46 = *v45++;
        v43 = v43 + fabs(v46);
        --v44;
      }

      while (v44);
    }

    v47 = v39 + v43 * *(a11 + 96);
    *a3 = v47;
    if (a1 >= 1)
    {
      v42 = 0.0;
      v48 = v17;
      v49 = a2;
      v50 = a7;
      v51 = a8;
      do
      {
        v52 = *v49++;
        v53 = v52;
        v54 = *v50++;
        v55 = v53 - v54;
        v56 = *v51++;
        v42 = v42 + v55 * v56;
        --v48;
      }

      while (v48);
    }

    v24 = (v24 + 1);
    if (v47 <= v18 + *(a11 + 64) * v42)
    {
      break;
    }

    v57 = *a6;
    if (*a6 < *(a11 + 48))
    {
      return 4294966296;
    }

    if (v57 > *(a11 + 56))
    {
      return 4294966297;
    }

    if (*(a11 + 40) <= v24)
    {
      return 4294966298;
    }

    *a6 = v57 * 0.5;
  }

  return v24;
}

uint64_t line_search_backtracking(int a1, void *a2, double *a3, double *a4, double *a5, unint64_t *a6, uint64_t *a7, __n128 a8, uint64_t a9, uint64_t a10, unsigned int *a11, uint64_t a12)
{
  a8.n128_u64[0] = *a6;
  if (*a6 <= 0.0)
  {
    return 4294966301;
  }

  v18 = a1;
  v19 = 0.0;
  if (a1 < 1)
  {
    goto LABEL_9;
  }

  v20 = a4;
  v21 = a5;
  v22 = a1;
  do
  {
    v23 = *v20++;
    v24 = v23;
    v25 = *v21++;
    v19 = v19 + v24 * v25;
    --v22;
  }

  while (v22);
  if (v19 > 0.0)
  {
    return 4294966302;
  }

LABEL_9:
  LODWORD(v26) = 0;
  v28 = *a3;
  v29 = v19 * *(a12 + 64);
  while (1)
  {
    if (a1 >= 1)
    {
      v30 = a7;
      v31 = a2;
      v32 = v18;
      do
      {
        v33 = *v30++;
        *v31++ = v33;
        --v32;
      }

      while (v32);
      v34 = *a6;
      v35 = a5;
      v36 = a2;
      v37 = v18;
      do
      {
        v38 = *v35++;
        *v36 = *v36 + v34 * v38;
        ++v36;
        --v37;
      }

      while (v37);
      a8.n128_u64[0] = *a6;
    }

    a8.n128_f64[0] = (*(a11 + 2))(*(a11 + 1), a2, a4, *a11, a8);
    *a3 = a8.n128_f64[0];
    v26 = (v26 + 1);
    v39 = *a6;
    v40 = 0.5;
    if (a8.n128_f64[0] <= v28 + *a6 * v29)
    {
      v41 = *(a12 + 36);
      if (v41 == 1)
      {
        break;
      }

      v42 = 0.0;
      if (a1 >= 1)
      {
        v43 = a4;
        v44 = a5;
        v45 = v18;
        do
        {
          v46 = *v43++;
          v47 = v46;
          v48 = *v44++;
          v42 = v42 + v47 * v48;
          --v45;
        }

        while (v45);
      }

      v49 = *(a12 + 72);
      v40 = 2.1;
      if (v42 >= v19 * v49)
      {
        if (v41 == 2)
        {
          break;
        }

        v40 = 0.5;
        if (v42 <= -(v49 * v19))
        {
          break;
        }
      }
    }

    if (v39 < *(a12 + 48))
    {
      return 4294966296;
    }

    if (v39 > *(a12 + 56))
    {
      return 4294966297;
    }

    if (*(a12 + 40) <= v26)
    {
      return 4294966298;
    }

    a8.n128_f64[0] = v39 * v40;
    *a6 = v39 * v40;
  }

  return v26;
}

double owlqn_pseudo_gradient(void *a1, uint64_t a2, uint64_t *a3, int a4, int a5, int a6, double result)
{
  if (a5 >= 1)
  {
    v7 = a5;
    v8 = a3;
    v9 = a1;
    do
    {
      v10 = *v8++;
      *v9++ = v10;
      --v7;
    }

    while (v7);
  }

  if (a5 < a6)
  {
    v11 = &a1[a5];
    v12 = (a2 + 8 * a5);
    v13 = &a3[a5];
    v14 = a6 - a5;
    do
    {
      if (*v12 >= 0.0)
      {
        v16 = *v13;
        v17 = *v13 - result;
        if (*v13 <= result)
        {
          v17 = 0.0;
        }

        v18 = v16 + result;
        if (v16 < -result)
        {
          v19 = v16 + result;
        }

        else
        {
          v19 = v17;
        }

        if (*v12 > 0.0)
        {
          v15 = v18;
        }

        else
        {
          v15 = v19;
        }
      }

      else
      {
        v15 = *v13 - result;
      }

      *v11++ = v15;
      ++v12;
      ++v13;
      --v14;
    }

    while (v14);
  }

  if (a6 < a4)
  {
    v20 = &a3[a6];
    v21 = &a1[a6];
    v22 = a4 - a6;
    do
    {
      v23 = *v20++;
      result = v23;
      *v21++ = v23;
      --v22;
    }

    while (v22);
  }

  return result;
}

uint64_t update_trial_interval(double *a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double a9, double a10, double *a11, int *a12)
{
  v12 = *a11;
  v13 = *a3;
  v14 = *a12;
  if (*a12)
  {
    v15 = *a7;
    v16 = *a1;
    v17 = *a4;
    if (*a1 > *a4)
    {
      v18 = *a4;
    }

    else
    {
      v18 = *a1;
    }

    if (v15 <= v18)
    {
      return 4294966293;
    }

    if (v16 >= v17)
    {
      v17 = *a1;
    }

    if (v17 <= v15)
    {
      return 4294966293;
    }

    if (v13 * (v15 - v16) >= 0.0)
    {
      return 4294966302;
    }

    if (a10 < a9)
    {
      return 4294966294;
    }
  }

  v20 = fabs(v13);
  v21 = *a2;
  v22 = *a8;
  if (*a2 >= *a8)
  {
    if (v12 * (v13 / v20) >= 0.0)
    {
      v49 = fabs(v12);
      v48 = *a7;
      if (v49 >= v20)
      {
        if (v14)
        {
          v14 = 0;
          v64 = *a4 - v48;
          v65 = v12 + (v22 - *a5) * 3.0 / v64;
          v66 = *a6;
          v67 = *a6 + v65;
          v68 = fabs(v67);
          v69 = fabs(*a6);
          if (v68 >= v49)
          {
            v49 = v68;
          }

          if (v49 < v69)
          {
            v49 = v69;
          }

          v70 = v49 * sqrt(-v12 / v49 * (v66 / v49) + v67 / v49 * (v67 / v49));
          if (*a4 >= v48)
          {
            v71 = v70;
          }

          else
          {
            v71 = -v70;
          }

          v47 = v48 + (v67 + v71 - v12) / (v66 + v71 + v71 - v12) * v64;
          v37 = 1;
        }

        else
        {
          v37 = 0;
          if (*a1 >= v48)
          {
            v47 = a9;
          }

          else
          {
            v47 = a10;
          }
        }
      }

      else
      {
        v50 = *a1;
        v51 = v48 - *a1;
        v52 = v12 + v13 + (v21 - v22) * 3.0 / v51;
        v53 = fabs(v52);
        if (v53 >= v20)
        {
          v20 = v53;
        }

        if (v20 < v49)
        {
          v20 = v49;
        }

        v54 = v52 / v20;
        v55 = -v13 / v20 * (v12 / v20) + v54 * v54;
        if (v55 <= 0.0)
        {
          v55 = 0.0;
        }

        v56 = v20 * sqrt(v55);
        v57 = -v56;
        if (v50 >= v48)
        {
          v57 = v56;
        }

        v58 = (v52 + v57 - v12) / (v13 + v57 + v57 - v12);
        if (v54 >= 0.0)
        {
          v59 = a9;
        }

        else
        {
          v59 = a10;
        }

        v60 = v58 >= 0.0 || v56 == 0.0;
        v61 = v48 - v58 * v51;
        if (v60)
        {
          v61 = v59;
        }

        v47 = v48 + v12 / (v12 - v13) * (v50 - v48);
        v62 = vabdd_f64(v48, v61);
        v63 = vabdd_f64(v48, v47);
        if (v14)
        {
          if (v62 < v63)
          {
            v47 = v61;
          }

          v37 = 1;
        }

        else
        {
          v37 = 0;
          if (v62 > v63)
          {
            v47 = v61;
          }
        }

        v14 = 1;
      }
    }

    else
    {
      v14 = 0;
      v37 = 1;
      *a12 = 1;
      v38 = *a7;
      v39 = *a1;
      v40 = *a7 - *a1;
      v41 = v12 + v13 + (v21 - v22) * 3.0 / v40;
      v42 = fabs(v41);
      v43 = fabs(v12);
      if (v42 >= v20)
      {
        v20 = v42;
      }

      if (v20 < v43)
      {
        v20 = v43;
      }

      v44 = v20 * sqrt(-v13 / v20 * (v12 / v20) + v41 / v20 * (v41 / v20));
      v45 = -v44;
      if (v38 >= v39)
      {
        v45 = v44;
      }

      v46 = v39 + (v41 + v45 - v13) / (v12 + v45 + v45 - v13) * v40;
      v47 = v38 + v12 / (v12 - v13) * (v39 - v38);
      if (vabdd_f64(v46, v38) > vabdd_f64(v47, v38))
      {
        v47 = v46;
      }

      *a4 = v39;
      *a5 = *a2;
      *a6 = *a3;
      v48 = *a7;
    }

    *a1 = v48;
    *a2 = *a8;
    *a3 = *a11;
    if (v47 <= a10)
    {
      a10 = v47;
    }

    if (a10 >= a9)
    {
      a9 = a10;
    }

    if (!v14 || !v37)
    {
      goto LABEL_86;
    }
  }

  else
  {
    *a12 = 1;
    v23 = *a7;
    v24 = *a1;
    v25 = *a7 - *a1;
    v26 = v21 - v22;
    v27 = v12 + v13 + v26 * 3.0 / v25;
    v28 = fabs(v27);
    v29 = fabs(v12);
    if (v28 >= v20)
    {
      v20 = v28;
    }

    if (v20 < v29)
    {
      v20 = v29;
    }

    v30 = v20 * sqrt(-v13 / v20 * (v12 / v20) + v27 / v20 * (v27 / v20));
    v31 = -v30;
    if (v23 >= v24)
    {
      v31 = v30;
    }

    v32 = v24 + (v27 + v31 - v13) / (v12 + v31 + v31 - v13) * v25;
    v33 = v24 + v13 / (v13 + v26 / v25) * 0.5 * v25;
    v34 = vabdd_f64(v32, v24);
    v35 = vabdd_f64(v33, v24);
    v36 = v32 + (v33 - v32) * 0.5;
    if (v34 >= v35)
    {
      v32 = v36;
    }

    *a4 = v23;
    *a5 = *a8;
    *a6 = *a11;
    if (v32 <= a10)
    {
      a10 = v32;
    }

    if (a10 >= a9)
    {
      a9 = a10;
    }
  }

  v72 = *a1 + (*a4 - *a1) * 0.66;
  if (*a1 < *a4)
  {
    if (v72 >= a9)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

  if (a9 < v72)
  {
LABEL_85:
    a9 = *a1 + (*a4 - *a1) * 0.66;
  }

LABEL_86:
  result = 0;
  *a7 = a9;
  return result;
}

void *crf_output_init(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void *crf_output_init_n(void *a1, int a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = malloc_type_calloc(a2, 4uLL, 0x100004052888210uLL);
  a1[1] = result;
  if (result)
  {
    *a1 = a2;
  }

  return result;
}

void crf_output_finish(uint64_t a1)
{
  free(*(a1 + 8));
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t crf_paragraph_get_item_count(uint64_t a1, signed int a2)
{
  if (a2 < 0 || *(a1 + 12) < a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *(*(a1 + 24) + 4 * a2);
  }
}

uint64_t crf_paragraph_get_item_count_for_sentence(uint64_t a1, signed int a2)
{
  if (a2 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 12);
  if (v2 <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 24);
  if (a2 + 1 == v2)
  {
    v4 = *(v3 + 4 * a2);
    v5 = *(a1 + 4);
  }

  else
  {
    v5 = *(v3 + 4 * (a2 + 1));
    v4 = *(v3 + 4 * a2);
  }

  return (v5 - v4);
}

uint64_t crf_paragraph_get_id(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if ((a2 & 0x80000000) != 0 || *(a1 + 12) < a2)
  {
    v4 = -1;
  }

  else
  {
    v4 = *(*(a1 + 24) + 4 * a2);
  }

  v5 = a4 + (v4 + a3) * *a1;
  if (v5 < 0 || v5 >= *(a1 + 4) * *a1)
  {
    crf_paragraph_get_id_cold_1();
  }

  return *(*(a1 + 32) + 4 * v5);
}

void crf_paragraph_set_id(int *a1, unsigned int a2, int a3, int a4, int a5)
{
  if (a1[3] == a2)
  {
    *(*(a1 + 3) + 4 * a2) = a1[1];
  }

  if ((a2 & 0x80000000) != 0 || a1[3] < a2)
  {
    v8 = -1;
  }

  else
  {
    v8 = *(*(a1 + 3) + 4 * a2);
  }

  v9 = v8 + a3;
  v10 = *a1;
  v11 = a4 + v9 * v10;
  if ((v11 & 0x80000000) != 0)
  {
    crf_paragraph_set_id_cold_1();
  }

  v12 = a1[2];
  if ((v11 + 1) >= v12 * v10)
  {
    v13 = 4 * v10;
    v14 = v13 * v12;
    v15 = 2 * v12;
    a1[2] = v15;
    v16 = v13 * v15;
    v17 = malloc_type_realloc(*(a1 + 4), v16, 0xE39AAD01uLL);
    *(a1 + 4) = v17;
    bzero(&v17[v14], v16 - v14);
  }

  v18 = a1[4];
  if ((a2 + 1) >= v18)
  {
    a1[4] = 2 * v18;
    *(a1 + 3) = malloc_type_realloc(*(a1 + 3), 8 * v18, 0x100004052888210uLL);
  }

  if (a1[3] == a2)
  {
    a1[3] = a2 + 1;
  }

  if (v9 == a1[1])
  {
    a1[1] = v9 + 1;
  }

  *(*(a1 + 4) + 4 * v11) = a5;
}

double crf_data_init(_OWORD *a1)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double crf_data_finish(int *a1)
{
  if (*a1 >= 1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      crf_sequence_finish((*(a1 + 3) + v2));
      ++v3;
      v2 += 16;
    }

    while (v3 < *a1);
  }

  free(*(a1 + 3));
  result = 0.0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  return result;
}

void crf_sequence_finish(int *a1)
{
  if (*a1 >= 1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(a1 + 1) + v2;
      free(*(v4 + 8));
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      ++v3;
      v2 += 24;
    }

    while (v3 < *a1);
  }

  free(*(a1 + 1));
  *a1 = 0;
  *(a1 + 1) = 0;
}

uint64_t crf_data_append(int *a1, uint64_t *a2)
{
  if (*a2 >= 1)
  {
    v4 = *a1;
    v5 = a1[1];
    if (v5 <= *a1)
    {
      v7 = 2 * v5 + 2;
      a1[1] = v7;
      v6 = malloc_type_realloc(*(a1 + 3), 16 * v7, 0x10200405730B0C9uLL);
      *(a1 + 3) = v6;
      v4 = *a1;
    }

    else
    {
      v6 = *(a1 + 3);
    }

    *a1 = v4 + 1;
    crf_sequence_copy(&v6[4 * v4], a2);
  }

  return 0;
}

void crf_sequence_copy(int *a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + 1) = malloc_type_calloc(v4, 0x18uLL, 0x1020040BC38B472uLL);
  if (*a1 >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      crf_item_copy((*(a1 + 1) + v5), (a2[1] + v5));
      ++v6;
      v5 += 24;
    }

    while (v6 < *a1);
  }
}

unint64_t crf_data_maxlength(unint64_t result)
{
  v1 = *result;
  if (v1 < 1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = *(v2 + 24);
  do
  {
    v5 = *v3;
    v3 += 4;
    v4 = v5;
    if (result <= v5)
    {
      result = v4;
    }

    else
    {
      result = result;
    }

    --v1;
  }

  while (v1);
  return result;
}

unint64_t crf_data_totalitems(unint64_t result)
{
  v1 = *result;
  if (v1 < 1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = *(v2 + 24);
  do
  {
    v4 = *v3;
    v3 += 4;
    result = (v4 + result);
    --v1;
  }

  while (v1);
  return result;
}

void *crf_sequence_init(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void crf_item_finish(uint64_t a1)
{
  free(*(a1 + 8));
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t crf_sequence_append(int *a1, uint64_t *a2, int a3)
{
  v6 = *a1;
  v7 = a1[1];
  if (v7 <= *a1)
  {
    v9 = 2 * v7 + 2;
    a1[1] = v9;
    v8 = malloc_type_realloc(*(a1 + 1), 24 * v9, 0x1020040BC38B472uLL);
    *(a1 + 1) = v8;
    v6 = *a1;
  }

  else
  {
    v8 = *(a1 + 1);
  }

  crf_item_copy(&v8[6 * v6], a2);
  v10 = *a1;
  *(*(a1 + 1) + 24 * v10 + 16) = a3;
  *a1 = v10 + 1;
  return 0;
}

double crf_item_copy(unsigned int *a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  a1[4] = *(a2 + 4);
  v5 = malloc_type_calloc(v4, 0x10uLL, 0x1000040F7F8B94BuLL);
  *(a1 + 1) = v5;
  v7 = *a1;
  if (v7 >= 1)
  {
    v8 = (a2[1] + 8);
    v9 = v5 + 8;
    do
    {
      *(v9 - 2) = *(v8 - 2);
      v10 = *v8;
      v8 += 2;
      result = v10;
      *v9 = v10;
      v9 += 2;
      --v7;
    }

    while (v7);
  }

  return result;
}

void *crf_item_init(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

double crf_content_copy(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t crf_content_set(uint64_t result, int a2, double a3)
{
  *result = 0;
  *result = a2;
  *(result + 8) = a3;
  return result;
}

void *crf_content_init(void *result)
{
  *result = 0;
  result[1] = 0x3FF0000000000000;
  return result;
}

uint64_t crf_item_append_content(int *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  if (v5 <= *a1)
  {
    v7 = 2 * v5 + 2;
    a1[1] = v7;
    v6 = malloc_type_realloc(*(a1 + 1), 16 * v7, 0x1000040F7F8B94BuLL);
    *(a1 + 1) = v6;
    v4 = *a1;
  }

  else
  {
    v6 = *(a1 + 1);
  }

  *a1 = v4 + 1;
  v8 = &v6[16 * v4];
  *v8 = *a2;
  *(v8 + 1) = *(a2 + 8);
  return 0;
}

void crf_paragraph_init_with_attrs(int *a1, int a2)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 4) = 0;
  *a1 = a2;
  *(a1 + 1) = xmmword_2977327E0;
  *(a1 + 3) = malloc_type_malloc(8uLL, 0x100004052888210uLL);
  __memset_chk();
  v3 = malloc_type_malloc(4 * *a1 * a1[2], 0x100004052888210uLL);
  *(a1 + 4) = v3;
  v4 = 4 * *a1 * a1[2];

  bzero(v3, v4);
}

void crf_paragraph_finish(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    free(v3);
  }

  free(a1);
}

void Cache::Cache(Cache *this, int a2, uint64_t a3)
{
  *this = a2;
  *(this + 1) = a3;
  v4 = malloc_type_calloc(a2, 0x20uLL, 0x10A004007F91357uLL);
  v5 = *this;
  v6 = (*(this + 1) >> 2) - 8 * (v5 & 0x7FFFFFFFFFFFFFFLL);
  v7 = v6 <= 2 * v5;
  v8 = 2 * v5;
  if (v7)
  {
    v6 = v8;
  }

  *(this + 1) = v6;
  *(this + 2) = v4;
  *(this + 3) = this + 24;
  *(this + 4) = this + 24;
}

void Cache::~Cache(Cache *this)
{
  v2 = this + 24;
  for (i = *(this + 4); i != v2; i = *(i + 8))
  {
    free(*(i + 16));
  }

  free(*(this + 2));
}

void Cache::lru_delete(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *(v3 + 8) = v2;
  *v2 = v3;
}

uint64_t Cache::lru_insert(uint64_t a1, void *a2)
{
  v3 = *(a1 + 24);
  result = a1 + 24;
  *a2 = v3;
  a2[1] = result;
  *(v3 + 8) = a2;
  *a2[1] = a2;
  return result;
}

uint64_t Cache::get_data(Cache *this, int a2, float **a3, uint64_t a4)
{
  v4 = a4;
  v7 = *(this + 2) + 32 * a2;
  v8 = *(v7 + 24);
  if (v8)
  {
    v10 = *v7;
    v9 = *(v7 + 8);
    *(v10 + 8) = v9;
    *v9 = v10;
  }

  v11 = (a4 - v8);
  if (a4 <= v8)
  {
    v16 = *(v7 + 16);
  }

  else
  {
    if (*(this + 1) < v11)
    {
      do
      {
        v12 = *(this + 4);
        v14 = *v12;
        v13 = v12[1];
        *(v14 + 8) = v13;
        *v13 = v14;
        free(v12[2]);
        v15 = *(this + 1) + *(v12 + 6);
        *(this + 1) = v15;
        v12[2] = 0;
        *(v12 + 6) = 0;
      }

      while (v15 < v11);
    }

    v16 = malloc_type_realloc(*(v7 + 16), 4 * v4, 0x100004052888210uLL);
    *(v7 + 16) = v16;
    *(this + 1) -= v11;
    v17 = *(v7 + 24);
    *(v7 + 24) = v4;
    v4 = v17;
  }

  v18 = *(this + 3);
  *v7 = v18;
  *(v7 + 8) = this + 24;
  *(v18 + 8) = v7;
  **(v7 + 8) = v7;
  *a3 = v16;
  return v4;
}

void Cache::swap_index(Cache *this, int a2, int a3)
{
  if (a2 != a3)
  {
    v4 = *(this + 2);
    v5 = (v4 + 32 * a2);
    if (*(v5 + 6))
    {
      v7 = *v5;
      v6 = v5[1];
      *(v7 + 8) = v6;
      *v6 = v7;
    }

    v8 = (v4 + 32 * a3);
    if (*(v8 + 6))
    {
      v10 = *v8;
      v9 = v8[1];
      *(v10 + 8) = v9;
      *v9 = v10;
    }

    v11 = v5[2];
    v5[2] = v8[2];
    v8[2] = v11;
    v12 = *(this + 2);
    v13 = v12 + 32 * a2;
    v14 = v12 + 32 * a3;
    v15 = *(v13 + 24);
    *(v13 + 24) = *(v14 + 24);
    *(v14 + 24) = v15;
    if (*(v13 + 24))
    {
      v16 = *(this + 3);
      *v13 = v16;
      *(v13 + 8) = this + 24;
      *(v16 + 8) = v13;
      **(v13 + 8) = v13;
    }

    if (v15)
    {
      v17 = *(this + 3);
      *v14 = v17;
      *(v14 + 8) = this + 24;
      *(v17 + 8) = v14;
      **(v14 + 8) = v14;
    }

    if (a2 >= a3)
    {
      v18 = a3;
    }

    else
    {
      v18 = a2;
    }

    if (a2 <= a3)
    {
      v19 = a3;
    }

    else
    {
      v19 = a2;
    }

    v20 = this + 24;
    v21 = *(this + 4);
    if (v21 != this + 24)
    {
      do
      {
        v22 = *(v21 + 6);
        if (v22 > v18)
        {
          if (v22 <= v19)
          {
            v26 = *v21;
            v25 = *(v21 + 1);
            *(v26 + 8) = v25;
            *v25 = v26;
            free(*(v21 + 2));
            *(this + 1) += *(v21 + 6);
            *(v21 + 2) = 0;
            *(v21 + 6) = 0;
          }

          else
          {
            v23 = *(v21 + 2);
            v24 = *(v23 + 4 * v18);
            *(v23 + 4 * v18) = *(v23 + 4 * v19);
            *(v23 + 4 * v19) = v24;
          }
        }

        v21 = *(v21 + 1);
      }

      while (v21 != v20);
    }
  }
}

void Kernel::Kernel(uint64_t a1, int a2, const void *a3, uint64_t a4)
{
  *a1 = &unk_2A1E51DE8;
  v4 = *(a4 + 4);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a4 + 16);
  v5 = Kernel::kernel_linear;
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_12;
      }

      v5 = Kernel::kernel_poly;
    }
  }

  else
  {
    switch(v4)
    {
      case 2:
        v5 = Kernel::kernel_rbf;
        break;
      case 3:
        v5 = Kernel::kernel_sigmoid;
        break;
      case 4:
        v5 = Kernel::kernel_precomputed;
        break;
      default:
        goto LABEL_12;
    }
  }

  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
LABEL_12:
  operator new[]();
}

double Kernel::kernel_linear(Kernel *this, int a2, int a3)
{
  v3 = *(this + 3);
  v4 = *(v3 + 8 * a2);
  v5 = *v4;
  if (*v4 == -1)
  {
    return 0.0;
  }

  v6 = *(v3 + 8 * a3);
  result = 0.0;
  do
  {
    v8 = *v6;
    if (*v6 == -1)
    {
      break;
    }

    if (v5 == v8)
    {
      result = result + v4[1] * v6[1];
      v4 += 2;
      v6 += 2;
    }

    else if (v5 > v8)
    {
      v6 += 2;
    }

    else
    {
      v4 += 2;
    }

    v5 = *v4;
  }

  while (*v4 != -1);
  return result;
}

double Kernel::kernel_poly(Kernel *this, int a2, int a3)
{
  v3 = *(this + 3);
  v4 = *(v3 + 8 * a2);
  v5 = *v4;
  if (*v4 == -1)
  {
    v7 = 0.0;
  }

  else
  {
    v6 = *(v3 + 8 * a3);
    v7 = 0.0;
    do
    {
      v8 = *v6;
      if (*v6 == -1)
      {
        break;
      }

      if (v5 == v8)
      {
        v7 = v7 + v4[1] * v6[1];
        v4 += 2;
        v6 += 2;
      }

      else if (v5 > v8)
      {
        v6 += 2;
      }

      else
      {
        v4 += 2;
      }

      v5 = *v4;
    }

    while (*v4 != -1);
  }

  v9 = *(this + 11);
  if (v9 < 1)
  {
    return 1.0;
  }

  v10 = *(this + 7) + *(this + 6) * v7;
  result = 1.0;
  do
  {
    if (v9)
    {
      result = result * v10;
    }

    v10 = v10 * v10;
    v12 = v9 > 1;
    v9 = v9 >> 1;
  }

  while (v12);
  return result;
}

long double Kernel::kernel_rbf(Kernel *this, int a2, int a3)
{
  v4 = *(this + 3);
  v3 = *(this + 4);
  v5 = *(v3 + 8 * a2);
  v6 = *(v3 + 8 * a3);
  v7 = *(v4 + 8 * a2);
  v8 = *v7;
  if (*v7 == -1)
  {
    v10 = 0.0;
  }

  else
  {
    v9 = *(v4 + 8 * a3);
    v10 = 0.0;
    do
    {
      v11 = *v9;
      if (*v9 == -1)
      {
        break;
      }

      if (v8 == v11)
      {
        v10 = v10 + v7[1] * v9[1];
        v7 += 2;
        v9 += 2;
      }

      else if (v8 > v11)
      {
        v9 += 2;
      }

      else
      {
        v7 += 2;
      }

      v8 = *v7;
    }

    while (*v7 != -1);
  }

  return exp(-(*(this + 6) * (v5 + v6 + v10 * -2.0)));
}

long double Kernel::kernel_sigmoid(Kernel *this, int a2, int a3)
{
  v3 = *(this + 3);
  v4 = *(v3 + 8 * a2);
  v5 = *v4;
  if (*v4 == -1)
  {
    v7 = 0.0;
  }

  else
  {
    v6 = *(v3 + 8 * a3);
    v7 = 0.0;
    do
    {
      v8 = *v6;
      if (*v6 == -1)
      {
        break;
      }

      if (v5 == v8)
      {
        v7 = v7 + v4[1] * v6[1];
        v4 += 2;
        v6 += 2;
      }

      else if (v5 > v8)
      {
        v6 += 2;
      }

      else
      {
        v4 += 2;
      }

      v5 = *v4;
    }

    while (*v4 != -1);
  }

  return tanh(*(this + 7) + *(this + 6) * v7);
}

double *Kernel::dot(double *result, double *a2)
{
  v2 = *result;
  v3 = 0.0;
  while (v2 != -1)
  {
    v4 = *a2;
    if (*a2 == -1)
    {
      break;
    }

    if (v2 == v4)
    {
      v3 = v3 + result[1] * a2[1];
      result += 2;
      a2 += 2;
    }

    else if (v2 > v4)
    {
      a2 += 2;
    }

    else
    {
      result += 2;
    }

    v2 = *result;
  }

  return result;
}

void Kernel::~Kernel(Kernel *this)
{
  *this = &unk_2A1E51DE8;
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x29C272E90](v2, 0x60C8044C4A2DFLL);
  }

  v3 = *(this + 4);
  if (v3)
  {
    MEMORY[0x29C272E90](v3, 0x1000C8000313F17);
  }
}

double Kernel::k_function(double *a1, double *a2, uint64_t a3)
{
  v3 = *(a3 + 4);
  result = 0.0;
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        while (1)
        {
          v8 = *a1;
          if (*a1 == -1)
          {
            break;
          }

          v9 = *a2;
          if (*a2 == -1)
          {
            break;
          }

          if (v8 == v9)
          {
            result = result + a1[1] * a2[1];
            a1 += 2;
            a2 += 2;
          }

          else if (v8 > v9)
          {
            a2 += 2;
          }

          else
          {
            a1 += 2;
          }
        }

        v15 = *(a3 + 8);
        if (v15 < 1)
        {
          return 1.0;
        }

        else
        {
          v16 = *(a3 + 24) + *(a3 + 16) * result;
          result = 1.0;
          do
          {
            if (v15)
            {
              result = result * v16;
            }

            v16 = v16 * v16;
            v17 = v15 >= 2;
            v15 = v15 >> 1;
          }

          while (v17);
        }
      }
    }

    else
    {
      while (1)
      {
        v11 = *a1;
        if (*a1 == -1)
        {
          break;
        }

        v10 = *a2;
        if (*a2 == -1)
        {
          break;
        }

        if (v11 == v10)
        {
          result = result + a1[1] * a2[1];
          a1 += 2;
          a2 += 2;
        }

        else if (v11 > v10)
        {
          a2 += 2;
        }

        else
        {
          a1 += 2;
        }
      }
    }
  }

  else
  {
    switch(v3)
    {
      case 4:
        return a1[2 * a2[1] + 1];
      case 3:
        v12 = *a1;
        v13 = 0.0;
        while (v12 != -1)
        {
          v14 = *a2;
          if (*a2 == -1)
          {
            break;
          }

          if (v12 == v14)
          {
            v13 = v13 + a1[1] * a2[1];
            a1 += 2;
            a2 += 2;
          }

          else if (v12 > v14)
          {
            a2 += 2;
          }

          else
          {
            a1 += 2;
          }

          v12 = *a1;
        }

        return tanh(*(a3 + 24) + *(a3 + 16) * v13);
      case 2:
        while (1)
        {
          v5 = *a1;
          if (*a1 == -1)
          {
            break;
          }

          v6 = *a2;
          if (*a2 == -1)
          {
            v18 = a1 + 2;
            do
            {
              result = result + *(v18 - 1) * *(v18 - 1);
              v19 = *v18;
              v18 += 2;
            }

            while (v19 != -1);
            break;
          }

          if (v5 == v6)
          {
            v7 = a1[1] - a2[1];
            result = result + v7 * v7;
            a1 += 2;
            a2 += 2;
          }

          else if (v5 <= v6)
          {
            result = result + a1[1] * a1[1];
            a1 += 2;
          }

          else
          {
            result = result + a2[1] * a2[1];
            a2 += 2;
          }
        }

        if (*a2 != -1)
        {
          v20 = a2 + 2;
          do
          {
            result = result + *(v20 - 1) * *(v20 - 1);
            v21 = *v20;
            v20 += 2;
          }

          while (v21 != -1);
        }

        return exp(-(*(a3 + 16) * result));
    }
  }

  return result;
}

double Solver::swap_index(Solver *this, int a2, int a3)
{
  (*(**(this + 6) + 16))(*(this + 6));
  v6 = *(this + 2);
  v7 = *(v6 + a2);
  *(v6 + a2) = *(v6 + a3);
  *(v6 + a3) = v7;
  v8 = *(this + 3);
  v9 = *(this + 4);
  v10 = *(v8 + 8 * a2);
  *(v8 + 8 * a2) = *(v8 + 8 * a3);
  *(v8 + 8 * a3) = v10;
  LOBYTE(v8) = *(v9 + a2);
  *(v9 + a2) = *(v9 + a3);
  *(v9 + a3) = v8;
  v11 = *(this + 5);
  v12 = *(v11 + 8 * a2);
  *(v11 + 8 * a2) = *(v11 + 8 * a3);
  *(v11 + 8 * a3) = v12;
  v13 = *(this + 11);
  v14 = *(this + 12);
  v15 = *(v13 + 8 * a2);
  *(v13 + 8 * a2) = *(v13 + 8 * a3);
  *(v13 + 8 * a3) = v15;
  LODWORD(v13) = *(v14 + 4 * a2);
  *(v14 + 4 * a2) = *(v14 + 4 * a3);
  *(v14 + 4 * a3) = v13;
  v16 = *(this + 13);
  result = *(v16 + 8 * a2);
  *(v16 + 8 * a2) = *(v16 + 8 * a3);
  *(v16 + 8 * a3) = result;
  return result;
}

uint64_t Solver::reconstruct_gradient(uint64_t this)
{
  v1 = *(this + 8);
  v2 = *(this + 112);
  if (v1 != v2)
  {
    v3 = this;
    if (v1 < v2)
    {
      v4 = (*(this + 104) + 8 * v1);
      v5 = (*(this + 88) + 8 * v1);
      v6 = (*(this + 24) + 8 * v1);
      v7 = v2 - v1;
      do
      {
        v8 = *v4++;
        v9 = v8;
        v10 = *v5++;
        *v6++ = v9 + v10;
        --v7;
      }

      while (v7);
    }

    if (v1 < 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = 0;
      v12 = *(this + 32);
      v13 = v1;
      do
      {
        v14 = *v12++;
        if (v14 == 2)
        {
          ++v11;
        }

        --v13;
      }

      while (v13);
    }

    if (v1 > 2 * v11)
    {
      this = info("\nWarning: using -h 0 may be faster\n");
      v2 = *(v3 + 112);
      v1 = *(v3 + 8);
    }

    if (v2 * v11 <= 2 * v1 * (v2 - v1))
    {
      if (v1 >= 1)
      {
        v19 = 0;
        do
        {
          if (*(*(v3 + 32) + v19) == 2)
          {
            this = (***(v3 + 48))(*(v3 + 48), v19);
            LODWORD(v1) = *(v3 + 8);
            v20 = *(v3 + 112);
            if (v1 < v20)
            {
              v21 = *(*(v3 + 40) + 8 * v19);
              v22 = (this + 4 * v1);
              v23 = (*(v3 + 24) + 8 * v1);
              v24 = v20 - v1;
              do
              {
                v25 = *v22++;
                *v23 = *v23 + v21 * v25;
                ++v23;
                --v24;
              }

              while (v24);
            }
          }

          ++v19;
        }

        while (v19 < v1);
      }
    }

    else if (v2 > v1)
    {
      v15 = v1;
      v16 = v1;
      do
      {
        this = (***(v3 + 48))(*(v3 + 48), v15, v16);
        v16 = *(v3 + 8);
        if (v16 >= 1)
        {
          v17 = 0;
          v18 = *(v3 + 32);
          do
          {
            if (*(v18 + v17) == 2)
            {
              *(*(v3 + 24) + 8 * v15) = *(*(v3 + 24) + 8 * v15) + *(*(v3 + 40) + 8 * v17) * *(this + 4 * v17);
            }

            ++v17;
          }

          while (v16 != v17);
        }

        ++v15;
      }

      while (v15 < *(v3 + 112));
    }
  }

  return this;
}

uint64_t info(const char *a1, ...)
{
  va_start(va, a1);
  v3 = *MEMORY[0x29EDCA608];
  vsprintf(v2, a1, va);
  return svm_print_string(v2);
}

void Solver::Solve(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5, const void *a6, uint64_t a7, int a8, double a9, double a10, double a11)
{
  *(a1 + 112) = a2;
  *(a1 + 48) = a3;
  *(a1 + 56) = (*(*a3 + 8))(a3);
  operator new[]();
}

uint64_t Solver::select_working_set(Solver *this, int *a2, int *a3)
{
  v6 = *(this + 2);
  if (v6 < 1)
  {
    LODWORD(v8) = -1;
    v9 = -INFINITY;
    v12 = -1;
    v13 = -INFINITY;
    goto LABEL_35;
  }

  v7 = 0;
  v8 = 0xFFFFFFFFLL;
  v9 = -INFINITY;
  do
  {
    if (*(*(this + 2) + v7) == 1)
    {
      if (*(*(this + 4) + v7) != 1)
      {
        v10 = -*(*(this + 3) + 8 * v7);
        if (v9 <= v10)
        {
          goto LABEL_9;
        }
      }
    }

    else if (*(*(this + 4) + v7))
    {
      v10 = *(*(this + 3) + 8 * v7);
      if (v10 >= v9)
      {
LABEL_9:
        v8 = v7;
        v9 = v10;
      }
    }

    ++v7;
  }

  while (v6 != v7);
  if (v8 == -1)
  {
    v11 = 0;
    LODWORD(v8) = -1;
  }

  else
  {
    v11 = (***(this + 6))(*(this + 6), v8);
    LODWORD(v6) = *(this + 2);
  }

  if (v6 >= 1)
  {
    v14 = 0;
    v15 = *(this + 2);
    v12 = -1;
    v16 = INFINITY;
    v13 = -INFINITY;
    while (1)
    {
      if (*(v15 + v14) == 1)
      {
        if (!*(*(this + 4) + v14))
        {
          goto LABEL_32;
        }

        v17 = *(this + 3);
        v18 = *(v17 + 8 * v14);
        v19 = v9 + v18;
        if (v18 >= v13)
        {
          v13 = *(v17 + 8 * v14);
        }

        if (v19 <= 0.0)
        {
          goto LABEL_32;
        }

        v20 = *(*(this + 7) + 8 * v8) + *(*(this + 7) + 8 * v14);
        v21 = *(v11 + 4 * v14);
        v22 = *(v15 + v8) * -2.0;
      }

      else
      {
        if (*(*(this + 4) + v14) == 1)
        {
          goto LABEL_32;
        }

        v23 = *(*(this + 3) + 8 * v14);
        v19 = v9 - v23;
        v24 = -v23;
        if (v13 <= v24)
        {
          v13 = v24;
        }

        if (v19 <= 0.0)
        {
          goto LABEL_32;
        }

        v20 = *(*(this + 7) + 8 * v8) + *(*(this + 7) + 8 * v14);
        v22 = *(v15 + v8) + *(v15 + v8);
        v21 = *(v11 + 4 * v14);
      }

      v25 = v20 + v22 * v21;
      v26 = -(v19 * v19);
      if (v25 <= 0.0)
      {
        v25 = 1.0e-12;
      }

      v27 = v26 / v25;
      if (v27 <= v16)
      {
        v16 = v27;
        v12 = v14;
      }

LABEL_32:
      if (v6 == ++v14)
      {
        goto LABEL_35;
      }
    }
  }

  v12 = -1;
  v13 = -INFINITY;
LABEL_35:
  if (v9 + v13 < *(this + 8))
  {
    return 1;
  }

  result = 0;
  *a2 = v8;
  *a3 = v12;
  return result;
}

BOOL Solver::be_shrunk(Solver *this, int a2, double a3, double a4)
{
  if (*(*(this + 4) + a2))
  {
    if (*(*(this + 4) + a2) != 1)
    {
      return 0;
    }

    v4 = -*(*(this + 3) + 8 * a2);
    if (*(*(this + 2) + a2) == 1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4 = *(*(this + 3) + 8 * a2);
    if (*(*(this + 2) + a2) != 1)
    {
LABEL_4:
      v5 = v4 <= a3;
      return !v5;
    }
  }

  v5 = v4 <= a4;
  return !v5;
}

void Solver::do_shrinking(Solver *this)
{
  v2 = *(this + 2);
  if (v2 < 1)
  {
    v8 = -INFINITY;
    v6 = -INFINITY;
  }

  else
  {
    v4 = *(this + 3);
    v3 = *(this + 4);
    v5 = *(this + 2);
    v6 = -INFINITY;
    v7 = *(this + 2);
    v8 = -INFINITY;
    do
    {
      v10 = *v5++;
      v9 = v10;
      v12 = *v3++;
      v11 = v12;
      v13 = *v4;
      if (v9 == 1)
      {
        if (v11 == 1)
        {
          goto LABEL_8;
        }

        if (v8 <= -v13)
        {
          v8 = -v13;
        }

        if (v11)
        {
LABEL_8:
          if (v13 >= v6)
          {
            v6 = *v4;
          }
        }
      }

      else
      {
        if (v11 == 1)
        {
          goto LABEL_15;
        }

        if (v6 <= -v13)
        {
          v6 = -v13;
        }

        if (v11)
        {
LABEL_15:
          if (v13 >= v8)
          {
            v8 = *v4;
          }
        }
      }

      ++v4;
      --v7;
    }

    while (v7);
  }

  if ((*(this + 116) & 1) == 0 && v8 + v6 <= *(this + 8) * 10.0)
  {
    *(this + 116) = 1;
    Solver::reconstruct_gradient(this);
    *(this + 2) = *(this + 28);
    info("*");
    v2 = *(this + 2);
  }

  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      if (Solver::be_shrunk(this, i, v8, v6))
      {
        while (1)
        {
          *(this + 2) = --v2;
          if (v2 <= i)
          {
            break;
          }

          if (!Solver::be_shrunk(this, v2, v8, v6))
          {
            Solver::swap_index(this, i, v2);
            v2 = *(this + 2);
            break;
          }
        }
      }
    }
  }
}

double Solver::calculate_rho(Solver *this)
{
  v1 = *(this + 2);
  if (v1 < 1)
  {
    v7 = INFINITY;
    v8 = -INFINITY;
  }

  else
  {
    v2 = 0;
    v3 = *(this + 2);
    v4 = *(this + 3);
    v5 = *(this + 4);
    v6 = 0.0;
    v7 = INFINITY;
    v8 = -INFINITY;
    do
    {
      v10 = *v3++;
      v9 = v10;
      v11 = v10;
      v12 = *v4++;
      v13 = v12 * v11;
      LODWORD(v12) = *v5++;
      v14 = LODWORD(v12);
      if (v8 <= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v8;
      }

      if (v7 >= v13)
      {
        v16 = v13;
      }

      else
      {
        v16 = v7;
      }

      if (v9 == 1)
      {
        v15 = v8;
      }

      else
      {
        v16 = v7;
      }

      v17 = v6 + v13;
      if (v8 <= v13)
      {
        v18 = v13;
      }

      else
      {
        v18 = v8;
      }

      if (v7 < v13)
      {
        v13 = v7;
      }

      if (v9 == 255)
      {
        v18 = v8;
      }

      else
      {
        v13 = v7;
      }

      if (v14 == 1)
      {
        v19 = v2;
      }

      else
      {
        v19 = v2 + 1;
      }

      if (v14 == 1)
      {
        v7 = v13;
        v8 = v18;
        v20 = v6;
      }

      else
      {
        v20 = v17;
      }

      if (v14)
      {
        v2 = v19;
      }

      else
      {
        v7 = v16;
        v8 = v15;
      }

      if (v14)
      {
        v6 = v20;
      }

      --v1;
    }

    while (v1);
    if (v2 > 0)
    {
      return v6 / v2;
    }
  }

  return (v7 + v8) * 0.5;
}

uint64_t Solver_NU::select_working_set(Solver_NU *this, int *a2, int *a3)
{
  v6 = *(this + 2);
  if (v6 < 1)
  {
    LODWORD(v8) = -1;
    v9 = -INFINITY;
    v10 = -INFINITY;
    LODWORD(v11) = -1;
    v13 = -1;
    v14 = -INFINITY;
    v15 = -INFINITY;
  }

  else
  {
    v7 = 0;
    v8 = 0xFFFFFFFFLL;
    v9 = -INFINITY;
    v10 = -INFINITY;
    v11 = 0xFFFFFFFFLL;
    do
    {
      if (*(*(this + 2) + v7) == 1)
      {
        if (*(*(this + 4) + v7) != 1 && v9 <= -*(*(this + 3) + 8 * v7))
        {
          v8 = v7;
          v9 = -*(*(this + 3) + 8 * v7);
        }
      }

      else if (*(*(this + 4) + v7) && *(*(this + 3) + 8 * v7) >= v10)
      {
        v11 = v7;
        v10 = *(*(this + 3) + 8 * v7);
      }

      ++v7;
    }

    while (v6 != v7);
    if (v8 == -1)
    {
      v12 = 0;
    }

    else
    {
      v12 = (***(this + 6))(*(this + 6), v8);
      v6 = *(this + 2);
    }

    if (v11 == -1)
    {
      v16 = 0;
    }

    else
    {
      v16 = (***(this + 6))(*(this + 6), v11, v6);
      LODWORD(v6) = *(this + 2);
    }

    if (v6 >= 1)
    {
      v17 = 0;
      v13 = -1;
      v18 = INFINITY;
      v15 = -INFINITY;
      v14 = -INFINITY;
      while (1)
      {
        if (*(*(this + 2) + v17) == 1)
        {
          if (!*(*(this + 4) + v17))
          {
            goto LABEL_34;
          }

          v19 = *(this + 3);
          v20 = *(v19 + 8 * v17);
          v21 = v9 + v20;
          if (v20 >= v15)
          {
            v15 = *(v19 + 8 * v17);
          }

          v22 = v8;
          v23 = v12;
          if (v21 <= 0.0)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (*(*(this + 4) + v17) == 1)
          {
            goto LABEL_34;
          }

          v24 = *(*(this + 3) + 8 * v17);
          v21 = v10 - v24;
          v25 = -v24;
          if (v14 <= v25)
          {
            v14 = v25;
          }

          v22 = v11;
          v23 = v16;
          if (v21 <= 0.0)
          {
            goto LABEL_34;
          }
        }

        v26 = *(*(this + 7) + 8 * v22) + *(*(this + 7) + 8 * v17) - (*(v23 + 4 * v17) + *(v23 + 4 * v17));
        v27 = -(v21 * v21);
        if (v26 <= 0.0)
        {
          v26 = 1.0e-12;
        }

        v28 = v27 / v26;
        if (v28 <= v18)
        {
          v13 = v17;
          v18 = v28;
        }

LABEL_34:
        if (v6 == ++v17)
        {
          goto LABEL_37;
        }
      }
    }

    v13 = -1;
    v14 = -INFINITY;
    v15 = -INFINITY;
  }

LABEL_37:
  v29 = v9 + v15;
  v30 = v10 + v14;
  if (v29 > v30)
  {
    v30 = v29;
  }

  if (v30 < *(this + 8))
  {
    return 1;
  }

  result = 0;
  if (*(*(this + 2) + v13) == 1)
  {
    v32 = v8;
  }

  else
  {
    v32 = v11;
  }

  *a2 = v32;
  *a3 = v13;
  return result;
}

BOOL Solver_NU::be_shrunk(Solver_NU *this, int a2, double a3, double a4, double a5, double a6)
{
  if (*(*(this + 4) + a2))
  {
    if (*(*(this + 4) + a2) != 1)
    {
      return 0;
    }

    v6 = -*(*(this + 3) + 8 * a2);
    if (*(*(this + 2) + a2) == 1)
    {
      v7 = v6 <= a3;
    }

    else
    {
      v7 = v6 <= a6;
    }
  }

  else
  {
    v8 = *(*(this + 3) + 8 * a2);
    if (*(*(this + 2) + a2) == 1)
    {
      v7 = v8 <= a4;
    }

    else
    {
      v7 = v8 <= a5;
    }
  }

  return !v7;
}

void Solver_NU::do_shrinking(Solver_NU *this)
{
  v2 = *(this + 2);
  if (v2 < 1)
  {
    v7 = -INFINITY;
    v6 = -INFINITY;
    v5 = -INFINITY;
    v4 = -INFINITY;
  }

  else
  {
    v3 = 0;
    v4 = -INFINITY;
    v5 = -INFINITY;
    v6 = -INFINITY;
    v7 = -INFINITY;
    do
    {
      v8 = *(*(this + 2) + v3);
      if (*(*(this + 4) + v3) == 1)
      {
        goto LABEL_10;
      }

      v9 = -*(*(this + 3) + 8 * v3);
      if (v8 == 1)
      {
        if (v7 < v9)
        {
          v7 = -*(*(this + 3) + 8 * v3);
        }
      }

      else if (v4 < v9)
      {
        v4 = -*(*(this + 3) + 8 * v3);
      }

      if (*(*(this + 4) + v3))
      {
LABEL_10:
        v10 = *(*(this + 3) + 8 * v3);
        if (v8 == 1)
        {
          if (v10 > v6)
          {
            v6 = *(*(this + 3) + 8 * v3);
          }
        }

        else if (v10 > v5)
        {
          v5 = *(*(this + 3) + 8 * v3);
        }
      }

      ++v3;
    }

    while (v2 != v3);
  }

  if ((*(this + 116) & 1) == 0)
  {
    v11 = v7 + v6;
    if (v7 + v6 <= v5 + v4)
    {
      v11 = v5 + v4;
    }

    if (v11 <= *(this + 8) * 10.0)
    {
      *(this + 116) = 1;
      Solver::reconstruct_gradient(this);
      LODWORD(v2) = *(this + 28);
      *(this + 2) = v2;
    }
  }

  if (v2 >= 1)
  {
    v12 = 0;
    do
    {
      if (Solver_NU::be_shrunk(this, v12, v7, v6, v5, v4))
      {
        while (1)
        {
          LODWORD(v2) = v2 - 1;
          *(this + 2) = v2;
          if (v2 <= v12)
          {
            break;
          }

          if (!Solver_NU::be_shrunk(this, v2, v7, v6, v5, v4))
          {
            Solver::swap_index(this, v12, v2);
            LODWORD(v2) = *(this + 2);
            break;
          }
        }
      }

      ++v12;
    }

    while (v12 < v2);
  }
}

double Solver_NU::calculate_rho(Solver_NU *this)
{
  v1 = *(this + 2);
  if (v1 < 1)
  {
    v3 = 0;
    v5 = 0.0;
    v6 = INFINITY;
    v7 = -INFINITY;
    v9 = -INFINITY;
    v10 = INFINITY;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0.0;
    v6 = INFINITY;
    v7 = -INFINITY;
    v8 = 0.0;
    v9 = -INFINITY;
    v10 = INFINITY;
    do
    {
      v11 = *(*(this + 4) + v2);
      if (*(*(this + 2) + v2) == 1)
      {
        if (*(*(this + 4) + v2))
        {
          if (v11 == 1)
          {
            if (v9 <= *(*(this + 3) + 8 * v2))
            {
              v9 = *(*(this + 3) + 8 * v2);
            }
          }

          else
          {
            ++v4;
            v8 = v8 + *(*(this + 3) + 8 * v2);
          }
        }

        else if (v10 >= *(*(this + 3) + 8 * v2))
        {
          v10 = *(*(this + 3) + 8 * v2);
        }
      }

      else if (*(*(this + 4) + v2))
      {
        if (v11 == 1)
        {
          if (v7 <= *(*(this + 3) + 8 * v2))
          {
            v7 = *(*(this + 3) + 8 * v2);
          }
        }

        else
        {
          ++v3;
          v5 = v5 + *(*(this + 3) + 8 * v2);
        }
      }

      else if (v6 >= *(*(this + 3) + 8 * v2))
      {
        v6 = *(*(this + 3) + 8 * v2);
      }

      ++v2;
    }

    while (v1 != v2);
    if (v4 > 0)
    {
      v12 = v8 / v4;
      goto LABEL_27;
    }
  }

  v12 = (v10 + v9) * 0.5;
LABEL_27:
  if (v3 < 1)
  {
    v13 = (v6 + v7) * 0.5;
  }

  else
  {
    v13 = v5 / v3;
  }

  *(*(this + 15) + 32) = (v12 + v13) * 0.5;
  return (v12 - v13) * 0.5;
}

char *svm_train(int *a1, __int128 *a2)
{
  v4 = malloc_type_malloc(0xB0uLL, 0x1090040ECD48006uLL);
  v5 = v4;
  v6 = *a2;
  v7 = a2[2];
  *(v4 + 1) = a2[1];
  *(v4 + 2) = v7;
  *v4 = v6;
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  *(v4 + 12) = *(a2 + 12);
  *(v4 + 4) = v9;
  *(v4 + 5) = v10;
  *(v4 + 3) = v8;
  *(v4 + 42) = 0;
  if ((*a2 - 2) <= 2)
  {
    *(v4 + 136) = 0u;
    v11 = (v4 + 136);
    *(v4 + 26) = 2;
    *(v4 + 152) = 0u;
    *(v4 + 15) = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
    if (*(a2 + 25) && (*a2 - 3) <= 1)
    {
      *v11 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
      v12 = malloc_type_malloc(8 * *a1, 0x100004000313F17uLL);
      v309 = *(a2 + 12);
      v13 = a2[4];
      v308 = a2[5];
      v14 = a2[1];
      v303 = *a2;
      v304 = v14;
      v15 = a2[2];
      v306 = a2[3];
      *v307 = v13;
      v305 = v15;
      HIDWORD(v309) = 0;
      svm_cross_validation(a1, &v303, 5, v12);
      v16 = *a1;
      if (v16 < 1)
      {
        v23 = 0;
        v25 = 0.0;
      }

      else
      {
        v17 = *(a1 + 1);
        v18 = 0.0;
        v19 = *a1;
        v20 = v12;
        do
        {
          v21 = *v17++;
          v22 = *v20;
          *v20 = v21 - *v20;
          ++v20;
          v18 = v18 + vabdd_f64(v21, v22);
          --v19;
        }

        while (v19);
        v23 = 0;
        v24 = sqrt(v18 / v16 * (v18 / v16 + v18 / v16)) * 5.0;
        v25 = 0.0;
        v26 = v16;
        v27 = v12;
        do
        {
          v28 = *v27++;
          v29 = fabs(v28);
          if (v29 > v24)
          {
            ++v23;
          }

          else
          {
            v25 = v25 + v29;
          }

          --v26;
        }

        while (v26);
      }

      v246 = v25 / (v16 - v23);
      info("Prob. model for test data: target value = predicted value + z,\nz: Laplace distribution e^(-|z|/sigma)/(2sigma),sigma= %g\n", v246);
      free(v12);
      **v11 = v246;
    }

    v215 = svm_train_one(a1, a2, 0.0, 0.0);
    v248 = v247;
    v249 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
    *(v5 + 16) = v249;
    *v249 = v248;
    v250 = *a1;
    if (v250 < 1)
    {
      v251 = 0;
    }

    else
    {
      v251 = 0;
      v252 = v215;
      do
      {
        v253 = *v252++;
        v254 = v253 < 0.0;
        if (v253 > 0.0)
        {
          v254 = 1;
        }

        v251 += v254;
        --v250;
      }

      while (v250);
    }

    *(v5 + 27) = v251;
    v255 = 8 * v251;
    *(v5 + 14) = malloc_type_malloc(v255, 0x2004093837F09uLL);
    **(v5 + 15) = malloc_type_malloc(v255, 0x100004000313F17uLL);
    v256 = *a1;
    if (v256 >= 1)
    {
      v257 = 0;
      v258 = 0;
      v259 = 8 * v256;
      do
      {
        v260 = *&v215[v257];
        if (v260 != 0.0)
        {
          *(*(v5 + 14) + 8 * v258) = *(*(a1 + 2) + v257);
          *(**(v5 + 15) + 8 * v258++) = v260;
        }

        v257 += 8;
      }

      while (v259 != v257);
    }

    goto LABEL_231;
  }

  v30 = *a1;
  v302 = 0;
  v300 = 0;
  v301 = 0;
  v299 = 0;
  v31 = malloc_type_malloc(4 * v30, 0x100004052888210uLL);
  svm_group_classes(a1, &v302, &v301, &v300, &v299, v31);
  v32 = malloc_type_malloc(8 * v30, 0x2004093837F09uLL);
  v33 = v32;
  if (v30 >= 1)
  {
    v34 = v30;
    v35 = v31;
    v36 = v32;
    do
    {
      v37 = *v35++;
      *v36++ = *(*(a1 + 2) + 8 * v37);
      --v34;
    }

    while (v34);
  }

  size = v30;
  v38 = v302;
  v39 = malloc_type_malloc(8 * v302, 0x100004000313F17uLL);
  v265 = v38 - 1;
  if (v38 >= 1)
  {
    v40 = *(a2 + 6);
    v41 = (v38 + 1) & 0xFFFFFFFE;
    v42 = vdupq_n_s64(v38 - 1);
    v43 = xmmword_297732570;
    v44 = v39 + 1;
    v45 = vdupq_n_s64(2uLL);
    do
    {
      v46 = vmovn_s64(vcgeq_u64(v42, v43));
      if (v46.i8[0])
      {
        *(v44 - 1) = v40;
      }

      if (v46.i8[4])
      {
        *v44 = v40;
      }

      v43 = vaddq_s64(v43, v45);
      v44 += 2;
      v41 -= 2;
    }

    while (v41);
  }

  v274 = v39;
  v263 = v31;
  v47 = *(a2 + 14);
  if (v47 >= 1)
  {
    v48 = 0;
    v49 = v301;
    v50 = MEMORY[0x29EDCA610];
    do
    {
      if (v38 < 1)
      {
        LODWORD(v51) = 0;
      }

      else
      {
        v51 = 0;
        while (*(*(a2 + 8) + 4 * v48) != v49[v51])
        {
          if (v38 == ++v51)
          {
            goto LABEL_32;
          }
        }
      }

      if (v51 == v38)
      {
LABEL_32:
        fprintf(*v50, "warning: class label %d specified in weight is not found\n", *(*(a2 + 8) + 4 * v48));
        v47 = *(a2 + 14);
      }

      else
      {
        v274[v51] = *(*(a2 + 9) + 8 * v48) * v274[v51];
      }

      ++v48;
    }

    while (v48 < v47);
  }

  v52 = malloc_type_malloc(size, 0x100004077774924uLL);
  v53 = v52;
  if (size >= 1)
  {
    bzero(v52, size);
  }

  v278 = v53;
  v267 = v265 * v38;
  v280 = malloc_type_malloc(16 * ((v265 * v38) / 2), 0x1080040FC6463CFuLL);
  v264 = (v265 * v38 + ((v265 * v38) >> 31)) >> 1;
  v54 = 8 * v264;
  v262 = 8 * v264;
  if (*(a2 + 25))
  {
    v288 = malloc_type_malloc(v54, 0x100004000313F17uLL);
    v55 = malloc_type_malloc(v54, 0x100004000313F17uLL);
  }

  else
  {
    v55 = 0;
    v288 = 0;
  }

  v56 = v38;
  v273 = v33;
  v57 = v274;
  v287 = v55;
  v269 = v38;
  if (v38 < 1)
  {
    goto LABEL_163;
  }

  v58 = 0;
  LODWORD(v59) = 0;
  v275 = v299;
  v276 = v300;
  v60 = -1.0;
  v61 = 1;
  v268 = v5;
  v277 = v38;
  v272 = a2;
  do
  {
    v62 = v58 + 1;
    if (v58 + 1 >= v56)
    {
      goto LABEL_162;
    }

    v270 = v58 + 1;
    v271 = v61;
    v59 = v59;
    v283 = v58;
    do
    {
      v281 = v276[v58];
      v282 = v276[v61];
      v63 = v275[v58];
      v284 = v275[v61];
      v285 = v61;
      v296 = v284 + v63;
      v298 = malloc_type_malloc(8 * (v284 + v63), 0x2004093837F09uLL);
      v297 = malloc_type_malloc(8 * v296, 0x100004000313F17uLL);
      if (v63 >= 1)
      {
        for (i = 0; i != v63; ++i)
        {
          *(v298 + i * 8) = v33[v281 + i];
          *(v297 + i * 8) = 0x3FF0000000000000;
        }
      }

      v65 = v284;
      if (v284 >= 1)
      {
        v66 = 8 * v63;
        v67 = &v33[v282];
        do
        {
          v68 = *v67++;
          *(v298 + v66) = v68;
          *(v297 + v66) = 0xBFF0000000000000;
          v66 += 8;
          --v65;
        }

        while (v65);
      }

      v279 = v63;
      if (!*(a2 + 25))
      {
        goto LABEL_148;
      }

      v289 = v59;
      v69 = v57[v283];
      v70 = v57[v285];
      v71 = malloc_type_malloc(4 * v296, 0x100004052888210uLL);
      v72 = malloc_type_malloc(8 * v296, 0x100004000313F17uLL);
      if (v296 >= 1)
      {
        for (j = 0; j < v296; ++j)
        {
          v71[j] = j;
        }

        if (v296 >= 1)
        {
          v74 = 0;
          for (k = 0; k < v296; ++k)
          {
            v76 = k + rand() % (v74 + v296);
            v77 = v71[k];
            v71[k] = v71[v76];
            v71[v76] = v77;
            --v74;
          }
        }
      }

      v78 = 0;
      do
      {
        v79 = v296 * v78;
        v80 = (v296 * v78++ / 5);
        v81 = v296 * v78 / 5;
        v310 = v80 - v81 + v296;
        v312 = malloc_type_malloc(8 * v310, 0x2004093837F09uLL);
        v82 = malloc_type_malloc(8 * v310, 0x100004000313F17uLL);
        v311 = v82;
        if (v79 < 5)
        {
          LODWORD(v85) = 0;
        }

        else
        {
          v83 = 0;
          do
          {
            v84 = v71[v83];
            v312[v83] = *(v298 + v84);
            v82 = v311;
            v311[v83++] = *(v297 + v84);
          }

          while (v80 != v83);
          LODWORD(v85) = v79 / 5;
        }

        if (v81 >= v296)
        {
          if (!v85)
          {
            v91 = 0;
            v90 = 0;
            goto LABEL_73;
          }
        }

        else
        {
          v86 = &v71[v81];
          v87 = v85;
          v88 = v296 - v81;
          do
          {
            v89 = *v86++;
            v312[v87] = *(v298 + v89);
            v82 = v311;
            v311[v87++] = *(v297 + v89);
            LODWORD(v85) = v85 + 1;
            --v88;
          }

          while (v88);
        }

        v90 = 0;
        v91 = 0;
        v85 = v85;
        do
        {
          v92 = *v82++;
          if (v92 <= 0.0)
          {
            ++v90;
          }

          else
          {
            ++v91;
          }

          --v85;
        }

        while (v85);
LABEL_73:
        if (v91 | v90)
        {
          if (v91 >= 1 && v90 == 0)
          {
            if (v80 < v81)
            {
              v107 = &v71[v80];
              v108 = v81 - v80;
              do
              {
                v109 = *v107++;
                v72[v109] = 1.0;
                --v108;
              }

              while (v108);
            }
          }

          else
          {
            if (v91)
            {
              v97 = 1;
            }

            else
            {
              v97 = v90 < 1;
            }

            if (v97)
            {
              v309 = *(a2 + 12);
              v98 = a2[4];
              v308 = a2[5];
              v99 = a2[1];
              v303 = *a2;
              v304 = v99;
              v100 = a2[2];
              HIDWORD(v306) = HIDWORD(a2[3]);
              *v307 = v98;
              v305 = v100;
              HIDWORD(v309) = 0;
              *&v306 = 0x3FF0000000000000;
              DWORD2(v306) = 2;
              v307[0] = malloc_type_malloc(8uLL, 0x100004052888210uLL);
              v101 = malloc_type_malloc(0x10uLL, 0x100004000313F17uLL);
              v307[1] = v101;
              *v307[0] = 0xFFFFFFFF00000001;
              *v101 = v69;
              v101[1] = v70;
              v102 = svm_train(&v310, &v303);
              v103 = v102;
              if (v80 >= v81)
              {
                if (v102)
                {
                  goto LABEL_101;
                }
              }

              else
              {
                v104 = &v71[v80];
                v105 = v81 - v80;
                do
                {
                  svm_predict_values(v103, *(v298 + *v104), &v72[*v104]);
                  v106 = *v104++;
                  v72[v106] = v72[v106] * *v103[19];
                  --v105;
                }

                while (v105);
LABEL_101:
                svm_free_model_content(v103);
                free(v103);
              }

              free(v307[0]);
              free(v307[1]);
              goto LABEL_103;
            }

            if (v80 < v81)
            {
              v110 = &v71[v80];
              v111 = v81 - v80;
              do
              {
                v112 = *v110++;
                v72[v112] = -1.0;
                --v111;
              }

              while (v111);
            }
          }
        }

        else if (v80 < v81)
        {
          v93 = &v71[v80];
          v94 = v81 - v80;
          do
          {
            v95 = *v93++;
            v72[v95] = 0.0;
            --v94;
          }

          while (v94);
        }

LABEL_103:
        free(v312);
        free(v311);
      }

      while (v78 != 5);
      v113 = v296;
      v114 = v297;
      v115 = 0.0;
      v116 = 0.0;
      v117 = 0.0;
      v286 = v296;
      if (v296 >= 1)
      {
        v118 = v297;
        v119 = v296;
        do
        {
          v120 = *v118++;
          if (v120 > 0.0)
          {
            v117 = v117 + 1.0;
          }

          else
          {
            v116 = v116 + 1.0;
          }

          --v119;
        }

        while (v119);
      }

      v121 = malloc_type_malloc(8 * v296, 0x100004000313F17uLL);
      v288[v289] = 0;
      v122 = log((v116 + 1.0) / (v117 + 1.0));
      v55[v289] = v122;
      if (v113 < 1)
      {
        v131 = v122;
      }

      else
      {
        v123 = (v117 + 1.0) / (v117 + 2.0);
        v115 = 0.0;
        v124 = v121;
        v125 = v72;
        v126 = v113;
        v127 = 1.0 / (v116 + 2.0);
        do
        {
          v128 = *v114++;
          if (v128 <= 0.0)
          {
            v129 = v127;
          }

          else
          {
            v129 = v123;
          }

          *v124++ = v129;
          v130 = *v125++;
          v131 = v287[v289];
          v132 = v131 + v130 * *&v288[v289];
          v133 = -v132;
          if (v132 >= 0.0)
          {
            v134 = v129;
          }

          else
          {
            v133 = v132;
            v134 = v129 + v60;
          }

          v135 = exp(v133);
          v115 = v115 + log(v135 + 1.0) + v134 * v132;
          --v126;
        }

        while (v126);
      }

      v136 = 0;
      v55 = v287;
      a2 = v272;
      v137 = 1.0;
      v138 = v131;
      while (1)
      {
        v294 = v115;
        v295 = v138;
        if (v286 < 1)
        {
          v145 = 0.0;
          v147 = 1.0e-12;
          v146 = 1.0e-12;
          v144 = 0.0;
          v140 = 0.0;
        }

        else
        {
          v139 = *&v288[v289];
          v140 = 0.0;
          v141 = v72;
          v142 = v121;
          v143 = v113;
          v144 = 0.0;
          v145 = 0.0;
          v146 = 1.0e-12;
          v147 = 1.0e-12;
          do
          {
            v148 = *v141;
            v149 = v138 + *v141 * v139;
            if (v149 >= 0.0)
            {
              v150 = exp(-v149);
              v152 = 1.0;
              v151 = v150;
            }

            else
            {
              v150 = exp(v149);
              v151 = 1.0;
              v152 = v150;
            }

            v153 = v150 + v137;
            v154 = v151 / v153;
            v155 = v154 * (v152 / v153);
            v146 = v146 + v148 * v148 * v155;
            v147 = v147 + v155;
            v156 = *v142++;
            v145 = v145 + v148 * v155;
            v144 = v144 + v148 * (v156 - v154);
            v140 = v140 + v156 - v154;
            ++v141;
            --v143;
            v138 = v295;
          }

          while (v143);
        }

        if (fabs(v144) < 0.00001 && fabs(v140) < 0.00001)
        {
          break;
        }

        v157 = v146 * v147 - v145 * v145;
        v292 = -(v146 * v140 + -v145 * v144) / v157;
        v293 = -(v147 * v144 - v145 * v140) / v157;
        v290 = *&v288[v289];
        v291 = v140 * v292 + v144 * v293;
        v158 = 1.0;
        while (1)
        {
          v159 = v290 + v158 * v293;
          v160 = v138 + v158 * v292;
          v161 = 0.0;
          if (v113 >= 1)
          {
            v162 = v72;
            v163 = v121;
            v164 = v113;
            do
            {
              v165 = *v162++;
              v166 = v165;
              v167 = *v163++;
              v168 = v167;
              v169 = v160 + v166 * v159;
              v170 = -v169;
              v171 = v167 + -1.0;
              if (v169 >= 0.0)
              {
                v172 = v168;
              }

              else
              {
                v170 = v169;
                v172 = v171;
              }

              v173 = exp(v170);
              v161 = v161 + log(v173 + 1.0) + v172 * v169;
              --v164;
            }

            while (v164);
          }

          if (v161 < v294 + v158 * 0.0001 * v291)
          {
            break;
          }

          v158 = v158 * 0.5;
          v138 = v295;
          if (v158 < 1.0e-10)
          {
            v115 = v294;
            goto LABEL_143;
          }
        }

        *&v288[v289] = v159;
        v287[v289] = v160;
        v138 = v160;
        v115 = v161;
LABEL_143:
        v137 = 1.0;
        if (v158 < 1.0e-10)
        {
          info("Line search fails in two-class probability estimates\n");
          break;
        }

        if (++v136 == 100)
        {
          info("Reaching maximal iterations in two-class probability estimates\n");
          break;
        }
      }

      free(v121);
      free(v72);
      free(v71);
      v33 = v273;
      v57 = v274;
      v59 = v289;
      v60 = -1.0;
LABEL_148:
      v174 = svm_train_one(&v296, a2, v57[v283], v57[v285]);
      v175 = &v280[16 * v59];
      *v175 = v174;
      v175[1] = v176;
      v177 = v284;
      if (v279 >= 1)
      {
        v178 = &v278[v281];
        v179 = v279;
        v180 = v174;
        do
        {
          if ((*v178 & 1) == 0 && *v180 != 0.0)
          {
            *v178 = 1;
          }

          ++v178;
          ++v180;
          --v179;
        }

        while (v179);
      }

      if (v284 >= 1)
      {
        v181 = &v278[v282];
        v182 = &v174[8 * v279];
        do
        {
          if ((*v181 & 1) == 0 && *v182 != 0.0)
          {
            *v181 = 1;
          }

          ++v182;
          ++v181;
          --v177;
        }

        while (v177);
      }

      free(v298);
      free(v297);
      ++v59;
      v61 = v285 + 1;
      v38 = v277;
      v58 = v283;
    }

    while (v285 + 1 != v277);
    v5 = v268;
    v56 = v269;
    v62 = v270;
    v61 = v271;
LABEL_162:
    ++v61;
    v58 = v62;
  }

  while (v62 != v38);
LABEL_163:
  *(v5 + 26) = v38;
  v183 = 4 * v56;
  v184 = malloc_type_malloc(4 * v56, 0x100004052888210uLL);
  *(v5 + 19) = v184;
  if (v38 >= 1)
  {
    v185 = v301;
    v186 = v38;
    do
    {
      v187 = *v185++;
      *v184++ = v187;
      --v186;
    }

    while (v186);
  }

  v188 = malloc_type_malloc(v262, 0x100004000313F17uLL);
  *(v5 + 16) = v188;
  if (v267 > 1)
  {
    v189 = (v280 + 8);
    v190 = v264;
    do
    {
      v191 = *v189;
      v189 += 2;
      *v188++ = v191;
      --v190;
    }

    while (v190);
  }

  if (*(a2 + 25))
  {
    *(v5 + 17) = malloc_type_malloc(v262, 0x100004000313F17uLL);
    v192 = malloc_type_malloc(v262, 0x100004000313F17uLL);
    *(v5 + 18) = v192;
    if (v267 > 1)
    {
      v193 = *(v5 + 17);
      v194 = v264;
      v195 = v288;
      do
      {
        v196 = *v195++;
        *v193++ = v196;
        v197 = *v55++;
        *v192++ = v197;
        --v194;
      }

      while (v194);
    }
  }

  else
  {
    *(v5 + 17) = 0;
    *(v5 + 18) = 0;
  }

  v198 = malloc_type_malloc(v183, 0x100004052888210uLL);
  v199 = malloc_type_malloc(v183, 0x100004052888210uLL);
  *(v5 + 20) = v199;
  if (v38 < 1)
  {
    v201 = 0;
    v204 = size;
  }

  else
  {
    v200 = 0;
    v201 = 0;
    v202 = v299;
    v203 = v300;
    v204 = size;
    do
    {
      v205 = v202[v200];
      if (v205 < 1)
      {
        v206 = 0;
      }

      else
      {
        v206 = 0;
        v207 = &v278[v203[v200]];
        do
        {
          v208 = *v207++;
          v201 += v208;
          v206 += v208;
          --v205;
        }

        while (v205);
      }

      v199[v200] = v206;
      v198[v200++] = v206;
    }

    while (v200 != v38);
  }

  info("Total nSV = %d\n", v201);
  *(v5 + 27) = v201;
  v209 = 8 * v201;
  v210 = malloc_type_malloc(v209, 0x2004093837F09uLL);
  v211 = v278;
  *(v5 + 14) = v210;
  if (v204 >= 1)
  {
    v212 = 0;
    do
    {
      v213 = *v211++;
      if (v213 == 1)
      {
        *(*(v5 + 14) + 8 * v212++) = *v33;
      }

      ++v33;
      --v204;
    }

    while (v204);
  }

  v214 = malloc_type_malloc(v183, 0x100004052888210uLL);
  v215 = v214;
  *v214 = 0;
  if (v38 <= 1)
  {
    *(v5 + 15) = malloc_type_malloc(8 * v265, 0x80040B8603338uLL);
    v222 = v5 + 120;
  }

  else
  {
    v216 = 0;
    v217 = v214 + 1;
    v218 = v38 - 1;
    v219 = v198;
    do
    {
      v220 = *v219++;
      v216 += v220;
      *v217++ = v216;
      --v218;
    }

    while (v218);
    v221 = 0;
    *(v5 + 15) = malloc_type_malloc(8 * v265, 0x80040B8603338uLL);
    v222 = v5 + 120;
    do
    {
      *(*v222 + v221) = malloc_type_malloc(v209, 0x100004000313F17uLL);
      v221 += 8;
    }

    while (8 * v265 != v221);
  }

  v224 = v299;
  v223 = v300;
  if (v38 >= 1)
  {
    v225 = 0;
    LODWORD(v226) = 0;
    v227 = 1;
    do
    {
      v228 = v225 + 1;
      if (v225 + 1 < v269)
      {
        v229 = v224[v225];
        v230 = *&v215[4 * v225];
        v231 = v224[v225];
        v226 = v226;
        v232 = &v278[v223[v225]];
        v233 = v227;
        do
        {
          v234 = v223[v233];
          v235 = v224[v233];
          v236 = &v280[16 * v226];
          if (v231 >= 1)
          {
            v237 = 0;
            v238 = v230;
            do
            {
              if (v232[v237] == 1)
              {
                *(*(*v222 + 8 * v233 - 8) + 8 * v238++) = *(*v236 + 8 * v237);
              }

              ++v237;
            }

            while (v229 != v237);
          }

          if (v235 >= 1)
          {
            v239 = *&v215[4 * v233];
            v240 = &v278[v234];
            v241 = 8 * v229;
            do
            {
              v242 = *v240++;
              if (v242 == 1)
              {
                *(*(*v222 + 8 * v225) + 8 * v239++) = *(*v236 + v241);
              }

              v241 += 8;
              --v235;
            }

            while (v235);
          }

          ++v226;
          ++v233;
        }

        while (v233 != v38);
      }

      ++v227;
      ++v225;
    }

    while (v228 != v38);
  }

  free(v301);
  free(v288);
  free(v287);
  free(v224);
  free(v263);
  free(v223);
  free(v273);
  free(v274);
  free(v278);
  v243 = v264;
  if (v267 > 1)
  {
    v244 = v280;
    do
    {
      v245 = *v244;
      v244 += 2;
      free(v245);
      --v243;
    }

    while (v243);
  }

  free(v280);
  free(v198);
LABEL_231:
  free(v215);
  return v5;
}

char *svm_train_one(int *a1, int *a2, double a3, double a4)
{
  v6 = malloc_type_malloc(8 * *a1, 0x100004000313F17uLL);
  v7 = *a2;
  if (*a2 <= 1)
  {
    if (!v7)
    {
      operator new[]();
    }

    if (v7 == 1)
    {
      operator new[]();
    }
  }

  else
  {
    switch(v7)
    {
      case 2:
        operator new[]();
      case 3:
        operator new[]();
      case 4:
        operator new[]();
    }
  }

  info("obj = %f, rho = %f\n", v16, v17);
  v8 = *a1;
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 8 * v8;
    while (1)
    {
      v13 = *&v6[v9];
      if (v13 != 0.0)
      {
        v14 = fabs(v13);
        ++v11;
        if (*(*(a1 + 1) + v9) > 0.0)
        {
          if (v14 < v18)
          {
            goto LABEL_20;
          }

LABEL_19:
          ++v10;
          goto LABEL_20;
        }

        if (v14 >= v19)
        {
          goto LABEL_19;
        }
      }

LABEL_20:
      v9 += 8;
      if (v12 == v9)
      {
        goto LABEL_23;
      }
    }
  }

  v11 = 0;
  v10 = 0;
LABEL_23:
  info("nSV = %d, nBSV = %d\n", v11, v10);
  return v6;
}

void sub_297722754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  SVC_Q::~SVC_Q(va);
  _Unwind_Resume(a1);
}

void svm_group_classes(int *a1, int *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v6 = *a1;
  v7 = malloc_type_malloc(0x40uLL, 0x100004052888210uLL);
  v8 = malloc_type_malloc(0x40uLL, 0x100004052888210uLL);
  v9 = malloc_type_malloc(4 * v6, 0x100004052888210uLL);
  if (v6 < 1)
  {
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 16;
    do
    {
      v13 = *(*(a1 + 1) + 8 * v10);
      if (v11 < 1)
      {
        LODWORD(v14) = 0;
      }

      else
      {
        v14 = 0;
        while (v7[v14] != v13)
        {
          if (v11 == ++v14)
          {
            v9[v10] = v11;
            goto LABEL_11;
          }
        }

        ++v8[v14];
      }

      v9[v10] = v14;
      if (v14 == v11)
      {
LABEL_11:
        if (v11 == v12)
        {
          v12 *= 2;
          v7 = malloc_type_realloc(v7, 4 * v12, 0x100004052888210uLL);
          v8 = malloc_type_realloc(v8, 4 * v12, 0x100004052888210uLL);
        }

        v7[v11] = v13;
        v8[v11++] = 1;
      }

      ++v10;
    }

    while (v10 != v6);
  }

  v15 = malloc_type_malloc(4 * v11, 0x100004052888210uLL);
  *v15 = 0;
  if (v11 > 1)
  {
    v16 = 0;
    v17 = v15 + 1;
    v18 = v11 - 1;
    v19 = v8;
    do
    {
      v20 = *v19++;
      v16 += v20;
      *v17++ = v16;
      --v18;
    }

    while (v18);
  }

  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      *(a6 + 4 * v15[v9[i]]++) = i;
    }
  }

  *v15 = 0;
  if (v11 > 1)
  {
    v22 = 0;
    v23 = v15 + 1;
    v24 = v11 - 1;
    v25 = v8;
    do
    {
      v26 = *v25++;
      v22 += v26;
      *v23++ = v22;
      --v24;
    }

    while (v24);
  }

  *a2 = v11;
  *a3 = v7;
  *a4 = v15;
  *a5 = v8;

  free(v9);
}

void svm_cross_validation(int *a1, __int128 *a2, int a3, uint64_t a4)
{
  v7 = (a3 + 1);
  v8 = malloc_type_malloc(4 * v7, 0x100004052888210uLL);
  v9 = *a1;
  v10 = malloc_type_malloc(4 * v9, 0x100004052888210uLL);
  v11 = v10;
  v12 = v9 <= a3 || *a2 >= 2u;
  v111 = v9;
  if (!v12)
  {
    v106 = v7;
    v117 = 0;
    v112 = 0;
    v115 = 0;
    v116 = 0;
    svm_group_classes(a1, &v117, &v116, &v112, &v115, v10);
    v105 = malloc_type_malloc(4 * a3, 0x100004052888210uLL);
    v35 = malloc_type_malloc(4 * v9, 0x100004052888210uLL);
    v36 = v35;
    if (v9 >= 1)
    {
      v37 = v9;
      v38 = v11;
      v39 = v35;
      do
      {
        v40 = *v38++;
        *v39++ = v40;
        --v37;
      }

      while (v37);
    }

    v41 = v117;
    if (v117 >= 1)
    {
      v42 = 0;
      v43 = v115;
      v44 = v112;
      for (i = v117; i != v42; v41 = i)
      {
        if (v43[v42] >= 1)
        {
          v45 = 0;
          v46 = 0;
          do
          {
            v47 = rand();
            v48 = v46 + v44[v42];
            v49 = v48 + v47 % (v45 + v43[v42]);
            v50 = v36[v49];
            v36[v49] = v36[v48];
            v36[v48] = v50;
            ++v46;
            --v45;
          }

          while (v46 < v43[v42]);
        }

        ++v42;
      }
    }

    if (a3 <= 0)
    {
      *v8 = 0;
      v54 = v105;
      v53 = v106;
    }

    else
    {
      v51 = 0;
      v52 = v115;
      v54 = v105;
      v53 = v106;
      do
      {
        v105[v51] = 0;
        v55 = v51 + 1;
        if (v41 >= 1)
        {
          v56 = 0;
          v57 = v41;
          v58 = v52;
          do
          {
            v59 = *v58++;
            v56 += v59 * v55 / a3 - v59 * v51 / a3;
            v105[v51] = v56;
            --v57;
          }

          while (v57);
        }

        ++v51;
      }

      while (v55 != a3);
      v60 = 0;
      *v8 = 0;
      v61 = v8 + 1;
      v62 = v106 - 1;
      v63 = v105;
      do
      {
        v64 = *v63++;
        v60 += v64;
        *v61++ = v60;
        --v62;
      }

      while (v62);
    }

    v9 = v111;
    if (v41 >= 1)
    {
      v65 = 0;
      v66 = v112;
      v67 = v115;
      do
      {
        if (a3 >= 1)
        {
          v68 = 0;
          do
          {
            v69 = v67[v65];
            v70 = v69 * v68 / a3;
            v71 = v68 + 1;
            v72 = v69 * (v68 + 1) / a3;
            if (v70 < v72)
            {
              v73 = v66[v65];
              v74 = v70 + v73;
              v75 = v72 + v73;
              v76 = v8[v68];
              do
              {
                v11[v76] = v36[v74];
                v76 = v8[v68] + 1;
                v8[v68] = v76;
                ++v74;
              }

              while (v74 < v75);
            }

            ++v68;
          }

          while (v71 != a3);
        }

        ++v65;
      }

      while (v65 != v41);
    }

    *v8 = 0;
    if (a3 >= 1)
    {
      v77 = 0;
      v78 = v8 + 1;
      v79 = v53 - 1;
      v80 = v54;
      do
      {
        v81 = *v80++;
        v77 += v81;
        *v78++ = v77;
        --v79;
      }

      while (v79);
    }

    free(v112);
    free(v116);
    free(v115);
    free(v36);
    free(v54);
LABEL_59:
    if (a3 >= 1)
    {
      v82 = 0;
      v108 = a3;
      do
      {
        v83 = v8[v82++];
        v84 = v8[v82];
        LODWORD(v112) = v83 - v84 + v9;
        v114 = malloc_type_malloc(8 * v112, 0x2004093837F09uLL);
        v113 = malloc_type_malloc(8 * v112, 0x100004000313F17uLL);
        if (v83 < 1)
        {
          v88 = 0;
          v86 = a2;
        }

        else
        {
          v85 = 0;
          v86 = a2;
          do
          {
            v87 = v11[v85];
            *(v114 + v85) = *(*(a1 + 2) + 8 * v87);
            *(v113 + v85++) = *(*(a1 + 1) + 8 * v87);
          }

          while (v83 != v85);
          v88 = v83;
        }

        if (v84 < v9)
        {
          v89 = v9 - v84;
          v90 = 8 * v88;
          v91 = &v11[v84];
          do
          {
            v92 = *v91++;
            *(v114 + v90) = *(*(a1 + 2) + 8 * v92);
            *(v113 + v90) = *(*(a1 + 1) + 8 * v92);
            v90 += 8;
            --v89;
          }

          while (v89);
        }

        v93 = v83;
        v94 = svm_train(&v112, v86);
        v95 = v94;
        if (*(v86 + 25) && *v86 <= 1u)
        {
          v96 = malloc_type_malloc(8 * *(v94 + 26), 0x100004000313F17uLL);
          if (v93 < v84)
          {
            v97 = &v11[v93];
            v98 = v84 - v93;
            do
            {
              v99 = svm_predict_probability(v95, *(*(a1 + 2) + 8 * *v97), v96);
              v100 = *v97++;
              *(a4 + 8 * v100) = v99;
              --v98;
            }

            while (v98);
          }

          free(v96);
        }

        else if (v83 < v84)
        {
          v101 = &v11[v83];
          v102 = v84 - v83;
          do
          {
            v103 = svm_predict(v95, *(*(a1 + 2) + 8 * *v101));
            v104 = *v101++;
            *(a4 + 8 * v104) = v103;
            --v102;
          }

          while (v102);
        }

        if (v95)
        {
          svm_free_model_content(v95);
          free(v95);
        }

        free(v114);
        free(v113);
        v9 = v111;
      }

      while (v82 != v108);
    }

    goto LABEL_81;
  }

  if (v9 >= 1)
  {
    v13 = 0;
    v14 = vdupq_n_s64(v9 - 1);
    v15 = xmmword_297732610;
    v16 = xmmword_297732570;
    v17 = v10 + 2;
    v18 = vdupq_n_s64(4uLL);
    do
    {
      v19 = vmovn_s64(vcgeq_u64(v14, v16));
      if (vuzp1_s16(v19, *v14.i8).u8[0])
      {
        *(v17 - 2) = v13;
      }

      if (vuzp1_s16(v19, *&v14).i8[2])
      {
        *(v17 - 1) = v13 + 1;
      }

      if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v15))).i32[1])
      {
        *v17 = v13 + 2;
        v17[1] = v13 + 3;
      }

      v13 += 4;
      v15 = vaddq_s64(v15, v18);
      v16 = vaddq_s64(v16, v18);
      v17 += 4;
    }

    while (((v9 + 3) & 0xFFFFFFFC) != v13);
    v20 = 0;
    v21 = v9;
    do
    {
      v22 = v20 + rand() % v21;
      v23 = v11[v20];
      v11[v20] = v11[v22];
      v11[v22] = v23;
      ++v20;
      --v21;
    }

    while (v21);
  }

  if ((a3 & 0x80000000) == 0)
  {
    v24 = vdupq_n_s64(v7 - 1);
    v25 = (v7 + 3) & 0x1FFFFFFFCLL;
    v26 = vdupq_n_s32(v9);
    v27 = xmmword_297732610;
    v28 = xmmword_297732570;
    v29 = v8 + 2;
    v30 = xmmword_2977327F0;
    v31.i64[0] = 0x400000004;
    v31.i64[1] = 0x400000004;
    v32 = vdupq_n_s64(4uLL);
    do
    {
      v33 = vmovn_s64(vcgeq_u64(v24, v28));
      v34 = vmulq_s32(v26, v30);
      if (vuzp1_s16(v33, *v24.i8).u8[0])
      {
        *(v29 - 2) = v34.i32[0] / a3;
      }

      if (vuzp1_s16(v33, *&v24).i8[2])
      {
        *(v29 - 1) = v34.i32[1] / a3;
      }

      if (vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, *&v27))).i32[1])
      {
        *v29 = v34.i32[2] / a3;
        v29[1] = v34.i32[3] / a3;
      }

      v27 = vaddq_s64(v27, v32);
      v28 = vaddq_s64(v28, v32);
      v30 = vaddq_s32(v30, v31);
      v29 += 4;
      v25 -= 4;
    }

    while (v25);
    goto LABEL_59;
  }

LABEL_81:
  free(v8);
  free(v11);
}

double svm_predict_probability(uint64_t a1, double *a2, uint64_t a3)
{
  v4 = a1;
  if (*a1 <= 1u && *(a1 + 136) && *(a1 + 144))
  {
    v6 = *(a1 + 104);
    v76 = malloc_type_malloc(8 * ((v6 - 1) * v6 / 2), 0x100004000313F17uLL);
    svm_predict_values(v4, a2, v76);
    size = 8 * v6;
    v7 = malloc_type_malloc(8 * v6, 0x80040B8603338uLL);
    v8 = v7;
    if (v6 >= 1)
    {
      v9 = v6;
      v10 = v7;
      do
      {
        *v10++ = malloc_type_malloc(size, 0x100004000313F17uLL);
        --v9;
      }

      while (v9);
      v11 = 0;
      v12 = 0;
      v13 = v8 + 8;
      v14 = v6 - 1;
      v15 = 8;
      v74 = v6;
      v75 = v4;
      v73 = v8;
      do
      {
        v16 = v11 + 1;
        if (v11 + 1 < v6)
        {
          v17 = 0;
          v18 = v4[17];
          v19 = v4[18];
          v20 = &v76[v12];
          v21 = v18 + 8 * v12;
          v77 = v12;
          v22 = v19 + 8 * v12;
          v23 = *&v8[8 * v11] + v15;
          do
          {
            v24 = *(v22 + 8 * v17) + v20[v17] * *(v21 + 8 * v17);
            if (v24 >= 0.0)
            {
              v25 = exp(-v24);
              v26 = v25;
            }

            else
            {
              v25 = exp(v24);
              v26 = 1.0;
            }

            v27 = fmin(fmax(v26 / (v25 + 1.0), 0.0000001), 0.9999999);
            *(v23 + 8 * v17) = v27;
            *(*&v13[8 * v17++] + 8 * v11) = 1.0 - v27;
          }

          while (v14 != v17);
          v12 = v77 + v17;
          v6 = v74;
          v4 = v75;
          v8 = v73;
          v16 = v11 + 1;
        }

        v13 += 8;
        v15 += 8;
        --v14;
        v11 = v16;
      }

      while (v16 != v6);
    }

    if (v6 <= 100)
    {
      v28 = 100;
    }

    else
    {
      v28 = v6;
    }

    v29 = malloc_type_malloc(size, 0x80040B8603338uLL);
    v30 = malloc_type_malloc(size, 0x100004000313F17uLL);
    v31 = v6;
    if (v6 <= 0)
    {
      v47 = v6;
    }

    else
    {
      v78 = v28;
      v32 = 0;
      v33 = v6 - 1;
      v34 = (v8 + 8);
      v35 = 1;
      do
      {
        *(a3 + 8 * v32) = 1.0 / v31;
        v36 = malloc_type_malloc(size, 0x100004000313F17uLL);
        v29[v32] = v36;
        v36[v32] = 0;
        if (v32)
        {
          for (i = 0; i != v32; ++i)
          {
            v38 = *(*&v8[8 * i] + 8 * v32);
            *&v36[v32] = *&v36[v32] + v38 * v38;
            v36[i] = *(v29[i] + v32);
          }
        }

        v39 = v32 + 1;
        if (v32 + 1 < v6)
        {
          v40 = &v36[v35];
          v41 = (*&v8[8 * v32] + v35 * 8);
          v42 = v34;
          v43 = v33;
          do
          {
            v44 = *v42++;
            *&v36[v32] = *&v36[v32] + *(v44 + 8 * v32) * *(v44 + 8 * v32);
            v45 = *(v44 + 8 * v32);
            v46 = *v41++;
            *v40++ = -(v45 * v46);
            --v43;
          }

          while (v43);
        }

        --v33;
        ++v35;
        ++v34;
        ++v32;
      }

      while (v39 != v6);
      v47 = v6;
      v28 = v78;
    }

    v49 = 0;
    v50 = 0.005 / v31;
    do
    {
      if (v6 < 1)
      {
        if (v50 > 0.0)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v51 = 0;
        v52 = 0.0;
        do
        {
          v53 = 0;
          v30[v51] = 0;
          v54 = v29[v51];
          v55 = 0.0;
          do
          {
            v55 = v55 + v54[v53] * *(a3 + 8 * v53);
            *&v30[v51] = v55;
            ++v53;
          }

          while (v47 != v53);
          v52 = v52 + *(a3 + 8 * v51++) * v55;
        }

        while (v51 != v47);
        v56 = 0;
        v57 = 0.0;
        do
        {
          v58 = vabdd_f64(*&v30[v56], v52);
          if (v58 > v57)
          {
            v57 = v58;
          }

          ++v56;
        }

        while (v47 != v56);
        if (v57 < v50)
        {
          goto LABEL_52;
        }

        v59 = 0;
        do
        {
          v60 = 0;
          v61 = v29[v59];
          v62 = (v52 - *&v30[v59]) / v61[v59];
          *(a3 + 8 * v59) = *(a3 + 8 * v59) + v62;
          v63 = *&v30[v59] + *&v30[v59] + v62 * v61[v59];
          v64 = v62 + 1.0;
          do
          {
            *&v30[v60] = (*&v30[v60] + v62 * v61[v60]) / v64;
            *(a3 + 8 * v60) = *(a3 + 8 * v60) / v64;
            ++v60;
          }

          while (v47 != v60);
          v52 = (v52 + v62 * v63) / v64 / v64;
          ++v59;
        }

        while (v59 != v47);
      }

      ++v49;
    }

    while (v49 != v28);
    info("Exceeds max_iter in multiclass_prob\n", 1.0);
LABEL_52:
    if (v6 >= 1)
    {
      v65 = v29;
      v66 = v47;
      do
      {
        v67 = *v65++;
        free(v67);
        --v66;
      }

      while (v66);
    }

LABEL_55:
    free(v29);
    free(v30);
    if (v6 <= 1)
    {
      v70 = 0;
    }

    else
    {
      v68 = 0;
      v69 = 1;
      do
      {
        if (*(a3 + 8 * v69) > *(a3 + 8 * v68))
        {
          v68 = v69;
        }

        ++v69;
      }

      while (v47 != v69);
      v70 = v68;
    }

    if (v6 >= 1)
    {
      v71 = v8;
      do
      {
        v72 = *v71++;
        free(v72);
        --v47;
      }

      while (v47);
    }

    free(v76);
    free(v8);
    return *(v4[19] + 4 * v70);
  }

  else
  {

    return svm_predict(a1, a2);
  }
}

double svm_predict(_DWORD *a1, double *a2)
{
  if ((*a1 - 2) > 2)
  {
    v4 = 8 * ((a1[26] - 1) * a1[26] / 2);
  }

  else
  {
    v4 = 8;
  }

  v5 = malloc_type_malloc(v4, 0x100004000313F17uLL);
  svm_predict_values(a1, a2, v5);
  v7 = v6;
  free(v5);
  return v7;
}

void svm_free_and_destroy_model(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      svm_free_model_content(v2);
      free(*a1);
      *a1 = 0;
    }
  }
}

uint64_t svm_get_labels(uint64_t result, uint64_t a2)
{
  v2 = *(result + 152);
  if (v2 && *(result + 104) >= 1)
  {
    v3 = 0;
    do
    {
      *(a2 + 4 * v3) = *(v2 + 4 * v3);
      ++v3;
    }

    while (v3 < *(result + 104));
  }

  return result;
}

double svm_get_svr_probability(uint64_t a1)
{
  if ((*a1 - 3) <= 1)
  {
    v1 = *(a1 + 136);
    if (v1)
    {
      return *v1;
    }
  }

  fwrite("Model doesn't contain information for SVR probability inference\n", 0x40uLL, 1uLL, *MEMORY[0x29EDCA610]);
  return 0.0;
}

void svm_predict_values(uint64_t a1, double *a2, double *a3)
{
  if ((*a1 - 2) > 2)
  {
    v14 = *(a1 + 104);
    v13 = *(a1 + 108);
    v15 = malloc_type_malloc(8 * v13, 0x100004000313F17uLL);
    v16 = v15;
    if (v13 >= 1)
    {
      v17 = *(a1 + 112);
      v18 = v15;
      do
      {
        v19 = *v17++;
        *v18++ = Kernel::k_function(a2, v19, a1);
        --v13;
      }

      while (v13);
    }

    v20 = malloc_type_malloc(4 * v14, 0x100004052888210uLL);
    v21 = v20;
    *v20 = 0;
    if (v14 > 1)
    {
      v22 = 0;
      v23 = *(a1 + 160);
      v24 = v20 + 1;
      v25 = v14 - 1;
      do
      {
        v26 = *v23++;
        v22 += v26;
        *v24++ = v22;
        --v25;
      }

      while (v25);
    }

    v27 = malloc_type_malloc(4 * v14, 0x100004052888210uLL);
    v28 = v27;
    if (v14 >= 1)
    {
      bzero(v27, 4 * v14);
      v29 = 0;
      LODWORD(v30) = 0;
      v31 = 1;
      do
      {
        v32 = v29 + 1;
        if (v29 + 1 < v14)
        {
          v33 = *(a1 + 160);
          v35 = *(a1 + 120);
          v34 = *(a1 + 128);
          v36 = v35 - 8;
          v37 = *(v35 + 8 * v29);
          v30 = v30;
          v38 = v31;
          do
          {
            v39 = *(v33 + 4 * v29);
            if (v39 < 1)
            {
              v43 = 0.0;
            }

            else
            {
              v40 = v21[v29];
              v41 = (*(v36 + 8 * v38) + 8 * v40);
              v42 = &v16[v40];
              v43 = 0.0;
              do
              {
                v44 = *v41++;
                v45 = v44;
                v46 = *v42++;
                v43 = v43 + v45 * v46;
                --v39;
              }

              while (v39);
            }

            v47 = *(v33 + 4 * v38);
            if (v47 >= 1)
            {
              v48 = v21[v38];
              v49 = (v37 + 8 * v48);
              v50 = &v16[v48];
              do
              {
                v51 = *v49++;
                v52 = v51;
                v53 = *v50++;
                v43 = v43 + v52 * v53;
                --v47;
              }

              while (v47);
            }

            v54 = v43 - *(v34 + 8 * v30);
            a3[v30] = v54;
            if (v54 <= 0.0)
            {
              v55 = v38;
            }

            else
            {
              v55 = v29;
            }

            ++v28[v55];
            ++v30;
            ++v38;
          }

          while (v38 != v14);
        }

        ++v31;
        ++v29;
      }

      while (v32 != v14);
      if (v14 >= 2)
      {
        v56 = 0;
        for (i = 1; i != v14; ++i)
        {
          if (v28[i] > v28[v56])
          {
            v56 = i;
          }
        }
      }
    }

    free(v16);
    free(v21);
    free(v28);
  }

  else
  {
    v6 = *(a1 + 108);
    if (v6 < 1)
    {
      v9 = 0.0;
    }

    else
    {
      v7 = *(a1 + 112);
      v8 = **(a1 + 120);
      v9 = 0.0;
      do
      {
        v10 = *v8++;
        v11 = v10;
        v12 = *v7++;
        v9 = v9 + v11 * Kernel::k_function(a2, v12, a1);
        --v6;
      }

      while (v6);
    }

    *a3 = v9 - **(a1 + 128);
  }
}

uint64_t svm_save_model(const char *a1, double *a2)
{
  v3 = fopen(a1, "w");
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = v3;
  fprintf(v3, "svm_type %s\n", svm_type_table[*a2]);
  fprintf(v4, "kernel_type %s\n", kernel_type_table[*(a2 + 1)]);
  v5 = *(a2 + 1);
  if (v5 == 1)
  {
    fprintf(v4, "degree %d\n", *(a2 + 2));
    v5 = *(a2 + 1);
  }

  if ((v5 - 1) <= 2)
  {
    fprintf(v4, "gamma %g\n", a2[2]);
    v5 = *(a2 + 1);
  }

  if ((v5 | 2) == 3)
  {
    fprintf(v4, "coef0 %g\n", a2[3]);
  }

  v7 = *(a2 + 26);
  v6 = *(a2 + 27);
  fprintf(v4, "nr_class %d\n", *(a2 + 26));
  fprintf(v4, "total_sv %d\n", v6);
  fwrite("rho", 3uLL, 1uLL, v4);
  v8 = (v7 - 1) * v7;
  v9 = (v8 / 2);
  if (v8 >= 2)
  {
    v10 = 0;
    do
    {
      fprintf(v4, " %g", *(*(a2 + 16) + 8 * v10++));
    }

    while (v9 != v10);
  }

  fputc(10, v4);
  if (*(a2 + 19))
  {
    fwrite("label", 5uLL, 1uLL, v4);
    if (v7 >= 1)
    {
      v11 = 0;
      do
      {
        fprintf(v4, " %d", *(*(a2 + 19) + v11));
        v11 += 4;
      }

      while (4 * v7 != v11);
    }

    fputc(10, v4);
  }

  if (*(a2 + 17))
  {
    fwrite("probA", 5uLL, 1uLL, v4);
    if (v8 >= 2)
    {
      v12 = 0;
      do
      {
        fprintf(v4, " %g", *(*(a2 + 17) + 8 * v12++));
      }

      while (v9 != v12);
    }

    fputc(10, v4);
  }

  if (*(a2 + 18))
  {
    fwrite("probB", 5uLL, 1uLL, v4);
    if (v8 >= 2)
    {
      v13 = 0;
      do
      {
        fprintf(v4, " %g", *(*(a2 + 18) + 8 * v13++));
      }

      while (v9 != v13);
    }

    fputc(10, v4);
  }

  if (*(a2 + 20))
  {
    fwrite("nr_sv", 5uLL, 1uLL, v4);
    if (v7 >= 1)
    {
      v14 = 0;
      do
      {
        fprintf(v4, " %d", *(*(a2 + 20) + v14));
        v14 += 4;
      }

      while (4 * v7 != v14);
    }

    fputc(10, v4);
  }

  fwrite("SV\n", 3uLL, 1uLL, v4);
  if (v6 >= 1)
  {
    v15 = 0;
    v16 = *(a2 + 14);
    v17 = *(a2 + 15);
    do
    {
      v18 = (v7 - 1);
      v19 = v17;
      if (v7 >= 2)
      {
        do
        {
          v20 = *v19++;
          fprintf(v4, "%.16g ", *(v20 + 8 * v15));
          --v18;
        }

        while (v18);
      }

      v21 = *(v16 + 8 * v15);
      if (*(a2 + 1) == 4)
      {
        fprintf(v4, "0:%d ", v21[1]);
      }

      else
      {
        v22 = *v21;
        if (*v21 != -1)
        {
          v23 = v21 + 2;
          do
          {
            fprintf(v4, "%d:%.8g ", v22, *(v23 - 1));
            v24 = *v23;
            v23 += 2;
            v22 = v24;
          }

          while (v24 != -1);
        }
      }

      fputc(10, v4);
      ++v15;
    }

    while (v15 != v6);
  }

  if (ferror(v4))
  {
    return 0xFFFFFFFFLL;
  }

  if (fclose(v4))
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

char *svm_load_model(const char *a1)
{
  v63 = *MEMORY[0x29EDCA608];
  v1 = fopen(a1, "rb");
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = malloc_type_malloc(0xB0uLL, 0x1090040ECD48006uLL);
  *(v3 + 8) = 0u;
  v4 = (v3 + 128);
  *(v3 + 9) = 0u;
  *(v3 + 20) = 0;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            while (1)
            {
              while (1)
              {
                while (1)
                {
LABEL_3:
                  fscanf(v2, "%80s", __s2);
                  if (!(*__s2 ^ 0x657079745F6D7673 | v62))
                  {
                    fscanf(v2, "%80s", __s2);
                    for (i = 0; i != 5; ++i)
                    {
                      if (!strcmp(svm_type_table[i], __s2))
                      {
                        *v3 = i;
                        goto LABEL_3;
                      }
                    }

                    v32 = *MEMORY[0x29EDCA610];
                    v33 = "unknown svm type.\n";
                    v34 = 18;
LABEL_77:
                    fwrite(v33, v34, 1uLL, v32);
                    goto LABEL_78;
                  }

                  if (*__s2 != 0x745F6C656E72656BLL || v62 != 6647929)
                  {
                    break;
                  }

                  fscanf(v2, "%80s", __s2);
                  v17 = 0;
                  while (strcmp(kernel_type_table[v17], __s2))
                  {
                    if (++v17 == 5)
                    {
                      v32 = *MEMORY[0x29EDCA610];
                      v33 = "unknown kernel function.\n";
                      v34 = 25;
                      goto LABEL_77;
                    }
                  }

                  *(v3 + 1) = v17;
                }

                if (*__s2 == 1919378788 && *&__s2[3] == 6645106)
                {
                  v18 = v3 + 8;
                  goto LABEL_54;
                }

                if (*__s2 == 1835884903 && *&__s2[4] == 97)
                {
                  v19 = v3 + 16;
                  goto LABEL_58;
                }

                if (*__s2 != 1717923683 || *&__s2[4] != 48)
                {
                  break;
                }

                v19 = v3 + 24;
LABEL_58:
                fscanf(v2, "%lf", v19);
              }

              if (!(*__s2 ^ 0x7373616C635F726ELL | v62))
              {
                v18 = v3 + 104;
                goto LABEL_54;
              }

              if (*__s2 ^ 0x76735F6C61746F74 | v62)
              {
                break;
              }

              v18 = v3 + 108;
LABEL_54:
              fscanf(v2, "%d", v18);
            }

            if (*__s2 != 7301234)
            {
              break;
            }

            v20 = (*(v3 + 26) - 1) * *(v3 + 26);
            v21 = (v20 / 2);
            *v4 = malloc_type_malloc(8 * v21, 0x100004000313F17uLL);
            if (v20 >= 2)
            {
              v22 = 0;
              do
              {
                fscanf(v2, "%lf", *v4 + v22);
                v22 += 8;
                --v21;
              }

              while (v21);
            }
          }

          if (*__s2 != 1700946284 || *&__s2[4] != 108)
          {
            break;
          }

          v23 = *(v3 + 26);
          v24 = 4 * v23;
          *(v3 + 19) = malloc_type_malloc(4 * v23, 0x100004052888210uLL);
          if (v23 >= 1)
          {
            v25 = 0;
            do
            {
              fscanf(v2, "%d", *(v3 + 19) + v25);
              v25 += 4;
            }

            while (v24 != v25);
          }
        }

        if (*__s2 != 1651470960 || *&__s2[4] != 65)
        {
          break;
        }

        v26 = (*(v3 + 26) - 1) * *(v3 + 26);
        v27 = (v26 / 2);
        *(v3 + 17) = malloc_type_malloc(8 * v27, 0x100004000313F17uLL);
        if (v26 >= 2)
        {
          v28 = 0;
          do
          {
            fscanf(v2, "%lf", *(v3 + 17) + v28);
            v28 += 8;
            --v27;
          }

          while (v27);
        }
      }

      if (*__s2 != 1651470960 || *&__s2[4] != 66)
      {
        break;
      }

      v29 = (*(v3 + 26) - 1) * *(v3 + 26);
      v30 = (v29 / 2);
      *(v3 + 18) = malloc_type_malloc(8 * v30, 0x100004000313F17uLL);
      if (v29 >= 2)
      {
        v31 = 0;
        do
        {
          fscanf(v2, "%lf", *(v3 + 18) + v31);
          v31 += 8;
          --v30;
        }

        while (v30);
      }
    }

    if (*__s2 != 1935635054 || *&__s2[4] != 118)
    {
      break;
    }

    v13 = *(v3 + 26);
    v14 = 4 * v13;
    *(v3 + 20) = malloc_type_malloc(4 * v13, 0x100004052888210uLL);
    if (v13 >= 1)
    {
      v15 = 0;
      do
      {
        fscanf(v2, "%d", *(v3 + 20) + v15);
        v15 += 4;
      }

      while (v14 != v15);
    }
  }

  if (*__s2 ^ 0x5653 | __s2[2])
  {
    fprintf(*MEMORY[0x29EDCA610], "unknown text in model file: [%s]\n", __s2);
LABEL_78:
    free(*(v3 + 16));
    free(*(v3 + 19));
    free(*(v3 + 20));
    free(v3);
    return 0;
  }

  do
  {
    v36 = getc(v2);
  }

  while (v36 != -1 && v36 != 10);
  v37 = MEMORY[0x29C2730D0](v2);
  max_line_len = 1024;
  line = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  __endptr = 0;
  v38 = 0;
  while (readline(v2))
  {
    strtok(line, ":");
    --v38;
    do
    {
      ++v38;
    }

    while (strtok(0, ":"));
  }

  v39 = *(v3 + 27);
  fseek(v2, v37, 0);
  v40 = *(v3 + 26);
  v41 = *(v3 + 27);
  *(v3 + 15) = malloc_type_malloc(8 * (v40 - 1), 0x80040B8603338uLL);
  v59 = v41;
  v42 = 8 * v41;
  if (v40 > 1)
  {
    v43 = 0;
    do
    {
      *(*(v3 + 15) + v43) = malloc_type_malloc(v42, 0x100004000313F17uLL);
      v43 += 8;
    }

    while (8 * (v40 - 1) != v43);
  }

  *(v3 + 14) = malloc_type_malloc(v42, 0x2004093837F09uLL);
  if (v59 >= 1)
  {
    v44 = malloc_type_malloc(16 * (v39 + v38), 0x1000040F7F8B94BuLL);
    v45 = 0;
    v46 = 0;
    v47 = 8 * (v40 - 1);
    v57 = v44 + 8;
    v58 = v44;
    do
    {
      readline(v2);
      *(*(v3 + 14) + 8 * v45) = &v44[16 * v46];
      v48 = strtok(line, " \t");
      *(**(v3 + 15) + 8 * v45) = strtod(v48, &__endptr);
      if (v40 >= 3)
      {
        v49 = 8;
        do
        {
          v50 = strtok(0, " \t");
          *(*(*(v3 + 15) + v49) + 8 * v45) = strtod(v50, &__endptr);
          v49 += 8;
        }

        while (v47 != v49);
      }

      v51 = v46;
      v52 = strtok(0, ":");
      v53 = strtok(0, " \t");
      if (v53)
      {
        v54 = v53;
        v55 = v46 << 32;
        v56 = &v57[16 * v46];
        do
        {
          *(v56 - 2) = strtol(v52, &__endptr, 10);
          *v56 = strtod(v54, &__endptr);
          v56 += 2;
          v52 = strtok(0, ":");
          v54 = strtok(0, " \t");
          v55 += 0x100000000;
          ++v46;
        }

        while (v54);
        v51 = v55 >> 32;
        v47 = 8 * (v40 - 1);
      }

      ++v46;
      v44 = v58;
      *&v58[16 * v51] = -1;
      ++v45;
    }

    while (v45 != v59);
  }

  free(line);
  if (!ferror(v2) && !fclose(v2))
  {
    *(v3 + 42) = 1;
    return v3;
  }

  return 0;
}

uint64_t readline(__sFILE *a1)
{
  if (!fgets(line, max_line_len, a1))
  {
    return 0;
  }

  while (1)
  {
    v2 = line;
    if (strrchr(line, 10))
    {
      break;
    }

    v3 = 2 * max_line_len;
    max_line_len *= 2;
    line = malloc_type_realloc(v2, v3, 0x100004077774924uLL);
    v4 = strlen(line);
    if (!fgets((line + v4), max_line_len - v4, a1))
    {
      return line;
    }
  }

  return v2;
}

void svm_free_model_content(uint64_t a1)
{
  if (*(a1 + 168))
  {
    if (*(a1 + 108) >= 1)
    {
      v2 = *(a1 + 112);
      if (v2)
      {
        free(*v2);
      }
    }
  }

  if (*(a1 + 120) && *(a1 + 104) >= 2)
  {
    v3 = 0;
    do
    {
      free(*(*(a1 + 120) + 8 * v3++));
    }

    while (v3 < *(a1 + 104) - 1);
  }

  free(*(a1 + 112));
  *(a1 + 112) = 0;
  free(*(a1 + 120));
  *(a1 + 120) = 0;
  free(*(a1 + 128));
  *(a1 + 128) = 0;
  free(*(a1 + 152));
  *(a1 + 152) = 0;
  free(*(a1 + 136));
  *(a1 + 136) = 0;
  free(*(a1 + 144));
  *(a1 + 144) = 0;
  free(*(a1 + 160));
  *(a1 + 160) = 0;
}

void svm_destroy_param(uint64_t a1)
{
  free(*(a1 + 64));
  v2 = *(a1 + 72);

  free(v2);
}

const char *svm_check_parameter(unsigned int *a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2 > 4u)
  {
    return "unknown svm type";
  }

  if (*(a2 + 4) > 4u)
  {
    return "unknown kernel type";
  }

  if (*(a2 + 16) < 0.0)
  {
    return "gamma < 0";
  }

  if ((*(a2 + 8) & 0x80000000) != 0)
  {
    return "degree of polynomial kernel < 0";
  }

  if (*(a2 + 32) <= 0.0)
  {
    return "cache_size <= 0";
  }

  if (*(a2 + 40) <= 0.0)
  {
    return "eps <= 0";
  }

  if (v2 <= 4 && ((1 << v2) & 0x19) != 0 && *(a2 + 48) <= 0.0)
  {
    return "C <= 0";
  }

  if (v2 - 1 < 2)
  {
    goto LABEL_16;
  }

  if (v2 == 3)
  {
LABEL_19:
    if (*(a2 + 88) < 0.0)
    {
      return "p < 0";
    }

    goto LABEL_25;
  }

  if (v2 == 4)
  {
LABEL_16:
    v6 = *(a2 + 80);
    result = "nu <= 0 or nu > 1";
    if (v6 <= 0.0 || v6 > 1.0)
    {
      return result;
    }

    if (v2 == 3)
    {
      goto LABEL_19;
    }
  }

LABEL_25:
  if (*(a2 + 96) > 1u)
  {
    return "shrinking != 0 and shrinking != 1";
  }

  v7 = *(a2 + 100);
  if (v7 > 1)
  {
    return "probability != 0 and probability != 1";
  }

  if (v7 == 1 && v2 == 2)
  {
    result = "one-class SVM probability output not supported yet";
  }

  else
  {
    result = 0;
  }

  if (v2 == 1)
  {
    v9 = *a1;
    v10 = malloc_type_malloc(0x40uLL, 0x100004052888210uLL);
    v11 = malloc_type_malloc(0x40uLL, 0x100004052888210uLL);
    if (v9 < 1)
    {
      goto LABEL_57;
    }

    v12 = 0;
    v13 = 0;
    v14 = 16;
    do
    {
      v15 = *(*(a1 + 1) + 8 * v12);
      if (v13 < 1)
      {
        LODWORD(v16) = 0;
      }

      else
      {
        v16 = 0;
        while (v10[v16] != v15)
        {
          if (v13 == ++v16)
          {
            goto LABEL_44;
          }
        }

        ++v11[v16];
      }

      if (v16 == v13)
      {
LABEL_44:
        if (v13 == v14)
        {
          v17 = 2 * v14;
          v18 = 4 * v17;
          v19 = v17;
          v10 = malloc_type_realloc(v10, v18, 0x100004052888210uLL);
          v20 = malloc_type_realloc(v11, v18, 0x100004052888210uLL);
          v14 = v19;
          v11 = v20;
        }

        v10[v13] = v15;
        v11[v13++] = 1;
      }

      ++v12;
    }

    while (v12 != v9);
    if (v13 < 1)
    {
LABEL_57:
      free(v10);
      free(v11);
      return 0;
    }

    else
    {
      v21 = 0;
      v22 = 1;
      while (1)
      {
        v23 = v21 + 1;
        if (v21 + 1 < v13)
        {
          break;
        }

LABEL_56:
        ++v22;
        v21 = v23;
        if (v23 == v13)
        {
          goto LABEL_57;
        }
      }

      v24 = v11[v21];
      v25 = v22;
      while (1)
      {
        v26 = v11[v25];
        v27 = *(a2 + 80) * (v26 + v24) * 0.5;
        if (v24 < v26)
        {
          v26 = v24;
        }

        if (v27 > v26)
        {
          break;
        }

        if (v13 == ++v25)
        {
          goto LABEL_56;
        }
      }

      free(v10);
      free(v11);
      return "specified nu is infeasible";
    }
  }

  return result;
}

BOOL svm_check_probability_model(uint64_t a1)
{
  if (*a1 > 1u)
  {
    if ((*a1 - 3) <= 1)
    {
      return *(a1 + 136) != 0;
    }
  }

  else if (*(a1 + 136) && *(a1 + 144))
  {
    return 1;
  }

  return 0;
}

uint64_t (*svm_set_print_string_function(uint64_t (*result)(const char *)))(const char *)
{
  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = print_string_stdout;
  }

  svm_print_string = v1;
  return result;
}

uint64_t print_string_stdout(const char *a1)
{
  v1 = MEMORY[0x29EDCA620];
  fputs(a1, *MEMORY[0x29EDCA620]);
  v2 = *v1;

  return fflush(v2);
}

double Kernel::swap_index(Kernel *this, int a2, int a3)
{
  v3 = *(this + 3);
  v4 = *(v3 + 8 * a2);
  *(v3 + 8 * a2) = *(v3 + 8 * a3);
  *(v3 + 8 * a3) = v4;
  v5 = *(this + 4);
  if (v5)
  {
    result = *(v5 + 8 * a2);
    *(v5 + 8 * a2) = *(v5 + 8 * a3);
    *(v5 + 8 * a3) = result;
  }

  return result;
}

void sub_297724F58(_Unwind_Exception *a1)
{
  MEMORY[0x29C272EB0](v2, 0x10A0C408A4F435CLL);
  Kernel::~Kernel(v1);
  _Unwind_Resume(a1);
}

float *SVC_Q::get_Q(Cache **this, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v17 = 0;
  data = Cache::get_data(this[9], a2, &v17, a3);
  v7 = v17;
  if (data < v3)
  {
    v8 = data;
    do
    {
      v9 = this[8];
      v10 = *(v9 + a2);
      v11 = *(v9 + v8);
      v12 = this[1];
      v13 = this[2];
      v14 = (this + (v13 >> 1));
      if (v13)
      {
        v12 = *(*v14 + v12);
      }

      v15 = (v12)(v14, a2, v8) * (v11 * v10);
      v7[v8++] = v15;
    }

    while (v3 != v8);
  }

  return v7;
}

double SVC_Q::swap_index(Cache **this, int a2, int a3)
{
  Cache::swap_index(this[9], a2, a3);
  v6 = this[3];
  v7 = *(v6 + a2);
  *(v6 + a2) = *(v6 + a3);
  *(v6 + a3) = v7;
  v8 = this[4];
  if (v8)
  {
    v9 = *(v8 + a2);
    *(v8 + a2) = *(v8 + a3);
    *(v8 + a3) = v9;
  }

  v10 = this[8];
  v11 = *(v10 + a2);
  *(v10 + a2) = *(v10 + a3);
  *(v10 + a3) = v11;
  v12 = this[10];
  result = *(v12 + a2);
  *(v12 + a2) = *(v12 + a3);
  *(v12 + a3) = result;
  return result;
}

void SVC_Q::~SVC_Q(SVC_Q *this)
{
  SVC_Q::~SVC_Q(this);

  JUMPOUT(0x29C272EB0);
}

{
  *this = &unk_2A1E51E58;
  v2 = *(this + 8);
  if (v2)
  {
    MEMORY[0x29C272E90](v2, 0x1000C8077774924);
  }

  v3 = *(this + 9);
  if (v3)
  {
    Cache::~Cache(v3);
    MEMORY[0x29C272EB0]();
  }

  v4 = *(this + 10);
  if (v4)
  {
    MEMORY[0x29C272E90](v4, 0x1000C8000313F17);
  }

  Kernel::~Kernel(this);
}

void sub_29772531C(_Unwind_Exception *a1)
{
  MEMORY[0x29C272EB0](v2, 0x10A0C408A4F435CLL);
  Kernel::~Kernel(v1);
  _Unwind_Resume(a1);
}

float *ONE_CLASS_Q::get_Q(Cache **this, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v15 = 0;
  data = Cache::get_data(this[8], a2, &v15, a3);
  v7 = v15;
  if (data < v3)
  {
    v8 = data;
    v9 = &v15[data];
    do
    {
      v10 = this[1];
      v11 = this[2];
      v12 = (this + (v11 >> 1));
      if (v11)
      {
        v10 = *(*v12 + v10);
      }

      v13 = (v10)(v12, a2, v8);
      *v9++ = v13;
      v8 = (v8 + 1);
    }

    while (v3 != v8);
  }

  return v7;
}

double ONE_CLASS_Q::swap_index(Cache **this, int a2, int a3)
{
  Cache::swap_index(this[8], a2, a3);
  v6 = this[3];
  v7 = *(v6 + a2);
  *(v6 + a2) = *(v6 + a3);
  *(v6 + a3) = v7;
  v8 = this[4];
  if (v8)
  {
    v9 = *(v8 + a2);
    *(v8 + a2) = *(v8 + a3);
    *(v8 + a3) = v9;
  }

  v10 = this[9];
  result = *(v10 + a2);
  *(v10 + a2) = *(v10 + a3);
  *(v10 + a3) = result;
  return result;
}

void ONE_CLASS_Q::~ONE_CLASS_Q(ONE_CLASS_Q *this)
{
  ONE_CLASS_Q::~ONE_CLASS_Q(this);

  JUMPOUT(0x29C272EB0);
}

{
  *this = &unk_2A1E51E90;
  v2 = *(this + 8);
  if (v2)
  {
    Cache::~Cache(v2);
    MEMORY[0x29C272EB0]();
  }

  v3 = *(this + 9);
  if (v3)
  {
    MEMORY[0x29C272E90](v3, 0x1000C8000313F17);
  }

  Kernel::~Kernel(this);
}

void sub_297725774(_Unwind_Exception *a1)
{
  MEMORY[0x29C272EB0](v2, 0x10A0C408A4F435CLL);
  Kernel::~Kernel(v1);
  _Unwind_Resume(a1);
}

float *SVR_Q::get_Q(SVR_Q *this, int a2, unsigned int a3)
{
  v28 = 0;
  v6 = *(this + 11);
  v7 = *(v6 + 4 * a2);
  data = Cache::get_data(*(this + 9), *(v6 + 4 * a2), &v28, *(this + 16));
  v9 = *(this + 16);
  if (data < v9 && v9 >= 1)
  {
    v11 = 0;
    v12 = v28;
    do
    {
      v13 = *(this + 1);
      v14 = *(this + 2);
      v15 = (this + (v14 >> 1));
      if (v14)
      {
        v13 = *(*v15 + v13);
      }

      v16 = v13(v15, v7, v11);
      v12[v11++] = v16;
    }

    while (v11 < *(this + 16));
  }

  v17 = *(this + 24);
  result = *(this + v17 + 13);
  *(this + 24) = 1 - v17;
  if (a3 >= 1)
  {
    v19 = *(this + 10);
    v20 = *(this + 11);
    v21 = v19[a2];
    v22 = v28;
    v23 = a3;
    v24 = result;
    do
    {
      v25 = *v19++;
      v26 = v21 * v25;
      v27 = *v20++;
      *v24++ = v26 * v22[v27];
      --v23;
    }

    while (v23);
  }

  return result;
}

double SVR_Q::swap_index(SVR_Q *this, int a2, int a3)
{
  v3 = *(this + 10);
  v4 = *(v3 + a2);
  *(v3 + a2) = *(v3 + a3);
  *(v3 + a3) = v4;
  v5 = *(this + 11);
  v6 = *(v5 + 4 * a2);
  *(v5 + 4 * a2) = *(v5 + 4 * a3);
  *(v5 + 4 * a3) = v6;
  v7 = *(this + 15);
  result = *(v7 + 8 * a2);
  *(v7 + 8 * a2) = *(v7 + 8 * a3);
  *(v7 + 8 * a3) = result;
  return result;
}

void SVR_Q::~SVR_Q(SVR_Q *this)
{
  SVR_Q::~SVR_Q(this);

  JUMPOUT(0x29C272EB0);
}

{
  *this = &unk_2A1E51E20;
  v2 = *(this + 9);
  if (v2)
  {
    Cache::~Cache(v2);
    MEMORY[0x29C272EB0]();
  }

  v3 = *(this + 10);
  if (v3)
  {
    MEMORY[0x29C272E90](v3, 0x1000C8077774924);
  }

  v4 = *(this + 11);
  if (v4)
  {
    MEMORY[0x29C272E90](v4, 0x1000C8052888210);
  }

  v5 = *(this + 13);
  if (v5)
  {
    MEMORY[0x29C272E90](v5, 0x1000C8052888210);
  }

  v6 = *(this + 14);
  if (v6)
  {
    MEMORY[0x29C272E90](v6, 0x1000C8052888210);
  }

  v7 = *(this + 15);
  if (v7)
  {
    MEMORY[0x29C272E90](v7, 0x1000C8000313F17);
  }

  Kernel::~Kernel(this);
}

BOOL nlp::traverseCallback(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    a2 += 20;
    v3 = *(v2 + 16);
    v4 = *(v2 + 8);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return nlp::BurstTrieAdd(a1, a2, v3, v4);
}

BOOL nlp::BurstTrieAdd(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 2080))
  {
    return 0;
  }

  v25[11] = v4;
  v25[12] = v5;
  if (*(a1 + 2064))
  {
    return 0;
  }

  v8 = 0;
  v24 = 0;
  if ((a3 - 1) <= 0x3FE)
  {
    v9 = a4;
    if (a4)
    {
      v11 = 0;
      v12 = 1;
      v13 = a1;
      while (1)
      {
        v14 = v13 + 1;
        v15 = *&v13[2 * *(a2 + v11) + 1];
        if ((v15 & 3) != 1)
        {
          break;
        }

        v13 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        ++v11;
        ++v12;
        if (a3 == v11)
        {
          v16 = *v13;
          *v13 = a4;
          if (!v16)
          {
            goto LABEL_18;
          }

LABEL_19:
          v8 = 1;
          return v8 != 0;
        }
      }

      if ((v15 & 3) != 2)
      {
        v20 = a3 - v12;
        v21 = (a3 - v12);
        v22 = malloc_type_calloc(1uLL, v21 + 15, 0x1020040D0C9BDDAuLL);
        memcpy((v22 + 14), (a2 + v12), v21);
        *(v22 + 14 + v20) = 0;
        *(v22 + 12) = v20;
        *(v22 + 8) = v9;
        *v22 = 0;
        *&v14[2 * *(a2 + v11)] = v22 | 2;
        goto LABEL_18;
      }

      v25[0] = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      v17 = nlp::addListNode(a1, v25, a2, a3, v12, a4, &v24);
      v18 = v25[0];
      if (v17 >= *(a1 + 2088))
      {
        v18 = nlp::burstLevel(a1, v25[0], &v24);
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      v23 = v19 | v18;
      v8 = v24;
      *&v14[2 * *(a2 + v11)] = v23;
      if (v8 == 2)
      {
LABEL_18:
        ++*(a1 + 2060);
        goto LABEL_19;
      }
    }
  }

  return v8 != 0;
}

uint64_t nlp::TrieCompletionGetCompletion(uint64_t a1)
{
  if (a1)
  {
    return a1 + 20;
  }

  else
  {
    return 0;
  }
}

uint64_t nlp::TrieCompletionGetLength(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t nlp::TrieCompletionGetPayload(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t nlp::rankedTraverseCallback(uint64_t a1, float *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v3 = a2 + 5;
  }

  else
  {
    v3 = 0;
  }

  if (a2)
  {
    v4 = *(a2 + 4);
    v5 = *(a2 + 2);
    v6 = *a2;
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v6 = 0.0;
  }

  v9 = 0;
  nlp::BurstTrieAddWithScore(a1, v3, v4, v5, 0, v8, v6);
  return std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](v8);
}

void sub_297725CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL nlp::BurstTrieAddWithScore(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7)
{
  v18 = *MEMORY[0x29EDCA608];
  if (*(a1 + 2080) || (*(a1 + 2064) & 1) == 0)
  {
    return 0;
  }

  result = 0;
  v16 = 0;
  if ((a3 - 1) <= 0x3FE && a4)
  {
    v15 = 0;
    std::__function::__value_func<float ()(void *,float,float)>::__value_func[abi:ne200100](v17, a6);
    nlp::addLevelRanked(a1, a1, a2, a3, 0, a4, &v15, &v16, a7, a5, v17);
    std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](v17);
    v14 = v16;
    if (v16 == 2)
    {
      ++*(a1 + 2060);
    }

    return v14 != 0;
  }

  return result;
}

void sub_297725E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

double nlp::TrieCompletionGetScore(_DWORD *a1)
{
  if (!a1)
  {
    return 0.0;
  }

  LODWORD(result) = *a1;
  return result;
}

double nlp::BurstTrieCreateMutableWithOptions(int a1, int a2)
{
  v4 = malloc_type_calloc(1uLL, 0x838uLL, 0x105004014637929uLL);
  if (v4)
  {
    result = 0.0;
    *(v4 + 2060) = 0u;
    *(v4 + 519) = 1;
    *(v4 + 260) = 0;
    *(v4 + 2092) = 0x200000000;
    *(v4 + 516) = a2;
    *(v4 + 522) = a1;
  }

  return result;
}

const __CFString *nlp::BurstTrieCreateFromFile(const __CFString *this, const __CFString *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (this)
  {
    v2 = this;
    usedBufLen = 0;
    v10.length = CFStringGetLength(this);
    v10.location = 0;
    CFStringGetBytes(v2, v10, 0x8000100u, 0x2Du, 0, buffer, 1024, &usedBufLen);
    buffer[usedBufLen] = 0;
    if (stat(buffer, &v7))
    {
      v3 = -1;
LABEL_4:
      close(v3);
      return 0;
    }

    v3 = open(buffer, 0);
    if (v3 < 0)
    {
      goto LABEL_4;
    }

    v4 = mmap(0, v7.st_size, 1, 1, v3, 0);
    if (!v4)
    {
LABEL_11:
      if (!v3)
      {
        return 0;
      }

      goto LABEL_4;
    }

    v5 = v4;
    this = nlp::burstTrieCreateWithBytes(v4, 1);
    if (!this)
    {
      munmap(v5, v7.st_size);
      goto LABEL_11;
    }
  }

  return this;
}

char *nlp::burstTrieCreateWithBytes(char *this, const char *a2)
{
  if (this)
  {
    v2 = this;
    if (*this == 12648430 || *this == -900339842)
    {
      v4 = a2;
      this = malloc_type_calloc(1uLL, 0x838uLL, 0x105004014637929uLL);
      *(this + 260) = v2;
      v5 = *(v2 + 3);
      *(this + 2068) = *(v2 + 2);
      *(this + 515) = v5;
      v6 = *(v2 + 4);
      *(this + 516) = v6;
      if (*v2 == -900339842)
      {
        *(this + 516) = v6 | 1;
      }

      *(this + 522) = *(v2 + 5);
      *(this + 523) = v4;
      *(this + 524) = 2;
      *(this + 519) = 1;
    }

    else
    {
      return 0;
    }
  }

  return this;
}

void nlp::BurstTrieRelease(char *a1)
{
  if (a1)
  {
    v2 = *(a1 + 519) - 1;
    *(a1 + 519) = v2;
    if (!v2)
    {
      v3 = *(a1 + 260);
      if (v3)
      {
        if (*(a1 + 523))
        {
          munmap(v3, *(a1 + 2068));
        }
      }

      else if (a1[2064])
      {
        nlp::finishLevel<nlp::_RankedTrieLevel *,nlp::_RankedListNode *>(a1);
      }

      else
      {
        nlp::finishLevel<nlp::_TrieLevel *,nlp::_ListNode *>(a1);
      }

      free(a1);
    }
  }
}

uint64_t nlp::BurstTrieGetCount(uint64_t result)
{
  if (result)
  {
    return *(result + 2060);
  }

  return result;
}

uint64_t nlp::BurstTrieCreateMutableCopy(int *a1)
{
  v7[4] = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    return 0;
  }

  nlp::BurstTrieCreateMutableWithOptions(a1[522], a1[516]);
  v3 = v2;
  if (a1[516])
  {
    v4 = v7;
    v7[0] = &unk_2A1E51D20;
    v7[1] = nlp::rankedTraverseCallback;
    v7[3] = v7;
    nlp::BurstTrieSearch(a1, 0, 0, v2, v7, 0xFFFFFFFFLL);
  }

  else
  {
    v4 = v6;
    v6[0] = &unk_2A1E51D20;
    v6[1] = nlp::traverseCallback;
    v6[3] = v6;
    nlp::BurstTrieSearch(a1, 0, 0, v2, v6, 0xFFFFFFFFLL);
  }

  std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL *)>::~__value_func[abi:ne200100](v4);
  return v3;
}

void sub_297726280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void nlp::BurstTrieSearch(nlp *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[4] = *MEMORY[0x29EDCA608];
  if ((a6 & 0x80000000) != 0)
  {
    v9 = 0xFFFFFFFF00000003;
    v10 = 0;
    v11 = a4;
    std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL *)>::__value_func[abi:ne200100](v12, a5);
    nlp::searchWithContext(a1, a2, a3, 0, &v9);
    std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL *)>::~__value_func[abi:ne200100](v12);
  }

  else if (nlp::BurstTrieCreateCursorWithBytes(a1, a2, a3))
  {
    operator new();
  }
}

uint64_t nlp::BurstTrieRetain(uint64_t result)
{
  if (result)
  {
    ++*(result + 2076);
  }

  return result;
}

void nlp::addLevelRanked(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, float *a7, int *a8, float a9, uint64_t a10, uint64_t a11)
{
  v13 = a9;
  v34 = *MEMORY[0x29EDCA608];
  if (a5 >= a4)
  {
    *a8 = 2;
    if (*(a2 + 8))
    {
      *a8 = 1;
      if (*(a11 + 24))
      {
        std::function<float ()(void *,float,float)>::operator()(a11, a10, *(a2 + 4), a9);
        v13 = v21;
      }
    }

    *(a2 + 4) = v13;
    *(a2 + 8) = a6;
    *a7 = v13;
  }

  else
  {
    v30 = (a3 + a5);
    v20 = *(a2 + 12 + 8 * *v30);
    if ((v20 & 3) == 2)
    {
      v29 = a2 + 12;
      v31 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      std::__function::__value_func<float ()(void *,float,float)>::__value_func[abi:ne200100](v32, a11);
      v22 = nlp::addListNodeRanked(a1, &v31, a3, a4, a5 + 1, a6, a7, a8, v13, a10, v32);
      std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](v32);
      v23 = v31;
      if (v22 >= *(a1 + 2088))
      {
        v23 = nlp::burstLevelRanked(a1, v31, a7, a8);
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      v28 = v24 | v23;
      v27 = v30;
    }

    else
    {
      if ((v20 & 3) == 1)
      {
        std::__function::__value_func<float ()(void *,float,float)>::__value_func[abi:ne200100](v33, a11);
        nlp::addLevelRanked(a1, v20 & 0xFFFFFFFFFFFFFFFCLL, a3, a4, a5 + 1, a6, a7, a8, v13, a10, v33);
        std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](v33);
        goto LABEL_15;
      }

      v29 = a2 + 12;
      *a7 = a9;
      v25 = ~a5 + a4;
      v26 = malloc_type_calloc(1uLL, v25 + 23, 0x10200402E77EEF7uLL);
      v27 = v30;
      memcpy((v26 + 22), v30 + 1, v25);
      *(v26 + 22 + v25) = 0;
      *(v26 + 20) = v25;
      *(v26 + 16) = a6;
      *(v26 + 8) = v13;
      *(v26 + 12) = v13;
      *v26 = 0;
      v28 = v26 | 2;
      *a8 = 2;
    }

    *(v29 + 8 * *v27) = v28;
  }

LABEL_15:
  if (*a7 > *a2)
  {
    *a2 = *a7;
  }
}

void sub_29772668C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t nlp::BurstTrieRemove(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  result = 0;
  v105 = *MEMORY[0x29EDCA608];
  if (!a1 || !a2 || !a3)
  {
    return result;
  }

  v6 = a3;
  if (a1[516])
  {
    v102 = a1;
    v90 = 0;
    v91 = 0;
    __p = 0;
    std::vector<nlp::_RankedTrieLevel *>::__init_with_size[abi:ne200100]<nlp::_RankedTrieLevel * const*,nlp::_RankedTrieLevel * const*>(&__p, &v102, v103, 1uLL);
    v19 = (a2 + 1);
    v20 = a1;
    do
    {
      v21 = v20 + 3;
      v22 = *(v19 - 1);
      v23 = *&v21[2 * v22];
      if ((v23 & 3) == 0)
      {
        goto LABEL_54;
      }

      if ((*&v21[2 * v22] & 3) == 2)
      {
        v36 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        v37 = *((v23 & 0xFFFFFFFFFFFFFFFCLL) + 20);
        if (v37 + 1 == v6 && !memcmp(v19, v36 + 22, v37))
        {
          v44 = *v36;
          free(v36);
          v45 = v44 | 2;
          if (!v44)
          {
            v45 = 0;
          }

          *&v21[2 * v22] = v45;
        }

        else
        {
          v38 = *v36;
          if (!*v36)
          {
            goto LABEL_54;
          }

          while (1)
          {
            v39 = v38;
            v40 = *(v38 + 20);
            if (v40 + 1 == v6 && !memcmp(v19, (v38 + 22), v40))
            {
              break;
            }

            v38 = *v39;
            v36 = v39;
            if (!*v39)
            {
              goto LABEL_54;
            }
          }

          *v36 = *v39;
          free(v39);
        }

        goto LABEL_70;
      }

      v20 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      v24 = v90;
      if (v90 >= v91)
      {
        v26 = (v90 - __p) >> 3;
        if ((v26 + 1) >> 61)
        {
          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        v27 = (v91 - __p) >> 2;
        if (v27 <= v26 + 1)
        {
          v27 = v26 + 1;
        }

        if (v91 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v28 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v27;
        }

        if (v28)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<nlp::_RankedTrieLevel *>>(&__p, v28);
        }

        *(8 * v26) = v20;
        v25 = 8 * v26 + 8;
        v29 = (8 * v26 - (v90 - __p));
        memcpy(v29, __p, v90 - __p);
        v30 = __p;
        __p = v29;
        v90 = v25;
        v91 = 0;
        if (v30)
        {
          operator delete(v30);
        }
      }

      else
      {
        *v90 = v20;
        v25 = (v24 + 8);
      }

      v90 = v25;
      ++v19;
      --v6;
    }

    while (v6);
    if (!v20[2])
    {
      goto LABEL_54;
    }

    v20[2] = 0;
LABEL_70:
    v51 = (v90 - __p) >> 3;
    if (v51 < 2)
    {
      goto LABEL_121;
    }

    v95 = 0;
    v52 = v51 - 1;
    LOBYTE(v53) = 0;
    v54 = a1[522];
    while (1)
    {
      v55 = nlp::burstTrieCreateCursorWithTrieLevelRef<nlp::_RankedTrieLevel *>(a1, *(__p + v52));
      v95 = 0;
      v102 = &unk_2A1E51B10;
      v103[0] = &v95;
      v104 = &v102;
      nlp::BurstTrieTraverseFromCursor(v55, 0, &v102, 0xFFFFFFFFLL);
      std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](&v102);
      if (v55)
      {
        free(v55);
      }

      if (v95 >= v54)
      {
        break;
      }

      v53 = 1;
      if (!--v52)
      {
        goto LABEL_101;
      }
    }

    if ((v53 & 1) == 0)
    {
LABEL_121:
      v41 = 1;
      goto LABEL_122;
    }

    v53 = v52 + 1;
LABEL_101:
    v92 = 0;
    v93 = 0;
    v94 = 0;
    std::vector<std::tuple<std::string,unsigned int,float>>::reserve(&v92, v54);
    v72 = *(__p + v53);
    v73 = nlp::burstTrieCreateCursorWithTrieLevelRef<nlp::_RankedTrieLevel *>(a1, v72);
    v99 = &unk_2A1E51B68;
    v100 = &v92;
    v101 = &v99;
    nlp::BurstTrieTraverseFromCursor(v73, 0, &v99, 0xFFFFFFFFLL);
    std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](&v99);
    if (v54 <= (v93 - v92) >> 5)
    {
      __assert_rtn("reverseBurst", "BurstTrie.cpp", 965, "items.size() < sizeThreshold");
    }

    if (v73)
    {
      free(v73);
    }

    nlp::finishLevel<nlp::_RankedTrieLevel *,nlp::_RankedListNode *>(v72);
    a1[515] -= (v93 - v92) >> 5;
    v75 = __p;
    *(*(__p + v52) + 8 * *(a2 + v52) + 12) = 0;
    if (a3 + 1 < ((v90 - v75) >> 3))
    {
      __assert_rtn("reverseBurst", "BurstTrie.cpp", 974, "levels.size() <= keyLen + 1");
    }

    v76 = nlp::sharedBuffer(v74);
    v77 = v76;
    v78 = 0;
    if (v53 <= 1)
    {
      v79 = 1;
    }

    else
    {
      v79 = v53;
    }

    do
    {
      v76[v78] = *(a2 + v78);
      ++v78;
    }

    while (v79 != v78);
    v80 = v92;
    v81 = v93;
    if (v92 == v93)
    {
LABEL_120:
      v96 = &v92;
      std::vector<std::pair<std::string,double>>::__destroy_vector::operator()[abi:ne200100](&v96);
      goto LABEL_121;
    }

    v82 = a1[516];
    while (1)
    {
      v83 = v80[23];
      if ((v83 & 0x8000000000000000) != 0)
      {
        v84 = *v80;
        v83 = *(v80 + 1);
      }

      else
      {
        v84 = v80;
      }

      v85 = *(v80 + 6);
      v86 = *(v80 + 7);
      memcpy((v77 + v53), v84, v83);
      v87 = v80[23];
      if (v87 < 0)
      {
        v87 = *(v80 + 1);
        if (v82)
        {
LABEL_118:
          v98 = 0;
          nlp::BurstTrieAddWithScore(a1, v77, (v87 + v53), v85, 0, v97, v86);
          std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](v97);
          goto LABEL_119;
        }
      }

      else if (v82)
      {
        goto LABEL_118;
      }

      nlp::BurstTrieAdd(a1, v77, v87 + v53, v85);
LABEL_119:
      v80 += 32;
      if (v80 == v81)
      {
        goto LABEL_120;
      }
    }
  }

  v102 = a1;
  v90 = 0;
  v91 = 0;
  __p = 0;
  std::vector<nlp::_TrieLevel *>::__init_with_size[abi:ne200100]<nlp::_TrieLevel * const*,nlp::_TrieLevel * const*>(&__p, &v102, v103, 1uLL);
  v7 = (a2 + 1);
  v8 = a1;
  do
  {
    v9 = v8 + 1;
    v10 = *(v7 - 1);
    v11 = *&v9[2 * v10];
    if ((v11 & 3) == 0)
    {
      goto LABEL_54;
    }

    if ((*&v9[2 * v10] & 3) == 2)
    {
      v31 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      v32 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 12);
      if (v32 + 1 == v6 && !memcmp(v7, v31 + 14, v32))
      {
        v42 = *v31;
        free(v31);
        v43 = v42 | 2;
        if (!v42)
        {
          v43 = 0;
        }

        *&v9[2 * v10] = v43;
        goto LABEL_62;
      }

      v33 = *v31;
      if (!*v31)
      {
        goto LABEL_54;
      }

      while (1)
      {
        v34 = v33;
        v35 = *(v33 + 12);
        if (v35 + 1 == v6 && !memcmp(v7, (v33 + 14), v35))
        {
          break;
        }

        v33 = *v34;
        v31 = v34;
        if (!*v34)
        {
          goto LABEL_54;
        }
      }

      *v31 = *v34;
      free(v34);
LABEL_62:
      v46 = (v90 - __p) >> 3;
      if (v46 < 2)
      {
        goto LABEL_121;
      }

      v95 = 0;
      v47 = v46 - 1;
      LOBYTE(v48) = 0;
      v49 = a1[522];
      while (1)
      {
        v50 = nlp::burstTrieCreateCursorWithTrieLevelRef<nlp::_TrieLevel *>(a1, *(__p + v47));
        v95 = 0;
        v102 = &unk_2A1E51BC0;
        v103[0] = &v95;
        v104 = &v102;
        nlp::BurstTrieTraverseFromCursor(v50, 0, &v102, 0xFFFFFFFFLL);
        std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](&v102);
        if (v50)
        {
          free(v50);
        }

        if (v95 >= v49)
        {
          break;
        }

        v48 = 1;
        if (!--v47)
        {
          goto LABEL_79;
        }
      }

      if ((v48 & 1) == 0)
      {
        goto LABEL_121;
      }

      v48 = v47 + 1;
LABEL_79:
      v92 = 0;
      v93 = 0;
      v94 = 0;
      std::vector<std::tuple<std::string,unsigned int,float>>::reserve(&v92, v49);
      v56 = *(__p + v48);
      v57 = nlp::burstTrieCreateCursorWithTrieLevelRef<nlp::_TrieLevel *>(a1, v56);
      v99 = &unk_2A1E51C18;
      v100 = &v92;
      v101 = &v99;
      nlp::BurstTrieTraverseFromCursor(v57, 0, &v99, 0xFFFFFFFFLL);
      std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](&v99);
      if (v49 <= (v93 - v92) >> 5)
      {
        __assert_rtn("reverseBurst", "BurstTrie.cpp", 965, "items.size() < sizeThreshold");
      }

      if (v57)
      {
        free(v57);
      }

      nlp::finishLevel<nlp::_TrieLevel *,nlp::_ListNode *>(v56);
      a1[515] -= (v93 - v92) >> 5;
      v59 = __p;
      *(*(__p + v47) + 8 * *(a2 + v47) + 4) = 0;
      if (a3 + 1 < ((v90 - v59) >> 3))
      {
        __assert_rtn("reverseBurst", "BurstTrie.cpp", 974, "levels.size() <= keyLen + 1");
      }

      v60 = nlp::sharedBuffer(v58);
      v61 = v60;
      v62 = 0;
      if (v48 <= 1)
      {
        v63 = 1;
      }

      else
      {
        v63 = v48;
      }

      do
      {
        v60[v62] = *(a2 + v62);
        ++v62;
      }

      while (v63 != v62);
      v64 = v92;
      v65 = v93;
      if (v92 != v93)
      {
        v66 = a1[516];
        while (1)
        {
          v67 = v64[23];
          if ((v67 & 0x8000000000000000) != 0)
          {
            v68 = *v64;
            v67 = *(v64 + 1);
          }

          else
          {
            v68 = v64;
          }

          v69 = *(v64 + 6);
          v70 = *(v64 + 7);
          memcpy((v61 + v48), v68, v67);
          v71 = v64[23];
          if (v71 < 0)
          {
            v71 = *(v64 + 1);
            if (v66)
            {
LABEL_96:
              v98 = 0;
              nlp::BurstTrieAddWithScore(a1, v61, (v71 + v48), v69, 0, v97, v70);
              std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](v97);
              goto LABEL_97;
            }
          }

          else if (v66)
          {
            goto LABEL_96;
          }

          nlp::BurstTrieAdd(a1, v61, v71 + v48, v69);
LABEL_97:
          v64 += 32;
          if (v64 == v65)
          {
            goto LABEL_120;
          }
        }
      }

      goto LABEL_120;
    }

    v8 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    v12 = v90;
    if (v90 >= v91)
    {
      v14 = (v90 - __p) >> 3;
      if ((v14 + 1) >> 61)
      {
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      v15 = (v91 - __p) >> 2;
      if (v15 <= v14 + 1)
      {
        v15 = v14 + 1;
      }

      if (v91 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v16 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v15;
      }

      if (v16)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<nlp::_RankedTrieLevel *>>(&__p, v16);
      }

      *(8 * v14) = v8;
      v13 = 8 * v14 + 8;
      v17 = (8 * v14 - (v90 - __p));
      memcpy(v17, __p, v90 - __p);
      v18 = __p;
      __p = v17;
      v90 = v13;
      v91 = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v90 = v8;
      v13 = (v12 + 8);
    }

    v90 = v13;
    ++v7;
    --v6;
  }

  while (v6);
  if (*v8)
  {
    *v8 = 0;
    goto LABEL_62;
  }

LABEL_54:
  v41 = 0;
LABEL_122:
  if (__p)
  {
    v90 = __p;
    operator delete(__p);
  }

  if (!v41)
  {
    return 0;
  }

  --a1[515];
  return 1;
}