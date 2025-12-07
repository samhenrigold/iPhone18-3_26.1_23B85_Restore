void cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>>(cva::Logger *a1, uint64_t **a2)
{
  v32[3] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 4);
  v5 = *a2;
  v6 = **a2;
  if (v4 != *(v6 + 20) || (v7 = *(a1 + 5), v8 = a2[1], v9 = *v8, v7 != **v8))
  {
    v10 = cva::Logger::instance(a1);
    cva::Logger::logInCategory(v10, 1, *MEMORY[0x1E6997750], "%u x %u <-> %u x %u\n", *(a1 + 4), *(a1 + 5), *(**a2 + 20), **a2[1]);
    v4 = *(a1 + 4);
    v5 = *a2;
    v6 = **a2;
    if (v4 != *(v6 + 20) || (v8 = a2[1], v9 = *v8, v7 = **v8, *(a1 + 5) != v7))
    {
      cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
    }
  }

  v31 = v8;
  if (v7 >= v9[1])
  {
    v7 = v9[1];
  }

  if (v7 > *(v6 + 16))
  {
    cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>>();
  }

  v28[0] = v4;
  v28[1] = v7;
  v29 = v5;
  v30 = 0;
  v23 = &v31;
  v27 = &v23;
  v32[0] = v28;
  v32[1] = &v24;
  v11 = *a1;
  v25 = v4;
  v26 = v7;
  v20[0] = __PAIR64__(v7, v4);
  v20[1] = v11;
  v21 = v4;
  v22 = 0;
  cva::MatrixRef<float,0u,0u,false>::operator=<cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>(v20, v32);
  v12 = *(*v5 + 16);
  v13 = *(a1 + 5) - v12;
  if (*(a1 + 5) > v12)
  {
    v14 = *(a1 + 4);
    v15 = *a1 + 4 * v14 * v12;
    v16 = v14 * v13;
    v17 = v16 == 0;
    if (v16)
    {
      v18 = v15;
    }

    else
    {
      v18 = 0;
    }

    v19 = (v15 + 4 * v16);
    if (v17)
    {
      v19 = 0;
    }

    if (v18 != v19)
    {
      bzero(v18, ((v19 - v18 - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4);
    }
  }
}

float **cva::MatrixRef<float,0u,0u,false>::operator=<cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>(float **a1, void *a2)
{
  v4 = &a1[1][-*(a1 + 5)];
  if (***(*a2 + 8) == v4 || **(****(a2[1] + 16) + 8) == v4)
  {
    v5 = *a1;
    v6 = *(a1 + 1);
    v22[0] = 0;
    v22[1] = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(v22, (v6 * v5));
    v23 = v5;
    v24 = v6;
    cva::detail::assignNoAlias<cva::Matrix<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>(v22, a2);
    v8 = *a1;
    if (*a1 != v23 || (v9 = *(a1 + 1), v9 != v24))
    {
      v10 = cva::Logger::instance(v7);
      cva::Logger::logInCategory(v10, 1, *MEMORY[0x1E6997750], "%u x %u <-> %u x %u\n", *a1, *(a1 + 1), v23, v24);
      v8 = *a1;
      if (*a1 != v23 || (v9 = *(a1 + 1), v9 != v24))
      {
        __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
      }
    }

    v11 = *(a1 + 4);
    v12 = v8 * v9 == 0;
    if (v8 * v9)
    {
      v13 = a1[1];
    }

    else
    {
      v13 = 0;
    }

    v14 = &a1[1][v11 * v9];
    if (v12)
    {
      v14 = 0;
    }

    v15 = v22[0];
    if (v13 != v14)
    {
      v16 = 0;
      v17 = v11 - v8;
      v18 = v22[0];
      do
      {
        v19 = *v18++;
        *v13 = v19;
        if (v16 + 1 >= v8)
        {
          v20 = v17;
        }

        else
        {
          v20 = 0;
        }

        v13 += v20 + 1;
        if (v16 + 1 < v8)
        {
          ++v16;
        }

        else
        {
          v16 = 0;
        }
      }

      while (v13 != v14);
    }

    free(v15);
  }

  else
  {
    cva::detail::assignNoAlias<cva::MatrixRef<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>(a1, a2);
  }

  return a1;
}

void cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,1u,false>>(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*v4 == *a1 || **(a2 + 16) == *a1)
  {
    v7 = *(v4 + 16);
    v13 = 0;
    v14 = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(&v13, v7);
    v15 = *(*(a2 + 8) + 16);
    cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,1u,false>>(&v13, a2);
    v8 = *a1;
    v9 = *(a1 + 8);
    v10 = v14;
    *a1 = v13;
    *(a1 + 8) = v10;
    v13 = v8;
    v14 = v9;
    *(a1 + 16) = v15;
    v15 = 0;
    free(v8);
  }

  else
  {
    v5 = *(a1 + 16);
    if (v5 != *(v4 + 16))
    {
      v6 = cva::Logger::instance(a1);
      cva::Logger::logInCategory(v6, 1, *MEMORY[0x1E6997750], "%u x %u <-> %u x %u\n", *(a1 + 16), 1, *(*(a2 + 8) + 16), 1);
      v5 = *(a1 + 16);
      v4 = *(a2 + 8);
      if (v5 != *(v4 + 16))
      {
        cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
      }
    }

    if (*(v4 + 20) * v5 && *(*(a2 + 16) + 16))
    {
      cva::VecLib<float>::gemv();
    }

    if (v5)
    {
      v11 = *a1;
      v12 = 4 * v5;

      bzero(v11, v12);
    }
  }
}

void cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,9u,1u,false>>(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*v4 == *a1 || *(a2 + 16) == *a1)
  {
    v7 = *(v4 + 16);
    v13 = 0;
    v14 = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(&v13, v7);
    v15 = *(*(a2 + 8) + 16);
    cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,9u,1u,false>>(&v13, a2);
    v8 = *a1;
    v9 = *(a1 + 8);
    v10 = v14;
    *a1 = v13;
    *(a1 + 8) = v10;
    v13 = v8;
    v14 = v9;
    *(a1 + 16) = v15;
    v15 = 0;
    free(v8);
  }

  else
  {
    v5 = *(a1 + 16);
    if (v5 != *(v4 + 16))
    {
      v6 = cva::Logger::instance(a1);
      cva::Logger::logInCategory(v6, 1, *MEMORY[0x1E6997750], "%u x %u <-> %u x %u\n", *(a1 + 16), 1, *(*(a2 + 8) + 16), 1);
      v5 = *(a1 + 16);
      v4 = *(a2 + 8);
      if (v5 != *(v4 + 16))
      {
        cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
      }
    }

    if (*(v4 + 20) * v5)
    {
      cva::VecLib<float>::gemv();
    }

    if (v5)
    {
      v11 = *a1;
      v12 = 4 * v5;

      bzero(v11, v12);
    }
  }
}

uint64_t arkit::FaceTrackingData::FaceTrackingData(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 32) = *(a2 + 8);
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  std::vector<arkit::Landmark>::__init_with_size[abi:ne200100]<arkit::Landmark*,arkit::Landmark*>((a1 + 40), *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 2));
  return a1;
}

{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 32) = *(a2 + 8);
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  std::vector<arkit::Landmark>::__init_with_size[abi:ne200100]<arkit::Landmark*,arkit::Landmark*>((a1 + 40), *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 2));
  return a1;
}

void arkit::FaceTrackingData::filteredLandmarks(uint64_t a1@<X0>, int **a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<arkit::Landmark>::reserve(a3, a2[1] - *a2);
  v7 = *a2;
  v6 = a2[1];
  if (v7 != v6)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 48) - *(a1 + 40)) >> 2) - 1;
    do
    {
      v9 = *v7;
      if (v8 >= v9)
      {
        v10 = *(a1 + 40) + 12 * v9;
        v11 = a3[1];
        if (v11 >= a3[2])
        {
          v12 = std::vector<arkit::Landmark>::__emplace_back_slow_path<arkit::Landmark const&>(a3, v10);
        }

        else
        {
          *v11 = *v10;
          *(v11 + 8) = *(v10 + 8);
          v12 = v11 + 12;
        }

        a3[1] = v12;
      }

      ++v7;
    }

    while (v7 != v6);
  }
}

void sub_1C254C440(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<arkit::Landmark>::__init_with_size[abi:ne200100]<arkit::Landmark*,arkit::Landmark*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<arkit::Landmark>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C254C4E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<arkit::Landmark>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    std::allocator<arkit::Landmark>::allocate_at_least[abi:ne200100](a1, a2);
  }

  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
}

void arkit::FacialLightEstimation::FacialLightEstimation(arkit::FacialLightEstimation *this)
{
  *(this + 24) = 0u;
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  operator new();
}

void sub_1C254C618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  free(*(v15 + 72));
  v18 = *(v15 + 48);
  if (v18)
  {
    *(v15 + 56) = v18;
    operator delete(v18);
  }

  v19 = *v16;
  if (*v16)
  {
    *(v15 + 32) = v19;
    operator delete(v19);
  }

  free(*v15);
  _Unwind_Resume(a1);
}

void arkit::FacialLightEstimation::estimateLight(uint64_t a1@<X0>, uint64_t a2@<X1>, float *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  arkit::PrecomputedFaceData::getValidSampleIDs(&__p, *(a1 + 96));
  v8 = *(a1 + 48);
  if (v8)
  {
    *(a1 + 56) = v8;
    operator delete(v8);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = __p;
  *(a1 + 64) = v83;
  arkit::FaceTrackingData::filteredLandmarks(a3, (a1 + 48), &v99);
  v96 = 0;
  v97 = 0;
  v98 = 0;
  v9 = v99;
  v10 = v100;
  if (v99 != v100)
  {
    v11 = 0;
    do
    {
      v12 = v9[8];
      if (v11 >= v98)
      {
        v13 = v96;
        v14 = v11 - v96;
        v15 = (v11 - v96) >> 2;
        v16 = v15 + 1;
        if ((v15 + 1) >> 62)
        {
          _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
        }

        v17 = v98 - v96;
        if ((v98 - v96) >> 1 > v16)
        {
          v16 = v17 >> 1;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v18 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          std::allocator<unsigned int>::allocate_at_least[abi:ne200100](&v96, v18);
        }

        v19 = v15;
        v20 = (4 * v15);
        v21 = &v20[-v19];
        *v20 = v12;
        v11 = (v20 + 1);
        memcpy(v21, v13, v14);
        v22 = v96;
        v96 = v21;
        v97 = v11;
        v98 = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v11 = v12;
        v11 += 4;
      }

      v97 = v11;
      v9 += 12;
    }

    while (v9 != v10);
  }

  if (*(a2 + 9))
  {
    kdebug_trace();
    arkit::ChromaFilter::filter(a4, &v99, v23, v24, v25);
    kdebug_trace();
    v26 = v96;
    v27 = __p;
    if (v97 == v96)
    {
      if (!__p)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v28 = 0;
      v29 = (v97 - v96) >> 2;
      if (v29 <= 1)
      {
        v29 = 1;
      }

      do
      {
        v30 = ((*&v27[(v28 >> 3) & 0x1FFFFFFFFFFFFFF8] >> v28) & 1) != 0 && *&v26[4 * v28] == 1;
        *&v26[4 * v28++] = v30;
      }

      while (v29 != v28);
    }

    operator delete(v27);
  }

LABEL_29:
  v93 = 0;
  v94 = 0;
  v95 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v93, *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 2);
  v31 = v96;
  v32 = v97;
  if (v96 != v97)
  {
    v33 = v93;
    do
    {
      if (*v31)
      {
        ++v33;
      }

      else
      {
        v34 = v94 - (v33 + 1);
        if (v94 != v33 + 1)
        {
          memmove(v33, v33 + 1, v94 - (v33 + 1));
        }

        v94 = (v33 + v34);
      }

      v31 += 4;
    }

    while (v31 != v32);
  }

  arkit::FaceTrackingData::filteredLandmarks(a3, &v93, &v91);
  if (0xAAAAAAAAAAAAAAABLL * ((v92 - v91) >> 2) != v94 - v93)
  {
    __assert_rtn("estimateLight", "FacialLightEstimation.cpp", 67, "sampleIndices.size() == samplePositions.size()");
  }

  if (v92 == v91)
  {
    goto LABEL_44;
  }

  arkit::FacialLightEstimation::populateValidImageSamples(a1, a4, &v93, &v91, &v96);
  v35 = *(a1 + 16);
  if (v35)
  {
    v36 = *a1;
    v37 = *(a1 + 16);
    do
    {
      *v36 = powf(*v36, 2.2);
      ++v36;
      --v37;
    }

    while (v37);
  }

  if (v35 == *(a1 + 88) && v35 >= *(a1 + 92))
  {
    v88 = 0;
    v89 = 0;
    v90 = 0;
    std::vector<std::pair<float,cva::Matrix<float,1u,0u,false>>>::reserve(&v88, v35);
    v38 = *(a1 + 88);
    if (v38)
    {
      v39 = 0;
      v40 = 0;
      do
      {
        if (v40 >= *(a1 + 16))
        {
          __assert_rtn("assert_in_bounds", "matrixmixin.h", 2283, "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)");
        }

        if (v40 >= v38)
        {
          __assert_rtn("row", "matrixmixin.h", 1063, "(row < mixed().rows()) || cva::detail::assertMessage(Index out of bounds.)");
        }

        v41 = *(a1 + 92);
        v42 = *(a1 + 72) + v39;
        LODWORD(v79) = *(*a1 + v39);
        DWORD2(v79) = v41;
        *&v80 = v42;
        *(&v80 + 1) = __PAIR64__(v40, v38);
        std::pair<float,cva::Matrix<float,1u,0u,false>>::pair[abi:ne200100]<float,cva::MatrixRef<float,1u,0u,false>,0>(&__p, &v79);
        v43 = v89;
        if (v89 >= v90)
        {
          v45 = std::vector<std::pair<float,cva::Matrix<float,1u,0u,false>>>::__emplace_back_slow_path<std::pair<float,cva::Matrix<float,1u,0u,false>>>(&v88, &__p);
          v44 = *(&__p + 1);
        }

        else
        {
          v44 = 0;
          *v89 = __p;
          *(v43 + 1) = 0;
          *(v43 + 2) = 0;
          *(v43 + 1) = *(&__p + 1);
          *(v43 + 2) = v83;
          v43[6] = DWORD2(v83);
          *(&__p + 1) = 0;
          *&v83 = 0;
          DWORD2(v83) = 0;
          v45 = (v43 + 8);
        }

        ++v40;
        v89 = v45;
        free(v44);
        v38 = *(a1 + 88);
        v39 += 4;
      }

      while (v40 < v38);
    }

    arkit::runSolver(&v88, a2, &__p);
    v79 = __p;
    v80 = v83;
    v81 = v84;
    v47 = (a1 + 152);
    v46 = *(a1 + 152);
    *(a1 + 160) = v46;
    v48 = v85;
    v49 = v86;
    if (v85 != v86)
    {
      do
      {
        v50 = v93[*v48];
        v51 = *(a1 + 168);
        if (v46 >= v51)
        {
          v52 = *v47;
          v53 = v46 - *v47;
          v54 = (v53 >> 3) + 1;
          if (v54 >> 61)
          {
            _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
          }

          v55 = v51 - v52;
          if (v55 >> 2 > v54)
          {
            v54 = v55 >> 2;
          }

          if (v55 >= 0x7FFFFFFFFFFFFFF8)
          {
            v56 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v56 = v54;
          }

          if (v56)
          {
            _ZNSt3__19allocatorIDv2_fE17allocate_at_leastB8ne200100Em(a1 + 152, v56);
          }

          v57 = (8 * (v53 >> 3));
          *v57 = v50;
          v46 = (v57 + 1);
          memcpy(0, v52, v53);
          v58 = *(a1 + 152);
          *(a1 + 152) = 0;
          *(a1 + 160) = v46;
          *(a1 + 168) = 0;
          if (v58)
          {
            operator delete(v58);
          }
        }

        else
        {
          *v46 = v50;
          v46 += 8;
        }

        *(a1 + 160) = v46;
        ++v48;
      }

      while (v48 != v49);
    }

      ;
    }

    v60 = *(a3 + 1);
    v76 = *a3;
    v77 = v60;
    v78 = a3[8];
    arkit::shct::rotateShCoeff(&v79, &v76, v75);
    v61 = *(&v76 + 2);
    v62 = *(&v77 + 1);
    v63 = v78;
    v71 = atan2f(*(&v77 + 1), v78);
    v64.f32[0] = atan2f(-v61, sqrtf((v63 * v63) + (v62 * v62)));
    v64.f32[1] = v71;
    v65 = vsubq_f64(xmmword_1C25ED0F0, vabsq_f64(vdivq_f64(vcvtq_f64_f32(vmul_f32(v64, vdup_n_s32(0x43340000u))), vdupq_n_s64(0x400921FB54442D18uLL))));
    if (v65.f64[0] >= v65.f64[1])
    {
      v65.f64[0] = v65.f64[1];
    }

    v66 = *a2;
    v67 = v65.f64[0];
    v68 = 1.0 / (expf(v67 * -0.8) + 1.0) * v66;
    arkit::ExponentialSmoother<cva::Matrix<float,9u,1u,false>>::step(a1 + 112, v75, v73, v68);
    v69 = v73[1];
    *a5 = v73[0];
    *(a5 + 16) = v69;
    *(a5 + 32) = v74;
    *(a5 + 36) = v87;
    if (v85)
    {
      v86 = v85;
      operator delete(v85);
    }

    *&__p = &v88;
    std::vector<std::pair<float,cva::Matrix<float,1u,0u,false>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  else
  {
LABEL_44:
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }
}

void sub_1C254CDF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41)
{
  if (__p)
  {
    a41 = __p;
    operator delete(__p);
  }

  a35 = v41 - 248;
  std::vector<std::pair<float,cva::Matrix<float,1u,0u,false>>>::__destroy_vector::operator()[abi:ne200100](&a35);
  v43 = *(v41 - 224);
  if (v43)
  {
    *(v41 - 216) = v43;
    operator delete(v43);
  }

  v44 = *(v41 - 200);
  if (v44)
  {
    *(v41 - 192) = v44;
    operator delete(v44);
  }

  v45 = *(v41 - 176);
  if (v45)
  {
    *(v41 - 168) = v45;
    operator delete(v45);
  }

  v46 = *(v41 - 152);
  if (v46)
  {
    *(v41 - 144) = v46;
    operator delete(v46);
  }

  _Unwind_Resume(a1);
}

void arkit::FacialLightEstimation::populateValidImageSamples(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v6 = a4;
  v9 = a1;
  v10 = 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 2);
  *(a1 + 16) = v10;
  cva::MatrixData<float,0ul,0ul,false>::reserve(a1, v10);
  *(v9 + 32) = *(v9 + 24);
  std::vector<float>::reserve((v9 + 24), 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 2));
  v11 = (v6[1] - *v6) >> 2;
  *(v9 + 88) = -1431655765 * v11;
  *(v9 + 92) = 9;
  v56 = (v9 + 24);
  cva::MatrixData<float,0ul,0ul,false>::reserve(v9 + 72, (3 * v11));
  v13 = *a3;
  v12 = a3[1];
  if (v12 != *a3)
  {
    v14 = 0;
    v15 = 0;
    LODWORD(v16) = 0;
    v51 = "matrixmixin.h";
    v52 = "(row < mixed().rows()) || cva::detail::assertMessage(Index out of bounds.)";
    v50 = "row";
    v54 = v9;
    v55 = v6;
    v53 = a2;
    while (1)
    {
      v17 = (a5[1] - *a5) >> 2;
      if (v17 > v16)
      {
        v16 = v16;
        do
        {
          if (*(*a5 + 4 * v16))
          {
            break;
          }

          ++v16;
        }

        while (v17 > v16);
      }

      v18 = (*v6 + 12 * v14);
      v19 = *v18;
      if (*v18 >= 0.0 && v19 < *(a2 + 8))
      {
        v20 = v18[1];
        if (v20 >= 0.0)
        {
          v21 = *(a2 + 12);
          if (v20 < v21)
          {
            v23 = *(v9 + 32);
            v22 = *(v9 + 40);
            if (v23 >= v22)
            {
              v25 = *v56;
              v26 = v23 - *v56;
              v27 = (v26 >> 2) + 1;
              if (v27 >> 62)
              {
                _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
              }

              v28 = v22 - v25;
              if (v28 >> 1 > v27)
              {
                v27 = v28 >> 1;
              }

              v29 = v28 >= 0x7FFFFFFFFFFFFFFCLL;
              v30 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v29)
              {
                v30 = v27;
              }

              if (v30)
              {
                std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v56, v30);
              }

              v31 = (4 * (v26 >> 2));
              *v31 = *(v13 + 4 * v14);
              v24 = v31 + 1;
              memcpy(0, v25, v26);
              v32 = *(v9 + 24);
              *(v9 + 24) = 0;
              *(v9 + 32) = v24;
              *(v9 + 40) = 0;
              if (v32)
              {
                operator delete(v32);
              }
            }

            else
            {
              *v23 = *(v13 + 4 * v14);
              v24 = v23 + 1;
            }

            v33 = 0;
            *(v9 + 32) = v24;
            v34 = v19;
            v35 = v20;
            v59[0] = v34 | (v35 << 32);
            v57[0] = *(a2 + 8);
            do
            {
              v36 = *(v59 + v33);
              v37 = *(v57 + v33);
              v38 = v36 >= v37 || v33 == 4;
              v33 += 4;
            }

            while (!v38);
            if (v36 >= v37)
            {
              arkit::ImageViewYUV::at();
            }

            if (v14 >= *(v9 + 16))
            {
              arkit::FacialLightEstimation::populateValidImageSamples();
            }

            LOBYTE(v21) = *(*(a2 + 24) + *a2 + (*(a2 + 16) * v34 + *(a2 + 20) * v35));
            *(*v9 + 4 * v14) = LODWORD(v21) * 0.0039216;
            RTF = arkit::PrecomputedFaceData::getRTF(v57, *(v9 + 96), v16);
            v40 = *(v9 + 88);
            if (v40 <= v15)
            {
              v49 = 1063;
              goto LABEL_51;
            }

            v41 = *(v9 + 92);
            v42 = *(v9 + 72);
            if (v41 != v58)
            {
              v43 = cva::Logger::instance(RTF);
              cva::Logger::logInCategory(v43, 1, *MEMORY[0x1E6997750], "%u x %u <-> %u x %u\n", 1, v41, 1, v58);
              if (v41 != v58)
              {
                v49 = 163;
                v50 = "assert_equal_size";
                v51 = "matrixfun.h";
                v52 = "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)";
LABEL_51:
                __assert_rtn(v50, v51, v49, v52);
              }
            }

            if (v41)
            {
              v44 = (v42 + 4 * v15);
            }

            else
            {
              v44 = 0;
            }

            v45 = v42 + 4 * v15 + 4 * (v41 * v40);
            if (!v41)
            {
              v45 = 0;
            }

            v46 = v57[0];
            if (v44 != v45)
            {
              v47 = v57[0];
              do
              {
                v48 = *v47++;
                *v44 = v48;
                v44 += v40;
              }

              while (v44 != v45);
            }

            ++v15;
            free(v46);
            LODWORD(v16) = v16 + 1;
            v6 = v55;
            v13 = *a3;
            v12 = a3[1];
            a2 = v53;
            v9 = v54;
          }
        }
      }

      if (++v14 >= (v12 - v13) >> 2)
      {
        goto LABEL_45;
      }
    }
  }

  v15 = 0;
LABEL_45:
  cva::Matrix<float,0u,0u,false>::conservativeResize(v56 + 6, v15, 9u);
  cva::Matrix<float,0u,1u,false>::conservativeResize(v9, v15, 1);
}

uint64_t *std::vector<std::pair<float,cva::Matrix<float,1u,0u,false>>>::reserve(uint64_t *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      std::allocator<std::pair<float,cva::Matrix<float,1u,0u,false>>>::allocate_at_least[abi:ne200100](result, a2);
    }

    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }

  return result;
}

void sub_1C254D3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::pair<float,cva::Matrix<float,1u,0u,false>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 arkit::ExponentialSmoother<cva::Matrix<float,9u,1u,false>>::step@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v16[3] = *MEMORY[0x1E69E9840];
  if (*(a1 + 36))
  {
    v13 = a2;
    v15 = 0;
    v14 = a4;
    v10 = a1;
    v12 = 0;
    v11 = 1.0 - a4;
    v16[0] = &v13;
    v16[1] = &v10;
    std::optional<cva::Matrix<float,9u,1u,false>>::operator=[abi:ne200100]<cva::MatrixBinaryExpr<cva::MatrixScalarExpr<cva::Matrix<float,9u,1u,false>,cva::detail::MulOp>,cva::MatrixScalarExpr<cva::Matrix<float,9u,1u,false>,cva::detail::MulOp>,cva::detail::AddOp>,void>(a1, v16);
    if ((*(a1 + 36) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    *(a1 + 32) = *(a2 + 8);
    *a1 = v6;
    *(a1 + 16) = v7;
    *(a1 + 36) = 1;
  }

  result = *a1;
  v9 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v9;
  *(a3 + 32) = *(a1 + 32);
  return result;
}

void cva::Matrix<float,0u,0u,false>::conservativeResize(uint64_t *a1, unsigned int a2, unsigned int a3)
{
  v6 = a3 * a2;
  if (a1[1] >= v6)
  {
    if (a3 >= 2)
    {
      v14 = *(a1 + 4);
      if (v14 != a2)
      {
        v15 = *(a1 + 5);
        if (v15 > 1)
        {
          if (v15 >= a3)
          {
            v16 = a3;
          }

          else
          {
            v16 = v15;
          }

          if (v14 <= a2)
          {
            v19 = v16 - 1;
            v20 = a2 * (v16 - 1);
            do
            {
              memmove((*a1 + 4 * v20), (*a1 + 4 * (*(a1 + 4) * v19)), 4 * *(a1 + 4));
              v20 -= a2;
              --v19;
            }

            while (v19);
          }

          else
          {
            v17 = 1;
            v18 = a2;
            do
            {
              memmove((*a1 + 4 * v18), (*a1 + 4 * (*(a1 + 4) * v17++)), 4 * a2);
              v18 += a2;
            }

            while (v16 != v17);
          }
        }
      }
    }

    *(a1 + 4) = a2;
    *(a1 + 5) = a3;
  }

  else
  {
    v29 = 0;
    v30 = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(&v29, v6);
    v31 = __PAIR64__(a3, a2);
    v7 = *(a1 + 4);
    v8 = *(a1 + 5);
    if (v7 >= a2)
    {
      v9 = a2;
    }

    else
    {
      v9 = *(a1 + 4);
    }

    if (v8 >= a3)
    {
      v8 = a3;
    }

    v10 = *a1;
    v25[0] = v9;
    v25[1] = v8;
    v26 = v10;
    v27 = v7;
    v28 = 0;
    v21[0] = v9;
    v21[1] = v8;
    v22 = v29;
    v23 = a2;
    v24 = 0;
    cva::MatrixRef<float,0u,0u,false>::operator=<cva::MatrixRef<float,0u,0u,false>>(v21, v25);
    v11 = *a1;
    v12 = a1[1];
    v13 = v30;
    *a1 = v29;
    a1[1] = v13;
    v29 = v11;
    v30 = v12;
    a1[2] = v31;
    v31 = 0;
    free(v11);
  }
}

uint64_t *std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C254D67C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<std::pair<float,cva::Matrix<float,1u,0u,false>>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<float,cva::Matrix<float,1u,0u,false>>>,std::pair<float,cva::Matrix<float,1u,0u,false>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      v7 = *(v6 + 16);
      *(a4 + 8) = *(v6 + 8);
      *(a4 + 16) = v7;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(a4 + 24) = *(v6 + 24);
      *(v6 + 24) = 0;
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      free(*(v5 + 8));
      v5 += 32;
    }
  }
}

uint64_t std::__split_buffer<std::pair<float,cva::Matrix<float,1u,0u,false>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    free(*(i - 24));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<std::pair<float,cva::Matrix<float,1u,0u,false>>>::__emplace_back_slow_path<std::pair<float,cva::Matrix<float,1u,0u,false>>>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    std::allocator<std::pair<float,cva::Matrix<float,1u,0u,false>>>::allocate_at_least[abi:ne200100](a1, v7);
  }

  v8 = 32 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *v8 = *a2;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  v9 = *(a2 + 16);
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 16) = v9;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v8 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *&v18 = 32 * v2 + 32;
  v10 = a1[1];
  v11 = 32 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<float,cva::Matrix<float,1u,0u,false>>>,std::pair<float,cva::Matrix<float,1u,0u,false>>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<std::pair<float,cva::Matrix<float,1u,0u,false>>>::~__split_buffer(&v16);
  return v15;
}

void sub_1C254D8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<std::pair<float,cva::Matrix<float,1u,0u,false>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::pair<float,cva::Matrix<float,1u,0u,false>>::pair[abi:ne200100]<float,cva::MatrixRef<float,1u,0u,false>,0>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 8) = 0;
  v5 = (a1 + 8);
  *(a1 + 16) = 0;
  cva::MatrixData<float,0ul,0ul,false>::allocate((a1 + 8), v4);
  v6 = *(a2 + 8);
  *(a1 + 24) = v6;
  v7 = *v5;
  v8 = *(a2 + 16);
  if (&v8[-*(a2 + 28)] == *v5)
  {
    v22 = 0;
    v23 = 0;
    v11 = cva::MatrixData<float,0ul,0ul,false>::allocate(&v22, v6);
    v24 = v6;
    if (v6 != *(a2 + 8))
    {
      v12 = cva::Logger::instance(v11);
      cva::Logger::logInCategory(v12, 1, *MEMORY[0x1E6997750], "%u x %u <-> %u x %u\n", 1, v24, 1, *(a2 + 8));
      v6 = v24;
      if (v24 != *(a2 + 8))
      {
        __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
      }
    }

    v13 = v22;
    if (v6)
    {
      v14 = *(a2 + 16);
      v15 = 4 * v6;
      v16 = 4 * *(a2 + 24);
      v17 = v22;
      do
      {
        *v17++ = *v14;
        v14 = (v14 + v16);
        v15 -= 4;
      }

      while (v15);
    }

    v18 = *(a1 + 8);
    v19 = *(a1 + 16);
    v20 = v23;
    *(a1 + 8) = v13;
    *(a1 + 16) = v20;
    v22 = v18;
    v23 = v19;
    *(a1 + 24) = v6;
    v24 = 0;
    free(v18);
  }

  else if (v6)
  {
    v9 = 4 * v6;
    v10 = 4 * *(a2 + 24);
    do
    {
      *v7++ = *v8;
      v8 = (v8 + v10);
      v9 -= 4;
    }

    while (v9);
  }

  return a1;
}

void std::vector<std::pair<float,cva::Matrix<float,1u,0u,false>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 4;
        free(*(v4 - 3));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::shared_ptr<arkit::PrecomputedFaceData>::shared_ptr[abi:ne200100]<arkit::PrecomputedFaceData,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_1C254DB78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<arkit::PrecomputedFaceData>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

arkit::PrecomputedFaceData **std::unique_ptr<arkit::PrecomputedFaceData>::~unique_ptr[abi:ne200100](arkit::PrecomputedFaceData **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    arkit::PrecomputedFaceData::~PrecomputedFaceData(v2);
    MEMORY[0x1C691A790]();
  }

  return a1;
}

void std::__shared_ptr_pointer<arkit::PrecomputedFaceData *,std::shared_ptr<arkit::PrecomputedFaceData>::__shared_ptr_default_delete<arkit::PrecomputedFaceData,arkit::PrecomputedFaceData>,std::allocator<arkit::PrecomputedFaceData>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691A790);
}

arkit::PrecomputedFaceData *std::__shared_ptr_pointer<arkit::PrecomputedFaceData *,std::shared_ptr<arkit::PrecomputedFaceData>::__shared_ptr_default_delete<arkit::PrecomputedFaceData,arkit::PrecomputedFaceData>,std::allocator<arkit::PrecomputedFaceData>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    arkit::PrecomputedFaceData::~PrecomputedFaceData(result);

    JUMPOUT(0x1C691A790);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<arkit::PrecomputedFaceData *,std::shared_ptr<arkit::PrecomputedFaceData>::__shared_ptr_default_delete<arkit::PrecomputedFaceData,arkit::PrecomputedFaceData>,std::allocator<arkit::PrecomputedFaceData>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::optional<cva::Matrix<float,9u,1u,false>>::operator=[abi:ne200100]<cva::MatrixBinaryExpr<cva::MatrixScalarExpr<cva::Matrix<float,9u,1u,false>,cva::detail::MulOp>,cva::MatrixScalarExpr<cva::Matrix<float,9u,1u,false>,cva::detail::MulOp>,cva::detail::AddOp>,void>(uint64_t result, float **a2)
{
  if (*(result + 36) == 1)
  {
    v2 = 0;
    v3 = *a2;
    v4 = a2[1];
    v5 = **a2;
    v6 = *v4;
    do
    {
      *(result + v2) = (*(v5 + v2) * v3[2]) + (*(v6 + v2) * v4[2]);
      v2 += 4;
    }

    while (v2 != 36);
  }

  else
  {
    v7 = 0;
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    v8 = *a2;
    v9 = a2[1];
    v10 = **a2;
    v11 = *v9;
    do
    {
      *(result + v7) = (*(v10 + v7) * v8[2]) + (*(v11 + v7) * v9[2]);
      v7 += 4;
    }

    while (v7 != 36);
    *(result + 36) = 1;
  }

  return result;
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D8] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5418], MEMORY[0x1E69E52A0]);
}

cva::Logger *cva::MatrixRef<float,0u,0u,false>::operator=<cva::MatrixRef<float,0u,0u,false>>(cva::Logger *a1, uint64_t a2)
{
  if (*(a2 + 8) - 4 * *(a2 + 20) != *(a1 + 1) - 4 * *(a1 + 5))
  {
    cva::detail::assignNoAlias<cva::MatrixRef<float,0u,0u,false>,cva::MatrixRef<float,0u,0u,false>>(a1, a2);
    return a1;
  }

  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = (v5 * *a1);
  v28[0] = 0;
  v28[1] = 0;
  v7 = cva::MatrixData<float,0ul,0ul,false>::allocate(v28, v6);
  v29 = v4;
  v30 = v5;
  v8 = MEMORY[0x1E6997750];
  if (v4 != *a2 || v5 != *(a2 + 4))
  {
    v9 = cva::Logger::instance(v7);
    cva::Logger::logInCategory(v9, 1, *v8, "%u x %u <-> %u x %u\n", v29, v30, *a2, *(a2 + 4));
    v4 = v29;
    if (v29 != *a2)
    {
      goto LABEL_38;
    }

    v5 = v30;
    if (v30 != *(a2 + 4))
    {
      goto LABEL_38;
    }

    v6 = (v29 * v30);
  }

  v10 = v28[0];
  if (v6)
  {
    v11 = 0;
    v12 = *(a2 + 16) - v4;
    v13 = *(a2 + 8);
    v14 = 4 * v6;
    v15 = v28[0];
    do
    {
      *v15 = *v13;
      v15 = (v15 + 4);
      if (v11 + 1 >= v4)
      {
        v16 = v12;
      }

      else
      {
        v16 = 0;
      }

      v17 = &v13[v16];
      if (v11 + 1 < v4)
      {
        ++v11;
      }

      else
      {
        v11 = 0;
      }

      v13 = v17 + 1;
      v14 -= 4;
    }

    while (v14);
  }

  if (*a1 == v4 && *(a1 + 1) == v5)
  {
    goto LABEL_22;
  }

  v18 = cva::Logger::instance(v10);
  cva::Logger::logInCategory(v18, 1, *v8, "%u x %u <-> %u x %u\n", *a1, *(a1 + 1), v29, v30);
  v4 = *a1;
  if (*a1 != v29 || (v5 = *(a1 + 1), v5 != v30))
  {
LABEL_38:
    __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
  }

  v10 = v28[0];
  LODWORD(v6) = v4 * v5;
LABEL_22:
  v19 = *(a1 + 4);
  if (v6)
  {
    v20 = *(a1 + 1);
  }

  else
  {
    v20 = 0;
  }

  v21 = *(a1 + 1) + 4 * (v19 * v5);
  if (!v6)
  {
    v21 = 0;
  }

  if (v20 != v21)
  {
    v22 = 0;
    v23 = v19 - v4;
    v24 = v10;
    do
    {
      v25 = *v24;
      v24 = (v24 + 4);
      *v20 = v25;
      if (v22 + 1 >= v4)
      {
        v26 = v23;
      }

      else
      {
        v26 = 0;
      }

      v20 += v26 + 1;
      if (v22 + 1 < v4)
      {
        ++v22;
      }

      else
      {
        v22 = 0;
      }
    }

    while (v20 != v21);
  }

  free(v10);
  return a1;
}

cva::Logger *cva::detail::assignNoAlias<cva::MatrixRef<float,0u,0u,false>,cva::MatrixRef<float,0u,0u,false>>(cva::Logger *result, uint64_t a2)
{
  v3 = result;
  v4 = *result;
  if (*result != *a2 || (v5 = *(result + 1), v5 != *(a2 + 4)))
  {
    v6 = cva::Logger::instance(result);
    result = cva::Logger::logInCategory(v6, 1, *MEMORY[0x1E6997750], "%u x %u <-> %u x %u\n", *v3, *(v3 + 1), *a2, *(a2 + 4));
    v4 = *v3;
    if (*v3 != *a2 || (v5 = *(v3 + 1), v5 != *(a2 + 4)))
    {
      cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
    }
  }

  v7 = v5 * v4;
  v8 = *(v3 + 4);
  if (v5 * v4)
  {
    v9 = *(v3 + 1);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v3 + 1) + 4 * (v8 * v5);
  if (!v7)
  {
    v10 = 0;
  }

  if (v9 != v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = *(a2 + 16) - v4;
    v14 = v8 - v4;
    if (v7)
    {
      v15 = *(a2 + 8);
    }

    else
    {
      v15 = 0;
    }

    do
    {
      *v9 = *v15;
      if (v11 + 1 >= v4)
      {
        v16 = v13;
      }

      else
      {
        v16 = 0;
      }

      v15 += v16 + 1;
      if (v11 + 1 < v4)
      {
        ++v11;
      }

      else
      {
        v11 = 0;
      }

      if (v12 + 1 >= v4)
      {
        v17 = v14;
      }

      else
      {
        v17 = 0;
      }

      v9 += v17 + 1;
      if (v12 + 1 < v4)
      {
        ++v12;
      }

      else
      {
        v12 = 0;
      }
    }

    while (v9 != v10);
  }

  return result;
}

void cva::Matrix<float,0u,1u,false>::conservativeResize(uint64_t a1, unsigned int a2, int a3)
{
  if (a3 != 1)
  {
    cva::Matrix<float,0u,1u,false>::conservativeResize();
  }

  if (*(a1 + 8) >= a2)
  {
    *(a1 + 16) = a2;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(&v19, a2);
    v21 = a2;
    v5 = *(a1 + 16);
    if (v5 >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = *(a1 + 16);
    }

    v7 = *a1;
    v14 = 0;
    v15 = v6;
    v16 = v7;
    v17 = v5;
    v18 = 0;
    v11 = v6;
    v12 = v19;
    v13 = a2;
    cva::MatrixRef<float,0u,1u,false>::operator=<cva::MatrixRef<float,0u,1u,false>>(&v11, &v15);
    v8 = *a1;
    v9 = *(a1 + 8);
    v10 = v20;
    *a1 = v19;
    *(a1 + 8) = v10;
    v19 = v8;
    v20 = v9;
    *(a1 + 16) = v21;
    v21 = 0;
    free(v8);
  }
}

unsigned int *cva::MatrixRef<float,0u,1u,false>::operator=<cva::MatrixRef<float,0u,1u,false>>(unsigned int *a1, _DWORD *a2)
{
  v4 = *(a1 + 1);
  if ((*(a2 + 1) - 4 * a2[5]) != &v4[-a1[5]])
  {
    v5 = *a1;
    if (*a1 != *a2)
    {
      v6 = cva::Logger::instance(a1);
      cva::Logger::logInCategory(v6, 1, *MEMORY[0x1E6997750], "%u x %u <-> %u x %u\n", *a1, 1, *a2, 1);
      v5 = *a1;
      if (*a1 != *a2)
      {
        cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
      }

      v4 = *(a1 + 1);
    }

    if (v5)
    {
      v7 = v5;
      v8 = *(a2 + 1);
      v9 = 4 * v7;
      do
      {
        v10 = *v8++;
        *v4++ = v10;
        v9 -= 4;
      }

      while (v9);
    }

    return a1;
  }

  v11 = *a1;
  v25[0] = 0;
  v25[1] = 0;
  v12 = cva::MatrixData<float,0ul,0ul,false>::allocate(v25, v11);
  v26 = v11;
  if (v11 != *a2)
  {
    v13 = cva::Logger::instance(v12);
    cva::Logger::logInCategory(v13, 1, *MEMORY[0x1E6997750], "%u x %u <-> %u x %u\n", v26, 1, *a2, 1);
    v11 = v26;
    if (v26 != *a2)
    {
      goto LABEL_22;
    }
  }

  v14 = v25[0];
  if (v11)
  {
    v15 = *(a2 + 1);
    v16 = 4 * v11;
    v17 = v25[0];
    do
    {
      v18 = *v15++;
      *v17 = v18;
      v17 = (v17 + 4);
      v16 -= 4;
    }

    while (v16);
  }

  if (*a1 == v11)
  {
    goto LABEL_17;
  }

  v19 = cva::Logger::instance(v14);
  cva::Logger::logInCategory(v19, 1, *MEMORY[0x1E6997750], "%u x %u <-> %u x %u\n", *a1, 1, v26, 1);
  v11 = *a1;
  if (v11 != v26)
  {
LABEL_22:
    __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
  }

  v14 = v25[0];
LABEL_17:
  if (v11)
  {
    v20 = *(a1 + 1);
    v21 = 4 * v11;
    v22 = v14;
    do
    {
      v23 = *v22;
      v22 = (v22 + 4);
      *v20++ = v23;
      v21 -= 4;
    }

    while (v21);
  }

  free(v14);
  return a1;
}

uint64_t *arkit::wrap@<X0>(uint64_t *__return_ptr a1@<X8>, arkit *this@<X0>)
{
  if (CVPixelBufferGetPixelFormatType(this) != 875704422)
  {
    arkit::wrap();
  }

  WidthOfPlane = CVPixelBufferGetWidthOfPlane(this, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(this, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(this, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(this, 0);
  *a1 = 0;
  a1[1] = WidthOfPlane | (HeightOfPlane << 32);
  a1[2] = (BytesPerRowOfPlane << 32) | 1;
  a1[3] = BaseAddressOfPlane;
  v8 = CVPixelBufferGetWidthOfPlane(this, 1uLL);
  v9 = v8 | (CVPixelBufferGetHeightOfPlane(this, 1uLL) << 32);
  v10 = (CVPixelBufferGetBytesPerRowOfPlane(this, 1uLL) << 32) | 2;
  v11 = CVPixelBufferGetBaseAddressOfPlane(this, 1uLL);
  a1[4] = 0;
  a1[5] = v9;
  a1[6] = v10;
  a1[7] = v11;
  LODWORD(v9) = CVPixelBufferGetWidthOfPlane(this, 1uLL);
  v12 = v9 | (CVPixelBufferGetHeightOfPlane(this, 1uLL) << 32);
  v13 = (CVPixelBufferGetBytesPerRowOfPlane(this, 1uLL) << 32) | 2;
  result = CVPixelBufferGetBaseAddressOfPlane(this, 1uLL);
  a1[8] = 0;
  a1[9] = v12;
  a1[10] = v13;
  a1[11] = result + 1;
  return result;
}

uint64_t *arkit::PrecomputedFaceData::PrecomputedFaceData(uint64_t *a1, __int128 *a2)
{
  std::__optional_copy_base<std::string const,false>::__optional_copy_base[abi:ne200100](&__p, a2);
  arkit::RTFSPContainer::loadRtfsp(&__p, a1);
  if (v5 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1C254E54C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void arkit::PrecomputedFaceData::~PrecomputedFaceData(arkit::PrecomputedFaceData *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    v3 = (v1 + 72);
    std::vector<cva::Matrix<float,1u,0u,false>>::__destroy_vector::operator()[abi:ne200100](&v3);
    v2 = *(v1 + 48);
    if (v2)
    {
      *(v1 + 56) = v2;
      operator delete(v2);
    }

    if (*(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
    }

    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    MEMORY[0x1C691A790](v1, 0x1032C40D1F799DBLL);
  }
}

uint64_t *arkit::PrecomputedFaceData::getRTF@<X0>(void **__return_ptr a1@<X8>, arkit::PrecomputedFaceData *this@<X0>, int a3@<W1>)
{
  v4 = *(*this + 72) + 24 * a3;
  v5 = *(v4 + 16);
  *a1 = 0;
  a1[1] = 0;
  result = cva::MatrixData<float,0ul,0ul,false>::allocate(a1, v5);
  if (v5)
  {
    result = memcpy(*a1, *v4, 4 * v5);
  }

  *(a1 + 4) = *(v4 + 16);
  return result;
}

void arkit::PrecomputedFaceData::getRTF(arkit::PrecomputedFaceData *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  v6 = (a2[1] - *a2) >> 2;
  v7 = *(*a1 + 96);
  *(a3 + 4) = v6;
  *(a3 + 5) = v7;
  cva::MatrixData<float,0ul,0ul,false>::reserve(a3, (v7 * v6));
  v8 = *a2;
  if (a2[1] != *a2)
  {
    v9 = 0;
    v23 = "matrixmixin.h";
    v24 = "(row < mixed().rows()) || cva::detail::assertMessage(Index out of bounds.)";
    v22 = "row";
    v10 = MEMORY[0x1E6997750];
    while (1)
    {
      RTF = arkit::PrecomputedFaceData::getRTF(&v25, a1, *(v8 + 4 * v9));
      v12 = *(a3 + 4);
      if (v9 >= v12)
      {
        break;
      }

      v13 = *(a3 + 5);
      v14 = *a3;
      if (v13 != v26)
      {
        v15 = cva::Logger::instance(RTF);
        cva::Logger::logInCategory(v15, 1, *v10, "%u x %u <-> %u x %u\n", 1, v13, 1, v26);
        if (v13 != v26)
        {
          v21 = 163;
          v22 = "assert_equal_size";
          v23 = "matrixfun.h";
          v24 = "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)";
LABEL_18:
          __assert_rtn(v22, v23, v21, v24);
        }
      }

      if (v13)
      {
        v16 = (v14 + 4 * v9);
      }

      else
      {
        v16 = 0;
      }

      v17 = v14 + 4 * v9 + 4 * (v13 * v12);
      if (!v13)
      {
        v17 = 0;
      }

      v18 = v25;
      if (v16 != v17)
      {
        v19 = v25;
        do
        {
          v20 = *v19++;
          *v16 = v20;
          v16 += v12;
        }

        while (v16 != v17);
      }

      ++v9;
      free(v18);
      v8 = *a2;
      if (v9 >= (a2[1] - *a2) >> 2)
      {
        return;
      }
    }

    v21 = 1063;
    goto LABEL_18;
  }
}

uint64_t arkit::PrecomputedFaceData::getValidSampleIDs(arkit::PrecomputedFaceData *this, uint64_t a2)
{
  v2 = *(*this + 48);
  if (a2 >= ((*(*this + 56) - v2) >> 2))
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  return *(v2 + 4 * a2);
}

uint64_t *arkit::PrecomputedFaceData::getValidSampleIDs@<X0>(uint64_t *__return_ptr a1@<X8>, arkit::PrecomputedFaceData *this@<X0>)
{
  v2 = *this;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, *(v2 + 48), *(v2 + 56), (*(v2 + 56) - *(v2 + 48)) >> 2);
}

std::string *std::__optional_copy_base<std::string const,false>::__optional_copy_base[abi:ne200100](std::string *a1, __int128 *a2)
{
  a1->__r_.__value_.__s.__data_[0] = 0;
  a1[1].__r_.__value_.__s.__data_[0] = 0;
  std::__optional_storage_base<std::string const,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::string const,false> const&>(a1, a2);
  return a1;
}

void sub_1C254E8F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__optional_copy_base<std::string const,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__optional_storage_base<std::string const,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::string const,false> const&>(std::string *this, __int128 *a2)
{
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      this->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::vector<cva::Matrix<float,1u,0u,false>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 24;
        free(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t arkit::Random::seedFromCurrentTime(arkit::Random *this)
{
  v1 = [MEMORY[0x1E696AE30] processInfo];
  [v1 systemUptime];
  v2 = (v3 * 1000000000.0);

  return (v2 / 1000000);
}

int *arkit::Random::globalSeed(arkit::Random *this)
{
  {
    if (v2)
    {
      arkit::Random::globalSeed(void)::s_seed = arkit::Random::seedFromCurrentTime(v2);
    }
  }

  return &arkit::Random::globalSeed(void)::s_seed;
}

void arkit::runSolver(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 8);
  v6 = *(a2 + 12);
  v7 = (a1[1] - *a1) >> 5;
  v33 = v7;
  v34 = v6;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  if (v5 == 1 && v7 > v6)
  {
    kdebug_trace();
    v27 = 0;
    v28 = 0;
    v29 = 0;
    LODWORD(v8) = -1;
    for (i = 1; i != 33; ++i)
    {
      arkit::Random::sampleNumbers<unsigned long>(&v33, &v34, v26);
      arkit::FaceLightOptimizer::compute(a1, v26, v23);
      std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v27, __p, v25, (v25 - __p) >> 3);
      v10 = (v28 - v27) >> 3;
      v11 = 1;
      if (v8 < v10)
      {
        std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v30, v27, v28, v10);
        v8 = (v28 - v27) >> 3;
        if ((v33 * 0.9) < v8)
        {
          v11 = 0;
        }
      }

      if (__p)
      {
        v25 = __p;
        operator delete(__p);
      }

      if (v26[0])
      {
        v26[1] = v26[0];
        operator delete(v26[0]);
      }

      if (!v11)
      {
        break;
      }
    }

    kdebug_trace();
    v12 = v27;
    if (v27)
    {
      v28 = v27;
LABEL_27:
      operator delete(v12);
    }
  }

  else
  {
    std::vector<unsigned long long>::resize(&v30, v7);
    v13 = v30;
    if (v30 != v31)
    {
      v14 = 0;
      v15 = (v31 - v30 - 8) >> 3;
      v16 = vdupq_n_s64(v15);
      v17 = (v15 + 2) & 0x3FFFFFFFFFFFFFFELL;
      v18 = xmmword_1C25C8A20;
      v19 = vdupq_n_s64(2uLL);
      do
      {
        v20 = vmovn_s64(vcgeq_u64(v16, v18));
        if (v20.i8[0])
        {
          v13[v14] = v14;
        }

        if (v20.i8[4])
        {
          v13[v14 + 1] = v14 + 1;
        }

        v14 += 2;
        v18 = vaddq_s64(v18, v19);
      }

      while (v17 != v14);
    }

    arkit::FaceLightOptimizer::compute(a1, &v30, v23);
    v21 = __p;
    v22 = (v25 - __p) >> 3;
    if (v22 >= 9)
    {
      std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v30, __p, v25, v22);
      v21 = __p;
    }

    if (v21)
    {
      v25 = v21;
      v12 = v21;
      goto LABEL_27;
    }
  }

  arkit::FaceLightOptimizer::compute(a1, &v30, a3);
  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }
}

void sub_1C254EE54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *arkit::Random::sampleNumbers<unsigned long>@<X0>(uint64_t *result@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v6 = *result;
  if (v5 > *result || v6 == 0)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v8 = result;
    if (v5 <= v6 >> 1)
    {
      result = std::vector<unsigned long>::vector[abi:ne200100](a3, v5);
      if (*a2)
      {
        v9 = 0;
        do
        {
          do
          {
            v10 = *v8;
            v11 = arkit::Random::globalSeed(result);
            result = rand_r(v11);
            v12 = result / 2147483650.0 * (v10 - 1);
            if (v12 >= 0.0)
            {
              v13 = 0.5;
            }

            else
            {
              v13 = -0.5;
            }

            v14 = (v12 + v13);
            v15 = a3[1];
            v16 = *a3;
            if (*a3 != v15)
            {
              v16 = *a3;
              while (*v16 != v14)
              {
                if (++v16 == v15)
                {
                  goto LABEL_22;
                }
              }
            }
          }

          while (v16 != v15);
LABEL_22:
          *(*a3 + 8 * v9++) = v14;
        }

        while (v9 < *a2);
      }
    }

    else
    {

      return arkit::Random::fisherYatesSample<unsigned long>(result, a2, a3);
    }
  }

  return result;
}

void sub_1C254F02C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *arkit::Random::fisherYatesSample<unsigned long>@<X0>(uint64_t *result@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v6 = *result;
  if (v5 > *result || v6 == 0)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v8 = result;
    result = std::vector<unsigned long>::vector[abi:ne200100](a3, v6);
    v10 = *a3;
    v9 = a3[1];
    if (*a3 != v9)
    {
      v11 = 0;
      v12 = (v9 - v10 - 8) >> 3;
      v13 = vdupq_n_s64(v12);
      v14 = (v12 + 2) & 0x3FFFFFFFFFFFFFFELL;
      v15 = xmmword_1C25C8A20;
      v16 = vdupq_n_s64(2uLL);
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v13, v15));
        if (v17.i8[0])
        {
          *(v10 + 8 * v11) = v11;
        }

        if (v17.i8[4])
        {
          *(v10 + 8 * v11 + 8) = v11 + 1;
        }

        v11 += 2;
        v15 = vaddq_s64(v15, v16);
      }

      while (v14 != v11);
    }

    v18 = *a2;
    if (*a2)
    {
      v19 = 0;
      v20 = -1;
      do
      {
        v21 = *v8;
        v22 = arkit::Random::globalSeed(result);
        result = rand_r(v22);
        v23 = result / 2147483650.0 * (v20 + v21);
        if (v23 >= 0.0)
        {
          v24 = 0.5;
        }

        else
        {
          v24 = -0.5;
        }

        v25 = (v23 + v24);
        if (v25)
        {
          v26 = (*a3 + 8 * v19);
          v27 = *v26;
          *v26 = v26[v25];
          v26[v25] = v27;
        }

        ++v19;
        --v20;
      }

      while (v19 < *a2);
      v10 = *a3;
      v9 = a3[1];
      v18 = 8 * *a2;
    }

    if (v18 + v10 != v9)
    {
      a3[1] = v18 + v10;
    }
  }

  return result;
}

void sub_1C254F1E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<unsigned long>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(a1, a2);
  }

  return a1;
}

void sub_1C254F25C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void arkit::RTFSPContainer::loadRtfsp(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if ((*(a1 + *(*a1 - 24) + 32) & 1) == 0)
  {
    operator new();
  }

  *a2 = 0;
}

void sub_1C254FA60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::locale a14)
{
  std::istringstream::~istringstream(&a14);
  if (*(v14 - 89) < 0)
  {
    operator delete(*(v14 - 112));
  }

  _Unwind_Resume(a1);
}

void arkit::RTFSPContainer::~RTFSPContainer(arkit::RTFSPContainer *this)
{
  v3 = (this + 72);
  std::vector<cva::Matrix<float,1u,0u,false>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<cva::Matrix<float,1u,0u,false>>::resize(void ***a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * (v3 - *a1);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<cva::Matrix<float,1u,0u,false>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = &(*a1)[3 * a2];
    while (v3 != v7)
    {
      v8 = *(v3 - 3);
      v3 -= 3;
      free(v8);
    }

    a1[1] = v7;
  }
}

uint64_t arkit::RTFSPContainer::loadRtfsp@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 24) != 1)
  {
    arkit::RTFSPContainer::loadRtfspDefault();
  }

  return arkit::RTFSPContainer::loadRtfsp(a1, a2);
}

{
  v6[19] = *MEMORY[0x1E69E9840];
  std::ifstream::basic_ifstream(v4, a1, 8);
  if (v5[15])
  {
    arkit::RTFSPContainer::loadRtfsp(v4, a2);
  }

  else
  {
    *a2 = 0;
  }

  v4[0] = *MEMORY[0x1E69E54C8];
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1C691A5C0](v5);
  std::istream::~istream();
  return MEMORY[0x1C691A740](v6);
}

void sub_1C254FD28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ifstream::~ifstream(va, MEMORY[0x1E69E54C8]);
  MEMORY[0x1C691A740](v3 + 424);
  _Unwind_Resume(a1);
}

void sub_1C254FEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::istringstream::~istringstream(va);
  if (*(v3 - 33) < 0)
  {
    operator delete(*(v3 - 56));
  }

  _Unwind_Resume(a1);
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1, uint64_t *a2, int a3)
{
  a1[59] = 0;
  v4 = MEMORY[0x1E69E5528] + 64;
  a1[53] = MEMORY[0x1E69E5528] + 64;
  v5 = *(MEMORY[0x1E69E54C8] + 16);
  v6 = *(MEMORY[0x1E69E54C8] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  a1[1] = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 2);
  v8 = MEMORY[0x1E69E5528] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[53] = v4;
  MEMORY[0x1C691A5B0](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_1C25500B4(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1C691A740](v1);
  _Unwind_Resume(a1);
}

uint64_t *std::istringstream::basic_istringstream[abi:ne200100](uint64_t *a1, const std::string *a2, int a3)
{
  a1[21] = 0;
  v6 = MEMORY[0x1E69E5568] + 64;
  a1[15] = MEMORY[0x1E69E5568] + 64;
  v7 = *(MEMORY[0x1E69E54E0] + 16);
  v8 = *(MEMORY[0x1E69E54E0] + 8);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  a1[1] = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, a1 + 2);
  v10 = MEMORY[0x1E69E5568] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  *a1 = v10;
  a1[15] = v6;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_1C25502AC(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1C691A740](v1);
  _Unwind_Resume(a1);
}

uint64_t std::istringstream::~istringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E0];
  v3 = *MEMORY[0x1E69E54E0];
  *a1 = *MEMORY[0x1E69E54E0];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 24));
  std::istream::~istream();
  MEMORY[0x1C691A740](a1 + 120);
  return a1;
}

void ***std::vector<cva::Matrix<float,1u,0u,false>>::__append(void ***result, unint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 24 * a2;
      v11 = 24 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        v4 += 24;
        v11 -= 24;
      }

      while (v11);
      v4 = v10;
    }

    result[1] = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
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

    v22 = result;
    if (v9)
    {
      std::allocator<cva::Matrix<float,1u,0u,false>>::allocate_at_least[abi:ne200100](result, v9);
    }

    v12 = 24 * v6;
    v19 = 0;
    v20 = 24 * v6;
    *(&v21 + 1) = 0;
    v13 = 24 * a2;
    v14 = 24 * v6;
    do
    {
      *v14 = 0;
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      v14 += 24;
      v13 -= 24;
    }

    while (v13);
    *&v21 = v12 + 24 * a2;
    v15 = result[1];
    v16 = v12 + *result - v15;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<cva::Matrix<float,1u,0u,false>>,cva::Matrix<float,1u,0u,false>*>(result, *result, v15, v16);
    v17 = *v3;
    *v3 = v16;
    v18 = v3[2];
    *(v3 + 1) = v21;
    *&v21 = v17;
    *(&v21 + 1) = v18;
    v19 = v17;
    v20 = v17;
    return std::__split_buffer<cva::Matrix<float,1u,0u,false>>::~__split_buffer(&v19);
  }

  return result;
}

void sub_1C255055C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<cva::Matrix<float,1u,0u,false>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<cva::Matrix<float,1u,0u,false>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<cva::Matrix<float,1u,0u,false>>,cva::Matrix<float,1u,0u,false>*>(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      v7 = v6[1];
      *a4 = *v6;
      *(a4 + 8) = v7;
      *v6 = 0;
      v6[1] = 0;
      *(a4 + 16) = *(v6 + 4);
      *(v6 + 4) = 0;
      v6 += 3;
      a4 += 24;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v8 = *v5;
      v5 += 3;
      free(v8);
    }
  }
}

uint64_t std::__split_buffer<cva::Matrix<float,1u,0u,false>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 24);
    *(a1 + 16) = i - 24;
    free(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::ifstream::~ifstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x1C691A5C0](a1 + 2);

  return std::istream::~istream();
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x1C691A5F0](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_1C25508B8(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1C2550878);
  }

  __cxa_rethrow();
}

uint64_t *std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t *a1, uint64_t a2)
{
  MEMORY[0x1C691A5F0](&v20, a1, 0);
  if (v20 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v4 = (a1 + *(*a1 - 24));
  width = v4->__width_;
  if (width >= 0x7FFFFFFFFFFFFFF7)
  {
    v6 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v6 = v4->__width_;
  }

  if (width >= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFF7;
  }

  std::ios_base::getloc(v4);
  v8 = std::locale::use_facet(&v19, MEMORY[0x1E69E5318]);
  std::locale::~locale(&v19);
  if (!v7)
  {
    v17 = *a1;
    *(a1 + *(*a1 - 24) + 24) = 0;
    v16 = 4;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = a1 + 5;
  while (1)
  {
    v11 = *(v10 + *(*a1 - 24));
    v12 = v11[3];
    if (v12 == v11[4])
    {
      break;
    }

    LOBYTE(v13) = *v12;
LABEL_16:
    if ((v13 & 0x80) == 0 && (*(&v8[1].~facet + (v13 & 0x7F)) & 0x4000) != 0)
    {
      v16 = 0;
      goto LABEL_26;
    }

    std::string::push_back(a2, v13);
    v14 = *(v10 + *(*a1 - 24));
    v15 = v14[3];
    if (v15 == v14[4])
    {
      (*(*v14 + 80))(v14);
    }

    else
    {
      v14[3] = v15 + 1;
    }

    if (v7 == ++v9)
    {
      v16 = 0;
      v9 = 1;
      goto LABEL_26;
    }
  }

  v13 = (*(*v11 + 72))(v11);
  if (v13 != -1)
  {
    goto LABEL_16;
  }

  v16 = 2;
LABEL_26:
  v17 = *a1;
  *(a1 + *(*a1 - 24) + 24) = 0;
  if (!v9)
  {
    v16 |= 4u;
  }

LABEL_28:
  std::ios_base::clear((a1 + *(v17 - 24)), *(a1 + *(v17 - 24) + 32) | v16);
  return a1;
}

void sub_1C2550B8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1C2550B4CLL);
  }

  __cxa_rethrow();
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1C691A6F0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_1C2550CE8(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

double arkit::shct::rotateShCoeff@<D0>(uint64_t a1@<X0>, float *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = acosf(a2[8]);
  if (fabsf(v6) >= 0.001)
  {
    v9 = a2[6];
    v10 = a2[7];
    v7 = atan2f(a2[5], -a2[2]);
    v8 = atan2f(v10, v9);
  }

  else
  {
    v7 = atan2f(a2[1], *a2);
    v8 = 0.0;
  }

  v11 = -*(a3 + 4);
  v12 = -*(a3 + 20);
  v14 = *(a3 + 24);
  v13 = *(a3 + 28);
  v15 = *(a3 + 32);
  v16 = -*(a3 + 16);
  *(a3 + 4) = *(a3 + 8);
  *(a3 + 8) = v11;
  *(a3 + 16) = v13;
  *(a3 + 20) = v12;
  *(a3 + 24) = (v14 + (v15 * 1.7321)) * -0.5;
  *(a3 + 28) = v16;
  *(a3 + 32) = (v15 + (v14 * -1.7321)) * 0.5;
  v17 = v26;
  *a3 = v25;
  *(a3 + 16) = v17;
  *(a3 + 32) = v27;
  LODWORD(v17) = *(a3 + 4);
  v18 = *(a3 + 24);
  v19 = -*(a3 + 28);
  v20 = *(a3 + 32);
  v21 = *(a3 + 16);
  v22 = -*(a3 + 20);
  *(a3 + 4) = -*(a3 + 8);
  *(a3 + 8) = v17;
  *(a3 + 16) = v19;
  *(a3 + 20) = v22;
  *(a3 + 24) = (v18 + (v20 * 1.7321)) * -0.5;
  *(a3 + 28) = v21;
  *(a3 + 32) = (v20 + (v18 * -1.7321)) * 0.5;
  result = *&v25;
  v24 = v26;
  *a3 = v25;
  *(a3 + 16) = v24;
  *(a3 + 32) = v27;
  return result;
}

float arkit::anonymous namespace::rotateSHCoeffsAroundZ@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v6 = __sincosf_stret(a3);
  v7 = __sincosf_stret(a3 + a3);
  v8 = *(a1 + 4);
  v10 = *(a1 + 8);
  v9 = *(a1 + 12);
  *a2 = *a1;
  *(a2 + 4) = (v6.__sinval * v9) + (v6.__cosval * v8);
  *(a2 + 8) = v10;
  *(a2 + 12) = (v6.__cosval * v9) - (v6.__sinval * v8);
  v12 = *(a1 + 28);
  v11 = *(a1 + 32);
  v13 = *(a1 + 16);
  v14 = *(a1 + 20);
  v15 = *(a1 + 24);
  *(a2 + 16) = (v7.__sinval * v11) + (v7.__cosval * v13);
  *(a2 + 20) = (v6.__sinval * v12) + (v6.__cosval * v14);
  *(a2 + 24) = v15;
  *(a2 + 28) = (v6.__cosval * v12) - (v6.__sinval * v14);
  result = (v7.__cosval * v11) - (v7.__sinval * v13);
  *(a2 + 32) = result;
  return result;
}

uint64_t arkit::shct::flipAxesShCoeff@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *(result + 4);
  if (a3)
  {
    v5 = -v5;
  }

  *a5 = *result;
  *(a5 + 4) = v5;
  v7 = *(result + 8);
  v6 = *(result + 12);
  if (a4)
  {
    v7 = -v7;
  }

  *(a5 + 12) = 0;
  *(a5 + 8) = v7;
  if (a2)
  {
    *(a5 + 12) = -v6;
    if ((a3 & 1) == 0)
    {
LABEL_7:
      v8 = -*(result + 16);
      goto LABEL_10;
    }
  }

  else
  {
    *(a5 + 12) = v6;
    if (a3)
    {
      goto LABEL_7;
    }
  }

  v8 = *(result + 16);
LABEL_10:
  v9 = *(result + 20);
  v10 = *(result + 24);
  if (a3 != a4)
  {
    v9 = -v9;
  }

  *(a5 + 16) = v8;
  *(a5 + 20) = v9;
  v11 = *(result + 28);
  v12 = *(result + 32);
  if (a2 != a4)
  {
    v11 = -v11;
  }

  *(a5 + 24) = v10;
  *(a5 + 28) = v11;
  *(a5 + 32) = v12;
  return result;
}

id ARQATraceableDefaultEntryForResultData(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [v2 setObject:v4 forKeyedSubscript:@"type"];

  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_timestamp(v1);
  v6 = [v5 numberWithDouble:?];
  [v2 setObject:v6 forKeyedSubscript:@"timestamp"];

  return v2;
}

void sub_1C2551194(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id ARQATraceableDefaultFormatForResultData()
{
  v0 = objc_opt_new();
  [v0 setObject:@"Name of this data type" forKeyedSubscript:@"type"];
  [v0 setObject:@"Timestamp in seconds" forKeyedSubscript:@"timestamp"];

  return v0;
}

void sub_1C25512FC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id ARFloat(float a1)
{
  v3 = [MEMORY[0x1E696AD98] numberWithFloat:v1];

  return v3;
}

void sub_1C2553354(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C25535BC(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1C2558C8C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t ___ZL23ARShouldUseLogTypeErrorv_block_invoke_22()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError(void)::internalOSVersion = result;
  return result;
}

void ___ZL13_ARLogGeneralv_block_invoke_22()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
}

id _ARLogGeneral_35(uint64_t a1)
{
  if (_ARLogGeneral_onceToken_37 != -1)
  {
    _ARLogGeneral_cold_1_35();
  }

  v2 = _ARLogGeneral_logObj_37;

  return v2;
}

uint64_t ARRigInputJoints()
{
  v3 = *MEMORY[0x1E69E9840];
  {
    v1[6] = xmmword_1E817DA60;
    v1[7] = *off_1E817DA70;
    v2 = "righthand";
    v1[2] = xmmword_1E817DA20;
    v1[3] = *&off_1E817DA30;
    v1[4] = xmmword_1E817DA40;
    v1[5] = *&off_1E817DA50;
    v1[0] = xmmword_1E817DA00;
    v1[1] = *&off_1E817DA10;
    ARRigInputJoints::dataVector = 0;
    unk_1EBF42B80 = 0;
    qword_1EBF42B88 = 0;
    std::vector<char const*>::__init_with_size[abi:ne200100]<char const* const*,char const* const*>(&ARRigInputJoints::dataVector, v1, &v3, 0x11uLL);
    __cxa_atexit(std::vector<char const*>::~vector[abi:ne200100], &ARRigInputJoints::dataVector, &dword_1C241C000);
  }

  return ARRigInputJoints::dataVector;
}

uint64_t std::vector<char const*>::~vector[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t ARRigOutputJoints()
{
  v2 = *MEMORY[0x1E69E9840];
  {
    memcpy(v1, off_1E817DA88, sizeof(v1));
    qword_1EBF42BA0 = 0;
    unk_1EBF42BA8 = 0;
    ARRigOutputJoints::dataVector = 0;
    std::vector<char const*>::__init_with_size[abi:ne200100]<char const* const*,char const* const*>(&ARRigOutputJoints::dataVector, v1, &v2, 0x5BuLL);
    __cxa_atexit(std::vector<char const*>::~vector[abi:ne200100], &ARRigOutputJoints::dataVector, &dword_1C241C000);
  }

  return ARRigOutputJoints::dataVector;
}

uint64_t ARNeutralBodySkeleton3DModelTransforms(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5);
  *(&v7 + 1) = *MEMORY[0x1E69E9840];
  {
    v6[0] = xmmword_1C25C8910;
    v6[1] = xmmword_1C25C8BC0;
    v6[2] = xmmword_1C25C86A0;
    v6[3] = xmmword_1C25ED250;
    v6[4] = xmmword_1C25ED260;
    v6[5] = xmmword_1C25ED270;
    v6[6] = xmmword_1C25ED280;
    v6[7] = xmmword_1C25ED290;
    v6[8] = xmmword_1C25ED2A0;
    v6[9] = xmmword_1C25ED2B0;
    v6[10] = xmmword_1C25ED2C0;
    v6[11] = xmmword_1C25ED2D0;
    v6[12] = xmmword_1C25ED2E0;
    v6[13] = xmmword_1C25ED2F0;
    v6[14] = xmmword_1C25ED300;
    v6[15] = xmmword_1C25ED310;
    v6[16] = xmmword_1C25ED320;
    v6[17] = xmmword_1C25ED330;
    v6[18] = xmmword_1C25ED340;
    v6[19] = xmmword_1C25ED350;
    v6[20] = xmmword_1C25ED360;
    v6[21] = xmmword_1C25ED370;
    v6[22] = xmmword_1C25ED340;
    v6[23] = xmmword_1C25ED380;
    v6[24] = xmmword_1C25ED360;
    v6[25] = xmmword_1C25ED390;
    v6[26] = xmmword_1C25ED340;
    v6[27] = xmmword_1C25ED3A0;
    v6[28] = xmmword_1C25ED3B0;
    v6[29] = xmmword_1C25ED3C0;
    v6[30] = xmmword_1C25ED260;
    v6[31] = xmmword_1C25ED3D0;
    v6[32] = xmmword_1C25ED3E0;
    v6[33] = xmmword_1C25ED3F0;
    v6[34] = xmmword_1C25ED260;
    v6[35] = xmmword_1C25ED400;
    v6[36] = xmmword_1C25ED410;
    v6[37] = xmmword_1C25ED420;
    v6[38] = xmmword_1C25ED430;
    v6[39] = xmmword_1C25ED440;
    v6[40] = xmmword_1C25ED450;
    v6[41] = xmmword_1C25ED460;
    v6[42] = xmmword_1C25ED470;
    v6[43] = xmmword_1C25ED480;
    v6[44] = xmmword_1C25ED450;
    v6[45] = xmmword_1C25ED490;
    v6[46] = xmmword_1C25ED4A0;
    v6[47] = xmmword_1C25ED4B0;
    v6[48] = xmmword_1C25ED4C0;
    v6[49] = xmmword_1C25ED4D0;
    v6[50] = xmmword_1C25ED4E0;
    v6[51] = xmmword_1C25ED4F0;
    v6[52] = xmmword_1C25ED4C0;
    v6[53] = xmmword_1C25ED4D0;
    v6[54] = xmmword_1C25ED4E0;
    v6[55] = xmmword_1C25ED500;
    v6[56] = xmmword_1C25ED4C0;
    v6[57] = xmmword_1C25ED4D0;
    v6[58] = xmmword_1C25ED4E0;
    v6[59] = xmmword_1C25ED510;
    v6[60] = xmmword_1C25ED4C0;
    v6[61] = xmmword_1C25ED4D0;
    v6[62] = xmmword_1C25ED4E0;
    v6[63] = xmmword_1C25ED520;
    v6[64] = xmmword_1C25ED530;
    v6[65] = xmmword_1C25ED540;
    v6[66] = xmmword_1C25ED550;
    v6[67] = xmmword_1C25ED560;
    v6[68] = xmmword_1C25ED570;
    v6[69] = xmmword_1C25ED580;
    v6[70] = xmmword_1C25ED590;
    v6[71] = xmmword_1C25ED5A0;
    v6[72] = xmmword_1C25ED570;
    v6[73] = xmmword_1C25ED580;
    v6[74] = xmmword_1C25ED590;
    v6[75] = xmmword_1C25ED5B0;
    v6[76] = xmmword_1C25ED5C0;
    v6[77] = xmmword_1C25ED5D0;
    v6[78] = xmmword_1C25ED5E0;
    v6[79] = xmmword_1C25ED5F0;
    v6[80] = xmmword_1C25ED600;
    v6[81] = xmmword_1C25ED610;
    v6[82] = xmmword_1C25ED620;
    v6[83] = xmmword_1C25ED630;
    v6[84] = xmmword_1C25ED640;
    v6[85] = xmmword_1C25ED650;
    v6[86] = xmmword_1C25ED660;
    v6[87] = xmmword_1C25ED670;
    v6[88] = xmmword_1C25ED640;
    v6[89] = xmmword_1C25ED680;
    v6[90] = xmmword_1C25ED690;
    v6[91] = xmmword_1C25ED6A0;
    v6[92] = xmmword_1C25ED6B0;
    v6[93] = xmmword_1C25ED6C0;
    v6[94] = xmmword_1C25ED6D0;
    v6[95] = xmmword_1C25ED6E0;
    v6[96] = xmmword_1C25ED6B0;
    v6[97] = xmmword_1C25ED6C0;
    v6[98] = xmmword_1C25ED6D0;
    v6[99] = xmmword_1C25ED6F0;
    v6[100] = xmmword_1C25ED6B0;
    v6[101] = xmmword_1C25ED6C0;
    v6[102] = xmmword_1C25ED6D0;
    v6[103] = xmmword_1C25ED700;
    v6[104] = xmmword_1C25ED6B0;
    v6[105] = xmmword_1C25ED6C0;
    v6[106] = xmmword_1C25ED6D0;
    v6[107] = xmmword_1C25ED710;
    v6[108] = xmmword_1C25ED6B0;
    v6[109] = xmmword_1C25ED6C0;
    v6[110] = xmmword_1C25ED6D0;
    v6[111] = xmmword_1C25ED720;
    v6[112] = xmmword_1C25ED730;
    v6[113] = xmmword_1C25ED740;
    v6[114] = xmmword_1C25ED750;
    v6[115] = xmmword_1C25ED760;
    v6[116] = xmmword_1C25ED730;
    v6[117] = xmmword_1C25ED740;
    v6[118] = xmmword_1C25ED750;
    v6[119] = xmmword_1C25ED770;
    v6[120] = xmmword_1C25ED730;
    v6[121] = xmmword_1C25ED740;
    v6[122] = xmmword_1C25ED750;
    v6[123] = xmmword_1C25ED780;
    v6[124] = xmmword_1C25ED730;
    v6[125] = xmmword_1C25ED740;
    v6[126] = xmmword_1C25ED750;
    v6[127] = xmmword_1C25ED790;
    v6[128] = xmmword_1C25ED730;
    v6[129] = xmmword_1C25ED740;
    v6[130] = xmmword_1C25ED750;
    v6[131] = xmmword_1C25ED7A0;
    v6[132] = xmmword_1C25ED7B0;
    v6[133] = xmmword_1C25ED7C0;
    v6[134] = xmmword_1C25ED7D0;
    v6[135] = xmmword_1C25ED7E0;
    v6[136] = xmmword_1C25ED7B0;
    v6[137] = xmmword_1C25ED7C0;
    v6[138] = xmmword_1C25ED7D0;
    v6[139] = xmmword_1C25ED7F0;
    v6[140] = xmmword_1C25ED7B0;
    v6[141] = xmmword_1C25ED7C0;
    v6[142] = xmmword_1C25ED7D0;
    v6[143] = xmmword_1C25ED800;
    v6[144] = xmmword_1C25ED7B0;
    v6[145] = xmmword_1C25ED7C0;
    v6[146] = xmmword_1C25ED7D0;
    v6[147] = xmmword_1C25ED810;
    v6[148] = xmmword_1C25ED7B0;
    v6[149] = xmmword_1C25ED7C0;
    v6[150] = xmmword_1C25ED7D0;
    v6[151] = xmmword_1C25ED820;
    v6[152] = xmmword_1C25ED830;
    v6[153] = xmmword_1C25ED840;
    v6[154] = xmmword_1C25ED850;
    v6[155] = xmmword_1C25ED860;
    v6[156] = xmmword_1C25ED830;
    v6[157] = xmmword_1C25ED840;
    v6[158] = xmmword_1C25ED850;
    v6[159] = xmmword_1C25ED870;
    v6[160] = xmmword_1C25ED830;
    v6[161] = xmmword_1C25ED840;
    v6[162] = xmmword_1C25ED850;
    v6[163] = xmmword_1C25ED880;
    v6[164] = xmmword_1C25ED830;
    v6[165] = xmmword_1C25ED840;
    v6[166] = xmmword_1C25ED850;
    v6[167] = xmmword_1C25ED890;
    v6[168] = xmmword_1C25ED830;
    v6[169] = xmmword_1C25ED840;
    v6[170] = xmmword_1C25ED850;
    v6[171] = xmmword_1C25ED8A0;
    v6[172] = xmmword_1C25ED8B0;
    v6[173] = xmmword_1C25ED8C0;
    v6[174] = xmmword_1C25ED8D0;
    v6[175] = xmmword_1C25ED8E0;
    v6[176] = xmmword_1C25ED8B0;
    v6[177] = xmmword_1C25ED8C0;
    v6[178] = xmmword_1C25ED8D0;
    v6[179] = xmmword_1C25ED8F0;
    v6[180] = xmmword_1C25ED8B0;
    v6[181] = xmmword_1C25ED8C0;
    v6[182] = xmmword_1C25ED8D0;
    v6[183] = xmmword_1C25ED900;
    v6[184] = xmmword_1C25ED8B0;
    v6[185] = xmmword_1C25ED8C0;
    v6[186] = xmmword_1C25ED8D0;
    v6[187] = xmmword_1C25ED910;
    v6[188] = xmmword_1C25ED920;
    v6[189] = xmmword_1C25ED930;
    v6[190] = xmmword_1C25ED590;
    v6[191] = xmmword_1C25ED940;
    v6[192] = xmmword_1C25ED950;
    v6[193] = xmmword_1C25ED960;
    v6[194] = xmmword_1C25ED970;
    v6[195] = xmmword_1C25ED980;
    v6[196] = xmmword_1C25ED950;
    v6[197] = xmmword_1C25ED960;
    v6[198] = xmmword_1C25ED970;
    v6[199] = xmmword_1C25ED990;
    v6[200] = xmmword_1C25ED950;
    v6[201] = xmmword_1C25ED960;
    v6[202] = xmmword_1C25ED970;
    v6[203] = xmmword_1C25ED9A0;
    v6[204] = xmmword_1C25ED9B0;
    v6[205] = xmmword_1C25ED9C0;
    v6[206] = xmmword_1C25ED9D0;
    v6[207] = xmmword_1C25ED9E0;
    v6[208] = xmmword_1C25ED9B0;
    v6[209] = xmmword_1C25ED9C0;
    v6[210] = xmmword_1C25ED9D0;
    v6[211] = xmmword_1C25ED9F0;
    v6[212] = xmmword_1C25ED9B0;
    v6[213] = xmmword_1C25ED9C0;
    v6[214] = xmmword_1C25ED9D0;
    v6[215] = xmmword_1C25EDA00;
    v6[216] = xmmword_1C25EDA10;
    v6[217] = xmmword_1C25EDA20;
    v6[218] = xmmword_1C25ED9D0;
    v6[219] = xmmword_1C25EDA30;
    v6[220] = xmmword_1C25EDA10;
    v6[221] = xmmword_1C25EDA20;
    v6[222] = xmmword_1C25ED9D0;
    v6[223] = xmmword_1C25EDA30;
    v6[224] = xmmword_1C25EDA10;
    v6[225] = xmmword_1C25EDA20;
    v6[226] = xmmword_1C25ED9D0;
    v6[227] = xmmword_1C25EDA30;
    v6[228] = xmmword_1C25EDA10;
    v6[229] = xmmword_1C25EDA20;
    v6[230] = xmmword_1C25ED9D0;
    v6[231] = xmmword_1C25EDA30;
    v6[232] = xmmword_1C25EDA40;
    v6[233] = xmmword_1C25EDA50;
    v6[234] = xmmword_1C25ED9D0;
    v6[235] = xmmword_1C25EDA60;
    v6[236] = xmmword_1C25EDA10;
    v6[237] = xmmword_1C25EDA20;
    v6[238] = xmmword_1C25ED9D0;
    v6[239] = xmmword_1C25EDA70;
    v6[240] = xmmword_1C25EDA10;
    v6[241] = xmmword_1C25EDA20;
    v6[242] = xmmword_1C25ED9D0;
    v6[243] = xmmword_1C25EDA70;
    v6[244] = xmmword_1C25EDA10;
    v6[245] = xmmword_1C25EDA20;
    v6[246] = xmmword_1C25ED9D0;
    v6[247] = xmmword_1C25EDA70;
    v6[248] = xmmword_1C25EDA10;
    v6[249] = xmmword_1C25EDA20;
    v6[250] = xmmword_1C25ED9D0;
    v6[251] = xmmword_1C25EDA70;
    v6[252] = xmmword_1C25EDA80;
    v6[253] = xmmword_1C25EDA90;
    v6[254] = xmmword_1C25EDAA0;
    v6[255] = xmmword_1C25EDAB0;
    v6[256] = xmmword_1C25EDAC0;
    v6[257] = xmmword_1C25EDAD0;
    v6[258] = xmmword_1C25EDAE0;
    v6[259] = xmmword_1C25EDAF0;
    v6[260] = xmmword_1C25EDB00;
    v6[261] = xmmword_1C25EDB10;
    v6[262] = xmmword_1C25EDB20;
    v6[263] = xmmword_1C25EDB30;
    v6[264] = xmmword_1C25EDB00;
    v6[265] = xmmword_1C25EDB40;
    v6[266] = xmmword_1C25EDB10;
    v6[267] = xmmword_1C25EDB50;
    v6[268] = xmmword_1C25EDB60;
    v6[269] = xmmword_1C25EDB70;
    v6[270] = xmmword_1C25EDB80;
    v6[271] = xmmword_1C25EDB90;
    v6[272] = xmmword_1C25EDB60;
    v6[273] = xmmword_1C25EDB70;
    v6[274] = xmmword_1C25EDB80;
    v6[275] = xmmword_1C25EDBA0;
    v6[276] = xmmword_1C25EDB60;
    v6[277] = xmmword_1C25EDB70;
    v6[278] = xmmword_1C25EDB80;
    v6[279] = xmmword_1C25EDBB0;
    v6[280] = xmmword_1C25EDB60;
    v6[281] = xmmword_1C25EDB70;
    v6[282] = xmmword_1C25EDB80;
    v6[283] = xmmword_1C25EDBC0;
    v6[284] = xmmword_1C25EDB60;
    v6[285] = xmmword_1C25EDB70;
    v6[286] = xmmword_1C25EDB80;
    v6[287] = xmmword_1C25EDBD0;
    v6[288] = xmmword_1C25EDBE0;
    v6[289] = xmmword_1C25EDBF0;
    v6[290] = xmmword_1C25EDC00;
    v6[291] = xmmword_1C25EDC10;
    v6[292] = xmmword_1C25EDBE0;
    v6[293] = xmmword_1C25EDBF0;
    v6[294] = xmmword_1C25EDC00;
    v6[295] = xmmword_1C25EDC20;
    v6[296] = xmmword_1C25EDBE0;
    v6[297] = xmmword_1C25EDBF0;
    v6[298] = xmmword_1C25EDC00;
    v6[299] = xmmword_1C25EDC30;
    v6[300] = xmmword_1C25EDBE0;
    v6[301] = xmmword_1C25EDBF0;
    v6[302] = xmmword_1C25EDC00;
    v6[303] = xmmword_1C25EDC40;
    v6[304] = xmmword_1C25EDBE0;
    v6[305] = xmmword_1C25EDBF0;
    v6[306] = xmmword_1C25EDC00;
    v6[307] = xmmword_1C25EDC50;
    v6[308] = xmmword_1C25EDC60;
    v6[309] = xmmword_1C25EDC70;
    v6[310] = xmmword_1C25EDC80;
    v6[311] = xmmword_1C25EDC90;
    v6[312] = xmmword_1C25EDC60;
    v6[313] = xmmword_1C25EDC70;
    v6[314] = xmmword_1C25EDC80;
    v6[315] = xmmword_1C25EDCA0;
    v6[316] = xmmword_1C25EDC60;
    v6[317] = xmmword_1C25EDC70;
    v6[318] = xmmword_1C25EDC80;
    v6[319] = xmmword_1C25EDCB0;
    v6[320] = xmmword_1C25EDC60;
    v6[321] = xmmword_1C25EDC70;
    v6[322] = xmmword_1C25EDC80;
    v6[323] = xmmword_1C25EDCC0;
    v6[324] = xmmword_1C25EDC60;
    v6[325] = xmmword_1C25EDC70;
    v6[326] = xmmword_1C25EDC80;
    v6[327] = xmmword_1C25EDCD0;
    v6[328] = xmmword_1C25EDCE0;
    v6[329] = xmmword_1C25EDCF0;
    v6[330] = xmmword_1C25EDD00;
    v6[331] = xmmword_1C25EDD10;
    v6[332] = xmmword_1C25EDCE0;
    v6[333] = xmmword_1C25EDCF0;
    v6[334] = xmmword_1C25EDD00;
    v6[335] = xmmword_1C25EDD20;
    v6[336] = xmmword_1C25EDCE0;
    v6[337] = xmmword_1C25EDCF0;
    v6[338] = xmmword_1C25EDD00;
    v6[339] = xmmword_1C25EDD30;
    v6[340] = xmmword_1C25EDCE0;
    v6[341] = xmmword_1C25EDCF0;
    v6[342] = xmmword_1C25EDD00;
    v6[343] = xmmword_1C25EDD40;
    v6[344] = xmmword_1C25EDCE0;
    v6[345] = xmmword_1C25EDCF0;
    v6[346] = xmmword_1C25EDD00;
    v6[347] = xmmword_1C25EDD50;
    v6[348] = xmmword_1C25EDD60;
    v6[349] = xmmword_1C25EDD70;
    v6[350] = xmmword_1C25EDD80;
    v6[351] = xmmword_1C25EDD90;
    v6[352] = xmmword_1C25EDD60;
    v6[353] = xmmword_1C25EDD70;
    v6[354] = xmmword_1C25EDD80;
    v6[355] = xmmword_1C25EDDA0;
    v6[356] = xmmword_1C25EDD60;
    v6[357] = xmmword_1C25EDD70;
    v6[358] = xmmword_1C25EDD80;
    v6[359] = xmmword_1C25EDDB0;
    v6[360] = xmmword_1C25EDD60;
    v6[361] = xmmword_1C25EDD70;
    v6[362] = xmmword_1C25EDD80;
    v6[363] = xmmword_1C25EDDC0;
    ARNeutralBodySkeleton3DModelTransforms::dataVector = 0;
    unk_1EBF42BC0 = 0;
    qword_1EBF42BC8 = 0;
    std::vector<simd_float4x4>::__init_with_size[abi:ne200100]<simd_float4x4 const*,simd_float4x4 const*>(&ARNeutralBodySkeleton3DModelTransforms::dataVector, v6, &v7, 0x5BuLL);
    __cxa_atexit(std::vector<simd_float4x4>::~vector[abi:ne200100], &ARNeutralBodySkeleton3DModelTransforms::dataVector, &dword_1C241C000);
  }

  result = ARNeutralBodySkeleton3DModelTransforms::dataVector;
  if (unk_1EBF42BC0 - ARNeutralBodySkeleton3DModelTransforms::dataVector != 5824)
  {
    ARNeutralBodySkeleton3DModelTransforms_cold_1();
  }

  return result;
}

uint64_t std::vector<simd_float4x4>::~vector[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t ARNeutralBodySkeleton3DLocalTransforms(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5);
  *(&v1009 + 1) = *MEMORY[0x1E69E9840];
  {
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    DWORD2(v556[0]) = v11;
    *&v556[0] = v12;
    v556[1] = v13;
    v558 = v14;
    v557 = v15;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v560 = v17;
    v559 = v18;
    v561 = v19;
    v563 = v20;
    v562 = v21;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v565 = v23;
    v564 = v24;
    v566 = v25;
    v568 = v26;
    v567 = v27;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v570 = v29;
    v569 = v30;
    v571 = v31;
    v573 = v32;
    v572 = v33;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v575 = v35;
    v574 = v36;
    v576 = v37;
    v578 = v38;
    v577 = v39;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v580 = v41;
    v579 = v42;
    v581 = v43;
    v583 = v44;
    v582 = v45;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v585 = v47;
    v584 = v48;
    v586 = v49;
    v588 = v50;
    v587 = v51;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v590 = v53;
    v589 = v54;
    v591 = v55;
    v593 = v56;
    v592 = v57;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v595 = v59;
    v594 = v60;
    v596 = v61;
    v598 = v62;
    v597 = v63;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v600 = v65;
    v599 = v66;
    v601 = v67;
    v603 = v68;
    v602 = v69;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v605 = v71;
    v604 = v72;
    v606 = v73;
    v608 = v74;
    v607 = v75;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v610 = v77;
    v609 = v78;
    v611 = v79;
    v613 = v80;
    v612 = v81;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v615 = v83;
    v614 = v84;
    v616 = v85;
    v618 = v86;
    v617 = v87;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v620 = v89;
    v619 = v90;
    v621 = v91;
    v623 = v92;
    v622 = v93;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v625 = v95;
    v624 = v96;
    v626 = v97;
    v628 = v98;
    v627 = v99;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v630 = v101;
    v629 = v102;
    v631 = v103;
    v633 = v104;
    v632 = v105;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v635 = v107;
    v634 = v108;
    v636 = v109;
    v638 = v110;
    v637 = v111;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v640 = v113;
    v639 = v114;
    v641 = v115;
    v643 = v116;
    v642 = v117;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v645 = v119;
    v644 = v120;
    v646 = v121;
    v648 = v122;
    v647 = v123;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v650 = v125;
    v649 = v126;
    v651 = v127;
    v653 = v128;
    v652 = v129;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v655 = v131;
    v654 = v132;
    v656 = v133;
    v658 = v134;
    v657 = v135;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v660 = v137;
    v659 = v138;
    v661 = v139;
    v663 = v140;
    v662 = v141;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v665 = v143;
    v664 = v144;
    v666 = v145;
    v668 = v146;
    v667 = v147;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v670 = v149;
    v669 = v150;
    v671 = v151;
    v673 = v152;
    v672 = v153;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v675 = v155;
    v674 = v156;
    v676 = v157;
    v678 = v158;
    v677 = v159;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v680 = v161;
    v679 = v162;
    v681 = v163;
    v683 = v164;
    v682 = v165;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v685 = v167;
    v684 = v168;
    v686 = v169;
    v688 = v170;
    v687 = v171;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v690 = v173;
    v689 = v174;
    v691 = v175;
    v693 = v176;
    v692 = v177;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v695 = v179;
    v694 = v180;
    v696 = v181;
    v698 = v182;
    v697 = v183;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v700 = v185;
    v699 = v186;
    v701 = v187;
    v703 = v188;
    v702 = v189;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v705 = v191;
    v704 = v192;
    v706 = v193;
    v708 = v194;
    v707 = v195;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v710 = v197;
    v709 = v198;
    v711 = v199;
    v713 = v200;
    v712 = v201;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v715 = v203;
    v714 = v204;
    v716 = v205;
    v718 = v206;
    v717 = v207;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v720 = v209;
    v719 = v210;
    v721 = v211;
    v723 = v212;
    v722 = v213;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v725 = v215;
    v724 = v216;
    v726 = v217;
    v728 = v218;
    v727 = v219;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v730 = v221;
    v729 = v222;
    v731 = v223;
    v733 = v224;
    v732 = v225;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v735 = v227;
    v734 = v228;
    v736 = v229;
    v738 = v230;
    v737 = v231;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v740 = v233;
    v739 = v234;
    v741 = v235;
    v743 = v236;
    v742 = v237;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v745 = v239;
    v744 = v240;
    v746 = v241;
    v748 = v242;
    v747 = v243;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v750 = v245;
    v749 = v246;
    v751 = v247;
    v753 = v248;
    v752 = v249;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v755 = v251;
    v754 = v252;
    v756 = v253;
    v758 = v254;
    v757 = v255;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v760 = v257;
    v759 = v258;
    v761 = v259;
    v763 = v260;
    v762 = v261;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v765 = v263;
    v764 = v264;
    v766 = v265;
    v768 = v266;
    v767 = v267;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v770 = v269;
    v769 = v270;
    v771 = v271;
    v773 = v272;
    v772 = v273;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v775 = v275;
    v774 = v276;
    v776 = v277;
    v778 = v278;
    v777 = v279;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v780 = v281;
    v779 = v282;
    v781 = v283;
    v783 = v284;
    v782 = v285;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v785 = v287;
    v784 = v288;
    v786 = v289;
    v788 = v290;
    v787 = v291;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v790 = v293;
    v789 = v294;
    v791 = v295;
    v793 = v296;
    v792 = v297;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v795 = v299;
    v794 = v300;
    v796 = v301;
    v798 = v302;
    v797 = v303;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v800 = v305;
    v799 = v306;
    v801 = v307;
    v803 = v308;
    v802 = v309;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v805 = v311;
    v804 = v312;
    v806 = v313;
    v808 = v314;
    v807 = v315;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v810 = v317;
    v809 = v318;
    v811 = v319;
    v813 = v320;
    v812 = v321;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v815 = v323;
    v814 = v324;
    v816 = v325;
    v818 = v326;
    v817 = v327;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v820 = v329;
    v819 = v330;
    v821 = v331;
    v823 = v332;
    v822 = v333;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v825 = v335;
    v824 = v336;
    v826 = v337;
    v828 = v338;
    v827 = v339;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v830 = v341;
    v829 = v342;
    v831 = v343;
    v833 = v344;
    v832 = v345;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v835 = v347;
    v834 = v348;
    v836 = v349;
    v838 = v350;
    v837 = v351;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v840 = v353;
    v839 = v354;
    v841 = v355;
    v843 = v356;
    v842 = v357;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v845 = v359;
    v844 = v360;
    v846 = v361;
    v848 = v362;
    v847 = v363;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v850 = v365;
    v849 = v366;
    v851 = v367;
    v853 = v368;
    v852 = v369;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v855 = v371;
    v854 = v372;
    v856 = v373;
    v858 = v374;
    v857 = v375;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v860 = v377;
    v859 = v378;
    v861 = v379;
    v863 = v380;
    v862 = v381;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v865 = v383;
    v864 = v384;
    v866 = v385;
    v868 = v386;
    v867 = v387;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v870 = v389;
    v869 = v390;
    v871 = v391;
    v873 = v392;
    v872 = v393;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v875 = v395;
    v874 = v396;
    v876 = v397;
    v878 = v398;
    v877 = v399;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v880 = v401;
    v879 = v402;
    v881 = v403;
    v883 = v404;
    v882 = v405;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v885 = v407;
    v884 = v408;
    v886 = v409;
    v888 = v410;
    v887 = v411;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v890 = v413;
    v889 = v414;
    v891 = v415;
    v893 = v416;
    v892 = v417;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v895 = v419;
    v894 = v420;
    v896 = v421;
    v898 = v422;
    v897 = v423;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v900 = v425;
    v899 = v426;
    v901 = v427;
    v903 = v428;
    v902 = v429;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v905 = v431;
    v904 = v432;
    v906 = v433;
    v908 = v434;
    v907 = v435;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v910 = v437;
    v909 = v438;
    v911 = v439;
    v913 = v440;
    v912 = v441;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v915 = v443;
    v914 = v444;
    v916 = v445;
    v918 = v446;
    v917 = v447;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v920 = v449;
    v919 = v450;
    v921 = v451;
    v923 = v452;
    v922 = v453;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v925 = v455;
    v924 = v456;
    v926 = v457;
    v928 = v458;
    v927 = v459;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v930 = v461;
    v929 = v462;
    v931 = v463;
    v933 = v464;
    v932 = v465;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v935 = v467;
    v934 = v468;
    v936 = v469;
    v938 = v470;
    v937 = v471;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v940 = v473;
    v939 = v474;
    v941 = v475;
    v943 = v476;
    v942 = v477;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v945 = v479;
    v944 = v480;
    v946 = v481;
    v948 = v482;
    v947 = v483;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v950 = v485;
    v949 = v486;
    v951 = v487;
    v953 = v488;
    v952 = v489;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v955 = v491;
    v954 = v492;
    v956 = v493;
    v958 = v494;
    v957 = v495;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v960 = v497;
    v959 = v498;
    v961 = v499;
    v963 = v500;
    v962 = v501;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v965 = v503;
    v964 = v504;
    v966 = v505;
    v968 = v506;
    v967 = v507;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v970 = v509;
    v969 = v510;
    v971 = v511;
    v973 = v512;
    v972 = v513;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v975 = v515;
    v974 = v516;
    v976 = v517;
    v978 = v518;
    v977 = v519;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v980 = v521;
    v979 = v522;
    v981 = v523;
    v983 = v524;
    v982 = v525;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v985 = v527;
    v984 = v528;
    v986 = v529;
    v988 = v530;
    v987 = v531;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v990 = v533;
    v989 = v534;
    v991 = v535;
    v993 = v536;
    v992 = v537;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v995 = v539;
    v994 = v540;
    v996 = v541;
    v998 = v542;
    v997 = v543;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v1000 = v545;
    v999 = v546;
    v1001 = v547;
    v1003 = v548;
    v1002 = v549;
    __asm { FMOV            V0.4S, #1.0 }

    ARMakeSRT();
    v1005 = v551;
    v1004 = v552;
    v1006 = v553;
    v1008 = v554;
    v1007 = v555;
    qword_1EBF42BE0 = 0;
    unk_1EBF42BE8 = 0;
    ARNeutralBodySkeleton3DLocalTransforms::dataVector = 0;
    std::vector<ARSRT>::__init_with_size[abi:ne200100]<ARSRT const*,ARSRT const*>(&ARNeutralBodySkeleton3DLocalTransforms::dataVector, v556, &v1009, 0x5BuLL);
    __cxa_atexit(std::vector<ARSRT>::~vector[abi:ne200100], &ARNeutralBodySkeleton3DLocalTransforms::dataVector, &dword_1C241C000);
  }

  result = ARNeutralBodySkeleton3DLocalTransforms::dataVector;
  if (qword_1EBF42BE0 - ARNeutralBodySkeleton3DLocalTransforms::dataVector != 4368)
  {
    ARNeutralBodySkeleton3DLocalTransforms_cold_1();
  }

  return result;
}

uint64_t std::vector<ARSRT>::~vector[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t *std::vector<char const*>::__init_with_size[abi:ne200100]<char const* const*,char const* const*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<char const*>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C255D968(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<char const*>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<char const*>::allocate_at_least[abi:ne200100](a1, a2);
  }

  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
}

void std::allocator<char const*>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

float arkit::btr::EstimateScaleReprojectionLinear(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v6 = 0xEFBEFBEFBEFBEFBFLL * ((*(a1 + 8) - *a1) >> 3);
  result = -1.0;
  if (v6 >= 2)
  {
    v20[0] = 10;
    v20[1] = 0x3CA3D70A3A83126FLL;
    v20[2] = 5;
    v22 = 0x3FF9999A3D4CCCCDLL;
    v23 = 1;
    v21 = xmmword_1C25EFF50;
    v11 = 0;
    v12 = xmmword_1C25EFF64;
    v13 = *algn_1C25EFF74;
    v14 = xmmword_1C25EFF84;
    v15 = unk_1C25EFF94;
    v16 = xmmword_1C25EFF64;
    v17 = *algn_1C25EFF74;
    v18 = xmmword_1C25EFF84;
    v19 = unk_1C25EFF94;
    v9 = v6 - 1;
    v10 = 504;
    do
    {
      v10 += 504;
      --v9;
    }

    while (v9);
    return *&v11 / *(&v11 + 1);
  }

  return result;
}

__n128 arkit::btr::anonymous namespace::LinearScaleEstimatorOnline::Reset(arkit::btr::_anonymous_namespace_::LinearScaleEstimatorOnline *this, const RegistrationData *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37[2] = *MEMORY[0x1E69E9840];
  *this = 0;
  p_cam_from_vio = &a2->cam_from_vio;
  v27 = xmmword_1C25EFF64;
  v28 = *algn_1C25EFF74;
  v29 = xmmword_1C25EFF84;
  v30 = unk_1C25EFF94;
  *&v35[0] = &a2->cam_from_vio;
  *(&v35[0] + 1) = 4;
  v37[0] = v35;
  v33 = &v27;
  v34 = 4;
  cva::MatrixRef<float,3u,3u,false>::operator=<cva::MatrixTransposeExpr<cva::MatrixRef<float const,3u,3u,false>>>(&v33, v37, a3, a4, a5);
  v32[0] = &v27;
  v32[1] = 4;
  v37[0] = v32;
  v31[0] = &a2->cam_from_vio.m_data[12];
  v31[1] = 0xC00000004;
  v33 = v37;
  v34 = v31;
  if (p_cam_from_vio == &v27)
  {
    DWORD2(v35[0]) = 0;
    *&v35[0] = 0;
    cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::MatrixUnaryExpr<cva::MatrixRef<float,3u,3u,false>,cva::detail::NegOp>,cva::MatrixRef<float const,3u,1u,false>>(v35, &v33);
    *&v30 = *&v35[0];
    DWORD2(v30) = DWORD2(v35[0]);
  }

  else
  {
    v9 = 0;
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    v10 = &v27;
    v11 = 0x100000000;
    do
    {
      *(v35 + v9) = -*v10;
      v12 = HIDWORD(v11);
      v13 = v11 < 2;
      if (v11 < 2)
      {
        v12 = 0;
      }

      v14 = &v10[v12];
      v15 = (v11 + 1);
      v16 = v11 & 0xFFFFFFFF00000000;
      v10 = v14 + 1;
      if (!v13)
      {
        v15 = 0;
      }

      v11 = v15 | v16;
      v9 += 4;
    }

    while (v9 != 36);
    v17 = 0;
    v18 = v35;
    do
    {
      v19 = 0;
      v20 = 0.0;
      v21 = &a2->cam_from_vio.m_data[12];
      do
      {
        v22 = *v21++;
        v20 = v20 + (*(v18 + v19) * v22);
        v19 += 12;
      }

      while (v19 != 36);
      *(&v31[-2] + v17++) = v20;
      v18 = (v18 + 4);
    }

    while (v17 != 3);
  }

  v23 = v28;
  *(this + 8) = v27;
  *(this + 24) = v23;
  result.n128_u64[0] = v29;
  v24 = v30;
  *(this + 40) = v29;
  *(this + 56) = v24;
  if ((this + 72) != &a2->cam_from_obj)
  {
    result = *a2->cam_from_obj.m_data;
    v25 = *&a2->cam_from_obj.m_data[4];
    v26 = *&a2->cam_from_obj.m_data[12];
    *(this + 104) = *&a2->cam_from_obj.m_data[8];
    *(this + 120) = v26;
    *(this + 72) = result;
    *(this + 88) = v25;
  }

  return result;
}

unint64_t arkit::btr::anonymous namespace::LinearScaleEstimatorOnline::Add(float *a1, uint64_t a2, uint64_t a3, float a4)
{
  v6 = 0;
  v85 = *MEMORY[0x1E69E9840];
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v7 = a2 + 356;
  v8 = a2 + 128;
  v9 = a2 + 404;
  v77 = 0u;
  v78 = 0u;
  *v75[0].f32 = 0u;
  v76 = 0u;
  do
  {
    v10 = v8 + 12 * v6;
    *&v71[0] = *v10;
    DWORD2(v71[0]) = *(v10 + 8);
    *&v73[0] = v7;
    *(&v73[0] + 1) = 4;
    *&v83[0] = v73;
    *(&v83[0] + 1) = v71;
    *(v84 + 4) = 0;
    HIDWORD(v84[0]) = 0;
    cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::MatrixRef<float const,3u,3u,false>,cva::Matrix<float,3u,1u,false>>(v84 + 1, v83);
    v11 = 0;
    v12 = v6 + 1;
    DWORD2(v72[0]) = 0;
    *&v72[0] = 0;
    do
    {
      *(v72 + v11) = *(v84 + v11 + 4) + *(v9 + v11);
      v11 += 4;
    }

    while (v11 != 12);
    v13 = v72 + 2;
    v14 = vld1_dup_f32(v13);
    v75[v6++] = vdiv_f32(*&v72[0], v14);
  }

  while (v12 != 16);
  v15 = 0;
  memset(v84, 0, sizeof(v84));
  do
  {
    v16 = v8 + 12 * v15;
    *&v70[0] = *v16;
    DWORD2(v70[0]) = *(v16 + 8);
    *&v72[0] = a1 + 18;
    *(&v72[0] + 1) = 4;
    *&v73[0] = v72;
    *(&v73[0] + 1) = v70;
    *(v83 + 4) = 0;
    HIDWORD(v83[0]) = 0;
    cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::MatrixRef<float const,3u,3u,false>,cva::Matrix<float,3u,1u,false>>(v83 + 1, v73);
    v17 = 0;
    DWORD2(v71[0]) = 0;
    *&v71[0] = 0;
    do
    {
      *(v71 + v17 * 4) = *(v83 + v17 * 4 + 4) + a1[v17 + 30];
      ++v17;
    }

    while (v17 != 3);
    v18 = v84 + 12 * v15++;
    *v18 = *&v71[0];
    *(v18 + 2) = DWORD2(v71[0]);
  }

  while (v15 != 16);
  *&v83[0] = a2 + 420;
  *(&v83[0] + 1) = a1 + 2;
  memset(v73, 0, sizeof(v73));
  v74 = 0u;
  cva::assign<false,false,cva::Matrix<float,4u,4u,false>,cva::Matrix<float,4u,4u,false>,cva::Matrix<float,4u,4u,false>>(v73, v83);
  *&v71[0] = v73;
  *(&v71[0] + 1) = 4;
  *&v72[0] = v71;
  *(&v72[0] + 1) = v84;
  memset(v83, 0, sizeof(v83));
  cva::assign<false,false,cva::Matrix<float,3u,16u,false>,cva::MatrixRef<float,3u,3u,false>,cva::Matrix<float,3u,16u,false>>(v83, v72);
  v19 = 0;
  *&v71[0] = v74;
  DWORD2(v71[0]) = DWORD2(v74);
  v20 = 0.0;
  v21 = v83;
  do
  {
    v22 = 0;
    DWORD2(v72[0]) = 0;
    *&v72[0] = 0;
    do
    {
      *(v72 + v22) = (*(v21 + v22) * a4) + *(v71 + v22);
      v22 += 4;
    }

    while (v22 != 12);
    v23 = v72 + 2;
    v24 = vld1_dup_f32(v23);
    v25 = vsub_f32(vdiv_f32(*&v72[0], v24), v75[v19]);
    v20 = v20 + sqrtf(vaddv_f32(vmul_f32(v25, v25)));
    v21 = (v21 + 12);
    ++v19;
  }

  while (v19 != 16);
  v26 = v20 * 0.0625;
  if ((v20 * 0.0625) >= *(a3 + 36))
  {
    v28 = 0;
    v29 = v83 + 2;
    memset(v72, 0, sizeof(v72));
    v30 = v75;
    v31 = v83 + 2;
    do
    {
      v32 = v30->f32[0];
      ++v30;
      *(v72 + v28) = (*v31 * v32) - *(v31 - 2);
      v31 += 3;
      v28 += 4;
    }

    while (v28 != 64);
    v33 = 0;
    v34 = v75 + 1;
    memset(v71, 0, sizeof(v71));
    v35 = v75 + 1;
    do
    {
      v36 = *v35;
      v35 += 2;
      *(v71 + v33) = (*v29 * v36) - *(v29 - 1);
      v29 += 3;
      v33 += 4;
    }

    while (v33 != 64);
    v37 = 0;
    v38 = *(&v74 + 2);
    v39 = *&v74;
    memset(v70, 0, sizeof(v70));
    v40 = v75;
    do
    {
      v41 = v40->f32[0];
      ++v40;
      *(v70 + v37) = v39 - (v41 * v38);
      v37 += 4;
    }

    while (v37 != 64);
    v42 = 0;
    v43 = *(&v74 + 1);
    memset(v69, 0, sizeof(v69));
    do
    {
      v44 = *v34;
      v34 += 2;
      *(v69 + v42) = v43 - (v44 * v38);
      v42 += 4;
    }

    while (v42 != 64);
    v64 = v70;
    v65 = v72;
    v66 = &v64;
    v61 = v69;
    v62 = v71;
    v63 = &v61;
    v67.i32[1] = 0;
    cva::assign<false,false,cva::Matrix<float,1u,1u,false>,cva::Matrix<float,1u,16u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,1u,16u,false>>>(&v67 + 1, &v65);
    v68 = 0.0;
    cva::assign<false,false,cva::Matrix<float,1u,1u,false>,cva::Matrix<float,1u,16u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,1u,16u,false>>>(&v68, &v62);
    v45 = v67.f32[1];
    v46 = v68;
    v64 = v72;
    v65 = v72;
    v66 = &v64;
    v61 = v71;
    v62 = v71;
    v63 = &v61;
    v67.i32[1] = 0;
    cva::assign<false,false,cva::Matrix<float,1u,1u,false>,cva::Matrix<float,1u,16u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,1u,16u,false>>>(&v67 + 1, &v65);
    v68 = 0.0;
    cva::assign<false,false,cva::Matrix<float,1u,1u,false>,cva::Matrix<float,1u,16u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,1u,16u,false>>>(&v68, &v62);
    v47 = 0;
    v65 = v74;
    LODWORD(v66) = DWORD2(v74);
    v48 = v67.f32[1] + v68;
    v49 = (v45 + v46) / (v67.f32[1] + v68);
    v50 = 0.0;
    v51 = v83;
    do
    {
      v52 = 0;
      v68 = 0.0;
      v67 = 0;
      do
      {
        v67.f32[v52] = (v49 * *(v51 + v52 * 4)) + *(&v65 + v52 * 4);
        ++v52;
      }

      while (v52 != 3);
      v53 = &v68;
      v54 = vld1_dup_f32(v53);
      v55 = vsub_f32(vdiv_f32(v67, v54), v75[v47]);
      v50 = v50 + sqrtf(vaddv_f32(vmul_f32(v55, v55)));
      v51 = (v51 + 12);
      ++v47;
    }

    while (v47 != 16);
    v56 = v50 * 0.0625;
    if (v56 <= (v26 * 1.001))
    {
      v57 = v48 + a1[1];
      *a1 = (v45 + v46) + *a1;
      a1[1] = v57;
      v27 = 13;
      v56 = v49;
    }

    else
    {
      v27 = 8;
    }

    v26 = v56;
  }

  else
  {
    v27 = 12;
  }

  return v27 | (LODWORD(v26) << 32);
}

void arkit::btr::ComputeReprojectionErrorS(uint64_t a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v73 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  if (a2 >= 0.0 && *(a1 + 8) - *a1 >= 9uLL)
  {
    v9 = *v6;
    v10 = (*v6 + 356);
    v11 = v10[1];
    v61[0] = *v10;
    v61[1] = v11;
    v12 = v10[3];
    v61[2] = v10[2];
    v61[3] = v12;
    for (i = 48; i != 60; i += 4)
    {
      *(v61 + i) = *(v61 + i) * a2;
    }

    v66 = xmmword_1C25EFF64;
    v67 = *algn_1C25EFF74;
    v68 = xmmword_1C25EFF84;
    v69 = unk_1C25EFF94;
    *&v57 = v9 + 420;
    *(&v57 + 1) = 4;
    v70 = &v57;
    *&v72[0] = &v66;
    *(&v72[0] + 1) = 4;
    cva::MatrixRef<float,3u,3u,false>::operator=<cva::MatrixTransposeExpr<cva::MatrixRef<float const,3u,3u,false>>>(v72, &v70, a4, a5, a6);
    v64 = &v66;
    v65 = 4;
    v70 = &v64;
    v62 = (v9 + 468);
    v63 = 0xC00000004;
    *&v72[0] = &v70;
    *(&v72[0] + 1) = &v62;
    if ((v9 + 420) == &v66)
    {
      DWORD2(v57) = 0;
      *&v57 = 0;
      cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::MatrixUnaryExpr<cva::MatrixRef<float,3u,3u,false>,cva::detail::NegOp>,cva::MatrixRef<float const,3u,1u,false>>(&v57, v72);
      *&v69 = v57;
      DWORD2(v69) = DWORD2(v57);
    }

    else
    {
      v14 = 0;
      LODWORD(v59) = 0;
      v57 = 0u;
      v58 = 0u;
      v15 = &v66;
      v16 = 0x100000000;
      do
      {
        *(&v57 + v14) = -*v15;
        v17 = HIDWORD(v16);
        v18 = v16 < 2;
        if (v16 < 2)
        {
          v17 = 0;
        }

        v19 = &v15[v17];
        v20 = (v16 + 1);
        v21 = v16 & 0xFFFFFFFF00000000;
        v15 = v19 + 1;
        if (!v18)
        {
          v20 = 0;
        }

        v16 = v20 | v21;
        v14 += 4;
      }

      while (v14 != 36);
      v22 = 0;
      v23 = &v57;
      do
      {
        v24 = 0;
        v25 = 0.0;
        v26 = (v9 + 468);
        do
        {
          v27 = *v26++;
          v25 = v25 + (*(v23 + v24) * v27);
          v24 += 12;
        }

        while (v24 != 36);
        *(&v69 + v22++) = v25;
        v23 = (v23 + 4);
      }

      while (v22 != 3);
    }

    *&v72[0] = &v66;
    *(&v72[0] + 1) = v61;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    cva::assign<false,false,cva::Matrix<float,4u,4u,false>,cva::Matrix<float,4u,4u,false>,cva::Matrix<float,4u,4u,false>>(&v57, v72);
    v50 = (*(a1 + 8) - *a1) >> 3;
    if (v50 >= 2)
    {
      v28 = 0.0;
      for (j = 1; j != v50; ++j)
      {
        v29 = 0;
        v30 = 128;
        do
        {
          v31 = *(*a1 + 8 * j);
          v32 = 3 * v29;
          LODWORD(v65) = 0;
          v64 = 0;
          if ((v31 + 128) == &v64)
          {
            v34 = v31 + 128 + 12 * v29;
            v35 = *v34;
            LODWORD(v65) = *(v34 + 8);
            v64 = v35;
          }

          else
          {
            for (k = 0; k != 12; k += 4)
            {
              *(&v64 + k) = *(v31 + v30 + k);
            }
          }

          v70 = (v31 + 356);
          v71 = 4;
          *&v72[0] = &v70;
          *(&v72[0] + 1) = &v64;
          *(&v66 + 4) = 0;
          HIDWORD(v66) = 0;
          cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::MatrixRef<float const,3u,3u,false>,cva::Matrix<float,3u,1u,false>>(&v66 + 1, v72);
          v36 = 0;
          ++v29;
          LODWORD(v63) = 0;
          v62 = 0;
          do
          {
            v62.f32[v36] = *(&v66 + v36 * 4 + 4) + *(v31 + 404 + v36 * 4);
            ++v36;
          }

          while (v36 != 3);
          v37 = &v63;
          v38 = vld1_dup_f32(v37);
          v39 = v62;
          *&v72[0] = *(*a1 + 8 * j) + 420;
          *(&v72[0] + 1) = &v57;
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          cva::assign<false,false,cva::Matrix<float,4u,4u,false>,cva::Matrix<float,4u,4u,false>,cva::Matrix<float,4u,4u,false>>(&v66, v72);
          v40 = *(*a1 + 8 * j);
          v53 = 0;
          v54 = 0;
          if ((v40 + 4 * v32 - 4 * v32 + 128) == &v53)
          {
            v43 = 0;
            DWORD2(v72[0]) = 0;
            *&v72[0] = 0;
            v44 = v40 + v30;
            do
            {
              *(v72 + v43) = *(v44 + v43) * a2;
              v43 += 4;
            }

            while (v43 != 12);
            v53 = *&v72[0];
            v54 = DWORD2(v72[0]);
          }

          else
          {
            v41 = 0;
            v42 = v40 + v30;
            do
            {
              *(&v53 + v41) = *(v42 + v41) * a2;
              v41 += 4;
            }

            while (v41 != 12);
          }

          v64 = &v66;
          v65 = 4;
          v70 = &v64;
          v71 = &v53;
          *(v72 + 4) = 0;
          HIDWORD(v72[0]) = 0;
          cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::MatrixRef<float const,3u,3u,false>,cva::Matrix<float,3u,1u,false>>(v72 + 1, &v70);
          v45 = 0;
          v46 = vdiv_f32(v39, v38);
          v56 = 0;
          v55 = 0;
          do
          {
            v55.f32[v45] = *(v72 + v45 * 4 + 4) + *(&v69 + v45 * 4);
            ++v45;
          }

          while (v45 != 3);
          v47 = &v56;
          v48 = vld1_dup_f32(v47);
          v49 = vsub_f32(vdiv_f32(v55, v48), v46);
          v28 = v28 + sqrtf(vaddv_f32(vmul_f32(v49, v49)));
          v30 += 12;
        }

        while (v29 != 16);
      }
    }
  }
}

void arkit::btr::ScaleCorrection::ScaleCorrection(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  *(a1 + 48) = *(a2 + 6);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = v2;
  _ZNSt3__115allocate_sharedB8ne200100IN5arkit3btr15ScaleCorrection4ImplENS_9allocatorIS4_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  *(a1 + 48) = *(a2 + 6);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = v2;
  _ZNSt3__115allocate_sharedB8ne200100IN5arkit3btr15ScaleCorrection4ImplENS_9allocatorIS4_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void arkit::btr::ScaleCorrection::EstimateScale(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v113 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 56);
  if (*(a1 + 48) == 1 && *(v8 + 5) == 1)
  {
    *a3 = 6;
    return;
  }

  v9 = (a2 + 420);
  if (*(v8 + 8) == 1)
  {
    *(v8 + 8) = 0;
    v101 = xmmword_1C25EFF64;
    v102 = *algn_1C25EFF74;
    v103 = xmmword_1C25EFF84;
    v104[0] = unk_1C25EFF94;
    *&v95 = a2 + 420;
    *(&v95 + 1) = 4;
    v111 = &v95;
    *&v105[0] = &v101;
    *(&v105[0] + 1) = 4;
    cva::MatrixRef<float,3u,3u,false>::operator=<cva::MatrixTransposeExpr<cva::MatrixRef<float const,3u,3u,false>>>(v105, &v111, a3, a4, a5);
    v110[0] = &v101;
    v110[1] = 4;
    v111 = v110;
    v108 = (a2 + 468);
    v109 = 0xC00000004;
    *&v105[0] = &v111;
    *(&v105[0] + 1) = &v108;
    if (v9 == &v101)
    {
      DWORD2(v95) = 0;
      *&v95 = 0;
      cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::MatrixUnaryExpr<cva::MatrixRef<float,3u,3u,false>,cva::detail::NegOp>,cva::MatrixRef<float const,3u,1u,false>>(&v95, v105);
      *&v104[0] = v95;
      DWORD2(v104[0]) = DWORD2(v95);
    }

    else
    {
      v10 = 0;
      LODWORD(v97) = 0;
      v95 = 0u;
      v96 = 0u;
      v11 = &v101;
      v12 = 0x100000000;
      do
      {
        *(&v95 + v10) = -*v11;
        v13 = HIDWORD(v12);
        v14 = v12 < 2;
        if (v12 < 2)
        {
          v13 = 0;
        }

        v15 = &v11[v13];
        v16 = (v12 + 1);
        v17 = v12 & 0xFFFFFFFF00000000;
        v11 = v15 + 1;
        if (!v14)
        {
          v16 = 0;
        }

        v12 = v16 | v17;
        v10 += 4;
      }

      while (v10 != 36);
      v18 = 0;
      v19 = &v95;
      do
      {
        v20 = 0;
        v21 = 0.0;
        v22 = (a2 + 468);
        do
        {
          v23 = *v22++;
          v21 = v21 + (*(v19 + v20) * v23);
          v20 += 12;
        }

        while (v20 != 36);
        *(v104 + v18++) = v21;
        v19 = (v19 + 4);
      }

      while (v18 != 3);
    }

    v44 = v102;
    *(v8 + 408) = v101;
    *(v8 + 424) = v44;
    v45 = v104[0];
    *(v8 + 440) = v103;
    *(v8 + 456) = v45;
    v46 = 1;
    goto LABEL_31;
  }

  *&v101 = a2 + 420;
  *(&v101 + 1) = v8 + 408;
  memset(v105, 0, sizeof(v105));
  v106 = 0u;
  cva::assign<false,false,cva::Matrix<float,4u,4u,false>,cva::Matrix<float,4u,4u,false>,cva::Matrix<float,4u,4u,false>>(v105, &v101);
  v101 = xmmword_1C25EFF64;
  v102 = *algn_1C25EFF74;
  v103 = xmmword_1C25EFF84;
  v104[0] = unk_1C25EFF94;
  *&v95 = a2 + 420;
  *(&v95 + 1) = 4;
  v110[0] = &v95;
  v111 = &v101;
  v112 = 4;
  cva::MatrixRef<float,3u,3u,false>::operator=<cva::MatrixTransposeExpr<cva::MatrixRef<float const,3u,3u,false>>>(&v111, v110, v24, v25, v26);
  v108 = &v101;
  v109 = 4;
  v110[0] = &v108;
  v107[0] = a2 + 468;
  v107[1] = 0xC00000004;
  v111 = v110;
  v112 = v107;
  if (v9 == &v101)
  {
    DWORD2(v95) = 0;
    *&v95 = 0;
    cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::MatrixUnaryExpr<cva::MatrixRef<float,3u,3u,false>,cva::detail::NegOp>,cva::MatrixRef<float const,3u,1u,false>>(&v95, &v111);
    *&v104[0] = v95;
    DWORD2(v104[0]) = DWORD2(v95);
  }

  else
  {
    v30 = 0;
    LODWORD(v97) = 0;
    v95 = 0u;
    v96 = 0u;
    v31 = &v101;
    v32 = 0x100000000;
    do
    {
      *(&v95 + v30) = -*v31;
      v33 = HIDWORD(v32);
      v34 = v32 < 2;
      if (v32 < 2)
      {
        v33 = 0;
      }

      v35 = &v31[v33];
      v36 = (v32 + 1);
      v37 = v32 & 0xFFFFFFFF00000000;
      v31 = v35 + 1;
      if (!v34)
      {
        v36 = 0;
      }

      v32 = v36 | v37;
      v30 += 4;
    }

    while (v30 != 36);
    v38 = 0;
    v39 = &v95;
    do
    {
      v40 = 0;
      v41 = 0.0;
      v42 = (a2 + 468);
      do
      {
        v43 = *v42++;
        v41 = v41 + (*(v39 + v40) * v43);
        v40 += 12;
      }

      while (v40 != 36);
      *(v104 + v38++) = v41;
      v39 = (v39 + 4);
    }

    while (v38 != 3);
  }

  v47 = v102;
  *(v8 + 408) = v101;
  *(v8 + 424) = v47;
  v48 = v104[0];
  *(v8 + 440) = v103;
  *(v8 + 456) = v48;
  *&v48 = vmul_f32(*(&v106 + 4), *(&v106 + 4));
  v49 = sqrtf(((*&v106 * *&v106) + *&v48) + *(&v48 + 1));
  if (v49 >= *(a1 + 8))
  {
    if (v49 <= *(a1 + 12))
    {
      v51 = 0;
      v52 = *(a2 + 272);
      v104[5] = *(a2 + 256);
      v104[6] = v52;
      v53 = *(a2 + 304);
      v104[7] = *(a2 + 288);
      v104[8] = v53;
      v54 = *(a2 + 208);
      v104[1] = *(a2 + 192);
      v104[2] = v54;
      v55 = *(a2 + 240);
      v104[3] = *(a2 + 224);
      v104[4] = v55;
      v56 = *(a2 + 144);
      v101 = *(a2 + 128);
      v102 = v56;
      v57 = *(a2 + 176);
      v103 = *(a2 + 160);
      v59.i32[1] = DWORD1(v103);
      v104[0] = v57;
      v58 = *(v8 + 16) + 1;
      *(v8 + 16) = v58;
      *v59.i32 = v58;
      v60 = vdupq_lane_s32(v59, 0);
      do
      {
        *(v8 + 24 + v51) = vaddq_f32(*(v8 + 24 + v51), vdivq_f32(vsubq_f32(*(&v101 + v51), *(v8 + 24 + v51)), v60));
        v51 += 16;
      }

      while (v51 != 192);
      v61 = 0;
      v62 = (v8 + 216);
      do
      {
        v63 = vsubq_f32(*(&v101 + v61), *(v8 + v61 + 24));
        *(v8 + v61 + 216) = vaddq_f32(*(v8 + v61 + 216), vmulq_f32(v63, v63));
        v61 += 16;
      }

      while (v61 != 192);
      v64 = 0;
      v65 = 0;
      v100 = 0;
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v95 = 0u;
      do
      {
        *(&v95 + v64) = *v62 / *v59.i32;
        v66 = HIDWORD(v65);
        v67 = v65 < 2;
        if (v65 < 2)
        {
          v66 = 0;
        }

        v68 = &v62[v66];
        v69 = (v65 + 1);
        v70 = v65 & 0xFFFFFFFF00000000;
        v62 = v68 + 1;
        if (!v67)
        {
          v69 = 0;
        }

        v65 = v69 | v70;
        v64 += 4;
      }

      while (v64 != 84);
      v71 = *&v95;
      for (i = 12; i != 84; i += 12)
      {
        v71 = v71 + *(&v95 + i);
      }

      v73 = 1;
      v74 = &v95;
      v75 = sqrtf(v71);
      do
      {
        v76 = *(&v95 + v73);
        for (j = 16; j != 88; j += 12)
        {
          v76 = v76 + *(v74 + j);
        }

        v78 = sqrtf(v76);
        if (v75 < v78)
        {
          v75 = v78;
        }

        ++v73;
        v74 = (v74 + 4);
      }

      while (v73 != 3);
      v50 = 13;
      if (v75 > *(a1 + 32))
      {
        v50 = 5;
        v49 = v75;
      }
    }

    else
    {
      v50 = 2;
    }
  }

  else
  {
    v50 = 1;
  }

  *a3 = v50 | (LODWORD(v49) << 32);
  if (v50 == 5 || v50 == 2)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN5arkit3btr15ScaleCorrection4ImplENS_9allocatorIS4_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  if (v50 == 13)
  {
    v79 = *(a1 + 56);
    if ((*(v79 + 4) & 1) == 0)
    {
      *(v79 + 4) = 1;
      v46 = 7;
LABEL_31:
      *a3 = v46;
      return;
    }

    v80 = *(a3 + 4);
    *a3 = v81;
    v82 = *(a1 + 56);
    if (v81 == 13)
    {
      v83 = *(v82 + 472) / *(v82 + 476);
      v84 = v80 + *(v82 + 628);
      *(v82 + 628) = v84;
      v85 = *(v82 + 608) + 1;
      *(v82 + 608) = v85;
      if (v85 < *a1)
      {
        v86 = 7;
LABEL_84:
        *a3 = v86 | (LODWORD(v83) << 32);
        *(a3 + 4) = HIDWORD(v81);
        return;
      }

      if (v84 < *(a1 + 28))
      {
        v86 = 3;
        v83 = v84;
        goto LABEL_84;
      }

      if (*(a1 + 40) > v83 || *(a1 + 44) < v83)
      {
        *a3 = (LODWORD(v83) << 32) | 0xB;
        *(a3 + 4) = HIDWORD(v81);
        _ZNSt3__115allocate_sharedB8ne200100IN5arkit3btr15ScaleCorrection4ImplENS_9allocatorIS4_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
      }

      v88 = vabds_f32(v83, *(v82 + 624)) / fminf(v83, *(v82 + 624));
      *(v82 + 624) = v83;
      if (v88 >= *(a1 + 24))
      {
        *(v82 + 616) = 0;
      }

      else
      {
        v89 = *(v82 + 616);
        v92 = __CFADD__(v89, 1);
        v90 = v89 + 1;
        *(v82 + 616) = v90;
        if (!v92)
        {
          v91 = *(a1 + 16);
          v92 = v90 >= v91;
          if (v90 >= v91)
          {
            v93 = 0;
          }

          else
          {
            v93 = 9;
          }

          *a3 = v93 | (LODWORD(v83) << 32);
          *(a3 + 4) = HIDWORD(v81);
          if (v92)
          {
            v94 = *(a1 + 56);
            *v94 = v83;
            *(v94 + 5) = 1;
          }

          return;
        }
      }

      v86 = 10;
      goto LABEL_84;
    }
  }
}

double cva::assign<false,false,cva::Matrix<float,3u,16u,false>,cva::MatrixRef<float,3u,3u,false>,cva::Matrix<float,3u,16u,false>>(uint64_t *a1, uint64_t **a2)
{
  v3 = **a2;
  if ((v3 - 4 * *(*a2 + 3)) == a1 || (v4 = a2[1], v4 == a1))
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    cva::assign<false,false,cva::Matrix<float,3u,16u,false>,cva::MatrixRef<float,3u,3u,false>,cva::Matrix<float,3u,16u,false>>(&v19, a2);
    v13 = v28;
    *(a1 + 8) = v27;
    *(a1 + 9) = v13;
    v14 = v30;
    *(a1 + 10) = v29;
    *(a1 + 11) = v14;
    v15 = v24;
    *(a1 + 4) = v23;
    *(a1 + 5) = v15;
    v16 = v26;
    *(a1 + 6) = v25;
    *(a1 + 7) = v16;
    v17 = v20;
    *a1 = v19;
    *(a1 + 1) = v17;
    result = *&v21;
    v18 = v22;
    *(a1 + 2) = v21;
    *(a1 + 3) = v18;
  }

  else
  {
    v5 = 0;
    v6 = *(*a2 + 2);
    do
    {
      v7 = 0;
      v8 = v3;
      do
      {
        if (v6)
        {
          v9 = 0;
          result = 0.0;
          v11 = v4 + 3 * v5;
          do
          {
            v12 = *v11++;
            *&result = *&result + (*(v8 + v9) * v12);
            v9 += 4 * v6;
          }

          while (4 * (3 * v6) != v9);
        }

        else
        {
          result = 0.0;
        }

        *(a1 + 3 * v5 + v7++) = LODWORD(result);
        v8 += 4;
      }

      while (v7 != 3);
      ++v5;
    }

    while (v5 != 16);
  }

  return result;
}

float *cva::assign<false,false,cva::Matrix<float,1u,1u,false>,cva::Matrix<float,1u,16u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,1u,16u,false>>>(float *result, uint64_t a2)
{
  v2 = result;
  if (*a2 == result)
  {
    v6 = 0;
    result = cva::assign<false,false,cva::Matrix<float,1u,1u,false>,cva::Matrix<float,1u,16u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,1u,16u,false>>>(&v6, a2);
    *v2 = v6;
  }

  else
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      v5 = vmulq_f32(*(*a2 + v3), *(**(a2 + 8) + v3));
      v4 = (((v4 + v5.f32[0]) + v5.f32[1]) + v5.f32[2]) + v5.f32[3];
      v3 += 16;
    }

    while (v3 != 64);
    *result = v4;
  }

  return result;
}

float *cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::MatrixRef<float const,3u,3u,false>,cva::Matrix<float,3u,1u,false>>(float *result, float **a2)
{
  v2 = result;
  v3 = **a2;
  if ((v3 - 4 * *(*a2 + 3)) == result || (v4 = a2[1], v4 == result))
  {
    v12 = 0;
    v11 = 0;
    result = cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::MatrixRef<float const,3u,3u,false>,cva::Matrix<float,3u,1u,false>>(&v11, a2);
    *v2 = v11;
    *(v2 + 8) = v12;
  }

  else
  {
    v5 = 0;
    v6 = *(*a2 + 2);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = 0.0;
        v9 = v4;
        do
        {
          v10 = *v9++;
          v8 = v8 + (*(v3 + v7) * v10);
          v7 += 4 * v6;
        }

        while (4 * (3 * v6) != v7);
      }

      else
      {
        v8 = 0.0;
      }

      result[v5++] = v8;
      v3 += 4;
    }

    while (v5 != 3);
  }

  return result;
}

uint64_t cva::MatrixRef<float,3u,3u,false>::operator=<cva::MatrixTransposeExpr<cva::MatrixRef<float const,3u,3u,false>>>(uint64_t result, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *result;
  v6 = *a2;
  v7 = **a2;
  if (v7 - 4 * *(*a2 + 3) == *result - 4 * *(result + 12))
  {
    v18 = 0;
    v19 = 0;
    v32 = 0;
    memset(v31, 0, sizeof(v31));
    do
    {
      if (HIDWORD(v19) > 2 || v19 >= 3)
      {
        cva::detail::assignNoAlias<cva::Matrix<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>();
      }

      *(v31 + v18) = *(v7 + 4 * (HIDWORD(v19) + *(v6 + 2) * v19));
      if (v19 >= 2)
      {
        v19 = (v19 & 0x300000000) + 0x100000000;
      }

      else
      {
        v19 = v19 & 0x300000000 | (v19 + 1) & 7;
      }

      v18 += 4;
    }

    while (v18 != 36);
    v21 = *(result + 8);
    if (v21)
    {
      v22 = &v5[3 * v21];
      v23 = (v21 - 3) << 32;
      v24 = v31;
      do
      {
        v25 = *v24++;
        *v5 = v25;
        v26 = HIDWORD(v23);
        v27 = v23 < 2;
        if (v23 < 2)
        {
          v26 = 0;
        }

        v28 = &v5[v26];
        v29 = (v23 + 1);
        v30 = v23 & 0xFFFFFFFF00000000;
        if (!v27)
        {
          v29 = 0;
        }

        v23 = v29 | v30;
        v5 = v28 + 1;
      }

      while (v5 != v22);
    }
  }

  else
  {
    v8 = *(result + 8);
    if (v8)
    {
      v9 = 0;
      v10 = &v5[3 * v8];
      v11 = (v8 - 3) << 32;
      do
      {
        if (HIDWORD(v9) > 2 || v9 >= 3)
        {
          cva::detail::assignNoAlias<cva::Matrix<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>();
        }

        *v5 = *(v7 + 4 * (HIDWORD(v9) + *(v6 + 2) * v9));
        if (v9 >= 2)
        {
          v9 = (v9 & 0x300000000) + 0x100000000;
        }

        else
        {
          v9 = v9 & 0x300000000 | (v9 + 1) & 7;
        }

        v13 = HIDWORD(v11);
        v14 = v11 < 2;
        if (v11 < 2)
        {
          v13 = 0;
        }

        v15 = &v5[v13];
        v16 = (v11 + 1);
        v17 = v11 & 0xFFFFFFFF00000000;
        if (!v14)
        {
          v16 = 0;
        }

        v11 = v16 | v17;
        v5 = v15 + 1;
      }

      while (v5 != v10);
    }
  }

  return result;
}

float **cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::MatrixUnaryExpr<cva::MatrixRef<float,3u,3u,false>,cva::detail::NegOp>,cva::MatrixRef<float const,3u,1u,false>>(float **result, float ****a2)
{
  v2 = result;
  v3 = a2[1];
  v4 = *v3;
  if ((*v3 - 4 * *(v3 + 3)) == result)
  {
    DWORD2(v21[0]) = 0;
    *&v21[0] = 0;
    result = cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::MatrixUnaryExpr<cva::MatrixRef<float,3u,3u,false>,cva::detail::NegOp>,cva::MatrixRef<float const,3u,1u,false>>(v21, a2);
    *v2 = *&v21[0];
    *(v2 + 8) = DWORD2(v21[0]);
  }

  else
  {
    v5 = 0;
    v6 = *a2;
    memset(v21, 0, sizeof(v21));
    v22 = 0;
    v7 = *v6;
    v8 = **v6;
    v9 = (*(v7 + 2) - 3) << 32;
    do
    {
      *(v21 + v5) = -*v8;
      v10 = HIDWORD(v9);
      v11 = v9 < 2;
      if (v9 < 2)
      {
        v10 = 0;
      }

      v12 = &v8[v10];
      v13 = (v9 + 1);
      v14 = v9 & 0xFFFFFFFF00000000;
      v8 = v12 + 1;
      if (!v11)
      {
        v13 = 0;
      }

      v9 = v13 | v14;
      v5 += 4;
    }

    while (v5 != 36);
    v15 = 0;
    v16 = v21;
    do
    {
      v17 = 0;
      v18 = 0.0;
      v19 = v4;
      do
      {
        v20 = *v19++;
        v18 = v18 + (*(v16 + v17) * v20);
        v17 += 12;
      }

      while (v17 != 36);
      *(result + v15++) = v18;
      v16 = (v16 + 4);
    }

    while (v15 != 3);
  }

  return result;
}

void std::__shared_ptr_emplace<arkit::btr::ScaleCorrection::Impl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F4207550;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691A790);
}

void std::__shared_ptr_emplace<arkit::btr::ScaleCorrection::Impl>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 656);
  if (v2)
  {
    *(a1 + 664) = v2;
    operator delete(v2);
  }
}

id _ARLogGeneral_36(uint64_t a1)
{
  if (_ARLogGeneral_onceToken_38 != -1)
  {
    _ARLogGeneral_cold_1_36();
  }

  v2 = _ARLogGeneral_logObj_38;

  return v2;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_44()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_43 = result;
  return result;
}

__CFString *NSStringFromCV3DVIOReturn(unsigned int a1)
{
  if (a1 > 0x21)
  {
    return &stru_1F4208A80;
  }

  else
  {
    return off_1E817DD78[a1];
  }
}

__CFString *NSStringFromCV3DSLAMConfigReturn(uint64_t a1)
{
  if (a1 < 5)
  {
    return off_1E817DE88[a1];
  }

  v6 = v1;
  v7 = v2;
  v4 = _ARLogGeneral_37(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_DEBUG, "Unknown CV3DSLAMConfigReturn value passed.", v5, 2u);
  }

  return &stru_1F4208A80;
}

id _ARLogGeneral_37(uint64_t a1)
{
  if (_ARLogGeneral_onceToken_39 != -1)
  {
    _ARLogGeneral_cold_1_37();
  }

  v2 = _ARLogGeneral_logObj_39;

  return v2;
}

__CFString *NSStringFromCV3DSLAMReturn(uint64_t a1)
{
  if (*MEMORY[0x1E698BD80] == a1)
  {
    return @"NoError";
  }

  if (*MEMORY[0x1E698BD60] == a1)
  {
    return @"Error";
  }

  if (*MEMORY[0x1E698BD68] == a1)
  {
    return @"InsufficientMemory";
  }

  if (*MEMORY[0x1E698BD70] == a1)
  {
    return @"InvalidContext";
  }

  if (*MEMORY[0x1E698BD78] == a1)
  {
    return @"InvalidParameter";
  }

  if (*MEMORY[0x1E698BD58] == a1)
  {
    return @"CMMapNotAvailable";
  }

  v6 = v1;
  v7 = v2;
  v4 = _ARLogGeneral_37(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_DEBUG, "Unknown CV3DSLAMReturn value passed.", v5, 2u);
  }

  return &stru_1F4208A80;
}

__CFString *NSStringFromCV3DPosePredictionReturn(unsigned int a1)
{
  if (a1 > 6)
  {
    return &stru_1F4208A80;
  }

  else
  {
    return off_1E817DEB0[a1];
  }
}

__CFString *NSStringFromCV3DSLAMAnchorAddedResult(uint64_t a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%d)", a1];
  if (*MEMORY[0x1E698BCA8] == v1)
  {
    v3 = @"NoError";
  }

  else if (*MEMORY[0x1E698BCA0] == v1)
  {
    v3 = @"NoActiveAnchorGroup";
  }

  else if (*MEMORY[0x1E698BC88] == v1)
  {
    v3 = @"InactiveAnchorGroup";
  }

  else if (*MEMORY[0x1E698BCB0] == v1)
  {
    v3 = @"TooManyAnchors";
  }

  else if (*MEMORY[0x1E698BC70] == v1)
  {
    v3 = @"DuplicateAnchor";
  }

  else if (*MEMORY[0x1E698BC78] == v1)
  {
    v3 = @"Error";
  }

  else if (*MEMORY[0x1E698BC90] == v1)
  {
    v3 = @"MaxNRAreasReached";
  }

  else if (*MEMORY[0x1E698BC98] == v1)
  {
    v3 = @"NRAnchorNotPermitted";
  }

  else
  {
    if (*MEMORY[0x1E698BC80] != v1)
    {
      goto LABEL_20;
    }

    v3 = @"AnchorGroupNotAuthorized";
  }

  v2 = v3;
LABEL_20:

  return v2;
}

__CFString *NSStringFromSLAMCMDataType(int a1)
{
  if (*MEMORY[0x1E698BCB8] == a1)
  {
    return @"KeyframeInfo";
  }

  if (*MEMORY[0x1E698BCD8] == a1)
  {
    return @"ObjectsAnchor";
  }

  if (*MEMORY[0x1E698BCF0] == a1)
  {
    return @"RelocalizationResult";
  }

  if (*MEMORY[0x1E698BCE8] == a1)
  {
    return @"RegistrationData";
  }

  if (*MEMORY[0x1E698BCD0] == a1)
  {
    return @"ObjectAnchorRemoval";
  }

  if (*MEMORY[0x1E698BD00] == a1)
  {
    return @"VIOStateAndUTCTimestamp";
  }

  if (*MEMORY[0x1E698BCC8] == a1)
  {
    return @"MapRegistrationStats";
  }

  if (*MEMORY[0x1E698BCE0] == a1)
  {
    return @"PoseAnchor";
  }

  if (*MEMORY[0x1E698BCF8] == a1)
  {
    return @"SubmapsStatsInfo";
  }

  if (*MEMORY[0x1E698BCC0] == a1)
  {
    return @"MLFrameSet";
  }

  return @"Unknown";
}

__CFString *NSStringFromCV3DSLAMCalibrationReturn(unsigned int a1)
{
  if (a1 > 6)
  {
    return &stru_1F4208A80;
  }

  else
  {
    return off_1E817DEE8[a1];
  }
}

__CFString *NSStringFromCV3DSLAMJasperPointCloudReturn(unsigned int a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E817DF20[a1];
  }
}

__CFString *NSStringFromCV3DVIOTrackingState(unsigned int a1)
{
  if (a1 > 4)
  {
    return &stru_1F4208A80;
  }

  else
  {
    return off_1E817DF38[a1];
  }
}

__CFString *NSStringFromCV3DSLAMMode(int a1)
{
  if (*MEMORY[0x1E698BD50] == a1)
  {
    v1 = @"Visual";
  }

  else
  {
    v1 = @"Unknown";
  }

  if (*MEMORY[0x1E698BD48] == a1)
  {
    return @"Regular";
  }

  else
  {
    return v1;
  }
}

id ARGetAnchorIdentifierFromAnchorRef(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = CV3DSLAMAnchorCopyAnchorID();
  if (v1)
  {
    v2 = v1;
    v3 = [MEMORY[0x1E696AFB0] ar_UUIDWithCFUUIDRef:v1];
    CFRelease(v2);
    goto LABEL_12;
  }

  if (ARShouldUseLogTypeError_onceToken_44 != -1)
  {
    ARGetAnchorIdentifierFromAnchorRef_cold_1();
  }

  v4 = ARShouldUseLogTypeError_internalOSVersion_44;
  v5 = _ARLogGeneral_37(v1);
  v6 = v5;
  if (v4 == 1)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v12 = 0;
      v7 = "Failed to retrieve anchor identifier %{public}@";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_1C241C000, v8, v9, v7, buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v12 = 0;
    v7 = "Error: Failed to retrieve anchor identifier %{public}@";
    v8 = v6;
    v9 = OS_LOG_TYPE_INFO;
    goto LABEL_10;
  }

  v3 = 0;
LABEL_12:

  return v3;
}

__CFString *NSStringFromCV3DVisualSLAMState(int a1)
{
  if (*MEMORY[0x1E698BE50] == a1)
  {
    return @"VisionOnly";
  }

  if (*MEMORY[0x1E698BE58] == a1)
  {
    return @"VisionOnlyAndInertialInitialization";
  }

  if (*MEMORY[0x1E698BE60] == a1)
  {
    return @"VisualInertial";
  }

  return @"Unknown";
}

uint64_t CV3DSLAMCameraVideoModeForResolutionAndDeviceType(void *a1, double a2, double a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a1;
  v7 = [v5 stringWithFormat:@"%.0fx%.0f", *&a2, *&a3];
  v8 = *MEMORY[0x1E6986948];

  if (v8 == v6)
  {
    v9 = [v7 stringByAppendingString:@"xSW"];

    v7 = v9;
  }

  [v7 UTF8String];
  v10 = CV3DSLAMCameraVideoModeFromString();

  return v10;
}

id ARVisionDataParametersForWorldTrackingOptions(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v23 = 0;
  v2 = [v1 createSLAMCalibration:&v23];
  v3 = v2;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v20 = __ARVisionDataParametersForWorldTrackingOptions_block_invoke;
  v21 = &__block_descriptor_40_e5_v8__0l;
  v22 = v23;
  if (!v2)
  {
    v18 = 0;
    [v1 createSLAMConfig:&v18 calibration:?];
    AVCaptureConfig = CV3DSLAMConfigCreateAVCaptureConfig();
    v9 = CV3DSLAMConfigRelease();
    if (AVCaptureConfig)
    {
      goto LABEL_17;
    }

    if (ARShouldUseLogTypeError_onceToken_44 != -1)
    {
      ARGetAnchorIdentifierFromAnchorRef_cold_1();
    }

    v10 = ARShouldUseLogTypeError_internalOSVersion_44;
    v11 = _ARLogGeneral_37(v9);
    v12 = v11;
    if (v10 == 1)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v25 = v1;
        v26 = 2112;
        v27 = 0;
        v13 = "Error reading vision data output parameters for %{public}@: %@";
        v14 = v12;
        v15 = OS_LOG_TYPE_ERROR;
LABEL_22:
        _os_log_impl(&dword_1C241C000, v14, v15, v13, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v25 = v1;
      v26 = 2112;
      v27 = 0;
      v13 = "Error: Error reading vision data output parameters for %{public}@: %@";
      v14 = v12;
      v15 = OS_LOG_TYPE_INFO;
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  if (ARShouldUseLogTypeError_onceToken_44 != -1)
  {
    ARGetAnchorIdentifierFromAnchorRef_cold_1();
  }

  v4 = ARShouldUseLogTypeError_internalOSVersion_44;
  v5 = _ARLogGeneral_37(v2);
  v6 = v5;
  if (v4 == 1)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromCV3DSLAMCalibrationReturn(v3);
      *buf = 138543618;
      v25 = v1;
      v26 = 2114;
      v27 = v7;
      _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_ERROR, "Error building slam calibration, unable to fetch vision data output parameters for %{public}@: %{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v16 = NSStringFromCV3DSLAMCalibrationReturn(v3);
    *buf = 138543618;
    v25 = v1;
    v26 = 2114;
    v27 = v16;
    _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_INFO, "Error: Error building slam calibration, unable to fetch vision data output parameters for %{public}@: %{public}@", buf, 0x16u);
  }

  AVCaptureConfig = 0;
LABEL_17:
  v20(v19);

  return AVCaptureConfig;
}

uint64_t ARParseAndAddCameraCalibrationParameters(void *a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v97 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [v5 objectForKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyImageWidth];
  v7 = [v6 intValue];

  v8 = [v5 objectForKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyImageHeight];
  v9 = [v8 intValue];

  if (v7)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v16 = [v5 objectForKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyLensType];
    v14 = v16;
    if (!v16)
    {
      if (ARShouldUseLogTypeError_onceToken_44 != -1)
      {
        ARParseAndAddCameraCalibrationParameters_cold_2();
      }

      v23 = ARShouldUseLogTypeError_internalOSVersion_44;
      v24 = _ARLogGeneral_37(v16);
      v17 = v24;
      if (v23 == 1)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "CV3DSLAMCalibrationReturn ARParseAndAddCameraCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull, CV3DSLAMCameraMode, const uint32_t, const uint32_t)";
          WORD2(buf[1]) = 2114;
          *(&buf[1] + 6) = 0;
          _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_ERROR, "%{public}s: wrong lens type(%{public}@)", buf, 0x16u);
        }

        v15 = 1;
      }

      else
      {
        v15 = 1;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "CV3DSLAMCalibrationReturn ARParseAndAddCameraCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull, CV3DSLAMCameraMode, const uint32_t, const uint32_t)";
          WORD2(buf[1]) = 2114;
          *(&buf[1] + 6) = 0;
          _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_INFO, "Error: %{public}s: wrong lens type(%{public}@)", buf, 0x16u);
        }
      }

      goto LABEL_86;
    }

    v17 = [v5 objectForKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyCameraMatrix];
    v18 = [v17 componentsSeparatedByString:@", "];
    v19 = [v18 count];
    if (v19 <= 8)
    {
      if (ARShouldUseLogTypeError_onceToken_44 != -1)
      {
        ARParseAndAddCameraCalibrationParameters_cold_2();
      }

      v20 = ARShouldUseLogTypeError_internalOSVersion_44;
      v21 = _ARLogGeneral_37(v19);
      v22 = v21;
      if (v20 == 1)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "CV3DSLAMCalibrationReturn ARParseAndAddCameraCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull, CV3DSLAMCameraMode, const uint32_t, const uint32_t)";
          WORD2(buf[1]) = 1024;
          *(&buf[1] + 6) = [v18 count];
          _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_ERROR, "%{public}s: wrong Intrinsics array (intrinsicsArray.count=%d)", buf, 0x12u);
        }

        v15 = 1;
      }

      else
      {
        v15 = 1;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "CV3DSLAMCalibrationReturn ARParseAndAddCameraCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull, CV3DSLAMCameraMode, const uint32_t, const uint32_t)";
          WORD2(buf[1]) = 1024;
          *(&buf[1] + 6) = [v18 count];
          _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_INFO, "Error: %{public}s: wrong Intrinsics array (intrinsicsArray.count=%d)", buf, 0x12u);
        }
      }

      goto LABEL_85;
    }

    v25 = [v18 objectAtIndex:0];
    [v25 floatValue];

    v26 = [v18 objectAtIndex:4];
    [v26 floatValue];

    v27 = [v18 objectAtIndex:2];
    [v27 floatValue];

    v28 = [v18 objectAtIndex:5];
    [v28 floatValue];

    v86 = [v5 objectForKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyRadialDistortion];
    v29 = [v86 componentsSeparatedByString:@", "];
    v30 = [v29 count];
    if (v30 <= 2)
    {
      if (ARShouldUseLogTypeError_onceToken_44 != -1)
      {
        ARParseAndAddCameraCalibrationParameters_cold_2();
      }

      v22 = v86;
      v31 = ARShouldUseLogTypeError_internalOSVersion_44;
      v32 = _ARLogGeneral_37(v30);
      v33 = v32;
      if (v31 == 1)
      {
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf[0]) = 136315394;
          *(buf + 4) = "CV3DSLAMCalibrationReturn ARParseAndAddCameraCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull, CV3DSLAMCameraMode, const uint32_t, const uint32_t)";
          WORD2(buf[1]) = 1024;
          *(&buf[1] + 6) = [v29 count];
          v34 = "%s: wrong radialDistortionArray array (radialDistortionArray.count=%d)";
          v35 = v33;
          v36 = OS_LOG_TYPE_ERROR;
LABEL_48:
          _os_log_impl(&dword_1C241C000, v35, v36, v34, buf, 0x12u);
        }
      }

      else if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = "CV3DSLAMCalibrationReturn ARParseAndAddCameraCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull, CV3DSLAMCameraMode, const uint32_t, const uint32_t)";
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = [v29 count];
        v34 = "Error: %s: wrong radialDistortionArray array (radialDistortionArray.count=%d)";
        v35 = v33;
        v36 = OS_LOG_TYPE_INFO;
        goto LABEL_48;
      }

      v15 = 1;
LABEL_84:

LABEL_85:
LABEL_86:

      goto LABEL_87;
    }

    v84 = v17;
    v37 = 0;
    memset(v96, 0, sizeof(v96));
    do
    {
      v38 = [v29 objectAtIndex:v37];
      [v38 doubleValue];
      *(v96 + v37) = v39;

      ++v37;
    }

    while (v37 != 4);
    v83 = [v5 objectForKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyTangentialDistortion];
    v40 = [v83 componentsSeparatedByString:{@", "}];
    v41 = [v40 count];
    v85 = v40;
    if (v41 < 2)
    {
      if (ARShouldUseLogTypeError_onceToken_44 != -1)
      {
        ARParseAndAddCameraCalibrationParameters_cold_2();
      }

      v22 = v86;
      v42 = ARShouldUseLogTypeError_internalOSVersion_44;
      v43 = _ARLogGeneral_37(v41);
      v44 = v43;
      v17 = v84;
      if (v42 == 1)
      {
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf[0]) = 136315394;
          *(buf + 4) = "CV3DSLAMCalibrationReturn ARParseAndAddCameraCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull, CV3DSLAMCameraMode, const uint32_t, const uint32_t)";
          WORD2(buf[1]) = 1024;
          *(&buf[1] + 6) = [v85 count];
          v45 = "%s: wrong tangentialDistortionArray (tangentialDistortionArray.count=%d)";
          v46 = v44;
          v47 = OS_LOG_TYPE_ERROR;
LABEL_58:
          _os_log_impl(&dword_1C241C000, v46, v47, v45, buf, 0x12u);
        }
      }

      else if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = "CV3DSLAMCalibrationReturn ARParseAndAddCameraCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull, CV3DSLAMCameraMode, const uint32_t, const uint32_t)";
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = [v85 count];
        v45 = "Error: %s: wrong tangentialDistortionArray (tangentialDistortionArray.count=%d)";
        v46 = v44;
        v47 = OS_LOG_TYPE_INFO;
        goto LABEL_58;
      }

      v15 = 1;
LABEL_83:

      goto LABEL_84;
    }

    v48 = [v40 objectAtIndex:0];
    [v48 doubleValue];
    v95[3] = v49;
    v50 = [v40 objectAtIndex:1];
    [v50 doubleValue];
    v95[4] = v51;

    v81 = [v5 objectForKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyCameraToImuPosition];
    v82 = [v81 componentsSeparatedByString:{@", "}];
    v52 = [v82 count];
    if (v52 <= 2)
    {
      v22 = v86;
      if (ARShouldUseLogTypeError_onceToken_44 != -1)
      {
        ARParseAndAddCameraCalibrationParameters_cold_2();
      }

      v17 = v84;
      v53 = v82;
      v54 = ARShouldUseLogTypeError_internalOSVersion_44;
      v55 = _ARLogGeneral_37(v52);
      v56 = v55;
      if (v54 == 1)
      {
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf[0]) = 136315394;
          *(buf + 4) = "CV3DSLAMCalibrationReturn ARParseAndAddCameraCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull, CV3DSLAMCameraMode, const uint32_t, const uint32_t)";
          WORD2(buf[1]) = 1024;
          *(&buf[1] + 6) = [v82 count];
          v57 = "%s: wrong cameraToImuPositionArray (cameraToImuPositionArray=%d)";
          v58 = v56;
          v59 = OS_LOG_TYPE_ERROR;
LABEL_66:
          _os_log_impl(&dword_1C241C000, v58, v59, v57, buf, 0x12u);
        }
      }

      else if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = "CV3DSLAMCalibrationReturn ARParseAndAddCameraCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull, CV3DSLAMCameraMode, const uint32_t, const uint32_t)";
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = [v82 count];
        v57 = "Error: %s: wrong cameraToImuPositionArray (cameraToImuPositionArray=%d)";
        v58 = v56;
        v59 = OS_LOG_TYPE_INFO;
        goto LABEL_66;
      }

      v15 = 1;
LABEL_82:

      goto LABEL_83;
    }

    v60 = 0;
    memset(v95, 0, 24);
    do
    {
      v61 = [v82 objectAtIndex:v60];
      [v61 doubleValue];
      v95[v60] = v62;

      ++v60;
    }

    while (v60 != 3);
    v63 = [v5 objectForKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyCameraToImuRotation];
    v64 = [v63 componentsSeparatedByString:{@", "}];
    v80 = v64;
    if ([v64 count] < 9)
    {
      v15 = 1;
      v17 = v84;
      v22 = v86;
      v53 = v82;
LABEL_81:

      goto LABEL_82;
    }

    v79 = v63;
    v65 = 0;
    v94 = 0;
    v92 = 0u;
    v93 = 0u;
    memset(buf, 0, sizeof(buf));
    do
    {
      v66 = [v64 objectAtIndex:v65];
      [v66 doubleValue];
      buf[v65] = v67;

      ++v65;
    }

    while (v65 != 9);
    v68 = [v5 objectForKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyTimestampCorrectionForCamera];
    [v68 doubleValue];

    v69 = [v5 objectForKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyCameraReadoutTime];
    [v69 doubleValue];

    ARGetCV3DCameraLensDistortionModelFromLensType(v14);
    v70 = CV3DSLAMCalibrationAddCameraParameters2();
    v15 = v70;
    v17 = v84;
    v53 = v82;
    v63 = v79;
    if (!v70)
    {
LABEL_80:
      v22 = v86;
      goto LABEL_81;
    }

    if (ARShouldUseLogTypeError_onceToken_44 != -1)
    {
      ARGetAnchorIdentifierFromAnchorRef_cold_1();
    }

    v71 = ARShouldUseLogTypeError_internalOSVersion_44;
    v72 = _ARLogGeneral_37(v70);
    v73 = v72;
    if (v71 == 1)
    {
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        v74 = NSStringFromCV3DSLAMCalibrationReturn(v15);
        *v87 = 136315394;
        v88 = "CV3DSLAMCalibrationReturn ARParseAndAddCameraCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull, CV3DSLAMCameraMode, const uint32_t, const uint32_t)";
        v89 = 2112;
        v90 = v74;
        v75 = "%s: CV3DSLAMCalibrationAddCameraParameters failed (result=%@)";
        v76 = v73;
        v77 = OS_LOG_TYPE_ERROR;
LABEL_78:
        _os_log_impl(&dword_1C241C000, v76, v77, v75, v87, 0x16u);
      }
    }

    else if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
    {
      v74 = NSStringFromCV3DSLAMCalibrationReturn(v15);
      *v87 = 136315394;
      v88 = "CV3DSLAMCalibrationReturn ARParseAndAddCameraCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull, CV3DSLAMCameraMode, const uint32_t, const uint32_t)";
      v89 = 2112;
      v90 = v74;
      v75 = "Error: %s: CV3DSLAMCalibrationAddCameraParameters failed (result=%@)";
      v76 = v73;
      v77 = OS_LOG_TYPE_INFO;
      goto LABEL_78;
    }

    v63 = v79;
    goto LABEL_80;
  }

  if (ARShouldUseLogTypeError_onceToken_44 != -1)
  {
    ARParseAndAddCameraCalibrationParameters_cold_2();
  }

  v12 = ARShouldUseLogTypeError_internalOSVersion_44;
  v13 = _ARLogGeneral_37(v10);
  v14 = v13;
  if (v12 == 1)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0]) = 136446722;
      *(buf + 4) = "CV3DSLAMCalibrationReturn ARParseAndAddCameraCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull, CV3DSLAMCameraMode, const uint32_t, const uint32_t)";
      WORD2(buf[1]) = 1024;
      *(&buf[1] + 6) = v7;
      WORD1(buf[2]) = 1024;
      HIDWORD(buf[2]) = v9;
      _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_ERROR, "%{public}s: wrong width (%d) or height(%d)", buf, 0x18u);
    }

    v15 = 1;
  }

  else
  {
    v15 = 1;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf[0]) = 136446722;
      *(buf + 4) = "CV3DSLAMCalibrationReturn ARParseAndAddCameraCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull, CV3DSLAMCameraMode, const uint32_t, const uint32_t)";
      WORD2(buf[1]) = 1024;
      *(&buf[1] + 6) = v7;
      WORD1(buf[2]) = 1024;
      HIDWORD(buf[2]) = v9;
      _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_INFO, "Error: %{public}s: wrong width (%d) or height(%d)", buf, 0x18u);
    }
  }

LABEL_87:

  return v15;
}

uint64_t ARGetCV3DCameraLensDistortionModelFromLensType(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Perspective"])
  {
    goto LABEL_2;
  }

  if ([v1 isEqualToString:@"Fisheye"])
  {
    v2 = 1;
    goto LABEL_9;
  }

  if ([v1 isEqualToString:@"FlyoverPerspective"])
  {
    v2 = 2;
    goto LABEL_9;
  }

  v3 = [v1 isEqualToString:@"NoDistortion"];
  if (v3)
  {
    v2 = 3;
    goto LABEL_9;
  }

  if (ARShouldUseLogTypeError_onceToken_44 != -1)
  {
    ARParseAndAddCameraCalibrationParameters_cold_2();
  }

  v5 = ARShouldUseLogTypeError_internalOSVersion_44;
  v6 = _ARLogGeneral_37(v3);
  v7 = v6;
  if (v5 == 1)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = 0;
      v8 = "LensType not configured in calibration directory, defaulting to Perspective";
      v9 = &v13;
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
LABEL_17:
      _os_log_impl(&dword_1C241C000, v10, v11, v8, v9, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v12 = 0;
    v8 = "Error: LensType not configured in calibration directory, defaulting to Perspective";
    v9 = &v12;
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
    goto LABEL_17;
  }

LABEL_2:
  v2 = 0;
LABEL_9:

  return v2;
}

id AppleCV3DValuesFromExternalCalibrationDictionary(void *a1)
{
  v52[9] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [v1 objectForKeyedSubscript:@"CameraDescription"];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_34;
  }

  v5 = [v3 objectForKeyedSubscript:@"CameraIntrinsics"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:@"DistortionCoefficients"];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 componentsJoinedByString:{@", "}];
      [v2 setObject:v9 forKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyRadialDistortion];
    }

    v10 = [v6 objectForKeyedSubscript:@"LensType"];
    if (v10)
    {
      [v2 setObject:v10 forKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyLensType];
    }

    v11 = [v6 objectForKeyedSubscript:@"Resolution"];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 objectForKeyedSubscript:@"Height"];
      if (v13)
      {
        [v2 setObject:v13 forKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyImageHeight];
      }

      v14 = [v12 objectForKeyedSubscript:@"Width"];
      if (v14)
      {
        [v2 setObject:v14 forKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyImageWidth];
      }
    }

    v48 = v12;
    v51 = v1;
    v15 = [v6 objectForKeyedSubscript:@"EffectiveFocusLength"];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 objectForKeyedSubscript:@"X"];
      v18 = [v16 objectForKeyedSubscript:@"Y"];
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

    v49 = v10;
    v50 = v8;
    v19 = [v6 objectForKeyedSubscript:@"PrincipalPoint"];
    v20 = v19;
    v47 = v16;
    if (v19)
    {
      v21 = [v19 objectForKeyedSubscript:@"X"];
      v22 = [v20 objectForKeyedSubscript:@"Y"];
      if (!v17)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v22 = 0;
      v21 = 0;
      if (!v17)
      {
LABEL_24:
        v26 = [v6 objectForKeyedSubscript:@"TangentialDistortionCoefficients"];
        v27 = v26;
        if (v26)
        {
          [v26 componentsJoinedByString:{@", "}];
          v29 = v28 = v17;
          [v2 setObject:v29 forKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyTangentialDistortion];

          v17 = v28;
        }

        [v2 setObject:&unk_1F4259500 forKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyCameraReadoutTime];

        v1 = v51;
        goto LABEL_27;
      }
    }

    if (v18 && v21 && v22)
    {
      v52[0] = v17;
      v52[1] = &unk_1F42594E0;
      v52[2] = v21;
      v52[3] = &unk_1F42594E0;
      v52[4] = v18;
      v52[5] = v22;
      v52[6] = &unk_1F42594E0;
      v52[7] = &unk_1F42594E0;
      v52[8] = &unk_1F42594F0;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:9];
      [v23 componentsJoinedByString:{@", "}];
      v25 = v24 = v17;
      [v2 setObject:v25 forKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyCameraMatrix];

      v17 = v24;
    }

    goto LABEL_24;
  }

LABEL_27:
  v30 = [v4 objectForKeyedSubscript:@"RotationIMUToCamera"];
  v31 = v30;
  if (v30)
  {
    v32 = [v30 componentsJoinedByString:{@", "}];
    [v2 setObject:v32 forKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyCameraToImuRotation];
  }

  v33 = [v4 objectForKeyedSubscript:@"TranslationCameraToIMU"];
  v34 = v33;
  if (v33)
  {
    v35 = [v33 componentsJoinedByString:{@", "}];
    [v2 setObject:v35 forKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyCameraToImuPosition];
  }

  v36 = [v4 objectForKeyedSubscript:@"TimestampCorrectionForCamera"];
  if (v36)
  {
    [v2 setObject:v36 forKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyTimestampCorrectionForCamera];
  }

LABEL_34:
  v37 = [v1 objectForKeyedSubscript:@"IMUDescription"];
  if (v37)
  {
    v38 = [v4 objectForKeyedSubscript:@"AccelerometerTimestampCorrection"];
    if (v38)
    {
      [v2 setObject:v38 forKeyedSubscript:@"AccelerometerTimestampCorrection"];
    }

    v39 = [v37 objectForKeyedSubscript:@"Gravity"];
    v40 = v39;
    if (v39)
    {
      v41 = [v39 componentsJoinedByString:{@", "}];
      [v2 setObject:v41 forKeyedSubscript:@"Gravity"];
    }

    v42 = [v37 objectForKeyedSubscript:@"NoiseCharacteristics"];
    v43 = v42;
    if (v42)
    {
      v44 = [v42 componentsJoinedByString:{@", "}];
      [v2 setObject:v44 forKeyedSubscript:@"ImuNoiseCharacteristics"];
    }
  }

  v45 = [v2 copy];

  return v45;
}

uint64_t ARParseAndAddImuCalibrationParameters(void *a1, uint64_t a2)
{
  v43[3] = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [v2 valueForKey:@"Gravity"];
  v4 = [v3 componentsSeparatedByString:{@", "}];
  v5 = [v4 count];
  if (v5 > 2)
  {
    v12 = 0;
    memset(v43, 0, 24);
    do
    {
      v13 = [v4 objectAtIndex:v12];
      [v13 doubleValue];
      v43[v12] = v14;

      ++v12;
    }

    while (v12 != 3);
    v15 = [v2 valueForKey:@"ImuNoiseCharacteristics"];
    v16 = [v15 componentsSeparatedByString:{@", "}];
    v17 = [v16 count];
    if (v17 < 4)
    {
      if (ARShouldUseLogTypeError_onceToken_44 != -1)
      {
        ARParseAndAddCameraCalibrationParameters_cold_2();
      }

      v18 = ARShouldUseLogTypeError_internalOSVersion_44;
      v19 = _ARLogGeneral_37(v17);
      v20 = v19;
      if (v18 == 1)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "CV3DSLAMCalibrationReturn ARParseAndAddImuCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull)";
          WORD2(buf[1]) = 1024;
          *(&buf[1] + 6) = [v16 count];
          v21 = "%{public}s: wrong imuNoiseCharacteristicsArray (imuNoiseCharacteristicsArray.count=%d)";
          v22 = v20;
          v23 = OS_LOG_TYPE_ERROR;
LABEL_29:
          _os_log_impl(&dword_1C241C000, v22, v23, v21, buf, 0x12u);
        }
      }

      else if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf[0]) = 136446466;
        *(buf + 4) = "CV3DSLAMCalibrationReturn ARParseAndAddImuCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull)";
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = [v16 count];
        v21 = "Error: %{public}s: wrong imuNoiseCharacteristicsArray (imuNoiseCharacteristicsArray.count=%d)";
        v22 = v20;
        v23 = OS_LOG_TYPE_INFO;
        goto LABEL_29;
      }

      v24 = 1;
LABEL_35:

      goto LABEL_36;
    }

    v25 = 0;
    memset(buf, 0, sizeof(buf));
    do
    {
      v26 = [v16 objectAtIndex:v25];
      [v26 doubleValue];
      buf[v25] = v27;

      ++v25;
    }

    while (v25 != 4);
    v28 = [v2 valueForKey:@"AccelerometerTimestampCorrection"];
    [v28 doubleValue];

    v29 = CV3DSLAMCalibrationAddIMUParameters();
    v24 = v29;
    if (!v29)
    {
      goto LABEL_35;
    }

    if (ARShouldUseLogTypeError_onceToken_44 != -1)
    {
      ARGetAnchorIdentifierFromAnchorRef_cold_1();
    }

    v30 = ARShouldUseLogTypeError_internalOSVersion_44;
    v31 = _ARLogGeneral_37(v29);
    v32 = v31;
    if (v30 == 1)
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v33 = NSStringFromCV3DSLAMCalibrationReturn(v24);
        v38 = 136315394;
        v39 = "CV3DSLAMCalibrationReturn ARParseAndAddImuCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull)";
        v40 = 2112;
        v41 = v33;
        v34 = "%s: CV3DSLAMCalibrationAddIMUParameters failed (result=%@)";
        v35 = v32;
        v36 = OS_LOG_TYPE_ERROR;
LABEL_33:
        _os_log_impl(&dword_1C241C000, v35, v36, v34, &v38, 0x16u);
      }
    }

    else if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v33 = NSStringFromCV3DSLAMCalibrationReturn(v24);
      v38 = 136315394;
      v39 = "CV3DSLAMCalibrationReturn ARParseAndAddImuCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull)";
      v40 = 2112;
      v41 = v33;
      v34 = "Error: %s: CV3DSLAMCalibrationAddIMUParameters failed (result=%@)";
      v35 = v32;
      v36 = OS_LOG_TYPE_INFO;
      goto LABEL_33;
    }

    goto LABEL_35;
  }

  if (ARShouldUseLogTypeError_onceToken_44 != -1)
  {
    ARParseAndAddCameraCalibrationParameters_cold_2();
  }

  v6 = ARShouldUseLogTypeError_internalOSVersion_44;
  v7 = _ARLogGeneral_37(v5);
  v8 = v7;
  if (v6 == 1)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "CV3DSLAMCalibrationReturn ARParseAndAddImuCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull)";
      WORD2(buf[1]) = 1024;
      *(&buf[1] + 6) = [v4 count];
      v9 = "%{public}s: wrong gravityArray (gravityArray.count=%d)";
      v10 = v8;
      v11 = OS_LOG_TYPE_ERROR;
LABEL_17:
      _os_log_impl(&dword_1C241C000, v10, v11, v9, buf, 0x12u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = "CV3DSLAMCalibrationReturn ARParseAndAddImuCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull)";
    WORD2(buf[1]) = 1024;
    *(&buf[1] + 6) = [v4 count];
    v9 = "Error: %{public}s: wrong gravityArray (gravityArray.count=%d)";
    v10 = v8;
    v11 = OS_LOG_TYPE_INFO;
    goto LABEL_17;
  }

  v24 = 1;
LABEL_36:

  return v24;
}

float ARGetIntrinsicsFromCalibrationDictionary(void *a1)
{
  v1 = [a1 objectForKey:*MEMORY[0x1E698BE20]];
  v2 = [v1 objectForKey:*MEMORY[0x1E698BE30]];
  point.x = 0.0;
  point.y = 0.0;
  v13.x = 0.0;
  v13.y = 0.0;
  Value = CFDictionaryGetValue(v2, *MEMORY[0x1E698BE28]);
  CGPointMakeWithDictionaryRepresentation(Value, &point);
  v4 = CFDictionaryGetValue(v2, *MEMORY[0x1E698BE38]);
  CGPointMakeWithDictionaryRepresentation(v4, &v13);
  x = point.x;
  v12 = x;

  __asm { FMOV            V2.4S, #1.0 }

  return v12;
}

void ARGetRadialDistortionFromCalibrationDictionary(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [a1 objectForKey:*MEMORY[0x1E698BE20]];
  v4 = [v3 objectForKey:*MEMORY[0x1E698BE30]];
  v5 = [v4 objectForKey:*MEMORY[0x1E698BE40]];
  v6 = [v5 count];
  if (v6 < 3)
  {
    if (ARShouldUseLogTypeError_onceToken_44 != -1)
    {
      ARParseAndAddCameraCalibrationParameters_cold_2();
    }

    v16 = ARShouldUseLogTypeError_internalOSVersion_44;
    v17 = _ARLogGeneral_37(v6);
    v18 = v17;
    if (v16 == 1)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v27 = [v5 count];
        v19 = "ARGetRadialDistortionFromCalibrationDictionary: wrong radialDistortion coeffs (coefficients.count = %d)";
        v20 = v18;
        v21 = OS_LOG_TYPE_ERROR;
LABEL_10:
        _os_log_impl(&dword_1C241C000, v20, v21, v19, buf, 8u);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v27 = [v5 count];
      v19 = "Error: ARGetRadialDistortionFromCalibrationDictionary: wrong radialDistortion coeffs (coefficients.count = %d)";
      v20 = v18;
      v21 = OS_LOG_TYPE_INFO;
      goto LABEL_10;
    }

    v14 = 0uLL;
    v15 = 0uLL;
    goto LABEL_12;
  }

  v7 = [v5 objectAtIndexedSubscript:0];
  [v7 doubleValue];
  v24 = v8;

  v9 = [v5 objectAtIndexedSubscript:1];
  [v9 doubleValue];
  v22 = v10;

  v11 = [v5 objectAtIndexedSubscript:2];
  [v11 doubleValue];
  *&v12 = v24;
  *(&v12 + 1) = v22;
  v25 = v12;
  v23 = v13;

  v15 = v23;
  v14 = v25;
LABEL_12:
  *a2 = v14;
  a2[1] = v15;
}

__n128 ARGetTangentialDistortionFromCalibrationDictionary(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = [a1 objectForKey:*MEMORY[0x1E698BE20]];
  v2 = [v1 objectForKey:*MEMORY[0x1E698BE30]];
  v3 = [v2 objectForKey:*MEMORY[0x1E698BE48]];
  v4 = [v3 count];
  if (v4 < 2)
  {
    if (ARShouldUseLogTypeError_onceToken_44 != -1)
    {
      ARParseAndAddCameraCalibrationParameters_cold_2();
    }

    v10 = ARShouldUseLogTypeError_internalOSVersion_44;
    v11 = _ARLogGeneral_37(v4);
    v12 = v11;
    if (v10 == 1)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v20 = [v3 count];
        v13 = "ARGetTangentialDistortionFromCalibrationDictionary: wrong tangentialDistortion coeffs (coefficients.count = %d)";
        v14 = v12;
        v15 = OS_LOG_TYPE_ERROR;
LABEL_10:
        _os_log_impl(&dword_1C241C000, v14, v15, v13, buf, 8u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v20 = [v3 count];
      v13 = "Error: ARGetTangentialDistortionFromCalibrationDictionary: wrong tangentialDistortion coeffs (coefficients.count = %d)";
      v14 = v12;
      v15 = OS_LOG_TYPE_INFO;
      goto LABEL_10;
    }

    v18 = 0u;
    goto LABEL_12;
  }

  v5 = [v3 objectAtIndexedSubscript:0];
  [v5 doubleValue];
  v17 = v6;

  v7 = [v3 objectAtIndexedSubscript:1];
  [v7 doubleValue];
  *&v8 = v17;
  *(&v8 + 1) = v9;
  v18 = v8;

LABEL_12:
  return v18;
}

uint64_t ARSurfaceOrientationForPlaneDetectionType(char a1)
{
  v1 = 3;
  if ((~a1 & 3) != 0)
  {
    if (a1 < 0)
    {
      LODWORD(v1) = 3;
    }

    else
    {
      LODWORD(v1) = 1;
    }

    if ((a1 & 0x81) != 0)
    {
      return v1;
    }

    else
    {
      return a1 & 2;
    }
  }

  return v1;
}

uint64_t ARSurfaceExtentTypeForPlaneDetectionType(__int16 a1)
{
  if ((a1 & 0x200) != 0)
  {
    return 15;
  }

  else
  {
    return 7;
  }
}

uint64_t ARPlaneClassificationForSceneUnderstandingLabel(int a1)
{
  if ((a1 - 1) > 9)
  {
    return 0;
  }

  else
  {
    return qword_1C25F0640[a1 - 1];
  }
}

__CFString *NSStringFromSceneUnderstandingLabel(unsigned int a1)
{
  if (a1 > 0xC)
  {
    return @"Empty";
  }

  else
  {
    return off_1E817DF60[a1];
  }
}

void ARInitializeHitTestIntentWithExtentCheck(uint64_t a1, void *a2, int a3, int a4, simd_float4 a5, simd_float4 a6, simd_float4 a7, simd_float4 a8)
{
  v29.columns[2] = a7;
  v29.columns[3] = a8;
  v29.columns[0] = a5;
  v29.columns[1] = a6;
  v31 = a2;
  [v31 direction];
  v27 = v11;
  v35 = __invert_f4(v29);
  v29.columns[1] = v35.columns[0];
  v29.columns[2] = v35.columns[1];
  v29.columns[3] = v35.columns[2];
  v28 = v35.columns[3];
  v29.columns[0] = vmlaq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35.columns[0], v27.f32[0]), v35.columns[1], *v27.f32, 1), v35.columns[2], v27, 2), 0, v35.columns[3]);
  *v12.i64 = ARRenderingToVisionCoordinateTransform();
  v30 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, v29.columns[0].f32[0]), v13, *v29.columns[0].f32, 1), v14, v29.columns[0], 2), v15, v29.columns[0], 3);
  [v31 origin];
  v29.columns[3] = vaddq_f32(v28, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29.columns[1], v16.f32[0]), v29.columns[2], *v16.f32, 1), v29.columns[3], v16, 2));
  *v17.i64 = ARRenderingToVisionCoordinateTransform();
  v18 = 0;
  v22 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, v29.columns[3].f32[0]), v19, *v29.columns[3].f32, 1), v20, v29.columns[3], 2), v21, v29.columns[3], 3);
  do
  {
    v32 = v22;
    v23 = (a1 + 8 * v18);
    *v23 = *(&v32 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3)));
    v33 = v30;
    v23[3] = *(&v33 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18++ & 3)));
  }

  while (v18 != 3);
  *(a1 + 48) = xmmword_1C25F0020;
  *(a1 + 88) = CFAbsoluteTimeGetCurrent();
  *(a1 + 72) = a3;
  *(a1 + 76) = 0;
  *(a1 + 84) = 0;
  v24 = [v31 target];
  if (v24)
  {
    if (v24 == 1)
    {
      v25 = 1;
      a4 = 1;
    }

    else
    {
      if (v24 != 2)
      {
        goto LABEL_10;
      }

      v25 = 3;
    }
  }

  else
  {
    v25 = 1;
  }

  *(a1 + 76) = v25;
  *(a1 + 84) = a4;
LABEL_10:
  v26 = [v31 targetAlignment];
  if (v26 <= 2)
  {
    *(a1 + 80) = dword_1C25F0690[v26];
  }

  *(a1 + 64) = CFUUIDCreate(*MEMORY[0x1E695E480]);
}

void ARReleaseHitTestIntent(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 64);
    if (v1)
    {
      CFRelease(v1);
    }
  }
}

uint64_t ARCreateCV3DLoggingHandle(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  Handle = CV3DLoggingCreateHandle();
  v5 = Handle;
  if (a1 < 0)
  {
    v10 = _ARLogGeneral_37(Handle);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_17;
    }

    LOWORD(v26) = 0;
    v11 = "AppleCV3D API logging disabled";
    v12 = v10;
    v13 = OS_LOG_TYPE_INFO;
    v14 = 2;
    goto LABEL_16;
  }

  v6 = CV3DLoggingEnable();
  if (v6)
  {
    v7 = v6;
    if (ARShouldUseLogTypeError_onceToken_44 != -1)
    {
      ARParseAndAddCameraCalibrationParameters_cold_2();
    }

    v8 = ARShouldUseLogTypeError_internalOSVersion_44;
    v9 = _ARLogGeneral_37(v6);
    v10 = v9;
    if (v8 == 1)
    {
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v26 = 67109120;
      v27 = v7;
      v11 = "Error enabling AppleCV3D API logging: %i";
      v12 = v10;
      v13 = OS_LOG_TYPE_ERROR;
      goto LABEL_15;
    }

    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_17;
    }

    v26 = 67109120;
    v27 = v7;
    v11 = "Error: Error enabling AppleCV3D API logging: %i";
  }

  else
  {
    v10 = _ARLogGeneral_37(v6);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_17;
    }

    v26 = 67109120;
    v27 = a1;
    v11 = "AppleCV3D API logging level enabled: %i";
  }

  v12 = v10;
  v13 = OS_LOG_TYPE_INFO;
LABEL_15:
  v14 = 8;
LABEL_16:
  _os_log_impl(&dword_1C241C000, v12, v13, v11, &v26, v14);
LABEL_17:

  if (a2 < 0)
  {
    v20 = _ARLogGeneral_37(v15);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      LOWORD(v26) = 0;
      v21 = "AppleCV3D internal logging disabled";
      v22 = v20;
      v23 = OS_LOG_TYPE_INFO;
      v24 = 2;
LABEL_32:
      _os_log_impl(&dword_1C241C000, v22, v23, v21, &v26, v24);
      goto LABEL_33;
    }

    goto LABEL_33;
  }

  v16 = CV3DLoggingEnableInternal();
  if (!v16)
  {
    v20 = _ARLogGeneral_37(v16);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      goto LABEL_33;
    }

    v26 = 67109120;
    v27 = a2;
    v21 = "AppleCV3D internal logging level enabled: %i";
LABEL_30:
    v22 = v20;
    v23 = OS_LOG_TYPE_INFO;
    goto LABEL_31;
  }

  v17 = v16;
  if (ARShouldUseLogTypeError_onceToken_44 != -1)
  {
    ARGetAnchorIdentifierFromAnchorRef_cold_1();
  }

  v18 = ARShouldUseLogTypeError_internalOSVersion_44;
  v19 = _ARLogGeneral_37(v16);
  v20 = v19;
  if (v18 != 1)
  {
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      goto LABEL_33;
    }

    v26 = 67109120;
    v27 = v17;
    v21 = "Error: Error enabling AppleCV3D internal logging: %i";
    goto LABEL_30;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v26 = 67109120;
    v27 = v17;
    v21 = "Error enabling AppleCV3D internal logging: %i";
    v22 = v20;
    v23 = OS_LOG_TYPE_ERROR;
LABEL_31:
    v24 = 8;
    goto LABEL_32;
  }

LABEL_33:

  return v5;
}

id ARAnchorsFromCV3DAnchorsArray(void *a1, double a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 count];
  v39 = [MEMORY[0x1E695DFA8] setWithCapacity:v4];
  if (v4)
  {
    v5 = 0;
    v6 = 0x1E696A000uLL;
    do
    {
      [v3 objectAtIndex:v5];
      v7 = CV3DSLAMAnchorCopyAnchorID();
      if (v7)
      {
        v8 = v7;
        v9 = [*(v6 + 4016) ar_UUIDWithCFUUIDRef:v7];
        CFRelease(v8);
        v10 = CV3DSLAMAnchorCopySessionID();
        v11 = v10;
        if (v10)
        {
          v12 = [*(v6 + 4016) ar_UUIDWithIntegerValue:{objc_msgSend(v10, "integerValue")}];
        }

        else
        {
          v19 = _ARLogGeneral_37(0);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = 0;
            _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_INFO, "Unable to parse SLAM anchor session identifier: %@", buf, 0xCu);

            v6 = 0x1E696A000;
          }

          v12 = 0;
        }

        v20 = CV3DSLAMAnchorCopyPose();
        if (v20)
        {
          v52.columns[2] = 0u;
          v52.columns[3] = 0u;
          v52.columns[0] = 0u;
          v52.columns[1] = 0u;
          v44 = __invert_f4(v52);
          *v21.i64 = ARVisionToRenderingCoordinateTransform();
          v25 = 0;
          v45 = v44;
          *buf = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          do
          {
            *&buf[v25 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(*&v45.columns[v25])), v22, *v45.columns[v25].f32, 1), v23, v45.columns[v25], 2), v24, v45.columns[v25], 3);
            ++v25;
          }

          while (v25 != 4);
          v42 = v47;
          v43 = *buf;
          v40 = v49;
          v41 = v48;
          *v26.i64 = ARRenderingToVisionCoordinateTransform();
          v27 = 0;
          v45.columns[0] = v26;
          v45.columns[1] = v28;
          v45.columns[2] = v29;
          v45.columns[3] = v30;
          *buf = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          do
          {
            *&buf[v27 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43, COERCE_FLOAT(*&v45.columns[v27])), v42, *v45.columns[v27].f32, 1), v41, v45.columns[v27], 2), v40, v45.columns[v27], 3);
            ++v27;
          }

          while (v27 != 4);
          v31 = [[ARAnchor alloc] initWithIdentifier:v9 transform:*buf, *v47.i64, *v48.i64, *v49.i64];
          [(ARAnchor *)v31 setSessionIdentifier:v12];
          [(ARAnchor *)v31 setLastUpdateTimestamp:a2];
          [v39 addObject:v31];

          goto LABEL_33;
        }

        if (ARShouldUseLogTypeError_onceToken_44 != -1)
        {
          ARGetAnchorIdentifierFromAnchorRef_cold_1();
        }

        v32 = ARShouldUseLogTypeError_internalOSVersion_44;
        v33 = _ARLogGeneral_37(v20);
        v34 = v33;
        if (v32 == 1)
        {
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = 0;
            v35 = v34;
            v36 = OS_LOG_TYPE_ERROR;
            v37 = "Unable to parse SLAM anchor transform: %@";
            goto LABEL_31;
          }
        }

        else if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = 0;
          v35 = v34;
          v36 = OS_LOG_TYPE_INFO;
          v37 = "Error: Unable to parse SLAM anchor transform: %@";
LABEL_31:
          _os_log_impl(&dword_1C241C000, v35, v36, v37, buf, 0xCu);
        }

        v6 = 0x1E696A000;
LABEL_33:

        goto LABEL_34;
      }

      if (ARShouldUseLogTypeError_onceToken_44 != -1)
      {
        ARGetAnchorIdentifierFromAnchorRef_cold_1();
      }

      v13 = ARShouldUseLogTypeError_internalOSVersion_44;
      v14 = _ARLogGeneral_37(v7);
      v15 = v14;
      if (v13 == 1)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = 0;
          v16 = v15;
          v17 = OS_LOG_TYPE_ERROR;
          v18 = "Unable to parse SLAM anchor identifier: %@";
LABEL_27:
          _os_log_impl(&dword_1C241C000, v16, v17, v18, buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = 0;
        v16 = v15;
        v17 = OS_LOG_TYPE_INFO;
        v18 = "Error: Unable to parse SLAM anchor identifier: %@";
        goto LABEL_27;
      }

LABEL_34:
      ++v5;
    }

    while (v5 != v4);
  }

  return v39;
}

id ARGetAnchorIdentifierFromCMData(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v12 = 0uLL;
  v11 = 0;
  v1 = MEMORY[0x1C6919870](a1, &v13, &v12, &v11);
  if (v1)
  {
    *buf = v12;
    v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:buf];
    goto LABEL_12;
  }

  if (ARShouldUseLogTypeError_onceToken_44 != -1)
  {
    ARGetAnchorIdentifierFromAnchorRef_cold_1();
  }

  v3 = ARShouldUseLogTypeError_internalOSVersion_44;
  v4 = _ARLogGeneral_37(v1);
  v5 = v4;
  if (v3 == 1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = v11;
      *buf = 138412290;
      *&buf[4] = v11;
      v7 = "Unable to parse anchor metadata: %@";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_1C241C000, v8, v9, v7, buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = v11;
    *buf = 138412290;
    *&buf[4] = v11;
    v7 = "Error: Unable to parse anchor metadata: %@";
    v8 = v5;
    v9 = OS_LOG_TYPE_INFO;
    goto LABEL_10;
  }

  v2 = 0;
LABEL_12:

  return v2;
}

__n128 ARCV3DColorComponentsForRawSemantics(unint64_t a1, uint64_t a2)
{
  if (ARDeviceSupportsJasper(a1, a2))
  {
    if (_CV3DColorMappingForRawSemantics_onceToken != -1)
    {
      ARCV3DColorComponentsForRawSemantics_cold_2();
    }

    result.n128_u64[0] = 0;
    if (a1 <= 0x64)
    {
      v4 = &_CV3DColorMappingForRawSemantics_cv3DColors;
      return v4[a1];
    }
  }

  else
  {
    if (_CV3DColorComponentsFor12ClassModelIndex_onceToken != -1)
    {
      ARCV3DColorComponentsForRawSemantics_cold_1();
    }

    result.n128_u64[0] = 0;
    if (a1 <= 0xB)
    {
      v4 = &_CV3DColorComponentsFor12ClassModelIndex_cv3DColors;
      return v4[a1];
    }
  }

  return result;
}

uint64_t _CV3DRawSemanticsValueForARKitSemantics(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_1C25F06A0[a1 - 1];
  }
}

__int128 *ARCV3DColorComponentsForARKitSemanticsLUT8Elements(uint64_t a1, uint64_t a2)
{
  if (ARCV3DColorComponentsForARKitSemanticsLUT8Elements_onceToken != -1)
  {
    ARCV3DColorComponentsForARKitSemanticsLUT8Elements_cold_1();
  }

  return ARCV3DColorComponentsForARKitSemanticsLUT8Elements_cv3DColors;
}

double __ARCV3DColorComponentsForARKitSemanticsLUT8Elements_block_invoke()
{
  if (_CV3DColorMappingForRawSemantics_onceToken != -1)
  {
    ARCV3DColorComponentsForRawSemantics_cold_2();
  }

  result = *&_CV3DColorMappingForRawSemantics_cv3DColors;
  ARCV3DColorComponentsForARKitSemanticsLUT8Elements_cv3DColors[0] = _CV3DColorMappingForRawSemantics_cv3DColors;
  unk_1EBF42C20 = xmmword_1EBF42CE0;
  xmmword_1EBF42C30 = xmmword_1EBF42CD0;
  unk_1EBF42C40 = xmmword_1EBF42CF0;
  xmmword_1EBF42C50 = xmmword_1EBF42DF0;
  unk_1EBF42C60 = xmmword_1EBF42DB0;
  xmmword_1EBF42C70 = xmmword_1EBF42D30;
  unk_1EBF42C80 = xmmword_1EBF42D20;
  return result;
}

__n128 ARCV3DColorComponentsForARKitSemantics(unint64_t a1, uint64_t a2)
{
  if (ARCV3DColorComponentsForARKitSemanticsLUT8Elements_onceToken != -1)
  {
    ARCV3DColorComponentsForARKitSemanticsLUT8Elements_cold_1();
  }

  result.n128_u64[0] = 0;
  if (a1 <= 7)
  {
    return ARCV3DColorComponentsForARKitSemanticsLUT8Elements_cv3DColors[a1];
  }

  return result;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_45()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_44 = result;
  return result;
}

BOOL __ARSkipCrashOnCrash_block_invoke_1()
{
  result = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.skipCrashOnARCrash"];
  ARSkipCrashOnCrash_skipCrashOnCrash_1 = result;
  return result;
}

uint64_t ARCreatePlaneDetectionExtentTypeForPlaneDetectionType(__int16 a1)
{
  v2 = CV3DPlaneDetectionExtentTypesCreate();
  v3 = v2;
  if (v2)
  {
    goto LABEL_11;
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    ARCreatePlaneDetectionExtentTypeForPlaneDetectionType();
  }

  v4 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v5 = _ARLogGeneral(v2);
  v6 = v5;
  if (v4 == 1)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v13 = 0;
      v7 = "Could not instantiate desired extent for plane detection";
      v8 = &v13;
      v9 = v6;
      v10 = OS_LOG_TYPE_ERROR;
LABEL_9:
      _os_log_impl(&dword_1C241C000, v9, v10, v7, v8, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v12 = 0;
    v7 = "Error: Could not instantiate desired extent for plane detection";
    v8 = &v12;
    v9 = v6;
    v10 = OS_LOG_TYPE_INFO;
    goto LABEL_9;
  }

LABEL_11:
  if ((a1 & 0x200) != 0)
  {
    CV3DPlaneDetectionExtentTypesSetAll();
  }

  else
  {
    CV3DPlaneDetectionExtentTypesSetAxisAlignedBox();
    CV3DPlaneDetectionExtentTypesSetOrientedBox();
    CV3DPlaneDetectionExtentTypesSetConvexHull();
  }

  return v3;
}

uint64_t ARPlaneDetectionOrientationForPlaneDetectionType(char a1)
{
  v1 = MEMORY[0x1E69C6C68];
  if ((~a1 & 3) != 0)
  {
    if ((a1 & 0x80) == 0)
    {
      v1 = MEMORY[0x1E69C6C60];
    }

    v2 = MEMORY[0x1E69C6C78];
    if ((a1 & 2) == 0)
    {
      v2 = MEMORY[0x1E69C6C70];
    }

    if ((a1 & 0x81) == 0)
    {
      v1 = v2;
    }
  }

  return *v1;
}

uint64_t ExtractConfig(const PlaneDetectionConfiguration *a1)
{
  v2 = CV3DPlaneDetectionConfigurationCreate();
  minVergenceAngleDegreesUserDefaultValue = a1->minVergenceAngleDegreesUserDefaultValue;
  if (minVergenceAngleDegreesUserDefaultValue)
  {
    [(NSNumber *)minVergenceAngleDegreesUserDefaultValue doubleValue];
  }

  else
  {
    [(ARWorldTrackingOptions *)a1->options minVergenceAngle];
  }

  CV3DPlaneDetectionConfigurationSetMinVergenceAngle();
  [(ARWorldTrackingOptions *)a1->options planeDetection];
  CV3DPlaneDetectionConfigurationSetDesiredOrientations();
  ARCreatePlaneDetectionExtentTypeForPlaneDetectionType([(ARWorldTrackingOptions *)a1->options planeDetection]);
  CV3DPlaneDetectionConfigurationSetDesiredExtent();
  CV3DPlaneDetectionExtentTypesRelease();
  if ([(ARWorldTrackingOptions *)a1->options planeEstimationShouldUseJasperData])
  {
    detectionPolicyString = a1->detectionPolicyString;
    if (detectionPolicyString)
    {
      [(NSString *)detectionPolicyString isEqualToString:@"jasper"];
    }

    CV3DPlaneDetectionConfigurationSetDetectionPolicy();
  }

  else
  {
    CV3DPlaneDetectionConfigurationSetDetectionPolicy();
    CV3DPlaneDetectionConfigurationEnableMLSegmentDetector();
  }

  if (a1->var0)
  {
    CV3DPlaneDetectionConfigurationEnableDeterministicMode();
  }

  if ([(ARWorldTrackingOptions *)a1->options lowQosSchedulingEnabled])
  {
    CV3DPlaneDetectionConfigurationEnableLowQosScheduling();
  }

  return v2;
}

uint64_t ExtractParams(const PlaneDetectionConfiguration *a1)
{
  v2 = CV3DPlaneDetectionParametersCreate();
  detectionCountUserDefaultValue = a1->detectionCountUserDefaultValue;
  if (detectionCountUserDefaultValue)
  {
    [(NSNumber *)detectionCountUserDefaultValue intValue];
    CV3DPlaneDetectionParametersSetMinDetections();
  }

  if ([(ARWorldTrackingOptions *)a1->options planeBundleAdjustmentEnabled])
  {
    CV3DPlaneDetectionParametersSetMinDetections();
  }

  if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.planeEstimation.enableInverseDepthDetector"])
  {
    CV3DPlaneDetectionParametersSetInverseDepthDetector();
    CV3DPlaneDetectionParametersSetMinimumCellSize();
    CV3DPlaneDetectionParametersSetPlaneFitThreshold();
    CV3DPlaneDetectionParametersSetMinDepthConfidence();
    CV3DPlaneDetectionParametersSetMinNormalDotProduct();
    CV3DPlaneDetectionParametersSetMinClusterSize();
  }

  return v2;
}

void *PlaneDetectionSession::PlaneDetectionSession(void *a1, uint64_t a2, const PlaneDetectionConfiguration *a3, void *a4, void *a5)
{
  v44 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  a1[1] = ExtractParams(a3);
  *a1 = ExtractConfig(a3);
  err = 0;
  v11 = CV3DPlaneDetectionSessionCreateWithConfig();
  a1[2] = v11;
  if (!v11)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      PlaneDetectionSession::PlaneDetectionSession();
    }

    v22 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v23 = _ARLogGeneral(v11);
    v24 = v23;
    if (v22 == 1)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v43 = CFErrorCopyDescription(err);
        v25 = "Error initializing surface detection: %@";
        v26 = v24;
        v27 = OS_LOG_TYPE_ERROR;
LABEL_15:
        _os_log_impl(&dword_1C241C000, v26, v27, v25, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v43 = CFErrorCopyDescription(err);
      v25 = "Error: Error initializing surface detection: %@";
      v26 = v24;
      v27 = OS_LOG_TYPE_INFO;
      goto LABEL_15;
    }

    CFRelease(err);
    goto LABEL_34;
  }

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = ___ZN21PlaneDetectionSessionC2EP15CV3DSLAMSessionRK27PlaneDetectionConfigurationU13block_pointerFvPK27CV3DPlaneDetectionPlaneListEU13block_pointerFvPK37CV3DPlaneDetectionSingleShotPlaneListE_block_invoke;
  v40[3] = &__block_descriptor_40_e28_v80__0____CFUUID__8____4__16l;
  v40[4] = a2;
  v12 = MEMORY[0x1C691B4C0](v40);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = ___ZN21PlaneDetectionSessionC2EP15CV3DSLAMSessionRK27PlaneDetectionConfigurationU13block_pointerFvPK27CV3DPlaneDetectionPlaneListEU13block_pointerFvPK37CV3DPlaneDetectionSingleShotPlaneListE_block_invoke_2;
  v39[3] = &__block_descriptor_40_e19_v16__0____CFUUID__8l;
  v39[4] = a2;
  v13 = MEMORY[0x1C691B4C0](v39);
  v14 = CV3DPlaneDetectionSessionSetAnchoringFunctors();
  if (v14)
  {
    goto LABEL_21;
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    PlaneDetectionSession::PlaneDetectionSession();
  }

  v15 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v16 = _ARLogGeneral(v14);
  v17 = v16;
  if (v15 == 1)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = CFErrorCopyDescription(err);
      *buf = 138412290;
      v43 = v18;
      v19 = "Error setting anchoring functors: %@";
      v20 = v17;
      v21 = OS_LOG_TYPE_ERROR;
LABEL_19:
      _os_log_impl(&dword_1C241C000, v20, v21, v19, buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v28 = CFErrorCopyDescription(err);
    *buf = 138412290;
    v43 = v28;
    v19 = "Error: Error setting anchoring functors: %@";
    v20 = v17;
    v21 = OS_LOG_TYPE_INFO;
    goto LABEL_19;
  }

  CFRelease(err);
LABEL_21:
  updated = CV3DPlaneDetectionSessionRegisterUpdateCallback();
  if ((updated & 1) == 0)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      PlaneDetectionSession::PlaneDetectionSession();
    }

    v30 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v31 = _ARLogGeneral(updated);
    v32 = v31;
    if (v30 == 1)
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v33 = CFErrorCopyDescription(err);
        *buf = 138412290;
        v43 = v33;
        v34 = "Error registering update callback: %@";
        v35 = v32;
        v36 = OS_LOG_TYPE_ERROR;
LABEL_29:
        _os_log_impl(&dword_1C241C000, v35, v36, v34, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v37 = CFErrorCopyDescription(err);
      *buf = 138412290;
      v43 = v37;
      v34 = "Error: Error registering update callback: %@";
      v35 = v32;
      v36 = OS_LOG_TYPE_INFO;
      goto LABEL_29;
    }

    CFRelease(err);
  }

  if (v10)
  {
    CV3DPlaneDetectionSessionSetSingleShotPlanesCallback();
  }

LABEL_34:
  return a1;
}

void PlaneDetectionSession::~PlaneDetectionSession(PlaneDetectionSession *this)
{
  CV3DPlaneDetectionConfigurationRelease();
  CV3DPlaneDetectionParametersRelease();
  CV3DPlaneDetectionSessionRelease();
}

void PlaneDetectionSession::PushSlamState(PlaneDetectionSession *this, const CV3DSLAMStateContext *a2)
{
  CV3DPlaneDetectionSlamMetadataCreateFromSlamState();
  CV3DPlaneDetectionPushSlamMetadata();
  CV3DPlaneDetectionSlamMetadataRelease();
}

uint64_t PlaneDetectionSession::PushSemanticsAndNormals(PlaneDetectionSession *this, ARSegmentationData *a2, simd_float4x4 a3, simd_float3x3 a4, double a5)
{
  v5 = a2;
  objc_msgSend_timestamp(v5);
  [(ARSegmentationData *)v5 segmentationBuffer];
  [(ARSegmentationData *)v5 confidenceBuffer];
  [(ARSegmentationData *)v5 normalsBuffer];
  CV3DPlaneDetectionSemanticFrameCreate();
  CV3DPlaneDetectionPushSemanticFrame();
  CV3DPlaneDetectionSemanticFrameRelease();

  return 1;
}

uint64_t PlaneDetectionSession::PushDepthWithSemantics(PlaneDetectionSession *this, ARMLDepthData *a2, ARSegmentationData *a3, simd_float4x4 a4, simd_float3x3 a5, double a6)
{
  v7 = a2;
  v8 = a3;
  objc_msgSend_timestamp(v8);
  [(ARMLDepthData *)v7 singleFrameDepthBuffer];
  [(ARMLDepthData *)v7 confidenceBuffer];
  [(ARMLDepthData *)v7 normalsBuffer];
  [(ARSegmentationData *)v8 maskedSemanticsSampledForDepth];
  [(ARSegmentationData *)v8 confidenceSampledForDepth];
  CV3DPlaneDetectionDepthAndSemanticFrameCreate();
  CV3DPlaneDetectionPushDepthAndSemanticFrame();
  CV3DPlaneDetectionDepthAndSemanticFrameRelease();

  return 1;
}

uint64_t PlaneDetectionSession::PushJasperPointCloud(uint64_t a1, void *a2, double a3, double a4, double a5, double a6, __n128 a7, __n128 a8, __n128 a9, double a10, double a11)
{
  v11 = a2;
  CV3DPlaneDetectionDepthCameraFrameCreateFromAD();
  CV3DPlaneDetectionPushSparseDepthFrame();
  CV3DPlaneDetectionDepthCameraFrameRelease();

  return 1;
}

id PlaneDetectionSession::SerializePlanes(PlaneDetectionSession *this)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = objc_opt_new();
  v2 = CV3DPlaneDetectionSerialize();
  if (v2)
  {
    v3 = 0;
    goto LABEL_12;
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    PlaneDetectionSession::PlaneDetectionSession();
  }

  v4 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v5 = _ARLogGeneral(v2);
  v6 = v5;
  if (v4 == 1)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = CFErrorCopyDescription(0);
      v7 = "Failed to serialize surface data: %@";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_1C241C000, v8, v9, v7, buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = CFErrorCopyDescription(0);
    v7 = "Error: Failed to serialize surface data: %@";
    v8 = v6;
    v9 = OS_LOG_TYPE_INFO;
    goto LABEL_10;
  }

  CFRelease(0);
  v3 = v1;
  v1 = 0;
LABEL_12:

  return v1;
}

void PlaneDetectionSession::LoadPlanes(PlaneDetectionSession *this, const __CFData *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  Map = CV3DPlaneDetectionLoadMap();
  if ((Map & 1) == 0)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      PlaneDetectionSession::PlaneDetectionSession();
    }

    v3 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v4 = _ARLogGeneral(Map);
    v5 = v4;
    if (v3 == 1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v10 = CFErrorCopyDescription(0);
        v6 = "Failed to load surface data: %@";
        v7 = v5;
        v8 = OS_LOG_TYPE_ERROR;
LABEL_9:
        _os_log_impl(&dword_1C241C000, v7, v8, v6, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v10 = CFErrorCopyDescription(0);
      v6 = "Error: Failed to load surface data: %@";
      v7 = v5;
      v8 = OS_LOG_TYPE_INFO;
      goto LABEL_9;
    }

    CFRelease(0);
  }
}

void PlaneDetectionSession::ErasePlanes(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = a2;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 identifier];
          v10 = [v9 ar_createCFUUIDRef];

          CFArrayAppendValue(Mutable, v10);
          CFRelease(v10);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  CV3DPlaneDetectionErasePlaneDetections();
  CFRelease(Mutable);
}

uint64_t PlaneDetectionSession::UpdateConfiguration(PlaneDetectionSession *this, const PlaneDetectionConfiguration *a2)
{
  CV3DPlaneDetectionConfigurationRelease();
  Config = ExtractConfig(a2);
  *this = Config;
  v5 = *(this + 2);

  return MEMORY[0x1EEE31C18](v5, Config, 0);
}

uint64_t PlaneDetectionSession::DidParametersOrConfigurationChanged(PlaneDetectionSession *this, const PlaneDetectionConfiguration *a2)
{
  ExtractParams(a2);
  ExtractConfig(a2);
  v3 = CV3DPlaneDetectionParametersEqualParameters() ^ 1;
  v4 = CV3DPlaneDetectionConfigurationEqualConfigurations();
  CV3DPlaneDetectionConfigurationRelease();
  CV3DPlaneDetectionParametersRelease();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 256;
  }

  return v5 | v3;
}

uint64_t ___ZL23ARShouldUseLogTypeErrorv_block_invoke_23()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError(void)::internalOSVersion = result;
  return result;
}

void ___ZL13_ARLogGeneralv_block_invoke_23()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
}

ARRaycastResult *raycastResultFromNewAPI(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  *v5.i64 = ARVisionToRenderingCoordinateTransform();
  v34 = v5;
  v36 = v6;
  v30 = v8;
  v32 = v7;
  CV3DRaycastResultTransformationToWorld();
  v9 = 0;
  v46 = v10;
  v47 = v11;
  v48 = v12;
  v49 = v13;
  do
  {
    *(&v50 + v9) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v34, COERCE_FLOAT(*(&v46 + v9))), v36, *&v46.f32[v9 / 4], 1), v32, *(&v46 + v9), 2), v30, *(&v46 + v9), 3);
    v9 += 16;
  }

  while (v9 != 64);
  v35 = v50;
  v37 = v51;
  v31 = v53;
  v33 = v52;
  *v14.i64 = ARRenderingToVisionCoordinateTransform();
  v15 = 0;
  v46 = v14;
  v47 = v16;
  v48 = v17;
  v49 = v18;
  do
  {
    *(&v50 + v15) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, COERCE_FLOAT(*(&v46 + v15))), v37, *&v46.f32[v15 / 4], 1), v33, *(&v46 + v15), 2), v31, *(&v46 + v15), 3);
    v15 += 16;
  }

  while (v15 != 64);
  v19 = 0;
  v46 = v50;
  v47 = v51;
  v48 = v52;
  v49 = v53;
  do
  {
    *(&v50 + v19) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, COERCE_FLOAT(*(&v46 + v19))), a3, *&v46.f32[v19 / 4], 1), a4, *(&v46 + v19), 2), a5, *(&v46 + v19), 3);
    v19 += 16;
  }

  while (v19 != 64);
  v43 = *v52.i64;
  v45 = *v53.i64;
  v39 = *v50.i64;
  v41 = *v51.i64;
  v20 = CV3DRaycastResultOriginatedFrom();
  v21 = CV3DRaycastResultExtentChecked() == *MEMORY[0x1E698BC50];
  if (v20 == *MEMORY[0x1E698BC68])
  {
    v22 = v21;
  }

  else
  {
    v22 = 2;
  }

  ResultOrientation = CV3DRaycastGetResultOrientation();
  v24 = 1;
  if (ResultOrientation != *MEMORY[0x1E698BC60])
  {
    v24 = 2;
  }

  if (ResultOrientation == *MEMORY[0x1E698BC58])
  {
    v25 = 0;
  }

  else
  {
    v25 = v24;
  }

  v26 = [[ARRaycastResult alloc] initWithWorldTransform:v22 target:v25 targetAlignment:v39, v41, v43, v45];
  v27 = CV3DRaycastResultPlaneIdentifier();
  if (v27)
  {
    v28 = [MEMORY[0x1E696AFB0] ar_UUIDWithCFUUIDRef:v27];
    [(ARRaycastResult *)v26 setAnchorIdentifier:v28];
    CFRelease(v27);
  }

  return v26;
}

id raycastResultsFromNewAPI(uint64_t a1, void *a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = objc_opt_new();
  for (i = 0; i < CV3DRayCastResultsLength(); ++i)
  {
    v9 = CV3DRayCastResultAtIndex();
    v10 = raycastResultFromNewAPI(v9, a3, a4, a5, a6);
    [v7 addObject:v10];
  }

  if ([v6 target] == 2)
  {
    v11 = [v7 firstObject];
    [v11 setTarget:2];
    v18[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];

    v7 = v12;
  }

  return v7;
}

id ARRaycastResultsDictionaryFrom(const CV3DRaycastResultMap *a1, simd_float4x4 a2)
{
  v16 = CV3DRayCastResultMapLength();
  if (v16)
  {
    v3 = objc_opt_new();
    theArray = MEMORY[0x1C6918D20](a1);
    for (i = 0; i != v16; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      v6 = a1;
      CV3DRayCastResultListFromId();
      v7 = [MEMORY[0x1E696AFB0] ar_UUIDWithCFUUIDRef:ValueAtIndex];
      v8 = CV3DRayCastResultsLength();
      if (v8)
      {
        for (j = 0; j != v8; ++j)
        {
          v10 = CV3DRayCastResultAtIndex();
          v11 = raycastResultFromNewAPI(v10, a2.columns[0], a2.columns[1], a2.columns[2], a2.columns[3]);
          v12 = [v3 objectForKeyedSubscript:v7];

          if (!v12)
          {
            v13 = objc_opt_new();
            [v3 setObject:v13 forKeyedSubscript:v7];
          }

          v14 = [v3 objectForKeyedSubscript:{v7, v16}];
          [v14 addObject:v11];
        }
      }

      a1 = v6;
    }

    CFRelease(theArray);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

ARRaycastResult *ARRaycastResultFrom(CV3DHitTestResult *a1, simd_float4x4 a2)
{
  *v3.i64 = ARVisionToRenderingCoordinateTransform();
  v29 = v3;
  v31 = v4;
  v25 = v6;
  v27 = v5;
  *v7.i64 = ARMatrix4x4MakeColumnMajorTransformFromArray(a1->var1);
  v8 = 0;
  v34 = v7;
  v35 = v9;
  v36 = v10;
  v37 = v11;
  do
  {
    *(&v38 + v8) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, COERCE_FLOAT(*(&v34 + v8))), v31, *&v34.f32[v8 / 4], 1), v27, *(&v34 + v8), 2), v25, *(&v34 + v8), 3);
    v8 += 16;
  }

  while (v8 != 64);
  v30 = v38;
  v32 = v39;
  v26 = v41;
  v28 = v40;
  *v12.i64 = ARRenderingToVisionCoordinateTransform();
  v13 = 0;
  v34 = v12;
  v35 = v14;
  v36 = v15;
  v37 = v16;
  do
  {
    *(&v38 + v13) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, COERCE_FLOAT(*(&v34 + v13))), v32, *&v34.f32[v13 / 4], 1), v28, *(&v34 + v13), 2), v26, *(&v34 + v13), 3);
    v13 += 16;
  }

  while (v13 != 64);
  v17 = 0;
  v34 = v38;
  v35 = v39;
  v36 = v40;
  v37 = v41;
  do
  {
    *(&v38 + v17) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2.columns[0], COERCE_FLOAT(*(&v34 + v17))), a2.columns[1], *&v34.f32[v17 / 4], 1), a2.columns[2], *(&v34 + v17), 2), a2.columns[3], *(&v34 + v17), 3);
    v17 += 16;
  }

  while (v17 != 64);
  if (a1->var2 == 1 && (v18 = a1->var3 - 1, v18 <= 3))
  {
    v19 = qword_1C25F06E0[v18];
  }

  else
  {
    v19 = 2;
  }

  var4 = a1->var4;
  if (var4 == 4)
  {
    v21 = 2;
  }

  else
  {
    v21 = var4 == 2;
  }

  v22 = [[ARRaycastResult alloc] initWithWorldTransform:v19 target:v21 targetAlignment:*v38.i64, *v39.i64, *v40.i64, *v41.i64];
  if (a1->var5)
  {
    v23 = [MEMORY[0x1E696AFB0] ar_UUIDWithCFUUIDRef:?];
    [(ARRaycastResult *)v22 setAnchorIdentifier:v23];
  }

  return v22;
}

id raycastResultsFrom(CV3DHitTestResults *a1, ARRaycastQuery *a2, simd_float4x4 a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = objc_opt_new();
  if (a1->var1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = ARRaycastResultFrom(&a1->var0[v6], a3);
      [v5 addObject:v8];

      ++v7;
      ++v6;
    }

    while (v7 < a1->var1);
  }

  if ([(ARRaycastQuery *)v4 target:*a3.columns]== ARRaycastTargetEstimatedPlane)
  {
    v9 = [v5 firstObject];
    [v9 setTarget:2];
    v13[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

    v5 = v10;
  }

  return v5;
}

uint64_t intentFrom(uint64_t a1)
{
  v2 = CV3DRaycastIntentCreate();
  if (*(a1 + 72))
  {
    CV3DRaycastIntentEnableTracking();
  }

  v3 = *(a1 + 76);
  if (v3 == 1 || v3 == 3)
  {
    CV3DRaycastIntentSetConsideredGeometry();
  }

  CV3DRaycastIntentSetConsideredOrientations();
  CV3DRaycastIntentSetExtentCheckForTrackedPlanes();
  return v2;
}

uint64_t *RaycastSession::RaycastSession(uint64_t *a1, uint64_t a2, void *a3, int a4)
{
  v7 = a3;
  CV3DRaycastSessionConfigurationCreate();
  if (a4)
  {
    CV3DRaycastSessionConfigurationEnableDeterministicMode();
  }

  v17 = 0;
  *a1 = CV3DRaycastSessionCreateWithConfig();
  CV3DRaycastSessionConfigurationRelease();
  if (v17)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v14 = v17;
    *exception = &unk_1F42076E0;
    exception[1] = v14;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = ___ZN14RaycastSessionC2EP15CV3DSLAMSessionU13block_pointerFvPK20CV3DRaycastResultMapEb_block_invoke;
  v16[3] = &__block_descriptor_40_e28_v80__0____CFUUID__8____4__16l;
  v16[4] = a2;
  v8 = MEMORY[0x1C691B4C0](v16);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = ___ZN14RaycastSessionC2EP15CV3DSLAMSessionU13block_pointerFvPK20CV3DRaycastResultMapEb_block_invoke_5;
  v15[3] = &__block_descriptor_40_e19_v16__0____CFUUID__8l;
  v15[4] = a2;
  v9 = MEMORY[0x1C691B4C0](v15);
  CV3DRaycastSessionSetAnchoringFunctors();
  if (v17 || (CV3DRaycastSessionRegisterOnTrackableUpdateCallback(), v17))
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    v12 = v17;
    *v11 = &unk_1F42076E0;
    v11[1] = v12;
  }

  return a1;
}

void ___ZN14RaycastSessionC2EP15CV3DSLAMSessionU13block_pointerFvPK20CV3DRaycastResultMapEb_block_invoke(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = CV3DSLAMSessionAddAnchor();
  if ((v6 & 1) == 0)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ___ZN14RaycastSessionC2EP15CV3DSLAMSessionU13block_pointerFvPK20CV3DRaycastResultMapEb_block_invoke_cold_1();
    }

    v7 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v8 = _ARLogGeneral(v6);
    v9 = v8;
    if (v7 == 1)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = 0;
        v10 = "Error adding anchor: %@";
        v11 = v9;
        v12 = OS_LOG_TYPE_ERROR;
LABEL_9:
        _os_log_impl(&dword_1C241C000, v11, v12, v10, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = 0;
      v10 = "Error: Error adding anchor: %@";
      v11 = v9;
      v12 = OS_LOG_TYPE_INFO;
      goto LABEL_9;
    }
  }
}

void ___ZN14RaycastSessionC2EP15CV3DSLAMSessionU13block_pointerFvPK20CV3DRaycastResultMapEb_block_invoke_5(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = CV3DSLAMSessionRemoveAnchor();
  if ((v2 & 1) == 0)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ___ZN14RaycastSessionC2EP15CV3DSLAMSessionU13block_pointerFvPK20CV3DRaycastResultMapEb_block_invoke_cold_1();
    }

    v3 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v4 = _ARLogGeneral(v2);
    v5 = v4;
    if (v3 == 1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v10 = 0;
        v6 = "Error removing anchor: %@";
        v7 = v5;
        v8 = OS_LOG_TYPE_ERROR;
LABEL_9:
        _os_log_impl(&dword_1C241C000, v7, v8, v6, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v10 = 0;
      v6 = "Error: Error removing anchor: %@";
      v7 = v5;
      v8 = OS_LOG_TYPE_INFO;
      goto LABEL_9;
    }
  }
}

uint64_t RaycastSession::PushDenseFrame(RaycastSession *this, __CVBuffer *a2, __CVBuffer *a3, simd_float3x3 a4, simd_float4x4 a5)
{
  CV3DRaycastDenseFrameCreate();
  CV3DRaycastPushDenseFrame();
  return CV3DRaycastDenseFrameRelease();
}

id RaycastSession::PerformHitTest(uint64_t *a1, uint64_t a2, void *a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7)
{
  v8 = a3;
  intentFrom(a2);
  v9 = MEMORY[0x1E695E0F0];
  v10 = CV3DRaycastSessionAttemptWithIntent();
  CV3DRaycastIntentRelease();
  if (v10 && CV3DRayCastResultsLength())
  {
    v9 = raycastResultsFromNewAPI(v10, v8, a4, a5, a6, a7);
  }

  CV3DRaycastResultListRelease();

  return v9;
}

void CFErrorRefException::~CFErrorRefException(std::exception *this)
{
  CFErrorRefException::~CFErrorRefException(this);

  JUMPOUT(0x1C691A790);
}

{
  this->__vftable = &unk_1F42076E0;
  v2 = this[1].__vftable;
  if (v2)
  {
    CFRelease(v2);
  }

  std::exception::~exception(this);
}

uint64_t ___ZL23ARShouldUseLogTypeErrorv_block_invoke_24()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError(void)::internalOSVersion = result;
  return result;
}

void ___ZL13_ARLogGeneralv_block_invoke_24()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
}

id _ARLogGeneral_38(uint64_t a1)
{
  if (_ARLogGeneral_onceToken_40 != -1)
  {
    _ARLogGeneral_cold_1_38();
  }

  v2 = _ARLogGeneral_logObj_40;

  return v2;
}

void ARSurfaceUseCountIsZeroCallback(void *a1, uint64_t a2)
{
  v3 = [a1 object];
  [v3 updateBufferPopulationRegistryWithReleasedSurfaceID:a2];
}

uint64_t ARBufferPopulationMonitorSignpostTypeForCaptureDevice(void *a1)
{
  v1 = a1;
  if (*MEMORY[0x1E6986950] == v1)
  {
    v2 = 1;
  }

  else if (*MEMORY[0x1E6986940] == v1)
  {
    v2 = 4;
  }

  else if (*MEMORY[0x1E6986948] == v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4 * (*MEMORY[0x1E6986930] == v1);
  }

  return v2;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C2567DE0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C2568B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id visitChildren(int a1, int a2, void *a3, void *a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v52 = *MEMORY[0x1E69E9840];
  v41 = a3;
  v34 = a4;
  v12 = objc_opt_new();
  v38 = a1;
  v13 = [&stru_1F4208A80 stringByPaddingToLength:a1 withString:@"\t" startingAtIndex:0];
  v36 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v34;
  v14 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v14)
  {
    v15 = 0;
    v16 = *v47;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v47 != v16)
        {
          objc_enumerationMutation(obj);
        }

        if ([*(*(&v46 + 1) + 8 * i) intValue] == a2)
        {
          v18 = [MEMORY[0x1E696AD98] numberWithInt:v15];
          [v36 addObject:v18];
        }

        v15 = (v15 + 1);
      }

      v14 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v14);
  }

  if ([v36 count])
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v35 = v36;
    v19 = [v35 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v19)
    {
      v37 = *v43;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v43 != v37)
          {
            objc_enumerationMutation(v35);
          }

          v21 = *(*(&v42 + 1) + 8 * j);
          v22 = MEMORY[0x1E696AEC0];
          v23 = [v41 objectAtIndexedSubscript:{objc_msgSend(v21, "intValue")}];
          v24 = [v22 stringWithFormat:@"%@JOINT %@\n", v13, v23];
          [v12 appendString:v24];

          v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@{\n", v13];
          [v12 appendString:v25];

          [v12 appendFormat:@"\t%@OFFSET %f %f %f\n", v13, (*(a5 + (objc_msgSend(v21, "intValue") << 6) + 48) * a7.n128_f32[0]), vmuls_lane_f32(a7.n128_f32[1], *(a5 + (objc_msgSend(v21, "intValue") << 6) + 48), 1), (a7.n128_f32[2] * *(a5 + 8 + (objc_msgSend(v21, "intValue") << 6) + 48))];
          if (a6)
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"\t%@CHANNELS 3 Xposition Yposition Zposition\n", v13];
          }

          else
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"\t%@CHANNELS 3 Xrotation Yrotation Zrotation\n", v13];
          }
          v26 = ;
          [v12 appendString:v26];

          v27 = visitChildren(v38 + 1, [v21 intValue], v41, obj, a5, a6, a7);
          [v12 appendString:v27];
          [v12 appendFormat:@"%@}\n", v13];
        }

        v19 = [v35 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v19);
    }

    v28 = v35;
  }

  else
  {
    v29 = [&stru_1F4208A80 stringByPaddingToLength:v38 - 1 withString:@"\t" startingAtIndex:0];

    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t%@End Site\n", v29];
    [v12 appendString:v30];

    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t%@{\n", v29];
    [v12 appendString:v31];

    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t%@\tOFFSET 0.0 0.0 0.0\n", v29];
    [v12 appendString:v32];

    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t%@}\n", v29];
    [v12 appendString:v28];
    v13 = v29;
  }

  return v12;
}

uint64_t ___ZL23ARShouldUseLogTypeErrorv_block_invoke_25()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError(void)::internalOSVersion = result;
  return result;
}

void ___ZL13_ARLogGeneralv_block_invoke_25()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
}

void *ARC3DShapeTriangulationListCreate@<X0>(void *a1@<X8>)
{
  *a1 = 0x400000000;
  a1[1] = malloc_type_malloc(0x20uLL, 0x2004093837F09uLL);
  result = malloc_type_malloc(0x20uLL, 0x2004093837F09uLL);
  a1[2] = result;
  return result;
}

void ARC3DShapeTriangulationListDestroy(uint64_t a1)
{
  free(*(a1 + 8));
  v2 = *(a1 + 16);

  free(v2);
}

void **ARC3DShapeTriangulationListInsert(void **result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *result;
  if (*result == *(result + 1))
  {
    v7 = 2 * v6;
    *(result + 1) = v7;
    result[1] = malloc_type_realloc(result[1], 8 * v7, 0x2004093837F09uLL);
    result = malloc_type_realloc(v5[2], 8 * *(v5 + 1), 0x2004093837F09uLL);
    v5[2] = result;
    v6 = *v5;
  }

  *(v5[1] + v6) = a2;
  *(v5[2] + v6) = a3;
  *v5 = v6 + 1;
  return result;
}

void *ARC3DShapeTriangulationStackPush(int *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  if (v5 == *a1)
  {
    a1[1] = 2 * v5;
    result = malloc_type_realloc(*(a1 + 1), 8 * (2 * v5), 0x2004093837F09uLL);
    *(a1 + 1) = result;
    v4 = *a1;
  }

  else
  {
    result = *(a1 + 1);
  }

  *a1 = v4 + 1;
  result[v4] = a2;
  return result;
}

uint64_t ARC3DShapeTriangulationStackPop(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1 - 1;
  *a1 = v2;
  return *(v1 + 8 * v2);
}

void *ARC3DNeighborSharingVertex(void *result, uint64_t a2)
{
  if (*result == a2)
  {
    v2 = 3;
    return result[v2];
  }

  if (result[1] == a2)
  {
    v2 = 4;
    return result[v2];
  }

  if (result[2] == a2)
  {
    v2 = 5;
    return result[v2];
  }

  return result;
}