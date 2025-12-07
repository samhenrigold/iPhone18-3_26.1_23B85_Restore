uint64_t AGCLLVMUserObject::setupBufferAliasInfo(AGCLLVMUserObject *this)
{
  v39[16] = *MEMORY[0x277D85DE8];
  if (*(this + 1022))
  {
    v37 = v39;
    v38 = 0x1000000000;
    v2 = *(this + *(*this - 24) + 2136);
    v34 = "agx.buffer.alias.scopes";
    v36[8] = 259;
    NamedMetadata = llvm::Module::getNamedMetadata(v2, &v34);
    NumOperands = llvm::NamedMDNode::getNumOperands(NamedMetadata);
    if (NumOperands)
    {
      v5 = NumOperands;
      for (i = 0; i != v5; ++i)
      {
        Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v37, Operand);
      }
    }

    v34 = v36;
    v35 = 0x2000000000;
    v30 = v33;
    v32 = 32;
    v8 = *(this + 1022);
    if (v8)
    {
      v9 = *(this + 510);
      v27 = &v9[2 * v8];
      while (1)
      {
        v10 = *v9;
        v11 = v9[1];
        LODWORD(v35) = 0;
        v31 = 0;
        v12 = *(v10 + 8);
        if (!v12)
        {
          goto LABEL_42;
        }

        do
        {
          v13 = *(v12 + 24);
          v14 = *(v13 + 16);
          if ((v14 - 60) < 2)
          {
            v15 = &v34;
            goto LABEL_13;
          }

          if (v14 == 77 || v14 == 62)
          {
            v15 = &v30;
LABEL_13:
            llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v15, v13);
          }

          v12 = *(v12 + 8);
        }

        while (v12);
LABEL_15:
        v16 = v31;
        while (v16)
        {
          v17 = *(v30 + --v16);
          v31 = v16;
          v18 = *(v17 + 16);
          if ((v18 - 60) < 2)
          {
            llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v34, v17);
            goto LABEL_15;
          }

          if (v18 == 62 || v18 == 77)
          {
            for (j = *(v17 + 8); j; j = *(j + 8))
            {
              v20 = *(j + 24);
              if (v20)
              {
                v21 = *(v20 + 16) >= 0x1Cu;
              }

              else
              {
                v21 = 0;
              }

              if (v21)
              {
                llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v30, v20);
              }
            }

            goto LABEL_15;
          }
        }

        if (v35)
        {
          v22 = v34;
          v23 = v34 + 8 * v35;
          do
          {
            if (*(*v22 + 16) == 60)
            {
              v28[0] = v11;
              llvm::MDTuple::getImpl();
              llvm::Instruction::setMetadata();
            }

            else
            {
              v28[0] = v29;
              v28[1] = 0x1000000000;
              if (v38)
              {
                v24 = v37;
                v25 = 8 * v38;
                do
                {
                  if (*v24 != v11)
                  {
                    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v28, *v24);
                  }

                  ++v24;
                  v25 -= 8;
                }

                while (v25);
              }

              llvm::MDTuple::getImpl();
              llvm::Instruction::setMetadata();
              if (v28[0] != v29)
              {
                free(v28[0]);
              }
            }

            v22 += 8;
          }

          while (v22 != v23);
        }

LABEL_42:
        v9 += 2;
        if (v9 == v27)
        {
          if (v30 != v33)
          {
            free(v30);
          }

          break;
        }
      }
    }

    if (v34 != v36)
    {
      free(v34);
    }

    if (v37 != v39)
    {
      free(v37);
    }
  }

  return 1;
}

uint64_t AGCLLVMUserObject::setupStackOOBCheck(AGCLLVMUserObject *this, const char *a2)
{
  v2 = 0x27C8D7000uLL;
  {
    v2 = 0x27C8D7000;
    if (v5)
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
      v2 = 0x27C8D7000;
    }
  }

  if (*(v2 + 2944) != 1 || (Value = AGCEnv::getValue("AGX_DISABLE_STACK_OOB_CHECK", a2)) == 0 || *Value == 48 || !atoi(Value))
  {
    llvm::Module::getOrInsertNamedMetadata();
  }

  return 1;
}

uint64_t AGCLLVMAGPFragmentShader::setupInterpolationFunctions(AGCLLVMAGPFragmentShader *this)
{
  v92 = *MEMORY[0x277D85DE8];
  {
    AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::interpolation_functions_map = 0;
    *&dword_28117E4A8 = 0;
    qword_28117E4B0 = 0x1800000000;
    __cxa_atexit(llvm::StringMap<AGCLLVMAGPFragmentShader::InterpolationFunction,llvm::MallocAllocator>::~StringMap, &AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::interpolation_functions_map, &dword_20E4E1000);
  }

  if (atomic_load_explicit(&AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::flag, memory_order_acquire) != -1)
  {
    v83 = &v90;
    v86 = &v83;
    std::__call_once(&AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::flag, &v86, std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::$_0 &&>>);
  }

  v2 = *(this + *(*this - 24) + 2136);
  v3 = *(v2 + 32);
  v65 = v2 + 24;
  if (v3 != v2 + 24)
  {
    v4 = this + 1712;
    v5 = this + 1704;
    v6 = this + 2016;
    while (1)
    {
      v7 = v3 ? (v3 - 56) : 0;
      v67 = *(v3 + 8);
      llvm::Value::getName(v7);
      Key = llvm::StringMapImpl::FindKey();
      if (Key != -1 && Key != dword_28117E4A8)
      {
        v10 = *(v3 - 48);
        if (v10)
        {
          break;
        }
      }

LABEL_45:
      v3 = v67;
      if (v67 == v65)
      {
        return 1;
      }
    }

    v11 = *(AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::interpolation_functions_map + 8 * Key);
    v12 = *(v11 + 8);
    v73 = *(v11 + 12);
    v13 = *(v11 + 16);
    v14 = *(v11 + 20);
    v15 = *(v11 + 22);
    v16 = *(v11 + 21);
    v76 = v14;
    v71 = this + 24 * v14 + 7088;
    v72 = v13;
    v17 = 1904;
    if (v13 < 2)
    {
      v17 = 1872;
    }

    v66 = this + v17;
    v69 = 32 * v15;
    v70 = 32 * v16;
    v74 = v12;
    while (1)
    {
      v18 = *(v10 + 24);
      v10 = *(v10 + 8);
      llvm::IRBuilderBase::SetInsertPoint(&v4[*(*this - 24)], v18);
      if (v12 == 4 || v12 == 1)
      {
        v19 = *(v18 + v69 + -32 * (*(v18 + 5) & 0x7FFFFFF));
        if (v12 == 1 && v19)
        {
          v20 = *(v18 + v69 + -32 * (*(v18 + 5) & 0x7FFFFFF));
          v21 = v6;
          v22 = v18;
          v23 = v10;
          v24 = this + *(*this - 24);
          v25 = llvm::ConstantInt::get();
          v85 = 257;
          v26 = (v24 + 1712);
          v10 = v23;
          v18 = v22;
          v6 = v21;
          v19 = llvm::IRBuilderBase::CreateAnd(v26, v20, v25, &v83);
        }
      }

      else
      {
        v19 = 0;
      }

      v90 = 0;
      Cast = 0;
      v90 = llvm::ConstantInt::get();
      v27 = this + *(*this - 24);
      v28 = *(v18 + v70 + -32 * (*(v18 + 5) & 0x7FFFFFF));
      v29 = *(v27 + 238);
      v85 = 257;
      Cast = llvm::IRBuilderBase::CreateCast((v27 + 1712), 47, v28, v29, &v83);
      v30 = *(*this - 24);
      v31 = *(v71 + 2);
      v85 = 257;
      v75 = AGCLLVMBuilder::CreateGEP(&v5[v30], v31, &v90, 2, &v83);
      v32 = llvm::ArrayType::get(*&v6[*(*this - 24)], v76);
      if (v12 == 4)
      {
        v33 = v32;
        v34 = 0;
        v83 = 0;
        v84 = 0;
        if (!v73)
        {
          v83 = AGCLLVMAGPFragmentShader::calculateInterpolationCoords(this, 1, v19);
          v84 = v35;
          v34 = AGCLLVMAGPFragmentShader::interpolateAtOffset(this, &v83, 1, *(this + 785), *(this + 786), 0);
        }

        v83 = AGCLLVMAGPFragmentShader::calculateInterpolationCoords(this, v76, v19);
        v84 = v36;
        InsertElement = AGCLLVMAGPFragmentShader::interpolateAtOffset(this, &v83, v76, v75, v33, v34);
      }

      else
      {
        v38 = *(*this - 24);
        if (v73 == 5)
        {
          v44 = *&v66[v38];
          llvm::FixedVectorType::get();
          InsertElement = llvm::UndefValue::get();
          if (v76)
          {
            v68 = v10;
            for (i = 0; i != v76; i = (i + 1))
            {
              v46 = &v5[*(*this - 24)];
              v89[0] = llvm::ConstantInt::get();
              v89[1] = llvm::ConstantInt::get();
              v85 = 257;
              GEP = AGCLLVMBuilder::CreateGEP(v46, v75, v89, 2, &v83);
              v88 = 257;
              Load = AGCLLVMBuilder::CreateLoad(v46, GEP, &v86);
              v49 = *(*this - 24);
              v50 = (v18 - 4 * (*(v18 + 5) & 0x7FFFFFF))[4];
              v85 = 257;
              Element = llvm::IRBuilderBase::CreateExtractElement(&v4[v49], Load, v50, &v83);
              v52 = v5;
              v53 = v4;
              v54 = this + *(*this - 24);
              v85 = 257;
              v55 = llvm::IRBuilderBase::CreateCast((v54 + 1712), 49, Element, v44, &v83);
              v88 = 257;
              v56 = llvm::ConstantInt::get();
              v57 = (v54 + 1712);
              v4 = v53;
              v5 = v52;
              InsertElement = llvm::IRBuilderBase::CreateInsertElement(v57, InsertElement, v55, v56, &v86);
            }

            v12 = v74;
            if (v76 == 1)
            {
              v58 = &v52[*(*this - 24)];
              v85 = 257;
              v59 = llvm::ConstantInt::get();
              InsertElement = llvm::IRBuilderBase::CreateExtractElement((v58 + 8), InsertElement, v59, &v83);
            }

            v6 = this + 2016;
            v10 = v68;
          }

          goto LABEL_41;
        }

        v39 = v10;
        if (!v73)
        {
          v40 = &v5[v38];
          v86 = llvm::ConstantInt::get();
          v87 = llvm::ConstantInt::get();
          v85 = 257;
          v41 = AGCLLVMBuilder::CreateGEP(v40, v75, &v86, 2, &v83);
          v42 = this + *(*this - 24);
          v43 = *(v42 + 271);
          v80 = *(v42 + 110);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v81, (v42 + 1712));
          v82 = *(v42 + 452);
          InsertElement = (*(*v43 + 280))(v43, &v80, v76, v74, v41, v19, *(this + 785));
          if (v81)
          {
            llvm::MetadataTracking::untrack();
          }

          v10 = v39;
          v12 = v74;
          v6 = this + 2016;
          goto LABEL_41;
        }

        v60 = &v5[v38];
        v86 = llvm::ConstantInt::get();
        v87 = llvm::ConstantInt::get();
        v85 = 257;
        v61 = AGCLLVMBuilder::CreateGEP(v60, v75, &v86, 2, &v83);
        v62 = this + *(*this - 24);
        v63 = *(v62 + 271);
        v77 = *(v62 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v78, (v62 + 1712));
        v79 = *(v62 + 452);
        InsertElement = (*(*v63 + 280))(v63, &v77, v76, v74, v61, v19, 0);
        if (v78)
        {
          llvm::MetadataTracking::untrack();
        }

        v6 = this + 2016;
        v10 = v39;
      }

      v12 = v74;
LABEL_41:
      AGCLLVMBuilder::truncateToSmall(&v5[*(*this - 24)], InsertElement, v72);
      llvm::Value::replaceAllUsesWith();
      llvm::Instruction::eraseFromParent(v18);
      if (!v10)
      {
        goto LABEL_45;
      }
    }
  }

  return 1;
}

uint64_t AGCLLVMUserObject::setupGlobalBindings(AGCLLVMUserObject *this)
{
  v2 = *(this + *(*this - 24) + 2136);
  v60 = "air.global_bindings";
  LOWORD(v63) = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v2, &v60);
  if (NamedMetadata)
  {
    v4 = (this + *(*this - 24));
    if ((*(v4[90].__r_.__value_.__l.__size_ + 1904) & 1) == 0)
    {
      std::string::append(v4 + 69, "global bindings unsupported prior to Apple6 GPU family");
      LOBYTE(v9) = 0;
      return v9 & 1;
    }

    v5 = NamedMetadata;
    NumOperands = llvm::NamedMDNode::getNumOperands(NamedMetadata);
    if (NumOperands)
    {
      v7 = NumOperands;
      v8 = 0;
      v9 = 1;
      while (1)
      {
        Operand = llvm::NamedMDNode::getOperand(v5);
        v11 = Operand - 8 * *(Operand + 8);
        v12 = *(v11 + 8);
        if (v12 && *v12 - 1 <= 1 && ((v13 = *(v12 + 16)) != 0 ? (v14 = *(v13 + 16) == 3) : (v14 = 0), v14))
        {
          v15 = *(v11 + 16);
          String = llvm::MDString::getString(*(v15 - 8 * *(v15 + 8) + 8));
          if (v17 <= 24)
          {
            if (v17 <= 17)
            {
              if (v17 == 10)
              {
                if (*String != 0x666675622E726961 || *(String + 8) != 29285)
                {
                  if (*String != 0x736E65742E726961 || *(String + 8) != 29295)
                  {
                    goto LABEL_12;
                  }

                  AGCLLVMObject::replaceConstantChainWithInstrs(v13, 0xA);
                }

                goto LABEL_124;
              }

              if (v17 == 11)
              {
                if (*String == 0x747865742E726961 && *(String + 3) == 0x657275747865742ELL)
                {
                  if (*(v13 + 1))
                  {
                    v67 = 0;
                    v65 = 0;
                    v66 = 0;
                    LODWORD(v60) = 0;
                    *v61 = 0;
                    *v62 = 0xFFFFFFFFLL;
                    *&v62[3] = 0;
                    v63 = 0;
                    v64 = 0;
                    v46 = parseMDTexture(v15, &v66, &v65, v61, &v67 + 1, &v61[1], &v67, v62);
                    if (v46)
                    {
                      v47 = *v13;
                      v59 = v46;
                      if (llvm::Type::isOpaquePointerTy(*v13))
                      {
                        v48 = llvm::StructType::create();
                      }

                      else
                      {
                        if (HIBYTE(v67) == 1)
                        {
                          v49 = **(v47 + 2);
                          if (*(v49 + 8) == 16)
                          {
                            v49 = **(v49 + 16);
                          }

                          v47 = **(v49 + 16);
                        }

                        v50 = *(v47 + 2);
                        if ((v50 & 0x1FF) == 0x110)
                        {
                          v47 = **(v47 + 2);
                          LOBYTE(v50) = *(v47 + 8);
                        }

                        if (v50 == 15)
                        {
                          v51 = **(v47 + 2);
                          if ((*(v51 + 8) & 0x1FF) == 0x110)
                          {
                            v47 = **(v51 + 16);
                          }
                        }

                        v48 = **(v47 + 2);
                      }

                      v63 = v48;
                      v52 = (*(*this + 296))(this, v66);
                      v66 = v52;
                      v53 = v65;
                      *(this + 879) += v65;
                      *(this + 3760) |= v67;
                      LODWORD(v60) = v52 & 0xFFFFF;
                      HIDWORD(v60) = v53;
                      v64 = 1;
                      std::__tree<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>::__emplace_unique_key_args<AGCLLVMUserObject::Texture,AGCLLVMUserObject::Texture const&>(this + 125, v52 & 0xFFFFF, &v60);
                      v54 = HIBYTE(v67);
                      if ((v61[0] & 2) != 0)
                      {
                        if ((v67 & 0x100) != 0)
                        {
                          v55 = v53 + v52;
                          if ((v53 + v52) >= 0x40)
                          {
                            v55 = 64;
                          }

                          v56 = v55 - v52;
                          if (v52 >= 0x40)
                          {
                            v56 = 0;
                          }

                          *(this + 490) |= ~(-1 << v56) << v52;
                          if (v52 <= 0x40)
                          {
                            v57 = 64;
                          }

                          else
                          {
                            v57 = v52;
                          }

                          *(this + 491) |= ~(-1 << (v53 - v56)) << v57;
                          v54 = 1;
                        }

                        else
                        {
                          v54 = 0;
                          if (v52 > 0x3F)
                          {
                            *(this + 491) |= 1 << v52;
                          }

                          else
                          {
                            *(this + 490) |= 1 << v52;
                          }
                        }
                      }

                      AGCLLVMUserObject::replaceGlobalTextureOrSamplerUsage(this, v13, v52, v53, v54 & 1, (this + 3096), (this + 3288));
                      v46 = v59;
                    }
                  }

                  else
                  {
                    v46 = 1;
                  }

                  v9 &= v46;
                  goto LABEL_12;
                }

                if (*String == 0x706D61732E726961 && *(String + 3) == 0x72656C706D61732ELL)
                {
                  v29 = AGCLLVMUserObject::replaceSamplerInput<llvm::GlobalVariable>(this, v13, v15);
LABEL_125:
                  v9 &= v29;
                }
              }
            }

            else
            {
              switch(v17)
              {
                case 18:
                  if (*String != 0x6D6D6F632E726961 || *(String + 8) != 0x666675625F646E61 || *(String + 16) != 29285)
                  {
                    break;
                  }

                  goto LABEL_124;
                case 19:
                  v22 = *(String + 11);
                  v23 = *String == 0x69646E692E726961 && *(String + 8) == 0x6675625F74636572;
                  v24 = 0x7265666675625F74;
LABEL_64:
                  if (!v23 || v22 != v24)
                  {
                    break;
                  }

                  goto LABEL_124;
                case 23:
                  v22 = *(String + 15);
                  v23 = *String == 0x747065642E726961 && *(String + 8) == 0x69636E6574735F68;
                  v24 = 0x65746174735F6C69;
                  goto LABEL_64;
              }
            }
          }

          else if (v17 > 30)
          {
            switch(v17)
            {
              case 31:
                v18 = *(String + 23);
                v20 = *String == 0x65746E692E726961 && *(String + 8) == 0x6E6F697463657372 && *(String + 16) == 0x6F6974636E75665FLL;
                v21 = 0x656C6261745F6E6FLL;
LABEL_119:
                if (!v20 || v18 != v21)
                {
                  goto LABEL_12;
                }

                goto LABEL_124;
              case 35:
                v25 = "air.instance_acceleration_structure";
                v26 = 35;
                break;
              case 36:
                v25 = "air.primitive_acceleration_structure";
                v26 = 36;
                break;
              default:
                goto LABEL_12;
            }

            if (!memcmp(String, v25, v26))
            {
              goto LABEL_124;
            }
          }

          else
          {
            switch(v17)
            {
              case 25:
                v36 = *(String + 24);
                v38 = *String == 0x646E65722E726961 && *(String + 8) == 0x6C657069705F7265 && *(String + 16) == 0x746174735F656E69;
                v39 = 101;
                goto LABEL_106;
              case 26:
                if (*String == 0x706D6F632E726961 && *(String + 8) == 0x657069705F657475 && *(String + 16) == 0x6174735F656E696CLL && *(String + 24) == 25972)
                {
LABEL_124:
                  v29 = AGCLLVMUserObject::replaceGlobalBufferBinding(this, v13, v15);
                  goto LABEL_125;
                }

                v36 = *(String + 24);
                v38 = *String == 0x697369762E726961 && *(String + 8) == 0x636E75665F656C62 && *(String + 16) == 0x6261745F6E6F6974;
                v39 = 25964;
LABEL_106:
                if (!v38 || v36 != v39)
                {
                  break;
                }

                goto LABEL_124;
              case 27:
                v18 = *(String + 19);
                v20 = *String == 0x69646E692E726961 && *(String + 8) == 0x6D6F635F74636572 && *(String + 16) == 0x6675625F646E616DLL;
                v21 = 0x7265666675625F64;
                goto LABEL_119;
            }
          }
        }

        else
        {
          std::string::append((this + *(*this - 24) + 1656), "global binding variable is empty\n");
        }

LABEL_12:
        if (v7 == ++v8)
        {
          return v9 & 1;
        }
      }
    }
  }

  LOBYTE(v9) = 1;
  return v9 & 1;
}

uint64_t AGCLLVMUserObject::setupArgumentBuffers(AGCLLVMUserObject *this)
{
  v390[4] = *MEMORY[0x277D85DE8];
  v355[0] = 0;
  v355[1] = 0;
  v356 = 0;
  if (*(*(this + *(*this - 24) + 2168) + 1869) == 1)
  {
    v2 = *(this + 848);
    if (v2)
    {
      v3 = *(this + 423);
      v4 = 8 * v2;
      do
      {
        v5 = *v3;
        if (*(*v3 + 1) == 1 && *(v5 + 2) == 1)
        {
          std::to_string(&v387, *(v5 + 48));
          v320 = std::string::insert(&v387, 0, "buffer(");
          v321 = v320->__r_.__value_.__r.__words[2];
          *&v376.__r_.__value_.__l.__data_ = *&v320->__r_.__value_.__l.__data_;
          v376.__r_.__value_.__r.__words[2] = v321;
          v320->__r_.__value_.__l.__size_ = 0;
          v320->__r_.__value_.__r.__words[2] = 0;
          v320->__r_.__value_.__r.__words[0] = 0;
          v322 = std::string::append(&v376, "): Argument buffer participates in modification as well as resource use");
          v323 = v322->__r_.__value_.__r.__words[2];
          *__p = *&v322->__r_.__value_.__l.__data_;
          *&__p[16] = v323;
          v322->__r_.__value_.__l.__size_ = 0;
          v322->__r_.__value_.__r.__words[2] = 0;
          v322->__r_.__value_.__r.__words[0] = 0;
          if (__p[23] >= 0)
          {
            v324 = __p;
          }

          else
          {
            v324 = *__p;
          }

          if (__p[23] >= 0)
          {
            v325 = __p[23];
          }

          else
          {
            v325 = *&__p[8];
          }

          std::string::append((this + *(*this - 24) + 1656), v324, v325);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          if (SHIBYTE(v376.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v376.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v387.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v387.__r_.__value_.__l.__data_);
          }

LABEL_521:
          v130 = 0;
          goto LABEL_522;
        }

        ++v3;
        v4 -= 8;
      }

      while (v4);
    }
  }

  if (*(this + 862))
  {
    v6 = this + 1712;
    v338 = this + 1904;
    v335 = this + 1704;
    v352 = this + 1712;
    do
    {
      v7 = *(this + 430);
      v8 = *(this + 864);
      v9 = v7 + 48 * v8;
      if (v8)
      {
        v10 = 48 * v8;
        while ((*(v7 + 24) | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          v7 += 48;
          v10 -= 48;
          if (!v10)
          {
            v7 = v9;
            break;
          }
        }
      }

      v11 = *(v7 + 24);
      v12 = *(v7 + 40);
      llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>::erase(this + 430, v7);
      if ((*(v12 + 8) & 0xFFFFFFFC) != 4)
      {
        goto LABEL_521;
      }

      v13 = *(v11 + 16);
      if (v13 == 62 && v11 != 0)
      {
        v18 = *(this + 428);
        if (!v18)
        {
LABEL_537:
          abort();
        }

        v19 = *(*(v11 - 32 * (*(v11 + 20) & 0x7FFFFFF)) + 32);
        while (1)
        {
          while (1)
          {
            v20 = *(v18 + 8);
            if (v19 >= v20)
            {
              break;
            }

            v18 = *v18;
            if (!v18)
            {
              goto LABEL_537;
            }
          }

          if (v20 >= v19)
          {
            break;
          }

          v18 = v18[1];
          if (!v18)
          {
            goto LABEL_537;
          }
        }

        v21 = v18[5];
        llvm::IRBuilderBase::SetInsertPoint(&v6[*(*this - 24)], v11);
        v345 = v11;
        if (v12 && *(v12 + 8) == 7)
        {
          v380[0] = 0;
          AGCArgumentBuffer::lookup(*(v21 + 56), v11, v380, __p);
          v22 = v380[0];
          v23 = v11 - 32 * (*(v11 + 20) & 0x7FFFFFF);
          *__p = &__p[16];
          *&__p[8] = 0x800000000;
          llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(__p, (v23 + 32), v380[0]);
          AGCArgumentBuffer::Constant::remapToTier1Indices(&v376, v12, __p);
          llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&v376, v22, v11);
          v24 = *(*this - 24);
          v25 = *(v21 + 16);
          v26 = *(v21 + 112);
          v27 = v376.__r_.__value_.__r.__words[0];
          v28 = LODWORD(v376.__r_.__value_.__r.__words[1]);
          v388 = 257;
          llvm::Type::isOpaquePointerTy(*v26);
          llvm::IRBuilderBase::CreateGEP(&v6[v24], v25, v26, v27, v28, &v387);
          if (v376.__r_.__value_.__l.__data_ != &v376.__r_.__value_.__r.__words[2])
          {
            free(v376.__r_.__value_.__l.__data_);
          }

          if (*__p != &__p[16])
          {
            free(*__p);
          }

          v29 = "constant_gep";
        }

        else
        {
          v387.__r_.__value_.__r.__words[0] = &v387.__r_.__value_.__r.__words[2];
          v387.__r_.__value_.__l.__size_ = 0x400000000;
          v33 = v11 - 32 * (*(v11 + 20) & 0x7FFFFFF);
          *__p = &__p[16];
          *&__p[8] = 0x800000000;
          llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(__p, (v33 + 32), v11);
          v34 = *(v12 + 8);
          if (v12 && v34 == 5)
          {
            v379.__r_.__value_.__r.__words[0] = &v379.__r_.__value_.__r.__words[2];
            v379.__r_.__value_.__l.__size_ = 0x400000000;
            llvm::SmallVectorTemplateBase<AGCCodeTranslator::ComputeVIRegType,true>::push_back(&v379, 0);
            llvm::SmallVectorTemplateBase<AGCCodeTranslator::ComputeVIRegType,true>::push_back(&v379, 1);
            llvm::SmallVectorTemplateBase<AGCCodeTranslator::ComputeVIRegType,true>::push_back(&v379, 2);
            llvm::SmallVectorTemplateBase<AGCCodeTranslator::ComputeVIRegType,true>::push_back(&v379, 3);
            v36 = v379.__r_.__value_.__r.__words[0];
            if (LODWORD(v379.__r_.__value_.__r.__words[1]))
            {
              v348 = v379.__r_.__value_.__r.__words[0] + 4 * LODWORD(v379.__r_.__value_.__r.__words[1]);
              do
              {
                v37 = *(*this - 24);
                v38 = *(v21 + 16);
                v39 = *(v21 + 112);
                v40 = LODWORD(v36->__r_.__value_.__l.__data_) == 1;
                if (!LODWORD(v36->__r_.__value_.__l.__data_))
                {
                  v40 = 1;
                }

                v41 = SLODWORD(v36->__r_.__value_.__l.__data_) <= 1 && v40;
                v376.__r_.__value_.__r.__words[0] = &v376.__r_.__value_.__r.__words[2];
                v376.__r_.__value_.__l.__size_ = 0x800000000;
                if (*(v12 + 112))
                {
                  llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(&v376, v12 + 104);
                }

                v42 = *(v12 + 192);
                if (v42)
                {
                  v43 = *(v12 + 184);
                  v44 = &v43[2 * v42];
                  do
                  {
                    v45 = *v43;
                    v46 = v43[1];
                    v43 += 2;
                    *(v376.__r_.__value_.__r.__words[0] + 8 * v46) = *(*__p + 8 * v45);
                  }

                  while (v43 != v44);
                }

                v47 = &v352[v37];
                llvm::Type::getInt32Ty(v47[8], v35);
                *(v376.__r_.__value_.__r.__words[0] + 8 * LODWORD(v376.__r_.__value_.__r.__words[1]) - 16) = llvm::ConstantInt::get();
                if (v41)
                {
                  llvm::Type::getInt32Ty(v47[8], v48);
                  *(v376.__r_.__value_.__r.__words[0] + 8 * LODWORD(v376.__r_.__value_.__r.__words[1]) - 8) = llvm::ConstantInt::get();
                  ResourceArrayIndex = AGCArgumentBuffer::Resource::getResourceArrayIndex(v12, v47, __p);
                  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v376, ResourceArrayIndex);
                  v50 = LODWORD(v376.__r_.__value_.__r.__words[1]);
                }

                else
                {
                  v51 = AGCArgumentBuffer::Resource::getResourceArrayIndex(v12, v47, __p);
                  v50 = LODWORD(v376.__r_.__value_.__r.__words[1]);
                  *(v376.__r_.__value_.__r.__words[0] + 8 * LODWORD(v376.__r_.__value_.__r.__words[1]) - 8) = v51;
                }

                v52 = v376.__r_.__value_.__r.__words[0];
                v382 = 257;
                llvm::Type::isOpaquePointerTy(*v39);
                GEP = llvm::IRBuilderBase::CreateGEP(v47, v38, v39, v52, v50, v380);
                llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v387, GEP);
                if (v376.__r_.__value_.__l.__data_ != &v376.__r_.__value_.__r.__words[2])
                {
                  free(v376.__r_.__value_.__l.__data_);
                }

                v36 = (v36 + 4);
              }

              while (v36 != v348);
              v36 = v379.__r_.__value_.__r.__words[0];
              v6 = v352;
            }

            if (v36 != &v379.__r_.__value_.__r.__words[2])
            {
              free(v36);
            }

            v29 = "texture_gep";
          }

          else if (v12 && v34 == 6)
          {
            v379.__r_.__value_.__r.__words[0] = &v379.__r_.__value_.__r.__words[2];
            v379.__r_.__value_.__l.__size_ = 0x300000000;
            llvm::SmallVectorTemplateBase<AGCCodeTranslator::ComputeVIRegType,true>::push_back(&v379, 0);
            llvm::SmallVectorTemplateBase<AGCCodeTranslator::ComputeVIRegType,true>::push_back(&v379, 2);
            v55 = v379.__r_.__value_.__r.__words[0];
            if (LODWORD(v379.__r_.__value_.__r.__words[1]))
            {
              v349 = v379.__r_.__value_.__r.__words[0] + 4 * LODWORD(v379.__r_.__value_.__r.__words[1]);
              do
              {
                v56 = *(*this - 24);
                v57 = *(v21 + 16);
                v58 = *(v21 + 112);
                v59 = LODWORD(v55->__r_.__value_.__l.__data_) == 1;
                if (LODWORD(v55->__r_.__value_.__l.__data_) == 2)
                {
                  v59 = 0;
                }

                if (LODWORD(v55->__r_.__value_.__l.__data_))
                {
                  v60 = v59;
                }

                else
                {
                  v60 = 1;
                }

                v376.__r_.__value_.__r.__words[0] = &v376.__r_.__value_.__r.__words[2];
                v376.__r_.__value_.__l.__size_ = 0x800000000;
                if (*(v12 + 112))
                {
                  llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(&v376, v12 + 104);
                }

                v61 = *(v12 + 192);
                if (v61)
                {
                  v62 = *(v12 + 184);
                  v63 = &v62[2 * v61];
                  do
                  {
                    v64 = *v62;
                    v65 = v62[1];
                    v62 += 2;
                    *(v376.__r_.__value_.__r.__words[0] + 8 * v65) = *(*__p + 8 * v64);
                  }

                  while (v62 != v63);
                }

                v66 = &v352[v56];
                llvm::Type::getInt32Ty(v66[8], v54);
                *(v376.__r_.__value_.__r.__words[0] + 8 * LODWORD(v376.__r_.__value_.__r.__words[1]) - 16) = llvm::ConstantInt::get();
                if (v60)
                {
                  llvm::Type::getInt32Ty(v66[8], v67);
                  *(v376.__r_.__value_.__r.__words[0] + 8 * LODWORD(v376.__r_.__value_.__r.__words[1]) - 8) = llvm::ConstantInt::get();
                  v68 = AGCArgumentBuffer::Resource::getResourceArrayIndex(v12, v66, __p);
                  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v376, v68);
                  v69 = LODWORD(v376.__r_.__value_.__r.__words[1]);
                }

                else
                {
                  v70 = AGCArgumentBuffer::Resource::getResourceArrayIndex(v12, v66, __p);
                  v69 = LODWORD(v376.__r_.__value_.__r.__words[1]);
                  *(v376.__r_.__value_.__r.__words[0] + 8 * LODWORD(v376.__r_.__value_.__r.__words[1]) - 8) = v70;
                }

                v71 = v376.__r_.__value_.__r.__words[0];
                v382 = 257;
                llvm::Type::isOpaquePointerTy(*v58);
                v72 = llvm::IRBuilderBase::CreateGEP(v66, v57, v58, v71, v69, v380);
                llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v387, v72);
                if (v376.__r_.__value_.__l.__data_ != &v376.__r_.__value_.__r.__words[2])
                {
                  free(v376.__r_.__value_.__l.__data_);
                }

                v55 = (v55 + 4);
              }

              while (v55 != v349);
              v55 = v379.__r_.__value_.__r.__words[0];
              v6 = v352;
            }

            if (v55 != &v379.__r_.__value_.__r.__words[2])
            {
              free(v55);
            }

            v29 = "sampler_gep";
          }

          else
          {
            if (v34 == 4)
            {
              v88 = v12;
            }

            else
            {
              v88 = 0;
            }

            v89 = *(*this - 24);
            v90 = *(v21 + 16);
            v91 = *(v21 + 112);
            AGCArgumentBuffer::Buffer::remapToTier1Indices(&v376, v88, &v6[v89], __p);
            v92 = v376.__r_.__value_.__r.__words[0];
            v93 = LODWORD(v376.__r_.__value_.__r.__words[1]);
            v382 = 257;
            llvm::Type::isOpaquePointerTy(*v91);
            v94 = llvm::IRBuilderBase::CreateGEP(&v6[v89], v90, v91, v92, v93, v380);
            llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v387, v94);
            if (v376.__r_.__value_.__l.__data_ != &v376.__r_.__value_.__r.__words[2])
            {
              free(v376.__r_.__value_.__l.__data_);
            }

            v29 = "buffer_gep";
          }

          v95 = this + *(*this - 24);
          v96 = *(v21 + 16);
          v97 = *(v21 + 112);
          v380[0] = *(*v387.__r_.__value_.__l.__data_ - 32 * (*(*v387.__r_.__value_.__l.__data_ + 20) & 0x7FFFFFF) + 32);
          v380[1] = llvm::ConstantInt::get();
          v381[0] = llvm::ConstantInt::get();
          v378[0] = 257;
          llvm::Type::isOpaquePointerTy(*v97);
          v98 = llvm::IRBuilderBase::CreateGEP((v95 + 1712), v96, v97, v380, 3, &v376);
          v99 = llvm::ConstantInt::get();
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v387, v98);
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v387, v99);
          v376.__r_.__value_.__r.__words[0] = &v376.__r_.__value_.__r.__words[2];
          v376.__r_.__value_.__l.__size_ = 0x400000000;
          if (LODWORD(v387.__r_.__value_.__r.__words[1]))
          {
            v100 = v387.__r_.__value_.__r.__words[0];
            v101 = 8 * LODWORD(v387.__r_.__value_.__r.__words[1]);
            do
            {
              v102 = *v100++;
              llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v376, *v102);
              v101 -= 8;
            }

            while (v101);
          }

          v103 = llvm::StructType::get();
          InsertValue = llvm::UndefValue::get();
          LODWORD(v379.__r_.__value_.__l.__data_) = 0;
          if (LODWORD(v387.__r_.__value_.__r.__words[1]))
          {
            v105 = 0;
            do
            {
              v106 = *(*this - 24);
              v107 = *(v387.__r_.__value_.__r.__words[0] + 8 * v105);
              v382 = 257;
              InsertValue = llvm::IRBuilderBase::CreateInsertValue(&v6[v106], InsertValue, v107, &v379, 1, v380);
              v105 = LODWORD(v379.__r_.__value_.__l.__data_) + 1;
              LODWORD(v379.__r_.__value_.__l.__data_) = v105;
            }

            while (LODWORD(v387.__r_.__value_.__r.__words[1]) > v105);
          }

          AllocaInEntryBlock = AGCLLVMBuilder::createAllocaInEntryBlock(&v335[*(*this - 24)], v103);
          llvm::IRBuilderBase::CreateAlignedStore(&v6[*(*this - 24)], InsertValue, AllocaInEntryBlock, 0, 0);
          AGCLLVMUserObject::addrSpaceReconciliation(this, AllocaInEntryBlock, *v345);
          if (v376.__r_.__value_.__l.__data_ != &v376.__r_.__value_.__r.__words[2])
          {
            free(v376.__r_.__value_.__l.__data_);
          }

          if (*__p != &__p[16])
          {
            free(*__p);
          }

          if (v387.__r_.__value_.__l.__data_ != &v387.__r_.__value_.__r.__words[2])
          {
            free(v387.__r_.__value_.__l.__data_);
          }
        }

        v109 = 1;
        BYTE1(v385) = 1;
        if (*v29)
        {
          *__p = v29;
          v109 = 3;
        }

        LOBYTE(v385) = v109;
        llvm::Value::setName();
        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v345);
        continue;
      }

      if (v13 != 60 || v11 == 0)
      {
        if (v13 != 61 || v11 == 0)
        {
          goto LABEL_521;
        }

        llvm::IRBuilderBase::SetInsertPoint(&v6[*(*this - 24)], v11);
        *__p = &__p[16];
        *&__p[8] = 0x400000000;
        v17 = *(v12 + 8);
        if (v12 && v17 == 5)
        {
          AGCArgumentBuffer::Texture::typeSet(&v376, *(this + *(*this - 24) + 2168), *(this + *(*this - 24) + 2160));
LABEL_110:
          llvm::SmallVectorImpl<llvm::MDNode *>::operator=(__p, &v376);
          if (v376.__r_.__value_.__l.__data_ != &v376.__r_.__value_.__r.__words[2])
          {
            free(v376.__r_.__value_.__l.__data_);
          }

          AGCLLVMUserObject::replaceArgumentBufferStoreTextureOrSampler(this, v11, __p);
          goto LABEL_117;
        }

        if (v12 && v17 == 6)
        {
          AGCArgumentBuffer::Sampler::typeSet(&v376, *(this + *(*this - 24) + 2168), *(this + *(*this - 24) + 2160));
          goto LABEL_110;
        }

        v110 = this + *(*this - 24);
        v111 = *(v11 - 64);
        v112 = *(v110 + 239);
        v378[0] = 257;
        Cast = llvm::IRBuilderBase::CreateCast((v110 + 1712), 47, v111, v112, &v376);
        v113 = v11;
        v376.__r_.__value_.__r.__words[0] = llvm::PointerType::get();
        v376.__r_.__value_.__l.__size_ = llvm::PointerType::get();
        v376.__r_.__value_.__r.__words[2] = *&v338[*(*this - 24)];
        v114 = llvm::StructType::get();
        v115 = *(v11 - 32);
        v116 = llvm::PointerType::get();
        v117 = AGCLLVMUserObject::addrSpaceReconciliation(this, v115, v116);
        v118 = *(*this - 24);
        v378[0] = 257;
        llvm::Type::isOpaquePointerTy(*v117);
        AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(&v6[v118], v114, v117, 0, &v376);
        v120 = *(*this - 24);
        LODWORD(v387.__r_.__value_.__l.__data_) = 0;
        v378[0] = 257;
        Value = llvm::IRBuilderBase::CreateExtractValue(&v6[v120], AlignedLoad, &v387, 1, &v376);
        v122 = *(*this - 24);
        LODWORD(v387.__r_.__value_.__l.__data_) = 1;
        v378[0] = 257;
        v123 = llvm::IRBuilderBase::CreateExtractValue(&v6[v122], AlignedLoad, &v387, 1, &v376);
        v124 = *(*this - 24);
        LODWORD(v387.__r_.__value_.__l.__data_) = 2;
        v378[0] = 257;
        v125 = llvm::IRBuilderBase::CreateExtractValue(&v6[v124], AlignedLoad, &v387, 1, &v376);
        v11 = v113;
        llvm::IRBuilderBase::CreateAlignedStore(&v6[*(*this - 24)], Cast, Value, 0, 0);
        llvm::IRBuilderBase::CreateAlignedStore(&v6[*(*this - 24)], v125, v123, 0, 0);
      }

      else
      {
        llvm::IRBuilderBase::SetInsertPoint(&v6[*(*this - 24)], v11);
        *__p = &__p[16];
        *&__p[8] = 0x400000000;
        v30 = *(v12 + 8);
        if (v12)
        {
          v31 = v30 == 5;
        }

        else
        {
          v31 = 0;
        }

        if (v31)
        {
          AGCArgumentBuffer::Texture::typeSet(&v376, *(this + *(*this - 24) + 2168), *(this + *(*this - 24) + 2160));
          llvm::SmallVectorImpl<llvm::MDNode *>::operator=(__p, &v376);
          if (v376.__r_.__value_.__l.__data_ != &v376.__r_.__value_.__r.__words[2])
          {
            free(v376.__r_.__value_.__l.__data_);
          }

          AGCLLVMUserObject::replaceArgumentBufferLoadTextureOrSampler(this, v11, __p);
          v32 = "texture_load";
        }

        else if (v12 && v30 == 6)
        {
          AGCArgumentBuffer::Sampler::typeSet(&v376, *(this + *(*this - 24) + 2168), *(this + *(*this - 24) + 2160));
          llvm::SmallVectorImpl<llvm::MDNode *>::operator=(__p, &v376);
          if (v376.__r_.__value_.__l.__data_ != &v376.__r_.__value_.__r.__words[2])
          {
            free(v376.__r_.__value_.__l.__data_);
          }

          AGCLLVMUserObject::replaceArgumentBufferLoadTextureOrSampler(this, v11, __p);
          v32 = "sampler_load";
        }

        else
        {
          v346 = v11;
          v73 = *(v11 - 32);
          v74 = llvm::PointerType::get();
          v376.__r_.__value_.__r.__words[0] = v74;
          v75 = llvm::StructType::get();
          v76 = llvm::PointerType::get();
          v77 = AGCLLVMUserObject::addrSpaceReconciliation(this, v73, v76);
          v78 = this + *(*this - 24);
          v387.__r_.__value_.__r.__words[0] = llvm::ConstantInt::get();
          v387.__r_.__value_.__l.__size_ = llvm::ConstantInt::get();
          v378[0] = 257;
          llvm::Type::isOpaquePointerTy(*v77);
          v79 = llvm::IRBuilderBase::CreateGEP((v78 + 1712), v75, v77, &v387, 2, &v376);
          v80 = *(*this - 24);
          v378[0] = 257;
          llvm::Type::isOpaquePointerTy(*v79);
          v81 = llvm::IRBuilderBase::CreateAlignedLoad(&v6[v80], v74, v79, 0, &v376);
          v82 = this + *(*this - 24);
          v83 = *(v82 + 239);
          v378[0] = 257;
          llvm::Type::isOpaquePointerTy(*v81);
          v84 = llvm::IRBuilderBase::CreateAlignedLoad(v82 + 214, v83, v81, 0, &v376);
          v85 = *(*this - 24);
          v11 = v346;
          v86 = *v346;
          v378[0] = 257;
          llvm::IRBuilderBase::CreateCast(&v6[v85], 48, v84, v86, &v376);
          v32 = "buffer_load";
        }

        v87 = 1;
        HIBYTE(v378[0]) = 1;
        if (*v32)
        {
          v376.__r_.__value_.__r.__words[0] = v32;
          v87 = 3;
        }

        LOBYTE(v378[0]) = v87;
        llvm::Value::setName();
        llvm::Value::replaceAllUsesWith();
      }

LABEL_117:
      llvm::Instruction::eraseFromParent(v11);
      if (*__p != &__p[16])
      {
        free(*__p);
      }
    }

    while (*(this + 862));
  }

  v126 = *(this + 848);
  if (!v126)
  {
    v130 = 1;
    goto LABEL_513;
  }

  v127 = *(this + 423);
  v128 = &v127[v126];
  v129 = this + 1656;
  v353 = this + 1712;
  v328 = this + 1704;
  LOBYTE(v130) = 1;
  v329 = v128;
  do
  {
    if ((v130 & 1) == 0)
    {
      v130 = 0;
      goto LABEL_510;
    }

    v330 = v127;
    v131 = *v127;
    *v373 = 0u;
    *v374 = 0u;
    v375 = 1065353216;
    *v370 = 0u;
    *v371 = 0u;
    v372 = 1065353216;
    *v367 = 0u;
    *v368 = 0u;
    v369 = 1065353216;
    __val = *(v131 + 48);
    v132 = *(*(this + *(*this - 24) + 2168) + 1869);
    v365[0] = this;
    v365[1] = v373;
    v365[2] = &__val;
    v389[0] = v390;
    v389[1] = 0x400000000;
    v347 = v131;
    v133 = *(v131 + 8);
    if (*(v131 + 3) == 1 && (v134 = *(v133 + 8)) != 0)
    {
      v135 = 0;
      do
      {
        v136 = *(v134 + 24);
        if (*(v136 + 16) == 60)
        {
          ++v135;
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v389, v136);
        }

        v134 = *(v134 + 8);
      }

      while (v134);
      v137 = v135 + 1;
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v389, *(v347 + 8));
      if (v135 == -1)
      {
        goto LABEL_491;
      }
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v389, v133);
      v137 = 1;
    }

    v138 = 0;
    v331 = v137;
    v351 = v132;
LABEL_157:
    v139 = *(v389[0] + v138);
    v140 = *(v139 + 8);
    if (!v140)
    {
      goto LABEL_488;
    }

    v332 = v138;
    v344 = *(v389[0] + v138);
    while (1)
    {
      v141 = *(v140 + 8);
      if (*(*(v140 + 24) + 16) <= 0x1Bu)
      {
        v142 = 0;
      }

      else
      {
        v142 = *(v140 + 24);
      }

      v363[0] = 4;
      v363[1] = 0;
      v364 = v142;
      if (v142 != -8192 && v142 != -4096 && v142 != 0)
      {
        llvm::ValueHandleBase::AddToUseList(v363);
      }

      if (*(v139 + 16) == 21)
      {
        v144 = v139;
      }

      else
      {
        v144 = 0;
      }

      v354 = v141;
      if (AGCLLVMUserObject::isAllocaStoreForDebugger(*(this + 39), v142, v144))
      {
        llvm::IRBuilderBase::SetInsertPoint(&v353[*(*this - 24)], v142);
        v145 = *(*this - 24);
        v146 = *(v347 + 112);
        v147 = *v139;
        LOWORD(v385) = 257;
        v148 = llvm::IRBuilderBase::CreateCast(&v353[v145], 49, v146, v147, __p);
        v149 = (v142 - 64);
        if (*(v142 - 8))
        {
          v150 = *(v142 - 7);
          **(v142 - 6) = v150;
          if (v150)
          {
            *(v150 + 16) = *(v142 - 6);
          }
        }

        *v149 = v148;
        if (v148)
        {
          v153 = *(v148 + 8);
          v151 = (v148 + 8);
          v152 = v153;
          *(v142 - 7) = v153;
          if (v153)
          {
            *(v152 + 16) = v142 - 56;
          }

          *(v142 - 6) = v151;
          *v151 = v149;
        }

        v154 = 6;
        goto LABEL_384;
      }

      v155 = v364;
      if (!v364 || *(v364 + 16) != 62)
      {
        if (v132)
        {
          std::to_string(&v387, __val);
          v166 = std::string::insert(&v387, 0, "buffer(");
          v167 = v166->__r_.__value_.__r.__words[2];
          *&v376.__r_.__value_.__l.__data_ = *&v166->__r_.__value_.__l.__data_;
          v376.__r_.__value_.__r.__words[2] = v167;
          v166->__r_.__value_.__l.__size_ = 0;
          v166->__r_.__value_.__r.__words[2] = 0;
          v166->__r_.__value_.__r.__words[0] = 0;
          v168 = std::string::append(&v376, "): Unable to map argument buffer access to resource");
          v169 = v168->__r_.__value_.__r.__words[2];
          *__p = *&v168->__r_.__value_.__l.__data_;
          *&__p[16] = v169;
          v168->__r_.__value_.__l.__size_ = 0;
          v168->__r_.__value_.__r.__words[2] = 0;
          v168->__r_.__value_.__r.__words[0] = 0;
          if (__p[23] >= 0)
          {
            v170 = __p;
          }

          else
          {
            v170 = *__p;
          }

          if (__p[23] >= 0)
          {
            v171 = __p[23];
          }

          else
          {
            v171 = *&__p[8];
          }

          std::string::append(&v129[*(*this - 24)], v170, v171);
          v139 = v344;
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          if (SHIBYTE(v376.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v376.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v387.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v387.__r_.__value_.__l.__data_);
          }

          v154 = 1;
          goto LABEL_384;
        }

        goto LABEL_382;
      }

      v362 = 0;
      v361 = 0;
      v156 = AGCArgumentBuffer::lookup(*(v347 + 56), v364, &v362, &v361);
      if (!v156 || (v157 = *(v156 + 2), (v157 & 0xFFFFFFFC) != 4))
      {
        if (!v132)
        {
          goto LABEL_382;
        }

        std::to_string(&v387, __val);
        v172 = std::string::insert(&v387, 0, "buffer(");
        v173 = v172->__r_.__value_.__r.__words[2];
        *&v376.__r_.__value_.__l.__data_ = *&v172->__r_.__value_.__l.__data_;
        v376.__r_.__value_.__r.__words[2] = v173;
        v172->__r_.__value_.__l.__size_ = 0;
        v172->__r_.__value_.__r.__words[2] = 0;
        v172->__r_.__value_.__r.__words[0] = 0;
        v174 = "): Unable to map argument buffer access to resource";
LABEL_207:
        v175 = std::string::append(&v376, v174);
        v176 = v175->__r_.__value_.__r.__words[2];
        *__p = *&v175->__r_.__value_.__l.__data_;
        *&__p[16] = v176;
        v175->__r_.__value_.__l.__size_ = 0;
        v175->__r_.__value_.__r.__words[2] = 0;
        v175->__r_.__value_.__r.__words[0] = 0;
        if (__p[23] >= 0)
        {
          v177 = __p;
        }

        else
        {
          v177 = *__p;
        }

        if (__p[23] >= 0)
        {
          v178 = __p[23];
        }

        else
        {
          v178 = *&__p[8];
        }

        std::string::append(&v129[*(*this - 24)], v177, v178);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        if (SHIBYTE(v376.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v376.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v387.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v387.__r_.__value_.__l.__data_);
        }

        v154 = 1;
        goto LABEL_383;
      }

      v333 = v156;
      if (v132 && v361 && v362 == v155)
      {
        if (AGCLLVMUserObject::isVoidPointerUseInIntrinsic(this, v155))
        {
          llvm::IRBuilderBase::SetInsertPoint(&v353[*(*this - 24)], v155);
          v158 = *(v347 + 112);
          v159 = *v158;
          if ((*(*v158 + 8) & 0xFE) == 0x12)
          {
            v159 = **(v159 + 16);
          }

          v160 = **(v159 + 16);
          v161 = *(*this - 24);
          v162 = (v155 - 4 * (*(v155 + 5) & 0x7FFFFFF))[4];
          LOWORD(v385) = 257;
          v163 = llvm::IRBuilderBase::CreateGEP(&v353[v161], v160, v158, v162, __p);
          v164 = *(*this - 24);
          v165 = *v155;
          LOWORD(v385) = 257;
          llvm::IRBuilderBase::CreateCast(&v353[v164], 49, v163, v165, __p);
          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v155);
          goto LABEL_382;
        }

        v156 = v333;
        v157 = *(v333 + 8);
      }

      AGCArgumentBuffer::Resource::getResourceIdBounds(v156, v155);
      if (v179)
      {
        if (v157 != 4)
        {
          goto LABEL_226;
        }

        goto LABEL_233;
      }

      if (v157 != 4)
      {
        if (v157 != 7)
        {
          if (!v132)
          {
            goto LABEL_382;
          }

          std::to_string(&v387, __val);
          v259 = std::string::insert(&v387, 0, "buffer(");
          v260 = v259->__r_.__value_.__r.__words[2];
          *&v376.__r_.__value_.__l.__data_ = *&v259->__r_.__value_.__l.__data_;
          v376.__r_.__value_.__r.__words[2] = v260;
          v259->__r_.__value_.__l.__size_ = 0;
          v259->__r_.__value_.__r.__words[2] = 0;
          v259->__r_.__value_.__r.__words[0] = 0;
          v174 = "): Argument buffer accessed with non-zero array index";
          goto LABEL_207;
        }

LABEL_226:
        if (v157 == 7 && v132)
        {
          v180 = v362;
          v181 = v155 - 32 * (*(v155 + 5) & 0x7FFFFFF);
          *__p = &__p[16];
          *&__p[8] = 0x800000000;
          llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(__p, v181 + 32, v362);
          AGCArgumentBuffer::Constant::remapToTier1Indices(&v376, v333, __p);
          llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&v376, v180, v155);
          llvm::IRBuilderBase::SetInsertPoint(&v353[*(*this - 24)], v155);
          v182 = *(*this - 24);
          v183 = *(v347 + 16);
          v184 = *(v347 + 112);
          v185 = v376.__r_.__value_.__r.__words[0];
          v186 = LODWORD(v376.__r_.__value_.__r.__words[1]);
          v388 = 257;
          llvm::Type::isOpaquePointerTy(*v184);
          llvm::IRBuilderBase::CreateGEP(&v353[v182], v183, v184, v185, v186, &v387);
          llvm::Value::replaceAllUsesWith();
          llvm::Value::takeName();
          if (v376.__r_.__value_.__l.__data_ != &v376.__r_.__value_.__r.__words[2])
          {
            free(v376.__r_.__value_.__l.__data_);
          }

          v129 = this + 1656;
          v138 = v332;
          if (*__p != &__p[16])
          {
            free(*__p);
          }

          v132 = v351;
          goto LABEL_380;
        }

        if (v157 != 7)
        {
          goto LABEL_380;
        }

LABEL_382:
        v154 = 6;
        goto LABEL_383;
      }

LABEL_233:
      if (!v132)
      {
        goto LABEL_382;
      }

      v336 = v179;
      v387.__r_.__value_.__r.__words[0] = &v387.__r_.__value_.__r.__words[2];
      v387.__r_.__value_.__l.__size_ = 0x800000000;
      *__p = &v385;
      *&__p[8] = &v385;
      *&__p[16] = 8;
      LODWORD(v384) = 0;
      v380[0] = v381;
      v380[1] = 0x800000000;
      v187 = *(v155 + 1);
      if (!v187)
      {
        goto LABEL_372;
      }

      do
      {
        v188 = *(v187 + 8);
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v387, *(v187 + 24));
        v187 = v188;
      }

      while (v188);
      v189 = v387.__r_.__value_.__r.__words[1];
      if (!LODWORD(v387.__r_.__value_.__r.__words[1]))
      {
        goto LABEL_361;
      }

      v327 = v155 + 32;
      v190 = 0x9DDFEA08EB382D69 * ((8 * (v333 & 0x1FFFFFFF) + 8) ^ HIDWORD(v333));
      v191 = 0x9DDFEA08EB382D69 * (HIDWORD(v333) ^ (v190 >> 47) ^ v190);
      v326 = 0x9DDFEA08EB382D69 * (v191 ^ (v191 >> 47));
      do
      {
        v192 = *(v387.__r_.__value_.__r.__words[0] + 8 * v189 - 8);
        LODWORD(v387.__r_.__value_.__r.__words[1]) = v189 - 1;
        v359[0] = 4;
        v359[1] = 0;
        v360 = v192;
        if (v192 == -8192 || (v192 != -4096 ? (v193 = v192 == 0) : (v193 = 1), v193))
        {
          if (v192)
          {
            goto LABEL_245;
          }
        }

        else
        {
          llvm::ValueHandleBase::AddToUseList(v359);
          if (v192)
          {
LABEL_245:
            if (*(v192 + 16) == 83)
            {
              llvm::SmallPtrSetImpl<void *>::insert(&v376, __p, v192);
              if ((AGCLLVMUserObject::IsPhiInputsEquivalent(v192, v194) & 1) == 0)
              {
                std::to_string(&v357, __val);
                v210 = std::string::insert(&v357, 0, "buffer(");
                v211 = v210->__r_.__value_.__r.__words[2];
                *&v379.__r_.__value_.__l.__data_ = *&v210->__r_.__value_.__l.__data_;
                v379.__r_.__value_.__r.__words[2] = v211;
                v210->__r_.__value_.__l.__size_ = 0;
                v210->__r_.__value_.__r.__words[2] = 0;
                v210->__r_.__value_.__r.__words[0] = 0;
                v212 = std::string::append(&v379, "): Unable to map argument buffer access to resource");
                v213 = v212->__r_.__value_.__r.__words[2];
                *&v376.__r_.__value_.__l.__data_ = *&v212->__r_.__value_.__l.__data_;
                v376.__r_.__value_.__r.__words[2] = v213;
                v212->__r_.__value_.__l.__size_ = 0;
                v212->__r_.__value_.__r.__words[2] = 0;
                v212->__r_.__value_.__r.__words[0] = 0;
                if ((v376.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v214 = &v376;
                }

                else
                {
                  v214 = v376.__r_.__value_.__r.__words[0];
                }

                if ((v376.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  size = HIBYTE(v376.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  size = v376.__r_.__value_.__l.__size_;
                }

                std::string::append(&v129[*(*this - 24)], v214, size);
                if (SHIBYTE(v376.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v376.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v379.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v379.__r_.__value_.__l.__data_);
                }

                v138 = v332;
                if (SHIBYTE(v357.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v357.__r_.__value_.__l.__data_);
                }

                v154 = 1;
                goto LABEL_349;
              }

              v195 = v192[1];
              while (v195)
              {
                while (1)
                {
                  v196 = *(v195 + 24);
                  v195 = *(v195 + 8);
                  v197 = llvm::SmallPtrSetImpl<llvm::Instruction *>::find(__p, v196);
                  v198 = (*&__p[8] == *__p ? &__p[20] : &__p[16]);
                  if ((*&__p[8] + 8 * *v198) == v197)
                  {
                    break;
                  }

                  if (!v195)
                  {
                    goto LABEL_257;
                  }
                }

                llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v387, v196);
              }
            }
          }
        }

LABEL_257:
        v199 = *(v360 + 16);
        if (v199 == 61)
        {
          v154 = 9;
          goto LABEL_348;
        }

        if (v199 != 60)
        {
          goto LABEL_346;
        }

        if ((v336 & 1) == 0)
        {
          goto LABEL_296;
        }

        if (llvm::GetElementPtrInst::hasAllConstantIndices(v155))
        {
          v200 = *(v333 + 232);
          v201 = *(v333 + 24);
          if (v201)
          {
            v202 = *(v333 + 16);
            v203 = 16 * v201;
            do
            {
              v204 = *&v327[32 * *(*v202 + 32) + -32 * (*(v155 + 5) & 0x7FFFFFF)];
              v205 = (v204 + 24);
              if (*(v204 + 32) >= 0x41u)
              {
                v205 = *v205;
              }

              v200 = (v200 + *(*v202 + 28) * *v205);
              v202 += 16;
              v203 -= 16;
            }

            while (v203);
          }

          if (*v347 == 1)
          {
            (*(*this + 304))(this, v360, v200, __val);
          }

          v206 = *(*(this + 21) + 80);
          if (v206)
          {
            v207 = v206 - 24;
          }

          else
          {
            v207 = 0;
          }

          v208 = *(v207 + 40);
          if (v208)
          {
            v209 = (v208 - 24);
          }

          else
          {
            v209 = 0;
          }

          llvm::IRBuilderBase::SetInsertPoint(&v353[*(*this - 24)], v209);
          v154 = v360;
          if (v360)
          {
            AGCLLVMUserObject::replaceArgumentBufferAccesses(AGCLLVMUserObject::IndirectArgumentBufferInfo const*)::$_0::operator()(v365, v200, v333);
            llvm::Value::replaceAllUsesWith();
            goto LABEL_345;
          }

          goto LABEL_348;
        }

        v216 = &RASTER_ORDER_GROUP_NONE;
        if (*(v333 + 276))
        {
          v216 = (v333 + 272);
        }

        if (*v216 == -1)
        {
LABEL_296:
          llvm::IRBuilderBase::SetInsertPoint(&v353[*(*this - 24)], v192);
          v219 = v362;
          v220 = &v327[-32 * (*(v155 + 5) & 0x7FFFFFF)];
          v376.__r_.__value_.__r.__words[0] = &v376.__r_.__value_.__r.__words[2];
          v376.__r_.__value_.__l.__size_ = 0x800000000;
          llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&v376, v220, v362);
          AGCArgumentBuffer::Buffer::remapToTier1Indices(&v379, v333, &v353[*(*this - 24)], &v376);
          llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&v379, v219, v155);
          v221 = *(*this - 24);
          v222 = *(v347 + 16);
          v223 = *(v347 + 112);
          v224 = v379.__r_.__value_.__r.__words[0];
          v341 = LODWORD(v379.__r_.__value_.__r.__words[1]);
          v358 = 257;
          llvm::Type::isOpaquePointerTy(*v223);
          v225 = llvm::IRBuilderBase::CreateGEP(&v353[v221], v222, v223, v224, v341, &v357);
          v226 = *(*this - 24);
          v358 = 257;
          Load = AGCLLVMBuilder::CreateLoad(&v328[v226], v225, &v357);
          v228 = *(*this - 24);
          v229 = *v192;
          v358 = 257;
          llvm::IRBuilderBase::CreateCast(&v353[v228], 48, Load, v229, &v357);
          llvm::Value::replaceAllUsesWith();
          if (v379.__r_.__value_.__l.__data_ != &v379.__r_.__value_.__r.__words[2])
          {
            free(v379.__r_.__value_.__l.__data_);
          }

          if (v376.__r_.__value_.__l.__data_ != &v376.__r_.__value_.__r.__words[2])
          {
            free(v376.__r_.__value_.__l.__data_);
          }

          v129 = this + 1656;
          goto LABEL_345;
        }

        if (v370[1])
        {
          v217 = vcnt_s8(v370[1]);
          v217.i16[0] = vaddlv_u8(v217);
          if (v217.u32[0] > 1uLL)
          {
            v218 = v326;
            if (v326 >= v370[1])
            {
              v218 = v326 % v370[1];
            }
          }

          else
          {
            v218 = v326 & (v370[1] - 1);
          }

          v230 = *(v370[0] + v218);
          if (v230)
          {
            v231 = *v230;
            if (*v230)
            {
              do
              {
                v232 = v231[1];
                if (v232 == v326)
                {
                  if (v231[2] == v333)
                  {
                    goto LABEL_344;
                  }
                }

                else
                {
                  if (v217.u32[0] > 1uLL)
                  {
                    if (v232 >= v370[1])
                    {
                      v232 %= v370[1];
                    }
                  }

                  else
                  {
                    v232 &= v370[1] - 1;
                  }

                  if (v232 != v218)
                  {
                    break;
                  }
                }

                v231 = *v231;
              }

              while (v231);
            }
          }
        }

        v233 = *(*(this + 21) + 80);
        if (v233)
        {
          v234 = v233 - 24;
        }

        else
        {
          v234 = 0;
        }

        v235 = *(v234 + 40);
        if (v235)
        {
          v236 = (v235 - 24);
        }

        else
        {
          v236 = 0;
        }

        llvm::IRBuilderBase::SetInsertPoint(&v353[*(*this - 24)], v236);
        v339 = llvm::ArrayType::get(*(v333 + 264), *(v333 + 240));
        v342 = AGCLLVMBuilder::createAllocaInEntryBlock(&v328[*(*this - 24)], v339);
        if (!v370[1])
        {
          goto LABEL_337;
        }

        v237 = vcnt_s8(v370[1]);
        v237.i16[0] = vaddlv_u8(v237);
        if (v237.u32[0] > 1uLL)
        {
          v238 = v326;
          v239 = v333;
          if (v326 >= v370[1])
          {
            v238 = v326 % v370[1];
          }
        }

        else
        {
          v238 = v326 & (v370[1] - 1);
          v239 = v333;
        }

        v240 = *(v370[0] + v238);
        if (!v240 || (v241 = *v240) == 0)
        {
LABEL_337:
          operator new();
        }

        v242 = v241;
        while (1)
        {
          v243 = v242[1];
          if (v243 == v326)
          {
            break;
          }

          if (v237.u32[0] > 1uLL)
          {
            if (v243 >= v370[1])
            {
              v243 %= v370[1];
            }
          }

          else
          {
            v243 &= v370[1] - 1;
          }

          if (v243 != v238)
          {
            goto LABEL_337;
          }

LABEL_336:
          v242 = *v242;
          if (!v242)
          {
            goto LABEL_337;
          }
        }

        if (v242[2] != v239)
        {
          goto LABEL_336;
        }

        v231 = v242;
        if (*(v239 + 240))
        {
          v244 = 0;
          do
          {
            v245 = *(v239 + 232);
            v246 = *(v239 + 24);
            if (v246)
            {
              v247 = *(v239 + 16);
              v248 = &v247[4 * v246];
              v249 = v244;
              do
              {
                v250 = v247[2];
                v251 = v249 / v250;
                v249 %= v250;
                v245 += *(*v247 + 28) * v251;
                v247 += 4;
              }

              while (v247 != v248);
            }

            v252 = *(*this - 24);
            v379.__r_.__value_.__r.__words[0] = llvm::ConstantInt::get();
            v379.__r_.__value_.__l.__size_ = llvm::ConstantInt::get();
            v378[0] = 257;
            llvm::Type::isOpaquePointerTy(*v342);
            v253 = llvm::IRBuilderBase::CreateGEP(&v353[v252], v339, v342, &v379, 2, &v376);
            v254 = AGCLLVMUserObject::replaceArgumentBufferAccesses(AGCLLVMUserObject::IndirectArgumentBufferInfo const*)::$_0::operator()(v365, v245, v333);
            llvm::IRBuilderBase::CreateAlignedStore(&v353[*(*this - 24)], v254, v253, 0, 0);
            v239 = v333;
            ++v244;
          }

          while (v244 < *(v333 + 240));
        }

LABEL_344:
        llvm::IRBuilderBase::SetInsertPoint(&v353[*(*this - 24)], v192);
        v255 = v231[3];
        v256 = &v328[*(*this - 24)];
        v379.__r_.__value_.__r.__words[0] = llvm::ConstantInt::get();
        v379.__r_.__value_.__l.__size_ = AGCArgumentBuffer::Resource::getResourceId(v333, &v353[*(*this - 24)], v155);
        v378[0] = 257;
        v257 = AGCLLVMBuilder::CreateGEP(v256, v255, &v379, 2, &v376);
        v258 = *(*this - 24);
        v378[0] = 257;
        AGCLLVMBuilder::CreateLoad(&v328[v258], v257, &v376);
        llvm::Value::replaceAllUsesWith();
        v129 = this + 1656;
LABEL_345:
        if (v360)
        {
LABEL_346:
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v380, v192);
        }

        v154 = 0;
LABEL_348:
        v138 = v332;
LABEL_349:
        if (v360 != -8192 && v360 != -4096 && v360)
        {
          llvm::ValueHandleBase::RemoveFromUseList(v359);
        }

        if (v154 != 9 && v154)
        {
          v132 = v351;
          goto LABEL_373;
        }

        v189 = v387.__r_.__value_.__r.__words[1];
      }

      while (LODWORD(v387.__r_.__value_.__r.__words[1]));
LABEL_361:
      v376.__r_.__value_.__r.__words[0] = v378;
      v376.__r_.__value_.__l.__size_ = v378;
      v376.__r_.__value_.__r.__words[2] = 8;
      v377 = 0;
      v132 = v351;
      if (LODWORD(v380[1]))
      {
        v261 = (v380[0] + 8 * LODWORD(v380[1]));
        do
        {
          v263 = *--v261;
          v262 = v263;
          if (v263)
          {
            v264 = llvm::SmallPtrSetImpl<llvm::Instruction *>::find(&v376, v262);
            v265 = v376.__r_.__value_.__l.__size_ == v376.__r_.__value_.__r.__words[0] ? (&v376.__r_.__value_.__r.__words[2] + 4) : &v376.__r_.__value_.__r.__words[2];
            if ((v376.__r_.__value_.__l.__size_ + 8 * *v265) == v264)
            {
              llvm::Instruction::eraseFromParent(*v261);
              llvm::SmallPtrSetImpl<void *>::insert(&v379, &v376, *v261);
            }
          }
        }

        while (v261 != v380[0]);
        if (v376.__r_.__value_.__l.__size_ != v376.__r_.__value_.__r.__words[0])
        {
          free(v376.__r_.__value_.__l.__size_);
        }
      }

LABEL_372:
      v154 = 0;
LABEL_373:
      if (v380[0] != v381)
      {
        free(v380[0]);
      }

      if (*&__p[8] != *__p)
      {
        free(*&__p[8]);
      }

      if (v387.__r_.__value_.__l.__data_ != &v387.__r_.__value_.__r.__words[2])
      {
        free(v387.__r_.__value_.__l.__data_);
      }

      if (v154)
      {
        goto LABEL_383;
      }

LABEL_380:
      v266 = *(v333 + 8);
      if (v266 == 9)
      {
        if (v132)
        {
          goto LABEL_484;
        }

        goto LABEL_382;
      }

      if (v266 == 5)
      {
        v267 = v333;
      }

      else
      {
        v267 = 0;
      }

      if (v266 == 6)
      {
        v268 = v333;
      }

      else
      {
        v268 = 0;
      }

      v269 = **(*v155 + 16);
      v343 = v269;
      if (*(v269 + 8) == 15)
      {
        v269 = **(v269 + 16);
      }

      if ((v132 & 1) == 0 && *v347 != 1)
      {
        v154 = 6;
        goto LABEL_383;
      }

      if (v267)
      {
        v386 = 0;
        *&__p[8] = *(v267 + 244);
        v270 = (v267 + 248);
        if (!*(v267 + 252))
        {
          v270 = &RASTER_ORDER_GROUP_NONE;
        }

        v271 = *v270;
        *&__p[16] = 0;
        *&__p[12] = v271;
        v384 = v267;
        v385 = v269;
        _AGCBindingInfo::_AGCBindingInfo(&v376, *(v267 + 236), __val);
        v272 = *(v267 + 240);
        *__p = v376.__r_.__value_.__l.__data_;
        *&__p[4] = v272;
        data = v376.__r_.__value_.__l.__data_;
        std::__tree<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>::__emplace_unique_key_args<AGCLLVMUserObject::Texture,AGCLLVMUserObject::Texture const&>(this + 125, v376.__r_.__value_.__l.__data_, __p);
        *(this + 3858) = 1;
        v273 = 0x9DDFEA08EB382D69 * ((8 * (v267 & 0x1FFFFFFF) + 8) ^ HIDWORD(v267));
        v274 = 0x9DDFEA08EB382D69 * (HIDWORD(v267) ^ (v273 >> 47) ^ v273);
        v275 = 0x9DDFEA08EB382D69 * (v274 ^ (v274 >> 47));
        if (v367[1])
        {
          v276 = vcnt_s8(v367[1]);
          v276.i16[0] = vaddlv_u8(v276);
          if (v276.u32[0] > 1uLL)
          {
            v277 = 0x9DDFEA08EB382D69 * (v274 ^ (v274 >> 47));
            if (v275 >= v367[1])
            {
              v277 = v275 % v367[1];
            }
          }

          else
          {
            v277 = v275 & (v367[1] - 1);
          }

          v279 = *(v367[0] + v277);
          if (v279)
          {
            for (i = *v279; i; i = *i)
            {
              v281 = i[1];
              if (v281 == v275)
              {
                if (i[2] == v267)
                {
                  goto LABEL_427;
                }
              }

              else
              {
                if (v276.u32[0] > 1uLL)
                {
                  if (v281 >= v367[1])
                  {
                    v281 %= v367[1];
                  }
                }

                else
                {
                  v281 &= v367[1] - 1;
                }

                if (v281 != v277)
                {
                  break;
                }
              }
            }
          }
        }

        operator new();
      }

      LOBYTE(v384) = 0;
      *&__p[8] = v268;
      *&__p[16] = v269;
      _AGCBindingInfo::_AGCBindingInfo(&v376, *(v268 + 236), __val);
      v278 = *(v268 + 240);
      *__p = v376.__r_.__value_.__l.__data_;
      *&__p[4] = v278;
      data = v376.__r_.__value_.__l.__data_;
      std::__tree<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>::__emplace_unique_key_args<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::Sampler const&>(this + 128, v376.__r_.__value_.__l.__data_, __p);
      *(this + 3859) = 1;
LABEL_427:
      llvm::IRBuilderBase::SetInsertPoint(&v353[*(*this - 24)], v155);
      ResourceId = AGCArgumentBuffer::Resource::getResourceId(v333, &v353[*(*this - 24)], v155);
      v282 = v155;
      if (v132)
      {
        v282 = llvm::UndefValue::get();
      }

      ResourceIdBounds = AGCArgumentBuffer::Resource::getResourceIdBounds(v333, v155);
      if ((v284 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:nn200100]();
      }

      v359[0] = vadd_s32(vdup_n_s32(data), ResourceIdBounds);
      if (v267)
      {
        v285 = 3192;
      }

      else
      {
        v285 = 3240;
      }

      AGCLLVMUserObject::buildABResourceIntrinsic(this, (this + v285), v343, ResourceId, v359, data, v282);
      llvm::Value::takeName();
      v286 = *(v155 + 1);
LABEL_434:
      if (v286)
      {
        v376.__r_.__value_.__r.__words[0] = &v376.__r_.__value_.__r.__words[2];
        v376.__r_.__value_.__l.__size_ = 0x800000000;
        v387.__r_.__value_.__r.__words[0] = &v387.__r_.__value_.__r.__words[2];
        v387.__r_.__value_.__l.__size_ = 0x800000000;
        *__p = &v385;
        *&__p[8] = &v385;
        *&__p[16] = 8;
        LODWORD(v384) = 0;
        v334 = *(v286 + 1);
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v376, *(v286 + 3));
        v287 = v376.__r_.__value_.__r.__words[1];
        if (!LODWORD(v376.__r_.__value_.__r.__words[1]))
        {
LABEL_456:
          if (LODWORD(v387.__r_.__value_.__r.__words[1]))
          {
            v297 = v387.__r_.__value_.__r.__words[0];
            v298 = v387.__r_.__value_.__r.__words[0] + 8 * LODWORD(v387.__r_.__value_.__r.__words[1]);
            do
            {
              v300 = *(v298 - 8);
              v298 -= 8;
              v299 = v300;
              if (v300)
              {
                llvm::Instruction::eraseFromParent(v299);
                v297 = v387.__r_.__value_.__r.__words[0];
              }
            }

            while (v298 != v297);
          }

          v301 = 1;
          goto LABEL_475;
        }

        v288 = 0;
        while (1)
        {
          v289 = *(v376.__r_.__value_.__r.__words[0] + 8 * v287 - 8);
          LODWORD(v376.__r_.__value_.__r.__words[1]) = v287 - 1;
          v290 = v289[16];
          if (v290 == 83)
          {
            v291 = v289;
          }

          else
          {
            v291 = 0;
          }

          if (v132 && v291)
          {
            llvm::SmallPtrSetImpl<void *>::insert(v380, __p, v289);
            if ((AGCLLVMUserObject::IsPhiInputsEquivalent(v291, v292) & 1) == 0)
            {
              std::to_string(&v357, __val);
              v302 = std::string::insert(&v357, 0, "buffer(");
              v303 = v302->__r_.__value_.__r.__words[2];
              *&v379.__r_.__value_.__l.__data_ = *&v302->__r_.__value_.__l.__data_;
              v379.__r_.__value_.__r.__words[2] = v303;
              v302->__r_.__value_.__l.__size_ = 0;
              v302->__r_.__value_.__r.__words[2] = 0;
              v302->__r_.__value_.__r.__words[0] = 0;
              v304 = std::string::append(&v379, "): Unable to map argument buffer access to resource");
              v305 = v304->__r_.__value_.__r.__words[2];
              *v380 = *&v304->__r_.__value_.__l.__data_;
              v381[0] = v305;
              v304->__r_.__value_.__l.__size_ = 0;
              v304->__r_.__value_.__r.__words[2] = 0;
              v304->__r_.__value_.__r.__words[0] = 0;
              if (v381[0] >= 0)
              {
                v306 = v380;
              }

              else
              {
                v306 = v380[0];
              }

              if (v381[0] >= 0)
              {
                v307 = HIBYTE(v381[0]);
              }

              else
              {
                v307 = v380[1];
              }

              std::string::append((this + *(*this - 24) + 1656), v306, v307);
              if (SHIBYTE(v381[0]) < 0)
              {
                operator delete(v380[0]);
              }

              if (SHIBYTE(v379.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v379.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v357.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v357.__r_.__value_.__l.__data_);
              }

              v301 = 0;
LABEL_475:
              if (*&__p[8] != *__p)
              {
                free(*&__p[8]);
              }

              if (v387.__r_.__value_.__l.__data_ != &v387.__r_.__value_.__r.__words[2])
              {
                free(v387.__r_.__value_.__l.__data_);
              }

              if (v376.__r_.__value_.__l.__data_ != &v376.__r_.__value_.__r.__words[2])
              {
                free(v376.__r_.__value_.__l.__data_);
              }

              v286 = v334;
              if ((v301 & 1) == 0)
              {
                v154 = 1;
                v129 = this + 1656;
                v138 = v332;
                goto LABEL_383;
              }

              goto LABEL_434;
            }

            v293 = *(v291 + 1);
            while (v293)
            {
              v294 = *(v293 + 24);
              v293 = *(v293 + 8);
              v295 = llvm::SmallPtrSetImpl<llvm::Instruction *>::find(__p, v294);
              if (*&__p[8] == *__p)
              {
                v296 = &__p[20];
              }

              else
              {
                v296 = &__p[16];
              }

              if ((*&__p[8] + 8 * *v296) == v295)
              {
                llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v376, v294);
                v288 = 1;
              }
            }

            llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v387, v289);
            v290 = v289[16];
            v132 = v351;
          }

          if (v290 == 60)
          {
            if ((v132 & v288) == 1)
            {
              llvm::IRBuilderBase::SetInsertPoint(&v353[*(*this - 24)], v289);
              AGCLLVMUserObject::buildABResourceIntrinsic(this, (this + v285), v343, ResourceId, v359, data, v282);
            }

            llvm::Value::replaceAllUsesWith();
            llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v387, v289);
          }

          v287 = v376.__r_.__value_.__r.__words[1];
          if (!LODWORD(v376.__r_.__value_.__r.__words[1]))
          {
            goto LABEL_456;
          }
        }
      }

      v129 = this + 1656;
      v138 = v332;
LABEL_484:
      v154 = 0;
      if (v132 && v364)
      {
        llvm::Instruction::eraseFromParent(v142);
        v154 = 0;
      }

LABEL_383:
      v139 = v344;
LABEL_384:
      if (v364 != -8192 && v364 != -4096 && v364)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v363);
      }

      if (v154 <= 4)
      {
        break;
      }

      if (v154 != 6)
      {
        if (v154 != 5)
        {
          goto LABEL_494;
        }

LABEL_488:
        if (++v138 == v331)
        {
LABEL_491:
          if ((v132 & 1) == 0)
          {
            llvm::Value::replaceAllUsesWith();
          }

          v130 = 1;
          goto LABEL_495;
        }

        goto LABEL_157;
      }

LABEL_392:
      v140 = v354;
      if (!v354)
      {
        goto LABEL_488;
      }
    }

    if (!v154)
    {
      goto LABEL_392;
    }

    if (v154 == 2)
    {
      goto LABEL_491;
    }

LABEL_494:
    v130 = 0;
LABEL_495:
    if (v389[0] != v390)
    {
      free(v389[0]);
    }

    v308 = v368[0];
    if (v368[0])
    {
      do
      {
        v309 = *v308;
        operator delete(v308);
        v308 = v309;
      }

      while (v309);
    }

    v310 = v367[0];
    v367[0] = 0;
    if (v310)
    {
      operator delete(v310);
    }

    v311 = v371[0];
    if (v371[0])
    {
      do
      {
        v312 = *v311;
        operator delete(v311);
        v311 = v312;
      }

      while (v312);
    }

    v313 = v370[0];
    v370[0] = 0;
    if (v313)
    {
      operator delete(v313);
    }

    v314 = v374[0];
    if (v374[0])
    {
      do
      {
        v315 = *v314;
        operator delete(v314);
        v314 = v315;
      }

      while (v315);
    }

    v316 = v373[0];
    v373[0] = 0;
    if (v316)
    {
      operator delete(v316);
    }

    v127 = v330;
    v128 = v329;
LABEL_510:
    ++v127;
  }

  while (v127 != v128);
LABEL_513:
  (*(**(this + *(*this - 24) + 2168) + 792))(__p);
  *v355 = *&__p[8];
  v356 = v384;
  if (__p[0])
  {
    std::string::append((this + *(*this - 24) + 1656), "Total number of indirect argument buffer resources exceeded for");
    if (v356 >= 0)
    {
      v317 = v355;
    }

    else
    {
      v317 = v355[0];
    }

    if (v356 >= 0)
    {
      v318 = HIBYTE(v356);
    }

    else
    {
      v318 = v355[1];
    }

    std::string::append((this + *(*this - 24) + 1656), v317, v318);
    goto LABEL_521;
  }

LABEL_522:
  if (SHIBYTE(v356) < 0)
  {
    operator delete(v355[0]);
  }

  return v130;
}

void AGCLLVMGen5TargetLowerer::exceededResourceLimits(AGCLLVMGen5TargetLowerer *this@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X7>, char *a6@<X8>)
{
  std::string::basic_string[abi:nn200100]<0>(&v62, &unk_20E75F419);
  v12 = (*(**(this + 115) + 24))(*(this + 115), a5);
  v13 = (*(**(this + 115) + 16))(*(this + 115));
  v14 = v13;
  if (v12 >= a2)
  {
    if (a4 <= 0x10 && v13 >= a3)
    {
      v28 = 0;
      goto LABEL_80;
    }
  }

  else
  {
    std::to_string(&v56, a2);
    v15 = std::string::insert(&v56, 0, " buffers (");
    v16 = v15->__r_.__value_.__r.__words[2];
    *&v57.__r_.__value_.__l.__data_ = *&v15->__r_.__value_.__l.__data_;
    v57.__r_.__value_.__r.__words[2] = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(&v57, "/");
    v18 = v17->__r_.__value_.__r.__words[2];
    *&v58.__r_.__value_.__l.__data_ = *&v17->__r_.__value_.__l.__data_;
    v58.__r_.__value_.__r.__words[2] = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = (*(**(this + 115) + 24))(*(this + 115), a5);
    std::to_string(&__p, v19);
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

    v22 = std::string::append(&v58, p_p, size);
    v23 = v22->__r_.__value_.__r.__words[2];
    *&v59.__r_.__value_.__l.__data_ = *&v22->__r_.__value_.__l.__data_;
    v59.__r_.__value_.__r.__words[2] = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = std::string::append(&v59, ")");
    v25 = v24->__r_.__value_.__r.__words[2];
    v60 = *&v24->__r_.__value_.__l.__data_;
    v61 = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    if (v61 >= 0)
    {
      v26 = &v60;
    }

    else
    {
      v26 = v60;
    }

    if (v61 >= 0)
    {
      v27 = HIBYTE(v61);
    }

    else
    {
      v27 = *(&v60 + 1);
    }

    std::string::append(&v62, v26, v27);
    if (SHIBYTE(v61) < 0)
    {
      operator delete(v60);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }
  }

  if (v14 < a3)
  {
    std::to_string(&v56, a3);
    v29 = std::string::insert(&v56, 0, " textures (");
    v30 = v29->__r_.__value_.__r.__words[2];
    *&v57.__r_.__value_.__l.__data_ = *&v29->__r_.__value_.__l.__data_;
    v57.__r_.__value_.__r.__words[2] = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    v31 = std::string::append(&v57, "/");
    v32 = v31->__r_.__value_.__r.__words[2];
    *&v58.__r_.__value_.__l.__data_ = *&v31->__r_.__value_.__l.__data_;
    v58.__r_.__value_.__r.__words[2] = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    v33 = (*(**(this + 115) + 16))(*(this + 115));
    std::to_string(&__p, v33);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = &__p;
    }

    else
    {
      v34 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v35 = __p.__r_.__value_.__l.__size_;
    }

    v36 = std::string::append(&v58, v34, v35);
    v37 = v36->__r_.__value_.__r.__words[2];
    *&v59.__r_.__value_.__l.__data_ = *&v36->__r_.__value_.__l.__data_;
    v59.__r_.__value_.__r.__words[2] = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    v38 = std::string::append(&v59, ")");
    v39 = v38->__r_.__value_.__r.__words[2];
    v60 = *&v38->__r_.__value_.__l.__data_;
    v61 = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    if (v61 >= 0)
    {
      v40 = &v60;
    }

    else
    {
      v40 = v60;
    }

    if (v61 >= 0)
    {
      v41 = HIBYTE(v61);
    }

    else
    {
      v41 = *(&v60 + 1);
    }

    std::string::append(&v62, v40, v41);
    if (SHIBYTE(v61) < 0)
    {
      operator delete(v60);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }
  }

  if (a4 >= 0x11)
  {
    std::to_string(&v56, a4);
    v42 = std::string::insert(&v56, 0, " samplers (");
    v43 = v42->__r_.__value_.__r.__words[2];
    *&v57.__r_.__value_.__l.__data_ = *&v42->__r_.__value_.__l.__data_;
    v57.__r_.__value_.__r.__words[2] = v43;
    v42->__r_.__value_.__l.__size_ = 0;
    v42->__r_.__value_.__r.__words[2] = 0;
    v42->__r_.__value_.__r.__words[0] = 0;
    v44 = std::string::append(&v57, "/");
    v45 = v44->__r_.__value_.__r.__words[2];
    *&v58.__r_.__value_.__l.__data_ = *&v44->__r_.__value_.__l.__data_;
    v58.__r_.__value_.__r.__words[2] = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, 16);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v46 = &__p;
    }

    else
    {
      v46 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v47 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v47 = __p.__r_.__value_.__l.__size_;
    }

    v48 = std::string::append(&v58, v46, v47);
    v49 = v48->__r_.__value_.__r.__words[2];
    *&v59.__r_.__value_.__l.__data_ = *&v48->__r_.__value_.__l.__data_;
    v59.__r_.__value_.__r.__words[2] = v49;
    v48->__r_.__value_.__l.__size_ = 0;
    v48->__r_.__value_.__r.__words[2] = 0;
    v48->__r_.__value_.__r.__words[0] = 0;
    v50 = std::string::append(&v59, ")");
    v51 = v50->__r_.__value_.__r.__words[2];
    v60 = *&v50->__r_.__value_.__l.__data_;
    v61 = v51;
    v50->__r_.__value_.__l.__size_ = 0;
    v50->__r_.__value_.__r.__words[2] = 0;
    v50->__r_.__value_.__r.__words[0] = 0;
    if (v61 >= 0)
    {
      v52 = &v60;
    }

    else
    {
      v52 = v60;
    }

    if (v61 >= 0)
    {
      v53 = HIBYTE(v61);
    }

    else
    {
      v53 = *(&v60 + 1);
    }

    std::string::append(&v62, v52, v53);
    if (SHIBYTE(v61) < 0)
    {
      operator delete(v60);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }
  }

  v28 = 1;
LABEL_80:
  *a6 = v28;
  v54 = (a6 + 8);
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v54, v62.__r_.__value_.__l.__data_, v62.__r_.__value_.__l.__size_);
    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *v54 = v62;
  }
}

uint64_t AGCBindPointLayoutT<AGX::BindPointLayout<128,31,4,128,500000,500000,true>>::getRenderMaxAPIBindPointsBuffer(uint64_t a1, int a2)
{
  if (a2)
  {
    return 35;
  }

  else
  {
    return 31;
  }
}

double llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t>>,llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t>>::FindAndConstruct(void *a1, uint64_t *a2)
{
  v10 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t>>,llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t>>::LookupBucketFor<llvm::Function const*>(*a1, *(a1 + 4), *a2, &v10);
  v6 = v10;
  if (v4)
  {
    return result;
  }

  v7 = *(a1 + 2);
  v8 = *(a1 + 4);
  if (4 * v7 + 4 >= 3 * v8)
  {
    v8 *= 2;
    goto LABEL_9;
  }

  if (v8 + ~v7 - *(a1 + 3) <= v8 >> 3)
  {
LABEL_9:
    llvm::DenseMap<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t>>::grow(a1, v8);
    v10 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t>>,llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t>>::LookupBucketFor<llvm::Function const*>(*a1, *(a1 + 4), *a2, &v10);
    v6 = v10;
  }

  ++*(a1 + 2);
  if (*v6 != -4096)
  {
    --*(a1 + 3);
  }

  v9 = *a2;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 120) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 264) = 0u;
  *(v6 + 280) = 0u;
  *v6 = v9;
  *(v6 + 8) = v6 + 24;
  *&result = 0x400000000;
  *(v6 + 16) = 0x400000000;
  *(v6 + 56) = v6 + 72;
  *(v6 + 68) = 4;
  *(v6 + 104) = v6 + 120;
  *(v6 + 116) = 4;
  *(v6 + 152) = v6 + 168;
  *(v6 + 164) = 4;
  *(v6 + 200) = v6 + 216;
  *(v6 + 212) = 4;
  *(v6 + 248) = v6 + 264;
  *(v6 + 260) = 4;
  return result;
}

uint64_t *llvm::DenseMap<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t>>::grow(uint64_t **a1, int a2)
{
  v3 = *(a1 + 4);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 4) = v8;
  result = MEMORY[0x20F330650](v8, 296 * v8, 8);
  *a1 = result;
  if (v4)
  {
    a1[1] = 0;
    v10 = *(a1 + 4);
    if (v10)
    {
      v11 = 0;
      v12 = 296 * v10 - 296;
      v13 = vdupq_n_s64(v12 / 0x128);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_20E70C4F0)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[37] = -4096;
        }

        v11 += 2;
        result += 74;
      }

      while (((v12 / 0x128 + 2) & 0x1FFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = 0;
      do
      {
        v16 = v4 + v15;
        v17 = *(v4 + v15);
        if ((v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v39 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t>>,llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t>>::LookupBucketFor<llvm::Function const*>(*a1, *(a1 + 4), v17, &v39);
          v18 = v39;
          *v39 = *v16;
          *(v18 + 1) = v18 + 24;
          *(v18 + 2) = 0x400000000;
          if (*(v16 + 4))
          {
            llvm::SmallVectorImpl<llvm::MDNode *>::operator=((v18 + 8), (v16 + 8));
          }

          *(v18 + 7) = v18 + 72;
          *(v18 + 8) = 0x400000000;
          v19 = v4 + v15;
          if (*(v4 + v15 + 64))
          {
            llvm::SmallVectorImpl<llvm::MDNode *>::operator=((v18 + 56), (v19 + 56));
          }

          *(v18 + 13) = v18 + 120;
          *(v18 + 14) = 0x400000000;
          if (*(v19 + 28))
          {
            llvm::SmallVectorImpl<llvm::MDNode *>::operator=((v18 + 104), v4 + v15 + 104);
          }

          *(v18 + 19) = v18 + 168;
          *(v18 + 20) = 0x400000000;
          v20 = v4 + v15;
          if (*(v4 + v15 + 160))
          {
            llvm::SmallVectorImpl<llvm::MDNode *>::operator=((v18 + 152), (v20 + 152));
          }

          *(v18 + 25) = v18 + 216;
          *(v18 + 26) = 0x400000000;
          if (*(v20 + 52))
          {
            llvm::SmallVectorImpl<llvm::MDNode *>::operator=((v18 + 200), v4 + v15 + 200);
          }

          *(v18 + 31) = v18 + 264;
          *(v18 + 32) = 0x400000000;
          v21 = v4 + v15;
          v22 = *(v4 + v15 + 256);
          if (v22 && v16 != v18)
          {
            v23 = *(v21 + 31);
            v24 = v4 + v15 + 264;
            if (v24 == v23)
            {
              if (v22 >= 5)
              {
                *(v18 + 64) = 0;
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              memcpy(*(v18 + 31), *(v21 + 31), 8 * *(v4 + v15 + 256));
              *(v18 + 64) = v22;
              *(v21 + 64) = 0;
            }

            else
            {
              v25 = *(v21 + 32);
              *(v18 + 31) = v23;
              *(v18 + 32) = v25;
              *(v21 + 31) = v24;
              *(v21 + 32) = 0;
            }
          }

          ++*(a1 + 2);
          v26 = *(v21 + 31);
          if (v21 + 264 != v26)
          {
            free(v26);
          }

          v27 = v4 + v15;
          v28 = *(v4 + v15 + 200);
          if (v4 + v15 + 216 != v28)
          {
            free(v28);
          }

          v29 = *(v27 + 19);
          if (v27 + 168 != v29)
          {
            free(v29);
          }

          v30 = v4 + v15;
          v31 = *(v4 + v15 + 104);
          if (v4 + v15 + 120 != v31)
          {
            free(v31);
          }

          v32 = *(v30 + 7);
          if (v30 + 72 != v32)
          {
            free(v32);
          }

          v33 = *(v16 + 1);
          if (v4 + v15 + 24 != v33)
          {
            free(v33);
          }
        }

        v15 += 296;
      }

      while (296 * v3 != v15);
    }

    return llvm::deallocate_buffer(0x128, v4, (296 * v3));
  }

  else
  {
    a1[1] = 0;
    v34 = *(a1 + 4);
    if (v34)
    {
      v35 = 0;
      v36 = 296 * v34 - 296;
      v37 = vdupq_n_s64(v36 / 0x128);
      do
      {
        v38 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(vdupq_n_s64(v35), xmmword_20E70C4F0)));
        if (v38.i8[0])
        {
          *result = -4096;
        }

        if (v38.i8[4])
        {
          result[37] = -4096;
        }

        v35 += 2;
        result += 74;
      }

      while (((v36 / 0x128 + 2) & 0x1FFFFFFFFFFFFFELL) != v35);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t>>,llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t>>::LookupBucketFor<llvm::Function const*>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 296 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 296 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

void std::__introsort<std::_ClassicAlgPolicy,AGCLLVMUserObject::createTlsGlobalsConstructor(void)::$_0 &,std::tuple<std::string,unsigned int,unsigned int> *,false>(uint64_t a1, void **a2, uint64_t a3, char a4)
{
  while (2)
  {
    v7 = a2 - 1;
    v229 = a2 - 1;
    v230 = (a2 - 4);
    v227 = a2 - 5;
    v228 = a2 - 8;
    v231 = a2 - 17;
    v232 = a2 - 9;
    v225 = a2 - 9;
    v226 = a2 - 12;
    v8 = a1;
    v235 = a2;
    v233 = a2 - 4;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v8;
          v9 = (a2 - v8) >> 5;
          v10 = v9 - 2;
          if (v9 > 2)
          {
            switch(v9)
            {
              case 3:
                v154 = (a1 + 60);
                v155 = *(a1 + 60);
                v156 = (a1 + 32);
                v157 = (a1 + 28);
                v158 = *(a1 + 28);
                v159 = *v7;
                if (v155 <= v158)
                {
                  if (v159 <= v155)
                  {
                    return;
                  }

                  v209 = *v156;
                  v293 = *(a1 + 48);
                  v210 = v230[1].n128_u64[0];
                  *v156 = *v230;
                  *(a1 + 48) = v210;
                  v230[1].n128_u64[0] = v293;
                  *v230 = v209;
                  LODWORD(v210) = *(a1 + 56);
                  *(a1 + 56) = *v229;
                  *v229 = v210;
                  LODWORD(v210) = *(a1 + 60);
                  *(a1 + 60) = *v7;
                  *v7 = v210;
                  if (*(a1 + 60) <= *(a1 + 28))
                  {
                    return;
                  }

                  v294 = *(a1 + 16);
                  v266 = *a1;
                  *a1 = *v156;
                  *(a1 + 16) = *(a1 + 48);
                  *v156 = v266;
                  *(a1 + 48) = v294;
                  v160 = (a1 + 24);
                  v229 = (a1 + 56);
                }

                else
                {
                  if (v159 <= v155)
                  {
                    v295 = *(a1 + 16);
                    v268 = *a1;
                    *a1 = *v156;
                    *(a1 + 16) = *(a1 + 48);
                    *v156 = v268;
                    *(a1 + 48) = v295;
                    v218 = *(a1 + 56);
                    v217 = (a1 + 56);
                    v219 = *(v217 - 8);
                    *(v217 - 8) = v218;
                    *(v217 - 7) = v155;
                    *v217 = v219;
                    v217[1] = v158;
                    if (*v7 <= v158)
                    {
                      return;
                    }

                    v220 = *v156;
                    v221 = v156[1].n128_u64[0];
                    v222 = v230[1].n128_u64[0];
                    *v156 = *v230;
                    v156[1].n128_u64[0] = v222;
                    v230[1].n128_u64[0] = v221;
                    *v230 = v220;
                    v160 = v217;
                    v157 = v154;
                  }

                  else
                  {
                    v160 = (a1 + 24);
                    v292 = *(a1 + 16);
                    v262 = *a1;
                    v161 = *v230;
                    *(a1 + 16) = v230[1].n128_u64[0];
                    *a1 = v161;
                    v230[1].n128_u64[0] = v292;
                    *v230 = v262;
                  }

                  v154 = v7;
                }

                v223 = *v160;
                *v160 = *v229;
                *v229 = v223;
                v224 = *v157;
                *v157 = *v154;
                *v154 = v224;
                return;
              case 4:

                std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,AGCLLVMUserObject::createTlsGlobalsConstructor(void)::$_0 &,std::tuple<std::string,unsigned int,unsigned int> *,0>(a1, (a1 + 32), (a1 + 64), v230);
                return;
              case 5:
                std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,AGCLLVMUserObject::createTlsGlobalsConstructor(void)::$_0 &,std::tuple<std::string,unsigned int,unsigned int> *,0>(a1, (a1 + 32), (a1 + 64), (a1 + 96));
                if (*v7 > *(a1 + 124))
                {
                  v137 = *(a1 + 96);
                  v138 = *(a1 + 112);
                  v139 = v230[1].n128_u64[0];
                  *(a1 + 96) = *v230;
                  *(a1 + 112) = v139;
                  v230[1].n128_u64[0] = v138;
                  *v230 = v137;
                  LODWORD(v138) = *(a1 + 120);
                  *(a1 + 120) = *v229;
                  *v229 = v138;
                  LODWORD(v138) = *(a1 + 124);
                  *(a1 + 124) = *v7;
                  *v7 = v138;
                  v140 = *(a1 + 124);
                  v141 = *(a1 + 92);
                  if (v140 > v141)
                  {
                    v142 = *(a1 + 80);
                    v143 = *(a1 + 64);
                    *(a1 + 64) = *(a1 + 96);
                    *(a1 + 80) = *(a1 + 112);
                    *(a1 + 96) = v143;
                    *(a1 + 112) = v142;
                    v144 = *(a1 + 88);
                    v145 = *(a1 + 120);
                    *(a1 + 88) = v145;
                    *(a1 + 92) = v140;
                    *(a1 + 120) = v144;
                    *(a1 + 124) = v141;
                    v146 = *(a1 + 60);
                    if (v140 > v146)
                    {
                      v147 = *(a1 + 48);
                      v148 = *(a1 + 32);
                      *(a1 + 32) = *(a1 + 64);
                      *(a1 + 48) = *(a1 + 80);
                      *(a1 + 64) = v148;
                      *(a1 + 80) = v147;
                      LODWORD(v147) = *(a1 + 56);
                      *(a1 + 56) = v145;
                      *(a1 + 60) = v140;
                      *(a1 + 88) = v147;
                      *(a1 + 92) = v146;
                      v149 = *(a1 + 28);
                      if (v140 > v149)
                      {
                        v290 = *(a1 + 16);
                        v260 = *a1;
                        *a1 = *(a1 + 32);
                        *(a1 + 16) = *(a1 + 48);
                        *(a1 + 32) = v260;
                        *(a1 + 48) = v290;
                        v150 = *(a1 + 24);
                        *(a1 + 24) = v145;
                        *(a1 + 28) = v140;
                        *(a1 + 56) = v150;
                        *(a1 + 60) = v149;
                      }
                    }
                  }
                }

                return;
            }
          }

          else
          {
            if (v9 < 2)
            {
              return;
            }

            if (v9 == 2)
            {
              if (*v7 > *(a1 + 28))
              {
                v291 = *(a1 + 16);
                v261 = *a1;
                v151 = *v230;
                *(a1 + 16) = v230[1].n128_u64[0];
                *a1 = v151;
                v230[1].n128_u64[0] = v291;
                *v230 = v261;
                v152 = *(a1 + 24);
                *(a1 + 24) = *v229;
                *v229 = v152;
                v153 = *(a1 + 28);
                *(a1 + 28) = *v7;
                *v7 = v153;
              }

              return;
            }
          }

          if (v9 <= 23)
          {
            v162 = (a1 + 32);
            v164 = a1 == a2 || v162 == a2;
            if (a4)
            {
              if (!v164)
              {
                v165 = 0;
                v166 = a1;
                do
                {
                  v167 = v162;
                  v168 = *(v166 + 60);
                  if (v168 > *(v166 + 28))
                  {
                    v169 = *v162;
                    *v263 = *(v166 + 40);
                    *&v263[7] = *(v166 + 47);
                    v170 = *(v166 + 55);
                    v162[1] = 0;
                    v162[2] = 0;
                    *v162 = 0;
                    v171 = *(v166 + 56);
                    v172 = v165;
                    while (1)
                    {
                      std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(a1 + v172 + 32, (a1 + v172));
                      if (!v172)
                      {
                        break;
                      }

                      v173 = *(a1 + v172 - 4);
                      v172 -= 32;
                      if (v168 <= v173)
                      {
                        v174 = a1 + v172 + 32;
                        goto LABEL_141;
                      }
                    }

                    v174 = a1;
LABEL_141:
                    if (*(v174 + 23) < 0)
                    {
                      operator delete(*v174);
                    }

                    *v174 = v169;
                    *(v174 + 8) = *v263;
                    *(v174 + 15) = *&v263[7];
                    *(v174 + 23) = v170;
                    *(v174 + 24) = v171;
                    *(v174 + 28) = v168;
                  }

                  v162 = v167 + 4;
                  v165 += 32;
                  v166 = v167;
                }

                while (v167 + 4 != a2);
              }
            }

            else if (!v164)
            {
              do
              {
                v211 = v162;
                v212 = *(a1 + 60);
                if (v212 > *(a1 + 28))
                {
                  v213 = *v162;
                  *v267 = *(a1 + 40);
                  *&v267[7] = *(a1 + 47);
                  v214 = *(a1 + 55);
                  v162[1] = 0;
                  v162[2] = 0;
                  *v162 = 0;
                  v215 = *(a1 + 56);
                  do
                  {
                    v216 = a1;
                    std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(a1 + 32, a1);
                    a1 -= 32;
                  }

                  while (v212 > *(v216 - 4));
                  if (*(v216 + 23) < 0)
                  {
                    operator delete(*v216);
                  }

                  *v216 = v213;
                  *(v216 + 15) = *&v267[7];
                  *(v216 + 8) = *v267;
                  *(v216 + 23) = v214;
                  *(v216 + 24) = v215;
                  *(v216 + 28) = v212;
                }

                v162 = (v211 + 32);
                a1 = v211;
              }

              while ((v211 + 32) != a2);
            }

            return;
          }

          if (!a3)
          {
            if (a1 != a2)
            {
              v175 = v10 >> 1;
              v176 = v10 >> 1;
              do
              {
                v177 = v176;
                if (v175 >= v176)
                {
                  v178 = (2 * v176) | 1;
                  v179 = (a1 + 32 * v178);
                  if (2 * v177 + 2 < v9)
                  {
                    v180 = v179[1].n128_u32[3] > v179[3].n128_u32[3];
                    v179 += 2 * v180;
                    if (v180)
                    {
                      v178 = 2 * v177 + 2;
                    }
                  }

                  v181 = (a1 + 32 * v177);
                  v182 = v181[1].n128_u32[3];
                  if (v179[1].n128_u32[3] <= v182)
                  {
                    v183 = v181->n128_u64[0];
                    *&v264[7] = *(&v181->n128_u64[1] + 7);
                    *v264 = v181->n128_u64[1];
                    v184 = v181[1].n128_u8[7];
                    v181->n128_u64[0] = 0;
                    v181->n128_u64[1] = 0;
                    v181[1].n128_u64[0] = 0;
                    v185 = v181[1].n128_u32[2];
                    do
                    {
                      v186 = v181;
                      v181 = v179;
                      std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(v186, v179);
                      if (v175 < v178)
                      {
                        break;
                      }

                      v187 = (2 * v178) | 1;
                      v179 = (a1 + 32 * v187);
                      if (2 * v178 + 2 < v9)
                      {
                        v180 = v179[1].n128_u32[3] > v179[3].n128_u32[3];
                        v179 += 2 * v180;
                        if (v180)
                        {
                          v187 = 2 * v178 + 2;
                        }
                      }

                      v178 = v187;
                    }

                    while (v179[1].n128_u32[3] <= v182);
                    if (v181[1].n128_i8[7] < 0)
                    {
                      operator delete(v181->n128_u64[0]);
                    }

                    v181->n128_u64[0] = v183;
                    v181->n128_u64[1] = *v264;
                    *(&v181->n128_u64[1] + 7) = *&v264[7];
                    v181[1].n128_u8[7] = v184;
                    v181[1].n128_u32[2] = v185;
                    v181[1].n128_u32[3] = v182;
                    a2 = v235;
                  }
                }

                v176 = v177 - 1;
              }

              while (v177);
              do
              {
                v188 = 0;
                v189 = a2;
                v190 = *a1;
                *v238 = *(a1 + 8);
                *&v238[7] = *(a1 + 15);
                v191 = *(a1 + 23);
                *(a1 + 8) = 0;
                *(a1 + 16) = 0;
                *a1 = 0;
                v192 = a1;
                v194 = *(a1 + 24);
                v193 = *(a1 + 28);
                do
                {
                  v195 = v192 + 32 * v188;
                  v196 = v195 + 32;
                  if (2 * v188 + 2 >= v9)
                  {
                    v188 = (2 * v188) | 1;
                  }

                  else
                  {
                    v197 = *(v195 + 60);
                    v198 = *(v195 + 92);
                    v199 = v195 + 64;
                    if (v197 <= v198)
                    {
                      v188 = (2 * v188) | 1;
                    }

                    else
                    {
                      v196 = v199;
                      v188 = 2 * v188 + 2;
                    }
                  }

                  std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(v192, v196);
                  v192 = v196;
                }

                while (v188 <= ((v9 - 2) >> 1));
                a2 -= 4;
                if (v196 == v189 - 4)
                {
                  if (*(v196 + 23) < 0)
                  {
                    operator delete(*v196);
                  }

                  *v196 = v190;
                  *(v196 + 8) = *v238;
                  *(v196 + 15) = *&v238[7];
                  *(v196 + 23) = v191;
                  *(v196 + 24) = v194;
                  *(v196 + 28) = v193;
                }

                else
                {
                  std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(v196, v189 - 2);
                  if (*(v189 - 9) < 0)
                  {
                    operator delete(*a2);
                  }

                  *(v189 - 4) = v190;
                  *(v189 - 17) = *&v238[7];
                  *(v189 - 3) = *v238;
                  *(v189 - 9) = v191;
                  *(v189 - 2) = v194;
                  *(v189 - 1) = v193;
                  v200 = (v196 + 32 - a1) >> 5;
                  v180 = v200 < 2;
                  v201 = v200 - 2;
                  if (!v180)
                  {
                    v202 = v201 >> 1;
                    v203 = (a1 + 32 * (v201 >> 1));
                    v204 = *(v196 + 28);
                    if (v203[1].n128_u32[3] > v204)
                    {
                      v205 = *v196;
                      *v265 = *(v196 + 8);
                      *&v265[7] = *(v196 + 15);
                      v206 = *(v196 + 23);
                      *(v196 + 8) = 0;
                      *(v196 + 16) = 0;
                      *v196 = 0;
                      v207 = *(v196 + 24);
                      do
                      {
                        v208 = v196;
                        v196 = v203;
                        std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(v208, v203);
                        if (!v202)
                        {
                          break;
                        }

                        v202 = (v202 - 1) >> 1;
                        v203 = (a1 + 32 * v202);
                      }

                      while (v203[1].n128_u32[3] > v204);
                      if (*(v196 + 23) < 0)
                      {
                        operator delete(*v196);
                      }

                      *v196 = v205;
                      *(v196 + 8) = *v265;
                      *(v196 + 15) = *&v265[7];
                      *(v196 + 23) = v206;
                      *(v196 + 24) = v207;
                      *(v196 + 28) = v204;
                    }
                  }
                }

                v180 = v9-- <= 2;
              }

              while (!v180);
            }

            return;
          }

          v11 = (a1 + 32 * (v9 >> 1));
          v12 = *v7;
          if (v9 >= 0x81)
          {
            v13 = &v11[1].n128_u32[3];
            v14 = v11[1].n128_u32[3];
            v15 = (a1 + 28);
            v16 = *(a1 + 28);
            if (v14 <= v16)
            {
              if (v12 <= v14 || (v271 = v11[1].n128_u64[0], v241 = *v11, v25 = *v230, v11[1].n128_u64[0] = v230[1].n128_u64[0], *v11 = v25, v230[1].n128_u64[0] = v271, *v230 = v241, v19 = &v11[1].n128_u32[2], v26 = v11[1].n128_i32[2], v11[1].n128_u32[2] = *v229, *v229 = v26, v27 = v11[1].n128_u32[3], v11[1].n128_u32[3] = *v7, *v7 = v27, v11[1].n128_u32[3] <= *v15))
              {
LABEL_28:
                v39 = &v11[-1].n128_u32[3];
                v40 = v11[-1].n128_u32[3];
                v41 = v11 - 2;
                v42 = (a1 + 60);
                v43 = *(a1 + 60);
                v44 = *v232;
                if (v40 <= v43)
                {
                  if (v44 <= v40 || (v277 = v11[-1].n128_u64[0], v247 = *v41, v50 = *v228, v11[-1].n128_u64[0] = v228[2], *v41 = v50, v228[2] = v277, *v228 = v247, v49 = &v11[-1].n128_u32[2], v51 = v11[-1].n128_i32[2], v11[-1].n128_u32[2] = *v227, *v227 = v51, v52 = v11[-1].n128_u32[3], v11[-1].n128_u32[3] = *v232, *v232 = v52, v11[-1].n128_u32[3] <= *v42))
                  {
LABEL_41:
                    v68 = &v11[3].n128_u32[3];
                    v67 = v11[3].n128_u32[3];
                    v69 = v11 + 2;
                    v70 = (a1 + 92);
                    v71 = *(a1 + 92);
                    v72 = *v231;
                    if (v67 <= v71)
                    {
                      if (v72 <= v67 || (v281 = v11[3].n128_u64[0], v251 = *v69, v78 = *v226, v11[3].n128_u64[0] = v226[2], *v69 = v78, v226[2] = v281, *v226 = v251, v77 = &v11[3].n128_u32[2], v79 = v11[3].n128_i32[2], v11[3].n128_u32[2] = *v225, *v225 = v79, v80 = v11[3].n128_u32[3], v11[3].n128_u32[3] = *v231, *v231 = v80, v67 = v11[3].n128_u32[3], v67 <= *v70))
                      {
LABEL_51:
                        v91 = *v13;
                        if (*v13 <= *v39)
                        {
                          if (v67 <= v91)
                          {
                            goto LABEL_60;
                          }

                          v284 = v11[1].n128_i64[0];
                          v254 = *v11;
                          *v11 = *v69;
                          v11[1].n128_u64[0] = v11[3].n128_u64[0];
                          v11[3].n128_u64[0] = v284;
                          *v69 = v254;
                          v93 = &v11[1].n128_u32[2];
                          v94 = v11[1].n128_i64[1];
                          v95 = v11[3].n128_u32[3];
                          v11[1].n128_u32[2] = v11[3].n128_u32[2];
                          v11[1].n128_u32[3] = v95;
                          v11[3].n128_u64[1] = v94;
                          if (v95 <= *v39)
                          {
                            goto LABEL_60;
                          }

                          v285 = v11[-1].n128_i64[0];
                          v255 = *v41;
                          *v41 = *v11;
                          v11[-1].n128_u64[0] = v11[1].n128_u64[0];
                          v11[1].n128_u64[0] = v285;
                          *v11 = v255;
                          v92 = &v11[-1].n128_u32[2];
                          v68 = &v11[1].n128_u32[3];
                        }

                        else if (v67 <= v91)
                        {
                          v286 = v11[-1].n128_i64[0];
                          v256 = *v41;
                          *v41 = *v11;
                          v11[-1].n128_u64[0] = v11[1].n128_u64[0];
                          v11[1].n128_u64[0] = v286;
                          *v11 = v256;
                          v92 = &v11[1].n128_u32[2];
                          v96 = v11[-1].n128_i32[2];
                          v97 = v11[-1].n128_u32[3];
                          v11[-1].n128_u64[1] = v11[1].n128_u64[1];
                          v11[1].n128_u32[2] = v96;
                          v11[1].n128_u32[3] = v97;
                          if (*v68 <= v97)
                          {
LABEL_60:
                            v288 = *(a1 + 16);
                            v258 = *a1;
                            v100 = *v11;
                            *(a1 + 16) = v11[1].n128_u64[0];
                            *a1 = v100;
                            v11[1].n128_u64[0] = v288;
                            *v11 = v258;
                            v22 = (a1 + 24);
                            v23 = &v11[1].n128_u32[2];
                            goto LABEL_61;
                          }

                          v287 = v11[1].n128_i64[0];
                          v257 = *v11;
                          *v11 = *v69;
                          v11[1].n128_u64[0] = v11[3].n128_u64[0];
                          v11[3].n128_u64[0] = v287;
                          *v69 = v257;
                          v93 = &v11[3].n128_u32[2];
                          v39 = &v11[1].n128_u32[3];
                        }

                        else
                        {
                          v92 = &v11[-1].n128_u32[2];
                          v283 = v11[-1].n128_i64[0];
                          v253 = *v41;
                          *v41 = *v69;
                          v11[-1].n128_u64[0] = v11[3].n128_u64[0];
                          v11[3].n128_u64[0] = v283;
                          *v69 = v253;
                          v93 = &v11[3].n128_u32[2];
                        }

                        v98 = *v92;
                        *v92 = *v93;
                        *v93 = v98;
                        v99 = *v39;
                        *v39 = *v68;
                        *v68 = v99;
                        goto LABEL_60;
                      }

                      v81 = *(a1 + 64);
                      v82 = *(a1 + 80);
                      v83 = v11[3].n128_i64[0];
                      *(a1 + 64) = *v69;
                      *(a1 + 80) = v83;
                      v11[3].n128_u64[0] = v82;
                      *v69 = v81;
                      v73 = (a1 + 88);
                      v84 = &v11[3].n128_u32[3];
                    }

                    else
                    {
                      v73 = (a1 + 88);
                      if (v72 <= v67)
                      {
                        v85 = *(a1 + 64);
                        v86 = *(a1 + 80);
                        v87 = v11[3].n128_i64[0];
                        *(a1 + 64) = *v69;
                        *(a1 + 80) = v87;
                        v11[3].n128_u64[0] = v86;
                        *v69 = v85;
                        LODWORD(v87) = *v73;
                        *v73 = v11[3].n128_u64[1];
                        v11[3].n128_u32[2] = v87;
                        v11[3].n128_u32[3] = v71;
                        v67 = v71;
                        if (*v231 <= v71)
                        {
                          goto LABEL_51;
                        }

                        v282 = v11[3].n128_u64[0];
                        v252 = *v69;
                        v88 = *v226;
                        v11[3].n128_u64[0] = v226[2];
                        *v69 = v88;
                        v226[2] = v282;
                        *v226 = v252;
                        v73 = &v11[3].n128_u32[2];
                        v77 = v225;
                        v70 = &v11[3].n128_u32[3];
                      }

                      else
                      {
                        v74 = *(a1 + 64);
                        v75 = *(a1 + 80);
                        v76 = v226[2];
                        *(a1 + 64) = *v226;
                        *(a1 + 80) = v76;
                        v226[2] = v75;
                        *v226 = v74;
                        v77 = v225;
                      }

                      v84 = v231;
                    }

                    v89 = *v73;
                    *v73 = *v77;
                    *v77 = v89;
                    v90 = *v70;
                    *v70 = *v84;
                    *v84 = v90;
                    v67 = *v68;
                    goto LABEL_51;
                  }

                  v53 = *(a1 + 32);
                  v54 = *(a1 + 48);
                  v55 = v11[-1].n128_i64[0];
                  *(a1 + 32) = *v41;
                  *(a1 + 48) = v55;
                  v11[-1].n128_u64[0] = v54;
                  *v41 = v53;
                  v45 = (a1 + 56);
                  v56 = &v11[-1].n128_u32[3];
                }

                else
                {
                  v45 = (a1 + 56);
                  if (v44 <= v40)
                  {
                    v61 = *(a1 + 32);
                    v62 = *(a1 + 48);
                    v63 = v11[-1].n128_i64[0];
                    *(a1 + 32) = *v41;
                    *(a1 + 48) = v63;
                    v11[-1].n128_u64[0] = v62;
                    *v41 = v61;
                    LODWORD(v63) = *v45;
                    *v45 = v11[-1].n128_u64[1];
                    v11[-1].n128_u32[2] = v63;
                    v11[-1].n128_u32[3] = v43;
                    if (*v232 <= v43)
                    {
                      goto LABEL_41;
                    }

                    v280 = v11[-1].n128_u64[0];
                    v250 = *v41;
                    v64 = *v228;
                    v11[-1].n128_u64[0] = v228[2];
                    *v41 = v64;
                    v228[2] = v280;
                    *v228 = v250;
                    v45 = &v11[-1].n128_u32[2];
                    v49 = v227;
                    v42 = &v11[-1].n128_i32[3];
                  }

                  else
                  {
                    v46 = *(a1 + 32);
                    v47 = *(a1 + 48);
                    v48 = v228[2];
                    *(a1 + 32) = *v228;
                    *(a1 + 48) = v48;
                    v228[2] = v47;
                    *v228 = v46;
                    v49 = v227;
                  }

                  v56 = v232;
                }

                v65 = *v45;
                *v45 = *v49;
                *v49 = v65;
                v66 = *v42;
                *v42 = *v56;
                *v56 = v66;
                goto LABEL_41;
              }

              v272 = *(a1 + 16);
              v242 = *a1;
              v28 = *v11;
              *(a1 + 16) = v11[1].n128_u64[0];
              *a1 = v28;
              v11[1].n128_u64[0] = v272;
              *v11 = v242;
              v17 = (a1 + 24);
              v20 = (a1 + 28);
              v29 = &v11[1].n128_u32[3];
            }

            else
            {
              if (v12 <= v14)
              {
                v275 = *(a1 + 16);
                v245 = *a1;
                v34 = *v11;
                *(a1 + 16) = v11[1].n128_u64[0];
                *a1 = v34;
                v11[1].n128_u64[0] = v275;
                *v11 = v245;
                v17 = &v11[1].n128_i32[2];
                v35 = *(a1 + 24);
                *(a1 + 24) = v11[1].n128_u64[1];
                v11[1].n128_u32[2] = v35;
                v11[1].n128_u32[3] = v16;
                if (*v7 <= v16)
                {
                  goto LABEL_28;
                }

                v276 = v11[1].n128_u64[0];
                v246 = *v11;
                v36 = *v230;
                v11[1].n128_u64[0] = v230[1].n128_u64[0];
                *v11 = v36;
                v230[1].n128_u64[0] = v276;
                *v230 = v246;
                v19 = v229;
                v20 = &v11[1].n128_u32[3];
              }

              else
              {
                v17 = (a1 + 24);
                v269 = *(a1 + 16);
                v239 = *a1;
                v18 = *v230;
                *(a1 + 16) = v230[1].n128_u64[0];
                *a1 = v18;
                v230[1].n128_u64[0] = v269;
                *v230 = v239;
                v19 = v229;
                v20 = (a1 + 28);
              }

              v29 = v7;
            }

            v37 = *v17;
            *v17 = *v19;
            *v19 = v37;
            v38 = *v20;
            *v20 = *v29;
            *v29 = v38;
            goto LABEL_28;
          }

          v13 = (a1 + 28);
          v21 = *(a1 + 28);
          v15 = &v11[1].n128_u32[3];
          if (v21 > v11[1].n128_u32[3])
          {
            if (v12 <= v21)
            {
              v278 = v11[1].n128_i64[0];
              v248 = *v11;
              v57 = *a1;
              v11[1].n128_u64[0] = *(a1 + 16);
              *v11 = v57;
              *(a1 + 16) = v278;
              *a1 = v248;
              v22 = (a1 + 24);
              v58 = v11[1].n128_i32[2];
              v59 = v11[1].n128_u32[3];
              v11[1].n128_u32[2] = *(a1 + 24);
              v11[1].n128_u32[3] = v21;
              *(a1 + 24) = v58;
              *(a1 + 28) = v59;
              if (*v7 <= v59)
              {
                goto LABEL_62;
              }

              v279 = *(a1 + 16);
              v249 = *a1;
              v23 = v229;
              v60 = *v230;
              *(a1 + 16) = v230[1].n128_u64[0];
              *a1 = v60;
              v230[1].n128_u64[0] = v279;
              *v230 = v249;
              v15 = (a1 + 28);
            }

            else
            {
              v22 = &v11[1].n128_i32[2];
              v270 = v11[1].n128_u64[0];
              v240 = *v11;
              v23 = v229;
              v24 = *v230;
              v11[1].n128_u64[0] = v230[1].n128_u64[0];
              *v11 = v24;
              v230[1].n128_u64[0] = v270;
              *v230 = v240;
            }

            v13 = v7;
            goto LABEL_61;
          }

          if (v12 > v21)
          {
            v273 = *(a1 + 16);
            v243 = *a1;
            v30 = *v230;
            *(a1 + 16) = v230[1].n128_u64[0];
            *a1 = v30;
            v230[1].n128_u64[0] = v273;
            *v230 = v243;
            v23 = (a1 + 24);
            v31 = *(a1 + 24);
            *(a1 + 24) = *v229;
            *v229 = v31;
            v32 = *(a1 + 28);
            *(a1 + 28) = *v7;
            *v7 = v32;
            if (*(a1 + 28) > *v15)
            {
              v274 = v11[1].n128_i64[0];
              v244 = *v11;
              v33 = *a1;
              v11[1].n128_u64[0] = *(a1 + 16);
              *v11 = v33;
              *(a1 + 16) = v274;
              *a1 = v244;
              v22 = &v11[1].n128_i32[2];
LABEL_61:
              v101 = *v22;
              *v22 = *v23;
              *v23 = v101;
              v102 = *v15;
              *v15 = *v13;
              *v13 = v102;
            }
          }

LABEL_62:
          --a3;
          if (a4)
          {
            break;
          }

          v103 = *(a1 + 28);
          if (*(a1 - 4) > v103)
          {
            goto LABEL_65;
          }

          v122 = *a1;
          *v237 = *(a1 + 8);
          *&v237[7] = *(a1 + 15);
          v123 = *(a1 + 23);
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *a1 = 0;
          if (v103 <= *v7)
          {
            v126 = a1 + 32;
            do
            {
              v8 = v126;
              if (v126 >= a2)
              {
                break;
              }

              v127 = *(v126 + 28);
              v126 += 32;
            }

            while (v103 <= v127);
          }

          else
          {
            v124 = a1;
            do
            {
              v8 = (v124 + 32);
              v125 = *(v124 + 60);
              v124 += 32;
            }

            while (v103 <= v125);
          }

          v128 = a2;
          if (v8 < a2)
          {
            v129 = a2;
            do
            {
              v128 = v129 - 4;
              v130 = *(v129 - 1);
              v129 -= 4;
            }

            while (v103 > v130);
          }

          v131 = *(a1 + 24);
          while (v8 < v128)
          {
            v289 = v8[1].n128_u64[0];
            v259 = *v8;
            v132 = *v128;
            v8[1].n128_u64[0] = v128[2];
            *v8 = v132;
            v128[2] = v289;
            *v128 = v259;
            v133 = v8[1].n128_u32[2];
            v8[1].n128_u32[2] = *(v128 + 6);
            *(v128 + 6) = v133;
            v134 = v8[1].n128_u32[3];
            v8[1].n128_u32[3] = *(v128 + 7);
            *(v128 + 7) = v134;
            do
            {
              v135 = v8[3].n128_u32[3];
              v8 += 2;
            }

            while (v103 <= v135);
            do
            {
              v136 = *(v128 - 1);
              v128 -= 4;
            }

            while (v103 > v136);
          }

          if (&v8[-2] != a1)
          {
            std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(a1, v8 - 2);
          }

          if (v8[-1].n128_i8[7] < 0)
          {
            operator delete(v8[-2].n128_u64[0]);
          }

          a4 = 0;
          v8[-2].n128_u64[0] = v122;
          *(&v8[-2].n128_u64[1] + 7) = *&v237[7];
          v8[-2].n128_u64[1] = *v237;
          v8[-1].n128_u8[7] = v123;
          v8[-1].n128_u32[2] = v131;
          v8[-1].n128_u32[3] = v103;
        }

        v103 = *(a1 + 28);
LABEL_65:
        v104 = *a1;
        *v236 = *(a1 + 8);
        *&v236[7] = *(a1 + 15);
        v105 = *(a1 + 23);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        v106 = *(a1 + 24);
        v107 = a1;
        do
        {
          v108 = v107;
          v107 += 32;
        }

        while (*(v108 + 60) > v103);
        v109 = v235;
        if (v108 == a1)
        {
          v112 = v235;
          while (v107 < v112)
          {
            v110 = (v112 - 4);
            v113 = *(v112 - 1);
            v112 -= 4;
            if (v113 > v103)
            {
              goto LABEL_75;
            }
          }

          v110 = v112;
        }

        else
        {
          do
          {
            v110 = (v109 - 4);
            v111 = *(v109 - 1);
            v109 -= 4;
          }

          while (v111 <= v103);
        }

LABEL_75:
        v8 = v107;
        if (v107 < v110)
        {
          v114 = v110;
          do
          {
            v115 = *v8;
            v116 = v8[1].n128_u64[0];
            v117 = v114[1].n128_u64[0];
            *v8 = *v114;
            v8[1].n128_u64[0] = v117;
            v114[1].n128_u64[0] = v116;
            *v114 = v115;
            LODWORD(v116) = v8[1].n128_u32[2];
            v8[1].n128_u32[2] = v114[1].n128_u32[2];
            v114[1].n128_u32[2] = v116;
            LODWORD(v116) = v8[1].n128_u32[3];
            v8[1].n128_u32[3] = v114[1].n128_u32[3];
            v114[1].n128_u32[3] = v116;
            do
            {
              v118 = v8[3].n128_u32[3];
              v8 += 2;
            }

            while (v118 > v103);
            do
            {
              v119 = v114[-1].n128_u32[3];
              v114 -= 2;
            }

            while (v119 <= v103);
          }

          while (v8 < v114);
        }

        if (&v8[-2] != a1)
        {
          std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(a1, v8 - 2);
        }

        if (v8[-1].n128_i8[7] < 0)
        {
          operator delete(v8[-2].n128_u64[0]);
        }

        v8[-2].n128_u64[0] = v104;
        *(&v8[-2].n128_u64[1] + 7) = *&v236[7];
        v8[-2].n128_u64[1] = *v236;
        v8[-1].n128_u8[7] = v105;
        v8[-1].n128_u32[2] = v106;
        v8[-1].n128_u32[3] = v103;
        v120 = v107 >= v110;
        a2 = v235;
        v7 = v233;
        if (v120)
        {
          break;
        }

LABEL_89:
        std::__introsort<std::_ClassicAlgPolicy,AGCLLVMUserObject::createTlsGlobalsConstructor(void)::$_0 &,std::tuple<std::string,unsigned int,unsigned int> *,false>(a1, &v8[-2], a3, a4 & 1);
        a4 = 0;
      }

      v121 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,AGCLLVMUserObject::createTlsGlobalsConstructor(void)::$_0 &,std::tuple<std::string,unsigned int,unsigned int> *>(a1, v8 - 2);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,AGCLLVMUserObject::createTlsGlobalsConstructor(void)::$_0 &,std::tuple<std::string,unsigned int,unsigned int> *>(v8, v235))
      {
        break;
      }

      if (!v121)
      {
        goto LABEL_89;
      }
    }

    a2 = &v8[-2];
    if (!v121)
    {
      continue;
    }

    break;
  }
}

uint64_t AGCLLVMUserObject::setupShaderWrapper(AGCLLVMUserObject *this)
{
  v25 = *MEMORY[0x277D85DE8];
  (*(*this + 80))();
  llvm::Module::getOrInsertFunction();
  *(this + 20) = v2;
  v3 = *(this + 21);
  if (*(v3 + 72) != v3 + 72)
  {
    llvm::iplist_impl<llvm::simple_ilist<llvm::BasicBlock>,llvm::SymbolTableListTraits<llvm::BasicBlock>>::transfer(v2 + 72, (v2 + 72), v3 + 72, *(v3 + 80), (v3 + 72));
    v3 = *(this + 21);
  }

  v22 = *(v3 + 112);
  FnAttrs = llvm::AttributeList::getFnAttrs(&v22);
  v21 = FnAttrs;
  v5 = *(this + 6);
  if (!v5 || llvm::ConstantDataSequential::getElementAsInteger(v5) <= 0xD)
  {
    FnAttrs = llvm::AttributeSet::removeAttribute();
    v21 = FnAttrs;
  }

  if (FnAttrs)
  {
    v6 = *(this + 20);
    LODWORD(v22) = -1;
    *v23 = FnAttrs;
    *(v6 + 112) = llvm::AttributeList::get();
  }

  v7 = *(*(this + 20) + 80);
  if (v7)
  {
    v8 = (v7 - 24);
  }

  else
  {
    v8 = 0;
  }

  FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v8);
  AGCLLVMUserObject::hoistAllocas(this, v8, &FirstInsertionPt, v9);
  v24 = 257;
  v10 = llvm::BasicBlock::splitBasicBlock();
  v11 = *(v8 + 5);
  if (v11 == (v8 + 40))
  {
    v14 = 0;
  }

  else
  {
    v12 = (v11 - 3);
    if (v11)
    {
      v13 = v11 - 3;
    }

    else
    {
      v13 = 0;
    }

    if (*(v13 + 16) - 29 >= 0xB)
    {
      v14 = 0;
    }

    else
    {
      v14 = v12;
    }
  }

  llvm::Instruction::eraseFromParent(v14);
  v15 = this + *(*this - 24);
  *(v15 + 220) = v8;
  *(v15 + 221) = v8 + 40;
  v16 = (*(*this + 64))(this);
  if (v16)
  {
    v17 = *(this + *(*this - 24) + 2168);
    (*(*v17 + 424))(v17, *(this + 20));
    llvm::IRBuilderBase::CreateBr((this + *(*this - 24) + 1712), v10, v18);
    v22 = "wrapper_exit";
    v24 = 259;
    operator new();
  }

  return v16;
}

uint64_t *std::__tree<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>::__emplace_unique_key_args<AGCLLVMUserObject::Texture,AGCLLVMUserObject::Texture const&>(uint64_t *result, unsigned int a2, _OWORD *a3)
{
  v3 = result[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 32);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return result;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

void llvm::iplist_impl<llvm::simple_ilist<llvm::BasicBlock>,llvm::SymbolTableListTraits<llvm::BasicBlock>>::transfer(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 != a5)
  {
    llvm::SymbolTableListTraits<llvm::BasicBlock>::transferNodesFromList();
  }
}

uint64_t AGCLLVMUserObject::replaceTextureOrSamplerArgument(AGCLLVMUserObject *this, llvm::Type **a2, unsigned int a3, unsigned int a4, char a5, AGCLLVMUserObject::TextureSamplerPlaceholderFunctions *a6)
{
  v8 = a2;
  v122 = *MEMORY[0x277D85DE8];
  if ((a5 & 1) == 0)
  {
    v12 = *(*(this + 21) + 80);
    if (v12)
    {
      v13 = v12 - 24;
    }

    else
    {
      v13 = 0;
    }

    v14 = *(v13 + 40);
    if (v14)
    {
      v15 = (v14 - 24);
    }

    else
    {
      v15 = 0;
    }

    llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v15);
    LODWORD(__p) = a3;
    HIDWORD(__p) = a3;
    v16 = *v8;
    v17 = llvm::ConstantInt::get();
    AGCLLVMUserObject::buildAPIResourceIntrinsic(this, a6, v16, v17, &__p, a3, 0);
LABEL_145:
    llvm::Value::replaceAllUsesWith();
    return 1;
  }

  if (*(*a2 + 8) != 15)
  {
    return 0;
  }

  if (llvm::Type::isOpaquePointerTy(*a2))
  {
    v10 = llvm::PointerType::get(*(this + *(*this - 24) + 1776), 1);
    v11 = *v8;
  }

  else
  {
    v11 = *v8;
    v10 = **(**(*v8 + 2) + 16);
  }

  if (llvm::Type::isOpaquePointerTy(v11))
  {
    v19 = llvm::ArrayType::get(v10, a4);
    v20 = *v8;
  }

  else
  {
    v20 = *v8;
    v19 = **(*v8 + 2);
  }

  v21 = a3;
  v90 = v8;
  if ((llvm::Type::isOpaquePointerTy(v20) & 1) == 0)
  {
    v22 = **(v19 + 2);
    v89 = v19;
    if (*(v22 + 8) == 16)
    {
      v103 = **(v22 + 16);
    }

    else
    {
      v103 = **(v19 + 2);
    }

    __src = v8;
    __p = v119;
    v118 = 0x2000000000;
    llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&__p, &__src, &v115);
    for (i = v8[1]; i; i = *(i + 1))
    {
      v24 = *(i + 3);
      if (*(v24 + 16) == 77)
      {
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&__p, v24);
      }
    }

    __src = v116;
    v115 = 0x2000000000;
    if (v118)
    {
      v96 = a6;
      v97 = v10;
      v25 = __p;
      v26 = (__p + 8 * v118);
      v27 = a4;
      v88 = a3;
      v93 = (a3 | ((a3 + a4 - 1) << 32));
      v94 = this + 1712;
      v28 = v103;
      v95 = a3;
      v91 = v26;
      while (1)
      {
        v29 = *(**v25 + 16);
        v30 = *v29;
        v31 = *(*v29 + 8);
        if (*v29)
        {
          v32 = v31 == 16;
        }

        else
        {
          v32 = 0;
        }

        if (v32)
        {
          if (*(v30 + 12) != 1)
          {
            goto LABEL_119;
          }

          v34 = *(**(v30 + 16) + 8);
          v32 = v34 == 15;
          v33 = v34 != 15;
          if (!v32)
          {
            v30 = **(v30 + 16);
          }

          v31 = *(v30 + 8);
        }

        else
        {
          v33 = 0;
        }

        if (v31 == 17)
        {
          v35 = v30;
        }

        else
        {
          v35 = 0;
        }

        if (v35)
        {
          if (*(v35 + 32) > v27)
          {
            goto LABEL_119;
          }

          v30 = **(v35 + 16);
          ++v33;
          v31 = *(v30 + 8);
        }

        if (v31 == 16)
        {
          v36 = v30;
        }

        else
        {
          v36 = 0;
        }

        if (v36)
        {
          if (*(v36 + 12) != 1)
          {
            goto LABEL_119;
          }

          v30 = **(v36 + 16);
          v37 = v33 + 2;
        }

        else
        {
          v37 = v33 + 1;
        }

        if (v35 | v36)
        {
          v38 = v30 == v28;
        }

        else
        {
          v38 = 0;
        }

        if (v38)
        {
          v101 = v36;
          v98 = *v25;
          v39 = *(*v25 + 8);
          if (!v39)
          {
LABEL_117:
            v27 = a4;
            v26 = v91;
            if (*(v98 + 16) > 0x1Bu)
            {
              llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&__src, v98);
              v28 = v103;
            }

            goto LABEL_119;
          }

          v99 = 32 * (v33 + 1);
          v100 = v33;
          v102 = v37;
          while (2)
          {
            v40 = *(v39 + 24);
            if (!v40 || *(v40 + 16) != 62 || ((v41 = *(v40 + 20) & 0x7FFFFFF, v42 = (v41 - 1), v43 = **(*v40 + 16), v43 == v28) ? (v44 = v42 == v37) : (v44 = 1), !v44 || (v43 == v101 ? (v45 = v41 == v37) : (v45 = 1), !v45)))
            {
LABEL_116:
              v39 = *(v39 + 8);
              if (!v39)
              {
                goto LABEL_117;
              }

              continue;
            }

            break;
          }

          if (v41 != 1)
          {
            v46 = v40 - 32 * v41 + 32;
            v47 = v100;
            do
            {
              if (v47)
              {
                v48 = *v46;
                if (*(*v46 + 16) != 16)
                {
                  goto LABEL_116;
                }

                v49 = (v48 + 24);
                v50 = *(v48 + 32);
                if (v50 >= 0x41)
                {
                  v51 = llvm::APInt::countLeadingZerosSlowCase((v48 + 24));
                  v37 = v102;
                  v28 = v103;
                  if (v50 - v51 > 0x40)
                  {
                    goto LABEL_116;
                  }

                  v49 = *v49;
                }

                if (*v49)
                {
                  goto LABEL_116;
                }
              }

              v46 += 32;
              --v47;
            }

            while (--v42);
          }

          v52 = this + *(*this - 24);
          v111 = *(v52 + 110);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v112, (v52 + 1712));
          v113 = *(v52 + 452);
          llvm::IRBuilderBase::SetInsertPoint(&v94[*(*this - 24)], v40);
          v53 = *(v40 - 32 * (*(v40 + 20) & 0x7FFFFFF) + v99);
          v54 = this + *(*this - 24);
          v55 = *(v54 + 238);
          v110 = 257;
          IntCast = llvm::IRBuilderBase::CreateIntCast(v54 + 214, v53, v55, 0, v109, v56);
          if (IntCast)
          {
            v58 = *(IntCast + 16) == 16;
          }

          else
          {
            v58 = 0;
          }

          v59 = v93;
          if (v58)
          {
            v60 = (IntCast + 24);
            if (*(IntCast + 8) >= 0x41u)
            {
              v60 = *v60;
            }

            v59 = (*v60 + v95) | ((*v60 + v95) << 32);
          }

          v108 = v59;
          v61 = AGCLLVMUserObject::buildAPIResourceIntrinsic(this, v96, v97, IntCast, &v108, v95, 0);
          if (v43 == v101)
          {
            v62 = *(*this - 24);
            v63 = llvm::UndefValue::get();
            v107 = 0;
            v110 = 257;
            llvm::IRBuilderBase::CreateInsertValue(&v94[v62], v63, v61, &v107, 1, v109);
          }

          v64 = *(v40 + 8);
          if (!v64)
          {
LABEL_109:
            llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&__src, v40);
            v71 = *(*this - 24);
            v104 = v111;
            v105 = v112;
            if (v112)
            {
              llvm::MetadataTracking::track();
            }

            v106 = v113;
            AGCLLVMBuilder::InsertPoint::restoreIP(&v104, &v94[v71]);
            if (v105)
            {
              llvm::MetadataTracking::untrack();
            }

            if (v112)
            {
              llvm::MetadataTracking::untrack();
            }

            v28 = v103;
            v37 = v102;
            goto LABEL_116;
          }

          while (2)
          {
            v69 = *(v64 + 24);
            v70 = *(v69 + 16);
            if (v69 && v70 == 60)
            {
              llvm::Value::replaceAllUsesWith();
LABEL_107:
              llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&__src, v69);
            }

            else if (v69)
            {
              if (v70 == 77)
              {
                v65 = *(v69 + 8);
                if (v65)
                {
                  if (!*(v65 + 8) && *(*v69 + 8) == 15 && **(*v69 + 16) == *(this + *(*this - 24) + 1912))
                  {
                    v66 = *(v65 + 24);
                    if (v66)
                    {
                      if (*(v66 + 16) == 60)
                      {
                        v67 = *(v66 + 8);
                        if (v67)
                        {
                          if (!*(v67 + 8))
                          {
                            v68 = *(v67 + 24);
                            if (v68)
                            {
                              if (*(v68 + 16) == 76 && (*v68 == v97 || *v68 == v101))
                              {
                                v86 = *(v67 + 24);
                                v87 = v66;
                                llvm::Value::replaceAllUsesWith();
                                llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&__src, v86);
                                llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&__src, v87);
                                goto LABEL_107;
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

            v64 = *(v64 + 8);
            if (!v64)
            {
              goto LABEL_109;
            }

            continue;
          }
        }

LABEL_119:
        if (++v25 == v26)
        {
          v72 = __src;
          if (v115)
          {
            v73 = 8 * v115;
            v8 = v90;
            a6 = v96;
            v10 = v97;
            v21 = v88;
            do
            {
              if (!*(*v72 + 1))
              {
                llvm::Instruction::eraseFromParent(*v72);
              }

              ++v72;
              v73 -= 8;
            }

            while (v73);
            v72 = __src;
          }

          else
          {
            v8 = v90;
            a6 = v96;
            v10 = v97;
            v21 = v88;
          }

          if (v72 != v116)
          {
            free(v72);
          }

          break;
        }
      }
    }

    if (__p != v119)
    {
      free(__p);
    }

    v19 = v89;
  }

  if (v8[1])
  {
    if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
    {
      v74 = v19;
      v75 = *(this + *(*this - 24) + 1696);
      __src = llvm::Value::getName(v8);
      v115 = v76;
      llvm::StringRef::str(&__p, &__src);
      if (v120 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      AGCTargetPrinter::printMessage(v75, "!!!! Perf: Argument %s: failed to patten match the array of texture/sampler, spilling!!", p_p);
      if (v120 < 0)
      {
        operator delete(__p);
      }

      v19 = v74;
    }

    AllocaInEntryBlock = AGCLLVMBuilder::createAllocaInEntryBlock((this + *(*this - 24) + 1704), v19);
    v79 = this + 1712;
    v80 = AllocaInEntryBlock + 24;
    if (!AllocaInEntryBlock)
    {
      v80 = 0;
    }

    llvm::IRBuilderBase::SetInsertPoint(&v79[*(*this - 24)], *(AllocaInEntryBlock + 40), *(v80 + 8));
    if (a4)
    {
      v81 = 0;
      do
      {
        v109[0] = v21 + v81;
        v109[1] = v21 + v81;
        v82 = this + *(*this - 24) + 1704;
        __src = llvm::ConstantInt::get();
        v115 = llvm::ConstantInt::get();
        v121 = 257;
        GEP = AGCLLVMBuilder::CreateGEP(v82, AllocaInEntryBlock, &__src, 2, &__p);
        v84 = llvm::ConstantInt::get();
        v85 = AGCLLVMUserObject::buildAPIResourceIntrinsic(this, a6, v10, v84, v109, v21, 0);
        llvm::IRBuilderBase::CreateAlignedStore(&v79[*(*this - 24)], v85, GEP, 0, 0);
        ++v81;
      }

      while (a4 != v81);
    }

    goto LABEL_145;
  }

  return 1;
}

uint64_t AGCLLVMAGPFragmentShaderGen3::addWrapperPrefix(AGCLLVMAGPFragmentShaderGen3 *this, uint64_t a2, unsigned int a3)
{
  v25[3] = *MEMORY[0x277D85DE8];
  AGCLLVMAGPFragmentShader::addWrapperPrefix(this, a2, a3);
  v4 = *(this + 20);
  v5 = *(v4 + 80);
  v6 = v4 + 72;
  while (1)
  {
    v5 = *(v5 + 8);
    if (v5 == v6)
    {
      break;
    }

    v7 = v5 - 24;
    if (!v5)
    {
      v7 = 0;
    }

    v8 = *(v7 + 40);
    if (v8)
    {
      v9 = v8 - 24;
    }

    else
    {
      v9 = 0;
    }

    v10 = *(v9 + 16) - 40;
    if (v10 >= 0xFFFFFFF5)
    {
      v11 = v8 - 24;
    }

    else
    {
      v11 = 0;
    }

    if (*(v11 + 16) == 29 && v10 >= 0xFFFFFFF5)
    {
      v13 = *(v8 - 4);
      v14 = v13 & 0x7FFFFFF;
      if ((v13 & 0x7FFFFFF) != 0)
      {
        v15 = *(this + 8);
        if (v15)
        {
          if (*(v8 - 24 - 32 * v14))
          {
            v22 = 0;
            v16 = *(v15 + 8);
            if (v16)
            {
              v17 = 0;
              do
              {
                v18 = *(v15 - 8 * v16 + 8 * v17);
                if (v18)
                {
                  if (isStringMDNode(*(v18 - 8 * *(v18 + 8)), "air.imageblock_data"))
                  {
                    v24[0] = v25;
                    v24[1] = 0x500000000;
                    IndexedType = llvm::ExtractValueInst::getIndexedType();
                    v23[0] = &unk_282558560;
                    v23[1] = this;
                    v23[3] = v23;
                    AGCLLVMAGPFragmentShaderGen3::setupLIBStructValueFromType(this, IndexedType, v24, this + 7552, 0, 1, v23, v20);
                    std::__function::__value_func<void ()(llvm::Type *,llvm::SmallVectorImpl<unsigned int> &,unsigned int)>::~__value_func[abi:nn200100](v23);
                    if (v24[0] != v25)
                    {
                      free(v24[0]);
                    }
                  }
                }

                v17 = v22 + 1;
                v22 = v17;
                v15 = *(this + 8);
                v16 = *(v15 + 8);
              }

              while (v17 < v16);
            }
          }
        }
      }

      return 1;
    }
  }

  return 1;
}

llvm::Instruction *AGCLLVMUserObject::buildAPIResourceIntrinsic(AGCLLVMUserObject *this, AGCLLVMUserObject::TextureSamplerPlaceholderFunctions *a2, llvm::Type *a3, llvm::Value *a4, AGCArgumentBuffer::Resource::Bounds *a5, unsigned int a6, unsigned int a7)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v10 = (this + *(*this - 24));
  v11 = v10[244];
  v18[0] = v10[238];
  v18[1] = v11;
  v12 = v10[235];
  v18[2] = v18[0];
  v18[3] = v12;
  Function = AGCLLVMUserObject::TextureSamplerPlaceholderFunctions::getFunction(a2, v10[267], a3, v18, 4);
  v14 = (this + *(*this - 24));
  v17[0] = a4;
  v17[1] = AGCArgumentBuffer::Resource::Bounds::toConstantVector(a5, v14 + 214);
  v17[2] = llvm::ConstantInt::get();
  v17[3] = llvm::ConstantInt::get();
  v16[16] = 257;
  return llvm::IRBuilderBase::CreateCall(v14 + 214, *(Function + 24), Function, v17, 4, v16);
}

uint64_t AGCLLVMUserFragmentShader::addWrapperPrefix(AGCLLVMUserFragmentShader *this, uint64_t a2, unsigned int a3)
{
  v4 = this + 1712;
  v5 = (this + 5800);
  v6 = 8;
  do
  {
    v7 = *(v5 - 33);
    if (v7)
    {
      v8 = *(*this - 24);
      v50 = 257;
      Alloca = llvm::IRBuilderBase::CreateAlloca(&v4[v8], v7, 0, v49);
      llvm::ValueHandleBase::operator=((v5 - 256), Alloca);
    }

    v10 = *(v5 - 1);
    if (v10)
    {
      v11 = *(*this - 24);
      v50 = 257;
      v12 = llvm::IRBuilderBase::CreateAlloca(&v4[v11], v10, 0, v49);
      llvm::ValueHandleBase::operator=(v5, v12);
    }

    v5 = (v5 + 32);
    --v6;
  }

  while (v6);
  v13 = *(this + 6056);
  if ((v13 & 4) != 0)
  {
    v14 = this + *(*this - 24);
    v46 = *(v14 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v47, (v14 + 1712));
    v48 = *(v14 + 452);
    llvm::IRBuilderBase::SetInsertPoint(this + *(*this - 24) + 1712, *(*(this + 782) + 40), *(*(this + 782) + 32));
    v15 = this + *(*this - 24);
    v16 = *(v15 + 234);
    v50 = 257;
    v17 = llvm::IRBuilderBase::CreateAlloca(v15 + 214, v16, 0, v49);
    llvm::ValueHandleBase::operator=((this + 6064), v17);
    llvm::IRBuilderBase::CreateAlignedStore((this + *(*this - 24) + 1712), *(this + 782), *(this + 760), 0, 0);
    v18 = this + *(*this - 24);
    v43 = v46;
    v44 = v47;
    if (v47)
    {
      llvm::MetadataTracking::track();
    }

    v45 = v48;
    AGCLLVMBuilder::InsertPoint::restoreIP(&v43, (v18 + 1712));
    if (v44)
    {
      llvm::MetadataTracking::untrack();
    }

    if (v47)
    {
      llvm::MetadataTracking::untrack();
    }

    v13 = *(this + 6056);
    if ((v13 & 8) == 0)
    {
LABEL_9:
      if ((v13 & 2) == 0)
      {
        goto LABEL_10;
      }

LABEL_20:
      v24 = this + *(*this - 24);
      v25 = *(v24 + 238);
      v50 = 257;
      v26 = llvm::IRBuilderBase::CreateAlloca(v24 + 214, v25, 0, v49);
      llvm::ValueHandleBase::operator=((this + 6112), v26);
      v27 = (this + *(*this - 24));
      v28 = llvm::ConstantInt::get();
      llvm::IRBuilderBase::CreateAlignedStore(v27 + 214, v28, *(this + 766), 0, 0);
      if ((*(this + 6056) & 1) == 0)
      {
        return 1;
      }

      goto LABEL_21;
    }
  }

  else if ((*(this + 6056) & 8) == 0)
  {
    goto LABEL_9;
  }

  v19 = this + *(*this - 24);
  v20 = *(v19 + 237);
  v50 = 257;
  v21 = llvm::IRBuilderBase::CreateAlloca(v19 + 214, v20, 0, v49);
  llvm::ValueHandleBase::operator=((this + 6088), v21);
  v22 = (this + *(*this - 24));
  v23 = llvm::ConstantInt::get();
  llvm::IRBuilderBase::CreateAlignedStore(v22 + 214, v23, *(this + 763), 0, 0);
  v13 = *(this + 6056);
  if ((v13 & 2) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v13 & 1) == 0)
  {
    return 1;
  }

LABEL_21:
  if ((*(*(this + 800) + 1) & 8) != 0)
  {
    v35 = llvm::User::operator new(0x58);
    v49[0] = "agc.alpha_test_ref";
    v50 = 259;
    llvm::GlobalVariable::GlobalVariable();
    llvm::GlobalObject::setSection();
    v36 = this + *(*this - 24);
    v37 = *(v36 + 268);
    v38 = AGCLLVMBuilder::buildGlobalMetadata(v36 + 213, v35, 0x19u, 0);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v37, v38);
    v39 = this + *(*this - 24);
    v50 = 257;
    Load = AGCLLVMBuilder::CreateLoad((v39 + 1704), v35, v49);
    v41 = AGCLLVMUserFragmentShader::buildAlphaQuantize(this, Load);
    llvm::ValueHandleBase::operator=((this + 6160), v41);
  }

  else
  {
    v29 = llvm::ConstantFP::get();
    llvm::ValueHandleBase::operator=((this + 6160), v29);
    *(this + 1546) = 6;
    v30 = this + *(*this - 24);
    v31 = *(v30 + 234);
    v50 = 257;
    v32 = llvm::IRBuilderBase::CreateAlloca(v30 + 214, v31, 0, v49);
    llvm::ValueHandleBase::operator=((this + 6136), v32);
    v33 = (this + *(*this - 24));
    v34 = llvm::ConstantFP::get();
    llvm::IRBuilderBase::CreateAlignedStore(v33 + 214, v34, *(this + 769), 0, 0);
  }

  return 1;
}

uint64_t AGCLLVMAGPFragmentShader::addWrapperPrefix(AGCLLVMAGPFragmentShader *this, uint64_t a2, unsigned int a3)
{
  AGCLLVMUserFragmentShader::addWrapperPrefix(this, a2, a3);
  if (*(this + 1760) == 1)
  {
    v5 = *(this + *(*this - 24) + 2168);
    if (*(v5 + 1858) != 1 || *(this + 6445) == 1 && *(this + 6462) == 1)
    {
      *(v5 + 1858) = 0;
      {
        AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
      }

      if (AGCEnv::isEnabled(void)::is_internal != 1 || (Value = AGCEnv::getValue("AGC_DISABLE_STUB_MOVMSK", v4)) == 0 || *Value == 48 || !atoi(Value))
      {
        v7 = this + *(*this - 24);
        v8 = *(v7 + 271);
        v11 = *(v7 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (v7 + 1712));
        v13 = *(v7 + 452);
        v9 = llvm::ConstantInt::get();
        (*(*v8 + 624))(v8, &v11, v9);
        if (v12)
        {
          llvm::MetadataTracking::untrack();
        }
      }
    }

    *(this + 6060) = 1;
  }

  return 1;
}

uint64_t AGCLLVMUserObject::TextureSamplerPlaceholderFunctions::getFunction(float *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = llvm::FunctionType::get();
  v7 = v6;
  v8 = 0x9DDFEA08EB382D69 * ((8 * (v6 & 0x1FFFFFFF) + 8) ^ HIDWORD(v6));
  v9 = 0x9DDFEA08EB382D69 * (HIDWORD(v6) ^ (v8 >> 47) ^ v8);
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
  v11 = *(a1 + 4);
  if (!*&v11)
  {
    goto LABEL_17;
  }

  v12 = vcnt_s8(v11);
  v12.i16[0] = vaddlv_u8(v12);
  if (v12.u32[0] > 1uLL)
  {
    v13 = v10;
    if (v10 >= *&v11)
    {
      v13 = v10 % *&v11;
    }
  }

  else
  {
    v13 = v10 & (*&v11 - 1);
  }

  v14 = *(*(a1 + 1) + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_17:
    v17 = *a1;
    v18 = **a1;
    v31 = *(a1 + 4);
    v19 = &v31;
    if (v18)
    {
      v32[2] = &v31;
      v20 = 10;
      v21 = 3;
      v19 = v17;
    }

    else
    {
      v20 = 1;
      v21 = 10;
    }

    v32[0] = v19;
    v33 = v21;
    v34 = v20;
    llvm::Twine::str(&__p, v32);
    llvm::Module::getOrInsertFunction();
    v30 = v22;
    if (v36 < 0)
    {
      operator delete(__p);
    }

    v23 = *(a1 + 4);
    if (!*&v23)
    {
      goto LABEL_39;
    }

    v24 = vcnt_s8(v23);
    v24.i16[0] = vaddlv_u8(v24);
    if (v24.u32[0] > 1uLL)
    {
      v25 = v10;
      if (v10 >= *&v23)
      {
        v25 = v10 % *&v23;
      }
    }

    else
    {
      v25 = v10 & (*&v23 - 1);
    }

    v26 = *(*(a1 + 1) + 8 * v25);
    if (!v26 || (v27 = *v26) == 0)
    {
LABEL_39:
      operator new();
    }

    while (1)
    {
      v28 = v27[1];
      if (v28 == v10)
      {
        if (v27[2] == v7)
        {
          llvm::ValueHandleBase::operator=((v27 + 3), v30);
          return v30;
        }
      }

      else
      {
        if (v24.u32[0] > 1uLL)
        {
          if (v28 >= *&v23)
          {
            v28 %= *&v23;
          }
        }

        else
        {
          v28 &= *&v23 - 1;
        }

        if (v28 != v25)
        {
          goto LABEL_39;
        }
      }

      v27 = *v27;
      if (!v27)
      {
        goto LABEL_39;
      }
    }
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v10)
    {
      break;
    }

    if (v12.u32[0] > 1uLL)
    {
      if (v16 >= *&v11)
      {
        v16 %= *&v11;
      }
    }

    else
    {
      v16 &= *&v11 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_17;
    }

LABEL_16:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_17;
    }
  }

  if (v15[2] != v6)
  {
    goto LABEL_16;
  }

  return v15[5];
}

uint64_t llvm::IRBuilderBase::CreateAlloca(llvm::BasicBlock **this, llvm::Type *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  Module = llvm::BasicBlock::getModule(this[6]);
  DataLayout = llvm::Module::getDataLayout(Module);
  llvm::DataLayout::getPrefTypeAlign(DataLayout, a2);
  v9 = llvm::User::operator new(0x48);
  llvm::AllocaInst::AllocaInst();
  (*(*this[10] + 16))(this[10], v9, a4, this[6], this[7]);
  v10 = *(this + 2);
  if (v10)
  {
    v11 = *this;
    v12 = v11 + 16 * v10;
    do
    {
      llvm::Instruction::setMetadata();
      v11 += 16;
    }

    while (v11 != v12);
  }

  return v9;
}

uint64_t AGCArgumentBuffer::Resource::Bounds::toConstantVector(unsigned int *a1, llvm::Type **a2)
{
  llvm::Type::getInt32Ty(a2[8], a2);
  llvm::ConstantInt::get();
  llvm::Type::getInt32Ty(a2[8], v3);
  llvm::ConstantInt::get();
  return llvm::ConstantVector::get();
}

uint64_t AGCLLVMUserObject::replaceSamplerInput<llvm::Argument>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!*(a2 + 8))
  {
    return 1;
  }

  v19 = 0;
  v18 = 0;
  v5 = parseMDSampler(a3, &v19 + 1, &v19, &v18);
  result = 0;
  if (v5)
  {
    v7 = *a2;
    *(&v15 + 1) = 0;
    v16 = 0;
    v17 = 0;
    if (llvm::Type::isOpaquePointerTy(v7))
    {
      v8 = llvm::StructType::create();
      v9 = v18;
    }

    else
    {
      v9 = v18;
      if (v18)
      {
        v10 = **(v7 + 2);
        if (*(v10 + 8) == 16)
        {
          v10 = **(v10 + 16);
        }

        v7 = **(v10 + 16);
      }

      v11 = *(v7 + 2);
      if ((v11 & 0x1FF) == 0x110)
      {
        v7 = **(v7 + 2);
        LOBYTE(v11) = *(v7 + 8);
      }

      if (v11 == 15)
      {
        v12 = **(v7 + 2);
        if ((*(v12 + 8) & 0x1FF) == 0x110)
        {
          v7 = **(v12 + 16);
        }
      }

      v8 = **(v7 + 2);
    }

    v16 = v8;
    v14 = v19;
    v13 = HIDWORD(v19);
    LODWORD(v15) = HIDWORD(v19) & 0xFFFFF;
    DWORD1(v15) = v19;
    std::__tree<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>::__emplace_unique_key_args<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::Sampler const&>(a1 + 128, HIDWORD(v19) & 0xFFFFF, &v15);
    return AGCLLVMUserObject::replaceTextureOrSamplerArgument(a1, a2, v13, v14, v9, (a1 + 393));
  }

  return result;
}

llvm::BranchInst *llvm::IRBuilderBase::CreateBr(unsigned int **this, llvm::BasicBlock *a2, unsigned int a3)
{
  v4 = llvm::User::operator new(0x40);
  llvm::BranchInst::BranchInst();
  v7 = 257;
  llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v4, v6);
  return v4;
}

uint64_t parseMDSampler(uint64_t a1, _DWORD *a2, _DWORD *a3, BOOL *a4)
{
  String = llvm::MDString::getString(*(a1 - 8 * *(a1 + 8) + 8));
  if (v9 != 11)
  {
    return 0;
  }

  if (*String != 0x706D61732E726961 || *(String + 3) != 0x72656C706D61732ELL)
  {
    return 0;
  }

  *a4 = 0;
  *a3 = 1;
  v12 = *(a1 + 8);
  v21 = 2;
  if (v12 >= 3)
  {
    do
    {
      if (parseMDLocationIndex(a1, &v21, a2, a3))
      {
        v13 = v21;
      }

      else
      {
        v14 = parseMDInt("air.binding", a1, &v21, a2);
        v15 = v21;
        v13 = v21;
        if ((v14 & 1) == 0)
        {
          v13 = ++v21;
          if (isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8 * v15), "air.arg_type_name"))
          {
            v16 = v15 + 2;
            v21 = v16;
            v17 = llvm::MDString::getString(*(a1 - 8 * *(a1 + 8) + 8 * v13));
            v19 = v18 >= 5 && *v17 == 1634890337 && *(v17 + 4) == 121;
            *a4 = v19;
            v13 = v16;
          }
        }
      }
    }

    while (v13 < v12);
  }

  return 1;
}

uint64_t AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[1] = *MEMORY[0x277D85DE8];
  __src = a5;
  v9[0] = v10;
  v9[1] = 0x100000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(v9, &__src, v9);
  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  v6 = v5;
  if (v9[0] != v10)
  {
    free(v9[0]);
  }

  return v6;
}

uint64_t *std::__tree<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>::__emplace_unique_key_args<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::Sampler const&>(uint64_t *result, unsigned int a2, _OWORD *a3)
{
  v3 = result[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 32);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return result;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t AGCLLVMAGPFragmentShaderGen3::addWrapperPostfix(AGCLLVMAGPFragmentShaderGen3 *this, llvm::Type *a2)
{
  result = AGCLLVMUserFragmentShader::addWrapperPostfix(this, a2);
  if (*(this + 1896))
  {
    v4 = *(this + 1898);
    if (v4)
    {
      v5 = 40 * v4;
      for (i = *(this + 947); *i >= 0xFFFFFFFE; i += 20)
      {
        v5 -= 40;
        if (!v5)
        {
          return result;
        }
      }
    }

    else
    {
      i = *(this + 947);
    }

    v7 = *(this + 947) + 40 * v4;
    if (i != v7)
    {
      v8 = this + 1712;
      v35 = this + 2168;
LABEL_10:
      v9 = *i;
      v10 = *(i + 1);
      v11 = *(*this - 24);
      v12 = *(i + 4);
      v57 = 257;
      Load = AGCLLVMBuilder::CreateLoad((this + v11 + 1704), v12, &v54);
      v14 = *(*this - 24);
      v57 = 257;
      Cast = llvm::IRBuilderBase::CreateCast(&v8[v14], 49, Load, v10, &v54);
      v15 = *(this + 1881);
      v54 = 0uLL;
      v56 = 0;
      v55 = 0;
      v16 = llvm::ConstantInt::get();
      v17 = this + *(*this - 24);
      v18 = *(v17 + 271);
      v51 = *(v17 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v52, (v17 + 1712));
      v53 = *(v17 + 452);
      v33 = (*(*v18 + 208))(v18, &v51, v16);
      if (v52)
      {
        llvm::MetadataTracking::untrack();
      }

      v19 = *(*this - 24);
      if (*(this + 3766) == 1)
      {
        v20 = llvm::ConstantInt::get();
      }

      else
      {
        v21 = this + v19;
        v48 = *(this + v19 + 1760);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v49, (this + v19 + 1712));
        v50 = *(v21 + 452);
        v20 = AGCLLVMObject::buildReadDynamicLIBSize(v21, &v48);
        if (v49)
        {
          llvm::MetadataTracking::untrack();
        }
      }

      v22 = *&v35[*(*this - 24)];
      (*(*v22 + 688))(v22);
      if (*(v10 + 8) == 15)
      {
        v10 = **(v10 + 16);
      }

      if ((~(-1 << llvm::DataLayout::getABITypeAlign((this + 224), v10)) & (v15 + v9)) != 0)
      {
        v23 = *&v35[*(*this - 24)];
        v24 = (*(*v23 + 688))(v23);
        v25 = this + *(*this - 24);
        v42 = *(v25 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v43, (v25 + 1712));
        v44 = *(v25 + 452);
        LODWORD(v25) = 1 << ((*(*(this + 660) + 32) >> 10) & 3);
        v26 = llvm::ConstantInt::get();
        AGCLLVMGen3TargetLowerer::splitUnalignedStore(&v45, v24, &v42, 0, v25, v20, Cast, v26, v16, v33, 0, 0);
        v54 = v45;
        result = llvm::TrackingMDRef::operator=(&v55, &v46);
        v56 = v47;
        if (v46)
        {
          result = llvm::MetadataTracking::untrack();
        }

        v8 = this + 1712;
        if (v43)
        {
LABEL_26:
          result = llvm::MetadataTracking::untrack();
        }
      }

      else
      {
        v27 = *&v35[*(*this - 24)];
        v28 = (*(*v27 + 688))(v27);
        v29 = this + *(*this - 24);
        v39 = *(v29 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v40, (v29 + 1712));
        v41 = *(v29 + 452);
        LODWORD(v29) = 1 << ((*(*(this + 660) + 32) >> 10) & 3);
        v30 = llvm::ConstantInt::get();
        v31 = (*(**&v35[*(*this - 24)] + 688))();
        AGCLLVMGen3TargetLowerer::buildWriteOutputPartitionFromIR(&v45, v28, &v39, 0, 0, v29, v20, Cast, v30, *(v31 + 1889), v16, v33, 0, 0, 0);
        v54 = v45;
        result = llvm::TrackingMDRef::operator=(&v55, &v46);
        v56 = v47;
        if (v46)
        {
          result = llvm::MetadataTracking::untrack();
        }

        v8 = this + 1712;
        if (v40)
        {
          goto LABEL_26;
        }
      }

      if (v54)
      {
        v32 = *(*this - 24);
        v36 = v54;
        v37 = v55;
        if (v55)
        {
          llvm::MetadataTracking::track();
        }

        v38 = v56;
        result = AGCLLVMBuilder::InsertPoint::restoreIP(&v36, &v8[v32]);
        if (v37)
        {
          result = llvm::MetadataTracking::untrack();
        }
      }

      if (v55)
      {
        result = llvm::MetadataTracking::untrack();
      }

      while (1)
      {
        i += 20;
        if (i == v7)
        {
          break;
        }

        if (*i < 0xFFFFFFFE)
        {
          if (i != v7)
          {
            goto LABEL_10;
          }

          return result;
        }
      }
    }
  }

  return result;
}

uint64_t AGCLLVMUserFragmentShader::addWrapperPostfix(AGCLLVMUserFragmentShader *this, llvm::Type *a2)
{
  v370 = *MEMORY[0x277D85DE8];
  v2 = this + 4096;
  if (*(this + 6445) == 1 && (*(this + 6462) & 1) == 0)
  {
    *&v358 = "feedback_output";
    LOWORD(v360) = 259;
    operator new();
  }

  v305 = 0;
  v4 = **(this + 800);
  if (v4)
  {
    v5 = *(this + 692);
    v6 = this + *(*this - 24);
    if (v5 == *(v6 + 252) || v5 == *(v6 + 250))
    {
      v7 = *(v6 + 271);
      v353 = *(v6 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v354, (v6 + 1712));
      v355 = *(v6 + 452);
      v8 = this + *(*this - 24);
      v9 = *(this + 695);
      v329 = 257;
      Load = AGCLLVMBuilder::CreateLoad((v8 + 1704), v9, v328);
      LOWORD(v360) = 257;
      v11 = llvm::ConstantInt::get();
      Element = llvm::IRBuilderBase::CreateExtractElement((v8 + 1712), Load, v11, &v358);
      v13 = (*(*v7 + 32))(v7, &v353, Element, (1 << (BYTE1(*(*(this + 660) + 32)) & 3)));
      if (v354)
      {
        llvm::MetadataTracking::untrack();
      }

      v14 = this + *(*this - 24);
      v15 = *(this + 766);
      LOWORD(v360) = 257;
      v16 = AGCLLVMBuilder::CreateLoad((v14 + 1704), v15, &v358);
      v17 = this + *(*this - 24);
      LOWORD(v360) = 257;
      v18 = llvm::IRBuilderBase::CreateAnd((v17 + 1712), v16, v13, &v358);
      llvm::IRBuilderBase::CreateAlignedStore((this + *(*this - 24) + 1712), v18, *(this + 766), 0, 0);
      v4 = **(this + 800);
    }
  }

  v19 = this;
  if ((v4 & 2) != 0)
  {
    v20 = *(this + 692);
    v21 = (this + *(*this - 24));
    if (v20 == v21[252] || v20 == v21[250])
    {
      v22 = *(this + 695);
      LOWORD(v360) = 257;
      v23 = AGCLLVMBuilder::CreateLoad((v21 + 213), v22, &v358);
      v24 = llvm::ConstantFP::get();
      v25 = this + *(*this - 24);
      LOWORD(v360) = 257;
      v19 = this;
      v26 = llvm::ConstantInt::get();
      InsertElement = llvm::IRBuilderBase::CreateInsertElement((v25 + 1712), v23, v24, v26, &v358);
      llvm::IRBuilderBase::CreateAlignedStore((this + *(*this - 24) + 1712), InsertElement, *(this + 695), 0, 0);
      v4 = **(this + 800);
    }
  }

  v304 = v2;
  if ((v4 & 4) != 0)
  {
    v28 = v19 + *(*v19 - 24);
    v29 = *(v28 + 234);
    v30 = *(v28 + 238);
    *&v358 = v29;
    *(&v358 + 1) = v30;
    v31 = llvm::StructType::get();
    v32 = v19;
    v33 = llvm::User::operator new(0x58);
    *&v358 = "agc.coverage";
    LOWORD(v360) = 259;
    LODWORD(v298) = 0;
    llvm::GlobalVariable::GlobalVariable();
    llvm::GlobalObject::setSection();
    v34 = v32 + *(*v32 - 24);
    v35 = *(v34 + 268);
    v36 = AGCLLVMBuilder::buildGlobalMetadata(v34 + 213, v33, 0x1Cu, 0);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v35, v36);
    ConstInBoundsGEP2_32 = AGCLLVMBuilder::CreateConstInBoundsGEP2_32((v32 + *(*v32 - 24) + 1704), v31, v33, 0);
    v38 = AGCLLVMBuilder::CreateConstInBoundsGEP2_32((v32 + *(*v32 - 24) + 1704), v31, v33, 1u);
    v39 = v32 + *(*v32 - 24);
    v40 = *(v39 + 234);
    LOWORD(v360) = 257;
    llvm::Type::isOpaquePointerTy(*ConstInBoundsGEP2_32);
    AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v39 + 214, v40, ConstInBoundsGEP2_32, 0, &v358);
    v42 = v32 + *(*v32 - 24);
    v43 = *(v42 + 238);
    LOWORD(v360) = 257;
    llvm::Type::isOpaquePointerTy(*v38);
    v44 = llvm::IRBuilderBase::CreateAlignedLoad(v42 + 214, v43, v38, 0, &v358);
    v45 = v32 + *(*v32 - 24);
    v46 = *(v45 + 271);
    v350 = *(v45 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v351, (v45 + 1712));
    v352 = *(v45 + 452);
    Not = (*(*v46 + 32))(v46, &v350, AlignedLoad, (1 << (BYTE1(*(*(v19 + 660) + 32)) & 3)));
    if (v351)
    {
      llvm::MetadataTracking::untrack();
    }

    if (*(this + 14) == 1 && (**(this + 800) & 8) != 0)
    {
      v49 = this + *(*this - 24);
      LOWORD(v360) = 257;
      Not = llvm::IRBuilderBase::CreateNot((v49 + 1712), Not, &v358, v47);
    }

    v50 = this + *(*this - 24);
    LOWORD(v360) = 257;
    v51 = llvm::IRBuilderBase::CreateAnd((v50 + 1712), Not, v44, &v358);
    v52 = this + *(*this - 24);
    v53 = *(this + 766);
    LOWORD(v360) = 257;
    v54 = AGCLLVMBuilder::CreateLoad((v52 + 1704), v53, &v358);
    v55 = this + *(*this - 24);
    LOWORD(v360) = 257;
    v19 = this;
    v56 = llvm::IRBuilderBase::CreateAnd((v55 + 1712), v54, v51, &v358);
    llvm::IRBuilderBase::CreateAlignedStore((this + *(*this - 24) + 1712), v56, *(this + 766), 0, 0);
  }

  if (v2[2338] == 1)
  {
    v57 = 6320;
    if ((*(*(v19 + 660) + 32) & 0x300) == 0)
    {
      v57 = 6296;
    }

    v58 = *(v19 + v57 + 16);
    v59 = this + *(*v19 - 24);
    llvm::ConstantFP::get();
    Splat = llvm::ConstantDataVector::getSplat();
    LOWORD(v360) = 257;
    v61 = (v59 + 1712);
    v19 = this;
    FSub = llvm::IRBuilderBase::CreateFSub(v61, v58, Splat, &v358);
    v64 = AGCLLVMBuilder::buildDotProduct((this + *(*this - 24) + 1704), FSub, FSub, v63);
    v65 = llvm::ConstantFP::get();
    v66 = this + *(*this - 24);
    LOWORD(v360) = 257;
    v67 = llvm::IRBuilderBase::CreateFSub((v66 + 1712), v65, v64, &v358);
    if (v2[1960])
    {
      if (v2[1960])
      {
        llvm::ConstantFP::get();
        LOWORD(v360) = 257;
        v19 = this;
        FCmpHelper = llvm::IRBuilderBase::CreateFCmpHelper();
      }

      else
      {
        if ((v2[1960] & 2) != 0)
        {
          v68 = this + *(*this - 24);
          v69 = *(this + 766);
          LOWORD(v360) = 257;
          v70 = AGCLLVMBuilder::CreateLoad((v68 + 1704), v69, &v358);
          llvm::ConstantFP::get();
          LOWORD(v360) = 257;
          llvm::IRBuilderBase::CreateFCmpHelper();
          llvm::ConstantInt::get();
          llvm::ConstantInt::get();
          LOWORD(v360) = 257;
          Select = llvm::IRBuilderBase::CreateSelect();
          v72 = this + *(*this - 24);
          LOWORD(v360) = 257;
          v19 = this;
          v73 = llvm::IRBuilderBase::CreateAnd((v72 + 1712), v70, Select, &v358);
          llvm::IRBuilderBase::CreateAlignedStore((this + *(*this - 24) + 1712), v73, *(this + 766), 0, 0);
        }

        FCmpHelper = 0;
      }
    }

    else
    {
      v75 = this + *(*this - 24);
      v76 = *(v75 + 271);
      v347 = *(v75 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v348, (v75 + 1712));
      v349 = *(v75 + 452);
      v77 = llvm::ConstantFP::get();
      (*(*v76 + 24))(v76, &v347, v77, v67, 2, *(this + 1606));
      if (v348)
      {
        llvm::MetadataTracking::untrack();
      }

      FCmpHelper = 0;
      v2[1964] = 1;
      v19 = this;
    }

    if ((*(*(v19 + 660) + 33) & 3) == 0)
    {
      v78 = v19 + *(*v19 - 24);
      v79 = *(v78 + 271);
      v80 = *(v79 + 1648);
      if (v80)
      {
        v81 = strlen(*(v79 + 1648));
      }

      else
      {
        v81 = 0;
      }

      v82 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>((v78 + 1704), v80, v81, *(v78 + 234), *(v78 + 234));
      v83 = (this + *(*this - 24));
      v84 = *(this + 789);
      LOWORD(v360) = 257;
      v85 = llvm::ConstantInt::get();
      *&v366 = llvm::IRBuilderBase::CreateExtractElement((v83 + 214), v84, v85, &v358);
      v329 = 257;
      v86 = llvm::IRBuilderBase::CreateCall(v83 + 214, *(v82 + 24), v82, &v366, 1, v328);
      v87 = this + *(*this - 24);
      v88 = llvm::ConstantFP::get();
      LOWORD(v360) = 257;
      v89 = llvm::IRBuilderBase::CreateFSub((v87 + 1712), v88, v86, &v358);
      v90 = this + *(*this - 24);
      LOWORD(v360) = 257;
      FMul = llvm::IRBuilderBase::CreateFMul((v90 + 1712), v86, v89, &v358);
      v329 = 257;
      FDiv = llvm::IRBuilderBase::CreateFDiv((v90 + 1712), v67, FMul, v328);
      v93 = this + *(*this - 24);
      v94 = *(v93 + 271);
      v344 = *(v93 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v345, (v93 + 1712));
      v346 = *(v93 + 452);
      FPCast = (*(*v94 + 40))(v94, &v344, FDiv, 0);
      if (v345)
      {
        llvm::MetadataTracking::untrack();
      }

      v19 = this;
      v96 = *(this + 695);
      if (v96)
      {
        v97 = this + *(*this - 24);
        LOWORD(v360) = 257;
        v98 = AGCLLVMBuilder::CreateLoad((v97 + 1704), v96, &v358);
        v99 = *v98;
        v100 = this + *(*this - 24);
        v329 = 257;
        v101 = llvm::ConstantInt::get();
        v102 = llvm::IRBuilderBase::CreateExtractElement((v100 + 1712), v98, v101, v328);
        v103 = *(*this - 24);
        v104 = **(v99 + 16);
        v369 = 257;
        if (*FPCast != v104)
        {
          v105 = (this + v103);
          if (*(FPCast + 16) > 0x14u)
          {
            LOWORD(v360) = 257;
            FPCast = llvm::CastInst::CreateFPCast();
            llvm::IRBuilderBase::Insert<llvm::CastInst>(v105 + 214, FPCast, &v366);
          }

          else
          {
            v106 = (*(*v105[223] + 256))(v105[223], FPCast, v104);
            FPCast = v106;
            if (v106 && *(v106 + 16) >= 0x1Cu)
            {
              llvm::IRBuilderBase::Insert<llvm::CastInst>(v105 + 214, v106, &v366);
            }
          }
        }

        LOWORD(v360) = 257;
        v107 = llvm::IRBuilderBase::CreateFMul((v100 + 1712), v102, FPCast, &v358);
        v108 = this + *(*this - 24);
        LOWORD(v360) = 257;
        v19 = this;
        v109 = llvm::ConstantInt::get();
        v110 = llvm::IRBuilderBase::CreateInsertElement((v108 + 1712), v98, v107, v109, &v358);
        llvm::IRBuilderBase::CreateAlignedStore((this + *(*this - 24) + 1712), v110, *(this + 695), 0, 0);
      }
    }
  }

  else
  {
    FCmpHelper = 0;
  }

  v111 = v2[1960];
  if (v111)
  {
    if ((*(*(v19 + 800) + 1) & 8) != 0)
    {
      v126 = *(v19 + 695);
      v125 = *v19;
      if (v126)
      {
        v127 = this + *(v125 - 24);
        v329 = 257;
        v128 = AGCLLVMBuilder::CreateLoad((v127 + 1704), v126, v328);
        LOWORD(v360) = 257;
        v129 = llvm::ConstantInt::get();
        v130 = llvm::IRBuilderBase::CreateExtractElement((v127 + 1712), v128, v129, &v358);
        v131 = (v127 + 1704);
        v19 = this;
        v132 = AGCLLVMBuilder::f32Extend(v131, v130, 1);
        v133 = AGCLLVMUserFragmentShader::buildAlphaQuantize(this, v132);
        goto LABEL_62;
      }
    }

    else
    {
      v125 = *v19;
    }

    v134 = v19 + *(v125 - 24);
    v135 = *(v19 + 769);
    LOWORD(v360) = 257;
    v133 = AGCLLVMBuilder::CreateLoad((v134 + 1704), v135, &v358);
LABEL_62:
    v136 = v133;
    v137 = v19 + *(*v19 - 24);
    if (v2[2338] == 1)
    {
      v141 = v19;
      LOWORD(v360) = 257;
      v142 = llvm::IRBuilderBase::CreateFCmpHelper();
      v143 = v141 + *(*v141 - 24);
      LOWORD(v360) = 257;
      llvm::IRBuilderBase::CreateAnd((v143 + 1712), v142, FCmpHelper, &v358);
      llvm::ConstantFP::get();
      llvm::ConstantFP::get();
      LOWORD(v360) = 257;
      v144 = llvm::IRBuilderBase::CreateSelect();
      v145 = v141 + *(*v141 - 24);
      v146 = *(v145 + 271);
      v341 = *(v145 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v342, (v145 + 1712));
      v343 = *(v145 + 452);
      v147 = llvm::ConstantFP::get();
      (*(*v146 + 24))(v146, &v341, v144, v147, 4, *(v19 + 1606));
      if (!v342)
      {
        goto LABEL_98;
      }
    }

    else
    {
      v138 = *(v137 + 271);
      v338 = *(v137 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v339, (v137 + 1712));
      v340 = *(v137 + 452);
      (*(*v138 + 24))(v138, &v338, v136, *(v19 + 772), *(v19 + 1546), *(v19 + 1606));
      if (!v339)
      {
        goto LABEL_98;
      }
    }

    goto LABEL_97;
  }

  if ((v2[1960] & 0xC) != 0)
  {
    if ((v2[1960] & 4) != 0)
    {
      v139 = v19 + *(*v19 - 24);
      v140 = *(v19 + 760);
      LOWORD(v360) = 257;
      v112 = AGCLLVMBuilder::CreateLoad((v139 + 1704), v140, &v358);
      v111 = v2[1960];
      if ((v111 & 8) != 0)
      {
LABEL_53:
        v113 = v19 + *(*v19 - 24);
        v114 = *(v19 + 763);
        LOWORD(v360) = 257;
        v115 = AGCLLVMBuilder::CreateLoad((v113 + 1704), v114, &v358);
        if ((v2[1960] & 2) == 0)
        {
          goto LABEL_86;
        }

        goto LABEL_54;
      }
    }

    else
    {
      v112 = 0;
      if ((v2[1960] & 8) != 0)
      {
        goto LABEL_53;
      }
    }

    v115 = 0;
    if ((v111 & 2) == 0)
    {
      goto LABEL_86;
    }

LABEL_54:
    v116 = v19 + *(*v19 - 24);
    v117 = *(v19 + 766);
    v118 = v2;
    v119 = v19;
    LOWORD(v360) = 257;
    v120 = AGCLLVMBuilder::CreateLoad((v116 + 1704), v117, &v358);
    if (v118[2348] == 1)
    {
      v121 = v19 + *(*v19 - 24);
      v122 = *(v121 + 271);
      v123 = *(v122 + 1704);
      if (v123)
      {
        v124 = strlen(*(v122 + 1704));
      }

      else
      {
        v124 = 0;
      }

      inserted = AGCLLVMBuilder::getOrInsertFunction<>((v121 + 1704), v123, v124, *(v121 + 238));
      v119 = this;
      v158 = (this + *(*this - 24));
      LOWORD(v360) = 257;
      v159 = llvm::IRBuilderBase::CreateCall(v158 + 214, *(inserted + 24), inserted, 0, 0, &v358);
      v160 = this + *(*this - 24);
      v161 = llvm::ConstantInt::get();
      LOWORD(v360) = 257;
      Shl = llvm::IRBuilderBase::CreateShl((v160 + 1712), v161, v159, &v358);
      v163 = this + *(*this - 24);
      LOWORD(v360) = 257;
      v120 = llvm::IRBuilderBase::CreateAnd((v163 + 1712), v120, Shl, &v358);
    }

    v164 = (v119 + *(*v119 - 24));
    v165 = llvm::ConstantInt::get();
    LOWORD(v360) = 257;
    llvm::IRBuilderBase::CreateICmp(v164 + 214, 33, v120, v165, &v358);
    llvm::ConstantFP::getNaN();
    LOWORD(v360) = 257;
    v112 = llvm::IRBuilderBase::CreateSelect();
    v19 = v119;
    if (*(v119 + 1136) <= 1)
    {
      *(v119 + 1136) = 2;
    }

    v2 = v304;
LABEL_86:
    v166 = *(v19 + *(*v19 - 24) + 2168);
    v167 = (*(*v166 + 848))(v166);
    if (v112 && v167)
    {
      if (!*(v19 + 808))
      {
        v168 = llvm::PointerType::get();
        *&v358 = "agc.viewport_depth_range_pointer_global";
        LOWORD(v360) = 259;
        v169 = *(*(v19 + *(*v19 - 24) + 2168) + 920);
        v172 = (*(*v169 + 328))(v169, v170, v171);
        *(v19 + 808) = AGCLLVMUserObject::createGlobalBufferBinding(v19, v168, &v358, v172, 0, 5u, 0);
      }

      if (!*(v19 + 795))
      {
        v2[2362] = 1;
        (*(*this + 528))(&v358, this, *(this + *(*this - 24) + 1904), "air.viewport_array_index", 24);
        v174 = AGCLLVMUserFragmentShader::replaceInterpolation(this, &v358, v173);
        v19 = this;
        llvm::ValueHandleBase::operator=((this + 6344), v174);
        if (v361 != v362)
        {
          free(v361);
        }
      }

      v175 = v19 + *(*v19 - 24);
      v176 = *(v19 + 808);
      LOWORD(v360) = 257;
      v177 = AGCLLVMBuilder::CreateLoad((v175 + 1704), v176, &v358);
      v178 = v19 + *(*v19 - 24);
      v179 = *(v178 + 238);
      LOWORD(v360) = 257;
      llvm::Type::isOpaquePointerTy(*v177);
      v180 = llvm::IRBuilderBase::CreateAlignedLoad(v178 + 214, v179, v177, 0, &v358);
      Cast = *(v19 + 795);
      v182 = *v180;
      if (*Cast != *v180)
      {
        v183 = v19 + *(*v19 - 24);
        LOWORD(v360) = 257;
        Cast = llvm::IRBuilderBase::CreateCast((v183 + 1712), 39, Cast, v182, &v358);
      }

      v184 = (v19 + *(*v19 - 24));
      LOWORD(v360) = 257;
      llvm::IRBuilderBase::CreateICmp(v184 + 214, 36, Cast, v180, &v358);
      llvm::ConstantInt::get();
      v329 = 257;
      v185 = llvm::IRBuilderBase::CreateSelect();
      v186 = llvm::PointerType::get();
      v187 = v19 + *(*v19 - 24);
      v188 = *(v187 + 238);
      v189 = llvm::ConstantInt::get();
      LOWORD(v360) = 257;
      GEP = llvm::IRBuilderBase::CreateGEP((v187 + 1712), v188, v177, v189, &v358);
      v329 = 257;
      v191 = llvm::IRBuilderBase::CreateCast((v187 + 1712), 49, GEP, v186, v328);
      v192 = v19 + *(*v19 - 24);
      v193 = *(v192 + 241);
      *&v366 = v185;
      *(&v366 + 1) = llvm::ConstantInt::get();
      LOWORD(v360) = 257;
      llvm::Type::isOpaquePointerTy(*v191);
      v194 = llvm::IRBuilderBase::CreateGEP((v192 + 1712), v193, v191, &v366, 2, &v358);
      v329 = 257;
      AGCLLVMBuilder::CreateLoad((v192 + 1704), v194, v328);
      v195 = v19 + *(*v19 - 24);
      v196 = *(v195 + 241);
      *&v366 = v185;
      *(&v366 + 1) = llvm::ConstantInt::get();
      LOWORD(v360) = 257;
      llvm::Type::isOpaquePointerTy(*v191);
      v197 = llvm::IRBuilderBase::CreateGEP((v195 + 1712), v196, v191, &v366, 2, &v358);
      v329 = 257;
      AGCLLVMBuilder::CreateLoad((v195 + 1704), v197, v328);
      LOWORD(v360) = 257;
      llvm::IRBuilderBase::CreateFCmpHelper();
      v329 = 257;
      llvm::IRBuilderBase::CreateSelect();
      LOWORD(v360) = 257;
      llvm::IRBuilderBase::CreateFCmpHelper();
      v329 = 257;
      v112 = llvm::IRBuilderBase::CreateSelect();
      v2 = v304;
    }

    v198 = v19 + *(*v19 - 24);
    v199 = *(v198 + 271);
    v335 = *(v198 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v336, (v198 + 1712));
    v337 = *(v198 + 452);
    (*(*v199 + 616))(v199, &v335, v112, v115);
    if (!v336)
    {
      goto LABEL_98;
    }

    goto LABEL_97;
  }

  if ((v2[1960] & 2) == 0)
  {
    goto LABEL_99;
  }

  v148 = v19 + *(*v19 - 24);
  v149 = *(v19 + 766);
  LOWORD(v360) = 257;
  v150 = AGCLLVMBuilder::CreateLoad((v148 + 1704), v149, &v358);
  if (v2[1964])
  {
    if ((v2[2366] & 1) == 0)
    {
      if (v2[2348] == 1 && (*(*(v19 + 660) + 33) & 3) != 0)
      {
        v151 = v19 + *(*v19 - 24);
        v152 = *(v151 + 271);
        v153 = *(v152 + 1704);
        if (v153)
        {
          v154 = strlen(*(v152 + 1704));
        }

        else
        {
          v154 = 0;
        }

        v286 = AGCLLVMBuilder::getOrInsertFunction<>((v151 + 1704), v153, v154, *(v151 + 238));
        v287 = (this + *(*this - 24));
        LOWORD(v360) = 257;
        v288 = llvm::IRBuilderBase::CreateCall(v287 + 214, *(v286 + 24), v286, 0, 0, &v358);
        v289 = this + *(*this - 24);
        v290 = llvm::ConstantInt::get();
        LOWORD(v360) = 257;
        v291 = llvm::IRBuilderBase::CreateShl((v289 + 1712), v290, v288, &v358);
        v292 = this + *(*this - 24);
        LOWORD(v360) = 257;
        v19 = this;
        v150 = llvm::IRBuilderBase::CreateAnd((v292 + 1712), v150, v291, &v358);
      }

      v293 = this + *(*v19 - 24);
      v294 = llvm::ConstantInt::get();
      LOWORD(v360) = 257;
      ICmp = llvm::IRBuilderBase::CreateICmp(v293 + 214, 32, v150, v294, &v358);
      v296 = (v293 + 1704);
      v19 = this;
      v305 = AGCLLVMBuilder::splat(v296, 4, ICmp, v297);
    }

    goto LABEL_99;
  }

  v155 = v19 + *(*v19 - 24);
  v156 = *(v155 + 271);
  v332 = *(v155 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v333, (v155 + 1712));
  v334 = *(v155 + 452);
  (*(*v156 + 624))(v156, &v332, v150);
  if (v333)
  {
LABEL_97:
    llvm::MetadataTracking::untrack();
  }

LABEL_98:
  v2[1964] = 1;
  v19 = this;
LABEL_99:
  v200 = **(*(*(v19 + 21) + 24) + 16);
  if (v200 == *(v19 + *(*v19 - 24) + 1848))
  {
    v301 = 0;
  }

  else
  {
    v201 = *(*(v19 + 8) + 8);
    v202 = *(*(llvm::Module::getFunction() + 8) + 24);
    if (((llvm::CallBase::arg_end(v202) - (v202 - 32 * (*(v202 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) != 0)
    {
      *&v358 = &v359;
      *(&v358 + 1) = 0x800000000;
      llvm::SmallVectorImpl<llvm::Value *>::assign(&v358, v201, 0);
      if (v201)
      {
        if (*(v200 + 8) == 16)
        {
          AGCLLVMBuilder::unboxStruct(this + *(*this - 24) + 1704, *(v202 - 4 * (*(v202 + 5) & 0x7FFFFFF)), &v358);
        }

        else
        {
          *v358 = *(v202 - 4 * (*(v202 + 5) & 0x7FFFFFF));
        }

        v203 = 0;
        v204 = 0;
        do
        {
          v205 = *(*(this + 8) - 8 * *(*(this + 8) + 8) + 8 * v203);
          if (isStringMDNode(*(v205 - 8 * *(v205 + 8)), "air.render_target"))
          {
            v206 = *(v358 + 8 * v203);
            if (v206)
            {
              if (*(v206 + 16) == 21)
              {
                v207 = *(*(this + 10) + 8 * *(v206 + 32));
                if (v207)
                {
                  if (isStringMDNode(*(v207 - 8 * *(v207 + 8) + 8), "air.render_target"))
                  {
                    LODWORD(v366) = 0;
                    LODWORD(v356) = 0;
                    v328[0] = 2;
                    parseMDInt(0, v207, v328, &v366);
                    v328[0] = 1;
                    parseMDInt(0, v205, v328, &v356);
                    if (v366 == v356)
                    {
                      v208 = 1 << v366;
                    }

                    else
                    {
                      LOBYTE(v208) = 0;
                    }

                    v204 |= v208;
                  }
                }
              }
            }
          }

          ++v203;
        }

        while (v201 != v203);
        v301 = v204;
      }

      else
      {
        v301 = 0;
      }

      if (v358 != &v359)
      {
        free(v358);
      }

      v19 = this;
    }

    else
    {
      v301 = 0;
    }
  }

  v209 = *(*(v19 + 801) + 64);
  if ((~v209 & 0xF) != 0)
  {
    v211 = -1;
    v212 = 4;
    while (v211 != 6)
    {
      v213 = v209 >> v212;
      ++v211;
      v212 += 4;
      if ((~v213 & 0xF) == 0)
      {
        if (v211 < 7)
        {
          goto LABEL_124;
        }

        break;
      }
    }

    v210 = AGCLLVMUserFragmentShader::buildStaticLtpLibOffsetArrayPtr(v19);
  }

  else
  {
LABEL_124:
    v210 = 0;
  }

  v364 = 0u;
  v365 = 0u;
  v363 = 0u;
  memset(v362, 0, sizeof(v362));
  v360 = 0u;
  v361 = 0u;
  v358 = 0u;
  v359 = 0u;
  AGCLLVMStatelessFragmentObject::buildDrawBufferState(&v358, v19 + 567, *(v19 + 660), v210);
  LOBYTE(v328[0]) = 0;
  v331 = 0;
  if ((*(*v19 + 616))(v19))
  {
    AGCLLVMUserFragmentShader::readAndWriteFramebufferFunctionPointers(v328, v19);
    v331 = 1;
  }

  if ((*(v19 + *(*v19 - 24) + 2284) & 1) == 0)
  {
LABEL_224:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v214 = 0;
  v306 = v19 + 1704;
  v215 = &v362[312];
  v216 = 14;
  v217 = 52;
  v218 = 5192;
  v219 = 5760;
  v303 = (*(*(v19 + 660) + 32) >> 28) & 1;
  do
  {
    v220 = *(v19 + 660);
    v322 = (1 << (v214 + 7));
    if ((*(v220 + 32) & v322) == 0)
    {
      goto LABEL_205;
    }

    v221 = *(v19 + v219);
    if (!v221 && (*(v220 + 4 * v214 + 28) & 0x1F) == 0x17)
    {
      goto LABEL_205;
    }

    v321 = 1 << (v214 + 7);
    v319 = v217;
    v320 = v214 + 7;
    v318 = v218;
    v222 = *v215;
    v223 = v19 + *(*v19 - 24);
    v224 = *(v223 + 271);
    v325 = *(v223 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v326, (v223 + 1712));
    v327 = *(v223 + 452);
    v315 = v222;
    v225 = (*(*v224 + 208))(v224, &v325, v222);
    if (v326)
    {
      llvm::MetadataTracking::untrack();
    }

    *&v366 = "case2_stateless_color_coverage_mask";
    v369 = 259;
    v314 = v225;
    llvm::Value::setName();
    v226 = v304[1432];
    v227 = *(v19 + 800);
    v228 = *(v227 + 1);
    v229 = v214 + 7;
    if ((v322 & HIDWORD(v228)) == 0)
    {
      v242 = vand_s8(vshl_u32(vshl_u32(vand_s8(vshl_u32(vdup_n_s32(v228), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL), vneg_s32(vdup_n_s32(v320))), 0x200000001), 0x400000002);
      v313 = (*(v227 + 1) >> v320) & 1 | (8 * ((BYTE3(*(v227 + 1)) >> v320) & 1)) | v242.i32[0] | v242.i32[1];
      v231 = 1 << (v214 + 7);
      if ((v321 & v301) == 0)
      {
        v230 = 15;
        goto LABEL_141;
      }

      v243 = *v227;
      if ((v243 & 0x20) != 0)
      {
        v282 = (v243 >> 6) & 0x1F;
        v230 = 15;
        if (v282 <= 0x10 && ((1 << v282) & 0x10014) != 0)
        {
          v230 = 0;
        }

        goto LABEL_141;
      }

      v244 = *(v19 + 802);
      if (v244)
      {
        v245 = *(v244 + 16);
        if ((v245 & 1) == 0)
        {
LABEL_159:
          v230 = 0;
LABEL_218:
          v229 = v214 + 7;
          goto LABEL_141;
        }
      }

      else
      {
        v245 = *(*(v19 + 801) + 4 * v214 + 52);
        if ((v245 & 1) == 0)
        {
          goto LABEL_159;
        }
      }

      if (blendIsNoOpForPassthrough((v245 >> 21) & 7, (v245 >> 1) & 0x1F, (v245 >> 6) & 0x1F))
      {
        v283 = 0;
      }

      else
      {
        v283 = 7;
      }

      IsNoOpForPassthrough = blendIsNoOpForPassthrough(HIBYTE(v245) & 7, v245 >> 11, HIWORD(v245) & 0x1F);
      v231 = 1 << (v214 + 7);
      if (IsNoOpForPassthrough)
      {
        v230 = v283;
      }

      else
      {
        v230 = v283 | 8;
      }

      goto LABEL_218;
    }

    v313 = 15;
    v230 = 15;
    v231 = 1 << (v214 + 7);
LABEL_141:
    if ((v231 & v226) != 0)
    {
      v232 = 15;
    }

    else
    {
      v232 = 0;
    }

    v233 = *v19;
    v234 = v19 + *(*v19 - 24);
    if ((v234[2284] & 1) == 0)
    {
      goto LABEL_224;
    }

    v235 = *(v234 + 570);
    if (v235 == 7 || v235 == 2)
    {
      v237 = *(v19 + 1512);
      v238 = *(v19 + 1345);
      if ((v237 & v231) == 0)
      {
        *(v19 + 1512) = v237 | v231;
        v238 |= v231;
      }

      *(v19 + 1513) |= v231;
      *(v19 + 1345) = v238 | (256 << v229);
    }

    v310 = v232;
    v311 = v230;
    v312 = v231 & v226;
    if (v221)
    {
      v239 = *(v233 - 24);
      v240 = *(v19 + v219 + 24);
      v369 = 257;
      v241 = AGCLLVMBuilder::CreateLoad(&v306[v239], v240, &v366);
    }

    else
    {
      v241 = llvm::UndefValue::get();
    }

    v316 = v241;
    if (*(v19 + v219 + 256))
    {
      v246 = *(*v19 - 24);
      v247 = *(v19 + v219 + 280);
      v369 = 257;
      v317 = AGCLLVMBuilder::CreateLoad(&v306[v246], v247, &v366);
    }

    else
    {
      v317 = 0;
    }

    v248 = *(v215 - 1);
    v324 = 0;
    LOBYTE(v323) = 0;
    BYTE4(v323) = 0;
    v249 = *(v19 + 660);
    v250 = *(v249 + 32);
    v251 = *(v19 + 801);
    v252 = *(v251 + 4 * v214 + 52);
    if ((v252 & 0x8000000) != 0)
    {
      LOBYTE(v253) = 0;
      v254 = *(v19 + 800);
    }

    else
    {
      v255 = (v251 + v319);
      v256 = *(v19 + 802);
      if (v256)
      {
        v255 = (v256 + 16);
      }

      v253 = *v255;
      v324 = *v255;
      v254 = *(v19 + 800);
      if ((*v254 & 0x20) != 0)
      {
        LODWORD(v323) = (*v254 >> 6) & 0x1F;
        BYTE4(v323) = 1;
      }
    }

    v257 = *(v254 + 8);
    v258 = *(v249 + 4 * v214 + 28);
    v259 = v258 & 0x1F;
    v308 = v248;
    v309 = *(&v363 + 1);
    v307 = v250;
    if ((v322 & HIDWORD(v257)) == 0 || v259 != 23)
    {
      v302 = v216;
      v260 = (v252 & 0x8000000 | v253 & 1) != 0;
      if ((v322 & HIDWORD(v257)) != 0)
      {
        v261 = 0;
        v262 = 0;
      }

      else
      {
        v263 = vand_s8(vshl_u32(vshl_u32(vand_s8(vshl_u32(vdup_n_s32(v257), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL), vneg_s32(vdup_n_s32(v229))), 0x200000001), 0x400000002);
        v262 = (v257 >> v229) & 1 | (8 * ((BYTE3(v257) >> v229) & 1u)) | v263.i32[0] | v263.i32[1];
        v261 = 0x100000000;
      }

      v264 = v259 == 23;
      v265 = v259 != 23;
      v266 = v258 >> 5;
      LODWORD(v267) = (v258 >> 9) & 7;
      if (v264)
      {
        v268 = 0;
      }

      else
      {
        v268 = v266;
      }

      if (v264)
      {
        v267 = 0;
      }

      else
      {
        v267 = v267;
      }

      v269 = v268 & 0xFFFFFFFEFFFFFFFFLL | ((v265 & 1) << 32);
      v270 = v267 | (v265 << 32);
      v316 = AGCLLVMStatelessFragmentObject::removeUnusedComponents(v19 + 567, v316, v261 | v262, v269, v270, v260);
      if (v317)
      {
        v317 = AGCLLVMStatelessFragmentObject::removeUnusedComponents(v19 + 567, v317, v261 | v262, v269, v270, v260);
      }

      else
      {
        v317 = 0;
      }

      v229 = v214 + 7;
      v216 = v302;
    }

    if ((*(*v19 + 608))(v19, v229))
    {
      v271 = *(v19 + 14);
      v272 = *(v19 + 32);
      AGCLLVMBuilder::WriteFramebufferArgs::WriteFramebufferArgs(&v356, (*(v19 + 660) + 32), *(*(v19 + 660) + 4 * v214 + 28));
      v273 = 0;
      v366 = v356;
      v367 = v357;
      v274 = 1;
    }

    else
    {
      if ((v331 & 1) == 0)
      {
        goto LABEL_224;
      }

      v274 = 0;
      v273 = *(&v330 + v214);
      v271 = *(v19 + 14);
      v272 = *(v19 + 32);
      LOBYTE(v366) = 0;
    }

    v368 = v274;
    RTZMode = AGCLLVMTargetLowerer::getRTZMode(*(v19 + *(*v19 - 24) + 2168), *(*(v19 + 684) + 4 * v214 + 28));
    HIBYTE(v300) = v272 & 1;
    LOBYTE(v300) = v271 & 1;
    LOBYTE(v299) = (v307 & v322) == 0;
    LOBYTE(v298) = v303;
    AGCLLVMFragmentShader::buildWriteFramebuffer((v19 + 4536), v316, v317, v314, v273, v309, v308, v315, v298, &v324, v299, &v323, v300, v320, &v366, v313 & v311 & v310, v305, RTZMode);
    if (v312)
    {
      *(v19 + 1330) |= (v305 != 0) << v320;
      *(v19 + 1331) |= v321;
      v276 = *v316;
      *(v19 + 1334) |= (llvm::Type::getScalarSizeInBits(*v316) == 32) << v320;
      v277 = (*(v276 + 2) & 0xFE) == 0x12 ? *(**(v276 + 2) + 8) : *(v276 + 2);
      *(v19 + 1333) |= (v277 < 7) << v320;
      v278 = (*(v276 + 2) & 0xFE) == 0x12 ? *(v276 + 8) - 1 : 0;
      *(v19 + 1335) |= v278 << v216;
      if (v317)
      {
        *(v19 + 1336) |= v321;
        v279 = *v317;
        *(v19 + 1338) |= (llvm::Type::getScalarSizeInBits(*v317) == 32) << v320;
        if ((*(v279 + 2) & 0xFE) == 0x12)
        {
          v280 = *(**(v279 + 2) + 8);
        }

        else
        {
          v280 = *(v279 + 2);
        }

        *(v19 + 1337) |= (v280 < 7) << v320;
        if ((*(v279 + 2) & 0xFE) == 0x12)
        {
          v281 = *(v279 + 8) - 1;
        }

        else
        {
          v281 = 0;
        }

        *(v19 + 1339) |= v281 << v216;
      }
    }

    v218 = v318;
    v217 = v319;
LABEL_205:
    --v214;
    v217 -= 4;
    v218 -= 88;
    v215 -= 6;
    v216 -= 2;
    v219 -= 32;
  }

  while (v214 != -8);
  if ((*(v19 + *(*v19 - 24) + 2284) & 1) == 0)
  {
    goto LABEL_224;
  }

  return (*(*v19 + 600))(v19);
}

uint64_t *llvm::SmallVectorImpl<llvm::Value *>::assign(uint64_t *result, unint64_t a2, uint64_t a3)
{
  if (*(result + 3) < a2)
  {
    *(result + 2) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v3 = *(result + 2);
  if (v3 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = *(result + 2);
  }

  if (v4)
  {
    v5 = 0;
    v6 = *result;
    v7 = vdupq_n_s64(v4 - 1);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v5), xmmword_20E70C4F0)));
      if (v8.i8[0])
      {
        *(v6 + 8 * v5) = a3;
      }

      if (v8.i8[4])
      {
        *(v6 + 8 * v5 + 8) = a3;
      }

      v5 += 2;
    }

    while (((v4 + 1) & 0x1FFFFFFFELL) != v5);
  }

  v9 = a2 - v3;
  if (a2 > v3)
  {
    v10 = 0;
    v11 = *result + 8 * v3;
    v12 = vdupq_n_s64(v9 - 1);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_20E70C4F0)));
      if (v13.i8[0])
      {
        *(v11 + 8 * v10) = a3;
      }

      if (v13.i8[4])
      {
        *(v11 + 8 * v10 + 8) = a3;
      }

      v10 += 2;
    }

    while (((v9 + 1) & 0xFFFFFFFFFFFFFFFELL) != v10);
  }

  *(result + 2) = a2;
  return result;
}

void AGCLLVMBuilder::unboxStruct(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v6 = *(*a2 + 12);
  v7 = *(a3 + 8);
  if (v7 != v6)
  {
    if (v7 <= v6)
    {
      if (*(a3 + 12) < v6)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v7 != v6)
      {
        bzero((*a3 + 8 * v7), 8 * v6 - 8 * v7);
      }
    }

    *(a3 + 8) = v6;
  }

  if (a2[16] == 93)
  {
    v8 = a2;
    do
    {
      if (*(v8 + 18) != 1)
      {
        break;
      }

      v9 = **(v8 + 8);
      if (!*(*a3 + 8 * v9))
      {
        *(*a3 + 8 * v9) = *(v8 - 4);
      }

      v8 = *(v8 - 8);
    }

    while (v8[16] == 93 && v8 != 0);
  }

  v14 = 0;
  if (v6)
  {
    v11 = 0;
    do
    {
      if (!*(*a3 + 8 * v11))
      {
        v13[16] = 257;
        Value = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, a2, &v14, 1, v13);
        v11 = v14;
        *(*a3 + 8 * v14) = Value;
      }

      v14 = ++v11;
    }

    while (v11 < v6);
  }
}

llvm::Instruction *AGCLLVMTargetLowerer::buildColorCoverageMask(uint64_t a1, uint64_t a2)
{
  v8 = *a2;
  v9 = *(a2 + 16);
  if (v9)
  {
    llvm::MetadataTracking::track();
  }

  v10 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v8);
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1, "llvm.agx.color.coverage.mask", 28, *(a1 + 192));
  v7 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(inserted + 24), inserted, 0, 0, v6);
}

llvm::Constant **AGCLLVMStatelessFragmentObject::removeUnusedComponents(void *a1, llvm::Constant **a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = a2;
  v18 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 8) == 18)
  {
    v14 = llvm::ConstantInt::get();
    v15 = llvm::ConstantInt::get();
    v16 = llvm::ConstantInt::get();
    v17 = llvm::ConstantInt::get();
    NullValue = llvm::Constant::getNullValue(*v6, v8);
    v10 = a1 + *(*a1 - 24);
    v11 = llvm::ConstantVector::get();
    v13[16] = 257;
    return llvm::IRBuilderBase::CreateShuffleVector((v10 + 1712), v6, NullValue, v11, v13);
  }

  return v6;
}

uint64_t llvm::IRBuilderBase::CreateShuffleVector(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, const llvm::Twine *a5)
{
  v10[8] = *MEMORY[0x277D85DE8];
  llvm::ShuffleVectorInst::getShuffleMask();
  return llvm::IRBuilderBase::CreateShuffleVector(this, a2, a3, v10, 0, a5);
}

uint64_t llvm::IRBuilderBase::CreateShuffleVector(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    v12 = (*(**(a1 + 72) + 336))(*(a1 + 72), a2, a3, a4, a5);
    if (v12)
    {
      v13 = *(v12 + 16) >= 0x1Cu;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v12, a6);
    }
  }

  else
  {
    v12 = llvm::User::operator new(0x68);
    v19 = 257;
    MEMORY[0x20F3307A0](v12, a2, a3, a4, a5, v18, 0);
    (*(**(a1 + 80) + 16))(*(a1 + 80), v12, a6, *(a1 + 48), *(a1 + 56));
    v14 = *(a1 + 8);
    if (v14)
    {
      v15 = *a1;
      v16 = &v15[4 * v14];
      do
      {
        llvm::Instruction::setMetadata();
        v15 += 4;
      }

      while (v15 != v16);
    }
  }

  return v12;
}

llvm::Function *AGCLLVMBuilder::WriteFramebufferArgs::WriteFramebufferArgs(llvm::Function *result, unsigned int *a2, unsigned int a3)
{
  if ((a3 & 0x1F) == 0x17)
  {
    v7 = std::__throw_bad_optional_access[abi:nn200100]();
    return AGCLLVMStatelessFragmentObject::buildWriteFramebufferFunction(v7, v8, v9, v10);
  }

  else
  {
    v3 = *a2;
    v4 = 1 << ((*a2 >> 10) & 3);
    v5 = (~*a2 & 0x1FF000) != 0;
    v6 = (~*a2 & 0x600000) != 0;
    *result = a3 & 0x1F;
    *(result + 1) = a3 >> 5;
    *(result + 2) = v4;
    *(result + 3) = (a3 >> 9) & 7;
    *(result + 16) = BYTE1(a3) & 1;
    *(result + 17) = (a3 & 0x2000000) != 0;
    *(result + 18) = v6 & (v3 >> 22) | ((a3 & 0x100000) >> 20);
    *(result + 19) = v5;
  }

  return result;
}

llvm::Function *AGCLLVMStatelessFragmentObject::buildWriteFramebufferFunction(uint64_t **this, const AGCLLVMStatelessFragmentObject::WriteFramebufferOptions *a2, char *a3, char *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  AGCLLVMStatelessFragmentObject::WriteFramebufferOptions::str(&__p, a2, 0);
  v6 = *(a2 + 9);
  v7 = *(a2 + 316);
  v8 = *(a2 + 304);
  v20 = *(a2 + 10);
  AGCLLVMStatelessFragmentObject::buildWriteFramebufferFunctionType(this, *(a2 + 8), v6, v20, v7, v8);
  llvm::Module::getOrInsertFunction();
  v10 = v9;
  v11 = *(v9 + 9);
  *(v9 + 9) = v11 & 0xC00F | (16 * (*(this + *(*this - 3) + 2168))[980]);
  if (v11)
  {
    llvm::Function::BuildLazyArguments(v9);
  }

  llvm::Value::setName();
  if (v6)
  {
    if (*(v10 + 18))
    {
      llvm::Function::BuildLazyArguments(v10);
    }

    llvm::Value::setName();
    if (v7)
    {
      goto LABEL_7;
    }
  }

  else if (v7)
  {
LABEL_7:
    llvm::ConstantInt::get();
    goto LABEL_12;
  }

  if (*(v10 + 18))
  {
    llvm::Function::BuildLazyArguments(v10);
  }

  llvm::Value::setName();
LABEL_12:
  if (*(v10 + 18))
  {
    llvm::Function::BuildLazyArguments(v10);
  }

  llvm::Value::setName();
  if (v8)
  {
    if (*(v10 + 18))
    {
      llvm::Function::BuildLazyArguments(v10);
    }

    llvm::Value::setName();
  }

  if (v20)
  {
    if (*(v10 + 18))
    {
      llvm::Function::BuildLazyArguments(v10);
    }

    llvm::Value::setName();
  }

  if (*(v10 + 72) == v10 + 72)
  {
    operator new();
  }

  v12 = this[3];
  if (!v12)
  {
    goto LABEL_31;
  }

  v13 = this + 3;
  do
  {
    v14 = v12[4];
    v15 = v14 >= v10;
    v16 = v14 < v10;
    if (v15)
    {
      v13 = v12;
    }

    v12 = v12[v16];
  }

  while (v12);
  if (v13 == this + 3 || v13[4] > v10)
  {
LABEL_31:
    v13 = this + 3;
  }

  *a3 = *(v13 + 40);
  *a4 = *(v13 + 41);
  v17 = this + *(*this - 3);
  if (v17[2284] == 1)
  {
    v18 = *(v17 + 570);
  }

  else
  {
    v18 = 0;
  }

  AGCLLVMStatelessFragmentObject::addOrRemoveLogicalRasterOrderGroup(this, v10, v18, *(a2 + 308) & 0xFFFFFFFFFFLL);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v10;
}

void AGCLLVMStatelessFragmentObject::WriteFramebufferOptions::str(std::string *this, uint64_t a2, int a3)
{
  v6 = 0;
  if (*(a2 + 304))
  {
    v7 = 0x10000000;
  }

  else
  {
    v7 = 0;
  }

  v128 = *(a2 + 22);
  if (*(a2 + 22))
  {
    v8 = 0x400000;
  }

  else
  {
    v8 = 6291456;
  }

  v9 = (v7 | v8) & 0xFFFFF0FF | (((27 - __clz(*(a2 + 320))) & 3) << 8) & 0xF3FF | (((27 - __clz(*(a2 + 12))) & 3) << 10);
  if (!*(a2 + 23))
  {
    v9 |= 0x1FF000u;
  }

  v131 = v9;
  if (*(a2 + 56) == 1)
  {
    v6 = ((*(a2 + 52) & 0x1F) << 8) | 0x80;
  }

  v10 = v6 | (2 * (*(a2 + 276) & 0xF));
  v11 = *(a2 + 64);
  v12 = *(v11 + 8);
  if ((*(v11 + 8) & 0xFE) == 0x12)
  {
    v13 = **(v11 + 16);
    v14 = v10 | ((v13[8] < 7u) << 13);
    v12 = *(v11 + 8) & 0x13;
  }

  else
  {
    v14 = v10 | ((v12 < 7) << 13);
    v13 = *(a2 + 64);
  }

  v15 = *(a2 + 4) & 0x1FLL;
  v16 = *(a2 + 8);
  v17 = *(a2 + 16);
  v129 = *(a2 + 20);
  v130 = *(a2 + 21);
  v18 = *(a2 + 44);
  v19 = v14 | ((llvm::Type::getScalarSizeInBits(v13) == 32) << 14);
  if (v12 == 18)
  {
    v20 = ((*(v11 + 32) << 15) + 98304) & 0x18000;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20 | v19;
  v22 = *(a2 + 72);
  if (v22)
  {
    v23 = v21 | 0x20000;
    v24 = *(v22 + 8);
    if ((*(v22 + 8) & 0xFE) == 0x12)
    {
      v25 = **(v22 + 16);
      v26 = v23 | ((v25[8] < 7u) << 18);
      v24 = *(v22 + 8) & 0x13;
    }

    else
    {
      v26 = v23 | ((v24 < 7) << 18);
      v25 = *(a2 + 72);
    }

    v27 = v26 | ((llvm::Type::getScalarSizeInBits(v25) == 32) << 19);
    if (v24 == 18)
    {
      v28 = ((*(v22 + 32) << 20) + 3145728) & 0x300000;
    }

    else
    {
      v28 = 0;
    }

    v21 = v28 | v27;
  }

  v132 = *(a2 + 80);
  v133 = *(a2 + 88);
  if (*(a2 + 88))
  {
    v29 = 0x400000;
  }

  else
  {
    v29 = 0;
  }

  v134 = *(a2 + 89);
  if (*(a2 + 89))
  {
    v30 = 0x800000;
  }

  else
  {
    v30 = 0;
  }

  v31 = *(a2 + 90);
  if (*(a2 + 90))
  {
    v32 = 0x1000000;
  }

  else
  {
    v32 = 0;
  }

  v33 = v29 | v30 | v32;
  if (*(a2 + 48))
  {
    v34 = 0x2000000;
  }

  else
  {
    v34 = 0;
  }

  if (*(a2 + 316))
  {
    v35 = 0x10000000;
  }

  else
  {
    v35 = 0;
  }

  if (a3)
  {
    v36 = 64;
  }

  else
  {
    v36 = 0;
  }

  v135 = v34 & 0xF3FFFFFF | ((*(a2 + 272) & 3) << 26) | v33 | v21 & 0xFFFFFF9F | (32 * (v132 != 0));
  v37 = v35 | v36 | v135;
  if ((v37 & 0x40) != 0)
  {
    v38 = "agc.read_framebuffer.";
  }

  else
  {
    v38 = "agc.write_framebuffer.";
  }

  std::string::basic_string[abi:nn200100]<0>(this, v38);
  if (v15 == 23)
  {
    v124 = std::__throw_bad_optional_access[abi:nn200100]();
    _AGCStatelessPSODynamicLibraryStateAGP::functionName(void)const::{lambda(std::string &,BOOL,BOOL,unsigned int)#1}::operator()(v124, v125, v126, v127);
    return;
  }

  if (v15 <= 0x16)
  {
    std::string::append(this, off_277E20B38[v15]);
  }

  std::to_string(&v137, v16 & 7);
  v39 = std::string::insert(&v137, 0, ".");
  v40 = v39->__r_.__value_.__r.__words[2];
  *&v138.__r_.__value_.__l.__data_ = *&v39->__r_.__value_.__l.__data_;
  v138.__r_.__value_.__r.__words[2] = v40;
  v39->__r_.__value_.__l.__size_ = 0;
  v39->__r_.__value_.__r.__words[2] = 0;
  v39->__r_.__value_.__r.__words[0] = 0;
  v41 = std::string::append(&v138, ".");
  v42 = v41->__r_.__value_.__r.__words[2];
  v139 = *&v41->__r_.__value_.__l.__data_;
  v140 = v42;
  v41->__r_.__value_.__l.__size_ = 0;
  v41->__r_.__value_.__r.__words[2] = 0;
  v41->__r_.__value_.__r.__words[0] = 0;
  if (v140 >= 0)
  {
    v43 = &v139;
  }

  else
  {
    v43 = v139;
  }

  if (v140 >= 0)
  {
    v44 = HIBYTE(v140);
  }

  else
  {
    v44 = *(&v139 + 1);
  }

  std::string::append(this, v43, v44);
  if (SHIBYTE(v140) < 0)
  {
    operator delete(v139);
  }

  if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v138.__r_.__value_.__l.__data_);
  }

  v45 = v17 & 7;
  if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v137.__r_.__value_.__l.__data_);
  }

  if ((v17 & 7u) > 3)
  {
    if ((v17 & 7u) > 5)
    {
      if (v45 != 6)
      {
        goto LABEL_76;
      }

      v46 = "A000";
    }

    else if (v45 == 4)
    {
      v46 = "GABR";
    }

    else
    {
      v46 = "GBRA";
    }
  }

  else if ((v17 & 7u) > 1)
  {
    if (v45 == 2)
    {
      v46 = "RABG";
    }

    else
    {
      v46 = "RAGB";
    }
  }

  else if ((v17 & 7) != 0)
  {
    v46 = "BGRA";
  }

  else
  {
    v46 = "RGBA";
  }

  std::string::append(this, v46);
LABEL_76:
  if (v129)
  {
    std::string::append(this, ".gammaCorrection");
  }

  if (v130)
  {
    std::string::append(this, ".packed");
  }

  if ((((~v131 & 0x600000) != 0) & (v131 >> 22)) != 0 || v128)
  {
    std::string::append(this, ".vouchedNoLIBSpilling");
  }

  else
  {
    std::to_string(&v138, 1 << ((v131 >> 10) & 3));
    v47 = std::string::insert(&v138, 0, ".LIBSpilling.");
    v48 = v47->__r_.__value_.__r.__words[2];
    v139 = *&v47->__r_.__value_.__l.__data_;
    v140 = v48;
    v47->__r_.__value_.__l.__size_ = 0;
    v47->__r_.__value_.__r.__words[2] = 0;
    v47->__r_.__value_.__r.__words[0] = 0;
    if (v140 >= 0)
    {
      v49 = &v139;
    }

    else
    {
      v49 = v139;
    }

    if (v140 >= 0)
    {
      v50 = HIBYTE(v140);
    }

    else
    {
      v50 = *(&v139 + 1);
    }

    std::string::append(this, v49, v50);
    if (SHIBYTE(v140) < 0)
    {
      operator delete(v139);
    }

    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v138.__r_.__value_.__l.__data_);
    }
  }

  if ((v18 & 1) == 0)
  {
    goto LABEL_113;
  }

  std::string::basic_string[abi:nn200100]<0>(&v137, ".blend(");
  std::to_string(&v136, v18);
  if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v51 = &v136;
  }

  else
  {
    v51 = v136.__r_.__value_.__r.__words[0];
  }

  if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v136.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v136.__r_.__value_.__l.__size_;
  }

  v53 = std::string::append(&v137, v51, size);
  v54 = v53->__r_.__value_.__r.__words[2];
  *&v138.__r_.__value_.__l.__data_ = *&v53->__r_.__value_.__l.__data_;
  v138.__r_.__value_.__r.__words[2] = v54;
  v53->__r_.__value_.__l.__size_ = 0;
  v53->__r_.__value_.__r.__words[2] = 0;
  v53->__r_.__value_.__r.__words[0] = 0;
  v55 = std::string::append(&v138, ")");
  v56 = v55->__r_.__value_.__r.__words[2];
  v139 = *&v55->__r_.__value_.__l.__data_;
  v140 = v56;
  v55->__r_.__value_.__l.__size_ = 0;
  v55->__r_.__value_.__r.__words[2] = 0;
  v55->__r_.__value_.__r.__words[0] = 0;
  if (v140 >= 0)
  {
    v57 = &v139;
  }

  else
  {
    v57 = v139;
  }

  if (v140 >= 0)
  {
    v58 = HIBYTE(v140);
  }

  else
  {
    v58 = *(&v139 + 1);
  }

  std::string::append(this, v57, v58);
  if (SHIBYTE(v140) < 0)
  {
    operator delete(v139);
  }

  if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v138.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v136.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v137.__r_.__value_.__l.__data_);
    if ((v21 & 0x80) == 0)
    {
      goto LABEL_135;
    }
  }

  else
  {
LABEL_113:
    if ((v21 & 0x80) == 0)
    {
      goto LABEL_135;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(&v137, ".logic_op(");
  std::to_string(&v136, (v21 >> 8) & 0x1F);
  if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v59 = &v136;
  }

  else
  {
    v59 = v136.__r_.__value_.__r.__words[0];
  }

  if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v60 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v60 = v136.__r_.__value_.__l.__size_;
  }

  v61 = std::string::append(&v137, v59, v60);
  v62 = v61->__r_.__value_.__r.__words[2];
  *&v138.__r_.__value_.__l.__data_ = *&v61->__r_.__value_.__l.__data_;
  v138.__r_.__value_.__r.__words[2] = v62;
  v61->__r_.__value_.__l.__size_ = 0;
  v61->__r_.__value_.__r.__words[2] = 0;
  v61->__r_.__value_.__r.__words[0] = 0;
  v63 = std::string::append(&v138, ")");
  v64 = v63->__r_.__value_.__r.__words[2];
  v139 = *&v63->__r_.__value_.__l.__data_;
  v140 = v64;
  v63->__r_.__value_.__l.__size_ = 0;
  v63->__r_.__value_.__r.__words[2] = 0;
  v63->__r_.__value_.__r.__words[0] = 0;
  if (v140 >= 0)
  {
    v65 = &v139;
  }

  else
  {
    v65 = v139;
  }

  if (v140 >= 0)
  {
    v66 = HIBYTE(v140);
  }

  else
  {
    v66 = *(&v139 + 1);
  }

  std::string::append(this, v65, v66);
  if (SHIBYTE(v140) < 0)
  {
    operator delete(v139);
  }

  if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v138.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v136.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v137.__r_.__value_.__l.__data_);
  }

LABEL_135:
  std::string::basic_string[abi:nn200100]<0>(&v137, ".color_mask(");
  std::to_string(&v136, (v21 >> 1) & 0xF);
  if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v67 = &v136;
  }

  else
  {
    v67 = v136.__r_.__value_.__r.__words[0];
  }

  if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v68 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v68 = v136.__r_.__value_.__l.__size_;
  }

  v69 = std::string::append(&v137, v67, v68);
  v70 = v69->__r_.__value_.__r.__words[2];
  *&v138.__r_.__value_.__l.__data_ = *&v69->__r_.__value_.__l.__data_;
  v138.__r_.__value_.__r.__words[2] = v70;
  v69->__r_.__value_.__l.__size_ = 0;
  v69->__r_.__value_.__r.__words[2] = 0;
  v69->__r_.__value_.__r.__words[0] = 0;
  v71 = std::string::append(&v138, ")");
  v72 = v71->__r_.__value_.__r.__words[2];
  v139 = *&v71->__r_.__value_.__l.__data_;
  v140 = v72;
  v71->__r_.__value_.__l.__size_ = 0;
  v71->__r_.__value_.__r.__words[2] = 0;
  v71->__r_.__value_.__r.__words[0] = 0;
  if (v140 >= 0)
  {
    v73 = &v139;
  }

  else
  {
    v73 = v139;
  }

  if (v140 >= 0)
  {
    v74 = HIBYTE(v140);
  }

  else
  {
    v74 = *(&v139 + 1);
  }

  std::string::append(this, v73, v74);
  if (SHIBYTE(v140) < 0)
  {
    operator delete(v139);
  }

  if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v138.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v136.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v137.__r_.__value_.__l.__data_);
  }

  _AGCStatelessPSODynamicLibraryStateAGP::functionName(void)const::{lambda(std::string &,BOOL,BOOL,unsigned int)#1}::operator()(this, (v21 >> 13) & 1, (v21 >> 14) & 1, (v21 >> 15) & 3);
  if ((v37 & 0x20040) == 0x20000)
  {
    _AGCStatelessPSODynamicLibraryStateAGP::functionName(void)const::{lambda(std::string &,BOOL,BOOL,unsigned int)#1}::operator()(this, (v21 >> 18) & 1, (v21 >> 19) & 1, v21 >> 20);
  }

  if (v132)
  {
    std::string::append(this, ".discard");
  }

  if (v133)
  {
    std::string::append(this, ".undef");
  }

  if (!v134)
  {
    if (!v31)
    {
      goto LABEL_163;
    }

LABEL_266:
    std::string::append(this, ".fast_math");
    if ((v135 & 0x2000000) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_164;
  }

  std::string::append(this, ".gl");
  if (v31)
  {
    goto LABEL_266;
  }

LABEL_163:
  if ((v135 & 0x2000000) != 0)
  {
LABEL_164:
    std::string::append(this, ".null");
  }

LABEL_165:
  std::to_string(&v137, (v135 >> 26) & 3);
  v75 = std::string::insert(&v137, 0, ".rtz(");
  v76 = v75->__r_.__value_.__r.__words[2];
  *&v138.__r_.__value_.__l.__data_ = *&v75->__r_.__value_.__l.__data_;
  v138.__r_.__value_.__r.__words[2] = v76;
  v75->__r_.__value_.__l.__size_ = 0;
  v75->__r_.__value_.__r.__words[2] = 0;
  v75->__r_.__value_.__r.__words[0] = 0;
  v77 = std::string::append(&v138, ")");
  v78 = v77->__r_.__value_.__r.__words[2];
  v139 = *&v77->__r_.__value_.__l.__data_;
  v140 = v78;
  v77->__r_.__value_.__l.__size_ = 0;
  v77->__r_.__value_.__r.__words[2] = 0;
  v77->__r_.__value_.__r.__words[0] = 0;
  if (v140 >= 0)
  {
    v79 = &v139;
  }

  else
  {
    v79 = v139;
  }

  if (v140 >= 0)
  {
    v80 = HIBYTE(v140);
  }

  else
  {
    v80 = *(&v139 + 1);
  }

  std::string::append(this, v79, v80);
  if (SHIBYTE(v140) < 0)
  {
    operator delete(v139);
  }

  if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v138.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v137.__r_.__value_.__l.__data_);
  }

  if (v131 >> 28)
  {
    std::string::append(this, ".slabs");
  }

  if ((v37 & 0x10000000) != 0)
  {
    std::to_string(&v137, 1 << (BYTE1(v131) & 3));
    v81 = std::string::insert(&v137, 0, ".fixed_sample_count(");
    v82 = v81->__r_.__value_.__r.__words[2];
    *&v138.__r_.__value_.__l.__data_ = *&v81->__r_.__value_.__l.__data_;
    v138.__r_.__value_.__r.__words[2] = v82;
    v81->__r_.__value_.__l.__size_ = 0;
    v81->__r_.__value_.__r.__words[2] = 0;
    v81->__r_.__value_.__r.__words[0] = 0;
    v83 = std::string::append(&v138, ")");
    v84 = v83->__r_.__value_.__r.__words[2];
    v139 = *&v83->__r_.__value_.__l.__data_;
    v140 = v84;
    v83->__r_.__value_.__l.__size_ = 0;
    v83->__r_.__value_.__r.__words[2] = 0;
    v83->__r_.__value_.__r.__words[0] = 0;
    if (v140 >= 0)
    {
      v85 = &v139;
    }

    else
    {
      v85 = v139;
    }

    if (v140 >= 0)
    {
      v86 = HIBYTE(v140);
    }

    else
    {
      v86 = *(&v139 + 1);
    }

    std::string::append(this, v85, v86);
    if (SHIBYTE(v140) < 0)
    {
      operator delete(v139);
    }

    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v138.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v137.__r_.__value_.__l.__data_);
    }
  }

  v87 = *(a2 + 308);
  if ((v87 & 0x100000000) != 0)
  {
    std::to_string(&v137, v87);
    v88 = std::string::insert(&v137, 0, ".raster_order_group(");
    v89 = v88->__r_.__value_.__r.__words[2];
    *&v138.__r_.__value_.__l.__data_ = *&v88->__r_.__value_.__l.__data_;
    v138.__r_.__value_.__r.__words[2] = v89;
    v88->__r_.__value_.__l.__size_ = 0;
    v88->__r_.__value_.__r.__words[2] = 0;
    v88->__r_.__value_.__r.__words[0] = 0;
    v90 = std::string::append(&v138, ")");
    v91 = v90->__r_.__value_.__r.__words[2];
    v139 = *&v90->__r_.__value_.__l.__data_;
    v140 = v91;
    v90->__r_.__value_.__l.__size_ = 0;
    v90->__r_.__value_.__r.__words[2] = 0;
    v90->__r_.__value_.__r.__words[0] = 0;
    if (v140 >= 0)
    {
      v92 = &v139;
    }

    else
    {
      v92 = v139;
    }

    if (v140 >= 0)
    {
      v93 = HIBYTE(v140);
    }

    else
    {
      v93 = *(&v139 + 1);
    }

    std::string::append(this, v92, v93);
    if (SHIBYTE(v140) < 0)
    {
      operator delete(v139);
    }

    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v138.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v137.__r_.__value_.__l.__data_);
    }
  }

  v94 = *(a2 + 280);
  if (v94)
  {
    v95 = (v94 + 24);
    if (*(v94 + 32) >= 0x41u)
    {
      v95 = *v95;
    }

    std::to_string(&v137, *v95);
    v96 = std::string::insert(&v137, 0, ".lib_size(");
    v97 = v96->__r_.__value_.__r.__words[2];
    *&v138.__r_.__value_.__l.__data_ = *&v96->__r_.__value_.__l.__data_;
    v138.__r_.__value_.__r.__words[2] = v97;
    v96->__r_.__value_.__l.__size_ = 0;
    v96->__r_.__value_.__r.__words[2] = 0;
    v96->__r_.__value_.__r.__words[0] = 0;
    v98 = std::string::append(&v138, ")");
    v99 = v98->__r_.__value_.__r.__words[2];
    v139 = *&v98->__r_.__value_.__l.__data_;
    v140 = v99;
    v98->__r_.__value_.__l.__size_ = 0;
    v98->__r_.__value_.__r.__words[2] = 0;
    v98->__r_.__value_.__r.__words[0] = 0;
    if (v140 >= 0)
    {
      v100 = &v139;
    }

    else
    {
      v100 = v139;
    }

    if (v140 >= 0)
    {
      v101 = HIBYTE(v140);
    }

    else
    {
      v101 = *(&v139 + 1);
    }

    std::string::append(this, v100, v101);
    if (SHIBYTE(v140) < 0)
    {
      operator delete(v139);
    }

    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v138.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v137.__r_.__value_.__l.__data_);
    }
  }

  v102 = *(a2 + 288);
  if (v102)
  {
    v103 = (v102 + 24);
    if (*(v102 + 32) >= 0x41u)
    {
      v103 = *v103;
    }

    std::to_string(&v137, *v103);
    v104 = std::string::insert(&v137, 0, ".lib_offset(");
    v105 = v104->__r_.__value_.__r.__words[2];
    *&v138.__r_.__value_.__l.__data_ = *&v104->__r_.__value_.__l.__data_;
    v138.__r_.__value_.__r.__words[2] = v105;
    v104->__r_.__value_.__l.__size_ = 0;
    v104->__r_.__value_.__r.__words[2] = 0;
    v104->__r_.__value_.__r.__words[0] = 0;
    v106 = std::string::append(&v138, ")");
    v107 = v106->__r_.__value_.__r.__words[2];
    v139 = *&v106->__r_.__value_.__l.__data_;
    v140 = v107;
    v106->__r_.__value_.__l.__size_ = 0;
    v106->__r_.__value_.__r.__words[2] = 0;
    v106->__r_.__value_.__r.__words[0] = 0;
    if (v140 >= 0)
    {
      v108 = &v139;
    }

    else
    {
      v108 = v139;
    }

    if (v140 >= 0)
    {
      v109 = HIBYTE(v140);
    }

    else
    {
      v109 = *(&v139 + 1);
    }

    std::string::append(this, v108, v109);
    if (SHIBYTE(v140) < 0)
    {
      operator delete(v139);
    }

    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v138.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v137.__r_.__value_.__l.__data_);
    }
  }

  if (*(a2 + 304) == 1)
  {
    v110 = *(a2 + 296);
    if (v110)
    {
      v111 = (v110 + 24);
      if (*(v110 + 32) >= 0x41u)
      {
        v111 = *v111;
      }

      std::to_string(&v137, *v111);
      v112 = std::string::insert(&v137, 0, ".slab_index(");
      v113 = v112->__r_.__value_.__r.__words[2];
      *&v138.__r_.__value_.__l.__data_ = *&v112->__r_.__value_.__l.__data_;
      v138.__r_.__value_.__r.__words[2] = v113;
      v112->__r_.__value_.__l.__size_ = 0;
      v112->__r_.__value_.__r.__words[2] = 0;
      v112->__r_.__value_.__r.__words[0] = 0;
      v114 = std::string::append(&v138, ")");
      v115 = v114->__r_.__value_.__r.__words[2];
      v139 = *&v114->__r_.__value_.__l.__data_;
      v140 = v115;
      v114->__r_.__value_.__l.__size_ = 0;
      v114->__r_.__value_.__r.__words[2] = 0;
      v114->__r_.__value_.__r.__words[0] = 0;
      if (v140 >= 0)
      {
        v116 = &v139;
      }

      else
      {
        v116 = v139;
      }

      if (v140 >= 0)
      {
        v117 = HIBYTE(v140);
      }

      else
      {
        v117 = *(&v139 + 1);
      }

      std::string::append(this, v116, v117);
      if (SHIBYTE(v140) < 0)
      {
        operator delete(v139);
      }

      if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v138.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v137.__r_.__value_.__l.__data_);
      }
    }
  }

  if (*(a2 + 316) == 1)
  {
    std::to_string(&v137, *(a2 + 320));
    v118 = std::string::insert(&v137, 0, ".fixed_sample_count(");
    v119 = v118->__r_.__value_.__r.__words[2];
    *&v138.__r_.__value_.__l.__data_ = *&v118->__r_.__value_.__l.__data_;
    v138.__r_.__value_.__r.__words[2] = v119;
    v118->__r_.__value_.__l.__size_ = 0;
    v118->__r_.__value_.__r.__words[2] = 0;
    v118->__r_.__value_.__r.__words[0] = 0;
    v120 = std::string::append(&v138, ")");
    v121 = v120->__r_.__value_.__r.__words[2];
    v139 = *&v120->__r_.__value_.__l.__data_;
    v140 = v121;
    v120->__r_.__value_.__l.__size_ = 0;
    v120->__r_.__value_.__r.__words[2] = 0;
    v120->__r_.__value_.__r.__words[0] = 0;
    if (v140 >= 0)
    {
      v122 = &v139;
    }

    else
    {
      v122 = v139;
    }

    if (v140 >= 0)
    {
      v123 = HIBYTE(v140);
    }

    else
    {
      v123 = *(&v139 + 1);
    }

    std::string::append(this, v122, v123);
    if (SHIBYTE(v140) < 0)
    {
      operator delete(v139);
    }

    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v138.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v137.__r_.__value_.__l.__data_);
    }
  }
}

void _AGCStatelessPSODynamicLibraryStateAGP::functionName(void)const::{lambda(std::string &,BOOL,BOOL,unsigned int)#1}::operator()(std::string *a1, int a2, int a3, int a4)
{
  if (a4)
  {
    std::string::basic_string[abi:nn200100]<0>(&v19, ".v");
    std::to_string(&__p, a4 + 1);
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

    v10 = std::string::append(&v19, p_p, size);
    v11 = v10->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(&v20, ".");
  }

  if (a2)
  {
    v12 = 102;
  }

  else
  {
    v12 = 105;
  }

  std::string::push_back(&v20, v12);
  v21 = v20;
  memset(&v20, 0, sizeof(v20));
  if (a3)
  {
    v13 = "32";
  }

  else
  {
    v13 = "16";
  }

  v14 = std::string::append(&v21, v13);
  v15 = v14->__r_.__value_.__r.__words[2];
  v22 = *&v14->__r_.__value_.__l.__data_;
  v23 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (v23 >= 0)
  {
    v16 = &v22;
  }

  else
  {
    v16 = v22;
  }

  if (v23 >= 0)
  {
    v17 = HIBYTE(v23);
  }

  else
  {
    v17 = *(&v22 + 1);
  }

  std::string::append(a1, v16, v17);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (a4)
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }
  }
}

llvm::Value *AGCLLVMObject::buildConvertColor(uint64_t a1, llvm::Value *a2, llvm::Type *a3, int a4, int a5, int a6)
{
  v8 = a3;
  InsertElement = a2;
  v11 = *a2;
  v12 = *(a3 + 2) & 0xFE;
  if (v12 != 18)
  {
    v8 = llvm::FixedVectorType::get();
  }

  if ((*(v11 + 8) & 0xFE) != 0x12)
  {
    v11 = llvm::FixedVectorType::get();
    v13 = llvm::UndefValue::get();
    v62 = 257;
    v14 = llvm::ConstantInt::get();
    InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 1712), v13, InsertElement, v14, v61);
  }

  v15 = v8[8];
  if (*(v11 + 32) != v15)
  {
    InsertElement = AGCLLVMBuilder::extendVector((a1 + 1704), InsertElement, v15, a4);
    v11 = *InsertElement;
  }

  if (v11 == v8)
  {
    if (v12 == 18)
    {
      return InsertElement;
    }

    goto LABEL_64;
  }

  v50 = v12;
  if (!a5)
  {
    if ((*(v11 + 8) & 0xFE) == 0x12)
    {
      v21 = *(**(v11 + 16) + 8);
    }

    else
    {
      v21 = *(v11 + 8);
    }

    if (v21 == 13)
    {
      ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v11);
      v30 = llvm::Type::getScalarSizeInBits(v8);
      if (ScalarSizeInBits <= v30)
      {
        v62 = 257;
        v32 = a1 + 1712;
        if (a4)
        {
          v33 = 40;
        }

        else
        {
          v33 = 39;
        }

        v31 = InsertElement;
      }

      else
      {
        v31 = AGCLLVMBuilder::clampToWidth((a1 + 1704), InsertElement, v30, a4);
        v62 = 257;
        v32 = a1 + 1712;
        v33 = 38;
      }

      Cast = llvm::IRBuilderBase::CreateCast(v32, v33, v31, v8, v61);
    }

    else
    {
      if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + 1696)))
      {
        AGCTargetPrinter::printMessage(*(a1 + 1696), "Warning (Undefined behavior): integer drawbuffer format, but shader is writing floating point");
      }

      Cast = llvm::UndefValue::get();
    }

LABEL_62:
    InsertElement = Cast;
    goto LABEL_63;
  }

  v48 = a6;
  v16 = **(v11 + 16);
  v17 = v8[8];
  v18 = llvm::FixedVectorType::get();
  v49 = v8;
  if (v16 == *(a1 + 1888) || v16 == *(a1 + 1896))
  {
    llvm::FixedVectorType::get();
    v20 = llvm::UndefValue::get();
    if (v16 == *(a1 + 1888))
    {
      v22 = 8;
    }

    else
    {
      v22 = 16;
    }

    if (v17)
    {
      for (i = 0; i != v17; ++i)
      {
        v62 = 257;
        v24 = llvm::ConstantInt::get();
        Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 1712), InsertElement, v24, v61);
        v26 = *(a1 + 2168);
        v58 = *(a1 + 1760);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v59, (a1 + 1712));
        v60 = *(a1 + 1808);
        v27 = (*(*v26 + 96))(v26, &v58, Element, v22, a4, 32);
        if (v59)
        {
          llvm::MetadataTracking::untrack();
        }

        v62 = 257;
        v28 = llvm::ConstantInt::get();
        v20 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1712), v20, v27, v28, v61);
      }
    }

LABEL_43:
    v36 = **(v49 + 2);
    if (v36 == *(a1 + 1888))
    {
      v37 = 8;
    }

    else
    {
      if (v36 != *(a1 + 1896))
      {
        if (v36 != *(a1 + 1856))
        {
          InsertElement = v20;
          if (v36 != *(a1 + 1872))
          {
            return 0;
          }

          goto LABEL_63;
        }

        v44 = (*(*a1 + 80))(a1);
        if (v44 <= 0x1B && ((1 << v44) & 0x80002C1) != 0 && (v48 & 0xFFFFFFFE) == 2)
        {
          v45 = *(a1 + 2168);
          v52 = *(a1 + 1760);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v53, (a1 + 1712));
          v54 = *(a1 + 1808);
          v20 = AGCLLVMTargetLowerer::buildRTZF16Value(v45, &v52, v20, v48 == 3);
          if (v53)
          {
            llvm::MetadataTracking::untrack();
          }
        }

        v62 = 257;
        Cast = llvm::IRBuilderBase::CreateFPTrunc((a1 + 1712), v20, v49, v61);
        goto LABEL_62;
      }

      v37 = 16;
    }

    InsertElement = llvm::UndefValue::get();
    if (v17)
    {
      for (j = 0; j != v17; ++j)
      {
        v62 = 257;
        v39 = llvm::ConstantInt::get();
        v40 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1712), v20, v39, v61);
        v41 = *(a1 + 2168);
        v55 = *(a1 + 1760);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v56, (a1 + 1712));
        v57 = *(a1 + 1808);
        v42 = (*(*v41 + 88))(v41, &v55, v40, v37, a4, 1);
        if (v56)
        {
          llvm::MetadataTracking::untrack();
        }

        v62 = 257;
        v43 = llvm::ConstantInt::get();
        InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 1712), InsertElement, v42, v43, v61);
      }
    }

LABEL_63:
    if (v50 == 18)
    {
      return InsertElement;
    }

LABEL_64:
    v62 = 257;
    v46 = llvm::ConstantInt::get();
    return llvm::IRBuilderBase::CreateExtractElement((a1 + 1712), InsertElement, v46, v61);
  }

  v19 = v18;
  if (v16 == *(a1 + 1856))
  {
    v62 = 257;
    FPExt = llvm::IRBuilderBase::CreateFPExt((a1 + 1712), InsertElement, v18, v61);
LABEL_42:
    v20 = FPExt;
    goto LABEL_43;
  }

  if (v16 == *(a1 + 1904))
  {
    fwrite("AGC: Warning: shader output of integer type is not compatible with color attachment of floating-point/norm type. Compiler will insert a bitcast but it's an undefined behavior. This will become an error in the future.\n", 0xD9uLL, 1uLL, *MEMORY[0x277D85DF8]);
    v62 = 257;
    FPExt = llvm::IRBuilderBase::CreateCast(a1 + 1712, 49, InsertElement, v19, v61);
    goto LABEL_42;
  }

  v20 = InsertElement;
  if (v16 == *(a1 + 1872))
  {
    goto LABEL_43;
  }

  return 0;
}

uint64_t AGCLLVMGen3TargetLowerer::emulatedColorMask(AGCLLVMGen3TargetLowerer *this, int a2, unsigned int a3, unsigned int a4)
{
  v4 = (a4 > 1) & *(this + 1955);
  if ((a2 - 18) < 4)
  {
    v4 = 1;
  }

  if (v4)
  {
    return a3;
  }

  else
  {
    return 15;
  }
}

llvm::Value *AGCLLVMBuilder::fillUnwrittenChannels(llvm::ConstantInt **this, llvm::Value *a2, unsigned int a3, int a4, char a5)
{
  InsertElement = a2;
  v8 = *a2;
  v9 = *a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v9 = **(v8 + 16);
  }

  NullValue = llvm::Constant::getNullValue(v9, a2);
  if (*(v9 + 2) > 6u)
  {
    v11 = llvm::ConstantInt::get();
  }

  else
  {
    v11 = llvm::ConstantFP::get();
  }

  v12 = v11;
  v13 = *(v8 + 32);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      if (((a3 >> i) & 1) == 0)
      {
        if (i == 3)
        {
          v15 = v12;
        }

        else
        {
          v15 = NullValue;
        }

        v19 = 257;
        v16 = llvm::ConstantInt::get();
        InsertElement = llvm::IRBuilderBase::CreateInsertElement((this + 1), InsertElement, v15, v16, v18);
      }
    }
  }

  return InsertElement;
}

llvm::Constant **AGCLLVMStatelessFragmentObject::buildPreEmitSwizzle(void *a1, llvm::Constant **a2, uint64_t a3, int a4, int a5)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v13 = llvm::ConstantInt::get();
    v14 = llvm::ConstantInt::get();
    v15 = llvm::ConstantInt::get();
    v16 = llvm::ConstantInt::get();
    NullValue = llvm::Constant::getNullValue(*a2, v7);
    v9 = a1 + *(*a1 - 24);
    v10 = llvm::ConstantVector::get();
    v12[16] = 257;
    return llvm::IRBuilderBase::CreateShuffleVector((v9 + 1712), a2, NullValue, v10, v12);
  }

  return a2;
}

uint64_t AGCLLVMObject::buildOutputFormatConversion(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a2;
  if (a4 == 2)
  {
    v11 = *(a1 + 1904);
    v22 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(a1 + 1712, 49, a2, v11, v21);
    v13 = *(a1 + 2168);
    v15 = *(a1 + 1760);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v16, (a1 + 1712));
    v17 = *(a1 + 1808);
    v4 = (*(*v13 + 112))(v13, &v15, 6, *(a1 + 1896), Cast, 0, 0);
    if (v16)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  else if (a4 == 1)
  {
    v7 = *(a1 + 2032);
    v22 = 257;
    v8 = llvm::IRBuilderBase::CreateCast(a1 + 1712, 38, a2, v7, v21);
    v9 = *(a1 + 2168);
    v18 = *(a1 + 1760);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v19, (a1 + 1712));
    v20 = *(a1 + 1808);
    v10 = (*(*v9 + 104))(v9, &v18, 6, *(a1 + 1896), v8, 0, 0);
    if (v19)
    {
      llvm::MetadataTracking::untrack();
    }

    v22 = 257;
    return llvm::IRBuilderBase::CreateCast(a1 + 1712, 49, v10, a3, v21);
  }

  return v4;
}

uint64_t AGCLLVMGen3TargetLowerer::buildWriteOutputPartitionFromState@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X3>, llvm::Value *a5@<X4>, uint64_t a7@<X6>, unsigned int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v13 = a12;
  if (a12)
  {
    v18 = result;
    if (*a3 - 20 >= 2)
    {
      if (*a3 == 18)
      {
        v13 = 3;
      }
    }

    else
    {
      v13 = 7;
    }

    v29 = *a2;
    v30 = *(a2 + 16);
    if (v30)
    {
      llvm::MetadataTracking::track();
    }

    v31 = *(a2 + 24);
    AGCLLVMTargetLowerer::SetIP(v18, &v29);
    if (v30)
    {
      llvm::MetadataTracking::untrack();
    }

    v28[0] = 0;
    v28[1] = llvm::FixedVectorType::get();
    v19 = *a3;
    LOWORD(v28[0]) = AGCLLVMGen3TargetLowerer::getUSCFormatFromState(*a3, *(a3 + 16));
    WORD1(v28[0]) = v19;
    WORD2(v28[0]) = v13;
    HIWORD(v28[0]) = a3[1];
    v20 = *(a3 + 4);
    v21 = llvm::ConstantInt::get();
    v27 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v18 + 8), v21, a5, v26);
    HIBYTE(v23) = *(a3 + 18);
    LOBYTE(v23) = a13 == 1;
    return (*(*v18 + 1696))(v18, v28, v20, a4, a7, Mul, 0, a8, 0, a10, a11, v23);
  }

  else
  {
    *a9 = 0;
    *(a9 + 8) = 0;
    *(a9 + 24) = 0;
    *(a9 + 16) = 0;
  }

  return result;
}

uint64_t llvm::IRBuilderBase::CreateRetVoid(llvm::IRBuilderBase *this, uint64_t a2, unsigned int a3)
{
  v4 = *(this + 8);
  v5 = llvm::User::operator new(0x40);
  MEMORY[0x20F32FD40](v5, v4, 0, 0);
  v8 = 257;
  llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v5, v7);
  return v5;
}

void AGCLLVMStatelessFragmentObject::addOrRemoveLogicalRasterOrderGroup(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 80);
  v15 = a2 + 72;
  if (v4 != a2 + 72)
  {
    if ((a3 & 0xFFFFFFFE) == 2)
    {
      v5 = BYTE4(a4) & 1;
    }

    else
    {
      v5 = 0;
    }

    do
    {
      v6 = v4 - 24;
      if (!v4)
      {
        v6 = 0;
      }

      v7 = v6 + 40;
      for (i = *(v6 + 48); i != v7; i = *(i + 8))
      {
        if (i)
        {
          v9 = i - 24;
        }

        else
        {
          v9 = 0;
        }

        if (*(v9 + 48) || (*(v9 + 23) & 0x20) != 0)
        {
          MetadataImpl = llvm::Instruction::getMetadataImpl();
          if (MetadataImpl)
          {
            if (v5)
            {
              v11 = MetadataImpl;
              v16[0] = v17;
              v16[1] = 0x300000000;
              v12 = *(MetadataImpl + 8);
              if (v12)
              {
                v13 = -8 * v12;
                do
                {
                  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v16, *(v11 + v13));
                  v13 += 8;
                }

                while (v13);
              }

              llvm::ConstantInt::get();
              v14 = llvm::ValueAsMetadata::get();
              llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v16, v14);
              llvm::MDTuple::getImpl();
              llvm::Instruction::setMetadata();
              if (v16[0] != v17)
              {
                free(v16[0]);
              }
            }

            else
            {
              llvm::Instruction::setMetadata();
            }
          }
        }
      }

      v4 = *(v4 + 8);
    }

    while (v4 != v15);
  }
}

llvm::ConstantFP **AGCLLVMTargetLowerer::buildClampColor(uint64_t a1, uint64_t a2, llvm::ConstantFP **a3, uint64_t a4, uint64_t a5)
{
  v32 = *a2;
  v33 = *(a2 + 16);
  if (v33)
  {
    llvm::MetadataTracking::track();
  }

  v34 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v32);
  if (v33)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*(a4 + 20) == 1 && (*a3 == *(a1 + 312) || *a3 == *(a1 + 296)))
  {
    if (*a4 == *(a4 + 4) && *(a4 + 8) == *(a4 + 12))
    {
      v10 = llvm::ConstantFP::get();
      v11 = llvm::ConstantFP::get();
      v29 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v30, (a1 + 8));
      v31 = *(a1 + 104);
      a3 = (*(*a1 + 80))(a1, &v29, a3, v10, v11, a5);
      if (v30)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    else
    {
      v12 = AGCLLVMBuilder::subrangeVector(a1, a3, 0, 3, 1);
      v36 = 257;
      v13 = llvm::ConstantInt::get();
      Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), a3, v13, v35);
      v15 = llvm::ConstantFP::get();
      v16 = llvm::ConstantFP::get();
      v17 = llvm::ConstantFP::get();
      v18 = llvm::ConstantFP::get();
      v26 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v27, (a1 + 8));
      v28 = *(a1 + 104);
      v19 = (*(*a1 + 80))(a1, &v26, v12, v15, v16, a5);
      if (v27)
      {
        llvm::MetadataTracking::untrack();
      }

      v23 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v24, (a1 + 8));
      v25 = *(a1 + 104);
      v21 = (*(*a1 + 80))(a1, &v23, Element, v17, v18, a5);
      if (v24)
      {
        llvm::MetadataTracking::untrack();
      }

      return AGCLLVMBuilder::combineRGBA(a1, v19, v21, v20);
    }
  }

  return a3;
}

unsigned __int8 *AGCLLVMBuilder::subrangeVector(llvm::ConstantInt **this, llvm::Value *a2, unsigned int a3, _BOOL4 a4, int a5)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a4 && a5)
  {
    LOWORD(v13) = 257;
    v7 = llvm::ConstantInt::get();
    return llvm::IRBuilderBase::CreateExtractElement((this + 1), a2, v7, v12);
  }

  else
  {
    v12[0] = llvm::ConstantInt::get();
    v12[1] = llvm::ConstantInt::get();
    v12[2] = llvm::ConstantInt::get();
    v12[3] = llvm::ConstantInt::get();
    v13 = llvm::ConstantInt::get();
    v14 = llvm::ConstantInt::get();
    v15 = llvm::ConstantInt::get();
    v16 = llvm::ConstantInt::get();
    v9 = llvm::ConstantVector::get();
    v10 = llvm::UndefValue::get();
    v11[16] = 257;
    return llvm::IRBuilderBase::CreateShuffleVector((this + 1), a2, v10, v9, v11);
  }
}

llvm::Value *AGCLLVMTargetLowerer::buildFClamp(llvm::ConstantInt **a1, uint64_t a2, llvm::UndefValue **a3, llvm::Value *a4, llvm::Value *a5, char a6)
{
  v34 = *MEMORY[0x277D85DE8];
  v23 = *a2;
  v24 = *(a2 + 16);
  if (v24)
  {
    llvm::MetadataTracking::track();
  }

  v25 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v23);
  if (v24)
  {
    llvm::MetadataTracking::untrack();
  }

  v18 = a1;
  v19 = *a2;
  v20 = *(a2 + 16);
  if (v20)
  {
    llvm::MetadataTracking::track();
  }

  v21 = *(a2 + 24);
  v22 = a6;
  if ((*(*a3 + 2) & 0xFE) == 0x12)
  {
    InsertElement = llvm::UndefValue::get();
    *v32 = 0u;
    v33 = 0u;
    *v30 = 0u;
    v31 = 0u;
    *v28 = 0u;
    v29 = 0u;
    AGCLLVMBuilder::unboxVector(a1, a3, v32);
    AGCLLVMBuilder::unboxVector(a1, a4, v30);
    AGCLLVMBuilder::unboxVector(a1, a5, v28);
    v13 = *(*a3 + 8);
    if (v13)
    {
      for (i = 0; i != v13; ++i)
      {
        v15 = AGCLLVMTargetLowerer::buildFClamp(AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *,llvm::Value *,BOOL)::$_0::operator()(&v18, v32[i], v30[i], v28[i]);
        v27 = 257;
        v16 = llvm::ConstantInt::get();
        InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), InsertElement, v15, v16, v26);
      }
    }
  }

  else
  {
    InsertElement = AGCLLVMTargetLowerer::buildFClamp(AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *,llvm::Value *,BOOL)::$_0::operator()(&v18, a3, a4, a5);
  }

  if (v20)
  {
    llvm::MetadataTracking::untrack();
  }

  return InsertElement;
}