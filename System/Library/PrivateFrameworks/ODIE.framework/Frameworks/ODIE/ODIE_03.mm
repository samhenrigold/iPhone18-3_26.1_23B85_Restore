uint64_t anonymous namespace::performGatherScatterComputation<short>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v42 = *MEMORY[0x277D85DE8];
  v11 = *(a3 + 32);
  v12 = *(*(a3 + 40) + 4 * (v11 - 1));
  v13 = *(a1 + 40);
  v14 = *(a1 + 32);
  if (v11 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = *(a3 + 32);
  }

  if (v14 >= v15)
  {
    v17 = (v15 - 1);
    v16 = 1;
    do
    {
      v16 *= *(v13 + 4 * v17++);
    }

    while (v17 < v14);
  }

  else
  {
    v16 = 1;
  }

  v18 = *(*(a2 + 24) + 16);
  v19 = v18 * v16;
  v20 = *(a2 + 32);
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  v39 = 0;
  memset(__dst, 0, sizeof(__dst));
  ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(v36, v13, v11 - 1);
  v21 = a4;
  if (a8)
  {
    a4 = a5;
    a5 = v21;
  }

  while (1)
  {
    if (v11 >= 2)
    {
      memcpy(__dst, v37, 4 * (v11 - 1));
    }

    ODIE::Common::NDArrayType::ravelMultiIndex(a1, __dst, v14, &v34);
    v22 = v34;
    if (v35 != 1)
    {
      break;
    }

    ODIE::Common::NDArrayType::ravelMultiIndex(a3, __dst, v11, &v34);
    if (v35 != 1)
    {
      return v34;
    }

    if (v12 >= 1)
    {
      v23 = (a6 + 2 * v34);
      v24 = v40;
      v25 = v12;
      do
      {
        v26 = *v23++;
        *v24++ = v26;
        --v25;
      }

      while (v25);
    }

    ODIE::Common::NDArrayType::ravelMultiIndex(a2, v40, v20, &v34);
    v27 = v34;
    if ((v35 & 1) == 0)
    {
      return v34;
    }

    if (a8)
    {
      v28 = v34;
    }

    else
    {
      v28 = v22;
    }

    if (a8)
    {
      v27 = v22;
    }

    memcpy((a4 + v18 * v28), (a5 + v18 * v27), v19);
    ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(v36);
    if (v37[44] == 1)
    {
      return 0;
    }
  }

  return v22;
}

uint64_t anonymous namespace::performGatherScatterComputation<int>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v39 = *MEMORY[0x277D85DE8];
  v11 = *(a3 + 32);
  v12 = *(*(a3 + 40) + 4 * (v11 - 1));
  v13 = *(a1 + 40);
  v14 = *(a1 + 32);
  if (v11 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = *(a3 + 32);
  }

  if (v14 >= v15)
  {
    v17 = (v15 - 1);
    v16 = 1;
    do
    {
      v16 *= *(v13 + 4 * v17++);
    }

    while (v17 < v14);
  }

  else
  {
    v16 = 1;
  }

  v18 = *(*(a2 + 24) + 16);
  v19 = v18 * v16;
  v20 = *(a2 + 32);
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v36 = 0;
  memset(__dst, 0, sizeof(__dst));
  ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(v33, v13, v11 - 1);
  v21 = a4;
  if (a8)
  {
    a4 = a5;
    v22 = v21;
  }

  else
  {
    v22 = a5;
  }

  while (1)
  {
    if (v11 >= 2)
    {
      memcpy(__dst, v34, 4 * (v11 - 1));
    }

    ODIE::Common::NDArrayType::ravelMultiIndex(a1, __dst, v14, &v31);
    v23 = v31;
    if (v32 != 1)
    {
      break;
    }

    ODIE::Common::NDArrayType::ravelMultiIndex(a3, __dst, v11, &v31);
    if (v32 != 1)
    {
      return v31;
    }

    if (v12 >= 1)
    {
      memcpy(v37, (a6 + 4 * v31), 4 * v12);
    }

    ODIE::Common::NDArrayType::ravelMultiIndex(a2, v37, v20, &v31);
    v24 = v31;
    if (v32 != 1)
    {
      return v31;
    }

    if (a8)
    {
      v25 = v31;
    }

    else
    {
      v25 = v23;
    }

    if (a8)
    {
      v24 = v23;
    }

    memcpy((a4 + v18 * v25), (v22 + v18 * v24), v19);
    ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(v33);
    if (v34[44] == 1)
    {
      return 0;
    }
  }

  return v23;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceGatherNd(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v7 = **a2;
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v19);
  }

  v8 = *(v7 + 40);
  v9 = *(v7 + 32);
  v10 = *v6;
  if (*(*v6 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v20);
  }

  v11 = *(v10 + 40);
  v12 = *(v10 + 32);
  v27 = 0;
  memset(__src, 0, sizeof(__src));
  v13 = v23;
  if (BYTE4(v23) == 1)
  {
    v14 = a1[1];
    v23 = *a1;
    v24 = v14;
    v25 = *(a1 + 4);
    v15 = odie_alloc_aligned(&v23, 4 * v13, 4, 0);
    v16 = v15;
    if (v13 >= 1)
    {
      memcpy(v15, __src, 4 * v13);
    }

    v25 = *(a1 + 4);
    v17 = a1[1];
    v23 = *a1;
    v24 = v17;
    ODIE::Common::NDArrayType::create(&v23, *(v7 + 24), v13, v16, v13, &ODIE::Common::Constants::kDefaultDimOrdering, v13, &v21);
    if (v22)
    {
      v13 = 0;
      *a4 = v21;
    }

    else
    {
      return v21;
    }
  }

  return v13;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceGatherNd(__int128 *a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  if (a3 != 2 || *(**a2 + 8) != 2 || *(*a2[1] + 8) != 2)
  {
    v32 = "gather_nd expects 2 NDArrayType inputs.";
LABEL_32:
    v33 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp";
    v34 = "validateOperandsAreNdArrayType";
    v35 = "%s";
    v39 = v32;
LABEL_33:
    v22 = 1;
    odie_log(1, v33, v34, v35, a5, v39);
    return v22;
  }

  if (a5 != 1 || (v7 = *a4, v8 = **a4, *(v8 + 8) != 2))
  {
    v32 = "gather_nd expects 1 NDArrayType output.";
    goto LABEL_32;
  }

  v10 = 0;
  v11 = 0;
  v12 = 1;
  v13 = 1;
  while (1)
  {
    v14 = v10;
    v15 = a2[v11];
    if (*(*v15 + 16))
    {
      if (!v15[1])
      {
        break;
      }
    }

    v10 = 1;
    v12 = v13;
    v11 = 1;
    v13 = 0;
    if (v14)
    {
      goto LABEL_10;
    }
  }

  v22 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v11);
  if (v12)
  {
    return v22;
  }

  v7 = *a4;
  v8 = **a4;
LABEL_10:
  if (*(v8 + 16) && !v7[1])
  {
    v33 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp";
    v34 = "validateOperandsHaveData";
    v35 = "Operand %lld does not have data bound.";
    v39 = 0;
    goto LABEL_33;
  }

  v16 = *a2;
  v17 = a2[1];
  v18 = **a2;
  if (*(v18 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v36);
  }

  v19 = *(v18 + 24);
  if (*(v19 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    return 2;
  }

  if (*(v19 + 24) == 19)
  {
    v33 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/GatherScatter.cpp";
    v34 = "valueInferenceGatherNd";
    v35 = "Do not support si4 input datatype yet (rdar://144753950).";
    goto LABEL_33;
  }

  v20 = *(v16 + 8);
  v21 = *v17;
  if (*(*v17 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v37);
  }

  ODIE::Common::NDArrayType::getNumElements(&v40, *v17);
  v22 = v40;
  if ((BYTE4(v40) & 1) != 0 && v40)
  {
    v23 = *v7;
    if (*(*v7 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v38);
    }

    v24 = v7[1];
    v25 = *(*(v21 + 24) + 16);
    if (v25 == 4)
    {
      v29 = v17[1];
      v30 = a1[1];
      v40 = *a1;
      v41 = v30;
      v42 = *(a1 + 4);
      if (!v28)
      {
        return 0;
      }

      return v28;
    }

    if (v25 == 2)
    {
      v26 = v17[1];
      v27 = a1[1];
      v40 = *a1;
      v41 = v27;
      v42 = *(a1 + 4);
      if (!v28)
      {
        return 0;
      }

      return v28;
    }

    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/GatherScatter.cpp", "valueInferenceGatherNd", "Unexpected indices data type encountered in gather_nd");
    return 2;
  }

  return v22;
}

void ODIE::Kernels::Core::CPU::registerGatherScatterKernels(_OWORD **a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v8[40] = 0;
  v9 = "coreml.scatter_nd";
  v10 = 35;
  v11 = ODIE::Kernels::Core::CPU::typeInferenceScatterNd;
  v12 = ODIE::Kernels::Core::CPU::valueInferenceScatterNd;
  v13 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v8, 1);
  v2[40] = 0;
  v3 = "coreml.gather_nd";
  v4 = 33;
  v5 = ODIE::Kernels::Core::CPU::typeInferenceGatherNd;
  v6 = ODIE::Kernels::Core::CPU::valueInferenceGatherNd;
  v7 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  ODIE::Common::String::~String(v8);
}

void ODIE::Common::NDArrayType::ravelMultiIndex(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!a2)
  {
    v5 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/NDArrayType.hpp", "ravelMultiIndex", "multiIndex input cannot be nullptr.");
    goto LABEL_14;
  }

  if (a3 != *(result + 32))
  {
    v10 = "multiIndex input has %lld elements whereas NDArrayType rank is %d.";
    v11 = *(result + 32);
LABEL_13:
    v5 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/NDArrayType.hpp", "ravelMultiIndex", v10, a3, v11, v12);
LABEL_14:
    v9 = 0;
    goto LABEL_11;
  }

  if ((*(result + 16) & 0x8000000000000000) != 0)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/NDArrayType.hpp", "ravelMultiIndex", "Cannot query ravelMultiIndex() if NDArrayType is not fully known.");
    v9 = 0;
    v5 = 2;
    goto LABEL_11;
  }

  if (a3 - 1 >= 0)
  {
    v5 = 0;
    v6 = 1;
    while (1)
    {
      a3 = (a3 - 1);
      v7 = *(a2 + 4 * a3);
      v8 = *(*(result + 40) + 4 * a3);
      if (v7 >= v8)
      {
        break;
      }

      v5 += v7 * v6;
      v6 *= v8;
      if (a3 <= 0)
      {
        goto LABEL_10;
      }
    }

    v11 = *(a2 + 4 * a3);
    v12 = *(*(result + 40) + 4 * a3);
    v10 = "multiIndex[%d] = %d, but NDArrayType dimension is %d.";
    goto LABEL_13;
  }

  v5 = 0;
LABEL_10:
  v9 = 1;
LABEL_11:
  *a4 = v5;
  *(a4 + 4) = v9;
}

uint64_t ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(uint64_t result)
{
  if ((*(result + 52) & 1) == 0)
  {
    v1 = *(result + 48);
    if (v1 < 1)
    {
LABEL_6:
      *(result + 52) = 1;
    }

    else
    {
      v2 = v1 + 1;
      v3 = (*result + 4 * v1 - 4);
      while (1)
      {
        v4 = *(result + 4 * v2) + 1;
        *(result + 4 * v2) = v4;
        v5 = *v3--;
        if (v4 < v5)
        {
          break;
        }

        *(result + 4 * v2--) = 0;
        if (v2 <= 1)
        {
          goto LABEL_6;
        }
      }
    }
  }

  return result;
}

uint64_t ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(uint64_t result, uint64_t a2, unsigned int a3)
{
  *result = a2;
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  *(result + 40) = 0;
  *(result + 48) = a3;
  *(result + 52) = 0;
  if (a3 >= 11)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/PositionIterator.hpp", "PositionIterator", "Expect rank to be < %d", 10);
    ODIE::Platform::abort(v7);
  }

  if (a3 < 1)
  {
    v6 = 1;
  }

  else if (*(result + 8) == **result)
  {
    v3 = 0;
    while (a3 - 1 != v3)
    {
      v4 = *(result + 12 + 4 * v3);
      v5 = *(*result + 4 + 4 * v3++);
      if (v4 != v5)
      {
        goto LABEL_11;
      }
    }

    v3 = a3;
LABEL_11:
    v6 = v3 >= a3;
  }

  else
  {
    v6 = 0;
  }

  *(result + 52) = v6;
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceGelu(uint64_t a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v5 = **a2;
  if (*(v5 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v10);
  }

  v6 = *(v5 + 40);
  v7 = *(v5 + 32);
  v12 = *(a1 + 32);
  v8 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v8;
  ODIE::Common::NDArrayType::create(v11, *(v5 + 24), v7, v6, v7, &ODIE::Common::Constants::kDefaultDimOrdering, v7, &v13);
  if ((v14 & 1) == 0)
  {
    return v13;
  }

  result = 0;
  *a4 = v13;
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceGelu(uint64_t a1, ODIE::Common::NDArrayType ***a2, uint64_t a3, uint64_t a4)
{
  v4 = **a2;
  if (*(v4 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v37);
  }

  v5 = *(**a2 + 3);
  if (*(v5 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    return 2;
  }

  v6 = *(v5 + 24);
  v7 = *(*a4 + 8);
  v8 = (*a2)[1];
  v38 = *(a1 + 104);
  NamedAttributes = ODIE::Common::SymbolAttr::getNamedAttributes(&v38);
  if (NamedAttributes && (*&v38 = NamedAttributes, *(&v38 + 1) = v10, (v11 = ODIE::Common::DictionaryAttr::getAttrByName<ODIE::Common::StringAttr>(&v38, "approximate", 0xBuLL)) != 0))
  {
    v12 = (v11 + *(v11 - *v11 + 4));
    v13 = v12 + *v12 + 4;
  }

  else
  {
    v13 = &byte_25D0A27DF;
  }

  ODIE::Common::NDArrayType::getNumElements(&v38, v4);
  v14 = v38;
  if (BYTE4(v38) == 1)
  {
    if (v6 != 69)
    {
      if (v6 == 68)
      {
        v15 = strlen(v13);
        *&v38 = v13;
        *(&v38 + 1) = v15;
        if (v14 >= 1)
        {
          while (1)
          {
            _H14 = *v8;
            if (!ODIE::Common::StringRef::compare(&v38, "tanh", 4uLL))
            {
              break;
            }

            if (!ODIE::Common::StringRef::compare(&v38, "none", 4uLL))
            {
              __asm { FCVT            D0, H14 }

              v22 = _D0 * 0.5;
              v23 = erfc(_D0 * -0.707106781);
              goto LABEL_17;
            }

            if (!ODIE::Common::StringRef::compare(&v38, "sigmoid", 7uLL))
            {
              __asm { FCVT            D14, H14 }

              _D0 = 1.0 / (exp(_D14 * -1.702) + 1.0) * _D14;
              goto LABEL_18;
            }

            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Gelu.cpp", "geluImpl", "Unsupported approximate value: %s in gelu kernel.", v13);
LABEL_19:
            v7 = (v7 + 2);
            v8 = (v8 + 2);
            if (!--v14)
            {
              return 0;
            }
          }

          __asm { FCVT            D0, H14 }

          v22 = _D0 * 0.5;
          v23 = tanh((_D0 + _D0 * 0.044715 * _D0 * _D0) * 0.797884561) + 1.0;
LABEL_17:
          _D0 = v22 * v23;
LABEL_18:
          __asm { FCVT            H0, D0 }

          *v7 = _H0;
          goto LABEL_19;
        }

        return 0;
      }

      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Gelu.cpp", "valueInferenceGelu", "Unsupported element scalar tag: %d in gelu kernel.");
      return 2;
    }

    v28 = strlen(v13);
    *&v38 = v13;
    *(&v38 + 1) = v28;
    if (v14 < 1)
    {
      return 0;
    }

    while (1)
    {
      v29 = *v8;
      if (!ODIE::Common::StringRef::compare(&v38, "tanh", 4uLL))
      {
        break;
      }

      if (!ODIE::Common::StringRef::compare(&v38, "none", 4uLL))
      {
        v33 = v29;
        v31 = v29 * 0.5;
        v32 = erfc(v33 * -0.707106781);
        goto LABEL_29;
      }

      if (!ODIE::Common::StringRef::compare(&v38, "sigmoid", 7uLL))
      {
        v34 = 1.0 / (exp(v29 * -1.702) + 1.0) * v29;
        goto LABEL_30;
      }

      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Gelu.cpp", "geluImpl", "Unsupported approximate value: %s in gelu kernel.", v13);
LABEL_31:
      ++v7;
      v8 = (v8 + 4);
      if (!--v14)
      {
        return 0;
      }
    }

    v30 = v29;
    v31 = v29 * 0.5;
    v32 = tanh((v30 + v30 * 0.044715 * v30 * v30) * 0.797884561) + 1.0;
LABEL_29:
    v34 = v31 * v32;
LABEL_30:
    v35 = v34;
    *v7 = v35;
    goto LABEL_31;
  }

  return v14;
}

void ODIE::Kernels::Core::CPU::registerGeluKernels(_OWORD **a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1[40] = 0;
  v2 = "coreml.gelu";
  v3 = 23;
  v4 = ODIE::Kernels::Core::CPU::typeInferenceGelu;
  v5 = ODIE::Kernels::Core::CPU::valueInferenceGelu;
  v6 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v1, 1);
  ODIE::Common::String::~String(v1);
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceGetShape(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  if (a3 != 1 || (v5 = **a2, *(v5 + 8) != 2))
  {
    v13 = "get_shape expects a packed NDArrayType input.";
LABEL_18:
    v14 = "validateOperandsAreNdArrayType";
    v15 = "%s";
    v16 = v13;
LABEL_19:
    v11 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", v14, v15, a5, v16);
    return v11;
  }

  if (a5 != 1 || (v6 = **a4, *(v6 + 8) != 2))
  {
    v13 = "get_shape expects a packed NDArrayType output.";
    goto LABEL_18;
  }

  if (*(v5 + 16) && !(*a2)[1] || ((v7 = (*a4)[1], *(v6 + 16)) ? (v8 = v7 == 0) : (v8 = 0), v8))
  {
    v14 = "validateOperandsHaveData";
    v15 = "Operand %lld does not have data bound.";
    v16 = 0;
    goto LABEL_19;
  }

  if (*(v5 + 32) >= 1)
  {
    v9 = 0;
    v10 = *(v5 + 40);
    do
    {
      *(v7 + 4 * v9) = *(v10 + 4 * v9);
      ++v9;
    }

    while (v9 < *(v5 + 32));
  }

  return 0;
}

void ODIE::Kernels::Core::CPU::registerGetShapeKernels(_OWORD **a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1[40] = 0;
  v2 = "coreml.get_shape";
  v3 = 33;
  v4 = ODIE::Kernels::Core::CPU::typeInferenceGetShape;
  v5 = ODIE::Kernels::Core::CPU::valueInferenceGetShape;
  v6 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v1, 1);
  ODIE::Common::String::~String(v1);
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceBatchedMatMul(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v6 = **a2;
  if (*(v6 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v20);
  }

  v7 = *a2[1];
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v21);
  }

  v8 = *(v6 + 40);
  v9 = *(v6 + 32);
  v10 = v9 - 2;
  v11 = v8[v10];
  v12 = *(*(v7 + 40) + 4 * (v9 - 1));
  v13 = a1[1];
  v24 = *a1;
  v25 = v13;
  v26 = *(a1 + 4);
  v14 = odie_alloc_aligned(&v24, 4 * v9, 4, 0);
  if (v9 >= 3)
  {
    v15 = v14;
    v16 = v9 - 2;
    do
    {
      v17 = *v8++;
      *v15++ = v17;
      --v16;
    }

    while (v16);
  }

  v14[v10] = v11;
  v14[v9 - 1] = v12;
  v26 = *(a1 + 4);
  v18 = a1[1];
  v24 = *a1;
  v25 = v18;
  ODIE::Common::NDArrayType::create(&v24, *(v6 + 24), v9, v14, v9, *(v6 + 48), *(v6 + 32), &v22);
  if ((v23 & 1) == 0)
  {
    return v22;
  }

  result = 0;
  *a4 = v22;
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceBatchedMatMul(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  if (a3 < 1)
  {
    goto LABEL_6;
  }

  v9 = 0;
  v10 = 1;
  while (1)
  {
    v11 = a2[v9];
    if (*(*v11 + 16))
    {
      if (!v11[1])
      {
        break;
      }
    }

    v10 = ++v9 < a3;
    if (a3 == v9)
    {
      goto LABEL_6;
    }
  }

  v98 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v9);
  if (!v10)
  {
LABEL_6:
    if (a5 >= 1)
    {
      v12 = 0;
      v13 = 1;
      while (1)
      {
        v14 = a4[v12];
        if (*(*v14 + 16))
        {
          if (!v14[1])
          {
            break;
          }
        }

        v13 = ++v12 < a5;
        if (a5 == v12)
        {
          goto LABEL_11;
        }
      }

      v98 = 1;
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v12);
      if (v13)
      {
        return v98;
      }
    }

LABEL_11:
    if (a3 == 2 && (v15 = **a2, *(v15 + 8) == 2) && *(*a2[1] + 8) == 2)
    {
      if (a5 == 1 && *(**a4 + 8) == 2)
      {
        v16 = *a2[1];
        if (*(v16 + 8) != 2)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v102);
        }

        v17 = **a4;
        if (*(v17 + 8) != 2)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v103);
        }

        v18 = *(v15 + 32);
        v19 = *(v16 + 32);
        v20 = *(v17 + 32);
        v21 = (v18 - 2);
        if (v18 < 2 || v19 < 2 || v20 < 2)
        {
          v104 = "Inputs to BMM and its output should be rank >= 2";
          goto LABEL_116;
        }

        if (v18 != v19 || v18 != v20)
        {
          v104 = "Inputs to BMM and its output must have same ranks";
LABEL_116:
          v100 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/MatMul.cpp";
          v101 = "checkOperandsAreBmmCompatible";
          goto LABEL_122;
        }

        v25 = *(v15 + 40);
        v26 = *(v16 + 40);
        v27 = *(v17 + 40);
        if (v18 >= 3)
        {
          v28 = (v18 - 2);
          v29 = *(v15 + 40);
          v30 = *(v16 + 40);
          v31 = v27;
          v104 = "Batch dims of inputs to BMM and output must be the same";
          while (1)
          {
            v33 = *v29++;
            v32 = v33;
            v34 = *v30++;
            if (v32 != v34 || v32 != *v31)
            {
              goto LABEL_116;
            }

            ++v31;
            if (!--v28)
            {
              goto LABEL_37;
            }
          }
        }

        v21 = 0;
LABEL_37:
        v35 = v18 - 1;
        if (*(v25 + 4 * v35) != *(v26 + 4 * v21))
        {
          v104 = "Inputs to BMM are not MatMul compatible.";
          goto LABEL_116;
        }

        if (*(v25 + 4 * v21) != v27[v21] || *(v26 + 4 * v35) != v27[v35])
        {
          v104 = "Output of BMM not compatible with given inputs";
          goto LABEL_116;
        }

        v36 = **a2;
        if (*(v36 + 8) != 2)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v105);
        }

        v37 = *a2[1];
        if (*(v37 + 8) != 2)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v106);
        }

        v38 = *(v36 + 40);
        v39 = *(v36 + 32);
        v40 = *(v37 + 40);
        v41 = (v39 - 2);
        v42 = 4 * v39 - 4;
        v43 = 1;
        if (v39 >= 3)
        {
          v44 = v38;
          v45 = v41;
          do
          {
            v46 = *v44++;
            v43 *= v46;
            --v45;
          }

          while (v45);
        }

        v47 = v38[v41];
        v48 = *(v38 + v42);
        v49 = *(v40 + v42);
        v50 = *a2;
        v51 = a2[1][1];
        v52 = (*a4)[1];
        v55 = v50;
        v53 = *v50;
        v54 = v55[1];
        if (*(v53 + 8) != 2)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v107);
        }

        v56 = *(v53 + 24);
        if (*(v56 + 8) != 1)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v108);
        }

        v57 = *(v56 + 24);
        if (v57 > 68)
        {
          if (v57 == 69)
          {
            v88 = v49 * v47;
            bzero(v52, 4 * v88 * v43);
            if (v43 >= 1)
            {
              for (i = 0; i != v43; ++i)
              {
                if (v47 >= 1)
                {
                  v90 = 0;
                  for (j = 0; j != v47; ++j)
                  {
                    if (v48 >= 1)
                    {
                      v92 = 0;
                      v93 = v51;
                      do
                      {
                        if (v49 >= 1)
                        {
                          v94 = v93;
                          v95 = 4 * v90;
                          v96 = v49;
                          do
                          {
                            v97 = *v94++;
                            *&v52[v95] = *&v52[v95] + (*(v54 + 4 * (v92 + j * v48)) * v97);
                            v95 += 4;
                            --v96;
                          }

                          while (v96);
                        }

                        ++v92;
                        v93 += v49;
                      }

                      while (v92 != v48);
                    }

                    v90 += v49;
                  }
                }

                v54 += 4 * v48 * v47;
                v52 += 4 * v88;
                v51 += 4 * v49 * v48;
              }
            }

            return 0;
          }

          if (v57 == 70)
          {
            v68 = v49 * v47;
            bzero(v52, 8 * v68 * v43);
            if (v43 >= 1)
            {
              for (k = 0; k != v43; ++k)
              {
                if (v47 >= 1)
                {
                  v70 = 0;
                  for (m = 0; m != v47; ++m)
                  {
                    if (v48 >= 1)
                    {
                      v72 = 0;
                      v73 = v51;
                      do
                      {
                        if (v49 >= 1)
                        {
                          v74 = v73;
                          v75 = 8 * v70;
                          v76 = v49;
                          do
                          {
                            v77 = *v74++;
                            *&v52[v75] = *&v52[v75] + *(v54 + 8 * (v72 + m * v48)) * v77;
                            v75 += 8;
                            --v76;
                          }

                          while (v76);
                        }

                        ++v72;
                        v73 += v49;
                      }

                      while (v72 != v48);
                    }

                    v70 += v49;
                  }
                }

                v54 += 8 * v48 * v47;
                v52 += 8 * v68;
                v51 += 8 * v49 * v48;
              }
            }

            return 0;
          }
        }

        else
        {
          if (v57 == 25)
          {
            v78 = v49 * v47;
            bzero(v52, 4 * v78 * v43);
            if (v43 >= 1)
            {
              for (n = 0; n != v43; ++n)
              {
                if (v47 >= 1)
                {
                  v80 = 0;
                  for (ii = 0; ii != v47; ++ii)
                  {
                    if (v48 >= 1)
                    {
                      v82 = 0;
                      v83 = v51;
                      do
                      {
                        if (v49 >= 1)
                        {
                          v84 = v83;
                          v85 = 4 * v80;
                          v86 = v49;
                          do
                          {
                            v87 = *v84++;
                            *&v52[v85] += v87 * *(v54 + 4 * (v82 + ii * v48));
                            v85 += 4;
                            --v86;
                          }

                          while (v86);
                        }

                        ++v82;
                        v83 += v49;
                      }

                      while (v82 != v48);
                    }

                    v80 += v49;
                  }
                }

                v54 += 4 * v48 * v47;
                v52 += 4 * v78;
                v51 += 4 * v49 * v48;
              }
            }

            return 0;
          }

          if (v57 == 68)
          {
            v58 = v49 * v47;
            bzero(v52, 2 * v58 * v43);
            if (v43 >= 1)
            {
              for (jj = 0; jj != v43; ++jj)
              {
                if (v47 >= 1)
                {
                  v60 = 0;
                  for (kk = 0; kk != v47; ++kk)
                  {
                    if (v48 >= 1)
                    {
                      v62 = 0;
                      v63 = v51;
                      do
                      {
                        if (v49 >= 1)
                        {
                          v64 = v63;
                          v65 = 2 * v60;
                          v66 = v49;
                          do
                          {
                            v67 = *v64++;
                            *&v52[v65] = *&v52[v65] + (*(v54 + 2 * (v62 + kk * v48)) * v67);
                            v65 += 2;
                            --v66;
                          }

                          while (v66);
                        }

                        ++v62;
                        v63 += v49;
                      }

                      while (v62 != v48);
                    }

                    v60 += v49;
                  }
                }

                v54 += 2 * v48 * v47;
                v52 += 2 * v58;
                v51 += 2 * v49 * v48;
              }
            }

            return 0;
          }
        }

        v100 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/MatMul.cpp";
        v101 = "valueInferenceBatchedMatMul";
        v104 = "Invalid type passed to BMM";
        goto LABEL_122;
      }

      v99 = "batch_matmul expects 1 packed NDArrayType output.";
    }

    else
    {
      v99 = "batch_matmul expects 2 packed NDArrayType inputs.";
    }

    v100 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp";
    v101 = "validateOperandsAreNdArrayType";
    v104 = "%s";
    v110 = v99;
LABEL_122:
    v98 = 1;
    odie_log(1, v100, v101, v104, v110);
  }

  return v98;
}

void ODIE::Kernels::Core::CPU::registerMatMulKernels(_OWORD **a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1[40] = 0;
  v2 = "coreml.batch_matmul";
  v3 = 39;
  v4 = ODIE::Kernels::Core::CPU::typeInferenceBatchedMatMul;
  v5 = ODIE::Kernels::Core::CPU::valueInferenceBatchedMatMul;
  v6 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v1, 1);
  ODIE::Common::String::~String(v1);
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceNonZero(__int128 *a1, uint64_t a2, __n128 a3, uint64_t a4, void *a5)
{
  v5 = *a2;
  if (!*(*a2 + 8))
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/NonZero.cpp", "typeInferenceNonZero", "coreml.non_zero type inference requires input operand to have data.");
    return 2;
  }

  v8 = *v5;
  if (*(*v5 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v43);
  }

  v9 = *(v8 + 24);
  if (*(v9 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    return 2;
  }

  v10 = *(v9 + 24);
  if (v10 <= 24)
  {
    switch(v10)
    {
      case 16:
        v24 = v5[1];
        if (!v24)
        {
          goto LABEL_58;
        }

        v25 = *(*v5 + 16);
        if (v25 < 1)
        {
          goto LABEL_58;
        }

        v13 = 0;
        do
        {
          v26 = *v24++;
          v13 += v26;
          --v25;
        }

        while (v25);
        goto LABEL_59;
      case 23:
        v36 = v5[1];
        if (v36)
        {
          v37 = *(*v5 + 16);
          if (v37 >= 1)
          {
            v13 = 0;
            do
            {
              if (*v36++)
              {
                ++v13;
              }

              --v37;
            }

            while (v37);
            goto LABEL_59;
          }
        }

        goto LABEL_58;
      case 24:
        v16 = v5[1];
        if (v16)
        {
          v17 = *(*v5 + 16);
          if (v17 >= 2)
          {
            v13 = 0;
            v18 = v17 >> 1;
            do
            {
              if (*v16++)
              {
                ++v13;
              }

              --v18;
            }

            while (v18);
            goto LABEL_59;
          }
        }

        goto LABEL_58;
    }

    goto LABEL_37;
  }

  if (v10 <= 67)
  {
    if (v10 != 25)
    {
      if (v10 == 26)
      {
        v11 = v5[1];
        if (v11)
        {
          v12 = *(*v5 + 16);
          if (v12 >= 8)
          {
            v13 = 0;
            v14 = v12 >> 3;
            do
            {
              if (*v11++)
              {
                ++v13;
              }

              --v14;
            }

            while (v14);
            goto LABEL_59;
          }
        }

        goto LABEL_58;
      }

      goto LABEL_37;
    }

    v28 = v5[1];
    if (v28)
    {
      v29 = *(*v5 + 16);
      if (v29 >= 4)
      {
        v13 = 0;
        v30 = v29 >> 2;
        do
        {
          if (*v28++)
          {
            ++v13;
          }

          --v30;
        }

        while (v30);
        goto LABEL_59;
      }
    }

LABEL_58:
    v13 = 0;
    goto LABEL_59;
  }

  if (v10 == 68)
  {
    v32 = v5[1];
    if (!v32)
    {
      goto LABEL_58;
    }

    v33 = *(*v5 + 16);
    if (v33 < 2)
    {
      goto LABEL_58;
    }

    v13 = 0;
    v34 = v33 >> 1;
    do
    {
      v35 = *v32++;
      a3.n128_u16[0] = v35;
      v13 += _ZN12_GLOBAL__N_19isNonZeroIDF16_EEbT_(a3);
      --v34;
    }

    while (v34);
    goto LABEL_59;
  }

  if (v10 != 69)
  {
LABEL_37:
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/NonZero.cpp", "typeInferenceNonZero", "Unexpected scalar type for non zero input: %d");
    return 2;
  }

  v20 = v5[1];
  if (!v20)
  {
    goto LABEL_58;
  }

  v21 = *(*v5 + 16);
  if (v21 < 4)
  {
    goto LABEL_58;
  }

  v13 = 0;
  v22 = v21 >> 2;
  do
  {
    v23 = *v20++;
    --v22;
  }

  while (v22);
LABEL_59:
  v39 = a1[1];
  v46 = *a1;
  v47 = v39;
  v48 = *(a1 + 4);
  v40 = odie_alloc_aligned(&v46, 8, 4, 0);
  *v40 = v13;
  v40[1] = *(v8 + 32);
  v41 = a1[1];
  v46 = *a1;
  v47 = v41;
  v48 = *(a1 + 4);
  ODIE::Common::ScalarType::create(&v46, 25, 4, &v44);
  if ((v45 & 1) == 0)
  {
    return v44;
  }

  v42 = a1[1];
  v46 = *a1;
  v47 = v42;
  v48 = *(a1 + 4);
  ODIE::Common::NDArrayType::create(&v46, v44, 2, v40, 2, &ODIE::Common::Constants::kDefaultDimOrdering, 2, &v44);
  if ((v45 & 1) == 0)
  {
    return v44;
  }

  result = 0;
  *a5 = v44;
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceNonZero(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  if (a3 != 1 || (v5 = *a2, v6 = **a2, *(v6 + 8) != 2))
  {
    v70 = "coreml.non_zero expects 1 NDArrayType input.";
LABEL_91:
    v71 = "validateOperandsAreNdArrayType";
    v72 = "%s";
    v73 = v70;
LABEL_92:
    v44 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", v71, v72, a5, v73);
    return v44;
  }

  if (a5 != 1 || (v7 = **a4, *(v7 + 8) != 2))
  {
    v70 = "coreml.non_zero expects 1 NDArrayType output.";
    goto LABEL_91;
  }

  v8 = *(v6 + 16);
  if (v8 && !v5[1] || ((v9 = (*a4)[1], *(v7 + 16)) ? (v10 = v9 == 0) : (v10 = 0), v10))
  {
    v71 = "validateOperandsHaveData";
    v72 = "Operand %lld does not have data bound.";
    v73 = 0;
    goto LABEL_92;
  }

  v11 = *(v6 + 24);
  if (*(v11 + 8) == 1)
  {
    v12 = *(v11 + 24);
    if (v12 <= 24)
    {
      switch(v12)
      {
        case 16:
          v37 = v5[1];
          if (!v37)
          {
            v8 = 0;
          }

          ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(v74, *(v6 + 40), *(v6 + 32));
          if (v8 >= 1)
          {
            v38 = 0;
            v39 = 0;
            do
            {
              if (*(v37 + v38) == 1)
              {
                v40 = v76;
                if (v76 >= 1)
                {
                  v41 = (v9 + 4 * v39);
                  v39 += v76;
                  v42 = v75;
                  do
                  {
                    v43 = *v42++;
                    *v41++ = v43;
                    --v40;
                  }

                  while (v40);
                }
              }

              ++v38;
              ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(v74);
            }

            while (v38 != v8);
          }

          return 0;
        case 23:
          v62 = v5[1];
          if (!v62)
          {
            v8 = 0;
          }

          ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(v74, *(v6 + 40), *(v6 + 32));
          if (v8 >= 1)
          {
            v63 = 0;
            v64 = 0;
            do
            {
              if (*(v62 + v63))
              {
                v65 = v76;
                if (v76 >= 1)
                {
                  v66 = (v9 + 4 * v64);
                  v64 += v76;
                  v67 = v75;
                  do
                  {
                    v68 = *v67++;
                    *v66++ = v68;
                    --v65;
                  }

                  while (v65);
                }
              }

              ++v63;
              ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(v74);
            }

            while (v63 != v8);
          }

          return 0;
        case 24:
          v21 = v5[1];
          ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(v74, *(v6 + 40), *(v6 + 32));
          if (v21 && v8 >= 2)
          {
            v22 = 0;
            v23 = 0;
            v24 = v8 >> 1;
            do
            {
              if (*(v21 + 2 * v22))
              {
                v25 = v76;
                if (v76 >= 1)
                {
                  v26 = (v9 + 4 * v23);
                  v23 += v76;
                  v27 = v75;
                  do
                  {
                    v28 = *v27++;
                    *v26++ = v28;
                    --v25;
                  }

                  while (v25);
                }
              }

              ++v22;
              ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(v74);
            }

            while (v22 != v24);
          }

          return 0;
      }
    }

    else if (v12 > 67)
    {
      if (v12 == 68)
      {
        v53 = v5[1];
        ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(v74, *(v6 + 40), *(v6 + 32));
        if (v53 && v8 >= 2)
        {
          v55 = 0;
          v56 = 0;
          v57 = v8 >> 1;
          do
          {
            v54.n128_u16[0] = *(v53 + 2 * v55);
            if (_ZN12_GLOBAL__N_19isNonZeroIDF16_EEbT_(v54))
            {
              v58 = v76;
              if (v76 >= 1)
              {
                v59 = (v9 + 4 * v56);
                v56 += v76;
                v60 = v75;
                do
                {
                  v61 = *v60++;
                  *v59++ = v61;
                  --v58;
                }

                while (v58);
              }
            }

            ++v55;
            ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(v74);
          }

          while (v55 != v57);
        }

        return 0;
      }

      if (v12 == 69)
      {
        v29 = v5[1];
        ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(v74, *(v6 + 40), *(v6 + 32));
        if (v29 && v8 >= 4)
        {
          v30 = 0;
          v31 = 0;
          v32 = v8 >> 2;
          do
          {
            {
              v33 = v76;
              if (v76 >= 1)
              {
                v34 = (v9 + 4 * v31);
                v31 += v76;
                v35 = v75;
                do
                {
                  v36 = *v35++;
                  *v34++ = v36;
                  --v33;
                }

                while (v33);
              }
            }

            ++v30;
            ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(v74);
          }

          while (v30 != v32);
        }

        return 0;
      }
    }

    else
    {
      if (v12 == 25)
      {
        v45 = v5[1];
        ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(v74, *(v6 + 40), *(v6 + 32));
        if (v45 && v8 >= 4)
        {
          v46 = 0;
          v47 = 0;
          v48 = v8 >> 2;
          do
          {
            if (*(v45 + 4 * v46))
            {
              v49 = v76;
              if (v76 >= 1)
              {
                v50 = (v9 + 4 * v47);
                v47 += v76;
                v51 = v75;
                do
                {
                  v52 = *v51++;
                  *v50++ = v52;
                  --v49;
                }

                while (v49);
              }
            }

            ++v46;
            ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(v74);
          }

          while (v46 != v48);
        }

        return 0;
      }

      if (v12 == 26)
      {
        v13 = v5[1];
        ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(v74, *(v6 + 40), *(v6 + 32));
        if (v13 && v8 >= 8)
        {
          v14 = 0;
          v15 = 0;
          v16 = v8 >> 3;
          do
          {
            if (*(v13 + 8 * v14))
            {
              v17 = v76;
              if (v76 >= 1)
              {
                v18 = (v9 + 4 * v15);
                v15 += v76;
                v19 = v75;
                do
                {
                  v20 = *v19++;
                  *v18++ = v20;
                  --v17;
                }

                while (v17);
              }
            }

            ++v14;
            ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(v74);
          }

          while (v14 != v16);
        }

        return 0;
      }
    }

    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/NonZero.cpp", "valueInferenceNonZero", "Unexpected scalar type for non zero input: %d");
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
  }

  return 2;
}

void ODIE::Kernels::Core::CPU::registerNonZeroKernel(_OWORD **a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1[40] = 0;
  v2 = "coreml.non_zero";
  v3 = 31;
  v4 = ODIE::Kernels::Core::CPU::typeInferenceNonZero;
  v5 = ODIE::Kernels::Core::CPU::valueInferenceNonZero;
  v6 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v1, 1);
  ODIE::Common::String::~String(v1);
}

BOOL _ZN12_GLOBAL__N_19isNonZeroIDF16_EEbT_(__n128 _Q0)
{
  __asm { FCVT            S1, H0 }

  *&v10 = _S1;
  LODWORD(v9) = 0;
  __asm { FCMP            H0, #0 }

  if (_ZF)
  {
    return 0;
  }

  if (!_ZF & _CF)
  {
    return 1;
  }

  if (fabsf(_S1) <= (fmaxf(_S1, 0.0) * 0.00000011921))
  {
    return 0;
  }

  v8 = v10 - v9;
  if (v10 - v9 < 0)
  {
    v8 = v9 - v10;
  }

  return v8 > 3;
}

BOOL anonymous namespace::isNonZero<float>(float a1)
{
  *&v4 = a1;
  LODWORD(v3) = 0;
  if (a1 == 0.0)
  {
    return 0;
  }

  if (a1 > 0.0)
  {
    return 1;
  }

  if (fabsf(a1) <= (fmaxf(a1, 0.0) * 0.00000011921))
  {
    return 0;
  }

  v2 = v4 - v3;
  if (v4 - v3 < 0)
  {
    v2 = v3 - v4;
  }

  return v2 > 3;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceLutToDense(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v6 = **a2;
  if (*(v6 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v27);
  }

  v7 = *(v6 + 40);
  v8 = *(v6 + 32);
  v9 = *a2[1];
  if (*(v9 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v28);
  }

  if (*(v9 + 32) != v8 + 2)
  {
    v29 = "coremlax.constexpr_lut_to_dense: Lut rank must be 2 more than indices rank. Lut rank is %d indices rank is %d";
    v31 = *(v9 + 32);
    v32 = *(v6 + 32);
LABEL_28:
    v25 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Palletization.cpp", "typeInferenceLutToDense", v29, v31, v32);
    return v25;
  }

  v10 = a2[2];
  if (!v10[1])
  {
    v29 = "coremlax.constexpr_lut_to_dense: Require vector_axis to have data to do type inference";
    goto LABEL_28;
  }

  if (*(*v10 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v30);
  }

  v11 = *(*v10 + 24);
  if (*(v11 + 8) != 1)
  {
    goto LABEL_19;
  }

  if (*(v11 + 24) != 25)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not int32.");
    return 2;
  }

  v12 = *v10[1];
  v13 = v8 & (v12 >> 31);
  v14 = (v13 + v12);
  if (v13 + v12 < 0 || v14 >= v8)
  {
    v29 = "coremlax.constexpr_lut_to_dense expects axis to be (-rank, rank). Rank = %d axis = %d";
    v31 = v8;
    v32 = (v13 + v12);
    goto LABEL_28;
  }

  v15 = *(*(v9 + 40) + 4 * v8 + 4);
  v16 = a1[1];
  v35 = *a1;
  v36 = v16;
  v37 = *(a1 + 4);
  v17 = odie_alloc_aligned(&v35, 4 * v8, 4, 0);
  v18 = v8;
  v19 = v17;
  do
  {
    v21 = *v7++;
    v20 = v21;
    if (v14)
    {
      v22 = 1;
    }

    else
    {
      v22 = v15;
    }

    *v19++ = v22 * v20;
    --v14;
    --v18;
  }

  while (v18);
  v23 = *(v9 + 24);
  if (*(v23 + 8) != 1)
  {
LABEL_19:
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    return 2;
  }

  v24 = a1[1];
  v35 = *a1;
  v36 = v24;
  v37 = *(a1 + 4);
  ODIE::Common::NDArrayType::create(&v35, v23, v8, v17, v8, &ODIE::Common::Constants::kDefaultDimOrdering, v8, &v33);
  if ((v34 & 1) == 0)
  {
    return v33;
  }

  v25 = 0;
  *a4 = v33;
  return v25;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceLutToDense(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  v95 = *MEMORY[0x277D85DE8];
  if (a3 != 3 || *(**a2 + 8) != 2)
  {
    v68 = "coremlax.constexpr_lut_to_dense expects 3 packed NDArrayType inputs.";
LABEL_84:
    v37 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp";
    v38 = "validateOperandsAreNdArrayType";
    v39 = "%s";
    goto LABEL_85;
  }

  v8 = 1;
  do
  {
    if (v8 == 3)
    {
      goto LABEL_7;
    }

    v9 = *(*a2[v8++] + 8);
  }

  while (v9 == 2);
  v10 = v8 - 2;
  v11 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "coremlax.constexpr_lut_to_dense expects 3 packed NDArrayType inputs.");
  if (v10 < 2)
  {
    return v11;
  }

LABEL_7:
  if (a5 != 1 || (v12 = *a4, v13 = **a4, *(v13 + 8) != 2))
  {
    v68 = "coremlax.constexpr_lut_to_dense expects a packed NDArrayType output.";
    goto LABEL_84;
  }

  v14 = 0;
  v15 = 1;
  while (1)
  {
    v16 = a2[v14];
    if (*(*v16 + 16))
    {
      if (!v16[1])
      {
        break;
      }
    }

    v15 = v14++ < 2;
    if (v14 == 3)
    {
      goto LABEL_13;
    }
  }

  v11 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v14);
  if (!v15)
  {
    v12 = *a4;
    v13 = **a4;
LABEL_13:
    if (*(v13 + 16) && !v12[1])
    {
      v37 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp";
      v38 = "validateOperandsHaveData";
      v39 = "Operand %lld does not have data bound.";
      v73 = 0;
      goto LABEL_45;
    }

    v17 = *a2;
    v18 = **a2;
    if (*(v18 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v69);
    }

    v19 = *(v18 + 32);
    v20 = a2[1];
    v21 = *v20;
    if (*(*v20 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v70);
    }

    v22 = a2[2];
    if (*(*v22 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v71);
    }

    v23 = *(*v22 + 24);
    if (*(v23 + 8) != 1)
    {
      goto LABEL_88;
    }

    if (*(v23 + 24) != 25)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not int32.");
      return 2;
    }

    v24 = *v22[1];
    v25 = v19 & (v24 >> 31);
    v26 = (v25 + v24);
    if (v25 + v24 < 0 || v26 >= v19)
    {
      v37 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Palletization.cpp";
      v38 = "valueInferenceLutToDense";
      v39 = "coremlax.constexpr_lut_to_dense expects axis to be (-rank, rank). Rank = %d axis = %d";
      v73 = *(v18 + 32);
      v74 = (v25 + v24);
      goto LABEL_45;
    }

    v27 = *a4;
    v83 = **a4;
    if (*(v83 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v72);
    }

    v28 = *(v18 + 32);
    v82 = *(v21 + 32);
    if (v82 == v28 + 2)
    {
      v29 = *(v18 + 40);
      v30 = *(v21 + 40);
      if (v28 >= 1)
      {
        v31 = 0;
        while (1)
        {
          v32 = *(v29 + 4 * v31);
          if (v32 % v30[v31])
          {
            break;
          }

          if (v28 == ++v31)
          {
            goto LABEL_28;
          }
        }

        v37 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Palletization.cpp";
        v75 = v31;
        v76 = v30[v31];
        v38 = "validateLutToDense";
        v39 = "coremlax.constexpr_lut_to_dense: Indices.shape[%d] = %d, is not a multiple of Lut.shape[%d] = %d";
        v73 = v31;
        v74 = v32;
        goto LABEL_45;
      }

LABEL_28:
      v33 = *(v18 + 24);
      if (*(v33 + 8) == 1)
      {
        v34 = &v30[v28];
        v35 = *v34;
        v36 = *(v33 + 24);
        if (v36 > 34)
        {
          switch(v36)
          {
            case '#':
              if (v35 != 16)
              {
                v37 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Palletization.cpp";
                v38 = "validateLutToDense";
                v39 = "coremlax.constexpr_lut_to_dense: Num pallettes must be 16 for uint4 indices type";
                goto LABEL_45;
              }

              goto LABEL_49;
            case '%':
              if (v35 != 64)
              {
                v37 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Palletization.cpp";
                v38 = "validateLutToDense";
                v39 = "coremlax.constexpr_lut_to_dense: Num pallettes must be 64 for uint6 indices type";
                goto LABEL_45;
              }

              goto LABEL_49;
            case '\'':
              if (v35 != 256)
              {
                v37 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Palletization.cpp";
                v38 = "validateLutToDense";
                v39 = "coremlax.constexpr_lut_to_dense: Num pallettes must be 256 for uint8 indices type";
                goto LABEL_45;
              }

              goto LABEL_49;
          }
        }

        else
        {
          switch(v36)
          {
            case ' ':
              if (v35 != 2)
              {
                v37 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Palletization.cpp";
                v38 = "validateLutToDense";
                v39 = "coremlax.constexpr_lut_to_dense: Num pallettes must be 2 for uint1 indices type";
                goto LABEL_45;
              }

              goto LABEL_49;
            case '!':
              if (v35 != 4)
              {
                v37 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Palletization.cpp";
                v38 = "validateLutToDense";
                v39 = "coremlax.constexpr_lut_to_dense: Num pallettes must be 4 for uint2 indices type";
                goto LABEL_45;
              }

LABEL_49:
              v40 = *(v83 + 32);
              if (v40 == v28)
              {
                if (v28 >= 1)
                {
                  v40 = 0;
                  v41 = *(v83 + 40);
                  v42 = v34[1];
                  do
                  {
                    if (v26 == v40)
                    {
                      v43 = (*(v29 + 4 * v26) * v42);
                      if (*(v41 + 4 * v26) != v43)
                      {
                        v37 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Palletization.cpp";
                        v74 = *(v41 + 4 * v26);
                        v75 = v43;
                        v38 = "validateLutToDense";
                        v39 = "coremlax.constexpr_lut_to_dense: outputShape[%d] is %d, expect it to %d";
                        v73 = v26;
                        goto LABEL_45;
                      }
                    }

                    else
                    {
                      v44 = *(v29 + 4 * v40);
                      if (*(v41 + 4 * v40) != v44)
                      {
                        v37 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Palletization.cpp";
                        v74 = *(v41 + 4 * v40);
                        v75 = v44;
                        v38 = "validateLutToDense";
                        v39 = "coremlax.constexpr_lut_to_dense: outputShape[%d] is %d, expect it to %d";
                        goto LABEL_87;
                      }
                    }

                    ++v40;
                  }

                  while (v28 != v40);
                }

                v45 = *(v21 + 24);
                if (*(v45 + 8) == 1)
                {
                  v46 = v30[v82 - 1];
                  v47 = *(v45 + 16);
                  v94 = 0;
                  memset(v93, 0, sizeof(v93));
                  if (v28 >= 1)
                  {
                    v48 = v93;
                    v49 = v29;
                    v50 = v28;
                    do
                    {
                      v52 = *v49++;
                      v51 = v52;
                      v53 = *v30++;
                      *v48++ = v51 / v53;
                      --v50;
                    }

                    while (v50);
                  }

                  v92 = 0;
                  memset(v91, 0, sizeof(v91));
                  v90 = 0;
                  memset(__dst, 0, sizeof(__dst));
                  v54 = *(v18 + 24);
                  if (*(v54 + 8) == 1)
                  {
                    v80 = v28;
                    v81 = v18;
                    v79 = *(v17 + 8);
                    v78 = *(v54 + 24);
                    v55 = v20[1];
                    v56 = v27[1];
                    v57 = *(v83 + 32);
                    ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(v86, v29, v28);
                    if (v88)
                    {
                      return 0;
                    }

                    __n = 4 * v28;
                    while (1)
                    {
                      v58 = v87[10];
                      memcpy(__dst, v87, __n);
                      *(__dst + v26) *= v46;
                      v59 = v80;
                      if (v80 >= 1)
                      {
                        v60 = v91;
                        v61 = v93;
                        v62 = v87;
                        do
                        {
                          v64 = *v62++;
                          v63 = v64;
                          v65 = *v61++;
                          *v60++ = v63 / v65;
                          --v59;
                        }

                        while (v59);
                      }

                      ODIE::Common::NDArrayType::ravelMultiIndex(v81, v87, v58, &v84);
                      v11 = v84;
                      if ((v85 & 1) == 0)
                      {
                        break;
                      }

                      *(v91 + v82 - 2) = ODIE::Kernels::Core::CPU::Utils::getSubByteIntegerFromStream(v79, v84, v78);
                      if (v46 >= 1)
                      {
                        v66 = 0;
                        do
                        {
                          *(v91 + v82 - 1) = v66;
                          ODIE::Common::NDArrayType::ravelMultiIndex(v21, v91, v82, &v84);
                          v11 = v84;
                          if (v85 != 1)
                          {
                            goto LABEL_76;
                          }

                          ODIE::Common::NDArrayType::ravelMultiIndex(v83, __dst, v57, &v84);
                          if (v85 != 1)
                          {
                            v11 = v84;
                            goto LABEL_76;
                          }

                          memcpy((v56 + v47 * v84), (v55 + v47 * v11), v47);
                          ++*(__dst + v26);
                        }

                        while (v46 != ++v66);
                      }

                      ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(v86);
                      if (v88 == 1)
                      {
                        return 0;
                      }
                    }

LABEL_76:
                    if (!v11)
                    {
                      return 0;
                    }

                    return v11;
                  }
                }

                goto LABEL_88;
              }

              v37 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Palletization.cpp";
              v38 = "validateLutToDense";
              v39 = "coremlax.constexpr_lut_to_dense: output rank is %d but indices rank is %d";
              v74 = v28;
LABEL_87:
              v73 = v40;
LABEL_45:
              v11 = 1;
              odie_log(1, v37, v38, v39, v73, v74, v75, v76);
              return v11;
            case '""':
              if (v35 != 8)
              {
                v37 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Palletization.cpp";
                v38 = "validateLutToDense";
                v39 = "coremlax.constexpr_lut_to_dense: Num pallettes must be 8 for uint3 indices type";
                goto LABEL_45;
              }

              goto LABEL_49;
          }
        }

        v37 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Palletization.cpp";
        v38 = "validateLutToDense";
        v39 = "coremlax.constexpr_lut_to_dense: Unexpected scalar tag for indices input %d";
        v73 = v36;
        goto LABEL_45;
      }

LABEL_88:
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      return 2;
    }

    v37 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Palletization.cpp";
    v38 = "validateLutToDense";
    v39 = "coremlax.constexpr_lut_to_dense: Lut rank must be 2 more than indices rank. Lut rank is %d indices rank is %d";
    v74 = *(v18 + 32);
    v68 = *(v21 + 32);
LABEL_85:
    v73 = v68;
    goto LABEL_45;
  }

  return v11;
}

void ODIE::Kernels::Core::CPU::registerPalletizationKernels(_OWORD **a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1[40] = 0;
  v2 = "coremlax.constexpr_lut_to_dense";
  v3 = 63;
  v4 = ODIE::Kernels::Core::CPU::typeInferenceLutToDense;
  v5 = ODIE::Kernels::Core::CPU::valueInferenceLutToDense;
  v6 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v1, 1);
  ODIE::Common::String::~String(v1);
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceMaxPool2d(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v4 = a2[1][1];
  if (!v4)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Pooling.cpp", "typeInferenceMaxPool2d", "coreml.max_pool_2d: Cannot do type inference without kernel size data.");
    return 2;
  }

  v5 = a2[2][1];
  if (!v5)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Pooling.cpp", "typeInferenceMaxPool2d", "coreml.max_pool_2d: Cannot do type inference without stride data.");
    return 2;
  }

  v6 = a2[3][1];
  if (!v6)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Pooling.cpp", "typeInferenceMaxPool2d", "coreml.max_pool_2d: Cannot do type inference without padding data.");
    return 2;
  }

  v7 = a2[4][1];
  if (!v7)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Pooling.cpp", "typeInferenceMaxPool2d", "coreml.max_pool_2d: Cannot do type inference without dilation data.");
    return 2;
  }

  v8 = a2[5];
  if (!v8[1])
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Pooling.cpp", "typeInferenceMaxPool2d", "coreml.max_pool_2d: Cannot do type inference without ceil_mode data.");
    return 2;
  }

  v10 = **a2;
  if (*(v10 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v27);
  }

  v11 = *(v10 + 40);
  v12 = *v11;
  v13 = v11[1];
  if (*(*v8 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v28);
  }

  v14 = *(*v8 + 24);
  if (*(v14 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    return 2;
  }

  if (*(v14 + 24) != 16)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not BOOLean.");
    return 2;
  }

  v15 = 4 * *(v10 + 32);
  v16 = vadd_s32(vadd_s32(vadd_s32(*v6, *v6), v13), vmvn_s8(vmul_s32(vadd_s32(*v4, -1), *v7)));
  v17.i64[0] = v16.i32[0];
  v17.i64[1] = v16.i32[1];
  v18 = vcvtq_f64_s64(v17);
  v17.i64[0] = *v5;
  v17.i64[1] = HIDWORD(*v5);
  v19 = vdivq_f64(v18, vcvtq_f64_s64(v17));
  v20 = vdup_n_s32(*v8[1]);
  v17.i64[0] = v20.u32[0];
  v17.i64[1] = v20.u32[1];
  v21 = vadd_s32(vmovn_s64(vcvtq_s64_f64(vbslq_s8(vcltzq_s64(vshlq_n_s64(v17, 0x3FuLL)), vrndpq_f64(v19), vrndmq_f64(v19)))), 0x100000001);
  v22 = a1[1];
  v32 = *a1;
  v33 = v22;
  v34 = *(a1 + 4);
  v23 = odie_alloc_aligned(&v32, v15, 4, 0);
  *v23 = v12;
  *(v23 + 8) = v21;
  v24 = *(v10 + 32);
  v34 = *(a1 + 4);
  v25 = a1[1];
  v32 = *a1;
  v33 = v25;
  ODIE::Common::NDArrayType::create(&v32, *(v10 + 24), v24, v23, v24, &ODIE::Common::Constants::kDefaultDimOrdering, v24, &v30);
  if ((v31 & 1) == 0)
  {
    return v30;
  }

  result = 0;
  *a4 = v30;
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceMaxPool2d(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v167 = *MEMORY[0x277D85DE8];
  if (a3 < 1)
  {
    goto LABEL_6;
  }

  v9 = 0;
  v10 = 1;
  while (1)
  {
    v11 = a2[v9];
    if (*(*v11 + 16))
    {
      if (!v11[1])
      {
        break;
      }
    }

    v10 = ++v9 < a3;
    if (a3 == v9)
    {
      goto LABEL_6;
    }
  }

  v18 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v9);
  if (!v10)
  {
LABEL_6:
    if (a5 >= 1)
    {
      v12 = 0;
      v13 = 1;
      while (1)
      {
        v14 = *(a4 + 8 * v12);
        if (*(*v14 + 16))
        {
          if (!v14[1])
          {
            break;
          }
        }

        v13 = ++v12 < a5;
        if (a5 == v12)
        {
          goto LABEL_11;
        }
      }

      v18 = 1;
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v12);
      if (v13)
      {
        return v18;
      }
    }

LABEL_11:
    if (a3 == 6 && *(**a2 + 8) == 2)
    {
      v15 = 1;
      while (v15 != 6)
      {
        v16 = *(*a2[v15++] + 8);
        if (v16 != 2)
        {
          v17 = v15 - 2;
          v18 = 1;
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "max_pool_2d expects 6 packed NDArrayType inputs.");
          if (v17 < 5)
          {
            return v18;
          }

          break;
        }
      }

      if (a5 == 1 && *(**a4 + 8) == 2)
      {
        v19 = **a2;
        if (*(v19 + 8) != 2)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v132);
        }

        v20 = *(v19 + 24);
        if (*(v20 + 8) == 1)
        {
          v21 = *(v20 + 24);
          switch(v21)
          {
            case 25:
              v61 = *a2;
              v62 = a2[1][1];
              v63 = a2[2][1];
              v64 = a2[3][1];
              v65 = a2[4][1];
              v66 = *v61;
              if (*(*v61 + 8) != 2)
              {
                odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                ODIE::Platform::abort(v135);
              }

              v67 = *(v66 + 40);
              v68 = v61[1];
              v69 = *a4;
              if (*(*v69 + 8) != 2)
              {
                odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                ODIE::Platform::abort(v136);
              }

              v148 = *v67;
              if (*v67 >= 1)
              {
                v70 = 0;
                v71 = *(*v69 + 40);
                v72 = v69[1];
                v73 = v67[2];
                v154 = v67[1];
                v74 = v67[3];
                v76 = *(v71 + 8);
                v75 = *(v71 + 12);
                do
                {
                  v163 = v70;
                  v151 = v70;
                  v159 = v70;
                  if (v154 >= 1)
                  {
                    v77 = 0;
                    do
                    {
                      v164 = v77;
                      v157 = v77;
                      v160 = v77;
                      if (v76 >= 1)
                      {
                        for (i = 0; i != v76; ++i)
                        {
                          if (v75 >= 1)
                          {
                            for (j = 0; j != v75; ++j)
                            {
                              v80 = 0;
                              v161 = i;
                              v162 = j;
                              v81 = 1;
                              for (k = 12; k != -4; k -= 4)
                              {
                                v80 += *(&v159 + k) * v81;
                                v81 *= *(v71 + k);
                              }

                              v83 = *v63 * i - *v64;
                              v84 = *v62 - 1;
                              v85 = *v65;
                              v86 = v84 + v83 + (*v65 - 1) * v84;
                              if (v83 <= v86)
                              {
                                v87 = v63[1] * j - v64[1];
                                v88 = v65[1];
                                v89 = v62[1] - 1 + v87 + (v88 - 1) * (v62[1] - 1);
                                v90 = -INFINITY;
                                do
                                {
                                  for (m = v87; m <= v89; m += v88)
                                  {
                                    v92 = 0.0;
                                    if ((v83 & 0x80000000) == 0 && m < v74 && v83 < v73 && (m & 0x80000000) == 0)
                                    {
                                      v93 = 0;
                                      v165 = v83;
                                      v166 = m;
                                      v94 = 1;
                                      for (n = 12; n != -4; n -= 4)
                                      {
                                        v93 += *(&v163 + n) * v94;
                                        v94 *= *(*(v66 + 40) + n);
                                      }

                                      v92 = *(v68 + 4 * v93);
                                    }

                                    if (v90 < v92)
                                    {
                                      v90 = v92;
                                    }
                                  }

                                  v83 += v85;
                                }

                                while (v83 <= v86);
                                v84 = v90;
                              }

                              *(v72 + 4 * v80) = v84;
                            }
                          }
                        }
                      }

                      v77 = v157 + 1;
                    }

                    while (v157 + 1 != v154);
                  }

                  v70 = v151 + 1;
                }

                while (v151 + 1 != v148);
              }

              return 0;
            case 69:
              v155 = a2[2][1];
              v158 = a2[1][1];
              v149 = a2[4][1];
              v152 = a2[3][1];
              v96 = **a2;
              if (*(v96 + 8) != 2)
              {
                odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                ODIE::Platform::abort(v137);
              }

              v97 = *(v96 + 40);
              v98 = (*a2)[1];
              v99 = *a4;
              if (*(*v99 + 8) != 2)
              {
                odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                ODIE::Platform::abort(v138);
              }

              v140 = *v97;
              if (*v97 >= 1)
              {
                v100 = 0;
                v101 = *(*v99 + 40);
                v102 = v99[1];
                v103 = v97[2];
                v144 = v97[1];
                v104 = v97[3];
                v106 = *(v101 + 8);
                v105 = *(v101 + 12);
                do
                {
                  v163 = v100;
                  v142 = v100;
                  v159 = v100;
                  if (v144 >= 1)
                  {
                    v107 = 0;
                    do
                    {
                      v164 = v107;
                      v146 = v107;
                      v160 = v107;
                      if (v106 >= 1)
                      {
                        for (ii = 0; ii != v106; ++ii)
                        {
                          if (v105 >= 1)
                          {
                            v109 = 0;
                            v110 = v155[1];
                            v111 = *v155 * ii - *v152;
                            v112 = *v149;
                            v113 = v149[1];
                            v114 = *v158 - 1 + v111 + (*v149 - 1) * (*v158 - 1);
                            v115 = v113 * (v158[1] - 1);
                            v116 = -v152[1];
                            do
                            {
                              v117 = 0;
                              v161 = ii;
                              v162 = v109;
                              v118 = 1;
                              for (jj = 12; jj != -4; jj -= 4)
                              {
                                v117 += *(&v159 + jj) * v118;
                                v118 *= *(v101 + jj);
                              }

                              if (v111 <= v114)
                              {
                                v121 = v116 + v109 * v110;
                                v122 = v121 + v115;
                                v123 = -INFINITY;
                                v124 = v111;
                                do
                                {
                                  v125 = v116 + v109 * v110;
                                  if (v121 <= v122)
                                  {
                                    do
                                    {
                                      v126 = 0.0;
                                      if ((v124 & 0x80000000) == 0 && v125 < v104 && v124 < v103 && (v125 & 0x80000000) == 0)
                                      {
                                        v127 = 0;
                                        v165 = v124;
                                        v166 = v125;
                                        v128 = 1;
                                        for (kk = 12; kk != -4; kk -= 4)
                                        {
                                          v127 += *(&v163 + kk) * v128;
                                          v128 *= *(*(v96 + 40) + kk);
                                        }

                                        v126 = *(v98 + 4 * v127);
                                      }

                                      if (v123 < v126)
                                      {
                                        v123 = v126;
                                      }

                                      v125 += v113;
                                    }

                                    while (v125 <= v122);
                                  }

                                  v124 += v112;
                                }

                                while (v124 <= v114);
                                v120 = v123;
                              }

                              else
                              {
                                v120 = -INFINITY;
                              }

                              *(v102 + 4 * v117) = v120;
                              ++v109;
                            }

                            while (v109 != v105);
                          }
                        }
                      }

                      v107 = v146 + 1;
                    }

                    while (v146 + 1 != v144);
                  }

                  v100 = v142 + 1;
                }

                while (v142 + 1 != v140);
              }

              return 0;
            case 68:
              v153 = a2[2][1];
              v156 = a2[1][1];
              v147 = a2[4][1];
              v150 = a2[3][1];
              v22 = **a2;
              if (*(v22 + 8) != 2)
              {
                odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                ODIE::Platform::abort(v133);
              }

              v23 = *(v22 + 40);
              v24 = (*a2)[1];
              v25 = *a4;
              if (*(*v25 + 8) != 2)
              {
                odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                ODIE::Platform::abort(v134);
              }

              v139 = *v23;
              if (*v23 >= 1)
              {
                v26 = 0;
                v27 = *(*v25 + 40);
                v28 = v25[1];
                v29 = v23[2];
                v143 = v23[1];
                v30 = v23[3];
                v32 = *(v27 + 8);
                v31 = *(v27 + 12);
                do
                {
                  v163 = v26;
                  v141 = v26;
                  v159 = v26;
                  if (v143 >= 1)
                  {
                    v33 = 0;
                    do
                    {
                      v164 = v33;
                      v145 = v33;
                      v160 = v33;
                      if (v32 >= 1)
                      {
                        for (mm = 0; mm != v32; ++mm)
                        {
                          if (v31 >= 1)
                          {
                            v35 = 0;
                            v36 = v153[1];
                            v37 = *v153 * mm - *v150;
                            v38 = *v147;
                            v39 = v147[1];
                            v40 = *v156 - 1 + v37 + (*v147 - 1) * (*v156 - 1);
                            v41 = v39 * (v156[1] - 1);
                            v42 = -v150[1];
                            do
                            {
                              v43 = 0;
                              v161 = mm;
                              v162 = v35;
                              v44 = 1;
                              for (nn = 12; nn != -4; nn -= 4)
                              {
                                v43 += *(&v159 + nn) * v44;
                                v44 *= *(v27 + nn);
                              }

                              _H1 = -1024;
                              if (v37 <= v40)
                              {
                                v47 = v42 + v35 * v36;
                                v48 = v47 + v41;
                                _D1 = -INFINITY;
                                v50 = v37;
                                do
                                {
                                  v51 = v42 + v35 * v36;
                                  if (v47 <= v48)
                                  {
                                    do
                                    {
                                      _D2 = 0.0;
                                      if ((v50 & 0x80000000) == 0 && v51 < v30 && v50 < v29 && (v51 & 0x80000000) == 0)
                                      {
                                        v53 = 0;
                                        v165 = v50;
                                        v166 = v51;
                                        v54 = 1;
                                        for (i1 = 12; i1 != -4; i1 -= 4)
                                        {
                                          v53 += *(&v163 + i1) * v54;
                                          v54 *= *(*(v22 + 40) + i1);
                                        }

                                        _H2 = *(v24 + 2 * v53);
                                        __asm { FCVT            D2, H2 }
                                      }

                                      if (_D1 < _D2)
                                      {
                                        _D1 = _D2;
                                      }

                                      v51 += v39;
                                    }

                                    while (v51 <= v48);
                                  }

                                  v50 += v38;
                                }

                                while (v50 <= v40);
                                __asm { FCVT            H1, D1 }
                              }

                              *(v28 + 2 * v43) = _H1;
                              ++v35;
                            }

                            while (v35 != v31);
                          }
                        }
                      }

                      v33 = v145 + 1;
                    }

                    while (v145 + 1 != v143);
                  }

                  v26 = v141 + 1;
                }

                while (v141 + 1 != v139);
              }

              return 0;
          }

          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Pooling.cpp", "valueInferenceMaxPool2d", "unsupported input dtype in max_pool_2d");
        }

        else
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        }

        return 2;
      }

      v131 = "max_pool_2d expects 1 packed NDArrayType output.";
    }

    else
    {
      v131 = "max_pool_2d expects 6 packed NDArrayType inputs.";
    }

    v18 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", v131);
  }

  return v18;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceAvgPool2d(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v4 = a2[1][1];
  if (!v4)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Pooling.cpp", "typeInferenceAvgPool2d", "coreml.avg_pool_2d: Cannot do type inference without kernel size data.");
    return 2;
  }

  v5 = a2[2][1];
  if (!v5)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Pooling.cpp", "typeInferenceAvgPool2d", "coreml.avg_pool_2d: Cannot do type inference without stride data.");
    return 2;
  }

  v6 = a2[3][1];
  if (!v6)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Pooling.cpp", "typeInferenceAvgPool2d", "coreml.avg_pool_2d: Cannot do type inference without padding data.");
    return 2;
  }

  v7 = a2[4];
  if (!v7[1])
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Pooling.cpp", "typeInferenceAvgPool2d", "coreml.avg_pool_2d: Cannot do type inference without ceil_mode data.");
    return 2;
  }

  if (!a2[5][1])
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Pooling.cpp", "typeInferenceAvgPool2d", "coreml.avg_pool_2d: Cannot do type inference without count_include_pad data.");
    return 2;
  }

  if (!a2[6][1])
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Pooling.cpp", "typeInferenceAvgPool2d", "coreml.avg_pool_2d: Cannot do type inference without divisor_override data.");
    return 2;
  }

  v10 = **a2;
  if (*(v10 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v30);
  }

  v11 = *(v10 + 40);
  v12 = *v11;
  v13 = v11[1];
  if (*(*v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v31);
  }

  v14 = *(*v7 + 24);
  if (*(v14 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    return 2;
  }

  if (*(v14 + 24) != 16)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not BOOLean.");
    return 2;
  }

  v15 = vsub_s32(vadd_s32(vadd_s32(*v6, *v6), v13), *v4);
  v16.i64[0] = v15.i32[0];
  v16.i64[1] = v15.i32[1];
  v17 = vcvtq_f64_s64(v16);
  v16.i64[0] = v5->i32[0];
  v16.i64[1] = HIDWORD(*v5);
  v18 = vdivq_f64(v17, vcvtq_f64_s64(v16));
  v19 = vdup_n_s32(*v7[1]);
  v16.i64[0] = v19.u32[0];
  v16.i64[1] = v19.u32[1];
  *&v18.f64[0] = vmovn_s64(vcvtq_s64_f64(vbslq_s8(vcltzq_s64(vshlq_n_s64(v16, 0x3FuLL)), vrndpq_f64(v18), vrndmq_f64(v18))));
  v20 = vadd_s32(*&v18.f64[0], 0x100000001);
  v21 = vbsl_s8(vcgt_s32(vadd_s32(*v6, v13), vmul_s32(*v5, *&v18.f64[0])), v20, *&v18.f64[0]);
  if (*v7[1])
  {
    v22 = -1;
  }

  else
  {
    v22 = 0;
  }

  v23 = vbsl_s8(vdup_n_s32(v22), v21, v20);
  v24 = 4 * *(v10 + 32);
  v25 = a1[1];
  v34 = *a1;
  v35 = v25;
  v36 = *(a1 + 4);
  v26 = odie_alloc_aligned(&v34, v24, 4, 0);
  *v26 = v12;
  *(v26 + 8) = v23;
  v27 = *(v10 + 32);
  v36 = *(a1 + 4);
  v28 = a1[1];
  v34 = *a1;
  v35 = v28;
  ODIE::Common::NDArrayType::create(&v34, *(v10 + 24), v27, v26, v27, &ODIE::Common::Constants::kDefaultDimOrdering, v27, &v32);
  if ((v33 & 1) == 0)
  {
    return v32;
  }

  result = 0;
  *a4 = v32;
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceAvgPool2d(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v202 = *MEMORY[0x277D85DE8];
  if (a3 < 1)
  {
    goto LABEL_6;
  }

  v9 = 0;
  v10 = 1;
  while (1)
  {
    v11 = a2[v9];
    if (*(*v11 + 16))
    {
      if (!v11[1])
      {
        break;
      }
    }

    v10 = ++v9 < a3;
    if (a3 == v9)
    {
      goto LABEL_6;
    }
  }

  v18 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v9);
  if (!v10)
  {
LABEL_6:
    if (a5 >= 1)
    {
      v12 = 0;
      v13 = 1;
      while (1)
      {
        v14 = *(a4 + 8 * v12);
        if (*(*v14 + 16))
        {
          if (!v14[1])
          {
            break;
          }
        }

        v13 = ++v12 < a5;
        if (a5 == v12)
        {
          goto LABEL_11;
        }
      }

      v18 = 1;
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v12);
      if (v13)
      {
        return v18;
      }
    }

LABEL_11:
    if (a3 == 7 && *(**a2 + 8) == 2)
    {
      v15 = 1;
      while (v15 != 7)
      {
        v16 = *(*a2[v15++] + 8);
        if (v16 != 2)
        {
          v17 = v15 - 2;
          v18 = 1;
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "avg_pool_2d expects 7 packed NDArrayType inputs.");
          if (v17 < 6)
          {
            return v18;
          }

          break;
        }
      }

      if (a5 == 1 && *(**a4 + 8) == 2)
      {
        v19 = **a2;
        if (*(v19 + 8) != 2)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v156);
        }

        v20 = *(v19 + 24);
        if (*(v20 + 8) == 1)
        {
          v21 = *(v20 + 24);
          switch(v21)
          {
            case 25:
              v70 = a2[1][1];
              v71 = a2[2][1];
              v72 = a2[3][1];
              v73 = a2[5];
              if (*(*v73 + 8) != 2)
              {
                odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                ODIE::Platform::abort(v158);
              }

              v74 = *(*v73 + 24);
              if (*(v74 + 8) == 1)
              {
                if (*(v74 + 24) == 16)
                {
                  v75 = *v73[1];
                  v76 = a2[6];
                  if (*(*v76 + 8) != 2)
                  {
                    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                    ODIE::Platform::abort(v161);
                  }

                  v77 = *(*v76 + 24);
                  if (*(v77 + 8) == 1)
                  {
                    if (*(v77 + 24) == 25)
                    {
                      v78 = *v76[1];
                      v79 = *a2;
                      v80 = **a2;
                      if (*(v80 + 8) != 2)
                      {
                        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                        ODIE::Platform::abort(v165);
                      }

                      v81 = *(v80 + 40);
                      v82 = v79[1];
                      v83 = *a4;
                      if (*(*v83 + 8) != 2)
                      {
                        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                        ODIE::Platform::abort(v166);
                      }

                      v192 = v81->i32[0];
                      if (v81->i32[0] >= 1)
                      {
                        v84 = 0;
                        v85 = *(*v83 + 40);
                        v86 = v83[1];
                        v87 = v81->i32[1];
                        v88 = *(v85 + 8);
                        v89 = *(v85 + 12);
                        v90 = vadd_s32(v81[1], -1);
                        v91 = (v78 != 0) | v75;
                        do
                        {
                          v198 = v84;
                          v194 = v84;
                          if (v87 >= 1)
                          {
                            for (i = 0; i != v87; ++i)
                            {
                              v199 = i;
                              v195 = i;
                              if (v88 >= 1)
                              {
                                for (j = 0; j != v88; ++j)
                                {
                                  if (v89 >= 1)
                                  {
                                    for (k = 0; k != v89; ++k)
                                    {
                                      v95 = 0;
                                      v196 = j;
                                      v197 = k;
                                      v96 = 1;
                                      for (m = 12; m != -4; m -= 4)
                                      {
                                        v95 += *(&v194 + m) * v96;
                                        v96 *= *(v85 + m);
                                      }

                                      v98 = vmla_s32(vneg_s32(*v72), *v71, __PAIR64__(k, j));
                                      v99 = vmin_s32(vadd_s32(*v72, v90), vadd_s32(v98, vadd_s32(*v70, -1)));
                                      v100 = vmax_s32(v98, 0);
                                      v101 = vmin_s32(v90, v99);
                                      v102 = v100.i32[0];
                                      v103 = 0.0;
                                      if (v100.i32[0] <= v101.i32[0])
                                      {
                                        do
                                        {
                                          if (v100.i32[1] <= v101.i32[1])
                                          {
                                            v104 = *(v80 + 40);
                                            v105 = v100.i32[1];
                                            do
                                            {
                                              v106 = 0;
                                              v200 = v102;
                                              v201 = v105;
                                              v107 = 1;
                                              for (n = 12; n != -4; n -= 4)
                                              {
                                                v106 += *(&v198 + n) * v107;
                                                v107 *= *(v104 + n);
                                              }

                                              v103 = v103 + *(v82 + 4 * v106);
                                              _ZF = v105++ == v101.i32[1];
                                            }

                                            while (!_ZF);
                                          }

                                          _ZF = v102++ == v101.i32[0];
                                        }

                                        while (!_ZF);
                                      }

                                      v109 = vsub_s32(v99, v98);
                                      v110 = v109.i32[0] + 1 + (v109.i32[0] + 1) * v109.i32[1];
                                      if (v78)
                                      {
                                        v110 = v78;
                                      }

                                      if ((v91 & 1) == 0)
                                      {
                                        v111 = vadd_s32(vsub_s32(v101, v100), 0x100000001);
                                        v110 = vmul_lane_s32(v111, v111, 1).u32[0];
                                      }

                                      *(v86 + 4 * v95) = (v103 / v110);
                                    }
                                  }
                                }
                              }
                            }
                          }

                          ++v84;
                        }

                        while (v84 != v192);
                      }

                      return 0;
                    }

LABEL_169:
                    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not int32.");
                    return 2;
                  }

                  break;
                }

                goto LABEL_168;
              }

              break;
            case 69:
              v182 = a2[2][1];
              v184 = a2[1][1];
              v180 = a2[3][1];
              v112 = a2[5];
              if ((*v112)[8] != 2)
              {
                odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                ODIE::Platform::abort(v159);
              }

              v113 = *(*v112 + 3);
              if (*(v113 + 8) == 1)
              {
                if (*(v113 + 24) != 16)
                {
                  goto LABEL_168;
                }

                v190 = *v112[1];
                v114 = a2[6];
                if (*(*v114 + 8) != 2)
                {
                  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                  ODIE::Platform::abort(v162);
                }

                v115 = *(*v114 + 24);
                if (*(v115 + 8) == 1)
                {
                  if (*(v115 + 24) == 25)
                  {
                    v116 = *v114[1];
                    v117 = *a2;
                    v118 = **a2;
                    if (*(v118 + 8) != 2)
                    {
                      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                      ODIE::Platform::abort(v167);
                    }

                    v119 = *(v118 + 40);
                    v120 = v117[1];
                    v121 = *a4;
                    if (*(*v121 + 8) != 2)
                    {
                      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                      ODIE::Platform::abort(v168);
                    }

                    v170 = *v119;
                    if (*v119 >= 1)
                    {
                      v122 = 0;
                      v123 = *(*v121 + 40);
                      v188 = v121[1];
                      v174 = v119[1];
                      v186 = *(v123 + 8);
                      v193 = *(v123 + 12);
                      v178 = v119[2] - 1;
                      v124 = v119[3] - 1;
                      do
                      {
                        v198 = v122;
                        v172 = v122;
                        v194 = v122;
                        if (v174 >= 1)
                        {
                          v125 = 0;
                          do
                          {
                            v199 = v125;
                            v176 = v125;
                            v195 = v125;
                            if (v186 >= 1)
                            {
                              for (ii = 0; ii != v186; ++ii)
                              {
                                if (v193 >= 1)
                                {
                                  v127 = 0;
                                  v128 = v180[1];
                                  v129 = v182[1];
                                  v130 = *v182 * ii - *v180;
                                  v131 = *v180 + v178;
                                  if (v131 >= v130 + *v184 - 1)
                                  {
                                    v131 = v130 + *v184 - 1;
                                  }

                                  v132 = v128 + v124;
                                  v133 = v131 - v130 + 1;
                                  v134 = v130 & ~(v130 >> 31);
                                  if (v178 >= v131)
                                  {
                                    v135 = v131;
                                  }

                                  else
                                  {
                                    v135 = v178;
                                  }

                                  v136 = v184[1] - 1;
                                  v137 = -v128;
                                  do
                                  {
                                    v138 = 0;
                                    v196 = ii;
                                    v197 = v127;
                                    v139 = 1;
                                    for (jj = 12; jj != -4; jj -= 4)
                                    {
                                      v138 += *(&v194 + jj) * v139;
                                      v139 *= *(v123 + jj);
                                    }

                                    v141 = v137 + v127 * v129;
                                    if (v132 >= v136 + v141)
                                    {
                                      v142 = v136 + v141;
                                    }

                                    else
                                    {
                                      v142 = v132;
                                    }

                                    v143 = v141 & ~(v141 >> 31);
                                    if (v124 >= v142)
                                    {
                                      v144 = v142;
                                    }

                                    else
                                    {
                                      v144 = v124;
                                    }

                                    v145 = 0.0;
                                    if (v135 >= v134)
                                    {
                                      v146 = v134;
                                      do
                                      {
                                        if (v144 >= v143)
                                        {
                                          v147 = *(v118 + 40);
                                          v148 = v141 & ~(v141 >> 31);
                                          do
                                          {
                                            v149 = 0;
                                            v200 = v146;
                                            v201 = v148;
                                            v150 = 1;
                                            for (kk = 12; kk != -4; kk -= 4)
                                            {
                                              v149 += *(&v198 + kk) * v150;
                                              v150 *= *(v147 + kk);
                                            }

                                            v145 = v145 + *(v120 + 4 * v149);
                                            _ZF = v148++ == v144;
                                          }

                                          while (!_ZF);
                                        }

                                        _ZF = v146++ == v135;
                                      }

                                      while (!_ZF);
                                    }

                                    v152 = v133 + v133 * (v142 - v141);
                                    if (!v190)
                                    {
                                      v152 = v135 - v134 + 1 + (v135 - v134 + 1) * (v144 - v143);
                                    }

                                    if (v116)
                                    {
                                      v152 = v116;
                                    }

                                    v153 = v145 / v152;
                                    *(v188 + 4 * v138) = v153;
                                    ++v127;
                                  }

                                  while (v127 != v193);
                                }
                              }
                            }

                            v125 = v176 + 1;
                          }

                          while (v176 + 1 != v174);
                        }

                        v122 = v172 + 1;
                      }

                      while (v172 + 1 != v170);
                    }

                    return 0;
                  }

                  goto LABEL_169;
                }
              }

              break;
            case 68:
              v181 = a2[2][1];
              v183 = a2[1][1];
              v179 = a2[3][1];
              v22 = a2[5];
              if ((*v22)[8] != 2)
              {
                odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                ODIE::Platform::abort(v157);
              }

              v23 = *(*v22 + 3);
              if (*(v23 + 8) == 1)
              {
                if (*(v23 + 24) == 16)
                {
                  v189 = *v22[1];
                  v24 = a2[6];
                  if (*(*v24 + 8) != 2)
                  {
                    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                    ODIE::Platform::abort(v160);
                  }

                  v25 = *(*v24 + 24);
                  if (*(v25 + 8) == 1)
                  {
                    if (*(v25 + 24) == 25)
                    {
                      v26 = *v24[1];
                      v27 = *a2;
                      v28 = **a2;
                      if (*(v28 + 8) != 2)
                      {
                        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                        ODIE::Platform::abort(v163);
                      }

                      v29 = *(v28 + 40);
                      v30 = v27[1];
                      v31 = *a4;
                      if (*(*v31 + 8) != 2)
                      {
                        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                        ODIE::Platform::abort(v164);
                      }

                      v169 = *v29;
                      if (*v29 >= 1)
                      {
                        v32 = 0;
                        v33 = *(*v31 + 40);
                        v187 = v31[1];
                        v173 = v29[1];
                        v185 = *(v33 + 8);
                        v191 = *(v33 + 12);
                        v177 = v29[2] - 1;
                        v34 = v29[3] - 1;
                        do
                        {
                          v198 = v32;
                          v171 = v32;
                          v194 = v32;
                          if (v173 >= 1)
                          {
                            v35 = 0;
                            do
                            {
                              v199 = v35;
                              v175 = v35;
                              v195 = v35;
                              if (v185 >= 1)
                              {
                                for (mm = 0; mm != v185; ++mm)
                                {
                                  if (v191 >= 1)
                                  {
                                    v37 = 0;
                                    v38 = v179[1];
                                    v39 = v181[1];
                                    v40 = *v181 * mm - *v179;
                                    v41 = *v179 + v177;
                                    if (v41 >= v40 + *v183 - 1)
                                    {
                                      v41 = v40 + *v183 - 1;
                                    }

                                    v42 = v38 + v34;
                                    v43 = v41 - v40 + 1;
                                    v44 = v40 & ~(v40 >> 31);
                                    if (v177 >= v41)
                                    {
                                      v45 = v41;
                                    }

                                    else
                                    {
                                      v45 = v177;
                                    }

                                    v46 = v183[1] - 1;
                                    v47 = -v38;
                                    do
                                    {
                                      v48 = 0;
                                      v196 = mm;
                                      v197 = v37;
                                      v49 = 1;
                                      for (nn = 12; nn != -4; nn -= 4)
                                      {
                                        v48 += *(&v194 + nn) * v49;
                                        v49 *= *(v33 + nn);
                                      }

                                      v51 = v47 + v37 * v39;
                                      if (v42 >= v46 + v51)
                                      {
                                        v52 = v46 + v51;
                                      }

                                      else
                                      {
                                        v52 = v42;
                                      }

                                      v53 = v51 & ~(v51 >> 31);
                                      if (v34 >= v52)
                                      {
                                        v54 = v52;
                                      }

                                      else
                                      {
                                        v54 = v34;
                                      }

                                      v55 = 0.0;
                                      if (v45 >= v44)
                                      {
                                        v56 = v44;
                                        do
                                        {
                                          if (v54 >= v53)
                                          {
                                            v57 = *(v28 + 40);
                                            v58 = v51 & ~(v51 >> 31);
                                            do
                                            {
                                              v59 = 0;
                                              v200 = v56;
                                              v201 = v58;
                                              v60 = 1;
                                              for (i1 = 12; i1 != -4; i1 -= 4)
                                              {
                                                v59 += *(&v198 + i1) * v60;
                                                v60 *= *(v57 + i1);
                                              }

                                              _H1 = *(v30 + 2 * v59);
                                              __asm { FCVT            D1, H1 }

                                              v55 = v55 + _D1;
                                              _ZF = v58++ == v54;
                                            }

                                            while (!_ZF);
                                          }

                                          _ZF = v56++ == v45;
                                        }

                                        while (!_ZF);
                                      }

                                      v68 = v43 + v43 * (v52 - v51);
                                      if (!v189)
                                      {
                                        v68 = v45 - v44 + 1 + (v45 - v44 + 1) * (v54 - v53);
                                      }

                                      if (v26)
                                      {
                                        v68 = v26;
                                      }

                                      _D0 = v55 / v68;
                                      __asm { FCVT            H0, D0 }

                                      *(v187 + 2 * v48) = LOWORD(_D0);
                                      ++v37;
                                    }

                                    while (v37 != v191);
                                  }
                                }
                              }

                              v35 = v175 + 1;
                            }

                            while (v175 + 1 != v173);
                          }

                          v32 = v171 + 1;
                        }

                        while (v171 + 1 != v169);
                      }

                      return 0;
                    }

                    goto LABEL_169;
                  }

                  break;
                }

LABEL_168:
                odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not BOOLean.");
                return 2;
              }

              break;
            default:
              odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Pooling.cpp", "valueInferenceAvgPool2d", "unsupported input dtype in avg_pool_2d");
              return 2;
          }
        }

        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        return 2;
      }

      v155 = "avg_pool_2d expects 1 packed NDArrayType output.";
    }

    else
    {
      v155 = "avg_pool_2d expects 7 packed NDArrayType inputs.";
    }

    v18 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", v155);
  }

  return v18;
}

void ODIE::Kernels::Core::CPU::registerPoolingKernels(_OWORD **a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = "coreml.max_pool_2d";
  v5 = 37;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceMaxPool2d;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceMaxPool2d;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v3 = 0;
  v4 = "coreml.avg_pool_2d";
  v5 = 37;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceAvgPool2d;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceAvgPool2d;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceQuantize(uint64_t a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v5 = **a2;
  if (*(v5 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v12);
  }

  v6 = *(v5 + 40);
  v7 = *(v5 + 32);
  v8 = *a2[2];
  if (*(v8 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v13);
  }

  v9 = *(v8 + 24);
  if (*(v9 + 8) == 1)
  {
    v10 = *(a1 + 16);
    v14[0] = *a1;
    v14[1] = v10;
    v15 = *(a1 + 32);
    ODIE::Common::NDArrayType::create(v14, v9, v7, v6, v7, &ODIE::Common::Constants::kDefaultDimOrdering, v7, &v16);
    if (v17)
    {
      result = 0;
      *a4 = v16;
    }

    else
    {
      return v16;
    }
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    return 2;
  }

  return result;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceQuantize(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  if (a3 != 4 || *(**a2 + 8) != 2)
  {
    v29 = "coremlax.quantize expects 4 packed NDArrayType inputs.";
    goto LABEL_122;
  }

  v7 = 1;
  do
  {
    if (v7 == 4)
    {
      goto LABEL_7;
    }

    v8 = *(*a2[v7++] + 8);
  }

  while (v8 == 2);
  v9 = v7 - 2;
  v10 = a4;
  v11 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "coremlax.quantize expects 4 packed NDArrayType inputs.");
  a4 = v10;
  if (v9 < 3)
  {
    return v11;
  }

LABEL_7:
  if (a5 != 1 || (v12 = *a4, v13 = **a4, *(v13 + 8) != 2))
  {
    v29 = "coremlax.quantize expects a packed NDArrayType output.";
LABEL_122:
    v57 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp";
    v58 = "validateOperandsAreNdArrayType";
    v59 = "%s";
LABEL_51:
    v131 = v29;
LABEL_52:
    v11 = 1;
    odie_log(1, v57, v58, v59, v131, v132);
    return v11;
  }

  v14 = 0;
  v15 = 1;
  while (1)
  {
    v16 = a2[v14];
    if (*(*v16 + 16))
    {
      if (!v16[1])
      {
        break;
      }
    }

    v15 = v14++ < 3;
    if (v14 == 4)
    {
      goto LABEL_13;
    }
  }

  v118 = a4;
  v11 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v14);
  if (!v15)
  {
    a4 = v118;
    v12 = *v118;
    v13 = **v118;
LABEL_13:
    if (*(v13 + 16) && !v12[1])
    {
      v57 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp";
      v58 = "validateOperandsHaveData";
      v59 = "Operand %lld does not have data bound.";
      v131 = 0;
    }

    else
    {
      v135 = *a2;
      v17 = **a2;
      if (*(v17 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v119);
      }

      v18 = *(v17 + 32);
      v133 = a2[1];
      v19 = *v133;
      if (*(*v133 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v120);
      }

      v134 = a2[2];
      v20 = *v134;
      if (*(*v134 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v121);
      }

      v21 = a2[3];
      if (*(*v21 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v122);
      }

      v22 = *(*v21 + 24);
      if (*(v22 + 8) != 1)
      {
        goto LABEL_123;
      }

      if (*(v22 + 24) != 25)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not int32.");
        return 2;
      }

      v23 = *v21[1];
      v24 = v18 & (v23 >> 31);
      v25 = v24 + v23;
      if (v24 + v23 >= 0 && v25 < v18)
      {
        v26 = v18;
        v27 = *a4;
        {
          return 1;
        }

        v28 = *(v17 + 24);
        if (*(v28 + 8) != 1)
        {
          goto LABEL_123;
        }

        v29 = *(v28 + 24);
        if (v29 != 69)
        {
          if (v29 != 68)
          {
            v57 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Quantization.cpp";
            v58 = "valueInferenceQuantize";
            v59 = "coremlax.quantize: Unsupported input scalar type: %d";
            goto LABEL_51;
          }

          v30 = *(v20 + 24);
          if (*(v30 + 8) != 1)
          {
            goto LABEL_123;
          }

          v29 = *(v30 + 24);
          if (v29 != 39)
          {
            if (v29 == 23)
            {
              v31 = *(v19 + 32);
              ODIE::Common::NDArrayType::getNumElements(v136, v17);
              v11 = LODWORD(v136[0]);
              if (BYTE4(v136[0]) == 1)
              {
                v32 = v135[1];
                v33 = v27[1];
                if (v31)
                {
                  ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(v136, *(v17 + 40), *(v17 + 32));
                  if (v11 >= 1)
                  {
                    v34 = v133[1];
                    v35 = v134[1];
                    do
                    {
                      v36 = *(&v136[1] + v25);
                      v37 = *v32++;
                      _H0 = v37;
                      _H1 = *(v34 + 2 * v36);
                      __asm
                      {
                        FCVT            S0, H0
                        FCVT            S1, H1
                      }

                      _S0 = roundf(_S0 / _S1);
                      __asm { FCVT            H0, S0 }

                      v47 = *(v35 + v36) + *&_S0;
                      if (v47 > COERCE_SHORT_FLOAT(22512))
                      {
                        v47 = COERCE_SHORT_FLOAT(22512);
                      }

                      *v33++ = fmaxl(v47, COERCE_SHORT_FLOAT(-10240));
                      ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(v136);
                      --v11;
                    }

                    while (v11);
                  }

                  return 0;
                }

                if (*(*v133 + 8) != 2)
                {
                  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                  ODIE::Platform::abort(v123);
                }

                v85 = *(*v133 + 24);
                if (*(v85 + 8) == 1)
                {
                  if (*(v85 + 24) == 68)
                  {
                    _H0 = *v133[1];
                    if (*(*v134 + 8) != 2)
                    {
                      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                      ODIE::Platform::abort(v127);
                    }

                    v87 = *(*v134 + 24);
                    if (*(v87 + 8) == 1)
                    {
                      if (*(v87 + 24) == 23)
                      {
                        if (SLODWORD(v136[0]) >= 1)
                        {
                          v88 = *v134[1];
                          __asm { FCVT            S0, H0 }

                          do
                          {
                            v90 = *v32++;
                            _H4 = v90;
                            __asm { FCVT            S4, H4 }

                            _S4 = roundf(_S4 / _S0);
                            __asm { FCVT            H4, S4 }

                            v94 = v88 + *&_S4;
                            if (v94 > COERCE_SHORT_FLOAT(22512))
                            {
                              v94 = COERCE_SHORT_FLOAT(22512);
                            }

                            *v33++ = fmaxl(v94, COERCE_SHORT_FLOAT(-10240));
                            --v11;
                          }

                          while (v11);
                        }

                        return 0;
                      }

                      goto LABEL_137;
                    }

                    goto LABEL_123;
                  }

LABEL_135:
                  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not fp16.");
                  return 2;
                }

                goto LABEL_123;
              }

LABEL_133:
              if (v11)
              {
                return v11;
              }

              return 0;
            }

LABEL_50:
            v57 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Quantization.cpp";
            v58 = "quantizeHelper";
            v59 = "coremlax.quantize: Unsupported zero point scalar type: %d";
            goto LABEL_51;
          }

          v60 = *(v19 + 32);
          ODIE::Common::NDArrayType::getNumElements(v136, v17);
          v11 = LODWORD(v136[0]);
          if (BYTE4(v136[0]) != 1)
          {
            goto LABEL_133;
          }

          v62 = v135[1];
          v63 = v27[1];
          if (v60)
          {
            ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(v136, *(v17 + 40), *(v17 + 32));
            if (v11 >= 1)
            {
              v65 = v133[1];
              v66 = v134[1];
              do
              {
                v67 = *(&v136[1] + v25);
                v68 = *v62++;
                _H0 = v68;
                _H1 = *(v65 + 2 * v67);
                LOBYTE(v64) = *(v66 + v67);
                __asm
                {
                  FCVT            S0, H0
                  FCVT            S1, H1
                }

                _S0 = roundf(_S0 / _S1);
                __asm { FCVT            H0, S0 }

                v74 = v64 + *&_S0;
                if (v74 > COERCE_SHORT_FLOAT(23544))
                {
                  v74 = COERCE_SHORT_FLOAT(23544);
                }

                *v63++ = fmaxl(v74, COERCE_SHORT_FLOAT(0));
                ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(v136);
                --v11;
              }

              while (v11);
            }

            return 0;
          }

          if (*(*v133 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v125);
          }

          v101 = *(*v133 + 24);
          if (*(v101 + 8) != 1)
          {
            goto LABEL_123;
          }

          if (*(v101 + 24) != 68)
          {
            goto LABEL_135;
          }

          _H0 = *v133[1];
          if (*(*v134 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v129);
          }

          v103 = *(*v134 + 24);
          if (*(v103 + 8) != 1)
          {
LABEL_123:
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            return 2;
          }

          if (*(v103 + 24) == 39)
          {
            if (SLODWORD(v136[0]) >= 1)
            {
              LOBYTE(v61) = *v134[1];
              v104 = v61;
              __asm { FCVT            S0, H0 }

              do
              {
                v106 = *v62++;
                _H4 = v106;
                __asm { FCVT            S4, H4 }

                _S4 = roundf(_S4 / _S0);
                __asm { FCVT            H4, S4 }

                v110 = v104 + *&_S4;
                if (v110 > COERCE_SHORT_FLOAT(23544))
                {
                  v110 = COERCE_SHORT_FLOAT(23544);
                }

                *v63++ = fmaxl(v110, COERCE_SHORT_FLOAT(0));
                --v11;
              }

              while (v11);
            }

            return 0;
          }

LABEL_138:
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not uint8.");
          return 2;
        }

        v48 = *(v20 + 24);
        if (*(v48 + 8) != 1)
        {
          goto LABEL_123;
        }

        v29 = *(v48 + 24);
        if (v29 == 39)
        {
          v75 = *(v19 + 32);
          ODIE::Common::NDArrayType::getNumElements(v136, v17);
          v11 = LODWORD(v136[0]);
          if (BYTE4(v136[0]) != 1)
          {
            goto LABEL_133;
          }

          v77 = v135[1];
          v78 = v27[1];
          if (v75)
          {
            ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(v136, *(v17 + 40), *(v17 + 32));
            if (v11 >= 1)
            {
              v80 = v133[1];
              v81 = v134[1];
              do
              {
                v82 = *(&v136[1] + v25);
                v83 = *v77++;
                LOBYTE(v79) = *(v81 + v82);
                v84 = roundf(v83 / *(v80 + 4 * v82)) + v79;
                if (v84 > 255.0)
                {
                  v84 = 255.0;
                }

                *v78++ = fmaxf(v84, 0.0);
                ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(v136);
                --v11;
              }

              while (v11);
            }

            return 0;
          }

          if (*(*v133 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v126);
          }

          v111 = *(*v133 + 24);
          if (*(v111 + 8) != 1)
          {
            goto LABEL_123;
          }

          if (*(v111 + 24) == 69)
          {
            v112 = *v133[1];
            if (*(*v134 + 8) != 2)
            {
              odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
              ODIE::Platform::abort(v130);
            }

            v113 = *(*v134 + 24);
            if (*(v113 + 8) != 1)
            {
              goto LABEL_123;
            }

            if (*(v113 + 24) == 39)
            {
              if (SLODWORD(v136[0]) >= 1)
              {
                LOBYTE(v76) = *v134[1];
                v114 = v76;
                do
                {
                  v115 = *v77++;
                  v116 = roundf(v115 / v112) + v114;
                  if (v116 > 255.0)
                  {
                    v116 = 255.0;
                  }

                  *v78++ = fmaxf(v116, 0.0);
                  --v11;
                }

                while (v11);
              }

              return 0;
            }

            goto LABEL_138;
          }
        }

        else
        {
          if (v29 != 23)
          {
            goto LABEL_50;
          }

          v49 = *(v19 + 32);
          ODIE::Common::NDArrayType::getNumElements(v136, v17);
          v11 = LODWORD(v136[0]);
          if (BYTE4(v136[0]) != 1)
          {
            goto LABEL_133;
          }

          v50 = v135[1];
          v51 = v27[1];
          if (v49)
          {
            ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(v136, *(v17 + 40), *(v17 + 32));
            if (v11 >= 1)
            {
              v52 = v133[1];
              v53 = v134[1];
              do
              {
                v54 = *(&v136[1] + v25);
                v55 = *v50++;
                v56 = roundf(v55 / *(v52 + 4 * v54)) + *(v53 + v54);
                if (v56 > 127.0)
                {
                  v56 = 127.0;
                }

                *v51++ = fmaxf(v56, -128.0);
                ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(v136);
                --v11;
              }

              while (v11);
            }

            return 0;
          }

          if (*(*v133 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v124);
          }

          v95 = *(*v133 + 24);
          if (*(v95 + 8) != 1)
          {
            goto LABEL_123;
          }

          if (*(v95 + 24) == 69)
          {
            v96 = *v133[1];
            if (*(*v134 + 8) != 2)
            {
              odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
              ODIE::Platform::abort(v128);
            }

            v97 = *(*v134 + 24);
            if (*(v97 + 8) == 1)
            {
              if (*(v97 + 24) == 23)
              {
                if (SLODWORD(v136[0]) >= 1)
                {
                  v98 = *v134[1];
                  do
                  {
                    v99 = *v50++;
                    v100 = roundf(v99 / v96) + v98;
                    if (v100 > 127.0)
                    {
                      v100 = 127.0;
                    }

                    *v51++ = fmaxf(v100, -128.0);
                    --v11;
                  }

                  while (v11);
                }

                return 0;
              }

LABEL_137:
              odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not int8.");
              return 2;
            }

            goto LABEL_123;
          }
        }

        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not float.");
        return 2;
      }

      v57 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Quantization.cpp";
      v58 = "valueInferenceQuantize";
      v59 = "coremlax.quantize expects axis to be (-rank, rank). Rank = %d axis = %d";
      v131 = *(v17 + 32);
      v132 = (v24 + v23);
    }

    goto LABEL_52;
  }

  return v11;
}

uint64_t anonymous namespace::validateScaleAndZeroPoint(_DWORD *a1, uint64_t a2, int a3, unsigned int *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  if (!(a6 | a3))
  {
    return 0;
  }

  if (a3 != 1 || a6 != 1)
  {
    v12 = "coremlax.quantize - scale and zero point must both be scalars or rank 0 tensors.";
LABEL_12:
    v10 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Quantization.cpp", "validateScaleAndZeroPoint", v12, a5, v13, v14, v15);
    return v10;
  }

  v9 = *a4;
  if (*a1 != v9)
  {
    v12 = "coremlax.quantize: scale has %d elements, zero point has %d elements";
LABEL_11:
    v13 = *a1;
    v14 = v9;
    goto LABEL_12;
  }

  v9 = a9;
  if (*(a7 + 4 * a9) != *a1)
  {
    v15 = *(a7 + 4 * a9);
    v12 = "Scale shape [%d] should match input.shape[%d] which is %d";
    goto LABEL_11;
  }

  return 0;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceDequantize(uint64_t a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v5 = **a2;
  if (*(v5 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v12);
  }

  v6 = *(v5 + 40);
  v7 = *(v5 + 32);
  v8 = *a2[1];
  if (*(v8 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v13);
  }

  v9 = *(v8 + 24);
  if (*(v9 + 8) == 1)
  {
    v10 = *(a1 + 16);
    v14[0] = *a1;
    v14[1] = v10;
    v15 = *(a1 + 32);
    ODIE::Common::NDArrayType::create(v14, v9, v7, v6, v7, &ODIE::Common::Constants::kDefaultDimOrdering, v7, &v16);
    if (v17)
    {
      result = 0;
      *a4 = v16;
    }

    else
    {
      return v16;
    }
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    return 2;
  }

  return result;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceDequantize(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  if (a3 != 4 || *(**a2 + 8) != 2)
  {
    v30 = "coremlax.dequantize expects 4 packed NDArrayType inputs.";
    goto LABEL_106;
  }

  v8 = 1;
  do
  {
    if (v8 == 4)
    {
      goto LABEL_7;
    }

    v9 = *(*a2[v8++] + 8);
  }

  while (v9 == 2);
  v10 = v8 - 2;
  v11 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "coremlax.dequantize expects 4 packed NDArrayType inputs.");
  if (v10 < 3)
  {
    return v11;
  }

LABEL_7:
  if (a5 != 1 || (v12 = *a4, v13 = **a4, *(v13 + 8) != 2))
  {
    v30 = "coremlax.dequantize expects a packed NDArrayType output.";
LABEL_106:
    v49 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp";
    v50 = "validateOperandsAreNdArrayType";
    v51 = "%s";
LABEL_47:
    v101 = v30;
LABEL_48:
    v11 = 1;
    odie_log(1, v49, v50, v51, v101, v102);
    return v11;
  }

  v14 = 0;
  v15 = 1;
  while (1)
  {
    v16 = a2[v14];
    if (*(*v16 + 16))
    {
      if (!v16[1])
      {
        break;
      }
    }

    v15 = v14++ < 3;
    if (v14 == 4)
    {
      goto LABEL_13;
    }
  }

  v11 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v14);
  if (!v15)
  {
    v12 = *a4;
    v13 = **a4;
LABEL_13:
    if (*(v13 + 16) && !v12[1])
    {
      v49 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp";
      v50 = "validateOperandsHaveData";
      v51 = "Operand %lld does not have data bound.";
      v101 = 0;
    }

    else
    {
      v105 = *a2;
      v17 = **a2;
      if (*(v17 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v89);
      }

      v18 = *(v17 + 32);
      v103 = a2[1];
      v19 = *v103;
      if (*(*v103 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v90);
      }

      v104 = a2[2];
      v20 = *v104;
      if (*(*v104 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v91);
      }

      v21 = *(v20 + 32);
      v22 = *(v20 + 40);
      v23 = a2[3];
      if (*(*v23 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v92);
      }

      v24 = *(*v23 + 24);
      if (*(v24 + 8) != 1)
      {
        goto LABEL_107;
      }

      if (*(v24 + 24) != 25)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not int32.");
        return 2;
      }

      v25 = *v23[1];
      v26 = v18 & (v25 >> 31);
      v27 = v26 + v25;
      if (v26 + v25 >= 0 && v27 < v18)
      {
        {
          return 1;
        }

        v28 = *(v17 + 24);
        if (*(v28 + 8) != 1)
        {
          goto LABEL_107;
        }

        v29 = *a4;
        v30 = *(v28 + 24);
        if (v30 != 39)
        {
          if (v30 != 23)
          {
            v49 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Quantization.cpp";
            v50 = "valueInferenceDequantize";
            v51 = "coremlax.dequantize: Unsupported input scalar type: %d";
            goto LABEL_47;
          }

          v31 = *(v19 + 24);
          if (*(v31 + 8) != 1)
          {
            goto LABEL_107;
          }

          v30 = *(v31 + 24);
          if (v30 != 68)
          {
            if (v30 == 69)
            {
              v32 = *(v19 + 32);
              ODIE::Common::NDArrayType::getNumElements(v106, v17);
              v11 = LODWORD(v106[0]);
              if (BYTE4(v106[0]) == 1)
              {
                v33 = v105[1];
                v34 = v29[1];
                if (v32)
                {
                  ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(v106, *(v17 + 40), *(v17 + 32));
                  if (v11 >= 1)
                  {
                    v35 = v103[1];
                    v36 = v104[1];
                    do
                    {
                      v37 = *(&v106[1] + v27);
                      v38 = *v33++;
                      *v34++ = *(v35 + 4 * v37) * (v38 - *(v36 + v37));
                      ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(v106);
                      --v11;
                    }

                    while (v11);
                  }

                  return 0;
                }

                if (*(*v103 + 8) != 2)
                {
                  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                  ODIE::Platform::abort(v93);
                }

                v68 = *(*v103 + 24);
                if (*(v68 + 8) == 1)
                {
                  if (*(v68 + 24) == 69)
                  {
                    v69 = *v103[1];
                    if (*(*v104 + 8) != 2)
                    {
                      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                      ODIE::Platform::abort(v97);
                    }

                    v70 = *(*v104 + 24);
                    if (*(v70 + 8) == 1)
                    {
                      if (*(v70 + 24) == 23)
                      {
                        if (SLODWORD(v106[0]) >= 1)
                        {
                          v71 = *v104[1];
                          do
                          {
                            v72 = *v33++;
                            *v34++ = v69 * (v72 - v71);
                            --v11;
                          }

                          while (v11);
                        }

                        return 0;
                      }

                      goto LABEL_121;
                    }

                    goto LABEL_107;
                  }

LABEL_119:
                  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not float.");
                  return 2;
                }

                goto LABEL_107;
              }

LABEL_117:
              if (v11)
              {
                return v11;
              }

              return 0;
            }

LABEL_46:
            v49 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Quantization.cpp";
            v50 = "dequantizeHelper";
            v51 = "coremlax.dequantize: Unsupported zero point scalar type: %d";
            goto LABEL_47;
          }

          v52 = *(v19 + 32);
          ODIE::Common::NDArrayType::getNumElements(v106, v17);
          v11 = LODWORD(v106[0]);
          if (BYTE4(v106[0]) != 1)
          {
            goto LABEL_117;
          }

          v53 = v105[1];
          v54 = v29[1];
          if (v52)
          {
            ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(v106, *(v17 + 40), *(v17 + 32));
            if (v11 >= 1)
            {
              v55 = v103[1];
              v56 = v104[1];
              do
              {
                v57 = *(&v106[1] + v27);
                v58 = *v53++;
                *v54++ = *(v55 + 2 * v57) * (v58 - *(v56 + v57));
                ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(v106);
                --v11;
              }

              while (v11);
            }

            return 0;
          }

          if (*(*v103 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v95);
          }

          v78 = *(*v103 + 24);
          if (*(v78 + 8) != 1)
          {
            goto LABEL_107;
          }

          if (*(v78 + 24) == 68)
          {
            v79 = *v103[1];
            if (*(*v104 + 8) != 2)
            {
              odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
              ODIE::Platform::abort(v99);
            }

            v80 = *(*v104 + 24);
            if (*(v80 + 8) == 1)
            {
              if (*(v80 + 24) == 23)
              {
                if (SLODWORD(v106[0]) >= 1)
                {
                  v81 = *v104[1];
                  do
                  {
                    v82 = *v53++;
                    *v54++ = v79 * (v82 - v81);
                    --v11;
                  }

                  while (v11);
                }

                return 0;
              }

LABEL_121:
              odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not int8.");
              return 2;
            }

            goto LABEL_107;
          }

LABEL_120:
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not fp16.");
          return 2;
        }

        v39 = *(v19 + 24);
        if (*(v39 + 8) != 1)
        {
          goto LABEL_107;
        }

        v30 = *(v39 + 24);
        if (v30 == 68)
        {
          v59 = *(v19 + 32);
          ODIE::Common::NDArrayType::getNumElements(v106, v17);
          v11 = LODWORD(v106[0]);
          if (BYTE4(v106[0]) != 1)
          {
            goto LABEL_117;
          }

          v61 = v105[1];
          v62 = v29[1];
          if (v59)
          {
            ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(v106, *(v17 + 40), *(v17 + 32));
            if (v11 >= 1)
            {
              v64 = v103[1];
              v65 = v104[1];
              do
              {
                v66 = *(&v106[1] + v27);
                v67 = *v61++;
                LOBYTE(v63) = *(v65 + v66);
                *v62++ = *(v64 + 2 * v66) * (v67 - v63);
                ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(v106);
                --v11;
              }

              while (v11);
            }

            return 0;
          }

          if (*(*v103 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v96);
          }

          v83 = *(*v103 + 24);
          if (*(v83 + 8) != 1)
          {
            goto LABEL_107;
          }

          if (*(v83 + 24) != 68)
          {
            goto LABEL_120;
          }

          v84 = *v103[1];
          if (*(*v104 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v100);
          }

          v85 = *(*v104 + 24);
          if (*(v85 + 8) != 1)
          {
            goto LABEL_107;
          }

          if (*(v85 + 24) == 39)
          {
            if (SLODWORD(v106[0]) >= 1)
            {
              LOBYTE(v60) = *v104[1];
              v86 = v60;
              do
              {
                v87 = *v61++;
                *v62++ = v84 * (v87 - v86);
                --v11;
              }

              while (v11);
            }

            return 0;
          }
        }

        else
        {
          if (v30 != 69)
          {
            goto LABEL_46;
          }

          v40 = *(v19 + 32);
          ODIE::Common::NDArrayType::getNumElements(v106, v17);
          v11 = LODWORD(v106[0]);
          if (BYTE4(v106[0]) != 1)
          {
            goto LABEL_117;
          }

          v42 = v105[1];
          v43 = v29[1];
          if (v40)
          {
            ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(v106, *(v17 + 40), *(v17 + 32));
            if (v11 >= 1)
            {
              v45 = v103[1];
              v46 = v104[1];
              do
              {
                v47 = *(&v106[1] + v27);
                v48 = *v42++;
                LOBYTE(v44) = *(v46 + v47);
                *v43++ = *(v45 + 4 * v47) * (v48 - v44);
                ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(v106);
                --v11;
              }

              while (v11);
            }

            return 0;
          }

          if (*(*v103 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v94);
          }

          v73 = *(*v103 + 24);
          if (*(v73 + 8) != 1)
          {
            goto LABEL_107;
          }

          if (*(v73 + 24) != 69)
          {
            goto LABEL_119;
          }

          v74 = *v103[1];
          if (*(*v104 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v98);
          }

          v75 = *(*v104 + 24);
          if (*(v75 + 8) != 1)
          {
LABEL_107:
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            return 2;
          }

          if (*(v75 + 24) == 39)
          {
            if (SLODWORD(v106[0]) >= 1)
            {
              LOBYTE(v41) = *v104[1];
              v76 = v41;
              do
              {
                v77 = *v42++;
                *v43++ = v74 * (v77 - v76);
                --v11;
              }

              while (v11);
            }

            return 0;
          }
        }

        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not uint8.");
        return 2;
      }

      v49 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Quantization.cpp";
      v50 = "valueInferenceDequantize";
      v51 = "coremlax.dequantize expects axis to be (-rank, rank). Rank = %d axis = %d";
      v101 = *(v17 + 32);
      v102 = (v26 + v25);
    }

    goto LABEL_48;
  }

  return v11;
}

void ODIE::Kernels::Core::CPU::registerQuantizationKernels(_OWORD **a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v8[40] = 0;
  v9 = "coremlax.quantize";
  v10 = 35;
  v11 = ODIE::Kernels::Core::CPU::typeInferenceQuantize;
  v12 = ODIE::Kernels::Core::CPU::valueInferenceQuantize;
  v13 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v8, 1);
  v2[40] = 0;
  v3 = "coremlax.dequantize";
  v4 = 39;
  v5 = ODIE::Kernels::Core::CPU::typeInferenceDequantize;
  v6 = ODIE::Kernels::Core::CPU::valueInferenceDequantize;
  v7 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  ODIE::Common::String::~String(v8);
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceRange(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a3 != 3)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Range.cpp", "validateOperandTypes", "expects 3 inputs, got %lld", a5);
LABEL_31:
    v34 = "coreml.range: invalid operand types.";
LABEL_35:
    v33 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Range.cpp", "typeInferenceRange", v34);
    return v33;
  }

  if (a5 != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Range.cpp", "validateOperandTypes", "expects 1 output, got %lld", a5);
    goto LABEL_31;
  }

  v8 = 0;
  v9 = 1;
  v10 = "expects inputs @ %d to have data.";
  while (1)
  {
    v11 = a2[v8];
    v12 = *v11;
    if (*(*v11 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v14);
    }

    if (!v11[1])
    {
      break;
    }

    if (*(v12 + 32))
    {
      goto LABEL_13;
    }

    ODIE::Common::NDArrayType::getNumElements(&v41, v12);
    if ((BYTE4(v41) & 1) == 0)
    {
      ODIE::Platform::abort(v13);
    }

    if (v41 != 1)
    {
LABEL_13:
      v10 = "expects inputs @ %d to be 0D tensor.";
      break;
    }

    v9 = v8++ < 2;
    if (v8 == 3)
    {
      goto LABEL_15;
    }
  }

  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Range.cpp", "validateOperandTypes", v10, v8);
  if (v9)
  {
    goto LABEL_31;
  }

LABEL_15:
  v15 = a1[1];
  v41 = *a1;
  v42 = v15;
  v43 = *(a1 + 4);
  v16 = odie_alloc_aligned(&v41, 4, 4, 0);
  v17 = **a2;
  if (*(v17 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v35);
  }

  v18 = *(v17 + 24);
  if (*(v18 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v36);
  }

  v19 = *(v18 + 24);
  if (v19 > 67)
  {
    if (v19 == 69)
    {
      v20 = *a2;
      _D0 = *(*a2)[1];
      _D1 = *a2[1][1];
      _D2 = *a2[2][1];
      goto LABEL_26;
    }

    if (v19 == 68)
    {
      v20 = *a2;
      _H0 = *(*a2)[1];
      __asm { FCVT            D0, H0 }

      _H1 = *a2[1][1];
      __asm { FCVT            D1, H1 }

      _H2 = *a2[2][1];
      __asm { FCVT            D2, H2 }

      goto LABEL_26;
    }

    goto LABEL_34;
  }

  if (v19 == 25)
  {
    v20 = *a2;
    _D0 = *(*a2)[1];
    _D1 = *a2[1][1];
    _D2 = *a2[2][1];
    goto LABEL_26;
  }

  if (v19 != 26)
  {
LABEL_34:
    v34 = "coreml.range: invalid element type encountered in typeInferenceRange. Currently only supports [f16, f32, i32, i64].";
    goto LABEL_35;
  }

  v20 = *a2;
  _D0 = *(*a2)[1];
  _D1 = *a2[1][1];
  _D2 = *a2[2][1];
LABEL_26:
  *v16 = vcvtpd_s64_f64((_D1 - _D0) / _D2);
  v31 = a1[1];
  v41 = *a1;
  v42 = v31;
  v43 = *(a1 + 4);
  v32 = *v20;
  if (*(v32 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v38);
  }

  ODIE::Common::NDArrayType::create(&v41, *(v32 + 24), 1, v16, 1, &ODIE::Common::Constants::kDefaultDimOrdering, 1, &v39);
  if ((v40 & 1) == 0)
  {
    return v39;
  }

  v33 = 0;
  *a4 = v39;
  return v33;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceRange(uint64_t a1, uint64_t a2, uint64_t a3, ODIE::Common::NDArrayType ***a4)
{
  v5 = *(*a2 + 8);
  v6 = *(*(a2 + 16) + 8);
  v7 = **a4;
  v8 = (*a4)[1];
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v63);
  }

  ODIE::Common::NDArrayType::getNumElements(&v65, v7);
  if ((v65 & 0x100000000) == 0)
  {
    ODIE::Platform::abort(v9);
  }

  v10 = **(a2 + 8);
  if (*(v10 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v64);
  }

  v11 = *(v10 + 24);
  if (*(v11 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    return 2;
  }

  v12 = *(v11 + 24);
  result = 1;
  if (v12 > 67)
  {
    if (v12 == 69)
    {
      if (v65 >= 1)
      {
        v51 = 0;
        v52 = vdupq_n_s64(v65 - 1);
        v53 = (v65 + 3) & 0xFFFFFFFC;
        v54 = vld1q_dup_f32(v6);
        v55 = vld1q_dup_f32(v5);
        v56 = xmmword_25D0A04F0;
        v57 = xmmword_25D0A0500;
        v58 = (v8 + 8);
        v59 = vdupq_n_s64(4uLL);
        do
        {
          v60 = vmovn_s64(vcgeq_u64(v52, v57));
          v61.i32[0] = v51;
          v61.i32[1] = v51 + 1;
          v61.u64[1] = vorr_s8(vdup_n_s32(v51), 0x300000002);
          v62 = vmlaq_f32(v55, vcvtq_f32_u32(v61), v54);
          if (vuzp1_s16(v60, *v52.i8).u8[0])
          {
            *(v58 - 2) = v62.i32[0];
          }

          if (vuzp1_s16(v60, *&v52).i8[2])
          {
            *(v58 - 1) = v62.i32[1];
          }

          if (vuzp1_s16(*&v52, vmovn_s64(vcgeq_u64(v52, *&v56))).i32[1])
          {
            *v58 = v62.i64[1];
          }

          v51 += 4;
          v56 = vaddq_s64(v56, v59);
          v57 = vaddq_s64(v57, v59);
          v58 += 2;
        }

        while (v53 != v51);
      }
    }

    else
    {
      if (v12 != 68)
      {
        return result;
      }

      if (v65 >= 1)
      {
        v23 = 0;
        v24 = vdupq_n_s64(v65 - 1);
        v25 = (v65 + 7) & 0xFFFFFFF8;
        v26 = vld1q_dup_s16(v6);
        v27 = vld1q_dup_s16(v5);
        v28 = xmmword_25D0A0520;
        v29 = xmmword_25D0A0530;
        v30 = xmmword_25D0A04F0;
        v31 = xmmword_25D0A0500;
        v32 = v8 + 8;
        v33 = vdupq_n_s64(8uLL);
        do
        {
          v34 = vdupq_n_s32(v23);
          v35 = vmovn_s64(vcgeq_u64(v24, v31));
          v36.i32[0] = v23;
          v36.i32[1] = v23 + 1;
          v36.u64[1] = vorr_s8(*v34.i8, 0x300000002);
          v37 = vmlaq_f16(v27, vcvt_hight_f16_f32(vcvt_f16_f32(vcvtq_f32_u32(v36)), vcvtq_f32_u32(vorrq_s8(v34, xmmword_25D0A04B0))), v26);
          if (vuzp1_s8(vuzp1_s16(v35, *v24.i8), *v24.i8).u8[0])
          {
            *(v32 - 4) = v37.i16[0];
          }

          if (vuzp1_s8(vuzp1_s16(v35, *&v24), *&v24).i8[1])
          {
            *(v32 - 3) = v37.i16[1];
          }

          if (vuzp1_s8(vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, *&v30))), *&v24).i8[2])
          {
            *(v32 - 1) = v37.i32[1];
          }

          v38 = vmovn_s64(vcgeq_u64(v24, v29));
          if (vuzp1_s8(*&v24, vuzp1_s16(v38, *&v24)).i32[1])
          {
            *v32 = v37.i16[4];
          }

          if (vuzp1_s8(*&v24, vuzp1_s16(v38, *&v24)).i8[5])
          {
            *(v32 + 1) = v37.i16[5];
          }

          if (vuzp1_s8(*&v24, vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, *&v28)))).i8[6])
          {
            *(v32 + 1) = v37.i32[3];
          }

          v23 += 8;
          v29 = vaddq_s64(v29, v33);
          v30 = vaddq_s64(v30, v33);
          v31 = vaddq_s64(v31, v33);
          v28 = vaddq_s64(v28, v33);
          v32 += 16;
        }

        while (v25 != v23);
      }
    }
  }

  else if (v12 == 25)
  {
    if (v65 >= 1)
    {
      v39 = *v6;
      v40 = *v5;
      v41 = vdupq_n_s64(v65 - 1);
      v42 = (v65 + 3) & 0xFFFFFFFC;
      v43 = 4 * *v6;
      v44 = 2 * *v6;
      v45 = (v8 + 8);
      v46 = xmmword_25D0A04F0;
      v47 = xmmword_25D0A0500;
      v48 = 3 * *v6;
      v49 = vdupq_n_s64(4uLL);
      do
      {
        v50 = vmovn_s64(vcgeq_u64(v41, v47));
        if (vuzp1_s16(v50, *v41.i8).u8[0])
        {
          *(v45 - 2) = v40;
        }

        if (vuzp1_s16(v50, *&v41).i8[2])
        {
          *(v45 - 1) = LODWORD(v39) + LODWORD(v40);
        }

        if (vuzp1_s16(*&v41, vmovn_s64(vcgeq_u64(v41, *&v46))).i32[1])
        {
          *v45 = v44 + LODWORD(v40);
          *(v45 + 1) = v48 + LODWORD(v40);
        }

        v46 = vaddq_s64(v46, v49);
        v47 = vaddq_s64(v47, v49);
        LODWORD(v40) += v43;
        v45 += 4;
        v42 -= 4;
      }

      while (v42);
    }
  }

  else
  {
    if (v12 != 26)
    {
      return result;
    }

    if (v65 >= 1)
    {
      v14 = *v5;
      v15 = *v6;
      v16 = (v65 + 1) & 0xFFFFFFFE;
      v17 = vdupq_n_s64(v65 - 1);
      v18 = 2 * *v6;
      v19 = xmmword_25D0A0500;
      v20 = (v8 + 8);
      v21 = vdupq_n_s64(2uLL);
      do
      {
        v22 = vmovn_s64(vcgeq_u64(v17, v19));
        if (v22.i8[0])
        {
          *(v20 - 1) = v14;
        }

        if (v22.i8[4])
        {
          *v20 = v15 + v14;
        }

        v19 = vaddq_s64(v19, v21);
        v14 += v18;
        v20 += 2;
        v16 -= 2;
      }

      while (v16);
    }
  }

  return 0;
}

void ODIE::Kernels::Core::CPU::registerRangeKernels(_OWORD **a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1[40] = 0;
  v2 = "coreml.range";
  v3 = 25;
  v4 = ODIE::Kernels::Core::CPU::typeInferenceRange;
  v5 = ODIE::Kernels::Core::CPU::valueInferenceRange;
  v6 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v1, 1);
  ODIE::Common::String::~String(v1);
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceReduceMean(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  ODIE::Kernels::Core::CPU::Utils::typeInferenceReduction(a1, a2, a3, &v6);
  if ((v7 & 1) == 0)
  {
    return v6;
  }

  result = 0;
  *a4 = v6;
  return result;
}

void ODIE::Kernels::Core::CPU::Utils::typeInferenceReduction(__int128 *a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3 != 3 || (v6 = **a2, *(v6 + 8) != 2))
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "reduction expects 3 NDArrayType inputs.");
LABEL_15:
    v16 = 1;
    goto LABEL_16;
  }

  v8 = 1;
  do
  {
    if (v8 == 3)
    {
      v11 = a2[1];
      v12 = a2[2];
      goto LABEL_10;
    }

    v9 = *(*a2[v8++] + 8);
  }

  while (v9 == 2);
  v10 = v8 - 2;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "reduction expects 3 NDArrayType inputs.");
  if (v10 < 2)
  {
    goto LABEL_15;
  }

  v11 = a2[1];
  v6 = **a2;
  v12 = a2[2];
  if (*(v6 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v13);
  }

LABEL_10:
  memset(v23, 0, 32);
  v14 = a1[1];
  v17 = *a1;
  v18 = v14;
  v19 = *(a1 + 4);
  ODIE::Kernels::Core::CPU::Utils::getReductionOutputShape(v6, v11, v12, &v17, v23, &v20);
  if ((v22 & 1) == 0 || (v19 = *(a1 + 4), v15 = a1[1], v17 = *a1, v18 = v15, ODIE::Common::NDArrayType::create(&v17, *(v6 + 24), v21, v20, v21, &ODIE::Common::Constants::kDefaultDimOrdering, v21, &v20), (v21 & 1) == 0))
  {
    v16 = v20;
LABEL_16:
    *a4 = v16;
    *(a4 + 8) = 0;
    return;
  }

  *a4 = v20;
  *(a4 + 8) = 1;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceReduceMean(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  v5 = *(a1 + 80);
  v9[4] = *(a1 + 64);
  v9[5] = v5;
  v9[6] = *(a1 + 96);
  v10 = *(a1 + 112);
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v7 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v7;
}

uint64_t anonymous namespace::valueInferenceReduction(__int128 *a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5, uint64_t a6)
{
  if (a3 != 3 || *(**a2 + 8) != 2)
  {
    v198 = "reduce operation expects 3 NDArrayType inputs.";
LABEL_207:
    v199 = "validateOperandsAreNdArrayType";
    v200 = "%s";
    v212 = v198;
    goto LABEL_208;
  }

  v7 = a6;
  v11 = 1;
  do
  {
    if (v11 == 3)
    {
      goto LABEL_7;
    }

    v12 = *(*a2[v11++] + 8);
  }

  while (v12 == 2);
  v13 = v11 - 2;
  v14 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "reduce operation expects 3 NDArrayType inputs.");
  if (v13 < 2)
  {
    return v14;
  }

LABEL_7:
  if (a5 != 1 || (v15 = *a4, v16 = **a4, *(v16 + 8) != 2))
  {
    v198 = "reduce operation expects 1 NDArrayType output.";
    goto LABEL_207;
  }

  v17 = 0;
  v18 = 1;
  while (1)
  {
    v19 = a2[v17];
    if (*(*v19 + 16))
    {
      if (!v19[1])
      {
        break;
      }
    }

    v18 = v17++ < 2;
    if (v17 == 3)
    {
      goto LABEL_13;
    }
  }

  v14 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v17);
  if (!v18)
  {
    v15 = *a4;
    v16 = **a4;
LABEL_13:
    if (!*(v16 + 16) || v15[1])
    {
      v20 = **a2;
      if (*(v20 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v201);
      }

      v21 = *(v20 + 24);
      if (*(v21 + 8) != 1)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v202);
      }

      v22 = *(v21 + 24);
      if (v22 <= 67)
      {
        if (v22 != 16)
        {
          if (v22 == 25)
          {
            v233 = a1[2];
            v225 = *a1;
            v229 = a1[1];
            v24 = *a2;
            v23 = a2[1];
            v25 = a2[2];
            v221 = **a2;
            if (*(v221 + 8) != 2)
            {
              odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
              ODIE::Platform::abort(v204);
            }

            v26 = **a4;
            if (*(v26 + 8) != 2)
            {
              odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
              ODIE::Platform::abort(v205);
            }

            v27 = *(v221 + 40);
            v28 = *(v221 + 32);
            v249 = 0u;
            v250 = 0u;
            v244 = v225;
            v245 = v229;
            v246 = v233;
            ODIE::Kernels::Core::CPU::Utils::getReductionOutputShape(v221, v23, v25, &v244, &v249, &v239);
            if (v241)
            {
              v29 = 1.0;
              if (!v7)
              {
                v30 = *(&v249 + 1);
                if (*(&v249 + 1) >= 1)
                {
                  v31 = v249;
                  do
                  {
                    v32 = *v31++;
                    v29 = v29 * *(v27 + 4 * v32);
                    --v30;
                  }

                  while (v30);
                }
              }

              v34 = v239;
              v33 = v240;
              v35 = (*a4)[1];
              v36 = INFINITY;
              if (v7 != 3)
              {
                v36 = 0.0;
              }

              if (v7 == 2)
              {
                v37 = -INFINITY;
              }

              else
              {
                v37 = v36;
              }

              v246 = v233;
              v38 = v252;
              v244 = v225;
              v245 = v229;
              v39 = odie_alloc_aligned(&v244, 8 * v252, 8, 0);
              if (v39)
              {
                v40 = v39;
                if (v38 >= 1)
                {
                  v41 = (v38 + 1) & 0xFFFFFFFE;
                  v42 = vdupq_n_s64(v38 - 1);
                  v43 = xmmword_25D0A0500;
                  v44 = (v39 + 8);
                  v45 = vdupq_n_s64(2uLL);
                  do
                  {
                    v46 = vmovn_s64(vcgeq_u64(v42, v43));
                    if (v46.i8[0])
                    {
                      *(v44 - 1) = v37;
                    }

                    if (v46.i8[4])
                    {
                      *v44 = v37;
                    }

                    v43 = vaddq_s64(v43, v45);
                    v44 += 2;
                    v41 -= 2;
                  }

                  while (v41);
                }

                v213 = v34;
                v217 = v35;
                v244 = v225;
                v245 = v229;
                v246 = v233;
                v47 = odie_alloc_aligned(&v244, 4 * v33, 4, 0);
                if (v47)
                {
                  v48 = v47;
                  v49 = off_286E741B0[v7];
                  v50 = v24[1];
                  ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(&v244, v27, v28);
                  if (v248)
                  {
LABEL_42:
                    if (v33)
                    {
                      ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(&v239, v213, v33);
                      if ((v243 & 1) == 0)
                      {
                        do
                        {
                          ODIE::Common::NDArrayType::ravelMultiIndex(v26, &v240, v242, &v237);
                          if ((v238 & 1) == 0)
                          {
                            ODIE::Platform::abort(v51);
                          }

                          v217[v237] = (v40[v237] / v29);
                          ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(&v239);
                        }

                        while (v243 != 1);
                      }
                    }

                    else
                    {
                      *v217 = (*v40 / v29);
                    }

                    return 0;
                  }

                  while (1)
                  {
                    v145 = v247;
                    if (v33 >= 1)
                    {
                      bzero(v48, 4 * v33);
                    }

                    if (v145 >= 1)
                    {
                      break;
                    }

LABEL_144:
                    ODIE::Common::NDArrayType::ravelMultiIndex(v221, &v244 + 8, v145, &v239);
                    if ((v239 & 0x100000000) == 0)
                    {
                      ODIE::Platform::abort(v153);
                    }

                    v154 = v239;
                    ODIE::Common::NDArrayType::ravelMultiIndex(v26, v48, v33, &v239);
                    if ((v239 & 0x100000000) == 0)
                    {
                      ODIE::Platform::abort(v155);
                    }

                    v156 = v239;
                    v40[v156] = v49(v40[v239], *(v50 + 4 * v154));
                    ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(&v244);
                    if (v248 == 1)
                    {
                      goto LABEL_42;
                    }
                  }

                  v146 = 0;
                  v147 = v250;
                  v148 = v251;
                  v149 = &v244 + 2;
                  v150 = v145;
                  while (1)
                  {
                    v151 = *v147++;
                    if (v151 != 1)
                    {
                      break;
                    }

                    if (v148)
                    {
                      v152 = 0;
LABEL_142:
                      *(v48 + v146++) = v152;
                    }

                    ++v149;
                    if (!--v150)
                    {
                      goto LABEL_144;
                    }
                  }

                  v152 = *v149;
                  goto LABEL_142;
                }
              }

LABEL_209:
              odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/Algorithms/MakeSpan.hpp", "makeSpan", "Unable to allocate memory in makeSpan.");
              return 4;
            }

            return v239;
          }

LABEL_212:
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Reduce.cpp", "valueInferenceReduction", "Unsupported element type for reduction: %u", v22);
          return 2;
        }

        v235 = a1[2];
        v227 = *a1;
        v231 = a1[1];
        v83 = *a2;
        v82 = a2[1];
        v84 = a2[2];
        v223 = **a2;
        if (*(v223 + 8) != 2)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v208);
        }

        v85 = **a4;
        if (*(v85 + 8) != 2)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v209);
        }

        v86 = *(v223 + 40);
        v87 = *(v223 + 32);
        v249 = 0u;
        v250 = 0u;
        v244 = v227;
        v245 = v231;
        v246 = v235;
        ODIE::Kernels::Core::CPU::Utils::getReductionOutputShape(v223, v82, v84, &v244, &v249, &v239);
        if ((v241 & 1) == 0)
        {
          return v239;
        }

        v88 = 1.0;
        if (!v7)
        {
          v89 = *(&v249 + 1);
          if (*(&v249 + 1) >= 1)
          {
            v90 = v249;
            do
            {
              v91 = *v90++;
              v88 = v88 * *(v86 + 4 * v91);
              --v89;
            }

            while (v89);
          }
        }

        v93 = v239;
        v92 = v240;
        v94 = (*a4)[1];
        v95 = INFINITY;
        if (v7 != 3)
        {
          v95 = 0.0;
        }

        if (v7 == 2)
        {
          v96 = -INFINITY;
        }

        else
        {
          v96 = v95;
        }

        v246 = v235;
        v97 = v252;
        v244 = v227;
        v245 = v231;
        v98 = odie_alloc_aligned(&v244, 8 * v252, 8, 0);
        if (!v98)
        {
          goto LABEL_209;
        }

        v99 = v98;
        if (v97 >= 1)
        {
          v100 = (v97 + 1) & 0xFFFFFFFE;
          v101 = vdupq_n_s64(v97 - 1);
          v102 = xmmword_25D0A0500;
          v103 = (v98 + 8);
          v104 = vdupq_n_s64(2uLL);
          do
          {
            v105 = vmovn_s64(vcgeq_u64(v101, v102));
            if (v105.i8[0])
            {
              *(v103 - 1) = v96;
            }

            if (v105.i8[4])
            {
              *v103 = v96;
            }

            v102 = vaddq_s64(v102, v104);
            v103 += 2;
            v100 -= 2;
          }

          while (v100);
        }

        v215 = v93;
        v219 = v94;
        v244 = v227;
        v245 = v231;
        v246 = v235;
        v106 = odie_alloc_aligned(&v244, 4 * v92, 4, 0);
        if (!v106)
        {
          goto LABEL_209;
        }

        v107 = v106;
        v108 = off_286E741B0[v7];
        v109 = v83[1];
        ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(&v244, v86, v87);
        if (v248)
        {
LABEL_100:
          if (v92)
          {
            ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(&v239, v215, v92);
            if ((v243 & 1) == 0)
            {
              do
              {
                ODIE::Common::NDArrayType::ravelMultiIndex(v85, &v240, v242, &v237);
                if ((v238 & 1) == 0)
                {
                  ODIE::Platform::abort(v110);
                }

                v219[v237] = v99[v237] / v88 != 0.0;
                ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(&v239);
              }

              while (v243 != 1);
            }
          }

          else
          {
            *v219 = *v99 / v88 != 0.0;
          }

          return 0;
        }

        while (1)
        {
          v169 = v247;
          if (v92 >= 1)
          {
            bzero(v107, 4 * v92);
          }

          if (v169 >= 1)
          {
            break;
          }

LABEL_176:
          ODIE::Common::NDArrayType::ravelMultiIndex(v223, &v244 + 8, v169, &v239);
          if ((v239 & 0x100000000) == 0)
          {
            ODIE::Platform::abort(v177);
          }

          v178 = v239;
          ODIE::Common::NDArrayType::ravelMultiIndex(v85, v107, v92, &v239);
          if ((v239 & 0x100000000) == 0)
          {
            ODIE::Platform::abort(v179);
          }

          v181 = v239;
          LOBYTE(v180) = *(v109 + v178);
          v99[v181] = v108(v99[v239], v180);
          ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(&v244);
          if (v248 == 1)
          {
            goto LABEL_100;
          }
        }

        v170 = 0;
        v171 = v250;
        v172 = v251;
        v173 = &v244 + 2;
        v174 = v169;
        while (1)
        {
          v175 = *v171++;
          if (v175 != 1)
          {
            break;
          }

          if (v172)
          {
            v176 = 0;
LABEL_174:
            *(v107 + v170++) = v176;
          }

          ++v173;
          if (!--v174)
          {
            goto LABEL_176;
          }
        }

        v176 = *v173;
        goto LABEL_174;
      }

      if (v22 != 68)
      {
        if (v22 != 69)
        {
          goto LABEL_212;
        }

        v234 = a1[2];
        v226 = *a1;
        v230 = a1[1];
        v53 = *a2;
        v52 = a2[1];
        v54 = a2[2];
        v222 = **a2;
        if (*(v222 + 8) != 2)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v206);
        }

        v55 = **a4;
        if (*(v55 + 8) != 2)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v207);
        }

        v56 = *(v222 + 40);
        v57 = *(v222 + 32);
        v249 = 0u;
        v250 = 0u;
        v244 = v226;
        v245 = v230;
        v246 = v234;
        ODIE::Kernels::Core::CPU::Utils::getReductionOutputShape(v222, v52, v54, &v244, &v249, &v239);
        if ((v241 & 1) == 0)
        {
          return v239;
        }

        v58 = 1.0;
        if (!v7)
        {
          v59 = *(&v249 + 1);
          if (*(&v249 + 1) >= 1)
          {
            v60 = v249;
            do
            {
              v61 = *v60++;
              v58 = v58 * *(v56 + 4 * v61);
              --v59;
            }

            while (v59);
          }
        }

        v63 = v239;
        v62 = v240;
        v64 = (*a4)[1];
        v65 = INFINITY;
        if (v7 != 3)
        {
          v65 = 0.0;
        }

        if (v7 == 2)
        {
          v66 = -INFINITY;
        }

        else
        {
          v66 = v65;
        }

        v246 = v234;
        v67 = v252;
        v244 = v226;
        v245 = v230;
        v68 = odie_alloc_aligned(&v244, 8 * v252, 8, 0);
        if (!v68)
        {
          goto LABEL_209;
        }

        v69 = v68;
        if (v67 >= 1)
        {
          v70 = (v67 + 1) & 0xFFFFFFFE;
          v71 = vdupq_n_s64(v67 - 1);
          v72 = xmmword_25D0A0500;
          v73 = (v68 + 8);
          v74 = vdupq_n_s64(2uLL);
          do
          {
            v75 = vmovn_s64(vcgeq_u64(v71, v72));
            if (v75.i8[0])
            {
              *(v73 - 1) = v66;
            }

            if (v75.i8[4])
            {
              *v73 = v66;
            }

            v72 = vaddq_s64(v72, v74);
            v73 += 2;
            v70 -= 2;
          }

          while (v70);
        }

        v214 = v63;
        v218 = v64;
        v244 = v226;
        v245 = v230;
        v246 = v234;
        v76 = odie_alloc_aligned(&v244, 4 * v62, 4, 0);
        if (!v76)
        {
          goto LABEL_209;
        }

        v77 = v76;
        v78 = off_286E741B0[v7];
        v79 = v53[1];
        ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(&v244, v56, v57);
        if (v248)
        {
LABEL_72:
          if (v62)
          {
            ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(&v239, v214, v62);
            if ((v243 & 1) == 0)
            {
              do
              {
                ODIE::Common::NDArrayType::ravelMultiIndex(v55, &v240, v242, &v237);
                if ((v238 & 1) == 0)
                {
                  ODIE::Platform::abort(v80);
                }

                v81 = v69[v237] / v58;
                v218[v237] = v81;
                ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(&v239);
              }

              while (v243 != 1);
            }
          }

          else
          {
            v196 = *v69 / v58;
            *v218 = v196;
          }

          return 0;
        }

        while (1)
        {
          v157 = v247;
          if (v62 >= 1)
          {
            bzero(v77, 4 * v62);
          }

          if (v157 >= 1)
          {
            break;
          }

LABEL_160:
          ODIE::Common::NDArrayType::ravelMultiIndex(v222, &v244 + 8, v157, &v239);
          if ((v239 & 0x100000000) == 0)
          {
            ODIE::Platform::abort(v165);
          }

          v166 = v239;
          ODIE::Common::NDArrayType::ravelMultiIndex(v55, v77, v62, &v239);
          if ((v239 & 0x100000000) == 0)
          {
            ODIE::Platform::abort(v167);
          }

          v168 = v239;
          v69[v168] = v78(v69[v239], *(v79 + 4 * v166));
          ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(&v244);
          if (v248 == 1)
          {
            goto LABEL_72;
          }
        }

        v158 = 0;
        v159 = v250;
        v160 = v251;
        v161 = &v244 + 2;
        v162 = v157;
        while (1)
        {
          v163 = *v159++;
          if (v163 != 1)
          {
            break;
          }

          if (v160)
          {
            v164 = 0;
LABEL_158:
            *(v77 + v158++) = v164;
          }

          ++v161;
          if (!--v162)
          {
            goto LABEL_160;
          }
        }

        v164 = *v161;
        goto LABEL_158;
      }

      v236 = a1[2];
      v228 = *a1;
      v232 = a1[1];
      v112 = *a2;
      v111 = a2[1];
      v113 = a2[2];
      v224 = **a2;
      if (*(v224 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v210);
      }

      v114 = **a4;
      if (*(v114 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v211);
      }

      v115 = *(v224 + 40);
      v116 = *(v224 + 32);
      v249 = 0u;
      v250 = 0u;
      v244 = v228;
      v245 = v232;
      v246 = v236;
      ODIE::Kernels::Core::CPU::Utils::getReductionOutputShape(v224, v111, v113, &v244, &v249, &v239);
      if ((v241 & 1) == 0)
      {
        return v239;
      }

      v117 = 1.0;
      if (!v7)
      {
        v118 = *(&v249 + 1);
        if (*(&v249 + 1) >= 1)
        {
          v119 = v249;
          do
          {
            v120 = *v119++;
            v117 = v117 * *(v115 + 4 * v120);
            --v118;
          }

          while (v118);
        }
      }

      v122 = v239;
      v121 = v240;
      v123 = (*a4)[1];
      v124 = INFINITY;
      if (v7 != 3)
      {
        v124 = 0.0;
      }

      if (v7 == 2)
      {
        v125 = -INFINITY;
      }

      else
      {
        v125 = v124;
      }

      v246 = v236;
      v126 = v252;
      v244 = v228;
      v245 = v232;
      v127 = odie_alloc_aligned(&v244, 8 * v252, 8, 0);
      if (!v127)
      {
        goto LABEL_209;
      }

      v128 = v127;
      if (v126 >= 1)
      {
        v129 = (v126 + 1) & 0xFFFFFFFE;
        v130 = vdupq_n_s64(v126 - 1);
        v131 = xmmword_25D0A0500;
        v132 = (v127 + 8);
        v133 = vdupq_n_s64(2uLL);
        do
        {
          v134 = vmovn_s64(vcgeq_u64(v130, v131));
          if (v134.i8[0])
          {
            *(v132 - 1) = v125;
          }

          if (v134.i8[4])
          {
            *v132 = v125;
          }

          v131 = vaddq_s64(v131, v133);
          v132 += 2;
          v129 -= 2;
        }

        while (v129);
      }

      v216 = v122;
      v220 = v123;
      v244 = v228;
      v245 = v232;
      v246 = v236;
      v135 = odie_alloc_aligned(&v244, 4 * v121, 4, 0);
      if (!v135)
      {
        goto LABEL_209;
      }

      v136 = v135;
      v137 = off_286E741B0[v7];
      v138 = v112[1];
      ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(&v244, v115, v116);
      if (v248)
      {
LABEL_128:
        if (v121)
        {
          ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(&v239, v216, v121);
          if ((v243 & 1) == 0)
          {
            do
            {
              ODIE::Common::NDArrayType::ravelMultiIndex(v114, &v240, v242, &v237);
              if ((v238 & 1) == 0)
              {
                ODIE::Platform::abort(v139);
              }

              _D0 = v128[v237] / v117;
              __asm { FCVT            H0, D0 }

              v220[v237] = LOWORD(_D0);
              ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(&v239);
            }

            while (v243 != 1);
          }
        }

        else
        {
          _D0 = *v128 / v117;
          __asm { FCVT            H0, D0 }

          *v220 = LOWORD(_D0);
        }

        return 0;
      }

      while (1)
      {
        v182 = v247;
        if (v121 >= 1)
        {
          bzero(v136, 4 * v121);
        }

        if (v182 >= 1)
        {
          break;
        }

LABEL_192:
        ODIE::Common::NDArrayType::ravelMultiIndex(v224, &v244 + 8, v182, &v239);
        if ((v239 & 0x100000000) == 0)
        {
          ODIE::Platform::abort(v190);
        }

        v191 = v239;
        ODIE::Common::NDArrayType::ravelMultiIndex(v114, v136, v121, &v239);
        if ((v239 & 0x100000000) == 0)
        {
          ODIE::Platform::abort(v192);
        }

        v193 = v239;
        _H1 = *(v138 + 2 * v191);
        __asm { FCVT            D1, H1 }

        v128[v193] = v137(v128[v239], _D1);
        ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(&v244);
        if (v248 == 1)
        {
          goto LABEL_128;
        }
      }

      v183 = 0;
      v184 = v250;
      v185 = v251;
      v186 = &v244 + 2;
      v187 = v182;
      while (1)
      {
        v188 = *v184++;
        if (v188 != 1)
        {
          break;
        }

        if (v185)
        {
          v189 = 0;
LABEL_190:
          *(v136 + v183++) = v189;
        }

        ++v186;
        if (!--v187)
        {
          goto LABEL_192;
        }
      }

      v189 = *v186;
      goto LABEL_190;
    }

    v199 = "validateOperandsHaveData";
    v200 = "Operand %lld does not have data bound.";
    v212 = 0;
LABEL_208:
    v14 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", v199, v200, a5, a6, v212);
  }

  return v14;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceReduceSum(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  ODIE::Kernels::Core::CPU::Utils::typeInferenceReduction(a1, a2, a3, &v6);
  if ((v7 & 1) == 0)
  {
    return v6;
  }

  result = 0;
  *a4 = v6;
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceReduceMax(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  ODIE::Kernels::Core::CPU::Utils::typeInferenceReduction(a1, a2, a3, &v6);
  if ((v7 & 1) == 0)
  {
    return v6;
  }

  result = 0;
  *a4 = v6;
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceReduceSum(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  v5 = *(a1 + 80);
  v9[4] = *(a1 + 64);
  v9[5] = v5;
  v9[6] = *(a1 + 96);
  v10 = *(a1 + 112);
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v7 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v7;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceReduceMax(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  v5 = *(a1 + 80);
  v9[4] = *(a1 + 64);
  v9[5] = v5;
  v9[6] = *(a1 + 96);
  v10 = *(a1 + 112);
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v7 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v7;
}

void ODIE::Kernels::Core::CPU::registerReduceKernels(_OWORD **a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v20[40] = 0;
  v21 = "coreml.reduce_mean";
  v22 = 37;
  v23 = ODIE::Kernels::Core::CPU::typeInferenceReduceMean;
  v24 = ODIE::Kernels::Core::CPU::valueInferenceReduceMean;
  v25 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v20, 1);
  v14[40] = 0;
  v15 = "coreml.reduce_sum";
  v16 = 35;
  v17 = ODIE::Kernels::Core::CPU::typeInferenceReduceSum;
  v18 = ODIE::Kernels::Core::CPU::valueInferenceReduceSum;
  v19 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v14, 1);
  v8[40] = 0;
  v9 = "coreml.reduce_max";
  v10 = 35;
  v11 = ODIE::Kernels::Core::CPU::typeInferenceReduceMax;
  v12 = ODIE::Kernels::Core::CPU::valueInferenceReduceMax;
  v13 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v8, 1);
  v2[40] = 0;
  v3 = "coreml.reduce_min";
  v4 = 35;
  v7 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  ODIE::Common::String::~String(v8);
  ODIE::Common::String::~String(v14);
  ODIE::Common::String::~String(v20);
}

uint64_t anonymous namespace::typeInferenceReduceMin(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  ODIE::Kernels::Core::CPU::Utils::typeInferenceReduction(a1, a2, a3, &v6);
  if ((v7 & 1) == 0)
  {
    return v6;
  }

  result = 0;
  *a4 = v6;
  return result;
}

uint64_t anonymous namespace::valueInferenceReduceMin(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  v5 = *(a1 + 80);
  v9[4] = *(a1 + 64);
  v9[5] = v5;
  v9[6] = *(a1 + 96);
  v10 = *(a1 + 112);
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v7 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v7;
}

void ODIE::Kernels::Core::CPU::Utils::getReductionOutputShape(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, int **a5@<X4>, uint64_t a6@<X8>)
{
  *(a5 + 32) = 0;
  *a5 = 0u;
  *(a5 + 1) = 0u;
  *(a5 + 9) = 0;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = a2[1];
  v13 = *(*a2 + 16);
  v14 = a4[1];
  v40 = *a4;
  v41 = v14;
  v42 = *(a4 + 4);
  v15 = odie_alloc_aligned(&v40, v13 & 0xFFFFFFFFFFFFFFFCLL, 4, 0);
  if (!v15)
  {
    goto LABEL_35;
  }

  v16 = v13 >> 2;
  *a5 = v15;
  a5[1] = (v13 >> 2);
  if (v13 >= 4)
  {
    do
    {
      v17 = *v12++;
      *v15++ = (v10 & (v17 >> 31)) + v17;
      --v16;
    }

    while (v16);
  }

  v18 = a4[1];
  v40 = *a4;
  v41 = v18;
  v42 = *(a4 + 4);
  v19 = odie_alloc_aligned(&v40, v10, 1, 0);
  if (!v19)
  {
    goto LABEL_35;
  }

  v20 = v19;
  if (v10 >= 1)
  {
    bzero(v19, v10);
  }

  a5[2] = v20;
  a5[3] = v10;
  v21 = a5[1];
  if (v21 < 1)
  {
    if (!v21 && v10)
    {
      memset(v20, 1, v10);
    }
  }

  else
  {
    v22 = *a5;
    do
    {
      v23 = *v22++;
      *(v20 + v23) = 1;
      --v21;
    }

    while (v21);
  }

  v24 = **(a3 + 8);
  *(a5 + 32) = v24;
  if (v24)
  {
    v25 = v10;
  }

  else
  {
    v25 = 0;
  }

  if (v10 >= 1 && (v24 & 1) == 0)
  {
    v25 = 0;
    v26 = v10;
    do
    {
      v27 = *v20;
      v20 = (v20 + 1);
      v25 += v27 ^ 1;
      --v26;
    }

    while (v26);
  }

  v28 = a4[1];
  v40 = *a4;
  v41 = v28;
  v42 = *(a4 + 4);
  v29 = odie_alloc_aligned(&v40, 4 * v25, 4, 0);
  if (v29)
  {
    if (v10 >= 1)
    {
      v30 = 0;
      v31 = a5[2];
      v32 = *(a5 + 32);
      while (1)
      {
        v33 = *v31;
        v31 = (v31 + 1);
        if ((v33 & 1) == 0)
        {
          break;
        }

        if (v32)
        {
          v34 = 1;
LABEL_28:
          *(v29 + 4 * v30++) = v34;
        }

        ++v11;
        if (!--v10)
        {
          goto LABEL_30;
        }
      }

      v34 = *v11;
      goto LABEL_28;
    }

LABEL_30:
    v35 = 1;
    *(a5 + 9) = 1;
    if (v25 >= 1)
    {
      v36 = v29;
      v37 = v25;
      do
      {
        v38 = *v36++;
        v35 *= v38;
        *(a5 + 9) = v35;
        --v37;
      }

      while (v37);
    }

    *a6 = v29;
    *(a6 + 8) = v25;
    v39 = 1;
  }

  else
  {
LABEL_35:
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/Algorithms/MakeSpan.hpp", "makeSpan", "Unable to allocate memory in makeSpan.");
    v39 = 0;
    *a6 = 4;
  }

  *(a6 + 16) = v39;
}

double anonymous namespace::reductionFunctionMaximum(_anonymous_namespace_ *this, double result, double a3)
{
  if (result < a3)
  {
    return a3;
  }

  return result;
}

double anonymous namespace::reductionFunctionMinimum(_anonymous_namespace_ *this, double result, double a3)
{
  if (a3 < result)
  {
    return a3;
  }

  return result;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceReduceAll(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  ODIE::Kernels::Core::CPU::Utils::typeInferenceReduction(a1, a2, a3, &v6);
  if ((v7 & 1) == 0)
  {
    return v6;
  }

  result = 0;
  *a4 = v6;
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceReduceAll(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  v5 = *(a1 + 80);
  v9[4] = *(a1 + 64);
  v9[5] = v5;
  v9[6] = *(a1 + 96);
  v10 = *(a1 + 112);
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v7 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v7;
  return ODIE::Kernels::Core::CPU::valueInferenceReduceBoolean(v9, a2, a3, a4, a5, 0);
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceReduceBoolean(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5, uint64_t a6)
{
  if (a3 != 3 || *(**a2 + 8) != 2)
  {
    v52 = "all expects 3 NDArrayType inputs.";
LABEL_53:
    v53 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp";
    v54 = "validateOperandsAreNdArrayType";
    v55 = "%s";
    v60 = v52;
    goto LABEL_54;
  }

  v7 = a6;
  v11 = 1;
  do
  {
    if (v11 == 3)
    {
      goto LABEL_7;
    }

    v12 = *(*a2[v11++] + 8);
  }

  while (v12 == 2);
  v13 = v11 - 2;
  v14 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "all expects 3 NDArrayType inputs.");
  if (v13 < 2)
  {
    return v14;
  }

LABEL_7:
  if (a5 != 1 || (v15 = *a4, v16 = **a4, *(v16 + 8) != 2))
  {
    v52 = "all expects 1 NDArrayType output.";
    goto LABEL_53;
  }

  v17 = 0;
  v18 = 1;
  while (1)
  {
    v19 = a2[v17];
    if (*(*v19 + 16))
    {
      if (!v19[1])
      {
        break;
      }
    }

    v18 = v17++ < 2;
    if (v17 == 3)
    {
      goto LABEL_13;
    }
  }

  v14 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v17);
  if (!v18)
  {
    v15 = *a4;
    v16 = **a4;
LABEL_13:
    if (*(v16 + 16) && !v15[1])
    {
      v53 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp";
      v54 = "validateOperandsHaveData";
      v55 = "Operand %lld does not have data bound.";
      v60 = 0;
    }

    else
    {
      v21 = *a2;
      v20 = a2[1];
      v22 = a2[2];
      v23 = **a2;
      if (*(v23 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v56);
      }

      v24 = *(v23 + 24);
      if (*(v24 + 8) != 1)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v57);
      }

      if (*(v24 + 24) == 16)
      {
        v25 = *v21;
        if (*(*v21 + 8) != 2)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v58);
        }

        v26 = **a4;
        if (*(v26 + 8) != 2)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v59);
        }

        v27 = *(v25 + 40);
        v61 = *(v25 + 32);
        v28 = v21[1];
        v71 = 0u;
        v72 = 0u;
        v29 = *(a1 + 16);
        v62 = *a1;
        v63 = v29;
        v64 = *(a1 + 32);
        ODIE::Kernels::Core::CPU::Utils::getReductionOutputShape(v25, v20, v22, &v62, &v71, &v67);
        if ((v70 & 1) == 0)
        {
          return v67;
        }

        v30 = v69;
        v31 = **a4;
        v32 = (*a4)[1];
        v33 = a1;
        v34 = *(v31 + 16);
        v35 = *(v33 + 16);
        v62 = *v33;
        v63 = v35;
        v64 = *(v33 + 32);
        v36 = 4 * v69;
        v37 = odie_alloc_aligned(&v62, 4 * v69, 4, 0);
        if (!v37)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/Algorithms/MakeSpan.hpp", "makeSpan", "Unable to allocate memory in makeSpan.");
          return 4;
        }

        v38 = v37;
        if (v34)
        {
          memset(v32, v7 == 0, v34);
        }

        ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(&v62, v27, v61);
        if (v66)
        {
          return 0;
        }

        while (1)
        {
          v40 = v65;
          if (v30 >= 1)
          {
            bzero(v38, v36);
          }

          if (v40 >= 1)
          {
            v41 = 0;
            v42 = v72;
            v43 = v73;
            v44 = &v62 + 2;
            v45 = v40;
            while (1)
            {
              v46 = *v42++;
              if (v46 != 1)
              {
                break;
              }

              if (v43)
              {
                v47 = 0;
LABEL_35:
                *(v38 + v41++) = v47;
              }

              ++v44;
              if (!--v45)
              {
                goto LABEL_37;
              }
            }

            v47 = *v44;
            goto LABEL_35;
          }

LABEL_37:
          ODIE::Common::NDArrayType::ravelMultiIndex(v25, &v62 + 8, v40, &v67);
          if ((v68 & 1) == 0)
          {
            ODIE::Platform::abort(v48);
          }

          v49 = v67;
          ODIE::Common::NDArrayType::ravelMultiIndex(v26, v38, v30, &v67);
          if ((v68 & 1) == 0)
          {
            ODIE::Platform::abort(v50);
          }

          if (!v7)
          {
            break;
          }

          if ((*(v32 + v67) & 1) == 0)
          {
            goto LABEL_43;
          }

          v51 = 1;
LABEL_45:
          *(v32 + v67) = v51 & 1;
          ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(&v62);
          if (v66 == 1)
          {
            return 0;
          }
        }

        if ((*(v32 + v67) & 1) == 0)
        {
          v51 = 0;
          goto LABEL_45;
        }

LABEL_43:
        v51 = *(v28 + v49);
        goto LABEL_45;
      }

      v53 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/ReduceBoolean.cpp";
      v54 = "valueInferenceReduceBoolean";
      v55 = "all expects BOOLean input";
    }

LABEL_54:
    v14 = 1;
    odie_log(1, v53, v54, v55, a5, a6, v60);
  }

  return v14;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceReduceAny(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  ODIE::Kernels::Core::CPU::Utils::typeInferenceReduction(a1, a2, a3, &v6);
  if ((v7 & 1) == 0)
  {
    return v6;
  }

  result = 0;
  *a4 = v6;
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceReduceAny(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  v5 = *(a1 + 80);
  v9[4] = *(a1 + 64);
  v9[5] = v5;
  v9[6] = *(a1 + 96);
  v10 = *(a1 + 112);
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v7 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v7;
  return ODIE::Kernels::Core::CPU::valueInferenceReduceBoolean(v9, a2, a3, a4, a5, 1);
}

void ODIE::Kernels::Core::CPU::registerReduceBooleanKernels(_OWORD **a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v8[40] = 0;
  v9 = "coreml.all";
  v10 = 21;
  v11 = ODIE::Kernels::Core::CPU::typeInferenceReduceAll;
  v12 = ODIE::Kernels::Core::CPU::valueInferenceReduceAll;
  v13 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v8, 1);
  v2[40] = 0;
  v3 = "coreml.any";
  v4 = 21;
  v5 = ODIE::Kernels::Core::CPU::typeInferenceReduceAny;
  v6 = ODIE::Kernels::Core::CPU::valueInferenceReduceAny;
  v7 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  ODIE::Common::String::~String(v8);
}

void ODIE::Kernels::Core::CPU::initialize(_OWORD **a1)
{
  ODIE::Kernels::Core::CPU::registerAllocationKernels(a1);
  ODIE::Kernels::Core::CPU::registerBatchNormKernels(a1);
  ODIE::Kernels::Core::CPU::registerBuiltinKernels(a1);
  ODIE::Kernels::Core::CPU::registerBroadcastInDimsKernels(a1);
  ODIE::Kernels::Core::CPU::registerBroadcastToKernels(a1);
  ODIE::Kernels::Core::CPU::registerBroadcastShapesKernels(a1);
  ODIE::Kernels::Core::CPU::registerCastKernels(a1);
  ODIE::Kernels::Core::CPU::registerComplexKernels(a1);
  ODIE::Kernels::Core::CPU::registerConcatKernels(a1);
  ODIE::Kernels::Core::CPU::registerConvKernels(a1);
  ODIE::Kernels::Core::CPU::registerElementwiseBinaryKernels(a1);
  ODIE::Kernels::Core::CPU::registerElementwiseBooleanKernels(a1);
  ODIE::Kernels::Core::CPU::registerElementwiseUnaryKernels(a1);
  ODIE::Kernels::Core::CPU::registerErrorKernels(a1);
  ODIE::Kernels::Core::CPU::registerFillKernels(a1);
  ODIE::Kernels::Core::CPU::registerGatherScatterKernels(a1);
  ODIE::Kernels::Core::CPU::registerGeluKernels(a1);
  ODIE::Kernels::Core::CPU::registerGetShapeKernels(a1);
  ODIE::Kernels::Core::CPU::registerMatMulKernels(a1);
  ODIE::Kernels::Core::CPU::registerNonZeroKernel(a1);
  ODIE::Kernels::Core::CPU::registerPalletizationKernels(a1);
  ODIE::Kernels::Core::CPU::registerPoolingKernels(a1);
  ODIE::Kernels::Core::CPU::registerQuantizationKernels(a1);
  ODIE::Kernels::Core::CPU::registerRangeKernels(a1);
  ODIE::Kernels::Core::CPU::registerReshapeKernels(a1);
  ODIE::Kernels::Core::CPU::registerReduceKernels(a1);
  ODIE::Kernels::Core::CPU::registerReduceBooleanKernels(a1);
  ODIE::Kernels::Core::CPU::registerSelectKernels(a1);
  ODIE::Kernels::Core::CPU::registerSliceKernels(a1);
  ODIE::Kernels::Core::CPU::registerSplitKernels(a1);
  ODIE::Kernels::Core::CPU::registerSoftmaxKernels(a1);
  ODIE::Kernels::Core::CPU::registerStackKernels(a1);
  ODIE::Kernels::Core::CPU::registerTileKernel(a1);
  ODIE::Kernels::Core::CPU::registerTransposeKernels(a1);

  ODIE::Kernels::Core::CPU::registerWhereKernels(a1);
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceReshape(__int128 *a1, uint64_t **a2, uint64_t a3, ODIE::Common::NDArrayType **a4)
{
  v4 = a2[1];
  if (!v4[1])
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Reshape.cpp", "typeInferenceReshape", "coreml.reshape type inference requires shape operand to have data.");
    return 2;
  }

  if (*(*v4 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v22);
  }

  v6 = **a2;
  if (*(v6 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v23);
  }

  if ((*(v6 + 16) & 0x8000000000000000) != 0)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Reshape.cpp", "typeInferenceReshape", "coreml.reshape type inference requires input shape to be fully known.");
    return 2;
  }

  v7 = v4[1];
  v8 = **(*v4 + 40);
  v9 = a1[1];
  v26 = *a1;
  v27 = v9;
  v28 = *(a1 + 4);
  v10 = a1[1];
  v29 = *a1;
  v30 = v10;
  v31 = *(a1 + 4);
  v11 = odie_alloc_aligned(&v29, 4 * v8, 4, 0);
  v12 = v11;
  if (v8 < 1)
  {
LABEL_15:
    v31 = v28;
    v29 = v26;
    v30 = v27;
    ODIE::Common::NDArrayType::create(&v29, *(v6 + 24), v8, v12, v8, &ODIE::Common::Constants::kDefaultDimOrdering, v8, &v24);
    if ((v25 & 1) == 0)
    {
      return v24;
    }

    v18 = v24;
    if ((*(v6 + 16) & 0x8000000000000000) != 0 || v24[2] < 0)
    {
      goto LABEL_21;
    }

    ODIE::Common::NDArrayType::getNumElements(&v29, v6);
    if ((BYTE4(v29) & 1) == 0)
    {
      ODIE::Platform::abort(v19);
    }

    v20 = v29;
    ODIE::Common::NDArrayType::getNumElements(&v24, v18);
    if ((BYTE4(v24) & 1) == 0)
    {
      ODIE::Platform::abort(v21);
    }

    if (v20 == v24)
    {
LABEL_21:
      result = 0;
      *a4 = v18;
      return result;
    }

    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Reshape.cpp", "typeInferenceReshape", "coreml.reshape type inference requires input and output types to have same number of elements. Possibly malformed new shape.");
    return 2;
  }

  v13 = 0;
  v14 = -1;
  v15 = 1;
  do
  {
    v16 = *(v7 + 4 * v13);
    *(v11 + 4 * v13) = v16;
    if (v16 == -1)
    {
      if (v14 != -1)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Reshape.cpp", "typeInferenceReshape", "coreml.reshape type inference: more than one dimension's new length is -1");
        return 2;
      }

      v14 = v13;
    }

    else
    {
      v15 *= v16;
    }

    ++v13;
  }

  while (v8 != v13);
  if (v14 == -1)
  {
    goto LABEL_15;
  }

  ODIE::Common::NDArrayType::getNumElements(&v29, v6);
  result = v29;
  if (BYTE4(v29) == 1)
  {
    v12[v14] = v29 / v15;
    goto LABEL_15;
  }

  return result;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceShrinkDims(__int128 *a1, uint64_t **a2, uint64_t a3, ODIE::Common::NDArrayType **a4)
{
  v4 = a2[1];
  v5 = v4[1];
  if (v5)
  {
    v7 = **a2;
    if (*(v7 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v29);
    }

    v8 = *(*v4 + 16);
    v9 = v8 >> 2;
    v10 = *(v7 + 40);
    v11 = *(v7 + 32);
    if (v8 < 4)
    {
LABEL_10:
      v16 = a1[1];
      v32 = *a1;
      v33 = v16;
      v34 = *(a1 + 4);
      v17 = a1[1];
      v35 = *a1;
      v36 = v17;
      v37 = *(a1 + 4);
      v18 = odie_alloc_aligned(&v35, 4 * (v11 - v9), 4, 0);
      if (v11 >= 1)
      {
        v19 = 0;
        v20 = 0;
        do
        {
          v21 = v5;
          if (v8 < 4)
          {
LABEL_17:
            v18[v20++] = *(v10 + 4 * v19);
          }

          else
          {
            while (1)
            {
              v22 = *v21;
              if (*v21 < 0)
              {
                do
                {
                  v22 += v11;
                }

                while (v22 < 0);
              }

              if (v19 == v22)
              {
                break;
              }

              if (++v21 == &v5[v9])
              {
                goto LABEL_17;
              }
            }
          }

          ++v19;
        }

        while (v19 != v11);
      }

      v37 = v34;
      v35 = v32;
      v36 = v33;
      ODIE::Common::NDArrayType::create(&v35, *(v7 + 24), (v11 - v9), v18, v11 - v9, &ODIE::Common::Constants::kDefaultDimOrdering, v11 - v9, &v30);
      if ((v31 & 1) == 0)
      {
        ODIE::Platform::abort(v23);
      }

      v24 = v30;
      if ((*(v7 + 16) & 0x8000000000000000) != 0)
      {
        goto LABEL_24;
      }

      ODIE::Common::NDArrayType::getNumElements(&v35, v7);
      if ((BYTE4(v35) & 1) == 0)
      {
        ODIE::Platform::abort(v25);
      }

      v26 = v35;
      ODIE::Common::NDArrayType::getNumElements(&v30, v24);
      if ((BYTE4(v30) & 1) == 0)
      {
        ODIE::Platform::abort(v27);
      }

      if (v26 == v30)
      {
LABEL_24:
        result = 0;
        *a4 = v24;
        return result;
      }

      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Reshape.cpp", "typeInferenceShrinkDims", "coreml.shrink_dims type inference requires input and output types to have same number of elements. Possibly malformed new shape.");
    }

    else
    {
      if (v11 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = *(v7 + 32);
      }

      v13 = v8 >> 2;
      v14 = v4[1];
      while (1)
      {
        v15 = *v14++;
        if (*(v10 + 4 * (v15 + (((v15 & ~(v15 >> 31)) - v15 + (v15 >> 31)) / v12 + (v15 >> 31)) * v11)) != 1)
        {
          break;
        }

        if (!--v13)
        {
          goto LABEL_10;
        }
      }

      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Reshape.cpp", "typeInferenceShrinkDims", "coreml.shrink_dims must shrink axes that are equal to 1 got %d at index %d");
    }
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Reshape.cpp", "typeInferenceShrinkDims", "coreml.shrink_dims type inference requires axes operand to have data.");
  }

  return 2;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceExpandDims(__int128 *a1, uint64_t **a2, uint64_t a3, ODIE::Common::NDArrayType **a4)
{
  v4 = a2[1];
  v5 = v4[1];
  if (v5)
  {
    v7 = **a2;
    if (*(v7 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v33);
    }

    v8 = *(*v4 + 16);
    v9 = *(v7 + 40);
    v10 = *(v7 + 32);
    v11 = a1[1];
    v36 = *a1;
    v37 = v11;
    v38 = *(a1 + 4);
    v12 = (v10 + (v8 >> 2));
    v13 = a1[1];
    v39 = *a1;
    v40 = v13;
    v41 = *(a1 + 4);
    v14 = odie_alloc_aligned(&v39, 4 * v12, 4, 0);
    v15 = v14;
    if (v10 >= 1)
    {
      v16 = v14;
      v17 = v10;
      do
      {
        v18 = *v9++;
        *v16++ = v18;
        --v17;
      }

      while (v17);
    }

    if ((v8 >> 2) >= 1)
    {
      v19 = 0;
      v20 = v10 + 1;
      do
      {
        v21 = *(v5 + 4 * v19);
        if (v21 < 0)
        {
          do
          {
            v21 += v20;
          }

          while (v21 < 0);
        }

        v22 = v21;
        if (v12 - 1 > v21)
        {
          v23 = &v15[v12 - 1];
          v24 = v12 - 1;
          v25 = v23;
          do
          {
            v26 = *--v25;
            *v23 = v26;
            --v24;
            v23 = v25;
          }

          while (v24 > v22);
        }

        v15[v22] = 1;
        ++v19;
        ++v20;
      }

      while (v19 != ((v8 >> 2) & 0x7FFFFFFF));
    }

    v41 = v38;
    v39 = v36;
    v40 = v37;
    ODIE::Common::NDArrayType::create(&v39, *(v7 + 24), (v10 + (v8 >> 2)), v15, (v10 + (v8 >> 2)), &ODIE::Common::Constants::kDefaultDimOrdering, (v10 + (v8 >> 2)), &v34);
    if ((v35 & 1) == 0)
    {
      ODIE::Platform::abort(v27);
    }

    v28 = v34;
    if ((*(v7 + 16) & 0x8000000000000000) != 0)
    {
      goto LABEL_19;
    }

    ODIE::Common::NDArrayType::getNumElements(&v39, v7);
    if ((BYTE4(v39) & 1) == 0)
    {
      ODIE::Platform::abort(v29);
    }

    v30 = v39;
    ODIE::Common::NDArrayType::getNumElements(&v34, v28);
    if ((BYTE4(v34) & 1) == 0)
    {
      ODIE::Platform::abort(v31);
    }

    if (v30 == v34)
    {
LABEL_19:
      result = 0;
      *a4 = v28;
      return result;
    }

    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Reshape.cpp", "typeInferenceExpandDims", "coreml.expand_dims type inference requires input and output types to have same number of elements. Possibly malformed new shape.");
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Reshape.cpp", "typeInferenceExpandDims", "coreml.expand_dims type inference requires axes operand to have data.");
  }

  return 2;
}

void ODIE::Kernels::Core::CPU::registerReshapeKernels(_OWORD **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14[40] = 0;
  v15 = "coreml.reshape";
  v16 = 29;
  v17 = ODIE::Kernels::Core::CPU::typeInferenceReshape;
  v18 = ODIE::Kernels::Core::CPU::valueInferenceReshape;
  v19 = 0;
  v8[40] = 0;
  v9 = "coreml.shrink_dims";
  v10 = 37;
  v11 = ODIE::Kernels::Core::CPU::typeInferenceShrinkDims;
  v12 = ODIE::Kernels::Core::CPU::valueInferenceReshape;
  v13 = 0;
  v2[40] = 0;
  v3 = "coreml.expand_dims";
  v4 = 37;
  v5 = ODIE::Kernels::Core::CPU::typeInferenceExpandDims;
  v6 = ODIE::Kernels::Core::CPU::valueInferenceReshape;
  v7 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v14, 1);
  ODIE::Registration::KernelRegistry::addKernel(a1, v8, 1);
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  ODIE::Common::String::~String(v8);
  ODIE::Common::String::~String(v14);
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceSelect(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  if (a2[1][1])
  {
    v6 = **a2;
    if (*(v6 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v17);
    }

    v7 = *(v6 + 32);
    v8 = v20;
    if (BYTE4(v20) == 1)
    {
      v9 = *(v6 + 32) - 1;
      v10 = *(v6 + 40);
      v11 = a1[1];
      v20 = *a1;
      v21 = v11;
      v22 = *(a1 + 4);
      v12 = odie_alloc_aligned(&v20, 4 * v9, 4, 0);
      if (v7 >= 1)
      {
        v13 = 0;
        do
        {
          if (v8)
          {
            v12[v13++] = *v10;
          }

          ++v10;
          --v8;
          --v7;
        }

        while (v7);
      }

      v14 = *(v6 + 48);
      v22 = *(a1 + 4);
      v15 = a1[1];
      v20 = *a1;
      v21 = v15;
      ODIE::Common::NDArrayType::create(&v20, *(v6 + 24), v9, v12, v9, v14, v9, &v18);
      if (v19)
      {
        v8 = 0;
        *a4 = v18;
      }

      else
      {
        return v18;
      }
    }
  }

  else
  {
    return 2;
  }

  return v8;
}

void anonymous namespace::validateAndGetDimValue(uint64_t this, int **a2, uint64_t a3)
{
  if (*(*a2 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v10);
  }

  if ((*a2)[8])
  {
    v11 = "select kernel requires dim input to be 0D.";
LABEL_23:
    v8 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Select.cpp", "validateAndGetDimValue", v11, v16, v17);
    v9 = 0;
    goto LABEL_12;
  }

  if (*(*a2 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v12);
  }

  v4 = *(*a2 + 3);
  if (*(v4 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v13);
  }

  if (*(v4 + 24) - 27 <= 0xFFFFFFFD)
  {
    v11 = "select kernel requires dim operand to be Int32.";
    goto LABEL_23;
  }

  if (*(*a2 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v14);
  }

  v5 = *(*a2 + 3);
  if (*(v5 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    goto LABEL_21;
  }

  if (*(v5 + 24) != 25)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not int32.");
LABEL_21:
    ODIE::Platform::abort(v15);
  }

  v6 = *a2[1];
  v7 = a3 & (v6 >> 31);
  v8 = v7 + v6;
  if (v7 + v6 < 0 || v8 >= a3)
  {
    v11 = "select kernel dim %d is illegal. Must be between 0 and %d.";
    v16 = (v7 + v6);
    v17 = a3;
    goto LABEL_23;
  }

  v9 = 1;
LABEL_12:
  *this = v8;
  *(this + 4) = v9;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceSelect(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  if (a3 != 3 || *(**a2 + 8) != 2)
  {
    v50 = "reduce_mean expects 3 NDArrayType inputs.";
LABEL_55:
    v51 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp";
    v52 = "validateOperandsAreNdArrayType";
    v53 = "%s";
    v64 = v50;
LABEL_56:
    v11 = 1;
    odie_log(1, v51, v52, v53, a5, v64, v65);
    return v11;
  }

  v8 = 1;
  while (v8 != 3)
  {
    v9 = *(*a2[v8++] + 8);
    if (v9 != 2)
    {
      v10 = v8 - 2;
      v11 = 1;
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "reduce_mean expects 3 NDArrayType inputs.");
      if (v10 < 2)
      {
        return v11;
      }

      break;
    }
  }

  if (a5 != 1 || (v12 = *a4, v13 = **a4, *(v13 + 8) != 2))
  {
    v50 = "reduce_mean expects 1 NDArrayType output.";
    goto LABEL_55;
  }

  v14 = 0;
  v15 = 1;
  while (1)
  {
    v16 = a2[v14];
    if (*(*v16 + 16))
    {
      if (!v16[1])
      {
        break;
      }
    }

    v15 = v14++ < 2;
    if (v14 == 3)
    {
      goto LABEL_13;
    }
  }

  v11 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v14);
  if (v15)
  {
    return v11;
  }

  v12 = *a4;
  v13 = **a4;
LABEL_13:
  if (*(v13 + 16) && !v12[1])
  {
    v51 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp";
    v52 = "validateOperandsHaveData";
    v53 = "Operand %lld does not have data bound.";
    v64 = 0;
    goto LABEL_56;
  }

  v18 = *a2;
  v17 = a2[1];
  v19 = a2[2];
  v20 = **a2;
  if (*(v20 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v55);
  }

  v21 = *(v20 + 40);
  v22 = *(v20 + 32);
  if ((v68 & 1) == 0)
  {
    ODIE::Platform::abort(v23);
  }

  v24 = v67;
  v25 = v21[v67];
  if (*(*v19 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v56);
  }

  if ((*v19)[8])
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Select.cpp", "validateAndGetIndexValue", "select kernel requires index input to be 0D.", v63);
    goto LABEL_74;
  }

  if (*(*v19 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v59);
  }

  v26 = *(*v19 + 3);
  if (*(v26 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v60);
  }

  if (*(v26 + 24) - 27 <= 0xFFFFFFFD)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Select.cpp", "validateAndGetIndexValue", "select kernel requires index operand to be Int32.");
    goto LABEL_74;
  }

  if (*(*v19 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v61);
  }

  v27 = *(*v19 + 3);
  if (*(v27 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    goto LABEL_72;
  }

  if (*(v27 + 24) != 25)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not int32.");
LABEL_72:
    ODIE::Platform::abort(v62);
  }

  v28 = (v25 & (*v19[1] >> 31)) + *v19[1];
  if (v28 < 0 || v28 >= v25)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Select.cpp", "validateAndGetIndexValue", "select kernel index %d is illegal. Must be between 0 and %d.");
LABEL_74:
    ODIE::Platform::abort(v57);
  }

  v29 = *a4;
  v30 = **a4;
  if (*(v30 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v58);
  }

  v31 = *(v20 + 32);
  v32 = *(v30 + 32);
  if (v32 != v31 - 1)
  {
    v51 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Select.cpp";
    v52 = "validateOutputOperand";
    v53 = "select output rank must be one less than input rank. output rank = %d input rank = %d.";
    v64 = *(v30 + 32);
    v65 = *(v20 + 32);
    goto LABEL_56;
  }

  if (v31 <= 1)
  {
LABEL_38:
    v38 = 1;
    if (v24 >= 1)
    {
      v39 = v21;
      v40 = v24;
      do
      {
        v41 = *v39++;
        v38 *= v41;
        --v40;
      }

      while (v40);
    }

    if (v24 < 0)
    {
      v42 = -1;
    }

    else
    {
      v42 = v24;
    }

    v43 = (v42 + 1);
    v44 = 1;
    if (v22 > v43)
    {
      do
      {
        v44 *= v21[v43++];
      }

      while (v43 < v22);
    }

    if (v38 >= 1)
    {
      v45 = *(*(v20 + 24) + 16) * v44;
      v46 = v45 * v21[v24];
      v47 = (v18[1] + v45 * v28);
      v48 = v29[1];
      do
      {
        memcpy(v48, v47, v45);
        v47 += v46;
        v48 += v45;
        --v38;
      }

      while (v38);
    }

    return 0;
  }

  v33 = 0;
  v34 = *(v20 + 40);
  v35 = *(v30 + 40);
  v36 = 1;
  while (v33 < v67)
  {
    v37 = *(v35 + 4 * v33);
    if (v37 != *(v34 + 4 * v33))
    {
      v66 = *(v34 + 4 * v33);
      v54 = "stack output shape validation failed. at dim %d, output shape = %d expected = %d";
      goto LABEL_58;
    }

LABEL_36:
    v36 = ++v33 < v32;
    if (v32 == v33)
    {
      if (v33 >= v32)
      {
        goto LABEL_38;
      }

      return 1;
    }
  }

  if (v67 == v33)
  {
    goto LABEL_36;
  }

  v37 = *(v35 + 4 * v33);
  if (v37 == *(v34 + 4 * v33 + 4))
  {
    goto LABEL_36;
  }

  v66 = *(v34 + 4 * v33 + 4);
  v54 = "select output shape validation failed. at dim %d, output shape = %d expected = %d";
LABEL_58:
  v11 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Select.cpp", "validateOutputOperand", v54, v33, v37, v66);
  if (!v36)
  {
    goto LABEL_38;
  }

  return v11;
}

void ODIE::Kernels::Core::CPU::registerSelectKernels(_OWORD **a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1[40] = 0;
  v2 = "coreml.select";
  v3 = 27;
  v4 = ODIE::Kernels::Core::CPU::typeInferenceSelect;
  v5 = ODIE::Kernels::Core::CPU::valueInferenceSelect;
  v6 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v1, 1);
  ODIE::Common::String::~String(v1);
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceSlice(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a2[1][1];
  if (!v4)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Slice.cpp", "typeInferenceSlice", "coreml.slice type inference requires start indices to have data.");
    return 3;
  }

  v5 = a2[2][1];
  if (!v5)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Slice.cpp", "typeInferenceSlice", "coreml.slice type inference requires end indices to have data.");
    return 3;
  }

  v6 = a2[3][1];
  if (!v6)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Slice.cpp", "typeInferenceSlice", "coreml.slice type inference requires strides to have data.");
    return 3;
  }

  v9 = **a2;
  if (*(v9 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v20);
  }

  v10 = *(v9 + 32);
  if (!result)
  {
    v12 = a1[1];
    v23 = *a1;
    v24 = v12;
    v25 = *(a1 + 4);
    v13 = odie_alloc_aligned(&v23, 4 * v10, 4, 0);
    if (v10 >= 1)
    {
      for (i = 0; i != v10; ++i)
      {
        v15 = v27[i];
        if (v15 == -1 || (v16 = v26[i], v16 == -1))
        {
          v13[i] = -1;
        }

        else
        {
          v13[i] = 0;
          if ((*(v6 + 4 * i) & 0x80000000) != 0)
          {
            if (v15 > v16)
            {
              v18 = 1;
              do
              {
                v13[i] = v18;
                v15 += *(v6 + 4 * i);
                ++v18;
              }

              while (v15 > v16);
            }
          }

          else if (v15 < v16)
          {
            v17 = 1;
            do
            {
              v13[i] = v17;
              v15 += *(v6 + 4 * i);
              ++v17;
            }

            while (v15 < v16);
          }
        }
      }
    }

    v25 = *(a1 + 4);
    v19 = a1[1];
    v23 = *a1;
    v24 = v19;
    ODIE::Common::NDArrayType::create(&v23, *(v9 + 24), v10, v13, v10, *(v9 + 48), *(v9 + 32), &v21);
    if (v22)
    {
      result = 0;
      *a4 = v21;
    }

    else
    {
      return v21;
    }
  }

  return result;
}

uint64_t anonymous namespace::resolveStartAndEndIndices(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 < 1)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v8 = *(a1 + 4 * v7);
    if (v8 != -1)
    {
      break;
    }

    *(a6 + 4 * v7) = -1;
    *(a7 + 4 * v7) = -1;
LABEL_26:
    if (a2 == ++v7)
    {
      return 0;
    }
  }

  v9 = *(a5 + 4 * v7);
  if (v9)
  {
    if (v9 <= 0)
    {
      v10 = v8 - 1;
    }

    else
    {
      v10 = *(a1 + 4 * v7);
    }

    v11 = (v8 & (*(a3 + 4 * v7) >> 31)) + *(a3 + 4 * v7);
    if (v10 >= v11)
    {
      v10 = (v8 & (*(a3 + 4 * v7) >> 31)) + *(a3 + 4 * v7);
    }

    if (v11 < 0)
    {
      v10 = 0;
    }

    *(a6 + 4 * v7) = v10;
    v12 = *(a5 + 4 * v7);
    v13 = *(a4 + 4 * v7);
    if (v12 >= 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = -1;
    }

    if (v13 >= v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = v8;
    }

    v16 = v15 + v13;
    if (v12 <= 0)
    {
      --v8;
    }

    if (v8 >= v16)
    {
      v8 = v16;
    }

    if (v16 < v14)
    {
      v8 = v14;
    }

    *(a7 + 4 * v7) = v8;
    goto LABEL_26;
  }

  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Slice.cpp", "resolveStartAndEndIndices", "slice kernel: stride[%d] is 0. Not allowed.", v7);
  return 3;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceSlice(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  v40 = *MEMORY[0x277D85DE8];
  if (a3 != 4 || *(**a2 + 8) != 2)
  {
    v30 = "slice expects 4 packed NDArrayType inputs.";
LABEL_25:
    v31 = "validateOperandsAreNdArrayType";
    v32 = "%s";
    v35 = v30;
LABEL_26:
    v12 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", v31, v32, a5, v35);
    return v12;
  }

  v9 = 1;
  while (v9 != 4)
  {
    v10 = *(*a2[v9++] + 8);
    if (v10 != 2)
    {
      v11 = v9 - 2;
      v12 = 1;
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "slice expects 4 packed NDArrayType inputs.");
      if (v11 < 3)
      {
        return v12;
      }

      break;
    }
  }

  if (a5 != 1 || (v13 = *a4, v14 = **a4, *(v14 + 8) != 2))
  {
    v30 = "slice expects packed 1 NDArrayType output.";
    goto LABEL_25;
  }

  v15 = 0;
  v16 = 1;
  while (1)
  {
    v17 = a2[v15];
    if (*(*v17 + 16))
    {
      if (!v17[1])
      {
        break;
      }
    }

    v16 = v15++ < 3;
    if (v15 == 4)
    {
      goto LABEL_13;
    }
  }

  v12 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v15);
  if (v16)
  {
    return v12;
  }

  v13 = *a4;
  v14 = **a4;
LABEL_13:
  if (*(v14 + 16) && !v13[1])
  {
    v31 = "validateOperandsHaveData";
    v32 = "Operand %lld does not have data bound.";
    v35 = 0;
    goto LABEL_26;
  }

  v18 = *a2;
  v19 = a2[3];
  v20 = a2[1][1];
  v21 = a2[2][1];
  v22 = v19[1];
  v23 = *(*v19 + 16);
  if (*(v14 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v33);
  }

  v24 = *v18;
  if (*(*v18 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v34);
  }

  v25 = v18[1];
  v26 = v13[1];
  if (!v27)
  {
    v28 = *(a1 + 16);
    v36[0] = *a1;
    v36[1] = v28;
    v37 = *(a1 + 32);
  }

  return v27;
}

uint64_t anonymous namespace::performSliceComputation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, int *a7, uint64_t a8, int *a9, uint64_t a10, uint64_t a11, char a12)
{
  v48 = *MEMORY[0x277D85DE8];
  v12 = *(*(a1 + 24) + 16);
  if ((v12 & 0x8000000000000000) != 0)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Slice.cpp", "performSliceComputation", "Slice kernel does not support unknown element size.", a5, a6, a7, a8);
    return 3;
  }

  else
  {
    v17 = *(a1 + 32);
    ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(v44, *(a1 + 40), v17);
    if (v46)
    {
      return 0;
    }

    else
    {
      v18 = a4;
      if (a12)
      {
        v19 = a3;
      }

      else
      {
        a4 = a3;
        v19 = v18;
      }

      while (1)
      {
        v20 = v45[10];
        if (v17 >= 1)
        {
          v21 = v47;
          v23 = a9;
          v22 = a5;
          v24 = v45;
          v25 = a7;
          v26 = v17;
          do
          {
            v28 = *v22++;
            v27 = v28;
            v30 = *v24++;
            v29 = v30;
            v32 = *v23++;
            v31 = v32;
            v33 = v27 + v32 * v29;
            *v21 = v33;
            v35 = *v25++;
            v34 = v35;
            if (v31 < 1)
            {
              if (v33 <= v34)
              {
                goto LABEL_21;
              }
            }

            else if (v33 >= v34)
            {
              goto LABEL_21;
            }

            ++v21;
            --v26;
          }

          while (v26);
        }

        ODIE::Common::NDArrayType::ravelMultiIndex(a1, v45, v20, &v42);
        v36 = v42;
        if (v43 != 1)
        {
          break;
        }

        ODIE::Common::NDArrayType::ravelMultiIndex(a2, v47, v17, &v42);
        v37 = v42;
        if (v43 != 1)
        {
          return v42;
        }

        if (a12)
        {
          v38 = v42;
        }

        else
        {
          v38 = v36;
        }

        if (a12)
        {
          v37 = v36;
        }

        memcpy((a4 + v12 * v38), (v19 + v12 * v37), v12);
LABEL_21:
        ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(v44);
        if (v46 == 1)
        {
          return 0;
        }
      }
    }
  }

  return v36;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceSliceUpdate(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  if (a3 == 5 && (v5 = **a2, *(v5 + 8) == 2))
  {
    v8 = 1;
    while (v8 != 5)
    {
      v9 = *(*a2[v8++] + 8);
      if (v9 != 2)
      {
        v10 = v8 - 2;
        v11 = 1;
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "coreml.slice_update expects 5 packed NDArrayType inputs.");
        if (v10 < 4)
        {
          return v11;
        }

        v5 = **a2;
        if (*(v5 + 8) != 2)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v21);
        }

        break;
      }
    }

    v12 = *(v5 + 40);
    v13 = *(v5 + 32);
    v14 = a1[1];
    v24 = *a1;
    v25 = v14;
    v26 = *(a1 + 4);
    v15 = odie_alloc_aligned(&v24, 4 * v13, 4, 0);
    if (v13 >= 1)
    {
      v16 = v15;
      v17 = v13;
      do
      {
        v18 = *v12++;
        *v16++ = v18;
        --v17;
      }

      while (v17);
    }

    v26 = *(a1 + 4);
    v19 = a1[1];
    v24 = *a1;
    v25 = v19;
    ODIE::Common::NDArrayType::create(&v24, *(v5 + 24), v13, v15, v13, &ODIE::Common::Constants::kDefaultDimOrdering, v13, &v22);
    if (v23)
    {
      v11 = 0;
      *a4 = v22;
    }

    else
    {
      return v22;
    }
  }

  else
  {
    v11 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "coreml.slice_update expects 5 packed NDArrayType inputs.");
  }

  return v11;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceSliceUpdate(uint64_t a1, void *a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a3 != 5 || *(**a2 + 8) != 2)
  {
    v33 = "coreml.slice_update expects 5 packed NDArrayValue inputs.";
LABEL_26:
    v34 = "validateOperandsAreNdArrayType";
    v35 = "%s";
    v39 = v33;
LABEL_27:
    v12 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", v34, v35, a5, v39);
    return v12;
  }

  v9 = 1;
  while (v9 != 5)
  {
    v10 = *(*a2[v9++] + 8);
    if (v10 != 2)
    {
      v11 = v9 - 2;
      v12 = 1;
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "coreml.slice_update expects 5 packed NDArrayValue inputs.");
      if (v11 < 4)
      {
        return v12;
      }

      break;
    }
  }

  if (a5 != 1 || (v13 = *a4, v14 = **a4, *(v14 + 8) != 2))
  {
    v33 = "coreml.slice_update expects packed 1 NDArrayValue output.";
    goto LABEL_26;
  }

  v15 = 0;
  v16 = 1;
  while (1)
  {
    v17 = a2[v15];
    if (*(*v17 + 16))
    {
      if (!v17[1])
      {
        break;
      }
    }

    v16 = v15++ < 4;
    if (v15 == 5)
    {
      goto LABEL_13;
    }
  }

  v12 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v15);
  if (v16)
  {
    return v12;
  }

  v13 = *a4;
  v14 = **a4;
LABEL_13:
  if (*(v14 + 16) && !v13[1])
  {
    v34 = "validateOperandsHaveData";
    v35 = "Operand %lld does not have data bound.";
    v39 = 0;
    goto LABEL_27;
  }

  v18 = *a2;
  v19 = a2[3];
  v20 = a2[4];
  v21 = *(a2[1] + 8);
  v22 = *(a2[2] + 8);
  v23 = v19[1];
  v40 = *(*v19 + 16);
  if (*(v14 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v36);
  }

  v24 = a1;
  v25 = *v18;
  if (*(*v18 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v37);
  }

  v26 = *v20;
  if (*(*v20 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v38);
  }

  v27 = v18[1];
  v28 = v13[1];
  v29 = v20[1];
  if (!v30)
  {
    memcpy(v28, v27, *(v25 + 16));
    v31 = *(v24 + 16);
    v41[0] = *v24;
    v41[1] = v31;
    v42 = *(v24 + 32);
  }

  return v30;
}

void ODIE::Kernels::Core::CPU::registerSliceKernels(_OWORD **a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v8[40] = 0;
  v9 = "coreml.slice";
  v10 = 25;
  v11 = ODIE::Kernels::Core::CPU::typeInferenceSlice;
  v12 = ODIE::Kernels::Core::CPU::valueInferenceSlice;
  v13 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v8, 1);
  v2[40] = 0;
  v3 = "coreml.slice_update";
  v4 = 39;
  v5 = ODIE::Kernels::Core::CPU::typeInferenceSliceUpdate;
  v6 = ODIE::Kernels::Core::CPU::valueInferenceSliceUpdate;
  v7 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  ODIE::Common::String::~String(v8);
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceSoftmax(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  {
    v24 = "Invalid input operand types passed to Softmax kernel.";
LABEL_18:
    v23 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Softmax.cpp", "typeInferenceSoftmax", v24);
    return v23;
  }

  v7 = **a2;
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v25);
  }

  v8 = *(v7 + 32);
  v9 = *(v7 + 24);
  if (*(v9 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v26);
  }

  v10 = *(v9 + 24);
  if (v10 == 69)
  {
    v11 = 4;
    goto LABEL_8;
  }

  if (v10 != 68)
  {
    v24 = "Invalid input type detected in softmax kernel. Not fp32/fp16.";
    goto LABEL_18;
  }

  v11 = 2;
LABEL_8:
  v12 = a1[1];
  v30 = *a1;
  v31 = v12;
  v32 = *(a1 + 4);
  v13 = odie_alloc_aligned(&v30, 4 * v8, 4, 0);
  v14 = v13;
  if (v8 >= 1)
  {
    v15 = *(v7 + 40);
    v16 = v8;
    v17 = v13;
    do
    {
      v18 = *v15++;
      *v17++ = v18;
      --v16;
    }

    while (v16);
  }

  v19 = a1[1];
  v30 = *a1;
  v31 = v19;
  v32 = *(a1 + 4);
  ODIE::Common::ScalarType::create(&v30, v10, v11, &v28);
  if ((v29 & 1) == 0)
  {
    ODIE::Platform::abort(v20);
  }

  v21 = a1[1];
  v30 = *a1;
  v31 = v21;
  v32 = *(a1 + 4);
  ODIE::Common::NDArrayType::create(&v30, v28, v8, v14, v8, &ODIE::Common::Constants::kDefaultDimOrdering, v8, &v28);
  if ((v29 & 1) == 0)
  {
    ODIE::Platform::abort(v22);
  }

  v23 = 0;
  *a4 = v28;
  return v23;
}

uint64_t anonymous namespace::validateInputOperandTypes(void **a1, uint64_t a2)
{
  if (a2 != 2)
  {
    v7 = "Softmax kernel requires two inputs.";
LABEL_17:
    v5 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Softmax.cpp", "validateInputOperandTypes", v7);
    return v5;
  }

  if (*(**a1 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v8);
  }

  v2 = *a1[1];
  if (*(v2 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v9);
  }

  if (*(v2 + 32))
  {
    v7 = "Softmax kernel's axis rank must be 0.";
    goto LABEL_17;
  }

  v3 = *a1[1];
  if (*(v3 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v10);
  }

  v4 = *(v3 + 24);
  if (*(v4 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v11);
  }

  if (*(v4 + 24) != 25)
  {
    v7 = "Softmax kernel's axis element type must be Int32.";
    goto LABEL_17;
  }

  return 0;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceSoftmax(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4)
{
  v95 = *MEMORY[0x277D85DE8];
  {
    v72 = "Invalid input operand types passed to Softmax kernel.";
    goto LABEL_62;
  }

  v78 = (*a2)[1];
  if (!v78 || !a2[1][1] || (v77 = (*a4)[1]) == 0)
  {
    v72 = "Softmax kernel requires data to be bound to both inputs and output.";
LABEL_62:
    v33 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Softmax.cpp", "valueInferenceSoftmax", v72);
    return v33;
  }

  v7 = **a2;
  v82 = v7;
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v73);
  }

  v8 = *(v7 + 32);
  v9 = **a4;
  v81 = v9;
  if (*(v9 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v74);
  }

  if (*(v7 + 16) != *(v9 + 16))
  {
    v72 = "Softmax kernel requires input and output data to be of same size.";
    goto LABEL_62;
  }

  v10 = *(v7 + 32);
  v11 = *a2[1][1];
  v80 = (v8 & (v11 >> 31)) + v11;
  v79 = *(v7 + 40);
  v94 = 0;
  memset(v93, 0, sizeof(v93));
  v91 = 0;
  memset(v90, 0, sizeof(v90));
  if ((v8 & 0x80000000) == 0)
  {
    *(v93 + v8) = 1;
    if (v8)
    {
      v12 = 0;
      v13 = 4 * v8;
      v14 = 1;
      v15 = v8;
      do
      {
        v16 = v79[v15 - 1];
        v12 |= v16 < 0;
        v14 *= v16;
        if (v12)
        {
          v14 = -1;
        }

        *&v92[v15 * 4] = v14;
        --v15;
      }

      while (v15 * 4);
      v17 = 0;
      v18 = *(v81 + 40) - 4;
      v19 = 1;
      *(v90 + v8) = 1;
      do
      {
        v20 = *(v18 + v13);
        v17 |= v20 < 0;
        v19 *= v20;
        if (v17)
        {
          v19 = -1;
        }

        *&v89[v13] = v19;
        v13 -= 4;
      }

      while (v13);
    }

    else
    {
      *(v90 + v8) = 1;
    }
  }

  v21 = 4 * v80 + 4;
  v22 = *(v93 + v21);
  v23 = *(v90 + v21);
  v24 = *(a1 + 16);
  v85[0] = *a1;
  v85[1] = v24;
  v86 = *(a1 + 32);
  v25 = odie_alloc_aligned(v85, 4 * v8, 4, 0);
  if (v8 >= 1)
  {
    v27 = v79;
    v26 = v80;
    v28 = v25;
    do
    {
      if (v26)
      {
        v29 = *v27;
      }

      else
      {
        v29 = 1;
      }

      *v28++ = v29;
      ++v27;
      --v26;
      --v8;
    }

    while (v8);
  }

  v30 = **a2;
  if (*(v30 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v75);
  }

  v31 = *(v30 + 24);
  if (*(v31 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v76);
  }

  v32 = *(v31 + 24);
  ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(v85, v25, v10);
  if ((v88 & 1) == 0)
  {
    v35 = 2 * v22;
    v36 = 2 * v23;
    v37 = 4 * v22;
    v38 = 4 * v23;
    do
    {
      ODIE::Common::NDArrayType::ravelMultiIndex(v82, v85 + 8, v87, &v83);
      if ((v84 & 1) == 0)
      {
        ODIE::Platform::abort(v39);
      }

      v40 = v83;
      ODIE::Common::NDArrayType::ravelMultiIndex(v81, v85 + 8, v87, &v83);
      if ((v84 & 1) == 0)
      {
        ODIE::Platform::abort(v41);
      }

      if (v32 == 68)
      {
        v52 = v79[v80];
        if (v52 >= 1)
        {
          v53 = (v78 + 2 * v40);
          v54 = (v77 + 2 * v83);
          v55 = -1.79769313e308;
          v56 = v53;
          v57 = v79[v80];
          do
          {
            _H0 = *v56;
            __asm { FCVT            D0, H0 }

            if (v55 < _D0)
            {
              v55 = _D0;
            }

            v56 = (v56 + v35);
            --v57;
          }

          while (v57);
          v64 = 0.0;
          v65 = v53;
          v66 = v79[v80];
          do
          {
            _H0 = *v65;
            __asm { FCVT            D0, H0 }

            v64 = v64 + exp(_D0 - v55);
            v65 = (v65 + v35);
            --v66;
          }

          while (v66);
          do
          {
            _H0 = *v53;
            __asm { FCVT            D0, H0 }

            _D0 = exp(_D0 - v55) / v64;
            __asm { FCVT            H0, D0 }

            *v54 = LOWORD(_D0);
            v54 = (v54 + v36);
            v53 = (v53 + v35);
            --v52;
          }

          while (v52);
        }
      }

      else if (v32 == 69)
      {
        v42 = v79[v80];
        if (v42 >= 1)
        {
          v43 = (v78 + 4 * v40);
          v44 = (v77 + 4 * v83);
          v45 = -1.79769313e308;
          v46 = v43;
          v47 = v79[v80];
          do
          {
            if (v45 < *v46)
            {
              v45 = *v46;
            }

            v46 = (v46 + v37);
            --v47;
          }

          while (v47);
          v48 = 0.0;
          v49 = v43;
          v50 = v79[v80];
          do
          {
            v48 = v48 + exp(*v49 - v45);
            v49 = (v49 + v37);
            --v50;
          }

          while (v50);
          do
          {
            v51 = exp(*v43 - v45) / v48;
            *v44 = v51;
            v44 = (v44 + v38);
            v43 = (v43 + v37);
            --v42;
          }

          while (v42);
        }
      }

      ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(v85);
    }

    while (v88 != 1);
  }

  return 0;
}

void ODIE::Kernels::Core::CPU::registerSoftmaxKernels(_OWORD **a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1[40] = 0;
  v2 = "coreml.softmax";
  v3 = 29;
  v4 = ODIE::Kernels::Core::CPU::typeInferenceSoftmax;
  v5 = ODIE::Kernels::Core::CPU::valueInferenceSoftmax;
  v6 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v1, 1);
  ODIE::Common::String::~String(v1);
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceSplit(__int128 *a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2[1];
  if (!v5[1])
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Split.cpp", "typeInferenceSplit", "Cannot perform split op's type inference without split configuration data.", a5);
    return 2;
  }

  v8 = *a2;
  v9 = *v5;
  if (*(*v5 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v33);
  }

  v10 = *(v9 + 32);
  if (v10 >= 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Split.cpp", "typeInferenceSplit", "split configuration's rank can only be 0D or 1D.");
    return 2;
  }

  v11 = *v8;
  if (*(*v8 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v34);
  }

  v12 = *(v11 + 32);
  v14 = v41;
  if (BYTE4(v41) != 1)
  {
    return v41;
  }

  v36 = *(v11 + 40);
  v15 = v5[1];
  v35 = v36[v41];
  if (!v10)
  {
    v17 = (v36[v41] + *v15 - 1) / *v15;
LABEL_11:
    if (a5 == v17)
    {
      v37 = (v17 - 1);
      if (v17 >= 1)
      {
        v19 = 0;
        v20 = 0;
        v21 = v12;
        v22 = 4 * v12;
        v23 = v17;
        do
        {
          if (v10 == 1)
          {
            v24 = v15[v19];
          }

          else
          {
            v24 = *v15;
            if (v19 == v37)
            {
              v24 = v35 % v24;
            }
          }

          if (!v20 || *(*(v20 + 40) + 4 * v14) != v24)
          {
            v25 = a1[1];
            v41 = *a1;
            v42 = v25;
            v43 = *(a1 + 4);
            v26 = odie_alloc_aligned(&v41, v22, 4, 0);
            if (v21 >= 1)
            {
              v27 = v14;
              v28 = v26;
              v29 = v21;
              v30 = v36;
              do
              {
                v31 = v24;
                if (v27)
                {
                  v31 = *v30;
                }

                *v28++ = v31;
                ++v30;
                --v27;
                --v29;
              }

              while (v29);
            }

            v43 = *(a1 + 4);
            v32 = a1[1];
            v41 = *a1;
            v42 = v32;
            ODIE::Common::NDArrayType::create(&v41, *(v11 + 24), v21, v26, v21, *(v11 + 48), *(v11 + 32), &v39);
            if (v40 != 1)
            {
              return v39;
            }

            v20 = v39;
          }

          *(a4 + 8 * v19++) = v20;
        }

        while (v19 != v23);
      }

      return 0;
    }

    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Split.cpp", "typeInferenceSplit", "split will produce %d tensors, but outputs has %lld tensors.", v13);
    return 2;
  }

  v16 = *(*v5 + 16);
  ODIE::Common::NDArrayType::getNumElements(&v41, v9);
  v17 = v41;
  if (BYTE4(v41) != 1)
  {
    return v41;
  }

  if (!result)
  {
    goto LABEL_11;
  }

  return result;
}

void anonymous namespace::getValidatedSplitDimValue(uint64_t this, const ODIE::Common::Value *a2, int a3)
{
  if (!*(a2 + 1))
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Split.cpp", "getValidatedSplitDimValue", "Cannot perform split op without split dimension data.");
LABEL_13:
    v6 = 0;
    v5 = 2;
    goto LABEL_7;
  }

  if (*(*a2 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v7);
  }

  v4 = *(*a2 + 24);
  if (*(v4 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    goto LABEL_13;
  }

  if (*(v4 + 24) != 25)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not int32.");
    goto LABEL_13;
  }

  v5 = (a3 & (**(a2 + 1) >> 31)) + **(a2 + 1);
  if (v5 >= a3)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Split.cpp", "getValidatedSplitDimValue", "Split dimension %d is invalid. Expect between 0 and %d.");
    goto LABEL_13;
  }

  v6 = 1;
LABEL_7:
  *this = v5;
  *(this + 4) = v6;
}

uint64_t anonymous namespace::validateSplitSizes(int *a1, uint64_t a2, int a3, int a4)
{
  if (a2 < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = *a1++;
      v4 += v5;
      --a2;
    }

    while (a2);
  }

  if (v4 == a4)
  {
    return 0;
  }

  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Split.cpp", "validateSplitSizes", "split operation: count of split sizes is %d. Num of elements along split dimension %d in input is %d.", v4, a3, a4);
  return 2;
}