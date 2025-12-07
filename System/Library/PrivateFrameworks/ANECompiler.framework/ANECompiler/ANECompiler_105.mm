uint64_t ZinAneTd<4u>::HandleTileDmaDstConfig(uint64_t a1, ZinIrOpLayer *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!ZinIrOpLayer::IsNELayer(this) && !ZinIrOpLayer::IsTransposeEngineLayer(this))
  {
    ZinAssertImpl("Only NE and TransposeEngineLayer allowed\n");
  }

  v9 = (*(*this + 40))(this, 0);
  v10 = RawOrShared<ZinDMALayer>::unwrap_const_ptr(this + 496);
  if (v10)
  {
    v11 = *(*(v10 + 88) + 8) == 117;
  }

  else
  {
    v11 = 0;
  }

  (*(*a1 + 80))(a1);
  v12 = *(*(this + 65) + 800);
  v13 = *(v9 + 104);
  *(a1 + 32) = *(a1 + 32) & 0xFFFFF7FF | ((v12 != 0) << 11);
  if (!v12)
  {
    v22 = 0;
    *(a1 + 252) = *(a1 + 252) & 0xFFFF0FFF | 0x3000;
    *(a1 + 268) = *(a1 + 268) & 0xF0FFFFFF | 0x1000000;
    goto LABEL_26;
  }

  if (ZinIrSymbol::GetMemType(v12) == 2 || (ZinIrSymbol::GetBarId(v12) & 0x100) == 0)
  {
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v14)
    {
      ZinCodegen::SetResultDMA<7u>(v14, v15, v16, v17, v18, v19, v20, v21);
    }

    goto LABEL_25;
  }

  *(a1 + 32) = *(a1 + 32) & 0xFFFFF8FF | ((ZinIrSymbol::GetBarId(v12) & 7) << 8);
  TensorDesc = ZinIrSymbol::Descriptor::GetTensorDesc((*(*(this + 65) + 800) + 216));
  v68[0] = *TensorDesc;
  v24 = TensorDesc[4];
  v26 = TensorDesc[1];
  v25 = TensorDesc[2];
  v68[3] = TensorDesc[3];
  v68[4] = v24;
  v68[1] = v26;
  v68[2] = v25;
  v27 = TensorDesc[7];
  v29 = TensorDesc[5];
  v28 = TensorDesc[6];
  v68[8] = TensorDesc[8];
  v68[6] = v28;
  v68[7] = v27;
  v68[5] = v29;
  v30 = TensorDesc[12];
  v32 = TensorDesc[9];
  v31 = TensorDesc[10];
  v68[11] = TensorDesc[11];
  v68[12] = v30;
  v68[9] = v32;
  v68[10] = v31;
  v33 = *(this + 65);
  if (*(v33 + 1408) - 1 <= 1)
  {
    *(a1 + 252) |= 1u;
    v33 = *(this + 65);
  }

  ZinAneTd<4u>::SetTileDmaDstCacheHint(a1, *(v33 + 1268));
  if (*(*(this + 65) + 244))
  {
    v34 = 0x4000000;
  }

  else
  {
    v34 = 0;
  }

  *(a1 + 252) = *(a1 + 252) & 0xFBFFFFFF | v34;
  *(a5 + 152) = v12;
  v35 = *(this + 65);
  v36 = *(v35 + 768);
  v37 = *(v35 + 776);
  if (v36 < 1 || v37 <= 0)
  {
    v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v38)
    {
      ZinAneTd<4u>::HandleTileDmaDstConfig(v38, v39, v40, v41, v42, v43, v44, v45);
    }
  }

  v46 = *(a3 + 560);
  if (v36 % v46 || (v47 = v37 / v46, v37 % v46))
  {
    v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v48)
    {
      ZinAneTd<4u>::HandleTileDmaDstConfig(v48, v49, v50, v51, v52, v53, v54, v55);
    }

    goto LABEL_25;
  }

  v67 = 0;
  if (!ZinCodegenUtil::ValueToRegister(v36 / v46, (*(a1 + 280) + 272), &v67) || (*(a1 + 260) = *(a1 + 260) & 0xC000003F | ((v67 & 0xFFFFFF) << 6), v67 = 0, !ZinCodegenUtil::ValueToRegister(v47, (*(a1 + 280) + 256), &v67)))
  {
LABEL_25:
    v22 = 0;
    goto LABEL_26;
  }

  *(a1 + 264) = *(a1 + 264) & 0xC000003F | ((v67 & 0xFFFFFF) << 6);
  ZinAneTd<4u>::SetTileDmaDstFormat(a1, v13, v11);
  EventTensor = ZinCollectiveCommunicationLayer::GetEventTensor(v68);
  if (EventTensor < 1)
  {
    v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v59)
    {
      ZinAneTd<6u>::HandleTileDmaSrcConfig(v59, v60, v61, v62, v63, v64, v65, v66);
    }

    goto LABEL_25;
  }

  v58 = *(a1 + 268) & 0xF0FFFFFF | ((EventTensor & 0xF) << 24);
  *(a1 + 268) = v58;
  *(a1 + 268) = v58 & 0xFFF8FFFF | ((*(*(this + 65) + 1224) & 7) << 16);
  ZinAneTd<4u>::SetTileDmaDstZeroPad(a1, (*(this + 65) + 1232));
  v22 = 1;
LABEL_26:
  if (v12)
  {
    return v22;
  }

  else
  {
    return 1;
  }
}

uint64_t ZinAneTd<4u>::HandleANELayer(uint64_t a1, uint64_t a2, unint64_t a3, ZinAneTdInstruction *a4, void **a5, uint64_t a6, CFArrayRef *a7)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*(a5 + 88) == 1 && *(a6 + 24) == 1)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(&v28, a5[8], a5[9], (a5[9] - a5[8]) >> 1);
    if ((*(a6 + 24) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    __p = 0;
    v26 = 0;
    v27 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, *a6, *(a6 + 8), (*(a6 + 8) - *a6) >> 3);
    if (!ZinEngineLayer::RunsOnDeviceId(a2, (**a5 + 2248), &v28, &__p))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v24 = ZinSPMDUtils::AneIndexFromDeviceId((**a5 + 2248), &v28, &__p);
        ZinAneTd<4u>::HandleANELayer(buf, v24);
      }

      ZinIrNetworkStatus::SetError(a7, @"CodeGenerationFailure");
      if (__p)
      {
        v26 = __p;
        operator delete(__p);
      }

      if (v28)
      {
        v29 = v28;
        operator delete(v28);
      }

      return 0;
    }

    if (__p)
    {
      v26 = __p;
      operator delete(__p);
    }

    if (v28)
    {
      v29 = v28;
      operator delete(v28);
    }
  }

  if (!*(a2 + 520))
  {
    v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v15)
    {
      ZinAneTd<4u>::HandleANELayer(v15, v16, v17, v18, v19, v20, v21, v22);
    }

    ZinIrNetworkStatus::SetError(a7, @"CodeGenerationFailure");
    return 0;
  }

  ZinIrMemoryPools::GetSections(a5[3], 0, 1, &v28);
  v14 = *(v29 + 2);
  std::__list_imp<ZinIrSection *>::clear(&v28);
  if ((ZinAneTdInstruction::HandleTdHeader(a4, a2, a3, *a5, v14) & 1) == 0)
  {
    ZinIrNetworkStatus::SetError(a7, @"InvalidHWHeader");
    return 0;
  }

  (*(*a1 + 448))(a1);
  if (ZinIrOpLayer::IsPELayer(a2))
  {
    ZinAssertImpl("Error: PE is not supported");
  }

  if (ZinIrOpLayer::IsNELayer(a2))
  {
    if (!HandleNELayer<4u>(a2, a3, a4, *a5, a5[3], a6, a7))
    {
      return 0;
    }
  }

  else
  {
    if (!ZinIrOpLayer::IsCcdmaLayer(a2))
    {
      ZinAssertImpl("TransposeEngineLayer based graph should not need DMA buffer\n");
    }

    if ((a5[11] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    if ((*(a6 + 24) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    if ((HandleCcdmaLayer<4u>(a2, a4, *a5, (a5 + 8), a6, a7) & 1) == 0)
    {
      result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      ZinAneTd<4u>::HandleANELayer();
      return 0;
    }
  }

  result = (*(*a1 + 360))(a1, **a5, a2);
  if (result)
  {
    result = (*(*a1 + 376))(a1, a2);
    if (result)
    {
      (*(*a1 + 384))(a1, a2, a5[2]);
      (*(*a1 + 208))(a1, a2);
      if (*(a2 + 552) == 1)
      {
        (*(*a1 + 480))(a1, a2);
      }

      return 1;
    }
  }

  return result;
}

void sub_1A69337BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

BOOL HandleNELayer<4u>(ZinIrOpLayer *a1, uint64_t a2, ZinAneTdInstruction *a3, const ZinIrHalParameters **a4, void *a5, uint64_t a6, CFArrayRef *a7)
{
  v13 = *(a3 + 26);
  v32 = 0;
  if (ZinIrCodeGenGetBarIdForCoeffKDMABlock(a1, a5, &v32) || (v31 = 0, ZinIrCodeGenGetBarIdForNonCoeffKDMABlocks(a1, a5, &v31)))
  {
LABEL_3:
    v14 = @"CodeGenerationFailure";
LABEL_4:
    ZinIrNetworkStatus::SetError(a7, v14);
    return 0;
  }

  v16 = *(a1 + 20);
  if (v16 && *(v16 + 888))
  {
    ZinAneTd<4u>::SetKernelBaseHeader(v13, v32);
    v17 = *(*(a1 + 20) + 888);
    if (v17[1])
    {
      ZinIrHalH13g::~ZinIrHalH13g(v13);
    }

    if (v17[2])
    {
      ZinIrHalH13g::~ZinIrHalH13g(v13);
    }

    if (v17[4])
    {
      ZinIrHalH13g::~ZinIrHalH13g(v13);
    }

    if (v17[3])
    {
      ZinIrHalH13g::~ZinIrHalH13g(v13);
    }
  }

  if (ZinAneTdInstruction::HandleCommonConfig(a3, a1, *a4, a7))
  {
    if (((*(*v13 + 344))(v13, a1, a4, a5, a3) & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        HandleNELayer<17u>();
      }

      v14 = @"KernelDMASourceAllocationFailure";
      goto LABEL_4;
    }

    if (((*(*v13 + 280))(v13, a1, *a4, a6, a3) & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        HandleNELayer<17u>();
      }

      v14 = @"TileDMASourceAllocationFailure";
      goto LABEL_4;
    }

    if (((*(**(a3 + 26) + 288))(*(a3 + 26), a1, *a4) & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        HandleNELayer<17u>();
      }

      v14 = @"L2AllocationFailure";
      goto LABEL_4;
    }

    if (((*(**(a3 + 26) + 296))(*(a3 + 26), a1, *a4) & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        HandleNELayer<17u>();
      }

      v14 = @"NEConfigFailure";
      goto LABEL_4;
    }

    if (((*(**(a3 + 26) + 336))(*(a3 + 26), a1, *a4, a6, a3) & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        HandleNELayer<17u>();
      }

      v14 = @"TileDMADestinationAllocationFailure";
      goto LABEL_4;
    }

    if (!ZinAneTd<4u>::ValidateOCGSizes(v13, a1))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        HandleNELayer<17u>();
      }

      goto LABEL_3;
    }

    ZinAneTd<4u>::SetDoubleBufferingBasedOnOtherRegisters(v13, *(*a4 + 3));
    v18 = *(v13 + 56);
    v19 = *(v13 + 18) & 3;
    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_49;
      }

      v19 = 3;
    }

    else if (!v19)
    {
      v19 = 2;
    }

    v30 = v19;
    v20 = *(v13 + 55) & 3;
    if (v20 == 3)
    {
LABEL_49:
      ZinIrNetworkStatus::SetError(a7, @"NEConfigFailure");
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        HandleNELayer<17u>();
      }

      return 0;
    }

    v21 = (v18 >> 5) >> 3;
    v22 = ZinMirPrepareBinaryPoint::CalculateBinaryPointAdjustment(v20, &v30);
    v23 = *(v13 + 59);
    if (ZinIrOpLayer::IsNELayer(a1) && v22 + v21 + (HIWORD(v23) & 0x1F) >= 0x20u)
    {
      ZinIrNetworkStatus::SetError(a7, @"NEConfigFailure");
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        HandleNELayer<17u>();
      }

      return 0;
    }

    v24 = *(a1 + 20);
    if (v24)
    {
      if (ZinIrKernel::HasBias(v24))
      {
        v25 = *(a1 + 20);
        if (*(v25 + 664))
        {
          v26 = ldexp(1.0, v22 + v21 + ((*(v13 + 58) << 11) >> 27));
          if (!ZinIrCodegenValidBiasShift((v25 + 664), v26, v27, v28, v29))
          {
            ZinIrNetworkStatus::SetError(a7, @"NEConfigFailure");
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              HandleNELayer<17u>();
            }

            return 0;
          }
        }
      }
    }

    if (*(*a4 + 1307) != 1 || (ZinAneTd<6u>::SetDPE(v13, a1) & 1) != 0)
    {
      return 1;
    }

    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (result)
    {
      HandleNELayer<17u>();
      return 0;
    }
  }

  else
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (result)
    {
      HandleNELayer<17u>();
      return 0;
    }
  }

  return result;
}

uint64_t HandleCcdmaLayer<4u>(ZinCcdmaLayer *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, CFArrayRef *a6)
{
  if (*(*a3 + 1163))
  {
    if (ZinEngineLayer::RunsOnDeviceId(a1, (*a3 + 2248), a4, a5))
    {
      ZinCcdmaLayer::GetCcdmaMirInfo(a1);
      (*(*a1 + 608))(a1);
      ZinAneTd<4u>::SetCcdmaSrcMode();
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      HandleCcdmaLayer<4u>(a3, a4, a5);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    HandleCcdmaLayer<4u>();
  }

  ZinIrNetworkStatus::SetError(a6, @"CodeGenerationFailure");
  return 0;
}

void sub_1A69343AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, char a20, void *a21, uint64_t a22)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::string,unsigned long long>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a13);
  if (a20 == 1 && __p)
  {
    a18 = __p;
    operator delete(__p);
  }

  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  v24 = *(v22 - 104);
  if (v24)
  {
    *(v22 - 96) = v24;
    operator delete(v24);
  }

  v25 = *(v22 - 80);
  if (v25)
  {
    *(v22 - 72) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

BOOL ZinAneTd<4u>::ValidateOCGSizes(_DWORD *a1, uint64_t a2)
{
  v4 = *(*(a2 + 88) + 8);
  v5 = (v4 - 93) > 5 || ((1 << (v4 - 93)) & 0x31) == 0;
  if (v5 && !RawOrShared<ZinGOCLayer>::unwrap_const_ptr(a2 + 648))
  {
    return 1;
  }

  v6 = a1[25];
  v7 = a1[23];
  v8 = *(*(a2 + 520) + 1277);
  v9 = 1;
  if ((v4 - 97) >= 2 && v4 != 100)
  {
    v9 = v4 == 93 && RawOrShared<ZinConvLayer>::unwrap_const_ptr(a2 + 760) == 0;
  }

  v10 = a1[22];
  v11 = (v10 >> 12) & 7;
  if ((v6 & 4) != 0)
  {
    if (!v11)
    {
      return 1;
    }

    result = 1;
    if ((a1[22] & 0x6000) == 0x2000)
    {
      return result;
    }

    if ((a1[22] & 0x6000) == 0x4000)
    {
      return result;
    }

    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    goto LABEL_85;
  }

  v12 = (v10 >> 28) & 3;
  v13 = v10 >> 30;
  if ((a1[18] & 3u) < 2)
  {
    if ((v7 & 0x4000) == 0)
    {
      if (v12 == 1 && v13 == 1)
      {
        if (v11 >= 4)
        {
          result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }

          goto LABEL_85;
        }

        return 1;
      }

      if (v12 == 1 && v13 == 2 || v12 == 2 && v13 == 1)
      {
        if (v11 >= 3)
        {
          result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }

          goto LABEL_85;
        }

        return 1;
      }

      if (v12 == 2 && v13 == 2)
      {
        if (v11 >= 2)
        {
          result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }

          goto LABEL_85;
        }

        return 1;
      }

      result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      goto LABEL_76;
    }

    if (v9)
    {
      if (v11)
      {
        result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        goto LABEL_85;
      }

      return 1;
    }

    if (v8)
    {
      if (v11 >= 4)
      {
        result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        goto LABEL_85;
      }

      return 1;
    }

    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    goto LABEL_67;
  }

  if ((a1[18] & 3) == 2)
  {
    if ((v7 & 0x4000) != 0)
    {
      if (v9)
      {
        if (v11)
        {
          result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }

          goto LABEL_85;
        }

        return 1;
      }

      if (v8)
      {
        if (v11 >= 5)
        {
          result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }

          goto LABEL_85;
        }

        return 1;
      }

      result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

LABEL_67:
      ZinAneTd<6u>::ValidateOCGSizes(result, v29, v30, v31, v32, v33, v34, v35);
      return 0;
    }

    if (v12 == 1 && v13 == 1)
    {
      if (v11 >= 5)
      {
        result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        goto LABEL_85;
      }

      return 1;
    }

    if (v12 == 1 && v13 == 2 || v12 == 2 && v13 == 1)
    {
      if (v11 >= 4)
      {
        result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        goto LABEL_85;
      }

      return 1;
    }

    if (v12 != 2 || v13 != 2)
    {
      result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (result)
      {
LABEL_76:
        ZinAneTd<6u>::ValidateOCGSizes(result, v36, v37, v38, v39, v40, v41, v42);
        return 0;
      }

      return result;
    }

    if (v11 < 3)
    {
      return 1;
    }

    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

LABEL_85:
    ZinAneTd<6u>::ValidateOCGSizes(result, v15, v16, v17, v18, v19, v20, v21);
    return 0;
  }

  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (result)
  {
    ZinAneTd<4u>::ValidateOCGSizes(result, v22, v23, v24, v25, v26, v27, v28);
    return 0;
  }

  return result;
}

void ZinIrContextSwitchValidator<4u>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Cannot have a pending L2 alias errata resolution when outside a context switch IN sequence", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "DMA dependency bit set without an RDMA.", a5, a6, a7, a8, v8);
}

void ZinAneTd<4u>::HandleTileDmaSrcConfig(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Oplayer shouldn't have more than 2 inputs at codegen\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Invalid context switch mode\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Internal Error: kANECNetNetworkStatus_TileDMASourceAllocationFailure - stride not aligned\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "packed10 format not fully implemented yet\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "RDMA Src should be in DRAM\n", a5, a6, a7, a8, v8);
}

void ZinAneTd<4u>::HandleL2Config(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Invalid Padding mode for Conv\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Max/Min Pooling should always be used with negative/positive padding mode.\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Codegen Error: Failed setting L2 Primary Source Buffer", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Output missing L2 location\n", a5, a6, a7, a8, v8);
}

void ZinAneTd<4u>::HandleNEConfig(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Weight on layer but no kernel data\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Error: Failed to set NE Round Cfg registers", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "HandleNEConfigRCASCfg failed./n", a5, a6, a7, a8, v8);
}

void ZinAneTd<4u>::HandleTileDmaDstConfig(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Stride should be greater than zero\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Internal Error: ZinIrCodegenHandleTileDmaDstConfig - stride not aligned", a5, a6, a7, a8, v8);
}

void ZinAneTd<4u>::HandleANELayer(uint8_t *buf, uint64_t a2)
{
  *buf = 136315394;
  *(buf + 4) = "virtual BOOL ZinAneTd<4>::HandleANELayer(const ZinANELayer *, size_t, ZinAneTdInstruction *, const ZinTdCodegenParams &, const std::optional<DeviceId> &, ZinIrNetworkStatus *) [HWVersion = 4]";
  *(buf + 6) = 2048;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error in %s: Attempting to create task descriptor but the device does not own a task descriptor for the layer, ane_index: %lu", buf, 0x16u);
}

void HandleCcdmaLayer<4u>()
{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void HandleCcdmaLayer<4u>(uint64_t a1, uint64_t a2, void *a3)
{
  ZinSPMDUtils::AneIndexFromDeviceId((*a1 + 2248), a2, a3);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void ZinIrCreateInstructions_v5(uint64_t **a1, unsigned int a2, ZinIrOpLayer ***a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LOBYTE(__p) = 0;
  v7 = 0;
  ZinIrCodegenHandleTdsMakeList<5u>(a1, &__p, a2, a3);
}

void sub_1A6935148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    ZinIrCreateInstructions_v17(&a9);
  }

  _Unwind_Resume(exception_object);
}

void ZinIrCodegenHandleTdsMakeList<5u>(uint64_t **a1, uint64_t a2, uint64_t a3, ZinIrOpLayer ***a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v24 = **a1;
  v25 = (*a1)[1];
  v10 = a1[5];
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(v25 + 222))
  {
    NumAnes = 1;
  }

  else
  {
    NumAnes = ZinIrDeviceMesh::GetNumAnes((v24 + 2248));
  }

  v12 = *(v25 + 21);
  v13 = *(v25 + 22);
  if (v12 == v13 || NumAnes == (v13 - v12) >> 3)
  {
    v14 = *(v25 + 24);
    v15 = *(v25 + 25);
    if (v14 == v15 || NumAnes == (v15 - v14) >> 3)
    {
      v43 = 0u;
      v44 = 0u;
      v45 = 1065353216;
      memset(v41, 0, sizeof(v41));
      v42 = 1065353216;
      v17 = *a4;
      v16 = a4[1];
      v18 = (v16 - *a4) >> 3;
      v39 = 0;
      v40 = 0;
      v38 = 0;
      std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<std::reverse_iterator<std::__wrap_iter<ZinEngineLayer * const*>>,std::reverse_iterator<std::__wrap_iter<ZinEngineLayer * const*>>>(&v38, v16, v16, v17, v17, v18);
      v19 = a1[11] & *(a2 + 24);
      v20 = a1[5];
      v35 = a1[4];
      v36 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      instruction::creation::GetFirstAndLastInNetworkLayers(a4, &v35, v19 & 1, v37);
      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }

      v29[0] = 0;
      v30[0] = v30;
      v30[1] = v30;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0;
      v22 = v38;
      v21 = v39;
      if (v38 != v39)
      {
        do
        {
          v28 = *v22;
          if (ZinIrOpLayer::IsANELayer(v28) || ((*(*v28 + 136))(v28) & 1) != 0)
          {
            if ((v19 & 1) == 0)
            {
              goto LABEL_36;
            }

            if ((a1[11] & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            *buf = 0;
            v47 = 0;
            v48 = 0;
            std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(buf, a1[8], a1[9], (a1[9] - a1[8]) >> 1);
            if ((*(a2 + 24) & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            __p[0] = 0;
            __p[1] = 0;
            *&v27 = 0;
            std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(__p, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
            v23 = ZinEngineLayer::RunsOnDeviceId(v28, (**a1 + 2248), buf, __p);
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }

            if (*buf)
            {
              v47 = *buf;
              operator delete(*buf);
            }

            if (v23)
            {
LABEL_36:
              if (!(*(*v28 + 136))(v28))
              {
                operator new();
              }

              ZinAssertImpl("No tasklet for given architecture");
            }
          }

          ++v22;
        }

        while (v22 != v21);
      }

      ZinInstructionList::CompletedSetup(v29);
      ZinInstructionList::GetTds(v29);
    }

    ZinAssertImpl("Force Hazard Stalls End size doesn't match ANE size", a2, a3);
  }

  ZinAssertImpl("Force Hazard Stalls Begin size doesn't match ANE size", a2, a3);
}

void sub_1A6936704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  (*(*v67 + 8))(v67, a2, a3, a4, a5, a6, a7, a8);
  if (a20)
  {
    (*(*a20 + 16))(a20);
  }

  ranges::reverse_view<ranges::any_view<ZinAneTdInstruction *,(ranges::category)23,void>>::~reverse_view(&a32);
  v69 = a35;
  a35 = 0;
  if (v69)
  {
    (*(*v69 + 16))(v69);
  }

  ZinInstructionList::~ZinInstructionList(&a36);
  instruction::creation::FirstAndLastInNetworkLayers::~FirstAndLastInNetworkLayers(&a48);
  if (__p)
  {
    a66 = __p;
    operator delete(__p);
  }

  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&a67);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&STACK[0x220]);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

uint64_t ZinAneTd<5u>::GetField(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 0:
      return (*(a1 + 24) >> 11) & 1;
    case 1:
      return (*(a1 + 24) >> 13) & 1;
    case 2:
      v6 = *(a1 + 24);
      return (v6 >> 15) & 1;
    case 3:
      return (*(a1 + 24) >> 14) & 1;
    case 4:
      return (*(a1 + 24) >> 12) & 1;
    case 5:
      v5 = *(a1 + 24);
      goto LABEL_18;
    case 6:
      return (*(a1 + 24) >> 28) & 1;
    case 7:
      return (*(a1 + 24) >> 29) & 1;
    case 8:
      return *(a1 + 36);
    case 9:
      return *(a1 + 34);
    case 10:
      v6 = *(a1 + 32);
      return (v6 >> 15) & 1;
    case 11:
      return (*(a1 + 32) >> 12) & 7;
    case 12:
      return (*(a1 + 176) >> 2) & 1;
    case 13:
    case 14:
    case 19:
    case 20:
    case 21:
    case 22:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
      return *(a1 + 16);
    case 15:
      v3 = *(a1 + 176);
      goto LABEL_12;
    case 16:
      v4 = *(a1 + 176);
      goto LABEL_24;
    case 17:
      v3 = *(a1 + 192);
LABEL_12:
      result = (v3 >> 4) & 1;
      break;
    case 18:
      v4 = *(a1 + 192);
LABEL_24:
      result = (v4 >> 5) & 1;
      break;
    case 23:
      result = *(a1 + 14);
      break;
    case 24:
      v5 = *(a1 + 8);
LABEL_18:
      result = HIBYTE(v5) & 1;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t ZinAneTd<5u>::SetField(uint64_t result, int a2, __int16 a3)
{
  switch(a2)
  {
    case 0:
      v3 = *(result + 24) & 0xFFFFF7FF | ((a3 & 1) << 11);
      goto LABEL_23;
    case 1:
      v3 = *(result + 24) & 0xFFFFDFFF | ((a3 & 1) << 13);
      goto LABEL_23;
    case 2:
      v3 = *(result + 24) & 0xFFFF7FFF | ((a3 & 1) << 15);
      goto LABEL_23;
    case 3:
      v3 = *(result + 24) & 0xFFFFBFFF | ((a3 & 1) << 14);
      goto LABEL_23;
    case 4:
      goto LABEL_5;
    case 5:
      v3 = *(result + 24) & 0xFEFFFFFF | ((a3 & 1) << 24);
      goto LABEL_23;
    case 6:
      v3 = *(result + 24) & 0xEFFFFFFF | ((a3 & 1) << 28);
      goto LABEL_23;
    case 7:
      v3 = *(result + 24) & 0xDFFFFFFF | ((a3 & 1) << 29);
      goto LABEL_23;
    case 8:
      *(result + 36) = a3;
      return result;
    case 9:
      *(result + 34) = a3;
      return result;
    case 10:
      v6 = *(result + 32) & 0xFFFF7FFF | ((a3 & 1) << 15);
      goto LABEL_21;
    case 11:
      v6 = *(result + 32) & 0xFFFF8FFF | ((a3 & 7) << 12);
LABEL_21:
      *(result + 32) = v6;
      return result;
    case 12:
      v5 = *(result + 176) & 0xFFFFFFFB | (4 * (a3 & 1));
      goto LABEL_26;
    case 13:
    case 14:
    case 19:
    case 20:
    case 21:
    case 22:
      return result;
    case 15:
      v5 = *(result + 176) & 0xFFFFFFEF | (16 * (a3 & 1));
      goto LABEL_26;
    case 16:
      v5 = *(result + 176) & 0xFFFFFFDF | (32 * (a3 & 1));
LABEL_26:
      *(result + 176) = v5;
      return result;
    case 17:
      v4 = *(result + 192) & 0xFFFFFFEF | (16 * (a3 & 1));
      goto LABEL_13;
    case 18:
      v4 = *(result + 192) & 0xFFFFFFDF | (32 * (a3 & 1));
LABEL_13:
      *(result + 192) = v4;
      break;
    case 23:
      *(result + 14) = a3;
      break;
    case 24:
      *(result + 8) = *(result + 8) & 0xFEFFFFFF | ((a3 & 1) << 24);
      break;
    default:
      if (a2 == 50)
      {
        *(result + 16) = a3;
LABEL_5:
        v3 = *(result + 24) & 0xFFFFEFFF | ((a3 & 1) << 12);
LABEL_23:
        *(result + 24) = v3;
      }

      break;
  }

  return result;
}

uint64_t ZinAneTd<5u>::HandleANELayer(uint64_t a1, uint64_t a2, unint64_t a3, ZinAneTdInstruction *a4, void **a5, uint64_t a6, CFArrayRef *a7)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*(a5 + 88) == 1 && *(a6 + 24) == 1)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(&v28, a5[8], a5[9], (a5[9] - a5[8]) >> 1);
    if ((*(a6 + 24) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    __p = 0;
    v26 = 0;
    v27 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, *a6, *(a6 + 8), (*(a6 + 8) - *a6) >> 3);
    if (!ZinEngineLayer::RunsOnDeviceId(a2, (**a5 + 2248), &v28, &__p))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v24 = ZinSPMDUtils::AneIndexFromDeviceId((**a5 + 2248), &v28, &__p);
        ZinAneTd<5u>::HandleANELayer(buf, v24);
      }

      ZinIrNetworkStatus::SetError(a7, @"CodeGenerationFailure");
      if (__p)
      {
        v26 = __p;
        operator delete(__p);
      }

      if (v28)
      {
        v29 = v28;
        operator delete(v28);
      }

      return 0;
    }

    if (__p)
    {
      v26 = __p;
      operator delete(__p);
    }

    if (v28)
    {
      v29 = v28;
      operator delete(v28);
    }
  }

  if (!*(a2 + 520))
  {
    v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v15)
    {
      ZinAneTd<4u>::HandleANELayer(v15, v16, v17, v18, v19, v20, v21, v22);
    }

    ZinIrNetworkStatus::SetError(a7, @"CodeGenerationFailure");
    return 0;
  }

  ZinIrMemoryPools::GetSections(a5[3], 0, 1, &v28);
  v14 = *(v29 + 2);
  std::__list_imp<ZinIrSection *>::clear(&v28);
  if ((ZinAneTdInstruction::HandleTdHeader(a4, a2, a3, *a5, v14) & 1) == 0)
  {
    ZinIrNetworkStatus::SetError(a7, @"InvalidHWHeader");
    return 0;
  }

  (*(*a1 + 448))(a1);
  if (ZinIrOpLayer::IsPELayer(a2))
  {
    ZinAssertImpl("Error: PE is not supported");
  }

  if (ZinIrOpLayer::IsNELayer(a2))
  {
    if (!HandleNELayer<4u>(a2, a3, a4, *a5, a5[3], a6, a7))
    {
      return 0;
    }
  }

  else
  {
    if (!ZinIrOpLayer::IsCcdmaLayer(a2))
    {
      ZinAssertImpl("TransposeEngineLayer based graph should not need DMA buffer\n");
    }

    if ((a5[11] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    if ((*(a6 + 24) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    if ((HandleCcdmaLayer<5u>(a2, a4, *a5, (a5 + 8), a6, a7) & 1) == 0)
    {
      result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      ZinAneTd<5u>::HandleANELayer();
      return 0;
    }
  }

  result = (*(*a1 + 360))(a1, **a5, a2);
  if (result)
  {
    result = (*(*a1 + 376))(a1, a2);
    if (result)
    {
      (*(*a1 + 384))(a1, a2, a5[2]);
      (*(*a1 + 208))(a1, a2);
      if (*(a2 + 552) == 1)
      {
        (*(*a1 + 480))(a1, a2);
      }

      return 1;
    }
  }

  return result;
}

void sub_1A69370FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HandleCcdmaLayer<5u>(ZinCcdmaLayer *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, CFArrayRef *a6)
{
  if (*(*a3 + 1163))
  {
    if (ZinEngineLayer::RunsOnDeviceId(a1, (*a3 + 2248), a4, a5))
    {
      ZinCcdmaLayer::GetCcdmaMirInfo(a1);
      (*(*a1 + 608))(a1);
      ZinAneTd<5u>::SetCcdmaSrcMode();
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      HandleCcdmaLayer<5u>(a3, a4, a5);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    HandleCcdmaLayer<5u>();
  }

  ZinIrNetworkStatus::SetError(a6, @"CodeGenerationFailure");
  return 0;
}

void sub_1A69377A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, char a20, void *a21, uint64_t a22)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::string,unsigned long long>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a13);
  if (a20 == 1 && __p)
  {
    a18 = __p;
    operator delete(__p);
  }

  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  v24 = *(v22 - 104);
  if (v24)
  {
    *(v22 - 96) = v24;
    operator delete(v24);
  }

  v25 = *(v22 - 80);
  if (v25)
  {
    *(v22 - 72) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

void ZinAneTd<5u>::HandleANELayer(uint8_t *buf, uint64_t a2)
{
  *buf = 136315394;
  *(buf + 4) = "virtual BOOL ZinAneTd<5>::HandleANELayer(const ZinANELayer *, size_t, ZinAneTdInstruction *, const ZinTdCodegenParams &, const std::optional<DeviceId> &, ZinIrNetworkStatus *) [HWVersion = 5]";
  *(buf + 6) = 2048;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error in %s: Attempting to create task descriptor but the device does not own a task descriptor for the layer, ane_index: %lu", buf, 0x16u);
}

void HandleCcdmaLayer<5u>()
{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void HandleCcdmaLayer<5u>(uint64_t a1, uint64_t a2, void *a3)
{
  ZinSPMDUtils::AneIndexFromDeviceId((*a1 + 2248), a2, a3);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void *ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>::ValidatePaddingMode(void *result)
{
  v3 = *(result + 130);
  if (v3 != 1)
  {
    v14[3] = v1;
    v14[4] = v2;
    v4 = result;
    v5 = *result[4];
    if (v3 == 9)
    {
      v8 = *(v5 + 1528);
      v9 = *(v5 + 1536);
      if (v8 != v9)
      {
        while (*v8 != 9)
        {
          if (++v8 == v9)
          {
            goto LABEL_13;
          }
        }
      }

      if (v8 == v9)
      {
LABEL_13:
        v14[0] = @"InvalidPaddingMode";
        result = std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>((result + 1), v14, v14);
        *(v4 + 130) = 1;
      }

      v10 = *(v4 + 64);
      v11 = v10 > 0xC;
      v12 = (1 << v10) & 0x1006;
      if (v11 || v12 == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v3 != 3)
      {
        goto LABEL_21;
      }

      v6 = *(v5 + 1528);
      v7 = *(v5 + 1536);
      if (v6 != v7)
      {
        while (*v6 != 3)
        {
          if (++v6 == v7)
          {
            goto LABEL_21;
          }
        }
      }

      if (v6 == v7)
      {
LABEL_21:
        v14[0] = @"InvalidPaddingMode";
        result = std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>((v4 + 1), v14, v14);
        *(v4 + 130) = 1;
      }
    }
  }

  return result;
}

uint64_t ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>::ValidateKernelFormat(uint64_t result)
{
  v1 = result;
  v2 = *(result + 276);
  if (!v2)
  {
    *(result + 272) = 0x400000001;
    v2 = 4;
  }

  if (*(*(result + 48) + 180) == 1 && (result = FormatValidForMutableLayer(v2), (result & 1) == 0))
  {
    v5 = @"MutableInvalidFormat";
    result = std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(v1 + 8, &v5, &v5);
    *(v1 + 372) = 0;
  }

  else if (v2 - 7 <= 0x14)
  {
    result = ZinIrHalParameters::IsSupportedPaletteFormat(**(v1 + 32), v2);
    if ((result & 1) == 0)
    {
      if (!Is3bitPaletteKernelFormat(v2) || (v3 = **(v1 + 32), Upcasted4bitPaletteFormatFrom3bitPaletteFormat = GetUpcasted4bitPaletteFormatFrom3bitPaletteFormat(v2), result = ZinIrHalParameters::IsSupportedPaletteFormat(v3, Upcasted4bitPaletteFormatFrom3bitPaletteFormat), (result & 1) == 0))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>::ValidateKernelFormat();
        }

        v5 = @"InvalidKernelType";
        return std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(v1 + 8, &v5, &v5);
      }
    }
  }

  return result;
}

uint64_t ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>::ValidateKernelFootprint@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = **(a1 + 32);
  ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>::ZinConvValidator(v31, a1);
  GetLogicalInputAndOutputSteps(&v29, (a1 + 192));
  v5 = *(a1 + 432);
  v6 = *(a1 + 40);
  v7 = *(v6 + 24);
  v27[0] = *(v6 + 8);
  v27[1] = v7;
  v28 = *(v6 + 40);
  ZinGetOutputTensorDimension(v27, (a1 + 448), &v29, v30, (a1 + 496), *(a1 + 264), (a1 + 472), v26);
  ZinIrHalH13g::~ZinIrHalH13g(*(a1 + 376));
  v9 = v8;
  ZinIrHalH13g::~ZinIrHalH13g(*(a1 + 377));
  v11 = v10;
  v12 = v5 - 3;
  if (ZinKernelFitsInKMEM(*(*(a1 + 40) + 16) / *(*(a1 + 48) + 248), (v5 - 3) < 2, 0, (a1 + 484), (a1 + 448), **(a1 + 40), *(a1 + 276), v4, 1.0, v9, v10, *(a1 + 368)))
  {
    ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>::ZinConvValidator(&v34, v31);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    std::vector<ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>>::__init_with_size[abi:ne200100]<ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo> const*,ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo> const*>(a2, &v34, &v36, 1uLL);
  }

  else
  {
    ZinKernelComputeStrideExpansion(v4, (a1 + 484), (a1 + 448), **(a1 + 40), v12 < 2, v25);
    v13 = *(*(*(a1 + 32) + 8) + 484);
    v14 = *(a1 + 436);
    v15 = *(a1 + 440);
    v16 = *(a1 + 464);
    v17 = **(a1 + 40);
    LOBYTE(v20[0]) = 0;
    v24 = 0;
    CanUseKernelStreaming = ZinMirConvUtils::CanUseKernelStreaming(v14, v15, v16, v25[5], v26[0], v26[4], v26[2], v26[3], v17, v4, v13, v20);
    if (v24 == 1)
    {
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v23);
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v22);
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v21);
    }

    if ((!CanUseKernelStreaming || !ZinKernelFitsInKMEM(*(*(a1 + 40) + 16) / *(*(a1 + 48) + 248), v12 < 2, 1, (a1 + 484), (a1 + 448), **(a1 + 40), *(a1 + 276), v4, 1.0, v9, v11, *(a1 + 368))) && *(a1 + 272) == 1)
    {
      v34.i64[0] = @"InvalidKernelDimensions";
      std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(v32, &v34, &v34);
      ZinKernelGetEstimatedFootprintPerCoutElement(*(*(a1 + 40) + 16) / *(*(a1 + 48) + 248), v12 < 2, (a1 + 484), (a1 + 448), **(a1 + 40), *(a1 + 276), v4, v9, 1.0, v11, *(a1 + 368));
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>::ValidateKernelFootprint();
      }

      FindValidKMEMDesc(*(*(a1 + 40) + 16) / *(*(a1 + 48) + 248), v12 < 2, (a1 + 484), (a1 + 448), **(a1 + 40), *(a1 + 276), v4, v9, &v34, v11, *(a1 + 368));
      *&v32[440] = v34;
      v33 = v35;
    }

    ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>::ZinConvValidator(&v34, v31);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    std::vector<ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>>::__init_with_size[abi:ne200100]<ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo> const*,ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo> const*>(a2, &v34, &v36, 1uLL);
  }

  ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>::~ZinConvValidator(&v34);
  return ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>::~ZinConvValidator(v31);
}

void sub_1A6938278(_Unwind_Exception *a1)
{
  ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>::~ZinConvValidator(&STACK[0x4B8]);
  ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>::~ZinConvValidator(&STACK[0x2A8]);
  _Unwind_Resume(a1);
}

BOOL FindValidKMEMDesc@<W0>(uint64_t a1@<X0>, int a2@<W1>, int *a3@<X2>, int8x16_t *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, void *a7@<X6>, unsigned __int8 a8@<W7>, int8x16_t *a9@<X8>, char a10, ZinMirConvUtils *a11)
{
  *a9 = *a4;
  a9[1].i64[0] = a4[1].i64[0];
  v24 = a9 + 1;
  result = ZinKernelFitsInKMEM(a1, a2, 0, a3, a9, a5, a6, a7, 1.0, a8, a10, a11);
  if (!result)
  {
    v20 = &a9->i64[1];
    do
    {
      v21 = a9->i64[0];
      v22 = a9;
      if (a9->i64[0] == 1)
      {
        v21 = *v20;
        v22 = &a9->u64[1];
        if (*v20 == 1)
        {
          v22 = v24;
          v21 = v24->i64[0];
          if (v24->i64[0] == 1)
          {
            break;
          }
        }
      }

      v23 = v21 / 2;
      if (v23 <= 1)
      {
        v23 = 1;
      }

      v22->i64[0] = v23;
      result = ZinKernelFitsInKMEM(a1, a2, 0, a3, a9, a5, a6, a7, 1.0, a8, a10, a11);
    }

    while (!result);
  }

  return result;
}

uint64_t ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>::ResetValidDescQuantizationScale(uint64_t result, char a2)
{
  *(result + 420) = 1065353216;
  if ((a2 & 1) == 0)
  {
    *(result + 376) = 0;
  }

  return result;
}

uint64_t ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>::ResetValidDescQuantizationZeroPoint(uint64_t result, char a2)
{
  *(result + 424) = 0;
  if ((a2 & 1) == 0)
  {
    *(result + 377) = 0;
  }

  return result;
}

__n128 ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>::Desc2UnitInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::string::operator=((a3 + 8), (a2 + 8));
  *(a3 + 32) = *(a2 + 32);
  if (a3 == a2)
  {
    *(a3 + 64) = *(a2 + 64);
    v7 = *(a2 + 80);
    v8 = *(a2 + 112);
    *(a3 + 96) = *(a2 + 96);
    *(a3 + 112) = v8;
    *(a3 + 80) = v7;
  }

  else
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a3 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
    *(a3 + 64) = *(a2 + 64);
    v5 = *(a2 + 80);
    v6 = *(a2 + 112);
    *(a3 + 96) = *(a2 + 96);
    *(a3 + 112) = v6;
    *(a3 + 80) = v5;
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a3 + 128), *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 2);
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>((a3 + 152), *(a2 + 152), *(a2 + 160), (*(a2 + 160) - *(a2 + 152)) >> 3);
  }

  v9 = *(a2 + 176);
  v10 = *(a2 + 192);
  v11 = *(a2 + 208);
  *(a3 + 220) = *(a2 + 220);
  *(a3 + 192) = v10;
  *(a3 + 208) = v11;
  *(a3 + 176) = v9;
  v13 = *(a2 + 288);
  v12 = *(a2 + 304);
  v14 = *(a2 + 272);
  *(a3 + 316) = *(a2 + 316);
  *(a3 + 288) = v13;
  *(a3 + 304) = v12;
  *(a3 + 272) = v14;
  result = *(a2 + 240);
  v16 = *(a2 + 256);
  *(a3 + 240) = result;
  *(a3 + 256) = v16;
  return result;
}

BOOL IsChannelWise<ANECConvLayerDesc>(const __CFString **a1)
{
  if (ZinCFStringEquals(*a1, @"ChannelWiseConv") || ZinCFStringEquals(*a1, @"ChannelWiseDeConv"))
  {
    return 1;
  }

  v3 = *a1;

  return ZinCFStringEquals(v3, @"ChannelWiseDilatedConv");
}

BOOL IsDeconv<ANECConvLayerDesc>(const __CFString **a1)
{
  if (ZinCFStringEquals(*a1, @"DeConv"))
  {
    return 1;
  }

  v3 = *a1;

  return ZinCFStringEquals(v3, @"ChannelWiseDeConv");
}

BOOL IsDilatedConv<ANECConvLayerDesc>(const __CFString **a1)
{
  if (ZinCFStringEquals(*a1, @"DilatedConv"))
  {
    return 1;
  }

  v3 = *a1;

  return ZinCFStringEquals(v3, @"ChannelWiseDilatedConv");
}

BOOL IsCompressed<ANECConvLayerDesc>(uint64_t a1)
{
  if (ZinCFStringEquals(*(a1 + 8), @"Sparse") || ZinCFStringEquals(*(a1 + 8), @"Palette2Sparse") || ZinCFStringEquals(*(a1 + 8), @"Palette4Sparse") || ZinCFStringEquals(*(a1 + 8), @"Palette16Sparse") || ZinCFStringEquals(*(a1 + 8), @"Palette64Sparse"))
  {
    return 1;
  }

  v3 = *(a1 + 8);

  return ZinCFStringEquals(v3, @"Palette256Sparse");
}

uint64_t GetPadMode<ANECConvLayerDesc>(uint64_t a1)
{
  if (ZinCFStringEquals(*(a1 + 24), @"Replication"))
  {
    return 3;
  }

  ZinCFStringEquals(*(a1 + 24), @"Zero");
  return 1;
}

void *ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidatePaddingMode(uint64_t a1)
{
  v2 = **(a1 + 32);
  result = ZinCFStringEquals(*(a1 + 144), @"Replication");
  if (!result)
  {
    result = ZinCFStringEquals(*(a1 + 144), @"Zero");
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v4 = *(v2 + 1528);
  v5 = *(v2 + 1536);
  if (v4 != v5)
  {
    while (*v4 != 3)
    {
      if (++v4 == v5)
      {
        goto LABEL_7;
      }
    }
  }

  if (v4 == v5)
  {
LABEL_7:
    v6 = @"InvalidPaddingMode";
    result = std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(a1 + 8, &v6, &v6);
    *(a1 + 144) = @"Zero";
  }

  return result;
}

uint64_t ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateKernelFormat(uint64_t a1)
{
  result = ZinGetKernelFormat(*(a1 + 136), *(a1 + 128));
  v3 = result;
  if (!result)
  {
    v6 = @"InvalidKernelType";
    result = std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(a1 + 8, &v6, &v6);
    *(a1 + 128) = @"Dense";
    *(a1 + 136) = @"Float16";
  }

  if (*(a1 + 236) == 1 && (result = FormatValidForMutableLayer(v3), (result & 1) == 0))
  {
    v6 = @"MutableInvalidFormat";
    result = std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(a1 + 8, &v6, &v6);
    *(a1 + 236) = 0;
  }

  else if (v3 - 7 <= 0x14)
  {
    result = ZinIrHalParameters::IsSupportedPaletteFormat(**(a1 + 32), v3);
    if ((result & 1) == 0)
    {
      if (!Is3bitPaletteKernelFormat(v3) || (v4 = **(a1 + 32), Upcasted4bitPaletteFormatFrom3bitPaletteFormat = GetUpcasted4bitPaletteFormatFrom3bitPaletteFormat(v3), result = ZinIrHalParameters::IsSupportedPaletteFormat(v4, Upcasted4bitPaletteFormatFrom3bitPaletteFormat), (result & 1) == 0))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>::ValidateKernelFormat();
        }

        v6 = @"InvalidKernelType";
        result = std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(a1 + 8, &v6, &v6);
        *(a1 + 128) = @"Dense";
        *(a1 + 136) = @"Float16";
      }
    }
  }

  return result;
}

void ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ValidateKernelFootprint(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v81[0] = *MEMORY[0x1E69E9840];
  v3 = (a1 + 32);
  v4 = **(a1 + 32);
  v44 = &unk_1F19CCBB0;
  v19 = (a1 + 8);
  std::set<__CFString const*>::set[abi:ne200100](v45, a1 + 8);
  v46 = *v3;
  v44 = &unk_1F19F0A88;
  v5 = *(a1 + 280);
  v60 = *(a1 + 264);
  v61 = v5;
  v58 = *(a1 + 232);
  v59 = *(a1 + 248);
  *v55 = *(a1 + 168);
  *&v55[16] = *(a1 + 184);
  v56 = *(a1 + 200);
  v57 = *(a1 + 216);
  v51 = *(a1 + 104);
  v52 = *(a1 + 120);
  v53 = *(a1 + 136);
  v54 = *(a1 + 152);
  v47 = *(a1 + 40);
  v48 = *(a1 + 56);
  v49 = *(a1 + 72);
  v50 = *(a1 + 88);
  KernelFormat = ZinGetKernelFormat(*(a1 + 136), *(a1 + 128));
  v6 = ANECFormatToZinTensorFormat(**(a1 + 40));
  v42 = *(a1 + 176);
  v43 = *(a1 + 192);
  v40 = *(a1 + 200);
  v41 = *(a1 + 208);
  v38 = *(a1 + 212);
  v39 = *(a1 + 228);
  v36 = vmovn_s64(*(a1 + 240));
  v37 = *(a1 + 256);
  v7 = IsDeconv<ANECConvLayerDesc>((a1 + 120));
  v34 = 0x100000001;
  v35 = 1;
  v32 = 0x100000001;
  v33 = 1;
  v8 = &v34;
  if (v7)
  {
    v8 = &v32;
  }

  *v8 = v40;
  *(v8 + 2) = v41;
  v9 = *(a1 + 40);
  v10 = *(v9 + 24);
  v30[0] = *(v9 + 8);
  v30[1] = v10;
  v31 = *(v9 + 40);
  ZinGetOutputTensorDimension(v30, &v42, &v34, &v32, &v38, *(a1 + 152), &v36, v29);
  ZinIrHalH13g::~ZinIrHalH13g(*(a1 + 264));
  v12 = v11;
  ZinIrHalH13g::~ZinIrHalH13g(*(a1 + 280));
  v14 = v13;
  v21 = v6;
  if (ZinKernelFitsInKMEM(*(*(a1 + 40) + 16) / *(*(a1 + 48) + 40), v7, 0, &v40, &v42, v6, KernelFormat, v4, 1.0, v12, v13, *(a1 + 288)))
  {
    v62.i64[0] = &unk_1F19CCBB0;
    std::set<__CFString const*>::set[abi:ne200100](&v62.i64[1], v45);
    v64 = v46;
    v79 = v60;
    v80 = v61;
    v77 = v58;
    v78 = v59;
    v73 = *v55;
    v74 = *&v55[16];
    v75 = v56;
    v76 = v57;
    v69 = v51;
    v70 = v52;
    v71 = v53;
    v72 = v54;
    v65 = v47;
    v66 = v48;
    v67 = v49;
    v62.i64[0] = &unk_1F19F0A88;
    v68 = v50;
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__init_with_size[abi:ne200100]<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc> const*,ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc> const*>(a2, &v62, v81, 1uLL);
  }

  else
  {
    v15 = *(*(*(a1 + 32) + 8) + 484);
    ZinKernelComputeStrideExpansion(v4, &v40, &v42, v21, v7, v28);
    v16 = *(a1 + 168);
    v17 = *(a1 + 160);
    LOBYTE(v23[0]) = 0;
    v27 = 0;
    CanUseKernelStreaming = ZinMirConvUtils::CanUseKernelStreaming(v16, v17, v43, v28[5], v29[0], v29[4], v29[2], v29[3], v21, v4, v15, v23);
    if (v27 == 1)
    {
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v26);
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v25);
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v24);
    }

    if (CanUseKernelStreaming && ZinKernelFitsInKMEM(*(*(a1 + 40) + 16) / *(*(a1 + 48) + 40), v7, 1, &v40, &v42, v21, KernelFormat, v4, 1.0, v12, v14, *(a1 + 288)))
    {
      v62.i64[0] = &unk_1F19CCBB0;
      std::set<__CFString const*>::set[abi:ne200100](&v62.i64[1], v45);
      v64 = v46;
      v79 = v60;
      v80 = v61;
      v77 = v58;
      v78 = v59;
      v73 = *v55;
      v74 = *&v55[16];
      v75 = v56;
      v76 = v57;
      v69 = v51;
      v70 = v52;
      v71 = v53;
      v72 = v54;
      v65 = v47;
      v66 = v48;
      v67 = v49;
      v62.i64[0] = &unk_1F19F0A88;
      v68 = v50;
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__init_with_size[abi:ne200100]<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc> const*,ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc> const*>(a2, &v62, v81, 1uLL);
    }

    else
    {
      v62.i64[0] = @"InvalidKernelDimensions";
      std::__tree<__CFString const*>::__emplace_unique_key_args<__CFString const*,__CFString const*>(v19, &v62, &v62);
      ZinKernelGetEstimatedFootprintPerCoutElement(*(*(a1 + 40) + 16) / *(*(a1 + 48) + 40), v7, &v40, &v42, v21, KernelFormat, v4, v12, 1.0, v14, *(a1 + 288));
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>::ValidateKernelFootprint();
      }

      FindValidKMEMDesc(*(*(a1 + 40) + 16) / *(*(a1 + 48) + 40), v7, &v40, &v42, v21, KernelFormat, v4, v12, &v62, v14, *(a1 + 288));
      v42 = v62;
      v43 = v63;
      *&v55[8] = v62;
      *&v55[24] = v63;
      ZinUnitValidator::AddErrors(&v44, v19);
      v62.i64[0] = &unk_1F19CCBB0;
      std::set<__CFString const*>::set[abi:ne200100](&v62.i64[1], v45);
      v64 = v46;
      v79 = v60;
      v80 = v61;
      v77 = v58;
      v78 = v59;
      v73 = *v55;
      v74 = *&v55[16];
      v75 = v56;
      v76 = v57;
      v69 = v51;
      v70 = v52;
      v71 = v53;
      v72 = v54;
      v65 = v47;
      v66 = v48;
      v67 = v49;
      v62.i64[0] = &unk_1F19F0A88;
      v68 = v50;
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__init_with_size[abi:ne200100]<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc> const*,ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc> const*>(a2, &v62, v81, 1uLL);
    }
  }

  v62.i64[0] = &unk_1F19CCBB0;
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v62.i64[1], v63);
  v44 = &unk_1F19CCBB0;
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v45, v45[1]);
}

void sub_1A69390C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16)
{
  STACK[0x450] = v17;
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v18 + 8, STACK[0x460]);
  STACK[0x328] = a16;
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v16 + 8, STACK[0x338]);
  _Unwind_Resume(a1);
}

void ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::SetConvType(uint64_t a1, void *a2, int a3)
{
  if ((a3 - 1) <= 5)
  {
    *a2 = *(&off_1E77C45F0 + (a3 - 1));
  }
}

__CFString *ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::SetValidDescKernelFormat(uint64_t a1, unsigned int a2)
{
  result = ZinIrKernelFormatToCFString(a2);
  *(a1 + 136) = result;
  return result;
}

__CFString *ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::SetValidDescKernelPerCoutScaleFormat(uint64_t a1, unsigned int a2)
{
  result = ZinIrKernelFormatToCFString(a2);
  *(a1 + 272) = result;
  return result;
}

uint64_t ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ResetValidDescQuantizationScale(uint64_t result, char a2)
{
  *(result + 268) = 1065353216;
  if ((a2 & 1) == 0)
  {
    *(result + 264) = 0;
  }

  return result;
}

uint64_t ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::ResetValidDescQuantizationZeroPoint(uint64_t result, char a2)
{
  *(result + 284) = 0;
  if ((a2 & 1) == 0)
  {
    *(result + 280) = 0;
  }

  return result;
}

float ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::Desc2UnitInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (ZinCFStringEquals(*a2, @"Conv"))
  {
    v5 = 1;
LABEL_13:
    *(a3 + 240) = v5;
    goto LABEL_14;
  }

  if (ZinCFStringEquals(*a2, @"DilatedConv"))
  {
    v5 = 5;
    goto LABEL_13;
  }

  if (ZinCFStringEquals(*a2, @"ChannelWiseDilatedConv"))
  {
    v5 = 6;
    goto LABEL_13;
  }

  if (ZinCFStringEquals(*a2, @"ChannelWiseConv"))
  {
    v5 = 2;
    goto LABEL_13;
  }

  if (ZinCFStringEquals(*a2, @"DeConv"))
  {
    v5 = 3;
    goto LABEL_13;
  }

  if (ZinCFStringEquals(*a2, @"ChannelWiseDeConv"))
  {
    v5 = 4;
    goto LABEL_13;
  }

  *(a3 + 240) = 0;
LABEL_14:
  if (ZinCFStringEquals(*(a2 + 24), @"Zero"))
  {
    v6 = 1;
  }

  else
  {
    if (!ZinCFStringEquals(*(a2 + 24), @"Replication"))
    {
      goto LABEL_19;
    }

    v6 = 3;
  }

  *(a3 + 328) = v6;
LABEL_19:
  *(a3 + 80) = ZinGetKernelMode(*(a2 + 8));
  *(a3 + 84) = ZinGetKernelFormat(*(a2 + 16), *(a2 + 8));
  v7 = *(a2 + 40);
  *(a3 + 72) = *(a2 + 32);
  *(a3 + 248) = v7;
  *(a3 + 244) = *(a2 + 48);
  *(a3 + 180) = *(a2 + 116);
  v8 = *(a2 + 72);
  *(a3 + 256) = *(a2 + 56);
  *(a3 + 272) = v8;
  LODWORD(v8) = *(a2 + 88);
  *(a3 + 292) = *(a2 + 80);
  *(a3 + 300) = v8;
  v9 = *(a2 + 108);
  *(a3 + 304) = *(a2 + 92);
  *(a3 + 320) = v9;
  v10 = *(a2 + 136);
  *(a3 + 280) = vmovn_s64(*(a2 + 120));
  *(a3 + 288) = v10;
  LODWORD(v10) = *(a2 + 144);
  *(a3 + 184) = v10;
  if (v10 == 1)
  {
    *(a3 + 224) = ZinGetKernelFormat(*(a2 + 152), 0);
  }

  *(a3 + 185) = *(a2 + 160);
  result = *(a2 + 148);
  *(a3 + 228) = result;
  v12 = *(a2 + 168);
  *(a3 + 232) = *(a2 + 164);
  *(a3 + 176) = v12;
  return result;
}

void ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>::~ZinConvValidator(uint64_t a1)
{
  *a1 = &unk_1F19CCBB0;
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(a1 + 8, *(a1 + 16));

  JUMPOUT(0x1AC55A070);
}

uint64_t *std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__init_with_size[abi:ne200100]<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc> const*,ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc> const*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A6939480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xDD67C8A60DD67DLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>>(a1, a2);
  }

  std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xDD67C8A60DD67DLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>,ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc> const*,ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc> const*,ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      *(a4 + v7) = &unk_1F19CCBB0;
      std::set<__CFString const*>::set[abi:ne200100]((a4 + v7 + 8), a2 + v7 + 8);
      *(v8 + 32) = *(a2 + v7 + 32);
      *v8 = &unk_1F19F0A88;
      v9 = *(a2 + v7 + 40);
      v10 = *(a2 + v7 + 56);
      v11 = *(a2 + v7 + 72);
      *(v8 + 88) = *(a2 + v7 + 88);
      *(v8 + 72) = v11;
      *(v8 + 56) = v10;
      *(v8 + 40) = v9;
      v12 = *(a2 + v7 + 104);
      v13 = *(a2 + v7 + 120);
      v14 = *(a2 + v7 + 136);
      *(v8 + 152) = *(a2 + v7 + 152);
      *(v8 + 136) = v14;
      *(v8 + 120) = v13;
      *(v8 + 104) = v12;
      v15 = *(a2 + v7 + 168);
      v16 = *(a2 + v7 + 184);
      v17 = *(a2 + v7 + 200);
      *(v8 + 216) = *(a2 + v7 + 216);
      *(v8 + 200) = v17;
      *(v8 + 184) = v16;
      *(v8 + 168) = v15;
      v18 = *(a2 + v7 + 232);
      v19 = *(a2 + v7 + 248);
      v20 = *(a2 + v7 + 280);
      *(v8 + 264) = *(a2 + v7 + 264);
      *(v8 + 280) = v20;
      *(v8 + 248) = v19;
      *(v8 + 232) = v18;
      v7 += 296;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1A6939688(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>,ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc> const*,ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc> const*,ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>*>(v2, v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 37;
      v7 = v4 - 37;
      do
      {
        (**v7)(v7);
        v6 -= 37;
        v8 = v7 == v2;
        v7 -= 37;
      }

      while (!v8);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void ZinConvValidator<ZinIrConvUnitInfo,ZinIrTensorInfo>::ValidateKernelFootprint()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>>,ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc> const*,ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc> const*,ZinConvValidator<ANECConvLayerDesc,ANECTensorDesc>*>(uint64_t a1, uint64_t (***a2)(void))
{
  v3 = a1 - 296;
  v4 = (a1 - 296);
  do
  {
    result = (**v4)(v4);
    v3 -= 296;
    v6 = v4 == a2;
    v4 -= 37;
  }

  while (!v6);
  return result;
}

void *ZinPEPatterns::Pool::Pool(void *a1, uint64_t a2, uint64_t a3)
{
  v97[1] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(v32, "texture");
  ZinPEAtoms::TextureAtom::TextureAtom(&__s, v32, a3);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v61, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v61 = __s;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v62, v60);
  LODWORD(v57.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v63, &v57, 1);
  std::string::basic_string[abi:ne200100]<0>(v30, "dma_conv_input");
  ZinCommonAtoms::InputTypeCastAtom::InputTypeCastAtom(&v57, v30, a3);
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v64, v57.__r_.__value_.__l.__data_, v57.__r_.__value_.__l.__size_);
  }

  else
  {
    v64 = v57;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v65, v58);
  LODWORD(v55.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v66, &v55, 1);
  std::string::basic_string[abi:ne200100]<0>(v28, "dequant");
  ZinPEAtoms::PoolInputQuantizationAtom::PoolInputQuantizationAtom(&v55, v28, a3);
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v67, v55.__r_.__value_.__l.__data_, v55.__r_.__value_.__l.__size_);
  }

  else
  {
    v67 = v55;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v68, v56);
  LODWORD(v53.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v69, &v53, 1);
  std::string::basic_string[abi:ne200100]<0>(v26, "irelu");
  ZinPEAtoms::InputReLUAtom::InputReLUAtom(&v53, v26, a3);
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v70, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
  }

  else
  {
    v70 = v53;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v71, v54);
  LODWORD(v51.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v72, &v51, 1);
  std::string::basic_string[abi:ne200100]<0>(v24, "prescale");
  ZinPEAtoms::PoolPreScaleAtom::PoolPreScaleAtom(&v51, v24, a3);
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v73, v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
  }

  else
  {
    v73 = v51;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v74, v52);
  LODWORD(v49.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v75, &v49, 1);
  std::string::basic_string[abi:ne200100]<0>(v22, "core");
  ZinPEAtoms::PoolAtom::PoolAtom(&v49, v22, a3);
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v76, v49.__r_.__value_.__l.__data_, v49.__r_.__value_.__l.__size_);
  }

  else
  {
    v76 = v49;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v77, v50);
  v21 = 1;
  std::unordered_set<Attribute>::unordered_set(&v78, &v21, 1);
  std::string::basic_string[abi:ne200100]<0>(v19, "abs_or_zero_compare");
  ZinPEAtoms::AbsOrZeroCompareAtom::AbsOrZeroCompareAtom(&v47, v19, a3);
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v79, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
  }

  else
  {
    v79 = v47;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v80, v48);
  LODWORD(v45.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v81, &v45, 1);
  std::string::basic_string[abi:ne200100]<0>(v17, "orelu");
  ZinPEAtoms::OutputReLUAtom::OutputReLUAtom(&v45, v17, a3);
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v82, v45.__r_.__value_.__l.__data_, v45.__r_.__value_.__l.__size_);
  }

  else
  {
    v82 = v45;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v83, v46);
  LODWORD(v43.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v84, &v43, 1);
  std::string::basic_string[abi:ne200100]<0>(v15, "ogoc");
  ZinPEAtoms::OutputGOCAtom::OutputGOCAtom(&v43, v15, a3);
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v85, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
  }

  else
  {
    v85 = v43;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v86, v44);
  v14 = 2;
  std::unordered_set<Attribute>::unordered_set(&v87, &v14, 1);
  std::string::basic_string[abi:ne200100]<0>(v12, "postogocrelu");
  ZinPEAtoms::OutputReLUAtom::OutputReLUAtom(&v41, v12, a3);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v88, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
  }

  else
  {
    v88 = v41;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v89, v42);
  LODWORD(v39.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v90, &v39, 1);
  std::string::basic_string[abi:ne200100]<0>(v10, "oquant");
  ZinPEAtoms::OutputScalarQuantAtom::OutputScalarQuantAtom(&v39, v10, a3);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v91, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
  }

  else
  {
    v91 = v39;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v92, v40);
  LODWORD(__p.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v93, &__p, 1);
  std::string::basic_string[abi:ne200100]<0>(v8, "dma_conv_output");
  ZinCommonAtoms::OutputTypeCastAtom::OutputTypeCastAtom(&__p, v8, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v94, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v94 = __p;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v95, v38);
  LODWORD(v35) = 0;
  std::unordered_set<Attribute>::unordered_set(&v96, &v35, 1);
  memset(v34, 0, sizeof(v34));
  std::vector<ZinLinearPattern::AtomItem>::__init_with_size[abi:ne200100]<ZinLinearPattern::AtomItem const*,ZinLinearPattern::AtomItem const*>(v34, &v61, v97, 0xCuLL);
  v36[0] = &unk_1F19F0F90;
  v36[3] = v36;
  ZinLinearPattern::ZinLinearPattern(a1, v34, a2, 0, v36, 0);
  std::__function::__value_func<BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::~__value_func[abi:ne200100](v36);
  v35 = v34;
  std::vector<ZinLinearPattern::AtomItemDesc>::__destroy_vector::operator()[abi:ne200100](&v35);
  v6 = 144;
  do
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&__s.__r_.__value_.__r.__words[v6 + 2]);
    std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](&v58[v6 * 8 + 16]);
    if (v58[v6 * 8 + 15] < 0)
    {
      operator delete(v57.__r_.__value_.__r.__words[v6 + 2]);
    }

    v6 -= 12;
  }

  while (v6 * 8);
  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v38);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v40);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v42);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v44);
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v46);
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v48);
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v50);
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v52);
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v54);
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v56);
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v58);
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v60);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  *a1 = &unk_1F19F0AC0;
  return a1;
}

void sub_1A693A1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  ZinPatternAtomDesc::~ZinPatternAtomDesc(&a71);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&a72);
  if (a20 < 0)
  {
    operator delete(a15);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&a73);
  if (a26 < 0)
  {
    operator delete(a21);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x218]);
  if (a33 < 0)
  {
    operator delete(a28);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x250]);
  if (a39 < 0)
  {
    operator delete(a34);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x288]);
  if (a45 < 0)
  {
    operator delete(a40);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x2C0]);
  if (a52 < 0)
  {
    operator delete(a47);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x2F8]);
  if (a58 < 0)
  {
    operator delete(a53);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x330]);
  if (a64 < 0)
  {
    operator delete(a59);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x368]);
  if (a66 < 0)
  {
    operator delete(a65);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x3A0]);
  if (a68 < 0)
  {
    operator delete(a67);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x3D8]);
  if (a70 < 0)
  {
    operator delete(a69);
  }

  while (v73 != &STACK[0x410])
  {
    v73 -= 12;
    ZinLinearPattern::AtomItemDesc::~AtomItemDesc(v73);
  }

  _Unwind_Resume(a1);
}

void sub_1A693A4F8()
{
  if (SLOBYTE(STACK[0x607]) < 0)
  {
    operator delete(STACK[0x5F0]);
  }

  JUMPOUT(0x1A693A414);
}

void sub_1A693A538()
{
  if (SLOBYTE(STACK[0x5A7]) < 0)
  {
    operator delete(STACK[0x590]);
  }

  JUMPOUT(0x1A693A42CLL);
}

void sub_1A693A578()
{
  if (SLOBYTE(STACK[0x547]) < 0)
  {
    operator delete(STACK[0x530]);
  }

  JUMPOUT(0x1A693A444);
}

void sub_1A693A5B8()
{
  if (SLOBYTE(STACK[0x4E7]) < 0)
  {
    operator delete(STACK[0x4D0]);
  }

  JUMPOUT(0x1A693A45CLL);
}

void sub_1A693A5F8()
{
  if (SLOBYTE(STACK[0x487]) < 0)
  {
    operator delete(STACK[0x470]);
  }

  JUMPOUT(0x1A693A474);
}

void sub_1A693A640()
{
  if (SLOBYTE(STACK[0x427]) < 0)
  {
    operator delete(STACK[0x410]);
  }

  JUMPOUT(0x1A693A48CLL);
}

void ZinPEPatterns::Pool::Fuse(ZinANELayer *a1, uint64_t a2, ZinGOCLayer *a3)
{
  v90[0] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(&v89, "texture");
  ZinPattern::GetSingleMatch(a1, &v89);
  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v89, "dequant");
  SingleMatch = ZinPattern::GetSingleMatch(a1, &v89);
  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v89, "irelu");
  v9 = ZinPattern::GetSingleMatch(a1, &v89);
  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v89, "prescale");
  v10 = ZinPattern::GetSingleMatch(a1, &v89);
  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v89, "core");
  v11 = ZinPattern::GetSingleMatch(a1, &v89);
  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v89, "orelu");
  v12 = ZinPattern::GetSingleMatch(a1, &v89);
  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "ogoc");
  ZinPattern::GetMatch(a1, &__p, &v89);
  ZinPatternUtils::ToGOC(&v89, &v88);
  if (v89.__r_.__value_.__r.__words[0])
  {
    v89.__r_.__value_.__l.__size_ = v89.__r_.__value_.__r.__words[0];
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v66) < 0)
  {
    operator delete(__p.n128_u64[0]);
  }

  v13 = ZinMergeGOCSequence(a2, a3, &v88);
  ZinPELayer::GetPostScaleAndBiasFromGOC(v87, v13);
  v53 = a3;
  if (*(v11 + 71) >= 0)
  {
    v14 = *(v11 + 71);
  }

  else
  {
    v14 = *(v11 + 56);
  }

  std::string::basic_string[abi:ne200100](&v89, v14 + 1);
  if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v89;
  }

  else
  {
    v15 = v89.__r_.__value_.__r.__words[0];
  }

  if (v14)
  {
    if (*(v11 + 71) >= 0)
    {
      v16 = (v11 + 48);
    }

    else
    {
      v16 = *(v11 + 48);
    }

    memmove(v15, v16, v14);
  }

  *(&v15->__r_.__value_.__l.__data_ + v14) = 95;
  std::string::basic_string[abi:ne200100]<0>(v54, "fuse_pool");
  v17 = std::string::append(v54, "_xfm", 4uLL);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v66 = v17->__r_.__value_.__r.__words[2];
  __p = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (v66 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.n128_u64[0];
  }

  if (v66 >= 0)
  {
    v20 = HIBYTE(v66);
  }

  else
  {
    v20 = __p.n128_u64[1];
  }

  v21 = std::string::append(&v89, p_p, v20);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v86 = v21->__r_.__value_.__r.__words[2];
  v85 = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v66) < 0)
  {
    operator delete(__p.n128_u64[0]);
  }

  if ((v54[23] & 0x80000000) != 0)
  {
    operator delete(*v54);
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  v81 = 0;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v89.__r_.__value_.__r.__words[0] = v9;
  LODWORD(v89.__r_.__value_.__r.__words[2]) = 0;
  v23 = RawOrShared<ZinActivationLayer>::unwrap_ptr(&v89);
  RawOrShared<ZinActivationLayer>::update_this_if_shared(&v89, v23);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<ZinActivationLayer *,std::shared_ptr<ZinActivationLayer>>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<ZinActivationLayer *,std::shared_ptr<ZinActivationLayer>>,(std::__variant_detail::_Trait)1>>(&v83, &v89);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinActivationLayer *,std::shared_ptr<ZinActivationLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v89);
  v89.__r_.__value_.__r.__words[0] = SingleMatch;
  LODWORD(v89.__r_.__value_.__r.__words[2]) = 0;
  v24 = RawOrShared<ZinDeQuantLayer>::unwrap_ptr(&v89);
  RawOrShared<ZinDeQuantLayer>::update_this_if_shared(&v89, v24);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<ZinDeQuantLayer *,std::shared_ptr<ZinDeQuantLayer>>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<ZinDeQuantLayer *,std::shared_ptr<ZinDeQuantLayer>>,(std::__variant_detail::_Trait)1>>(&v81, &v89);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinDeQuantLayer *,std::shared_ptr<ZinDeQuantLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v89);
  std::string::basic_string[abi:ne200100]<0>(&v89, "abs_or_zero_compare");
  v25 = ZinPattern::GetSingleMatch(a1, &v89);
  __p.n128_u64[0] = ZinPatternUtils::GetAbsFromAbsOrZeroCompare(v25, v26);
  LODWORD(v66) = 0;
  v27 = RawOrShared<ZinElementWiseLayer>::unwrap_ptr(&__p);
  RawOrShared<ZinElementWiseLayer>::update_this_if_shared(&__p, v27);
  std::string::basic_string[abi:ne200100]<0>(v54, "abs_or_zero_compare");
  v28 = ZinPattern::GetSingleMatch(a1, v54);
  v67.n128_u64[0] = ZinPatternUtils::GetZeroCompareFromAbsOrZeroCompare(v28, v29);
  v68 = 0;
  v30 = RawOrShared<ZinActivationLayer>::unwrap_ptr(&v67);
  RawOrShared<ZinActivationLayer>::update_this_if_shared(&v67, v30);
  v69.n128_u64[0] = v12;
  v70 = 0;
  v31 = RawOrShared<ZinActivationLayer>::unwrap_ptr(&v69);
  RawOrShared<ZinActivationLayer>::update_this_if_shared(&v69, v31);
  std::string::basic_string[abi:ne200100]<0>(&v62, "postogocrelu");
  v71.n128_u64[0] = ZinPattern::GetSingleMatch(a1, &v62);
  v72 = 0;
  v32 = RawOrShared<ZinActivationLayer>::unwrap_ptr(&v71);
  RawOrShared<ZinActivationLayer>::update_this_if_shared(&v71, v32);
  std::string::basic_string[abi:ne200100]<0>(&v60, "oquant");
  v73.n128_u64[0] = ZinPattern::GetSingleMatch(a1, &v60);
  v74 = 0;
  v33 = RawOrShared<ZinQuantLayer>::unwrap_ptr(&v73);
  RawOrShared<ZinQuantLayer>::update_this_if_shared(&v73, v33);
  if (v61 < 0)
  {
    operator delete(v60);
  }

  if (SHIBYTE(v64) < 0)
  {
    operator delete(v62);
  }

  if ((v54[23] & 0x80000000) != 0)
  {
    operator delete(*v54);
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  if (SingleMatch)
  {
    ScalarScale = ZinDeQuantLayer::GetScalarScale(SingleMatch);
    v36 = v11 + 88;
    v35 = *(v11 + 88);
    v37 = v35[1];
    v38 = v35[3];
    v39 = v35[4];
    *&v54[16] = v35[2];
    v55 = v38;
    v40 = v35[5];
    v41 = v35[7];
    v58 = v35[6];
    v59 = v41;
    v56 = v39;
    v57 = v40;
    *v54 = v37;
    if (!v10)
    {
      *&v59 = ScalarScale;
      BYTE4(v59) = 0;
      v42 = *(v11 + 32);
      (*(*SingleMatch + 88))(&v89, SingleMatch, 0);
      v62 = 0;
      v63 = 0;
      v64 = 0;
      std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(&v62, &v89, v90, 1uLL);
      v43 = (*(*v11 + 40))(v11, 0);
      ZinBuilder::CreatePool(v42, v53, &v62, v54, *(v43 + 104));
    }
  }

  else
  {
    v36 = v11 + 88;
    v44 = *(v11 + 88);
    v45 = v44[1];
    v46 = v44[3];
    v47 = v44[4];
    *&v54[16] = v44[2];
    v55 = v46;
    v48 = v44[5];
    v49 = v44[7];
    v58 = v44[6];
    v59 = v49;
    v56 = v47;
    v57 = v48;
    *v54 = v45;
    if (!v10)
    {
      operator new();
    }

    ScalarScale = 1.0;
  }

  if (ZinIrKernel::HasPerCoutScale(v10[20]))
  {
    ZinPatternUtils::CreateConstPerChannelPreScale(v10, v53, ScalarScale, v50);
  }

  *&v59 = ScalarScale * (ZinIrVector::GetSingularVal(*(v10[20] + 82)) * *(*v36 + 112));
  BYTE4(v59) = 0;
  v51 = *(v11 + 32);
  (*(*v10 + 11))(&v89, v10, 0);
  v62 = 0;
  v63 = 0;
  v64 = 0;
  std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(&v62, &v89, v90, 1uLL);
  v52 = (*(*v11 + 40))(v11, 0);
  ZinBuilder::CreatePool(v51, v53, &v62, v54, *(v52 + 104));
}

void sub_1A693B0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = *(v66 - 152);
  if (v68)
  {
    *(v66 - 144) = v68;
    operator delete(v68);
  }

  ZinPEPoolLayer::PostOps::~PostOps(&a45);
  ZinPEPoolLayer::PreOpsPreScale::~PreOpsPreScale(&a60);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinActivationLayer *,std::shared_ptr<ZinActivationLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a66);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinDeQuantLayer *,std::shared_ptr<ZinDeQuantLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a65);
  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  v69 = STACK[0x240];
  if (STACK[0x240])
  {
    STACK[0x248] = v69;
    operator delete(v69);
  }

  _Unwind_Resume(a1);
}

void *ZinPEPatterns::BinaryPool::BinaryPool(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v117[4] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(v43, "texture");
  ZinPEAtoms::TextureAtom::TextureAtom(&__s, v43, a3);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v104, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v104 = __s;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v105, v103);
  LODWORD(v58.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v106, &v58, 1);
  std::string::basic_string[abi:ne200100]<0>(v41, "dequant1");
  ZinPEAtoms::PoolInputQuantizationAtom::PoolInputQuantizationAtom(&v100, v41, a3);
  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v107, v100.__r_.__value_.__l.__data_, v100.__r_.__value_.__l.__size_);
  }

  else
  {
    v107 = v100;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v108, v101);
  LODWORD(v58.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v109, &v58, 1);
  std::string::basic_string[abi:ne200100]<0>(v39, "irelu1");
  ZinPEAtoms::InputReLUAtom::InputReLUAtom(&v98, v39, a3);
  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v110, v98.__r_.__value_.__l.__data_, v98.__r_.__value_.__l.__size_);
  }

  else
  {
    v110 = v98;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v111, v99);
  LODWORD(v58.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v112, &v58, 1);
  memset(v114, 0, sizeof(v114));
  std::vector<ZinLinearPattern::AtomItem>::__init_with_size[abi:ne200100]<ZinLinearPattern::AtomItem const*,ZinLinearPattern::AtomItem const*>(v114, &v104, &v113, 3uLL);
  std::string::basic_string[abi:ne200100]<0>(v37, "dequant2");
  ZinPEAtoms::PoolInputQuantizationAtom::PoolInputQuantizationAtom(&v86, v37, a3);
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v88, v86.__r_.__value_.__l.__data_, v86.__r_.__value_.__l.__size_);
  }

  else
  {
    v88 = v86;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v89, v87);
  LODWORD(v58.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v90, &v58, 1);
  std::string::basic_string[abi:ne200100]<0>(v35, "irelu2");
  ZinPEAtoms::InputReLUAtom::InputReLUAtom(&v84, v35, a3);
  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v91, v84.__r_.__value_.__l.__data_, v84.__r_.__value_.__l.__size_);
  }

  else
  {
    v91 = v84;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v92, v85);
  LODWORD(v58.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v93, &v58, 1);
  std::string::basic_string[abi:ne200100]<0>(v33, "itranspose2");
  ZinPEAtoms::InputTransposeAtom::InputTransposeAtom(&v82, v33, a3);
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v94, v82.__r_.__value_.__l.__data_, v82.__r_.__value_.__l.__size_);
  }

  else
  {
    v94 = v82;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v95, v83);
  LODWORD(v58.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v96, &v58, 1);
  memset(v115, 0, sizeof(v115));
  std::vector<ZinLinearPattern::AtomItem>::__init_with_size[abi:ne200100]<ZinLinearPattern::AtomItem const*,ZinLinearPattern::AtomItem const*>(v115, &v88, &v97, 3uLL);
  memset(v45, 0, sizeof(v45));
  std::vector<std::vector<ZinLinearPattern::AtomItem>>::__init_with_size[abi:ne200100]<std::vector<ZinLinearPattern::AtomItem> const*,std::vector<ZinLinearPattern::AtomItem> const*>(v45, v114, v116, 2uLL);
  v116[0] = v45;
  v116[1] = a4;
  std::string::basic_string[abi:ne200100]<0>(v30, "dyn_goc");
  ZinPEAtoms::BinaryPoolPreScaleAtom::BinaryPoolPreScaleAtom(&v75, v30, a3);
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v77, v75.__r_.__value_.__l.__data_, v75.__r_.__value_.__l.__size_);
  }

  else
  {
    v77 = v75;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v78, v76);
  v29 = 1;
  std::unordered_set<Attribute>::unordered_set(&v79, &v29, 1);
  std::string::basic_string[abi:ne200100]<0>(v27, "main");
  ZinPEAtoms::PoolAtom::PoolAtom(&v73, v27, a3);
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v80, v73.__r_.__value_.__l.__data_, v73.__r_.__value_.__l.__size_);
  }

  else
  {
    v80[0] = v73;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v80[1], v74);
  v26 = 1;
  std::unordered_set<Attribute>::unordered_set(&v80[2].__r_.__value_.__l.__size_, &v26, 1);
  memset(v32, 0, sizeof(v32));
  std::vector<ZinLinearPattern::AtomItem>::__init_with_size[abi:ne200100]<ZinLinearPattern::AtomItem const*,ZinLinearPattern::AtomItem const*>(v32, &v77, &v81, 2uLL);
  v116[2] = v32;
  std::string::basic_string[abi:ne200100]<0>(v23, "abs_or_zero_compare");
  ZinPEAtoms::AbsOrZeroCompareAtom::AbsOrZeroCompareAtom(&v56, v23, a3);
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v58, v56.__r_.__value_.__l.__data_, v56.__r_.__value_.__l.__size_);
  }

  else
  {
    v58 = v56;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v59, v57);
  LODWORD(v54.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v60, &v54, 1);
  std::string::basic_string[abi:ne200100]<0>(v21, "orelu");
  ZinPEAtoms::OutputReLUAtom::OutputReLUAtom(&v54, v21, a3);
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v61, v54.__r_.__value_.__l.__data_, v54.__r_.__value_.__l.__size_);
  }

  else
  {
    v61 = v54;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v62, v55);
  LODWORD(v52.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v63, &v52, 1);
  std::string::basic_string[abi:ne200100]<0>(v19, "ogoc");
  ZinPEAtoms::OutputGOCAtom::OutputGOCAtom(&v52, v19, a3);
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v64, v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
  }

  else
  {
    v64 = v52;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v65, v53);
  v18 = 2;
  std::unordered_set<Attribute>::unordered_set(&v66, &v18, 1);
  std::string::basic_string[abi:ne200100]<0>(v16, "postogocrelu");
  ZinPEAtoms::OutputReLUAtom::OutputReLUAtom(&v50, v16, a3);
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v67, v50.__r_.__value_.__l.__data_, v50.__r_.__value_.__l.__size_);
  }

  else
  {
    v67 = v50;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v68, v51);
  LODWORD(__p.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v69, &__p, 1);
  std::string::basic_string[abi:ne200100]<0>(v14, "oquant");
  ZinPEAtoms::OutputScalarQuantAtom::OutputScalarQuantAtom(&__p, v14, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v70, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v70 = __p;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v71, v49);
  LODWORD(v46) = 0;
  std::unordered_set<Attribute>::unordered_set(&v72, &v46, 1);
  memset(v25, 0, sizeof(v25));
  std::vector<ZinLinearPattern::AtomItem>::__init_with_size[abi:ne200100]<ZinLinearPattern::AtomItem const*,ZinLinearPattern::AtomItem const*>(v25, &v58, &v73, 5uLL);
  v116[3] = v25;
  v117[3] = 0;
  v47[0] = &unk_1F19CAB88;
  v47[1] = ZinPEPatterns::BinaryPool::AnalyzeBinaryPool;
  v47[3] = v47;
  ZinManyToOnePattern::ZinManyToOnePattern(a1, v116, a2, 0, v47, 0);
  std::__function::__value_func<BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::~__value_func[abi:ne200100](v47);
  std::__function::__value_func<BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::~__value_func[abi:ne200100](v117);
  v46 = v25;
  std::vector<ZinLinearPattern::AtomItemDesc>::__destroy_vector::operator()[abi:ne200100](&v46);
  v8 = 60;
  do
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v56.__r_.__value_.__r.__words[v8 + 2]);
    std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](&v55[v8 * 8 + 16]);
    if (v55[v8 * 8 + 15] < 0)
    {
      operator delete(v54.__r_.__value_.__r.__words[v8 + 2]);
    }

    v8 -= 12;
  }

  while (v8 * 8);
  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v49);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v51);
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v53);
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v55);
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v57);
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  v58.__r_.__value_.__r.__words[0] = v32;
  std::vector<ZinLinearPattern::AtomItemDesc>::__destroy_vector::operator()[abi:ne200100](&v58);
  for (i = 0; i != -192; i -= 96)
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v80[2].__r_.__value_.__r.__words[i / 8 + 1]);
    std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](&v80[i / 0x18 + 1]);
    if (SHIBYTE(v80[0].__r_.__value_.__r.__words[i / 8 + 2]) < 0)
    {
      operator delete(v80[i / 0x18].__r_.__value_.__l.__data_);
    }
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v74);
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v76);
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  v58.__r_.__value_.__r.__words[0] = v45;
  std::vector<std::vector<ZinLinearPattern::AtomItemDesc>>::__destroy_vector::operator()[abi:ne200100](&v58);
  for (j = 3; j != -3; j -= 3)
  {
    v58.__r_.__value_.__r.__words[0] = &v114[j];
    std::vector<ZinLinearPattern::AtomItemDesc>::__destroy_vector::operator()[abi:ne200100](&v58);
  }

  v11 = 36;
  do
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v86.__r_.__value_.__r.__words[v11 + 2]);
    std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](&v85[v11 * 8 + 16]);
    if (v85[v11 * 8 + 15] < 0)
    {
      operator delete(v84.__r_.__value_.__r.__words[v11 + 2]);
    }

    v11 -= 12;
  }

  while (v11 * 8);
  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v83);
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v85);
  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v87);
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  if (v38 < 0)
  {
    operator delete(v37[0]);
  }

  v12 = 36;
  do
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&__s.__r_.__value_.__r.__words[v12 + 2]);
    std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](&v101[v12 * 8 + 16]);
    if (v101[v12 * 8 + 15] < 0)
    {
      operator delete(v100.__r_.__value_.__r.__words[v12 + 2]);
    }

    v12 -= 12;
  }

  while (v12 * 8);
  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v99);
  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v98.__r_.__value_.__l.__data_);
  }

  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v101);
  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }

  if (v42 < 0)
  {
    operator delete(v41[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v103);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  *a1 = &unk_1F19F0B18;
  return a1;
}

void sub_1A693BF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, char a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, int a63)
{
  ZinPatternAtomDesc::~ZinPatternAtomDesc(&a77);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x200]);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x238]);
  if (a28 < 0)
  {
    operator delete(a23);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x270]);
  if (a34 < 0)
  {
    operator delete(a29);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x2A8]);
  if (a40 < 0)
  {
    operator delete(a35);
  }

  while (v81 != &STACK[0x2E0])
  {
    v81 -= 12;
    ZinLinearPattern::AtomItemDesc::~AtomItemDesc(v81);
  }

  STACK[0x2E0] = &a58;
  std::vector<ZinLinearPattern::AtomItemDesc>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2E0]);
  v83 = -192;
  v84 = v80;
  do
  {
    ZinLinearPattern::AtomItemDesc::~AtomItemDesc(v84);
    v84 = (v85 - 96);
    v83 += 96;
  }

  while (v83);
  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x4C0]);
  if (a50 < 0)
  {
    operator delete(a45);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x4F8]);
  if (a57 < 0)
  {
    operator delete(a52);
  }

  STACK[0x2E0] = &a76;
  std::vector<std::vector<ZinLinearPattern::AtomItemDesc>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2E0]);
  v86 = -48;
  v87 = v78;
  do
  {
    STACK[0x2E0] = v87;
    std::vector<ZinLinearPattern::AtomItemDesc>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2E0]);
    v87 -= 24;
    v86 += 24;
  }

  while (v86);
  v88 = -288;
  v89 = v79;
  do
  {
    ZinLinearPattern::AtomItemDesc::~AtomItemDesc(v89);
    v89 = (v90 - 96);
    v88 += 96;
  }

  while (v88);
  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x5F8]);
  if (a65 < 0)
  {
    operator delete(a61);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x630]);
  if (a67 < 0)
  {
    operator delete(a66);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x668]);
  if (a69 < 0)
  {
    operator delete(a68);
  }

  v91 = -288;
  v92 = v77;
  do
  {
    ZinLinearPattern::AtomItemDesc::~AtomItemDesc(v92);
    v92 = (v93 - 96);
    v91 += 96;
  }

  while (v91);
  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x7C8]);
  if (a71 < 0)
  {
    operator delete(a70);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x800]);
  if (a73 < 0)
  {
    operator delete(a72);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x838]);
  if (a75 < 0)
  {
    operator delete(a74);
  }

  _Unwind_Resume(a1);
}

void sub_1A693C39C()
{
  if (SLOBYTE(STACK[0x2F7]) < 0)
  {
    operator delete(STACK[0x2E0]);
  }

  JUMPOUT(0x1A693C138);
}

void sub_1A693C3EC()
{
  if (SLOBYTE(STACK[0x5A7]) < 0)
  {
    operator delete(STACK[0x590]);
  }

  JUMPOUT(0x1A693C1A0);
}

void sub_1A693C438()
{
  if (SLOBYTE(STACK[0x547]) < 0)
  {
    operator delete(STACK[0x530]);
  }

  JUMPOUT(0x1A693C1BCLL);
}

void sub_1A693C494()
{
  if (SLOBYTE(STACK[0x777]) < 0)
  {
    operator delete(STACK[0x760]);
  }

  JUMPOUT(0x1A693C248);
}

void sub_1A693C4DC()
{
  if (SLOBYTE(STACK[0x717]) < 0)
  {
    operator delete(STACK[0x700]);
  }

  JUMPOUT(0x1A693C260);
}

void sub_1A693C52C()
{
  if (SLOBYTE(STACK[0x6B7]) < 0)
  {
    operator delete(STACK[0x6A0]);
  }

  JUMPOUT(0x1A693C278);
}

void sub_1A693C590()
{
  if (SLOBYTE(STACK[0x947]) < 0)
  {
    operator delete(STACK[0x930]);
  }

  JUMPOUT(0x1A693C2D4);
}

void sub_1A693C5E0()
{
  if (SLOBYTE(STACK[0x8E7]) < 0)
  {
    operator delete(STACK[0x8D0]);
  }

  JUMPOUT(0x1A693C2ECLL);
}

void sub_1A693C640()
{
  if (SLOBYTE(STACK[0x887]) < 0)
  {
    operator delete(STACK[0x870]);
  }

  JUMPOUT(0x1A693C304);
}

uint64_t ZinPEPatterns::BinaryPool::AnalyzeBinaryPool(int a1, int a2, ZinPattern *this)
{
  result = ZinPattern::MatchCount(this);
  if (result)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "dequant1");
    SingleMatch = ZinPattern::GetSingleMatch(this, __p);
    v6 = SingleMatch;
    if (v13 < 0)
    {
      operator delete(__p[0]);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    else if (!SingleMatch)
    {
      goto LABEL_7;
    }

    if (ZinDeQuantLayer::HasScale(v6))
    {
      return 0;
    }

LABEL_7:
    std::string::basic_string[abi:ne200100]<0>(__p, "dequant2");
    v7 = ZinPattern::GetSingleMatch(this, __p);
    v8 = v7;
    if (v13 < 0)
    {
      operator delete(__p[0]);
      if (!v8)
      {
LABEL_12:
        std::string::basic_string[abi:ne200100]<0>(__p, "main");
        v9 = ZinPattern::GetSingleMatch(this, __p);
        v10 = v9;
        if ((v13 & 0x80000000) == 0)
        {
          if (!v9)
          {
            return 0;
          }

LABEL_16:
          v11 = *(v10 + 88);
          return (*(v11 + 116) & 1) == 0 && *(v11 + 112) == 1.0;
        }

        operator delete(__p[0]);
        if (v10)
        {
          goto LABEL_16;
        }

        return 0;
      }
    }

    else if (!v7)
    {
      goto LABEL_12;
    }

    if (ZinDeQuantLayer::HasScale(v8))
    {
      return 0;
    }

    goto LABEL_12;
  }

  return result;
}

void sub_1A693C7B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ZinPEPatterns::BinaryPool::Fuse(ZinANELayer *a1, uint64_t a2, uint64_t a3)
{
  v80[0] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(&v79, "texture");
  ZinPattern::GetSingleMatch(a1, &v79);
  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  v75 = 0;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "dequant1");
  v79.__r_.__value_.__r.__words[0] = ZinPattern::GetSingleMatch(a1, &__p);
  LODWORD(v79.__r_.__value_.__r.__words[2]) = 0;
  v7 = RawOrShared<ZinDeQuantLayer>::unwrap_ptr(&v79);
  RawOrShared<ZinDeQuantLayer>::update_this_if_shared(&v79, v7);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<ZinDeQuantLayer *,std::shared_ptr<ZinDeQuantLayer>>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<ZinDeQuantLayer *,std::shared_ptr<ZinDeQuantLayer>>,(std::__variant_detail::_Trait)1>>(&v75, &v79);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinDeQuantLayer *,std::shared_ptr<ZinDeQuantLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v79);
  if (v59 < 0)
  {
    operator delete(__p.n128_u64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "irelu1");
  v79.__r_.__value_.__r.__words[0] = ZinPattern::GetSingleMatch(a1, &__p);
  LODWORD(v79.__r_.__value_.__r.__words[2]) = 0;
  v8 = RawOrShared<ZinActivationLayer>::unwrap_ptr(&v79);
  RawOrShared<ZinActivationLayer>::update_this_if_shared(&v79, v8);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<ZinActivationLayer *,std::shared_ptr<ZinActivationLayer>>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<ZinActivationLayer *,std::shared_ptr<ZinActivationLayer>>,(std::__variant_detail::_Trait)1>>(&v77, &v79);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinActivationLayer *,std::shared_ptr<ZinActivationLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v79);
  if (v59 < 0)
  {
    operator delete(__p.n128_u64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "dequant2");
  v79.__r_.__value_.__r.__words[0] = ZinPattern::GetSingleMatch(a1, &__p);
  LODWORD(v79.__r_.__value_.__r.__words[2]) = 0;
  v9 = RawOrShared<ZinDeQuantLayer>::unwrap_ptr(&v79);
  RawOrShared<ZinDeQuantLayer>::update_this_if_shared(&v79, v9);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<ZinDeQuantLayer *,std::shared_ptr<ZinDeQuantLayer>>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<ZinDeQuantLayer *,std::shared_ptr<ZinDeQuantLayer>>,(std::__variant_detail::_Trait)1>>(&v69, &v79);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinDeQuantLayer *,std::shared_ptr<ZinDeQuantLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v79);
  if (v59 < 0)
  {
    operator delete(__p.n128_u64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "irelu2");
  v79.__r_.__value_.__r.__words[0] = ZinPattern::GetSingleMatch(a1, &__p);
  LODWORD(v79.__r_.__value_.__r.__words[2]) = 0;
  v10 = RawOrShared<ZinActivationLayer>::unwrap_ptr(&v79);
  RawOrShared<ZinActivationLayer>::update_this_if_shared(&v79, v10);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<ZinActivationLayer *,std::shared_ptr<ZinActivationLayer>>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<ZinActivationLayer *,std::shared_ptr<ZinActivationLayer>>,(std::__variant_detail::_Trait)1>>(&v71, &v79);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinActivationLayer *,std::shared_ptr<ZinActivationLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v79);
  if (v59 < 0)
  {
    operator delete(__p.n128_u64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "itranspose2");
  v79.__r_.__value_.__r.__words[0] = ZinPattern::GetSingleMatch(a1, &__p);
  LODWORD(v79.__r_.__value_.__r.__words[2]) = 0;
  v11 = RawOrShared<ZinTransposeLayer>::unwrap_ptr(&v79);
  RawOrShared<ZinTransposeLayer>::update_this_if_shared(&v79, v11);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<ZinTransposeLayer *,std::shared_ptr<ZinTransposeLayer>>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<ZinTransposeLayer *,std::shared_ptr<ZinTransposeLayer>>,(std::__variant_detail::_Trait)1>>(&v73, &v79);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinTransposeLayer *,std::shared_ptr<ZinTransposeLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v79);
  if (v59 < 0)
  {
    operator delete(__p.n128_u64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(&v79, "main");
  SingleMatch = ZinPattern::GetSingleMatch(a1, &v79);
  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v79, "orelu");
  v13 = ZinPattern::GetSingleMatch(a1, &v79);
  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "ogoc");
  ZinPattern::GetMatch(a1, &__p, &v79);
  ZinPatternUtils::ToGOC(&v79, &v68);
  if (v79.__r_.__value_.__r.__words[0])
  {
    v79.__r_.__value_.__l.__size_ = v79.__r_.__value_.__r.__words[0];
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  if (v59 < 0)
  {
    operator delete(__p.n128_u64[0]);
  }

  v14 = ZinMergeGOCSequence(a2, a3, &v68);
  std::string::basic_string[abi:ne200100]<0>(&v79, "abs_or_zero_compare");
  v15 = ZinPattern::GetSingleMatch(a1, &v79);
  __p.n128_u64[0] = ZinPatternUtils::GetAbsFromAbsOrZeroCompare(v15, v16);
  v58 = 0;
  v17 = RawOrShared<ZinElementWiseLayer>::unwrap_ptr(&__p);
  RawOrShared<ZinElementWiseLayer>::update_this_if_shared(&__p, v17);
  std::string::basic_string[abi:ne200100]<0>(v47, "abs_or_zero_compare");
  v18 = ZinPattern::GetSingleMatch(a1, v47);
  v60.n128_u64[0] = ZinPatternUtils::GetZeroCompareFromAbsOrZeroCompare(v18, v19);
  v61 = 0;
  v20 = RawOrShared<ZinActivationLayer>::unwrap_ptr(&v60);
  RawOrShared<ZinActivationLayer>::update_this_if_shared(&v60, v20);
  v62.n128_u64[0] = v13;
  v63 = 0;
  v21 = RawOrShared<ZinActivationLayer>::unwrap_ptr(&v62);
  RawOrShared<ZinActivationLayer>::update_this_if_shared(&v62, v21);
  std::string::basic_string[abi:ne200100]<0>(&v55, "postogocrelu");
  v64.n128_u64[0] = ZinPattern::GetSingleMatch(a1, &v55);
  v65 = 0;
  v22 = RawOrShared<ZinActivationLayer>::unwrap_ptr(&v64);
  RawOrShared<ZinActivationLayer>::update_this_if_shared(&v64, v22);
  std::string::basic_string[abi:ne200100]<0>(&v54, "oquant");
  v66.n128_u64[0] = ZinPattern::GetSingleMatch(a1, &v54);
  v67 = 0;
  v23 = RawOrShared<ZinQuantLayer>::unwrap_ptr(&v66);
  RawOrShared<ZinQuantLayer>::update_this_if_shared(&v66, v23);
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v56) < 0)
  {
    operator delete(v55);
  }

  if (SBYTE7(v48) < 0)
  {
    operator delete(v47[0]);
  }

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  v24 = *(SingleMatch + 88);
  v25 = v24[4];
  v26 = v24[5];
  v27 = v24[6];
  v53 = v24[7];
  v28 = v24[1];
  v29 = v24[3];
  v48 = v24[2];
  v49 = v29;
  v51 = v26;
  v52 = v27;
  v50 = v25;
  *v47 = v28;
  BYTE4(v53) = 1;
  LODWORD(v53) = 1065353216;
  (*(*a3 + 16))(&v46, a3, 1);
  v30 = *(SingleMatch + 71);
  if (v30 >= 0)
  {
    v31 = (SingleMatch + 48);
  }

  else
  {
    v31 = *(SingleMatch + 48);
  }

  if (v30 >= 0)
  {
    v32 = *(SingleMatch + 71);
  }

  else
  {
    v32 = *(SingleMatch + 56);
  }

  v33 = std::string::insert(&v46, 0, v31, v32);
  v34 = *&v33->__r_.__value_.__l.__data_;
  v54.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&v54.__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  v35 = std::string::append(&v54, "_", 1uLL);
  v36 = *&v35->__r_.__value_.__l.__data_;
  v79.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
  *&v79.__r_.__value_.__l.__data_ = v36;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v43, "pe_bin_pool");
  v37 = std::string::append(&v43, "_xfm", 4uLL);
  v38 = *&v37->__r_.__value_.__l.__data_;
  v45 = v37->__r_.__value_.__r.__words[2];
  *v44 = v38;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  if (v45 >= 0)
  {
    v39 = v44;
  }

  else
  {
    v39 = v44[0];
  }

  if (v45 >= 0)
  {
    v40 = HIBYTE(v45);
  }

  else
  {
    v40 = v44[1];
  }

  v41 = std::string::append(&v79, v39, v40);
  v42 = *&v41->__r_.__value_.__l.__data_;
  v56 = v41->__r_.__value_.__r.__words[2];
  v55 = v42;
  v41->__r_.__value_.__l.__size_ = 0;
  v41->__r_.__value_.__r.__words[2] = 0;
  v41->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44[0]);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  ZinPELayer::GetPostScaleAndBiasFromGOC(&v54, v14);
  operator new();
}

void sub_1A693D0C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = *(v67 - 136);
  if (v69)
  {
    *(v67 - 128) = v69;
    operator delete(v69);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  MEMORY[0x1AC55A070](v66, 0x10B3C404384E2E0, a3, a4, a5, a6, a7, a8);
  if (a44 < 0)
  {
    operator delete(__p);
  }

  ZinPEPoolLayer::PostOps::~PostOps(&a45);
  if (a60)
  {
    a61 = a60;
    operator delete(a60);
  }

  ZinPEPoolLayer::PreOpsPreScale::~PreOpsPreScale(&a63);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinActivationLayer *,std::shared_ptr<ZinActivationLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a66);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinDeQuantLayer *,std::shared_ptr<ZinDeQuantLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a65);
  _Unwind_Resume(a1);
}

void *ZinPEPatterns::ElementWiseAdd::ElementWiseAdd(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v3;
  v213[4] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(v74, "texture1");
  ZinPEAtoms::TextureAtom::TextureAtom(&__s, v74, v7);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v191, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v191 = __s;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v192, v190);
  LODWORD(v103.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v193, &v103, 1);
  std::string::basic_string[abi:ne200100]<0>(v72, "dma_conv_input1");
  ZinCommonAtoms::InputTypeCastAtom::InputTypeCastAtom(&v187, v72, v7);
  if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v194, v187.__r_.__value_.__l.__data_, v187.__r_.__value_.__l.__size_);
  }

  else
  {
    v194 = v187;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v195, v188);
  LODWORD(v103.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v196, &v103, 1);
  std::string::basic_string[abi:ne200100]<0>(v70, "irelu1");
  ZinPEAtoms::InputReLUAtom::InputReLUAtom(&v185, v70, v7);
  if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v197, v185.__r_.__value_.__l.__data_, v185.__r_.__value_.__l.__size_);
  }

  else
  {
    v197 = v185;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v198, v186);
  LODWORD(v103.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v199, &v103, 1);
  std::string::basic_string[abi:ne200100]<0>(v68, "prescale1");
  ZinCommonAtoms::SingularScaleAtom::SingularScaleAtom(&v183, v68, v7);
  if (SHIBYTE(v183.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v200, v183.__r_.__value_.__l.__data_, v183.__r_.__value_.__l.__size_);
  }

  else
  {
    v200 = v183;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v201, v184);
  v67 = 2;
  std::unordered_set<Attribute>::unordered_set(&v202, &v67, 1);
  std::string::basic_string[abi:ne200100]<0>(v65, "itranspose1");
  ZinPEAtoms::InputTransposeAtom::InputTransposeAtom(&v181, v65, v7);
  if (SHIBYTE(v181.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v203, v181.__r_.__value_.__l.__data_, v181.__r_.__value_.__l.__size_);
  }

  else
  {
    v203 = v181;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v204, v182);
  LODWORD(v103.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v205, &v103, 1);
  std::string::basic_string[abi:ne200100]<0>(v63, "broadcast1");
  ZinCommonAtoms::BroadcastAtom::BroadcastAtom(&v179, v63, v7);
  if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v206, v179.__r_.__value_.__l.__data_, v179.__r_.__value_.__l.__size_);
  }

  else
  {
    v206 = v179;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v207, &v180);
  LODWORD(v103.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v208, &v103, 1);
  memset(v210, 0, sizeof(v210));
  std::vector<ZinLinearPattern::AtomItem>::__init_with_size[abi:ne200100]<ZinLinearPattern::AtomItem const*,ZinLinearPattern::AtomItem const*>(v210, &v191, &v209, 6uLL);
  std::string::basic_string[abi:ne200100]<0>(v61, "texture2");
  ZinPEAtoms::TextureAtom::TextureAtom(&v159, v61, v7);
  if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v161, v159.__r_.__value_.__l.__data_, v159.__r_.__value_.__l.__size_);
  }

  else
  {
    v161 = v159;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v162, v160);
  LODWORD(v103.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v163, &v103, 1);
  std::string::basic_string[abi:ne200100]<0>(v59, "dma_conv_input2");
  ZinCommonAtoms::InputTypeCastAtom::InputTypeCastAtom(&v157, v59, v7);
  if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v164, v157.__r_.__value_.__l.__data_, v157.__r_.__value_.__l.__size_);
  }

  else
  {
    v164 = v157;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v165, v158);
  LODWORD(v103.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v166, &v103, 1);
  std::string::basic_string[abi:ne200100]<0>(v57, "irelu2");
  ZinPEAtoms::InputReLUAtom::InputReLUAtom(&v155, v57, v7);
  if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v167, v155.__r_.__value_.__l.__data_, v155.__r_.__value_.__l.__size_);
  }

  else
  {
    v167 = v155;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v168, v156);
  LODWORD(v103.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v169, &v103, 1);
  std::string::basic_string[abi:ne200100]<0>(v55, "prescale2");
  ZinCommonAtoms::SingularScaleAtom::SingularScaleAtom(&v153, v55, v7);
  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v170, v153.__r_.__value_.__l.__data_, v153.__r_.__value_.__l.__size_);
  }

  else
  {
    v170 = v153;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v171, v154);
  v54 = 2;
  std::unordered_set<Attribute>::unordered_set(&v172, &v54, 1);
  std::string::basic_string[abi:ne200100]<0>(v52, "itranspose2");
  ZinPEAtoms::InputTransposeAtom::InputTransposeAtom(&v151, v52, v7);
  if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v173, v151.__r_.__value_.__l.__data_, v151.__r_.__value_.__l.__size_);
  }

  else
  {
    v173 = v151;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v174, v152);
  LODWORD(v103.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v175, &v103, 1);
  std::string::basic_string[abi:ne200100]<0>(v50, "broadcast2");
  ZinCommonAtoms::BroadcastAtom::BroadcastAtom(&v149, v50, v7);
  if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v176, v149.__r_.__value_.__l.__data_, v149.__r_.__value_.__l.__size_);
  }

  else
  {
    v176 = v149;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v177, &v150);
  LODWORD(v103.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v178, &v103, 1);
  memset(v211, 0, sizeof(v211));
  std::vector<ZinLinearPattern::AtomItem>::__init_with_size[abi:ne200100]<ZinLinearPattern::AtomItem const*,ZinLinearPattern::AtomItem const*>(v211, &v161, &v179, 6uLL);
  memset(v76, 0, sizeof(v76));
  std::vector<std::vector<ZinLinearPattern::AtomItem>>::__init_with_size[abi:ne200100]<std::vector<ZinLinearPattern::AtomItem> const*,std::vector<ZinLinearPattern::AtomItem> const*>(v76, v210, v212, 2uLL);
  v212[0] = v76;
  v212[1] = v5;
  std::string::basic_string[abi:ne200100]<0>(v47, "scaled_ew");
  ZinPEAtoms::ScaledEWAddAtom::ScaledEWAddAtom(&v141, v47, v7);
  if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v143, v141.__r_.__value_.__l.__data_, v141.__r_.__value_.__l.__size_);
  }

  else
  {
    v143 = v141;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v144, v142);
  LODWORD(v103.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v145, &v103, 1);
  std::string::basic_string[abi:ne200100]<0>(v45, "goc");
  ZinPEAtoms::PEEWGOCAtom::PEEWGOCAtom(&v139, v45, v7);
  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v146, v139.__r_.__value_.__l.__data_, v139.__r_.__value_.__l.__size_);
  }

  else
  {
    v146 = v139;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](v147, v140);
  v44 = 2;
  std::unordered_set<Attribute>::unordered_set(v148, &v44, 1);
  memset(v49, 0, sizeof(v49));
  std::vector<ZinLinearPattern::AtomItem>::__init_with_size[abi:ne200100]<ZinLinearPattern::AtomItem const*,ZinLinearPattern::AtomItem const*>(v49, &v143, &v149, 2uLL);
  v212[2] = v49;
  std::string::basic_string[abi:ne200100]<0>(v41, "postscale");
  ZinPEAtoms::PostScaleAtom::PostScaleAtom(&v101, v41, v7);
  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v103, v101.__r_.__value_.__l.__data_, v101.__r_.__value_.__l.__size_);
  }

  else
  {
    v103 = v101;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v104, v102);
  v40 = 2;
  std::unordered_set<Attribute>::unordered_set(&v105, &v40, 1);
  std::string::basic_string[abi:ne200100]<0>(v38, "abs_or_zero_compare");
  ZinPEAtoms::AbsOrZeroCompareAtom::AbsOrZeroCompareAtom(&v99, v38, v7);
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v106, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
  }

  else
  {
    v106 = v99;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v107, v100);
  LODWORD(v97.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v108, &v97, 1);
  std::string::basic_string[abi:ne200100]<0>(v36, "reduction");
  ZinPEAtoms::ReductionAtom::ReductionAtom(&v97, v36, v7);
  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v109, v97.__r_.__value_.__l.__data_, v97.__r_.__value_.__l.__size_);
  }

  else
  {
    v109 = v97;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v110, v98);
  LODWORD(v95.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v111, &v95, 1);
  std::string::basic_string[abi:ne200100]<0>(v34, "final_scale");
  ZinPEAtoms::ReductionFinalScaleAtom::ReductionFinalScaleAtom(&v95, v34, v7);
  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v112, v95.__r_.__value_.__l.__data_, v95.__r_.__value_.__l.__size_);
  }

  else
  {
    v112 = v95;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v113, v96);
  LODWORD(v93.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v114, &v93, 1);
  std::string::basic_string[abi:ne200100]<0>(v32, "epsilon");
  ZinPEAtoms::ReductionEpsilonAtom::ReductionEpsilonAtom(&v93, v32, v7);
  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v115, v93.__r_.__value_.__l.__data_, v93.__r_.__value_.__l.__size_);
  }

  else
  {
    v115 = v93;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v116, v94);
  LODWORD(v91.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v117, &v91, 1);
  std::string::basic_string[abi:ne200100]<0>(v30, "post_process");
  ZinPEAtoms::ReductionPostProcessAtom::ReductionPostProcessAtom(&v91, v30, v7);
  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v118, v91.__r_.__value_.__l.__data_, v91.__r_.__value_.__l.__size_);
  }

  else
  {
    v118 = v91;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v119, &v92);
  LODWORD(v89.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v120, &v89, 1);
  std::string::basic_string[abi:ne200100]<0>(v28, "orelu");
  ZinPEAtoms::OutputReLUAtom::OutputReLUAtom(&v89, v28, v7);
  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v121, v89.__r_.__value_.__l.__data_, v89.__r_.__value_.__l.__size_);
  }

  else
  {
    v121 = v89;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v122, v90);
  LODWORD(v87.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v123, &v87, 1);
  std::string::basic_string[abi:ne200100]<0>(v26, "abs_or_zero_compare_after_reduction");
  ZinPEAtoms::OutputAbsOrZeroCompareAtom::OutputAbsOrZeroCompareAtom(&v87, v26, v7);
  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v124, v87.__r_.__value_.__l.__data_, v87.__r_.__value_.__l.__size_);
  }

  else
  {
    v124 = v87;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v125, &v88);
  LODWORD(v85.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v126, &v85, 1);
  std::string::basic_string[abi:ne200100]<0>(v24, "ogoc");
  ZinPEAtoms::OutputGOCAtom::OutputGOCAtom(&v85, v24, v7);
  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v127, v85.__r_.__value_.__l.__data_, v85.__r_.__value_.__l.__size_);
  }

  else
  {
    v127 = v85;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v128, v86);
  v23 = 2;
  std::unordered_set<Attribute>::unordered_set(&v129, &v23, 1);
  std::string::basic_string[abi:ne200100]<0>(v21, "postogocrelu");
  ZinPEAtoms::OutputReLUAtom::OutputReLUAtom(&v83, v21, v7);
  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v130, v83.__r_.__value_.__l.__data_, v83.__r_.__value_.__l.__size_);
  }

  else
  {
    v130 = v83;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v131, &v84);
  LODWORD(v81.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v132, &v81, 1);
  std::string::basic_string[abi:ne200100]<0>(v19, "otranspose");
  ZinPEAtoms::OutputTransposeAtom::OutputTransposeAtom(&v81, v19, v7);
  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v133, v81.__r_.__value_.__l.__data_, v81.__r_.__value_.__l.__size_);
  }

  else
  {
    v133 = v81;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v134, v82);
  LODWORD(v79.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v135, &v79, 1);
  std::string::basic_string[abi:ne200100]<0>(__p, "dma_conv_output");
  ZinCommonAtoms::OutputTypeCastAtom::OutputTypeCastAtom(&v79, __p, v7);
  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v136, v79.__r_.__value_.__l.__data_, v79.__r_.__value_.__l.__size_);
  }

  else
  {
    v136 = v79;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v137, &v80);
  LODWORD(v77) = 0;
  std::unordered_set<Attribute>::unordered_set(&v138, &v77, 1);
  memset(v43, 0, sizeof(v43));
  std::vector<ZinLinearPattern::AtomItem>::__init_with_size[abi:ne200100]<ZinLinearPattern::AtomItem const*,ZinLinearPattern::AtomItem const*>(v43, &v103, &v139, 0xCuLL);
  v212[3] = v43;
  v213[3] = 0;
  v78[0] = &unk_1F19CAB88;
  v78[1] = ZinPEPatterns::ElementWiseAdd::AnalyzeEW;
  v78[3] = v78;
  ZinManyToOnePattern::ZinManyToOnePattern(v10, v212, v9, 0, v78, 0);
  std::__function::__value_func<BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::~__value_func[abi:ne200100](v78);
  std::__function::__value_func<BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::~__value_func[abi:ne200100](v213);
  v77 = v43;
  std::vector<ZinLinearPattern::AtomItemDesc>::__destroy_vector::operator()[abi:ne200100](&v77);
  v11 = 144;
  do
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v101.__r_.__value_.__r.__words[v11 + 2]);
    std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](&v100[v11 * 8 + 16]);
    if (v100[v11 * 8 + 15] < 0)
    {
      operator delete(v99.__r_.__value_.__r.__words[v11 + 2]);
    }

    v11 -= 12;
  }

  while (v11 * 8);
  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](&v80);
  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v82);
  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](&v84);
  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v86);
  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](&v88);
  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v90);
  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](&v92);
  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v91.__r_.__value_.__l.__data_);
  }

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v94);
  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v93.__r_.__value_.__l.__data_);
  }

  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v96);
  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v95.__r_.__value_.__l.__data_);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v98);
  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v97.__r_.__value_.__l.__data_);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v100);
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v102);
  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v101.__r_.__value_.__l.__data_);
  }

  if (v42 < 0)
  {
    operator delete(v41[0]);
  }

  v103.__r_.__value_.__r.__words[0] = v49;
  std::vector<ZinLinearPattern::AtomItemDesc>::__destroy_vector::operator()[abi:ne200100](&v103);
  for (i = 0; i != -24; i -= 12)
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v148[i * 8]);
    std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](&v147[i * 8]);
    if (SHIBYTE(v146.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v146.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v140);
  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v139.__r_.__value_.__l.__data_);
  }

  if (v46 < 0)
  {
    operator delete(v45[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v142);
  if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v141.__r_.__value_.__l.__data_);
  }

  if (v48 < 0)
  {
    operator delete(v47[0]);
  }

  v103.__r_.__value_.__r.__words[0] = v76;
  std::vector<std::vector<ZinLinearPattern::AtomItemDesc>>::__destroy_vector::operator()[abi:ne200100](&v103);
  for (j = 3; j != -3; j -= 3)
  {
    v103.__r_.__value_.__r.__words[0] = &v210[j];
    std::vector<ZinLinearPattern::AtomItemDesc>::__destroy_vector::operator()[abi:ne200100](&v103);
  }

  v14 = 72;
  do
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v159.__r_.__value_.__r.__words[v14 + 2]);
    std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](&v158[v14 * 8 + 16]);
    if (v158[v14 * 8 + 15] < 0)
    {
      operator delete(v157.__r_.__value_.__r.__words[v14 + 2]);
    }

    v14 -= 12;
  }

  while (v14 * 8);
  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](&v150);
  if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v149.__r_.__value_.__l.__data_);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v152);
  if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v151.__r_.__value_.__l.__data_);
  }

  if (v53 < 0)
  {
    operator delete(v52[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v154);
  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__r_.__value_.__l.__data_);
  }

  if (v56 < 0)
  {
    operator delete(v55[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v156);
  if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v155.__r_.__value_.__l.__data_);
  }

  if (v58 < 0)
  {
    operator delete(v57[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v158);
  if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v157.__r_.__value_.__l.__data_);
  }

  if (v60 < 0)
  {
    operator delete(v59[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v160);
  if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v159.__r_.__value_.__l.__data_);
  }

  if (v62 < 0)
  {
    operator delete(v61[0]);
  }

  v15 = 72;
  do
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&__s.__r_.__value_.__r.__words[v15 + 2]);
    std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](&v188[v15 * 8 + 16]);
    if (v188[v15 * 8 + 15] < 0)
    {
      operator delete(v187.__r_.__value_.__r.__words[v15 + 2]);
    }

    v15 -= 12;
  }

  while (v15 * 8);
  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](&v180);
  if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v179.__r_.__value_.__l.__data_);
  }

  if (v64 < 0)
  {
    operator delete(v63[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v182);
  if (SHIBYTE(v181.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v181.__r_.__value_.__l.__data_);
  }

  if (v66 < 0)
  {
    operator delete(v65[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v184);
  if (SHIBYTE(v183.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v183.__r_.__value_.__l.__data_);
  }

  if (v69 < 0)
  {
    operator delete(v68[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v186);
  if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v185.__r_.__value_.__l.__data_);
  }

  if (v71 < 0)
  {
    operator delete(v70[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v188);
  if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v187.__r_.__value_.__l.__data_);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v190);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (v75 < 0)
  {
    operator delete(v74[0]);
  }

  *v10 = &unk_1F19F0B70;
  return v10;
}

void sub_1A693E828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x310]);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x348]);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x380]);
  if (a27 < 0)
  {
    operator delete(a22);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x3B8]);
  if (a34 < 0)
  {
    operator delete(a29);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x3F0]);
  if (a40 < 0)
  {
    operator delete(a35);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x428]);
  if (a46 < 0)
  {
    operator delete(a41);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x460]);
  if (a52 < 0)
  {
    operator delete(a47);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x498]);
  if (a58 < 0)
  {
    operator delete(a53);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x4D0]);
  if (a64 < 0)
  {
    operator delete(a59);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x508]);
  if (a66 < 0)
  {
    operator delete(a65);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x540]);
  if (a68 < 0)
  {
    operator delete(a67);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x578]);
  if (a70 < 0)
  {
    operator delete(a69);
  }

  while (v86 != &STACK[0x5B0])
  {
    v86 -= 12;
    ZinLinearPattern::AtomItemDesc::~AtomItemDesc(v86);
  }

  STACK[0x5B0] = &a75;
  std::vector<ZinLinearPattern::AtomItemDesc>::__destroy_vector::operator()[abi:ne200100](&STACK[0x5B0]);
  v88 = -192;
  v89 = v85;
  do
  {
    ZinLinearPattern::AtomItemDesc::~AtomItemDesc(v89);
    v89 = (v90 - 96);
    v88 += 96;
  }

  while (v88);
  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0xA30]);
  if (a72 < 0)
  {
    operator delete(a71);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0xA68]);
  if (a74 < 0)
  {
    operator delete(a73);
  }

  STACK[0x5B0] = &STACK[0x2D0];
  std::vector<std::vector<ZinLinearPattern::AtomItemDesc>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x5B0]);
  v91 = -48;
  v92 = v83;
  do
  {
    STACK[0x5B0] = v92;
    std::vector<ZinLinearPattern::AtomItemDesc>::__destroy_vector::operator()[abi:ne200100](&STACK[0x5B0]);
    v92 -= 24;
    v91 += 24;
  }

  while (v91);
  v93 = -576;
  v94 = v84;
  do
  {
    ZinLinearPattern::AtomItemDesc::~AtomItemDesc(v94);
    v94 = (v95 - 96);
    v93 += 96;
  }

  while (v93);
  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0xB60]);
  if (a77 < 0)
  {
    operator delete(a76);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0xB98]);
  if (a79 < 0)
  {
    operator delete(a78);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0xBD0]);
  if (a81 < 0)
  {
    operator delete(a80);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0xC08]);
  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(a82);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0xC40]);
  if (SLOBYTE(STACK[0x21F]) < 0)
  {
    operator delete(STACK[0x208]);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0xC78]);
  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  v96 = -576;
  v97 = v82;
  do
  {
    ZinLinearPattern::AtomItemDesc::~AtomItemDesc(v97);
    v97 = (v98 - 96);
    v96 += 96;
  }

  while (v96);
  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0xEF0]);
  if (SLOBYTE(STACK[0x24F]) < 0)
  {
    operator delete(STACK[0x238]);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0xF28]);
  if (SLOBYTE(STACK[0x267]) < 0)
  {
    operator delete(STACK[0x250]);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0xF60]);
  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(STACK[0x270]);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0xF98]);
  if (SLOBYTE(STACK[0x29F]) < 0)
  {
    operator delete(STACK[0x288]);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0xFD0]);
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x1008]);
  if (SLOBYTE(STACK[0x2CF]) < 0)
  {
    operator delete(STACK[0x2B8]);
  }

  _Unwind_Resume(a1);
}

void sub_1A693EE60()
{
  if (SLOBYTE(STACK[0x7A7]) < 0)
  {
    operator delete(STACK[0x790]);
  }

  JUMPOUT(0x1A693EAF8);
}

void sub_1A693EEA0()
{
  if (SLOBYTE(STACK[0x747]) < 0)
  {
    operator delete(STACK[0x730]);
  }

  JUMPOUT(0x1A693EB10);
}

void sub_1A693EEE0()
{
  if (SLOBYTE(STACK[0x6E7]) < 0)
  {
    operator delete(STACK[0x6D0]);
  }

  JUMPOUT(0x1A693EB28);
}

void sub_1A693EF20()
{
  if (SLOBYTE(STACK[0x687]) < 0)
  {
    operator delete(STACK[0x670]);
  }

  JUMPOUT(0x1A693EB40);
}

void sub_1A693EF60()
{
  if (SLOBYTE(STACK[0x627]) < 0)
  {
    operator delete(STACK[0x610]);
  }

  JUMPOUT(0x1A693EB58);
}

void sub_1A693EFAC()
{
  if (SLOBYTE(STACK[0x5C7]) < 0)
  {
    operator delete(STACK[0x5B0]);
  }

  JUMPOUT(0x1A693EB74);
}

void sub_1A693EFFC()
{
  if (SLOBYTE(STACK[0xB17]) < 0)
  {
    operator delete(STACK[0xB00]);
  }

  JUMPOUT(0x1A693EBDCLL);
}

void sub_1A693F044()
{
  if (SLOBYTE(STACK[0xAB7]) < 0)
  {
    operator delete(STACK[0xAA0]);
  }

  JUMPOUT(0x1A693EBF4);
}

void sub_1A693F0A0()
{
  if (SLOBYTE(STACK[0xEA7]) < 0)
  {
    operator delete(STACK[0xE90]);
  }

  JUMPOUT(0x1A693EC78);
}

void sub_1A693F0E8()
{
  if (SLOBYTE(STACK[0xE47]) < 0)
  {
    operator delete(STACK[0xE30]);
  }

  JUMPOUT(0x1A693EC90);
}

void sub_1A693F138()
{
  if (SLOBYTE(STACK[0xDE7]) < 0)
  {
    operator delete(STACK[0xDD0]);
  }

  JUMPOUT(0x1A693ECACLL);
}

void sub_1A693F180()
{
  if (SLOBYTE(STACK[0xD87]) < 0)
  {
    operator delete(STACK[0xD70]);
  }

  JUMPOUT(0x1A693ECC4);
}

void sub_1A693F1C8()
{
  if (SLOBYTE(STACK[0xD27]) < 0)
  {
    operator delete(STACK[0xD10]);
  }

  JUMPOUT(0x1A693ECDCLL);
}

void sub_1A693F218()
{
  if (SLOBYTE(STACK[0xCC7]) < 0)
  {
    operator delete(STACK[0xCB0]);
  }

  JUMPOUT(0x1A693ECF4);
}

void sub_1A693F278()
{
  if (*(v0 + 3879) < 0)
  {
    operator delete(STACK[0x1220]);
  }

  JUMPOUT(0x1A693ED48);
}

void sub_1A693F2C8()
{
  if (*(v0 + 3783) < 0)
  {
    operator delete(STACK[0x11C0]);
  }

  JUMPOUT(0x1A693ED60);
}

void sub_1A693F324()
{
  if (*(v0 + 3687) < 0)
  {
    operator delete(STACK[0x1160]);
  }

  JUMPOUT(0x1A693ED80);
}

void sub_1A693F374()
{
  if (*(v0 + 3591) < 0)
  {
    operator delete(STACK[0x1100]);
  }

  JUMPOUT(0x1A693ED98);
}

void sub_1A693F3C4()
{
  if (*(v0 + 3495) < 0)
  {
    operator delete(STACK[0x10A0]);
  }

  JUMPOUT(0x1A693EDB0);
}

void sub_1A693F42C()
{
  if (*(v0 + 3399) < 0)
  {
    operator delete(STACK[0x1040]);
  }

  JUMPOUT(0x1A693EDC8);
}

uint64_t ZinPEPatterns::ElementWiseAdd::AnalyzeEW(uint64_t a1, uint64_t a2, ZinPattern *this)
{
  matched = ZinPattern::MatchCount(this);
  if (!matched)
  {
    return 0;
  }

  v7 = matched;
  std::string::basic_string[abi:ne200100]<0>(&v25, "dma_conv_input1");
  v19[0] = ZinPattern::HasMatched(this, &v25);
  std::string::basic_string[abi:ne200100]<0>(&v24, "irelu1");
  v19[1] = ZinPattern::HasMatched(this, &v24);
  std::string::basic_string[abi:ne200100]<0>(&v23, "dma_conv_input2");
  v19[2] = ZinPattern::HasMatched(this, &v23);
  std::string::basic_string[abi:ne200100]<0>(v21, "irelu2");
  v19[3] = ZinPattern::HasMatched(this, v21);
  std::string::basic_string[abi:ne200100]<0>(v17, "orelu");
  v19[4] = ZinPattern::HasMatched(this, v17);
  std::string::basic_string[abi:ne200100]<0>(__p, "dma_conv_output");
  v19[5] = ZinPattern::HasMatched(this, __p);
  std::vector<BOOL>::vector(v20, v19, 6);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (v27 < 0)
  {
    operator delete(v25);
  }

  v25 = v20[0];
  LODWORD(v26) = 0;
  if (v7 != std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,false>(&v25, v20[1]))
  {
    std::string::basic_string[abi:ne200100]<0>(&v23, "presc_tmp");
    v8 = std::string::append(&v23, "_xfm", 4uLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    ZinObjectNameFactory::ZinObjectNameFactory(&v25, &v24);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(v21, "prescale2");
    ZinPattern::GetMatch(this, v21, &v23);
    ZinPatternUtils::ToGOC(&v23, &v24);
    v10 = ZinMergeGOCSequence(a1, &v25, &v24);
    if (v24.__r_.__value_.__r.__words[0])
    {
      v24.__r_.__value_.__l.__size_ = v24.__r_.__value_.__r.__words[0];
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (v23.__r_.__value_.__r.__words[0])
    {
      v23.__r_.__value_.__l.__size_ = v23.__r_.__value_.__r.__words[0];
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (v22 < 0)
    {
      operator delete(v21[0]);
    }

    LODWORD(v24.__r_.__value_.__l.__data_) = 0;
    if (!v10 || !ZinGOCLayer::GetOnlyGlobalScale(v10, &v24) || (v11 = 0, v12 = fabsf(*&v24.__r_.__value_.__l.__data_), v12 >= 0.1) && v12 <= 10.0)
    {
      v11 = 1;
    }

    v25 = &unk_1F19D0088;
    if (v28 < 0)
    {
      operator delete(v26);
      if (v11)
      {
        goto LABEL_32;
      }
    }

    else if (v11)
    {
LABEL_32:
      CanFoldPreScales = ZinPEPatterns::ElementWise::CanFoldPreScales(a1, this, a2);
      goto LABEL_36;
    }
  }

  CanFoldPreScales = 0;
LABEL_36:
  if (v20[0])
  {
    operator delete(v20[0]);
  }

  return CanFoldPreScales;
}

void sub_1A693F798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  *(v36 - 72) = &unk_1F19D0088;
  if (*(v36 - 41) < 0)
  {
    operator delete(*(v36 - 64));
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinPEPatterns::ElementWise::CanFoldPreScales(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "scaled_ew");
  SingleMatch = ZinPattern::GetSingleMatch(a2, &__p);
  if (v20 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "dequant1");
  v7 = ZinPattern::GetSingleMatch(a2, &__p);
  if (v20 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "dequant2");
  v8 = ZinPattern::GetSingleMatch(a2, &__p);
  if (v20 < 0)
  {
    operator delete(__p);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else if (!v7)
  {
    goto LABEL_10;
  }

  if (*(*(v7 + 11) + 8) != 119)
  {
    goto LABEL_44;
  }

LABEL_10:
  if (v8 && *(*(v8 + 11) + 8) != 119)
  {
LABEL_44:
    ZinAssertImpl("Expected dequant!!!");
  }

  std::string::basic_string[abi:ne200100]<0>(&v23, "prescale1");
  ZinPattern::GetMatch(a2, &v23, &__p);
  ZinPatternUtils::ToGOC(&__p, v26);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v25 < 0)
  {
    operator delete(v23);
  }

  if ((ZinPEAtoms::InputDeQuantAtom::CanDeQuantOnSrc2FoldIntoPrescale(v7, v8, v26, SingleMatch, a3, a1) & 1) == 0)
  {
    v9 = 0;
    goto LABEL_41;
  }

  std::string::basic_string[abi:ne200100]<0>(&v22, "goc");
  ZinPattern::GetMatch(a2, &v22, &__p);
  ZinPatternUtils::ToGOC(&__p, &v23);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
    if (SingleMatch)
    {
      goto LABEL_25;
    }
  }

  else if (SingleMatch)
  {
    goto LABEL_25;
  }

  if (v24 != v23)
  {
LABEL_25:
    std::string::basic_string[abi:ne200100]<0>(&v17, "ewpresc_tmp");
    v10 = std::string::append(&v17, "_xfm", 4uLL);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    ZinObjectNameFactory::ZinObjectNameFactory(&__p, &v22);
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    ZinPatternUtils::ConvertDequantScaleToGOC(v7, v26);
    std::string::basic_string[abi:ne200100]<0>(v15, "prescale2");
    ZinPattern::GetMatch(a2, v15, &v17);
    ZinPatternUtils::ToGOC(&v17, &v22);
    if (v17.__r_.__value_.__r.__words[0])
    {
      v17.__r_.__value_.__l.__size_ = v17.__r_.__value_.__r.__words[0];
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    ZinPatternUtils::ConvertDequantScaleToGOC(v8, &v22);
    v12 = ZinMergeGOCSequence(a1, &__p, v26);
    v13 = ZinMergeGOCSequence(a1, &__p, &v22);
    v9 = ZinPEPatterns::ElementWise::ConvertCoreToSEW(a1, &__p, SingleMatch, &v23, v12, v13, 0);
    if (v22.__r_.__value_.__r.__words[0])
    {
      v22.__r_.__value_.__l.__size_ = v22.__r_.__value_.__r.__words[0];
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    __p = &unk_1F19D0088;
    if (v21 < 0)
    {
      operator delete(v19);
    }

    if (!v9)
    {
      goto LABEL_39;
    }
  }

  v9 = 1;
LABEL_39:
  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

LABEL_41:
  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }

  return v9;
}

void sub_1A693FCAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, void *a23, int a24, __int16 a25, char a26, char a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a23);
  }

  v40 = *(v38 - 96);
  if (v40)
  {
    *(v38 - 88) = v40;
    operator delete(v40);
  }

  v41 = *(v38 - 72);
  if (v41)
  {
    *(v38 - 64) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void ZinPEPatterns::ElementWise::CreatePEEW(ZinPEPatterns::ElementWise *this, const ZinPattern *a2, const ZinIrOpLayerGraph *a3, ZinObjectNameFactory *a4)
{
  v70 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(&__p, "texture1");
  SingleMatch = ZinPattern::GetSingleMatch(this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "texture2");
  ZinPattern::GetSingleMatch(this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __dst = 0;
  v64 = 0;
  v66 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "dequant1");
  v8 = ZinPattern::GetSingleMatch(this, &__p);
  ZinPatternUtils::ConvertDequantScaleToGOC(v8, &v64);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v69, "prescale1");
  ZinPattern::GetMatch(this, &v69, &__p);
  ZinPatternUtils::ToGOC(&__p, &__src);
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  std::vector<ZinGOCLayer const*>::__insert_with_size[abi:ne200100]<std::__wrap_iter<ZinGOCLayer const**>,std::__wrap_iter<ZinGOCLayer const**>>(&v64, __dst, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_, (__src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0]) >> 3);
  v61 = 0;
  v60 = 0;
  v62 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "dequant2");
  v9 = ZinPattern::GetSingleMatch(this, &__p);
  ZinPatternUtils::ConvertDequantScaleToGOC(v9, &v60);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v44, "prescale2");
  ZinPattern::GetMatch(this, &v44, &v69);
  ZinPatternUtils::ToGOC(&v69, &__p);
  if (__src.__r_.__value_.__r.__words[0])
  {
    __src.__r_.__value_.__l.__size_ = __src.__r_.__value_.__r.__words[0];
    operator delete(__src.__r_.__value_.__l.__data_);
  }

  __src = __p;
  memset(&__p, 0, sizeof(__p));
  if (v69.__r_.__value_.__r.__words[0])
  {
    v69.__r_.__value_.__l.__size_ = v69.__r_.__value_.__r.__words[0];
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44);
  }

  std::vector<ZinGOCLayer const*>::__insert_with_size[abi:ne200100]<std::__wrap_iter<ZinGOCLayer const**>,std::__wrap_iter<ZinGOCLayer const**>>(&v60, v61, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_, (__src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0]) >> 3);
  std::string::basic_string[abi:ne200100]<0>(&v69, "postscale");
  ZinPattern::GetMatch(this, &v69, &__p);
  ZinPatternUtils::ToGOC(&__p, &v59);
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "oquant");
  v43 = ZinPattern::GetSingleMatch(this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v10 = 1.0;
  if (!v43 || (*(*ZinException::GetLayerInfo(this) + 1179) & 1) != 0)
  {
LABEL_33:
    v15 = ZinMergeGOCSequence(a2, a3, &v64);
    v16 = ZinMergeGOCSequence(a2, a3, &v60);
    v17 = ZinMergeGOCSequence(a2, a3, &v59);
    std::string::basic_string[abi:ne200100]<0>(&__p, "scaled_ew");
    v18 = ZinPattern::GetSingleMatch(this, &__p);
    v19 = v18;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (!v19)
      {
        goto LABEL_64;
      }
    }

    else if (!v18)
    {
      goto LABEL_64;
    }

    v20 = *(v19 + 88);
    v21 = *(v20 + 8);
    if (v21 == 6)
    {
      v23 = *(v20 + 12);
      if (v23 == 1 && v17)
      {
        if (v15)
        {
          v69.__r_.__value_.__r.__words[0] = v15;
          v69.__r_.__value_.__l.__size_ = v17;
          memset(&__p, 0, sizeof(__p));
          std::vector<__CFNumber const*>::__init_with_size[abi:ne200100]<__CFNumber const* const*,__CFNumber const* const*>(&__p, &v69, &v69.__r_.__value_.__r.__words[2], 2uLL);
          v15 = ZinMergeGOCSequence(a2, a3, &__p);
          if (__p.__r_.__value_.__r.__words[0])
          {
            __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v15 = v17;
        }

        v17 = 0;
      }

      if (v23 == 1 && v16)
      {
        if (v15)
        {
          goto LABEL_60;
        }

        goto LABEL_62;
      }
    }

    else if (v21 == 5)
    {
      v22 = *(v20 + 12);
      if (v22 == 2 && v17)
      {
        if (v15)
        {
          v69.__r_.__value_.__r.__words[0] = v15;
          v69.__r_.__value_.__l.__size_ = v17;
          memset(&__p, 0, sizeof(__p));
          std::vector<__CFNumber const*>::__init_with_size[abi:ne200100]<__CFNumber const* const*,__CFNumber const* const*>(&__p, &v69, &v69.__r_.__value_.__r.__words[2], 2uLL);
          v15 = ZinMergeGOCSequence(a2, a3, &__p);
          if (__p.__r_.__value_.__r.__words[0])
          {
            __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v17 = 0;
          v22 = *(*(v19 + 88) + 12);
        }

        else
        {
          v22 = 2;
          v15 = v17;
          v17 = 0;
        }
      }

      if (v22 == 2 && v16)
      {
        if (v15)
        {
LABEL_60:
          v69.__r_.__value_.__r.__words[0] = v15;
          v69.__r_.__value_.__l.__size_ = v16;
          memset(&__p, 0, sizeof(__p));
          std::vector<__CFNumber const*>::__init_with_size[abi:ne200100]<__CFNumber const* const*,__CFNumber const* const*>(&__p, &v69, &v69.__r_.__value_.__r.__words[2], 2uLL);
          v15 = ZinMergeGOCSequence(a2, a3, &__p);
          if (__p.__r_.__value_.__r.__words[0])
          {
            __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          goto LABEL_63;
        }

LABEL_62:
        v15 = v16;
LABEL_63:
        v16 = 0;
      }
    }

LABEL_64:
    __p.__r_.__value_.__r.__words[0] = v15;
    __p.__r_.__value_.__l.__size_ = v16;
    memset(v58, 0, sizeof(v58));
    std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer * const*,ZinIrOpLayer * const*>(v58, &__p, &__p.__r_.__value_.__r.__words[2], 2uLL);
    std::string::basic_string[abi:ne200100]<0>(&v69, "goc");
    ZinPattern::GetMatch(this, &v69, &__p);
    ZinPatternUtils::ToGOC(&__p, &v57);
    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
    }

    ZinPEPatterns::ElementWise::ConvertCoreToSEW(a2, a3, v19, &v57, *v58[0], *(v58[0] + 1), v17);
    (*(*this + 56))(this);
    std::string::basic_string[abi:ne200100]<0>(&__p, "broadcast1");
    v24 = ZinPattern::GetSingleMatch(this, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (!SingleMatch)
    {
      v26 = 0;
LABEL_79:
      v27 = 0;
LABEL_80:
      v51.n128_u64[0] = v27;
      v52 = 0;
      v28 = RawOrShared<ZinIndexLayer>::unwrap_ptr(&v51);
      RawOrShared<ZinIndexLayer>::update_this_if_shared(&v51, v28);
      v53.n128_u64[0] = SingleMatch;
      v54 = 0;
      v29 = RawOrShared<ZinTransposeLayer>::unwrap_ptr(&v53);
      RawOrShared<ZinTransposeLayer>::update_this_if_shared(&v53, v29);
      v55.n128_u64[0] = v26;
      v56 = 0;
      v30 = RawOrShared<ZinBroadcastLayer>::unwrap_ptr(&v55);
      RawOrShared<ZinBroadcastLayer>::update_this_if_shared(&v55, v30);
      std::string::basic_string[abi:ne200100]<0>(&__p, "reduction");
      v31 = ZinPattern::GetSingleMatch(this, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "final_scale");
      v32 = ZinPattern::GetSingleMatch(this, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "epsilon");
      v33 = ZinPattern::GetSingleMatch(this, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "post_process");
      ZinPattern::GetSingleMatch(this, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v31)
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = 1065353216;
        if (v32)
        {
          ZinGOCLayer::UnshiftSingularScale(v32, &__p);
        }

        if (v10 != 1.0)
        {
          *&__p.__r_.__value_.__l.__data_ = v10 * *&__p.__r_.__value_.__l.__data_;
        }

        LODWORD(v69.__r_.__value_.__l.__data_) = 0;
        if (v33)
        {
          ZinGOCLayer::UnshiftSingularBias(v33, &v69);
        }
      }

      std::string::basic_string[abi:ne200100]<0>(&v69, "ogoc");
      ZinPattern::GetMatch(this, &v69, &__p);
      ZinPatternUtils::ToGOC(&__p, &v50);
      if (__p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v69.__r_.__value_.__l.__data_);
      }

      v34 = ZinMergeGOCSequence(a2, a3, &v50);
      ZinPELayer::GetPostScaleAndBiasFromGOC(v49, v34);
      (*(*a3 + 16))(&v69, a3, 1);
      v35 = std::string::append(&v69, "_", 1uLL);
      v36 = *&v35->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(&v46, "fuse_peew");
      v37 = std::string::append(&v46, "_xfm", 4uLL);
      v38 = *&v37->__r_.__value_.__l.__data_;
      v45 = v37->__r_.__value_.__r.__words[2];
      v44 = v38;
      v37->__r_.__value_.__l.__size_ = 0;
      v37->__r_.__value_.__r.__words[2] = 0;
      v37->__r_.__value_.__r.__words[0] = 0;
      if (v45 >= 0)
      {
        v39 = &v44;
      }

      else
      {
        v39 = v44;
      }

      if (v45 >= 0)
      {
        v40 = HIBYTE(v45);
      }

      else
      {
        v40 = *(&v44 + 1);
      }

      v41 = std::string::append(&__p, v39, v40);
      v42 = *&v41->__r_.__value_.__l.__data_;
      v48 = v41->__r_.__value_.__r.__words[2];
      v47 = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v45) < 0)
      {
        operator delete(v44);
      }

      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v69.__r_.__value_.__l.__data_);
      }

      operator new();
    }

    v25 = *(*(SingleMatch + 11) + 8);
    if (v25 == 58)
    {
      ZinSliceLayer::CreatePEIndexIfPossible(SingleMatch, v19, v24, &__p);
    }

    else
    {
      if (v25 != 56)
      {
LABEL_78:
        v26 = 0;
        SingleMatch = 0;
        goto LABEL_79;
      }

      ZinGatherLayer::CreatePEIndexIfPossible(SingleMatch, v19, v24, &__p);
    }

    if (v68)
    {
      SingleMatch = __p.__r_.__value_.__l.__size_;
      v27 = __p.__r_.__value_.__r.__words[0];
      v26 = __p.__r_.__value_.__r.__words[2];
      goto LABEL_80;
    }

    goto LABEL_78;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "reduction");
  v11 = ZinPattern::HasMatched(this, &__p);
  v12 = v11;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v12)
    {
LABEL_29:
      Scale = ZinQuantLayer::GetScale(v43);
      v10 = 1.0 / ZinIrVector::GetSingularVal(*Scale);
      if (ZinDeQuantLayer::HasScalarZeroPoint(v43))
      {
        ZeroPoint = ZinDeQuantLayer::GetZeroPoint(v43);
        ZinIrVector::GetSingularVal(*ZeroPoint);
      }

      goto LABEL_33;
    }
  }

  else if (v11)
  {
    goto LABEL_29;
  }

  __p.__r_.__value_.__r.__words[0] = ZinPatternUtils::ConvertQuantToGOC(v43, 0);
  std::vector<ZinGOCLayer const*>::push_back[abi:ne200100](&v59, &__p);
  goto LABEL_33;
}

void sub_1A6940F68(_Unwind_Exception *a1)
{
  v2 = STACK[0x330];
  if (STACK[0x330])
  {
    STACK[0x338] = v2;
    operator delete(v2);
  }

  v3 = STACK[0x2D0];
  if (STACK[0x2D0])
  {
    STACK[0x2D8] = v3;
    operator delete(v3);
  }

  v4 = STACK[0x2E8];
  if (STACK[0x2E8])
  {
    STACK[0x2F0] = v4;
    operator delete(v4);
  }

  v5 = STACK[0x300];
  if (STACK[0x300])
  {
    STACK[0x308] = v5;
    operator delete(v5);
  }

  v6 = STACK[0x318];
  if (STACK[0x318])
  {
    STACK[0x320] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void sub_1A69415C8()
{
  if (SLOBYTE(STACK[0x347]) < 0)
  {
    JUMPOUT(0x1A6941584);
  }

  JUMPOUT(0x1A6941588);
}

void sub_1A69415DC()
{
  if (SLOBYTE(STACK[0x347]) < 0)
  {
    JUMPOUT(0x1A69415A4);
  }

  JUMPOUT(0x1A69415A8);
}

void *ZinPEPatterns::ElementWise::ElementWise(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v3;
  v233[4] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(v79, "texture1");
  ZinPEAtoms::TextureAtom::TextureAtom(&__s, v79, v7);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v208, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v208 = __s;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v209, v207);
  LODWORD(v110.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v210, &v110, 1);
  std::string::basic_string[abi:ne200100]<0>(v77, "dma_conv_input1");
  ZinCommonAtoms::InputTypeCastAtom::InputTypeCastAtom(&v204, v77, v7);
  if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v211, v204.__r_.__value_.__l.__data_, v204.__r_.__value_.__l.__size_);
  }

  else
  {
    v211 = v204;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v212, v205);
  LODWORD(v110.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v213, &v110, 1);
  std::string::basic_string[abi:ne200100]<0>(v75, "dequant1");
  ZinPEAtoms::InputDeQuantAtom::InputDeQuantAtom(&v202, v75, v7);
  if (SHIBYTE(v202.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v214, v202.__r_.__value_.__l.__data_, v202.__r_.__value_.__l.__size_);
  }

  else
  {
    v214 = v202;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v215, v203);
  LODWORD(v110.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v216, &v110, 1);
  std::string::basic_string[abi:ne200100]<0>(v73, "irelu1");
  ZinPEAtoms::InputReLUAtom::InputReLUAtom(&v200, v73, v7);
  if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v217, v200.__r_.__value_.__l.__data_, v200.__r_.__value_.__l.__size_);
  }

  else
  {
    v217 = v200;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v218, v201);
  LODWORD(v110.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v219, &v110, 1);
  std::string::basic_string[abi:ne200100]<0>(v71, "prescale1");
  ZinPEAtoms::PreScaleSrc1Atom::PreScaleSrc1Atom(&v198, v71, v7);
  if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v220, v198.__r_.__value_.__l.__data_, v198.__r_.__value_.__l.__size_);
  }

  else
  {
    v220 = v198;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v221, v199);
  v70 = 2;
  std::unordered_set<Attribute>::unordered_set(&v222, &v70, 1);
  std::string::basic_string[abi:ne200100]<0>(v68, "itranspose1");
  ZinPEAtoms::InputTransposeAtom::InputTransposeAtom(&v196, v68, v7);
  if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v223, v196.__r_.__value_.__l.__data_, v196.__r_.__value_.__l.__size_);
  }

  else
  {
    v223 = v196;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v224, v197);
  LODWORD(v110.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v225, &v110, 1);
  std::string::basic_string[abi:ne200100]<0>(v66, "broadcast1");
  ZinCommonAtoms::BroadcastAtom::BroadcastAtom(&v194, v66, v7);
  if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v226, v194.__r_.__value_.__l.__data_, v194.__r_.__value_.__l.__size_);
  }

  else
  {
    v226 = v194;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v227, v195);
  LODWORD(v110.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v228, &v110, 1);
  memset(v230, 0, sizeof(v230));
  std::vector<ZinLinearPattern::AtomItem>::__init_with_size[abi:ne200100]<ZinLinearPattern::AtomItem const*,ZinLinearPattern::AtomItem const*>(v230, &v208, &v229, 7uLL);
  std::string::basic_string[abi:ne200100]<0>(v64, "texture2");
  ZinPEAtoms::TextureAtom::TextureAtom(&v170, v64, v7);
  if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v172, v170.__r_.__value_.__l.__data_, v170.__r_.__value_.__l.__size_);
  }

  else
  {
    v172 = v170;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v173, v171);
  LODWORD(v110.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v174, &v110, 1);
  std::string::basic_string[abi:ne200100]<0>(v62, "dma_conv_input2");
  ZinCommonAtoms::InputTypeCastAtom::InputTypeCastAtom(&v168, v62, v7);
  if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v175, v168.__r_.__value_.__l.__data_, v168.__r_.__value_.__l.__size_);
  }

  else
  {
    v175 = v168;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v176, v169);
  LODWORD(v110.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v177, &v110, 1);
  std::string::basic_string[abi:ne200100]<0>(v60, "dequant2");
  ZinPEAtoms::InputDeQuantAtom::InputDeQuantAtom(&v166, v60, v7);
  if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v178, v166.__r_.__value_.__l.__data_, v166.__r_.__value_.__l.__size_);
  }

  else
  {
    v178 = v166;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v179, v167);
  LODWORD(v110.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v180, &v110, 1);
  std::string::basic_string[abi:ne200100]<0>(v58, "irelu2");
  ZinPEAtoms::InputReLUAtom::InputReLUAtom(&v164, v58, v7);
  if (SHIBYTE(v164.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v181, v164.__r_.__value_.__l.__data_, v164.__r_.__value_.__l.__size_);
  }

  else
  {
    v181 = v164;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v182, v165);
  LODWORD(v110.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v183, &v110, 1);
  std::string::basic_string[abi:ne200100]<0>(v56, "prescale2");
  ZinPEAtoms::PreScaleSrc2Atom::PreScaleSrc2Atom(&v162, v56, v7);
  if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v184, v162.__r_.__value_.__l.__data_, v162.__r_.__value_.__l.__size_);
  }

  else
  {
    v184 = v162;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v185, v163);
  LODWORD(v110.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v186, &v110, 1);
  std::string::basic_string[abi:ne200100]<0>(v54, "itranspose2");
  ZinPEAtoms::InputTransposeAtom::InputTransposeAtom(&v160, v54, v7);
  if (SHIBYTE(v160.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v187, v160.__r_.__value_.__l.__data_, v160.__r_.__value_.__l.__size_);
  }

  else
  {
    v187 = v160;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v188, v161);
  LODWORD(v110.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v189, &v110, 1);
  std::string::basic_string[abi:ne200100]<0>(v52, "broadcast2");
  ZinCommonAtoms::BroadcastAtom::BroadcastAtom(&v158, v52, v7);
  if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v190, v158.__r_.__value_.__l.__data_, v158.__r_.__value_.__l.__size_);
  }

  else
  {
    v190 = v158;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v191, v159);
  LODWORD(v110.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v192, &v110, 1);
  memset(v231, 0, sizeof(v231));
  std::vector<ZinLinearPattern::AtomItem>::__init_with_size[abi:ne200100]<ZinLinearPattern::AtomItem const*,ZinLinearPattern::AtomItem const*>(v231, &v172, &v193, 7uLL);
  memset(v81, 0, sizeof(v81));
  std::vector<std::vector<ZinLinearPattern::AtomItem>>::__init_with_size[abi:ne200100]<std::vector<ZinLinearPattern::AtomItem> const*,std::vector<ZinLinearPattern::AtomItem> const*>(v81, v230, v232, 2uLL);
  v232[0] = v81;
  v232[1] = v5;
  std::string::basic_string[abi:ne200100]<0>(v49, "scaled_ew");
  ZinPEAtoms::ScaledEWAtom::ScaledEWAtom(&v151, v49, v7);
  if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v153, v151.__r_.__value_.__l.__data_, v151.__r_.__value_.__l.__size_);
  }

  else
  {
    v153 = v151;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v154, v152);
  LODWORD(v110.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v155, &v110, 1);
  std::string::basic_string[abi:ne200100]<0>(v47, "goc");
  ZinPEAtoms::PEEWGOCAtom::PEEWGOCAtom(&v149, v47, v7);
  if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v156, v149.__r_.__value_.__l.__data_, v149.__r_.__value_.__l.__size_);
  }

  else
  {
    v156[0] = v149;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v156[1], v150);
  v46 = 2;
  std::unordered_set<Attribute>::unordered_set(&v156[2].__r_.__value_.__l.__size_, &v46, 1);
  memset(v51, 0, sizeof(v51));
  std::vector<ZinLinearPattern::AtomItem>::__init_with_size[abi:ne200100]<ZinLinearPattern::AtomItem const*,ZinLinearPattern::AtomItem const*>(v51, &v153, &v157, 2uLL);
  v232[2] = v51;
  std::string::basic_string[abi:ne200100]<0>(v43, "postscale");
  ZinPEAtoms::PostScaleAtom::PostScaleAtom(&v108, v43, v7);
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v110, v108.__r_.__value_.__l.__data_, v108.__r_.__value_.__l.__size_);
  }

  else
  {
    v110 = v108;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v111, v109);
  v42 = 2;
  std::unordered_set<Attribute>::unordered_set(&v112, &v42, 1);
  std::string::basic_string[abi:ne200100]<0>(v40, "abs_or_zero_compare");
  ZinPEAtoms::AbsOrZeroCompareAtom::AbsOrZeroCompareAtom(&v106, v40, v7);
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v113, v106.__r_.__value_.__l.__data_, v106.__r_.__value_.__l.__size_);
  }

  else
  {
    v113 = v106;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v114, v107);
  LODWORD(v104.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v115, &v104, 1);
  std::string::basic_string[abi:ne200100]<0>(v38, "reduction");
  ZinPEAtoms::ReductionAtom::ReductionAtom(&v104, v38, v7);
  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v116, v104.__r_.__value_.__l.__data_, v104.__r_.__value_.__l.__size_);
  }

  else
  {
    v116 = v104;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v117, v105);
  LODWORD(v102.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v118, &v102, 1);
  std::string::basic_string[abi:ne200100]<0>(v36, "final_scale");
  ZinPEAtoms::ReductionFinalScaleAtom::ReductionFinalScaleAtom(&v102, v36, v7);
  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v119, v102.__r_.__value_.__l.__data_, v102.__r_.__value_.__l.__size_);
  }

  else
  {
    v119 = v102;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v120, v103);
  LODWORD(v100.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v121, &v100, 1);
  std::string::basic_string[abi:ne200100]<0>(v34, "epsilon");
  ZinPEAtoms::ReductionEpsilonAtom::ReductionEpsilonAtom(&v100, v34, v7);
  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v122, v100.__r_.__value_.__l.__data_, v100.__r_.__value_.__l.__size_);
  }

  else
  {
    v122 = v100;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v123, v101);
  LODWORD(v98.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v124, &v98, 1);
  std::string::basic_string[abi:ne200100]<0>(v32, "post_process");
  ZinPEAtoms::ReductionPostProcessAtom::ReductionPostProcessAtom(&v98, v32, v7);
  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v125, v98.__r_.__value_.__l.__data_, v98.__r_.__value_.__l.__size_);
  }

  else
  {
    v125 = v98;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v126, v99);
  LODWORD(v96.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v127, &v96, 1);
  std::string::basic_string[abi:ne200100]<0>(v30, "orelu");
  ZinPEAtoms::OutputReLUAtom::OutputReLUAtom(&v96, v30, v7);
  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v128, v96.__r_.__value_.__l.__data_, v96.__r_.__value_.__l.__size_);
  }

  else
  {
    v128 = v96;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v129, v97);
  LODWORD(v94.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v130, &v94, 1);
  std::string::basic_string[abi:ne200100]<0>(v28, "abs_or_zero_compare_after_reduction");
  ZinPEAtoms::OutputAbsOrZeroCompareAtom::OutputAbsOrZeroCompareAtom(&v94, v28, v7);
  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v131, v94.__r_.__value_.__l.__data_, v94.__r_.__value_.__l.__size_);
  }

  else
  {
    v131 = v94;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v132, v95);
  LODWORD(v92.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v133, &v92, 1);
  std::string::basic_string[abi:ne200100]<0>(v26, "ogoc");
  ZinPEAtoms::OutputGOCAtom::OutputGOCAtom(&v92, v26, v7);
  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v134, v92.__r_.__value_.__l.__data_, v92.__r_.__value_.__l.__size_);
  }

  else
  {
    v134 = v92;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v135, v93);
  v25 = 2;
  std::unordered_set<Attribute>::unordered_set(&v136, &v25, 1);
  std::string::basic_string[abi:ne200100]<0>(v23, "postogocrelu");
  ZinPEAtoms::OutputReLUAtom::OutputReLUAtom(&v90, v23, v7);
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v137, v90.__r_.__value_.__l.__data_, v90.__r_.__value_.__l.__size_);
  }

  else
  {
    v137 = v90;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v138, v91);
  LODWORD(v88.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v139, &v88, 1);
  std::string::basic_string[abi:ne200100]<0>(v21, "otranspose");
  ZinPEAtoms::OutputTransposeAtom::OutputTransposeAtom(&v88, v21, v7);
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v140, v88.__r_.__value_.__l.__data_, v88.__r_.__value_.__l.__size_);
  }

  else
  {
    v140 = v88;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v141, v89);
  LODWORD(v86.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v142, &v86, 1);
  std::string::basic_string[abi:ne200100]<0>(v19, "oquant");
  ZinPEAtoms::OutputScalarQuantAtom::OutputScalarQuantAtom(&v86, v19, v7);
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v143, v86.__r_.__value_.__l.__data_, v86.__r_.__value_.__l.__size_);
  }

  else
  {
    v143 = v86;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v144, v87);
  LODWORD(v84.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v145, &v84, 1);
  std::string::basic_string[abi:ne200100]<0>(__p, "dma_conv_output");
  ZinCommonAtoms::OutputTypeCastAtom::OutputTypeCastAtom(&v84, __p, v7);
  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v146, v84.__r_.__value_.__l.__data_, v84.__r_.__value_.__l.__size_);
  }

  else
  {
    v146 = v84;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v147, v85);
  LODWORD(v82) = 0;
  std::unordered_set<Attribute>::unordered_set(&v148, &v82, 1);
  memset(v45, 0, sizeof(v45));
  std::vector<ZinLinearPattern::AtomItem>::__init_with_size[abi:ne200100]<ZinLinearPattern::AtomItem const*,ZinLinearPattern::AtomItem const*>(v45, &v110, &v149, 0xDuLL);
  v232[3] = v45;
  v233[3] = 0;
  v83[0] = &unk_1F19CAB88;
  v83[1] = ZinPEPatterns::ElementWise::AnalyzeEW;
  v83[3] = v83;
  ZinManyToOnePattern::ZinManyToOnePattern(v10, v232, v9, 0, v83, 0);
  std::__function::__value_func<BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::~__value_func[abi:ne200100](v83);
  std::__function::__value_func<BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::~__value_func[abi:ne200100](v233);
  v82 = v45;
  std::vector<ZinLinearPattern::AtomItemDesc>::__destroy_vector::operator()[abi:ne200100](&v82);
  v11 = 156;
  do
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v108.__r_.__value_.__r.__words[v11 + 2]);
    std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](&v107[v11 * 8 + 16]);
    if (v107[v11 * 8 + 15] < 0)
    {
      operator delete(v106.__r_.__value_.__r.__words[v11 + 2]);
    }

    v11 -= 12;
  }

  while (v11 * 8);
  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v85);
  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v87);
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v89);
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v91);
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v93);
  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v92.__r_.__value_.__l.__data_);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v95);
  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v97);
  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v96.__r_.__value_.__l.__data_);
  }

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v99);
  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v98.__r_.__value_.__l.__data_);
  }

  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v101);
  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v103);
  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v102.__r_.__value_.__l.__data_);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v105);
  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v104.__r_.__value_.__l.__data_);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v107);
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v109);
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v108.__r_.__value_.__l.__data_);
  }

  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  v110.__r_.__value_.__r.__words[0] = v51;
  std::vector<ZinLinearPattern::AtomItemDesc>::__destroy_vector::operator()[abi:ne200100](&v110);
  for (i = 0; i != -192; i -= 96)
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v156[2].__r_.__value_.__r.__words[i / 8 + 1]);
    std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](&v156[i / 0x18 + 1]);
    if (SHIBYTE(v156[0].__r_.__value_.__r.__words[i / 8 + 2]) < 0)
    {
      operator delete(v156[i / 0x18].__r_.__value_.__l.__data_);
    }
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v150);
  if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v149.__r_.__value_.__l.__data_);
  }

  if (v48 < 0)
  {
    operator delete(v47[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v152);
  if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v151.__r_.__value_.__l.__data_);
  }

  if (v50 < 0)
  {
    operator delete(v49[0]);
  }

  v110.__r_.__value_.__r.__words[0] = v81;
  std::vector<std::vector<ZinLinearPattern::AtomItemDesc>>::__destroy_vector::operator()[abi:ne200100](&v110);
  for (j = 3; j != -3; j -= 3)
  {
    v110.__r_.__value_.__r.__words[0] = &v230[j];
    std::vector<ZinLinearPattern::AtomItemDesc>::__destroy_vector::operator()[abi:ne200100](&v110);
  }

  v14 = 84;
  do
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v170.__r_.__value_.__r.__words[v14 + 2]);
    std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](&v169[v14 * 8 + 16]);
    if (v169[v14 * 8 + 15] < 0)
    {
      operator delete(v168.__r_.__value_.__r.__words[v14 + 2]);
    }

    v14 -= 12;
  }

  while (v14 * 8);
  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v159);
  if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v158.__r_.__value_.__l.__data_);
  }

  if (v53 < 0)
  {
    operator delete(v52[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v161);
  if (SHIBYTE(v160.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v160.__r_.__value_.__l.__data_);
  }

  if (v55 < 0)
  {
    operator delete(v54[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v163);
  if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v162.__r_.__value_.__l.__data_);
  }

  if (v57 < 0)
  {
    operator delete(v56[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v165);
  if (SHIBYTE(v164.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v164.__r_.__value_.__l.__data_);
  }

  if (v59 < 0)
  {
    operator delete(v58[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v167);
  if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v166.__r_.__value_.__l.__data_);
  }

  if (v61 < 0)
  {
    operator delete(v60[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v169);
  if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v168.__r_.__value_.__l.__data_);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v171);
  if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v170.__r_.__value_.__l.__data_);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  v15 = 84;
  do
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&__s.__r_.__value_.__r.__words[v15 + 2]);
    std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](&v205[v15 * 8 + 16]);
    if (v205[v15 * 8 + 15] < 0)
    {
      operator delete(v204.__r_.__value_.__r.__words[v15 + 2]);
    }

    v15 -= 12;
  }

  while (v15 * 8);
  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v195);
  if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v194.__r_.__value_.__l.__data_);
  }

  if (v67 < 0)
  {
    operator delete(v66[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v197);
  if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v196.__r_.__value_.__l.__data_);
  }

  if (v69 < 0)
  {
    operator delete(v68[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v199);
  if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v198.__r_.__value_.__l.__data_);
  }

  if (v72 < 0)
  {
    operator delete(v71[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v201);
  if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v200.__r_.__value_.__l.__data_);
  }

  if (v74 < 0)
  {
    operator delete(v73[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v203);
  if (SHIBYTE(v202.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v202.__r_.__value_.__l.__data_);
  }

  if (v76 < 0)
  {
    operator delete(v75[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v205);
  if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v204.__r_.__value_.__l.__data_);
  }

  if (v78 < 0)
  {
    operator delete(v77[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v207);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (v80 < 0)
  {
    operator delete(v79[0]);
  }

  *v10 = &unk_1F19F0BC8;
  return v10;
}

void sub_1A6942CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x358]);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x390]);
  if (a22 < 0)
  {
    operator delete(a17);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x3C8]);
  if (a28 < 0)
  {
    operator delete(a23);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x400]);
  if (a34 < 0)
  {
    operator delete(a29);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x438]);
  if (a41 < 0)
  {
    operator delete(a36);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x470]);
  if (a47 < 0)
  {
    operator delete(a42);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x4A8]);
  if (a53 < 0)
  {
    operator delete(a48);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x4E0]);
  if (a59 < 0)
  {
    operator delete(a54);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x518]);
  if (a65 < 0)
  {
    operator delete(a60);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x550]);
  if (a67 < 0)
  {
    operator delete(a66);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x588]);
  if (a69 < 0)
  {
    operator delete(a68);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x5C0]);
  if (a71 < 0)
  {
    operator delete(a70);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x5F8]);
  if (a73 < 0)
  {
    operator delete(a72);
  }

  while (v87 != &STACK[0x630])
  {
    v87 -= 12;
    ZinLinearPattern::AtomItemDesc::~AtomItemDesc(v87);
  }

  STACK[0x630] = &a78;
  std::vector<ZinLinearPattern::AtomItemDesc>::__destroy_vector::operator()[abi:ne200100](&STACK[0x630]);
  v88 = -192;
  v89 = v86;
  do
  {
    ZinLinearPattern::AtomItemDesc::~AtomItemDesc(v89);
    v89 = (v90 - 96);
    v88 += 96;
  }

  while (v88);
  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0xB10]);
  if (a75 < 0)
  {
    operator delete(a74);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0xB48]);
  if (a77 < 0)
  {
    operator delete(a76);
  }

  STACK[0x630] = &STACK[0x318];
  std::vector<std::vector<ZinLinearPattern::AtomItemDesc>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x630]);
  v91 = -48;
  v92 = v84;
  do
  {
    STACK[0x630] = v92;
    std::vector<ZinLinearPattern::AtomItemDesc>::__destroy_vector::operator()[abi:ne200100](&STACK[0x630]);
    v92 -= 24;
    v91 += 24;
  }

  while (v91);
  v93 = -672;
  v94 = v85;
  do
  {
    ZinLinearPattern::AtomItemDesc::~AtomItemDesc(v94);
    v94 = (v95 - 96);
    v93 += 96;
  }

  while (v93);
  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0xC48]);
  if (a80 < 0)
  {
    operator delete(a79);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0xC80]);
  if (a82 < 0)
  {
    operator delete(a81);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0xCB8]);
  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(a83);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0xCF0]);
  if (SLOBYTE(STACK[0x21F]) < 0)
  {
    operator delete(STACK[0x208]);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0xD28]);
  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0xD60]);
  if (SLOBYTE(STACK[0x24F]) < 0)
  {
    operator delete(STACK[0x238]);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0xD98]);
  if (SLOBYTE(STACK[0x267]) < 0)
  {
    operator delete(STACK[0x250]);
  }

  v96 = -672;
  v97 = v83;
  do
  {
    ZinLinearPattern::AtomItemDesc::~AtomItemDesc(v97);
    v97 = (v98 - 96);
    v96 += 96;
  }

  while (v96);
  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x1078]);
  if (SLOBYTE(STACK[0x27F]) < 0)
  {
    operator delete(STACK[0x268]);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x10B0]);
  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x10E8]);
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x1120]);
  if (SLOBYTE(STACK[0x2CF]) < 0)
  {
    operator delete(STACK[0x2B8]);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x1158]);
  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
    operator delete(STACK[0x2D0]);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x1190]);
  if (SLOBYTE(STACK[0x2FF]) < 0)
  {
    operator delete(STACK[0x2E8]);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x11C8]);
  if (SLOBYTE(STACK[0x317]) < 0)
  {
    operator delete(STACK[0x300]);
  }

  _Unwind_Resume(a1);
}

void sub_1A694334C()
{
  if (SLOBYTE(STACK[0x887]) < 0)
  {
    operator delete(STACK[0x870]);
  }

  JUMPOUT(0x1A6942F80);
}

void sub_1A694338C()
{
  if (SLOBYTE(STACK[0x827]) < 0)
  {
    operator delete(STACK[0x810]);
  }

  JUMPOUT(0x1A6942F98);
}

void sub_1A69433CC()
{
  if (SLOBYTE(STACK[0x7C7]) < 0)
  {
    operator delete(STACK[0x7B0]);
  }

  JUMPOUT(0x1A6942FB0);
}

void sub_1A694340C()
{
  if (SLOBYTE(STACK[0x767]) < 0)
  {
    operator delete(STACK[0x750]);
  }

  JUMPOUT(0x1A6942FC8);
}

void sub_1A694344C()
{
  if (SLOBYTE(STACK[0x707]) < 0)
  {
    operator delete(STACK[0x6F0]);
  }

  JUMPOUT(0x1A6942FE0);
}

void sub_1A694348C()
{
  if (SLOBYTE(STACK[0x6A7]) < 0)
  {
    operator delete(STACK[0x690]);
  }

  JUMPOUT(0x1A6942FF8);
}

void sub_1A69434D8()
{
  if (SLOBYTE(STACK[0x647]) < 0)
  {
    operator delete(STACK[0x630]);
  }

  JUMPOUT(0x1A6943014);
}

void sub_1A6943528()
{
  if (SLOBYTE(STACK[0xBF7]) < 0)
  {
    operator delete(STACK[0xBE0]);
  }

  JUMPOUT(0x1A694307CLL);
}

void sub_1A6943570()
{
  if (SLOBYTE(STACK[0xB97]) < 0)
  {
    operator delete(STACK[0xB80]);
  }

  JUMPOUT(0x1A6943094);
}

void sub_1A69435CC()
{
  if (*(v0 + 3279) < 0)
  {
    operator delete(STACK[0x1010]);
  }

  JUMPOUT(0x1A694311CLL);
}

void sub_1A6943614()
{
  if (*(v0 + 3183) < 0)
  {
    operator delete(STACK[0xFB0]);
  }

  JUMPOUT(0x1A6943134);
}

void sub_1A694365C()
{
  if (SLOBYTE(STACK[0xF67]) < 0)
  {
    operator delete(STACK[0xF50]);
  }

  JUMPOUT(0x1A694314CLL);
}

void sub_1A69436A4()
{
  if (SLOBYTE(STACK[0xF07]) < 0)
  {
    operator delete(STACK[0xEF0]);
  }

  JUMPOUT(0x1A6943164);
}

void sub_1A69436EC()
{
  if (SLOBYTE(STACK[0xEA7]) < 0)
  {
    operator delete(STACK[0xE90]);
  }

  JUMPOUT(0x1A694317CLL);
}

void sub_1A6943734()
{
  if (SLOBYTE(STACK[0xE47]) < 0)
  {
    operator delete(STACK[0xE30]);
  }

  JUMPOUT(0x1A6943194);
}

void sub_1A6943784()
{
  if (SLOBYTE(STACK[0xDE7]) < 0)
  {
    operator delete(STACK[0xDD0]);
  }

  JUMPOUT(0x1A69431ACLL);
}

void sub_1A69437E4()
{
  if (*(v0 + 599) < 0)
  {
    operator delete(STACK[0x1440]);
  }

  JUMPOUT(0x1A6943200);
}

void sub_1A6943834()
{
  if (*(v0 + 503) < 0)
  {
    operator delete(STACK[0x13E0]);
  }

  JUMPOUT(0x1A694321CLL);
}

void sub_1A6943890()
{
  if (*(v0 + 407) < 0)
  {
    operator delete(STACK[0x1380]);
  }

  JUMPOUT(0x1A6943240);
}

void sub_1A69438E0()
{
  if (*(v0 + 4063) < 0)
  {
    operator delete(STACK[0x1320]);
  }

  JUMPOUT(0x1A694325CLL);
}

void sub_1A6943930()
{
  if (*(v0 + 3967) < 0)
  {
    operator delete(STACK[0x12C0]);
  }

  JUMPOUT(0x1A6943278);
}

void sub_1A6943980()
{
  if (*(v0 + 3871) < 0)
  {
    operator delete(STACK[0x1260]);
  }

  JUMPOUT(0x1A6943294);
}

void sub_1A69439E8()
{
  if (*(v0 + 3775) < 0)
  {
    operator delete(STACK[0x1200]);
  }

  JUMPOUT(0x1A69432B4);
}

uint64_t ZinPEPatterns::ElementWise::AnalyzeEW(uint64_t a1, uint64_t a2, ZinPattern *this)
{
  v49 = *MEMORY[0x1E69E9840];
  matched = ZinPattern::MatchCount(this);
  if (!matched)
  {
    return 0;
  }

  v7 = matched;
  std::string::basic_string[abi:ne200100]<0>(&v18, "dma_conv_input1");
  v48[0] = ZinPattern::HasMatched(this, &v18);
  std::string::basic_string[abi:ne200100]<0>(v45, "prescale1");
  v48[1] = ZinPattern::HasMatched(this, v45);
  std::string::basic_string[abi:ne200100]<0>(v43, "irelu1");
  v48[2] = ZinPattern::HasMatched(this, v43);
  std::string::basic_string[abi:ne200100]<0>(v41, "dequant1");
  v48[3] = ZinPattern::HasMatched(this, v41);
  std::string::basic_string[abi:ne200100]<0>(v39, "dma_conv_input2");
  v48[4] = ZinPattern::HasMatched(this, v39);
  std::string::basic_string[abi:ne200100]<0>(v37, "prescale2");
  v48[5] = ZinPattern::HasMatched(this, v37);
  std::string::basic_string[abi:ne200100]<0>(v35, "irelu2");
  v48[6] = ZinPattern::HasMatched(this, v35);
  std::string::basic_string[abi:ne200100]<0>(v33, "dequant2");
  v48[7] = ZinPattern::HasMatched(this, v33);
  std::string::basic_string[abi:ne200100]<0>(v31, "orelu");
  v48[8] = ZinPattern::HasMatched(this, v31);
  std::string::basic_string[abi:ne200100]<0>(v29, "oquant");
  v48[9] = ZinPattern::HasMatched(this, v29);
  std::string::basic_string[abi:ne200100]<0>(__p, "dma_conv_output");
  v48[10] = ZinPattern::HasMatched(this, __p);
  std::vector<BOOL>::vector(v47, v48, 11);
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  if (v38 < 0)
  {
    operator delete(v37[0]);
  }

  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  if (v42 < 0)
  {
    operator delete(v41[0]);
  }

  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  if (v46 < 0)
  {
    operator delete(v45[0]);
  }

  if (v20 < 0)
  {
    operator delete(v18.n128_u64[0]);
  }

  v18.n128_u64[0] = v47[0];
  v18.n128_u32[2] = 0;
  if (v7 == std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,false>(&v18, v47[1]))
  {
    CanFoldPreScales = 0;
    goto LABEL_47;
  }

  std::string::basic_string[abi:ne200100]<0>(&v18, "scaled_ew");
  SingleMatch = ZinPattern::GetSingleMatch(this, &v18);
  if (v20 < 0)
  {
    operator delete(v18.n128_u64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v45, "dequant2");
  v18.n128_u64[0] = ZinPattern::GetSingleMatch(this, v45);
  v19 = 0;
  v10 = RawOrShared<ZinDeQuantLayer>::unwrap_ptr(&v18);
  RawOrShared<ZinDeQuantLayer>::update_this_if_shared(&v18, v10);
  std::string::basic_string[abi:ne200100]<0>(v43, "irelu2");
  v21.n128_u64[0] = ZinPattern::GetSingleMatch(this, v43);
  v22 = 0;
  v11 = RawOrShared<ZinActivationLayer>::unwrap_ptr(&v21);
  RawOrShared<ZinActivationLayer>::update_this_if_shared(&v21, v11);
  std::string::basic_string[abi:ne200100]<0>(v41, "itranspose2");
  v23.n128_u64[0] = ZinPattern::GetSingleMatch(this, v41);
  v24 = 0;
  v12 = RawOrShared<ZinTransposeLayer>::unwrap_ptr(&v23);
  RawOrShared<ZinTransposeLayer>::update_this_if_shared(&v23, v12);
  std::string::basic_string[abi:ne200100]<0>(v39, "broadcast2");
  v25.n128_u64[0] = ZinPattern::GetSingleMatch(this, v39);
  v26 = 0;
  v13 = RawOrShared<ZinBroadcastLayer>::unwrap_ptr(&v25);
  RawOrShared<ZinBroadcastLayer>::update_this_if_shared(&v25, v13);
  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  if (v42 < 0)
  {
    operator delete(v41[0]);
  }

  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  if (v46 < 0)
  {
    operator delete(v45[0]);
    if (!SingleMatch)
    {
      goto LABEL_40;
    }
  }

  else if (!SingleMatch)
  {
    goto LABEL_40;
  }

  MemoryPools = ZinIrContext::GetMemoryPools(SingleMatch);
  if (MemoryPools[1] - *MemoryPools != 8)
  {
    goto LABEL_45;
  }

LABEL_40:
  if (!ZinPEElementWiseLayer::PreOps::GetLastNonNullLayer(&v18))
  {
    std::string::basic_string[abi:ne200100]<0>(v45, "prescale2");
    v15 = ZinPattern::HasMatched(this, v45);
    v16 = v15;
    if (v46 < 0)
    {
      operator delete(v45[0]);
      if (v16)
      {
        goto LABEL_43;
      }
    }

    else if (v15)
    {
      goto LABEL_43;
    }

LABEL_45:
    CanFoldPreScales = ZinPEPatterns::ElementWise::CanFoldPreScales(a1, this, a2);
    goto LABEL_46;
  }

LABEL_43:
  CanFoldPreScales = 0;
LABEL_46:
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinBroadcastLayer *,std::shared_ptr<ZinBroadcastLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v25);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinTransposeLayer *,std::shared_ptr<ZinTransposeLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v23);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinActivationLayer *,std::shared_ptr<ZinActivationLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v21);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinDeQuantLayer *,std::shared_ptr<ZinDeQuantLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v18);
LABEL_47:
  if (v47[0])
  {
    operator delete(v47[0]);
  }

  return CanFoldPreScales;
}

void sub_1A6943F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (*(v59 - 113) < 0)
  {
    operator delete(*(v59 - 136));
  }

  ZinPEElementWiseLayer::PreOps::~PreOps(&a9);
  v61 = *(v59 - 112);
  if (v61)
  {
    operator delete(v61);
  }

  _Unwind_Resume(a1);
}

std::string::value_type *ZinPEPatterns::ElementWise::ConvertCoreToSEW(uint64_t a1, uint64_t a2, std::string::value_type *a3, uint64_t a4, ZinIrKernel **a5, ZinGOCLayer *a6, ZinGOCLayer *a7)
{
  updated = a3;
  *&v85 = *MEMORY[0x1E69E9840];
  memset(v81, 0, sizeof(v81));
  v14 = a3;
  if (a3)
  {
    goto LABEL_4;
  }

  if (*a4 != *(a4 + 8))
  {
    v14 = **a4;
LABEL_4:
    (*(*a2 + 16))(&v77, a2, 1);
    v17 = *(v14 + 48);
    v16 = v14 + 48;
    v15 = v17;
    v18 = *(v16 + 23);
    if (v18 >= 0)
    {
      v19 = v16;
    }

    else
    {
      v19 = v15;
    }

    if (v18 >= 0)
    {
      v20 = *(v16 + 23);
    }

    else
    {
      v20 = *(v16 + 8);
    }

    v21 = std::string::insert(&v77, 0, v19, v20);
    v22 = *&v21->__r_.__value_.__l.__data_;
    v78.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&v78.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    v23 = std::string::append(&v78, "_", 1uLL);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v82.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v82.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v75, "convert_sew");
    v25 = std::string::append(&v75, "_xfm", 4uLL);
    v26 = *&v25->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v29 = std::string::append(&v82, p_p, size);
    v30 = *&v29->__r_.__value_.__l.__data_;
    v80 = v29->__r_.__value_.__r.__words[2];
    v79 = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v75.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v82.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v78.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v77.__r_.__value_.__l.__data_);
      if (updated)
      {
        goto LABEL_26;
      }
    }

    else if (updated)
    {
LABEL_26:
      MemoryPools = ZinIrContext::GetMemoryPools(updated);
      v32 = *MemoryPools;
      v33 = MemoryPools[1];
      while (v32 != v33)
      {
        (*(**v32 + 88))(&v82);
        std::vector<ZinIrTensorInfo>::push_back[abi:ne200100](v81, &v82);
        if (v83)
        {
          v84 = v83;
          operator delete(v83);
        }

        v32 += 8;
      }

      if (*(*(updated + 11) + 8) == 5)
      {
        ZinPEPatterns::ElementWise::ToScaledElementWise(&v79, updated);
      }

      if (a5 || a6 || a7)
      {
        (*(*a2 + 16))(&v77, a2, 1);
        v36 = updated[71];
        if (v36 >= 0)
        {
          v37 = updated + 48;
        }

        else
        {
          v37 = *(updated + 6);
        }

        if (v36 >= 0)
        {
          v38 = updated[71];
        }

        else
        {
          v38 = *(updated + 7);
        }

        v39 = std::string::insert(&v77, 0, v37, v38);
        v40 = *&v39->__r_.__value_.__l.__data_;
        v78.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
        *&v78.__r_.__value_.__l.__data_ = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        v41 = std::string::append(&v78, "_updated_scaled_ew", 0x12uLL);
        v42 = *&v41->__r_.__value_.__l.__data_;
        v82.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
        *&v82.__r_.__value_.__l.__data_ = v42;
        v41->__r_.__value_.__l.__size_ = 0;
        v41->__r_.__value_.__r.__words[2] = 0;
        v41->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v78.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v77.__r_.__value_.__l.__data_);
        }

        updated = ZinPEPatterns::ElementWise::UpdateScaledElementWise(&v82, updated, a5, a6, a7, v81);
        if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v82.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v80) < 0)
      {
        v43 = v79;
LABEL_105:
        operator delete(v43);
        goto LABEL_106;
      }

      goto LABEL_106;
    }

    v34 = ZinIrContext::GetMemoryPools(*(*(a4 + 8) - 8));
    if (v34[1] != *v34)
    {
      (*(***v34 + 88))(&v82);
      std::vector<ZinIrTensorInfo>::__assign_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(v81, &v82, &v85, 1uLL);
      if (v83)
      {
        v84 = v83;
        operator delete(v83);
      }

      v35 = ZinMergeGOCSequence(a1, a2, a4);
      ZinPEPatterns::ElementWise::ToScaledElementWise(&v79, v35);
    }

    std::vector<std::vector<ZinPerfUtil::TaskStats>>::__throw_out_of_range[abi:ne200100]();
  }

  v79 = 0uLL;
  v80 = 0;
  if (a5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<__CFNumber const*>>(&v79, 1uLL);
  }

  v44 = 0;
  if (a6)
  {
    v45 = -v79 >> 3;
    if ((v45 + 1) >> 61)
    {
      goto LABEL_108;
    }

    v46 = (v80 - v79) >> 2;
    if (v46 <= v45 + 1)
    {
      v46 = v45 + 1;
    }

    if (v80 - v79 >= 0x7FFFFFFFFFFFFFF8)
    {
      v47 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v47 = v46;
    }

    if (v47)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<__CFNumber const*>>(&v79, v47);
    }

    *(8 * v45) = a6;
    v44 = (8 * v45 + 8);
    v48 = (8 * v45 - (*(&v79 + 1) - v79));
    memcpy(v48, v79, *(&v79 + 1) - v79);
    v49 = v79;
    *&v79 = v48;
    *(&v79 + 1) = v44;
    v80 = 0;
    if (v49)
    {
      operator delete(v49);
    }

    *(&v79 + 1) = v44;
  }

  if (!a7)
  {
    goto LABEL_83;
  }

  if (v44 >= v80)
  {
    v51 = (v44 - v79) >> 3;
    if (!((v51 + 1) >> 61))
    {
      v52 = (v80 - v79) >> 2;
      if (v52 <= v51 + 1)
      {
        v52 = v51 + 1;
      }

      if (v80 - v79 >= 0x7FFFFFFFFFFFFFF8)
      {
        v53 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v53 = v52;
      }

      if (v53)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<__CFNumber const*>>(&v79, v53);
      }

      *(8 * v51) = a7;
      v50 = 8 * v51 + 8;
      memcpy((8 * v51 - (*(&v79 + 1) - v79)), v79, *(&v79 + 1) - v79);
      v54 = v79;
      *&v79 = 8 * v51 - (*(&v79 + 1) - v79);
      *(&v79 + 1) = v50;
      v80 = 0;
      if (v54)
      {
        operator delete(v54);
      }

      goto LABEL_82;
    }

LABEL_108:
    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  *v44 = a7;
  v50 = (v44 + 1);
LABEL_82:
  *(&v79 + 1) = v50;
LABEL_83:
  v55 = ZinMergeGOCSequence(a1, a2, &v79);
  if (v55)
  {
    v82.__r_.__value_.__r.__words[0] = 0;
    v82.__r_.__value_.__l.__size_ = a6;
    memset(&v78, 0, sizeof(v78));
    std::vector<__CFNumber const*>::__init_with_size[abi:ne200100]<__CFNumber const* const*,__CFNumber const* const*>(&v78, &v82, &v82.__r_.__value_.__r.__words[2], 2uLL);
    v57 = v78.__r_.__value_.__l.__size_;
    for (i = v78.__r_.__value_.__r.__words[0]; i != v57; i += 8)
    {
      if (*i)
      {
        (*(**i + 88))(&v82);
        std::vector<ZinIrTensorInfo>::push_back[abi:ne200100](v81, &v82);
        if (v83)
        {
          v84 = v83;
          operator delete(v83);
        }
      }
    }

    (*(*a2 + 16))(&v75, a2, 1);
    v58 = *(v55 + 71);
    if (v58 >= 0)
    {
      v59 = (v55 + 48);
    }

    else
    {
      v59 = *(v55 + 48);
    }

    if (v58 >= 0)
    {
      v60 = *(v55 + 71);
    }

    else
    {
      v60 = *(v55 + 56);
    }

    v61 = std::string::insert(&v75, 0, v59, v60);
    v62 = *&v61->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v61->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v62;
    v61->__r_.__value_.__l.__size_ = 0;
    v61->__r_.__value_.__r.__words[2] = 0;
    v61->__r_.__value_.__r.__words[0] = 0;
    v63 = std::string::append(&__p, "_", 1uLL);
    v64 = *&v63->__r_.__value_.__l.__data_;
    v77.__r_.__value_.__r.__words[2] = v63->__r_.__value_.__r.__words[2];
    *&v77.__r_.__value_.__l.__data_ = v64;
    v63->__r_.__value_.__l.__size_ = 0;
    v63->__r_.__value_.__r.__words[2] = 0;
    v63->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v72, "convert_sew");
    v65 = std::string::append(&v72, "_xfm", 4uLL);
    v66 = *&v65->__r_.__value_.__l.__data_;
    v74 = v65->__r_.__value_.__r.__words[2];
    *v73 = v66;
    v65->__r_.__value_.__l.__size_ = 0;
    v65->__r_.__value_.__r.__words[2] = 0;
    v65->__r_.__value_.__r.__words[0] = 0;
    if (v74 >= 0)
    {
      v67 = v73;
    }

    else
    {
      v67 = v73[0];
    }

    if (v74 >= 0)
    {
      v68 = HIBYTE(v74);
    }

    else
    {
      v68 = v73[1];
    }

    v69 = std::string::append(&v77, v67, v68);
    v70 = *&v69->__r_.__value_.__l.__data_;
    v82.__r_.__value_.__r.__words[2] = v69->__r_.__value_.__r.__words[2];
    *&v82.__r_.__value_.__l.__data_ = v70;
    v69->__r_.__value_.__l.__size_ = 0;
    v69->__r_.__value_.__r.__words[2] = 0;
    v69->__r_.__value_.__r.__words[0] = 0;
    ZinPEPatterns::ElementWise::ToScaledElementWise(&v82, v55);
  }

  updated = 0;
  v43 = v79;
  if (v79)
  {
    *(&v79 + 1) = v79;
    goto LABEL_105;
  }

LABEL_106:
  v82.__r_.__value_.__r.__words[0] = v81;
  std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100](&v82);
  return updated;
}

void sub_1A6944A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, char *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a57 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a42)
  {
    operator delete(a42);
  }

  if (a46)
  {
    operator delete(a46);
  }

  __p = &a49;
  std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void ZinPEPatterns::ElementWise::ToScaledElementWise(__int128 *a1, ZinGOCLayer *this)
{
  v3 = 0.0;
  v4 = 1.0;
  ZinGOCLayer::UnshiftSingularScale(this, &v4);
  ZinGOCLayer::UnshiftSingularBias(this, &v3);
  operator new();
}

void sub_1A6944DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MEMORY[0x1AC55A070](v11, 0x10B3C408C0C1E9CLL, a3, a4, a5, a6, a7, a8);
  if (a11)
  {
    (*(*a11 + 16))(a11);
  }

  _Unwind_Resume(a1);
}

void ZinPEPatterns::ElementWise::ToScaledElementWise(__int128 *a1, void *a2)
{
  v2 = *(a2[11] + 12);
  if (v2 > 3)
  {
    if (v2 == 4 || v2 == 7 || v2 == 8)
    {
LABEL_9:
      operator new();
    }
  }

  else if (v2 == 1 || v2 == 2 || v2 == 3)
  {
    goto LABEL_9;
  }

  ZinAssertImpl("Unknown ElementWise opcode mapped to ScaledEW");
}

void sub_1A694503C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  MEMORY[0x1AC55A070](v12, 0x10B3C408C0C1E9CLL, a3, a4, a5, a6, a7, a8);
  if (a12)
  {
    (*(*a12 + 16))(a12);
  }

  _Unwind_Resume(a1);
}

void *ZinPEPatterns::ElementWise::UpdateScaledElementWise(__int128 *a1, ZinOpLayerUtils *a2, ZinIrKernel **this, ZinGOCLayer *a4, ZinGOCLayer *a5, BOOL *a6)
{
  v10 = 0;
  if (ZinPEPatterns::ElementWise::GenerateUpdatedScaleEWInfo(a2, this, a4, a5, &v10, a6))
  {
    v7 = *((*(*a2 + 48))(a2, 0) + 8);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  v8 = v10;
  v10 = 0;
  if (v8)
  {
    (*(*v8 + 16))(v8);
  }

  return 0;
}

void sub_1A694526C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  MEMORY[0x1AC55A070](v13, 0x10B3C408C0C1E9CLL, a3, a4, a5, a6, a7, a8);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (a12)
  {
    (*(*a12 + 16))(a12);
  }

  _Unwind_Resume(a1);
}

void ZinPEPatterns::ElementWise::GetPreScaleEffects(ZinIrKernel **this, const ZinGOCLayer *a2, const ZinGOCLayer *a3, float *a4, BOOL *a5, BOOL *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a3 = 1065353216;
  if (!this)
  {
LABEL_4:
    if (!a2)
    {
      return;
    }

    goto LABEL_9;
  }

  if (ZinOpLayerUtils::IsNegateGOC(this, a2))
  {
    *a4 = 1;
    goto LABEL_4;
  }

  HasScale = ZinIrKernel::HasScale(this[20]);
  SingularVal = 1.0;
  if (HasScale)
  {
    SingularVal = ZinIrVector::GetSingularVal(*(this[20] + 82));
  }

  *a3 = SingularVal;
  if (a2)
  {
LABEL_9:
    if (ZinOpLayerUtils::IsNegateGOC(a2, a2))
    {
      *a5 = 1;
    }
  }
}

uint64_t ZinPEPatterns::ElementWise::GenerateUpdatedScaleEWInfo(ZinOpLayerUtils *PreScaleEffects, ZinIrKernel **this, ZinGOCLayer *a3, ZinGOCLayer *a4, uint64_t *a5, BOOL *a6)
{
  v8 = *(PreScaleEffects + 11);
  *v17 = 0;
  v15 = 1.0;
  v16 = 1.0;
  if (a4)
  {
    ZinGOCLayer::UnshiftSingularScale(a4, &v15);
  }

  if (*(v8 + 12))
  {
    ZinPEPatterns::ElementWise::GetPreScaleEffects(this, a3, &v16, &v17[1], v17, a6);
    v9 = *(v8 + 16) * v16;
    v10 = *(v8 + 20) * v15;
  }

  else
  {
    v13 = 1.0;
    v14 = 1.0;
    if (this)
    {
      ZinGOCLayer::UnshiftSingularScale(this, &v14);
    }

    if (a3)
    {
      ZinGOCLayer::UnshiftSingularScale(a3, &v13);
      v11 = v13;
    }

    else
    {
      v11 = 1.0;
    }

    v9 = (*(v8 + 16) * v14) / v11;
    v10 = (v11 * *(v8 + 20)) * v15;
  }

  if (!ZinF16OutOfBounds(v9) && !ZinF16OutOfBounds(v10))
  {
    operator new();
  }

  return 0;
}

void *ZinPEPatterns::ElementWiseMirror::ElementWiseMirror(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v3;
  v198[4] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(v69, "dequant2");
  ZinPEAtoms::InputDeQuantAtom::InputDeQuantAtom(&__s, v69, v7);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v179, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v179 = __s;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v180, v178);
  LODWORD(v98.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v181, &v98, 1);
  std::string::basic_string[abi:ne200100]<0>(v67, "irelu2");
  ZinPEAtoms::InputReLUAtom::InputReLUAtom(&v175, v67, v7);
  if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v182, v175.__r_.__value_.__l.__data_, v175.__r_.__value_.__l.__size_);
  }

  else
  {
    v182 = v175;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v183, v176);
  LODWORD(v98.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v184, &v98, 1);
  std::string::basic_string[abi:ne200100]<0>(v65, "prescale2");
  ZinPEAtoms::PreScaleSrc2Atom::PreScaleSrc2Atom(&v173, v65, v7);
  if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v185, v173.__r_.__value_.__l.__data_, v173.__r_.__value_.__l.__size_);
  }

  else
  {
    v185 = v173;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v186, v174);
  LODWORD(v98.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v187, &v98, 1);
  std::string::basic_string[abi:ne200100]<0>(v63, "itranspose2");
  ZinPEAtoms::InputTransposeAtom::InputTransposeAtom(&v171, v63, v7);
  if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v188, v171.__r_.__value_.__l.__data_, v171.__r_.__value_.__l.__size_);
  }

  else
  {
    v188 = v171;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v189, v172);
  LODWORD(v98.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v190, &v98, 1);
  std::string::basic_string[abi:ne200100]<0>(v61, "broadcast2");
  ZinCommonAtoms::BroadcastAtom::BroadcastAtom(&v169, v61, v7);
  if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v191, v169.__r_.__value_.__l.__data_, v169.__r_.__value_.__l.__size_);
  }

  else
  {
    v191 = v169;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v192, v170);
  LODWORD(v98.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v193, &v98, 1);
  memset(v195, 0, sizeof(v195));
  std::vector<ZinLinearPattern::AtomItem>::__init_with_size[abi:ne200100]<ZinLinearPattern::AtomItem const*,ZinLinearPattern::AtomItem const*>(v195, &v179, &v194, 5uLL);
  std::string::basic_string[abi:ne200100]<0>(v59, "dequant1");
  ZinPEAtoms::InputDeQuantAtom::InputDeQuantAtom(&v151, v59, v7);
  if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v153, v151.__r_.__value_.__l.__data_, v151.__r_.__value_.__l.__size_);
  }

  else
  {
    v153 = v151;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v154, v152);
  LODWORD(v98.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v155, &v98, 1);
  std::string::basic_string[abi:ne200100]<0>(v57, "irelu1");
  ZinPEAtoms::InputReLUAtom::InputReLUAtom(&v149, v57, v7);
  if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v156, v149.__r_.__value_.__l.__data_, v149.__r_.__value_.__l.__size_);
  }

  else
  {
    v156 = v149;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v157, v150);
  LODWORD(v98.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v158, &v98, 1);
  std::string::basic_string[abi:ne200100]<0>(v55, "prescale1");
  ZinPEAtoms::PreScaleSrc1Atom::PreScaleSrc1Atom(&v147, v55, v7);
  if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v159, v147.__r_.__value_.__l.__data_, v147.__r_.__value_.__l.__size_);
  }

  else
  {
    v159 = v147;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v160, v148);
  v54 = 2;
  std::unordered_set<Attribute>::unordered_set(&v161, &v54, 1);
  std::string::basic_string[abi:ne200100]<0>(v52, "itranspose1");
  ZinPEAtoms::InputTransposeAtom::InputTransposeAtom(&v145, v52, v7);
  if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v162, v145.__r_.__value_.__l.__data_, v145.__r_.__value_.__l.__size_);
  }

  else
  {
    v162 = v145;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v163, v146);
  LODWORD(v98.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v164, &v98, 1);
  std::string::basic_string[abi:ne200100]<0>(v50, "broadcast1");
  ZinCommonAtoms::BroadcastAtom::BroadcastAtom(&v143, v50, v7);
  if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v165, v143.__r_.__value_.__l.__data_, v143.__r_.__value_.__l.__size_);
  }

  else
  {
    v165 = v143;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v166, v144);
  LODWORD(v98.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v167, &v98, 1);
  memset(v196, 0, sizeof(v196));
  std::vector<ZinLinearPattern::AtomItem>::__init_with_size[abi:ne200100]<ZinLinearPattern::AtomItem const*,ZinLinearPattern::AtomItem const*>(v196, &v153, &v168, 5uLL);
  memset(v71, 0, sizeof(v71));
  std::vector<std::vector<ZinLinearPattern::AtomItem>>::__init_with_size[abi:ne200100]<std::vector<ZinLinearPattern::AtomItem> const*,std::vector<ZinLinearPattern::AtomItem> const*>(v71, v195, v197, 2uLL);
  v197[0] = v71;
  v197[1] = v5;
  std::string::basic_string[abi:ne200100]<0>(v47, "scaled_ew");
  ZinPEAtoms::CommutativeScaledEWAtom::CommutativeScaledEWAtom(&v136, v47, v7);
  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v138, v136.__r_.__value_.__l.__data_, v136.__r_.__value_.__l.__size_);
  }

  else
  {
    v138 = v136;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v139, v137);
  LODWORD(v98.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v140, &v98, 1);
  std::string::basic_string[abi:ne200100]<0>(v45, "goc");
  ZinPEAtoms::PEEWGOCAtom::PEEWGOCAtom(&v134, v45, v7);
  if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v141, v134.__r_.__value_.__l.__data_, v134.__r_.__value_.__l.__size_);
  }

  else
  {
    v141[0] = v134;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v141[1], v135);
  v44 = 2;
  std::unordered_set<Attribute>::unordered_set(&v141[2].__r_.__value_.__l.__size_, &v44, 1);
  memset(v49, 0, sizeof(v49));
  std::vector<ZinLinearPattern::AtomItem>::__init_with_size[abi:ne200100]<ZinLinearPattern::AtomItem const*,ZinLinearPattern::AtomItem const*>(v49, &v138, &v142, 2uLL);
  v197[2] = v49;
  std::string::basic_string[abi:ne200100]<0>(v41, "postscale");
  ZinPEAtoms::PostScaleAtom::PostScaleAtom(&v96, v41, v7);
  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v98, v96.__r_.__value_.__l.__data_, v96.__r_.__value_.__l.__size_);
  }

  else
  {
    v98 = v96;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v99, v97);
  v40 = 2;
  std::unordered_set<Attribute>::unordered_set(&v100, &v40, 1);
  std::string::basic_string[abi:ne200100]<0>(v38, "abs_or_zero_compare");
  ZinPEAtoms::AbsOrZeroCompareAtom::AbsOrZeroCompareAtom(&v94, v38, v7);
  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v101, v94.__r_.__value_.__l.__data_, v94.__r_.__value_.__l.__size_);
  }

  else
  {
    v101 = v94;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v102, v95);
  LODWORD(v92.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v103, &v92, 1);
  std::string::basic_string[abi:ne200100]<0>(v36, "reduction");
  ZinPEAtoms::ReductionAtom::ReductionAtom(&v92, v36, v7);
  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v104, v92.__r_.__value_.__l.__data_, v92.__r_.__value_.__l.__size_);
  }

  else
  {
    v104 = v92;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v105, v93);
  LODWORD(v90.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v106, &v90, 1);
  std::string::basic_string[abi:ne200100]<0>(v34, "final_scale");
  ZinPEAtoms::ReductionFinalScaleAtom::ReductionFinalScaleAtom(&v90, v34, v7);
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v107, v90.__r_.__value_.__l.__data_, v90.__r_.__value_.__l.__size_);
  }

  else
  {
    v107 = v90;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v108, v91);
  LODWORD(v88.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v109, &v88, 1);
  std::string::basic_string[abi:ne200100]<0>(v32, "epsilon");
  ZinPEAtoms::ReductionEpsilonAtom::ReductionEpsilonAtom(&v88, v32, v7);
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v110, v88.__r_.__value_.__l.__data_, v88.__r_.__value_.__l.__size_);
  }

  else
  {
    v110 = v88;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v111, v89);
  LODWORD(v86.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v112, &v86, 1);
  std::string::basic_string[abi:ne200100]<0>(v30, "post_process");
  ZinPEAtoms::ReductionPostProcessAtom::ReductionPostProcessAtom(&v86, v30, v7);
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v113, v86.__r_.__value_.__l.__data_, v86.__r_.__value_.__l.__size_);
  }

  else
  {
    v113 = v86;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v114, v87);
  LODWORD(v84.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v115, &v84, 1);
  std::string::basic_string[abi:ne200100]<0>(v28, "orelu");
  ZinPEAtoms::OutputReLUAtom::OutputReLUAtom(&v84, v28, v7);
  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v116, v84.__r_.__value_.__l.__data_, v84.__r_.__value_.__l.__size_);
  }

  else
  {
    v116 = v84;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v117, v85);
  LODWORD(v82.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v118, &v82, 1);
  std::string::basic_string[abi:ne200100]<0>(v26, "abs_or_zero_compare_after_reduction");
  ZinPEAtoms::OutputAbsOrZeroCompareAtom::OutputAbsOrZeroCompareAtom(&v82, v26, v7);
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v119, v82.__r_.__value_.__l.__data_, v82.__r_.__value_.__l.__size_);
  }

  else
  {
    v119 = v82;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v120, v83);
  LODWORD(v80.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v121, &v80, 1);
  std::string::basic_string[abi:ne200100]<0>(v24, "ogoc");
  ZinPEAtoms::OutputGOCAtom::OutputGOCAtom(&v80, v24, v7);
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v122, v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_);
  }

  else
  {
    v122 = v80;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v123, v81);
  v23 = 2;
  std::unordered_set<Attribute>::unordered_set(&v124, &v23, 1);
  std::string::basic_string[abi:ne200100]<0>(v21, "postogocrelu");
  ZinPEAtoms::OutputReLUAtom::OutputReLUAtom(&v78, v21, v7);
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v125, v78.__r_.__value_.__l.__data_, v78.__r_.__value_.__l.__size_);
  }

  else
  {
    v125 = v78;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v126, v79);
  LODWORD(v76.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v127, &v76, 1);
  std::string::basic_string[abi:ne200100]<0>(v19, "otranspose");
  ZinPEAtoms::OutputTransposeAtom::OutputTransposeAtom(&v76, v19, v7);
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v128, v76.__r_.__value_.__l.__data_, v76.__r_.__value_.__l.__size_);
  }

  else
  {
    v128 = v76;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v129, v77);
  LODWORD(v74.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v130, &v74, 1);
  std::string::basic_string[abi:ne200100]<0>(__p, "oquant");
  ZinPEAtoms::OutputScalarQuantAtom::OutputScalarQuantAtom(&v74, __p, v7);
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v131, v74.__r_.__value_.__l.__data_, v74.__r_.__value_.__l.__size_);
  }

  else
  {
    v131 = v74;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v132, v75);
  LODWORD(v72) = 0;
  std::unordered_set<Attribute>::unordered_set(&v133, &v72, 1);
  memset(v43, 0, sizeof(v43));
  std::vector<ZinLinearPattern::AtomItem>::__init_with_size[abi:ne200100]<ZinLinearPattern::AtomItem const*,ZinLinearPattern::AtomItem const*>(v43, &v98, &v134, 0xCuLL);
  v197[3] = v43;
  v198[3] = 0;
  v73[0] = &unk_1F19CAB88;
  v73[1] = ZinPEPatterns::ElementWise::AnalyzeEW;
  v73[3] = v73;
  ZinManyToOnePattern::ZinManyToOnePattern(v10, v197, v9, 0, v73, 0);
  std::__function::__value_func<BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::~__value_func[abi:ne200100](v73);
  std::__function::__value_func<BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::~__value_func[abi:ne200100](v198);
  v72 = v43;
  std::vector<ZinLinearPattern::AtomItemDesc>::__destroy_vector::operator()[abi:ne200100](&v72);
  v11 = 144;
  do
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v96.__r_.__value_.__r.__words[v11 + 2]);
    std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](&v95[v11 * 8 + 16]);
    if (v95[v11 * 8 + 15] < 0)
    {
      operator delete(v94.__r_.__value_.__r.__words[v11 + 2]);
    }

    v11 -= 12;
  }

  while (v11 * 8);
  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v75);
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v77);
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v79);
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v81);
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v83);
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v85);
  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v87);
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v89);
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v91);
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v93);
  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v92.__r_.__value_.__l.__data_);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v95);
  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v97);
  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v96.__r_.__value_.__l.__data_);
  }

  if (v42 < 0)
  {
    operator delete(v41[0]);
  }

  v98.__r_.__value_.__r.__words[0] = v49;
  std::vector<ZinLinearPattern::AtomItemDesc>::__destroy_vector::operator()[abi:ne200100](&v98);
  for (i = 0; i != -192; i -= 96)
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v141[2].__r_.__value_.__r.__words[i / 8 + 1]);
    std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](&v141[i / 0x18 + 1]);
    if (SHIBYTE(v141[0].__r_.__value_.__r.__words[i / 8 + 2]) < 0)
    {
      operator delete(v141[i / 0x18].__r_.__value_.__l.__data_);
    }
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v135);
  if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v134.__r_.__value_.__l.__data_);
  }

  if (v46 < 0)
  {
    operator delete(v45[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v137);
  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v136.__r_.__value_.__l.__data_);
  }

  if (v48 < 0)
  {
    operator delete(v47[0]);
  }

  v98.__r_.__value_.__r.__words[0] = v71;
  std::vector<std::vector<ZinLinearPattern::AtomItemDesc>>::__destroy_vector::operator()[abi:ne200100](&v98);
  for (j = 3; j != -3; j -= 3)
  {
    v98.__r_.__value_.__r.__words[0] = &v195[j];
    std::vector<ZinLinearPattern::AtomItemDesc>::__destroy_vector::operator()[abi:ne200100](&v98);
  }

  v14 = 60;
  do
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v151.__r_.__value_.__r.__words[v14 + 2]);
    std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](&v150[v14 * 8 + 16]);
    if (v150[v14 * 8 + 15] < 0)
    {
      operator delete(v149.__r_.__value_.__r.__words[v14 + 2]);
    }

    v14 -= 12;
  }

  while (v14 * 8);
  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v144);
  if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v143.__r_.__value_.__l.__data_);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v146);
  if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v145.__r_.__value_.__l.__data_);
  }

  if (v53 < 0)
  {
    operator delete(v52[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v148);
  if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v147.__r_.__value_.__l.__data_);
  }

  if (v56 < 0)
  {
    operator delete(v55[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v150);
  if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v149.__r_.__value_.__l.__data_);
  }

  if (v58 < 0)
  {
    operator delete(v57[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v152);
  if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v151.__r_.__value_.__l.__data_);
  }

  if (v60 < 0)
  {
    operator delete(v59[0]);
  }

  v15 = 60;
  do
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&__s.__r_.__value_.__r.__words[v15 + 2]);
    std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](&v176[v15 * 8 + 16]);
    if (v176[v15 * 8 + 15] < 0)
    {
      operator delete(v175.__r_.__value_.__r.__words[v15 + 2]);
    }

    v15 -= 12;
  }

  while (v15 * 8);
  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v170);
  if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v169.__r_.__value_.__l.__data_);
  }

  if (v62 < 0)
  {
    operator delete(v61[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v172);
  if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v171.__r_.__value_.__l.__data_);
  }

  if (v64 < 0)
  {
    operator delete(v63[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v174);
  if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v173.__r_.__value_.__l.__data_);
  }

  if (v66 < 0)
  {
    operator delete(v65[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v176);
  if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v175.__r_.__value_.__l.__data_);
  }

  if (v68 < 0)
  {
    operator delete(v67[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v178);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (v70 < 0)
  {
    operator delete(v69[0]);
  }

  *v10 = &unk_1F19F0C20;
  return v10;
}

void sub_1A6946820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x2D0]);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x308]);
  if (a20 < 0)
  {
    operator delete(a15);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x340]);
  if (a26 < 0)
  {
    operator delete(a21);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x378]);
  if (a33 < 0)
  {
    operator delete(a28);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x3B0]);
  if (a39 < 0)
  {
    operator delete(a34);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x3E8]);
  if (a45 < 0)
  {
    operator delete(a40);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x420]);
  if (a51 < 0)
  {
    operator delete(a46);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x458]);
  if (a57 < 0)
  {
    operator delete(a52);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x490]);
  if (a63 < 0)
  {
    operator delete(a58);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x4C8]);
  if (a65 < 0)
  {
    operator delete(a64);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x500]);
  if (a67 < 0)
  {
    operator delete(a66);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x538]);
  if (a69 < 0)
  {
    operator delete(a68);
  }

  while (v86 != &STACK[0x570])
  {
    v86 -= 12;
    ZinLinearPattern::AtomItemDesc::~AtomItemDesc(v86);
  }

  STACK[0x570] = &a74;
  std::vector<ZinLinearPattern::AtomItemDesc>::__destroy_vector::operator()[abi:ne200100](&STACK[0x570]);
  v88 = -192;
  v89 = v85;
  do
  {
    ZinLinearPattern::AtomItemDesc::~AtomItemDesc(v89);
    v89 = (v90 - 96);
    v88 += 96;
  }

  while (v88);
  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0x9F0]);
  if (a71 < 0)
  {
    operator delete(a70);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0xA28]);
  if (a73 < 0)
  {
    operator delete(a72);
  }

  STACK[0x570] = &STACK[0x290];
  std::vector<std::vector<ZinLinearPattern::AtomItemDesc>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x570]);
  v91 = -48;
  v92 = v83;
  do
  {
    STACK[0x570] = v92;
    std::vector<ZinLinearPattern::AtomItemDesc>::__destroy_vector::operator()[abi:ne200100](&STACK[0x570]);
    v92 -= 24;
    v91 += 24;
  }

  while (v91);
  v93 = -480;
  v94 = v84;
  do
  {
    ZinLinearPattern::AtomItemDesc::~AtomItemDesc(v94);
    v94 = (v95 - 96);
    v93 += 96;
  }

  while (v93);
  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0xB28]);
  if (a76 < 0)
  {
    operator delete(a75);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0xB60]);
  if (a78 < 0)
  {
    operator delete(a77);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0xB98]);
  if (a80 < 0)
  {
    operator delete(a79);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0xBD0]);
  if (a82 < 0)
  {
    operator delete(a81);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0xC08]);
  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  v96 = -480;
  v97 = v82;
  do
  {
    ZinLinearPattern::AtomItemDesc::~AtomItemDesc(v97);
    v97 = (v98 - 96);
    v96 += 96;
  }

  while (v96);
  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0xE28]);
  if (SLOBYTE(STACK[0x22F]) < 0)
  {
    operator delete(STACK[0x218]);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0xE60]);
  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0xE98]);
  if (SLOBYTE(STACK[0x25F]) < 0)
  {
    operator delete(STACK[0x248]);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0xED0]);
  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  ZinPatternAtomDesc::~ZinPatternAtomDesc(&STACK[0xF08]);
  if (SLOBYTE(STACK[0x28F]) < 0)
  {
    operator delete(STACK[0x278]);
  }

  _Unwind_Resume(a1);
}

void sub_1A6946E20()
{
  if (SLOBYTE(STACK[0x767]) < 0)
  {
    operator delete(STACK[0x750]);
  }

  JUMPOUT(0x1A6946AE8);
}

void sub_1A6946E60()
{
  if (SLOBYTE(STACK[0x707]) < 0)
  {
    operator delete(STACK[0x6F0]);
  }

  JUMPOUT(0x1A6946B00);
}

void sub_1A6946EA0()
{
  if (SLOBYTE(STACK[0x6A7]) < 0)
  {
    operator delete(STACK[0x690]);
  }

  JUMPOUT(0x1A6946B18);
}

void sub_1A6946EE0()
{
  if (SLOBYTE(STACK[0x647]) < 0)
  {
    operator delete(STACK[0x630]);
  }

  JUMPOUT(0x1A6946B30);
}

void sub_1A6946F20()
{
  if (SLOBYTE(STACK[0x5E7]) < 0)
  {
    operator delete(STACK[0x5D0]);
  }

  JUMPOUT(0x1A6946B48);
}

void sub_1A6946F6C()
{
  if (SLOBYTE(STACK[0x587]) < 0)
  {
    operator delete(STACK[0x570]);
  }

  JUMPOUT(0x1A6946B64);
}

void sub_1A6946FBC()
{
  if (SLOBYTE(STACK[0xAD7]) < 0)
  {
    operator delete(STACK[0xAC0]);
  }

  JUMPOUT(0x1A6946BCCLL);
}

void sub_1A6947004()
{
  if (SLOBYTE(STACK[0xA77]) < 0)
  {
    operator delete(STACK[0xA60]);
  }

  JUMPOUT(0x1A6946BE4);
}

void sub_1A6947060()
{
  if (SLOBYTE(STACK[0xDD7]) < 0)
  {
    operator delete(STACK[0xDC0]);
  }

  JUMPOUT(0x1A6946C70);
}

void sub_1A69470A8()
{
  if (SLOBYTE(STACK[0xD77]) < 0)
  {
    operator delete(STACK[0xD60]);
  }

  JUMPOUT(0x1A6946C88);
}

void sub_1A69470F8()
{
  if (SLOBYTE(STACK[0xD17]) < 0)
  {
    operator delete(STACK[0xD00]);
  }

  JUMPOUT(0x1A6946CA4);
}

void sub_1A6947140()
{
  if (SLOBYTE(STACK[0xCB7]) < 0)
  {
    operator delete(STACK[0xCA0]);
  }

  JUMPOUT(0x1A6946CBCLL);
}

void sub_1A6947190()
{
  if (SLOBYTE(STACK[0xC57]) < 0)
  {
    operator delete(STACK[0xC40]);
  }

  JUMPOUT(0x1A6946CD4);
}

void sub_1A69471F4()
{
  if (*(v0 + 3535) < 0)
  {
    operator delete(STACK[0x10C0]);
  }

  JUMPOUT(0x1A6946D30);
}

void sub_1A6947244()
{
  if (*(v0 + 3439) < 0)
  {
    operator delete(STACK[0x1060]);
  }

  JUMPOUT(0x1A6946D48);
}

void sub_1A6947294()
{
  if (*(v0 + 3343) < 0)
  {
    operator delete(STACK[0x1000]);
  }

  JUMPOUT(0x1A6946D60);
}

void sub_1A69472E4()
{
  if (*(v0 + 3247) < 0)
  {
    operator delete(STACK[0xFA0]);
  }

  JUMPOUT(0x1A6946D78);
}

void sub_1A6947344()
{
  if (SLOBYTE(STACK[0xF57]) < 0)
  {
    operator delete(STACK[0xF40]);
  }

  JUMPOUT(0x1A6946D90);
}

void ZinPEPatterns::ElementWiseMirror::Fuse(ZinPEPatterns::ElementWise *a1, const ZinPattern *a2, const ZinIrOpLayerGraph *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "scaled_ew");
  SingleMatch = ZinPattern::GetSingleMatch(a1, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SingleMatch)
  {
    v9 = *(SingleMatch + 88);
    if (*(v9 + 8) == 6)
    {
      v10 = *(v9 + 28);
      *(v9 + 28) = *(v9 + 29);
      *(v9 + 29) = v10;
    }
  }

  ZinPEPatterns::ElementWise::CreatePEEW(a1, a2, a3, v7);
}

void sub_1A6947494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ZinPEPatterns::ElementWiseMirror::GetInputEdges(ZinPEPatterns::ElementWiseMirror *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  FirstMatch = ZinPattern::GetFirstMatch((this + 216));
  v5 = *(this + 24);
  v6 = v5 - *(this + 23);
  if (v6)
  {
    v7 = FirstMatch;
    v8 = 0x4EC4EC4EC4EC4EC5 * (v6 >> 4) - 1;
    v9 = v5 - 208;
    v10 = v5 - 208;
    do
    {
      (*(*v10 + 24))(&__p, v10);
      if (v25 == __p)
      {
        SinglePreviousLayer = ZinMirTensorTransform::GetSinglePreviousLayer(v7, v8);
        if (SinglePreviousLayer)
        {
          v13 = *(a2 + 8);
          v12 = *(a2 + 16);
          if (v13 >= v12)
          {
            v15 = (v13 - *a2) >> 4;
            v16 = v15 + 1;
            if ((v15 + 1) >> 60)
            {
              std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
            }

            v17 = v12 - *a2;
            if (v17 >> 3 > v16)
            {
              v16 = v17 >> 3;
            }

            if (v17 >= 0x7FFFFFFFFFFFFFF0)
            {
              v18 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v18 = v16;
            }

            if (v18)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ZinIrTensor>>>(a2, v18);
            }

            v19 = (16 * v15);
            *v19 = SinglePreviousLayer;
            v19[1] = v7;
            v14 = 16 * v15 + 16;
            v20 = *(a2 + 8) - *a2;
            v21 = v19 - v20;
            memcpy(v19 - v20, *a2, v20);
            v22 = *a2;
            *a2 = v21;
            *(a2 + 8) = v14;
            *(a2 + 16) = 0;
            if (v22)
            {
              operator delete(v22);
            }
          }

          else
          {
            *v13 = SinglePreviousLayer;
            v13[1] = v7;
            v14 = (v13 + 2);
          }

          *(a2 + 8) = v14;
        }
      }

      else
      {
        std::vector<std::pair<ZinIrOpLayer *,ZinIrOpLayer *>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::pair<ZinIrOpLayer *,ZinIrOpLayer *> const*>,std::__wrap_iter<std::pair<ZinIrOpLayer *,ZinIrOpLayer *> const*>>(a2, *(a2 + 8), __p, v25, (v25 - __p) >> 4);
      }

      if (__p)
      {
        v25 = __p;
        operator delete(__p);
      }

      --v8;
      v9 -= 208;
      v23 = v10 == *(this + 23);
      v10 -= 208;
    }

    while (!v23);
  }
}

void sub_1A6947674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void *ZinPEPatterns::UnaryElementWise::UnaryElementWise(void *a1, uint64_t a2, uint64_t a3)
{
  v161[1] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(v51, "texture1");
  ZinPEAtoms::TextureAtom::TextureAtom(&__s, v51, a3);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v98, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v98 = __s;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v99, v97);
  LODWORD(v94.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v100, &v94, 1);
  std::string::basic_string[abi:ne200100]<0>(v49, "dma_conv_input1");
  ZinCommonAtoms::InputTypeCastAtom::InputTypeCastAtom(&v94, v49, a3);
  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v101, v94.__r_.__value_.__l.__data_, v94.__r_.__value_.__l.__size_);
  }

  else
  {
    v101 = v94;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v102, v95);
  LODWORD(v92.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v103, &v92, 1);
  std::string::basic_string[abi:ne200100]<0>(v47, "dequant1");
  ZinPEAtoms::InputDeQuantAtom::InputDeQuantAtom(&v92, v47, a3);
  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v104, v92.__r_.__value_.__l.__data_, v92.__r_.__value_.__l.__size_);
  }

  else
  {
    v104 = v92;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v105, v93);
  LODWORD(v90.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v106, &v90, 1);
  std::string::basic_string[abi:ne200100]<0>(v45, "irelu1");
  ZinPEAtoms::InputReLUAtom::InputReLUAtom(&v90, v45, a3);
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v107, v90.__r_.__value_.__l.__data_, v90.__r_.__value_.__l.__size_);
  }

  else
  {
    v107 = v90;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v108, v91);
  LODWORD(v88.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v109, &v88, 1);
  std::string::basic_string[abi:ne200100]<0>(v43, "itranspose1");
  ZinPEAtoms::InputTransposeAtom::InputTransposeAtom(&v88, v43, a3);
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v110, v88.__r_.__value_.__l.__data_, v88.__r_.__value_.__l.__size_);
  }

  else
  {
    v110 = v88;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v111, v89);
  LODWORD(v86.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v112, &v86, 1);
  std::string::basic_string[abi:ne200100]<0>(v41, "broadcast1");
  ZinCommonAtoms::BroadcastAtom::BroadcastAtom(&v86, v41, a3);
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v113, v86.__r_.__value_.__l.__data_, v86.__r_.__value_.__l.__size_);
  }

  else
  {
    v113 = v86;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v114, &v87);
  LODWORD(v84.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v115, &v84, 1);
  std::string::basic_string[abi:ne200100]<0>(v39, "scaled_ew");
  ZinPEAtoms::UnaryScaledEWAtom::UnaryScaledEWAtom(&v84, v39, a3);
  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v116, v84.__r_.__value_.__l.__data_, v84.__r_.__value_.__l.__size_);
  }

  else
  {
    v116 = v84;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v117, v85);
  LODWORD(v82.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v118, &v82, 1);
  std::string::basic_string[abi:ne200100]<0>(v37, "goc");
  ZinPEAtoms::PEEWGOCAtom::PEEWGOCAtom(&v82, v37, a3);
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v119, v82.__r_.__value_.__l.__data_, v82.__r_.__value_.__l.__size_);
  }

  else
  {
    v119 = v82;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v120, &v83);
  v36 = 2;
  std::unordered_set<Attribute>::unordered_set(&v121, &v36, 1);
  std::string::basic_string[abi:ne200100]<0>(v34, "postscale");
  ZinPEAtoms::PostScaleAtom::PostScaleAtom(&v80, v34, a3);
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v122, v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_);
  }

  else
  {
    v122 = v80;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v123, v81);
  v33 = 2;
  std::unordered_set<Attribute>::unordered_set(&v124, &v33, 1);
  std::string::basic_string[abi:ne200100]<0>(v31, "abs_or_zero_compare");
  ZinPEAtoms::AbsOrZeroCompareAtom::AbsOrZeroCompareAtom(&v78, v31, a3);
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v125, v78.__r_.__value_.__l.__data_, v78.__r_.__value_.__l.__size_);
  }

  else
  {
    v125 = v78;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v126, &v79);
  LODWORD(v76.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v127, &v76, 1);
  std::string::basic_string[abi:ne200100]<0>(v29, "reduction");
  ZinPEAtoms::ReductionAtom::ReductionAtom(&v76, v29, a3);
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v128, v76.__r_.__value_.__l.__data_, v76.__r_.__value_.__l.__size_);
  }

  else
  {
    v128 = v76;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v129, v77);
  LODWORD(v74.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v130, &v74, 1);
  std::string::basic_string[abi:ne200100]<0>(v27, "final_scale");
  ZinPEAtoms::ReductionFinalScaleAtom::ReductionFinalScaleAtom(&v74, v27, a3);
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v131, v74.__r_.__value_.__l.__data_, v74.__r_.__value_.__l.__size_);
  }

  else
  {
    v131 = v74;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v132, &v75);
  LODWORD(v72.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v133, &v72, 1);
  std::string::basic_string[abi:ne200100]<0>(v25, "epsilon");
  ZinPEAtoms::ReductionEpsilonAtom::ReductionEpsilonAtom(&v72, v25, a3);
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v134, v72.__r_.__value_.__l.__data_, v72.__r_.__value_.__l.__size_);
  }

  else
  {
    v134 = v72;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v135, v73);
  LODWORD(v70.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v136, &v70, 1);
  std::string::basic_string[abi:ne200100]<0>(v23, "post_process");
  ZinPEAtoms::ReductionPostProcessAtom::ReductionPostProcessAtom(&v70, v23, a3);
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v137, v70.__r_.__value_.__l.__data_, v70.__r_.__value_.__l.__size_);
  }

  else
  {
    v137 = v70;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v138, &v71);
  LODWORD(v68.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v139, &v68, 1);
  std::string::basic_string[abi:ne200100]<0>(v21, "orelu");
  ZinPEAtoms::OutputReLUAtom::OutputReLUAtom(&v68, v21, a3);
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v140, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
  }

  else
  {
    v140 = v68;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v141, v69);
  LODWORD(v66.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v142, &v66, 1);
  std::string::basic_string[abi:ne200100]<0>(v19, "abs_or_zero_compare_after_reduction");
  ZinPEAtoms::OutputAbsOrZeroCompareAtom::OutputAbsOrZeroCompareAtom(&v66, v19, a3);
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v143, v66.__r_.__value_.__l.__data_, v66.__r_.__value_.__l.__size_);
  }

  else
  {
    v143 = v66;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v144, &v67);
  LODWORD(v64.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v145, &v64, 1);
  std::string::basic_string[abi:ne200100]<0>(v17, "ogoc");
  ZinPEAtoms::OutputGOCAtom::OutputGOCAtom(&v64, v17, a3);
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v146, v64.__r_.__value_.__l.__data_, v64.__r_.__value_.__l.__size_);
  }

  else
  {
    v146 = v64;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v147, v65);
  v16 = 2;
  std::unordered_set<Attribute>::unordered_set(&v148, &v16, 1);
  std::string::basic_string[abi:ne200100]<0>(v14, "postogocrelu");
  ZinPEAtoms::OutputReLUAtom::OutputReLUAtom(&v62, v14, a3);
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v149, v62.__r_.__value_.__l.__data_, v62.__r_.__value_.__l.__size_);
  }

  else
  {
    v149 = v62;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v150, &v63);
  LODWORD(v60.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v151, &v60, 1);
  std::string::basic_string[abi:ne200100]<0>(v12, "otranspose");
  ZinPEAtoms::OutputTransposeAtom::OutputTransposeAtom(&v60, v12, a3);
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v152, v60.__r_.__value_.__l.__data_, v60.__r_.__value_.__l.__size_);
  }

  else
  {
    v152 = v60;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v153, v61);
  LODWORD(v58.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v154, &v58, 1);
  std::string::basic_string[abi:ne200100]<0>(v10, "oquant");
  ZinPEAtoms::OutputScalarQuantAtom::OutputScalarQuantAtom(&v58, v10, a3);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v155, v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
  }

  else
  {
    v155 = v58;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v156, &v59);
  LODWORD(v56.__r_.__value_.__l.__data_) = 0;
  std::unordered_set<Attribute>::unordered_set(&v157, &v56, 1);
  std::string::basic_string[abi:ne200100]<0>(__p, "dma_conv_output");
  ZinCommonAtoms::OutputTypeCastAtom::OutputTypeCastAtom(&v56, __p, a3);
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v158, v56.__r_.__value_.__l.__data_, v56.__r_.__value_.__l.__size_);
  }

  else
  {
    v158 = v56;
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::__value_func[abi:ne200100](&v159, v57);
  LODWORD(v54) = 0;
  std::unordered_set<Attribute>::unordered_set(&v160, &v54, 1);
  memset(v53, 0, sizeof(v53));
  std::vector<ZinLinearPattern::AtomItem>::__init_with_size[abi:ne200100]<ZinLinearPattern::AtomItem const*,ZinLinearPattern::AtomItem const*>(v53, &v98, v161, 0x15uLL);
  v55[0] = &unk_1F19CAB88;
  v55[1] = ZinPEPatterns::ElementWise::AnalyzeEW;
  v55[3] = v55;
  ZinLinearPattern::ZinLinearPattern(a1, v53, a2, 0, v55, 0);
  std::__function::__value_func<BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::~__value_func[abi:ne200100](v55);
  v54 = v53;
  std::vector<ZinLinearPattern::AtomItemDesc>::__destroy_vector::operator()[abi:ne200100](&v54);
  v6 = 252;
  do
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&__s.__r_.__value_.__r.__words[v6 + 2]);
    std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](&v95[v6 * 8 + 16]);
    if (v95[v6 * 8 + 15] < 0)
    {
      operator delete(v94.__r_.__value_.__r.__words[v6 + 2]);
    }

    v6 -= 12;
  }

  while (v6 * 8);
  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v57);
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](&v59);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v61);
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](&v63);
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v65);
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](&v67);
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v69);
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](&v71);
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v73);
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](&v75);
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v77);
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](&v79);
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v81);
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](&v83);
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  if (v38 < 0)
  {
    operator delete(v37[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v85);
  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](&v87);
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  if (v42 < 0)
  {
    operator delete(v41[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v89);
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v91);
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  if (v46 < 0)
  {
    operator delete(v45[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v93);
  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v92.__r_.__value_.__l.__data_);
  }

  if (v48 < 0)
  {
    operator delete(v47[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v95);
  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  if (v50 < 0)
  {
    operator delete(v49[0]);
  }

  std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](v97);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (v52 < 0)
  {
    operator delete(v51[0]);
  }

  *a1 = &unk_1F19F0C78;
  return a1;
}