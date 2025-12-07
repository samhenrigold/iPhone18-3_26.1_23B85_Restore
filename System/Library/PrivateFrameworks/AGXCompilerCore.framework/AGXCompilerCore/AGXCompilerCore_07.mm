__n128 std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<GenericVarying *&,GenericVarying *&>(__int128 *a1, __int128 *a2)
{
  v10 = *a1;
  v11 = *(a1 + 4);
  v3 = *(a1 + 3);
  *v9 = *(a1 + 4);
  *&v9[7] = *(a1 + 39);
  v4 = *(a1 + 47);
  a1[2] = 0uLL;
  *(a1 + 3) = 0;
  v8 = a1[3];
  v5 = *(a2 + 4);
  *a1 = *a2;
  *(a1 + 4) = v5;
  v6 = *(a2 + 5);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 5) = v6;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  a1[3] = a2[3];
  *a2 = v10;
  *(a2 + 4) = v11;
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 3));
  }

  *(a2 + 3) = v3;
  *(a2 + 4) = *v9;
  *(a2 + 39) = *&v9[7];
  *(a2 + 47) = v4;
  result = v8;
  a2[3] = v8;
  return result;
}

BOOL AGCLLVMAGPVertexShaderRegular::constructReply(AGCLLVMAGPVertexShaderRegular *this)
{
  result = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (result)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = AGCLLVMUserObject::constructFlatReply(this);
    v4 = AGCLLVMUserVertexShader::constructFlatReply(this);
    v5 = AGCLLVMAGPVertexShader::constructMTLVertexInfo(this);
    v6 = this + *(*this - 24);
    v6[4358] = 1;
    v7 = *(v6 + 1082);
    v8 = *(v6 + 1080) - *(v6 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v6 + 4288), v3);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>>>((v6 + 4288), v4);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::MTLVertexInfo>((v6 + 4288), v5);
    v9 = *(*this - 24);
    v10 = flatbuffers::FlatBufferBuilder::EndTable((v6 + 4288), v8 + v7);
    flatbuffers::FlatBufferBuilder::Finish((this + v9 + 4288), v10, v11);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));

    return AGCLLVMAGPVertexShader::validateReply(this);
  }

  return result;
}

BOOL AGCLLVMAGPVertexShaderGen4::constructReply(AGCLLVMAGPVertexShaderGen4 *this)
{
  v2 = AGCLLVMAGPVertexShaderRegular::constructReply(this);
  if (v2)
  {
    v3 = this + *(*this - 24);
    v18 = *(this + 5249);
    v4 = *(this + 5250);
    v5 = *(this + 5308);
    v6 = *(this + 5309);
    v7 = *(this + 5310);
    v8 = *(this + 5311);
    v3[4454] = 1;
    v9 = *(v3 + 1106);
    v10 = *(v3 + 1104) - *(v3 + 1108);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v3 + 4384, 14, v8, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v3 + 4384, 12, v7, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v3 + 4384, 10, v6, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v3 + 4384, 8, v5, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v3 + 4384, 6, v4, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v3 + 4384, 4, v18, 0);
    v11 = flatbuffers::FlatBufferBuilder::EndTable((v3 + 4384), v10 + v9);
    v12 = this + *(*this - 24);
    v12[4454] = 1;
    v13 = *(v12 + 1106);
    v14 = *(v12 + 1104) - *(v12 + 1108);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v12 + 4384), v11);
    v15 = flatbuffers::FlatBufferBuilder::EndTable((v12 + 4384), v14 + v13);
    flatbuffers::FlatBufferBuilder::Finish((this + *(*this - 24) + 4384), v15, v16);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslatorG11::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4384));
  }

  return v2;
}

uint64_t AGCLLVMUserVertexShader::constructFlatReply(AGCLLVMUserVertexShader *this)
{
  v53 = *MEMORY[0x277D85DE8];
  if (*(*(this + *(*this - 24) + 2168) + 1849))
  {
    if (*(this + 1352))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(1uLL);
    }
  }

  else if (*(this + 1352))
  {
    v2 = 0;
    do
    {
      v3 = *(this + v2 + 668);
      v4 = *v3;
      if (*v3)
      {
        v5 = *(v3 + 8);
        v6 = *v5;
        if (v4 <= 1)
        {
          v7 = 1;
        }

        else
        {
          v7 = 1;
          do
          {
            if (v6 + v7 != v5[v7])
            {
              goto LABEL_13;
            }

            v7 = (v7 + 1);
          }

          while (v4 != v7);
          v7 = v4;
        }

LABEL_13:
        v8 = this + *(*this - 24);
        v8[4358] = 1;
        v9 = *(v8 + 1082);
        v10 = *(v8 + 1080) - *(v8 + 1084);
        flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v8 + 4288, 4, v7);
        flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v8 + 4288, 6, v6);
        flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v8 + 4288, 8, v2);
        flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v8 + 4288, 10, 0);
        flatbuffers::FlatBufferBuilder::EndTable((v8 + 4288), v10 + v9);
        operator new();
      }

      ++v2;
    }

    while (v2 < *(this + 1352));
  }

  v38 = this + 4096;
  v11 = *(this + 5096);
  __p = 0;
  v41 = 0u;
  v42[0] = v43;
  v42[1] = 0x800000000;
  v43[64] = 0x1FFFFFFFFLL;
  v44 = v11;
  v51[7] = 0;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  memset(v51, 0, 26);
  v52 = 1;
  if (*(this + 1142))
  {
    v12 = *(this + 570);
    do
    {
      GenericVaryingAllocator::addVarying(&__p, v12);
      v12 += 64;
    }

    while (v12 < *(this + 570) + (*(this + 1142) << 6));
  }

  GenericVaryingAllocator::allocate(&__p, *(this + *(*this - 24) + 2168));
  GenericVaryingAllocator::serialize(&__p, (this + *(*this - 24) + 4288));
  if (v41 == __p)
  {
    v13 = &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>> const&)::t;
  }

  else
  {
    v13 = __p;
  }

  v36 = flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(this + *(*this - 24) + 4288, v13, (v41 - __p) >> 2);
  v14 = this + *(*this - 24);
  v14[4358] = 1;
  flatbuffers::FlatBufferBuilder::PreAlign((v14 + 4288), 0, 4uLL);
  flatbuffers::FlatBufferBuilder::PreAlign((v14 + 4288), 0, 4uLL);
  v14[4358] = 0;
  v35 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v14 + 4288), 0);
  v34 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned int>((this + *(*this - 24) + 4288), &flatbuffers::data<unsigned int,std::allocator<unsigned int>>(std::vector<unsigned int> const&)::t, 0);
  v15 = this + *(*this - 24);
  v15[4358] = 1;
  v16 = *(v15 + 1082);
  v17 = *(v15 + 1080) - *(v15 + 1084);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v15 + 4288, 4, v48);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v15 + 4288, 6, DWORD1(v48));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v15 + 4288, 8, (DWORD2(v48) + *(this + 1311)));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v15 + 4288, 16, DWORD1(v49));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v15 + 4288, 10, DWORD2(v46));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v15 + 4288, 12, HIDWORD(v46));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v15 + 4288, 14, v47);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v15 + 4288, 18, HIDWORD(v47));
  v18 = flatbuffers::FlatBufferBuilder::EndTable((v15 + 4288), v17 + v16);
  v19 = this + *(*this - 24);
  v20 = *(v19 + 1080);
  v19[4358] = 1;
  v21 = *(v19 + 1082);
  v22 = v20 - *(v19 + 1084);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v19 + 4288, 4, v51[0]);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v19 + 4288, 6, v51[1]);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v19 + 4288, 8, v51[2]);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v19 + 4288, 16, v51[5]);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v19 + 4288, 10, DWORD2(v49));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v19 + 4288, 12, HIDWORD(v49));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v19 + 4288, 14, v50);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v19 + 4288, 18, HIDWORD(v50));
  v23 = flatbuffers::FlatBufferBuilder::EndTable((v19 + 4288), v22 + v21);
  v24 = *this;
  v25 = this + *(*this - 24);
  v25[4358] = 1;
  v26 = *(v25 + 1080);
  v27 = *(v25 + 1084);
  v28 = *(v25 + 1082);
  v29 = (*(v24 + 560))(this);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v25 + 4288), v29);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v25 + 4288, 6, v52, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v25 + 4288, 8, v38[1152], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v25 + 4288, 10, *(this + 1313));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v25 + 4288, 12, *(this + 1314));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v25 + 4288, 14, *(this + 1315));
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v25 + 4288), 16, v18);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v25 + 4288), 18, v23);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v25 + 4288, 20, LOBYTE(v51[6]), 0);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v25 + 4288), 22, v36);
  if (v35)
  {
    flatbuffers::FlatBufferBuilder::Align((v25 + 4288), 4uLL);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v25 + 4288, 24, (*(v25 + 1080) - *(v25 + 1084) + *(v25 + 1082) - v35 + 4));
  }

  v30 = v26 - v27;
  v31 = *(this + 1352);
  if (v31)
  {
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v25 + 4288, 26, v31);
    if (*(*(this + *(*this - 24) + 2168) + 1849) == 1)
    {
      flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v25 + 4288), 28, v34);
    }
  }

  v32 = flatbuffers::FlatBufferBuilder::EndTable((v25 + 4288), v30 + v28);
  v39 = &v45;
  std::vector<GenericVaryingAllocator::OutIterator>::__destroy_vector::operator()[abi:nn200100](&v39);
  llvm::SmallVector<GenericVarying,8u>::~SmallVector(v42);
  if (__p)
  {
    *&v41 = __p;
    operator delete(__p);
  }

  return v32;
}

uint64_t AGCLLVMAGPVertexShader::constructMTLVertexInfo(AGCLLVMAGPVertexShader *this)
{
  v2 = *this;
  v3 = this + *(*this - 24);
  if (*(v3 + 334))
  {
    v4 = v3 + 2672;
    v5 = *(v3 + 335);
    v6 = v3 + 3232;
    if (v5)
    {
      v6 = v4;
    }
  }

  else
  {
    v6 = v3 + 3232;
  }

  v8 = *v6;
  v7 = *(v6 + 1);
  if (v8)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9 && (v10 = *v8, v80 = (v8 + v10), v11 = (v8 + v10 - *(v8 + v10)), *v11 >= 5u) && (v12 = v11[2], v12) && (v13 = *(v80 + v12), *(v80 + v12 + v13)))
  {
    v79 = 0;
    v81 = 0;
    v14 = 0;
    v15 = v8 + v10 + 8;
    do
    {
      v16 = v12;
      v17 = v13 + v12;
      v18 = *(v15 + v17 - 4);
      v19 = v17 + v18;
      v20 = v15 + v17 + v18;
      v21 = *(v20 - 4);
      v22 = *(v15 + v19 - v21 - 4);
      if (v22 >= 0xB && (v23 = v16 + v13 + v18, *(v15 + v23 - v21 + 6)))
      {
        v24 = *(v15 + v23 + *(v15 + v23 - v21 + 6) - 4);
      }

      else
      {
        v24 = 0;
      }

      v25 = *(this + 2460);
      v26 = v24 - v25;
      if (v24 >= v25)
      {
        v31 = this + *(*this - 24);
        v31[4358] = 1;
        if (v22 >= 5 && (v32 = v16 + v13 + v18, (v33 = *(v15 + v32 - v21)) != 0))
        {
          v34 = *(v15 + v32 + v33 - 4);
        }

        else
        {
          v34 = 0;
        }

        v40 = *(v31 + 1082);
        v41 = *(v31 + 1080) - *(v31 + 1084);
        v42 = *(this + 1295);
        flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v31 + 4288, 4, v34);
        flatbuffers::FlatBufferBuilder::AddElement<signed char>(v31 + 4288, 6, *(v42 + 8 * v26 + 4));
        v43 = flatbuffers::FlatBufferBuilder::EndTable((v31 + 4288), v41 + v40);
        v49 = v81;
        v50 = v81 >> 2;
        if (((v81 >> 2) + 1) >> 62)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        if (v81 >> 2 != -1)
        {
          if (!(((v81 >> 2) + 1) >> 62))
          {
            operator new();
          }

LABEL_67:
          std::string::__throw_length_error[abi:nn200100]();
        }

        *(4 * v50) = v43;
        v81 = 4 * v50 + 4;
        memcpy(0, 0, v49);
      }

      else
      {
        v27 = this + *(*this - 24);
        v27[4358] = 1;
        if (v22 >= 5 && (v28 = v16 + v13 + v18, (v29 = *(v15 + v28 - v21)) != 0))
        {
          v30 = *(v15 + v28 + v29 - 4);
        }

        else
        {
          v30 = 0;
        }

        v76 = *(v27 + 1084);
        v77 = *(v27 + 1080);
        v78 = *(v27 + 1082);
        v35 = *(this + 1229) + 32 * v24;
        flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v27 + 4288, 4, v30);
        flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v27 + 4288, 6, *(v35 + 4));
        flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v27 + 4288, 8, *(v35 + 8), 0);
        v36 = v16 + v13 + v18;
        v37 = v15 + v36 - *(v20 - 4);
        if (*(v37 - 4) >= 7u && (v38 = *(v37 + 2)) != 0)
        {
          v39 = *(v15 + v16 + v13 + v18 + v38 - 4);
        }

        else
        {
          v39 = 0;
        }

        flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v27 + 4288, 10, v39);
        v44 = *(v20 - 4);
        if (*(v15 + v36 - v44 - 4) >= 9u && (v45 = v16 + v13 + v18, (v46 = *(v15 + v45 - v44 + 4)) != 0))
        {
          v47 = *(v15 + v45 + v46 - 4);
        }

        else
        {
          v47 = 0;
        }

        flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v27 + 4288, 12, v47);
        flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v27 + 4288, 14, *(v35 + 20));
        flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v27 + 4288, 16, *(v35 + 24));
        flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v27 + 4288, 18, *(v35 + 28), 0);
        v48 = flatbuffers::FlatBufferBuilder::EndTable((v27 + 4288), v77 - v76 + v78);
        v51 = v79;
        v52 = v79 >> 2;
        if (((v79 >> 2) + 1) >> 62)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        if (v79 >> 2 != -1)
        {
          if (!(((v79 >> 2) + 1) >> 62))
          {
            operator new();
          }

          goto LABEL_67;
        }

        *(4 * v52) = v48;
        v79 = 4 * v52 + 4;
        memcpy(0, 0, v51);
      }

      ++v14;
      v12 = *(v80 - *v80 + 4);
      v13 = *(v80 + v12);
      v15 += 4;
    }

    while (v14 < *(v80 + v12 + v13));
    v2 = *this;
    v53 = v79;
  }

  else
  {
    v81 = 0;
    v53 = 0;
  }

  v54 = this + *(v2 - 24);
  v55 = v53;
  v54[4358] = 1;
  v56 = v53;
  flatbuffers::FlatBufferBuilder::PreAlign((v54 + 4288), v53, 4uLL);
  flatbuffers::FlatBufferBuilder::PreAlign((v54 + 4288), v55, 4uLL);
  v57 = v56;
  if (v56)
  {
    v58 = 0;
  }

  else
  {
    v58 = &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::MTLVertexAttribInput>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::MTLVertexAttribInput>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::MTLVertexAttribInput>> const&)::t;
  }

  if (v56)
  {
    v59 = v56 >> 2;
    v60 = v58 - 4;
    do
    {
      v61 = v59 - 1;
      v62 = *&v60[4 * v59];
      flatbuffers::FlatBufferBuilder::Align((v54 + 4288), 4uLL);
      flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v54 + 4288), *(v54 + 1080) - *(v54 + 1084) + *(v54 + 1082) - v62 + 4);
      v59 = v61;
    }

    while (v61);
  }

  v54[4358] = 0;
  v63 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v54 + 4288), v57 >> 2);
  v64 = this + *(*this - 24);
  v64[4358] = 1;
  flatbuffers::FlatBufferBuilder::PreAlign((v64 + 4288), v81, 4uLL);
  flatbuffers::FlatBufferBuilder::PreAlign((v64 + 4288), v81, 4uLL);
  if (v81)
  {
    v65 = 0;
  }

  else
  {
    v65 = &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::MTLVertexBuiltin>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::MTLVertexBuiltin>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::MTLVertexBuiltin>> const&)::t;
  }

  if (v81)
  {
    v66 = v81 >> 2;
    v67 = v65 - 4;
    do
    {
      v68 = v66 - 1;
      v69 = *&v67[4 * v66];
      flatbuffers::FlatBufferBuilder::Align((v64 + 4288), 4uLL);
      flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v64 + 4288), *(v64 + 1080) - *(v64 + 1084) + *(v64 + 1082) - v69 + 4);
      v66 = v68;
    }

    while (v68);
  }

  v64[4358] = 0;
  v70 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v64 + 4288), v81 >> 2);
  v71 = this + *(*this - 24);
  v71[4358] = 1;
  v72 = *(v71 + 1080);
  v73 = *(v71 + 1084);
  v74 = *(v71 + 1082);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v71 + 4288, 4, *(this + 1310));
  if (v63)
  {
    flatbuffers::FlatBufferBuilder::Align((v71 + 4288), 4uLL);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v71 + 4288, 6, (*(v71 + 1080) - *(v71 + 1084) + *(v71 + 1082) - v63 + 4));
  }

  if (v70)
  {
    flatbuffers::FlatBufferBuilder::Align((v71 + 4288), 4uLL);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v71 + 4288, 8, (*(v71 + 1080) - *(v71 + 1084) + *(v71 + 1082) - v70 + 4));
  }

  return flatbuffers::FlatBufferBuilder::EndTable((v71 + 4288), v72 - v73 + v74);
}

flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::MTLVertexInfo>(flatbuffers::FlatBufferBuilder *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    flatbuffers::FlatBufferBuilder::Align(result, 4uLL);
    v4 = (*(v3 + 8) - *(v3 + 12) + *(v3 + 10) - v2 + 4);

    return flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v3, 12, v4);
  }

  return result;
}

flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>>>(flatbuffers::FlatBufferBuilder *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    flatbuffers::FlatBufferBuilder::Align(result, 4uLL);
    v4 = (*(v3 + 8) - *(v3 + 12) + *(v3 + 10) - v2 + 4);

    return flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v3, 6, v4);
  }

  return result;
}

BOOL AGCLLVMAGPVertexShader::validateReply(AGCLLVMAGPVertexShader *this)
{
  v1 = this + *(*this - 24);
  if (*(v1 + 314))
  {
    v2 = v1 + 2512;
    v3 = *(v1 + 315);
    v4 = v1 + 3072;
    if (v3)
    {
      v4 = v2;
    }
  }

  else
  {
    v4 = v1 + 3072;
  }

  v5 = (*v4 + **v4);
  v6 = (v5 + *(v5 - *v5 + 4));
  v7 = (v6 + *v6 + *(v6 + *v6 - *(v6 + *v6) + 8));
  return *(v7 + *v7) < 0x21;
}

void AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslatorG11::CompileReplyBinarySchema>(unsigned int (***a1)(AGCTargetPrinter **), _DWORD *a2)
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

void virtual thunk toAGCLLVMAGPVertexShaderGen4::~AGCLLVMAGPVertexShaderGen4(AGCLLVMAGPVertexShaderGen4 *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (this + *(*this - 24));
  *v4 = off_282570FE8;
  v4[1307] = off_282571368;
  v4[1520] = &off_282571478;
  v5 = v4[1295];
  if (v5 != v4 + 1297)
  {
    free(v5);
  }

  v6 = v4[1229];
  if (v6 != v4 + 1231)
  {
    free(v6);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap((v4 + 1224), a2, a3, a4);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v4, off_282562CB0);
  AGCLLVMObject::~AGCLLVMObject((v4 + 1307));

  JUMPOUT(0x20F331DC0);
}

{
  v4 = (this + *(*this - 24));
  *v4 = off_282570FE8;
  v4[1307] = off_282571368;
  v4[1520] = &off_282571478;
  v5 = v4[1295];
  if (v5 != v4 + 1297)
  {
    free(v5);
  }

  v6 = v4[1229];
  if (v6 != v4 + 1231)
  {
    free(v6);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap((v4 + 1224), a2, a3, a4);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v4, off_282562CB0);

  AGCLLVMObject::~AGCLLVMObject((v4 + 1307));
}

void AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(AGCLLVMUserVertexShader *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[7];
  *(this + *(*this - 24) + 1704) = a2[8];
  for (i = 668; i != 672; ++i)
  {
    v6 = *(this + i);
    if (v6)
    {
      v7 = *(v6 + 8);
      if (v7)
      {
        MEMORY[0x20F331DA0](v7, 0x1000C8052888210);
      }

      MEMORY[0x20F331DC0](v6, 0x1010C4082113244);
    }
  }

  v8 = (this + 9688);
  v9 = -3432;
  do
  {
    v10 = *(v8 + 2);
    if (v10 != -8192 && v10 != -4096 && v10 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v8);
    }

    v8 = (v8 - 24);
    v9 += 24;
  }

  while (v9);
  v12 = *(this + 665);
  if (v12)
  {
    v13 = *(this + 666);
    v14 = *(this + 665);
    if (v13 != v12)
    {
      do
      {
        v15 = *(v13 - 8);
        if (v15 != -8192 && v15 != -4096 && v15 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList((v13 - 24));
        }

        v13 -= 32;
      }

      while (v13 != v12);
      v14 = *(this + 665);
    }

    *(this + 666) = v12;
    operator delete(v14);
  }

  v20 = (this + 5104);
  std::vector<GenericVaryingAllocator::OutIterator>::__destroy_vector::operator()[abi:nn200100](&v20);
  llvm::SmallVector<GenericVarying,8u>::~SmallVector(this + 4560);
  v19 = *(this + 567);
  if (v19)
  {
    *(this + 568) = v19;
    operator delete(v19);
  }

  AGCLLVMUserShader::~AGCLLVMUserShader(this, a2 + 1, v17, v18);
}

uint64_t AGCLLVMAGPVertexShader::getGenericVaryingInfo(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v7 = a7;
  String = llvm::MDString::getString(*(a4 - 8 * *(a4 + 8) + 8));
  GenericVarying::getComponentSemantic(&__p, String, v14, v7);
  ComponentType = AGCLLVMBuilder::getComponentType((a1 + *(*a1 - 24) + 1704), *(*(a2 + 16) + 8 * a3), &v21);
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
    size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  GenericVaryingInfo = AGCLLVMAGPVertexShader::getGenericVaryingInfo(a1, ComponentType, 1u, p_p, size, a5, a6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return GenericVaryingInfo;
}

void GenericVarying::getComponentSemantic(std::string *a1, void *a2, size_t a3, unsigned int a4)
{
  std::string::basic_string[abi:nn200100]<0>(__p, "xyzw");
  if (a2)
  {
    std::string::basic_string[abi:nn200100](&__dst, a2, a3);
  }

  else
  {
    memset(&__dst, 0, sizeof(__dst));
  }

  v8 = std::string::append(&__dst, ".agc_comp.");
  v9 = v8->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = __p;
  if (v14 < 0)
  {
    v10 = __p[0];
  }

  std::string::push_back(&v12, *(v10 + a4));
  *a1 = v12;
  memset(&v12, 0, sizeof(v12));
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t AGCLLVMAGPVertexShader::buildBackendRequest(AGCLLVMAGPVertexShader *this, llvm::AGX::CompileRequest *a2)
{
  if (*(this + 2460))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      llvm::AGX::CompileRequest::addDMAListEntry(a2);
      ++v5;
      v4 += 32;
    }

    while (v5 < *(this + 2460));
  }

  v6 = *(this + *(*this - 24) + 2168);
  result = (*(*v6 + 472))(v6);
  if (!result && *(this + 2592))
  {
    v8 = 0;
    v9 = 0;
    v10 = *(this + 2460);
    do
    {
      result = llvm::AGX::CompileRequest::addDMAListEntry(a2);
      ++v9;
      ++v10;
      v8 += 8;
    }

    while (v9 < *(this + 2592));
  }

  return result;
}

uint64_t GLCompilerCreate(void *__src, size_t __len, uint64_t a3)
{
  v4 = std::string::basic_string[abi:nn200100](&__dst, __src, __len);
  memset(v8, 0, sizeof(v8));
  memset(v7, 0, sizeof(v7));
  Internal = AGCCodeGenServiceCreateInternal(v4, a3, 0, v8, v7);
  if (v10 < 0)
  {
    operator delete(__dst);
  }

  return Internal;
}

llvm::raw_ostream *llvm::raw_ostream::operator<<(llvm::raw_ostream *this, const void *a2, size_t a3)
{
  v6 = *(this + 3);
  v5 = *(this + 4);
  if (a3 <= v6 - v5)
  {
    if (a3)
    {
      memcpy(v5, a2, a3);
      *(this + 4) += a3;
    }

    return this;
  }

  else
  {

    return llvm::raw_ostream::write(this, a2);
  }
}

uint64_t *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(const void **a1, __int128 **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(&AGCEnv::getEnvLookup(void)::envlookup, &v4, a1);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

void *std::getline[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x20F331B70](&v11, a1, 1);
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

    ++v6;
    std::string::push_back(a2, v7);
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

std::string *AGCEnv::trim(std::string *this)
{
  v2 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v3 = this->__r_.__value_.__r.__words[0];
  if (v2 >= 0)
  {
    v4 = this;
  }

  else
  {
    v4 = this->__r_.__value_.__r.__words[0];
  }

  if (v2 >= 0)
  {
    size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = this->__r_.__value_.__l.__size_;
  }

  v6 = MEMORY[0x277D85DE0];
  if (size)
  {
    v7 = (v4 + size);
    do
    {
      v8 = v4->__r_.__value_.__s.__data_[0];
      if ((v8 & 0x80000000) != 0)
      {
        if (!__maskrune(v8, 0x4000uLL))
        {
          goto LABEL_15;
        }
      }

      else if ((*(v6 + 4 * v8 + 60) & 0x4000) == 0)
      {
        goto LABEL_15;
      }

      v4 = (v4 + 1);
      --size;
    }

    while (size);
    v4 = v7;
LABEL_15:
    LOBYTE(v2) = *(&this->__r_.__value_.__s + 23);
    v3 = this->__r_.__value_.__r.__words[0];
  }

  if ((v2 & 0x80u) == 0)
  {
    v9 = this;
  }

  else
  {
    v9 = v3;
  }

  std::string::erase(this, 0, v4 - v9);
  v10 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v11 = v10;
  v12 = this + v10;
  if (v11 >= 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = this->__r_.__value_.__r.__words[0] + this->__r_.__value_.__l.__size_;
  }

  if (v11 >= 0)
  {
    v14 = this;
  }

  else
  {
    v14 = this->__r_.__value_.__r.__words[0];
  }

  while (v13 != v14)
  {
    v16 = *--v13;
    v15 = v16;
    if ((v16 & 0x80000000) != 0)
    {
      if (!__maskrune(v15, 0x4000uLL))
      {
LABEL_30:
        v14 = (v13 + 1);
        break;
      }
    }

    else if ((*(v6 + 4 * v15 + 60) & 0x4000) == 0)
    {
      goto LABEL_30;
    }
  }

  v17 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v18 = v17;
  v19 = this + v17;
  if (v18 >= 0)
  {
    v20 = this;
  }

  else
  {
    v19 = (this->__r_.__value_.__r.__words[0] + this->__r_.__value_.__l.__size_);
    v20 = this->__r_.__value_.__r.__words[0];
  }

  return std::string::erase(this, v14 - v20, v19 - v14);
}

uint64_t AGCCodeGenServiceDestroyInternal(uint64_t result)
{
  v1 = result;
  v2 = OGLCodeGenService::oglCodeGenService;
  if (OGLCodeGenService::oglCodeGenService)
  {
    (*(OGLCodeGenService::oglCodeGenService + 8))();
    dlclose(*v2);
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *v2 = 0;
    result = MEMORY[0x20F331DC0](v2, 0x80C40D6874129);
  }

  OGLCodeGenService::oglCodeGenService = 0;
  if (v1)
  {
    v3 = *(v1 + 64);
    if (v3)
    {
      AGCLLVMCtx::~AGCLLVMCtx(v3);
      MEMORY[0x20F331DC0]();
    }

    JUMPOUT(0x20F331DC0);
  }

  return result;
}

uint64_t isComputeShader(unsigned int a1)
{
  result = 1;
  if (a1 > 0x1B || ((1 << a1) & 0x8070040) == 0)
  {
    v3 = a1 - 91;
    if (v3 > 0xC || ((1 << v3) & 0x1401) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t GLCompilerLogBuildRequest(int a1, void *a2, size_t a3, const void *a4, size_t a5, unsigned int a6, char *a7)
{
  v11 = a6;
  result = GLCompilerLogBuildRequestInternal(a2, a3, a7, "state", &v11);
  if (result)
  {
    return GLCompilerLogBuildRequestInternal(a4, a5, a7, "bitcode", 0);
  }

  return result;
}

void GLCompilerReleaseReply(uint64_t a1)
{
  free(*a1);
  free(*(a1 + 16));
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

char *generateInternalErrorMessage(char **a1, int a2)
{
  std::string::basic_string[abi:nn200100]<0>(&v7, "Internal error during ");
  if ((a2 - 3) <= 5)
  {
    std::string::append(&v7, off_277E1F918[a2 - 3]);
  }

  std::string::append(&v7, "function compilation");
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    v5 = v7.__r_.__value_.__r.__words[0];
    v4 = strdup(v7.__r_.__value_.__l.__data_);
    *a1 = v4;
    operator delete(v5);
  }

  else
  {
    v4 = strdup(&v7);
    *a1 = v4;
  }

  return v4;
}

uint64_t MTLCompilerBuildRequestWithSerializedBitcode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, char **a13)
{
  *a11 = 0;
  *a9 = 0;
  *a7 = 0;
  *a12 = 0;
  *a10 = 0;
  *a8 = 0;
  *a13 = generateInternalErrorMessage(&v14, 0);
  return 1;
}

uint64_t MTLCompilerBuildRequest(void *a1, char *a2, unint64_t a3, llvm::Module *a4, void *a5, void *a6, char **a7)
{
  v14 = 0;
  if (AGCCodeGenServiceBuildRequestInternal(a1, a2, a3, 0, 0, a4, &v14, a5, a6))
  {
    InternalErrorMessage = 0;
    v10 = 0;
  }

  else
  {
    v12 = a1[2];
    v11 = (a1 + 2);
    InternalErrorMessage = v12;
    if (!v12)
    {
      InternalErrorMessage = generateInternalErrorMessage(v11, v14);
    }

    v10 = 1;
  }

  *a7 = InternalErrorMessage;
  return v10;
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*(a1 + 1));
    if (a1[79] < 0)
    {
      operator delete(*(a1 + 7));
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t AGCEnv::getOSLog(AGCEnv *this)
{
  v1 = &qword_28117E000;
  {
    v1 = &qword_28117E000;
    if (v3)
    {
      AGCEnv::getOSLog(void)::log = os_log_create("com.apple.agx", "AGCEnv");
      v1 = &qword_28117E000;
    }
  }

  return v1[161];
}

uint64_t GLCompilerLogBuildRequestInternal(const void *a1, size_t a2, const char *a3, const char *a4, unsigned int *a5)
{
  if (!a2)
  {
    return 1;
  }

  v17 = 0;
  if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
  {
    syslog(3, "Unable to create log directory");
    return 0;
  }

  v10 = MEMORY[0x277CCACA8];
  if (getFileDateFormatter(void)::onceToken != -1)
  {
    dispatch_once(&getFileDateFormatter(void)::onceToken, &__block_literal_global);
  }

  v11 = [v10 stringWithFormat:@"%@/%s_%@_%s.log", @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/AGX", a3, objc_msgSend(getFileDateFormatter(void)::formatter, "stringFromDate:", objc_msgSend(MEMORY[0x277CBEAA8], "date")), a4];
  v12 = fopen([v11 UTF8String], "wb");
  if (!v12)
  {
    [v11 UTF8String];
    syslog(3, "Failure to create log file: %s");
    return 0;
  }

  v13 = v12;
  if (a5 && fwrite(a5, 1uLL, 4uLL, v12) != 4 || (v14 = 1, v15 = fwrite(a1, 1uLL, a2, v13), fclose(v13), v15 != a2))
  {
    [v11 UTF8String];
    syslog(3, "Failed to write log file (wrote %zu bytes, expected %zu bytes): %s");
    return 0;
  }

  return v14;
}

uint64_t ___ZL20getFileDateFormatterv_block_invoke()
{
  getFileDateFormatter(void)::formatter = objc_alloc_init(MEMORY[0x277CCA968]);
  [getFileDateFormatter(void)::formatter setDateStyle:1];
  v0 = getFileDateFormatter(void)::formatter;

  return [v0 setDateFormat:@"yyyy_MM_dd_HH_mm_ssZZZ"];
}

void *std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x20F331BD0](v19, a1);
  if (v19[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = a2 + a3;
    if ((*(v6 + 2) & 0xB0) == 0x20)
    {
      v9 = a2 + a3;
    }

    else
    {
      v9 = a2;
    }

    v10 = *(v6 + 36);
    if (v10 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v11 = std::locale::use_facet(&__b, MEMORY[0x277D82680]);
      v10 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v10;
      if (!v7)
      {
LABEL_28:
        std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
        goto LABEL_29;
      }
    }

    else if (!v7)
    {
      goto LABEL_28;
    }

    v12 = *(v6 + 3);
    v13 = v12 <= a3;
    v14 = v12 - a3;
    if (v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    if (v9 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v9 - a2) != v9 - a2)
    {
      goto LABEL_28;
    }

    if (v15 >= 1)
    {
      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      if (v15 >= 0x17)
      {
        operator new();
      }

      v21 = v15;
      memset(&__b, v10, v15);
      *(&__b.__locale_ + v15) = 0;
      if (v21 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v17 = (*(*v7 + 96))(v7, p_b, v15);
      if (v21 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v17 != v15)
      {
        goto LABEL_28;
      }
    }

    if (v8 - v9 >= 1 && (*(*v7 + 96))(v7, v9, v8 - v9) != v8 - v9)
    {
      goto LABEL_28;
    }

    *(v6 + 3) = 0;
  }

LABEL_29:
  MEMORY[0x20F331BE0](v19);
  return a1;
}

uint64_t printHexDump(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, const char *a5, int a6)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v24);
  if (a6)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, "{", 1);
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v11 = std::locale::use_facet(&v29, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v29);
    std::ostream::put();
    std::ostream::flush();
  }

  if (a3)
  {
    v12 = 0;
    do
    {
      if (a6 && !(v12 % a4))
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, "\t", 1);
      }

      v13 = strlen(a5);
      v14 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, a5, v13);
      *(a1 + *(*a1 - 24) + 24) = 2;
      v15 = std::operator<<[abi:nn200100]<std::char_traits<char>>(v14, 48);
      *(a1 + *(*a1 - 24) + 8) = *(a1 + *(*a1 - 24) + 8) & 0xFFFFFFB5 | 8;
      v16 = MEMORY[0x20F331C20](v15, *(a2 + v12));
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, " ", 1);
      if (v12 % a4 == a4 - 1)
      {
        std::ios_base::getloc((a1 + *(*a1 - 24)));
        v17 = std::locale::use_facet(&v29, MEMORY[0x277D82680]);
        (v17->__vftable[2].~facet_0)(v17, 10);
        std::locale::~locale(&v29);
        std::ostream::put();
        std::ostream::flush();
      }

      ++v12;
    }

    while (a3 != v12);
  }

  if (a6)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v18 = MEMORY[0x277D82680];
    v19 = std::locale::use_facet(&v29, MEMORY[0x277D82680]);
    (v19->__vftable[2].~facet_0)(v19, 10);
    std::locale::~locale(&v29);
    std::ostream::put();
    std::ostream::flush();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, "}", 1);
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v20 = std::locale::use_facet(&v29, v18);
    (v20->__vftable[2].~facet_0)(v20, 10);
    std::locale::~locale(&v29);
    std::ostream::put();
    std::ostream::flush();
  }

  std::ostream::flush();
  v24[0] = *MEMORY[0x277D82818];
  v21 = *(MEMORY[0x277D82818] + 72);
  *(v24 + *(v24[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v24[2] = v21;
  v25 = MEMORY[0x277D82878] + 16;
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  v25 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v26);
  std::iostream::~basic_iostream();
  return MEMORY[0x20F331D40](&v28);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x277D82890] + 24;
  v3 = MEMORY[0x277D82890] + 104;
  *(a1 + 128) = MEMORY[0x277D82890] + 104;
  v4 = a1 + 16;
  v5 = MEMORY[0x277D82890] + 64;
  *(a1 + 16) = MEMORY[0x277D82890] + 64;
  v6 = a1 + 24;
  v7 = MEMORY[0x277D82818];
  v8 = *(MEMORY[0x277D82818] + 24);
  v9 = *(MEMORY[0x277D82818] + 16);
  *a1 = v9;
  *(a1 + *(v9 - 24)) = v8;
  *(a1 + 8) = 0;
  v10 = (a1 + *(*a1 - 24));
  std::ios_base::init(v10, (a1 + 24));
  v10[1].__vftable = 0;
  v10[1].__fmtflags_ = -1;
  v11 = v7[5];
  v12 = v7[4];
  *(a1 + 16) = v12;
  *(v4 + *(v12 - 24)) = v11;
  v13 = v7[1];
  *a1 = v13;
  *(a1 + *(v13 - 24)) = v7[6];
  *a1 = v2;
  *(a1 + 128) = v3;
  v14 = MEMORY[0x277D82868] + 16;
  *(a1 + 16) = v5;
  *(a1 + 24) = v14;
  MEMORY[0x20F331D00](a1 + 32);
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 24;
  std::stringbuf::__init_buf_ptrs[abi:nn200100](v6);
  return a1;
}

void *std::operator<<[abi:nn200100]<std::char_traits<char>>(void *a1, char a2)
{
  v4 = a1 + *(*a1 - 24);
  if (*(v4 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v7, MEMORY[0x277D82680]);
    (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v7);
  }

  *(v4 + 36) = a2;
  return a1;
}

void std::stringbuf::__init_buf_ptrs[abi:nn200100](uint64_t a1)
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

void AGCPrinterFactory::getStatusFileName(std::string *a1, int a2, char a3, char a4, uint64_t a5)
{
  std::string::basic_string[abi:nn200100]<0>(a1, &unk_20E75F419);
  v11 = 0x27C8D7000uLL;
  {
    v11 = 0x27C8D7000;
    if (v27)
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
      v11 = 0x27C8D7000;
    }
  }

  if (*(v11 + 2944) != 1 || (Value = AGCEnv::getValue("AGC_CLIENT_PROCESS_NAME", v10)) == 0)
  {
    if (a2)
    {
      Value = "agc_gl_status";
    }

    else
    {
      Value = "agc_mtl_status";
    }
  }

  v13 = std::string::append(a1, Value);
  if (a3)
  {
    goto LABEL_17;
  }

  v14 = getpid();
  std::to_string(&v28, v14);
  v15 = std::string::insert(&v28, 0, "_");
  v16 = v15->__r_.__value_.__r.__words[2];
  *__p = *&v15->__r_.__value_.__l.__data_;
  v30 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (v30 >= 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  if (v30 >= 0)
  {
    v18 = HIBYTE(v30);
  }

  else
  {
    v18 = __p[1];
  }

  v13 = std::string::append(a1, v17, v18);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
    if (a4)
    {
      goto LABEL_29;
    }
  }

  else
  {
LABEL_17:
    if (a4)
    {
      goto LABEL_29;
    }
  }

  threadid = llvm::get_threadid(v13);
  std::to_string(&v28, threadid);
  v20 = std::string::insert(&v28, 0, "_");
  v21 = v20->__r_.__value_.__r.__words[2];
  *__p = *&v20->__r_.__value_.__l.__data_;
  v30 = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (v30 >= 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  if (v30 >= 0)
  {
    v23 = HIBYTE(v30);
  }

  else
  {
    v23 = __p[1];
  }

  std::string::append(a1, v22, v23);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

LABEL_29:
  v24 = *(a5 + 23);
  if (v24 < 0)
  {
    v24 = *(a5 + 8);
  }

  if (v24)
  {
    std::operator+<char>();
    if (v30 >= 0)
    {
      v25 = __p;
    }

    else
    {
      v25 = __p[0];
    }

    if (v30 >= 0)
    {
      v26 = HIBYTE(v30);
    }

    else
    {
      v26 = __p[1];
    }

    std::string::append(a1, v25, v26);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void AGCEnv::getLogDirectory(std::string *this, const char *a2)
{
  v2 = a2;
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1)
  {
    Value = AGCEnv::getValue("AGC_STATUS_LOG_DIRECTORY", a2);
  }

  else
  {
    Value = 0;
  }

  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1)
  {
    v5 = AGCEnv::getValue("USE_MONOLITHIC_COMPILER", a2);
    if (v5)
    {
      if (*v5 != 48 && atoi(v5))
      {
        v6 = 1;
        if (!Value)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }
    }
  }

  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal != 1 || (v7 = AGCEnv::getValue("MTL_MONOLITHIC_COMPILER", a2)) == 0 || *v7 == 48)
  {
    if (stat("/private/var/mobile/Library/Logs/", &v23))
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

  v6 = atoi(v7) != 0;
  if (Value)
  {
LABEL_27:
    if (v6)
    {
      v10 = this;
      v11 = Value;
LABEL_36:
      std::string::append(v10, v11);
      goto LABEL_37;
    }
  }

LABEL_29:
  if (!stat("/private/var/mobile/Library/Logs/", &v23))
  {
LABEL_35:
    v11 = "/private/var/mobile/Library/Logs/";
    v10 = this;
    goto LABEL_36;
  }

  if (v6)
  {
    v12 = [(NSString *)NSHomeDirectory() UTF8String];
    v13 = strlen(v12);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    v22 = v13;
    if (v13)
    {
      memmove(__p, v12, v13);
    }

    *(__p + v14) = 0;
    goto LABEL_18;
  }

LABEL_17:
  std::string::basic_string[abi:nn200100]<0>(__p, "/tmp/");
LABEL_18:
  if ((v22 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v9 = v22;
  }

  else
  {
    v9 = __p[1];
  }

  std::string::append(this, v8, v9);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_37:
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v16 = this;
  }

  else
  {
    v16 = this->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (v16->__r_.__value_.__s.__data_[size - 1] != 47)
  {
    std::string::push_back(this, 47);
  }

  if (v2)
  {
    v17 = "OpenGL";
  }

  else
  {
    v17 = "Metal";
  }

  std::string::append(this, v17);
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1)
  {
    v19 = AGCEnv::getValue("AGC_STATUS_LOG_PREFIX", v18);
    if (v19)
    {
      v20 = v19;
      std::string::push_back(this, 47);
      std::string::append(this, v20);
    }
  }
}

BOOL AGCPrinterFactory::createDirectoryIgnoreExisting(std::string::size_type a1)
{
  v1 = a1;
  v21 = *MEMORY[0x277D85DE8];
  memset(v18, 0, sizeof(v18));
  *v19 = 0xFFFFLL;
  *&v19[8] = 0;
  v20 = 0;
  v17 = 260;
  v16.__r_.__value_.__r.__words[0] = a1;
  v2 = 1;
  if (llvm::sys::fs::status())
  {
    *&v18[32] = 260;
    *v18 = v1;
    directories = llvm::sys::fs::create_directories();
    *&v15.__val_ = directories;
    v15.__cat_ = v4;
    v2 = directories == 0;
    if (directories)
    {
      v5 = *MEMORY[0x277D85DF8];
      if (*(v1 + 23) >= 0)
      {
        v6 = v1;
      }

      else
      {
        v6 = *v1;
      }

      std::error_code::message(v18, &v15);
      if (v18[23] >= 0)
      {
        v7 = v18;
      }

      else
      {
        v7 = *v18;
      }

      fprintf(v5, "AGC: %s:%d:%s: *** Failed to create: %s, with error code %d (%s)\n", "agc_file_printer.cpp", 302, "createDirectoryIgnoreExisting", v6, directories, v7);
      if ((v18[23] & 0x80000000) != 0)
      {
        operator delete(*v18);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v12 = *(v1 + 23) >= 0 ? v1 : *v1;
        val = v15.__val_;
        std::error_code::message(&v16, &v15);
        v14 = (v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v16 : v16.__r_.__value_.__r.__words[0];
        *v18 = 136316418;
        *&v18[4] = "agc_file_printer.cpp";
        *&v18[12] = 1024;
        *&v18[14] = 302;
        *&v18[18] = 2080;
        *&v18[20] = "createDirectoryIgnoreExisting";
        *&v18[28] = 2080;
        *&v18[30] = v12;
        *&v18[38] = 1024;
        *&v18[40] = val;
        *v19 = 2080;
        *&v19[2] = v14;
        _os_log_error_impl(&dword_20E4E1000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGC: AGC: %s:%d:%s: *** Failed to create: %s, with error code %d (%s)\n", v18, 0x36u);
        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v16.__r_.__value_.__l.__data_);
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        if (*(v1 + 23) < 0)
        {
          v1 = *v1;
        }

        v8 = v15.__val_;
        std::error_code::message(&v16, &v15);
        if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v9 = &v16;
        }

        else
        {
          v9 = v16.__r_.__value_.__r.__words[0];
        }

        *v18 = 136316418;
        *&v18[4] = "agc_file_printer.cpp";
        *&v18[12] = 1024;
        *&v18[14] = 302;
        *&v18[18] = 2080;
        *&v18[20] = "createDirectoryIgnoreExisting";
        *&v18[28] = 2080;
        *&v18[30] = v1;
        *&v18[38] = 1024;
        *&v18[40] = v8;
        *v19 = 2080;
        *&v19[2] = v9;
        _os_log_impl(&dword_20E4E1000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGC: AGC: %s:%d:%s: *** Failed to create: %s, with error code %d (%s)\n", v18, 0x36u);
        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v16.__r_.__value_.__l.__data_);
        }
      }
    }

    else
    {
      if (*(v1 + 23) >= 0)
      {
        v10 = v1;
      }

      else
      {
        v10 = *v1;
      }

      tryChangeOwnerToMobile(v10);
    }
  }

  return v2;
}

void AGCPrinterFactory::newOfstream(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a1, *(a1 + 8));
  }

  else
  {
    v11 = *a1;
  }

  for (i = 1; ; ++i)
  {
    memset(v15, 0, sizeof(v15));
    v16 = 0xFFFFLL;
    v17 = 0;
    v18 = 0;
    v13 = 260;
    v12.__r_.__value_.__r.__words[0] = &v11;
    if (llvm::sys::fs::status())
    {
      break;
    }

    if (*(a1 + 23) >= 0)
    {
      v3 = *(a1 + 23);
    }

    else
    {
      v3 = *(a1 + 8);
    }

    std::string::basic_string[abi:nn200100](v15, v3 + 1);
    if (v15[23] >= 0)
    {
      v4 = v15;
    }

    else
    {
      v4 = *v15;
    }

    if (v3)
    {
      if (*(a1 + 23) >= 0)
      {
        v5 = a1;
      }

      else
      {
        v5 = *a1;
      }

      memmove(v4, v5, v3);
    }

    *&v4[v3] = 95;
    std::to_string(&v12, i);
    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v12;
    }

    else
    {
      v6 = v12.__r_.__value_.__r.__words[0];
    }

    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v12.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(v15, v6, size);
    v9 = v8->__r_.__value_.__r.__words[0];
    v14[0] = v8->__r_.__value_.__l.__size_;
    *(v14 + 7) = *(&v8->__r_.__value_.__r.__words[1] + 7);
    v10 = HIBYTE(v8->__r_.__value_.__r.__words[2]);
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }

    v11.__r_.__value_.__r.__words[0] = v9;
    v11.__r_.__value_.__l.__size_ = v14[0];
    *(&v11.__r_.__value_.__r.__words[1] + 7) = *(v14 + 7);
    *(&v11.__r_.__value_.__s + 23) = v10;
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    if ((v15[23] & 0x80000000) != 0)
    {
      operator delete(*v15);
    }
  }

  operator new();
}

void std::__shared_weak_count::__release_shared[abi:nn200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t std::__shared_ptr_emplace<AGCTargetPrinter>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    v3 = result == MEMORY[0x277D82670];
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    result = (*(*result + 8))(result);
    *(a1 + 24) = 0;
  }

  return result;
}

void std::__shared_ptr_emplace<AGCTargetPrinter>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_282550490;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x20F331DC0);
}

void tryChangeOwnerToMobile(const char *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if (chown(a1, 0x1F5u, 0xFFFFFFFF))
  {
    v2 = *MEMORY[0x277D85DF8];
    v3 = *__error();
    v4 = __error();
    v5 = strerror(*v4);
    fprintf(v2, "AGC: %s:%d:%s: *** Failed to change owner uid to 501: %s, with error code %d (%s)\n", "agc_file_printer.cpp", 39, "tryChangeOwnerToMobile", a1, v3, v5);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = *__error();
      v10 = __error();
      v11 = strerror(*v10);
      *buf = 136316418;
      v13 = "agc_file_printer.cpp";
      v14 = 1024;
      v15 = 39;
      v16 = 2080;
      v17 = "tryChangeOwnerToMobile";
      v18 = 2080;
      v19 = a1;
      v20 = 1024;
      v21 = v9;
      v22 = 2080;
      v23 = v11;
      _os_log_error_impl(&dword_20E4E1000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGC: AGC: %s:%d:%s: *** Failed to change owner uid to 501: %s, with error code %d (%s)\n", buf, 0x36u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = *__error();
      v7 = __error();
      v8 = strerror(*v7);
      *buf = 136316418;
      v13 = "agc_file_printer.cpp";
      v14 = 1024;
      v15 = 39;
      v16 = 2080;
      v17 = "tryChangeOwnerToMobile";
      v18 = 2080;
      v19 = a1;
      v20 = 1024;
      v21 = v6;
      v22 = 2080;
      v23 = v8;
      _os_log_impl(&dword_20E4E1000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGC: AGC: %s:%d:%s: *** Failed to change owner uid to 501: %s, with error code %d (%s)\n", buf, 0x36u);
    }
  }
}

uint64_t std::unordered_map<std::string,std::shared_ptr<AGCTargetPrinter>>::~unordered_map[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 6);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }

      if (v2[39] < 0)
      {
        operator delete(*(v2 + 2));
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void AGCPrinterFactory::createObjectPrinter(uint64_t *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (byte_27C8D81C0 != 1 || (byte_27C8D81C1 & 1) != 0)
  {
    goto LABEL_3;
  }

  GetAGCPrinterFactoryMutex();
  std::mutex::lock(&GetAGCPrinterFactoryMutex(void)::m);
  AGCEnv::getLogDirectory(&v46, a2);
  v10 = std::string::append(&v46, "/");
  v12 = v10->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v12;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  v14 = AGCEnv::isEnabled(void)::is_internal == 1 && (Value = AGCEnv::getValue("AGC_STATUS_FILE_NO_PID", v11)) != 0 && *Value != 48 && atoi(Value) != 0;
  std::string::basic_string[abi:nn200100]<0>(v48, &unk_20E75F419);
  AGCPrinterFactory::getStatusFileName(&v46, a2, v14, 1, v48);
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v46;
  }

  else
  {
    v15 = v46.__r_.__value_.__r.__words[0];
  }

  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v46.__r_.__value_.__l.__size_;
  }

  std::string::append(&v50, v15, size);
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (v49 < 0)
  {
    operator delete(v48[0]);
  }

  DirectoryIgnoreExisting = AGCPrinterFactory::createDirectoryIgnoreExisting(&v50);
  if (!DirectoryIgnoreExisting)
  {
    *a1 = 0;
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    std::mutex::unlock(&GetAGCPrinterFactoryMutex(void)::m);
    if (DirectoryIgnoreExisting)
    {
LABEL_3:
      operator new();
    }

    return;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v46);
  v18 = *(a3 + 23);
  if ((v18 & 0x8000000000000000) == 0)
  {
    v19 = a3;
    if (!*(a3 + 23))
    {
      goto LABEL_30;
    }

    do
    {
LABEL_27:
      if (*v19 == 32)
      {
        *v19 = 95;
      }

      ++v19;
      --v18;
    }

    while (v18);
    goto LABEL_30;
  }

  v19 = *a3;
  v18 = *(a3 + 8);
  if (v18)
  {
    goto LABEL_27;
  }

LABEL_30:
  v20 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v46.__r_.__value_.__r.__words[2], "agc_status_", 11);
  v21 = *(a3 + 23);
  if (v21 >= 0)
  {
    v22 = a3;
  }

  else
  {
    v22 = *a3;
  }

  if (v21 >= 0)
  {
    v23 = *(a3 + 23);
  }

  else
  {
    v23 = *(a3 + 8);
  }

  v24 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v20, v22, v23);
  v25 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v24, "_", 1);
  v26 = *(a4 + 23);
  if (v26 >= 0)
  {
    v27 = a4;
  }

  else
  {
    v27 = *a4;
  }

  if (v26 >= 0)
  {
    v28 = *(a4 + 23);
  }

  else
  {
    v28 = *(a4 + 8);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v25, v27, v28);
  if (*(a5 + 32) != 1)
  {
LABEL_46:
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v33 = v50.__r_.__value_.__l.__size_;
    }

    v34 = &v43;
    std::string::basic_string[abi:nn200100](&v43, v33 + 1);
    if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v34 = v43.__r_.__value_.__r.__words[0];
    }

    if (v33)
    {
      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = &v50;
      }

      else
      {
        v35 = v50.__r_.__value_.__r.__words[0];
      }

      memmove(v34, v35, v33);
    }

    *(&v34->__r_.__value_.__l.__data_ + v33) = 47;
    std::stringbuf::str();
    if ((v42 & 0x80u) == 0)
    {
      v36 = v41;
    }

    else
    {
      v36 = v41[0];
    }

    if ((v42 & 0x80u) == 0)
    {
      v37 = v42;
    }

    else
    {
      v37 = v41[1];
    }

    v38 = std::string::append(&v43, v36, v37);
    v39 = v38->__r_.__value_.__r.__words[2];
    *__p = *&v38->__r_.__value_.__l.__data_;
    v45 = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    AGCPrinterFactory::newOfstream(__p);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v46.__r_.__value_.__r.__words[2], "_", 1);
  if (*(a5 + 32) == 1)
  {
    for (i = 0; i != 32; ++i)
    {
      v30 = *(a5 + i);
      v31 = v46.__r_.__value_.__r.__words[2];
      *(v47 + *(v46.__r_.__value_.__r.__words[2] - 24)) = *(v47 + *(v46.__r_.__value_.__r.__words[2] - 24)) & 0xFFFFFFB5 | 8;
      *(v47 + *(v31 - 24)) |= 0x4000u;
      *(&v47[2] + *(v31 - 24)) = 2;
      v32 = std::operator<<[abi:nn200100]<std::char_traits<char>>(&v46.__r_.__value_.__r.__words[2], 48);
      MEMORY[0x20F331C10](v32, v30);
    }

    goto LABEL_46;
  }

  v40 = std::__throw_bad_optional_access[abi:nn200100]();
  llvm::LLT::dump(v40);
}

uint64_t llvm::LLT::dump(llvm::LLT *this)
{
  v2 = llvm::dbgs(this);
  v3 = llvm::LLT::print(this, v2);
  result = llvm::dbgs(v3);
  v5 = *(result + 32);
  if (v5 >= *(result + 24))
  {

    return MEMORY[0x2821F1EB8]();
  }

  else
  {
    *(result + 32) = v5 + 1;
    *v5 = 10;
  }

  return result;
}

uint64_t AGCLLVMBuilder::CreateLoad(AGCLLVMBuilder *this, llvm::Type **a2, const llvm::Twine *a3)
{
  v6 = AGCLLVMBuilder::tryDeducePointeeType(a2, a2);
  if (v6)
  {
    v7 = v6;
    llvm::Type::isOpaquePointerTy(*a2);
    v8 = (this + 8);
    v9 = v7;
  }

  else
  {
    v8 = (this + 8);
    v9 = 0;
  }

  return llvm::IRBuilderBase::CreateAlignedLoad(v8, v9, a2, 0, a3);
}

uint64_t llvm::SmallVectorTemplateBase<AGCCodeTranslator::ComputeVIRegType,true>::push_back(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (v2 >= *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*result + 4 * v2) = a2;
  ++*(result + 8);
  return result;
}

void std::vector<AGCLLVMGLVertexShader::VertexInput>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 2) + 1;
    if (v9 > 0xCCCCCCCCCCCCCCCLL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - v7) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x666666666666666)
    {
      v11 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0xCCCCCCCCCCCCCCCLL)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = 4 * (v8 >> 2);
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 4);
    v6 = v12 + 20;
    v13 = v12 - v8;
    memcpy((v12 - v8), v7, v8);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 4);
    *v4 = v5;
    v6 = v4 + 20;
  }

  *(a1 + 8) = v6;
}

const void **llvm::PreservedAnalyses::preserve(uint64_t a1, void *a2)
{
  llvm::SmallPtrSetImplBase::erase_imp((a1 + 48), a2);
  if (*(a1 + 68) != *(a1 + 72))
  {
    return llvm::SmallPtrSetImpl<void *>::insert(v7, a1, a2);
  }

  result = llvm::SmallPtrSetImplBase::find_imp(a1, MEMORY[0x277D82070]);
  v5 = *(a1 + 8);
  v6 = 16;
  if (v5 == *a1)
  {
    v6 = 20;
  }

  if (result == (v5 + 8 * *(a1 + v6)))
  {
    return llvm::SmallPtrSetImpl<void *>::insert(v7, a1, a2);
  }

  return result;
}

uint64_t anonymous namespace::reportError(uint64_t a1)
{
  v2 = MEMORY[0x277D85DF8];
  fwrite("Error occured during IR replacement\n", 0x24uLL, 1uLL, *MEMORY[0x277D85DF8]);
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  return fprintf(*v2, "%s\n", v3);
}

uint64_t llvm::SmallVector<llvm::SMFixIt,4u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 40 * v3 - 24;
    v5 = -40 * v3;
    do
    {
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v4 -= 40;
      v5 += 40;
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

BOOL validateUserLocalMemoryUsage(unsigned int __val, unsigned int a2, std::string *a3)
{
  if (__val > a2)
  {
    std::to_string(&v22, __val);
    v6 = std::string::insert(&v22, 0, "Threadgroup memory size (");
    v7 = v6->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = *&v6->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v23, ") ");
    v9 = v8->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v24, "exceeds the maximum threadgroup memory allowed (");
    v11 = v10->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, a2);
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

    v14 = std::string::append(&v25, p_p, size);
    v15 = v14->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = *&v14->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = std::string::append(&v26, ")");
    v17 = v16->__r_.__value_.__r.__words[2];
    v27 = *&v16->__r_.__value_.__l.__data_;
    v28 = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    if (v28 >= 0)
    {
      v18 = &v27;
    }

    else
    {
      v18 = v27;
    }

    if (v28 >= 0)
    {
      v19 = HIBYTE(v28);
    }

    else
    {
      v19 = *(&v27 + 1);
    }

    std::string::append(a3, v18, v19);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }
  }

  return __val <= a2;
}

uint64_t validateUserMeshLocalMemoryUsage(unsigned int a1, unsigned int __val, unsigned int a3, unsigned int a4, unsigned int a5, std::string *a6)
{
  if (a1 > a3)
  {
    std::to_string(&v58, a1);
    v8 = std::string::insert(&v58, 0, "Threadgroup memory size (");
    v9 = v8->__r_.__value_.__r.__words[2];
    *&v59.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
    v59.__r_.__value_.__r.__words[2] = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v59, ") ");
    v11 = v10->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v60, "exceeds the maximum threadgroup memory allowed (");
    v13 = v12->__r_.__value_.__r.__words[2];
    *&v61.__r_.__value_.__l.__data_ = *&v12->__r_.__value_.__l.__data_;
    v61.__r_.__value_.__r.__words[2] = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = a3;
LABEL_5:
    std::to_string(&v57, v14);
    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v57;
    }

    else
    {
      v23 = v57.__r_.__value_.__r.__words[0];
    }

    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v57.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v57.__r_.__value_.__l.__size_;
    }

    v25 = std::string::append(&v61, v23, size);
    v26 = v25->__r_.__value_.__r.__words[2];
    *&v62.__r_.__value_.__l.__data_ = *&v25->__r_.__value_.__l.__data_;
    v62.__r_.__value_.__r.__words[2] = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v27 = std::string::append(&v62, ")");
    v28 = v27->__r_.__value_.__r.__words[2];
    v63 = *&v27->__r_.__value_.__l.__data_;
    v64 = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    if (v64 >= 0)
    {
      v29 = &v63;
    }

    else
    {
      v29 = v63;
    }

    if (v64 >= 0)
    {
      v30 = HIBYTE(v64);
    }

    else
    {
      v30 = *(&v63 + 1);
    }

    std::string::append(a6, v29, v30);
    if (SHIBYTE(v64) < 0)
    {
      operator delete(v63);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 0;
    }

    v31 = v58.__r_.__value_.__r.__words[0];
    goto LABEL_31;
  }

  if (__val > a4)
  {
    std::to_string(&v58, __val);
    v17 = std::string::insert(&v58, 0, "Total mesh size (");
    v18 = v17->__r_.__value_.__r.__words[2];
    *&v59.__r_.__value_.__l.__data_ = *&v17->__r_.__value_.__l.__data_;
    v59.__r_.__value_.__r.__words[2] = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v59, ") ");
    v20 = v19->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = *&v19->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v21 = std::string::append(&v60, "exceeds the maximum mesh size allowed (");
    v22 = v21->__r_.__value_.__r.__words[2];
    *&v61.__r_.__value_.__l.__data_ = *&v21->__r_.__value_.__l.__data_;
    v61.__r_.__value_.__r.__words[2] = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    v14 = a4;
    goto LABEL_5;
  }

  if (__val + a1 <= a5)
  {
    return 1;
  }

  std::to_string(&v56, a1);
  v34 = std::string::insert(&v56, 0, "Threadgroup memory size and mesh size (");
  v35 = v34->__r_.__value_.__r.__words[2];
  *&v57.__r_.__value_.__l.__data_ = *&v34->__r_.__value_.__l.__data_;
  v57.__r_.__value_.__r.__words[2] = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  v36 = std::string::append(&v57, " + ");
  v37 = v36->__r_.__value_.__r.__words[2];
  *&v58.__r_.__value_.__l.__data_ = *&v36->__r_.__value_.__l.__data_;
  v58.__r_.__value_.__r.__words[2] = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v55, __val);
  if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = &v55;
  }

  else
  {
    v38 = v55.__r_.__value_.__r.__words[0];
  }

  if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = HIBYTE(v55.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v39 = v55.__r_.__value_.__l.__size_;
  }

  v40 = std::string::append(&v58, v38, v39);
  v41 = v40->__r_.__value_.__r.__words[2];
  *&v59.__r_.__value_.__l.__data_ = *&v40->__r_.__value_.__l.__data_;
  v59.__r_.__value_.__r.__words[2] = v41;
  v40->__r_.__value_.__l.__size_ = 0;
  v40->__r_.__value_.__r.__words[2] = 0;
  v40->__r_.__value_.__r.__words[0] = 0;
  v42 = std::string::append(&v59, ") ");
  v43 = v42->__r_.__value_.__r.__words[2];
  *&v60.__r_.__value_.__l.__data_ = *&v42->__r_.__value_.__l.__data_;
  v60.__r_.__value_.__r.__words[2] = v43;
  v42->__r_.__value_.__l.__size_ = 0;
  v42->__r_.__value_.__r.__words[2] = 0;
  v42->__r_.__value_.__r.__words[0] = 0;
  v44 = std::string::append(&v60, "exceed the maximum limit allowed (");
  v45 = v44->__r_.__value_.__r.__words[2];
  *&v61.__r_.__value_.__l.__data_ = *&v44->__r_.__value_.__l.__data_;
  v61.__r_.__value_.__r.__words[2] = v45;
  v44->__r_.__value_.__l.__size_ = 0;
  v44->__r_.__value_.__r.__words[2] = 0;
  v44->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v54, a5);
  if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v46 = &v54;
  }

  else
  {
    v46 = v54.__r_.__value_.__r.__words[0];
  }

  if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v47 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v47 = v54.__r_.__value_.__l.__size_;
  }

  v48 = std::string::append(&v61, v46, v47);
  v49 = v48->__r_.__value_.__r.__words[2];
  *&v62.__r_.__value_.__l.__data_ = *&v48->__r_.__value_.__l.__data_;
  v62.__r_.__value_.__r.__words[2] = v49;
  v48->__r_.__value_.__l.__size_ = 0;
  v48->__r_.__value_.__r.__words[2] = 0;
  v48->__r_.__value_.__r.__words[0] = 0;
  v50 = std::string::append(&v62, ")");
  v51 = v50->__r_.__value_.__r.__words[2];
  v63 = *&v50->__r_.__value_.__l.__data_;
  v64 = v51;
  v50->__r_.__value_.__l.__size_ = 0;
  v50->__r_.__value_.__r.__words[2] = 0;
  v50->__r_.__value_.__r.__words[0] = 0;
  if (v64 >= 0)
  {
    v52 = &v63;
  }

  else
  {
    v52 = v63;
  }

  if (v64 >= 0)
  {
    v53 = HIBYTE(v64);
  }

  else
  {
    v53 = *(&v63 + 1);
  }

  std::string::append(a6, v52, v53);
  if (SHIBYTE(v64) < 0)
  {
    operator delete(v63);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
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
    v31 = v56.__r_.__value_.__r.__words[0];
LABEL_31:
    operator delete(v31);
  }

  return 0;
}

flatbuffers::IDLOptions *flatbuffers::IDLOptions::IDLOptions(flatbuffers::IDLOptions *this)
{
  *(this + 3) = 0;
  *this = 0;
  *(this + 2) = 2;
  *(this + 3) = 257;
  *(this + 16) = 1;
  *(this + 17) = 0;
  *(this + 25) = 0;
  std::string::basic_string[abi:nn200100]<0>(this + 4, "std::unique_ptr");
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = 0;
  *(this + 20) = 0;
  std::string::basic_string[abi:nn200100]<0>(this + 14, "T");
  *(this + 68) = 1;
  *(this + 138) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 18) = 0;
  *(this + 165) = 0;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 56) = 1;
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 29) = 0;
  *(this + 255) = 0;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 41) = 0;
  std::string::basic_string[abi:nn200100]<0>(this + 42, "_generated");
  *(this + 45) = 0;
  *(this + 46) = 0;
  *(this + 47) = 0;
  *(this + 48) = 1;
  *(this + 49) = 0;
  *(this + 200) = 257;
  return this;
}

void flatbuffers::Parser::Parser(flatbuffers::Parser *this, const flatbuffers::IDLOptions *a2)
{
  *this = 0u;
  *(this + 2) = 0xFFFFFFFF00000000;
  *(this + 24) = 1;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 11) = 0;
  *(this + 10) = this + 88;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 136) = 0u;
  *(this + 16) = this + 136;
  *(this + 152) = 0u;
  *(this + 184) = 0u;
  *(this + 21) = 0;
  *(this + 22) = this + 184;
  *(this + 200) = 0u;
  *(this + 27) = 0;
  *(this + 232) = 0u;
  *(this + 28) = this + 232;
  *(this + 344) = 0;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 22) = xmmword_20E70C4D0;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 50) = 0;
  *(this + 51) = 1;
  *(this + 208) = 256;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  operator new();
}

void flatbuffers::IDLOptions::~IDLOptions(void **this)
{
  if (*(this + 383) < 0)
  {
    operator delete(this[45]);
  }

  if (*(this + 359) < 0)
  {
    operator delete(this[42]);
  }

  if (*(this + 335) < 0)
  {
    operator delete(this[39]);
  }

  if (*(this + 311) < 0)
  {
    operator delete(this[36]);
  }

  v2 = (this + 33);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v2);
  if (*(this + 255) < 0)
  {
    operator delete(this[29]);
  }

  if (*(this + 223) < 0)
  {
    operator delete(this[25]);
  }

  if (*(this + 199) < 0)
  {
    operator delete(this[22]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }
}

void flatbuffers::Parser::~Parser(flatbuffers::Parser *this)
{
  v3 = *(this + 34);
  for (i = *(this + 35); v3 != i; ++v3)
  {
    v4 = *v3;
    if (*v3)
    {
      v32 = *v3;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v32);
      MEMORY[0x20F331DC0](v4, 0x1020C4016EE4530);
      i = *(this + 35);
    }
  }

  v5 = *(this + 147);
  if (v5)
  {
    v6 = *(this + 148);
    v7 = *(this + 147);
    if (v6 != v5)
    {
      do
      {
        if (*(v6 - 17) < 0)
        {
          operator delete(*(v6 - 40));
        }

        v6 -= 72;
      }

      while (v6 != v5);
      v7 = *(this + 147);
    }

    *(this + 148) = v5;
    operator delete(v7);
  }

  if (*(this + 1175) < 0)
  {
    operator delete(*(this + 144));
  }

  flatbuffers::IDLOptions::~IDLOptions(this + 91);
  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(this + 89));
  v32 = (this + 680);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v32);
  std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(*(this + 83));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*(this + 80));
  if (*(this + 631) < 0)
  {
    operator delete(*(this + 76));
  }

  if (*(this + 607) < 0)
  {
    operator delete(*(this + 73));
  }

  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 67));
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 63));
  v8 = *(this + 57);
  if (v8)
  {
    *(this + 58) = v8;
    operator delete(v8);
  }

  v9 = *(this + 54);
  if (v9)
  {
    *(this + 55) = v9;
    operator delete(v9);
  }

  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder((this + 336));
  if (*(this + 335) < 0)
  {
    operator delete(*(this + 39));
  }

  v10 = *(this + 34);
  if (v10)
  {
    *(this + 35) = v10;
    operator delete(v10);
  }

  v12 = *(this + 31);
  v11 = *(this + 32);
  if (v12 != v11)
  {
    do
    {
      v13 = *v12;
      if (*v12)
      {
        v15 = *(v13 + 176);
        v14 = *(v13 + 184);
        if (v15 != v14)
        {
          do
          {
            v16 = *v15;
            if (*v15)
            {
              flatbuffers::SymbolTable<flatbuffers::Value>::~SymbolTable(v16 + 72);
              v32 = (v16 + 48);
              std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v32);
              if (*(v16 + 47) < 0)
              {
                operator delete(*(v16 + 24));
              }

              if (*(v16 + 23) < 0)
              {
                operator delete(*v16);
              }

              MEMORY[0x20F331DC0](v16, 0x10B2C40EE200C30);
              v14 = *(v13 + 184);
            }

            ++v15;
          }

          while (v15 != v14);
          v15 = *(v13 + 176);
        }

        if (v15)
        {
          *(v13 + 184) = v15;
          operator delete(v15);
        }

        std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(v13 + 160));
        flatbuffers::SymbolTable<flatbuffers::Value>::~SymbolTable(v13 + 72);
        v32 = (v13 + 48);
        std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v32);
        if (*(v13 + 47) < 0)
        {
          operator delete(*(v13 + 24));
        }

        if (*(v13 + 23) < 0)
        {
          operator delete(*v13);
        }

        MEMORY[0x20F331DC0](v13, 0x10B2C401A85D49FLL);
        v11 = *(this + 32);
      }

      ++v12;
    }

    while (v12 != v11);
    v12 = *(this + 31);
  }

  if (v12)
  {
    *(this + 32) = v12;
    operator delete(v12);
  }

  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(this + 29));
  v18 = *(this + 25);
  v17 = *(this + 26);
  if (v18 != v17)
  {
    do
    {
      v19 = *v18;
      if (*v18)
      {
        v21 = *(v19 + 208);
        v20 = *(v19 + 216);
        if (v21 != v20)
        {
          do
          {
            v22 = *v21;
            if (*v21)
            {
              flatbuffers::SymbolTable<flatbuffers::Value>::~SymbolTable(v22 + 88);
              v32 = (v22 + 24);
              std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v32);
              if (*(v22 + 23) < 0)
              {
                operator delete(*v22);
              }

              MEMORY[0x20F331DC0](v22, 0x10B2C4072A4B994);
              v20 = *(v19 + 216);
            }

            ++v21;
          }

          while (v21 != v20);
          v21 = *(v19 + 208);
        }

        if (v21)
        {
          *(v19 + 216) = v21;
          operator delete(v21);
        }

        std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(v19 + 192));
        flatbuffers::SymbolTable<flatbuffers::Value>::~SymbolTable(v19 + 72);
        v32 = (v19 + 48);
        std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v32);
        if (*(v19 + 47) < 0)
        {
          operator delete(*(v19 + 24));
        }

        if (*(v19 + 23) < 0)
        {
          operator delete(*v19);
        }

        MEMORY[0x20F331DC0](v19, 0x10B2C409EE52067);
        v17 = *(this + 26);
      }

      ++v18;
    }

    while (v18 != v17);
    v18 = *(this + 25);
  }

  if (v18)
  {
    *(this + 26) = v18;
    operator delete(v18);
  }

  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(this + 23));
  v24 = *(this + 19);
  v23 = *(this + 20);
  if (v24 != v23)
  {
    do
    {
      v25 = *v24;
      if (*v24)
      {
        v26 = *(v25 + 224);
        *(v25 + 224) = 0;
        if (v26)
        {
          if (*(v26 + 23) < 0)
          {
            operator delete(*v26);
          }

          MEMORY[0x20F331DC0](v26, 0x1012C40EC159624);
        }

        v28 = *(v25 + 176);
        v27 = *(v25 + 184);
        if (v28 != v27)
        {
          do
          {
            v29 = *v28;
            if (*v28)
            {
              if (*(v29 + 207) < 0)
              {
                operator delete(*(v29 + 184));
              }

              flatbuffers::SymbolTable<flatbuffers::Value>::~SymbolTable(v29 + 72);
              v32 = (v29 + 48);
              std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v32);
              if (*(v29 + 47) < 0)
              {
                operator delete(*(v29 + 24));
              }

              if (*(v29 + 23) < 0)
              {
                operator delete(*v29);
              }

              MEMORY[0x20F331DC0](v29, 0x10B2C40559199D4);
              v27 = *(v25 + 184);
            }

            ++v28;
          }

          while (v28 != v27);
          v28 = *(v25 + 176);
        }

        if (v28)
        {
          *(v25 + 184) = v28;
          operator delete(v28);
        }

        std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(v25 + 160));
        flatbuffers::SymbolTable<flatbuffers::Value>::~SymbolTable(v25 + 72);
        v32 = (v25 + 48);
        std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v32);
        if (*(v25 + 47) < 0)
        {
          operator delete(*(v25 + 24));
        }

        if (*(v25 + 23) < 0)
        {
          operator delete(*v25);
        }

        MEMORY[0x20F331DC0](v25, 0x10B2C4058EA06FBLL);
        v23 = *(this + 20);
      }

      ++v24;
    }

    while (v24 != v23);
    v24 = *(this + 19);
  }

  if (v24)
  {
    *(this + 20) = v24;
    operator delete(v24);
  }

  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(this + 17));
  v31 = *(this + 13);
  v30 = *(this + 14);
  if (v31 != v30)
  {
    do
    {
      if (*v31)
      {
        MEMORY[0x20F331DC0](*v31, 0x1020C4001A1C0B8);
        v30 = *(this + 14);
      }

      ++v31;
    }

    while (v31 != v30);
    v31 = *(this + 13);
  }

  if (v31)
  {
    *(this + 14) = v31;
    operator delete(v31);
  }

  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(this + 11));
  v32 = (this + 56);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v32);
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }
}

void std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(*(a1 + 1));
    std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(a1 + 8));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t flatbuffers::SymbolTable<flatbuffers::Value>::~SymbolTable(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v3 != v2)
  {
    do
    {
      v4 = *v3;
      if (*v3)
      {
        if (*(v4 + 55) < 0)
        {
          operator delete(*(v4 + 32));
        }

        MEMORY[0x20F331DC0](v4, 0x1032C40E9BF265ALL);
        v2 = *(a1 + 32);
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *(a1 + 24);
  }

  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(a1 + 8));
  return a1;
}

char *flatbuffers::Allocator::reallocate_downward(flatbuffers::Allocator *this, unsigned __int8 *a2, uint64_t a3, uint64_t a4, size_t a5, size_t a6)
{
  v12 = (*(*this + 16))(this, a4);
  memcpy(&v12[a4 - a5], &a2[a3 - a5], a5);
  memcpy(v12, a2, a6);
  (*(*this + 24))(this, a2, a3);
  return v12;
}

uint64_t *std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t **a1, void *a2, _OWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v5 = v3;
      if (!std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:nn200100](a2, v3 + 4))
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if (!std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:nn200100](v5 + 4, a2))
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

void AGCLLVMAGPFragmentShader::getCompilationKeyDescription(AGCLLVMAGPFragmentShader *this@<X0>, uint64_t a2@<X8>)
{
  v122 = *MEMORY[0x277D85DE8];
  v4 = *(this + 801);
  std::string::basic_string[abi:nn200100]<0>(v51, "AGCFragmentContextStateAGP");
  std::string::basic_string[abi:nn200100]<0>(&v56, "AGCFragmentContextState");
  std::string::basic_string[abi:nn200100]<0>(v54, "fragmentState");
  std::string::basic_string[abi:nn200100]<0>(v121, "AGCFragmentState");
  std::string::basic_string[abi:nn200100]<0>(&v83, "GL and Metal state:");
  std::string::basic_string[abi:nn200100]<0>(v81, "alphaToCoverage");
  _agcFieldString<unsigned int>(&v84, v81, *v4 & 1);
  std::string::basic_string[abi:nn200100]<0>(v79, "alphaToOne");
  _agcFieldString<unsigned int>(&v85, v79, (*v4 >> 1) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v78, "sampleCoverage");
  _agcFieldString<unsigned int>(&v86, &v78.__r_.__value_.__l.__data_, (*v4 >> 2) & 1);
  std::string::basic_string[abi:nn200100]<0>(v76, "sampleCoverageInvert");
  _agcFieldString<unsigned int>(&v87, v76, (*v4 >> 3) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v88, "GL specific state:");
  std::string::basic_string[abi:nn200100]<0>(v74, "depthStencilWriteDisabled");
  _agcFieldString<unsigned int>(&v89, v74, (*v4 >> 4) & 1);
  std::string::basic_string[abi:nn200100]<0>(v72, "logicOp");
  _agcFieldString<unsigned int>(&v90, v72, (*v4 >> 5) & 1);
  std::string::basic_string[abi:nn200100]<0>(v70, "logicOpState");
  _agcFieldString<char const*>(&v91, v70, _agcLogicOpStrings[(*v4 >> 6) & 0x1F]);
  std::string::basic_string[abi:nn200100]<0>(&v69, "alphaTest");
  _agcFieldString<unsigned int>(&v92, &v69.__r_.__value_.__l.__data_, (*v4 >> 11) & 1);
  std::string::basic_string[abi:nn200100]<0>(v67, "alphaTestFunc");
  _agcFieldString<char const*>(&v93, v67, _agcCompareFuncStrings[*v4 >> 12]);
  std::string::basic_string[abi:nn200100]<0>(v65, "smoothPoints");
  _agcFieldString<unsigned int>(&v94, v65, HIWORD(*v4) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v64, "pointSpriteEnabled");
  _agcFieldString<unsigned int>(&v95, &v64.__r_.__value_.__l.__data_, (*v4 >> 17) & 1);
  std::string::basic_string[abi:nn200100]<0>(v62, "outputPointSize");
  _agcFieldString<unsigned int>(&v96, v62, (*v4 >> 18) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v61, "shaderDebugEnable");
  _agcFieldString<unsigned int>(&v97, &v61.__r_.__value_.__l.__data_, (*v4 >> 19) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v98, "MTL specific state:");
  std::string::basic_string[abi:nn200100]<0>(v59, "pridAllocationStrategy");
  _agcFieldString<char const*>(&v99, v59, _agcPRIDAllocationStrategyStrings[(*v4 >> 20) & 7]);
  std::string::basic_string[abi:nn200100]<0>(__p, "unused");
  _agcFieldString<unsigned int>(&v100, __p, *v4 >> 23);
  _agcGroupWithHeader(&v53, v121, &v83, 18);
  v5 = 54;
  do
  {
    if (v83.__r_.__value_.__s.__data_[v5 * 8 - 1] < 0)
    {
      operator delete(v81[v5]);
    }

    v5 -= 3;
  }

  while (v5 * 8);
  if (v58 < 0)
  {
    operator delete(__p[0]);
  }

  if (v60 < 0)
  {
    operator delete(v59[0]);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (v66 < 0)
  {
    operator delete(v65[0]);
  }

  if (v68 < 0)
  {
    operator delete(v67[0]);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (v71 < 0)
  {
    operator delete(v70[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  if (v75 < 0)
  {
    operator delete(v74[0]);
  }

  if (v77 < 0)
  {
    operator delete(v76[0]);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (v80 < 0)
  {
    operator delete(v79[0]);
  }

  if (v82 < 0)
  {
    operator delete(v81[0]);
  }

  if (SHIBYTE(v121[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v121[0].__r_.__value_.__l.__data_);
  }

  _agcFieldString<std::string>(v121, v54, &v53);
  std::string::basic_string[abi:nn200100]<0>(v70, "colorMaskState");
  std::string::basic_string[abi:nn200100]<0>(v81, "AGCColorMaskState");
  std::string::basic_string[abi:nn200100]<0>(v79, "redEnableBits");
  _agcFieldStringHex(&v83, v79, *(v4 + 8));
  std::string::basic_string[abi:nn200100]<0>(&v78, "greenEnableBits");
  _agcFieldStringHex(&v84, &v78.__r_.__value_.__l.__data_, *(v4 + 9));
  std::string::basic_string[abi:nn200100]<0>(v76, "blueEnableBits");
  _agcFieldStringHex(&v85, v76, *(v4 + 10));
  std::string::basic_string[abi:nn200100]<0>(v74, "alphaEnableBits");
  _agcFieldStringHex(&v86, v74, *(v4 + 11));
  std::string::basic_string[abi:nn200100]<0>(v72, "unknownMaskBits");
  _agcFieldStringHex(&v87, v72, *(v4 + 12));
  _agcGroupWithHeader(&v69, v81, &v83, 5);
  for (i = 0; i != -15; i -= 3)
  {
    if (SHIBYTE(v87.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v87.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  if (v75 < 0)
  {
    operator delete(v74[0]);
  }

  if (v77 < 0)
  {
    operator delete(v76[0]);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (v80 < 0)
  {
    operator delete(v79[0]);
  }

  if (v82 < 0)
  {
    operator delete(v81[0]);
  }

  _agcFieldString<std::string>(&v121[1], v70, &v69);
  _agcGroupWithHeader(&v83, &v56, v121, 2);
  for (j = 0; j != -48; j -= 24)
  {
    if (SHIBYTE(v121[j / 0x18 + 1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v121[j / 0x18 + 1].__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (v71 < 0)
  {
    operator delete(v70[0]);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (v55 < 0)
  {
    operator delete(v54[0]);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(v65, "mutableBuffers");
  _agcFieldStringHex(&v84, v65, *(v4 + 2));
  v8 = v4[16];
  if ((~v8 & 0xF) != 0)
  {
    v10 = -1;
    v11 = 4;
    while (v10 != 6)
    {
      v12 = v8 >> v11;
      ++v10;
      v11 += 4;
      if ((~v12 & 0xF) == 0)
      {
        if (v10 <= 6)
        {
          goto LABEL_68;
        }

        break;
      }
    }

    std::string::basic_string[abi:nn200100]<0>(v81, "AGCLogicalToPhysicalRemap");
    std::string::basic_string[abi:nn200100]<0>(v79, "logicalToPhysical[0]");
    _agcFieldString<unsigned char>(v121, v79, v4[16] & 0xF);
    std::string::basic_string[abi:nn200100]<0>(&v78, "logicalToPhysical[1]");
    _agcFieldString<unsigned char>(&v121[1], &v78.__r_.__value_.__l.__data_, *(v4 + 64) >> 4);
    std::string::basic_string[abi:nn200100]<0>(v76, "logicalToPhysical[2]");
    _agcFieldString<unsigned char>(&v121[2], v76, *(v4 + 65) & 0xF);
    std::string::basic_string[abi:nn200100]<0>(v74, "logicalToPhysical[3]");
    _agcFieldString<unsigned char>(&v121[3], v74, v4[16] >> 12);
    std::string::basic_string[abi:nn200100]<0>(v72, "logicalToPhysical[4]");
    _agcFieldString<unsigned char>(&v121[4], v72, *(v4 + 66) & 0xF);
    std::string::basic_string[abi:nn200100]<0>(v70, "logicalToPhysical[5]");
    _agcFieldString<unsigned char>(&v121[5], v70, (v4[16] >> 20) & 0xF);
    std::string::basic_string[abi:nn200100]<0>(&v69, "logicalToPhysical[6]");
    _agcFieldString<unsigned char>(&v121[6], &v69.__r_.__value_.__l.__data_, *(v4 + 67) & 0xF);
    std::string::basic_string[abi:nn200100]<0>(v67, "logicalToPhysical[7]");
    _agcFieldString<unsigned char>(&v121[7], v67, v4[16] >> 28);
    _agcGroupWithHeader(&v85, v81, v121, 8);
    for (k = 0; k != -192; k -= 24)
    {
      if (SHIBYTE(v121[k / 0x18 + 7].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v121[k / 0x18 + 7].__r_.__value_.__l.__data_);
      }
    }

    if (v68 < 0)
    {
      operator delete(v67[0]);
    }

    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
    }

    if (v71 < 0)
    {
      operator delete(v70[0]);
    }

    if (v73 < 0)
    {
      operator delete(v72[0]);
    }

    if (v75 < 0)
    {
      operator delete(v74[0]);
    }

    if (v77 < 0)
    {
      operator delete(v76[0]);
    }

    if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v78.__r_.__value_.__l.__data_);
    }

    if (v80 < 0)
    {
      operator delete(v79[0]);
    }
  }

  else
  {
LABEL_68:
    std::string::basic_string[abi:nn200100]<0>(v81, "AGCLogicalToPhysicalRemap");
    std::string::basic_string[abi:nn200100]<0>(v121, "logicalToPhysical[0]: dynamic");
    std::string::basic_string[abi:nn200100]<0>(v121[1].__r_.__value_.__r.__words, "logicalToPhysical[1]: dynamic");
    std::string::basic_string[abi:nn200100]<0>(v121[2].__r_.__value_.__r.__words, "logicalToPhysical[2]: dynamic");
    std::string::basic_string[abi:nn200100]<0>(v121[3].__r_.__value_.__r.__words, "logicalToPhysical[3]: dynamic");
    std::string::basic_string[abi:nn200100]<0>(v121[4].__r_.__value_.__r.__words, "logicalToPhysical[4]: dynamic");
    std::string::basic_string[abi:nn200100]<0>(v121[5].__r_.__value_.__r.__words, "logicalToPhysical[5]: dynamic");
    std::string::basic_string[abi:nn200100]<0>(v121[6].__r_.__value_.__r.__words, "logicalToPhysical[6]: dynamic");
    std::string::basic_string[abi:nn200100]<0>(v121[7].__r_.__value_.__r.__words, "logicalToPhysical[7]: dynamic");
    _agcGroupWithHeader(&v85, v81, v121, 8);
    for (m = 0; m != -192; m -= 24)
    {
      if (SHIBYTE(v121[m / 0x18 + 7].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v121[m / 0x18 + 7].__r_.__value_.__l.__data_);
      }
    }
  }

  if (v82 < 0)
  {
    operator delete(v81[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v121, "genCompilerStatistics");
  _agcFieldString<unsigned int>(&v86, &v121[0].__r_.__value_.__l.__data_, v4[15] & 1);
  std::string::basic_string[abi:nn200100]<0>(v81, "genTelemetryStatistics");
  _agcFieldString<unsigned int>(&v87, v81, (v4[15] >> 1) & 1);
  std::string::basic_string[abi:nn200100]<0>(v79, "fragmentOnly");
  _agcFieldString<unsigned int>(&v88, v79, v4[17] & 1);
  std::string::basic_string[abi:nn200100]<0>(&v78, "openglMode");
  _agcFieldString<unsigned int>(&v89, &v78.__r_.__value_.__l.__data_, (v4[17] >> 1) & 1);
  std::string::basic_string[abi:nn200100]<0>(v76, "customBorderColor");
  _agcFieldString<unsigned int>(&v90, v76, (v4[17] >> 2) & 1);
  std::string::basic_string[abi:nn200100]<0>(v74, "disableTextureRWBoundsCheck");
  _agcFieldString<unsigned int>(&v91, v74, (v4[15] >> 2) & 1);
  std::string::basic_string[abi:nn200100]<0>(v72, "debugInstrumentationEnabled");
  _agcFieldString<unsigned int>(&v92, v72, (v4[15] >> 3) & 1);
  std::string::basic_string[abi:nn200100]<0>(v70, "debugInfoEnabled");
  _agcFieldString<unsigned int>(&v93, v70, (v4[15] >> 26) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v69, "forceSoftwareEmulatedRaytracing");
  _agcFieldString<unsigned int>(&v94, &v69.__r_.__value_.__l.__data_, (v4[15] >> 8) & 1);
  std::string::basic_string[abi:nn200100]<0>(v67, "mayLinkBinaryFunctions");
  _agcFieldString<unsigned int>(&v95, v67, (v4[15] >> 9) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v64, "maxTempRegisters");
  _agcFieldString<unsigned int>(&v96, &v64.__r_.__value_.__l.__data_, (v4[15] >> 10));
  std::string::basic_string[abi:nn200100]<0>(v62, "enableStackShadow");
  _agcFieldString<unsigned int>(&v97, v62, (v4[15] >> 27) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v61, "forwardProgressMode");
  _agcFieldString<unsigned int>(&v98, &v61.__r_.__value_.__l.__data_, v4[15] >> 31);
  std::string::basic_string[abi:nn200100]<0>(v59, "enableHLSLDiscardSemantics");
  _agcFieldString<unsigned int>(&v99, v59, (v4[17] >> 3) & 1);
  std::string::basic_string[abi:nn200100]<0>(__p, "textureWriteFPRoundingMode");
  _agcFieldString<unsigned int>(&v100, __p, (v4[17] >> 4) & 3);
  std::string::basic_string[abi:nn200100]<0>(&v56, "usesMeshShader");
  _agcFieldString<unsigned int>(&v101, &v56.__r_.__value_.__l.__data_, (v4[17] >> 8) & 1);
  std::string::basic_string[abi:nn200100]<0>(v54, "statelessPSOOverride");
  _agcFieldString<unsigned int>(&v102, v54, v4[17] >> 14);
  std::string::basic_string[abi:nn200100]<0>(&v53, "lbrtOverride");
  _agcFieldString<unsigned int>(&v103, &v53.__r_.__value_.__l.__data_, HIWORD(v4[17]) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v50, "unused");
  _agcFieldString<unsigned int>(&v104, &v50.__r_.__value_.__l.__data_, v4[17] >> 17);
  _agcStringRepresentation(&v49, v4 + 6);
  v14 = std::string::insert(&v49, 0, "blendState[0]: ");
  v15 = v14->__r_.__value_.__r.__words[2];
  v105 = *&v14->__r_.__value_.__l.__data_;
  v106 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  _agcStringRepresentation(&v48, v4 + 7);
  v16 = std::string::insert(&v48, 0, "blendState[1]: ");
  v17 = v16->__r_.__value_.__r.__words[2];
  v107 = *&v16->__r_.__value_.__l.__data_;
  v108 = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  _agcStringRepresentation(&v47, v4 + 8);
  v18 = std::string::insert(&v47, 0, "blendState[2]: ");
  v19 = v18->__r_.__value_.__r.__words[2];
  v109 = *&v18->__r_.__value_.__l.__data_;
  v110 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  _agcStringRepresentation(&v46, v4 + 9);
  v20 = std::string::insert(&v46, 0, "blendState[3]: ");
  v21 = v20->__r_.__value_.__r.__words[2];
  v111 = *&v20->__r_.__value_.__l.__data_;
  v112 = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  _agcStringRepresentation(&v45, v4 + 10);
  v22 = std::string::insert(&v45, 0, "blendState[4]: ");
  v23 = v22->__r_.__value_.__r.__words[2];
  v113 = *&v22->__r_.__value_.__l.__data_;
  v114 = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  _agcStringRepresentation(&v44, v4 + 11);
  v24 = std::string::insert(&v44, 0, "blendState[5]: ");
  v25 = v24->__r_.__value_.__r.__words[2];
  v115 = *&v24->__r_.__value_.__l.__data_;
  v116 = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  _agcStringRepresentation(&v43, v4 + 12);
  v26 = std::string::insert(&v43, 0, "blendState[6]: ");
  v27 = v26->__r_.__value_.__r.__words[2];
  v117 = *&v26->__r_.__value_.__l.__data_;
  v118 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  _agcStringRepresentation(&v42, v4 + 13);
  v28 = std::string::insert(&v42, 0, "blendState[7]: ");
  v29 = v28->__r_.__value_.__r.__words[2];
  v119 = *&v28->__r_.__value_.__l.__data_;
  v120 = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  _agcGroupWithHeader(&v41, v51, &v83, 30);
  v30 = 90;
  do
  {
    if (v83.__r_.__value_.__s.__data_[v30 * 8 - 1] < 0)
    {
      operator delete(v81[v30]);
    }

    v30 -= 3;
  }

  while (v30 * 8);
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (v55 < 0)
  {
    operator delete(v54[0]);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (v58 < 0)
  {
    operator delete(__p[0]);
  }

  if (v60 < 0)
  {
    operator delete(v59[0]);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (v68 < 0)
  {
    operator delete(v67[0]);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (v71 < 0)
  {
    operator delete(v70[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  if (v75 < 0)
  {
    operator delete(v74[0]);
  }

  if (v77 < 0)
  {
    operator delete(v76[0]);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (v80 < 0)
  {
    operator delete(v79[0]);
  }

  if (v82 < 0)
  {
    operator delete(v81[0]);
  }

  if (SHIBYTE(v121[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v121[0].__r_.__value_.__l.__data_);
  }

  if (v66 < 0)
  {
    operator delete(v65[0]);
  }

  if (v52 < 0)
  {
    operator delete(v51[0]);
  }

  v31 = *(this + 660);
  std::string::basic_string[abi:nn200100]<0>(v59, "AGCDrawBufferState");
  std::string::basic_string[abi:nn200100]<0>(v81, "AGCDrawBufferStateInternal");
  std::string::basic_string[abi:nn200100]<0>(v79, "enabledBits");
  _agcFieldStringHex(&v83, v79, *(v31 + 32));
  std::string::basic_string[abi:nn200100]<0>(&v78, "sampleCount");
  _agcFieldString<unsigned char>(&v84, &v78.__r_.__value_.__l.__data_, 1 << (BYTE1(*(v31 + 32)) & 3));
  std::string::basic_string[abi:nn200100]<0>(v76, "colorSampleCount");
  _agcFieldString<unsigned char>(&v85, v76, 1 << ((*(v31 + 32) >> 10) & 3));
  v32 = *(v31 + 32) & 0x1FF000;
  if (v32 == 2093056)
  {
    std::string::basic_string[abi:nn200100]<0>(v72, "outputPartitionSize");
    std::string::basic_string[abi:nn200100]<0>(v70, "unknown");
    _agcFieldString<std::string>(&v86, v72, v70);
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(v74, "outputPartitionSize");
    v33 = *(v31 + 32);
    if ((~v33 & 0x1FF000) == 0)
    {
      goto LABEL_255;
    }

    std::to_string(v121, (v33 >> 12) & 0x1FF);
    _agcFieldString<std::string>(&v86, v74, v121);
    if (SHIBYTE(v121[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v121[0].__r_.__value_.__l.__data_);
    }
  }

  v34 = *(v31 + 32);
  if ((v34 & 0x400000) != 0)
  {
    std::string::basic_string[abi:nn200100]<0>(&v69, "LIBSpilling");
    v35 = *(v31 + 32);
    if ((v35 & 0x400000) != 0)
    {
      _agcFieldString<unsigned char>(&v87, &v69.__r_.__value_.__l.__data_, (v35 & 0x200000) != 0);
      goto LABEL_170;
    }

LABEL_255:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  std::string::basic_string[abi:nn200100]<0>(v67, "LIBSpilling");
  std::string::basic_string[abi:nn200100]<0>(v65, "unknown");
  _agcFieldString<std::string>(&v87, v67, v65);
LABEL_170:
  std::string::basic_string[abi:nn200100]<0>(&v64, "forceSoftwareEmulatedRaytracing");
  _agcFieldString<unsigned char>(&v88, &v64.__r_.__value_.__l.__data_, (*(v31 + 32) & 0x800000) != 0);
  std::string::basic_string[abi:nn200100]<0>(v62, "maxSlabIndex");
  _agcFieldString<unsigned char>(&v89, v62, *(v31 + 35) & 0xF);
  std::string::basic_string[abi:nn200100]<0>(&v61, "useSlabs");
  _agcFieldString<unsigned char>(&v90, &v61.__r_.__value_.__l.__data_, (*(v31 + 32) & 0x10000000) != 0);
  _agcGroupWithHeader(v121, v81, &v83, 8);
  for (n = 0; n != -24; n -= 3)
  {
    if (SHIBYTE(v90.__r_.__value_.__r.__words[n + 2]) < 0)
    {
      operator delete(*(&v90.__r_.__value_.__l.__data_ + n * 8));
    }
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v34 & 0x400000) == 0)
    {
      goto LABEL_180;
    }

LABEL_185:
    if ((SHIBYTE(v69.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_188;
    }

    v37 = v69.__r_.__value_.__r.__words[0];
    goto LABEL_187;
  }

  operator delete(v64.__r_.__value_.__l.__data_);
  if ((v34 & 0x400000) != 0)
  {
    goto LABEL_185;
  }

LABEL_180:
  if (v66 < 0)
  {
    operator delete(v65[0]);
  }

  if (v68 < 0)
  {
    v37 = v67[0];
LABEL_187:
    operator delete(v37);
  }

LABEL_188:
  if (v32 != 2093056)
  {
    if ((v75 & 0x80000000) == 0)
    {
      goto LABEL_196;
    }

    v38 = v74[0];
    goto LABEL_195;
  }

  if (v71 < 0)
  {
    operator delete(v70[0]);
  }

  if (v73 < 0)
  {
    v38 = v72[0];
LABEL_195:
    operator delete(v38);
  }

LABEL_196:
  if (v77 < 0)
  {
    operator delete(v76[0]);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (v80 < 0)
  {
    operator delete(v79[0]);
  }

  if (v82 < 0)
  {
    operator delete(v81[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v81, "encoded : ");
  std::string::basic_string[abi:nn200100]<0>(v79, "encoded[0]");
  _agcStringRepresentation(&v78, v31);
  _agcFieldString<std::string>(&v83, v79, &v78);
  std::string::basic_string[abi:nn200100]<0>(v76, "encoded[1]");
  _agcStringRepresentation(&v64, (v31 + 4));
  _agcFieldString<std::string>(&v84, v76, &v64);
  std::string::basic_string[abi:nn200100]<0>(v62, "encoded[2]");
  _agcStringRepresentation(&v61, (v31 + 8));
  _agcFieldString<std::string>(&v85, v62, &v61);
  std::string::basic_string[abi:nn200100]<0>(__p, "encoded[3]");
  _agcStringRepresentation(&v56, (v31 + 12));
  _agcFieldString<std::string>(&v86, __p, &v56);
  std::string::basic_string[abi:nn200100]<0>(v54, "encoded[4]");
  _agcStringRepresentation(&v53, (v31 + 16));
  _agcFieldString<std::string>(&v87, v54, &v53);
  std::string::basic_string[abi:nn200100]<0>(v51, "encoded[5]");
  _agcStringRepresentation(&v50, (v31 + 20));
  _agcFieldString<std::string>(&v88, v51, &v50);
  std::string::basic_string[abi:nn200100]<0>(&v49, "encoded[6]");
  _agcStringRepresentation(&v48, (v31 + 24));
  _agcFieldString<std::string>(&v89, &v49.__r_.__value_.__l.__data_, &v48);
  std::string::basic_string[abi:nn200100]<0>(&v47, "encoded[7]");
  _agcStringRepresentation(&v46, (v31 + 28));
  _agcFieldString<std::string>(&v90, &v47.__r_.__value_.__l.__data_, &v46);
  _agcGroupWithHeader(&v121[1], v81, &v83, 8);
  std::string::basic_string[abi:nn200100]<0>(&v45, "_unused");
  _agcFieldString<unsigned int>(&v121[2], &v45.__r_.__value_.__l.__data_, *(v31 + 36));
  _agcGroupWithHeader(&v44, v59, v121, 3);
  for (ii = 0; ii != -72; ii -= 24)
  {
    if (SHIBYTE(v121[ii / 0x18 + 2].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v121[ii / 0x18 + 2].__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  for (jj = 0; jj != -24; jj -= 3)
  {
    if (SHIBYTE(v90.__r_.__value_.__r.__words[jj + 2]) < 0)
    {
      operator delete(*(&v90.__r_.__value_.__l.__data_ + jj * 8));
    }
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (v52 < 0)
  {
    operator delete(v51[0]);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (v55 < 0)
  {
    operator delete(v54[0]);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (v58 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (v77 < 0)
  {
    operator delete(v76[0]);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (v80 < 0)
  {
    operator delete(v79[0]);
  }

  if (v82 < 0)
  {
    operator delete(v81[0]);
  }

  if (v60 < 0)
  {
    operator delete(v59[0]);
  }

  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v41.__r_.__value_.__l.__data_, &v44.__r_.__value_.__l.__data_);
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }
}

void _agcFieldString<unsigned int>(std::string *a1, const void **a2, unsigned int __val)
{
  std::to_string(&v5, __val);
  _agcFieldString<std::string>(a1, a2, &v5);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

{
  std::to_string(&__p, __val);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = &v12;
  std::string::basic_string[abi:nn200100](&v12, v5 + 3);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v12.__r_.__value_.__r.__words[0];
  }

  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    memmove(v6, v7, v5);
  }

  *(&v6->__r_.__value_.__l.__data_ + v5) = 2112032;
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

  v10 = std::string::append(&v12, p_p, size);
  *a1 = *v10;
  v10->__r_.__value_.__r.__words[0] = 0;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void _agcFieldString<char const*>(std::string *a1, const void **a2, char *__s)
{
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  _agcFieldString<std::string>(a1, a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

{
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = &v13;
  std::string::basic_string[abi:nn200100](&v13, v5 + 3);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v13.__r_.__value_.__r.__words[0];
  }

  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    memmove(v6, v7, v5);
  }

  *(&v6->__r_.__value_.__l.__data_ + v5) = 2112032;
  if ((v12 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::string::append(&v13, v8, v9);
  *a1 = *v10;
  v10->__r_.__value_.__r.__words[0] = 0;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void _agcGroupWithHeader(std::string *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *a2, *(a2 + 8));
  }

  else
  {
    v26 = *a2;
  }

  _agcIndentedLine(&v27, &v26, 0);
  std::string::basic_string[abi:nn200100]<0>(v21, "{");
  _agcIndentedLine(&__p, v21, 0);
  if ((v25 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v25 & 0x80u) == 0)
  {
    v8 = v25;
  }

  else
  {
    v8 = v24;
  }

  v9 = std::string::append(&v27, p_p, v8);
  v10 = v9->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (a4)
  {
    for (i = 24 * a4; i; i -= 24)
    {
      if (*(a3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v27, *a3, *(a3 + 8));
      }

      else
      {
        v27 = *a3;
      }

      v12 = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v20, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
      }

      else
      {
        v20 = v27;
      }

      _agcIndentedLine(&__p, &v20, 1);
      if ((v25 & 0x80u) == 0)
      {
        v13 = &__p;
      }

      else
      {
        v13 = __p;
      }

      if ((v25 & 0x80u) == 0)
      {
        v14 = v25;
      }

      else
      {
        v14 = v24;
      }

      std::string::append(&v28, v13, v14);
      if (v25 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
        if (v12 < 0)
        {
LABEL_39:
          operator delete(v27.__r_.__value_.__l.__data_);
        }
      }

      else if (v12 < 0)
      {
        goto LABEL_39;
      }

      a3 += 24;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v18, "}");
  _agcIndentedLine(&v27, v18, 0);
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v28;
  }

  else
  {
    v15 = v28.__r_.__value_.__r.__words[0];
  }

  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v28.__r_.__value_.__l.__size_;
  }

  v17 = std::string::insert(&v27, 0, v15, size);
  *a1 = *v17;
  v17->__r_.__value_.__r.__words[0] = 0;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }
}

{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *a2, *(a2 + 8));
  }

  else
  {
    v26 = *a2;
  }

  _agcIndentedLine(&v27, &v26, 0);
  std::string::basic_string[abi:nn200100]<0>(v21, "{");
  _agcIndentedLine(&__p, v21, 0);
  if ((v25 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v25 & 0x80u) == 0)
  {
    v8 = v25;
  }

  else
  {
    v8 = v24;
  }

  v9 = std::string::append(&v27, p_p, v8);
  v10 = v9->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (a4)
  {
    for (i = 24 * a4; i; i -= 24)
    {
      if (*(a3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v27, *a3, *(a3 + 8));
      }

      else
      {
        v27 = *a3;
      }

      v12 = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v20, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
      }

      else
      {
        v20 = v27;
      }

      _agcIndentedLine(&__p, &v20, 1);
      if ((v25 & 0x80u) == 0)
      {
        v13 = &__p;
      }

      else
      {
        v13 = __p;
      }

      if ((v25 & 0x80u) == 0)
      {
        v14 = v25;
      }

      else
      {
        v14 = v24;
      }

      std::string::append(&v28, v13, v14);
      if (v25 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
        if (v12 < 0)
        {
LABEL_39:
          operator delete(v27.__r_.__value_.__l.__data_);
        }
      }

      else if (v12 < 0)
      {
        goto LABEL_39;
      }

      a3 += 24;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v18, "}");
  _agcIndentedLine(&v27, v18, 0);
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v28;
  }

  else
  {
    v15 = v28.__r_.__value_.__r.__words[0];
  }

  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v28.__r_.__value_.__l.__size_;
  }

  v17 = std::string::insert(&v27, 0, v15, size);
  *a1 = *v17;
  v17->__r_.__value_.__r.__words[0] = 0;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }
}

void _agcFieldString<std::string>(std::string *a1, const void **a2, uint64_t a3)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = &v13;
  std::string::basic_string[abi:nn200100](&v13, v6 + 3);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v13.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    memmove(v7, v8, v6);
  }

  *(&v7->__r_.__value_.__l.__data_ + v6) = 2112032;
  v9 = *(a3 + 23);
  if (v9 >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  if (v9 >= 0)
  {
    v11 = *(a3 + 23);
  }

  else
  {
    v11 = *(a3 + 8);
  }

  v12 = std::string::append(&v13, v10, v11);
  *a1 = *v12;
  v12->__r_.__value_.__r.__words[0] = 0;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

uint64_t _agcFieldStringHex(std::string *a1, const void **a2, uint64_t a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v11);
  v6 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v12, "0x", 2);
  *(&v12 + *(v12 - 24) + 8) = *(&v12 + *(v12 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x20F331C30](v6, a3);
  std::stringbuf::str();
  _agcFieldString<std::string>(a1, a2, &__p);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  v11[0] = *MEMORY[0x277D82818];
  v7 = *(MEMORY[0x277D82818] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v12 = v7;
  v13 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return MEMORY[0x20F331D40](&v16);
}

void _agcFieldString<unsigned char>(std::string *a1, const void **a2, unsigned __int8 a3)
{
  std::to_string(&v5, a3);
  _agcFieldString<std::string>(a1, a2, &v5);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void _agcStringRepresentation(std::string *a1, unsigned int *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(v23, "AGCBlendState");
  std::string::basic_string[abi:nn200100]<0>(v21, "enabled");
  if (*a2)
  {
    v4 = "yes";
  }

  else
  {
    v4 = "no";
  }

  _agcFieldString<char const*>(&v25, v21, v4);
  std::string::basic_string[abi:nn200100]<0>(v19, "src");
  _agcFieldString<char const*>(&v26, v19, _agcBlendFactorStrings[(*a2 >> 1) & 0x1F]);
  std::string::basic_string[abi:nn200100]<0>(v17, "dst");
  _agcFieldString<char const*>(&v27, v17, _agcBlendFactorStrings[(*a2 >> 6) & 0x1F]);
  std::string::basic_string[abi:nn200100]<0>(v15, "srcA");
  _agcFieldString<char const*>(&v28, v15, _agcBlendFactorStrings[*a2 >> 11]);
  std::string::basic_string[abi:nn200100]<0>(v13, "dstA");
  _agcFieldString<char const*>(&v29, v13, _agcBlendFactorStrings[*(a2 + 1) & 0x1F]);
  std::string::basic_string[abi:nn200100]<0>(v11, "equation");
  _agcFieldString<char const*>(&v30, v11, _agcBlendEquationStrings[(*a2 >> 21) & 7]);
  std::string::basic_string[abi:nn200100]<0>(v9, "equationA");
  _agcFieldString<char const*>(&v31, v9, _agcBlendEquationStrings[*(a2 + 3) & 7]);
  std::string::basic_string[abi:nn200100]<0>(__p, "unknown");
  if ((*a2 & 0x8000000) != 0)
  {
    v5 = "yes";
  }

  else
  {
    v5 = "no";
  }

  _agcFieldString<char const*>(&v32, __p, v5);
  _agcGroupWithHeader(a1, v23, &v25, 8);
  for (i = 0; i != -24; i -= 3)
  {
    if (SHIBYTE(v32.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v32.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }
}

void _agcStringRepresentation(std::string *a1, _DWORD *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(v26, "AGCDrawBuffer");
  std::string::basic_string[abi:nn200100]<0>(v24, "pbeSourceFormat");
  if ((*a2 & 0x1F) == 0x17)
  {
    v4 = "unknown";
  }

  else
  {
    v4 = _agcPBESourceFormatTypeStrings[*a2 & 0x1F];
  }

  std::string::basic_string[abi:nn200100]<0>(v22, v4);
  _agcFieldString<std::string>(&v28, v24, v22);
  std::string::basic_string[abi:nn200100]<0>(v20, "numWrittenComponents");
  _agcFieldString<unsigned int>(&v29, v20, *a2 >> 5);
  std::string::basic_string[abi:nn200100]<0>(v18, "gammaCorrection");
  _agcFieldString<unsigned int>(&v30, v18, (*a2 >> 8) & 1);
  std::string::basic_string[abi:nn200100]<0>(v16, "preEmitSwizzle");
  _agcFieldString<char const*>(&v31, v16, _agcPreEmitSwizzleStrings[(*a2 >> 9) & 7]);
  std::string::basic_string[abi:nn200100]<0>(v14, "outputPartitionOffset");
  _agcFieldString<unsigned int>(&v32, v14, (*a2 >> 12));
  std::string::basic_string[abi:nn200100]<0>(v12, "knownOnLIB");
  _agcFieldString<unsigned int>(&v33, v12, (*a2 >> 20) & 1);
  std::string::basic_string[abi:nn200100]<0>(v10, "slabIndex");
  _agcFieldString<unsigned int>(&v34, v10, (*a2 >> 21) & 0xF);
  std::string::basic_string[abi:nn200100]<0>(v8, "packed");
  _agcFieldString<unsigned int>(&v35, v8, (*a2 >> 25) & 1);
  std::string::basic_string[abi:nn200100]<0>(__p, "unused");
  _agcFieldString<unsigned int>(&v36, __p, *a2 >> 26);
  _agcGroupWithHeader(a1, v26, &v28, 9);
  for (i = 0; i != -27; i -= 3)
  {
    if (SHIBYTE(v36.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v36.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }
}

{
  v46 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(v31, "AGCDynamicLibraryStateAGP");
  std::string::basic_string[abi:nn200100]<0>(v29, "genCompilerStatistics");
  _agcFieldString<unsigned int>(&v33, v29, *a2 & 1);
  std::string::basic_string[abi:nn200100]<0>(v27, "genTelemetryStatistics");
  _agcFieldString<unsigned int>(&v34, v27, (*a2 >> 1) & 1);
  std::string::basic_string[abi:nn200100]<0>(v25, "disableTextureRWBoundsCheck");
  _agcFieldString<unsigned int>(&v35, v25, (*a2 >> 2) & 1);
  std::string::basic_string[abi:nn200100]<0>(v23, "debugInstrumentationEnabled");
  _agcFieldString<unsigned int>(&v36, v23, (*a2 >> 3) & 1);
  std::string::basic_string[abi:nn200100]<0>(v21, "debugInfoEnabled");
  _agcFieldString<unsigned int>(&v37, v21, (*a2 >> 26) & 1);
  std::string::basic_string[abi:nn200100]<0>(v19, "bufferBoundsCheckMode");
  _agcFieldString<unsigned int>(&v38, v19, (*a2 >> 4) & 7);
  std::string::basic_string[abi:nn200100]<0>(v17, "disableDMAPromotion");
  _agcFieldString<unsigned int>(&v39, v17, (*a2 >> 7) & 1);
  std::string::basic_string[abi:nn200100]<0>(v15, "forceSoftwareEmulatedRaytracing");
  _agcFieldString<unsigned int>(&v40, v15, (*a2 >> 8) & 1);
  std::string::basic_string[abi:nn200100]<0>(v13, "mayLinkBinaryFunctions");
  _agcFieldString<unsigned int>(&v41, v13, (*a2 >> 9) & 1);
  std::string::basic_string[abi:nn200100]<0>(v11, "maxTempRegisters");
  _agcFieldString<unsigned int>(&v42, v11, (*a2 >> 10));
  std::string::basic_string[abi:nn200100]<0>(v9, "enableStackShadow");
  _agcFieldString<unsigned int>(&v43, v9, (*a2 >> 27) & 1);
  std::string::basic_string[abi:nn200100]<0>(v7, "forwardProgressMode");
  _agcFieldString<unsigned int>(&v44, v7, *a2 >> 31);
  std::string::basic_string[abi:nn200100]<0>(__p, "unused");
  _agcFieldString<unsigned int>(&v45, __p, a2[1] >> 3);
  _agcGroupWithHeader(a1, v31, &v33, 13);
  v4 = 39;
  do
  {
    if (v33.__r_.__value_.__s.__data_[v4 * 8 - 1] < 0)
    {
      operator delete(v31[v4]);
    }

    v4 -= 3;
  }

  while (v4 * 8);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }
}

char *std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t a1, const void **a2, const void **a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (*(a3 + 23) >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = a3[1];
  }

  result = std::string::basic_string[abi:nn200100](a1, v6 + v5);
  if (result[23] >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

void _agcIndentedLine(void ***a1, std::string::value_type *a2, int a3)
{
  std::string::basic_string[abi:nn200100]<0>(&v14, &unk_20E75F419);
  for (; a3; --a3)
  {
    std::string::append(&v14, "  ");
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v14;
  }

  v6 = a2[23];
  if (v6 < 0)
  {
    v7 = a2;
    a2 = *a2;
    v6 = *(v7 + 1);
  }

  for (; v6; --v6)
  {
    v8 = *a2;
    std::string::push_back(&__p, *a2);
    if (v8 == 10)
    {
      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v14;
      }

      else
      {
        v9 = v14.__r_.__value_.__r.__words[0];
      }

      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v14.__r_.__value_.__l.__size_;
      }

      std::string::append(&__p, v9, size);
    }

    ++a2;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = __p.__r_.__value_.__l.__size_;
  }

  std::string::basic_string[abi:nn200100](a1, v11 + 1);
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (v11)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    memmove(a1, p_p, v11);
  }

  *(a1 + v11) = 10;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

{
  std::string::basic_string[abi:nn200100]<0>(&v14, &unk_20E75F419);
  if (a3)
  {
    std::string::append(&v14, "  ");
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v14;
  }

  v6 = a2[23];
  if (v6 < 0)
  {
    v7 = a2;
    a2 = *a2;
    v6 = *(v7 + 1);
  }

  for (; v6; --v6)
  {
    v8 = *a2;
    std::string::push_back(&__p, *a2);
    if (v8 == 10)
    {
      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v14;
      }

      else
      {
        v9 = v14.__r_.__value_.__r.__words[0];
      }

      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v14.__r_.__value_.__l.__size_;
      }

      std::string::append(&__p, v9, size);
    }

    ++a2;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = __p.__r_.__value_.__l.__size_;
  }

  std::string::basic_string[abi:nn200100](a1, v11 + 1);
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (v11)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    memmove(a1, p_p, v11);
  }

  *(a1 + v11) = 10;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void AGCLLVMObject::getObjectName(AGCLLVMObject *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 5087) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 633), *(this + 634));
  }

  else
  {
    *a2 = *(this + 211);
  }
}

void virtual thunk toAGCLLVMAGPFragmentShader::~AGCLLVMAGPFragmentShader(AGCLLVMAGPFragmentShader *this)
{
  v1 = this + *(*this - 24);
  AGCLLVMObject::~AGCLLVMObject((v1 + 7528));

  JUMPOUT(0x20F331DC0);
}

{
  v2 = (v1 + 7528);

  AGCLLVMObject::~AGCLLVMObject(v2);
}

uint64_t AGCLLVMFragmentShader::isAnyPsoStateUnknown(AGCLLVMFragmentShader *this)
{
  v1 = *(this + 93);
  if ((*v1 & 0x1F) == 0x17)
  {
    return 1;
  }

  v3 = v1 + 1;
  v4 = -1;
  while (v4 != 6)
  {
    v5 = *v3++;
    ++v4;
    if ((v5 & 0x1F) == 0x17)
    {
      return v4 < 7;
    }
  }

  v4 = 7;
  return v4 < 7;
}

void non-virtual thunk toAGCLLVMAGPFragmentShader::~AGCLLVMAGPFragmentShader(AGCLLVMAGPFragmentShader *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + 2992));

  JUMPOUT(0x20F331DC0);
}

{

  AGCLLVMObject::~AGCLLVMObject((this + 2992));
}

uint64_t AGCLLVMAGPFragmentShader::buildPixelPositionInTile(AGCLLVMAGPFragmentShader *this, llvm::Type *a2, uint64_t a3)
{
  v5 = this + *(*this - 24);
  v6 = *(v5 + 271);
  v9 = *(v5 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v10, (v5 + 1712));
  v11 = *(v5 + 452);
  v7 = (*(*v6 + 272))(v6, &v9, a2, a3);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return v7;
}

void AGCLLVMAGPFragmentShader::setupPullMode_Or_ParentVertex_Globals(AGCLLVMAGPFragmentShader *this, uint64_t a2, unint64_t a3)
{
  v22 = this + 7048;
  v21 = this + 2016;
  v33 = *MEMORY[0x277D85DE8];
  v20 = this + 7088;
  v19 = this + 7208;
  v18 = this + 7368;
  for (i = 1; i != 5; ++i)
  {
    v5 = *&v22[4 * i];
    if (v5)
    {
      v6 = llvm::ArrayType::get(*&v21[*(*this - 24)], i);
      llvm::ArrayType::get(v6, v5);
      v7 = llvm::User::operator new(0x58);
      v29 = "agc.pullmode_or_parentvertex_";
      v24 = v24 & 0xFFFFFFFF00000000 | i;
      v31 = v24;
      v32 = 2051;
      v26[0] = &v29;
      v27[0] = "_component_coefficients";
      v28 = 770;
      v8 = llvm::GlobalVariable::GlobalVariable();
      *(v8 + 80) |= 1u;
      v23 = v23 & 0xFFFFFFFFFFFF0000 | 0x104;
      llvm::GlobalObject::setAlignment();
      llvm::ValueHandleBase::operator=(&v20[24 * i], v7);
      v26[0] = v27;
      v26[1] = 0x400000000;
      v9 = llvm::ValueAsMetadata::get();
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v26, v9);
      llvm::ConstantInt::get();
      v10 = llvm::ValueAsMetadata::get();
      llvm::ConstantInt::get();
      v11 = llvm::ValueAsMetadata::get();
      llvm::ConstantInt::get();
      v12 = llvm::ValueAsMetadata::get();
      v25 = i;
      v13 = &v19[32 * i];
      if (*(v13 + 2))
      {
        v14 = v12;
        v15 = 0;
        do
        {
          if (*(*&v18[32 * v25] + 4 * v15) == 1)
          {
            v16 = v10;
          }

          else
          {
            v16 = v11;
          }

          v30 = 0;
          v31 = 0;
          v29 = v16;
          llvm::ConstantInt::get();
          v30 = llvm::ValueAsMetadata::get();
          v31 = v14;
          Impl = llvm::MDTuple::getImpl();
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v26, Impl);
          ++v15;
        }

        while (v15 < *(v13 + 2));
      }

      llvm::MDTuple::getImpl();
      llvm::NamedMDNode::addOperand();
      if (v26[0] != v27)
      {
        free(v26[0]);
      }

      i = v25;
    }
  }
}

uint64_t AGCLLVMAGPFragmentShader::replacePullMode_Or_ParentVertex_Index(void *a1, unsigned int *a2, uint64_t a3, BOOL a4)
{
  v6 = llvm::ConstantInt::get();
  v7 = a1 + *(*a1 - 24);
  v8 = *(a2 + 3);
  v11 = 257;
  return llvm::IRBuilderBase::CreateCast((v7 + 1712), 48, v6, v8, v10);
}

uint64_t llvm::StringMap<AGCLLVMUserObject::AIRSampleFunction,llvm::MallocAllocator>::~StringMap(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
          llvm::deallocate_buffer(*v8, v8, *v8 + 65);
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  free(*a1);
  return a1;
}

llvm::ValueAsMetadata *AGCLLVMAGPFragmentShader::getBarycentricCoordVarying@<X0>(AGCLLVMUserShader *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17[1] = 0;
  v18 = 0;
  v17[0] = 0;
  v15 = 0;
  AGCLLVMAGPFragmentShader::agpParseStageIOMetadata(a1, a3, v17, &v18 + 1, &v18, &v16, &v15, &v14);
  if ((*(a2 + 8) & 0xFE) == 0x12)
  {
    a2 = **(a2 + 16);
  }

  if (v15 == 2 && a2 == *(a1 + *(*a1 - 24) + 1888))
  {
    v8 = 5;
  }

  else
  {
    v8 = v15;
  }

  v10 = v18;
  v9 = HIDWORD(v18);
  *(a4 + 16) = 0;
  *a4 = 0uLL;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0uLL;
  *(a4 + 48) = a4 + 64;
  *(a4 + 56) = 0x500000000;
  llvm::SmallVectorImpl<unsigned int>::assign((a4 + 48), 5uLL, -559038737);
  *(a4 + 8) = v10;
  *(a4 + 12) = v8;
  *a4 = 2;
  *(a4 + 4) = v9;
  v11 = v9 != 0;
  *(a4 + 16) = v11;
  result = AGCLLVMUserFragmentShader::setupInterpolation(a1, 8u, v11, 2);
  *(a4 + 32) = result;
  *(a4 + 40) = v13;
  return result;
}

uint64_t llvm::StringMap<InterpolationLocation,llvm::MallocAllocator>::~StringMap(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
          llvm::deallocate_buffer(*v8, v8, *v8 + 17);
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  free(*a1);
  return a1;
}

uint64_t llvm::StringMap<AGCCodeTranslator::VertexShaderVaryingType,llvm::MallocAllocator>::~StringMap(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
          llvm::deallocate_buffer(*v8, v8, *v8 + 17);
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  free(*a1);
  return a1;
}

llvm::ValueAsMetadata *AGCLLVMAGPFragmentShader::getPrimitiveIdVarying@<X0>(AGCLLVMAGPFragmentShader *this@<X0>, llvm::Type *a2@<X1>, uint64_t a3@<X8>)
{
  ComponentType = AGCLLVMBuilder::getComponentType((this + *(*this - 24) + 1704), a2, &v8);
  *(a3 + 16) = 0;
  *a3 = 0u;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = a3 + 64;
  *(a3 + 56) = 0x500000000;
  llvm::SmallVectorImpl<unsigned int>::assign((a3 + 48), 5uLL, -559038737);
  *a3 = 0x100000001;
  *(a3 + 8) = 3;
  *(a3 + 12) = ComponentType;
  *(a3 + 16) = 0;
  result = AGCLLVMUserFragmentShader::setupInterpolation(this, 7u, 0, 1);
  *(a3 + 32) = result;
  *(a3 + 40) = v7;
  return result;
}

void AGCLLVMAGPFragmentShader::getFragmentViewportOrLayerIdVarying(void *a1@<X0>, const llvm::Type *a2@<X1>, void *a3@<X2>, size_t a4@<X3>, uint64_t a5@<X8>)
{
  if ((*(a1[801] + 68) & 0x100) != 0)
  {
    v10 = 3;
  }

  else
  {
    v10 = 1;
  }

  ComponentType = AGCLLVMBuilder::getComponentType((a1 + *(*a1 - 24) + 1704), a2, &v12);
  AGCLLVMAGPFragmentShader::getFragmentVarying(a5, a1, a2, a3, a4, v10, 3, 1, ComponentType, 0);
}

llvm::Instruction *AGCLLVMBuilder::CreateGEP(uint64_t a1, llvm::Type **this, uint64_t **a3, uint64_t a4, uint64_t a5)
{
  v10 = AGCLLVMBuilder::tryDeducePointeeType(this, this);
  if (v10)
  {
    v11 = v10;
    llvm::Type::isOpaquePointerTy(*this);
    v12 = a1 + 8;
    v13 = v11;
  }

  else
  {
    v12 = a1 + 8;
    v13 = 0;
  }

  return llvm::IRBuilderBase::CreateGEP(v12, v13, this, a3, a4, a5);
}

uint64_t AGCLLVMAGPFragmentShader::calculateInterpolationCoords(AGCLLVMAGPFragmentShader *this, llvm::Type *a2, llvm::Value *a3)
{
  v3 = a2;
  if (a2 >= 2)
  {
    llvm::FixedVectorType::get();
  }

  v5 = 0;
  v52 = llvm::UndefValue::get();
  v53 = v52;
  v47 = this + 1704;
  v45 = this + 1712;
  v50 = v52;
  v51 = v52;
  v49 = &v53;
  v6 = &v51;
  v7 = 1;
  v8 = v3;
  do
  {
    v9 = v7;
    v10 = (this + *(*this - 24));
    v11 = v10[271];
    v12 = v10[237];
    v46 = v7;
    if (*(v11 + 1912) == 1)
    {
      v13 = 1696;
      if (v9)
      {
        v13 = 1688;
      }

      v14 = *(v11 + v13);
      if (v14)
      {
        v15 = strlen(*(v11 + v13));
      }

      else
      {
        v15 = 0;
      }

      inserted = AGCLLVMBuilder::getOrInsertFunction<>((v10 + 213), v14, v15, v10[234]);
      v18 = *(*this - 24);
      v57 = 257;
      v19 = llvm::IRBuilderBase::CreateCall(&v45[v18], *(inserted + 24), inserted, 0, 0, v56);
      v55 = 257;
      FPToUI = llvm::IRBuilderBase::CreateFPToUI(&v45[v18], v19, v12, v54);
      v21 = *(*this - 24);
      v22 = llvm::ConstantInt::get();
      v57 = 257;
      v16 = llvm::IRBuilderBase::CreateAnd(&v45[v21], FPToUI, v22, v56);
    }

    else
    {
      v16 = (*(*this + 640))(this, v12, v5);
    }

    v23 = this + *(*this - 24);
    v24 = *(v23 + 234);
    v57 = 257;
    UIToFP = llvm::IRBuilderBase::CreateUIToFP((v23 + 1712), v16, v24, v56);
    v25 = &v47[*(*this - 24)];
    v57 = 257;
    v26 = llvm::ConstantInt::get();
    Element = llvm::IRBuilderBase::CreateExtractElement((v25 + 8), a3, v26, v56);
    if (v3)
    {
      v28 = Element;
      v29 = 0;
      do
      {
        if (v3 < 2)
        {
          *v49 = UIToFP;
          InsertElement = v28;
        }

        else
        {
          v30 = v3;
          v31 = &v47[*(*this - 24)];
          v32 = *v49;
          v57 = 257;
          v33 = llvm::ConstantInt::get();
          *v49 = llvm::IRBuilderBase::CreateInsertElement((v31 + 8), v32, UIToFP, v33, v56);
          v34 = &v47[*(*this - 24)];
          v35 = *v6;
          v57 = 257;
          v36 = llvm::ConstantInt::get();
          v37 = (v34 + 8);
          v3 = v30;
          InsertElement = llvm::IRBuilderBase::CreateInsertElement(v37, v35, v28, v36, v56);
        }

        *v6 = InsertElement;
        ++v29;
      }

      while (v8 != v29);
    }

    v39 = *(*this - 24);
    v40 = *v49;
    v41 = *v6;
    v57 = 257;
    FAdd = llvm::IRBuilderBase::CreateFAdd(&v45[v39], v40, v41, v56);
    v7 = 0;
    *v49 = FAdd;
    v5 = 1;
    v49 = &v52;
    v6 = &v50;
  }

  while ((v46 & 1) != 0);
  return v53;
}

llvm::Value *AGCLLVMAGPFragmentShader::interpolateAtOffset(uint64_t *a1, llvm::Type *a2, llvm::Type *a3, llvm::Type **a4, uint64_t a5, llvm::FixedVectorType **a6)
{
  v6 = a6;
  v7 = a3;
  v8 = a2;
  v110 = *MEMORY[0x277D85DE8];
  v101 = a3;
  if (a3 < 2)
  {
    v10 = llvm::UndefValue::get();
    v107 = v10;
    v108 = v10;
    v109 = v10;
    v11 = a1 + 213;
    if (!v7)
    {
      FAdd = v10;
      goto LABEL_14;
    }

    v94 = a1 + 213;
    v95 = v8;
    v96 = v6;
  }

  else
  {
    v95 = a2;
    v96 = a6;
    llvm::FixedVectorType::get();
    v107 = llvm::UndefValue::get();
    v108 = v107;
    v109 = v107;
    v94 = a1 + 213;
  }

  v12 = 0;
  v13 = a1 + 213;
  v97 = v7;
  do
  {
    GEP = a4;
    if (*(a5 + 8) == 17)
    {
      v15 = v13 + *(*a1 - 24);
      v104[0] = llvm::ConstantInt::get();
      v104[1] = llvm::ConstantInt::get();
      v103 = 257;
      GEP = AGCLLVMBuilder::CreateGEP(v15, a4, v104, 2, v102);
    }

    v16 = a1 + *(*a1 - 24);
    v17 = *(v16 + 252);
    v103 = 257;
    llvm::Type::isOpaquePointerTy(*GEP);
    AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v16 + 214, v17, GEP, 0, v102);
    for (i = 0; i != 3; ++i)
    {
      v20 = v13 + *(*a1 - 24);
      v103 = 257;
      v21 = llvm::ConstantInt::get();
      Element = llvm::IRBuilderBase::CreateExtractElement((v20 + 8), AlignedLoad, v21, v102);
      if (v7 >= 2)
      {
        v23 = v13 + *(*a1 - 24);
        v24 = *(&v107 + i);
        v103 = 257;
        v25 = llvm::ConstantInt::get();
        v26 = (v23 + 8);
        v7 = v101;
        Element = llvm::IRBuilderBase::CreateInsertElement(v26, v24, Element, v25, v102);
      }

      *(&v107 + i) = Element;
    }

    ++v12;
  }

  while (v12 != v97);
  FAdd = v109;
  v8 = v95;
  v6 = v96;
  v11 = v94;
LABEL_14:
  v28 = v11 + 1;
  v106 = *v8;
  for (j = 8; j != -8; j -= 8)
  {
    v30 = *(*a1 - 24);
    v31 = *(&v107 + j);
    v32 = *(&v106 + j);
    v103 = 257;
    FMul = llvm::IRBuilderBase::CreateFMul(v28 + v30, v31, v32, v102);
    v103 = 257;
    FAdd = llvm::IRBuilderBase::CreateFAdd(v28 + v30, FMul, FAdd, v102);
  }

  if (v6)
  {
    v35 = (a1 + *(*a1 - 24));
    v36 = AGCLLVMBuilder::splat(v35 + 213, v101, v6, v34);
    v103 = 257;
    FAdd = llvm::IRBuilderBase::CreateFDiv((v35 + 214), FAdd, v36, v102);
  }

  v37 = (a1 + *(*a1 - 24));
  if (*(v37[271] + 1893) == 1)
  {
    v38 = llvm::ConstantInt::get();
    v40 = AGCLLVMBuilder::splat(v37 + 213, v101, v38, v39);
    v41 = (a1 + *(*a1 - 24));
    v42 = llvm::ConstantInt::get();
    v44 = AGCLLVMBuilder::splat(v41 + 213, v101, v42, v43);
    v45 = (a1 + *(*a1 - 24));
    v46 = llvm::ConstantInt::get();
    v48 = AGCLLVMBuilder::splat(v45 + 213, v101, v46, v47);
    v49 = (a1 + *(*a1 - 24));
    v50 = llvm::ConstantInt::get();
    v52 = AGCLLVMBuilder::splat(v49 + 213, v101, v50, v51);
    v53 = (a1 + *(*a1 - 24));
    llvm::Type::getFPMantissaWidth(v53[234]);
    v54 = llvm::ConstantInt::get();
    v56 = AGCLLVMBuilder::splat(v53 + 213, v101, v54, v55);
    v57 = *a1;
    v58 = *(a1 + *(*a1 - 24) + 1904);
    v99 = v48;
    v59 = v44;
    if (v101 >= 2)
    {
      v58 = llvm::FixedVectorType::get();
      v57 = *a1;
    }

    v60 = a1 + *(v57 - 24);
    v103 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((v60 + 1712), 49, v107, v58, v102);
    v62 = a1 + *(*a1 - 24);
    v103 = 257;
    v63 = llvm::IRBuilderBase::CreateCast((v62 + 1712), 49, v108, v58, v102);
    v64 = a1 + *(*a1 - 24);
    v103 = 257;
    v65 = llvm::IRBuilderBase::CreateAnd((v64 + 1712), Cast, v40, v102);
    v66 = a1 + *(*a1 - 24);
    v103 = 257;
    v67 = llvm::IRBuilderBase::CreateAnd((v66 + 1712), Cast, v59, v102);
    v105 = 257;
    LShr = llvm::IRBuilderBase::CreateLShr((v66 + 1712), v67, v56, v104);
    v69 = a1 + *(*a1 - 24);
    v103 = 257;
    v70 = llvm::IRBuilderBase::CreateAnd((v69 + 1712), v63, v40, v102);
    v71 = a1 + *(*a1 - 24);
    v103 = 257;
    v72 = llvm::IRBuilderBase::CreateAnd((v71 + 1712), v63, v59, v102);
    v105 = 257;
    v73 = llvm::IRBuilderBase::CreateLShr((v71 + 1712), v72, v56, v104);
    v74 = (a1 + *(*a1 - 24));
    v103 = 257;
    v75 = v65;
    ICmp = llvm::IRBuilderBase::CreateICmp(v74 + 214, 33, v65, v99, v102);
    v77 = (a1 + *(*a1 - 24));
    v103 = 257;
    v78 = llvm::IRBuilderBase::CreateICmp(v77 + 214, 32, LShr, v99, v102);
    v79 = (a1 + *(*a1 - 24));
    v103 = 257;
    v80 = llvm::IRBuilderBase::CreateICmp(v79 + 214, 33, v70, v99, v102);
    v81 = (a1 + *(*a1 - 24));
    v103 = 257;
    v82 = llvm::IRBuilderBase::CreateICmp(v81 + 214, 32, v73, v99, v102);
    v83 = a1 + *(*a1 - 24);
    v103 = 257;
    v84 = llvm::IRBuilderBase::CreateAnd((v83 + 1712), ICmp, v78, v102);
    v85 = a1 + *(*a1 - 24);
    v103 = 257;
    v86 = llvm::IRBuilderBase::CreateAnd((v85 + 1712), v80, v82, v102);
    v87 = a1 + *(*a1 - 24);
    v103 = 257;
    v88 = llvm::IRBuilderBase::CreateAnd((v87 + 1712), v75, v52, v102);
    v89 = *v84;
    v105 = 257;
    v90 = llvm::IRBuilderBase::CreateCast((v87 + 1712), 38, v88, v89, v104);
    v91 = a1 + *(*a1 - 24);
    v103 = 257;
    v92 = llvm::IRBuilderBase::CreateAnd((v91 + 1712), v84, v86, v102);
    v105 = 257;
    llvm::IRBuilderBase::CreateAnd((v91 + 1712), v92, v90, v104);
    v103 = 257;
    return llvm::IRBuilderBase::CreateSelect();
  }

  return FAdd;
}

uint64_t llvm::IRBuilderBase::CreateFDiv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPBinOp();
  }

  v7 = llvm::IRBuilderBase::foldConstant(a1, 21, a2, a3, a4);
  if (!v7)
  {
    v7 = llvm::BinaryOperator::Create();
    llvm::IRBuilderBase::setFPAttrs(a1, v7, *(a1 + 96));
    llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v7, a4);
  }

  return v7;
}

uint64_t llvm::IRBuilderBase::CreateFPToUI(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Type *a3, const llvm::Twine *a4)
{
  if (*(this + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPCast();
  }

  return llvm::IRBuilderBase::CreateCast(this, 41, a2, a3, a4);
}

llvm::Instruction *llvm::IRBuilderBase::CreateGEP(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t **a4, uint64_t a5, uint64_t a6)
{
  v12 = (*(**(a1 + 72) + 48))(*(a1 + 72), a2, a3, a4, a5, 0);
  if (!v12)
  {
    v15 = 257;
    v12 = llvm::GetElementPtrInst::Create(a2, a3, a4, a5, v14);
    llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v12, a6);
  }

  return v12;
}

uint64_t llvm::StringMap<AGCLLVMAGPFragmentShader::InterpolationFunction,llvm::MallocAllocator>::~StringMap(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
          llvm::deallocate_buffer(*v8, v8, *v8 + 25);
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  free(*a1);
  return a1;
}

char *llvm::PassInfoMixin<AGCPrintIRPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x40)
  {
    v1 = v0;
  }

  else
  {
    v1 = 64;
  }

  v2 = &aStringrefLlvmG_1[v1];
  v3 = 64 - v1;
  if ((64 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 64 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,AGCPrintIRPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<AGCPrintIRPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileAGPFragmentShaderPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileAGPFragmentShaderPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMUserShader>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x61)
  {
    v1 = v0;
  }

  else
  {
    v1 = 97;
  }

  v2 = &aStringrefLlvmG[v1];
  v3 = 97 - v1;
  if ((97 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 97 - v1;
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

void AGCLLVMAGPFragmentShader::~AGCLLVMAGPFragmentShader(AGCLLVMAGPFragmentShader *this)
{
  AGCLLVMObject::~AGCLLVMObject((v1 + 7528));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((v1 + 7528));
}

void virtual thunk toAGCLLVMAGPFragmentShaderGen3::~AGCLLVMAGPFragmentShaderGen3(AGCLLVMAGPFragmentShaderGen3 *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = this + *(*this - 24);
  AGCLLVMObject::~AGCLLVMObject((v4 + 7920));

  JUMPOUT(0x20F331DC0);
}

{
  v5 = (v4 + 7920);

  AGCLLVMObject::~AGCLLVMObject(v5);
}

void non-virtual thunk toAGCLLVMAGPFragmentShaderGen3::~AGCLLVMAGPFragmentShaderGen3(AGCLLVMAGPFragmentShaderGen3 *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  AGCLLVMObject::~AGCLLVMObject((this + 3384));

  JUMPOUT(0x20F331DC0);
}

{

  AGCLLVMObject::~AGCLLVMObject((this + 3384));
}

uint64_t AGCLLVMAGPFragmentShaderGen3::buildPixelPositionInTile(AGCLLVMAGPFragmentShaderGen3 *this, llvm::Type *a2, uint64_t a3)
{
  v6 = *(this + *(*this - 24) + 2168);
  v7 = (*(*v6 + 688))(v6);
  v8 = this + *(*this - 24);
  v11 = *(v8 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (v8 + 1712));
  v13 = *(v8 + 452);
  v9 = (*(*v7 + 272))(v7, &v11, a2, a3);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

uint64_t AGCLLVMAGPFragmentShaderGen3::buildSimdGroupIndexInThreadgroup(AGCLLVMAGPFragmentShaderGen3 *this, llvm::Type *a2)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v12 = v14;
  v13 = xmmword_20E70C510;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v12, "llvm.agx2.simd.group", "");
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(this + *(*this - 24) + 1704, v12, v13, *(this + *(*this - 24) + 1904));
  v5 = (this + *(*this - 24));
  v11 = 257;
  v6 = llvm::IRBuilderBase::CreateCall(v5 + 214, *(inserted + 24), inserted, 0, 0, v10);
  v9[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v5 + 214), 38, v6, a2, v9);
  if (v12 != v14)
  {
    free(v12);
  }

  return Cast;
}

uint64_t AGCLLVMAGPFragmentShaderGen3::buildThreadIndexInSimdGroup(AGCLLVMAGPFragmentShaderGen3 *this, llvm::Type *a2)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v12 = v14;
  v13 = xmmword_20E70C510;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v12, "llvm.agx2.simd.element", "");
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(this + *(*this - 24) + 1704, v12, v13, *(this + *(*this - 24) + 1904));
  v5 = (this + *(*this - 24));
  v11 = 257;
  v6 = llvm::IRBuilderBase::CreateCall(v5 + 214, *(inserted + 24), inserted, 0, 0, v10);
  v9[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v5 + 214), 38, v6, a2, v9);
  if (v12 != v14)
  {
    free(v12);
  }

  return Cast;
}

uint64_t AGCLLVMAGPFragmentShaderGen3::buildTileIndex(AGCLLVMAGPFragmentShaderGen3 *this, llvm::Type *a2, uint64_t a3)
{
  if (!*(this + 981))
  {
    v5 = llvm::User::operator new(0x58);
    v35[0] = "agc.tile.count.x";
    v36 = 259;
    v6 = llvm::GlobalVariable::GlobalVariable();
    *(v6 + 80) |= 1u;
    llvm::GlobalObject::setSection();
    v7 = this + *(*this - 24);
    v8 = *(v7 + 268);
    v9 = AGCLLVMBuilder::buildGlobalMetadata(v7 + 213, v5, 0x38u, 0);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v8, v9);
    llvm::ValueHandleBase::operator=((this + 7832), v5);
  }

  v10 = *(this + *(*this - 24) + 2168);
  v11 = (*(*v10 + 688))(v10, a2, a3);
  v12 = this + *(*this - 24);
  v32 = *(v12 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v33, (v12 + 1712));
  v34 = *(v12 + 452);
  v13 = AGCLLVMGen3TargetLowerer::buildThreadgroupIndex(v11, &v32, a2, 0);
  if (v33)
  {
    llvm::MetadataTracking::untrack();
  }

  v14 = *(this + *(*this - 24) + 2168);
  v15 = (*(*v14 + 688))(v14);
  v16 = this + *(*this - 24);
  v29 = *(v16 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v30, (v16 + 1712));
  v31 = *(v16 + 452);
  v17 = AGCLLVMGen3TargetLowerer::buildThreadgroupIndex(v15, &v29, a2, 1);
  if (v30)
  {
    llvm::MetadataTracking::untrack();
  }

  v18 = this + *(*this - 24);
  v19 = *(this + 981);
  v36 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v18 + 1704), v19, v35);
  v28 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v18 + 1712), 38, Load, a2, v27);
  v26 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((v18 + 1712), v17, Cast, v25);
  v23 = this + *(*this - 24);
  v36 = 257;
  return llvm::IRBuilderBase::CreateAdd((v23 + 1712), Mul, v13, v35);
}

uint64_t AGCLLVMAGPFragmentShaderGen3::buildPixelsPerTile(AGCLLVMAGPFragmentShaderGen3 *this, llvm::Type *a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(this + *(*this - 24) + 2168);
  v7 = (*(*v6 + 688))(v6);
  v8 = this + *(*this - 24);
  v11 = *(v8 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (v8 + 1712));
  v13 = *(v8 + 452);
  v9 = AGCLLVMGen3TargetLowerer::buildLocalSize(v7, &v11, a2, v3);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

uint64_t AGCLLVMAGPFragmentShaderGen3::setupLIBStructValueFromType(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, __n128 a8)
{
  v8 = a6;
  v10 = a2;
  v11 = result;
  v52 = *MEMORY[0x277D85DE8];
  v12 = *(a2 + 8);
  if (a2 && v12 == 16)
  {
    v14 = a5;
    result = llvm::DataLayout::getStructLayout();
    if (*(v10 + 12))
    {
      v15 = 0;
      v16 = result + 16;
      do
      {
        v17 = v8;
        v18 = *(v16 + 8 * v15);
        llvm::SmallVectorTemplateBase<AGCCodeTranslator::ComputeVIRegType,true>::push_back(a3, v15);
        v19 = v10;
        v20 = *(*(v10 + 16) + 8 * v15);
        std::__function::__value_func<void ()(llvm::Type *,llvm::SmallVectorImpl<unsigned int> &,unsigned int)>::__value_func[abi:nn200100](v51, a7);
        v21 = v18 + v14;
        v8 = v17;
        v22 = v20;
        v10 = v19;
        AGCLLVMAGPFragmentShaderGen3::setupLIBStructValueFromType(v11, v22, a3, a4, v21, v17, v51, v23);
        result = std::__function::__value_func<void ()(llvm::Type *,llvm::SmallVectorImpl<unsigned int> &,unsigned int)>::~__value_func[abi:nn200100](v51);
        --*(a3 + 8);
        ++v15;
      }

      while (v15 < *(v19 + 12));
    }

    return result;
  }

  if (a2 && v12 == 17)
  {
    v24 = *(a4 + 8);
    if (v24)
    {
      v27 = a4 + 8;
      do
      {
        v28 = *(v24 + 28);
        v29 = v28 >= a5;
        v30 = v28 < a5;
        if (v29)
        {
          v27 = v24;
        }

        v24 = *(v24 + 8 * v30);
      }

      while (v24);
      if (v27 != a4 + 8 && *(v27 + 28) <= a5 && *(a2 + 32))
      {
        v31 = result;
        LODWORD(v32) = 0;
        v33 = *(v27 + 32);
        do
        {
          TypeAllocSize = llvm::DataLayout::getTypeAllocSize((v31 + 224), *(v10 + 24));
          v48 = v34;
          v35 = llvm::TypeSize::operator unsigned long long();
          llvm::SmallVectorTemplateBase<AGCCodeTranslator::ComputeVIRegType,true>::push_back(a3, v32);
          v36 = *(v10 + 24);
          std::__function::__value_func<void ()(llvm::Type *,llvm::SmallVectorImpl<unsigned int> &,unsigned int)>::__value_func[abi:nn200100](v50, a7);
          AGCLLVMAGPFragmentShaderGen3::setupLIBStructValueFromType(v31, v36, a3, a4, v33 + v32 * v35, v32 == 0, v50, v37);
          result = std::__function::__value_func<void ()(llvm::Type *,llvm::SmallVectorImpl<unsigned int> &,unsigned int)>::~__value_func[abi:nn200100](v50);
          --*(a3 + 8);
          v32 = (v32 + 1);
        }

        while (*(v10 + 32) > v32);
      }
    }

    return result;
  }

  if (!a6)
  {
LABEL_31:
    TypeAllocSize = a2;
    v49 = a5;
    v44 = *(a7 + 24);
    if (v44)
    {
      return (*(*v44 + 48))(v44, &TypeAllocSize, a3, &v49, a8);
    }

    v45 = std::__throw_bad_function_call[abi:nn200100]();
    return std::__function::__value_func<void ()(llvm::Type *,llvm::SmallVectorImpl<unsigned int> &,unsigned int)>::~__value_func[abi:nn200100](v45);
  }

  v40 = *(a4 + 8);
  v38 = a4 + 8;
  v39 = v40;
  if (v40)
  {
    v41 = v38;
    do
    {
      v42 = *(v39 + 28);
      v29 = v42 >= a5;
      v43 = v42 < a5;
      if (v29)
      {
        v41 = v39;
      }

      v39 = *(v39 + 8 * v43);
    }

    while (v39);
    if (v41 != v38 && *(v41 + 28) <= a5)
    {
      a5 = *(v41 + 32);
      goto LABEL_31;
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(llvm::Type *,llvm::SmallVectorImpl<unsigned int> &,unsigned int)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(llvm::Type *,llvm::SmallVectorImpl<unsigned int> &,unsigned int)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__func<AGCLLVMAGPFragmentShaderGen3::setupShaderOutputs(void)::$_0,std::allocator<AGCLLVMAGPFragmentShaderGen3::setupShaderOutputs(void)::$_0>,void ()(llvm::Type *,llvm::SmallVectorImpl<unsigned int> &,unsigned int)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v4 = *a4;
  v5 = *(a1 + 8);
  v6 = v5 + *(*v5 - 24);
  v7 = **(a1 + 16);
  v8 = *a3;
  v9 = *(a3 + 8);
  v14 = 257;
  Value = llvm::IRBuilderBase::CreateExtractValue(v6 + 1712, v7, v8, v9, v13);
  v13[0] = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<unsigned int,AGCLLVMUserFragmentShader::OutputStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,AGCLLVMUserFragmentShader::OutputStorage>>,unsigned int,AGCLLVMUserFragmentShader::OutputStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,AGCLLVMUserFragmentShader::OutputStorage>>::LookupBucketFor<unsigned int>(*(v5 + 7576), *(v5 + 7592), v4, v13);
  if (result)
  {
    v12 = v13[0] == *(v5 + 7576) + 40 * *(v5 + 7592);
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    return llvm::IRBuilderBase::CreateAlignedStore((v5 + *(*v5 - 24) + 1712), Value, *(v13[0] + 32), 0, 0);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,AGCLLVMUserFragmentShader::OutputStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,AGCLLVMUserFragmentShader::OutputStorage>>,unsigned int,AGCLLVMUserFragmentShader::OutputStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,AGCLLVMUserFragmentShader::OutputStorage>>::LookupBucketFor<unsigned int>(uint64_t a1, int a2, int a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = (37 * a3) & (a2 - 1);
    v6 = (a1 + 40 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -2;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 40 * (v13 & v4));
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

__n128 std::__function::__func<AGCLLVMAGPFragmentShaderGen3::setupShaderOutputs(void)::$_0,std::allocator<AGCLLVMAGPFragmentShaderGen3::setupShaderOutputs(void)::$_0>,void ()(llvm::Type *,llvm::SmallVectorImpl<unsigned int> &,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825585F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

unsigned __int8 *std::__function::__func<AGCLLVMAGPFragmentShaderGen3::setupShaderInputs(void)::$_0,std::allocator<AGCLLVMAGPFragmentShaderGen3::setupShaderInputs(void)::$_0>,void ()(llvm::Type *,llvm::SmallVectorImpl<unsigned int> &,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, uint64_t a3, __int16 *a4)
{
  v5 = *a2;
  v6 = *a4;
  v7 = *(a1 + 16);
  v8 = *(v7 + 3764);
  v9 = llvm::ConstantInt::get();
  v10 = v7 + *(*v7 - 24);
  v11 = *(v10 + 2168);
  v46 = *(v10 + 1760);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v47, (v10 + 1712));
  v48 = *(v10 + 1808);
  v12 = (*(*v11 + 208))(v11, &v46, v9);
  if (v47)
  {
    llvm::MetadataTracking::untrack();
  }

  v13 = v7 + *(*v7 - 24);
  if (*(v7 + 3766) == 1)
  {
    v14 = llvm::ConstantInt::get();
  }

  else
  {
    v43 = *(v13 + 1760);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v44, (v13 + 1712));
    v45 = *(v13 + 1808);
    v14 = AGCLLVMObject::buildReadDynamicLIBSize(v13, &v43);
    if (v44)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  v15 = *(v7 + *(*v7 - 24) + 2168);
  (*(*v15 + 688))(v15);
  v16 = v5;
  if (*(v5 + 8) == 15)
  {
    v16 = **(v5 + 16);
  }

  v17 = ~(-1 << llvm::DataLayout::getABITypeAlign((v7 + 224), v16)) & (v8 + v6);
  v18 = (*(**(v7 + *(*v7 - 24) + 2168) + 688))();
  v19 = v7 + *(*v7 - 24);
  v40 = *(v19 + 1760);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v41, (v19 + 1712));
  v42 = *(v19 + 1808);
  if (v17)
  {
    v20 = 1 << ((*(*(v7 + 5280) + 32) >> 10) & 3);
    v21 = llvm::ConstantInt::get();
    v22 = AGCLLVMGen3TargetLowerer::splitUnalignedLoads(v18, &v40, 0, v20, v14, v5, v21, v9, v12, 0, 0);
  }

  else
  {
    v23 = (1 << ((*(*(v7 + 5280) + 32) >> 10) & 3));
    v24 = llvm::ConstantInt::get();
    v22 = AGCLLVMGen3TargetLowerer::buildReadOutputPartitionFromIR(v18, &v40, 0, 0, v23, v14, v5, v24, v9, v12, 0, 0);
  }

  v25 = v22;
  if (v41)
  {
    llvm::MetadataTracking::untrack();
  }

  NextNonDebugInstruction = llvm::Instruction::getNextNonDebugInstruction(v25);
  v27 = (v7 + *(*v7 - 24));
  if (NextNonDebugInstruction)
  {
    v28 = llvm::Instruction::getNextNonDebugInstruction(v25);
    llvm::IRBuilderBase::SetInsertPoint((v27 + 214), v28);
  }

  else
  {
    v29 = *(v25 + 5);
    v27[220] = v29;
    v27[221] = v29 + 40;
  }

  v30 = v7 + *(*v7 - 24);
  v39 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(v30 + 1712, 49, v25, v5, v38);
  v32 = v7 + *(*v7 - 24);
  v33 = **(a1 + 8);
  v34 = *a3;
  v35 = *(a3 + 8);
  v39 = 257;
  result = llvm::IRBuilderBase::CreateInsertValue(v32 + 1712, v33, Cast, v34, v35, v38);
  **(a1 + 8) = result;
  return result;
}

__n128 std::__function::__func<AGCLLVMAGPFragmentShaderGen3::setupShaderInputs(void)::$_0,std::allocator<AGCLLVMAGPFragmentShaderGen3::setupShaderInputs(void)::$_0>,void ()(llvm::Type *,llvm::SmallVectorImpl<unsigned int> &,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825585A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>,llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::find(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a2)
  {
    return (a1 + 16 * a2);
  }

  LODWORD(v3) = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
  v4 = (a1 + 16 * v3);
  v5 = *v4;
  if (*v4 != a3)
  {
    v6 = 1;
    while (v5 != -4096)
    {
      v7 = v3 + v6++;
      v3 = v7 & (a2 - 1);
      v5 = *(a1 + 16 * v3);
      if (v5 == a3)
      {
        return (a1 + 16 * v3);
      }
    }

    return (a1 + 16 * a2);
  }

  return v4;
}

uint64_t *llvm::TrackingMDRef::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a2 != a1)
  {
    if (*a1)
    {
      llvm::MetadataTracking::untrack();
    }

    v4 = *a2;
    *a1 = *a2;
    if (v4)
    {
      llvm::MetadataTracking::retrack();
      *a2 = 0;
    }
  }

  return a1;
}

llvm::ValueHandleBase *std::__function::__func<AGCLLVMAGPFragmentShaderGen3::addWrapperPrefix(void)::$_0,std::allocator<AGCLLVMAGPFragmentShaderGen3::addWrapperPrefix(void)::$_0>,void ()(llvm::Type *,llvm::SmallVectorImpl<unsigned int> &,unsigned int)>::operator()(uint64_t a1, llvm::Type **a2, uint64_t a3, int *a4)
{
  v4 = *a2;
  v5 = *a4;
  v6 = *(a1 + 8);
  v7 = v6 + *(*v6 - 24);
  v18 = 257;
  Alloca = llvm::IRBuilderBase::CreateAlloca((v7 + 1712), v4, 0, &v15);
  v15 = v4;
  v16[0] = 4;
  v16[1] = 0;
  v17 = Alloca;
  if (Alloca != -8192 && Alloca != -4096 && Alloca != 0)
  {
    llvm::ValueHandleBase::AddToUseList(v16);
  }

  v19 = 0;
  v10 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,AGCLLVMUserFragmentShader::OutputStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,AGCLLVMUserFragmentShader::OutputStorage>>,unsigned int,AGCLLVMUserFragmentShader::OutputStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,AGCLLVMUserFragmentShader::OutputStorage>>::LookupBucketFor<unsigned int>(*(v6 + 7576), *(v6 + 7592), v5, &v19);
  v11 = v19;
  if ((v10 & 1) == 0)
  {
    v12 = *(v6 + 7584);
    v13 = *(v6 + 7592);
    if (4 * v12 + 4 >= 3 * v13)
    {
      v13 *= 2;
    }

    else if (v13 + ~v12 - *(v6 + 7588) > v13 >> 3)
    {
LABEL_10:
      ++*(v6 + 7584);
      if (*v11 != -1)
      {
        --*(v6 + 7588);
      }

      *v11 = v5;
      *(v11 + 8) = xmmword_20E70C520;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0;
      goto LABEL_13;
    }

    llvm::DenseMap<unsigned int,AGCLLVMUserFragmentShader::OutputStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,AGCLLVMUserFragmentShader::OutputStorage>>::grow(v6 + 7576, v13);
    v19 = 0;
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,AGCLLVMUserFragmentShader::OutputStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,AGCLLVMUserFragmentShader::OutputStorage>>,unsigned int,AGCLLVMUserFragmentShader::OutputStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,AGCLLVMUserFragmentShader::OutputStorage>>::LookupBucketFor<unsigned int>(*(v6 + 7576), *(v6 + 7592), v5, &v19);
    v11 = v19;
    goto LABEL_10;
  }

LABEL_13:
  *(v11 + 8) = v15;
  result = llvm::ValueHandleBase::operator=((v11 + 16), v16);
  if (v17 != -8192 && v17 != -4096)
  {
    if (v17)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v16);
    }
  }

  return result;
}

uint64_t *llvm::DenseMap<unsigned int,AGCLLVMUserFragmentShader::OutputStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,AGCLLVMUserFragmentShader::OutputStorage>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
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

  *(a1 + 16) = v8;
  result = MEMORY[0x20F330650](v8, 40 * v8, 8);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v10 = 0;
      v12 = 40 * v11 - 40;
      v13 = vdupq_n_s64(v12 / 0x28);
      v14 = result + 10;
      do
      {
        v15 = vdupq_n_s64(v10);
        v16 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v15, xmmword_20E70C4F0)));
        if (vuzp1_s16(v16, *v13.i8).u8[0])
        {
          *(v14 - 20) = -1;
        }

        if (vuzp1_s16(v16, *&v13).i8[2])
        {
          *(v14 - 10) = -1;
        }

        if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v15, xmmword_20E70C4E0)))).i32[1])
        {
          *v14 = -1;
          *(v14 + 10) = -1;
        }

        v10 = (v10 + 4);
        v14 += 20;
      }

      while (((v12 / 0x28 + 4) & 0xFFFFFFFFFFFFFFCLL) != v10);
    }

    v17 = 5 * v3;
    if (v3)
    {
      v18 = 40 * v3;
      v19 = (v4 + 16);
      do
      {
        v20 = *(v19 - 4);
        if (v20 <= 0xFFFFFFFD)
        {
          v29 = 0;
          llvm::DenseMapBase<llvm::DenseMap<unsigned int,AGCLLVMUserFragmentShader::OutputStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,AGCLLVMUserFragmentShader::OutputStorage>>,unsigned int,AGCLLVMUserFragmentShader::OutputStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,AGCLLVMUserFragmentShader::OutputStorage>>::LookupBucketFor<unsigned int>(*a1, *(a1 + 16), v20, &v29);
          v21 = v29;
          *v29 = *(v19 - 4);
          *(v21 + 1) = *(v19 - 1);
          llvm::ValueHandleBase::ValueHandleBase((v21 + 4), 2u, v19);
          ++*(a1 + 8);
          v10 = v19[2];
          if (v10 != -8192 && v10 != -4096 && v10)
          {
            llvm::ValueHandleBase::RemoveFromUseList(v19);
          }
        }

        v19 += 5;
        v18 -= 40;
      }

      while (v18);
    }

    return llvm::deallocate_buffer(v10, v4, (8 * v17));
  }

  else
  {
    *(a1 + 8) = 0;
    v22 = *(a1 + 16);
    if (v22)
    {
      v23 = 0;
      v24 = 40 * v22 - 40;
      v25 = vdupq_n_s64(v24 / 0x28);
      v26 = result + 10;
      do
      {
        v27 = vdupq_n_s64(v23);
        v28 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_20E70C4F0)));
        if (vuzp1_s16(v28, *v25.i8).u8[0])
        {
          *(v26 - 20) = -1;
        }

        if (vuzp1_s16(v28, *&v25).i8[2])
        {
          *(v26 - 10) = -1;
        }

        if (vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_20E70C4E0)))).i32[1])
        {
          *v26 = -1;
          *(v26 + 10) = -1;
        }

        v23 += 4;
        v26 += 20;
      }

      while (((v24 / 0x28 + 4) & 0xFFFFFFFFFFFFFFCLL) != v23);
    }
  }

  return result;
}

uint64_t std::__function::__func<AGCLLVMAGPFragmentShaderGen3::addWrapperPrefix(void)::$_0,std::allocator<AGCLLVMAGPFragmentShaderGen3::addWrapperPrefix(void)::$_0>,void ()(llvm::Type *,llvm::SmallVectorImpl<unsigned int> &,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_282558560;
  a2[1] = v2;
  return result;
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileAGPFragmentShaderGen3Pass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileAGPFragmentShaderGen3Pass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,ValidateMaxTTPTGFragShaderGen3Pass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<ValidateMaxTTPTGFragShaderGen3Pass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMAGPFragmentShaderGen3>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x6C)
  {
    v1 = v0;
  }

  else
  {
    v1 = 108;
  }

  v2 = &aStringrefLlvmG_2[v1];
  v3 = 108 - v1;
  if ((108 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 108 - v1;
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

void AGCLLVMAGPFragmentShaderGen3::~AGCLLVMAGPFragmentShaderGen3(AGCLLVMAGPFragmentShaderGen3 *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  AGCLLVMObject::~AGCLLVMObject((v4 + 7920));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((v4 + 7920));
}

void virtual thunk toAGCLLVMAGPFragmentShaderGen4::~AGCLLVMAGPFragmentShaderGen4(AGCLLVMAGPFragmentShaderGen4 *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (this + *(*this - 24));
  *v4 = &unk_2825510B8;
  v4[1008] = &unk_2825514C0;
  v4[1221] = &unk_2825515D0;
  v4[567] = &unk_282551388;
  v5 = v4[990];
  if (v5 != v4 + 992)
  {
    free(v5);
  }

  AGCLLVMAGPFragmentShaderGen3::~AGCLLVMAGPFragmentShaderGen3(v4, off_2825515E0, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 1008));

  JUMPOUT(0x20F331DC0);
}

{
  v4 = (this + *(*this - 24));
  *v4 = &unk_2825510B8;
  v4[1008] = &unk_2825514C0;
  v4[1221] = &unk_2825515D0;
  v4[567] = &unk_282551388;
  v5 = v4[990];
  if (v5 != v4 + 992)
  {
    free(v5);
  }

  AGCLLVMAGPFragmentShaderGen3::~AGCLLVMAGPFragmentShaderGen3(v4, off_2825515E0, a3, a4);

  AGCLLVMObject::~AGCLLVMObject((v4 + 1008));
}

void non-virtual thunk toAGCLLVMAGPFragmentShaderGen4::~AGCLLVMAGPFragmentShaderGen4(AGCLLVMAGPFragmentShaderGen4 *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = (this - 4536);
  *(this - 567) = &unk_2825510B8;
  v6 = (this + 3528);
  *(this + 441) = &unk_2825514C0;
  *(this + 654) = &unk_2825515D0;
  *this = &unk_282551388;
  v7 = *(this + 423);
  if (v7 != this + 3400)
  {
    free(v7);
  }

  AGCLLVMAGPFragmentShaderGen3::~AGCLLVMAGPFragmentShaderGen3(v5, off_2825515E0, a3, a4);
  AGCLLVMObject::~AGCLLVMObject(v6);

  JUMPOUT(0x20F331DC0);
}

{
  v5 = (this - 4536);
  *(this - 567) = &unk_2825510B8;
  v6 = (this + 3528);
  *(this + 441) = &unk_2825514C0;
  *(this + 654) = &unk_2825515D0;
  *this = &unk_282551388;
  v7 = *(this + 423);
  if (v7 != this + 3400)
  {
    free(v7);
  }

  AGCLLVMAGPFragmentShaderGen3::~AGCLLVMAGPFragmentShaderGen3(v5, off_2825515E0, a3, a4);

  AGCLLVMObject::~AGCLLVMObject(v6);
}

uint64_t AGCLLVMAGPFragmentShaderGen4::setupPerPrimitiveVarying(AGCLLVMAGPFragmentShaderGen4 *this, unsigned int a2, llvm::Type *a3, int a4)
{
  if (a3 != 1)
  {
    llvm::FixedVectorType::get();
  }

  v6 = llvm::User::operator new(0x58);
  llvm::GlobalVariable::GlobalVariable();
  v7 = *(this + 1982);
  if (v7 >= *(this + 1983))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v8 = (*(this + 990) + 16 * v7);
  *v8 = a2;
  v8[1] = v6;
  ++*(this + 1982);
  return v6;
}

void AGCLLVMAGPFragmentShaderGen4::setupPerPrimitiveVaryings(AGCLLVMAGPFragmentShaderGen4 *this)
{
  v110 = *MEMORY[0x277D85DE8];
  if (*(this + 1982))
  {
    v2 = this + *(*this - 24);
    v86 = *(v2 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v87, (v2 + 1712));
    v88 = *(v2 + 452);
    v3 = *(this + 798);
    if (v3 && v3[16] >= 0x1Cu)
    {
      v4 = this + *(*this - 24);
      NextNonDebugInstruction = llvm::Instruction::getNextNonDebugInstruction(v3);
      llvm::IRBuilderBase::SetInsertPoint((v4 + 1712), NextNonDebugInstruction);
    }

    else
    {
      v6 = *(*(this + 20) + 80);
      if (v6)
      {
        v7 = (v6 - 24);
      }

      else
      {
        v7 = 0;
      }

      v8 = this + *(*this - 24);
      FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v7);
      llvm::IRBuilderBase::SetInsertPoint((v8 + 1712), v7, FirstInsertionPt);
    }

    AGCLLVMAGPFragmentShader::getFragmentVarying(&__p, this, *(this + *(*this - 24) + 1904), "agc.per_prim.primitive_address_2", 0x20uLL, 1, 3, 1, 7, 0);
    v11 = AGCLLVMUserFragmentShader::replaceInterpolation(this, &__p, v10);
    v12 = this + *(*this - 24);
    v13 = *(v12 + 239);
    LOWORD(v92) = 257;
    Cast = llvm::IRBuilderBase::CreateCast((v12 + 1712), 39, v11, v13, &v89);
    if (v100 != v101)
    {
      free(v100);
    }

    AGCLLVMAGPFragmentShader::getFragmentVarying(&__p, this, *(this + *(*this - 24) + 1904), "agc.per_prim.primitive_address", 0x1EuLL, 1, 3, 1, 7, 0);
    v16 = AGCLLVMUserFragmentShader::replaceInterpolation(this, &__p, v15);
    v17 = this + *(*this - 24);
    v18 = *(v17 + 239);
    LOWORD(v92) = 257;
    v19 = llvm::IRBuilderBase::CreateCast((v17 + 1712), 39, v16, v18, &v89);
    v20 = this + *(*this - 24);
    LOWORD(v92) = 257;
    v21 = llvm::ConstantInt::get();
    Shl = llvm::IRBuilderBase::CreateShl((v20 + 1712), v19, v21, &v89);
    if (v100 != v101)
    {
      free(v100);
    }

    v23 = this + *(*this - 24);
    LOWORD(v98) = 257;
    v72 = llvm::IRBuilderBase::CreateOr((v23 + 1712), Cast, Shl, &__p);
    if (!*(this + 986))
    {
      AGCLLVMAGPFragmentShaderGen3::getAmplificationVarying(&__p, this, *(this + *(*this - 24) + 1904), "air.amplification_id", 0x14uLL);
      v25 = AGCLLVMUserFragmentShader::replaceInterpolation(this, &__p, v24);
      llvm::ValueHandleBase::operator=((this + 7872), v25);
      *(this + 6460) = 1;
      if (v100 != v101)
      {
        free(v100);
      }
    }

    if (!*(this + 989))
    {
      AGCLLVMAGPFragmentShaderGen3::getAmplificationVarying(&__p, this, *(this + *(*this - 24) + 1904), "air.amplification_count", 0x17uLL);
      v27 = AGCLLVMUserFragmentShader::replaceInterpolation(this, &__p, v26);
      llvm::ValueHandleBase::operator=((this + 7896), v27);
      *(this + 6461) = 1;
      if (v100 != v101)
      {
        free(v100);
      }
    }

    v28 = *this;
    v29 = *(*(this + *(*this - 24) + 2168) + 1878);
    __p = 0;
    v96 = 0u;
    v97 = &v99;
    v98 = 0x800000000;
    v101[61] = 0xFFFFFFFFLL;
    v102 = v29;
    v108[7] = 0;
    memset(v103, 0, sizeof(v103));
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    memset(v108, 0, 26);
    v109 = 1;
    v30 = *(this + 1630);
    if (v30)
    {
      v31 = *(this + 814);
      v32 = v30 << 6;
      do
      {
        GenericVaryingAllocator::addVarying(&__p, v31);
        v31 += 64;
        v32 -= 64;
      }

      while (v32);
      v28 = *this;
    }

    GenericVaryingAllocator::allocate(&__p, *(this + *(v28 - 24) + 2168));
    v84 = 0;
    v85 = 4 * DWORD1(v104);
    if (v102)
    {
      v33 = (HIDWORD(v105) + 1) >> 1;
    }

    else
    {
      v33 = HIDWORD(v105);
    }

    v34 = v33 + DWORD1(v104);
    v82 = 4 * v34;
    v83 = 4 * (v34 + DWORD1(v107));
    v35 = this + *(*this - 24);
    v36 = llvm::ConstantInt::get();
    v37 = this + *(*this - 24);
    v38 = *(this + 986);
    v39 = *(v37 + 238);
    LOWORD(v92) = 257;
    v40 = llvm::IRBuilderBase::CreateCast((v37 + 1712), 39, v38, v39, &v89);
    v81 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v35 + 1712), v36, v40, v80);
    v41 = this + *(*this - 24);
    v42 = llvm::ConstantInt::get();
    v43 = this + *(*this - 24);
    v44 = llvm::ConstantInt::get();
    v45 = *(this + 989);
    LOWORD(v92) = 257;
    v46 = llvm::IRBuilderBase::CreateMul((v43 + 1712), v44, v45, &v89);
    v81 = 257;
    Add = llvm::IRBuilderBase::CreateAdd((v41 + 1712), v42, v46, v80);
    v90 = 0;
    v89 = 0u;
    v91 = 0;
    v92 = 0u;
    v93[0] = v94;
    v93[1] = 0x500000000;
    llvm::SmallVectorImpl<unsigned int>::assign(v93, 5uLL, -559038737);
    v90 = 0;
    v89 = xmmword_20E70C550;
    *&v92 = AGCLLVMUserFragmentShader::setupInterpolation(this, 7u, 0, 1);
    *(&v92 + 1) = v48;
    v50 = AGCLLVMUserFragmentShader::replaceInterpolation(this, &v89, v49);
    v51 = *(*this - 24);
    v52 = this + 1712;
    v81 = 257;
    v53 = llvm::IRBuilderBase::CreateMul((this + v51 + 1712), Add, v50, v80);
    v54 = *(this + 1982);
    if (v54)
    {
      v55 = v53;
      v56 = *(this + 990);
      v57 = v56 + 16 * v54;
      do
      {
        if (v98)
        {
          v58 = v97;
          v59 = v98 << 6;
          while (*(v58 + 4) != *v56)
          {
            v58 += 8;
            v59 -= 64;
            if (!v59)
            {
              goto LABEL_32;
            }
          }
        }

        else
        {
LABEL_32:
          v58 = 0;
        }

        v60 = *(v56 + 8);
        v61 = llvm::ConstantInt::get();
        if (*(v58 + 57) == 1)
        {
          v62 = *(*this - 24);
          v81 = 257;
          v61 = llvm::IRBuilderBase::CreateAdd(&v52[v62], v61, Mul, v80);
        }

        v63 = *(*this - 24);
        v81 = 257;
        v64 = llvm::IRBuilderBase::CreateAdd(&v52[v63], v61, v55, v80);
        v65 = *(this + *(*this - 24) + 1912);
        v79 = 257;
        v66 = llvm::IRBuilderBase::CreateCast(&v52[v63], 39, v64, v65, v78);
        v77 = 257;
        v67 = llvm::IRBuilderBase::CreateAdd(&v52[v63], v72, v66, v76);
        v68 = *(*this - 24);
        v69 = *v60;
        v81 = 257;
        llvm::IRBuilderBase::CreateCast(&v52[v68], 48, v67, v69, v80);
        llvm::Value::replaceAllUsesWith();
        v56 += 16;
      }

      while (v56 != v57);
    }

    v70 = this + *(*this - 24);
    v73 = v86;
    v74 = v87;
    if (v87)
    {
      llvm::MetadataTracking::track();
    }

    v75 = v88;
    AGCLLVMBuilder::InsertPoint::restoreIP(&v73, (v70 + 1712));
    if (v74)
    {
      llvm::MetadataTracking::untrack();
    }

    if (v93[0] != v94)
    {
      free(v93[0]);
    }

    *&v89 = v103;
    std::vector<GenericVaryingAllocator::OutIterator>::__destroy_vector::operator()[abi:nn200100](&v89);
    llvm::SmallVector<GenericVarying,8u>::~SmallVector(&v97);
    if (__p)
    {
      *&v96 = __p;
      operator delete(__p);
    }

    if (v87)
    {
      llvm::MetadataTracking::untrack();
    }
  }
}

uint64_t llvm::IRBuilderBase::CreateShl(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    v6 = (*(**(this + 9) + 152))(*(this + 9));
    if (v6)
    {
      v7 = *(v6 + 16) >= 0x1Cu;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v6, a4);
    }
  }

  else
  {
    v6 = llvm::BinaryOperator::Create();
    llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v6, a4);
  }

  return v6;
}

void AGCLLVMAGPFragmentShaderGen4::getPrimitiveIdVarying(AGCLLVMAGPFragmentShaderGen4 *this@<X0>, llvm::Type *a2@<X1>, unsigned int *a3@<X8>)
{
  ComponentType = AGCLLVMBuilder::getComponentType((this + *(*this - 24) + 1704), a2, v14);
  a3[4] = 0;
  *a3 = 0u;
  *(a3 + 3) = 0;
  *(a3 + 2) = 0u;
  *(a3 + 6) = a3 + 16;
  *(a3 + 7) = 0x500000000;
  llvm::SmallVectorImpl<unsigned int>::assign(a3 + 6, 5uLL, -559038737);
  *a3 = 1;
  a3[2] = 3;
  a3[3] = ComponentType;
  a3[4] = 0;
  if ((*(*(this + 801) + 69) & 1) == 0 || (Key = llvm::StringMapImpl::FindKey(), Key == -1) || Key == *(this + 1622))
  {
    a3[1] = 1;
    *(a3 + 4) = AGCLLVMUserFragmentShader::setupInterpolation(this, 7u, a3[4], *a3);
    *(a3 + 5) = v7;
  }

  else
  {
    v8 = *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>((this + 6480), "agc.per_prim.primitive_id", 0x19uLL) + 8);
    v9 = *(this + 1630);
    v14[0] = 1;
    v14[1] = ComponentType;
    v15 = 0x300000003;
    v16 = v9;
    *__p = 0u;
    v18 = 0u;
    v19 = ComponentType == 1;
    v20 = v8 < 0;
    v21 = 0;
    if (ComponentType == 1)
    {
      v10 = 19;
    }

    else
    {
      v10 = 18;
    }

    if (ComponentType == 1)
    {
      v11 = 21;
    }

    else
    {
      v11 = 20;
    }

    if (v8 >= 0)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    v22 = v12;
    MEMORY[0x20F331AA0](__p, "agc.per_prim.primitive_id");
    v13 = llvm::SmallVectorTemplateBase<GenericVarying,false>::push_back(this + 6512, v14);
    a3[4] = v9;
    *(a3 + 1) = 0x300000003;
    *(a3 + 4) = (*(*this + 680))(this, v9, 1, 0, v13);
    if (SBYTE7(v18) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,SimplifyGenericIRAGPFragmentGen4Pass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<SimplifyGenericIRAGPFragmentGen4Pass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

void AGCLLVMAGPFragmentShaderGen4::~AGCLLVMAGPFragmentShaderGen4(AGCLLVMAGPFragmentShaderGen4 *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_2825510B8;
  v5 = (this + 8064);
  *(this + 1008) = &unk_2825514C0;
  *(this + 1221) = &unk_2825515D0;
  *(this + 567) = &unk_282551388;
  v6 = *(this + 990);
  if (v6 != this + 7936)
  {
    free(v6);
  }

  AGCLLVMAGPFragmentShaderGen3::~AGCLLVMAGPFragmentShaderGen3(this, off_2825515E0, a3, a4);
  AGCLLVMObject::~AGCLLVMObject(v5);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825510B8;
  v5 = (this + 8064);
  *(this + 1008) = &unk_2825514C0;
  *(this + 1221) = &unk_2825515D0;
  *(this + 567) = &unk_282551388;
  v6 = *(this + 990);
  if (v6 != this + 7936)
  {
    free(v6);
  }

  AGCLLVMAGPFragmentShaderGen3::~AGCLLVMAGPFragmentShaderGen3(this, off_2825515E0, a3, a4);
  AGCLLVMObject::~AGCLLVMObject(v5);
}

void non-virtual thunk toAGCLLVMAGPFragmentShaderGen6::~AGCLLVMAGPFragmentShaderGen6(AGCLLVMAGPFragmentShaderGen6 *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = (this - 4536);
  *(this - 567) = off_282556258;
  v6 = (this + 3528);
  *(this + 441) = off_282556660;
  *(this + 654) = &off_282556770;
  *this = &off_282556528;
  v7 = *(this + 423);
  if (v7 != this + 3400)
  {
    free(v7);
  }

  AGCLLVMAGPFragmentShaderGen3::~AGCLLVMAGPFragmentShaderGen3(v5, off_282551C00, a3, a4);
  AGCLLVMObject::~AGCLLVMObject(v6);

  JUMPOUT(0x20F331DC0);
}

{
  v5 = (this - 4536);
  *(this - 567) = off_282556258;
  v6 = (this + 3528);
  *(this + 441) = off_282556660;
  *(this + 654) = &off_282556770;
  *this = &off_282556528;
  v7 = *(this + 423);
  if (v7 != this + 3400)
  {
    free(v7);
  }

  AGCLLVMAGPFragmentShaderGen3::~AGCLLVMAGPFragmentShaderGen3(v5, off_282551C00, a3, a4);

  AGCLLVMObject::~AGCLLVMObject(v6);
}

void AGCLLVMAGPFragmentShaderGen6::getPrimitiveIdVarying(AGCLLVMAGPFragmentShaderGen6 *this@<X0>, llvm::Type *a2@<X1>, unsigned int *a3@<X8>)
{
  ComponentType = AGCLLVMBuilder::getComponentType((this + *(*this - 24) + 1704), a2, v14);
  a3[4] = 0;
  *a3 = 0u;
  *(a3 + 3) = 0;
  *(a3 + 2) = 0u;
  *(a3 + 6) = a3 + 16;
  *(a3 + 7) = 0x500000000;
  llvm::SmallVectorImpl<unsigned int>::assign(a3 + 6, 5uLL, -559038737);
  *a3 = 1;
  a3[2] = 3;
  a3[3] = ComponentType;
  a3[4] = 0;
  if ((*(*(this + 801) + 69) & 1) == 0 || (Key = llvm::StringMapImpl::FindKey(), Key == -1) || Key == *(this + 1622))
  {
    a3[1] = 1;
    *(a3 + 4) = AGCLLVMUserFragmentShader::setupInterpolation(this, 7u, a3[4], *a3);
    *(a3 + 5) = v7;
  }

  else
  {
    v8 = *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>((this + 6480), "agc.per_prim.primitive_id", 0x19uLL) + 8);
    v9 = *(this + 1630);
    v14[0] = 1;
    v14[1] = ComponentType;
    v15 = 0x300000003;
    v16 = v9;
    *__p = 0u;
    v18 = 0u;
    v19 = ComponentType == 1;
    v20 = v8 < 0;
    v21 = 0;
    if (ComponentType == 1)
    {
      v10 = 19;
    }

    else
    {
      v10 = 18;
    }

    if (ComponentType == 1)
    {
      v11 = 21;
    }

    else
    {
      v11 = 20;
    }

    if (v8 >= 0)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    v22 = v12;
    MEMORY[0x20F331AA0](__p, "agc.per_prim.primitive_id");
    v13 = llvm::SmallVectorTemplateBase<GenericVarying,false>::push_back(this + 6512, v14);
    a3[4] = v9;
    *(a3 + 1) = 0x300000003;
    *(a3 + 4) = (*(*this + 680))(this, v9, 1, 0, v13);
    if (SBYTE7(v18) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void AGCLLVMAGPFragmentShaderGen6::~AGCLLVMAGPFragmentShaderGen6(AGCLLVMAGPFragmentShaderGen6 *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = off_282556258;
  v5 = (this + 8064);
  *(this + 1008) = off_282556660;
  *(this + 1221) = &off_282556770;
  *(this + 567) = &off_282556528;
  v6 = *(this + 990);
  if (v6 != this + 7936)
  {
    free(v6);
  }

  AGCLLVMAGPFragmentShaderGen3::~AGCLLVMAGPFragmentShaderGen3(this, off_282551C00, a3, a4);
  AGCLLVMObject::~AGCLLVMObject(v5);

  JUMPOUT(0x20F331DC0);
}

{
  *this = off_282556258;
  v5 = (this + 8064);
  *(this + 1008) = off_282556660;
  *(this + 1221) = &off_282556770;
  *(this + 567) = &off_282556528;
  v6 = *(this + 990);
  if (v6 != this + 7936)
  {
    free(v6);
  }

  AGCLLVMAGPFragmentShaderGen3::~AGCLLVMAGPFragmentShaderGen3(this, off_282551C00, a3, a4);
  AGCLLVMObject::~AGCLLVMObject(v5);
}

uint64_t AGCLLVMAGPFragmentShaderGen3::setupROGTable(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v7 = *(a1 + 4528);
  v8 = *(a2 + 8);
  if (v8 != v7)
  {
    if (v8 <= v7)
    {
      llvm::SmallVectorImpl<unsigned int>::append(a2, v7 - v8);
    }

    else
    {
      *(a2 + 8) = v7;
    }
  }

  if (*(a1 + 7860))
  {
    goto LABEL_71;
  }

  v9 = *(a4 + 2);
  if (v9)
  {
      ;
    }
  }

  else
  {
    i = *a4;
  }

  v42 = *a4 + 8 * v9;
  if (i == v42)
  {
LABEL_71:
    v13 = 1;
  }

  else
  {
    v12 = *i;
    v13 = 1;
    do
    {
      v14 = v12[3];
      v15 = v12[4];
      if (v15 <= 1)
      {
        v15 = 1;
      }

      v16 = v15 * v14;
      if (v12[2] + a3 < v15 * v14 + v12[2] + a3)
      {
        v17 = v12[6];
        v18 = 4 * (v12[2] + a3);
        do
        {
          v19 = *(*a2 + v18);
          if (v19 == -1)
          {
            *(*a2 + v18) = v17;
          }

          else if (((v19 != v17) & v13) == 1)
          {
            v20 = **i;
            v51.__r_.__value_.__r.__words[0] = *i + 48;
            v51.__r_.__value_.__l.__size_ = v20;
            v50.__r_.__value_.__s.__data_[0] = 64;
            llvm::StringRef::split(&v52, &v51, &v50, 1);
            if (v53)
            {
              std::string::basic_string[abi:nn200100](&__dst, v53, v54);
            }

            else
            {
              memset(&__dst, 0, sizeof(__dst));
            }

            v21 = std::string::insert(&__dst, 0, "Raster order group for imageblock field ");
            v22 = v21->__r_.__value_.__r.__words[2];
            *&v47.__r_.__value_.__l.__data_ = *&v21->__r_.__value_.__l.__data_;
            v47.__r_.__value_.__r.__words[2] = v22;
            v21->__r_.__value_.__l.__size_ = 0;
            v21->__r_.__value_.__r.__words[2] = 0;
            v21->__r_.__value_.__r.__words[0] = 0;
            v23 = std::string::append(&v47, " in output struct (");
            v24 = v23->__r_.__value_.__r.__words[2];
            *&v48.__r_.__value_.__l.__data_ = *&v23->__r_.__value_.__l.__data_;
            v48.__r_.__value_.__r.__words[2] = v24;
            v23->__r_.__value_.__l.__size_ = 0;
            v23->__r_.__value_.__r.__words[2] = 0;
            v23->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v45, v17);
            if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v25 = &v45;
            }

            else
            {
              v25 = v45.__r_.__value_.__r.__words[0];
            }

            if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v45.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v45.__r_.__value_.__l.__size_;
            }

            v27 = std::string::append(&v48, v25, size);
            v28 = v27->__r_.__value_.__r.__words[2];
            *&v49.__r_.__value_.__l.__data_ = *&v27->__r_.__value_.__l.__data_;
            v49.__r_.__value_.__r.__words[2] = v28;
            v27->__r_.__value_.__l.__size_ = 0;
            v27->__r_.__value_.__r.__words[2] = 0;
            v27->__r_.__value_.__r.__words[0] = 0;
            v29 = std::string::append(&v49, ") does not match raster order group in input struct (");
            v30 = v29->__r_.__value_.__r.__words[2];
            *&v50.__r_.__value_.__l.__data_ = *&v29->__r_.__value_.__l.__data_;
            v50.__r_.__value_.__r.__words[2] = v30;
            v29->__r_.__value_.__l.__size_ = 0;
            v29->__r_.__value_.__r.__words[2] = 0;
            v29->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v44, *(*a2 + v18));
            if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v31 = &v44;
            }

            else
            {
              v31 = v44.__r_.__value_.__r.__words[0];
            }

            if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v32 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v32 = v44.__r_.__value_.__l.__size_;
            }

            v33 = std::string::append(&v50, v31, v32);
            v34 = v33->__r_.__value_.__r.__words[2];
            *&v51.__r_.__value_.__l.__data_ = *&v33->__r_.__value_.__l.__data_;
            v51.__r_.__value_.__r.__words[2] = v34;
            v33->__r_.__value_.__l.__size_ = 0;
            v33->__r_.__value_.__r.__words[2] = 0;
            v33->__r_.__value_.__r.__words[0] = 0;
            v35 = std::string::append(&v51, ")");
            v36 = v35[1].n128_u64[0];
            v52 = *v35;
            v53 = v36;
            v35->n128_u64[1] = 0;
            v35[1].n128_u64[0] = 0;
            v35->n128_u64[0] = 0;
            if (SHIBYTE(v53) >= 0)
            {
              v37 = &v52;
            }

            else
            {
              v37 = v52.n128_u64[0];
            }

            if (SHIBYTE(v53) >= 0)
            {
              v38 = HIBYTE(v53);
            }

            else
            {
              v38 = v52.n128_u64[1];
            }

            std::string::append((a1 + 1656 + *(*a1 - 24)), v37, v38);
            if (SHIBYTE(v53) < 0)
            {
              operator delete(v52.n128_u64[0]);
            }

            if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v51.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v44.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v50.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v49.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v45.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v48.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v47.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            v13 = 0;
          }

          v18 += 4;
          --v16;
        }

        while (v16);
      }

      do
      {
        v39 = *(i + 8);
        i += 8;
        v12 = v39;
        if (v39)
        {
          v40 = v12 + 2 == 0;
        }

        else
        {
          v40 = 1;
        }
      }

      while (v40);
    }

    while (i != v42);
  }

  return v13 & 1;
}

__n128 llvm::StringRef::split(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = llvm::StringRef::find();
  if (v7 == -1)
  {
    a1[1].n128_u64[0] = 0;
    a1[1].n128_u64[1] = 0;
    result = *a2;
    *a1 = *a2;
  }

  else
  {
    v10 = a2->n128_u64[0];
    v9 = a2->n128_u64[1];
    if (v9 >= v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = a2->n128_u64[1];
    }

    v12 = v7 + a4;
    if (v9 < v7 + a4)
    {
      v12 = a2->n128_u64[1];
    }

    a1->n128_u64[0] = v10;
    a1->n128_u64[1] = v11;
    a1[1].n128_u64[0] = v10 + v12;
    a1[1].n128_u64[1] = v9 - v12;
  }

  return result;
}

BOOL AGCLLVMAGPFragmentShaderGen3::setupLIBViewToMasterFieldOffsetMap(uint64_t *a1, int a2, llvm::StringMapImpl *a3, uint64_t a4)
{
  i = a1;
  if (a2)
  {
      ;
    }
  }

  v8 = &a1[a2];
  if (i != v8)
  {
    v9 = *i;
    do
    {
      if (*(a3 + 3))
      {
        v10 = llvm::StringMap<LIBStructFieldInfo,llvm::MallocAllocator>::try_emplace<>(a3, (v9 + 48), *v9);
        v11 = *i;
        v9 = *v10;
      }

      else
      {
        v11 = v9;
      }

      v12 = *(v9 + 8);
      v13 = *(v11 + 8);
      v17 = (v11 + 8);
      *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a4, v13, &v17) + 8) = v12;
      do
      {
        v14 = i[1];
        ++i;
        v9 = v14;
        if (v14)
        {
          v15 = v9 == -8;
        }

        else
        {
          v15 = 1;
        }
      }

      while (v15);
    }

    while (i != v8);
  }

  return *(a4 + 16) != 0;
}

uint64_t *llvm::StringMap<LIBStructFieldInfo,llvm::MallocAllocator>::try_emplace<>(llvm::StringMapImpl *a1, const void *a2, size_t a3)
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

  v10 = MEMORY[0x20F330650](a3 + 49, 8);
  v11 = v10;
  v12 = v10 + 48;
  if (a3)
  {
    memcpy((v10 + 48), a2, a3);
  }

  *(v12 + a3) = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *v11 = a3;
  *(v11 + 24) = -1;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *i = v11;
  ++*(a1 + 3);
    ;
  }

  return i;
}

uint64_t *std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t **a1, unsigned int a2, _DWORD **a3)
{
  v3 = a1[1];
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
      v5 = *(v3 + 7);
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
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t llvm::StringMap<LIBStructFieldInfo,llvm::MallocAllocator>::~StringMap(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
          llvm::deallocate_buffer(*v8, v8, *v8 + 49);
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  free(*a1);
  return a1;
}

uint64_t AGCLLVMUserMeshShaderAnalysis::constructReply(AGCLLVMUserMeshShaderAnalysis *this)
{
  v2 = this + 4096;
  *(this + 4358) = 1;
  v3 = *(this + 1082);
  v4 = *(this + 1080) - *(this + 1084);
  if (*(this + 4368) == 1)
  {
    v5 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 4288, 0);
    flatbuffers::FlatBufferBuilder::TrackField(this + 4288, 4, v5);
    if (v2[272])
    {
      v6 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 4288, 0);
      flatbuffers::FlatBufferBuilder::TrackField(this + 4288, 6, v6);
      if (v2[272])
      {
        v7 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 4288, 0);
        flatbuffers::FlatBufferBuilder::TrackField(this + 4288, 8, v7);
      }
    }
  }

  v8 = flatbuffers::FlatBufferBuilder::EndTable((this + 4288), v4 + v3);
  GenericVaryingAllocator::allocate((this + 5168), *(this + 271));
  GenericVaryingAllocator::serialize((this + 5168), (this + 4288));
  v9 = *(this + 647) - *(this + 646);
  if (v9)
  {
    v10 = *(this + 646);
  }

  else
  {
    v10 = &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>> const&)::t;
  }

  v11 = flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(this + 4288, v10, v9 >> 2);
  v66 = 0;
  VaryingSignature = GenericVaryingAllocator::getVaryingSignature(this + 5168, (this + 4288), &v66 + 1, &v66);
  v2[262] = 1;
  v13 = *(this + 1082);
  v14 = *(this + 1080) - *(this + 1084);
  if (VaryingSignature)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((this + 4288), 10, HIDWORD(v66));
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((this + 4288), 12, v66);
  }

  v15 = flatbuffers::FlatBufferBuilder::EndTable((this + 4288), v14 + v13);
  v16 = AGCLLVMObject::constructFlatReply(this);
  v18 = flatbuffers::FlatBufferBuilder::EndTable(v16, v17);
  v2[262] = 1;
  v19 = *(this + 540);
  v20 = *(this + 542);
  v21 = *(this + 541);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((this + 4288), 4, v8);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this + 4288, 6, *(this + 1471));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this + 4288, 8, *(this + 1472));
  flatbuffers::FlatBufferBuilder::AddElement<signed char>(this + 4288, 10, *(this + 5892));
  if (v2[272] == 1)
  {
    v22 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 4288, 0);
    flatbuffers::FlatBufferBuilder::TrackField(this + 4288, 12, v22);
    if (v2[272])
    {
      v23 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 4288, 0);
      flatbuffers::FlatBufferBuilder::TrackField(this + 4288, 14, v23);
      if (v2[272])
      {
        v24 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 4288, 0);
        flatbuffers::FlatBufferBuilder::TrackField(this + 4288, 16, v24);
        if (v2[272])
        {
          v25 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 4288, 0);
          flatbuffers::FlatBufferBuilder::TrackField(this + 4288, 18, v25);
          if (v2[272])
          {
            v26 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 4288, 0);
            flatbuffers::FlatBufferBuilder::TrackField(this + 4288, 60, v26);
            if (v2[272])
            {
              v27 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 4288, 0);
              flatbuffers::FlatBufferBuilder::TrackField(this + 4288, 20, v27);
              if (v2[272])
              {
                v28 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 4288, 0);
                flatbuffers::FlatBufferBuilder::TrackField(this + 4288, 22, v28);
              }
            }
          }
        }
      }
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 4288, 28, v2[1760], 0);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((this + 4288), 30, v11);
  if (v2[272] == 1)
  {
    v29 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this + 4288, 0);
    flatbuffers::FlatBufferBuilder::TrackField(this + 4288, 32, v29);
    if (v2[272])
    {
      v30 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 4288, 0);
      flatbuffers::FlatBufferBuilder::TrackField(this + 4288, 34, v30);
      if (v2[272])
      {
        v31 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this + 4288, 0);
        flatbuffers::FlatBufferBuilder::TrackField(this + 4288, 36, v31);
        if (v2[272])
        {
          v32 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this + 4288, 0);
          flatbuffers::FlatBufferBuilder::TrackField(this + 4288, 38, v32);
          if (v2[272])
          {
            v33 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this + 4288, 0);
            flatbuffers::FlatBufferBuilder::TrackField(this + 4288, 40, v33);
            if (v2[272])
            {
              v34 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this + 4288, 0);
              flatbuffers::FlatBufferBuilder::TrackField(this + 4288, 42, v34);
              if (v2[272])
              {
                v35 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this + 4288, 0);
                flatbuffers::FlatBufferBuilder::TrackField(this + 4288, 44, v35);
                if (v2[272])
                {
                  v36 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this + 4288, 0);
                  flatbuffers::FlatBufferBuilder::TrackField(this + 4288, 46, v36);
                }
              }
            }
          }
        }
      }
    }
  }

  v37 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 4288, 1);
  flatbuffers::FlatBufferBuilder::TrackField(this + 4288, 54, v37);
  v38 = flatbuffers::FlatBufferBuilder::EndTable((this + 4288), v19 - v20 + v21);
  v2[262] = 1;
  v39 = *(this + 1082);
  v40 = *(this + 1080) - *(this + 1084);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((this + 4288), v18);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::MeshShaderInfo>((this + 4288), v38);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::MTLVertexInfo>((this + 4288), v15);
  v41 = flatbuffers::FlatBufferBuilder::EndTable((this + 4288), v40 + v39);
  flatbuffers::FlatBufferBuilder::Finish((this + 4288), v41, v42);
  AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>(this, this + 1072);
  v57 = 0;
  v58 = 0;
  v59 = xmmword_20E70C4D0;
  v60 = 0u;
  v61 = 0u;
  v62 = 0x1000000000000;
  v63 = 1;
  v64 = 256;
  v65 = 0;
  v43 = flatbuffers::FlatBufferBuilder::EndTable(&v57, 0);
  flatbuffers::FlatBufferBuilder::Finish(&v57, v43, v44);
  v45 = v61;
  v46 = (v60 - v61 + DWORD2(v60));
  v47 = (*(this + 1080) - *(this + 1084) + *(this + 1082));
  v48 = (v46 + 7) & 0x1FFFFFFF8;
  v49 = (v47 + 7) & 0x1FFFFFFF8;
  v50 = v49 + v48 + 376;
  v51 = malloc_type_calloc(1uLL, v50 + 40, 0x100004077774924uLL);
  *v51 = -17958193;
  *(v51 + 4) = 0x13800000019;
  *(v51 + 4) = 2;
  v52 = v48 + v49 + 8;
  *(v51 + 8) = v52;
  *(v51 + 9) = 368;
  *(v51 + 10) = v52;
  *(v51 + 24) = 3;
  *(v51 + 120) = *"__TEXT";
  *(v51 + 38) = 368;
  *(v51 + 18) = 8;
  *(v51 + 46) = 0;
  *(v51 + 200) = *"__GPU_METADATA";
  *(v51 + 58) = 376;
  *(v51 + 28) = v48;
  memcpy(v51 + 376, v45, v46);
  *(v51 + 280) = *"__GPU_LD_MD";
  *(v51 + 78) = v48 + 376;
  *(v51 + 38) = v49;
  memcpy(&v51[(v48 + 376)], *(this + 542), v47);
  v53 = &v51[*(v51 + 9) + 32];
  *v53 = 0x1800000002;
  *(v53 + 8) = v50;
  *(v53 + 12) = 1;
  v54 = (v50 + 16);
  *(v53 + 16) = v54;
  *(v53 + 20) = 20;
  strcpy(&v51[v54], "__agc.ctx_switch");
  v55 = &v51[*(v53 + 8)];
  *v55 = 1;
  *(v55 + 2) = 270;
  *(this + 286) = v51;
  *(this + 287) = v50 + 40;
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(&v57);
  return 1;
}

flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::MeshShaderInfo>(flatbuffers::FlatBufferBuilder *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    flatbuffers::FlatBufferBuilder::Align(result, 4uLL);
    v4 = (*(v3 + 8) - *(v3 + 12) + *(v3 + 10) - v2 + 4);

    return flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v3, 22, v4);
  }

  return result;
}

llvm::NamedMDNode *AGCLLVMUserMeshShaderAnalysis::compile(AGCLLVMUserMeshShaderAnalysis *this)
{
  v2 = *(this + 734);
  *&v43 = "air.mesh";
  WORD4(__p) = 259;
  result = llvm::Module::getNamedMetadata(v2, &v43);
  if (!result)
  {
    return result;
  }

  result = llvm::NamedMDNode::getOperand(result);
  if (!result)
  {
    return result;
  }

  v4 = (result - *(result + 2))[2];
  v5 = *(v4 + 8);
  if (!v5)
  {
    return (*(*this + 160))(this);
  }

  v6 = 0;
  v7 = this + 4096;
  LOBYTE(v8) = 1;
  do
  {
    while (1)
    {
      while (1)
      {
        v9 = *(v4 - 8 * v5 + 8 * v6);
        if (!v9 || !isStringMDNode(*(v9 - 8 * *(v9 + 8) + 8), "air.mesh"))
        {
          goto LABEL_67;
        }

        if (v8)
        {
          v10 = *(v9 - 8 * *(v9 + 8) + 16);
          if (v10)
          {
            v11 = *v10;
            if (v11 <= 0x22 && ((0x7FFFFFFF0uLL >> v11) & 1) != 0 && *(v10 + 2) == 6 && isStringMDNode(*(v10 - 6), "air.mesh_type_info"))
            {
              v12 = &v10[-8 * *(v10 + 2)];
              v13 = *(v12 + 1);
              if (v13)
              {
                v14 = *v13;
                if (v14 <= 0x22 && ((0x7FFFFFFF0uLL >> v14) & 1) != 0)
                {
                  v15 = *(v12 + 2);
                  if (v15)
                  {
                    v16 = *v15;
                    if (v16 <= 0x22 && ((0x7FFFFFFF0uLL >> v16) & 1) != 0)
                    {
                      LODWORD(v43) = 3;
                      if (parseMDInt(0, v10, &v43, this + 1471))
                      {
                        LODWORD(v43) = 4;
                        if (parseMDInt(0, v10, &v43, this + 1472))
                        {
                          if (parseMDPrimitiveType(v10, this + 1473))
                          {
                            break;
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

LABEL_54:
        LOBYTE(v8) = 0;
        result = 0;
        ++v6;
        v5 = *(v4 + 8);
        if (v6 >= v5)
        {
          return result;
        }
      }

      v17 = *(v13 + 2);
      v39 = v15;
      v40 = v7;
      if (v17)
      {
        v18 = 0;
        do
        {
          v19 = *&v13[8 * v18 + -8 * v17];
          if (!v19)
          {
            goto LABEL_54;
          }

          v20 = *v19;
          if (v20 > 0x22 || ((0x7FFFFFFF0uLL >> v20) & 1) == 0)
          {
            goto LABEL_54;
          }

          v41 = v18;
          if (v7[1785] == 1)
          {
            v21 = v19 + 8;
            v22 = 1;
            while (1)
            {
              v23 = *(v19 + 2);
              v24 = v22 >= v23;
              if (v22 >= v23)
              {
                break;
              }

              v25 = isStringMDNode(*&v21[-8 * v23], "air.shared");
              ++v22;
              v21 += 8;
              if (v25)
              {
                v24 = 0;
                break;
              }
            }

            v15 = v39;
            v7 = v40;
          }

          else
          {
            v24 = 0;
          }

          AGCLLVMUserMeshShaderAnalysis::addGenericVarying(this, v19, 0, v24);
          v18 = v41 + 1;
          v17 = *(v13 + 2);
        }

        while (v41 + 1 < v17);
      }

      v26 = *(v15 + 2);
      if (v26)
      {
        break;
      }

      ++v6;
      v5 = *(v4 + 8);
      LOBYTE(v8) = 1;
      if (v6 >= v5)
      {
        return (*(*this + 160))(this);
      }
    }

    v38 = 0;
    v37 = 0;
    v27 = 0;
    while (1)
    {
      v8 = *&v15[8 * v27 + -8 * v26];
      if (!v8)
      {
        break;
      }

      v28 = *v8;
      if (v28 > 0x22 || ((0x7FFFFFFF0uLL >> v28) & 1) == 0)
      {
        LOBYTE(v8) = 0;
        break;
      }

      v42 = v27;
      if (v7[1785] == 1)
      {
        v29 = v8 + 8;
        v30 = 1;
        while (1)
        {
          v31 = *(v8 + 8);
          v32 = v30 >= v31;
          if (v30 >= v31)
          {
            break;
          }

          v33 = isStringMDNode(*(v29 - 8 * v31), "air.shared");
          ++v30;
          v29 += 8;
          if (v33)
          {
            v32 = 0;
            break;
          }
        }

        v15 = v39;
        v7 = v40;
      }

      else
      {
        v32 = 0;
      }

      if (AGCLLVMUserMeshShaderAnalysis::addGenericVarying(this, v8, 1, v32))
      {
        v37 = 1;
      }

      else
      {
        v34 = isStringMDNode(*(v8 - 8 * *(v8 + 8)), "air.primitive_id");
        BYTE4(v38) |= v34;
        v35 = v38;
        if (v34)
        {
          v35 = v32;
        }

        LODWORD(v38) = v35;
      }

      v27 = v42 + 1;
      v26 = *(v15 + 2);
      if (v42 + 1 >= v26)
      {
        LOBYTE(v8) = 1;
        break;
      }
    }

    if ((v38 & 0x100000000) != 0 || (v7[1784] & 1) == 0 && ((v37 ^ 1) & 1) == 0)
    {
      v43 = xmmword_20E70C580;
      v44 = 0;
      __p = 0u;
      v46 = 0u;
      v47 = 0;
      v48 = v38 & 1;
      v49 = 0;
      if (v38)
      {
        v36 = 20;
      }

      else
      {
        v36 = 18;
      }

      v50 = v36;
      MEMORY[0x20F331AA0](&__p, "agc.per_prim.primitive_id");
      GenericVaryingAllocator::addVarying(this + 5168, &v43);
      if (SBYTE7(v46) < 0)
      {
        operator delete(__p);
      }
    }

LABEL_67:
    ++v6;
    v5 = *(v4 + 8);
  }

  while (v6 < v5);
  if (v8)
  {
    return (*(*this + 160))(this);
  }

  else
  {
    return 0;
  }
}

BOOL parseMDPrimitiveType(uint64_t a1, int *a2)
{
  if (isStringMDNode(*(a1 - 8 * *(a1 + 8) + 40), "air.line"))
  {
    v4 = 1;
  }

  else if (isStringMDNode(*(a1 - 8 * *(a1 + 8) + 40), "air.point"))
  {
    v4 = 0;
  }

  else
  {
    result = isStringMDNode(*(a1 - 8 * *(a1 + 8) + 40), "air.triangle");
    if (!result)
    {
      return result;
    }

    v4 = 2;
  }

  *a2 = v4;
  return 1;
}

uint64_t AGCLLVMUserMeshShaderAnalysis::addGenericVarying(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = *(a2 - 8 * *(a2 + 8));
  if (a3)
  {
    v9 = "air.primitive_data";
  }

  else
  {
    v9 = "air.vertex_data";
  }

  if (isStringMDNode(v8, v9))
  {
    v32 = 0;
  }

  else
  {
    v10 = *(a2 - 8 * *(a2 + 8));
    if (a3)
    {
      v11 = "air.mesh_primitive_data";
    }

    else
    {
      v11 = "air.mesh_vertex_data";
    }

    v32 = 0;
    if (!isStringMDNode(v10, v11))
    {
      return 0;
    }
  }

  LODWORD(v21) = 1;
  result = parseMDInt(0, a2, &v21, &v32);
  if (result)
  {
    result = *(a2 - 8 * *(a2 + 8) + 16);
    if (result)
    {
      if (*result)
      {
        return 0;
      }

      if (a3)
      {
        v13 = 3;
      }

      else
      {
        v13 = 0;
      }

      if (v32 < 0xFFFFFFFA)
      {
        v14 = ((a3 != 0) | (2 * v32)) + 6;
      }

      else
      {
        v14 = ~v32;
      }

      v21 = 1;
      v22 = v13;
      v23 = 0;
      v24 = v14;
      v27 = 0;
      v28 = 0;
      v29 = a4;
      v30 = 0;
      if (a4)
      {
        v15 = 10;
      }

      else
      {
        v15 = 1;
      }

      if (a4)
      {
        v16 = 20;
      }

      else
      {
        v16 = 18;
      }

      if (a3)
      {
        v15 = v16;
      }

      v31 = v15;
      String = llvm::MDString::getString(result);
      if (String)
      {
        std::string::basic_string[abi:nn200100](&v19, String, v18);
      }

      else
      {
        v19 = 0uLL;
        v20 = 0;
      }

      __p = v19;
      v26 = v20;
      GenericVaryingAllocator::addVarying(a1 + 5168, &v21);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(__p);
      }

      return 1;
    }
  }

  return result;
}

void AGCLLVMUserMeshShaderAnalysis::~AGCLLVMUserMeshShaderAnalysis(AGCLLVMUserMeshShaderAnalysis *this)
{
  *this = &unk_282558678;
  *(this + 213) = &unk_282558788;
  v3 = (this + 5736);
  std::vector<GenericVaryingAllocator::OutIterator>::__destroy_vector::operator()[abi:nn200100](&v3);
  llvm::SmallVector<GenericVarying,8u>::~SmallVector(this + 5192);
  v2 = *(this + 646);
  if (v2)
  {
    *(this + 647) = v2;
    operator delete(v2);
  }

  AGCLLVMObject::~AGCLLVMObject(this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_282558678;
  *(this + 213) = &unk_282558788;
  v3 = (this + 5736);
  std::vector<GenericVaryingAllocator::OutIterator>::__destroy_vector::operator()[abi:nn200100](&v3);
  llvm::SmallVector<GenericVarying,8u>::~SmallVector(this + 5192);
  v2 = *(this + 646);
  if (v2)
  {
    *(this + 647) = v2;
    operator delete(v2);
  }

  AGCLLVMObject::~AGCLLVMObject(this);
}

uint64_t virtual thunk toAGCLLVMUserObjectShaderBase::needsThreadgroupMemoryOOBChecks(AGCLLVMUserObjectShaderBase *this)
{
  v1 = (this + *(*this - 240));
  if (*(*(v1 + *(*v1 - 24) + 2168) + 1885) == 1)
  {
    return AGCLLVMUserObject::isThreadgroupMemoryUsed(v1);
  }

  else
  {
    return 0;
  }
}

uint64_t AGCLLVMUserMeshShader::constructReply(AGCLLVMUserMeshShader *this)
{
  v92 = *MEMORY[0x277D85DE8];
  if (!AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160)))
  {
    return 0;
  }

  AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
  v71 = AGCLLVMUserObject::constructFlatReply(this);
  v2 = this + *(*this - 24);
  v2[4358] = 1;
  v3 = *(v2 + 1082);
  v4 = *(v2 + 1080) - *(v2 + 1084);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v2 + 4288, 4, *(this + 1152));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v2 + 4288, 6, *(this + 1153));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v2 + 4288, 8, *(this + 1154));
  v67 = flatbuffers::FlatBufferBuilder::EndTable((v2 + 4288), v4 + v3);
  v5 = *(this + 5472);
  v79 = 0;
  v80 = 0u;
  v81[0] = v82;
  v81[1] = 0x800000000;
  v82[64] = 0x1FFFFFFFFLL;
  v83 = v5;
  v90[7] = 0;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  memset(v90, 0, 26);
  v91 = 1;
  if (*(this + 1236))
  {
    v6 = *(this + 617);
    do
    {
      GenericVaryingAllocator::addVarying(&v79, v6);
      v6 += 64;
    }

    while (v6 < *(this + 617) + (*(this + 1236) << 6));
  }

  GenericVaryingAllocator::allocate(&v79, *(this + *(*this - 24) + 2168));
  GenericVaryingAllocator::serialize(&v79, (this + *(*this - 24) + 4288));
  if (v80 == v79)
  {
    v7 = &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>> const&)::t;
  }

  else
  {
    v7 = v79;
  }

  v68 = flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(this + *(*this - 24) + 4288, v7, (v80 - v79) >> 2);
  v8 = this + *(*this - 24);
  v8[4358] = 1;
  v9 = *(v8 + 1082);
  v10 = *(v8 + 1080) - *(v8 + 1084);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v8 + 4288, 4, v87);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v8 + 4288, 6, DWORD1(v87));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v8 + 4288, 8, DWORD2(v87));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v8 + 4288, 16, DWORD1(v88));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v8 + 4288, 10, DWORD2(v85));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v8 + 4288, 12, HIDWORD(v85));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v8 + 4288, 14, v86);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v8 + 4288, 18, HIDWORD(v86));
  v11 = flatbuffers::FlatBufferBuilder::EndTable((v8 + 4288), v10 + v9);
  v12 = this + *(*this - 24);
  v13 = *(v12 + 1080);
  v12[4358] = 1;
  v14 = *(v12 + 1082);
  v15 = v13 - *(v12 + 1084);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v12 + 4288, 4, v90[0]);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v12 + 4288, 6, v90[1]);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v12 + 4288, 8, v90[2]);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v12 + 4288, 16, v90[5]);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v12 + 4288, 10, DWORD2(v88));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v12 + 4288, 12, HIDWORD(v88));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v12 + 4288, 14, v89);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v12 + 4288, 18, HIDWORD(v89));
  v16 = flatbuffers::FlatBufferBuilder::EndTable((v12 + 4288), v15 + v14);
  v17 = this + *(*this - 24);
  v18 = *(v17 + 1080);
  v17[4358] = 1;
  LODWORD(v12) = *(v17 + 1082);
  v19 = v18 - *(v17 + 1084);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v17 + 4288), 4, v67);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v17 + 4288, 6, *(this + 1204));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v17 + 4288, 8, *(this + 1205));
  flatbuffers::FlatBufferBuilder::AddElement<signed char>(v17 + 4288, 10, *(this + 4828));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v17 + 4288, 12, *(this + 1218));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v17 + 4288, 14, *(this + 1219));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v17 + 4288, 16, (*(this + 1214) - *(this + 1220)));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v17 + 4288, 18, *(this + 1216));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v17 + 4288, 60, *(this + 1220));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v17 + 4288, 20, *(this + 1215));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v17 + 4288, 22, *(this + 1217));
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v17 + 4288), 24, v11);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v17 + 4288), 26, v16);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v17 + 4288, 28, LOBYTE(v90[6]), 0);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v17 + 4288), 30, v68);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v17 + 4288, 32, *(this + 4841), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v17 + 4288, 34, *(this + 1209));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v17 + 4288, 36, *(this + 4845), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v17 + 4288, 38, *(this + 4843), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v17 + 4288, 40, *(this + 4847), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v17 + 4288, 42, *(this + 4832), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v17 + 4288, 44, *(this + 4842), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v17 + 4288, 46, *(this + 4849), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v17 + 4288, 48, *(this + 1146));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v17 + 4288, 50, *(this + 4600), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v17 + 4288, 52, *(this + 4848), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v17 + 4288, 54, *(this + 1194));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v17 + 4288, 56, *(this + 12), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v17 + 4288, 58, *(this + 4601), 0);
  LODWORD(v12) = flatbuffers::FlatBufferBuilder::EndTable((v17 + 4288), v19 + v12);
  v20 = this + *(*this - 24);
  v21 = *(v20 + 1080);
  v20[4358] = 1;
  v22 = *(v20 + 1082);
  v23 = v21 - *(v20 + 1084);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v20 + 4288), v71);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::MeshShaderInfo>((v20 + 4288), v12);
  v24 = *(*this - 24);
  v25 = flatbuffers::FlatBufferBuilder::EndTable((v20 + 4288), v23 + v22);
  flatbuffers::FlatBufferBuilder::Finish((this + v24 + 4288), v25, v26);
  AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
  v27 = *this;
  v28 = this + *(*this - 24);
  v28[4454] = 1;
  v29 = *(v27 - 24);
  v30 = flatbuffers::FlatBufferBuilder::EndTable((v28 + 4384), *(v28 + 2208) - *(v28 + 2216) + *(v28 + 2212));
  flatbuffers::FlatBufferBuilder::Finish((this + v29 + 4384), v30, v31);
  AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslatorG10::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4384));
  v32 = (this + *(*this - 24));
  v33 = v32[314];
  if (v33)
  {
    if (v32[315])
    {
      v34 = v32 + 314;
    }

    else
    {
      v34 = v32 + 384;
    }
  }

  else
  {
    v34 = v32 + 384;
  }

  v36 = (*v34 + **v34);
  v37 = (v36 + *(v36 - *v36 + 4));
  v38 = (v37 + *v37);
  if (v33)
  {
    if (v32[315])
    {
      v39 = (v32 + 314);
    }

    else
    {
      v39 = (v32 + 384);
    }
  }

  else
  {
    v39 = (v32 + 384);
  }

  v40 = 0;
  v41 = (v38 + *(v38 - *v38 + 8));
  if (*v39 && v39[1])
  {
    v40 = (*v39 + **v39);
  }

  v42 = (v40 - *v40);
  if (*v42 >= 5u && (v43 = v42[2]) != 0)
  {
    v44 = (v40 + v43 + *(v40 + v43));
  }

  else
  {
    v44 = 0;
  }

  v45 = (v44 - *v44);
  if (*v45 >= 0x3Du && (v46 = v45[30]) != 0)
  {
    v47 = *(v44 + v46);
  }

  else
  {
    v47 = 0;
  }

  v48 = *(v41 + *v41);
  v49 = *(this + 1204);
  v69 = *(this + 1223);
  v70 = *(this + 1221);
  v72 = *(this + 1222);
  v50 = *(this + 1205);
  v51 = *(this + 1224);
  v52 = *(this + 1194);
  v53 = *(this + 1225);
  v54 = *(v32[271] + 1004);
  if (v53 > v54)
  {
    std::to_string(&v74, v53);
    v55 = std::string::insert(&v74, 0, "Mesh unique scalar count of ");
    v56 = v55->__r_.__value_.__r.__words[2];
    *&v75.__r_.__value_.__l.__data_ = *&v55->__r_.__value_.__l.__data_;
    v75.__r_.__value_.__r.__words[2] = v56;
    v55->__r_.__value_.__l.__size_ = 0;
    v55->__r_.__value_.__r.__words[2] = 0;
    v55->__r_.__value_.__r.__words[0] = 0;
    v57 = std::string::append(&v75, " exceeds limit of ");
    v58 = v57->__r_.__value_.__r.__words[2];
    *&v76.__r_.__value_.__l.__data_ = *&v57->__r_.__value_.__l.__data_;
    v76.__r_.__value_.__r.__words[2] = v58;
    v57->__r_.__value_.__l.__size_ = 0;
    v57->__r_.__value_.__r.__words[2] = 0;
    v57->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v73, *(*(this + *(*this - 24) + 2168) + 1004));
    if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v59 = &v73;
    }

    else
    {
      v59 = v73.__r_.__value_.__r.__words[0];
    }

    if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v73.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v73.__r_.__value_.__l.__size_;
    }

    v61 = std::string::append(&v76, v59, size);
    v62 = v61->__r_.__value_.__r.__words[2];
    *__p = *&v61->__r_.__value_.__l.__data_;
    v78 = v62;
    v61->__r_.__value_.__l.__size_ = 0;
    v61->__r_.__value_.__r.__words[2] = 0;
    v61->__r_.__value_.__r.__words[0] = 0;
    if (v78 >= 0)
    {
      v63 = __p;
    }

    else
    {
      v63 = __p[0];
    }

    if (v78 >= 0)
    {
      v64 = HIBYTE(v78);
    }

    else
    {
      v64 = __p[1];
    }

    std::string::append((this + *(*this - 24) + 1656), v63, v64);
    if (SHIBYTE(v78) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v76.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v75.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }
  }

  if (v48 > 0x20)
  {
    v35 = 0;
  }

  else
  {
    v65 = validateUserMeshLocalMemoryUsage(v47, ((v49 + 3) & 0xFFFFFFFC) * v70 + v50 * v72 + (v69 * ((v49 + 3) & 0xFFFFFFFC) + v51 * v50) * v52, *(*(this + *(*this - 24) + 2168) + 996), *(*(this + *(*this - 24) + 2168) + 992), *(*(this + *(*this - 24) + 2168) + 1000), (this + *(*this - 24) + 1656));
    if (v53 <= v54)
    {
      v35 = v65;
    }

    else
    {
      v35 = 0;
    }
  }

  __p[0] = &v84;
  std::vector<GenericVaryingAllocator::OutIterator>::__destroy_vector::operator()[abi:nn200100](__p);
  llvm::SmallVector<GenericVarying,8u>::~SmallVector(v81);
  if (v79)
  {
    *&v80 = v79;
    operator delete(v79);
  }

  return v35;
}