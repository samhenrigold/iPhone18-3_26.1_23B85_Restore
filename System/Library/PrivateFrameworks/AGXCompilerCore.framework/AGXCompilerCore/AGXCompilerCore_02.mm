char *llvm::PassInfoMixin<LoadStoreCacheControlPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x4B)
  {
    v1 = v0;
  }

  else
  {
    v1 = 75;
  }

  v2 = &aStringrefLlvmG_80[v1];
  v3 = 75 - v1;
  if ((75 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 75 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

void llvm::detail::PassModel<llvm::Function,LoadStoreCacheControlPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::run(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v37 = v39;
  v38 = 0x400000000;
  v28 = a2 + 72;
  v4 = *(a2 + 80);
  if (v4 != a2 + 72)
  {
    do
    {
      v5 = v4 - 24;
      v29 = v4;
      if (!v4)
      {
        v5 = 0;
      }

      v6 = *(v5 + 48);
      for (i = v5 + 40; v6 != i; v6 = *(v6 + 8))
      {
        v7 = v6 - 24;
        if (!v6)
        {
          v7 = 0;
        }

        v8 = *(v7 + 16);
        if (v8 == 84)
        {
          v9 = v7;
        }

        else
        {
          v9 = 0;
        }

        if (v6 && v8 == 84)
        {
          v10 = *(v7 - 32);
          if (!v10 || *(v10 + 16) || *(v10 + 24) != *(v7 + 72))
          {
            v10 = 0;
          }

          for (j = 0; j != 6; ++j)
          {
            if (v10)
            {
              Name = llvm::Value::getName(v10);
              v14 = v13;
              v15 = strlen(off_277E221D0[j]);
              if (v14 >= v15 && (!v15 || !memcmp(Name, off_277E221D0[j], v15)))
              {
                v39[20] = llvm::Value::getName(v10);
                v39[21] = v16;
                llvm::StringRef::split();
                *&v41[8] = 0uLL;
                *&v40 = v9;
                if (v34 == 20)
                {
                  v19 = bswap64(*v33);
                  v20 = 0x7468726561646772;
                  if (v19 == 0x7468726561646772 && (v19 = bswap64(*(v33 + 8)), v20 = 0x6F75705F636F6865, v19 == 0x6F75705F636F6865) && (v19 = bswap32(*(v33 + 16)), v20 = 1919250036, v19 == 1919250036))
                  {
                    v21 = 0;
                  }

                  else if (v19 < v20)
                  {
                    v21 = -1;
                  }

                  else
                  {
                    v21 = 1;
                  }

                  if (v21)
                  {
                    v18 = 4;
                  }

                  else
                  {
                    v18 = 1;
                  }
                }

                else if (v34 == 15)
                {
                  if (*v33 == 0x635F656369766564 && *(v33 + 7) == 0x746E657265686F63)
                  {
                    v18 = 2;
                  }

                  else if (*v33 ^ 0x635F6D6574737973 | *(v33 + 7) ^ 0x746E657265686F63)
                  {
                    v18 = 4;
                  }

                  else
                  {
                    v18 = 3;
                  }
                }

                else
                {
                  v18 = 4;
                }

                HIDWORD(v40) = v18;
                v22 = v32 == 4 && *v31 == 1684107116;
                BYTE8(v40) = v22;
                v41[0] = llvm::StringRef::find() != -1;
                v23 = llvm::StringRef::find();
                v41[1] = v23 != -1;
                if ((v41[0] & 1) != 0 || v23 != -1)
                {
                  if (!v41[0] || v23 == -1)
                  {
                    v24 = &v36;
                  }

                  else
                  {
                    v24 = &v37;
                  }
                }

                else
                {
                  v24 = &v35;
                }

                *&v41[8] = *v24;
                if (v38 >= HIDWORD(v38))
                {
                  if (v37 <= &v40 && v37 + 40 * v38 > &v40)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v25 = v37 + 40 * v38;
                v26 = v40;
                v27 = *v41;
                *(v25 + 4) = *&v41[16];
                *v25 = v26;
                *(v25 + 1) = v27;
                LODWORD(v38) = v38 + 1;
              }
            }
          }
        }
      }

      v4 = *(v29 + 8);
    }

    while (v4 != v28);
  }

  llvm::AnalysisManager<llvm::Function>::getResultImpl();
}

char *llvm::PassInfoMixin<TranslatorLegacyPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x46)
  {
    v1 = v0;
  }

  else
  {
    v1 = 70;
  }

  v2 = &aStringrefLlvmG_82[v1];
  v3 = 70 - v1;
  if ((70 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 70 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

uint64_t AGCLLVMAGPFragmentShaderGen3::setupShaderInputs(AGCLLVMAGPFragmentShaderGen3 *this, llvm::Type *a2)
{
  v46[3] = *MEMORY[0x277D85DE8];
  v3 = *(this + 21);
  if (*(v3 + 18))
  {
    llvm::Function::BuildLazyArguments(*(this + 21));
    v5 = *(this + 21);
    v4 = *(v3 + 88);
    if (*(v5 + 18))
    {
      llvm::Function::BuildLazyArguments(*(this + 21));
    }

    v3 = v5;
  }

  else
  {
    v4 = *(v3 + 88);
  }

  v6 = *(v3 + 88) + 40 * *(v3 + 96);
  if (v4 != v6)
  {
    v7 = "air.amplification_id";
    do
    {
      v8 = *(*(this + 10) + 8 * *(v4 + 32));
      if (*(v4 + 8))
      {
        v9 = v8 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        goto LABEL_43;
      }

      v10 = v7;
      v11 = *v4;
      v34 = llvm::UndefValue::get();
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

      AGCLLVMBuilder::SetInsertPoint(this + *(*this - 24) + 1704, v15, *(this + 5));
      v17 = *(v11 + 8);
      if (v17 == 16)
      {
        if (isStringMDNode(*(v8 - 8 * *(v8 + 8) + 8), "air.imageblock_data"))
        {
          if (*(this + 1136) <= 0)
          {
            *(this + 1136) = 1;
          }

          v44 = v46;
          v45 = 0x500000000;
          v18 = this + *(*this - 24);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v32, (v18 + 1712));
          v33 = *(v18 + 452);
          v19 = *(this + 21);
          v35[0] = &v36;
          v35[1] = 0x100000000;
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v43 = 0;
          v42[0] = 0;
          v40 = 0;
          v41 = v19;
          llvm::DomTreeBuilder::Calculate<llvm::DominatorTreeBase<llvm::BasicBlock,false>>();
        }
      }

      else if (v17 == 15)
      {
        if ((v17 & 0xFE) == 0x12)
        {
          v17 = *(**(v11 + 16) + 8);
        }

        if ((v17 & 0xFFFFFF00) == 0x400 && *(**(v11 + 16) + 8) == 16)
        {
          llvm::Constant::getNullValue(v11, v16);
          llvm::Value::replaceAllUsesWith();
          goto LABEL_42;
        }
      }

      if (isStringMDNode(*(v8 - 8 * *(v8 + 8) + 8), v7))
      {
        AGCLLVMAGPFragmentShaderGen3::getAmplificationVarying(v35, this, v11, v7, 0x14uLL);
        v34 = AGCLLVMUserFragmentShader::replaceInterpolation(this, v35, v20);
        llvm::Value::replaceAllUsesWith();
        llvm::ValueHandleBase::operator=((this + 7872), v34);
        *(this + 6460) = 1;
        if (v40 != v42)
        {
          free(v40);
        }

        goto LABEL_43;
      }

      if (isStringMDNode(*(v8 - 8 * *(v8 + 8) + 8), "air.amplification_count"))
      {
        AGCLLVMAGPFragmentShaderGen3::getAmplificationVarying(v35, this, v11, "air.amplification_count", 0x17uLL);
        v34 = AGCLLVMUserFragmentShader::replaceInterpolation(this, v35, v21);
        llvm::Value::replaceAllUsesWith();
        *(this + 6461) = 1;
        if (v40 != v42)
        {
          free(v40);
        }
      }

      else
      {
        if (*(this + 7860) != 1 || !isStringMDNode(*(v8 - 8 * *(v8 + 8) + 8), "air.render_target_array_index"))
        {
          goto LABEL_43;
        }

        v22 = this + *(*this - 24);
        v23 = *(v22 + 271);
        if (v23[1861])
        {
          v24 = *v4;
          v31 = (*(*v23 + 688))(v23);
          v25 = this + *(*this - 24);
          *v35 = *(v25 + 110);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v36, (v25 + 1712));
          LODWORD(v37) = *(v25 + 452);
          Cast = AGCLLVMGen3TargetLowerer::buildLayerId(v31, v35, v24);
          if (v36)
          {
            llvm::MetadataTracking::untrack();
          }
        }

        else
        {
          v27 = llvm::ConstantInt::get();
          v28 = *v4;
          LOWORD(v38) = 257;
          Cast = llvm::IRBuilderBase::CreateCast((v22 + 1712), 38, v27, v28, v35);
        }

        v34 = Cast;
        llvm::Value::replaceAllUsesWith();
        *(this + 6459) = 1;
      }

LABEL_42:
      v7 = v10;
LABEL_43:
      v4 += 40;
    }

    while (v4 != v6);
  }

  if (*(this + 1902))
  {
    v29 = 0;
    do
    {
      llvm::MDNode::replaceOperandWith();
      ++v29;
    }

    while (*(this + 1902) > v29);
  }

  return AGCLLVMUserFragmentShader::setupShaderInputs(this);
}

uint64_t AGCLLVMBuilder::SetInsertPoint(uint64_t a1, llvm::Instruction *a2, uint64_t a3)
{
  if (a3)
  {
    llvm::DebugLoc::DebugLoc();
    llvm::TrackingMDRef::operator=(a2 + 6, &v6);
    if (v6)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  return llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
}

uint64_t AGCLLVMUserFragmentShader::setupShaderInputs(AGCLLVMUserFragmentShader *this)
{
  v310[3] = *MEMORY[0x277D85DE8];
  v2 = this + 4096;
  v3 = *(*(this + 21) + 80);
  v4 = v3 - 24;
  if (!v3)
  {
    v4 = 0;
  }

  v245 = v4;
  v5 = *(v4 + 40);
  if (v5)
  {
    v6 = (v5 - 24);
  }

  else
  {
    v6 = 0;
  }

  llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v6);
  if ((v2[2335] & 1) != 0 || (v2[1960] & 4) != 0)
  {
    v7 = AGCLLVMUserFragmentShader::setupInterpolation(this, 6u, 0, 1);
    if (v2[2335] == 1)
    {
      v8 = this + *(*this - 24);
      v9 = *(v8 + 271);
      v282 = *(v8 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v283, (v8 + 1712));
      v284 = *(v8 + 452);
      v10 = (*(*v9 + 280))(v9, &v282, 1, 0, v7, 0, 0);
      llvm::ValueHandleBase::operator=((this + 6216), v10);
      if (v283)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    if ((v2[1960] & 4) != 0)
    {
      v11 = this + *(*this - 24);
      v12 = *(v11 + 271);
      v279 = *(v11 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v280, (v11 + 1712));
      v281 = *(v11 + 452);
      v13 = (*(*v12 + 280))(v12, &v279, 1, *(this + 1610), v7, 0, 0);
      llvm::ValueHandleBase::operator=((this + 6240), v13);
      if (v280)
      {
        llvm::MetadataTracking::untrack();
      }

      if (*(this + 1610) == 1 && *(this + 1136) <= 1)
      {
        *(this + 1136) = 2;
      }
    }
  }

  if (v2[2335] == 1)
  {
    v14 = this + *(*this - 24);
    v15 = *(v14 + 271);
    v16 = *(v15 + 1688);
    if (v16)
    {
      v17 = strlen(*(v15 + 1688));
    }

    else
    {
      v17 = 0;
    }

    inserted = AGCLLVMBuilder::getOrInsertFunction<>((v14 + 1704), v16, v17, *(v14 + 234));
    v19 = this + *(*this - 24);
    v20 = *(v19 + 271);
    v21 = *(v20 + 1696);
    if (v21)
    {
      v22 = strlen(*(v20 + 1696));
    }

    else
    {
      v22 = 0;
    }

    v23 = AGCLLVMBuilder::getOrInsertFunction<>((v19 + 1704), v21, v22, *(v19 + 234));
    v24 = this + *(*this - 24);
    v25 = llvm::UndefValue::get();
    v26 = (this + *(*this - 24));
    LOWORD(v266[0]) = 257;
    v27 = llvm::IRBuilderBase::CreateCall(v26 + 214, *(inserted + 24), inserted, 0, 0, &v264);
    LOWORD(v296) = 257;
    v28 = llvm::ConstantInt::get();
    InsertElement = llvm::IRBuilderBase::CreateInsertElement((v24 + 1712), v25, v27, v28, &v294);
    v30 = (this + *(*this - 24));
    LOWORD(v266[0]) = 257;
    v31 = llvm::IRBuilderBase::CreateCall(v30 + 214, *(v23 + 24), v23, 0, 0, &v264);
    v32 = (*(*this + 568))(this, v31);
    v33 = this + *(*this - 24);
    LOWORD(v266[0]) = 257;
    v34 = llvm::ConstantInt::get();
    v35 = llvm::IRBuilderBase::CreateInsertElement((v33 + 1712), InsertElement, v32, v34, &v264);
    v36 = AGCLLVMUserFragmentShader::setupInterpolation(this, 0, 0, 1);
    v38 = v37;
    v294 = 4uLL;
    *&v295 = v36;
    if (v36 != -8192 && v36 != -4096 && v36)
    {
      llvm::ValueHandleBase::AddToUseList(&v294);
    }

    llvm::ValueHandleBase::ValueHandleBase(&v264, 2u, &v294);
    *(&v265 + 1) = v38;
    llvm::ValueHandleBase::operator=((this + 6264), &v264);
    v39 = v265;
    *(this + 786) = *(&v265 + 1);
    if (v39 != -8192 && v39 != -4096 && v39)
    {
      llvm::ValueHandleBase::RemoveFromUseList(&v264);
    }

    if (v295 != -8192 && v295 != -4096 && v295)
    {
      llvm::ValueHandleBase::RemoveFromUseList(&v294);
    }

    v40 = this + *(*this - 24);
    v41 = *(v40 + 271);
    v276 = *(v40 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v277, (v40 + 1712));
    v278 = *(v40 + 452);
    v42 = (*(*v41 + 280))(v41, &v276, 1, 0, *(this + 785), 0, 0);
    if (v277)
    {
      llvm::MetadataTracking::untrack();
    }

    v43 = this + *(*this - 24);
    v44 = *(this + 779);
    LOWORD(v266[0]) = 257;
    v45 = llvm::ConstantInt::get();
    v46 = llvm::IRBuilderBase::CreateInsertElement((v43 + 1712), v35, v44, v45, &v264);
    v47 = this + *(*this - 24);
    LOWORD(v266[0]) = 257;
    v48 = llvm::ConstantInt::get();
    v243 = llvm::IRBuilderBase::CreateInsertElement((v47 + 1712), v46, v42, v48, &v264);
  }

  else
  {
    v243 = 0;
  }

  if (v2[2336] == 1)
  {
    v49 = llvm::User::operator new(0x58);
    *&v264 = "agc.front_direction";
    LOWORD(v266[0]) = 259;
    llvm::GlobalVariable::GlobalVariable();
    llvm::GlobalObject::setSection();
    v50 = this + *(*this - 24);
    v51 = *(v50 + 268);
    v52 = AGCLLVMBuilder::buildGlobalMetadata(v50 + 213, v49, 0x18u, 0);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v51, v52);
    v53 = this + *(*this - 24);
    v54 = *(v53 + 271);
    v273 = *(v53 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v274, (v53 + 1712));
    v275 = *(v53 + 452);
    v242 = (*(*v54 + 528))(v54, &v273, v49);
    if (v274)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    v242 = 0;
  }

  v55 = llvm::PointerType::get();
  if ((v2[2337] & 1) != 0 || v2[2338] == 1 && (*(*(this + 660) + 33) & 3) == 0)
  {
    v56 = AGCLLVMUserFragmentShader::setupInterpolation(this, 5u, 0, 2);
    v57 = this + *(*this - 24);
    v58 = *(v57 + 271);
    v270 = *(v57 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v271, (v57 + 1712));
    v272 = *(v57 + 452);
    v59 = this + *(*this - 24);
    LOWORD(v266[0]) = 257;
    Cast = llvm::IRBuilderBase::CreateCast((v59 + 1712), 49, v56, v55, &v264);
    v61 = (*(*v58 + 280))(v58, &v270, 2, 0, Cast, 0, 0);
    llvm::ValueHandleBase::operator=((this + 6296), v61);
    if (v271)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  if (v2[2338] == 1 && (*(*(this + 660) + 33) & 3) != 0)
  {
    v62 = AGCLLVMUserFragmentShader::setupInterpolation(this, 5u, 0, 2);
    v63 = this + *(*this - 24);
    v64 = *(v63 + 271);
    v267 = *(v63 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v268, (v63 + 1712));
    v269 = *(v63 + 452);
    v65 = this + *(*this - 24);
    LOWORD(v266[0]) = 257;
    v66 = llvm::IRBuilderBase::CreateCast((v65 + 1712), 49, v62, v55, &v264);
    v67 = (*(*v64 + 280))(v64, &v267, 2, 1, v66, 0, 0);
    llvm::ValueHandleBase::operator=((this + 6320), v67);
    if (v268)
    {
      llvm::MetadataTracking::untrack();
    }

    if (*(this + 1136) <= 1)
    {
      *(this + 1136) = 2;
    }
  }

  LODWORD(v307) = 0;
  v306 = 0u;
  *(&v307 + 1) = 0;
  v308 = 0u;
  v309[0] = v310;
  v309[1] = 0x500000000;
  llvm::SmallVectorImpl<unsigned int>::assign(v309, 5uLL, -559038737);
  v301 = 0;
  v300 = 0u;
  v303 = 0u;
  v302 = 0;
  v304[0] = v305;
  v304[1] = 0x500000000;
  llvm::SmallVectorImpl<unsigned int>::assign(v304, 5uLL, -559038737);
  v68 = (*(*this + 616))(this);
  v69 = *(*(this + 801) + 64);
  if ((~v69 & 0xF) != 0)
  {
    v72 = -1;
    v73 = 4;
    v71 = v245;
    while (v72 != 6)
    {
      v74 = v69 >> v73;
      ++v72;
      v73 += 4;
      if ((~v74 & 0xF) == 0)
      {
        if (v72 < 7)
        {
          v70 = 0;
          goto LABEL_63;
        }

        break;
      }
    }

    v70 = AGCLLVMUserFragmentShader::buildStaticLtpLibOffsetArrayPtr(this);
  }

  else
  {
    v70 = 0;
    v71 = v245;
  }

LABEL_63:
  memset(v266, 0, sizeof(v266));
  v264 = 0u;
  v265 = 0u;
  v241 = (this + 4536);
  AGCLLVMStatelessFragmentObject::buildDrawBufferState(&v264, this + 567, *(this + 660), v70);
  LOBYTE(v262[0]) = 0;
  v263 = 0;
  if (v68)
  {
    AGCLLVMUserFragmentShader::readAndWriteFramebufferFunctionPointers(v262, this);
    v263 = 1;
  }

  if ((*(this + *(*this - 24) + 2284) & 1) == 0)
  {
    goto LABEL_282;
  }

  v75 = *(this + 21);
  if (*(v75 + 18))
  {
    llvm::Function::BuildLazyArguments(*(this + 21));
    v77 = *(this + 21);
    v76 = *(v75 + 88);
    if (*(v77 + 18))
    {
      llvm::Function::BuildLazyArguments(*(this + 21));
    }

    v75 = v77;
  }

  else
  {
    v76 = *(v75 + 88);
  }

  v78 = *(v75 + 88) + 40 * *(v75 + 96);
  v79 = this + 1704;
  v248 = this + 1712;
  v249 = this + 1704;
  if (v76 != v78)
  {
    v80 = 0;
    v244 = this + 2168;
    v81 = v71;
    v250 = v78;
    while (1)
    {
      if (!v76[1])
      {
        goto LABEL_263;
      }

      v82 = *(*(this + 10) + 8 * *(v76 + 8));
      v83 = *(v81 + 40);
      v84 = v83 ? (v83 - 24) : 0;
      AGCLLVMBuilder::SetInsertPoint(&v79[*(*this - 24)], v84, *(this + 5));
      if (AGCLLVMUserShader::replaceInputArgument(this, v76, *(v76 + 8), v82))
      {
        goto LABEL_263;
      }

      String = llvm::MDString::getString(*(v82 - 8 * *(v82 + 8) + 8));
      v87 = String;
      v88 = v86;
      if (v86 <= 16)
      {
        if (v86 > 14)
        {
          if (v86 != 15)
          {
            if (*String != 0x6E6F72662E726961 || String[1] != 0x676E696361665F74)
            {
              goto LABEL_168;
            }

            v104 = *(*this - 24);
            v105 = *v76;
            LOWORD(v296) = 257;
            v102 = llvm::IRBuilderBase::CreateCast(&v248[v104], 39, v242, v105, &v294);
            goto LABEL_195;
          }

          if (*String != 0x6E696F702E726961 || *(String + 7) != 0x64726F6F635F746ELL)
          {
            goto LABEL_168;
          }

          if ((*(*v76 + 8) & 0xFE) == 0x12)
          {
            v129 = *(**(*v76 + 16) + 8);
          }

          else
          {
            v129 = *(*v76 + 8);
          }

          v78 = v250;
          v162 = *(*this - 24);
          v89 = v129 == 0;
          v163 = this + 1928;
          if (v89)
          {
            v163 = this + 1920;
          }

          v159 = *&v163[v162];
          v161 = *(this + 789);
          LOWORD(v296) = 257;
          v160 = &v248[v162];
        }

        else
        {
          if (v86 != 12)
          {
            if (v86 != 13)
            {
              goto LABEL_168;
            }

            v89 = *String == 0x706D61732E726961 && *(String + 5) == 0x64695F656C706D61;
            if (!v89)
            {
              goto LABEL_168;
            }

            v90 = v80;
            v91 = v81;
            v92 = this + *(*this - 24);
            v93 = *(v92 + 271);
            v94 = *(v93 + 1704);
            if (v94)
            {
              v95 = strlen(*(v93 + 1704));
            }

            else
            {
              v95 = 0;
            }

            v186 = AGCLLVMBuilder::getOrInsertFunction<>((v92 + 1704), v94, v95, *(v92 + 238));
            v187 = *(*this - 24);
            LOWORD(v296) = 257;
            v188 = llvm::IRBuilderBase::CreateCall(&v248[v187], *(v186 + 24), v186, 0, 0, &v294);
            v189 = *v76;
            LOWORD(v291) = 257;
            v102 = llvm::IRBuilderBase::CreateCast(&v248[v187], 38, v188, v189, v289);
            v78 = v250;
            if (*(this + 1136) <= 1)
            {
              *(this + 1136) = 2;
            }

            v79 = this + 1704;
            goto LABEL_245;
          }

          if (*String != 0x69736F702E726961 || *(String + 2) != 1852795252)
          {
            goto LABEL_168;
          }

          if ((*(*v76 + 8) & 0xFE) == 0x12)
          {
            v112 = *(**(*v76 + 16) + 8);
          }

          else
          {
            v112 = *(*v76 + 8);
          }

          v78 = v250;
          v157 = *(*this - 24);
          v89 = v112 == 0;
          v158 = 2016;
          if (v89)
          {
            v158 = 2000;
          }

          v159 = *(this + v158 + v157);
          LOWORD(v296) = 257;
          v160 = &v248[v157];
          v161 = v243;
        }

        FPTrunc = llvm::IRBuilderBase::CreateFPTrunc(v160, v161, v159, &v294);
LABEL_214:
        v102 = FPTrunc;
        goto LABEL_259;
      }

      if (v86 > 23)
      {
        if (v86 != 24)
        {
          if (v86 != 29)
          {
            goto LABEL_168;
          }

          v106 = *String == 0x646E65722E726961 && String[1] == 0x65677261745F7265;
          v107 = v106 && String[2] == 0x5F79617272615F74;
          if (!v107 || *(String + 21) != 0x7865646E695F7961)
          {
            goto LABEL_168;
          }

          v90 = v80;
          v91 = v81;
          v2[2363] = 1;
          v109 = this + *(*this - 24);
          if (*(*(v109 + 271) + 1861))
          {
            (*(*this + 528))(&v294, this, *v76, "air.render_target_array_index", 29);
            v102 = AGCLLVMUserFragmentShader::replaceInterpolation(this, &v294, v110);
            v78 = v250;
            if (v297[0] != v298)
            {
              free(v297[0]);
            }
          }

          else
          {
            v178 = llvm::ConstantInt::get();
            v179 = *v76;
            LOWORD(v296) = 257;
            v102 = llvm::IRBuilderBase::CreateCast((v109 + 1712), 38, v178, v179, &v294);
            v78 = v250;
          }

LABEL_245:
          v81 = v91;
          v80 = v90;
          goto LABEL_259;
        }

        if (*String == 0x776569762E726961 && String[1] == 0x7272615F74726F70 && String[2] == 0x7865646E695F7961)
        {
          v2[2362] = 1;
          (*(*this + 528))(&v294, this, *v76, "air.viewport_array_index", 24);
          v102 = AGCLLVMUserFragmentShader::replaceInterpolation(this, &v294, v149);
          llvm::ValueHandleBase::operator=((this + 6344), v102);
          if (v297[0] != v298)
          {
            free(v297[0]);
          }
        }

        else
        {
LABEL_168:
          if (AGCLLVMUserFragmentShader::isSampleMaskVariant(String, v86))
          {
            v247 = v80;
            v132 = v81;
            v133 = this + *(*this - 24);
            v134 = *(v133 + 271);
            v135 = *(v134 + 1712);
            if (v135)
            {
              v136 = strlen(*(v134 + 1712));
            }

            else
            {
              v136 = 0;
            }

            v141 = AGCLLVMBuilder::getOrInsertFunction<>((v133 + 1704), v135, v136, *(v133 + 238));
            v142 = *(*this - 24);
            LOWORD(v296) = 257;
            v143 = llvm::IRBuilderBase::CreateCall(&v248[v142], *(v141 + 24), v141, 0, 0, &v294);
            v144 = *v76;
            LOWORD(v291) = 257;
            v102 = llvm::IRBuilderBase::CreateCast(&v248[v142], 38, v143, v144, v289);
            if (AGCLLVMUserFragmentShader::getEffectiveFragmentRate(*(this + 1618), v87, v88))
            {
              v145 = this + *(*this - 24);
              v146 = llvm::ConstantInt::get();
              LOWORD(v296) = 257;
              v102 = llvm::IRBuilderBase::CreateAnd((v145 + 1712), v102, v146, &v294);
            }

            v79 = this + 1704;
            v78 = v250;
            v81 = v132;
            v2[2334] = 1;
            v80 = v247;
            goto LABEL_259;
          }

          if (v88 != 21)
          {
            if (v88 != 16)
            {
              goto LABEL_194;
            }

            if (*v87 != 0x6D6972702E726961 || v87[1] != 0x64695F6576697469)
            {
              goto LABEL_194;
            }

            v138 = *&v244[*(*this - 24)];
            if ((*(*v138 + 816))(v138))
            {
              v78 = v250;
              if (!v308)
              {
                (*(*this + 536))(&v294, this, *v76);
                v306 = v294;
                v307 = v295;
                v308 = v296;
                llvm::SmallVectorImpl<unsigned int>::operator=(v309, v297);
                if (v297[0] != v298)
                {
                  free(v297[0]);
                }
              }

              FPTrunc = AGCLLVMUserFragmentShader::replaceInterpolation(this, &v306, v139);
              goto LABEL_214;
            }

            v233 = (this + *(*this - 24));
            v234 = "primitive_id not supported for this device";
LABEL_280:
            std::string::append(v233 + 69, v234);
            goto LABEL_281;
          }

          if (*v87 == 0x797261622E726961 && v87[1] == 0x5F636972746E6563 && *(v87 + 13) == 0x64726F6F635F6369)
          {
            v150 = *&v244[*(*this - 24)];
            v78 = v250;
            if ((*(*v150 + 824))(v150))
            {
              v151 = 1;
              v2[2367] = 1;
              (*(*this + 544))(&v294, this, *v76, v82);
              v153 = AGCLLVMUserFragmentShader::replaceInterpolation(this, &v294, v152);
              if ((*(*v76 + 8) & 0xFE) == 0x12)
              {
                v151 = *(*v76 + 32);
              }

              v154 = this + *(*this - 24);
              v155 = *(v154 + 271);
              v253 = *(v154 + 110);
              llvm::IRBuilderBase::getCurrentDebugLocation(&v254, (v154 + 1712));
              v255 = *(v154 + 452);
              v102 = (*(*v155 + 856))(v155, &v253, v153, v151);
              if (v254)
              {
                llvm::MetadataTracking::untrack();
              }

              v156 = v297[0];
              v81 = v245;
              v79 = this + 1704;
              if (v297[0] != v298)
              {
                goto LABEL_258;
              }

              goto LABEL_259;
            }

            v233 = (this + *(*this - 24));
            v234 = "barycentric_coords not supported for this device";
            goto LABEL_280;
          }

LABEL_194:
          v102 = 0;
        }

LABEL_195:
        v78 = v250;
        goto LABEL_259;
      }

      if (v86 == 17)
      {
        if (*String != 0x646E65722E726961 || String[1] != 0x65677261745F7265 || *(String + 16) != 116)
        {
          goto LABEL_168;
        }

        if (*(this + 1136) <= 0)
        {
          *(this + 1136) = 1;
        }

        v261 = 0;
        LODWORD(v294) = 2;
        if (parseMDInt(0, v82, &v294, &v261))
        {
          v115 = v261;
          v116 = llvm::ConstantInt::get();
          v117 = this + *(*this - 24);
          v118 = *(v117 + 271);
          v258 = *(v117 + 110);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v259, (v117 + 1712));
          v260 = *(v117 + 452);
          v119 = (*(*v118 + 208))(v118, &v258, v116);
          if (v259)
          {
            llvm::MetadataTracking::untrack();
          }

          *&v294 = "case3_stateless_color_coverage_mask";
          LOWORD(v296) = 259;
          llvm::Value::setName();
          v120 = this + *(*this - 24);
          v285 = *(v120 + 110);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v286, (v120 + 1712));
          v287 = *(v120 + 452);
          v121 = *this;
          v122 = this + *(*this - 24);
          if (v122[2284])
          {
            v123 = *(v122 + 570);
            if (v123 == 7 || v123 == 2)
            {
              *(this + 1512) |= 1 << v115;
              *(this + 1344) |= 1 << v115;
            }

            v246 = v119;
            if ((*(v121 + 608))(this, v115))
            {
              AGCLLVMBuilder::WriteFramebufferArgs::WriteFramebufferArgs(v289, (*(this + 660) + 32), *(*(this + 660) + 4 * v115));
              v124 = *v76;
              if ((*(*v76 + 8) & 0xFE) != 0x12)
              {
                v124 = llvm::VectorType::get();
              }

              v125 = *(*(this + 660) + 32);
              RTZMode = AGCLLVMTargetLowerer::getRTZMode(*&v244[*(*this - 24)], *(*(this + 684) + 4 * v115));
              v238 = *(this + *(*this - 24) + 2168);
              *v256 = *v289;
              v257 = v290;
              v236 = *(this + 32);
              v237 = *(this + 14);
              v126 = *(this + 660);
              if ((~*(v126 + 32) & 0x1FF000) != 0)
              {
                v127 = llvm::ConstantInt::get();
                v126 = *(this + 660);
              }

              else
              {
                v127 = 0;
              }

              if ((~*(v126 + 4 * v115) & 0xFF000) != 0)
              {
                v190 = llvm::ConstantInt::get();
              }

              else
              {
                v190 = 0;
              }

              v191 = llvm::ConstantInt::get();
              *(&v235 + 1) = v190;
              *&v235 = v127;
              AGCLLVMStatelessFragmentObject::WriteFramebufferOptions::WriteFramebufferOptions(&v294, v238, 0, v256, 0, ((1 << v115) & v125) == 0, 0, 15, RTZMode, v124, 0, 0, 0, v237, v236, v235, v191, (*(*(this + 660) + 32) & 0x10000000) != 0, v115 | 0x100000000, 0, 1 << (BYTE1(*(*(this + 660) + 32)) & 3));
              v256[0] = 0;
              AGCLLVMStatelessFragmentObject::buildReadFramebufferFunction(v241, &v294, v256);
              *(this + 661) |= v256[0] << (4 * v115);
LABEL_252:
              v289[0] = &v290;
              v289[1] = 0x300000000;
              llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v289, v246);
              llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v289, *&v266[3 * v115]);
              if ((*(*(this + 660) + 35) & 0x10) != 0)
              {
                llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v289, *(&v266[3 * v115] + 1));
              }

              v192 = *(this + 21);
              *&v294 = &v295;
              *(&v294 + 1) = 0x100000000;
              *(&v295 + 1) = 0;
              *&v296 = 0;
              DWORD2(v296) = 0;
              v299 = 0;
              v298[0] = 0;
              v297[0] = 0;
              v297[1] = v192;
              llvm::DomTreeBuilder::Calculate<llvm::DominatorTreeBase<llvm::BasicBlock,false>>();
            }

            if (v263)
            {
              v180 = v262[v115];
              AGCLLVMStatelessFragmentObject::buildReadFramebufferFunctionType(v241, *v76, 0, (*(*(this + 660) + 32) >> 28) & 1);
              v181 = v241 + *(*(this + 567) - 24);
              v182 = *(v181 + 239);
              LOWORD(v296) = 257;
              llvm::Type::isOpaquePointerTy(*v180);
              AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v181 + 214, v182, v180, 0, &v294);
              v184 = *(*(this + 567) - 24);
              v185 = llvm::PointerType::get();
              LOWORD(v296) = 257;
              llvm::IRBuilderBase::CreateCast(this + v184 + 6248, 48, AlignedLoad, v185, &v294);
              goto LABEL_252;
            }
          }

LABEL_282:
          std::__throw_bad_optional_access[abi:nn200100]();
        }

LABEL_281:
        v207 = 0;
        goto LABEL_273;
      }

      if (v86 != 18)
      {
        goto LABEL_168;
      }

      v96 = *String == 0x676172662E726961 && String[1] == 0x706E695F746E656DLL;
      if (!v96 || *(String + 8) != 29813)
      {
        goto LABEL_168;
      }

      v98 = v80;
      v99 = v81;
      v2[2332] = 1;
      (*(*this + 520))(&v294, this, *v76, v82);
      v101 = DWORD2(v294);
      if (DWORD2(v294) < 2)
      {
        if (!DWORD2(v294))
        {
          v102 = 0;
          v156 = v294;
          v78 = v250;
          goto LABEL_256;
        }

        v240 = v2;
        v102 = 0;
      }

      else
      {
        v240 = v2;
        v102 = llvm::UndefValue::get();
      }

      v164 = 0;
      v165 = 0;
      LODWORD(v80) = v98;
      do
      {
        v166 = *(v294 + v164);
        v167 = *(v294 + v164 + 16);
        v291 = *(v294 + v164 + 32);
        v290 = v167;
        *v289 = v166;
        v292[0] = v293;
        v292[1] = 0x500000000;
        if (*(v294 + v164 + 56))
        {
          llvm::SmallVectorImpl<unsigned int>::operator=(v292, v294 + v164 + 48);
        }

        v168 = v291 == 0;
        if (HIDWORD(v289[0]) || *(this + 785))
        {
          if (v291)
          {
            goto LABEL_223;
          }
        }

        else
        {
          v170 = AGCLLVMUserFragmentShader::setupInterpolation(this, 0, 0, 1);
          v172 = v171;
          llvm::ValueHandleBase::operator=((this + 6264), v170);
          *(this + 786) = v172;
          if (v291)
          {
LABEL_223:
            v169 = AGCLLVMUserFragmentShader::replaceInterpolation(this, v289, v100);
            goto LABEL_226;
          }
        }

        v169 = (*(*this + 576))(this, v289);
LABEL_226:
        v173 = v169;
        if (v101 < 2)
        {
          v102 = v169;
        }

        else
        {
          v174 = &v249[*(*this - 24)];
          v288 = 257;
          v175 = llvm::ConstantInt::get();
          v102 = llvm::IRBuilderBase::CreateInsertElement((v174 + 8), v102, v173, v175, &v285);
        }

        if (v292[0] != v293)
        {
          free(v292[0]);
        }

        v80 = v80 | v168;
        ++v165;
        v164 += 88;
      }

      while (v101 != v165);
      v156 = v294;
      if (DWORD2(v294))
      {
        v98 = v80;
        v176 = (v294 + 88 * DWORD2(v294) - 40);
        v177 = -88 * DWORD2(v294);
        v2 = v240;
        v99 = v245;
        v78 = v250;
        do
        {
          if (v176 + 2 != *v176)
          {
            free(*v176);
          }

          v176 -= 11;
          v177 += 88;
        }

        while (v177);
        v156 = v294;
LABEL_256:
        v81 = v99;
        v80 = v98;
      }

      else
      {
        v2 = v240;
        v81 = v245;
        v78 = v250;
      }

      v79 = this + 1704;
      if (v156 != &v295)
      {
LABEL_258:
        free(v156);
      }

LABEL_259:
      if ((*(*v76 + 8) & 0xFE) == 0x12 && *(*v76 + 32) == 1)
      {
        v193 = &v249[*(*this - 24)];
        v194 = v80;
        v195 = v81;
        v196 = llvm::UndefValue::get();
        LOWORD(v296) = 257;
        v197 = llvm::ConstantInt::get();
        v198 = (v193 + 8);
        v79 = this + 1704;
        v199 = v196;
        v81 = v195;
        v80 = v194;
        llvm::IRBuilderBase::CreateInsertElement(v198, v199, v102, v197, &v294);
      }

      llvm::Value::replaceAllUsesWith();
LABEL_263:
      v76 += 5;
      if (v76 == v78)
      {
        if (v80)
        {
          (*(*this + 584))(this);
        }

        break;
      }
    }
  }

  Function = llvm::Module::getFunction();
  if (Function)
  {
    v201 = Function;
    llvm::ConstantInt::get();
    llvm::ConstantInt::get();
    v202 = *(v201 + 8);
    while (v202)
    {
      v203 = *(v202 + 24);
      v202 = *(v202 + 8);
      llvm::CallBase::arg_end(v203);
      llvm::Value::replaceAllUsesWith();
      llvm::Instruction::eraseFromParent(v203);
    }
  }

  v204 = llvm::Module::getFunction();
  if (v204)
  {
    v205 = v204;
    v206 = llvm::ArrayType::get(*(this + *(*this - 24) + 1872), (2 << (BYTE1(*(*(this + 660) + 32)) & 3)));
    v207 = 1;
    v208 = llvm::User::operator new(0x58);
    *&v294 = "agc.sample_positions";
    LOWORD(v296) = 259;
    llvm::GlobalVariable::GlobalVariable();
    llvm::GlobalObject::setSection();
    v209 = this + *(*this - 24);
    v210 = *(v209 + 268);
    v211 = AGCLLVMBuilder::buildGlobalMetadata(v209 + 213, v208, 0x4Bu, 0);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v210, v211);
    v212 = *(v205 + 8);
    if (!v212)
    {
      goto LABEL_273;
    }

    do
    {
      v252 = *(v212 + 8);
      v213 = *(v212 + 24);
      llvm::IRBuilderBase::SetInsertPoint(&v248[*(*this - 24)], v213);
      v251 = llvm::UndefValue::get();
      v214 = this + *(*this - 24);
      v215 = *(v213 - 4 * (*(v213 + 5) & 0x7FFFFFF));
      v216 = llvm::ConstantInt::get();
      LOWORD(v296) = 257;
      Mul = llvm::IRBuilderBase::CreateMul((v214 + 1712), v215, v216, &v294);
      v218 = this + *(*this - 24);
      *&v285 = llvm::ConstantInt::get();
      *(&v285 + 1) = Mul;
      LOWORD(v296) = 257;
      llvm::Type::isOpaquePointerTy(*v208);
      GEP = llvm::IRBuilderBase::CreateGEP((v218 + 1712), v206, v208, &v285, 2, &v294);
      LOWORD(v291) = 257;
      Load = AGCLLVMBuilder::CreateLoad((v218 + 1704), GEP, v289);
      v221 = &v249[*(*this - 24)];
      LOWORD(v296) = 257;
      v222 = llvm::ConstantInt::get();
      v223 = llvm::IRBuilderBase::CreateInsertElement((v221 + 8), v251, Load, v222, &v294);
      v224 = this + *(*this - 24);
      v225 = llvm::ConstantInt::get();
      LOWORD(v296) = 257;
      Add = llvm::IRBuilderBase::CreateAdd((v224 + 1712), Mul, v225, &v294);
      v227 = this + *(*this - 24);
      *&v285 = llvm::ConstantInt::get();
      *(&v285 + 1) = Add;
      LOWORD(v296) = 257;
      llvm::Type::isOpaquePointerTy(*v208);
      v228 = llvm::IRBuilderBase::CreateGEP((v227 + 1712), v206, v208, &v285, 2, &v294);
      LOWORD(v291) = 257;
      v229 = AGCLLVMBuilder::CreateLoad((v227 + 1704), v228, v289);
      v230 = &v249[*(*this - 24)];
      LOWORD(v296) = 257;
      v231 = llvm::ConstantInt::get();
      llvm::IRBuilderBase::CreateInsertElement((v230 + 8), v223, v229, v231, &v294);
      llvm::Value::replaceAllUsesWith();
      llvm::Instruction::eraseFromParent(v213);
      v212 = v252;
    }

    while (v252);
  }

  v207 = 1;
LABEL_273:
  if (v304[0] != v305)
  {
    free(v304[0]);
  }

  if (v309[0] != v310)
  {
    free(v309[0]);
  }

  return v207;
}

llvm::ValueAsMetadata *AGCLLVMUserFragmentShader::setupInterpolation(void *a1, unsigned int a2, unint64_t a3, llvm::Type *a4)
{
  if (a4 >= 2)
  {
    llvm::ArrayType::get(*(a1 + *(*a1 - 24) + 2016), a4);
  }

  v4 = llvm::User::operator new(0x58);
  llvm::GlobalVariable::GlobalVariable();
  *(v4 + 80) |= 1u;
  llvm::GlobalObject::setAlignment();
  llvm::ValueAsMetadata::get();
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  llvm::MDTuple::getImpl();
  llvm::NamedMDNode::addOperand();
  return v4;
}

llvm::Instruction *AGCLLVMGen3TargetLowerer::buildInterpolate(uint64_t a1, uint64_t a2, _BOOL4 a3, unsigned int a4, uint64_t a5, llvm::Instruction *a6, uint64_t a7)
{
  v34[4] = *MEMORY[0x277D85DE8];
  v27 = *a2;
  v28 = *(a2 + 16);
  if (v28)
  {
    llvm::MetadataTracking::track();
  }

  v29 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v27);
  if (v28)
  {
    llvm::MetadataTracking::untrack();
  }

  v14 = a3 - 1;
  if (!a3)
  {
    llvm::FixedVectorType::get();
  }

  v15 = llvm::PointerType::get();
  v33[0] = v34;
  v33[1] = 0x400000000;
  v30 = v32;
  v31 = 0x400000000;
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v33, v15);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v30, a5);
  if (a7)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v33, v15);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v30, a7);
    v16 = 2248;
  }

  else
  {
    v16 = 2152;
  }

  v17 = *(a1 + v16 + 32 * a4 + 8 * v14);
  if (a4 == 1)
  {
    if (!a6)
    {
      v18 = *(a1 + 1704);
      if (v18)
      {
        v19 = strlen(*(a1 + 1704));
      }

      else
      {
        v19 = 0;
      }

      inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1, v18, v19, *(a1 + 200));
      v26 = 257;
      a6 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(inserted + 24), inserted, 0, 0, v25);
    }

    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v33, *(a1 + 192));
    v21 = AGCLLVMBuilder::truncateToSmall(a1, a6, *(a1 + 192));
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v30, v21);
  }

  if (v17)
  {
    strlen(v17);
  }

  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  v26 = 257;
  v23 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(v22 + 24), v22, v30, v31, v25);
  if ((a3 ^ v14) <= v14)
  {
    v23 = AGCLLVMBuilder::subrangeVector(a1, v23, 0, a3, 1);
  }

  if (v30 != v32)
  {
    free(v30);
  }

  if (v33[0] != v34)
  {
    free(v33[0]);
  }

  return v23;
}

uint64_t AGCLLVMBuilder::getOrInsertFunction<>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  return v4;
}

uint64_t AGCLLVMObject::GetStatelessPSOGlobal(AGCLLVMObject *this)
{
  result = *(this + 281);
  if (!result)
  {
    v3 = (*(**(*(this + 271) + 920) + 384))(*(*(this + 271) + 920), 1);
    v4 = llvm::PointerType::get();
    v6[0] = "agc.stateless_pso_metadata";
    v6[2] = ".";
    v7 = 771;
    v8[0] = v6;
    v8[2] = v3;
    v9 = 2050;
    GlobalBufferBinding = AGCLLVMObject::createGlobalBufferBinding(this, v4, v8, v3, 0, 5u);
    llvm::ValueHandleBase::operator=((this + 2232), GlobalBufferBinding);
    return *(this + 281);
  }

  return result;
}

llvm::ValueAsMetadata *AGCLLVMObject::createGlobalBufferBinding(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v8 = llvm::User::operator new(0x58);
  v9 = llvm::GlobalVariable::GlobalVariable();
  *(v9 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  llvm::GlobalObject::setAlignment();
  __src[0] = llvm::ValueAsMetadata::get();
  llvm::ConstantInt::get();
  __src[1] = llvm::ValueAsMetadata::get();
  llvm::ConstantInt::get();
  __src[2] = llvm::ValueAsMetadata::get();
  v15[0] = v16;
  v15[1] = 0x400000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(v15, __src, v15);
  if (a5)
  {
    llvm::ConstantInt::get();
    v10 = llvm::ValueAsMetadata::get();
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v15, v10);
  }

  v11 = *(a1 + 2144);
  Impl = llvm::MDTuple::getImpl();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v11, Impl);
  if (v15[0] != v16)
  {
    free(v15[0]);
  }

  return v8;
}

void GenericVaryingAllocator::addVarying(uint64_t a1, unint64_t a2)
{
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(a1 + 689);
    v8 = *(a1 + 556);
    v9 = *(a1 + 24);
    while (1)
    {
      v10 = v9 + (v6 >> 1 << 6);
      if (v7)
      {
        memset(&v56, 0, sizeof(v56));
        memset(&v55, 0, sizeof(v55));
      }

      else
      {
        if (*(v10 + 47) < 0)
        {
          std::string::__init_copy_ctor_external(&v56, *(v10 + 24), *(v10 + 32));
        }

        else
        {
          v11 = *(v10 + 24);
          v56.__r_.__value_.__r.__words[2] = *(v10 + 40);
          *&v56.__r_.__value_.__l.__data_ = v11;
        }

        if (*(a2 + 47) < 0)
        {
          std::string::__init_copy_ctor_external(&v55, *(a2 + 24), *(a2 + 32));
        }

        else
        {
          v55 = *(a2 + 24);
        }
      }

      v12 = *(v10 + 8);
      v13 = *(a2 + 8);
      v15 = v13 != 3 || v12 == 3;
      if (v8)
      {
        if (!v15)
        {
          goto LABEL_38;
        }

        if (v12 == 3 && v13 != 3)
        {
          goto LABEL_40;
        }

        v17 = *(v10 + 56);
        v18 = *(a2 + 56);
        if (v17 < v18)
        {
          goto LABEL_38;
        }

        if (v18 < v17)
        {
          goto LABEL_40;
        }

        if (v12 < v13)
        {
          goto LABEL_38;
        }

        if (v13 < v12)
        {
          goto LABEL_40;
        }

        v19 = *(v10 + 57);
        v20 = *(a2 + 57);
        if (v19 < v20)
        {
          goto LABEL_38;
        }

        if (v20 < v19)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (!v15)
        {
          goto LABEL_38;
        }

        if (v12 == 3 && v13 != 3)
        {
          goto LABEL_40;
        }

        v22 = *(v10 + 57);
        v23 = *(a2 + 57);
        if (v22 < v23)
        {
          goto LABEL_38;
        }

        if (v23 < v22)
        {
          goto LABEL_40;
        }

        v25 = *(v10 + 56);
        v26 = *(a2 + 56);
        if (v25 < v26)
        {
          goto LABEL_38;
        }

        if (v26 < v25)
        {
          goto LABEL_40;
        }

        if (v12 < v13)
        {
          goto LABEL_38;
        }

        if (v13 < v12)
        {
          goto LABEL_40;
        }
      }

      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v56.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v56.__r_.__value_.__l.__size_;
      }

      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = &v56;
      }

      else
      {
        v28 = v56.__r_.__value_.__r.__words[0];
      }

      if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = HIBYTE(v55.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v29 = v55.__r_.__value_.__l.__size_;
      }

      if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &v55;
      }

      else
      {
        v30 = v55.__r_.__value_.__r.__words[0];
      }

      v53 = v28;
      v54 = size;
      if (v29 >= size)
      {
        v31 = size;
      }

      else
      {
        v31 = v29;
      }

      __n = v31;
      v52 = v30;
      v32 = memcmp(v28, v30, v31);
      v33 = v54 < v29;
      if (v32)
      {
        v33 = v32 < 0;
      }

      if (!v33)
      {
        v34 = memcmp(v52, v53, __n);
        v35 = v29 < v54;
        if (v34)
        {
          v35 = v34 < 0;
        }

        if (!v35)
        {
          v24 = *(v10 + 16) < *(a2 + 16);
          goto LABEL_41;
        }

LABEL_40:
        v24 = 0;
        goto LABEL_41;
      }

LABEL_38:
      v24 = 1;
LABEL_41:
      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }

      if (v24)
      {
        v6 += ~(v6 >> 1);
      }

      else
      {
        v6 >>= 1;
      }

      if (v24)
      {
        v9 = v10 + 64;
      }

      if (!v6)
      {
        v4 = *(a1 + 24);
        v36 = *(a1 + 32);
        goto LABEL_79;
      }
    }
  }

  v36 = 0;
  v9 = *(a1 + 24);
LABEL_79:
  if (v4 + (v36 << 6) == v9)
  {
    llvm::SmallVectorTemplateBase<GenericVarying,false>::push_back(v5, a2);
  }

  else
  {
    v37 = v9 - v4;
    v38 = llvm::SmallVectorTemplateCommon<GenericVarying,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<GenericVarying,false>>(v5, a2);
    v39 = *(a1 + 24);
    v40 = v39 + v37;
    v41 = v39 + (*(a1 + 32) << 6);
    *(v41 + 16) = *(v41 - 48);
    *v41 = *(v41 - 64);
    *(v41 + 24) = *(v41 - 40);
    *(v41 + 40) = *(v41 - 24);
    *(v41 - 40) = 0;
    *(v41 - 32) = 0;
    *(v41 - 24) = 0;
    *(v41 + 48) = *(v41 - 16);
    v42 = *(a1 + 24);
    v43 = *(a1 + 32);
    v44 = v42 + (v43 << 6) - 64;
    if (v44 != v40)
    {
      do
      {
        *v44 = *(v44 - 64);
        *(v44 + 16) = *(v44 - 48);
        if (*(v44 + 47) < 0)
        {
          operator delete(*(v44 + 24));
        }

        *(v44 + 24) = *(v44 - 40);
        *(v44 + 40) = *(v44 - 24);
        *(v44 - 17) = 0;
        *(v44 - 40) = 0;
        *(v44 + 48) = *(v44 - 16);
        v44 -= 64;
      }

      while (v44 != v40);
      LODWORD(v43) = *(a1 + 32);
      v42 = *(a1 + 24);
    }

    v45 = (v43 + 1);
    *(a1 + 32) = v45;
    v46 = v38 < v42 + (v45 << 6) && v38 >= v40;
    v47 = 64;
    if (!v46)
    {
      v47 = 0;
    }

    v48 = v38 + v47;
    v49 = *v48;
    *(v40 + 16) = *(v48 + 16);
    *v40 = v49;
    std::string::operator=((v40 + 24), (v48 + 24));
    *(v40 + 48) = *(v48 + 48);
  }

  v50 = *(a1 + 552);
  if (v50 <= *(a2 + 16))
  {
    v50 = *(a2 + 16);
  }

  *(a1 + 552) = v50;
  *(a1 + 692) += *a2;
}

void GenericVaryingAllocator::allocate(GenericVaryingAllocator *this, const AGCLLVMTargetLowerer *a2)
{
  v4 = (*(this + 138) + 7);
  v5 = *(this + 72);
  v6 = *(this + 71);
  v7 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v6) >> 3);
  v8 = v4 - v7;
  if (v4 <= v7)
  {
    if (v4 < v7)
    {
      v11 = v6 + 40 * v4;
      while (v5 != v11)
      {
        if (*(v5 - 1) < 0)
        {
          operator delete(*(v5 - 24));
        }

        v5 -= 40;
      }

      *(this + 72) = v11;
    }
  }

  else
  {
    v9 = *(this + 73);
    if (0xCCCCCCCCCCCCCCCDLL * ((v9 - v5) >> 3) < v8)
    {
      v10 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v6) >> 3);
      if (2 * v10 > v4)
      {
        v4 = 2 * v10;
      }

      if (v10 >= 0x333333333333333)
      {
        v4 = 0x666666666666666;
      }

      if (v4 <= 0x666666666666666)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = 40 * ((40 * v8 - 40) / 0x28) + 40;
    bzero(*(this + 72), v12);
    *(this + 72) = v5 + v12;
  }

  v13 = *(this + 8);
  if (v13)
  {
    v14 = 0;
    v15 = 0;
    v16 = *(a2 + 1851);
    v17 = *(this + 3);
    v18 = (v17 + 64 * v13);
    v19 = 4;
    v20 = *(this + 71);
    do
    {
      data = v17->__r_.__value_.__l.__data_;
      v22 = LODWORD(v17->__r_.__value_.__r.__words[2]) + 6;
      LODWORD(v17[2].__r_.__value_.__l.__data_) = v19;
      v23 = v20 + 40 * v22;
      *(v23 + 12) = v17->__r_.__value_.__r.__words[1];
      std::string::operator=((v23 + 16), v17 + 1);
      v24 = v17[2].__r_.__value_.__s.__data_[8];
      v20 = *(this + 71);
      v25 = v20 + 40 * v22;
      *v25 = v24;
      *(v25 + 4) = v15 + 2 * (v14 + v16);
      *(v25 + 8) = 2 * (v14 + v16 + v15);
      v19 += data;
      v26 = LODWORD(v17->__r_.__value_.__r.__words[1]);
      v27 = 616;
      if (v17[2].__r_.__value_.__s.__data_[9])
      {
        v27 = 664;
      }

      v28 = 592;
      if (v17[2].__r_.__value_.__s.__data_[9])
      {
        v28 = 640;
      }

      v29 = v24 == 0;
      if (v24)
      {
        v30 = v27;
      }

      else
      {
        v30 = v28;
      }

      v31 = this + v30;
      if (v29)
      {
        v32 = 0;
      }

      else
      {
        v32 = data;
      }

      v15 += v32;
      if (v29)
      {
        v33 = data;
      }

      else
      {
        v33 = 0;
      }

      v14 += v33;
      v34 = *&v31[4 * v26];
      HIDWORD(v17[2].__r_.__value_.__r.__words[0]) = v34;
      *&v31[4 * v26] = v34 + data;
      v17 = (v17 + 64);
    }

    while (v17 != v18);
  }
}

void GenericVaryingAllocator::serialize(GenericVaryingAllocator *this, flatbuffers::FlatBufferBuilder *a2)
{
  v2 = -858993459 * ((*(this + 72) - *(this + 71)) >> 3);
  if (v2)
  {
    v5 = 0;
    v6 = 40 * v2;
    do
    {
      v7 = *(this + 71) + v5;
      v10 = *(v7 + 16);
      v8 = v7 + 16;
      v9 = v10;
      v11 = *(v8 + 23);
      if (v11 >= 0)
      {
        v12 = v8;
      }

      else
      {
        v12 = v9;
      }

      if (v11 >= 0)
      {
        v13 = *(v8 + 23);
      }

      else
      {
        v13 = *(v8 + 8);
      }

      String = flatbuffers::FlatBufferBuilder::CreateString(a2, v12, v13);
      *(a2 + 70) = 1;
      v15 = *(a2 + 10);
      v16 = *(a2 + 8) - *(a2 + 12);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a2, 4, *(*(this + 71) + v5), 0);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a2, 6, *(*(this + 71) + v5 + 4));
      flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a2, 8, *(*(this + 71) + v5 + 8));
      flatbuffers::FlatBufferBuilder::AddElement<signed char>(a2, 10, *(*(this + 71) + v5 + 12));
      flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a2, 12, String);
      v17 = flatbuffers::FlatBufferBuilder::EndTable(a2, v16 + v15);
      v18 = v17;
      v20 = *(this + 1);
      v19 = *(this + 2);
      if (v20 >= v19)
      {
        v22 = *this;
        v23 = v20 - *this;
        v24 = v23 >> 2;
        v25 = (v23 >> 2) + 1;
        if (v25 >> 62)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v26 = v19 - v22;
        if (v26 >> 1 > v25)
        {
          v25 = v26 >> 1;
        }

        if (v26 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v27 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v25;
        }

        if (v27)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v27);
        }

        *(4 * v24) = v18;
        v21 = 4 * v24 + 4;
        memcpy(0, v22, v23);
        v28 = *this;
        *this = 0;
        *(this + 1) = v21;
        *(this + 2) = 0;
        if (v28)
        {
          operator delete(v28);
        }
      }

      else
      {
        *v20 = v17;
        v21 = (v20 + 1);
      }

      *(this + 1) = v21;
      v5 += 40;
    }

    while (v6 != v5);
  }
}

BOOL GenericVaryingAllocator::getVaryingSignature(uint64_t a1, flatbuffers::FlatBufferBuilder *a2, _DWORD *a3, _DWORD *a4)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v18 = *(a1 + 32);
    std::__introsort<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,false>(*(a1 + 24), (*(a1 + 24) + (v4 << 6)), 126 - 2 * __clz(v4), 1);
    v20 = 0;
    v21 = xmmword_20E70C4D0;
    v22 = 0u;
    *v23 = 0u;
    v24 = 0;
    v25 = 1;
    v26 = 256;
    v27 = 0;
    v8 = *(a1 + 32);
    v19 = 0;
    if (v8)
    {
      v9 = *(a1 + 24);
      v12 = *(v9 + 24);
      v10 = v9 + 24;
      v11 = v12;
      v13 = *(v10 + 23);
      if (v13 >= 0)
      {
        v14 = v10;
      }

      else
      {
        v14 = v11;
      }

      if (v13 >= 0)
      {
        v15 = *(v10 + 23);
      }

      else
      {
        v15 = *(v10 + 8);
      }

      flatbuffers::FlatBufferBuilder::CreateString(&v19, v14, v15);
      operator new();
    }

    *a3 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned char>(a2, *v23, (v22 - v23[0] + DWORD2(v22)));
    flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(&v19);
    v19 = 0;
    v20 = 0;
    v21 = xmmword_20E70C4D0;
    v22 = 0u;
    *v23 = 0u;
    v24 = 0;
    v25 = 1;
    v26 = 256;
    v27 = 0;
    if (*(a1 + 32))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(1uLL);
    }

    *a4 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned char>(a2, 0, 0);
    flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(&v19);
    LODWORD(v4) = v18;
  }

  return v4 != 0;
}

void std::__introsort<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,false>(__int128 *a1, __int128 *a2, uint64_t a3, char a4)
{
  v327 = *MEMORY[0x277D85DE8];
  while (2)
  {
    v296 = (a2 - 8);
    v297 = a2 - 4;
    v295 = (a2 - 12);
    v301 = a2 - 40;
    v303 = a2;
    v7 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v7;
          v8 = (a2 - v7) >> 6;
          v9 = v8 - 2;
          if (v8 > 2)
          {
            switch(v8)
            {
              case 3:

                std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,0>(v7, v7 + 64, v297);
                return;
              case 4:

                std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,0>(v7, v7 + 64, v7 + 128, v297);
                return;
              case 5:

                std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,0>(v7, v7 + 64, v7 + 128, v7 + 192, v297);
                return;
            }
          }

          else
          {
            if (v8 < 2)
            {
              return;
            }

            if (v8 == 2)
            {
              v126 = *(v7 + 47);
              v129 = *(a2 - 5);
              v128 = a2 - 40;
              v127 = v129;
              v130 = v128[23];
              if (v130 >= 0)
              {
                v131 = v128[23];
              }

              else
              {
                v131 = *(v128 + 1);
              }

              if (v130 >= 0)
              {
                v132 = v128;
              }

              else
              {
                v132 = v127;
              }

              if (v126 >= 0)
              {
                v133 = *(v7 + 47);
              }

              else
              {
                v133 = *(v7 + 32);
              }

              if (v126 >= 0)
              {
                v134 = (v7 + 24);
              }

              else
              {
                v134 = *(v7 + 24);
              }

              if (v133 >= v131)
              {
                v135 = v131;
              }

              else
              {
                v135 = v133;
              }

              v136 = memcmp(v132, v134, v135);
              v137 = v131 < v133;
              if (v136)
              {
                v137 = v136 < 0;
              }

              if (v137)
              {

                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<GenericVarying *&,GenericVarying *&>(v7, v297);
              }

              return;
            }
          }

          if (v8 <= 23)
          {
            if (a4)
            {
              if (v7 != a2)
              {
                v138 = v7 + 64;
                if ((v7 + 64) != a2)
                {
                  v139 = 0;
                  v140 = v7;
                  do
                  {
                    v141 = (v140 + 88);
                    v142 = v138;
                    v143 = *(v140 + 47);
                    v144 = *(v140 + 111);
                    if (v144 >= 0)
                    {
                      v145 = *(v140 + 111);
                    }

                    else
                    {
                      v145 = *(v140 + 96);
                    }

                    if (v144 >= 0)
                    {
                      v146 = (v140 + 88);
                    }

                    else
                    {
                      v146 = *(v140 + 88);
                    }

                    if (v143 >= 0)
                    {
                      v147 = *(v140 + 47);
                    }

                    else
                    {
                      v147 = *(v140 + 32);
                    }

                    if (v143 >= 0)
                    {
                      v148 = (v140 + 24);
                    }

                    else
                    {
                      v148 = *(v140 + 24);
                    }

                    if (v147 >= v145)
                    {
                      v149 = v145;
                    }

                    else
                    {
                      v149 = v147;
                    }

                    v150 = memcmp(v146, v148, v149);
                    v151 = v145 < v147;
                    if (v150)
                    {
                      v151 = v150 < 0;
                    }

                    if (v151)
                    {
                      v320 = *(v142 + 16);
                      v313 = *v142;
                      v325 = *(v140 + 104);
                      v324 = *v141;
                      *v141 = 0;
                      *(v140 + 96) = 0;
                      *(v140 + 104) = 0;
                      v326 = *(v140 + 112);
                      if (SHIBYTE(v325) >= 0)
                      {
                        v152 = HIBYTE(v325);
                      }

                      else
                      {
                        v152 = *(&v324 + 1);
                      }

                      if (SHIBYTE(v325) >= 0)
                      {
                        v153 = &v324;
                      }

                      else
                      {
                        v153 = v324;
                      }

                      v154 = v139;
                      while (1)
                      {
                        v155 = a1 + v154;
                        *(v155 + 64) = *(a1 + v154);
                        *(v155 + 80) = *(a1 + v154 + 16);
                        if (*(a1 + v154 + 111) < 0)
                        {
                          operator delete(*(v155 + 88));
                        }

                        *(v155 + 88) = *(v155 + 24);
                        *(v155 + 104) = *(v155 + 40);
                        *(v155 + 47) = 0;
                        *(v155 + 24) = 0;
                        *(v155 + 112) = *(v155 + 48);
                        if (!v154)
                        {
                          break;
                        }

                        v156 = a1 + v154;
                        v157 = *(a1 + v154 - 17);
                        if (v157 >= 0)
                        {
                          v158 = *(a1 + v154 - 17);
                        }

                        else
                        {
                          v158 = *(a1 + v154 - 32);
                        }

                        if (v157 >= 0)
                        {
                          v159 = a1 + v154 - 40;
                        }

                        else
                        {
                          v159 = *(a1 + v154 - 40);
                        }

                        if (v158 >= v152)
                        {
                          v160 = v152;
                        }

                        else
                        {
                          v160 = v158;
                        }

                        v161 = memcmp(v153, v159, v160);
                        v162 = v152 < v158;
                        if (v161)
                        {
                          v162 = v161 < 0;
                        }

                        v154 -= 64;
                        if (!v162)
                        {
                          v163 = v156 + 24;
                          v164 = (v156 + 48);
                          v165 = a1 + v154 + 64;
                          goto LABEL_294;
                        }
                      }

                      v163 = a1 + 24;
                      v164 = a1 + 3;
                      v165 = a1;
LABEL_294:
                      *(v165 + 16) = v320;
                      *v165 = v313;
                      if (*(v165 + 47) < 0)
                      {
                        operator delete(*v163);
                      }

                      v166 = v324;
                      *(v163 + 16) = v325;
                      *v163 = v166;
                      *v164 = v326;
                    }

                    v138 = v142 + 64;
                    v139 += 64;
                    v140 = v142;
                  }

                  while ((v142 + 64) != v303);
                }
              }
            }

            else if (v7 != a2)
            {
              v271 = v7 + 64;
              if ((v7 + 64) != a2)
              {
                v272 = v7 - 40;
                do
                {
                  v273 = (a1 + 88);
                  v274 = v271;
                  v275 = *(a1 + 47);
                  v276 = *(a1 + 111);
                  if (v276 >= 0)
                  {
                    v277 = *(a1 + 111);
                  }

                  else
                  {
                    v277 = *(a1 + 12);
                  }

                  if (v276 >= 0)
                  {
                    v278 = a1 + 88;
                  }

                  else
                  {
                    v278 = *(a1 + 11);
                  }

                  if (v275 >= 0)
                  {
                    v279 = *(a1 + 47);
                  }

                  else
                  {
                    v279 = *(a1 + 4);
                  }

                  if (v275 >= 0)
                  {
                    v280 = a1 + 24;
                  }

                  else
                  {
                    v280 = *(a1 + 3);
                  }

                  if (v279 >= v277)
                  {
                    v281 = v277;
                  }

                  else
                  {
                    v281 = v279;
                  }

                  v282 = memcmp(v278, v280, v281);
                  v283 = v277 < v279;
                  if (v282)
                  {
                    v283 = v282 < 0;
                  }

                  if (v283)
                  {
                    v323 = *(v274 + 16);
                    v316 = *v274;
                    v325 = *(a1 + 13);
                    v324 = *v273;
                    *v273 = 0;
                    *(a1 + 12) = 0;
                    *(a1 + 13) = 0;
                    v326 = a1[7];
                    if (SHIBYTE(v325) >= 0)
                    {
                      v284 = HIBYTE(v325);
                    }

                    else
                    {
                      v284 = *(&v324 + 1);
                    }

                    if (SHIBYTE(v325) >= 0)
                    {
                      v285 = &v324;
                    }

                    else
                    {
                      v285 = v324;
                    }

                    v286 = v272;
                    do
                    {
                      v287 = v286;
                      *(v286 + 13) = *(v286 + 5);
                      *(v286 + 30) = *(v286 + 14);
                      if (*(v286 + 151) < 0)
                      {
                        operator delete(v286[16]);
                      }

                      *(v287 + 8) = *(v287 + 4);
                      v287[18] = v287[10];
                      *(v287 + 87) = 0;
                      *(v287 + 64) = 0;
                      *(v287 + 19) = *(v287 + 11);
                      v288 = *(v287 + 23);
                      if (v288 >= 0)
                      {
                        v289 = *(v287 + 23);
                      }

                      else
                      {
                        v289 = v287[1];
                      }

                      if (v288 >= 0)
                      {
                        v290 = v287;
                      }

                      else
                      {
                        v290 = *v287;
                      }

                      if (v289 >= v284)
                      {
                        v291 = v284;
                      }

                      else
                      {
                        v291 = v289;
                      }

                      v292 = memcmp(v285, v290, v291);
                      v293 = v292 < 0;
                      if (!v292)
                      {
                        v293 = v284 < v289;
                      }

                      v286 = v287 - 8;
                    }

                    while (v293);
                    *(v287 + 14) = v323;
                    *(v287 + 5) = v316;
                    if (*(v287 + 87) < 0)
                    {
                      operator delete(v287[8]);
                    }

                    v294 = v324;
                    v287[10] = v325;
                    *(v287 + 4) = v294;
                    *(v287 + 11) = v326;
                  }

                  v271 = v274 + 64;
                  v272 += 64;
                  a1 = v274;
                }

                while ((v274 + 64) != v303);
              }
            }

            return;
          }

          if (!a3)
          {
            if (v7 != a2)
            {
              v167 = v9 >> 1;
              v168 = v9 >> 1;
              do
              {
                v169 = v168;
                if (v167 >= v168)
                {
                  v170 = (2 * v168) | 1;
                  v171 = &a1[4 * v170];
                  if (2 * v168 + 2 < v8)
                  {
                    v172 = *(v171 + 111);
                    v173 = *(v171 + 47);
                    if (v173 >= 0)
                    {
                      v174 = *(v171 + 47);
                    }

                    else
                    {
                      v174 = *(v171 + 4);
                    }

                    if (v173 >= 0)
                    {
                      v175 = v171 + 24;
                    }

                    else
                    {
                      v175 = *(v171 + 3);
                    }

                    if (v172 >= 0)
                    {
                      v176 = *(v171 + 111);
                    }

                    else
                    {
                      v176 = *(v171 + 12);
                    }

                    if (v172 >= 0)
                    {
                      v177 = v171 + 88;
                    }

                    else
                    {
                      v177 = *(v171 + 11);
                    }

                    if (v176 >= v174)
                    {
                      v178 = v174;
                    }

                    else
                    {
                      v178 = v176;
                    }

                    v179 = memcmp(v175, v177, v178);
                    v180 = v174 < v176;
                    if (v179)
                    {
                      v180 = v179 < 0;
                    }

                    v181 = !v180;
                    v182 = 64;
                    if (v181)
                    {
                      v182 = 0;
                    }

                    v171 = (v171 + v182);
                    if (!v181)
                    {
                      v170 = 2 * v169 + 2;
                    }
                  }

                  v183 = &a1[4 * v169];
                  v184 = (v183 + 24);
                  v185 = *(v183 + 47);
                  v186 = *(v171 + 47);
                  if (v186 >= 0)
                  {
                    v187 = *(v171 + 47);
                  }

                  else
                  {
                    v187 = *(v171 + 4);
                  }

                  if (v186 >= 0)
                  {
                    v188 = v171 + 24;
                  }

                  else
                  {
                    v188 = *(v171 + 3);
                  }

                  if (v185 >= 0)
                  {
                    v189 = *(v183 + 47);
                  }

                  else
                  {
                    v189 = *(v183 + 4);
                  }

                  if (v185 >= 0)
                  {
                    v190 = v183 + 24;
                  }

                  else
                  {
                    v190 = *(v183 + 3);
                  }

                  if (v189 >= v187)
                  {
                    v191 = v187;
                  }

                  else
                  {
                    v191 = v189;
                  }

                  v192 = memcmp(v188, v190, v191);
                  v193 = v187 < v189;
                  if (v192)
                  {
                    v193 = v192 < 0;
                  }

                  if (!v193)
                  {
                    v321 = *(v183 + 4);
                    v314 = *v183;
                    v194 = *v184;
                    v325 = *(v183 + 5);
                    v324 = v194;
                    *(v183 + 4) = 0;
                    *(v183 + 5) = 0;
                    *v184 = 0;
                    v326 = v183[3];
                    do
                    {
                      v195 = v171;
                      v196 = *v171;
                      *(v183 + 4) = *(v171 + 4);
                      *v183 = v196;
                      if (*(v183 + 47) < 0)
                      {
                        operator delete(*(v183 + 3));
                      }

                      v197 = *(v171 + 24);
                      *(v183 + 5) = *(v171 + 5);
                      *(v183 + 24) = v197;
                      *(v171 + 47) = 0;
                      *(v171 + 24) = 0;
                      v183[3] = v171[3];
                      if (v167 < v170)
                      {
                        break;
                      }

                      v198 = (2 * v170) | 1;
                      v171 = &a1[4 * v198];
                      v199 = 2 * v170 + 2;
                      if (v199 < v8)
                      {
                        v200 = *(v171 + 111);
                        v201 = *(v171 + 47);
                        if (v201 >= 0)
                        {
                          v202 = *(v171 + 47);
                        }

                        else
                        {
                          v202 = *(v171 + 4);
                        }

                        if (v201 >= 0)
                        {
                          v203 = v171 + 24;
                        }

                        else
                        {
                          v203 = *(v171 + 3);
                        }

                        if (v200 >= 0)
                        {
                          v204 = *(v171 + 111);
                        }

                        else
                        {
                          v204 = *(v171 + 12);
                        }

                        if (v200 >= 0)
                        {
                          v205 = v171 + 88;
                        }

                        else
                        {
                          v205 = *(v171 + 11);
                        }

                        if (v204 >= v202)
                        {
                          v206 = v202;
                        }

                        else
                        {
                          v206 = v204;
                        }

                        v207 = memcmp(v203, v205, v206);
                        v208 = v202 < v204;
                        if (v207)
                        {
                          v208 = v207 < 0;
                        }

                        v209 = !v208;
                        v210 = 64;
                        if (v209)
                        {
                          v210 = 0;
                        }

                        v171 = (v171 + v210);
                        if (!v209)
                        {
                          v198 = v199;
                        }
                      }

                      v211 = *(v171 + 47);
                      if (v211 >= 0)
                      {
                        v212 = *(v171 + 47);
                      }

                      else
                      {
                        v212 = *(v171 + 4);
                      }

                      if (v211 >= 0)
                      {
                        v213 = v171 + 24;
                      }

                      else
                      {
                        v213 = *(v171 + 3);
                      }

                      if (SHIBYTE(v325) >= 0)
                      {
                        v214 = HIBYTE(v325);
                      }

                      else
                      {
                        v214 = *(&v324 + 1);
                      }

                      if (SHIBYTE(v325) >= 0)
                      {
                        v215 = &v324;
                      }

                      else
                      {
                        v215 = v324;
                      }

                      if (v214 >= v212)
                      {
                        v216 = v212;
                      }

                      else
                      {
                        v216 = v214;
                      }

                      v217 = memcmp(v213, v215, v216);
                      v218 = v212 < v214;
                      if (v217)
                      {
                        v218 = v217 < 0;
                      }

                      v183 = v195;
                      v170 = v198;
                    }

                    while (!v218);
                    *(v195 + 4) = v321;
                    *v195 = v314;
                    if (*(v195 + 47) < 0)
                    {
                      operator delete(*(v195 + 3));
                    }

                    v219 = v324;
                    *(v195 + 5) = v325;
                    *(v195 + 24) = v219;
                    v195[3] = v326;
                  }
                }

                v168 = v169 - 1;
              }

              while (v169);
              v220 = v303;
              do
              {
                v221 = 0;
                v298 = v220;
                v309 = *(a1 + 4);
                v308 = *a1;
                v300 = *(a1 + 3);
                *v306 = *(a1 + 4);
                *&v306[7] = *(a1 + 39);
                v302 = *(a1 + 47);
                *(a1 + 4) = 0;
                *(a1 + 5) = 0;
                *(a1 + 3) = 0;
                v222 = a1;
                v305 = a1[3];
                do
                {
                  v223 = v222 + (v221 << 6);
                  v224 = v223 + 64;
                  v225 = (2 * v221) | 1;
                  v221 = 2 * v221 + 2;
                  if (v221 >= v8)
                  {
                    v221 = v225;
                  }

                  else
                  {
                    v228 = *(v223 + 88);
                    v227 = v223 + 88;
                    v226 = v228;
                    v229 = *(v227 + 87);
                    v230 = *(v227 + 23);
                    if (v230 >= 0)
                    {
                      v231 = *(v227 + 23);
                    }

                    else
                    {
                      v231 = *(v227 + 8);
                    }

                    if (v230 >= 0)
                    {
                      v232 = v227;
                    }

                    else
                    {
                      v232 = v226;
                    }

                    if (v229 >= 0)
                    {
                      v233 = *(v227 + 87);
                    }

                    else
                    {
                      v233 = *(v227 + 72);
                    }

                    if (v229 >= 0)
                    {
                      v234 = (v227 + 64);
                    }

                    else
                    {
                      v234 = *(v227 + 64);
                    }

                    if (v233 >= v231)
                    {
                      v235 = v231;
                    }

                    else
                    {
                      v235 = v233;
                    }

                    v236 = memcmp(v232, v234, v235);
                    v237 = v231 < v233;
                    if (v236)
                    {
                      v237 = v236 < 0;
                    }

                    if (v237)
                    {
                      v224 = v227 + 40;
                    }

                    else
                    {
                      v221 = v225;
                    }
                  }

                  v238 = *v224;
                  *(v222 + 16) = *(v224 + 16);
                  *v222 = v238;
                  if (*(v222 + 47) < 0)
                  {
                    operator delete(*(v222 + 24));
                  }

                  v239 = *(v224 + 24);
                  *(v222 + 40) = *(v224 + 40);
                  *(v222 + 24) = v239;
                  *(v224 + 47) = 0;
                  *(v224 + 24) = 0;
                  *(v222 + 48) = *(v224 + 48);
                  v222 = v224;
                }

                while (v221 <= ((v8 - 2) >> 1));
                v240 = (v224 + 24);
                v241 = v298 - 4;
                if (v224 == v298 - 4)
                {
                  *(v224 + 16) = v309;
                  *v224 = v308;
                  if (*(v224 + 47) < 0)
                  {
                    operator delete(*v240);
                  }

                  *(v224 + 24) = v300;
                  *(v224 + 32) = *v306;
                  *(v224 + 39) = *&v306[7];
                  *(v224 + 47) = v302;
                  *(v224 + 48) = v305;
                }

                else
                {
                  v242 = *v241;
                  *(v224 + 16) = *(v298 - 12);
                  *v224 = v242;
                  if (*(v224 + 47) < 0)
                  {
                    operator delete(*v240);
                  }

                  v243 = *(v298 - 40);
                  *(v224 + 40) = *(v298 - 3);
                  *v240 = v243;
                  *(v298 - 17) = 0;
                  *(v298 - 40) = 0;
                  *(v224 + 48) = *(v298 - 1);
                  *(v298 - 12) = v309;
                  *v241 = v308;
                  if (*(v298 - 17) < 0)
                  {
                    operator delete(*(v298 - 5));
                  }

                  *(v298 - 5) = v300;
                  *(v298 - 25) = *&v306[7];
                  *(v298 - 4) = *v306;
                  *(v298 - 17) = v302;
                  *(v298 - 1) = v305;
                  v244 = (v224 + 64 - a1) >> 6;
                  v245 = v244 < 2;
                  v246 = v244 - 2;
                  if (!v245)
                  {
                    v247 = v246 >> 1;
                    v248 = &a1[4 * (v246 >> 1)];
                    v249 = *(v224 + 47);
                    v250 = *(v248 + 47);
                    if (v250 >= 0)
                    {
                      v251 = *(v248 + 47);
                    }

                    else
                    {
                      v251 = *(v248 + 4);
                    }

                    if (v250 >= 0)
                    {
                      v252 = v248 + 24;
                    }

                    else
                    {
                      v252 = *(v248 + 3);
                    }

                    if (v249 >= 0)
                    {
                      v253 = *(v224 + 47);
                    }

                    else
                    {
                      v253 = *(v224 + 32);
                    }

                    if (v249 >= 0)
                    {
                      v254 = (v224 + 24);
                    }

                    else
                    {
                      v254 = *(v224 + 24);
                    }

                    if (v253 >= v251)
                    {
                      v255 = v251;
                    }

                    else
                    {
                      v255 = v253;
                    }

                    v256 = memcmp(v252, v254, v255);
                    v257 = v251 < v253;
                    if (v256)
                    {
                      v257 = v256 < 0;
                    }

                    if (v257)
                    {
                      v322 = *(v224 + 16);
                      v315 = *v224;
                      v258 = *(v224 + 40);
                      v324 = *v240;
                      v325 = v258;
                      *(v224 + 32) = 0;
                      *(v224 + 40) = 0;
                      *v240 = 0;
                      v326 = *(v224 + 48);
                      if (SHIBYTE(v325) >= 0)
                      {
                        v259 = HIBYTE(v325);
                      }

                      else
                      {
                        v259 = *(&v324 + 1);
                      }

                      if (SHIBYTE(v325) >= 0)
                      {
                        v260 = &v324;
                      }

                      else
                      {
                        v260 = v324;
                      }

                      do
                      {
                        v261 = v248;
                        v262 = *v248;
                        *(v224 + 16) = *(v248 + 4);
                        *v224 = v262;
                        if (*(v224 + 47) < 0)
                        {
                          operator delete(*(v224 + 24));
                        }

                        v263 = *(v248 + 24);
                        *(v224 + 40) = *(v248 + 5);
                        *(v224 + 24) = v263;
                        *(v248 + 47) = 0;
                        *(v248 + 24) = 0;
                        *(v224 + 48) = v248[3];
                        if (!v247)
                        {
                          break;
                        }

                        v247 = (v247 - 1) >> 1;
                        v248 = &a1[4 * v247];
                        v264 = *(v248 + 47);
                        if (v264 >= 0)
                        {
                          v265 = *(v248 + 47);
                        }

                        else
                        {
                          v265 = *(v248 + 4);
                        }

                        if (v264 >= 0)
                        {
                          v266 = v248 + 24;
                        }

                        else
                        {
                          v266 = *(v248 + 3);
                        }

                        if (v259 >= v265)
                        {
                          v267 = v265;
                        }

                        else
                        {
                          v267 = v259;
                        }

                        v268 = memcmp(v266, v260, v267);
                        v269 = v265 < v259;
                        if (v268)
                        {
                          v269 = v268 < 0;
                        }

                        v224 = v261;
                      }

                      while (v269);
                      *(v261 + 16) = v322;
                      *v261 = v315;
                      if (*(v261 + 47) < 0)
                      {
                        operator delete(*(v261 + 24));
                      }

                      v270 = v324;
                      *(v261 + 40) = v325;
                      *(v261 + 24) = v270;
                      *(v261 + 48) = v326;
                    }
                  }
                }

                v245 = v8-- <= 2;
                v220 = v298 - 4;
              }

              while (!v245);
            }

            return;
          }

          v10 = v7 + (v8 >> 1 << 6);
          if (v8 < 0x81)
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,0>(&a1[4 * (v8 >> 1)], a1, v297);
          }

          else
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,0>(a1, &a1[4 * (v8 >> 1)], v297);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,0>((a1 + 4), v10 - 64, v296);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,0>((a1 + 8), v10 + 64, v295);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,0>(v10 - 64, &a1[4 * (v8 >> 1)], v10 + 64);
            v317 = *(a1 + 4);
            v310 = *a1;
            *(&v304 + 7) = *(a1 + 39);
            v11 = *(a1 + 3);
            *&v304 = *(a1 + 4);
            v12 = *(a1 + 47);
            *(a1 + 4) = 0;
            *(a1 + 5) = 0;
            *(a1 + 3) = 0;
            v307 = a1[3];
            v13 = *v10;
            *(a1 + 4) = *(v10 + 16);
            *a1 = v13;
            v14 = *(v10 + 24);
            *(a1 + 5) = *(v10 + 40);
            *(a1 + 24) = v14;
            a1[3] = *(v10 + 48);
            *(v10 + 16) = v317;
            *v10 = v310;
            *(v10 + 24) = v11;
            *(v10 + 39) = *(&v304 + 7);
            *(v10 + 32) = v304;
            *(v10 + 47) = v12;
            *(v10 + 48) = v307;
          }

          --a3;
          if (a4)
          {
            break;
          }

          v15 = *(a1 + 47);
          v16 = *(a1 - 17);
          if (v16 >= 0)
          {
            v17 = a1 - 40;
          }

          else
          {
            v17 = *(a1 - 5);
          }

          v18 = a1 + 3;
          if (v16 >= 0)
          {
            v19 = *(a1 - 17);
          }

          else
          {
            v19 = *(a1 - 4);
          }

          if (v15 >= 0)
          {
            v20 = *(a1 + 47);
          }

          else
          {
            v20 = *(a1 + 4);
          }

          if (v15 >= 0)
          {
            v21 = a1 + 24;
          }

          else
          {
            v21 = *(a1 + 3);
          }

          if (v20 >= v19)
          {
            v22 = v19;
          }

          else
          {
            v22 = v20;
          }

          v23 = memcmp(v17, v21, v22);
          v24 = v19 < v20;
          if (v23)
          {
            v24 = v23 < 0;
          }

          if (v24)
          {
            break;
          }

          v319 = *(a1 + 4);
          v312 = *a1;
          v74 = *(a1 + 5);
          v324 = *v18;
          v325 = v74;
          *(a1 + 4) = 0;
          *(a1 + 5) = 0;
          *v18 = 0;
          v326 = a1[3];
          v75 = *(a2 - 17);
          if (SHIBYTE(v325) >= 0)
          {
            v76 = HIBYTE(v325);
          }

          else
          {
            v76 = *(&v324 + 1);
          }

          if (SHIBYTE(v325) >= 0)
          {
            v77 = &v324;
          }

          else
          {
            v77 = v324;
          }

          if (v75 >= 0)
          {
            v78 = *(a2 - 17);
          }

          else
          {
            v78 = *(a2 - 4);
          }

          if (v75 >= 0)
          {
            v79 = v301;
          }

          else
          {
            v79 = *(a2 - 5);
          }

          if (v78 >= v76)
          {
            v80 = v76;
          }

          else
          {
            v80 = v78;
          }

          v81 = memcmp(v77, v79, v80);
          v82 = v76 < v78;
          if (v81)
          {
            v82 = v81 < 0;
          }

          if (v82)
          {
            v83 = a1 + 11;
            do
            {
              v84 = *(v83 + 23);
              if (v84 >= 0)
              {
                v85 = *(v83 + 23);
              }

              else
              {
                v85 = v83[1];
              }

              if (v84 >= 0)
              {
                v86 = v83;
              }

              else
              {
                v86 = *v83;
              }

              if (v85 >= v76)
              {
                v87 = v76;
              }

              else
              {
                v87 = v85;
              }

              v88 = memcmp(v77, v86, v87);
              v89 = v76 < v85;
              if (v88)
              {
                v89 = v88 < 0;
              }

              v83 += 8;
            }

            while (!v89);
            v7 = (v83 - 11);
          }

          else
          {
            v90 = (a1 + 4);
            do
            {
              v7 = v90;
              if (v90 >= v303)
              {
                break;
              }

              v91 = *(v90 + 47);
              if (v91 >= 0)
              {
                v92 = *(v90 + 47);
              }

              else
              {
                v92 = *(v90 + 32);
              }

              if (v91 >= 0)
              {
                v93 = (v90 + 24);
              }

              else
              {
                v93 = *(v90 + 24);
              }

              if (v92 >= v76)
              {
                v94 = v76;
              }

              else
              {
                v94 = v92;
              }

              v95 = memcmp(v77, v93, v94);
              v96 = v95 < 0;
              if (!v95)
              {
                v96 = v76 < v92;
              }

              v90 = v7 + 64;
            }

            while (!v96);
          }

          v97 = v303;
          if (v7 < v303)
          {
            v98 = v301;
            do
            {
              v99 = *(v98 + 23);
              if (v99 >= 0)
              {
                v100 = *(v98 + 23);
              }

              else
              {
                v100 = v98[1];
              }

              if (v99 >= 0)
              {
                v101 = v98;
              }

              else
              {
                v101 = *v98;
              }

              if (v100 >= v76)
              {
                v102 = v76;
              }

              else
              {
                v102 = v100;
              }

              v103 = memcmp(v77, v101, v102);
              v104 = v76 < v100;
              if (v103)
              {
                v104 = v103 < 0;
              }

              v98 -= 8;
            }

            while (v104);
            v97 = (v98 + 5);
          }

          while (v7 < v97)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<GenericVarying *&,GenericVarying *&>(v7, v97);
            v105 = v7 + 88;
            do
            {
              v106 = v105;
              v107 = *(v105 + 23);
              if ((v107 & 0x80u) == 0)
              {
                v108 = v107;
              }

              else
              {
                v108 = v106[1];
              }

              if ((v107 & 0x80u) == 0)
              {
                v109 = v106;
              }

              else
              {
                v109 = *v106;
              }

              if (v108 >= v76)
              {
                v110 = v76;
              }

              else
              {
                v110 = v108;
              }

              v111 = memcmp(v77, v109, v110);
              v112 = v111 < 0;
              if (!v111)
              {
                v112 = v76 < v108;
              }

              v105 = (v106 + 8);
            }

            while (!v112);
            v7 = (v106 - 3);
            v113 = v97 - 5;
            do
            {
              v114 = v113;
              v115 = *(v113 + 23);
              if ((v115 & 0x80u) == 0)
              {
                v116 = v115;
              }

              else
              {
                v116 = v114[1];
              }

              if ((v115 & 0x80u) == 0)
              {
                v117 = v114;
              }

              else
              {
                v117 = *v114;
              }

              if (v116 >= v76)
              {
                v118 = v76;
              }

              else
              {
                v118 = v116;
              }

              v119 = memcmp(v77, v117, v118);
              v120 = v119 < 0;
              if (!v119)
              {
                v120 = v76 < v116;
              }

              v113 = v114 - 8;
            }

            while (v120);
            v97 = (v114 - 3);
          }

          v121 = (v7 - 64);
          a2 = v303;
          if ((v7 - 64) != a1)
          {
            v122 = *v121;
            *(a1 + 4) = *(v7 - 48);
            *a1 = v122;
            if (*(a1 + 47) < 0)
            {
              operator delete(*v18);
            }

            v123 = *(v7 - 40);
            *(a1 + 5) = *(v7 - 24);
            *v18 = v123;
            *(v7 - 17) = 0;
            *(v7 - 40) = 0;
            a1[3] = *(v7 - 16);
          }

          *(v7 - 48) = v319;
          *v121 = v312;
          v124 = (v7 - 40);
          if (*(v7 - 17) < 0)
          {
            operator delete(*v124);
          }

          a4 = 0;
          v125 = v324;
          *(v7 - 24) = v325;
          *v124 = v125;
          *(v7 - 16) = v326;
        }

        v25 = 0;
        v318 = *(a1 + 4);
        v311 = *a1;
        v26 = *(a1 + 5);
        v324 = *(a1 + 24);
        v325 = v26;
        *(a1 + 4) = 0;
        *(a1 + 5) = 0;
        *(a1 + 3) = 0;
        v326 = a1[3];
        v27 = SHIBYTE(v325) >= 0 ? HIBYTE(v325) : *(&v324 + 1);
        v28 = SHIBYTE(v325) >= 0 ? &v324 : v324;
        do
        {
          v29 = SHIBYTE(a1[v25 + 6]);
          if (v29 >= 0)
          {
            v30 = HIBYTE(a1[v25 + 6]);
          }

          else
          {
            v30 = *&a1[v25 + 6];
          }

          if (v29 >= 0)
          {
            v31 = &a1[v25 + 5] + 8;
          }

          else
          {
            v31 = *(&a1[v25 + 5] + 1);
          }

          if (v27 >= v30)
          {
            v32 = v30;
          }

          else
          {
            v32 = v27;
          }

          v33 = memcmp(v31, v28, v32);
          v34 = v30 < v27;
          if (v33)
          {
            v34 = v33 < 0;
          }

          v25 += 4;
        }

        while (v34);
        v35 = &a1[v25];
        v36 = &a1[v25 - 4];
        v37 = v301;
        if (v36 == a1)
        {
          v37 = v301;
          while (1)
          {
            v44 = (v37 + 5);
            if (v35 >= (v37 + 5))
            {
              break;
            }

            v45 = *(v37 + 23);
            if (v45 >= 0)
            {
              v46 = *(v37 + 23);
            }

            else
            {
              v46 = v37[1];
            }

            if (v45 >= 0)
            {
              v47 = v37;
            }

            else
            {
              v47 = *v37;
            }

            if (v27 >= v46)
            {
              v48 = v46;
            }

            else
            {
              v48 = v27;
            }

            v49 = memcmp(v47, v28, v48);
            v50 = v46 < v27;
            if (v49)
            {
              v50 = v49 < 0;
            }

            v37 -= 8;
            if (v50)
            {
              goto LABEL_80;
            }
          }
        }

        else
        {
          do
          {
            v38 = *(v37 + 23);
            if (v38 >= 0)
            {
              v39 = *(v37 + 23);
            }

            else
            {
              v39 = v37[1];
            }

            if (v38 >= 0)
            {
              v40 = v37;
            }

            else
            {
              v40 = *v37;
            }

            if (v27 >= v39)
            {
              v41 = v39;
            }

            else
            {
              v41 = v27;
            }

            v42 = memcmp(v40, v28, v41);
            v43 = v39 < v27;
            if (v42)
            {
              v43 = v42 < 0;
            }

            v37 -= 8;
          }

          while (!v43);
LABEL_80:
          v44 = (v37 + 5);
        }

        v7 = v35;
        if (v35 < v44)
        {
          v51 = v44;
          do
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<GenericVarying *&,GenericVarying *&>(v7, v51);
            v52 = v7 + 88;
            do
            {
              v53 = v52;
              v54 = *(v52 + 23);
              if ((v54 & 0x80u) == 0)
              {
                v55 = v54;
              }

              else
              {
                v55 = v53[1];
              }

              if ((v54 & 0x80u) == 0)
              {
                v56 = v53;
              }

              else
              {
                v56 = *v53;
              }

              if (v27 >= v55)
              {
                v57 = v55;
              }

              else
              {
                v57 = v27;
              }

              v58 = memcmp(v56, v28, v57);
              v59 = v58 < 0;
              if (!v58)
              {
                v59 = v55 < v27;
              }

              v52 = (v53 + 8);
            }

            while (v59);
            v7 = (v53 - 3);
            v60 = v51 - 5;
            do
            {
              v61 = v60;
              v62 = *(v60 + 23);
              if ((v62 & 0x80u) == 0)
              {
                v63 = v62;
              }

              else
              {
                v63 = v61[1];
              }

              if ((v62 & 0x80u) == 0)
              {
                v64 = v61;
              }

              else
              {
                v64 = *v61;
              }

              if (v27 >= v63)
              {
                v65 = v63;
              }

              else
              {
                v65 = v27;
              }

              v66 = memcmp(v64, v28, v65);
              v67 = v66 < 0;
              if (!v66)
              {
                v67 = v63 < v27;
              }

              v60 = v61 - 8;
            }

            while (!v67);
            v51 = (v61 - 3);
          }

          while (v7 < (v61 - 3));
        }

        v68 = (v7 - 64);
        if ((v7 - 64) != a1)
        {
          v69 = *v68;
          *(a1 + 4) = *(v7 - 48);
          *a1 = v69;
          if (*(a1 + 47) < 0)
          {
            operator delete(*(a1 + 3));
          }

          v70 = *(v7 - 40);
          *(a1 + 5) = *(v7 - 24);
          *(a1 + 24) = v70;
          *(v7 - 17) = 0;
          *(v7 - 40) = 0;
          a1[3] = *(v7 - 16);
        }

        *(v7 - 48) = v318;
        *v68 = v311;
        v71 = (v7 - 40);
        if (*(v7 - 17) < 0)
        {
          operator delete(*v71);
        }

        v72 = v324;
        *(v7 - 24) = v325;
        *v71 = v72;
        *(v7 - 16) = v326;
        a2 = v303;
        if (v35 >= v44)
        {
          break;
        }

LABEL_119:
        std::__introsort<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,false>(a1, v7 - 64, a3, a4 & 1);
        a4 = 0;
      }

      v73 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *>(a1, (v7 - 64));
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *>(v7, v303))
      {
        break;
      }

      if (!v73)
      {
        goto LABEL_119;
      }
    }

    a2 = (v7 - 64);
    if (!v73)
    {
      continue;
    }

    break;
  }
}

uint64_t flatbuffers::FlatBufferBuilder::CreateVector<unsigned char>(flatbuffers::FlatBufferBuilder *a1, const unsigned __int8 *a2, unint64_t a3)
{
  *(a1 + 70) = 1;
  flatbuffers::FlatBufferBuilder::PreAlign(a1, a3, 4uLL);
  flatbuffers::FlatBufferBuilder::PreAlign(a1, a3, 1uLL);
  flatbuffers::vector_downward::push(a1, a2, a3);
  *(a1 + 70) = 0;

  return flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, a3);
}

uint64_t flatbuffers::FlatBufferBuilder::Finish(flatbuffers::FlatBufferBuilder *this, int a2, const char *a3)
{
  *(this + 7) = *(this + 5);
  flatbuffers::FlatBufferBuilder::PreAlign(this, 4, *(this + 9));
  flatbuffers::FlatBufferBuilder::Align(this, 4uLL);
  result = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, *(this + 8) - *(this + 12) + *(this + 10) - a2 + 4);
  *(this + 71) = 1;
  return result;
}

void flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(flatbuffers::FlatBufferBuilder *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(v2 + 8));
    MEMORY[0x20F331DC0](v2, 0x1060C40C2B13FB5);
  }

  v3 = *(this + 5);
  if (v3)
  {
    if (*this)
    {
      (*(**this + 24))(*this);
    }

    else
    {
      MEMORY[0x20F331DA0](v3, 0x1000C8077774924);
    }
  }

  *(this + 5) = 0;
  if (*(this + 8) == 1 && *this)
  {
    (*(**this + 8))(*this);
  }

  *this = 0;
  *(this + 8) = 0;
}

uint64_t AGCLLVMUserFragmentShader::constructFlatReply(AGCLLVMUserFragmentShader *this, uint64_t a2)
{
  v4 = this + *(*this - 24);
  if (*(v4 + 314))
  {
    v5 = v4 + 2512;
    if (!*(v4 + 315))
    {
      v5 = v4 + 3072;
    }
  }

  else
  {
    v5 = v4 + 3072;
  }

  v7 = *v5;
  v6 = *(v5 + 1);
  if (v7)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = (v7 + *v7);
  }

  v10 = (v9 - *v9);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = (v9 + v11 + *(v9 + v11));
  }

  else
  {
    v12 = 0;
  }

  v30 = 0;
  v13 = (v12 - *v12);
  if (*v13 >= 0xDu && (v14 = v13[6]) != 0)
  {
    v15 = (v12 + v14 + *(v12 + v14));
  }

  else
  {
    v15 = 0;
  }

  v16 = AGCLLVMObject::extractPhaseOffsets(v4, v15, &v30);
  v17 = AGCLLVMFragmentShader::constructFlatReply((this + 4536));
  v19 = v18;
  v20 = (this + *(*this - 24));
  v21 = v20[271];
  if (v20[319])
  {
    v22 = v20 + 319;
    v23 = v20[320];
    v24 = v20 + 389;
    if (v23)
    {
      v24 = v22;
    }
  }

  else
  {
    v24 = v20 + 389;
  }

  v26 = v24;
  v25 = *v24;
  if (v26[1])
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  v28 = (*(*v21 + 632))(v21, a2, (1 << (BYTE1(*(*(this + 660) + 32)) & 3)), *(this + 6430), *(this + 6463), v27);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v17, 4, v28, 0);
  if (v16)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(v17, 10, v30);
  }

  flatbuffers::FlatBufferBuilder::AddElement<signed char>(v17, 12, *(this + 6436));

  return flatbuffers::FlatBufferBuilder::EndTable(v17, v19);
}

char *AGCLLVMFragmentShader::constructFlatReply(AGCLLVMFragmentShader *this)
{
  v2 = *this;
  v3 = this + *(*this - 24);
  if (*(v3 + 314))
  {
    v4 = v3 + 2512;
    if (!*(v3 + 315))
    {
      v4 = v3 + 3072;
    }
  }

  else
  {
    v4 = v3 + 3072;
  }

  v6 = *v4;
  v5 = *(v4 + 1);
  if (v6)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = (v6 + *v6);
  }

  v9 = (v8 - *v8);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = (v8 + v10 + *(v8 + v10));
  }

  else
  {
    v11 = 0;
  }

  v3[4358] = 1;
  v12 = (v11 - *v11);
  v13 = *v12;
  if (v13 < 0x11)
  {
    v14 = 0;
  }

  else
  {
    if (v12[8])
    {
      v14 = *(v11 + v12[8]);
    }

    else
    {
      v14 = 0;
    }

    if (v13 >= 0x15)
    {
      v15 = v12[10];
      if (v15)
      {
        v16 = *(v11 + v15);
        goto LABEL_25;
      }
    }
  }

  v16 = 0;
LABEL_25:
  v17 = *(this + *(v2 - 24) + 2168);
  v18 = (*(*v17 + 584))(v17, *(this + 93), v14, v16);
  if (((*(*this + 32))(this) & 1) == 0)
  {
    v18 &= *(this + 95);
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v3 + 4288, 8, v18, 0);
  v19 = (v11 - *v11);
  v20 = *v19;
  if (v20 < 0xF)
  {
    v21 = 0;
  }

  else
  {
    if (v19[7])
    {
      v21 = *(v11 + v19[7]);
    }

    else
    {
      v21 = 0;
    }

    if (v20 >= 0x13)
    {
      v22 = v19[9];
      if (v22)
      {
        v23 = *(v11 + v22);
        goto LABEL_36;
      }
    }
  }

  v23 = 0;
LABEL_36:
  v24 = *(this + *(*this - 24) + 2168);
  v25 = (*(*v24 + 584))(v24, *(this + 93), v21, v23);
  if (((*(*this + 32))(this) & 1) == 0)
  {
    v25 &= *(this + 94);
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v3 + 4288, 6, v25, 0);
  return v3 + 4288;
}

uint64_t AGCLLVMGen3TargetLowerer::convertRegisterMaskToMRTMask(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  __src = a4;
  std::bitset<128ul>::operator<<=[abi:nn200100](&__src, 0x40uLL);
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  *&__src = __src | a3;
  do
  {
    if ((*(a2 + 32) >> v7))
    {
      v11 = *(a2 + v8);
      if ((v11 & 0x1F) != 0x17)
      {
        v12 = (v11 & 0x1F) - 2;
        if (v12 > 0x14)
        {
          v15 = 0;
          v16 = 0;
        }

        else
        {
          v13 = qword_20E716068[v12];
          v14 = qword_20E716260[v12];
          v15 = qword_20E7161B8[v12] | qword_20E716110[v12];
          v16 = v14 | v13;
        }

        v17.i64[0] = v15;
        v17.i64[1] = v16;
        v32 = v17;
        v18 = (v11 >> 12);
        if ((~v11 & 0xFF000) == 0)
        {
          v18 = 0;
        }

        v19 = (*(a1 + 964) * v18);
        __dst = __src;
        std::bitset<128ul>::operator>>=[abi:nn200100](&__dst, v19);
        __dst = __dst;
        v21 = std::__bitset<2ul,128ul>::to_ullong[abi:nn200100](&__dst, v20);
        v22 = vbicq_s8(xmmword_20E70C6D0, vceqzq_s32(v32));
        v23 = vbicq_s8(xmmword_20E70C6D0, vceqzq_s32(vandq_s8(vdupq_n_s32(v21), v32)));
        *v22.i8 = vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
        *v23.i8 = vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
        v24 = -1 << (v11 >> 5);
        v25 = 1 << ((v11 >> 5) - 1);
        v26 = (v23.i32[0] | v23.i32[1]) & ~v24;
        v27 = (v22.i32[0] | v22.i32[1]) & ~v24;
        if ((v26 & v25) != 0)
        {
          v28 = (-1 << (v11 >> 5)) & 0xF;
        }

        else
        {
          v28 = 0;
        }

        v29 = v28 | v26;
        if ((v27 & v25) != 0)
        {
          v30 = (-1 << (v11 >> 5)) & 0xF;
        }

        else
        {
          v30 = 0;
        }

        v9 |= (v29 << v8);
        v10 |= (v30 | v27) << v8;
      }
    }

    v8 += 4;
    ++v7;
  }

  while (v8 != 32);
  return v9;
}

void *std::bitset<128ul>::operator<<=[abi:nn200100](void *__src, unint64_t a2)
{
  if (a2 >= 0x80)
  {
    v4 = 128;
  }

  else
  {
    v4 = a2;
  }

  v5 = 128 - v4;
  v6 = (128 - v4) >> 6;
  if (((128 - v4) & 0x3F) != 0)
  {
    if (a2 > 0x7F)
    {
LABEL_20:
      v21 = __src;
      v22 = 0;
      std::__fill_n_BOOL[abi:nn200100]<false,std::__bitset<2ul,128ul>>(&v21, v4);
      return __src;
    }

    v7 = &__src[v6];
    v8 = v5 & 0xC0;
    v9 = __src + 1;
    v10 = (((0xFFFFFFFFFFFFFFFFLL >> -((0x80 - v4) & 0x3F)) & *v7) << (v4 + 0x80)) | __src[1] & ~(-1 << (v4 + 0x80));
    __src[1] = v10;
    v11 = 64 - ((v4 + 0x80) & 0x3F);
    v12 = 0xFFFFFFFFFFFFFFFFLL >> -((v4 + 0x80) & 0x3F);
    if (a2 > 0x40)
    {
      v16 = v5 & 0xC0;
    }

    else
    {
      do
      {
        v14 = *--v7;
        v13 = v14;
        *v9 = v10 & ~v12 | (v14 >> v11);
        v15 = *--v9;
        v10 = v15 & v12 | (v13 << ((v4 + 0x80) & 0x3F));
        *v9 = v10;
        v16 = v8 - 64;
        v17 = v8 > 0x7F;
        v8 -= 64;
      }

      while (v17);
    }

    if (v16 >= 1)
    {
      v18 = *(v7 - 1) & (-1 << -v16);
      if (v16 >= ((v4 - 128) & 0x3F))
      {
        v19 = (v4 - 128) & 0x3F;
      }

      else
      {
        v19 = v16;
      }

      *v9 = *v9 & ~((-1 << (((v4 + 0x80) & 0x3F) - v19)) & v12) | (v18 >> v11);
      if (v16 - v19 >= 1)
      {
        *(v9 - 1) = *(v9 - 1) & ~(-1 << (v19 - v16)) | (v18 << (v16 + ((v19 - v16) & 0x3F)));
      }
    }
  }

  else if (a2 <= 0x40 && (v5 | 0x3F) >= 0x7F)
  {
    memmove(&__src[-v6 + 2], __src, 8 * v6);
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return __src;
}

void std::__fill_n_BOOL[abi:nn200100]<false,std::__bitset<2ul,128ul>>(uint64_t a1, unint64_t a2)
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

char *std::bitset<128ul>::operator>>=[abi:nn200100](char *__dst, unint64_t a2)
{
  if (a2 >= 0x80)
  {
    v4 = 128;
  }

  else
  {
    v4 = a2;
  }

  v5 = (v4 >> 3) & 0x18;
  v6 = &__dst[v5];
  v7 = v4 & 0x3F;
  if ((v4 & 0x3F) != 0)
  {
    if (a2 > 0x7F)
    {
LABEL_30:
      v33 = &__dst[((128 - v4) >> 3) & 0x18];
      v34 = (128 - v4) & 0x3F;
      std::__fill_n_BOOL[abi:nn200100]<false,std::__bitset<2ul,128ul>>(&v33, v4);
      return __dst;
    }

    v8 = v4 & 0x3F;
    v9 = 128 - ((8 * v5) | v4 & 0x3F);
    v10 = (64 - v7);
    if (v9 >= v10)
    {
      v11 = (64 - v7);
    }

    else
    {
      v11 = 128 - ((8 * v5) | v4 & 0x3F);
    }

    v12 = v9 - v11;
    v13 = (0xFFFFFFFFFFFFFFFFLL >> (v10 - v11)) & (-1 << v8) & *v6;
    if (v11 >= 0x40)
    {
      v14 = 64;
    }

    else
    {
      v14 = v11;
    }

    *__dst = *__dst & ~(0xFFFFFFFFFFFFFFFFLL >> -v14) | (v13 >> v8);
    v15 = v14 >> 6;
    v16 = &__dst[8 * (v14 >> 6)];
    v17 = v11 - v14;
    if (v17 < 1)
    {
      LODWORD(v17) = v14 & 0x3F;
    }

    else
    {
      *v16 = (v13 >> (v14 + v8)) | *v16 & ~(0xFFFFFFFFFFFFFFFFLL >> -v17);
    }

    v18 = (64 - v17);
    v19 = -1 << v17;
    v20 = v17;
    if (v12 < 64)
    {
      v28 = v6 + 8;
    }

    else
    {
      v21 = *v16;
      v22 = 8 * v15;
      v23 = __dst;
      do
      {
        v24 = v12;
        v25 = &v23[v22];
        v26 = *&v23[v5 + 8];
        v27 = v21 & ~v19 | (v26 << v20);
        v21 = *&v23[v22 + 8] & v19 | (v26 >> v18);
        *v25 = v27;
        *(v25 + 1) = v21;
        v12 = v24 - 64;
        v23 += 8;
      }

      while (v24 > 0x7F);
      v28 = &v23[v5 + 8];
      v16 = &v23[8 * v15];
    }

    if (v12 >= 1)
    {
      v29 = *v28 & (0xFFFFFFFFFFFFFFFFLL >> -v12);
      if (v12 >= v18)
      {
        v30 = v18;
      }

      else
      {
        v30 = v12;
      }

      *v16 = *v16 & ~((0xFFFFFFFFFFFFFFFFLL >> (v18 - v30)) & v19) | (v29 << v20);
      v31 = v12 - v30;
      if (v31 >= 1)
      {
        *&v16[((v30 + v20) >> 3) & 0x1FFFFFFFFFFFFFF8] = *&v16[((v30 + v20) >> 3) & 0x1FFFFFFFFFFFFFF8] & ~(0xFFFFFFFFFFFFFFFFLL >> -v31) | (v29 >> v30);
      }
    }
  }

  else if (a2 <= 0x7F && v5 <= 8)
  {
    memmove(__dst, v6, 16 - v5);
  }

  if (a2)
  {
    goto LABEL_30;
  }

  return __dst;
}

uint64_t std::__bitset<2ul,128ul>::to_ullong[abi:nn200100](void *a1, uint64_t a2)
{
  if (!a1[1])
  {
    return *a1;
  }

  v3 = std::__throw_overflow_error[abi:nn200100]();
  return AGCLLVMGen3TargetLowerer::getDisableTriangleMerging(v3, v4, v5, v6, v7, v8);
}

BOOL AGCLLVMGen3TargetLowerer::getDisableTriangleMerging(AGCLLVMGen3TargetLowerer *this, char a2, unsigned int a3, int a4, char a5, const unsigned __int8 *a6)
{
  if (a3 > 1)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  result = 1;
  if ((v6 & 1) == 0 && (a5 & 1) == 0)
  {
    result = 0;
    if (a3 >= 2)
    {
      if (a4)
      {
        v8 = &a6[*a6 - *&a6[*a6]];
        return *v8 >= 5u && *(v8 + 2) != 0;
      }
    }
  }

  return result;
}

flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::FragmentShaderInfo>(flatbuffers::FlatBufferBuilder *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    flatbuffers::FlatBufferBuilder::Align(result, 4uLL);
    v4 = (*(v3 + 8) - *(v3 + 12) + *(v3 + 10) - v2 + 4);

    return flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v3, 8, v4);
  }

  return result;
}

flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>(flatbuffers::FlatBufferBuilder *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    flatbuffers::FlatBufferBuilder::Align(result, 4uLL);
    v4 = (*(v3 + 8) - *(v3 + 12) + *(v3 + 10) - v2 + 4);

    return flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v3, 4, v4);
  }

  return result;
}

flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::MTLFragmentInfo>(flatbuffers::FlatBufferBuilder *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    flatbuffers::FlatBufferBuilder::Align(result, 4uLL);
    v4 = (*(v3 + 8) - *(v3 + 12) + *(v3 + 10) - v2 + 4);

    return flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v3, 14, v4);
  }

  return result;
}

void AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>(unsigned int (***a1)(AGCTargetPrinter **), _DWORD *a2)
{
  if (AGCLLVMObjectBase::dumpShaderToFile(a1))
  {
    if (a2[8] - a2[12] + a2[10])
    {
      flatbuffers::IDLOptions::IDLOptions(v3);
      flatbuffers::Parser::Parser(v4, v3);
    }
  }
}

void std::vector<GenericVaryingAllocator::OutIterator>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
        }

        v4 -= 5;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t llvm::SmallVector<GenericVarying,8u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 64 * v3 - 40;
    v5 = -64 * v3;
    do
    {
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v4 -= 64;
      v5 += 64;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

void AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslatorG10::CompileReplyBinarySchema>(unsigned int (***a1)(AGCTargetPrinter **), _DWORD *a2)
{
  if (AGCLLVMObjectBase::dumpShaderToFile(a1))
  {
    if (a2[8] - a2[12] + a2[10])
    {
      flatbuffers::IDLOptions::IDLOptions(&v3);
      flatbuffers::Parser::Parser(v4, &v3);
    }
  }
}

uint64_t AGCLLVMObject::composeCompilerReply(uint64_t a1, void *a2, AGCTargetPrinter *a3, uint64_t a4, uint64_t a5)
{
  v63 = *MEMORY[0x277D85DE8];
  *(a4 + 24) = *(a1 + 2216);
  v9 = *(a1 + 2192);
  v10 = *(a1 + 2200);
  *(a1 + 4550) = 1;
  flatbuffers::FlatBufferBuilder::PreAlign((a1 + 4480), v10 - v9, 4uLL);
  flatbuffers::FlatBufferBuilder::PreAlign((a1 + 4480), v10 - v9, 4uLL);
  v11 = v10 - v9;
  if (v10 == v9)
  {
    v12 = &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::PerformanceNumber>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::PerformanceNumber>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::PerformanceNumber>> const&)::t;
  }

  else
  {
    v12 = v9;
  }

  if (v10 != v9)
  {
    v13 = v11 >> 2;
    v14 = v12 - 4;
    do
    {
      v15 = v13 - 1;
      v16 = *&v14[4 * v13];
      flatbuffers::FlatBufferBuilder::Align((a1 + 4480), 4uLL);
      flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1 + 4480, *(a1 + 4512) - *(a1 + 4528) + *(a1 + 4520) - v16 + 4);
      v13 = v15;
    }

    while (v15);
  }

  *(a1 + 4550) = 0;
  v17 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1 + 4480, v11 >> 2);
  v61[0] = 0;
  if (*(a1 + 2312))
  {
    v18 = a1 + 2312;
    if (!*(a1 + 2320))
    {
      v18 = a1 + 2872;
    }
  }

  else
  {
    v18 = a1 + 2872;
  }

  v19 = (*(**(a1 + 2168) + 520))(*(a1 + 2168), *v18, *(v18 + 8), v61);
  *(a1 + 4550) = 1;
  v20 = *(a1 + 4520);
  v21 = *(a1 + 4512) - *(a1 + 4528);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>((a1 + 4480), 4, v19);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>((a1 + 4480), 6, v61[0]);
  v22 = flatbuffers::FlatBufferBuilder::EndTable((a1 + 4480), v21 + v20);
  *(a1 + 4550) = 1;
  v23 = *(a1 + 4512);
  v24 = *(a1 + 4528);
  v25 = *(a1 + 4520);
  if (v17)
  {
    flatbuffers::FlatBufferBuilder::Align((a1 + 4480), 4uLL);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>((a1 + 4480), 8, (*(a1 + 4512) - *(a1 + 4528) + *(a1 + 4520) - v17 + 4));
  }

  if (v22)
  {
    flatbuffers::FlatBufferBuilder::Align((a1 + 4480), 4uLL);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>((a1 + 4480), 6, (*(a1 + 4512) - *(a1 + 4528) + *(a1 + 4520) - v22 + 4));
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>((a1 + 4480), 4, *(a1 + 2184), 0);
  v26 = flatbuffers::FlatBufferBuilder::EndTable((a1 + 4480), v23 - v24 + v25);
  flatbuffers::FlatBufferBuilder::Finish((a1 + 4480), v26, v27);
  v29 = *(a1 + 1688);
  v30 = v29 + 304;
  if (*(v29 + 327) < 0)
  {
    v30 = *(v29 + 304);
  }

  *(a1 + 3272) = v30;
  v31 = *(v29 + 327);
  v32 = *(v29 + 312);
  if ((v31 & 0x80u) == 0)
  {
    v32 = v31;
  }

  *(a1 + 3280) = v32;
  v33 = *(a1 + 4336);
  *(a1 + 3312) = v33;
  *(a1 + 3320) = (*(a1 + 4320) - v33 + *(a1 + 4328));
  v34 = *(a1 + 4432);
  v35 = (*(a1 + 4416) - v34 + *(a1 + 4424));
  *(a1 + 3360) = v35;
  if (v35)
  {
    *(a1 + 3352) = v34;
  }

  v36 = *(a1 + 4528);
  v37 = (*(a1 + 4512) - v36 + *(a1 + 4520));
  *(a1 + 3400) = v37;
  if (v37)
  {
    *(a1 + 3392) = v36;
  }

  v38 = 0;
  v39 = (*(a1 + 2296) + 7) & 0xFFFFFFF8;
  *v61 = &unk_2825AFEC8;
  v62 = v61;
  v40 = v39;
  do
  {
    v58 = *(a1 + v38 + 2712);
    if (v58)
    {
      std::function<void ()(_CompilerData const&,section_64 *&,unsigned int)>::operator()(v62, a1 + v38 + 3272, &v58, v40, v28);
      v40 += *(v58 + 40);
    }

    v38 += 40;
  }

  while (v38 != 160);
  std::__function::__value_func<void ()(_CompilerData const&,section_64 *&,unsigned int)>::~__value_func[abi:nn200100](v61);
  if (v40 == v39)
  {
    v41 = *(a1 + 2288);
    *a2 = v41;
    v42 = *(a1 + 2296);
  }

  else
  {
    v43 = *(a1 + 2304);
    v44 = *(v43 + 32) + v40 - v39;
    *(v43 + 32) = v44;
    *(v43 + 48) = v44;
    v42 = v40;
    v41 = malloc_type_calloc(1uLL, v40, 0x100004077774924uLL);
    memcpy(v41, *(a1 + 2288), *(a1 + 2296));
    v59[0] = &unk_2825AFF10;
    v59[1] = v41;
    v60 = v59;
    v46 = (a1 + 2712);
    v47 = 4;
    do
    {
      v58 = *v46;
      if (v58)
      {
        std::function<void ()(_CompilerData const&,section_64 *&,unsigned int)>::operator()(v60, (v46 + 70), &v58, v40, v45);
        v40 += *(v58 + 40);
      }

      v46 += 5;
      --v47;
    }

    while (v47);
    std::__function::__value_func<void ()(_CompilerData const&,section_64 *&,unsigned int)>::~__value_func[abi:nn200100](v59);
    *a2 = v41;
  }

  *a3 = v42;
  if (v41)
  {
    v48 = v42 == 0;
  }

  else
  {
    v48 = 1;
  }

  v49 = !v48;
  if (!v48)
  {
    if (!AGCLLVMObjectBase::dumpShaderToFile(a1))
    {
      goto LABEL_54;
    }

    v42 = 0x27C8D7000;
    {
      goto LABEL_59;
    }

    while (1)
    {
      if (*(v42 + 2944) == 1)
      {
        Value = AGCEnv::getValue("AGC_DUMP_MACHO", v50);
        if (Value)
        {
          if (*Value != 48 && atoi(Value))
          {
            if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + 1696)))
            {
              v52 = *(a1 + 1696);
              v53 = (*(*a1 + 48))(a1);
              AGCTargetPrinter::printMessage(v52, "------ Start dump mach-O for %s shader %u ------\n", v53, *(a1 + 5088));
            }

            v42 = *(a1 + 1696);
            a2 = *a2;
            a3 = *a3;
            if (AGCTargetPrinter::isValidToPrintMessage(v42))
            {
              printHexDump(*v42, a2, a3, 0x20u, &unk_20E75F419, 0);
            }

            if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + 1696)))
            {
              a3 = *(a1 + 1696);
              v54 = (*(*a1 + 48))(a1);
              AGCTargetPrinter::printMessage(a3, "\n\n------ End dump mach-O for %s shader %u ------\n", v54, *(a1 + 5088));
            }
          }
        }
      }

LABEL_54:
      if (!*(a5 + 24))
      {
        break;
      }

      v55 = (*(*a1 + 32))(a1);
      v56 = *(a5 + 24);
      if (v56)
      {
        (*(*v56 + 48))(v56, v55);
        return v49;
      }

      std::__throw_bad_function_call[abi:nn200100]();
LABEL_59:
      {
        *(v42 + 2944) = os_variant_has_internal_diagnostics();
      }
    }
  }

  return v49;
}

uint64_t std::__function::__value_func<void ()(_CompilerData const&,section_64 *&,unsigned int)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::function<void ()(_CompilerData const&,section_64 *&,unsigned int)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, int a4, __n128 a5)
{
  v6 = a4;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    JUMPOUT(0x20E525504);
  }

  return (*(*a1 + 48))(a1, a2, a3, &v6, a5);
}

void std::__function::__func<AGCDeserializedReply::serialize(void *&,unsigned long &)::{lambda(_CompilerData const&,section_64 *&,unsigned int)#1},std::allocator<AGCDeserializedReply::serialize(void *&,unsigned long &)::{lambda(_CompilerData const&,section_64 *&,unsigned int)#1}>,void ()(_CompilerData const&,section_64 *&,unsigned int)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3, _DWORD *a4)
{
  v4 = *a3;
  *(v4 + 48) = *a4;
  *(v4 + 40) = (*(a2 + 8) + 7) & 0xFFFFFFFFFFFFFFF8;
}

uint64_t std::__function::__value_func<void ()(AGCDeserializedReply const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void virtual thunk toAGCLLVMAGPFragmentShaderGen6::~AGCLLVMAGPFragmentShaderGen6(AGCLLVMAGPFragmentShaderGen6 *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (this + *(*this - 24));
  *v4 = off_282556258;
  v4[1008] = off_282556660;
  v4[1221] = &off_282556770;
  v4[567] = &off_282556528;
  v5 = v4[990];
  if (v5 != v4 + 992)
  {
    free(v5);
  }

  AGCLLVMAGPFragmentShaderGen3::~AGCLLVMAGPFragmentShaderGen3(v4, off_282551C00, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 1008));

  JUMPOUT(0x20F331DC0);
}

{
  v4 = (this + *(*this - 24));
  *v4 = off_282556258;
  v4[1008] = off_282556660;
  v4[1221] = &off_282556770;
  v4[567] = &off_282556528;
  v5 = v4[990];
  if (v5 != v4 + 992)
  {
    free(v5);
  }

  AGCLLVMAGPFragmentShaderGen3::~AGCLLVMAGPFragmentShaderGen3(v4, off_282551C00, a3, a4);

  AGCLLVMObject::~AGCLLVMObject((v4 + 1008));
}

void AGCLLVMAGPFragmentShaderGen3::~AGCLLVMAGPFragmentShaderGen3(AGCLLVMAGPFragmentShaderGen3 *this, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v6 = *a2;
  *this = *a2;
  *(this + *(v6 - 24)) = a2[21];
  *(this + *(*this - 24) + 1704) = a2[22];
  *(this + 567) = a2[23];
  v7 = *(this + 989);
  if (v7 != -8192 && v7 != -4096 && v7)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 7896));
  }

  v8 = *(this + 986);
  if (v8 != -8192 && v8 != -4096 && v8)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 7872));
  }

  v9 = *(this + 981);
  if (v9 != -8192 && v9 != -4096 && v9)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 7832));
  }

  v10 = *(this + 956);
  if (v10 != this + 7664)
  {
    free(v10);
  }

  v11 = *(this + 950);
  if (v11 != this + 7616)
  {
    free(v11);
  }

  v12 = *(this + 1898);
  v13 = *(this + 947);
  if (v12)
  {
    v14 = (v13 + 16);
    v15 = 40 * v12;
    do
    {
      if (*(v14 - 4) <= 0xFFFFFFFD)
      {
        v16 = *(v14 + 2);
        if (v16 != -8192 && v16 != -4096 && v16 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList(v14);
        }
      }

      v14 = (v14 + 40);
      v15 -= 40;
    }

    while (v15);
    v13 = *(this + 947);
    v12 = 5 * *(this + 1898);
    v18 = 40 * *(this + 1898);
  }

  else
  {
    v18 = 0;
  }

  llvm::deallocate_buffer(v12, v13, v18);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 945));
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 942));

  AGCLLVMAGPFragmentShader::~AGCLLVMAGPFragmentShader(this, a2 + 1);
}

void AGCLLVMAGPFragmentShader::~AGCLLVMAGPFragmentShader(AGCLLVMAGPFragmentShader *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[17];
  *(this + *(*this - 24) + 1704) = a2[18];
  *(this + 567) = a2[19];
  v5 = this + 7512;
  v6 = -160;
  do
  {
    v7 = *(v5 - 2);
    if (v5 != v7)
    {
      free(v7);
    }

    v5 -= 32;
    v6 += 32;
  }

  while (v6);
  v8 = this + 7352;
  v9 = -160;
  do
  {
    v10 = *(v8 - 2);
    if (v8 != v10)
    {
      free(v10);
    }

    v8 -= 32;
    v9 += 32;
  }

  while (v9);
  v11 = (this + 7184);
  v12 = -120;
  do
  {
    v13 = *(v11 + 2);
    if (v13 != -8192 && v13 != -4096 && v13 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v11);
    }

    v11 = (v11 - 24);
    v12 += 24;
  }

  while (v12);
  llvm::SmallVector<GenericVarying,8u>::~SmallVector(this + 6512);
  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(this + 6480, v15, v16, v17);

  AGCLLVMUserFragmentShader::~AGCLLVMUserFragmentShader(this, a2 + 1);
}

void AGCLLVMUserFragmentShader::~AGCLLVMUserFragmentShader(AGCLLVMUserFragmentShader *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[13];
  *(this + *(*this - 24) + 1704) = a2[14];
  v5 = this + 4536;
  *(this + 567) = a2[15];
  v6 = *(this + 798);
  if (v6 != -8192 && v6 != -4096 && v6)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 6368));
  }

  v7 = *(this + 795);
  if (v7 != -8192 && v7 != -4096 && v7)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 6344));
  }

  v8 = *(this + 792);
  if (v8 != -8192 && v8 != -4096 && v8)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 6320));
  }

  v9 = *(this + 789);
  if (v9 != -8192 && v9 != -4096 && v9)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 6296));
  }

  v10 = *(this + 785);
  if (v10 != -8192 && v10 != -4096 && v10)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 6264));
  }

  v11 = *(this + 782);
  if (v11 != -8192 && v11 != -4096 && v11)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 6240));
  }

  v12 = *(this + 779);
  if (v12 != -8192 && v12 != -4096 && v12)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 6216));
  }

  v13 = *(this + 776);
  if (v13 != -8192 && v13 != -4096 && v13)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 6192));
  }

  v14 = *(this + 772);
  if (v14 != -8192 && v14 != -4096 && v14)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 6160));
  }

  v15 = *(this + 769);
  if (v15 != -8192 && v15 != -4096 && v15)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 6136));
  }

  v16 = *(this + 766);
  if (v16 != -8192 && v16 != -4096 && v16)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 6112));
  }

  v17 = *(this + 763);
  if (v17 != -8192 && v17 != -4096 && v17)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 6088));
  }

  v18 = *(this + 760);
  if (v18 != -8192 && v18 != -4096 && v18)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 6064));
  }

  v19 = (this + 6024);
  v20 = -256;
  do
  {
    v21 = *(v19 + 2);
    if (v21 != -8192 && v21 != -4096 && v21 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v19);
    }

    v19 = (v19 - 32);
    v20 += 32;
  }

  while (v20);
  v23 = (this + 5768);
  v24 = -256;
  do
  {
    v25 = *(v23 + 2);
    if (v25 != -8192 && v25 != -4096 && v25 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v23);
    }

    v23 = (v23 - 32);
    v24 += 32;
  }

  while (v24);
  v27 = a2[7];
  *(this + 567) = v27;
  *&v5[*(v27 - 24)] = a2[11];
  *&v5[*(*(this + 567) - 24) + 1704] = a2[12];
  v28 = *(this + 684);
  if (v28 != this + 5488)
  {
    free(v28);
  }

  v29 = *(this + 674);
  if (v29 != this + 5408)
  {
    free(v29);
  }

  v30 = a2[8];
  *(this + 567) = v30;
  *&v5[*(v30 - 24)] = a2[9];
  *&v5[*(*(this + 567) - 24) + 1704] = a2[10];
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 570));

  AGCLLVMUserShader::~AGCLLVMUserShader(this, a2 + 1, v31, v32);
}

void AGCLLVMUserShader::~AGCLLVMUserShader(AGCLLVMUserShader *this, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v6 = *a2;
  *this = *a2;
  *(this + *(v6 - 24)) = a2[4];
  *(this + *(*this - 24) + 1704) = a2[5];
  v7 = *(this + 565);
  if (v7 != -8192 && v7 != -4096 && v7 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4504));
  }

  v9 = *(this + 562);
  if (v9 != -8192 && v9 != -4096 && v9)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4480));
  }

  v10 = *(this + 559);
  if (v10 != -8192 && v10 != -4096 && v10)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 4456));
  }

  v11 = a2[1];
  *this = v11;
  *(this + *(v11 - 24)) = a2[2];
  *(this + *(*this - 24) + 1704) = a2[3];
  v12 = *(this + 124);
  if (v12)
  {
    std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(v12 + 8));
    MEMORY[0x20F331DC0](v12, 0x1020C4062D53EE8);
  }

  v13 = (this + 4416);
  v14 = -96;
  do
  {
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    v13 -= 4;
    v14 += 32;
  }

  while (v14);
  v15 = *(this + 510);
  if (v15 != this + 4096)
  {
    free(v15);
  }

  v16 = *(this + 494);
  if (v16)
  {
    v17 = *(this + 495);
    v18 = *(this + 494);
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 9);
        v17 -= 4;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = *(this + 494);
    }

    *(this + 495) = v16;
    operator delete(v18);
  }

  llvm::deallocate_buffer(*(this + 962), *(this + 479), (16 * *(this + 962)));
  v20 = *(this + 474);
  if (v20 != this + 3808)
  {
    free(v20);
  }

  if ((*(this + 3768) & 1) == 0)
  {
    llvm::deallocate_buffer(*(this + 946), *(this + 472), (8 * *(this + 946)));
  }

  v21 = *(this + 469);
  if (v21 != -8192 && v21 != -4096 && v21)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 3736));
  }

  llvm::deallocate_buffer(*(this + 932), *(this + 464), (16 * *(this + 932)));
  llvm::SmallVectorTemplateBase<AGCLLVMUserObject::BufferBinding,false>::destroy_range(*(this + 442), *(this + 442) + 40 * *(this + 886));
  v22 = *(this + 442);
  if (v22 != this + 3552)
  {
    free(v22);
  }

  llvm::optional_detail::OptionalStorage<llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>,false>::reset(this + 433);
  v23 = *(this + 864);
  v24 = *(this + 430);
  if (v23)
  {
    v85 = 2;
    v86 = 0;
    v87 = -4096;
    v88 = 0;
    v83 = 0;
    v84 = &unk_2825A7350;
    v80 = 2;
    v81 = 0;
    v82 = -8192;
    v25 = (v24 + 24);
    v26 = 48 * v23;
    do
    {
      v27 = *v25;
      if (*v25 != -8192 && v27 != -4096 && v27 != 0)
      {
        llvm::ValueHandleBase::RemoveFromUseList((v25 - 2));
      }

      v25 += 6;
      v26 -= 48;
    }

    while (v26);
    v24 = *(this + 430);
    v23 = 3 * *(this + 864);
    v29 = 48 * *(this + 864);
  }

  else
  {
    v29 = 0;
  }

  llvm::deallocate_buffer(v23, v24, v29);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 428));
  v30 = *(this + 423);
  v31 = *(this + 848);
  if (v31)
  {
    v32 = -8 * v31;
    v33 = &v30[8 * v31 - 8];
    do
    {
      v33 = std::unique_ptr<AGCLLVMUserObject::IndirectArgumentBufferInfo>::~unique_ptr[abi:nn200100](v33) - 1;
      v32 += 8;
    }

    while (v32);
    v30 = *(this + 423);
  }

  if (v30 != this + 3400)
  {
    free(v30);
  }

  std::__hash_table<std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::__unordered_map_hasher<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::hash<llvm::Type *>,std::equal_to<llvm::Type *>,true>,std::__unordered_map_equal<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::equal_to<llvm::Type *>,std::hash<llvm::Type *>,true>,std::allocator<std::__hash_value_type<llvm::Type *,llvm::WeakVH>>>::~__hash_table(this + 418);
  std::__hash_table<std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::__unordered_map_hasher<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::hash<llvm::Type *>,std::equal_to<llvm::Type *>,true>,std::__unordered_map_equal<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::equal_to<llvm::Type *>,std::hash<llvm::Type *>,true>,std::allocator<std::__hash_value_type<llvm::Type *,llvm::WeakVH>>>::~__hash_table(this + 412);
  std::__hash_table<std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::__unordered_map_hasher<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::hash<llvm::Type *>,std::equal_to<llvm::Type *>,true>,std::__unordered_map_equal<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::equal_to<llvm::Type *>,std::hash<llvm::Type *>,true>,std::allocator<std::__hash_value_type<llvm::Type *,llvm::WeakVH>>>::~__hash_table(this + 406);
  std::__hash_table<std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::__unordered_map_hasher<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::hash<llvm::Type *>,std::equal_to<llvm::Type *>,true>,std::__unordered_map_equal<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::equal_to<llvm::Type *>,std::hash<llvm::Type *>,true>,std::allocator<std::__hash_value_type<llvm::Type *,llvm::WeakVH>>>::~__hash_table(this + 400);
  std::__hash_table<std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::__unordered_map_hasher<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::hash<llvm::Type *>,std::equal_to<llvm::Type *>,true>,std::__unordered_map_equal<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::equal_to<llvm::Type *>,std::hash<llvm::Type *>,true>,std::allocator<std::__hash_value_type<llvm::Type *,llvm::WeakVH>>>::~__hash_table(this + 394);
  std::__hash_table<std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::__unordered_map_hasher<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::hash<llvm::Type *>,std::equal_to<llvm::Type *>,true>,std::__unordered_map_equal<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::equal_to<llvm::Type *>,std::hash<llvm::Type *>,true>,std::allocator<std::__hash_value_type<llvm::Type *,llvm::WeakVH>>>::~__hash_table(this + 388);
  v34 = *(this + 383);
  if (v34 != this + 3080)
  {
    free(v34);
  }

  for (i = 0; i != -48; i -= 24)
  {
    v36 = *(this + i + 3056);
    if (v36 != -8192 && v36 != -4096 && v36 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList((this + i + 3040));
    }
  }

  v38 = *(this + 376);
  if (v38 != -8192 && v38 != -4096 && v38 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2992));
  }

  v40 = *(this + 373);
  if (v40 != -8192 && v40 != -4096 && v40)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2968));
  }

  v41 = *(this + 369);
  if (v41 != -8192 && v41 != -4096 && v41)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2936));
  }

  v42 = *(this + 366);
  if (v42 != -8192 && v42 != -4096 && v42)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2912));
  }

  v43 = *(this + 363);
  if (v43 != -8192 && v43 != -4096 && v43)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2888));
  }

  v44 = *(this + 360);
  if (v44 != -8192 && v44 != -4096 && v44)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2864));
  }

  v45 = *(this + 357);
  if (v45 != -8192 && v45 != -4096 && v45)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2840));
  }

  v46 = *(this + 354);
  if (v46 != -8192 && v46 != -4096 && v46)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2816));
  }

  v47 = *(this + 351);
  if (v47 != -8192 && v47 != -4096 && v47)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2792));
  }

  v48 = *(this + 348);
  if (v48 != -8192 && v48 != -4096 && v48)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2768));
  }

  v49 = *(this + 345);
  if (v49 != -8192 && v49 != -4096 && v49)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2744));
  }

  v50 = *(this + 341);
  if (v50 != -8192 && v50 != -4096 && v50)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2712));
  }

  v51 = *(this + 337);
  if (v51 != -8192 && v51 != -4096 && v51)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2680));
  }

  v52 = *(this + 333);
  if (v52 != -8192 && v52 != -4096 && v52)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2648));
  }

  v53 = *(this + 330);
  if (v53 != -8192 && v53 != -4096 && v53)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2624));
  }

  v54 = *(this + 327);
  if (v54 != -8192 && v54 != -4096 && v54)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2600));
  }

  v55 = *(this + 324);
  if (v55 != -8192 && v55 != -4096 && v55)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2576));
  }

  v56 = *(this + 321);
  if (v56 != -8192 && v56 != -4096 && v56)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2552));
  }

  v57 = *(this + 318);
  if (v57 != -8192 && v57 != -4096 && v57)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2528));
  }

  v58 = *(this + 315);
  if (v58 != -8192 && v58 != -4096 && v58)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2504));
  }

  v59 = *(this + 312);
  if (v59 != -8192 && v59 != -4096 && v59)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2480));
  }

  for (j = 0; j != -72; j -= 24)
  {
    v61 = *(this + j + 2472);
    if (v61 != -8192 && v61 != -4096 && v61 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList((this + j + 2456));
    }
  }

  v63 = *(this + 300);
  *(this + 300) = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63);
  }

  for (k = 0; k != -256; k -= 64)
  {
    v65 = *(this + k + 2344);
    if (v65 != -8192 && v65 != -4096 && v65 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList((this + k + 2328));
    }
  }

  for (m = 0; m != -256; m -= 64)
  {
    v68 = *(this + m + 2088);
    if (v68 != -8192 && v68 != -4096 && v68 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList((this + m + 2072));
    }
  }

  for (n = 0; n != -640; n -= 64)
  {
    v71 = *(this + n + 1832);
    if (v71 != -8192 && v71 != -4096 && v71 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList((this + n + 1816));
    }
  }

  v73 = *(this + 144);
  if (v73 != *(this + 143))
  {
    free(v73);
  }

  v74 = *(this + 132);
  if (v74 != *(this + 131))
  {
    free(v74);
  }

  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 129));
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 126));
  v75 = *(this + 121);
  if (v75)
  {
    *(this + 122) = v75;
    operator delete(v75);
  }

  v76 = *(this + 118);
  if (v76)
  {
    *(this + 119) = v76;
    operator delete(v76);
  }

  v77 = *(this + 107);
  if (v77 != *(this + 106))
  {
    free(v77);
  }

  std::__tree<llvm::WeakVH>::destroy(*(this + 103));
  llvm::optional_detail::OptionalStorage<llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>,false>::reset(this + 97);
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *>>::destroyAll(this + 188);
  llvm::deallocate_buffer((3 * *(this + 192)), *(this + 94), (48 * *(this + 192)));
  llvm::optional_detail::OptionalStorage<llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>,false>::reset(this + 89);
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>::destroyAll(this + 172);
  llvm::deallocate_buffer((3 * *(this + 176)), *(this + 86), (48 * *(this + 176)));
  v78 = *(this + 82);
  if (v78 != this + 672)
  {
    free(v78);
  }

  MEMORY[0x20F32FD00](this + 224);
  if (*(this + 199) < 0)
  {
    operator delete(*(this + 22));
  }

  v79 = *(this + 10);
  if (v79 != this + 96)
  {
    free(v79);
  }
}

uint64_t *llvm::optional_detail::OptionalStorage<llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>,false>::reset(uint64_t *result)
{
  if (*(result + 24) == 1)
  {
    v1 = result;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>,llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::destroyAll(result);
    result = llvm::deallocate_buffer(*(v1 + 4), *v1, (16 * *(v1 + 4)));
    *(v1 + 24) = 0;
  }

  return result;
}

void **std::__hash_table<std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::__unordered_map_hasher<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::hash<llvm::Type *>,std::equal_to<llvm::Type *>,true>,std::__unordered_map_equal<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::equal_to<llvm::Type *>,std::hash<llvm::Type *>,true>,std::allocator<std::__hash_value_type<llvm::Type *,llvm::WeakVH>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::__unordered_map_hasher<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::hash<llvm::Type *>,std::equal_to<llvm::Type *>,true>,std::__unordered_map_equal<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::equal_to<llvm::Type *>,std::hash<llvm::Type *>,true>,std::allocator<std::__hash_value_type<llvm::Type *,llvm::WeakVH>>>::__deallocate_node(a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::__unordered_map_hasher<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::hash<llvm::Type *>,std::equal_to<llvm::Type *>,true>,std::__unordered_map_equal<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::equal_to<llvm::Type *>,std::hash<llvm::Type *>,true>,std::allocator<std::__hash_value_type<llvm::Type *,llvm::WeakVH>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = v1;
      v1 = *v1;
      v3 = v2[5];
      if (v3 != -8192 && v3 != -4096 && v3 != 0)
      {
        llvm::ValueHandleBase::RemoveFromUseList((v2 + 3));
      }

      operator delete(v2);
    }

    while (v1);
  }
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::IntersectionQueryAnalysisGen6::~IntersectionQueryAnalysisGen6(uint64_t a1)
{
  *a1 = &unk_2825BBFA0;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(a1 + 72));
  *a1 = &unk_2825B0390;
  std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::~__hash_table(a1 + 8);

  JUMPOUT(0x20F331DC0);
}

void std::__tree<llvm::WeakVH>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<llvm::WeakVH>::destroy(*a1);
    std::__tree<llvm::WeakVH>::destroy(a1[1]);
    v2 = a1[6];
    if (v2 != -8192 && v2 != -4096 && v2 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList((a1 + 4));
    }

    operator delete(a1);
  }
}

unsigned int *llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *>>::destroyAll(unsigned int *result)
{
  v1 = result[4];
  if (v1)
  {
    v11 = 2;
    v12 = 0;
    v13 = -4096;
    v14 = 0;
    v9 = 0;
    v10 = &unk_2825A7378;
    v6 = 2;
    v7 = 0;
    v8 = -8192;
    v2 = 48 * v1;
    v3 = (*result + 24);
    do
    {
      v4 = *v3;
      if (*v3 != -8192 && v4 != -4096 && v4 != 0)
      {
        result = llvm::ValueHandleBase::RemoveFromUseList((v3 - 2));
      }

      v3 += 6;
      v2 -= 48;
    }

    while (v2);
  }

  return result;
}

unsigned int *llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>::destroyAll(unsigned int *result)
{
  v1 = result[4];
  if (v1)
  {
    v11 = 2;
    v12 = 0;
    v13 = -4096;
    v14 = 0;
    v9 = 0;
    v10 = &unk_2825BDF98;
    v6 = 2;
    v7 = 0;
    v8 = -8192;
    v2 = 48 * v1;
    v3 = (*result + 24);
    do
    {
      v4 = *v3;
      if (*v3 != -8192 && v4 != -4096 && v4 != 0)
      {
        result = llvm::ValueHandleBase::RemoveFromUseList((v3 - 2));
      }

      v3 += 6;
      v2 -= 48;
    }

    while (v2);
  }

  return result;
}

void AGCLLVMObject::~AGCLLVMObject(AGCLLVMObject *this)
{
  *this = &unk_2825AFD08;
  *(this + 213) = &unk_2825AFE18;
  v2 = *(this + 211);
  *(v2 + 160) = 0;
  if (*(v2 + 327) < 0)
  {
    **(v2 + 304) = 0;
    *(v2 + 312) = 0;
  }

  else
  {
    *(v2 + 304) = 0;
    *(v2 + 327) = 0;
  }

  MEMORY[0x20F331AA0](v2 + 8, &unk_20E75F419);
  v6 = *(this + 271);
  if (v6)
  {
    (*(*v6 + 16))(v6);
  }

  if (*(this + 267))
  {
    v7 = MEMORY[0x20F330EC0]();
    MEMORY[0x20F331DC0](v7, 0x10B2C407FF26C1CLL);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(this + 5136, v3, v4, v5);
  if (*(this + 5119) < 0)
  {
    operator delete(*(this + 637));
  }

  if (*(this + 5087) < 0)
  {
    operator delete(*(this + 633));
  }

  if (*(this + 5063) < 0)
  {
    operator delete(*(this + 630));
  }

  v8 = *(this + 612);
  if (v8 != this + 4912)
  {
    free(v8);
  }

  v9 = *(this + 594);
  if (v9 != this + 4768)
  {
    free(v9);
  }

  v10 = *(this + 584);
  if (v10 != this + 4688)
  {
    free(v10);
  }

  v11 = *(this + 574);
  if (v11 != this + 4608)
  {
    free(v11);
  }

  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder((this + 4480));
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder((this + 4384));
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder((this + 4288));
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(this + 4248);
  v12 = *(this + 514);
  if (v12)
  {
    *(this + 515) = v12;
    operator delete(v12);
  }

  v13 = *(this + 507);
  if (v13)
  {
    do
    {
      v14 = *v13;
      if (*(v13 + 47) < 0)
      {
        operator delete(v13[3]);
      }

      operator delete(v13);
      v13 = v14;
    }

    while (v14);
  }

  v15 = *(this + 505);
  *(this + 505) = 0;
  if (v15)
  {
    operator delete(v15);
  }

  for (i = 4000; i != 3440; i -= 40)
  {
    std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(this + i);
  }

  v17 = *(this + 284);
  if (v17 != -8192 && v17 != -4096 && v17 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2256));
  }

  v19 = *(this + 281);
  if (v19 != -8192 && v19 != -4096 && v19)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2232));
  }

  v20 = *(this + 274);
  if (v20)
  {
    *(this + 275) = v20;
    operator delete(v20);
  }

  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter((this + 1840));
  llvm::IRBuilderFolder::~IRBuilderFolder((this + 1832));
  v24 = *(this + 214);
  if (v24 != this + 1728)
  {
    free(v24);
  }

  AGCLLVMObjectBase::~AGCLLVMObjectBase(this, v21, v22, v23);
}

void AGCLLVMG16PB0TargetLowerer::~AGCLLVMG16PB0TargetLowerer(AGCLLVMG16PB0TargetLowerer *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_2825BA2A8;
  v5 = *(this + 325);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448, a2, a3, a4);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416, v7, v8, v9);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));
  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825BA2A8;
  v5 = *(this + 325);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448, a2, a3, a4);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416, v7, v8, v9);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));

  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);
}

uint64_t llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 12))
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      v6 = 0;
      v7 = 8 * v5;
      do
      {
        v8 = *(*a1 + v6);
        if (v8 != -8 && v8 != 0)
        {
          llvm::deallocate_buffer(*v8, v8, *v8 + 33);
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  free(*a1);
  return a1;
}

void AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(AGCLLVMTargetLowerer *this)
{
  *this = &unk_2825B9C60;
  v2 = *(this + 116);
  *(this + 116) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 115);
  *(this + 115) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  MEMORY[0x20F32FD00](this + 472);
  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter((this + 136));
  llvm::IRBuilderFolder::~IRBuilderFolder((this + 128));
  v4 = *(this + 1);
  if (v4 != this + 24)
  {
    free(v4);
  }
}

void AGCLLVMObjectBase::~AGCLLVMObjectBase(AGCLLVMObjectBase *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_2825BDF20;
  if (*(this + 1679) < 0)
  {
    operator delete(*(this + 207));
  }

  llvm::deallocate_buffer((3 * *(this + 412)), *(this + 204), (24 * *(this + 412)));
  llvm::DenseMapBase<llvm::DenseMap<llvm::Module *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::DenseMapInfo<llvm::Module *,void>,llvm::detail::DenseMapPair<llvm::Module *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>>>,llvm::Module *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::DenseMapInfo<llvm::Module *,void>,llvm::detail::DenseMapPair<llvm::Module *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>>>::destroyAll(this + 402);
  llvm::deallocate_buffer(*(this + 406), *(this + 201), (32 * *(this + 406)));
  llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::destroyAll(this + 396);
  llvm::deallocate_buffer(*(this + 400), *(this + 198), (16 * *(this + 400)));
  llvm::deallocate_buffer((3 * *(this + 394)), *(this + 195), (24 * *(this + 394)));
  llvm::DenseMapBase<llvm::DenseMap<llvm::LazyCallGraph::SCC *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator>>>>,llvm::DenseMapInfo<llvm::LazyCallGraph::SCC *,void>,llvm::detail::DenseMapPair<llvm::LazyCallGraph::SCC *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator>>>>>>,llvm::LazyCallGraph::SCC *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator>>>>,llvm::DenseMapInfo<llvm::LazyCallGraph::SCC *,void>,llvm::detail::DenseMapPair<llvm::LazyCallGraph::SCC *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator>>>>>>::destroyAll(this + 384);
  llvm::deallocate_buffer(*(this + 388), *(this + 192), (32 * *(this + 388)));
  llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator,llvm::LazyCallGraph&>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator,llvm::LazyCallGraph&>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator,llvm::LazyCallGraph&>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator,llvm::LazyCallGraph&>>>>::destroyAll(this + 378);
  llvm::deallocate_buffer(*(this + 382), *(this + 189), (16 * *(this + 382)));
  llvm::deallocate_buffer((3 * *(this + 376)), *(this + 186), (24 * *(this + 376)));
  llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>>>,llvm::Function *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>>>::destroyAll(this + 366);
  llvm::deallocate_buffer(*(this + 370), *(this + 183), (32 * *(this + 370)));
  llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>::destroyAll(this + 360);
  llvm::deallocate_buffer(*(this + 364), *(this + 180), (16 * *(this + 364)));
  llvm::deallocate_buffer((3 * *(this + 358)), *(this + 177), (24 * *(this + 358)));
  llvm::DenseMapBase<llvm::DenseMap<llvm::Loop *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator>>>>,llvm::DenseMapInfo<llvm::Loop *,void>,llvm::detail::DenseMapPair<llvm::Loop *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator>>>>>>,llvm::Loop *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator>>>>,llvm::DenseMapInfo<llvm::Loop *,void>,llvm::detail::DenseMapPair<llvm::Loop *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator>>>>>>::destroyAll(this + 348);
  llvm::deallocate_buffer(*(this + 352), *(this + 174), (32 * *(this + 352)));
  llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator,llvm::LoopStandardAnalysisResults &>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator,llvm::LoopStandardAnalysisResults &>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator,llvm::LoopStandardAnalysisResults &>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator,llvm::LoopStandardAnalysisResults &>>>>::destroyAll(this + 342);
  llvm::deallocate_buffer(*(this + 346), *(this + 171), (16 * *(this + 346)));
  llvm::StringMap<std::string,llvm::MallocAllocator>::~StringMap(this + 1336, v5, v6, v7);
  llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(this + 1192, v8, v9, v10);
  llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(this + 1048, v11, v12, v13);
  llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(this + 904, v14, v15, v16);
  llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(this + 760, v17, v18, v19);
  llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(this + 616, v20, v21, v22);
  llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(this + 472, v23, v24, v25);
  llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(this + 328, v26, v27, v28);
  llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(this + 184, v29, v30, v31);
  llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(this + 40, v32, v33, v34);
  *(this + 1) = &unk_2825BDF78;
  v35 = (this + 16);
  std::vector<std::unique_ptr<llvm::detail::PassConcept<llvm::Module,llvm::AnalysisManager<llvm::Module>>>>::__destroy_vector::operator()[abi:nn200100](&v35);
}

uint64_t AGCLLVMObject::finalizeDriverBindings(AGCLLVMObject *this, llvm::Function *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = (*(*this + 80))(this);
  if (v4 <= 0x1B && ((1 << v4) & 0x80002C1) != 0)
  {
    v7 = (*(*this + 224))(this);
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
    }

    if (AGCEnv::isEnabled(void)::is_internal == 1 && AGCEnv::getValue("AGC_ENABLE_TG_BOUNDS_CHECKING", v6))
    {
      {
        AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
      }

      v7 = AGCEnv::isEnabled(void)::is_internal == 1 && (Value = AGCEnv::getValue("AGC_ENABLE_TG_BOUNDS_CHECKING", v8)) != 0 && *Value != 48 && atoi(Value) != 0;
    }

    v10 = *(*(this + 271) + 1886);
    if ((AGCLLVMObject::isBufferBoundsChecksEnabled(this) & 1) != 0 || (v7 & 1) != 0 || v10)
    {
      llvm::Module::getOrInsertNamedMetadata();
      AGCLLVMObject::isBufferBoundsChecksEnabled(this);
      std::string::basic_string[abi:nn200100]<0>(&__p, "memorytocheck");
      v35 = llvm::MDString::get();
      llvm::ConstantInt::get();
      v36 = llvm::ValueAsMetadata::get();
      llvm::MDTuple::getImpl();
      llvm::NamedMDNode::addOperand();
      if (v34 < 0)
      {
        operator delete(__p);
      }

      if ((*(*this + 200))(this) == 2 || (*(*this + 200))(this) == 1)
      {
        std::string::basic_string[abi:nn200100]<0>(&__p, "hardware_support");
        v35 = llvm::MDString::get();
        llvm::ConstantInt::get();
        v36 = llvm::ValueAsMetadata::get();
        llvm::MDTuple::getImpl();
        llvm::NamedMDNode::addOperand();
        if (v34 < 0)
        {
          operator delete(__p);
        }

        if ((*(*this + 200))(this) == 2)
        {
          std::string::basic_string[abi:nn200100]<0>(&__p, "hardware_safety_check");
          v35 = llvm::MDString::get();
          goto LABEL_24;
        }
      }

      else if ((*(*this + 200))(this) == 3 || (*(*this + 200))(this) == 4)
      {
        std::string::basic_string[abi:nn200100]<0>(&__p, "checkdmapromotable");
        v35 = llvm::MDString::get();
        llvm::ConstantInt::get();
        v36 = llvm::ValueAsMetadata::get();
        llvm::MDTuple::getImpl();
        llvm::NamedMDNode::addOperand();
        if (v34 < 0)
        {
          operator delete(__p);
        }

        std::string::basic_string[abi:nn200100]<0>(&__p, "disableindexopt");
        v35 = llvm::MDString::get();
        llvm::ConstantInt::get();
        v36 = llvm::ValueAsMetadata::get();
        llvm::MDTuple::getImpl();
        llvm::NamedMDNode::addOperand();
        if (v34 < 0)
        {
          operator delete(__p);
        }

        std::string::basic_string[abi:nn200100]<0>(&__p, "useaddsatindex");
        v35 = llvm::MDString::get();
        llvm::ConstantInt::get();
        v36 = llvm::ValueAsMetadata::get();
        llvm::MDTuple::getImpl();
        llvm::NamedMDNode::addOperand();
        if (v34 < 0)
        {
          operator delete(__p);
        }

        std::string::basic_string[abi:nn200100]<0>(&__p, "fullptrcheck");
        v35 = llvm::MDString::get();
        llvm::ConstantInt::get();
        v36 = llvm::ValueAsMetadata::get();
        llvm::MDTuple::getImpl();
        llvm::NamedMDNode::addOperand();
        if (v34 < 0)
        {
          operator delete(__p);
        }

        std::string::basic_string[abi:nn200100]<0>(&__p, "checkstores");
        v35 = llvm::MDString::get();
        llvm::ConstantInt::get();
        v36 = llvm::ValueAsMetadata::get();
        llvm::MDTuple::getImpl();
        llvm::NamedMDNode::addOperand();
        if (v34 < 0)
        {
          operator delete(__p);
        }

        std::string::basic_string[abi:nn200100]<0>(&__p, "checkatomics");
        v35 = llvm::MDString::get();
        llvm::ConstantInt::get();
        v36 = llvm::ValueAsMetadata::get();
        llvm::MDTuple::getImpl();
        llvm::NamedMDNode::addOperand();
        if (v34 < 0)
        {
          operator delete(__p);
        }

        if ((*(*this + 200))(this) == 3)
        {
          std::string::basic_string[abi:nn200100]<0>(&__p, "reporting");
          v35 = llvm::MDString::get();
LABEL_24:
          llvm::ConstantInt::get();
          v36 = llvm::ValueAsMetadata::get();
          llvm::MDTuple::getImpl();
          llvm::NamedMDNode::addOperand();
          if (v34 < 0)
          {
            operator delete(__p);
          }
        }
      }
    }
  }

  if ((*(a2 + 9) & 0x3FF0) == 0x6A0)
  {
    llvm::Module::getOrInsertNamedMetadata();
    __p = v33;
    v32 = 0x800000000;
    v11 = llvm::ValueAsMetadata::get();
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&__p, v11);
    v12 = *(this + 574);
    v13 = *(this + 1150);
    v14 = v32;
    if (v13 + v32 > HIDWORD(v32))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v13)
    {
      v15 = __p + 8 * v32;
      v16 = 8 * v13;
      do
      {
        v17 = *v12++;
        *v15++ = v17;
        v16 -= 8;
      }

      while (v16);
    }

    LODWORD(v32) = v14 + v13;
    llvm::MDTuple::getImpl();
    llvm::NamedMDNode::addOperand();
    if (__p != v33)
    {
      free(__p);
    }
  }

  else
  {
    llvm::Module::getOrInsertNamedMetadata();
    v18 = *(this + 1150);
    if (v18)
    {
      v19 = *(this + 574);
      v20 = 8 * v18;
      do
      {
        v19 += 8;
        llvm::NamedMDNode::addOperand();
        v20 -= 8;
      }

      while (v20);
    }
  }

  if (*(this + 1226))
  {
    llvm::Module::getOrInsertNamedMetadata();
    v21 = *(this + 1226);
    if (v21)
    {
      v22 = *(this + 612);
      v23 = 8 * v21;
      do
      {
        v22 += 8;
        llvm::NamedMDNode::addOperand();
        v23 -= 8;
      }

      while (v23);
    }
  }

  llvm::Module::getOrInsertNamedMetadata();
  v24 = *(this + 1170);
  if (v24)
  {
    v25 = *(this + 584);
    v26 = 8 * v24;
    do
    {
      v25 += 8;
      llvm::NamedMDNode::addOperand();
      v26 -= 8;
    }

    while (v26);
  }

  llvm::Module::getOrInsertNamedMetadata();
  v27 = *(this + 1190);
  if (v27)
  {
    v28 = *(this + 594);
    v29 = 8 * v27;
    do
    {
      v28 += 8;
      llvm::NamedMDNode::addOperand();
      v29 -= 8;
    }

    while (v29);
  }

  return 1;
}

uint64_t AGCLLVMObject::isBufferBoundsChecksEnabled(AGCLLVMObject *this)
{
  if ((*(*this + 200))(this) == 2)
  {
    return 1;
  }

  result = (*(*this + 200))(this);
  if (result != 1)
  {
    if ((*(*this + 200))(this) == 3)
    {
      return 1;
    }

    return (*(*this + 200))(this) == 4;
  }

  return result;
}

char *llvm::PassInfoMixin<OverrideFunctionsAndGlobalsLinkagePass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x58)
  {
    v1 = v0;
  }

  else
  {
    v1 = 88;
  }

  v2 = &aStringrefLlvmG_84[v1];
  v3 = 88 - v1;
  if ((88 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 88 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

char *llvm::PassInfoMixin<ReplaceAddressSpaceCastsAndChecksPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x57)
  {
    v1 = v0;
  }

  else
  {
    v1 = 87;
  }

  v2 = &aStringrefLlvmG_85[v1];
  v3 = 87 - v1;
  if ((87 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 87 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

void llvm::detail::PassModel<llvm::Module,ReplaceAddressSpaceCastsAndChecksPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::run(void x0_0, uint64_t a1)
{
  v22[4] = *MEMORY[0x277D85DE8];
  v21[0] = v22;
  v21[1] = 0x400000000;
  v3 = *(a1 + 32);
  for (i = a1 + 24; v3 != i; v3 = *(v19 + 8))
  {
    v4 = v3 - 56;
    v19 = v3;
    if (!v3)
    {
      v4 = 0;
    }

    v5 = *(v4 + 80);
    for (j = v4 + 72; v5 != j; v5 = *(v5 + 8))
    {
      v6 = v5 - 24;
      if (!v5)
      {
        v6 = 0;
      }

      v7 = v6 + 40;
      for (k = *(v6 + 48); k != v7; k = *(k + 8))
      {
        v9 = k - 24;
        if (!k)
        {
          v9 = 0;
        }

        v10 = *(v9 + 16);
        if (v10 == 84)
        {
          v11 = v9;
        }

        else
        {
          v11 = 0;
        }

        if (k && v10 == 84)
        {
          v12 = *(v9 - 32);
          if (!v12 || *(v12 + 16) || *(v12 + 24) != *(v9 + 72))
          {
            v12 = 0;
          }

          for (m = 0; m != 6; ++m)
          {
            if (v12)
            {
              Name = llvm::Value::getName(v12);
              v16 = v15;
              v17 = strlen(off_277E22488[m]);
              if (v16 >= v17 && (!v17 || !memcmp(Name, off_277E22488[m], v17)))
              {
                llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v21, v11);
              }
            }
          }
        }
      }
    }
  }

  llvm::AnalysisManager<llvm::Module>::getResultImpl();
}

char *llvm::PassInfoMixin<ReplaceTextureStatePointerPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x50)
  {
    v1 = v0;
  }

  else
  {
    v1 = 80;
  }

  v2 = &aStringrefLlvmG_86[v1];
  v3 = 80 - v1;
  if ((80 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 80 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

uint64_t AGCLLVMAGPFragmentShaderGen3::verifyLoweredIR(AGCLLVMAGPFragmentShaderGen3 *this)
{
  if (*(this + 7860) != 1)
  {
    return AGCLLVMUserObject::verifyLoweredIR(this);
  }

  memset(&v6, 0, sizeof(v6));
  if (*(this + 6432))
  {
    v2 = "[[front_facing]]";
  }

  else if (*(this + 6433))
  {
    v2 = "[[point_coord]]";
  }

  else if (*(this + 6435))
  {
    v2 = "[[depth]]";
  }

  else if (*(this + 6457))
  {
    v2 = "[[stencil]]";
  }

  else if (*(this + 6430) & 1) != 0 || (*(this + 6444))
  {
    v2 = "[[sample_mask]]";
  }

  else if (*(this + 6458))
  {
    v2 = "[[viewport_array_index]]";
  }

  else if (*(this + 6460))
  {
    v2 = "[[amplification_id]]";
  }

  else if (*(this + 6461))
  {
    v2 = "[[amplification_count]]";
  }

  else if (*(this + 6428))
  {
    v2 = "interpolation of attributes";
  }

  else if (*(this + 6445))
  {
    v2 = "discard_fragment()";
  }

  else
  {
    if (*(this + *(*this - 24) + 2224) != 1)
    {
      return AGCLLVMUserObject::verifyLoweredIR(this);
    }

    v2 = "threadgroup_barrier()";
  }

  MEMORY[0x20F331AA0](&v6, v2);
  if ((*(&v6.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    if (v6.__r_.__value_.__l.__size_)
    {
      goto LABEL_17;
    }

    operator delete(v6.__r_.__value_.__l.__data_);
    return AGCLLVMUserObject::verifyLoweredIR(this);
  }

  if (!*(&v6.__r_.__value_.__s + 23))
  {
    return AGCLLVMUserObject::verifyLoweredIR(this);
  }

LABEL_17:
  std::string::append(&v6, " unsupported in fragment functions bound to tile pipelines");
  if ((v6.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v6;
  }

  else
  {
    v3 = v6.__r_.__value_.__r.__words[0];
  }

  if ((v6.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v6.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v6.__r_.__value_.__l.__size_;
  }

  std::string::append((this + *(*this - 24) + 1656), v3, size);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  return 0;
}

uint64_t AGCLLVMUserObject::verifyLoweredIR(AGCLLVMUserObject *this)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(this + *(*this - 24) + 2136);
  v4 = v3 + 24;
  v5 = *(v3 + 32);
  if (v5 == v3 + 24)
  {
LABEL_28:
    v15 = *(this + *(v2 - 24) + 2136);
    v16 = *(v15 + 32);
    if (v16 != v15 + 24)
    {
      v17 = *(v15 + 32);
      do
      {
        if (v17 != v16)
        {
          if (v17)
          {
            v18 = v17 - 56;
          }

          else
          {
            v18 = 0;
          }

          if (v18 == *(this + 20))
          {
            llvm::SymbolTableListTraits<llvm::Function>::removeNodeFromList();
          }
        }

        v17 = *(v17 + 8);
      }

      while (v17 != v15 + 24);
    }

    return 1;
  }

  else
  {
    v6 = 0;
    v7 = this + 1656;
    do
    {
      while (1)
      {
        if (v5)
        {
          v8 = v5 - 56;
        }

        else
        {
          v8 = 0;
        }

        if (llvm::GlobalValue::isDeclaration(v8))
        {
          if (*(v8 + 8))
          {
            if ((*(v8 + 33) & 0x20) == 0)
            {
              __p[0] = llvm::Value::getName(v8);
              __p[1] = v9;
              if (llvm::StringRef::find() != -1 || (v28.__r_.__value_.__r.__words[0] = llvm::Value::getName(v8), v28.__r_.__value_.__l.__size_ = v10, llvm::StringRef::find() != -1))
              {
                {
                  AGCLLVMUserObject::verifyLoweredIR(void)::log = os_log_create("com.apple.agx", "AGC");
                }

                v19 = AGCLLVMUserObject::verifyLoweredIR(void)::log;
                if (os_log_type_enabled(AGCLLVMUserObject::verifyLoweredIR(void)::log, OS_LOG_TYPE_FAULT))
                {
                  v28.__r_.__value_.__r.__words[0] = llvm::Value::getName(v8);
                  v28.__r_.__value_.__l.__size_ = v26;
                  llvm::StringRef::str(__p, &v28);
                  v27 = v30 >= 0 ? __p : __p[0];
                  LODWORD(buf) = 136315138;
                  *(&buf + 4) = v27;
                  _os_log_fault_impl(&dword_20E4E1000, v19, OS_LOG_TYPE_FAULT, "Encountered unlowered function call to %s", &buf, 0xCu);
                  if (SHIBYTE(v30) < 0)
                  {
                    operator delete(__p[0]);
                  }
                }

                *&buf = llvm::Value::getName(v8);
                *(&buf + 1) = v20;
                llvm::StringRef::str(&v28, &buf);
                v21 = std::string::insert(&v28, 0, "Encountered unlowered function call to ");
                v22 = v21->__r_.__value_.__r.__words[2];
                *__p = *&v21->__r_.__value_.__l.__data_;
                v30 = v22;
                v21->__r_.__value_.__l.__size_ = 0;
                v21->__r_.__value_.__r.__words[2] = 0;
                v21->__r_.__value_.__r.__words[0] = 0;
                if (v30 >= 0)
                {
                  v23 = __p;
                }

                else
                {
                  v23 = __p[0];
                }

                if (v30 >= 0)
                {
                  v24 = HIBYTE(v30);
                }

                else
                {
                  v24 = __p[1];
                }

                std::string::append((this + *(*this - 24) + 1656), v23, v24);
                if (SHIBYTE(v30) < 0)
                {
                  operator delete(__p[0]);
                }

                if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v28.__r_.__value_.__l.__data_);
                }

                return 0;
              }
            }
          }
        }

        if (llvm::GlobalValue::isDeclaration(v8))
        {
          if (*(v8 + 8))
          {
            if ((*(v8 + 33) & 0x20) == 0)
            {
              Name = llvm::Value::getName(v8);
              if (v12 == 33 && !memcmp(Name, "agc.illegal_visible_function_call", 0x21uLL))
              {
                std::string::append(&v7[*(*this - 24)], "Error: Encountered unsupported visible function call\n");
                v6 = 1;
              }
            }
          }
        }

        if (!llvm::GlobalValue::isDeclaration(v8))
        {
          break;
        }

        if (!*(v8 + 8))
        {
          break;
        }

        if ((*(v8 + 33) & 0x20) != 0)
        {
          break;
        }

        v13 = llvm::Value::getName(v8);
        if (v14 != 36 || memcmp(v13, "agc.illegal_raytracing_function_call", 0x24uLL))
        {
          break;
        }

        std::string::append(&v7[*(*this - 24)], "Error: Encountered unsupported ray tracing function call\n");
        v5 = *(v5 + 8);
        v6 = 1;
        if (v5 == v4)
        {
          return 0;
        }
      }

      v5 = *(v5 + 8);
    }

    while (v5 != v4);
    if ((v6 & 1) == 0)
    {
      v2 = *this;
      goto LABEL_28;
    }

    return 0;
  }
}

void llvm::PassBuilder::~PassBuilder(llvm::PassBuilder *this)
{
  v2 = *(this + 238);
  v3 = *(this + 478);
  if (v3)
  {
    v4 = &v2[32 * v3 - 32];
    v5 = -32 * v3;
    v6 = v4;
    do
    {
      v7 = *(v6 + 24);
      if (v6 == v7)
      {
        (*(*v7 + 32))(v7);
      }

      else if (v7)
      {
        (*(*v7 + 40))(v7);
      }

      v6 -= 32;
      v4 -= 32;
      v5 += 32;
    }

    while (v5);
    v2 = *(this + 238);
  }

  if (v2 != this + 1920)
  {
    free(v2);
  }

  v8 = *(this + 228);
  v9 = *(this + 458);
  if (v9)
  {
    v10 = &v8[32 * v9 - 32];
    v11 = -32 * v9;
    v12 = v10;
    do
    {
      v13 = *(v12 + 24);
      if (v12 == v13)
      {
        (*(*v13 + 32))(v13);
      }

      else if (v13)
      {
        (*(*v13 + 40))(v13);
      }

      v12 -= 32;
      v10 -= 32;
      v11 += 32;
    }

    while (v11);
    v8 = *(this + 228);
  }

  if (v8 != this + 1840)
  {
    free(v8);
  }

  v14 = *(this + 218);
  v15 = *(this + 438);
  if (v15)
  {
    v16 = &v14[32 * v15 - 32];
    v17 = -32 * v15;
    v18 = v16;
    do
    {
      v19 = *(v18 + 24);
      if (v18 == v19)
      {
        (*(*v19 + 32))(v19);
      }

      else if (v19)
      {
        (*(*v19 + 40))(v19);
      }

      v18 -= 32;
      v16 -= 32;
      v17 += 32;
    }

    while (v17);
    v14 = *(this + 218);
  }

  if (v14 != this + 1760)
  {
    free(v14);
  }

  v20 = *(this + 208);
  v21 = *(this + 418);
  if (v21)
  {
    v22 = &v20[32 * v21 - 32];
    v23 = -32 * v21;
    v24 = v22;
    do
    {
      v25 = *(v24 + 24);
      if (v24 == v25)
      {
        (*(*v25 + 32))(v25);
      }

      else if (v25)
      {
        (*(*v25 + 40))(v25);
      }

      v24 -= 32;
      v22 -= 32;
      v23 += 32;
    }

    while (v23);
    v20 = *(this + 208);
  }

  if (v20 != this + 1680)
  {
    free(v20);
  }

  v26 = *(this + 198);
  v27 = *(this + 398);
  if (v27)
  {
    v28 = &v26[32 * v27 - 32];
    v29 = -32 * v27;
    v30 = v28;
    do
    {
      v31 = *(v30 + 24);
      if (v30 == v31)
      {
        (*(*v31 + 32))(v31);
      }

      else if (v31)
      {
        (*(*v31 + 40))(v31);
      }

      v30 -= 32;
      v28 -= 32;
      v29 += 32;
    }

    while (v29);
    v26 = *(this + 198);
  }

  if (v26 != this + 1600)
  {
    free(v26);
  }

  v32 = *(this + 188);
  v33 = *(this + 378);
  if (v33)
  {
    v34 = &v32[32 * v33 - 32];
    v35 = -32 * v33;
    v36 = v34;
    do
    {
      v37 = *(v36 + 24);
      if (v36 == v37)
      {
        (*(*v37 + 32))(v37);
      }

      else if (v37)
      {
        (*(*v37 + 40))(v37);
      }

      v36 -= 32;
      v34 -= 32;
      v35 += 32;
    }

    while (v35);
    v32 = *(this + 188);
  }

  if (v32 != this + 1520)
  {
    free(v32);
  }

  v38 = *(this + 178);
  v39 = *(this + 358);
  if (v39)
  {
    v40 = &v38[32 * v39 - 32];
    v41 = -32 * v39;
    v42 = v40;
    do
    {
      v43 = *(v42 + 24);
      if (v42 == v43)
      {
        (*(*v43 + 32))(v43);
      }

      else if (v43)
      {
        (*(*v43 + 40))(v43);
      }

      v42 -= 32;
      v40 -= 32;
      v41 += 32;
    }

    while (v41);
    v38 = *(this + 178);
  }

  if (v38 != this + 1440)
  {
    free(v38);
  }

  v44 = *(this + 168);
  v45 = *(this + 338);
  if (v45)
  {
    v46 = &v44[32 * v45 - 32];
    v47 = -32 * v45;
    v48 = v46;
    do
    {
      v49 = *(v48 + 24);
      if (v48 == v49)
      {
        (*(*v49 + 32))(v49);
      }

      else if (v49)
      {
        (*(*v49 + 40))(v49);
      }

      v48 -= 32;
      v46 -= 32;
      v47 += 32;
    }

    while (v47);
    v44 = *(this + 168);
  }

  if (v44 != this + 1360)
  {
    free(v44);
  }

  _ZN4llvm11SmallVectorINSt3__18functionIFbNS_9StringRefERNS_11PassManagerINS_6ModuleENS_15AnalysisManagerIS5_JEEEJEEENS_8ArrayRefINS_11PassBuilder15PipelineElementEEEEEELj2EED2Ev(this + 1264);
  _ZN4llvm11SmallVectorINSt3__18functionIFbNS_9StringRefERNS_11PassManagerINS_6ModuleENS_15AnalysisManagerIS5_JEEEJEEENS_8ArrayRefINS_11PassBuilder15PipelineElementEEEEEELj2EED2Ev(this + 1184);
  v50 = *(this + 138);
  v51 = *(this + 278);
  if (v51)
  {
    v52 = &v50[32 * v51 - 32];
    v53 = -32 * v51;
    v54 = v52;
    do
    {
      v55 = *(v54 + 24);
      if (v54 == v55)
      {
        (*(*v55 + 32))(v55);
      }

      else if (v55)
      {
        (*(*v55 + 40))(v55);
      }

      v54 -= 32;
      v52 -= 32;
      v53 += 32;
    }

    while (v53);
    v50 = *(this + 138);
  }

  if (v50 != this + 1120)
  {
    free(v50);
  }

  _ZN4llvm11SmallVectorINSt3__18functionIFvRNS_11PassManagerINS_6ModuleENS_15AnalysisManagerIS4_JEEEJEEENS_17OptimizationLevelEEEELj2EED2Ev(this + 1024);
  _ZN4llvm11SmallVectorINSt3__18functionIFvRNS_11PassManagerINS_6ModuleENS_15AnalysisManagerIS4_JEEEJEEENS_17OptimizationLevelEEEELj2EED2Ev(this + 944);
  _ZN4llvm11SmallVectorINSt3__18functionIFvRNS_11PassManagerINS_6ModuleENS_15AnalysisManagerIS4_JEEEJEEENS_17OptimizationLevelEEEELj2EED2Ev(this + 864);
  _ZN4llvm11SmallVectorINSt3__18functionIFvRNS_11PassManagerINS_6ModuleENS_15AnalysisManagerIS4_JEEEJEEENS_17OptimizationLevelEEEELj2EED2Ev(this + 784);
  _ZN4llvm11SmallVectorINSt3__18functionIFvRNS_11PassManagerINS_6ModuleENS_15AnalysisManagerIS4_JEEEJEEENS_17OptimizationLevelEEEELj2EED2Ev(this + 704);
  _ZN4llvm11SmallVectorINSt3__18functionIFvRNS_11PassManagerINS_6ModuleENS_15AnalysisManagerIS4_JEEEJEEENS_17OptimizationLevelEEEELj2EED2Ev(this + 624);
  _ZN4llvm11SmallVectorINSt3__18functionIFvRNS_11PassManagerINS_8FunctionENS_15AnalysisManagerIS4_JEEEJEEENS_17OptimizationLevelEEEELj2EED2Ev(this + 544);
  v56 = *(this + 58);
  v57 = *(this + 118);
  if (v57)
  {
    v58 = &v56[32 * v57 - 32];
    v59 = -32 * v57;
    v60 = v58;
    do
    {
      v61 = *(v60 + 24);
      if (v60 == v61)
      {
        (*(*v61 + 32))(v61);
      }

      else if (v61)
      {
        (*(*v61 + 40))(v61);
      }

      v60 -= 32;
      v58 -= 32;
      v59 += 32;
    }

    while (v59);
    v56 = *(this + 58);
  }

  if (v56 != this + 480)
  {
    free(v56);
  }

  _ZN4llvm11SmallVectorINSt3__18functionIFvRNS_11PassManagerINS_8FunctionENS_15AnalysisManagerIS4_JEEEJEEENS_17OptimizationLevelEEEELj2EED2Ev(this + 384);
  llvm::SmallVector<std::function<void ()(llvm::PassManager<llvm::Loop,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>,llvm::LoopStandardAnalysisResults &,llvm::LPMUpdater &> &,llvm::OptimizationLevel)>,2u>::~SmallVector(this + 304);
  llvm::SmallVector<std::function<void ()(llvm::PassManager<llvm::Loop,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>,llvm::LoopStandardAnalysisResults &,llvm::LPMUpdater &> &,llvm::OptimizationLevel)>,2u>::~SmallVector(this + 224);
  _ZN4llvm11SmallVectorINSt3__18functionIFvRNS_11PassManagerINS_8FunctionENS_15AnalysisManagerIS4_JEEEJEEENS_17OptimizationLevelEEEELj2EED2Ev(this + 144);
  if (*(this + 128) == 1)
  {
    v62 = *(this + 15);
    if (v62 && atomic_fetch_add(v62 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v62 + 8))(v62);
    }

    if (*(this + 103) < 0)
    {
      operator delete(*(this + 10));
    }

    if (*(this + 79) < 0)
    {
      operator delete(*(this + 7));
    }

    if (*(this + 55) < 0)
    {
      operator delete(*(this + 4));
    }

    *(this + 128) = 0;
  }
}

uint64_t _ZN4llvm11SmallVectorINSt3__18functionIFbNS_9StringRefERNS_11PassManagerINS_6ModuleENS_15AnalysisManagerIS5_JEEEJEEENS_8ArrayRefINS_11PassBuilder15PipelineElementEEEEEELj2EED2Ev(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 32 * v3 - 32;
    v5 = -32 * v3;
    v6 = v4;
    do
    {
      v7 = *(v6 + 24);
      if (v6 == v7)
      {
        (*(*v7 + 32))(v7);
      }

      else if (v7)
      {
        (*(*v7 + 40))(v7);
      }

      v6 -= 32;
      v4 -= 32;
      v5 += 32;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

uint64_t _ZN4llvm11SmallVectorINSt3__18functionIFvRNS_11PassManagerINS_6ModuleENS_15AnalysisManagerIS4_JEEEJEEENS_17OptimizationLevelEEEELj2EED2Ev(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 32 * v3 - 32;
    v5 = -32 * v3;
    v6 = v4;
    do
    {
      v7 = *(v6 + 24);
      if (v6 == v7)
      {
        (*(*v7 + 32))(v7);
      }

      else if (v7)
      {
        (*(*v7 + 40))(v7);
      }

      v6 -= 32;
      v4 -= 32;
      v5 += 32;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

uint64_t _ZN4llvm11SmallVectorINSt3__18functionIFvRNS_11PassManagerINS_8FunctionENS_15AnalysisManagerIS4_JEEEJEEENS_17OptimizationLevelEEEELj2EED2Ev(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 32 * v3 - 32;
    v5 = -32 * v3;
    v6 = v4;
    do
    {
      v7 = *(v6 + 24);
      if (v6 == v7)
      {
        (*(*v7 + 32))(v7);
      }

      else if (v7)
      {
        (*(*v7 + 40))(v7);
      }

      v6 -= 32;
      v4 -= 32;
      v5 += 32;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

uint64_t llvm::SmallVector<std::function<void ()(llvm::PassManager<llvm::Loop,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>,llvm::LoopStandardAnalysisResults &,llvm::LPMUpdater &> &,llvm::OptimizationLevel)>,2u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 32 * v3 - 32;
    v5 = -32 * v3;
    v6 = v4;
    do
    {
      v7 = *(v6 + 24);
      if (v6 == v7)
      {
        (*(*v7 + 32))(v7);
      }

      else if (v7)
      {
        (*(*v7 + 40))(v7);
      }

      v6 -= 32;
      v4 -= 32;
      v5 += 32;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

uint64_t AGCLLVMCtx::initializePlan(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, std::string *a5, unsigned __int8 a6, uint64_t a7)
{
  if ((*(a2 + 16) & 1) == 0)
  {
    v9 = result;
    llvm::AGX::AGXCompiler::createCompilePlan();
    LOBYTE(v26) = 1;
    if (llvm::AGX::AGXCompilePlan::isValid(v27))
    {
      llvm::AGX::AGXCompilePlan::AGXCompilePlan();
      if (*(a2 + 16) == 1)
      {
        MEMORY[0x20F330BA0](a2);
        *(a2 + 16) = 0;
      }

      llvm::AGX::AGXCompilePlan::AGXCompilePlan();
      *(a2 + 16) = 1;
      MEMORY[0x20F330BA0](v18);
    }

    else
    {
      llvm::AGX::AGXCompiler::getLastDiagnostics(&v24, (v9 + 48));
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v18);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v19, "Create Plan failed:\n", 20);
      v10 = v24;
      v11 = v25;
      while (v10 != v11)
      {
        v10 += 8;
        v12 = llvm::AGX::operator<<();
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, "\n", 1);
      }

      std::stringbuf::str();
      if ((v17 & 0x80u) == 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      if ((v17 & 0x80u) == 0)
      {
        v14 = v17;
      }

      else
      {
        v14 = __p[1];
      }

      std::string::append(a5, v13, v14);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      v18[0] = *MEMORY[0x277D82818];
      v15 = *(MEMORY[0x277D82818] + 72);
      *(v18 + *(v18[0] - 3)) = *(MEMORY[0x277D82818] + 64);
      v19 = v15;
      v20 = MEMORY[0x277D82878] + 16;
      if (v22 < 0)
      {
        operator delete(v21[7].__locale_);
      }

      v20 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v21);
      std::iostream::~basic_iostream();
      MEMORY[0x20F331D40](&v23);
      v18[0] = &v24;
      std::vector<std::unique_ptr<llvm::AGX::Diagnostic>>::__destroy_vector::operator()[abi:nn200100](v18);
    }

    return MEMORY[0x20F330BA0](v27);
  }

  return result;
}

void std::__list_imp<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        v2[3] = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::LazyCallGraph::SCC *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator>>>>,llvm::DenseMapInfo<llvm::LazyCallGraph::SCC *,void>,llvm::detail::DenseMapPair<llvm::LazyCallGraph::SCC *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator>>>>>>,llvm::LazyCallGraph::SCC *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator>>>>,llvm::DenseMapInfo<llvm::LazyCallGraph::SCC *,void>,llvm::detail::DenseMapPair<llvm::LazyCallGraph::SCC *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator>>>>>>::destroyAll(unsigned int *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = 32 * v1;
    v3 = (*result + 8);
    do
    {
      if ((*(v3 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        std::__list_imp<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator>>>>::clear(v3);
      }

      v3 += 4;
      v2 -= 32;
    }

    while (v2);
  }
}

uint64_t llvm::SmallVector<llvm::unique_function<void ()(llvm::StringRef)>,4u>::~SmallVector(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = v5 + 32 * v6 - 32;
    v8 = -32 * v6;
    do
    {
      v9 = *(v7 + 24);
      if (v9 >= 8)
      {
        if ((v9 & 4) != 0)
        {
          v10 = v7;
          if ((v9 & 2) == 0)
          {
            v10 = *v7;
          }

          (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v10, a2, a3, a4);
        }

        if ((v9 & 2) == 0)
        {
          llvm::deallocate_buffer(v6, *v7, *(v7 + 8));
        }
      }

      v7 -= 32;
      v8 += 32;
    }

    while (v8);
    v5 = *a1;
  }

  if (v5 != (a1 + 16))
  {
    free(v5);
  }

  return a1;
}

void std::vector<std::unique_ptr<llvm::detail::PassConcept<llvm::Module,llvm::AnalysisManager<llvm::Module>>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>>>,llvm::Function *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>>>::destroyAll(unsigned int *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = 32 * v1;
    v3 = (*result + 8);
    do
    {
      if ((*(v3 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        std::__list_imp<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>::clear(v3);
      }

      v3 += 4;
      v2 -= 32;
    }

    while (v2);
  }
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::Loop *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator>>>>,llvm::DenseMapInfo<llvm::Loop *,void>,llvm::detail::DenseMapPair<llvm::Loop *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator>>>>>>,llvm::Loop *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator>>>>,llvm::DenseMapInfo<llvm::Loop *,void>,llvm::detail::DenseMapPair<llvm::Loop *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator>>>>>>::destroyAll(unsigned int *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = 32 * v1;
    v3 = (*result + 8);
    do
    {
      if ((*(v3 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        std::__list_imp<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator>>>>::clear(v3);
      }

      v3 += 4;
      v2 -= 32;
    }

    while (v2);
  }
}

void llvm::detail::PassModel<llvm::Module,ReplaceTensorIntrinsicsPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::~PassModel(uint64_t a1)
{
  *a1 = &unk_2825A7740;
  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(a1 + 40));
  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(a1 + 16));

  JUMPOUT(0x20F331DC0);
}

void llvm::detail::PassModel<llvm::Module,llvm::ModuleToFunctionPassAdaptor,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::~PassModel(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2825B0098;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x20F331DC0);
}

void MTLCompilerReleaseReply(uint64_t a1)
{
  free(*a1);
  free(*(a1 + 16));
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::Module *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::DenseMapInfo<llvm::Module *,void>,llvm::detail::DenseMapPair<llvm::Module *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>>>,llvm::Module *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::DenseMapInfo<llvm::Module *,void>,llvm::detail::DenseMapPair<llvm::Module *,std::list<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>>>::destroyAll(unsigned int *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v2 = 32 * v1;
    v3 = (*a1 + 8);
    do
    {
      if ((*(v3 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        std::__list_imp<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::clear(v3);
      }

      v3 += 4;
      v2 -= 32;
    }

    while (v2);
  }
}

void llvm::detail::AnalysisResultModel<llvm::Module,MetadataAnalysis,MetadataAnalysis::Result,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator,true>::~AnalysisResultModel(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = &unk_2825A7598;
  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap((a1 + 21), a2, a3, a4);
  v5 = a1[11];
  if (v5 != a1 + 13)
  {
    free(v5);
  }

  v6 = a1[1];
  if (v6 != a1 + 3)
  {
    free(v6);
  }

  JUMPOUT(0x20F331DC0);
}

unsigned int *llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator,llvm::LazyCallGraph&>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator,llvm::LazyCallGraph&>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator,llvm::LazyCallGraph&>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator,llvm::LazyCallGraph&>>>>::destroyAll(unsigned int *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = 16 * v1;
    v3 = (*result + 8);
    do
    {
      if ((*(v3 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        result = *v3;
        *v3 = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }
      }

      v3 += 2;
      v2 -= 16;
    }

    while (v2);
  }

  return result;
}

unsigned int *llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::destroyAll(unsigned int *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = 16 * v1;
    v3 = (*result + 8);
    do
    {
      if ((*(v3 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        result = *v3;
        *v3 = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }
      }

      v3 += 2;
      v2 -= 16;
    }

    while (v2);
  }

  return result;
}

unsigned int *llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>::destroyAll(unsigned int *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = 16 * v1;
    v3 = (*result + 8);
    do
    {
      if ((*(v3 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        result = *v3;
        *v3 = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }
      }

      v3 += 2;
      v2 -= 16;
    }

    while (v2);
  }

  return result;
}

unsigned int *llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator,llvm::LoopStandardAnalysisResults &>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator,llvm::LoopStandardAnalysisResults &>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator,llvm::LoopStandardAnalysisResults &>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator,llvm::LoopStandardAnalysisResults &>>>>::destroyAll(unsigned int *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = 16 * v1;
    v3 = (*result + 8);
    do
    {
      if ((*(v3 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        result = *v3;
        *v3 = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }
      }

      v3 += 2;
      v2 -= 16;
    }

    while (v2);
  }

  return result;
}

uint64_t llvm::StringMap<std::string,llvm::MallocAllocator>::~StringMap(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 12))
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      v6 = 0;
      v7 = 8 * v5;
      do
      {
        v8 = *(*a1 + v6);
        if (v8 != -8 && v8 != 0)
        {
          v10 = *v8;
          v11 = *(v8 + 31);
          if ((v11 & 0x80000000) != 0)
          {
            operator delete(*(v8 + 1));
          }

          llvm::deallocate_buffer(v11, v8, (v10 + 33));
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  free(*a1);
  return a1;
}

void AGCLLVMUserObject::replaceBufferInputArgument(uint64_t *a1, llvm::Type **a2, unsigned int a3, uint64_t a4, unsigned int a5)
{
  v38 = *MEMORY[0x277D85DE8];
  v33 = 1;
  v34 = a3;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v8 = *(*a2 + 2);
  if ((v8 & 0xFE) == 0x12)
  {
    v8 = *(**(*a2 + 2) + 8);
  }

  v27 = 0;
  parseMDBuffer(a4, v8 >> 8, &v34, &v33, &v32, &v31 + 1, &v29, &v27, &v30, &v31, &v28);
  v9 = v30;
  *(a1 + 3760) |= v30;
  if (a5 != -1)
  {
    v34 = a5;
  }

  if (v28 == 1)
  {
    llvm::Type::isOpaquePointerTy(*a2);
    v24 = a2[1];
    if (!v24)
    {
      goto LABEL_29;
    }

    while (1)
    {
      v25 = *(v24 + 3);
      v26 = *(v25 + 16);
      if (v26 <= 0x1B)
      {
        if (v26 == 5 && *(v25 + 18) == 34)
        {
LABEL_28:
          llvm::GEPOperator::getSourceElementType(v25);
LABEL_29:
          operator new();
        }
      }

      else if (v26 == 62)
      {
        goto LABEL_28;
      }

      v24 = *(v24 + 1);
      if (!v24)
      {
        goto LABEL_29;
      }
    }
  }

  v10 = v34;
  (*(*a1 + 304))(a1, a2, v34, 0xFFFFFFFFLL);
  v11 = *(a1[21] + 80);
  if (v11)
  {
    v12 = v11 - 24;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v12 + 40);
  if (v13)
  {
    v14 = (v13 - 24);
  }

  else
  {
    v14 = 0;
  }

  llvm::IRBuilderBase::SetInsertPoint((a1 + *(*a1 - 24) + 1712), v14);
  if (v9)
  {
    v15 = v31;
  }

  else
  {
    v15 = 0xFFFFFFFFLL;
  }

  v16 = AGCLLVMUserObject::setupBufferArgumentData(a1, *a2, v10, -1, v32, v27, v15);
  v18 = v17;
  llvm::Value::replaceAllUsesWith();
  if (llvm::Argument::hasAttribute())
  {
    inserted = llvm::Module::getOrInsertNamedMetadata();
    if (!llvm::NamedMDNode::getNumOperands(inserted))
    {
      v35 = llvm::MDString::get();
      llvm::MDTuple::getImpl();
      llvm::NamedMDNode::addOperand();
    }

    llvm::Module::getOrInsertNamedMetadata();
    Operand = llvm::NamedMDNode::getOperand(inserted);
    v35 = llvm::ValueAsMetadata::get();
    v36 = Operand;
    llvm::Value::getName(v18);
    v37 = llvm::MDString::get();
    Impl = llvm::MDTuple::getImpl();
    llvm::MDNode::replaceOperandWith();
    llvm::NamedMDNode::addOperand();
    v22 = *(a1 + 1022);
    if (v22 >= *(a1 + 1023))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v23 = (a1[510] + 16 * v22);
    *v23 = v16;
    v23[1] = Impl;
    ++*(a1 + 1022);
  }
}

BOOL parseMDBuffer(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, unsigned int *a5, _DWORD *a6, uint64_t *a7, char *a8, _BYTE *a9, unsigned int *a10, char *a11)
{
  v43 = a2;
  if (!isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8), "air.buffer") && !isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8), "air.indirect_buffer") && !isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8), "air.visible_function_table") && !isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8), "air.primitive_acceleration_structure") && !isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8), "air.instance_acceleration_structure") && !isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8), "air.intersection_function_table"))
  {
    result = isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8), "air.tensor");
    if (!result)
    {
      return result;
    }
  }

  *a9 = 0;
  v18 = *(a1 + 8);
  LODWORD(v50) = 2;
  if (v18 >= 3)
  {
    do
    {
      if ((parseMDLocationIndex(a1, &v50, a3, a4) & 1) == 0 && (parseMDInt("air.buffer_size", a1, &v50, a5) & 1) == 0 && (parseMDInt("air.arg_type_size", a1, &v50, a6) & 1) == 0 && !parseMDType<llvm::MDNode>("air.struct_type_info", a1, &v50, a7) && (parseMDInt("air.address_space", a1, &v50, &v43) & 1) == 0)
      {
        if (parseMDInt("air.raster_order_group", a1, &v50, a10))
        {
          v19 = *a10;
          if (*a10 >= 7)
          {
            v19 = 7;
          }

          *a10 = v19;
          *a9 = 1;
        }

        else if (!parseMDAccess(a1, &v50, a8))
        {
          LODWORD(v50) = v50 + 1;
        }
      }
    }

    while (v50 < v18);
  }

  v20 = *a5;
  if (*a5)
  {
    if (v43 == 2 && v20 <= 0xFFFFFFFC)
    {
      v20 = (v20 + 3) & 0xFFFFFFFC;
    }

    *a5 = v20;
  }

  if (!*a7)
  {
    v36 = 0;
    goto LABEL_69;
  }

  v55 = *a7;
  v50 = v54;
  v51 = v54;
  v52 = 4;
  v53 = 0;
  v48 = 0u;
  v49 = 0u;
  *__p = 0u;
  std::deque<llvm::MDNode const*>::push_back(__p, &v55);
  v22 = *(&v49 + 1);
  if (!*(&v49 + 1))
  {
    v36 = 0;
    goto LABEL_60;
  }

  while (1)
  {
    v23 = __p[1];
    v24 = v49;
    v25 = *(*(__p[1] + ((v49 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v49 & 0x1FF));
    --v22;
    *&v49 = v49 + 1;
    *(&v49 + 1) = v22;
    if (v49 >= 0x400)
    {
      operator delete(*__p[1]);
      __p[1] = v23 + 8;
      *&v49 = v24 - 511;
    }

    llvm::SmallPtrSetImplBase::insert_imp(&v50, v25);
    if (v26)
    {
      v46 = 0;
      v27 = v25[2];
      if (v27)
      {
        break;
      }
    }

LABEL_55:
    if (!v22)
    {
      v36 = 0;
      goto LABEL_60;
    }
  }

  while (1)
  {
    v45 = 0;
    if (!parseMDType<llvm::MDNode>("air.struct_type_info", v25, &v46, &v45))
    {
      break;
    }

    std::deque<llvm::MDNode const*>::push_back(__p, &v45);
    v28 = v46;
LABEL_53:
    if (v28 >= v27)
    {
      v22 = *(&v49 + 1);
      goto LABEL_55;
    }
  }

  v29 = v46;
  if (!isStringMDNode(*&v25[2 * v46 + -2 * v25[2]], "air.indirect_argument"))
  {
    v28 = v29 + 1;
    goto LABEL_52;
  }

  v28 = v29 + 1;
  v56[0] = v29 + 1;
  if (parseMDInt(0, v25, v56, &v44))
  {
    goto LABEL_50;
  }

  v30 = *&v25[2 * v28 + -2 * v25[2]];
  if (!v30)
  {
    goto LABEL_52;
  }

  v31 = *v30;
  if (v31 > 0x22 || ((0x7FFFFFFF0uLL >> v31) & 1) == 0)
  {
    goto LABEL_52;
  }

  String = llvm::MDString::getString(*&v30[-8 * *(v30 + 2) + 8]);
  if (v33 == 21)
  {
    v34 = *String == 0x69646E692E726961 && String[1] == 0x6E6F635F74636572;
    if (v34 && *(String + 13) == 0x746E6174736E6F63)
    {
LABEL_50:
      v28 = v29 + 2;
LABEL_52:
      v46 = v28;
      goto LABEL_53;
    }
  }

  v36 = 1;
LABEL_60:
  v37 = __p[1];
  v38 = v48;
  v39 = v48 - __p[1];
  if (v48 - __p[1] >= 0x11)
  {
    do
    {
      v40 = *v37++;
      operator delete(v40);
      v39 -= 8;
    }

    while (v39 > 0x10);
  }

  while (v37 != v38)
  {
    v41 = *v37++;
    operator delete(v41);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v51 != v50)
  {
    free(v51);
  }

LABEL_69:
  *a11 = v36;
  return 1;
}

BOOL parseMDType<llvm::MDNode>(const char *a1, uint64_t a2, _DWORD *a3, void *a4)
{
  v7 = *(a2 - 8 * *(a2 + 8) + 8 * *a3);
  if (a1)
  {
    result = isStringMDNode(v7, a1);
    if (!result)
    {
      return result;
    }

    v10 = (*a3)++;
    v11 = *(a2 - 8 * *(a2 + 8) + 8 * (v10 + 1));
    if (v11)
    {
      if (((*v11 < 0x23uLL) & (0x7FFFFFFF0uLL >> *v11)) == 0)
      {
        v11 = 0;
      }
    }

    *a4 = v11;
    *a3 = v10 + 2;
  }

  else
  {
    if (v7)
    {
      if (((*v7 < 0x23uLL) & (0x7FFFFFFF0uLL >> *v7)) != 0)
      {
        v11 = *(a2 - 8 * *(a2 + 8) + 8 * *a3);
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    *a4 = v11;
  }

  return v11 != 0;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::MDNode const**>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t AGCLLVMAGPFragmentShader::agpParseStageIOMetadata(AGCLLVMUserShader *a1, uint64_t a2, uint64_t *a3, int *a4, int *a5, int *a6, unsigned int *a7, _BYTE *a8)
{
  v14 = a1;
  AGCLLVMUserShader::getVaryingModeMap(a1);
  AGCLLVMUserShader::getInterpolationLocationMap(v15);
  result = llvm::MDString::getString(*(a2 - 8 * *(a2 + 8) + 16));
  *a3 = result;
  a3[1] = v17;
  *a6 = 0;
  *a7 = 10;
  *a8 = 0;
  v18 = *(a2 + 8);
  if (v18 < 4)
  {
    *a4 = 1;
    goto LABEL_51;
  }

  v41 = a6;
  v42 = a8;
  v43 = v14;
  v44 = a7;
  v19 = 2;
  v20 = 3;
  v21 = 1;
  v22 = 1;
  do
  {
    String = llvm::MDString::getString(*(a2 - 8 * v18 + 8 * v20));
    v25 = v24;
    Key = llvm::StringMapImpl::FindKey();
    if (Key != -1 && Key != qword_28117E558)
    {
      result = llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserShader::getVaryingModeMap(void)::varying_mode_map, String, v25);
      v21 = 0;
      v30 = *(*result + 8);
LABEL_22:
      *a4 = v30;
      goto LABEL_23;
    }

    result = llvm::StringMapImpl::FindKey();
    if (result != -1 && result != dword_28117E538)
    {
      result = llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserShader::getInterpolationLocationMap(void)::interpolation_location_map, String, v25);
      v22 = 0;
      *a5 = *(*result + 8);
      goto LABEL_23;
    }

    if (v25 > 16)
    {
      if (v25 == 26)
      {
        if (*String == 0x65746E692E726961 && String[1] == 0x6F6974616C6F7072 && String[2] == 0x6974636E75665F6ELL && *(String + 12) == 28271)
        {
          *v42 = 1;
        }
      }

      else if (v25 == 17)
      {
        v31 = *String == 0x5F6772612E726961 && String[1] == 0x6D616E5F65707974;
        if (v31 && *(String + 16) == 101)
        {
          v20 = v19 + 2;
          v33 = llvm::MDString::getString(*(a2 - 8 * *(a2 + 8) + 8 * (v19 + 2)));
          result = AGCLLVMBuilder::getComponentType(v33, v34, v41);
          *v44 = result;
        }
      }
    }

    else if (v25 == 12)
    {
      if (!(*String ^ 0x5F6772612E726961 | *(String + 2) ^ 0x656D616ELL))
      {
        v20 = v19 + 2;
      }
    }

    else if (v25 == 16 && *String == 0x747265762E726961 && String[1] == 0x65756C61765F7865)
    {
      v21 = 0;
      v30 = 5;
      goto LABEL_22;
    }

LABEL_23:
    v19 = v20++;
    v18 = *(a2 + 8);
  }

  while (v20 < v18);
  v40 = *v44;
  if (v21)
  {
    *a4 = v40 > 1;
  }

  v14 = v43;
  if ((v22 & 1) == 0)
  {
    v39 = *a5 == 3;
    goto LABEL_59;
  }

  if (v40 >= 2)
  {
LABEL_51:
    v38 = 3;
    v39 = 1;
    goto LABEL_52;
  }

  v39 = 0;
  v38 = 0;
LABEL_52:
  *a5 = v38;
LABEL_59:
  if (*a4 == 1 && !v39)
  {
    *a5 = 3;
  }

  if (*(*(v14 + 801) + 69))
  {
    result = llvm::StringMapImpl::FindKey();
    if (result != -1 && result != *(v14 + 1622) && (*(*(*(v14 + 810) + 8 * result) + 8) & 0xF) == 3)
    {
      *a4 = 3;
    }
  }

  return result;
}

uint64_t *llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(llvm::StringMapImpl *a1, const void *a2, size_t a3)
{
  i = (*a1 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v7 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v7)
  {
    while (!v7 || v7 == -8)
    {
      v8 = i[1];
      ++i;
      v7 = v8;
    }

    return i;
  }

  v10 = MEMORY[0x20F330650](a3 + 17, 8);
  v11 = v10;
  v12 = v10 + 16;
  if (a3)
  {
    memcpy((v10 + 16), a2, a3);
  }

  *(v12 + a3) = 0;
  *v11 = a3;
  *(v11 + 8) = 0;
  *i = v11;
  ++*(a1 + 3);
    ;
  }

  return i;
}

uint64_t AGCLLVMBuilder::getComponentType(AGCLLVMBuilder *a1, unint64_t a2, int *a3)
{
  AGCLLVMBuilder::getVariableTypeMap(a1);
  *a3 = 1;
  v6 = *(a1 + 1);
  if (v6 < 0 || (*(MEMORY[0x277D85DE0] + 4 * v6 + 60) & 0x400) == 0)
  {
    v7 = *(a1 + a2 - 1);
    if ((v7 & 0x8000000000000000) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v7 + 60) & 0x400) != 0)
    {
      if (a2 >= a2 - 1)
      {
        --a2;
      }

      *a3 = atoi(a1 + a2);
    }
  }

  Key = llvm::StringMapImpl::FindKey();
  result = 10;
  if (Key != -1 && Key != dword_28117E4D0)
  {
    return *(*(AGCLLVMBuilder::getVariableTypeMap(void)::variable_type_map + 8 * Key) + 8);
  }

  return result;
}

void AGCLLVMBuilder::getVariableTypeMap(AGCLLVMBuilder *this)
{
  {
    AGCLLVMBuilder::getVariableTypeMap(void)::variable_type_map = 0;
    *&dword_28117E4D0 = 0;
    qword_28117E4D8 = 0x1000000000;
    __cxa_atexit(llvm::StringMap<ComponentType,llvm::MallocAllocator>::~StringMap, &AGCLLVMBuilder::getVariableTypeMap(void)::variable_type_map, &dword_20E4E1000);
  }

  if (atomic_load_explicit(&AGCLLVMBuilder::getVariableTypeMap(void)::flag, memory_order_acquire) != -1)
  {
    v3[0] = &v1;
    v3[1] = &AGCLLVMBuilder::getVariableTypeMap(void)::variable_type_map;
    v2 = v3;
    std::__call_once(&AGCLLVMBuilder::getVariableTypeMap(void)::flag, &v2, std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMBuilder::getVariableTypeMap(void)::{lambda(llvm::StringMap<ComponentType,llvm::MallocAllocator> &)#1} &,llvm::StringMap<ComponentType,llvm::MallocAllocator> &>>);
  }
}

void AGCLLVMAGPFragmentShader::getFragmentVarying(uint64_t a1, void *a2, uint64_t a3, void *a4, size_t a5, uint64_t a6, uint64_t a7, llvm::Type *a8, int a9, char a10)
{
  v11 = a7;
  v12 = a6;
  v17 = *(a2 + 1630);
  Key = llvm::StringMapImpl::FindKey();
  if (Key == -1 || Key == *(a2 + 1622))
  {
    v19 = 0;
  }

  else
  {
    v19 = *(*(a2[810] + 8 * Key) + 8) >> 31;
  }

  GenericVarying::GenericVarying(v33, a8, a9, v12, v11, v17, v19);
  if (a4)
  {
    std::string::basic_string[abi:nn200100](&__dst, a4, a5);
  }

  else
  {
    __dst = 0uLL;
    v32 = 0;
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p);
  }

  __p = __dst;
  v35 = v32;
  llvm::SmallVectorTemplateBase<GenericVarying,false>::push_back((a2 + 814), v33);
  *(a1 + 48) = a1 + 64;
  *(a1 + 16) = 0;
  *a1 = 0u;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 56) = 0x500000000;
  llvm::SmallVectorImpl<unsigned int>::assign((a1 + 48), 5uLL, -559038737);
  *a1 = a8;
  *(a1 + 4) = v12;
  *(a1 + 8) = v11;
  *(a1 + 12) = a9;
  *(a1 + 16) = v17;
  *(a1 + 24) = a3;
  if (a10)
  {
    v20 = a2 + 4 * a8;
    ++*(v20 + 1762);
    v21 = &a2[4 * a8];
    llvm::SmallVectorTemplateBase<AGCCodeTranslator::ComputeVIRegType,true>::push_back((v21 + 901), v17);
    v22 = (v21 + 921);
    v23 = 1;
LABEL_16:
    llvm::SmallVectorTemplateBase<AGCCodeTranslator::ComputeVIRegType,true>::push_back(v22, v23);
    v24 = 0;
    v26 = *(v20 + 1767);
    *(v20 + 1767) = v26 + 1;
    *(*(a1 + 48) + 4 * a8) = v26;
    goto LABEL_17;
  }

  if (v12 == 5)
  {
    v20 = a2 + 4 * a8;
    ++*(v20 + 1762);
    v25 = &a2[4 * a8];
    llvm::SmallVectorTemplateBase<AGCCodeTranslator::ComputeVIRegType,true>::push_back((v25 + 901), v17);
    v22 = (v25 + 921);
    v23 = 10;
    goto LABEL_16;
  }

  if (v12 == 3)
  {
    v24 = (*(*a2 + 680))(a2, v17, a8, a9 == 1);
LABEL_17:
    v27 = 32;
    goto LABEL_18;
  }

  v28 = AGCLLVMUserFragmentShader::setupInterpolation(a2, 1u, v17, a8);
  v24 = v29;
  *(a1 + 32) = v28;
  v27 = 40;
LABEL_18:
  *(a1 + v27) = v24;
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p);
  }
}

void *std::string::basic_string[abi:nn200100](void *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  *(__dst + __len) = 0;
  return __dst;
}

uint64_t GenericVarying::GenericVarying(uint64_t result, int a2, int a3, int a4, int a5, int a6, int a7)
{
  *result = a2;
  *(result + 4) = a3;
  *(result + 8) = a4;
  *(result + 12) = a5;
  *(result + 16) = a6;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = a3 == 1;
  *(result + 57) = a7;
  *(result + 58) = 0;
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        return result;
      }

      v7 = a3 == 1;
      if (a7)
      {
        v8 = 11;
        v9 = 15;
      }

      else
      {
        v8 = 2;
        v9 = 6;
      }
    }

    else
    {
      v7 = a3 == 1;
      if (!a7)
      {
        if (a3 == 1)
        {
          v8 = 5;
        }

        else
        {
          v8 = 1;
        }

        goto LABEL_29;
      }

      v8 = 10;
      v9 = 14;
    }
  }

  else
  {
    switch(a4)
    {
      case 2:
        v7 = a3 == 1;
        if (a7)
        {
          v8 = 12;
          v9 = 16;
        }

        else
        {
          v8 = 3;
          v9 = 7;
        }

        break;
      case 3:
        if (a7)
        {
          v8 = 20;
        }

        else
        {
          v8 = 18;
        }

        if (a3 == 1)
        {
          ++v8;
        }

        goto LABEL_29;
      case 5:
        v7 = a3 == 1;
        if (a7)
        {
          v8 = 13;
          v9 = 17;
        }

        else
        {
          v8 = 4;
          v9 = 8;
        }

        break;
      default:
        return result;
    }
  }

  if (v7)
  {
    v8 = v9;
  }

LABEL_29:
  *(result + 60) = v8;
  return result;
}

__int128 *llvm::SmallVectorTemplateBase<AGCLLVMUserFragmentShader::FragmentVarying,false>::push_back(uint64_t a1, unint64_t a2)
{
  result = llvm::SmallVectorTemplateCommon<AGCLLVMUserFragmentShader::FragmentVarying,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<AGCLLVMUserFragmentShader::FragmentVarying,false>>(a1, a2);
  v4 = *a1 + 88 * *(a1 + 8);
  v5 = *result;
  v6 = result[2];
  *(v4 + 16) = result[1];
  *(v4 + 32) = v6;
  *v4 = v5;
  *(v4 + 56) = 0x500000000;
  *(v4 + 48) = v4 + 64;
  v7 = v4 + 48;
  if (*(result + 14))
  {
    result = llvm::SmallVectorImpl<unsigned int>::operator=(v7, (result + 3));
  }

  ++*(a1 + 8);
  return result;
}

unint64_t llvm::SmallVectorTemplateCommon<AGCLLVMUserFragmentShader::FragmentVarying,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<AGCLLVMUserFragmentShader::FragmentVarying,false>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    if (*a1 > a2 || *a1 + 88 * v2 <= a2)
    {
      llvm::SmallVectorTemplateBase<AGCLLVMUserFragmentShader::FragmentVarying,false>::grow(a1, v2 + 1);
    }

    llvm::SmallVectorTemplateBase<AGCLLVMUserFragmentShader::FragmentVarying,false>::grow(a1, v2 + 1);
  }

  return a2;
}

llvm::Value *AGCLLVMUserFragmentShader::replaceInterpolation(uint64_t *a1, unsigned int *a2, unsigned int a3)
{
  v5 = a2[3];
  v6 = *a2;
  if (a2[1] == 1)
  {
    *(a1 + 6429) = 1;
    v7 = 3;
  }

  else
  {
    v7 = a2[2];
    if (v7 == 1)
    {
      if (*(a1 + 1136) <= 1)
      {
        *(a1 + 1136) = 2;
      }

      v7 = 1;
    }
  }

  v8 = llvm::PointerType::get();
  if (a2[1] == 3 || (v9 = a1 + *(*a1 - 24), v10 = *(a2 + 4), v66 = 257, Cast = llvm::IRBuilderBase::CreateCast((v9 + 1712), 49, v10, v8, v65), v12 = a2[1], v12 == 5) || v12 == 3)
  {
    v13 = a1 + *(*a1 - 24);
    v14 = *(a2 + 4);
    v66 = 257;
    Load = AGCLLVMBuilder::CreateLoad((v13 + 1704), v14, v65);
    goto LABEL_11;
  }

  v18 = Cast;
  if (v7 != 3)
  {
    v20 = a1 + *(*a1 - 24);
    v21 = *(v20 + 271);
    if (v12)
    {
      v51 = *(v20 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v52, (v20 + 1712));
      v53 = *(v20 + 452);
      Load = (*(*v21 + 280))(v21, &v51, v6, v7, v18, 0, 0);
      if (!v52)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v54 = *(v20 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v55, (v20 + 1712));
      v56 = *(v20 + 452);
      Load = (*(*v21 + 280))(v21, &v54, v6, v7, v18, 0, a1[785]);
      if (!v55)
      {
        goto LABEL_11;
      }
    }

    llvm::MetadataTracking::untrack();
    goto LABEL_11;
  }

  if (*(*(a1 + *(*a1 - 24) + 2168) + 1887) == 1 && ((*(a1 + 14) & 1) != 0 || (*(a1[801] + 68) & 2) != 0))
  {
    if (!llvm::Module::getGlobalVariable())
    {
      v22 = llvm::User::operator new(0x58);
      v65[0] = "agc.provoking_vertex_index";
      v66 = 259;
      llvm::GlobalVariable::GlobalVariable();
      llvm::GlobalObject::setSection();
      AGCLLVMBuilder::setupGlobalMetadata((a1 + *(*a1 - 24) + 1704), v22, 0x70u, 0);
      v23 = a1 + *(*a1 - 24);
      v62 = *(v23 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v63, (v23 + 1712));
      v64 = *(v23 + 452);
      v24 = a1 + *(*a1 - 24);
      v25 = *(*(*(v24 + 220) + 56) + 80);
      if (v25)
      {
        v26 = (v25 - 24);
      }

      else
      {
        v26 = 0;
      }

      FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v26);
      llvm::IRBuilderBase::SetInsertPoint((v24 + 1712), v26, FirstInsertionPt);
      v28 = (a1 + *(*a1 - 24));
      v66 = 257;
      v29 = AGCLLVMBuilder::CreateLoad((v28 + 213), v22, v65);
      v30 = llvm::ConstantInt::get();
      v61 = 257;
      llvm::IRBuilderBase::CreateICmp(v28 + 214, 33, v29, v30, v60);
      llvm::ConstantInt::get();
      llvm::ConstantInt::get();
      v66 = 257;
      Select = llvm::IRBuilderBase::CreateSelect();
      llvm::ValueHandleBase::operator=((a1 + 796), Select);
      v32 = a1 + *(*a1 - 24);
      v57 = v62;
      v58 = v63;
      if (v63)
      {
        llvm::MetadataTracking::track();
      }

      v59 = v64;
      AGCLLVMBuilder::InsertPoint::restoreIP(&v57, (v32 + 1712));
      if (v58)
      {
        llvm::MetadataTracking::untrack();
      }

      if (v63)
      {
        llvm::MetadataTracking::untrack();
      }
    }
  }

  else
  {
    v19 = llvm::ConstantInt::get();
    llvm::ValueHandleBase::operator=((a1 + 796), v19);
  }

  llvm::FixedVectorType::get();
  Load = llvm::UndefValue::get();
  if (!v6)
  {
    if (v5 >= 2)
    {
      goto LABEL_41;
    }

    return AGCLLVMBuilder::truncateToSmall(a1 + *(*a1 - 24) + 1704, Load, v5);
  }

  v50 = v5;
  v33 = 0;
  do
  {
    v34 = a1 + *(*a1 - 24);
    v35 = *(v34 + 252);
    v36 = v6;
    v37 = v18;
    ConstInBoundsGEP1_32 = AGCLLVMBuilder::CreateConstInBoundsGEP1_32((v34 + 1704), v35, v18, v33);
    v66 = 257;
    llvm::Type::isOpaquePointerTy(*ConstInBoundsGEP1_32);
    v39 = ConstInBoundsGEP1_32;
    v18 = v37;
    v6 = v36;
    AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v34 + 214, v35, v39, 0, v65);
    v41 = *(*a1 - 24);
    v42 = a1[798];
    v66 = 257;
    Element = llvm::IRBuilderBase::CreateExtractElement((a1 + v41 + 1712), AlignedLoad, v42, v65);
    v44 = a1 + *(*a1 - 24) + 1704;
    v66 = 257;
    v45 = llvm::ConstantInt::get();
    Load = llvm::IRBuilderBase::CreateInsertElement((v44 + 8), Load, Element, v45, v65);
    ++v33;
  }

  while (v36 != v33);
  if (v36 == 1)
  {
    v46 = a1 + *(*a1 - 24);
    v66 = 257;
    v47 = llvm::ConstantInt::get();
    Load = llvm::IRBuilderBase::CreateExtractElement((v46 + 1712), Load, v47, v65);
    v5 = v50;
    if (v50 < 2)
    {
      return AGCLLVMBuilder::truncateToSmall(a1 + *(*a1 - 24) + 1704, Load, v5);
    }

    goto LABEL_13;
  }

  v5 = v50;
LABEL_11:
  if (v5 >= 2)
  {
    if (v6 == 1)
    {
LABEL_13:
      v16 = *a1;
      v17 = *(a1 + *(*a1 - 24) + 1904);
LABEL_42:
      v48 = a1 + *(v16 - 24);
      v66 = 257;
      Load = llvm::IRBuilderBase::CreateCast((v48 + 1712), 49, Load, v17, v65);
      return AGCLLVMBuilder::truncateToSmall(a1 + *(*a1 - 24) + 1704, Load, v5);
    }

LABEL_41:
    v17 = llvm::FixedVectorType::get();
    v16 = *a1;
    goto LABEL_42;
  }

  return AGCLLVMBuilder::truncateToSmall(a1 + *(*a1 - 24) + 1704, Load, v5);
}

void AGCLLVMUserShader::getVaryingModeMap(AGCLLVMUserShader *this)
{
  {
    AGCLLVMUserShader::getVaryingModeMap(void)::varying_mode_map = 0;
    qword_28117E558 = 0;
    unk_28117E560 = 0x1000000000;
    __cxa_atexit(llvm::StringMap<AGCCodeTranslator::VertexShaderVaryingType,llvm::MallocAllocator>::~StringMap, &AGCLLVMUserShader::getVaryingModeMap(void)::varying_mode_map, &dword_20E4E1000);
  }
}

uint64_t llvm::SmallVectorImpl<unsigned int>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 4 * v4);
      }
    }

    else
    {
      if (*(a1 + 12) < v4)
      {
        *(a1 + 8) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v5)
      {
        memmove(*a1, *a2, 4 * v5);
      }

      else
      {
        v5 = 0;
      }

      v6 = *(a2 + 8) - v5;
      if (v6)
      {
        memcpy((*a1 + 4 * v5), (*a2 + 4 * v5), 4 * v6);
      }
    }

    *(a1 + 8) = v4;
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 == v5)
    {
      v7 = *(a2 + 8);
      v8 = *(a1 + 8);
      if (v8 >= v7)
      {
        if (v7)
        {
          memmove(*a1, v4, 4 * v7);
        }
      }

      else
      {
        if (*(a1 + 12) < v7)
        {
          *(a1 + 8) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v8)
        {
          memmove(*a1, v4, 4 * v8);
        }

        else
        {
          v8 = 0;
        }

        v9 = *(a2 + 8) - v8;
        if (v9)
        {
          memcpy((*a1 + 4 * v8), (*a2 + 4 * v8), 4 * v9);
        }
      }

      *(a1 + 8) = v7;
    }

    else
    {
      v6 = *a1;
      if (*a1 != a1 + 16)
      {
        free(v6);
        v4 = *a2;
      }

      *a1 = v4;
      *(a1 + 8) = *(a2 + 8);
      *a2 = v5;
      *(a2 + 12) = 0;
    }

    *(a2 + 8) = 0;
  }

  return a1;
}

llvm::Value *AGCLLVMBuilder::truncateToSmall(uint64_t a1, llvm::Value *a2, unsigned int a3)
{
  v3 = a2;
  v4 = a3 - 1;
  if (a3 - 1 <= 8 && ((0x19Bu >> v4) & 1) != 0)
  {
    v6 = *(a1 + qword_20E70D438[v4]);
    if ((*(*a2 + 8) & 0xFE) == 0x12)
    {
      v6 = llvm::FixedVectorType::get();
    }

    if ((*(v6 + 8) & 0xFE) == 0x12)
    {
      v7 = *(**(v6 + 16) + 8);
    }

    else
    {
      v7 = *(v6 + 8);
    }

    v11 = 257;
    if (v7 > 6)
    {
      return llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v3, v6, v10);
    }

    else
    {
      return llvm::IRBuilderBase::CreateFPTrunc((a1 + 8), v3, v6, v10);
    }
  }

  return v3;
}

void std::deque<llvm::MDNode const*>::push_back(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v8 = a1[4];
  v7 = a1[5];
  v9 = v7 + v8;
  if (v6 == v7 + v8)
  {
    if (v8 < 0x200)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v4 - v5 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::MDNode const**>>(v13);
    }

    a1[4] = v8 - 512;
    v14 = *v5;
    a1[1] = (v5 + 1);
    std::__split_buffer<llvm::MDNode const**>::emplace_back<llvm::MDNode const**&>(a1, &v14);
    v5 = a1[1];
    v7 = a1[5];
    v9 = a1[4] + v7;
  }

  *(*(v5 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  a1[5] = v7 + 1;
}

uint64_t AGCLLVMUserObject::setupBufferArgumentData(AGCLLVMUserObject *a1, uint64_t a2, unsigned int a3, int a4, unsigned int a5, char a6, uint64_t a7)
{
  v14 = *(a2 + 8);
  if ((v14 & 0xFE) == 0x12)
  {
    v14 = *(**(a2 + 16) + 8);
  }

  if ((v14 & 0xFFFFFF00) == 0x300)
  {
    GlobalBufferBinding = llvm::User::operator new(0x58);
    v36[0] = "agc.local_buffer_pointers.";
    v37 = a3;
    v38 = 2051;
    v16 = llvm::GlobalVariable::GlobalVariable();
    *(v16 + 80) |= 1u;
    llvm::GlobalObject::setSection();
    llvm::GlobalObject::setAlignment();
    v17 = a1 + *(*a1 - 24);
    v18 = *(v17 + 268);
    v19 = AGCLLVMBuilder::buildGlobalMetadata(v17 + 213, GlobalBufferBinding, 0x2Bu, a3);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v18, v19);
    v20 = a1 + *(*a1 - 24);
    v21 = *(v20 + 238);
    v38 = 257;
    llvm::Type::isOpaquePointerTy(*GlobalBufferBinding);
    AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v20 + 214, v21, GlobalBufferBinding, 0, v36);
    v35 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((v20 + 1712), 48, AlignedLoad, a2, v34);
  }

  else
  {
    if (a4 == -1)
    {
      LODWORD(v34[0]) = a3;
      v24 = 8;
      v25 = 1;
      v26 = v34[0];
    }

    else
    {
      v32[0] = a4;
      v32[2] = ".";
      v33 = 776;
      v34[0] = v32;
      v34[2] = a3;
      v24 = 2;
      v25 = 8;
      v26 = v34;
    }

    LOBYTE(v35) = v24;
    HIBYTE(v35) = v25;
    v36[0] = "agc.buffer_pointers.";
    v37 = v26;
    LOBYTE(v38) = 3;
    HIBYTE(v38) = v24;
    _AGCBindingInfo::_AGCBindingInfo(&v31, a3, a4);
    GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(a1, a2, v36, v31, a5, 5u, 0);
    v27 = (a1 + *(*a1 - 24));
    v38 = 257;
    llvm::Type::isOpaquePointerTy(*GlobalBufferBinding);
    Cast = llvm::IRBuilderBase::CreateAlignedLoad(v27 + 214, a2, GlobalBufferBinding, 0, v36);
    if (a4 == -1)
    {
      ++*(a1 + 878);
    }

    if ((a6 & 3) == 1)
    {
      llvm::Module::getOrInsertNamedMetadata();
      v36[0] = llvm::ValueAsMetadata::get();
      llvm::MDTuple::getImpl();
      llvm::NamedMDNode::addOperand();
    }
  }

  if (a7 == -1)
  {
    return Cast;
  }

  v28 = a1 + *(*a1 - 24);
  if (v28[2284])
  {
    (*(**(v28 + 271) + 176))(*(v28 + 271), GlobalBufferBinding, a7, *(v28 + 570), 0, 0);
    return Cast;
  }

  v30 = std::__throw_bad_optional_access[abi:nn200100]();
  return AGCLLVMUserObject::setupBufferAliasInfo(v30);
}