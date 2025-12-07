uint64_t glpLLVMBasicBlockGetTerminator(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 == a1 + 40)
  {
    return 0;
  }

  v2 = v1 - 24;
  if (v1)
  {
    v3 = v1 - 24;
  }

  else
  {
    v3 = 0;
  }

  if (*(v3 + 16) - 29 >= 0xB)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t glpLLVMSetFastMathFlags(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    v3 = -1;
  }

  else
  {
    v3 = 121;
  }

  if (a2)
  {
    v3 = 24;
  }

  *(result + 96) = v3;
  return result;
}

void GLPDebugInfoContext::~GLPDebugInfoContext(GLPDebugInfoContext *this)
{
  llvm::DIBuilder::finalize(this);
  v2 = *(this + 60);
  if (v2)
  {
    *(this + 61) = v2;
    operator delete(v2);
  }

  llvm::DIBuilder::~DIBuilder(this);
}

uint64_t GLPDebugInfoContext::createCompileUnit(GLPDebugInfoContext *this, const char *__s, const char *a3)
{
  if (!__s)
  {
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  strlen(__s);
  if (a3)
  {
LABEL_3:
    strlen(a3);
  }

LABEL_5:
  llvm::DIBuilder::createFile();
  result = llvm::DIBuilder::createCompileUnit();
  *(this + 58) = result;
  return result;
}

uint64_t GLPDebugInfoContext::createFile(GLPDebugInfoContext *this, const char *__s, const char *a3)
{
  if (!__s)
  {
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  strlen(__s);
  if (a3)
  {
LABEL_3:
    strlen(a3);
  }

LABEL_5:
  result = llvm::DIBuilder::createFile();
  *(this + 57) = result;
  return result;
}

void GLPDebugInfoContext::createFunction(GLPDebugInfoContext *this, const char *__s, llvm::Function *a3)
{
  if (__s)
  {
    strlen(__s);
  }

  llvm::DIBuilder::getOrCreateTypeArray();
  llvm::DIBuilder::createSubroutineType();
  Function = llvm::DIBuilder::createFunction();
  if (llvm::Function::getSubprogram(a3))
  {
    GLPDebugInfoContext::createFunction();
  }

  llvm::Function::setSubprogram();
  *(this + 56) = Function;
  v6 = *(this + 60);
  v7 = *(this + 61);
  v8 = (v7 - v6) >> 3;
  if (v8)
  {
    if (v8 != 1)
    {
      GLPDebugInfoContext::createFunction();
    }

    *(this + 61) = --v7;
  }

  v9 = *(this + 62);
  if (v7 >= v9)
  {
    v11 = (v7 - v6) >> 3;
    if ((v11 + 1) >> 61)
    {
      std::vector<llvm::MDNode *>::__throw_length_error[abi:nn200100]();
    }

    v12 = v9 - v6;
    v13 = v12 >> 2;
    if (v12 >> 2 <= (v11 + 1))
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::MDNode *>>(this + 480, v14);
    }

    v15 = (8 * v11);
    *v15 = Function;
    v10 = 8 * v11 + 8;
    v16 = *(this + 60);
    v17 = *(this + 61) - v16;
    v18 = v15 - v17;
    memcpy(v15 - v17, v16, v17);
    v19 = *(this + 60);
    *(this + 60) = v18;
    *(this + 61) = v10;
    *(this + 62) = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v7 = Function;
    v10 = (v7 + 1);
  }

  *(this + 61) = v10;
}

void glpLLVMDIBuilderCreateSubProgram(GLPDebugInfoContext *a1, llvm::Function *a2, char *__s)
{
  if (!a2)
  {
    glpLLVMDIBuilderCreateSubProgram_cold_2();
  }

  if (*(a2 + 16))
  {
    glpLLVMDIBuilderCreateSubProgram_cold_1();
  }

  GLPDebugInfoContext::createFunction(a1, __s, a2);
}

uint64_t glpLLVMGetDebugLocation(uint64_t a1, uint64_t a2)
{
  Impl = llvm::DILocation::getImpl();
  v4 = *(a1 + 472);

  return MEMORY[0x2821F2680](v4, Impl);
}

GLPDebugInfoContext *glpLLVMDIBuilderDelete(GLPDebugInfoContext *result)
{
  if (result)
  {
    GLPDebugInfoContext::~GLPDebugInfoContext(result);

    JUMPOUT(0x23EE856F0);
  }

  return result;
}

uint64_t llvm::raw_ostream::SetUnbuffered(llvm::raw_ostream *this)
{
  if (*(this + 4) != *(this + 2))
  {
    llvm::raw_ostream::flush_nonempty(this);
  }

  return MEMORY[0x2821F1EA8](this, 0, 0, 0);
}

void llvm::DIBuilder::~DIBuilder(llvm **this)
{
  llvm::DenseMapBase<llvm::DenseMap<llvm::MDNode *,llvm::SmallVector<llvm::TypedTrackingMDRef<llvm::MDNode>,1u>,llvm::DenseMapInfo<llvm::MDNode *,void>,llvm::detail::DenseMapPair<llvm::MDNode *,llvm::SmallVector<llvm::TypedTrackingMDRef<llvm::MDNode>,1u>>>,llvm::MDNode *,llvm::SmallVector<llvm::TypedTrackingMDRef<llvm::MDNode>,1u>,llvm::DenseMapInfo<llvm::MDNode *,void>,llvm::detail::DenseMapPair<llvm::MDNode *,llvm::SmallVector<llvm::TypedTrackingMDRef<llvm::MDNode>,1u>>>::destroyAll(this + 53);
  llvm::deallocate_buffer(this[53], (32 * *(this + 110)));
  llvm::DenseMapBase<llvm::DenseMap<llvm::MDNode *,llvm::SmallVector<llvm::TypedTrackingMDRef<llvm::MDNode>,1u>,llvm::DenseMapInfo<llvm::MDNode *,void>,llvm::detail::DenseMapPair<llvm::MDNode *,llvm::SmallVector<llvm::TypedTrackingMDRef<llvm::MDNode>,1u>>>,llvm::MDNode *,llvm::SmallVector<llvm::TypedTrackingMDRef<llvm::MDNode>,1u>,llvm::DenseMapInfo<llvm::MDNode *,void>,llvm::detail::DenseMapPair<llvm::MDNode *,llvm::SmallVector<llvm::TypedTrackingMDRef<llvm::MDNode>,1u>>>::destroyAll(this + 50);
  llvm::deallocate_buffer(this[50], (32 * *(this + 104)));
  llvm::SmallVector<llvm::TypedTrackingMDRef<llvm::MDNode>,4u>::~SmallVector(this + 43);
  v8 = (this + 40);
  std::vector<std::pair<llvm::MDNode *,llvm::SetVector<llvm::Metadata *,std::vector<llvm::Metadata *>,llvm::DenseSet<llvm::Metadata *,llvm::DenseMapInfo<llvm::Metadata *,void>>>>>::__destroy_vector::operator()[abi:nn200100](&v8, v2, v3, v4);
  llvm::deallocate_buffer(this[37], (16 * *(this + 78)));
  llvm::SmallVector<llvm::TypedTrackingMDRef<llvm::MDNode>,4u>::~SmallVector(this + 31);
  v5 = this[25];
  if (v5 != (this + 27))
  {
    free(v5);
  }

  v6 = this[19];
  if (v6 != (this + 21))
  {
    free(v6);
  }

  llvm::SmallVector<llvm::TypedTrackingMDRef<llvm::MDNode>,4u>::~SmallVector(this + 13);
  v7 = this[7];
  if (v7 != (this + 9))
  {
    free(v7);
  }
}

char ***llvm::DenseMapBase<llvm::DenseMap<llvm::MDNode *,llvm::SmallVector<llvm::TypedTrackingMDRef<llvm::MDNode>,1u>,llvm::DenseMapInfo<llvm::MDNode *,void>,llvm::detail::DenseMapPair<llvm::MDNode *,llvm::SmallVector<llvm::TypedTrackingMDRef<llvm::MDNode>,1u>>>,llvm::MDNode *,llvm::SmallVector<llvm::TypedTrackingMDRef<llvm::MDNode>,1u>,llvm::DenseMapInfo<llvm::MDNode *,void>,llvm::detail::DenseMapPair<llvm::MDNode *,llvm::SmallVector<llvm::TypedTrackingMDRef<llvm::MDNode>,1u>>>::destroyAll(char ***result)
{
  v1 = *(result + 4);
  if (v1)
  {
    v2 = 32 * v1;
    result = (*result + 1);
    do
    {
      if ((*(result - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        result = llvm::SmallVector<llvm::TypedTrackingMDRef<llvm::MDNode>,1u>::~SmallVector(result);
      }

      result += 4;
      v2 -= 32;
    }

    while (v2);
  }

  return result;
}

char ***llvm::SmallVector<llvm::TypedTrackingMDRef<llvm::MDNode>,1u>::~SmallVector(char ***a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = -8 * v3;
    v5 = &v2[v3 - 1];
    do
    {
      if (*v5)
      {
        llvm::MetadataTracking::untrack();
      }

      --v5;
      v4 += 8;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

char ***llvm::SmallVector<llvm::TypedTrackingMDRef<llvm::MDNode>,4u>::~SmallVector(char ***a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = -8 * v3;
    v5 = &v2[v3 - 1];
    do
    {
      if (*v5)
      {
        llvm::MetadataTracking::untrack();
      }

      --v5;
      v4 += 8;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

void std::vector<std::pair<llvm::MDNode *,llvm::SetVector<llvm::Metadata *,std::vector<llvm::Metadata *>,llvm::DenseSet<llvm::Metadata *,llvm::DenseMapInfo<llvm::Metadata *,void>>>>>::__destroy_vector::operator()[abi:nn200100](void ***a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a1;
  v5 = **a1;
  if (v5)
  {
    v7 = v4[1];
    v8 = **a1;
    if (v7 != v5)
    {
      do
      {
        v7 -= 56;
        std::allocator<std::pair<llvm::MDNode *,llvm::SetVector<llvm::Metadata *,std::vector<llvm::Metadata *>,llvm::DenseSet<llvm::Metadata *,llvm::DenseMapInfo<llvm::Metadata *,void>>>>>::destroy[abi:nn200100](v4, v7, a3, a4);
      }

      while (v7 != v5);
      v8 = **a1;
    }

    v4[1] = v5;

    operator delete(v8);
  }
}

uint64_t std::allocator<std::pair<llvm::MDNode *,llvm::SetVector<llvm::Metadata *,std::vector<llvm::Metadata *>,llvm::DenseSet<llvm::Metadata *,llvm::DenseMapInfo<llvm::Metadata *,void>>>>>::destroy[abi:nn200100](uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    *(a2 + 40) = v5;
    operator delete(v5);
  }

  v6 = *(a2 + 8);
  v7 = (8 * *(a2 + 24));

  return llvm::deallocate_buffer(v6, v7);
}

void *llvm::SmallVectorTemplateBase<char,true>::push_back(void *result, char a2)
{
  v2 = result[1];
  if ((v2 + 1) > result[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(*result + v2) = a2;
  v3 = result[1] + 1;
  if (result[2] < v3)
  {
    llvm::SmallVectorTemplateBase<char,true>::push_back();
  }

  result[1] = v3;
  return result;
}

uint64_t llvm::isa_impl_wrap<llvm::MDNode,llvm::Metadata const*,llvm::Metadata const*>::doit(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (!v3)
  {
    llvm::isa_impl_wrap<llvm::MDNode,llvm::Metadata const*,llvm::Metadata const*>::doit();
  }

  return llvm::MDNode::classof(v3);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::MDNode *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t glpTopLevelNodeGetGlobalTypeQualifier(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    return 0;
  }

  for (i = *(a1 + 8); ; ++i)
  {
    result = *i;
    if ((*i + 1) >= 2 && *(result + 16) == 63 && *(result + 32) && (*(result + 24) & 0xFFFFFFFFFFFFFF7FLL) == a2)
    {
      break;
    }

    if (!--v2)
    {
      return 0;
    }
  }

  return result;
}

__n128 glpASTNodeGetLocation@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(a1 + 40);
  *a2 = result;
  a2[1].n128_u64[0] = *(a1 + 56);
  return result;
}

void PPStreamChunkListFree(_DWORD *a1)
{
  v2 = a1[4];
  if (v2 >= 1)
  {
    v3 = *a1;
    do
    {
      v4 = v3[1];
      free(v3);
      v3 = v4;
      --v2;
    }

    while (v2);
  }

  free(a1);
}

void PPStreamFree(_DWORD **a1)
{
  PPStreamChunkListFree(a1[2]);
  PPStreamChunkListFree(a1[3]);
  PPStreamChunkListFree(a1[4]);
  PPStreamChunkListFree(a1[10]);
  PPStreamChunkListFree(a1[5]);
  PPStreamChunkListFree(a1[7]);
  PPStreamChunkListFree(a1[9]);
  PPStreamChunkListFree(a1[6]);
  PPStreamChunkListFree(a1[8]);
  PPStreamChunkListFree(a1[11]);
  PPStreamChunkListFree(a1[13]);
  PPStreamChunkListFree(a1[14]);
  PPStreamChunkListFree(a1[16]);
  PPStreamChunkListFree(a1[15]);
  PPStreamChunkListFree(a1[12]);

  free(a1);
}

void *PPStreamChunkCreate(uint64_t a1)
{
  result = malloc_type_calloc(a1 + 24, 1uLL, 0x1116B6A2uLL);
  if (!result)
  {
    abort();
  }

  return result;
}

char *PPStreamAddTempUsage(uint64_t a1, _OWORD *a2)
{
  result = PPStreamChunkCreate(16);
  result[16] = 2;
  *(result + 24) = *a2;
  v5 = *(a1 + 32);
  if (!*v5)
  {
    *v5 = result;
    *result = 0;
  }

  v6 = *(v5 + 8);
  if (v6)
  {
    *(v6 + 8) = result;
    *result = v6;
  }

  *(result + 1) = 0;
  *(v5 + 8) = result;
  ++*(v5 + 16);
  return result;
}

_BYTE *PPStreamAddAddressUsage(uint64_t a1, _DWORD *a2)
{
  result = PPStreamChunkCreate(4);
  result[16] = 3;
  *(result + 6) = *a2;
  v5 = *(a1 + 40);
  if (!*v5)
  {
    *v5 = result;
    *result = 0;
  }

  v6 = *(v5 + 8);
  if (v6)
  {
    *(v6 + 8) = result;
    *result = v6;
  }

  *(result + 1) = 0;
  *(v5 + 8) = result;
  ++*(v5 + 16);
  return result;
}

char *PPStreamAddParamBinding(uint64_t a1, _OWORD *a2)
{
  result = PPStreamChunkCreate(16);
  result[16] = 5;
  *(result + 24) = *a2;
  v5 = *(a1 + 56);
  if (!*v5)
  {
    *v5 = result;
    *result = 0;
  }

  v6 = *(v5 + 8);
  if (v6)
  {
    *(v6 + 8) = result;
    *result = v6;
  }

  *(result + 1) = 0;
  *(v5 + 8) = result;
  ++*(v5 + 16);
  return result;
}

_BYTE *PPStreamAddParamBindingArray(uint64_t a1, void *a2)
{
  result = PPStreamChunkCreate(8);
  result[16] = 7;
  *(result + 3) = *a2;
  v5 = *(a1 + 72);
  if (!*v5)
  {
    *v5 = result;
    *result = 0;
  }

  v6 = *(v5 + 8);
  if (v6)
  {
    *(v6 + 8) = result;
    *result = v6;
  }

  *(result + 1) = 0;
  *(v5 + 8) = result;
  ++*(v5 + 16);
  return result;
}

char *PPStreamAddAttribBinding(uint64_t a1, _OWORD *a2)
{
  result = PPStreamChunkCreate(16);
  result[16] = 4;
  *(result + 24) = *a2;
  v5 = *(a1 + 48);
  if (!*v5)
  {
    *v5 = result;
    *result = 0;
  }

  v6 = *(v5 + 8);
  if (v6)
  {
    *(v6 + 8) = result;
    *result = v6;
  }

  *(result + 1) = 0;
  *(v5 + 8) = result;
  ++*(v5 + 16);
  return result;
}

char *PPStreamAddOutputBinding(uint64_t a1, _OWORD *a2)
{
  result = PPStreamChunkCreate(16);
  result[16] = 6;
  *(result + 24) = *a2;
  v5 = *(a1 + 64);
  if (!*v5)
  {
    *v5 = result;
    *result = 0;
  }

  v6 = *(v5 + 8);
  if (v6)
  {
    *(v6 + 8) = result;
    *result = v6;
  }

  *(result + 1) = 0;
  *(v5 + 8) = result;
  ++*(v5 + 16);
  return result;
}

char *PPStreamAddOperation(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = *(a2 + 72);
  if (v6)
  {
    v7 = (v6 + 81);
  }

  else
  {
    v7 = 80;
  }

  v8 = PPStreamChunkCreate(v7);
  v9 = v8;
  v8[16] = 11;
  *(v8 + 24) = *a2;
  v10 = *(a2 + 48);
  v11 = *(a2 + 64);
  v12 = *(a2 + 32);
  *(v8 + 40) = *(a2 + 16);
  *(v8 + 88) = v11;
  *(v8 + 72) = v10;
  *(v8 + 56) = v12;
  if (a3 && v6)
  {
    memmove(v8 + 104, a3, v6);
    v9[v6 + 104] = 0;
  }

  v13 = *(a1 + 140);
  *(a1 + 140) = v13 + 1;
  *(v9 + 22) = v13;
  v14 = *(a1 + 104);
  if (!*v14)
  {
    *v14 = v9;
    *v9 = 0;
  }

  v15 = *(v14 + 8);
  if (v15)
  {
    *(v15 + 8) = v9;
    *v9 = v15;
  }

  *(v9 + 1) = 0;
  *(v14 + 8) = v9;
  ++*(v14 + 16);
  return v9;
}

char *PPStreamAddLabel(uint64_t a1, const void *a2, unsigned int a3)
{
  v6 = a3;
  v7 = PPStreamChunkCreate(a3 + 9);
  v7[16] = 14;
  *(v7 + 7) = a3;
  *(v7 + 6) = *(a1 + 140);
  memmove(v7 + 32, a2, v6);
  v7[a3 + 32] = 0;
  v8 = *(a1 + 112);
  if (!*v8)
  {
    *v8 = v7;
    *v7 = 0;
  }

  v9 = *(v8 + 8);
  if (v9)
  {
    *(v9 + 8) = v7;
    *v7 = v9;
  }

  *(v7 + 1) = 0;
  *(v8 + 8) = v7;
  ++*(v8 + 16);
  return v7;
}

_BYTE *PPStreamAddConstant(uint64_t a1, _DWORD *a2)
{
  result = PPStreamChunkCreate(16);
  result[16] = 13;
  *(result + 6) = *a2;
  *(result + 7) = a2[1];
  *(result + 8) = a2[2];
  *(result + 9) = a2[3];
  v5 = *(a1 + 128);
  if (!*v5)
  {
    *v5 = result;
    *result = 0;
  }

  v6 = *(v5 + 8);
  if (v6)
  {
    *(v6 + 8) = result;
    *result = v6;
  }

  *(result + 1) = 0;
  *(v5 + 8) = result;
  ++*(v5 + 16);
  return result;
}

_BYTE *PPStreamAddOption(uint64_t a1, char a2)
{
  result = PPStreamChunkCreate(8);
  result[16] = 10;
  result[27] = a2;
  v5 = *(a1 + 96);
  if (!*v5)
  {
    *v5 = result;
    *result = 0;
  }

  v6 = *(v5 + 8);
  if (v6)
  {
    *(v6 + 8) = result;
    *result = v6;
  }

  *(result + 1) = 0;
  *(v5 + 8) = result;
  ++*(v5 + 16);
  return result;
}

uint64_t PPStreamResolveBranches(uint64_t a1)
{
  v1 = *(a1 + 104);
  v2 = *(a1 + 112);
  v3 = *v1;
  if (*v1)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 96);
      if (v5)
      {
        v6 = *(v3 + 24);
        *(v3 + 24) = v6 & 0x3FFFFFFFFFFFLL | ((*(v1 + 4) + 1) << 46);
        v7 = *v2;
        if (*v2)
        {
          v8 = v6 & 0x3FFFFFFFFFFFLL;
          while (v5 != *(v7 + 28) || strncmp((v3 + 104), (v7 + 32), v5))
          {
            v7 = *(v7 + 8);
            if (!v7)
            {
              goto LABEL_9;
            }
          }

          *(v3 + 24) = v8 | (*(v7 + 24) << 46);
        }

        else
        {
LABEL_9:
          v4 = 1;
        }
      }

      v3 = *(v3 + 8);
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  v9 = *v2;
  if (v9)
  {
    while (strcmp("main(", (v9 + 32)))
    {
      v9 = *(v9 + 8);
      if (!v9)
      {
        return v4;
      }
    }

    v10 = *v1;
    if (*v1)
    {
      while (*(v9 + 24) != *(v10 + 88))
      {
        v10 = *(v10 + 8);
        if (!v10)
        {
          return v4;
        }
      }

      *(v10 + 24) |= 0x4000uLL;
    }
  }

  return v4;
}

void gleLLVMInitBuildContext(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7, int a8, int a9, int a10)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = a2;
  *a1 = 0;
  *(a1 + 24) = LLVMModuleCreateWithNameInContext();
  *(a1 + 32) = 0;
  *(a1 + 136) = 0;
  *(a1 + 184) = 0;
  v15 = malloc_type_malloc(8 * a4, 0xA07D3369uLL);
  *(a1 + 64) = v15;
  bzero(v15, 8 * a4);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v16 = 8 * a5;
  v17 = 8 * a5;
  v18 = malloc_type_malloc(v16, 0xA07D3369uLL);
  *(a1 + 88) = v18;
  bzero(v18, v17);
  v19 = malloc_type_malloc(v17, 0xA07D3369uLL);
  *(a1 + 96) = v19;
  bzero(v19, v17);
  v20 = malloc_type_malloc(8 * a7, 0xA07D3369uLL);
  *(a1 + 112) = v20;
  bzero(v20, 8 * a7);
  v21 = 8 * a9;
  v22 = malloc_type_malloc(v21, 0xA07D3369uLL);
  *(a1 + 104) = v22;
  bzero(v22, v21);
  v23 = 8 * a8;
  v24 = 8 * a8;
  v25 = malloc_type_malloc(v23, 0xA07D3369uLL);
  *(a1 + 120) = v25;
  bzero(v25, v24);
  v26 = malloc_type_malloc(v24, 0xA07D3369uLL);
  *(a1 + 128) = v26;
  bzero(v26, v24);
  *(a1 + 4) = a7;
  *(a1 + 12) = 0;
  if (a10 < 1)
  {
    *(a1 + 176) = 0;
  }

  else
  {
    v27 = malloc_type_malloc(40 * a10, 0x57E740CFuLL);
    *(a1 + 176) = v27;
    bzero(v27, 40 * a10);
  }

  *(a1 + 8) = a10;
}

void gleLLVMDestroyBuildContext(uint64_t a1)
{
  if (*(a1 + 24))
  {
    LLVMDisposeModule();
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 64);
  if (v2)
  {
    free(v2);
    *(a1 + 64) = 0;
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    free(v3);
    *(a1 + 88) = 0;
  }

  v4 = *(a1 + 112);
  if (v4)
  {
    free(v4);
    *(a1 + 112) = 0;
  }

  v5 = *(a1 + 120);
  if (v5)
  {
    free(v5);
    *(a1 + 120) = 0;
  }

  v6 = *(a1 + 104);
  if (v6)
  {
    free(v6);
    *(a1 + 104) = 0;
  }

  v7 = *(a1 + 96);
  if (v7)
  {
    free(v7);
    *(a1 + 96) = 0;
  }

  v8 = *(a1 + 128);
  if (v8)
  {
    free(v8);
    *(a1 + 128) = 0;
  }

  free(*(a1 + 176));
  *(a1 + 176) = 0;
}

uint64_t gleLLVMGetConstantInt32(uint64_t a1, int a2)
{
  if (!*(a1 + 152))
  {
    *(a1 + 152) = LLVMInt32TypeInContext();
  }

  return LLVMConstInt();
}

uint64_t gleGetLLVMTypeFromType(uint64_t a1, int a2)
{
  v2 = a2;
  result = 0;
  v5 = a2 & 0xFFFF7FFF;
  if ((a2 & 0xFFFF7FFF) <= 4)
  {
    if (v5 <= 1)
    {
      if (v5)
      {
        if (v5 == 1)
        {
          result = *(a1 + 152);
          if (!result)
          {
            result = LLVMInt32TypeInContext();
            *(a1 + 152) = result;
          }
        }
      }

      else
      {
        result = LLVMInt1TypeInContext();
      }
    }

    else
    {
      if ((v5 - 2) < 2)
      {
        if (!*(a1 + 152))
        {
          *(a1 + 152) = LLVMInt32TypeInContext();
        }

        goto LABEL_11;
      }

      if (v5 == 4)
      {
        result = LLVMFloatTypeInContext();
      }
    }
  }

  else
  {
    if ((v5 - 5) < 3)
    {
      LLVMFloatTypeInContext();
      goto LABEL_11;
    }

    if ((v5 - 9) < 3)
    {
      LLVMHalfTypeInContext();
LABEL_11:
      result = MEMORY[0x23EE854F0]();
      goto LABEL_12;
    }

    if (v5 == 8)
    {
      result = LLVMHalfTypeInContext();
    }
  }

LABEL_12:
  if (v2 < 0)
  {

    JUMPOUT(0x23EE85440);
  }

  return result;
}

const char *gleLLVMGetArgTypeName(int a1)
{
  if ((a1 & 0xFFFF7FFF) > 0xB)
  {
    return "float4";
  }

  else
  {
    return (&off_278B4E2A0)[a1 & 0xFFFF7FFF];
  }
}

uint64_t gleLLVMBeginMain(uint64_t a1, uint64_t a2, int *a3, unsigned int a4, int *a5, uint64_t a6, int a7)
{
  v48 = a2;
  v49 = *MEMORY[0x277D85DE8];
  v13 = a4 + 1;
  v14 = a4 + 1 + 2 * a7;
  v15 = LLVMFloatTypeInContext();
  v16 = MEMORY[0x23EE854F0](v15, 4);
  v47 = v14;
  MEMORY[0x28223BE20](v16, 8 * v14);
  v18 = (v45 - v17);
  bzero(v45 - v17, v19);
  if (*(a1 + 216))
  {
    v20 = a4 < 1;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v46 = a6;
    v22 = a4;
    v23 = v18;
    do
    {
      v24 = *a3++;
      LLVMTypeFromType = gleGetLLVMTypeFromType(a1, v24);
      if (!*a1 && !*(a1 + 220))
      {
        LLVMTypeFromType = MEMORY[0x23EE85440](LLVMTypeFromType, 1);
      }

      *v23++ = LLVMTypeFromType;
      --v22;
    }

    while (v22);
    v21 = a4;
    LODWORD(a6) = v46;
  }

  v18[v21] = MEMORY[0x23EE85440](v16, 2);
  v26 = *(a1 + 8);
  if (v26 >= 1)
  {
    v27 = v21 + 1;
    v28 = (*(a1 + 176) + 24);
    do
    {
      if (*v28)
      {
        v18[v27] = *v28;
        v29 = v27 + a7;
        ++v27;
        v18[v29] = *(v28 - 1);
      }

      v28 += 5;
      --v26;
    }

    while (v26);
  }

  v30 = LLVMVoidTypeInContext();
  if (*(a1 + 216))
  {
    LODWORD(v46) = a4;
    v45[1] = v45;
    MEMORY[0x28223BE20](v30, 8 * a6);
    v32 = (v45 - v31);
    bzero(v45 - v31, v33);
    v34 = a6;
    if (a6 >= 1)
    {
      a6 = a6;
      v35 = v32;
      do
      {
        v36 = *a5++;
        *v35++ = gleGetLLVMTypeFromType(a1, v36);
        --a6;
      }

      while (a6);
    }

    if (v34)
    {
      *(a1 + 168) = LLVMStructTypeInContext();
    }
  }

  LLVMFunctionType();
  v37 = LLVMAddFunction();
  MEMORY[0x23EE852E0]("nounwind", 8);
  LLVMCreateEnumAttribute();
  LLVMAddAttributeAtIndex();
  *(a1 + 136) = LLVMGetParam();
  v38 = *(a1 + 8);
  if (v38 >= 1)
  {
    v39 = 0;
    v40 = 0;
    v41 = *(a1 + 176);
    do
    {
      if (*(v41 + v39 + 24))
      {
        *(*(a1 + 176) + v39) = LLVMGetParam();
        v42 = LLVMGetParam();
        v41 = *(a1 + 176);
        *(v41 + v39 + 8) = v42;
        ++v13;
        v38 = *(a1 + 8);
      }

      ++v40;
      v39 += 40;
    }

    while (v40 < v38);
  }

  *(a1 + 56) = v37;
  v43 = LLVMCreateBuilderInContext();
  glpLLVMSetFastMathFlags(v43, *a1 == 0, 0);
  *(a1 + 32) = v43;
  LLVMAppendBasicBlockInContext();
  LLVMAppendBasicBlockInContext();
  LLVMPositionBuilderAtEnd();
  *(a1 + 40) = LLVMBuildBr();
  *(a1 + 48) = 0;
  return LLVMPositionBuilderAtEnd();
}

uint64_t gleLLVMAddCommonMetaData(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, int a5, int a6)
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = 16 * a5;
  if (*(a1 + 220))
  {
    *__s = gleLLVMGetConstantInt32(a1, a4);
    *&__s[8] = LLVMMDStringInContext();
    *&v25 = LLVMMDStringInContext();
    *(&v25 + 1) = gleLLVMGetConstantInt32(a1, v10);
    *&v26 = LLVMMDStringInContext();
    *(&v26 + 1) = gleLLVMGetConstantInt32(a1, 12);
    *&v27 = gleLLVMGetConstantInt32(a1, 1);
    *(&v27 + 1) = LLVMMDStringInContext();
  }

  else
  {
    *__s = gleLLVMGetConstantInt32(a1, a4);
    *&__s[8] = LLVMMDStringInContext();
    *&v25 = LLVMMDStringInContext();
    *(&v25 + 1) = gleLLVMGetConstantInt32(a1, v10);
  }

  result = LLVMMDNodeInContext();
  *a2 = result;
  if (*(a1 + 8) >= 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v23 = a6 + 1;
    do
    {
      v15 = *(a1 + 176);
      if (*(v15 + v12 + 24))
      {
        v16 = v14 + 1;
        if (*(a1 + 220))
        {
          v26 = 0u;
          v27 = 0u;
          *__s = 0u;
          v25 = 0u;
          v17 = *(v15 + v12 + 32);
          v18 = (v17 & 7) - 1;
          v19 = "texture2d";
          if (v18 <= 4)
          {
            v20 = (v17 & 8) == 0;
            v21 = &off_278B4E300;
            if (v20)
            {
              v21 = &off_278B4E328;
            }

            v19 = v21[v18];
          }

          snprintf_l(__s, 0x40uLL, 0, "%s<float, sample>", v19);
          gleLLVMGetConstantInt32(a1, v16 + a4);
          LLVMMDStringInContext();
          LLVMMDStringInContext();
          gleLLVMGetConstantInt32(a1, v13);
          gleLLVMGetConstantInt32(a1, 1);
          LLVMMDStringInContext();
          LLVMMDStringInContext();
          strlen(__s);
          LLVMMDStringInContext();
          a2[v16] = LLVMMDNodeInContext();
          v22 = v23 + v14;
          gleLLVMGetConstantInt32(a1, v23 + v14 + a4);
          LLVMMDStringInContext();
          LLVMMDStringInContext();
          gleLLVMGetConstantInt32(a1, v13);
          gleLLVMGetConstantInt32(a1, 1);
        }

        else
        {
          *__s = 0u;
          v25 = 0u;
          *__s = gleLLVMGetConstantInt32(a1, v16 + a4);
          *&__s[8] = LLVMMDStringInContext();
          *&v25 = LLVMMDStringInContext();
          *(&v25 + 1) = gleLLVMGetConstantInt32(a1, v13);
          a2[v16] = LLVMMDNodeInContext();
          v22 = v23 + v14;
          gleLLVMGetConstantInt32(a1, v23 + v14 + a4);
          LLVMMDStringInContext();
          LLVMMDStringInContext();
          gleLLVMGetConstantInt32(a1, v13);
          gleLLVMGetConstantInt32(a1, v23 + v14 + a4);
          LLVMMDStringInContext();
        }

        result = LLVMMDNodeInContext();
        a2[v22] = result;
      }

      else
      {
        v16 = v14;
      }

      ++v13;
      v12 += 40;
      v14 = v16;
    }

    while (v13 < *(a1 + 8));
  }

  return result;
}

uint64_t gleLLVMCreateFunctionMetadata(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = LLVMMDNodeInContext();
  glpAddNamedMetadataOperand(*(a1 + 24), a2, v6);
  if (*(a1 + 220))
  {
    LLVMMDStringInContext();
    gleLLVMGetConstantInt32(a1, 1);
    gleLLVMGetConstantInt32(a1, 0);
    gleLLVMGetConstantInt32(a1, 0);
    v7 = LLVMMDNodeInContext();
    glpAddNamedMetadataOperand(*(a1 + 24), "air.language_version", v7);
    glpLLVMSetupModule(*(a1 + 24));
  }

  LLVMMDStringInContext();
  v8 = LLVMMDNodeInContext();
  glpAddNamedMetadataOperand(*(a1 + 24), "air.compile_options", v8);
  LLVMMDStringInContext();
  v9 = LLVMMDNodeInContext();
  glpAddNamedMetadataOperand(*(a1 + 24), "air.compile_options", v9);
  LLVMMDStringInContext();
  v10 = LLVMMDNodeInContext();
  return glpAddNamedMetadataOperand(*(a1 + 24), "air.compile_options", v10);
}

uint64_t gleLLVMFinishMain(uint64_t a1, int a2, int a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = (2 * a3 + 2);
  MEMORY[0x28223BE20](a1, 8 * v5);
  v6 = &v19 - v5;
  bzero(v6, v7);
  *v6 = *(a1 + 56);
  if (!*(a1 + 216))
  {
    v19 = v5;
    v20 = LLVMMDStringInContext();
    v21 = LLVMMDStringInContext();
    if (!*(a1 + 152))
    {
      *(a1 + 152) = LLVMInt32TypeInContext();
    }

    v22 = LLVMConstInt();
    if (!*(a1 + 152))
    {
      *(a1 + 152) = LLVMInt32TypeInContext();
    }

    v23 = LLVMConstInt();
    v6[1] = LLVMMDNodeInContext();
    v8 = *(a1 + 8);
    if (v8 >= 1)
    {
      v9 = 0;
      v10 = 0;
      v11 = a3 + 2;
      v12 = 24;
      do
      {
        if (*(*(a1 + 176) + v12))
        {
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v20 = LLVMMDStringInContext();
          v21 = LLVMMDStringInContext();
          LLVMInt32TypeInContext();
          v22 = LLVMConstInt();
          v6[v10 + 2] = LLVMMDNodeInContext();
          v21 = LLVMMDStringInContext();
          v6[v11 + v10++] = LLVMMDNodeInContext();
          v8 = *(a1 + 8);
        }

        ++v9;
        v12 += 40;
      }

      while (v9 < v8);
    }

    v13 = LLVMMDNodeInContext();
    glpAddNamedMetadataOperand(*(a1 + 24), "opengl.kernel_arg_info", v13);
  }

  v14 = *(a1 + 12);
  LODWORD(v20) = 0;
  if (v14 >= 1)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*(*(a1 + 120) + 8 * i))
      {
        v16 = LLVMBuildLoad();
        (*(a1 + 192))(*(a1 + 184), i, &v20, v16);
      }
    }
  }

  v17 = *(a1 + 32);
  if (*(a1 + 160))
  {
    MEMORY[0x23EE850B0](v17);
  }

  else
  {
    MEMORY[0x23EE850C0](v17);
  }

  result = LLVMDisposeBuilder();
  *(a1 + 32) = 0;
  return result;
}

uint64_t gleLLVMCreateVaryingsMetaData(void *a1, char *a2, int a3, int a4, int a5, int a6, int a7)
{
  v25 = a2;
  v36 = *MEMORY[0x277D85DE8];
  v11 = (a4 + a3 + a5);
  v29 = a1[2];
  v24 = (v11 + 1);
  MEMORY[0x28223BE20](a1, 8 * v24);
  v13 = (&v23 - v12);
  bzero(&v23 - v12, v14);
  v15 = a1[7];
  v26 = v13;
  *v13 = v15;
  v28 = v11;
  if (v11 >= 1)
  {
    v16 = 0;
    v17 = v34;
    if (a7)
    {
      v17 = v33;
    }

    v27 = a3;
    if (a6)
    {
      v18 = v30;
    }

    else
    {
      v18 = v17;
    }

    v19 = v26 + 1;
    do
    {
      strcpy(__s, "4 x float");
      strcpy(v30, "flat");
      strcpy(v34, "nonperspective");
      strcpy(v33, "perspective");
      if (v16 >= v27)
      {
        v20 = v33;
      }

      else
      {
        v20 = v18;
      }

      v31 = 0u;
      v32 = 0u;
      if (!a1[19])
      {
        a1[19] = LLVMInt32TypeInContext();
      }

      *&v31 = LLVMConstInt();
      if (!a1[19])
      {
        a1[19] = LLVMInt32TypeInContext();
      }

      *(&v31 + 1) = LLVMConstInt();
      strlen(v20);
      *&v32 = LLVMMDStringInContext();
      strlen(__s);
      *(&v32 + 1) = LLVMMDStringInContext();
      v19[v16++] = LLVMMDNodeInContext();
    }

    while (v28 != v16);
  }

  v21 = LLVMMDNodeInContext();
  return glpAddNamedMetadataOperand(a1[3], v25, v21);
}

uint64_t gleLLVMAddTexture(uint64_t a1, int a2, char a3, int a4, char a5)
{
  Named = LLVMGetTypeByName();
  if (!Named)
  {
    Named = LLVMStructCreateNamed();
  }

  if (*(a1 + 216))
  {
    Named = MEMORY[0x23EE85440](Named, 1);
  }

  v10 = *(a1 + 176) + 40 * a2;
  *(v10 + 32) = *(v10 + 32) & 0xFFFFFFF8 | a3 & 7;
  v11 = *(a1 + 176) + 40 * a2;
  *(v11 + 32) = *(v11 + 32) & 0xFFFFFFF7 | (8 * (a5 & 1));
  *(*(a1 + 176) + 40 * a2 + 24) = Named;
  result = LLVMGetTypeByName();
  if (!result)
  {
    result = LLVMStructCreateNamed();
  }

  if (*(a1 + 216))
  {
    result = MEMORY[0x23EE85440](result, 2);
  }

  *(*(a1 + 176) + 40 * a2 + 16) = result;
  return result;
}

uint64_t gleLLVMCallFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, unsigned int a7)
{
  v20 = a7;
  v8 = a5;
  v21 = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20](a1, 8 * a5);
  v11 = &v19[-v10];
  bzero(&v19[-v10], v12);
  if (v8)
  {
    v13 = v8;
    v14 = v11;
    v15 = a4;
    do
    {
      ++v15;
      *v14++ = LLVMTypeOf();
      --v13;
    }

    while (v13);
  }

  v16 = LLVMGetNamedFunction();
  LLVMFunctionType();
  if (!v16)
  {
    LLVMAddFunction();
    if (v20)
    {
      v17 = v20;
      do
      {
        ++a6;
        LLVMAddAttributeAtIndex();
        --v17;
      }

      while (v17);
    }
  }

  return LLVMBuildCall();
}

uint64_t gleLLVMGetAttribute(uint64_t a1, int a2, int a3, int a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v28 = 0;
  v7 = *(a1 + 152);
  if (v7)
  {
    v27 = v7;
  }

  else
  {
    v8 = LLVMInt32TypeInContext();
    *(a1 + 152) = v8;
    v27 = v8;
    if (!v8)
    {
      *(a1 + 152) = LLVMInt32TypeInContext();
    }
  }

  v26 = 0;
  v9 = 1;
  v25 = LLVMConstInt();
  if (*a1)
  {
    if (*(a1 + 152))
    {
      v28 = *(a1 + 152);
    }

    else
    {
      v10 = LLVMInt32TypeInContext();
      *(a1 + 152) = v10;
      v28 = v10;
      if (!v10)
      {
        *(a1 + 152) = LLVMInt32TypeInContext();
      }
    }

    v26 = LLVMConstInt();
    v9 = 2;
  }

  v23 = 0u;
  v24 = 0u;
  *v21 = 0u;
  v22 = 0u;
  if (a3 == 2)
  {
    if (!*(a1 + 152))
    {
      *(a1 + 152) = LLVMInt32TypeInContext();
    }

    v11 = MEMORY[0x23EE854F0]();
    if (*a1)
    {
      v12 = "graphics.interpolate.center.4xi";
    }

    else
    {
      v12 = "graphics.vertex.readAttribute.4xi";
    }
  }

  else
  {
    v13 = (a3 - 3);
    if (a4 == 1)
    {
      v11 = LLVMFloatTypeInContext();
      v14 = "f";
    }

    else
    {
      v11 = LLVMHalfTypeInContext();
      v14 = "h";
    }

    if (v13 >= 2)
    {
      v11 = MEMORY[0x23EE854F0](v11, v13);
    }

    if (*a1)
    {
      v15 = "graphics.interpolate.center.%dx%s";
      v19 = v14;
    }

    else
    {
      v15 = "graphics.vertex.readAttribute.%dxf";
    }

    v18 = v13;
    v12 = v21;
    snprintf_l(v21, 0x40uLL, 0, v15, v18, v19);
  }

  memset(v20, 0, sizeof(v20));
  glpMangleNameLLVM(*(a1 + 24), v20, 0x200uLL, v12, v11, &v27, 0, v9);
  v16 = LLVMGetNamedFunction();
  LLVMFunctionType();
  if (!v16)
  {
    LLVMAddFunction();
    MEMORY[0x23EE852E0]("readonly", 8);
    LLVMCreateEnumAttribute();
    LLVMAddAttributeAtIndex();
    MEMORY[0x23EE852E0]("nounwind", 8);
    LLVMCreateEnumAttribute();
    LLVMAddAttributeAtIndex();
  }

  return LLVMBuildCall();
}

uint64_t gleLLVMCreateConstantVec4(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *MEMORY[0x277D85DE8];
  LLVMFloatTypeInContext();
  if (a3 != 1)
  {
    LLVMHalfTypeInContext();
  }

  v4 = 0;
  memset(v6, 0, sizeof(v6));
  do
  {
    *(v6 + v4++) = llvm::ConstantFP::get();
  }

  while (v4 != 4);
  return LLVMConstVector();
}

uint64_t gleLLVMClampColor(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = LLVMTypeOf();
  if (LLVMGetTypeKind() == 13)
  {
    v5 = LLVMGetVectorSize();
    LLVMGetElementType();
    v6 = llvm::ConstantFP::get();
    v7 = llvm::ConstantFP::get();
    v25 = 0u;
    v26 = 0u;
    if (v5 <= 0)
    {
      v15 = LLVMConstVector();
      v25 = 0u;
      v26 = 0u;
    }

    else
    {
      v8 = v7;
      v9 = (v5 + 1) & 0xFFFFFFFE;
      v10 = vdupq_n_s64(v5 - 1);
      v11 = xmmword_23A300E20;
      v12 = &v25 + 1;
      v13 = vdupq_n_s64(2uLL);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v10, v11));
        if (v14.i8[0])
        {
          *(v12 - 1) = v6;
        }

        if (v14.i8[4])
        {
          *v12 = v6;
        }

        v11 = vaddq_s64(v11, v13);
        v12 += 2;
        v9 -= 2;
      }

      while (v9);
      v24 = v10;
      v15 = LLVMConstVector();
      v25 = 0u;
      v26 = 0u;
      v16 = (v5 + 1) & 0xFFFFFFFE;
      v17 = xmmword_23A300E20;
      v18 = &v25 + 1;
      v19 = vdupq_n_s64(2uLL);
      do
      {
        v20 = vmovn_s64(vcgeq_u64(v24, v17));
        if (v20.i8[0])
        {
          *(v18 - 1) = v8;
        }

        if (v20.i8[4])
        {
          *v18 = v8;
        }

        v17 = vaddq_s64(v17, v19);
        v18 += 2;
        v16 -= 2;
      }

      while (v16);
    }

    v21 = LLVMConstVector();
  }

  else
  {
    v15 = llvm::ConstantFP::get();
    v21 = llvm::ConstantFP::get();
  }

  *&v25 = a2;
  *(&v25 + 1) = v15;
  *&v26 = v21;
  if (*(a1 + 216))
  {
    v22 = "air.clamp";
  }

  else
  {
    v22 = "clamp";
  }

  return gleStateProgram_BuildOperation(a1, v22, 3, &v25, v4);
}

uint64_t gleStateProgram_BuildOperation(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a3;
  v49[3] = *MEMORY[0x277D85DE8];
  memset(v49, 0, 24);
  if (a3 >= 1)
  {
    v9 = 0;
    v10 = 8 * a3;
    do
    {
      v49[v9 / 8] = LLVMTypeOf();
      v9 += 8;
    }

    while (v10 != v9);
  }

  if (LLVMGetTypeKind() == 13)
  {
    LLVMGetElementType();
    v11 = LLVMGetVectorSize() - 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = LLVMGetTypeKind();
  switch(v12)
  {
    case 1:
      if (v11 < 3)
      {
        v13 = &off_278B4E3A8;
        goto LABEL_16;
      }

      v14 = "v4f16";
      break;
    case 8:
      if (v11 < 3)
      {
        v13 = &off_278B4E3C0;
        goto LABEL_16;
      }

      v14 = "v4i1";
      break;
    case 2:
      if (v11 < 3)
      {
        v13 = &off_278B4E390;
LABEL_16:
        v14 = v13[v11];
        break;
      }

      v14 = "v4f32";
      break;
    default:
      abort();
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
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
  *v17 = 0u;
  v18 = 0u;
  if (*(a1 + 216))
  {
    snprintf_l(v17, 0x200uLL, 0, "%s.%s", a2, v14);
  }

  else
  {
    glpMangleNameLLVM(*(a1 + 24), v17, 0x200uLL, a2, a5, v49, 0, v6);
  }

  v15 = LLVMGetNamedFunction();
  LLVMFunctionType();
  if (!v15)
  {
    LLVMAddFunction();
    MEMORY[0x23EE852E0]("nounwind", 8);
    LLVMCreateEnumAttribute();
    LLVMAddAttributeAtIndex();
    MEMORY[0x23EE852E0]("readonly", 8);
    LLVMCreateEnumAttribute();
    LLVMAddAttributeAtIndex();
  }

  return LLVMBuildCall();
}

uint64_t gleLLVMAddFunctionCall(void *a1, char *__s, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  glpMangleNameLLVM(a1[3], v8, 0x200uLL, __s, a3, a5, 0, a4);
  v6 = LLVMGetNamedFunction();
  LLVMFunctionType();
  if (!v6)
  {
    LLVMAddFunction();
    MEMORY[0x23EE852E0]("nounwind", 8);
    LLVMCreateEnumAttribute();
    LLVMAddAttributeAtIndex();
  }

  return LLVMBuildCall();
}

uint64_t gleLLVMAddVoidFunctionCall(void *a1, char *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = LLVMVoidTypeInContext();

  return gleLLVMAddFunctionCall(a1, a2, v10, a3, a4, a5);
}

uint64_t gleStateProgram_TruncateVec4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = LLVMFloatTypeInContext();
  v6 = MEMORY[0x23EE854F0](v5, a3);
  inserted = MEMORY[0x23EE85370](v6);
  if (a3 >= 1)
  {
    v8 = 0;
    do
    {
      if (!a1[19])
      {
        a1[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      LLVMBuildExtractElement();
      inserted = LLVMBuildInsertElement();
      ++v8;
    }

    while (a3 != v8);
  }

  return inserted;
}

void gleLLVMAddOperation(void *a1, _DWORD *a2, int a3)
{
  LODWORD(v176) = a3;
  v3 = a1;
  v216 = *MEMORY[0x277D85DE8];
  v4 = a1[4];
  v177 = a2;
  v5 = *a2;
  v6 = *a2 & 7;
  v7 = (v6 + (v5 >> 15) + (v5 << 15 >> 31));
  MEMORY[0x28223BE20](a1, 4 * v7);
  v9 = v172 - v8;
  bzero(v172 - v8, v10);
  v13 = 8 * v7;
  v178 = v7;
  v179 = v3;
  v175 = v4;
  if (v7 > 0)
  {
    memset_pattern16(v9, &unk_23A3010C0, 4 * ((v5 >> 15) + (v5 << 15 >> 31) + v6 - 1) + 4);
    MEMORY[0x28223BE20](v14, v15);
    v16 = (v172 - ((v13 + 15) & 0xFFFFFFFF0));
    bzero(v16, 8 * v7);
    v17 = 0;
    v18 = v177;
    v173 = v9;
    v174 = v16;
    while (1)
    {
      v19 = *&v9[4 * v17];
      v20 = *v18;
      v21 = &v18[2 * v17];
      v22 = *(v21 + 2);
      v23 = HIWORD(v22);
      v183[0] = 0;
      v24 = (v22 >> 6) & 7;
      if (!v24)
      {
        break;
      }

      if (v24 != 2)
      {
        TempValue = 0;
        v3 = v179;
        if (v24 == 1)
        {
          TempValue = readTempValue(v179, v23, 1);
          v183[0] = TempValue;
        }

        goto LABEL_40;
      }

      if ((v22 & 0x1000000000000000) == 0)
      {
        if (!v179[19])
        {
          v26 = v179;
          v26[19] = LLVMInt32TypeInContext();
        }

        v27 = LLVMConstInt();
        if (v22)
        {
          v33 = v179;
          readAddressValue(v179, (v22 >> 1) & 1, 1);
          if (!v33[19])
          {
            v33[19] = LLVMInt32TypeInContext();
          }

          LLVMConstInt();
          LLVMBuildExtractElement();
          LLVMConstInt();
          v28 = LLVMBuildAdd();
          v34 = v33[26];
          v3 = v33;
          if (v34)
          {
            v34(v33[23]);
            LLVMBuildICmp();
            LLVMConstInt();
            v3 = v179;
            v28 = LLVMBuildSelect();
          }

          v9 = v173;
          v16 = v174;
        }

        else
        {
          v28 = v27;
          v3 = v179;
        }

        *&v184 = v28;
        LLVMBuildGEP();
        TempValue = LLVMBuildLoad();
        if (v176 != 1)
        {
          v35 = LLVMHalfTypeInContext();
          MEMORY[0x23EE854F0](v35, 4);
          TempValue = LLVMBuildFPTrunc();
        }

        goto LABEL_38;
      }

      v3 = v179;
      TempValue = *(v179[13] + 8 * v23 - 0x8000);
LABEL_39:
      v183[0] = TempValue;
LABEL_40:
      v39 = gleLLVMApplySwizzle(v3, TempValue, (v21[4] >> 9) & 3, (v21[4] >> 11) & 3, (v21[4] >> 13) & 3, (v21[4] >> 15) & 3);
      v183[0] = v39;
      v40 = *(v21 + 2);
      if ((v40 & 0x20) != 0)
      {
        v41 = LLVMTypeOf();
        v39 = gleStateProgram_BuildOperation(v3, "air.fabs", 1, v183, v41);
        v183[0] = v39;
        v40 = *(v21 + 2);
      }

      if ((v40 & 0x10) != 0)
      {
        v39 = LLVMBuildFNeg();
      }

      v16[v17++] = v39;
      if (v178 == v17)
      {
        goto LABEL_47;
      }
    }

    v29 = v19 + 3;
    if ((v20 & 0x3FC0) == 0x1200)
    {
      v30 = 2;
    }

    else
    {
      v30 = v29;
    }

    v3 = v179;
    TempValue = *(v179[14] + 8 * v23);
    if (!TempValue)
    {
      v31 = v179[25];
      if (!v31 || (TempValue = v31(v179[23], v23, v30)) == 0)
      {
        if (*(v3 + 54))
        {
          v32 = LLVMGetParam();
        }

        else
        {
          v32 = gleLLVMGetAttribute(v3, v23, v30, v176);
        }

        TempValue = v32;
      }
    }

    *(v3[14] + 8 * v23) = TempValue;
    if (v30 < 5)
    {
      if (v176 != 1)
      {
        v38 = LLVMHalfTypeInContext();
LABEL_36:
        if (v38 != LLVMTypeOf())
        {
          TempValue = LLVMBuildFPTrunc();
        }
      }
    }

    else
    {
      v36 = (v30 - 3);
      TempValue = gleLLVMVectorExtend(v3, TempValue, v36);
      if (v176 != 1)
      {
        v37 = LLVMHalfTypeInContext();
        v38 = MEMORY[0x23EE854F0](v37, v36);
        goto LABEL_36;
      }
    }

LABEL_38:
    v18 = v177;
    goto LABEL_39;
  }

  MEMORY[0x28223BE20](v11, v12);
  v16 = (v172 - ((v13 + 15) & 0xFFFFFFFF0));
  bzero(v16, 8 * v7);
  v18 = v177;
LABEL_47:
  v42 = *(v18 + 1);
  v43 = (v42 >> 12) & 7;
  if (v43 == 4)
  {
    v46 = v3[19];
    if (!v46)
    {
      v46 = LLVMInt32TypeInContext();
      v3[19] = v46;
      if (!v46)
      {
        goto LABEL_53;
      }
    }
  }

  else
  {
    v44 = HIWORD(v42);
    if (v43 == 3)
    {
      v45 = v3[16];
    }

    else
    {
      if (v43 != 1)
      {
LABEL_53:
        v46 = LLVMFloatTypeInContext();
        goto LABEL_56;
      }

      v45 = v3[12];
    }

    v46 = *(v45 + 8 * v44);
    if (!v46)
    {
      goto LABEL_53;
    }
  }

LABEL_56:
  if (v176 == 1 && LLVMGetTypeKind() == 1)
  {
    v46 = LLVMFloatTypeInContext();
  }

  inserted = *v16;
  v47 = MEMORY[0x23EE854F0](v46, 4);
  v48 = *v18;
  switch((*v18 >> 6))
  {
    case 0u:
      inserted = *v16;
      goto LABEL_295;
    case 1u:
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      v81 = LLVMConstInt();
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      v176 = v47;
      v178 = LLVMConstInt();
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      v174 = LLVMConstInt();
      Element = LLVMBuildExtractElement();
      v83 = LLVMBuildExtractElement();
      v84 = LLVMBuildExtractElement();
      LLVMTypeOf();
      v85 = llvm::ConstantFP::get();
      v173 = v81;
      v86 = v85;
      LLVMTypeOf();
      v172[1] = llvm::ConstantFP::get();
      LLVMTypeOf();
      v87 = llvm::ConstantFP::get();
      LLVMTypeOf();
      v88 = llvm::ConstantFP::get();
      v183[0] = Element;
      v183[1] = v86;
      v89 = LLVMTypeOf();
      gleStateProgram_BuildOperation(v3, "air.fast_fmax", 2, v183, v89);
      v182[0] = v83;
      v182[1] = v86;
      v90 = LLVMTypeOf();
      v91 = gleStateProgram_BuildOperation(v179, "air.fast_fmax", 2, v182, v90);
      *&v184 = v84;
      *(&v184 + 1) = v88;
      *&v185 = v87;
      v92 = LLVMTypeOf();
      v93 = gleStateProgram_BuildOperation(v179, "air.clamp", 3, &v184, v92);
      LLVMBuildFCmp();
      v181[0] = v91;
      v181[1] = v93;
      v94 = LLVMTypeOf();
      gleStateProgram_BuildOperation(v179, "air.fast_powr", 2, v181, v94);
      LLVMBuildSelect();
      v47 = v176;
      inserted = MEMORY[0x23EE85370](v176);
      inserted = LLVMBuildInsertElement();
      inserted = LLVMBuildInsertElement();
      inserted = LLVMBuildInsertElement();
      goto LABEL_219;
    case 2u:
      if (*(v3 + 54))
      {
        v59 = "air.fabs";
      }

      else
      {
        v59 = "__cl_fabs";
      }

      goto LABEL_289;
    case 4u:
      v59 = "air.fract";
      goto LABEL_289;
    case 5u:
      v59 = "air.floor";
      goto LABEL_289;
    case 0xCu:
      *&v184 = 0;
      v76 = (v48 >> 36) & 3;
      if (v76 == 3)
      {
        *&v184 = *v16;
        goto LABEL_328;
      }

      if (v76)
      {
LABEL_328:
        v77 = 1;
        goto LABEL_329;
      }

      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      v77 = 0;
      *&v184 = LLVMBuildExtractElement();
LABEL_329:
      v144 = "air.sqrt";
      if (v176 == 1)
      {
        v144 = "air.fast_sqrt";
      }

      if (*(v3 + 54))
      {
        v145 = v144;
      }

      else
      {
        v145 = "native_sqrt";
      }

      v146 = LLVMTypeOf();
      v147 = gleStateProgram_BuildOperation(v3, v145, 1, &v184, v146);
      inserted = v147;
      if ((v77 & 1) == 0)
      {
        *&v184 = v147;
        v148 = 0;
        inserted = MEMORY[0x23EE85370](v47);
        do
        {
          if (!v3[19])
          {
            v3[19] = LLVMInt32TypeInContext();
          }

          LLVMConstInt();
          inserted = LLVMBuildInsertElement();
          ++v148;
        }

        while (v148 != 4);
      }

LABEL_221:
      v18 = v177;
LABEL_295:
      v127 = *v18;
      if ((*v18 & 0x100000000) != 0)
      {
        v128 = *(v18 + 1);
        v129 = HIWORD(v128);
        v130 = (~v128 & 0x78000 | v128 & 0xE | v127 & 0x20000000000) != 0;
        v131 = inserted;
        v132 = v179;
        if ((v127 & 0x80000000000) != 0)
        {
          v131 = gleLLVMClampColor(v179, inserted);
          inserted = v131;
          v128 = *(v18 + 1);
        }

        inserted = gleLLVMApplySwizzle(v132, v131, (v128 >> 23) & 3, (v128 >> 25) & 3, (v128 >> 27) & 3, (v128 >> 29) & 3);
        v133 = (v18[2] >> 12) & 7;
        if (v133 == 4)
        {
          v136 = v179;
          AddressValue = readAddressValue(v179, v129, v130);
LABEL_317:
          if (v130)
          {
            inserted = gleLLVMApplyDestMaskAndCC(v136, AddressValue, inserted, v177);
          }

          goto LABEL_321;
        }

        if (v133 != 3)
        {
          if (v133 != 1)
          {
            return;
          }

          v134 = *(v179[12] + 8 * v129);
          if (!v134)
          {
            v134 = LLVMFloatTypeInContext();
          }

          v135 = MEMORY[0x23EE854F0](v134, 4);
          if (v135 != LLVMTypeOf())
          {
            inserted = LLVMBuildFPCast();
          }

          v136 = v179;
          AddressValue = readTempValue(v179, v129, v130);
          goto LABEL_317;
        }

        v138 = v179;
        if (*(v179 + 3) <= v129)
        {
          *(v179 + 3) = v129 + 1;
        }

        if (*(v138 + 54))
        {
          v139 = *(v138[16] + 8 * v129);
          if (!v139 || (v47 = MEMORY[0x23EE854F0](v139, 4), *(v179 + 54)))
          {
            if (LLVMTypeOf() != v47)
            {
              inserted = LLVMBuildFPCast();
            }
          }
        }

        if (*(v179[15] + 8 * v129))
        {
          if (!v130)
          {
LABEL_321:
            LLVMBuildStore();
            return;
          }
        }

        else
        {
          v141 = MEMORY[0x23EE85370](v47);
          v142 = v179;
          *(v142[15] + 8 * v129) = allocateVariable(v179, v47, v141);
          if (!v130)
          {
            goto LABEL_321;
          }
        }

        v140 = LLVMBuildLoad();
        inserted = gleLLVMApplyDestMaskAndCC(v179, v140, inserted, v177);
        goto LABEL_321;
      }

      return;
    case 0xDu:
      *&v184 = 0;
      v95 = (v48 >> 36) & 3;
      if (v95 == 3)
      {
        *&v184 = *v16;
      }

      else if (!v95)
      {
        if (!v3[19])
        {
          v3[19] = LLVMInt32TypeInContext();
        }

        LLVMConstInt();
        v96 = 0;
        *&v184 = LLVMBuildExtractElement();
LABEL_341:
        v149 = *(v3 + 54);
        v150 = LLVMTypeOf();
        if (v149)
        {
          *&v184 = gleStateProgram_BuildOperation(v3, "air.fabs", 1, &v184, v150);
          if (v176 == 1)
          {
            v151 = "air.fast_rsqrt";
          }

          else
          {
            v151 = "air.rsqrt";
          }
        }

        else
        {
          *&v184 = gleStateProgram_BuildOperation(v3, "__cl_fabs", 1, &v184, v150);
          v151 = "native_rsqrt";
        }

        v152 = LLVMTypeOf();
        v153 = gleStateProgram_BuildOperation(v3, v151, 1, &v184, v152);
        inserted = v153;
        if ((v96 & 1) == 0)
        {
          *&v184 = v153;
          v154 = 0;
          inserted = MEMORY[0x23EE85370](v47);
          do
          {
            if (!v3[19])
            {
              v3[19] = LLVMInt32TypeInContext();
            }

            LLVMConstInt();
            inserted = LLVMBuildInsertElement();
            ++v154;
          }

          while (v154 != 4);
        }

        goto LABEL_221;
      }

      v96 = 1;
      goto LABEL_341;
    case 0xEu:
      v183[0] = 0;
      v97 = (v48 >> 36) & 3;
      if (v97 == 3)
      {
        v183[0] = *v16;
      }

      else if (!v97)
      {
        if (!v3[19])
        {
          v3[19] = LLVMInt32TypeInContext();
        }

        LLVMConstInt();
        v98 = 0;
        v183[0] = LLVMBuildExtractElement();
LABEL_353:
        if (*(v3 + 54))
        {
          v155 = llvm::ConstantFP::get();
          LLVMTypeOf();
          if (LLVMGetTypeKind() == 13)
          {
            LLVMTypeOf();
            v156 = LLVMGetVectorSize();
            v184 = 0u;
            v185 = 0u;
            if (v156 >= 1)
            {
              v157 = (v156 + 1) & 0xFFFFFFFE;
              v158 = vdupq_n_s64(v156 - 1);
              v159 = xmmword_23A300E20;
              v160 = &v184 + 1;
              v161 = vdupq_n_s64(2uLL);
              do
              {
                v162 = vmovn_s64(vcgeq_u64(v158, v159));
                if (v162.i8[0])
                {
                  *(v160 - 1) = v155;
                }

                if (v162.i8[4])
                {
                  *v160 = v155;
                }

                v159 = vaddq_s64(v159, v161);
                v160 += 2;
                v157 -= 2;
              }

              while (v157);
            }

            LLVMConstVector();
          }

          v163 = LLVMBuildFDiv();
        }

        else
        {
          v164 = LLVMTypeOf();
          v163 = gleStateProgram_BuildOperation(v3, "native_recip", 1, v183, v164);
        }

        inserted = v163;
        if ((v98 & 1) == 0)
        {
          v183[0] = v163;
          v165 = 0;
          inserted = MEMORY[0x23EE85370](v47);
          do
          {
            if (!v3[19])
            {
              v3[19] = LLVMInt32TypeInContext();
            }

            LLVMConstInt();
            inserted = LLVMBuildInsertElement();
            ++v165;
          }

          while (v165 != 4);
        }

        goto LABEL_221;
      }

      v98 = 1;
      goto LABEL_353;
    case 0x10u:
      *&v184 = 0;
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      *&v184 = LLVMBuildExtractElement();
      v105 = "air.exp2";
      if (v176 == 1)
      {
        v105 = "air.fast_exp2";
      }

      if (*(v3 + 54))
      {
        v106 = v105;
      }

      else
      {
        v106 = "native_exp2";
      }

      v107 = LLVMTypeOf();
      inserted = gleStateProgram_BuildOperation(v3, v106, 1, &v184, v107);
      *&v184 = inserted;
      v108 = 0;
      inserted = MEMORY[0x23EE85370](v47);
      do
      {
        if (!v3[19])
        {
          v3[19] = LLVMInt32TypeInContext();
        }

        LLVMConstInt();
        inserted = LLVMBuildInsertElement();
        ++v108;
      }

      while (v108 != 4);
      goto LABEL_221;
    case 0x11u:
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      v178 = LLVMConstInt();
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      v176 = LLVMConstInt();
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      *&v184 = LLVMBuildExtractElement();
      v101 = LLVMTypeOf();
      v183[0] = gleStateProgram_BuildOperation(v179, "air.floor", 1, &v184, v101);
      v102 = LLVMTypeOf();
      gleStateProgram_BuildOperation(v179, "air.fast_exp2", 1, v183, v102);
      v103 = LLVMTypeOf();
      gleStateProgram_BuildOperation(v179, "air.fract", 1, &v184, v103);
      v104 = LLVMTypeOf();
      gleStateProgram_BuildOperation(v179, "air.fast_exp2", 1, &v184, v104);
      LLVMTypeOf();
      llvm::ConstantFP::get();
      inserted = MEMORY[0x23EE85370](v47);
      inserted = LLVMBuildInsertElement();
      inserted = LLVMBuildInsertElement();
      inserted = LLVMBuildInsertElement();
      goto LABEL_219;
    case 0x13u:
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      *&v184 = LLVMBuildExtractElement();
      v68 = LLVMTypeOf();
      gleStateProgram_BuildOperation(v179, "air.fast_log2", 1, &v184, v68);
      inserted = MEMORY[0x23EE85370](v47);
      inserted = LLVMBuildInsertElement();
      inserted = LLVMBuildInsertElement();
      inserted = LLVMBuildInsertElement();
      goto LABEL_219;
    case 0x14u:
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      v178 = LLVMConstInt();
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      v176 = LLVMConstInt();
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      v174 = LLVMConstInt();
      *&v184 = LLVMBuildExtractElement();
      v78 = LLVMTypeOf();
      *&v184 = gleStateProgram_BuildOperation(v3, "air.fabs", 1, &v184, v78);
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMBuildBitCast();
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      LLVMBuildLShr();
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      LLVMBuildAnd();
      LLVMTypeOf();
      LLVMBuildUIToFP();
      LLVMTypeOf();
      llvm::ConstantFP::get();
      v79 = v179;
      LLVMBuildFSub();
      if (!v79[19])
      {
        v79[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      LLVMBuildAnd();
      if (!v79[19])
      {
        v79[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      LLVMBuildOr();
      LLVMTypeOf();
      LLVMBuildBitCast();
      v80 = LLVMTypeOf();
      gleStateProgram_BuildOperation(v79, "air.fast_log2", 1, &v184, v80);
      LLVMTypeOf();
      llvm::ConstantFP::get();
      inserted = MEMORY[0x23EE85370](v47);
      inserted = LLVMBuildInsertElement();
      inserted = LLVMBuildInsertElement();
      inserted = LLVMBuildInsertElement();
      goto LABEL_219;
    case 0x15u:
      *&v184 = *v16;
      *(&v184 + 1) = v184;
      v183[0] = 0;
      v183[0] = gleStateProgram_BuildOperation(v3, "air.dot", 2, &v184, v46);
      if (v176 == 1)
      {
        v69 = "air.fast_rsqrt";
      }

      else
      {
        v69 = "air.rsqrt";
      }

      v70 = LLVMTypeOf();
      gleStateProgram_BuildOperation(v3, v69, 1, v183, v70);
      v71 = 0;
      inserted = MEMORY[0x23EE85370](v47);
      do
      {
        if (!v3[19])
        {
          v3[19] = LLVMInt32TypeInContext();
        }

        LLVMConstInt();
        inserted = LLVMBuildInsertElement();
        ++v71;
      }

      while (v71 != 4);
      v72 = LLVMBuildFMul();
      goto LABEL_220;
    case 0x18u:
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      *&v184 = LLVMBuildExtractElement();
      v63 = LLVMTypeOf();
      gleStateProgram_BuildOperation(v179, "air.fast_cos", 1, &v184, v63);
      v64 = LLVMTypeOf();
      gleStateProgram_BuildOperation(v179, "air.fast_sin", 1, &v184, v64);
      inserted = MEMORY[0x23EE85370](v47);
      inserted = LLVMBuildInsertElement();
      goto LABEL_219;
    case 0x19u:
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      *&v184 = LLVMBuildExtractElement();
      v99 = LLVMTypeOf();
      v100 = "air.fast_sin";
      goto LABEL_207;
    case 0x1Au:
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      *&v184 = LLVMBuildExtractElement();
      v99 = LLVMTypeOf();
      v100 = "air.fast_cos";
LABEL_207:
      gleStateProgram_BuildOperation(v179, v100, 1, &v184, v99);
      inserted = MEMORY[0x23EE85370](v47);
      inserted = LLVMBuildInsertElement();
      inserted = LLVMBuildInsertElement();
      inserted = LLVMBuildInsertElement();
      goto LABEL_219;
    case 0x1Fu:
      gleLLVMFixPrecision(v3, v176, v16, 2u);
      goto LABEL_246;
    case 0x20u:
      gleLLVMFixPrecision(v3, v176, v16, 2u);
      v51 = LLVMBuildFSub();
      goto LABEL_294;
    case 0x22u:
      gleLLVMFixPrecision(v3, v176, v16, 2u);
      v51 = LLVMBuildFMul();
      goto LABEL_294;
    case 0x28u:
    case 0x29u:
    case 0x2Au:
    case 0x52u:
      v53 = *v16;
      v184 = *v16;
      if ((v48 & 0x3FC0) == 0xA00)
      {
        *&v184 = gleStateProgram_TruncateVec4(v3, v53, 3);
        *(&v184 + 1) = gleStateProgram_TruncateVec4(v3, *(&v184 + 1), 3);
        v48 = *v18;
      }

      if ((v48 & 0x3FC0) == 0x1480)
      {
        *&v184 = gleStateProgram_TruncateVec4(v3, v184, 2);
        *(&v184 + 1) = gleStateProgram_TruncateVec4(v3, *(&v184 + 1), 2);
        v48 = *v18;
      }

      if ((v48 & 0x3FC0) == 0xA80)
      {
        LLVMFloatTypeInContext();
        llvm::ConstantFP::get();
        if (!v3[19])
        {
          v3[19] = LLVMInt32TypeInContext();
        }

        LLVMConstInt();
        *&v184 = LLVMBuildInsertElement();
      }

      if (*(v3 + 54))
      {
        v54 = "air.dot";
      }

      else
      {
        v54 = "dot";
      }

      gleStateProgram_BuildOperation(v3, v54, 2, &v184, v46);
      v55 = 0;
      inserted = MEMORY[0x23EE85370](v47);
      do
      {
        if (!v179[19])
        {
          v56 = v179;
          v56[19] = LLVMInt32TypeInContext();
        }

        LLVMConstInt();
        inserted = LLVMBuildInsertElement();
        ++v55;
      }

      while (v55 != 4);
      goto LABEL_221;
    case 0x2Bu:
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      v178 = LLVMConstInt();
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      v67 = LLVMConstInt();
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      LLVMBuildExtractElement();
      LLVMBuildExtractElement();
      LLVMBuildExtractElement();
      v176 = v67;
      LLVMBuildExtractElement();
      LLVMBuildFMul();
      LLVMTypeOf();
      llvm::ConstantFP::get();
      inserted = MEMORY[0x23EE85370](v47);
      inserted = LLVMBuildInsertElement();
      inserted = LLVMBuildInsertElement();
      inserted = LLVMBuildInsertElement();
LABEL_219:
      v72 = LLVMBuildInsertElement();
      goto LABEL_220;
    case 0x2Cu:
      if (*(v3 + 54))
      {
        v65 = "air.fmin";
        v66 = "air.fast_fmin";
        goto LABEL_166;
      }

      v59 = "__cl_fmin";
      goto LABEL_292;
    case 0x2Du:
      if (*(v3 + 54))
      {
        v65 = "air.fmax";
        v66 = "air.fast_fmax";
LABEL_166:
        if (v176 == 1)
        {
          v59 = v66;
        }

        else
        {
          v59 = v65;
        }
      }

      else
      {
        v59 = "__cl_fmax";
      }

      goto LABEL_292;
    case 0x2Eu:
      if (*(v3 + 54))
      {
        if (!v3[19])
        {
          v3[19] = LLVMInt32TypeInContext();
        }

        LLVMConstInt();
        v178 = LLVMBuildExtractElement();
        if (!v3[19])
        {
          v3[19] = LLVMInt32TypeInContext();
        }

        LLVMConstInt();
        LLVMBuildExtractElement();
        if (!v3[19])
        {
          v3[19] = LLVMInt32TypeInContext();
        }

        LLVMConstInt();
        LLVMBuildExtractElement();
        if (!v3[19])
        {
          v3[19] = LLVMInt32TypeInContext();
        }

        v176 = v47;
        LLVMConstInt();
        v174 = LLVMBuildExtractElement();
        if (!v3[19])
        {
          v3[19] = LLVMInt32TypeInContext();
        }

        LLVMConstInt();
        LLVMBuildExtractElement();
        if (!v3[19])
        {
          v3[19] = LLVMInt32TypeInContext();
        }

        LLVMConstInt();
        LLVMBuildExtractElement();
        LLVMBuildFMul();
        LLVMBuildFMul();
        LLVMBuildFSub();
        gleLLVMGetConstantInt32(v3, 0);
        inserted = LLVMBuildInsertElement();
        LLVMBuildFMul();
        LLVMBuildFMul();
        LLVMBuildFSub();
        gleLLVMGetConstantInt32(v3, 1);
        inserted = LLVMBuildInsertElement();
        LLVMBuildFMul();
        LLVMBuildFMul();
        LLVMBuildFSub();
        gleLLVMGetConstantInt32(v3, 2);
        inserted = LLVMBuildInsertElement();
LABEL_268:
        v47 = v176;
        v18 = v177;
        goto LABEL_295;
      }

      v59 = "cross";
LABEL_292:
      v125 = v3;
      v126 = 2;
LABEL_293:
      v51 = gleStateProgram_BuildOperation(v125, v59, v126, v16, v47);
      goto LABEL_294;
    case 0x30u:
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      v115 = MEMORY[0x23EE854F0]();
      v51 = MEMORY[0x23EE851D0](v115);
      goto LABEL_294;
    case 0x31u:
    case 0x32u:
    case 0x33u:
    case 0x34u:
    case 0x35u:
    case 0x36u:
      LLVMBuildFCmp();
      v49 = llvm::ConstantFP::get();
      v50 = llvm::ConstantFP::get();
      *&v184 = v49;
      *(&v184 + 1) = v49;
      *&v185 = v49;
      *(&v185 + 1) = v49;
      LLVMConstVector();
      *&v184 = v50;
      *(&v184 + 1) = v50;
      *&v185 = v50;
      *(&v185 + 1) = v50;
      LLVMConstVector();
      v18 = v177;
      goto LABEL_61;
    case 0x37u:
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      v114 = MEMORY[0x23EE854F0]();
      v51 = MEMORY[0x23EE85200](v114);
      goto LABEL_294;
    case 0x38u:
      v184 = 0uLL;
      v117 = (v48 >> 36) & 3;
      if (v117 == 3)
      {
        v118 = v16[1];
        *&v184 = *v16;
        v119 = 1;
      }

      else
      {
        if (v117)
        {
          v119 = 1;
LABEL_374:
          v166 = "air.powr";
          if (v176 == 1)
          {
            v166 = "air.fast_powr";
          }

          if (*(v3 + 54))
          {
            v167 = v166;
          }

          else
          {
            v167 = "native_powr";
          }

          v168 = LLVMTypeOf();
          inserted = gleStateProgram_BuildOperation(v3, v167, 2, &v184, v168);
          v169 = LLVMTypeOf();
          MEMORY[0x23EE85200](v169);
          LLVMBuildFCmp();
          inserted = LLVMBuildSelect();
          if ((v119 & 1) == 0)
          {
            v170 = 0;
            inserted = MEMORY[0x23EE85370](v47);
            do
            {
              if (!v179[19])
              {
                v171 = v179;
                v171[19] = LLVMInt32TypeInContext();
              }

              LLVMConstInt();
              inserted = LLVMBuildInsertElement();
              ++v170;
            }

            while (v170 != 4);
          }

          goto LABEL_221;
        }

        if (!v3[19])
        {
          v3[19] = LLVMInt32TypeInContext();
        }

        LLVMConstInt();
        *&v184 = LLVMBuildExtractElement();
        v118 = LLVMBuildExtractElement();
        v119 = 0;
      }

      *(&v184 + 1) = v118;
      goto LABEL_374;
    case 0x3Au:
      gleLLVMFixPrecision(v3, v176, v16, 2u);
      v51 = LLVMBuildFDiv();
      goto LABEL_294;
    case 0x3Cu:
      gleLLVMFixPrecision(v3, v176, v16, 3u);
      LLVMBuildFSub();
      LLVMBuildFMul();
      v18 = v177;
LABEL_246:
      v51 = LLVMBuildFAdd();
      goto LABEL_294;
    case 0x3Eu:
      v61 = LLVMFloatTypeInContext();
      v62 = MEMORY[0x23EE854F0](v61, 4);
      MEMORY[0x23EE85200](v62);
      v18 = v177;
      LLVMBuildFCmp();
LABEL_61:
      v51 = LLVMBuildSelect();
      goto LABEL_294;
    case 0x3Fu:
      if (*(v3 + 54))
      {
        v59 = "air.mad";
      }

      else
      {
        v59 = "mad";
      }

      v125 = v3;
      v126 = 3;
      goto LABEL_293;
    case 0x41u:
      v73 = v18[6];
      *&v184 = vand_s8(vshl_u32(vdup_n_s32(v73), 0xFFFFFFECFFFFFFF0), 0xF0000000FLL);
      DWORD2(v184) = HIBYTE(v73) & 0xF;
      HIDWORD(v184) = v73 >> 28;
      LLVMFloatTypeInContext();
      v178 = llvm::ConstantFP::get();
      LLVMFloatTypeInContext();
      llvm::ConstantFP::get();
      LLVMFloatTypeInContext();
      llvm::ConstantFP::get();
      v176 = v47;
      v74 = 0;
      inserted = MEMORY[0x23EE85370](v47);
      do
      {
        v75 = *(&v184 + v74);
        if (v75 < 8)
        {
          if (!v3[19])
          {
            v3[19] = LLVMInt32TypeInContext();
          }

          LLVMConstInt();
          LLVMBuildExtractElement();
          if ((v75 & 4) != 0)
          {
            LLVMBuildFNeg();
          }

          v3 = v179;
        }

        if (!v3[19])
        {
          v3[19] = LLVMInt32TypeInContext();
        }

        LLVMConstInt();
        inserted = LLVMBuildInsertElement();
        ++v74;
      }

      while (v74 != 4);
      goto LABEL_268;
    case 0x42u:
    case 0x43u:
    case 0x44u:
    case 0x45u:
    case 0x46u:
      if (v178 < 2)
      {
        v52 = 0;
      }

      else
      {
        v52 = v16[1];
      }

      v51 = gleStateProgram_BuildTextureOperation(v3, v18, *v16, v52, v46);
      goto LABEL_294;
    case 0x48u:
      v109 = LLVMTypeOf();
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      v110 = MEMORY[0x23EE854F0]();
      v72 = *v16;
      if (v109 == v110)
      {
LABEL_220:
        inserted = v72;
        goto LABEL_221;
      }

      v111 = LLVMTypeOf();
      inserted = gleStateProgram_BuildOperation(v3, "air.floor", 1, v16, v111);
      v214 = 0u;
      v215 = 0u;
      v212 = 0u;
      v213 = 0u;
      v210 = 0u;
      v211 = 0u;
      v208 = 0u;
      v209 = 0u;
      v206 = 0u;
      v207 = 0u;
      v204 = 0u;
      v205 = 0u;
      v202 = 0u;
      v203 = 0u;
      v200 = 0u;
      v201 = 0u;
      v198 = 0u;
      v199 = 0u;
      v196 = 0u;
      v197 = 0u;
      v194 = 0u;
      v195 = 0u;
      v192 = 0u;
      v193 = 0u;
      v190 = 0u;
      v191 = 0u;
      v189 = 0u;
      v187 = 0u;
      v188 = 0u;
      v185 = 0u;
      v186 = 0u;
      v184 = 0u;
      snprintf_l(&v184, 0x200uLL, 0, "%s%s.%s%s.%s", "air.convert", ".s", "v4i32", ".f", "v4f32");
      v18 = v177;
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      v112 = MEMORY[0x23EE854F0]();
      v51 = gleLLVMCallFunction(v3, &v184, v112, &inserted, 1, 0, 0);
LABEL_294:
      inserted = v51;
      goto LABEL_295;
    case 0x4Fu:
      if (v178)
      {
        LLVMFloatTypeInContext();
        *&v184 = llvm::ConstantFP::get();
        *(&v184 + 1) = v184;
        *&v185 = v184;
        *(&v185 + 1) = v184;
        LLVMConstVector();
        *&v184 = LLVMBuildFCmp();
        v120 = LLVMInt1TypeInContext();
        gleStateProgram_BuildOperation(v3, "air.any", 1, &v184, v120);
      }

      else
      {
        TestCC_XYZW(v3, v18);
      }

      LLVMAppendBasicBlockInContext();
      LLVMAppendBasicBlockInContext();
      LLVMBuildCondBr();
      LLVMPositionBuilderAtEnd();
      v143 = LLVMVoidTypeInContext();
      MEMORY[0x23EE852E0]("noreturn", 8);
      *&v184 = LLVMCreateEnumAttribute();
      gleLLVMCallFunction(v179, "air.discard_fragment", v143, 0, 0, &v184, 1u);
      LLVMBuildBr();
      LLVMPositionBuilderAtEnd();
      goto LABEL_221;
    case 0x50u:
      v59 = "air.dfdx";
      goto LABEL_289;
    case 0x51u:
      v59 = "air.dfdy";
      goto LABEL_289;
    case 0x55u:
      v57 = malloc_type_malloc(0x28uLL, 0x20040769AC3DAuLL);
      *v57 = 0;
      v57[1] = LLVMAppendBasicBlockInContext();
      v58 = LLVMAppendBasicBlockInContext();
      v57[2] = v58;
      v57[3] = v58;
      TestCC_XYZW(v3, v177);
      LLVMBuildCondBr();
      LLVMPositionBuilderAtEnd();
      v57[4] = v3[6];
      v3[6] = v57;
      goto LABEL_221;
    case 0x57u:
      v121 = malloc_type_malloc(0x28uLL, 0x20040769AC3DAuLL);
      v122 = v3[19];
      if (!v122)
      {
        v122 = LLVMInt32TypeInContext();
        v3[19] = v122;
      }

      *v121 = allocateVariable(v3, v122, 0);
      v121[1] = LLVMAppendBasicBlockInContext();
      v121[2] = 0;
      v121[3] = LLVMAppendBasicBlockInContext();
      if (!v3[19])
      {
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      v183[0] = LLVMBuildExtractElement();
      v123 = LLVMTypeOf();
      v182[0] = gleStateProgram_BuildOperation(v3, "air.floor", 1, v183, v123);
      v214 = 0u;
      v215 = 0u;
      v212 = 0u;
      v213 = 0u;
      v210 = 0u;
      v211 = 0u;
      v208 = 0u;
      v209 = 0u;
      v206 = 0u;
      v207 = 0u;
      v204 = 0u;
      v205 = 0u;
      v202 = 0u;
      v203 = 0u;
      v200 = 0u;
      v201 = 0u;
      v198 = 0u;
      v199 = 0u;
      v196 = 0u;
      v197 = 0u;
      v194 = 0u;
      v195 = 0u;
      v192 = 0u;
      v193 = 0u;
      v190 = 0u;
      v191 = 0u;
      v189 = 0u;
      v187 = 0u;
      v188 = 0u;
      v185 = 0u;
      v186 = 0u;
      v184 = 0u;
      snprintf_l(&v184, 0x200uLL, 0, "%s%s.%s%s.%s", "air.convert", ".s", "i32", ".f", "f32");
      v124 = v3[19];
      if (!v124)
      {
        v124 = LLVMInt32TypeInContext();
        v3[19] = v124;
      }

      gleLLVMCallFunction(v3, &v184, v124, v182, 1, 0, 0);
      LLVMBuildStore();
      gleLLVMGetConstantInt32(v3, 0);
      LLVMBuildICmp();
      LLVMBuildCondBr();
      LLVMPositionBuilderAtEnd();
      v121[4] = v3[6];
      v3[6] = v121;
      goto LABEL_221;
    case 0x58u:
      v116 = v3[6];
      *(v116 + 24) = LLVMAppendBasicBlockInContext();
      LLVMBuildBr();
      v18 = v177;
      LLVMPositionBuilderAtEnd();
      goto LABEL_295;
    case 0x59u:
      v60 = v3[6];
      LLVMBuildBr();
      LLVMPositionBuilderAtEnd();
      v3[6] = v60[4];
      goto LABEL_244;
    case 0x5Bu:
      v60 = v3[6];
      LLVMBuildLoad();
      gleLLVMGetConstantInt32(v179, 1);
      LLVMBuildSub();
      LLVMBuildStore();
      gleLLVMGetConstantInt32(v179, 0);
      LLVMBuildICmp();
      LLVMBuildCondBr();
      LLVMPositionBuilderAtEnd();
      v179[6] = v60[4];
LABEL_244:
      v113 = v60;
      v18 = v177;
      free(v113);
      goto LABEL_295;
    case 0x6Du:
      v51 = LLVMBuildFPCast();
      goto LABEL_294;
    case 0x70u:
      if (*(v3 + 54))
      {
        if (v176 == 1)
        {
          v59 = "air.fast_exp";
        }

        else
        {
          v59 = "air.exp";
        }
      }

      else
      {
        v59 = "native_exp";
      }

LABEL_289:
      v125 = v3;
      v126 = 1;
      goto LABEL_293;
    default:
      goto LABEL_295;
  }
}

uint64_t readTempValue(void *a1, unsigned int a2, int a3)
{
  v6 = *(a1[12] + 8 * a2);
  if (!v6)
  {
    v6 = LLVMFloatTypeInContext();
  }

  v7 = MEMORY[0x23EE854F0](v6, 4);
  if (!*(a1[11] + 8 * a2))
  {
    v9 = v7;
    v10 = MEMORY[0x23EE85200]();
    *(a1[11] + 8 * a2) = allocateVariable(a1, v9, v10);
    if (a3)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (!a3)
  {
    return 0;
  }

LABEL_5:

  return LLVMBuildLoad();
}

uint64_t gleLLVMApplySwizzle(void *a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  if (a3 || a4 != 1 || a5 != 2 || a6 != 3)
  {
    if (!a1[19])
    {
      a1[19] = LLVMInt32TypeInContext();
    }

    LLVMConstInt();
    LLVMConstInt();
    LLVMConstInt();
    LLVMConstInt();
    LLVMConstVector();
    return LLVMBuildShuffleVector();
  }

  return a2;
}

uint64_t gleLLVMFixPrecision(uint64_t a1, int a2, uint64_t *a3, unsigned int a4)
{
  result = LLVMFloatTypeInContext();
  if (a2 != 1)
  {
    result = LLVMHalfTypeInContext();
  }

  v8 = result;
  if (a4 >= 1)
  {
    v9 = a4;
    do
    {
      v10 = LLVMTypeOf();
      result = LLVMGetTypeKind();
      v11 = v8;
      if (result == 13)
      {
        v12 = LLVMGetVectorSize();
        result = MEMORY[0x23EE854F0](v8, v12);
        v11 = result;
      }

      if (v10 != v11)
      {
        result = LLVMBuildFPCast();
        *a3 = result;
      }

      ++a3;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t gleStateProgram_BuildTextureOperation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = a4;
  v74 = *MEMORY[0x277D85DE8];
  v8 = a2[(*a2 & 7) + 1] & 0x1FLL;
  v9 = (a2[(*a2 & 7) + 1] & 0x1F) != 0;
  v10 = (*a2 >> 6);
  v60 = a2[(*a2 & 7) + 1];
  v62 = v10;
  v64 = a2 + 2;
  v65 = a2;
  if (v10 != 69 && v10 != 67)
  {
    v9 = 0;
  }

  v11 = 1;
  v69 = v8;
  if (v8 <= 4)
  {
    if (v8 < 2)
    {
      v12 = 0;
      v13 = 3;
      goto LABEL_12;
    }

    if ((v8 - 2) >= 2)
    {
      v61 = 0;
      v12 = 1;
      v13 = 1;
      goto LABEL_13;
    }

LABEL_10:
    v12 = 0;
    v13 = 2;
LABEL_12:
    v61 = 1;
    goto LABEL_13;
  }

  if ((v8 - 5) < 2)
  {
    v11 = 0;
    goto LABEL_10;
  }

  v12 = 1;
  v13 = 1;
  v61 = 0;
  v11 = v8 != 7;
LABEL_13:
  v67 = v11;
  v63 = *(a1 + 216);
  if (v9)
  {
    if (!*(a1 + 152))
    {
      *(a1 + 152) = LLVMInt32TypeInContext();
    }

    LLVMConstInt();
    Element = LLVMBuildExtractElement();
  }

  else
  {
    Element = 0;
  }

  v14 = LLVMFloatTypeInContext();
  v66 = a5;
  v59 = v13;
  if (v12)
  {
    if (!*(a1 + 152))
    {
      *(a1 + 152) = LLVMInt32TypeInContext();
    }

    LLVMConstInt();
    inserted = LLVMBuildExtractElement();
    v17 = inserted;
    if (v9)
    {
      inserted = LLVMBuildFDiv();
      v17 = inserted;
    }
  }

  else
  {
    v18 = MEMORY[0x23EE854F0](v14, v13);
    inserted = LLVMTypeOf();
    v17 = a3;
    if (v18 != inserted || v9)
    {
      MEMORY[0x23EE85370](v18);
      v19 = 0;
      v20 = v59;
      do
      {
        if (!*(a1 + 152))
        {
          *(a1 + 152) = LLVMInt32TypeInContext();
        }

        LLVMConstInt();
        LLVMBuildExtractElement();
        if (v9)
        {
          LLVMBuildFDiv();
        }

        inserted = LLVMBuildInsertElement();
        v17 = inserted;
        ++v19;
      }

      while (v20 != v19);
    }
  }

  v21 = *(a1 + 216);
  v22 = v67;
  if (v67)
  {
    LODWORD(v23) = 4;
  }

  else
  {
    LODWORD(v23) = 5;
  }

  if (v67)
  {
    v24 = 8;
  }

  else
  {
    v24 = 10;
  }

  if (!v69)
  {
    v24 -= 2;
  }

  v25 = v24 | 1;
  if (v21)
  {
    v23 = v25;
  }

  else
  {
    v23 = v23;
  }

  v68 = v23;
  v26 = 8 * v23;
  MEMORY[0x28223BE20](inserted, v16);
  v28 = (&v58 - v27);
  bzero(&v58 - v27, v26);
  v29 = (*(a1 + 176) + 40 * (HIDWORD(v64[(*v65 & 7) - 1]) & 0x7F));
  *v28 = *v29;
  v28[1] = v29[1];
  if (v22)
  {
    v28[2] = v17;
    v30 = 3;
  }

  else
  {
    if (!*(a1 + 152))
    {
      *(a1 + 152) = LLVMInt32TypeInContext();
    }

    v28[2] = LLVMConstInt();
    v28[3] = v17;
    if (!*(a1 + 152))
    {
      *(a1 + 152) = LLVMInt32TypeInContext();
    }

    LLVMConstInt();
    v31 = LLVMBuildExtractElement();
    if (v9)
    {
      v31 = LLVMBuildFDiv();
    }

    v28[4] = v31;
    v21 = *(a1 + 216);
    v30 = 5;
  }

  v32 = v68;
  if (v21)
  {
    LLVMInt1TypeInContext();
    v33 = *(a1 + 152);
    if (!v33)
    {
      v33 = LLVMInt32TypeInContext();
      *(a1 + 152) = v33;
    }

    v34 = v69;
    if (v61)
    {
      v33 = MEMORY[0x23EE854F0](v33, v59);
    }

    if (v34)
    {
      v35 = &v28[v30];
      *v35 = LLVMConstInt();
      v30 += 2;
      v35[1] = MEMORY[0x23EE85200](v33);
    }

    v32 = v68;
    v36 = v62;
    v37 = &v28[v30];
    *v37 = LLVMConstInt();
    if ((v36 - 68) > 2)
    {
      LLVMFloatTypeInContext();
      v42 = llvm::ConstantFP::get();
      v39 = v67;
    }

    else
    {
      v38 = *(a1 + 152);
      v39 = v67;
      if (v58)
      {
        if (!v38)
        {
          *(a1 + 152) = LLVMInt32TypeInContext();
        }
      }

      else if (!v38)
      {
        *(a1 + 152) = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      v42 = LLVMBuildExtractElement();
    }

    v37[1] = v42;
    v43 = LLVMFloatTypeInContext();
    v37[2] = MEMORY[0x23EE85200](v43);
    if (!*(a1 + 152))
    {
      *(a1 + 152) = LLVMInt32TypeInContext();
    }

    v40 = LLVMConstInt();
    v37[3] = v40;
  }

  else
  {
    LLVMFloatTypeInContext();
    v40 = llvm::ConstantFP::get();
    v28[v30] = v40;
    v39 = v67;
  }

  MEMORY[0x28223BE20](v40, v41);
  v44 = &v58 - ((8 * v32 + 15) & 0xFFFFFFFF0);
  bzero(v44, v26);
  v45 = 0;
  do
  {
    *&v44[v45] = LLVMTypeOf();
    v45 += 8;
  }

  while (8 * v32 != v45);
  memset(v73, 0, sizeof(v73));
  v46 = v66;
  if (*(a1 + 216))
  {
    if (v39)
    {
      v47 = "air.sample_";
    }

    else
    {
      v47 = "air.sample_compare_";
    }

    if (v69 >= 0x12)
    {
      abort();
    }

    v48 = (&off_278B4E3D8)[v60 & 0x1F];
    v49 = LLVMGetTypeKind();
    if (v39)
    {
      if (v49 == 2)
      {
        v50 = "v4f32";
      }

      else
      {
        v50 = "v4f16";
      }

      v46 = MEMORY[0x23EE854F0](v46, 4);
    }

    else if (v49 == 2)
    {
      v50 = "f32";
    }

    else
    {
      v50 = "f16";
    }

    snprintf_l(v73, 0x200uLL, 0, "%s%s.%s", v47, v48, v50);
    v52 = v63;
  }

  else
  {
    if (LLVMGetTypeKind() == 2)
    {
      v51 = "read_imagef";
    }

    else
    {
      v51 = "read_imageh";
    }

    v52 = v63;
    if (v39)
    {
      v46 = MEMORY[0x23EE854F0](v46, 4);
    }

    glpMangleNameLLVM(*(a1 + 24), v73, 0x200uLL, v51, v46, v44, 0, v32);
  }

  v53 = LLVMGetNamedFunction();
  if (v52)
  {
    v71 = v46;
    v72 = LLVMInt8TypeInContext();
    LLVMStructTypeInContext();
  }

  LLVMFunctionType();
  if (!v53)
  {
    LLVMAddFunction();
    MEMORY[0x23EE852E0]("readonly", 8);
    LLVMCreateEnumAttribute();
    LLVMAddAttributeAtIndex();
    MEMORY[0x23EE852E0]("nounwind", 8);
    LLVMCreateEnumAttribute();
    LLVMAddAttributeAtIndex();
  }

  Value = LLVMBuildCall();
  if (v52)
  {
    Value = LLVMBuildExtractValue();
  }

  if (!v39)
  {
    v55 = LLVMFloatTypeInContext();
    v56 = MEMORY[0x23EE854F0](v55, 4);
    MEMORY[0x23EE85370](v56);
    gleLLVMGetConstantInt32(a1, 0);
    LLVMBuildInsertElement();
    gleLLVMGetConstantInt32(a1, 1);
    LLVMBuildInsertElement();
    gleLLVMGetConstantInt32(a1, 2);
    LLVMBuildInsertElement();
    gleLLVMGetConstantInt32(a1, 3);
    return LLVMBuildInsertElement();
  }

  return Value;
}

uint64_t TestCC_XYZW(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 8) & 0xELL) != 0)
  {
    CCValue = readCCValue(a1, *(a2 + 8) & 1);
  }

  else
  {
    CCValue = 0;
  }

  LLVMInt1TypeInContext();
  LLVMConstInt();
  v5 = 0;
  v6 = (a2 + 8);
  v7 = vld1q_dup_f32(v6);
  v8.i64[0] = 0x300000003;
  v8.i64[1] = 0x300000003;
  v10 = vandq_s8(vshlq_u32(v7, xmmword_23A3010B0), v8);
  do
  {
    TestCC(a1, (*(a2 + 8) >> 1) & 7, CCValue, v10.i32[v5]);
    result = LLVMBuildOr();
    ++v5;
  }

  while (v5 != 4);
  return result;
}

uint64_t allocateVariable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LLVMGetInsertBlock();
  LLVMPositionBuilderBefore();
  v4 = LLVMBuildAlloca();
  if (a3)
  {
    LLVMBuildStore();
  }

  LLVMPositionBuilderAtEnd();
  return v4;
}

uint64_t gleLLVMApplyDestMaskAndCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 216))
  {
    LLVMTypeOf();
  }

  if (!*(a1 + 152))
  {
    *(a1 + 152) = LLVMInt32TypeInContext();
  }

  if ((*(a4 + 8) & 0xELL) != 0)
  {
    CCValue = readCCValue(a1, *(a4 + 8) & 1);
  }

  else
  {
    CCValue = 0;
  }

  if ((*a4 & 0x20000000000) != 0)
  {
    v6 = readCCValue(a1, (*a4 >> 42) & 1);
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
  v8 = (a4 + 8);
  v9 = vld1q_dup_f32(v8);
  v10.i64[0] = 0x100000001;
  v10.i64[1] = 0x100000001;
  v11.i64[0] = 0x300000003;
  v11.i64[1] = 0x300000003;
  v21 = vandq_s8(vshlq_u32(v9, xmmword_23A3010B0), v11);
  v22 = vandq_s8(vshlq_u32(v9, xmmword_23A300DC0), v10);
  do
  {
    if (v22.i32[v7])
    {
      LLVMConstInt();
      LLVMBuildExtractElement();
      inserted = LLVMBuildInsertElement();
      if (v6)
      {
        v12 = LLVMTypeOf();
        MEMORY[0x23EE85200](v12);
        LLVMTypeOf();
        if (LLVMGetTypeKind() == 2)
        {
          LLVMFloatTypeInContext();
          v20 = LLVMBuildFPCast();
          v13 = LLVMTypeOf();
          v20 = gleStateProgram_BuildOperation(a1, "air.fabs", 1, &v20, v13);
          LLVMTypeOf();
          llvm::ConstantFP::get();
          if (!*(a1 + 152))
          {
            *(a1 + 152) = LLVMInt32TypeInContext();
          }

          v20 = LLVMBuildBitCast();
          LLVMBuildBitCast();
          LLVMBuildICmp();
          LLVMBuildFCmp();
          LLVMBuildFCmp();
          if (!*(a1 + 152))
          {
            *(a1 + 152) = LLVMInt32TypeInContext();
          }

          LLVMConstInt();
          if (!*(a1 + 152))
          {
            *(a1 + 152) = LLVMInt32TypeInContext();
          }

          LLVMConstInt();
          LLVMBuildSelect();
          if (!*(a1 + 152))
          {
            *(a1 + 152) = LLVMInt32TypeInContext();
          }
        }

        else
        {
          LLVMBuildICmp();
          LLVMBuildICmp();
          if (!*(a1 + 152))
          {
            *(a1 + 152) = LLVMInt32TypeInContext();
          }

          LLVMConstInt();
          if (!*(a1 + 152))
          {
            *(a1 + 152) = LLVMInt32TypeInContext();
          }
        }

        LLVMConstInt();
        LLVMBuildSelect();
        if (!*(a1 + 152))
        {
          *(a1 + 152) = LLVMInt32TypeInContext();
        }

        LLVMConstInt();
        LLVMBuildSelect();
        v14 = LLVMBuildInsertElement();
      }

      else
      {
        v14 = 0;
      }

      v15 = (*(a4 + 8) >> 1) & 7;
      if (v15)
      {
        TestCC(a1, v15, CCValue, v21.i32[v7]);
        a2 = LLVMBuildSelect();
        if (v6)
        {
          v6 = LLVMBuildSelect();
        }

        else
        {
          v6 = v14;
        }
      }

      else
      {
        v6 = v14;
        a2 = inserted;
      }
    }

    ++v7;
  }

  while (v7 != 4);
  if ((*(a4 + 5) & 2) != 0)
  {
    LLVMBuildStore();
  }

  return a2;
}

uint64_t readAddressValue(void *a1, unsigned int a2, int a3)
{
  if (!a1[19])
  {
    a1[19] = LLVMInt32TypeInContext();
  }

  v6 = MEMORY[0x23EE854F0]();
  if (!*(a1[8] + 8 * a2))
  {
    v8 = v6;
    v9 = MEMORY[0x23EE85200]();
    *(a1[8] + 8 * a2) = allocateVariable(a1, v8, v9);
    if (a3)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (!a3)
  {
    return 0;
  }

LABEL_5:

  return LLVMBuildLoad();
}

uint64_t gleLLVMVectorExtend(void *a1, uint64_t a2, uint64_t a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = LLVMTypeOf();
  if (LLVMGetTypeKind() == 13)
  {
    v7 = LLVMGetVectorSize();
    if (v7 != a3)
    {
      if (!a1[19])
      {
        v7 = LLVMInt32TypeInContext();
        a1[19] = v7;
      }

      MEMORY[0x28223BE20](v7, 8 * a3);
      v9 = v14 - v8;
      bzero(v14 - v8, v10);
      if (a3 >= 1)
      {
        v11 = 0;
        do
        {
          *&v9[8 * v11++] = LLVMConstInt();
        }

        while (a3 != v11);
      }

      LLVMConstVector();
      return LLVMBuildShuffleVector();
    }

    return a2;
  }

  else
  {
    v13 = MEMORY[0x23EE854F0](v6, a3);
    MEMORY[0x23EE85370](v13);
    gleLLVMGetConstantInt32(a1, 0);

    return LLVMBuildInsertElement();
  }
}

uint64_t readCCValue(void *a1, unsigned int a2)
{
  if (!a1[19])
  {
    a1[19] = LLVMInt32TypeInContext();
  }

  v4 = MEMORY[0x23EE854F0]();
  if (!a1[a2 + 9])
  {
    v5 = v4;
    v6 = MEMORY[0x23EE85200]();
    a1[a2 + 9] = allocateVariable(a1, v5, v6);
  }

  return LLVMBuildLoad();
}

uint64_t TestCC(void *a1, int a2, uint64_t a3, int a4)
{
  if (!a1[19])
  {
    a1[19] = LLVMInt32TypeInContext();
  }

  LLVMConstInt();
  LLVMBuildExtractElement();
  if (a2 <= 3)
  {
    switch(a2)
    {
      case 1:
        if (!a1[19])
        {
          a1[19] = LLVMInt32TypeInContext();
        }

        goto LABEL_28;
      case 2:
        if (!a1[19])
        {
          a1[19] = LLVMInt32TypeInContext();
        }

LABEL_33:
        LLVMConstInt();
        LLVMBuildICmp();
        if (!a1[19])
        {
          a1[19] = LLVMInt32TypeInContext();
        }

        LLVMConstInt();
        LLVMBuildICmp();

        return LLVMBuildOr();
      case 3:
        if (!a1[19])
        {
          a1[19] = LLVMInt32TypeInContext();
        }

        goto LABEL_28;
    }
  }

  else
  {
    if (a2 <= 5)
    {
      if (a2 != 4)
      {
        if (!a1[19])
        {
          a1[19] = LLVMInt32TypeInContext();
        }

LABEL_28:
        LLVMConstInt();

        return LLVMBuildICmp();
      }

      if (!a1[19])
      {
        a1[19] = LLVMInt32TypeInContext();
      }

      goto LABEL_33;
    }

    if (a2 == 6)
    {
      if (!a1[19])
      {
        a1[19] = LLVMInt32TypeInContext();
      }

      goto LABEL_28;
    }
  }

  LLVMInt1TypeInContext();

  return LLVMConstInt();
}

uint64_t gleVStateProgram_AttribToFunction(uint64_t a1)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  if ((*(a1 + 2033) & 8) != 0)
  {

    return LLVMGetParam();
  }

  else
  {
    if (!*(v1 + 144))
    {
      MEMORY[0x23EE852E0]("nounwind", 8);
      v4[0] = LLVMCreateEnumAttribute();
      MEMORY[0x23EE852E0]("readonly", 8);
      v4[1] = LLVMCreateEnumAttribute();
      v2 = *(v1 + 152);
      if (!v2)
      {
        v2 = LLVMInt32TypeInContext();
        *(v1 + 152) = v2;
      }

      *(v1 + 144) = gleLLVMCallFunction(v1, "air.get_vertex_id.i32", v2, 0, 0, v4, 2u);
    }

    LLVMGetParam();
    LLVMBuildGEP();
    return LLVMBuildLoad();
  }
}

uint64_t gleVStateProgram_OutputToFunction(uint64_t a1, int a2, _DWORD *a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 4 * a2 + 1694);
  v8 = *(a1 + 8);
  v9 = v8[19];
  if (!v9)
  {
    v9 = LLVMInt32TypeInContext();
    v8[19] = v9;
  }

  if (*(a1 + 2032))
  {
    if (!v8[20])
    {
      v8[20] = MEMORY[0x23EE85370](v8[21]);
    }

    if (v7 <= 47)
    {
      if ((v7 - 3) >= 4)
      {
        if (v7 == 1)
        {
          gleStateProgram_TruncateVec4(v8, a4, 2);
        }

        else if (v7 == 2)
        {
          LLVMConstInt();
          LLVMBuildExtractElement();
        }
      }

      else
      {
        gleLLVMClampColor(v8, a4);
      }
    }

    result = LLVMBuildInsertValue();
    v8[20] = result;
    ++*a3;
  }

  else
  {
    ++*a3;
    if (v7 <= 46)
    {
      if ((v7 - 3) < 4)
      {
        a4 = gleLLVMClampColor(v8, a4);
LABEL_7:
        v20 = v9;
        v21 = v9;
        v22 = LLVMTypeOf();
        v17 = LLVMConstInt();
        v18 = LLVMConstInt();
        v19 = a4;
        v10 = "graphics.vertex.writeOutput";
        v11 = v8;
        v12 = 3;
        return gleLLVMAddVoidFunctionCall(v11, v10, v12, &v20, &v17);
      }

      if (v7)
      {
        if (v7 == 2)
        {
          LLVMConstInt();
          Element = LLVMBuildExtractElement();
          v20 = LLVMTypeOf();
          v17 = Element;
          result = gleLLVMAddVoidFunctionCall(v8, "graphics.vertex.writePointSize", 1, &v20, &v17);
          *(a1 + 2032) |= 2u;
          return result;
        }

        goto LABEL_7;
      }

      goto LABEL_30;
    }

    if ((v7 - 48) >= 2)
    {
      if (v7 == 47)
      {
        v20 = LLVMTypeOf();
        v17 = a4;
        v10 = "graphics.vertex.writeClipVertex";
        goto LABEL_33;
      }

      if (v7 != 50)
      {
        goto LABEL_7;
      }

LABEL_30:
      v20 = LLVMTypeOf();
      v17 = a4;
      v10 = "graphics.vertex.writePosition";
LABEL_33:
      v11 = v8;
      v12 = 1;
      return gleLLVMAddVoidFunctionCall(v11, v10, v12, &v20, &v17);
    }

    for (i = 0; i != 4; ++i)
    {
      LLVMConstInt();
      result = LLVMBuildExtractElement();
      if (((1 << (4 * (v7 == 49) + i)) & (*(a1 + 2032) >> 3) & 0x3F) != 0)
      {
        v16 = result;
        v20 = v9;
        v21 = 0;
        v21 = LLVMTypeOf();
        v17 = 0;
        v18 = 0;
        v17 = LLVMConstInt();
        v18 = v16;
        result = gleLLVMAddVoidFunctionCall(v8, "graphics.vertex.writeClipDistance", 2, &v20, &v17);
      }
    }
  }

  return result;
}

uint64_t glpVertexStateToLLVMModule(uint64_t a1, uint64_t a2)
{
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
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  bzero(v8, 0x7E8uLL);
  *&v4 = -1;
  *(&v4 + 1) = -1;
  *(v13 + 14) = v4;
  v12 = v4;
  v13[0] = v4;
  v10 = v4;
  v11 = v4;
  v9 = v4;
  memset(&v8[4], 255, 0x754uLL);
  v7[0] = 0;
  v7[1] = 0;
  v14 = 1;
  gleVertexStateToModule(a1, a2, &v15, v7);
  v5 = *(&v16 + 1);
  *(&v16 + 1) = 0;
  gleLLVMDestroyBuildContext(&v15);
  return v5;
}

uint64_t gleVertexStateToModule(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41[1] = *MEMORY[0x277D85DE8];
  v7 = *(a4 + 2032) & 0xFFFFFDFF | (((*(a1 + 32) >> 8) & 1) << 9);
  *(a4 + 2032) = v7;
  v8 = (v7 & 0xFFFFFBFF | (((*(a1 + 32) >> 9) & 1) << 10)) ^ 0x400;
  *(a4 + 2032) = v8;
  *(a4 + 2032) = v8 & 0xFFFFF7FF | (((*(a1 + 32) >> 12) & 1) << 11);
  gleLLVMInitBuildContext(a3, a2, "Vertex_State_Program", 1, 48, 0, 48, 51, v40, SHIDWORD(v40));
  *(a3 + 216) = *(a4 + 2032) & 1;
  *(a3 + 220) = (*(a1 + 32) >> 12) & 1;
  *a3 = 0;
  *(a3 + 184) = a4;
  *(a3 + 192) = gleVStateProgram_OutputToFunction;
  *(a3 + 208) = 0;
  if (*(a4 + 2032))
  {
    v10 = gleVStateProgram_AttribToFunction;
  }

  else
  {
    v10 = 0;
  }

  *(a3 + 200) = v10;
  **(a3 + 104) = 0;
  v11 = *(a4 + 2032);
  v12 = v11 & 0xFFFFFE07 | (8 * (HIBYTE(*(a1 + 8)) & 0x3F));
  *(a4 + 2032) = v12;
  *(a4 + 8) = a3;
  *(a4 + 1664) = 4096;
  if (v11)
  {
    *(a4 + 2016) = gleVStateProgram_IgnoreOption;
    gleVStateProgram_AllocateOutputs(a1, a4);
    if ((*(a1 + 1) & 1) == 0)
    {
      gleVStateProgram_GetAttrib(a4, 0);
    }

    v9 = gleVStateProgram_Core(a1, a4);
    v12 = *(a4 + 2032);
    if ((v12 & 1) == 0)
    {
      v15 = **(*a4 + 104);
      if (v15)
      {
        *(v15 + 24) |= 0x4000uLL;
        v12 = *(a4 + 2032);
      }
    }

    v14 = *(a4 + 1996);
    v13 = *(a4 + 2000);
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  *(a4 + 2016) = gleVStateProgram_LLVMAddOperation;
  if (v12)
  {
    v13 = *(a4 + 2000) & ~(*(a4 + 2000) >> 31);
    *(a4 + 2036) = v13;
  }

  MEMORY[0x28223BE20](v9, 4 * v14);
  v17 = (v41 - v16);
  bzero(v41 - v16, v18);
  MEMORY[0x28223BE20](v19, 4 * v13);
  v21 = (v41 - v20);
  bzero(v41 - v20, v22);
  if (v12)
  {
    if (v14 >= 1)
    {
      v23 = (a4 + 22);
      v24 = v17;
      v25 = v14;
      do
      {
        v26 = *v23;
        v23 += 2;
        if (v26 == 7)
        {
          v27 = 3;
        }

        else
        {
          v27 = 7;
        }

        *v24++ = v27;
        --v25;
      }

      while (v25);
    }

    v28 = *(a4 + 2000);
    if (v28 >= 1)
    {
      v29 = (a4 + 1694);
      v30 = v21;
      do
      {
        v32 = *v29;
        v29 += 2;
        v31 = v32;
        v33 = v32 - 48;
        if (v32 == 1)
        {
          v34 = 5;
        }

        else
        {
          v34 = 7;
        }

        if (v31 == 2)
        {
          v35 = 4;
        }

        else
        {
          v35 = v34;
        }

        if (v33 < 2)
        {
          v35 = 7;
        }

        *v30++ = v35;
        --v28;
      }

      while (v28);
    }

    if ((v12 & 0x800) != 0)
    {
      v36 = "#main";
    }

    else
    {
      v36 = "vertexShader";
    }

    gleLLVMBeginMain(a3, v36, v17, v14, v21, v13, 0);
    v41[0] = LLVMMDStringInContext();
    v37 = LLVMMDNodeInContext();
    glpAddNamedMetadataOperand(*(a3 + 24), "air.compile_options", v37);
  }

  else
  {
    gleLLVMBeginMain(a3, "vertexShader", 0, 0, 0, 0, 0);
  }

  if ((*(a4 + 2032) & 1) == 0)
  {
    gleVStateProgram_AllocateOutputs(a1, a4);
  }

  if ((*(a1 + 1) & 1) == 0)
  {
    gleVStateProgram_GetAttrib(a4, 0);
  }

  gleVStateProgram_Core(a1, a4);
  if (*(a4 + 2032) & 1) != 0 || (v38 = **(*a4 + 104)) != 0 && (*(v38 + 24) |= 0x4000uLL, (*(a4 + 2032)))
  {
    gleVStateProgram_GenerateMetadata(a4, v17, v14, v13);
  }

  return gleLLVMFinishMain(a3, *(a4 + 1998), 0);
}

void glpVertexStateToLLVMIR(void *a1, uint64_t (*a2)(uint64_t, void), uint64_t a3)
{
  memset(v14, 0, sizeof(v14));
  bzero(v7, 0x7E8uLL);
  *&v4 = -1;
  *(&v4 + 1) = -1;
  *(v12 + 14) = v4;
  v11 = v4;
  v12[0] = v4;
  v9 = v4;
  v10 = v4;
  v8 = v4;
  memset(&v7[4], 255, 0x754uLL);
  v6[0] = 0;
  v6[1] = 0;
  v13 = 1;
  v5 = LLVMContextCreate();
  gleVertexStateToModule(a1, v5, v14, v6);
  createBitCodeStorage();
}

uint64_t *gleVStateProgram_AllocateOutputs(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if ((*result & 0x1800) != 0)
  {
    v3 = *(a2 + 2000);
    *(a2 + 1704) = v3;
    *(a2 + 1692 + 4 * v3 + 2) = 3;
    v4 = v3 + 1;
    *(a2 + 2000) = v3 + 1;
    v2 = *result;
    if ((*result & 0x1000000000000) != 0)
    {
      *(a2 + 1708) = v4;
      *(a2 + 1692 + 4 * v4 + 2) = 4;
      *(a2 + 2000) = v3 + 2;
      v2 = *result;
      v5 = 2;
      if ((*result & 0x2000) != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v5 = 1;
      if ((v2 & 0x2000) != 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v5 = 0;
    if ((v2 & 0x2000) != 0)
    {
LABEL_9:
      v6 = *(a2 + 2000);
      *(a2 + 1712) = v6;
      *(a2 + 1692 + 4 * v6 + 2) = 5;
      v7 = v6 + 1;
      *(a2 + 2000) = v6 + 1;
      if (*(result + 6))
      {
        *(a2 + 1716) = v7;
        *(a2 + 1692 + 4 * v7 + 2) = 6;
        *(a2 + 2000) = v6 + 2;
        v5 += 2;
      }

      else
      {
        ++v5;
      }

      goto LABEL_12;
    }
  }

  if ((v2 & 0x8000000000000800) == 0x8000000000000800)
  {
    goto LABEL_9;
  }

LABEL_12:
  if ((result[4] & 3) != 0)
  {
    v8 = *(a2 + 2000);
    *(a2 + 1696) = v8;
    v9 = 1;
    *(a2 + 4 * v8 + 1694) = 1;
    *(a2 + 2000) = v8 + 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(result + 2);
  if (*(result + 2))
  {
    v11 = 0;
    v12 = (a2 + 1720);
    v13 = 7;
    do
    {
      if (v10)
      {
        v14 = *(a2 + 2000);
        *v12 = v14;
        *(a2 + 1692 + 4 * v14 + 2) = v13;
        *(a2 + 2000) = v14 + 1;
        ++v11;
      }

      ++v13;
      v12 += 2;
      v15 = v10 > 1;
      v10 >>= 1;
    }

    while (v15);
  }

  else
  {
    v11 = 0;
  }

  v16 = HIDWORD(result[1]);
  if (v16)
  {
    v17 = (a2 + 1752);
    v18 = 15;
    do
    {
      if (v16)
      {
        v19 = *(a2 + 2000);
        *v17 = v19;
        *(a2 + 1692 + 4 * v19 + 2) = v18;
        *(a2 + 2000) = v19 + 1;
        ++v11;
      }

      ++v18;
      v17 += 2;
      v15 = v16 > 1;
      LODWORD(v16) = v16 >> 1;
    }

    while (v15);
  }

  v20 = *(a2 + 2032);
  if ((v20 & 1) == 0)
  {
    v21 = *(a2 + 2000);
    v22 = a2 + 1692;
    *(a2 + 1692) = v21;
    *(a2 + 1692 + 4 * v21 + 2) = 0;
    *(a2 + 1892) = v21 + 1;
    *(a2 + 1692 + 4 * (v21 + 1) + 2) = 50;
    *(a2 + 1700) = v21 + 2;
    *(a2 + 1692 + 4 * (v21 + 2) + 2) = 2;
    v23 = v21 + 3;
    *(a2 + 2000) = v21 + 3;
    if ((*(result + 7) & 0x40) != 0)
    {
      *(a2 + 1880) = v23;
      *(v22 + 4 * v23 + 2) = 47;
      v23 = v21 + 4;
    }

    *(a2 + 1884) = v23;
    *(v22 + 4 * v23 + 2) = 48;
    *(a2 + 1888) = v23 + 1;
    *(v22 + 4 * (v23 + 1) + 2) = 49;
    *(a2 + 2000) = v23 + 2;
    v20 = *(a2 + 2032);
  }

  if ((v20 & 1) == 0)
  {
    return gleLLVMCreateVaryingsMetaData(*(a2 + 8), "graphics.vertexOutputs", v5, v9, v11, (result[4] >> 8) & 1, (result[4] & 0x200) == 0);
  }

  return result;
}

uint64_t gleVStateProgram_Core(uint64_t result, uint64_t a2)
{
  v3 = *result;
  v298 = result;
  if ((*result & 0x200) == 0)
  {
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_3;
    }

LABEL_120:
    memset(v299, 0, 80);
    if ((v3 & 0xFF0000000000) != 0)
    {
      v54 = 0;
      v55 = 48;
      v56 = v298;
      while (1)
      {
        if ((*(v56 + 33) & 4) != 0)
        {
          memset(&v299[1] + 8, 0, 56);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100001201;
          *(a2 + 16) = 1;
          Attrib = gleVStateProgram_GetAttrib(a2, 7);
          *(a2 + 2002) = 1;
          *(&v299[0] + 1) = 1919172608;
          *&v299[1] = ((v54 & 3) << 9) | (Attrib << 48) | ((v54 & 3) << 11) | ((v54 & 3) << 13) | ((v54 & 3) << 15);
          (*(a2 + 2016))(a2, v299);
          v57 = (*v56 >> 57) & 1;
          v58 = a2;
          v59 = 152;
          v60 = 1;
        }

        else
        {
          v57 = (v3 >> 57) & 1;
          v58 = a2;
          v59 = v55;
          v60 = 0;
        }

        gleVStateProgram_MultMatrix3x3(v58, v59, 23, 23, v60, v57);
        if ((*v56 & 2) != 0)
        {
          if (!v54)
          {
            memset(&v299[2], 0, 48);
            *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
            *(a2 + 16) = 2;
            v73 = *(a2 + 1946);
            if (v73 == 0xFFFF)
            {
              v73 = *(a2 + 2004);
              *(a2 + 1946) = v73;
              *(a2 + 2004) = v73 + 1;
            }

            *&v299[1] = (v73 << 48) | 0x19C840;
            v74 = *(a2 + 1944);
            if (v74 == 0xFFFF)
            {
              v74 = *(a2 + 2004);
              *(a2 + 1944) = v74;
              *(a2 + 2004) = v74 + 1;
            }

            v72 = (v74 << 48) | 0x40;
            goto LABEL_148;
          }

          memset(v299 + 8, 0, 72);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
          *(a2 + 16) = 3;
          v64 = *(a2 + 1946);
          if (v64 == 0xFFFF)
          {
            v64 = *(a2 + 2004);
            *(a2 + 1946) = v64;
            *(a2 + 2004) = v64 + 1;
          }

          *&v299[1] = (v64 << 48) | 0x19C840;
          v65 = *(a2 + 1944);
          if (v65 == 0xFFFF)
          {
            v65 = *(a2 + 2004);
            *(a2 + 1944) = v65;
            *(a2 + 2004) = v65 + 1;
          }

          v63 = ((v54 & 3) << 9) | (v65 << 48) | ((v54 & 3) << 11) | ((v54 & 3) << 13) | ((v54 & 3) << 15) | 0x40;
        }

        else
        {
          if (!v54)
          {
            memset(&v299[2], 0, 48);
            *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
            *(a2 + 16) = 2;
            v71 = *(a2 + 1946);
            if (v71 == 0xFFFF)
            {
              v71 = *(a2 + 2004);
              *(a2 + 1946) = v71;
              *(a2 + 2004) = v71 + 1;
            }

            *&v299[1] = (v71 << 48) | 0x19C840;
            v72 = gleVStateProgram_GetAttrib(a2, 4) << 48;
LABEL_148:
            *(&v299[1] + 1) = v72;
            v68 = *(a2 + 1902);
            if (v68 == 0xFFFF)
            {
              v68 = *(a2 + 2004);
              *(a2 + 1902) = v68;
              *(a2 + 2004) = v68 + 1;
            }

LABEL_150:
            v67 = v68 << 48;
            goto LABEL_151;
          }

          memset(v299 + 8, 0, 72);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
          *(a2 + 16) = 3;
          v62 = *(a2 + 1946);
          if (v62 == 0xFFFF)
          {
            v62 = *(a2 + 2004);
            *(a2 + 1946) = v62;
            *(a2 + 2004) = v62 + 1;
          }

          *&v299[1] = (v62 << 48) | 0x19C840;
          v63 = ((v54 & 3) << 9) | (gleVStateProgram_GetAttrib(a2, 4) << 48) | ((v54 & 3) << 11) | ((v54 & 3) << 13) | ((v54 & 3) << 15);
        }

        *(&v299[1] + 1) = v63;
        v66 = *(a2 + 1902);
        if (v66 == 0xFFFF)
        {
          v68 = *(a2 + 2004);
          v69 = *(a2 + 2004);
          *(a2 + 1902) = v68;
          v70 = v69 + 1;
          *(a2 + 2004) = v70;
          *&v299[2] = (v68 << 48) | 0x19C840;
          if ((v70 & 0x10000) == 0)
          {
            goto LABEL_150;
          }

          v67 = 0;
          *(a2 + 1902) = v70;
          *(a2 + 2004) = 1;
        }

        else
        {
          v67 = v66 << 48;
          *&v299[2] = (v66 << 48) | 0x19C840;
        }

LABEL_151:
        *(&v299[0] + 1) = v67 | 0x72679000;
        result = (*(a2 + 2016))(a2, v299);
        ++v54;
        v56 = v298;
        v3 = *v298;
        v55 += 8;
        if (v54 >= (WORD2(*v298) >> 8))
        {
          goto LABEL_159;
        }
      }
    }

    if ((v3 & 0x10) != 0)
    {
      *(&v299[4] + 1) = 0;
      *(&v299[3] + 8) = 0uLL;
      *(&v299[2] + 8) = 0uLL;
      *(&v299[1] + 8) = 0uLL;
      *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
      *(a2 + 16) = 1;
      *&v299[1] = (gleVStateProgram_GetAttrib(a2, 1) << 48) | 0x19C800;
      v75 = *(a2 + 1902);
      if (v75 == 0xFFFF)
      {
        v75 = *(a2 + 2004);
        *(a2 + 1902) = v75;
        *(a2 + 2004) = v75 + 1;
      }

      *(&v299[0] + 1) = (v75 << 48) | 0x72679000;
      result = (*(a2 + 2016))(a2, v299);
    }

    else
    {
      result = gleVStateProgram_MultMatrix3x3(a2, 48, 1, 1, 0, (v3 & 0x200000000000000) != 0);
    }

    v56 = v298;
LABEL_159:
    if ((*v56 & 0x20) != 0)
    {
      result = gleVStateProgram_NormalizeVector(a2, 1, 1, 23, 23);
    }

    v76 = *(v56 + 24);
    if (!v76)
    {
LABEL_238:
      v3 = *v298;
      if ((*v298 & 0x100) == 0)
      {
        goto LABEL_243;
      }

LABEL_239:
      if ((v3 & 0xFF0000000000) != 0)
      {
        result = gleVStateProgram_MultMatrix4x4(a2, 0, 0, 0, 23, 0, 0, 1, HIBYTE(v3) & 1);
        goto LABEL_243;
      }

      if ((v3 & 4) == 0)
      {
        result = gleVStateProgram_MultMatrix4x4(a2, 0, 8, 0, 23, 1, 0, 1, HIBYTE(v3) & 1);
        goto LABEL_243;
      }

      memset(&v299[1] + 8, 0, 56);
      *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
      *(a2 + 16) = 1;
      *&v299[1] = (gleVStateProgram_GetAttrib(a2, 0) << 48) | 0x19C800;
      if ((*(v298 + 1) & 0x80) != 0)
      {
        v165 = *(a2 + 1892);
        if (v165 == 0xFFFF)
        {
          v167 = (a2 + 1892);
          v166 = 50;
          goto LABEL_301;
        }
      }

      else
      {
        v165 = *(a2 + 1692);
        if (v165 == 0xFFFF)
        {
          v166 = 0;
          v167 = (a2 + 1692);
LABEL_301:
          v177 = *(a2 + 2000);
          v165 = *(a2 + 2000);
          *v167 = v177;
          *(a2 + 4 * v177 + 1694) = v166;
          *(a2 + 2000) = v177 + 1;
        }
      }

      *(&v299[0] + 1) = ((v165 << 48) | 0x72679000) + 0x2000;
      result = (*(a2 + 2016))(a2, v299);
      goto LABEL_243;
    }

    v77 = HIDWORD(v76) & v76;
    if (!HIDWORD(v76))
    {
LABEL_218:
      v122 = 0;
      v123 = v77 ^ v76;
      v124 = HIDWORD(v76) & v76;
      v125 = v77 ^ HIDWORD(v76);
      do
      {
        v126 = a2 + 2 * v122;
        if (((v123 >> v122) & 0x1010101) != 0)
        {
          memset(&v299[1] + 8, 0, 56);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
          *(a2 + 16) = 1;
          v127 = *(a2 + 1902);
          if (v127 == 0xFFFF)
          {
            v127 = *(a2 + 2004);
            *(a2 + 1902) = v127;
            *(a2 + 2004) = v127 + 1;
          }

          *&v299[1] = (v127 << 48) | 0x19C840;
          v128 = *(v126 + 1978);
          if (v128 == 0xFFFF)
          {
            v128 = *(a2 + 2004);
            *(v126 + 1978) = v128;
            *(a2 + 2004) = v128 + 1;
          }

          *(&v299[0] + 1) = ((((v123 >> v122) & 1) << 18) | (v128 << 48) | (v123 >> v122 << 9) & 0x20000 | ((v123 >> v122) & 0x10000) | (v123 >> v122 >> 9) & 0x8000) + 1918898176;
          result = (*(a2 + 2016))(a2, v299);
        }

        if (((v125 >> v122) & 0x1010101) != 0)
        {
          memset(&v299[1] + 8, 0, 56);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
          *(a2 + 16) = 1;
          v129 = *(a2 + 1946);
          if (v129 == 0xFFFF)
          {
            v129 = *(a2 + 2004);
            *(a2 + 1946) = v129;
            *(a2 + 2004) = v129 + 1;
          }

          *&v299[1] = (v129 << 48) | 0x19C840;
          v130 = *(v126 + 1978);
          if (v130 == 0xFFFF)
          {
            v130 = *(a2 + 2004);
            *(v126 + 1978) = v130;
            *(a2 + 2004) = v130 + 1;
          }

          *(&v299[0] + 1) = ((((v125 >> v122) & 1) << 18) | (v130 << 48) | (v125 >> v122 << 9) & 0x20000 | ((v125 >> v122) & 0x10000) | (v125 >> v122 >> 9) & 0x8000) + 1918898176;
          result = (*(a2 + 2016))(a2, v299);
        }

        if (((v124 >> v122) & 0x1010101) != 0)
        {
          memset(&v299[1] + 8, 0, 56);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
          *(a2 + 16) = 1;
          v131 = *(a2 + 1954);
          if (v131 == 0xFFFF)
          {
            v131 = *(a2 + 2004);
            *(a2 + 1954) = v131;
            *(a2 + 2004) = v131 + 1;
          }

          *&v299[1] = (v131 << 48) | 0x19C840;
          v132 = *(v126 + 1978);
          if (v132 == 0xFFFF)
          {
            v132 = *(a2 + 2004);
            *(v126 + 1978) = v132;
            *(a2 + 2004) = v132 + 1;
          }

          *(&v299[0] + 1) = ((((v124 >> v122) & 1) << 18) | (v132 << 48) | (v124 >> v122 << 9) & 0x20000 | ((v124 >> v122) & 0x10000) | (v124 >> v122 >> 9) & 0x8000) + 1918898176;
          result = (*(a2 + 2016))(a2, v299);
        }

        ++v122;
      }

      while (v122 != 8);
      goto LABEL_238;
    }

    gleVStateProgram_NormalizeVector(a2, 0, 23, 27, 27);
    memset(&v299[2], 0, 48);
    *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A02;
    *(a2 + 16) = 2;
    v78 = *(a2 + 1902);
    if (v78 == 0xFFFF)
    {
      v78 = *(a2 + 2004);
      *(a2 + 1902) = v78;
      *(a2 + 2004) = v78 + 1;
    }

    *&v299[1] = (v78 << 48) | 0x19C840;
    v79 = *(a2 + 1946);
    if (v79 == 0xFFFF)
    {
      v79 = *(a2 + 2004);
      *(a2 + 1946) = v79;
      *(a2 + 2004) = v79 + 1;
    }

    *(&v299[1] + 1) = (v79 << 48) | 0x19C840;
    v80 = *(a2 + 1954);
    if (v80 == 0xFFFF)
    {
      v80 = *(a2 + 2004);
      *(a2 + 1954) = v80;
      *(a2 + 2004) = v80 + 1;
    }

    *(&v299[0] + 1) = (v80 << 48) | 0x72679000;
    (*(a2 + 2016))(a2, v299);
    memset(&v299[1], 0, 64);
    *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
    *(a2 + 16) = 2;
    v81 = *(a2 + 1954);
    if (v81 == 0xFFFF)
    {
      v84 = *(a2 + 2004);
      v85 = *(a2 + 2004);
      *(a2 + 1954) = v84;
      v86 = v85 + 1;
      *(a2 + 2004) = v85 + 1;
      v83 = (v84 << 48) | 0x19C840;
      *&v299[1] = v83;
      if ((v86 & 0x10000) != 0)
      {
        *(a2 + 1954) = v86;
        *(a2 + 2004) = 1;
        v83 = 1689664;
        v87 = 1919389696;
        goto LABEL_175;
      }

      v82 = v84 << 48;
    }

    else
    {
      v82 = v81 << 48;
      v83 = (v81 << 48) | 0x19C840;
      *&v299[1] = v83;
    }

    v87 = v82 | 0x72679000;
LABEL_175:
    *(&v299[1] + 1) = v83;
    *(&v299[0] + 1) = v87;
    (*(a2 + 2016))(a2, v299);
    memset(v299 + 8, 0, 72);
    *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
    *(a2 + 16) = 3;
    v88 = *(a2 + 1954);
    if (v88 == 0xFFFF)
    {
      v88 = *(a2 + 2004);
      *(a2 + 1954) = v88;
      *(a2 + 2004) = v88 + 1;
    }

    *&v299[1] = (v88 << 48) | 0x19C840;
    v89 = *(a2 + 1902);
    if (v89 == 0xFFFF)
    {
      v89 = *(a2 + 2004);
      *(a2 + 1902) = v89;
      *(a2 + 2004) = v89 + 1;
    }

    *(&v299[1] + 1) = ((v89 << 48) | 0x19C840) + 16;
    v90 = *(a2 + 1946);
    if (v90 == 0xFFFF)
    {
      v92 = *(a2 + 2004);
      v93 = *(a2 + 2004);
      *(a2 + 1946) = v92;
      v94 = v93 + 1;
      *(a2 + 2004) = v94;
      *&v299[2] = (v92 << 48) | 0x19C840;
      if ((v94 & 0x10000) != 0)
      {
        v91 = 0;
        *(a2 + 1946) = v94;
        *(a2 + 2004) = 1;
      }

      else
      {
        v91 = v92 << 48;
      }
    }

    else
    {
      v91 = v90 << 48;
      *&v299[2] = (v90 << 48) | 0x19C840;
    }

    *(&v299[0] + 1) = v91 | 0x72679000;
    result = (*(a2 + 2016))(a2, v299);
    if (!v77)
    {
      goto LABEL_218;
    }

    memset(&v299[2], 0, 48);
    v95 = *(a2 + 16);
    *(a2 + 16) = 2;
    *&v299[0] = (8 * (v95 & 7)) | 0x3100011042;
    v96 = *(a2 + 1946);
    if (v96 == 0xFFFF)
    {
      v96 = *(a2 + 2004);
      *(a2 + 1946) = v96;
      *(a2 + 2004) = v96 + 1;
    }

    *&v299[1] = (v96 << 48) | 0x19C840;
    *(&v299[1] + 1) = 2560163840;
    v97 = *(a2 + 1954);
    if (v97 == 0xFFFF)
    {
      v97 = *(a2 + 2004);
      *(a2 + 1954) = v97;
      *(a2 + 2004) = v97 + 1;
    }

    *(&v299[0] + 1) = (v97 << 48) | 0x72679000;
    (*(a2 + 2016))(a2, v299);
    memset(v299 + 8, 0, 72);
    *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
    *(a2 + 16) = 2;
    v98 = *(a2 + 1946);
    if (v98 == 0xFFFF)
    {
      v98 = *(a2 + 2004);
      *(a2 + 1946) = v98;
      *(a2 + 2004) = v98 + 1;
    }

    *&v299[1] = (v98 << 48) | 0x19C840;
    v99 = *(a2 + 1954);
    if (v99 == 0xFFFF)
    {
      v101 = *(a2 + 2004);
      v102 = *(a2 + 2004);
      *(a2 + 1954) = v101;
      v103 = v102 + 1;
      *(a2 + 2004) = v103;
      *(&v299[1] + 1) = (v101 << 48) | 0x19C840;
      if ((v103 & 0x10000) != 0)
      {
        v100 = 0;
        *(a2 + 1954) = v103;
        *(a2 + 2004) = 1;
      }

      else
      {
        v100 = v101 << 48;
      }
    }

    else
    {
      v100 = v99 << 48;
      *(&v299[1] + 1) = (v99 << 48) | 0x19C840;
    }

    *(&v299[0] + 1) = v100 | 0x72679000;
    (*(a2 + 2016))(a2, v299);
    memset(&v299[1], 0, 64);
    *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A02;
    *(a2 + 16) = 2;
    v104 = *(a2 + 1954);
    if (v104 == 0xFFFF)
    {
      v107 = *(a2 + 2004);
      v108 = *(a2 + 2004);
      *(a2 + 1954) = v107;
      v109 = v108 + 1;
      *(a2 + 2004) = v108 + 1;
      v106 = (v107 << 48) | 0x19C840;
      *&v299[1] = v106;
      if ((v109 & 0x10000) != 0)
      {
        *(a2 + 1954) = v109;
        *(a2 + 2004) = 1;
        v106 = 1689664;
        v110 = 1919389696;
LABEL_202:
        *(&v299[1] + 1) = v106;
        *(&v299[0] + 1) = v110;
        (*(a2 + 2016))(a2, v299);
        memset(&v299[1], 0, 64);
        v111 = *(a2 + 16);
        *(a2 + 16) = 1;
        *&v299[0] = (8 * (v111 & 7)) | 0x100100341;
        v112 = *(a2 + 1954);
        if (v112 == 0xFFFF)
        {
          v114 = *(a2 + 2004);
          v115 = *(a2 + 2004);
          *(a2 + 1954) = v114;
          v116 = v115 + 1;
          *(a2 + 2004) = v116;
          *&v299[1] = (v114 << 48) | 0x19C840;
          if ((v116 & 0x10000) != 0)
          {
            v113 = 0;
            *(a2 + 1954) = v116;
            *(a2 + 2004) = 1;
          }

          else
          {
            v113 = v114 << 48;
          }
        }

        else
        {
          v113 = v112 << 48;
          *&v299[1] = (v112 << 48) | 0x19C840;
        }

        *(&v299[0] + 1) = v113 | 0x72679000;
        (*(a2 + 2016))(a2, v299);
        memset(v299 + 8, 0, 72);
        *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
        *(a2 + 16) = 2;
        v117 = *(a2 + 1954);
        if (v117 == 0xFFFF)
        {
          v117 = *(a2 + 2004);
          *(a2 + 1954) = v117;
          *(a2 + 2004) = v117 + 1;
        }

        *&v299[1] = (v117 << 48) | 0x19C840;
        *(&v299[1] + 1) = (gleVStateProgram_GetParam(a2, 351) << 48) | 0x80;
        v118 = *(a2 + 1954);
        if (v118 == 0xFFFF)
        {
          v118 = *(a2 + 2004);
          *(a2 + 1954) = v118;
          *(a2 + 2004) = v118 + 1;
        }

        *(&v299[0] + 1) = (v118 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, v299);
        memset(v299 + 8, 0, 72);
        *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
        *(a2 + 16) = 3;
        v119 = *(a2 + 1946);
        if (v119 == 0xFFFF)
        {
          v119 = *(a2 + 2004);
          *(a2 + 1946) = v119;
          *(a2 + 2004) = v119 + 1;
        }

        *&v299[1] = (v119 << 48) | 0x19C840;
        v120 = *(a2 + 1954);
        if (v120 == 0xFFFF)
        {
          v120 = *(a2 + 2004);
          *(a2 + 1954) = v120;
          *(a2 + 2004) = v120 + 1;
        }

        *(&v299[1] + 1) = (v120 << 48) | 0x19C840;
        *&v299[2] = (gleVStateProgram_GetParam(a2, 351) << 48) | 0x80;
        v121 = *(a2 + 1954);
        if (v121 == 0xFFFF)
        {
          v121 = *(a2 + 2004);
          *(a2 + 1954) = v121;
          *(a2 + 2004) = v121 + 1;
        }

        *(&v299[0] + 1) = (v121 << 48) | 0x72679000;
        result = (*(a2 + 2016))(a2, v299);
        goto LABEL_218;
      }

      v105 = v107 << 48;
    }

    else
    {
      v105 = v104 << 48;
      v106 = (v104 << 48) | 0x19C840;
      *&v299[1] = v106;
    }

    v110 = v105 | 0x72679000;
    goto LABEL_202;
  }

  memset(v299, 0, 80);
  v4 = *(result + 16);
  v5 = result;
  if (!v4)
  {
    goto LABEL_27;
  }

  v6 = -32;
  v7 = 989;
  do
  {
    v8 = v4 >> (v7 + 35);
    if ((v8 & 0x1010101) == 0)
    {
      goto LABEL_25;
    }

    if (v8)
    {
      memset(v299 + 8, 0, 72);
      *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A42;
      *(a2 + 16) = 2;
      *&v299[1] = (gleVStateProgram_GetAttrib(a2, 0) << 48) | 0x19C800;
      *(&v299[1] + 1) = ((gleVStateProgram_GetParam(a2, v6 + 192) << 48) | 0x19C840) + 64;
      v9 = *(a2 + 2 * v7);
      if (v9 == 0xFFFF)
      {
        v9 = *(a2 + 2004);
        *(a2 + 2 * v7) = v9;
        *(a2 + 2004) = v9 + 1;
      }

      *(&v299[0] + 1) = (v9 << 48) | 0x72641000;
      result = (*(a2 + 2016))(a2, v299);
      if ((v8 & 0x100) == 0)
      {
LABEL_10:
        if ((v8 & 0x10000) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }

    else if ((v8 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    memset(v299 + 8, 0, 72);
    *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A42;
    *(a2 + 16) = 2;
    *&v299[1] = (gleVStateProgram_GetAttrib(a2, 0) << 48) | 0x19C800;
    *(&v299[1] + 1) = ((gleVStateProgram_GetParam(a2, v6 + 193) << 48) | 0x19C840) + 64;
    v10 = *(a2 + 2 * v7);
    if (v10 == 0xFFFF)
    {
      v10 = *(a2 + 2004);
      *(a2 + 2 * v7) = v10;
      *(a2 + 2004) = v10 + 1;
    }

    *(&v299[0] + 1) = (v10 << 48) | 0x72621000;
    result = (*(a2 + 2016))(a2, v299);
    if ((v8 & 0x10000) == 0)
    {
LABEL_11:
      if ((v8 & 0x1000000) == 0)
      {
        goto LABEL_25;
      }

LABEL_22:
      memset(v299 + 8, 0, 72);
      *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A42;
      *(a2 + 16) = 2;
      *&v299[1] = (gleVStateProgram_GetAttrib(a2, 0) << 48) | 0x19C800;
      *(&v299[1] + 1) = ((gleVStateProgram_GetParam(a2, v6 + 195) << 48) | 0x19C840) + 64;
      v12 = *(a2 + 2 * v7);
      if (v12 == 0xFFFF)
      {
        v12 = *(a2 + 2004);
        *(a2 + 2 * v7) = v12;
        *(a2 + 2004) = v12 + 1;
      }

      *(&v299[0] + 1) = (v12 << 48) | 0x72609000;
      result = (*(a2 + 2016))(a2, v299);
      goto LABEL_25;
    }

LABEL_19:
    memset(v299 + 8, 0, 72);
    *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A42;
    *(a2 + 16) = 2;
    *&v299[1] = (gleVStateProgram_GetAttrib(a2, 0) << 48) | 0x19C800;
    *(&v299[1] + 1) = ((gleVStateProgram_GetParam(a2, v6 + 194) << 48) | 0x19C840) + 64;
    v11 = *(a2 + 2 * v7);
    if (v11 == 0xFFFF)
    {
      v11 = *(a2 + 2004);
      *(a2 + 2 * v7) = v11;
      *(a2 + 2004) = v11 + 1;
    }

    *(&v299[0] + 1) = (v11 << 48) | 0x72611000;
    result = (*(a2 + 2016))(a2, v299);
    if ((v8 & 0x1000000) != 0)
    {
      goto LABEL_22;
    }

LABEL_25:
    ++v7;
    v6 += 4;
  }

  while (v6);
  v5 = v298;
  v3 = *v298;
LABEL_27:
  if ((v3 & 0xFF0000000000) == 0)
  {
    if ((v3 & 0x40) != 0)
    {
      if ((v3 & 8) == 0)
      {
        result = gleVStateProgram_MultMatrix4x4(a2, 0, 16, 0, 0, 1, 0, 0, HIBYTE(v3) & 1);
        goto LABEL_90;
      }
    }

    else
    {
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_90;
      }

      if ((v3 & 8) == 0)
      {
        memset(&v299[2], 0, 48);
        *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A42;
        *(a2 + 16) = 2;
        *&v299[1] = (gleVStateProgram_GetAttrib(a2, 0) << 48) | 0x19C800;
        v15 = *(a2 + 348);
        if (v15 == 0xFFFF)
        {
          v16 = *(a2 + 1998);
          v15 = *(a2 + 1998);
          *(a2 + 348) = v16;
          *(a2 + 4 * v16 + 262) = 22;
          *(a2 + 1998) = v16 + 1;
        }

        *(&v299[1] + 1) = ((v15 << 48) | 0x19C840) + 64;
        v17 = *(a2 + 1900);
        if (v17 == 0xFFFF)
        {
          v17 = *(a2 + 2004);
          *(a2 + 1900) = v17;
          *(a2 + 2004) = v17 + 1;
        }

        v18 = (v17 << 48) | 0x72679000;
LABEL_89:
        *(&v299[0] + 1) = v18;
        result = (*(a2 + 2016))(a2, v299);
        goto LABEL_90;
      }
    }

    memset(&v299[1] + 8, 0, 56);
    *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
    *(a2 + 16) = 1;
    *&v299[1] = (gleVStateProgram_GetAttrib(a2, 0) << 48) | 0x19C800;
    v41 = *(a2 + 1900);
    if (v41 == 0xFFFF)
    {
      v41 = *(a2 + 2004);
      *(a2 + 1900) = v41;
      *(a2 + 2004) = v41 + 1;
    }

    v18 = (v41 << 48) | 0x72679000;
    goto LABEL_89;
  }

  if ((v3 & 2) == 0)
  {
    goto LABEL_45;
  }

  memset(&v299[2], 0, 48);
  v13 = *(a2 + 16);
  *(a2 + 16) = 2;
  *&v299[0] = (8 * (v13 & 7)) | 0x3100011042;
  *&v299[1] = (gleVStateProgram_GetAttrib(a2, 4) << 48) | 0x19C800;
  if (*(v5 + 5) - 1 > 2)
  {
    v14 = 2182086656;
  }

  else
  {
    v14 = qword_23A301120[(*(v5 + 5) - 1)];
  }

  *(&v299[1] + 1) = v14;
  v19 = *(a2 + 1944);
  if (v19 == 0xFFFF)
  {
    v19 = *(a2 + 2004);
    *(a2 + 1944) = v19;
    *(a2 + 2004) = v19 + 1;
  }

  *(&v299[0] + 1) = (v19 << 48) | 0x72679000;
  result = (*(a2 + 2016))(a2, v299);
  v3 = *v5;
  if ((*v5 & 0xFF0000000000) != 0)
  {
LABEL_45:
    v20 = 0;
    v21 = 16;
    do
    {
      if ((*(v5 + 33) & 4) != 0)
      {
        memset(&v299[1] + 8, 0, 56);
        *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100001201;
        *(a2 + 16) = 1;
        v22 = gleVStateProgram_GetAttrib(a2, 7);
        *(a2 + 2002) = 1;
        *(&v299[0] + 1) = 1919172608;
        *&v299[1] = ((v20 & 3) << 9) | (v22 << 48) | ((v20 & 3) << 11) | ((v20 & 3) << 13) | ((v20 & 3) << 15);
        (*(a2 + 2016))(a2, v299);
        gleVStateProgram_MultMatrix4x4(a2, 0, 144, 23, 23, 1, 1, 0, *(v5 + 7) & 1);
      }

      else
      {
        gleVStateProgram_MultMatrix4x4(a2, 0, v21, 23, 23, 1, 0, 0, HIBYTE(v3) & 1);
      }

      if ((*v5 & 2) != 0)
      {
        if (v20 < (WORD2(*v5) >> 8) - 1)
        {
          memset(&v299[1], 0, 64);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000802;
          *(a2 + 16) = 2;
          v25 = *(a2 + 1944);
          if (v25 == 0xFFFF)
          {
            v29 = *(a2 + 2004);
            v30 = *(a2 + 2004);
            *(a2 + 1944) = v29;
            v31 = v30 + 1;
            *(a2 + 2004) = v31;
            *&v299[1] = (v29 << 48) | 0x19C840;
            if ((v31 & 0x10000) != 0)
            {
              v26 = 0;
              *(a2 + 1944) = v31;
              *(a2 + 2004) = 1;
            }

            else
            {
              v26 = v29 << 48;
            }
          }

          else
          {
            v26 = v25 << 48;
            *&v299[1] = (v25 << 48) | 0x19C840;
          }

          *(&v299[1] + 1) = v26 | (43520 * (v20 & 3)) | 0x40;
          *(&v299[0] + 1) = v26 + 1918898176;
          if (*(v5 + 5) - 2 <= 2)
          {
            *(&v299[0] + 1) = qword_23A301138[(*(v5 + 5) - 2)] | v26;
          }

          (*(a2 + 2016))(a2, v299);
        }

        if (!v20)
        {
          memset(&v299[2], 0, 48);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
          *(a2 + 16) = 2;
          v39 = *(a2 + 1946);
          if (v39 == 0xFFFF)
          {
            v39 = *(a2 + 2004);
            *(a2 + 1946) = v39;
            *(a2 + 2004) = v39 + 1;
          }

          *&v299[1] = (v39 << 48) | 0x19C840;
          v40 = *(a2 + 1944);
          if (v40 == 0xFFFF)
          {
            v40 = *(a2 + 2004);
            *(a2 + 1944) = v40;
            *(a2 + 2004) = v40 + 1;
          }

          v28 = (v40 << 48) | 0x40;
          goto LABEL_81;
        }

        memset(v299 + 8, 0, 72);
        *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
        *(a2 + 16) = 3;
        v32 = *(a2 + 1946);
        if (v32 == 0xFFFF)
        {
          v32 = *(a2 + 2004);
          *(a2 + 1946) = v32;
          *(a2 + 2004) = v32 + 1;
        }

        *&v299[1] = (v32 << 48) | 0x19C840;
        v33 = *(a2 + 1944);
        if (v33 == 0xFFFF)
        {
          v33 = *(a2 + 2004);
          *(a2 + 1944) = v33;
          *(a2 + 2004) = v33 + 1;
        }

        v24 = ((v20 & 3) << 9) | (v33 << 48) | ((v20 & 3) << 11) | ((v20 & 3) << 13) | ((v20 & 3) << 15) | 0x40;
      }

      else
      {
        if (!v20)
        {
          memset(&v299[2], 0, 48);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
          *(a2 + 16) = 2;
          v27 = *(a2 + 1946);
          if (v27 == 0xFFFF)
          {
            v27 = *(a2 + 2004);
            *(a2 + 1946) = v27;
            *(a2 + 2004) = v27 + 1;
          }

          *&v299[1] = (v27 << 48) | 0x19C840;
          v28 = gleVStateProgram_GetAttrib(a2, 4) << 48;
LABEL_81:
          *(&v299[1] + 1) = v28;
          v36 = *(a2 + 1900);
          if (v36 == 0xFFFF)
          {
            v36 = *(a2 + 2004);
            *(a2 + 1900) = v36;
            *(a2 + 2004) = v36 + 1;
          }

LABEL_83:
          v35 = v36 << 48;
          goto LABEL_84;
        }

        memset(v299 + 8, 0, 72);
        *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
        *(a2 + 16) = 3;
        v23 = *(a2 + 1946);
        if (v23 == 0xFFFF)
        {
          v23 = *(a2 + 2004);
          *(a2 + 1946) = v23;
          *(a2 + 2004) = v23 + 1;
        }

        *&v299[1] = (v23 << 48) | 0x19C840;
        v24 = ((v20 & 3) << 9) | (gleVStateProgram_GetAttrib(a2, 4) << 48) | ((v20 & 3) << 11) | ((v20 & 3) << 13) | ((v20 & 3) << 15);
      }

      *(&v299[1] + 1) = v24;
      v34 = *(a2 + 1900);
      if (v34 == 0xFFFF)
      {
        v36 = *(a2 + 2004);
        v37 = *(a2 + 2004);
        *(a2 + 1900) = v36;
        v38 = v37 + 1;
        *(a2 + 2004) = v38;
        *&v299[2] = (v36 << 48) | 0x19C840;
        if ((v38 & 0x10000) == 0)
        {
          goto LABEL_83;
        }

        v35 = 0;
        *(a2 + 1900) = v38;
        *(a2 + 2004) = 1;
      }

      else
      {
        v35 = v34 << 48;
        *&v299[2] = (v34 << 48) | 0x19C840;
      }

LABEL_84:
      *(&v299[0] + 1) = v35 | 0x72679000;
      result = (*(a2 + 2016))(a2, v299);
      ++v20;
      v3 = *v5;
      v21 += 8;
    }

    while (v20 < (WORD2(*v5) >> 8));
  }

LABEL_90:
  v42 = HIDWORD(*(v5 + 16));
  if (v42)
  {
    v43 = -32;
    v44 = 989;
    while (2)
    {
      v45 = v42 >> (v44 + 35);
      if ((v45 & 0x1010101) == 0)
      {
        goto LABEL_118;
      }

      if (v45)
      {
        memset(v299 + 8, 0, 72);
        *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A42;
        *(a2 + 16) = 2;
        v46 = *(a2 + 1900);
        if (v46 == 0xFFFF)
        {
          v46 = *(a2 + 2004);
          *(a2 + 1900) = v46;
          *(a2 + 2004) = v46 + 1;
        }

        *&v299[1] = (v46 << 48) | 0x19C840;
        *(&v299[1] + 1) = ((gleVStateProgram_GetParam(a2, v43 + 224) << 48) | 0x19C840) + 64;
        v47 = *(a2 + 2 * v44);
        if (v47 == 0xFFFF)
        {
          v47 = *(a2 + 2004);
          *(a2 + 2 * v44) = v47;
          *(a2 + 2004) = v47 + 1;
        }

        *(&v299[0] + 1) = (v47 << 48) | 0x72641000;
        result = (*(a2 + 2016))(a2, v299);
        if ((v45 & 0x100) == 0)
        {
          goto LABEL_95;
        }
      }

      else if ((v45 & 0x100) == 0)
      {
LABEL_95:
        if ((v45 & 0x10000) != 0)
        {
          goto LABEL_108;
        }

        goto LABEL_96;
      }

      memset(v299 + 8, 0, 72);
      *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A42;
      *(a2 + 16) = 2;
      v48 = *(a2 + 1900);
      if (v48 == 0xFFFF)
      {
        v48 = *(a2 + 2004);
        *(a2 + 1900) = v48;
        *(a2 + 2004) = v48 + 1;
      }

      *&v299[1] = (v48 << 48) | 0x19C840;
      *(&v299[1] + 1) = ((gleVStateProgram_GetParam(a2, v43 + 225) << 48) | 0x19C840) + 64;
      v49 = *(a2 + 2 * v44);
      if (v49 == 0xFFFF)
      {
        v49 = *(a2 + 2004);
        *(a2 + 2 * v44) = v49;
        *(a2 + 2004) = v49 + 1;
      }

      *(&v299[0] + 1) = (v49 << 48) | 0x72621000;
      result = (*(a2 + 2016))(a2, v299);
      if ((v45 & 0x10000) != 0)
      {
LABEL_108:
        memset(v299 + 8, 0, 72);
        *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A42;
        *(a2 + 16) = 2;
        v50 = *(a2 + 1900);
        if (v50 == 0xFFFF)
        {
          v50 = *(a2 + 2004);
          *(a2 + 1900) = v50;
          *(a2 + 2004) = v50 + 1;
        }

        *&v299[1] = (v50 << 48) | 0x19C840;
        *(&v299[1] + 1) = ((gleVStateProgram_GetParam(a2, v43 + 226) << 48) | 0x19C840) + 64;
        v51 = *(a2 + 2 * v44);
        if (v51 == 0xFFFF)
        {
          v51 = *(a2 + 2004);
          *(a2 + 2 * v44) = v51;
          *(a2 + 2004) = v51 + 1;
        }

        *(&v299[0] + 1) = (v51 << 48) | 0x72611000;
        result = (*(a2 + 2016))(a2, v299);
        if ((v45 & 0x1000000) == 0)
        {
          goto LABEL_118;
        }

LABEL_113:
        memset(v299 + 8, 0, 72);
        *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A42;
        *(a2 + 16) = 2;
        v52 = *(a2 + 1900);
        if (v52 == 0xFFFF)
        {
          v52 = *(a2 + 2004);
          *(a2 + 1900) = v52;
          *(a2 + 2004) = v52 + 1;
        }

        *&v299[1] = (v52 << 48) | 0x19C840;
        *(&v299[1] + 1) = ((gleVStateProgram_GetParam(a2, v43 + 227) << 48) | 0x19C840) + 64;
        v53 = *(a2 + 2 * v44);
        if (v53 == 0xFFFF)
        {
          v53 = *(a2 + 2004);
          *(a2 + 2 * v44) = v53;
          *(a2 + 2004) = v53 + 1;
        }

        *(&v299[0] + 1) = (v53 << 48) | 0x72609000;
        result = (*(a2 + 2016))(a2, v299);
        goto LABEL_118;
      }

LABEL_96:
      if ((v45 & 0x1000000) != 0)
      {
        goto LABEL_113;
      }

LABEL_118:
      ++v44;
      v43 += 4;
      if (!v43)
      {
        break;
      }

      continue;
    }
  }

  v3 = *v298;
  if ((*v298 & 0x400) != 0)
  {
    goto LABEL_120;
  }

LABEL_3:
  if ((v3 & 0x100) != 0)
  {
    goto LABEL_239;
  }

LABEL_243:
  v133 = *v298;
  if ((*v298 & 0x1000) != 0)
  {
    memset(&v299[1] + 8, 0, 56);
    *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
    *(a2 + 16) = 1;
    *&v299[1] = (gleVStateProgram_GetAttrib(a2, 2) << 48) | 0x19C800;
    v134 = a2 + 1692;
    v135 = *(a2 + 1704);
    if (v135 == 0xFFFF)
    {
      v136 = *(a2 + 2000);
      v135 = *(a2 + 2000);
      *(a2 + 1704) = v136;
      *(v134 + 4 * v136 + 2) = 3;
      *(a2 + 2000) = v136 + 1;
    }

    *(&v299[0] + 1) = ((v135 << 48) | 0x72679000) + 0x2000;
    result = (*(a2 + 2016))(a2, v299);
    v133 = *v298;
    if ((*v298 & 0x1000000000000) != 0)
    {
      memset(&v299[1] + 8, 0, 56);
      *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
      *(a2 + 16) = 1;
      *&v299[1] = (gleVStateProgram_GetAttrib(a2, 2) << 48) | 0x19C800;
      v137 = *(a2 + 1708);
      if (v137 == 0xFFFF)
      {
        v138 = *(a2 + 2000);
        v137 = *(a2 + 2000);
        *(a2 + 1708) = v138;
        *(v134 + 4 * v138 + 2) = 4;
        *(a2 + 2000) = v138 + 1;
      }

      *(&v299[0] + 1) = ((v137 << 48) | 0x72679000) + 0x2000;
      result = (*(a2 + 2016))(a2, v299);
      v133 = *v298;
    }

    if ((v133 & 0x2000) == 0)
    {
LABEL_245:
      if ((v133 & 0x4000) == 0)
      {
        goto LABEL_481;
      }

LABEL_261:
      v144 = *(v298 + 32);
      if ((v144 & 0x40) == 0 && (~*(v298 + 8) & 0xC0000000) != 0)
      {
LABEL_277:
        if ((v144 & 0x40) != 0)
        {
          memset(v299 + 8, 0, 72);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
          *(a2 + 16) = 3;
          v161 = *(a2 + 1962);
          if (v161 == 0xFFFF)
          {
            v161 = *(a2 + 2004);
            *(a2 + 1962) = v161;
            *(a2 + 2004) = v161 + 1;
          }

          *&v299[1] = (v161 << 48) | 0x19C840;
          v162 = a2 + 260;
          v163 = *(a2 + 1648);
          if (v163 == 0xFFFF)
          {
            v168 = *(a2 + 1998);
            v169 = *(a2 + 1998);
            *(a2 + 1648) = v168;
            *(v162 + 4 * v168 + 2) = 347;
            v170 = v169 + 1;
            *(a2 + 1998) = v170;
            *(&v299[1] + 1) = (v168 << 48) | 0x15480;
            if ((v170 & 0x10000) != 0)
            {
              v164 = 0;
              *(a2 + 1648) = v170;
              *(v162 + 4 * v170 + 2) = 347;
              *(a2 + 1998) = 1;
            }

            else
            {
              v164 = v168 << 48;
            }
          }

          else
          {
            v164 = v163 << 48;
            *(&v299[1] + 1) = (v163 << 48) | 0x15480;
          }

          *&v299[2] = v164 | 0xAA80;
          v178 = *(a2 + 1954);
          if (v178 == 0xFFFF)
          {
            v178 = *(a2 + 2004);
            *(a2 + 1954) = v178;
            *(a2 + 2004) = v178 + 1;
          }

          *(&v299[0] + 1) = (v178 << 48) | 0x72679000;
          (*(a2 + 2016))(a2, v299);
          memset(v299 + 8, 0, 72);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
          *(a2 + 16) = 3;
          v179 = *(a2 + 1962);
          if (v179 == 0xFFFF)
          {
            v179 = *(a2 + 2004);
            *(a2 + 1962) = v179;
            *(a2 + 2004) = v179 + 1;
          }

          *&v299[1] = (v179 << 48) | 0x19C840;
          v180 = *(a2 + 1954);
          if (v180 == 0xFFFF)
          {
            v180 = *(a2 + 2004);
            *(a2 + 1954) = v180;
            *(a2 + 2004) = v180 + 1;
          }

          *(&v299[1] + 1) = (v180 << 48) | 0x19C840;
          v181 = *(a2 + 1648);
          if (v181 == 0xFFFF)
          {
            v182 = *(a2 + 1998);
            v181 = *(a2 + 1998);
            *(a2 + 1648) = v182;
            *(v162 + 4 * v182 + 2) = 347;
            *(a2 + 1998) = v182 + 1;
            v180 = *(a2 + 1954);
          }

          *&v299[2] = ((v181 << 48) | 0x19C840) + 64;
          if (v180 == 0xFFFF)
          {
            v180 = *(a2 + 2004);
            *(a2 + 1954) = v180;
            *(a2 + 2004) = v180 + 1;
          }

          *(&v299[0] + 1) = (v180 << 48) | 0x72679000;
          (*(a2 + 2016))(a2, v299);
          memset(&v299[1] + 8, 0, 56);
          v183 = 8 * (*(a2 + 16) & 7);
          *(a2 + 16) = 1;
          *&v299[0] = v183 | 0x100100341;
          v184 = *(a2 + 1954);
          if (v184 == 0xFFFF)
          {
            v184 = *(a2 + 2004);
            *(a2 + 1954) = v184;
            *(a2 + 2004) = v184 + 1;
          }

          *&v299[1] = (v184 << 48) | 0x19C840;
          v185 = *(a2 + 1946);
          if (v185 == 0xFFFF)
          {
            v185 = *(a2 + 2004);
            *(a2 + 1946) = v185;
            *(a2 + 2004) = v185 + 1;
          }

          *(&v299[0] + 1) = (v185 << 48) | 0x72679000;
          (*(a2 + 2016))(a2, v299);
          memset(v299 + 8, 0, 72);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
          *(a2 + 16) = 2;
          v186 = *(a2 + 1946);
          if (v186 == 0xFFFF)
          {
            v186 = *(a2 + 2004);
            *(a2 + 1946) = v186;
            *(a2 + 2004) = v186 + 1;
          }

          *&v299[1] = (v186 << 48) | 0x19C840;
          if ((*(v298 + 32) & 0x20) != 0)
          {
            v189 = gleVStateProgram_GetAttrib(a2, 6) << 48;
          }

          else
          {
            v187 = *(a2 + 1652);
            if (v187 == 0xFFFF)
            {
              v188 = *(a2 + 1998);
              v187 = *(a2 + 1998);
              *(a2 + 1652) = v188;
              *(v162 + 4 * v188 + 2) = 348;
              *(a2 + 1998) = v188 + 1;
            }

            v189 = ((v187 << 48) | 0x19C840) + 64;
          }

          *(&v299[1] + 1) = v189;
          v190 = *(a2 + 1946);
          if (v190 == 0xFFFF)
          {
            v190 = *(a2 + 2004);
            *(a2 + 1946) = v190;
            *(a2 + 2004) = v190 + 1;
          }

          *(&v299[0] + 1) = (v190 << 48) | 0x72679000;
          (*(a2 + 2016))(a2, v299);
          memset(&v299[1] + 8, 0, 56);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000B42;
          *(a2 + 16) = 2;
          v191 = *(a2 + 1946);
          if (v191 == 0xFFFF)
          {
            v191 = *(a2 + 2004);
            *(a2 + 1946) = v191;
            *(a2 + 2004) = v191 + 1;
          }

          *&v299[1] = (v191 << 48) | 0x19C840;
          v192 = *(a2 + 1652);
          if (v192 == 0xFFFF)
          {
            v193 = *(a2 + 1998);
            v192 = *(a2 + 1998);
            *(a2 + 1652) = v193;
            *(v162 + 4 * v193 + 2) = 348;
            *(a2 + 1998) = v193 + 1;
            v191 = *(a2 + 1946);
          }

          *(&v299[1] + 1) = (v192 << 48) | 0xAA80;
          if (v191 == 0xFFFF)
          {
            v191 = *(a2 + 2004);
            *(a2 + 1946) = v191;
            *(a2 + 2004) = v191 + 1;
          }

          *(&v299[0] + 1) = (v191 << 48) | 0x72679000;
          (*(a2 + 2016))(a2, v299);
          memset(&v299[1] + 8, 0, 56);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000B02;
          *(a2 + 16) = 2;
          v194 = *(a2 + 1946);
          if (v194 == 0xFFFF)
          {
            v194 = *(a2 + 2004);
            *(a2 + 1946) = v194;
            *(a2 + 2004) = v194 + 1;
          }

          *&v299[1] = (v194 << 48) | 0x19C840;
          v195 = *(a2 + 1652);
          if (v195 == 0xFFFF)
          {
            v196 = *(a2 + 1998);
            v195 = *(a2 + 1998);
            *(a2 + 1652) = v196;
            *(v162 + 4 * v196 + 2) = 348;
            *(a2 + 1998) = v196 + 1;
          }

          *(&v299[1] + 1) = (v195 << 48) | 0x15480;
        }

        else
        {
          if ((v144 & 0x80) == 0)
          {
            goto LABEL_354;
          }

          if ((v144 & 0x800) != 0)
          {
            memset(v299 + 8, 0, 72);
            *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
            *(a2 + 16) = 2;
            if ((*(v298 + 32) & 0x20) != 0)
            {
              v176 = gleVStateProgram_GetAttrib(a2, 6) << 48;
            }

            else
            {
              v174 = *(a2 + 1652);
              if (v174 == 0xFFFF)
              {
                v175 = *(a2 + 1998);
                v174 = *(a2 + 1998);
                *(a2 + 1652) = v175;
                *(a2 + 4 * v175 + 262) = 348;
                *(a2 + 1998) = v175 + 1;
              }

              v176 = ((v174 << 48) | 0x19C840) + 64;
            }

            *&v299[1] = v176;
            *(&v299[1] + 1) = (gleVStateProgram_GetParam(a2, 351) << 48) | 0x15480;
            v199 = *(a2 + 1946);
            if (v199 == 0xFFFF)
            {
              v199 = *(a2 + 2004);
              *(a2 + 1946) = v199;
              *(a2 + 2004) = v199 + 1;
            }

            *(&v299[0] + 1) = (v199 << 48) | 0x72679000;
            (*(a2 + 2016))(a2, v299);
            memset(&v299[1] + 8, 0, 56);
            *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
            *(a2 + 16) = 1;
            v200 = *(a2 + 1946);
            if (v200 == 0xFFFF)
            {
              v200 = *(a2 + 2004);
              *(a2 + 1946) = v200;
              *(a2 + 2004) = v200 + 1;
            }

            v160 = (v200 << 48) | 0x19C840;
          }

          else
          {
            memset(&v299[1] + 8, 0, 56);
            *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
            *(a2 + 16) = 1;
            if ((*(v298 + 32) & 0x20) != 0)
            {
              v160 = gleVStateProgram_GetAttrib(a2, 6) << 48;
            }

            else
            {
              v158 = *(a2 + 1652);
              if (v158 == 0xFFFF)
              {
                v159 = *(a2 + 1998);
                v158 = *(a2 + 1998);
                *(a2 + 1652) = v159;
                *(a2 + 4 * v159 + 262) = 348;
                *(a2 + 1998) = v159 + 1;
              }

              v160 = ((v158 << 48) | 0x19C840) + 64;
            }
          }

          *&v299[1] = v160;
        }

        v201 = *(a2 + 1700);
        if (v201 == 0xFFFF)
        {
          v202 = *(a2 + 2000);
          v201 = *(a2 + 2000);
          *(a2 + 1700) = v202;
          *(a2 + 4 * v202 + 1694) = 2;
          *(a2 + 2000) = v202 + 1;
        }

        *(&v299[0] + 1) = (v201 << 48) | 0x72643000;
        result = (*(a2 + 2016))(a2, v299);
        *(a2 + 2032) |= 2u;
        v144 = *(v298 + 32);
LABEL_354:
        if ((v144 & 2) == 0)
        {
          if ((v144 & 1) == 0)
          {
LABEL_457:
            if ((*(v298 + 7) & 0x40) != 0)
            {
              memset(&v299[1] + 8, 0, 56);
              *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
              *(a2 + 16) = 1;
              v261 = *(a2 + 1900);
              if (v261 == 0xFFFF)
              {
                v261 = *(a2 + 2004);
                *(a2 + 1900) = v261;
                *(a2 + 2004) = v261 + 1;
              }

              *&v299[1] = (v261 << 48) | 0x19C840;
              v262 = *(a2 + 1880);
              if (v262 == 0xFFFF)
              {
                v263 = *(a2 + 2000);
                v262 = *(a2 + 2000);
                *(a2 + 1880) = v263;
                *(a2 + 4 * v263 + 1694) = 47;
                *(a2 + 2000) = v263 + 1;
              }

              *(&v299[0] + 1) = ((v262 << 48) | 0x72679000) + 0x2000;
              result = (*(a2 + 2016))(a2, v299);
            }

            if ((*(v298 + 11) & 0x3F) != 0)
            {
              if ((*v298 & 0x40) != 0)
              {
                v269 = 0;
                v270 = a2 + 1692;
                do
                {
                  if (((1 << v269) & *(v298 + 11) & 0x3F) != 0)
                  {
                    memset(v299 + 8, 0, 72);
                    *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A42;
                    *(a2 + 16) = 2;
                    v271 = *(a2 + 1900);
                    if (v271 == 0xFFFF)
                    {
                      v271 = *(a2 + 2004);
                      *(a2 + 1900) = v271;
                      *(a2 + 2004) = v271 + 1;
                    }

                    *&v299[1] = (v271 << 48) | 0x19C840;
                    *(&v299[1] + 1) = ((gleVStateProgram_GetParam(a2, v269 + 352) << 48) | 0x19C840) + 64;
                    v272 = (v269 >> 2) | 0x30;
                    v273 = (v270 + 4 * v272);
                    v274 = *v273;
                    if (v274 == 0xFFFF)
                    {
                      v275 = *(a2 + 2000);
                      v274 = *(a2 + 2000);
                      *v273 = v275;
                      *(v270 + 4 * v275 + 2) = v272;
                      *(a2 + 2000) = v275 + 1;
                    }

                    v276 = vceqq_s32(vdupq_n_s32(v269 & 3), xmmword_23A300DF0);
                    v277.i64[0] = v276.u32[0];
                    v277.i64[1] = v276.u32[1];
                    v278 = v277;
                    v277.i64[0] = v276.u32[2];
                    v277.i64[1] = v276.u32[3];
                    v279 = vorrq_s8(vandq_s8(v278, xmmword_23A3009F0), vandq_s8(v277, xmmword_23A3009E0));
                    *(&v299[0] + 1) = *&vorr_s8(*v279.i8, *&vextq_s8(v279, v279, 8uLL)) | (v274 << 48) | 0x72603000;
                    result = (*(a2 + 2016))(a2, v299);
                  }

                  ++v269;
                }

                while (v269 != 6);
              }

              else
              {
                v264 = 0;
                v265 = 1;
                do
                {
                  v266 = v265;
                  if ((*(v298 + 11) >> v264))
                  {
                    memset(&v299[1] + 8, 0, 56);
                    *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
                    *(a2 + 16) = 1;
                    *&v299[1] = (gleVStateProgram_GetAttrib(a2, 58) << 48) | 0x19C800;
                    v267 = *(a2 + 1884);
                    if (v267 == 0xFFFF)
                    {
                      v268 = *(a2 + 2000);
                      v267 = *(a2 + 2000);
                      *(a2 + 1884) = v268;
                      *(a2 + 1692 + 4 * v268 + 2) = 48;
                      *(a2 + 2000) = v268 + 1;
                    }

                    *(&v299[0] + 1) = ((v267 << 48) | 0x72679000) + 0x2000;
                    result = (*(a2 + 2016))(a2, v299);
                  }

                  v265 = 0;
                  v264 = 1;
                }

                while ((v266 & 1) != 0);
              }
            }

            v133 = *v298;
            goto LABEL_481;
          }

          v203 = *(v298 + 8) >> 30;
          memset(&v299[1] + 8, 0, 56);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
          *(a2 + 16) = 1;
          if (v203 == 3)
          {
            v235 = *(a2 + 1962);
            if (v235 == 0xFFFF)
            {
              v235 = *(a2 + 2004);
              *(a2 + 1962) = v235;
              *(a2 + 2004) = v235 + 1;
            }

            v236 = (v235 << 48) | 0x19C840;
          }

          else
          {
            if (v203 == 1)
            {
              *&v299[1] = gleVStateProgram_GetAttrib(a2, 5) << 48;
              v204 = *(a2 + 1696);
              if (v204 == 0xFFFF)
              {
                v205 = *(a2 + 2000);
                v204 = *(a2 + 2000);
                *(a2 + 1696) = v205;
                *(a2 + 4 * v205 + 1694) = 1;
                *(a2 + 2000) = v205 + 1;
              }

              v206 = 1919168512;
LABEL_447:
              v257 = v206 | (v204 << 48);
LABEL_456:
              *(&v299[0] + 1) = v257;
              result = (*(a2 + 2016))(a2, v299);
              goto LABEL_457;
            }

            v237 = *(a2 + 1900);
            if (v237 == 0xFFFF)
            {
              v237 = *(a2 + 2004);
              *(a2 + 1900) = v237;
              *(a2 + 2004) = v237 + 1;
            }

            v236 = ((v237 << 48) | 0x15480) - 64;
          }

          *&v299[1] = v236;
          v238 = *(a2 + 1696);
          if (v238 == 0xFFFF)
          {
            v239 = *(a2 + 2000);
            v238 = *(a2 + 2000);
            *(a2 + 1696) = v239;
            *(a2 + 4 * v239 + 1694) = 1;
            *(a2 + 2000) = v239 + 1;
          }

          v240 = 1919168512;
LABEL_455:
          v257 = v240 | (v238 << 48);
          goto LABEL_456;
        }

        v207 = *(v298 + 8) >> 30;
        memset(&v299[1] + 8, 0, 56);
        *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
        *(a2 + 16) = 1;
        if (v207 == 2)
        {
          v209 = *(a2 + 1900);
          if (v209 == 0xFFFF)
          {
            v209 = *(a2 + 2004);
            *(a2 + 1900) = v209;
            *(a2 + 2004) = v209 + 1;
          }

          v210 = ((v209 << 48) | 0x15480) - 64;
        }

        else
        {
          if (v207 == 1)
          {
            *&v299[1] = gleVStateProgram_GetAttrib(a2, 5) << 48;
            v208 = *(a2 + 1970);
            goto LABEL_371;
          }

          v211 = *(a2 + 1962);
          if (v211 == 0xFFFF)
          {
            v211 = *(a2 + 2004);
            *(a2 + 1962) = v211;
            *(a2 + 2004) = v211 + 1;
          }

          v210 = (v211 << 48) | 0x19C840;
        }

        *&v299[1] = v210;
        v208 = *(a2 + 1970);
LABEL_371:
        if (v208 == 0xFFFF)
        {
          v208 = *(a2 + 2004);
          *(a2 + 1970) = v208;
          *(a2 + 2004) = v208 + 1;
        }

        *(&v299[0] + 1) = (v208 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, v299);
        v212 = *(v298 + 32);
        if (v212)
        {
          memset(&v299[1] + 8, 0, 56);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
          *(a2 + 16) = 1;
          v213 = *(a2 + 1970);
          if (v213 == 0xFFFF)
          {
            v213 = *(a2 + 2004);
            *(a2 + 1970) = v213;
            *(a2 + 2004) = v213 + 1;
          }

          *&v299[1] = (v213 << 48) | 0x19C840;
          v214 = *(a2 + 1696);
          if (v214 == 0xFFFF)
          {
            v215 = *(a2 + 2000);
            v214 = *(a2 + 2000);
            *(a2 + 1696) = v215;
            *(a2 + 4 * v215 + 1694) = 1;
            *(a2 + 2000) = v215 + 1;
          }

          *(&v299[0] + 1) = (v214 << 48) | 0x72643000;
          (*(a2 + 2016))(a2, v299);
          v212 = *(v298 + 32);
        }

        v216 = (v212 >> 2) & 3;
        if (v216 <= 1)
        {
          if (v216)
          {
            if ((v212 & 0x10) == 0)
            {
              memset(&v299[1] + 8, 0, 56);
              *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000081;
              *(a2 + 16) = 1;
              v217 = *(a2 + 1970);
              if (v217 == 0xFFFF)
              {
                v217 = *(a2 + 2004);
                *(a2 + 1970) = v217;
                *(a2 + 2004) = v217 + 1;
              }

              *&v299[1] = (v217 << 48) | 0x40;
              v218 = *(a2 + 1954);
              if (v218 == 0xFFFF)
              {
                v218 = *(a2 + 2004);
                *(a2 + 1954) = v218;
                *(a2 + 2004) = v218 + 1;
              }

              *(&v299[0] + 1) = (v218 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, v299);
            }

            memset(v299 + 8, 0, 72);
            *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
            *(a2 + 16) = 3;
            if ((*(v298 + 32) & 0x10) != 0)
            {
              v219 = *(a2 + 1970);
              v220 = 64;
              if (v219 == 0xFFFF)
              {
                v221 = (a2 + 1970);
                goto LABEL_417;
              }
            }

            else
            {
              v219 = *(a2 + 1954);
              v220 = 1689664;
              if (v219 == 0xFFFF)
              {
                v221 = (a2 + 1954);
                v220 = 1689664;
LABEL_417:
                v219 = *(a2 + 2004);
                *v221 = v219;
                *(a2 + 2004) = v219 + 1;
              }
            }

            *&v299[1] = v220 | (v219 << 48) | 0x10;
            v241 = a2 + 260;
            v242 = *(a2 + 1656);
            if (v242 == 0xFFFF)
            {
              v243 = *(a2 + 1998);
              v242 = *(a2 + 1998);
              *(a2 + 1656) = v243;
              *(v241 + 4 * v243 + 2) = 349;
              *(a2 + 1998) = v243 + 1;
            }

            *(&v299[1] + 1) = (v242 << 48) | 0x1FE80;
            v244 = *(a2 + 1660);
            if (v244 == 0xFFFF)
            {
              v245 = *(a2 + 1998);
              v244 = *(a2 + 1998);
              *(a2 + 1660) = v245;
              *(v241 + 4 * v245 + 2) = 350;
              *(a2 + 1998) = v245 + 1;
            }

            *&v299[2] = (v244 << 48) | 0x1FE80;
            v246 = *(a2 + 1954);
            if (v246 == 0xFFFF)
            {
              v246 = *(a2 + 2004);
              *(a2 + 1954) = v246;
              *(a2 + 2004) = v246 + 1;
            }

            *(&v299[0] + 1) = (v246 << 48) | 0x72679000;
            (*(a2 + 2016))(a2, v299);
            memset(v299 + 8, 0, 72);
            *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000B42;
            *(a2 + 16) = 2;
            v247 = *(a2 + 1954);
            if (v247 == 0xFFFF)
            {
              v247 = *(a2 + 2004);
              *(a2 + 1954) = v247;
              *(a2 + 2004) = v247 + 1;
            }

            *&v299[1] = (v247 << 48) | 0x19C840;
            *(&v299[1] + 1) = (gleVStateProgram_GetParam(a2, 351) << 48) | 0xAA80;
            v248 = *(a2 + 1954);
            if (v248 == 0xFFFF)
            {
              v248 = *(a2 + 2004);
              *(a2 + 1954) = v248;
              *(a2 + 2004) = v248 + 1;
            }

            *(&v299[0] + 1) = (v248 << 48) | 0x72679000;
            (*(a2 + 2016))(a2, v299);
            memset(v299 + 8, 0, 72);
            *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000B02;
            *(a2 + 16) = 2;
            v249 = *(a2 + 1954);
            if (v249 == 0xFFFF)
            {
              v249 = *(a2 + 2004);
              *(a2 + 1954) = v249;
              *(a2 + 2004) = v249 + 1;
            }

            *&v299[1] = (v249 << 48) | 0x19C840;
            *(&v299[1] + 1) = (gleVStateProgram_GetParam(a2, 351) << 48) | 0x15480;
LABEL_444:
            v204 = *(a2 + 1696);
            if (v204 == 0xFFFF)
            {
              v256 = *(a2 + 2000);
              v204 = *(a2 + 2000);
              *(a2 + 1696) = v256;
              *(a2 + 4 * v256 + 1694) = 1;
              *(a2 + 2000) = v256 + 1;
            }

            v206 = 1919037440;
            goto LABEL_447;
          }

LABEL_396:
          memset(&v299[2], 0, 48);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
          *(a2 + 16) = 2;
          v224 = *(a2 + 1970);
          if (v224 == 0xFFFF)
          {
            v224 = *(a2 + 2004);
            *(a2 + 1970) = v224;
            *(a2 + 2004) = v224 + 1;
          }

          *&v299[1] = (v224 << 48) | 0x40;
          v225 = *(a2 + 1660);
          if (v225 == 0xFFFF)
          {
            v226 = *(a2 + 1998);
            v225 = *(a2 + 1998);
            *(a2 + 1660) = v226;
            *(a2 + 4 * v226 + 262) = 350;
            *(a2 + 1998) = v226 + 1;
          }

          *(&v299[1] + 1) = (v225 << 48) | 0xAA80;
          v227 = *(a2 + 1954);
          if (v227 == 0xFFFF)
          {
            v227 = *(a2 + 2004);
            *(a2 + 1954) = v227;
            *(a2 + 2004) = v227 + 1;
          }

          *(&v299[0] + 1) = (v227 << 48) | 0x72679000;
          (*(a2 + 2016))(a2, v299);
          memset(&v299[1], 0, 64);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
          *(a2 + 16) = 2;
          v228 = *(a2 + 1954);
          if (v228 == 0xFFFF)
          {
            v231 = *(a2 + 2004);
            v232 = *(a2 + 2004);
            *(a2 + 1954) = v231;
            v233 = v232 + 1;
            *(a2 + 2004) = v232 + 1;
            v230 = (v231 << 48) | 0x19C840;
            *&v299[1] = v230;
            if ((v233 & 0x10000) != 0)
            {
              *(a2 + 1954) = v233;
              *(a2 + 2004) = 1;
              v230 = 1689664;
              v234 = 1919389696;
LABEL_450:
              *(&v299[1] + 1) = v230;
              *(&v299[0] + 1) = v234;
              (*(a2 + 2016))(a2, v299);
              memset(&v299[1] + 8, 0, 56);
              v258 = *(a2 + 16);
              *(a2 + 16) = 1;
              *&v299[0] = (8 * (v258 & 7)) | 0x100000401;
              v259 = *(a2 + 1954);
              if (v259 == 0xFFFF)
              {
                v259 = *(a2 + 2004);
                *(a2 + 1954) = v259;
                *(a2 + 2004) = v259 + 1;
              }

              *&v299[1] = (v259 << 48) | 0x50;
              v238 = *(a2 + 1696);
              if (v238 == 0xFFFF)
              {
                v260 = *(a2 + 2000);
                v238 = *(a2 + 2000);
                *(a2 + 1696) = v260;
                *(a2 + 4 * v260 + 1694) = 1;
                *(a2 + 2000) = v260 + 1;
              }

              v240 = 1919037440;
              goto LABEL_455;
            }

            v229 = v231 << 48;
          }

          else
          {
            v229 = v228 << 48;
            v230 = (v228 << 48) | 0x19C840;
            *&v299[1] = v230;
          }

          v234 = v229 | 0x72679000;
          goto LABEL_450;
        }

        if (v216 != 2)
        {
          goto LABEL_396;
        }

        if ((v212 & 0x10) != 0)
        {
          memset(v299 + 8, 0, 72);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000B42;
          *(a2 + 16) = 2;
          v250 = *(a2 + 1970);
          if (v250 == 0xFFFF)
          {
            v250 = *(a2 + 2004);
            *(a2 + 1970) = v250;
            *(a2 + 2004) = v250 + 1;
          }

          *&v299[1] = (v250 << 48) | 0x40;
          *(&v299[1] + 1) = (gleVStateProgram_GetParam(a2, 351) << 48) | 0xAA80;
          v223 = *(a2 + 1954);
          if (v223 != 0xFFFF)
          {
            goto LABEL_435;
          }
        }

        else
        {
          memset(&v299[1] + 8, 0, 56);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000081;
          *(a2 + 16) = 1;
          v222 = *(a2 + 1970);
          if (v222 == 0xFFFF)
          {
            v222 = *(a2 + 2004);
            *(a2 + 1970) = v222;
            *(a2 + 2004) = v222 + 1;
          }

          *&v299[1] = (v222 << 48) | 0x40;
          v223 = *(a2 + 1954);
          if (v223 != 0xFFFF)
          {
            goto LABEL_435;
          }
        }

        v223 = *(a2 + 2004);
        *(a2 + 1954) = v223;
        *(a2 + 2004) = v223 + 1;
LABEL_435:
        *(&v299[0] + 1) = (v223 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, v299);
        memset(&v299[2], 0, 48);
        *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
        *(a2 + 16) = 2;
        v251 = *(a2 + 1954);
        if (v251 == 0xFFFF)
        {
          v251 = *(a2 + 2004);
          *(a2 + 1954) = v251;
          *(a2 + 2004) = v251 + 1;
        }

        *&v299[1] = (v251 << 48) | 0x19C840;
        v252 = *(a2 + 1660);
        if (v252 == 0xFFFF)
        {
          v253 = *(a2 + 1998);
          v252 = *(a2 + 1998);
          *(a2 + 1660) = v253;
          *(a2 + 4 * v253 + 262) = 350;
          *(a2 + 1998) = v253 + 1;
          v251 = *(a2 + 1954);
        }

        *(&v299[1] + 1) = (v252 << 48) | 0x80;
        if (v251 == 0xFFFF)
        {
          v251 = *(a2 + 2004);
          *(a2 + 1954) = v251;
          *(a2 + 2004) = v251 + 1;
        }

        *(&v299[0] + 1) = (v251 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, v299);
        memset(&v299[1] + 8, 0, 56);
        v254 = *(a2 + 16);
        *(a2 + 16) = 1;
        *&v299[0] = (8 * (v254 & 7)) | 0x100000401;
        v255 = *(a2 + 1954);
        if (v255 == 0xFFFF)
        {
          v255 = *(a2 + 2004);
          *(a2 + 1954) = v255;
          *(a2 + 2004) = v255 + 1;
        }

        *&v299[1] = (v255 << 48) | 0x50;
        goto LABEL_444;
      }

      memset(&v299[1], 0, 64);
      *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A02;
      *(a2 + 16) = 2;
      v145 = *(a2 + 1900);
      if (v145 == 0xFFFF)
      {
        v147 = *(a2 + 2004);
        v148 = *(a2 + 2004);
        *(a2 + 1900) = v147;
        v149 = v148 + 1;
        *(a2 + 2004) = v149;
        v146 = (v147 << 48) | 0x19C840;
        *&v299[1] = v146;
        if ((v149 & 0x10000) != 0)
        {
          *(a2 + 1900) = v149;
          *(a2 + 2004) = 1;
          v146 = 1689664;
        }
      }

      else
      {
        v146 = (v145 << 48) | 0x19C840;
        *&v299[1] = v146;
      }

      *(&v299[1] + 1) = v146;
      v150 = *(a2 + 1946);
      if (v150 == 0xFFFF)
      {
        v150 = *(a2 + 2004);
        *(a2 + 1946) = v150;
        *(a2 + 2004) = v150 + 1;
      }

      *(&v299[0] + 1) = (v150 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, v299);
      v151 = *v298;
      memset(&v299[1], 0, 64);
      v152 = 8 * (*(a2 + 16) & 7);
      *(a2 + 16) = 1;
      if ((v151 & 0x1000000000000000) != 0)
      {
        *&v299[0] = v152 + 0x100100301;
        v156 = *(a2 + 1946);
        if (v156 == 0xFFFF)
        {
          v156 = *(a2 + 2004);
          *(a2 + 1946) = v156;
          *(a2 + 2004) = v156 + 1;
        }

        *&v299[1] = (v156 << 48) | 0x19C840;
        v157 = *(a2 + 1962);
        v155 = v298;
        if (v157 != 0xFFFF)
        {
          goto LABEL_276;
        }
      }

      else
      {
        *&v299[0] = v152 | 0x100100341;
        v153 = *(a2 + 1946);
        if (v153 == 0xFFFF)
        {
          v171 = *(a2 + 2004);
          v172 = *(a2 + 2004);
          *(a2 + 1946) = v171;
          v173 = v172 + 1;
          *(a2 + 2004) = v173;
          *&v299[1] = (v171 << 48) | 0x19C840;
          v155 = v298;
          if ((v173 & 0x10000) != 0)
          {
            v154 = 0;
            *(a2 + 1946) = v173;
            *(a2 + 2004) = 1;
          }

          else
          {
            v154 = v171 << 48;
          }
        }

        else
        {
          v154 = v153 << 48;
          *&v299[1] = (v153 << 48) | 0x19C840;
          v155 = v298;
        }

        *(&v299[0] + 1) = v154 | 0x72679000;
        (*(a2 + 2016))(a2, v299);
        memset(&v299[1] + 8, 0, 56);
        v197 = 8 * (*(a2 + 16) & 7);
        *(a2 + 16) = 1;
        *&v299[0] = v197 | 0x100100381;
        v198 = *(a2 + 1946);
        if (v198 == 0xFFFF)
        {
          v198 = *(a2 + 2004);
          *(a2 + 1946) = v198;
          *(a2 + 2004) = v198 + 1;
        }

        *&v299[1] = (v198 << 48) | 0x19C840;
        v157 = *(a2 + 1962);
        if (v157 != 0xFFFF)
        {
          goto LABEL_276;
        }
      }

      v157 = *(a2 + 2004);
      *(a2 + 1962) = v157;
      *(a2 + 2004) = v157 + 1;
LABEL_276:
      *(&v299[0] + 1) = (v157 << 48) | 0x72679000;
      result = (*(a2 + 2016))(a2, v299);
      v144 = *(v155 + 32);
      goto LABEL_277;
    }
  }

  else if ((v133 & 0x2000) == 0)
  {
    goto LABEL_245;
  }

  memset(&v299[1] + 8, 0, 56);
  *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
  *(a2 + 16) = 1;
  *&v299[1] = (gleVStateProgram_GetAttrib(a2, 3) << 48) | 0x19C800;
  v139 = a2 + 1692;
  v140 = *(a2 + 1712);
  if (v140 == 0xFFFF)
  {
    v141 = *(a2 + 2000);
    v140 = *(a2 + 2000);
    *(a2 + 1712) = v141;
    *(v139 + 4 * v141 + 2) = 5;
    *(a2 + 2000) = v141 + 1;
  }

  *(&v299[0] + 1) = ((v140 << 48) | 0x72679000) + 0x2000;
  result = (*(a2 + 2016))(a2, v299);
  v133 = *v298;
  if ((*v298 & 0x1000000000000) != 0)
  {
    memset(&v299[1] + 8, 0, 56);
    *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
    *(a2 + 16) = 1;
    *&v299[1] = (gleVStateProgram_GetAttrib(a2, 3) << 48) | 0x19C800;
    v142 = *(a2 + 1716);
    if (v142 == 0xFFFF)
    {
      v143 = *(a2 + 2000);
      v142 = *(a2 + 2000);
      *(a2 + 1716) = v143;
      *(v139 + 4 * v143 + 2) = 6;
      *(a2 + 2000) = v143 + 1;
    }

    *(&v299[0] + 1) = ((v142 << 48) | 0x72679000) + 0x2000;
    result = (*(a2 + 2016))(a2, v299);
    v133 = *v298;
  }

  if ((v133 & 0x4000) != 0)
  {
    goto LABEL_261;
  }

LABEL_481:
  v280 = v298;
  if ((v133 & 0x800) != 0)
  {
    result = gleVStateProgram_LightingStage(v298, a2);
    v133 = *v298;
  }

  if ((v133 & 0xFF0000) != 0)
  {
    v281 = BYTE2(v133);
    if (BYTE2(v133))
    {
      v282 = 0;
      v283 = 0;
      v297 = *(v298 + 16) | *(v298 + 24) | ((*(v298 + 24) | *(v298 + 16)) >> 32);
      v284 = a2 + 1978;
      v285 = 80;
      memset(v299, 0, 80);
      do
      {
        if (v281)
        {
          if (((v297 >> v283) & 0x1010101) != 0)
          {
            if (((v297 >> v283) & 0x1010101) != 0x1010101)
            {
              memset(&v299[1] + 8, 0, 56);
              *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
              *(a2 + 16) = 1;
              *&v299[1] = (gleVStateProgram_GetAttrib(a2, (v283 + 8)) << 48) | 0x19C800;
              v286 = *(v284 + 2 * v283);
              if (v286 == 0xFFFF)
              {
                v286 = *(a2 + 2004);
                *(v284 + 2 * v283) = v286;
                *(a2 + 2004) = v286 + 1;
              }

              *(&v299[0] + 1) = ~(v297 >> v283 << 18) & 0x40000 | (v286 << 48) | ~(v297 >> v283 << 9) & 0x20000 | (~(v297 >> v283) & 0x10000) | ~(v297 >> v283 >> 9) & 0x8000 | 0x72601000;
              (*(a2 + 2016))(a2, v299);
            }

            if (((1 << v283) & BYTE3(*v298)) != 0)
            {
              memset(&v299[1] + 8, 0, 56);
              *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
              *(a2 + 16) = 1;
              v287 = *(v284 + 2 * v283);
              if (v287 == 0xFFFF)
              {
                v287 = *(a2 + 2004);
                *(v284 + 2 * v283) = v287;
                *(a2 + 2004) = v287 + 1;
              }

              *&v299[1] = (v287 << 48) | 0x19C840;
              v288 = (v284 + v282 - 258);
              v289 = *v288;
              goto LABEL_498;
            }

            result = gleVStateProgram_MultMatrix4x4(a2, (v283 + 39), v285, v283 + 7, 23, 0, 0, 1, HIBYTE(*v298) & 1);
          }

          else
          {
            if (((1 << v283) & BYTE3(*v298)) != 0)
            {
              memset(&v299[1] + 8, 0, 56);
              *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
              *(a2 + 16) = 1;
              *&v299[1] = (gleVStateProgram_GetAttrib(a2, (v283 + 8)) << 48) | 0x19C800;
              v288 = (v284 + v282 - 258);
              v289 = *v288;
LABEL_498:
              if (v289 == 0xFFFF)
              {
                v290 = *(a2 + 2000);
                v289 = *(a2 + 2000);
                *v288 = v290;
                *(a2 + 1692 + 4 * v290 + 2) = v283 + 7;
                *(a2 + 2000) = v290 + 1;
              }

              *(&v299[0] + 1) = ((v289 << 48) | 0x72679000) + 0x2000;
              result = (*(a2 + 2016))(a2, v299);
              goto LABEL_503;
            }

            result = gleVStateProgram_MultMatrix4x4(a2, (v283 + 8), v285, v283 + 7, 23, 1, 0, 1, HIBYTE(*v298) & 1);
          }
        }

LABEL_503:
        ++v283;
        v282 += 4;
        v285 += 8;
        v291 = v281 > 1;
        v281 >>= 1;
      }

      while (v291);
    }

    v280 = v298;
  }

  v292 = HIDWORD(*(v280 + 8));
  if (v292)
  {
    v293 = 15;
    v294 = 1752;
    do
    {
      if (v292)
      {
        memset(&v299[1] + 8, 0, 56);
        *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
        *(a2 + 16) = 1;
        *&v299[1] = (gleVStateProgram_GetAttrib(a2, (v293 + 1)) << 48) | 0x19C800;
        v295 = *(a2 + v294);
        if (v295 == 0xFFFF)
        {
          v296 = *(a2 + 2000);
          v295 = *(a2 + 2000);
          *(a2 + v294) = v296;
          *(a2 + 1692 + 4 * v296 + 2) = v293;
          *(a2 + 2000) = v296 + 1;
        }

        *(&v299[0] + 1) = ((v295 << 48) | 0x72679000) + 0x2000;
        result = (*(a2 + 2016))(a2, v299);
      }

      ++v293;
      v294 += 4;
      v291 = v292 > 1;
      LODWORD(v292) = v292 >> 1;
    }

    while (v291);
  }

  return result;
}

uint64_t gleVStateProgram_GenerateMetadata(uint64_t a1, char *a2, int a3, uint64_t a4)
{
  v29 = a4;
  v32 = a2;
  v5 = a1;
  v39 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 8);
  v7 = *(a1 + 2000);
  if (!*(v6 + 152))
  {
    a1 = LLVMInt32TypeInContext();
    *(v6 + 152) = a1;
  }

  v28 = (a3 + 1);
  MEMORY[0x28223BE20](a1, 8 * v28);
  v9 = &v27 - v8;
  bzero(&v27 - v8, v10);
  v30 = a3;
  if (a3 >= 1)
  {
    v11 = 0;
    v12 = v30;
    v13 = (v5 + 22);
    v31 = v30;
    do
    {
      if ((*(v5 + 2033) & 8) != 0)
      {
        v14 = gleLLVMGetArgTypeName(*&v32[4 * v11]);
        memset(__str, 0, sizeof(__str));
        snprintf(__str, 0x1FuLL, "attrib%d", v11);
        v37 = 0;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        *&v33 = gleLLVMGetConstantInt32(v6, v11);
        *(&v33 + 1) = LLVMMDStringInContext();
        *&v34 = LLVMMDStringInContext();
        *(&v34 + 1) = LLVMConstInt();
        *&v35 = LLVMConstInt();
        *(&v35 + 1) = LLVMMDStringInContext();
        strlen(v14);
        v12 = v31;
        *&v36 = LLVMMDStringInContext();
        *(&v36 + 1) = LLVMMDStringInContext();
        strlen(__str);
        v37 = LLVMMDStringInContext();
      }

      else
      {
        v33 = 0u;
        v34 = 0u;
        *&v33 = gleLLVMGetConstantInt32(v6, v11);
        *(&v33 + 1) = LLVMMDStringInContext();
        *&v34 = LLVMMDStringInContext();
        gleVStateProgram_VertexCodeFromAttrib(*v13);
        *(&v34 + 1) = LLVMConstInt();
      }

      *&v9[8 * v11++] = LLVMMDNodeInContext();
      v13 += 2;
    }

    while (v12 != v11);
  }

  gleLLVMAddCommonMetaData(v6, &v9[8 * v30], 1, v30, *(v5 + 1998), 0);
  v31 = LLVMMDNodeInContext();
  MEMORY[0x28223BE20](v31, 8 * v29);
  v32 = &v27 - v15;
  bzero(&v27 - v15, v16);
  if (v7 >= 1)
  {
    v17 = (v5 + 1694);
    v18 = v32;
    while (1)
    {
      v20 = *v17;
      v17 += 2;
      v19 = v20;
      v21 = v20;
      if (v20 <= 46)
      {
        break;
      }

      if ((v19 - 48) >= 2)
      {
        if (v19 == 47)
        {
          *&v33 = 0;
          *&v33 = LLVMMDStringInContext();
          goto LABEL_56;
        }

        v23 = "air.perspective";
        if (v19 != 50)
        {
          goto LABEL_17;
        }

LABEL_29:
        *&v34 = 0;
        v33 = 0uLL;
LABEL_30:
        *&v33 = LLVMMDStringInContext();
        *(&v33 + 1) = LLVMMDStringInContext();
        *&v34 = LLVMMDStringInContext();
        goto LABEL_56;
      }

      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
      *&v33 = LLVMMDStringInContext();
      *(&v33 + 1) = LLVMConstInt();
      *&v34 = LLVMMDStringInContext();
      *(&v34 + 1) = LLVMConstInt();
      *&v35 = LLVMMDStringInContext();
      *(&v35 + 1) = LLVMMDStringInContext();
LABEL_56:
      *v18++ = LLVMMDNodeInContext();
      if (!--v7)
      {
        goto LABEL_57;
      }
    }

    if ((v19 - 3) < 4)
    {
      v22 = *(v5 + 2032);
      v23 = "air.flat";
      if ((v22 & 0x200) == 0)
      {
        if ((v22 & 0x400) != 0)
        {
          v23 = "air.perspective";
        }

        else
        {
          v23 = "air.no_perspective";
        }
      }

LABEL_17:
      memset(__str, 0, sizeof(__str));
      if (v21 <= 4u)
      {
        if (v21 != 1)
        {
          if (v21 == 3)
          {
            if ((*(v5 + 2033) & 8) != 0)
            {
              strcpy(__str, "user(front_color)");
            }

            v24 = 2;
            goto LABEL_51;
          }

          if (v21 == 4)
          {
            if ((*(v5 + 2033) & 8) != 0)
            {
              strcpy(__str, "user(back_color)");
            }

            v24 = 1;
            goto LABEL_51;
          }

          goto LABEL_47;
        }

        v24 = 5;
      }

      else
      {
        if (v21 - 7 < 8)
        {
          v24 = v21 + 1;
          if ((*(v5 + 2033) & 8) != 0)
          {
            snprintf(__str, 0x1FuLL, "user(tex_coord%u)", v21 - 7);
          }

          goto LABEL_51;
        }

        if (v21 == 5)
        {
          if ((*(v5 + 2033) & 8) != 0)
          {
            strcpy(__str, "user(sec_front_color)");
          }

          v24 = 3;
          goto LABEL_51;
        }

        if (v21 == 6)
        {
          if ((*(v5 + 2033) & 8) != 0)
          {
            strcpy(__str, "user(sec_back_color)");
          }

          v24 = 4;
          goto LABEL_51;
        }

LABEL_47:
        v24 = v21 - 15;
      }

LABEL_51:
      if ((*(v5 + 2033) & 8) != 0)
      {
        if (!__str[0])
        {
          snprintf(__str, 0x1FuLL, "user(slot%u)", v24);
        }

        v33 = 0u;
        v34 = 0u;
        *&v33 = LLVMMDStringInContext();
        strlen(__str);
        *(&v33 + 1) = LLVMMDStringInContext();
        strlen(v23);
        *&v34 = LLVMMDStringInContext();
        *(&v34 + 1) = LLVMMDStringInContext();
      }

      else
      {
        *&v35 = 0;
        v33 = 0u;
        v34 = 0u;
        *&v33 = LLVMMDStringInContext();
        *(&v33 + 1) = LLVMMDStringInContext();
        *&v34 = LLVMConstInt();
        strlen(v23);
        *(&v34 + 1) = LLVMMDStringInContext();
        *&v35 = LLVMMDStringInContext();
      }

      goto LABEL_56;
    }

    if (!v19)
    {
      goto LABEL_29;
    }

    v23 = "air.perspective";
    if (v19 != 2)
    {
      goto LABEL_17;
    }

    *&v34 = 0;
    v33 = 0uLL;
    goto LABEL_30;
  }

LABEL_57:
  v25 = LLVMMDNodeInContext();
  return gleLLVMCreateFunctionMetadata(v6, "air.vertex", v31, v25);
}

uint64_t gleVStateProgram_GetAttrib(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 20;
  v3 = (a1 + 20 + 4 * a2);
  v4 = *v3;
  if (*a1)
  {
    if (v4 == 0xFFFF)
    {
      v5 = *(a1 + 1996);
      LOWORD(v4) = *(a1 + 1996);
      *v3 = v5;
      *(v2 + 4 * v5 + 2) = a2;
      *(a1 + 1996) = v5 + 1;
    }

    return v4;
  }

  else
  {
    if (v4 == 0xFFFF)
    {
      v7 = *(a1 + 1996);
      LOWORD(v4) = *(a1 + 1996);
      *v3 = v7;
      *(v2 + 4 * v7 + 2) = a2;
      *(a1 + 1996) = v7 + 1;
    }

    v6 = v4;
    v8 = *(a1 + 2032);
    if (a2 == 5)
    {
      v8 |= 4u;
      *(a1 + 2032) = v8;
    }

    if ((v8 & 1) == 0)
    {
      return gleVStateProgram_VertexCodeFromAttrib(a2);
    }
  }

  return v6;
}

uint64_t gleVStateProgram_VertexCodeFromAttrib(unsigned int a1)
{
  if (a1 < 0x3C && ((0xFFF00000000FFFFuLL >> a1) & 1) != 0)
  {
    return dword_23A301150[a1];
  }

  else
  {
    return a1 - 16;
  }
}

uint64_t gleVStateProgram_LightingStage(uint64_t *a1, uint64_t a2)
{
  v3 = a1;
  v826 = *MEMORY[0x277D85DE8];
  memset(v825, 0, sizeof(v825));
  v4 = *a1;
  v5 = (*a1 >> 52) & 0xF;
  v6 = v5 & (*a1 << 13 >> 63);
  if (*(a1 + 8) | *a1 & 0x2000000000000)
  {
    memset(&v824[8], 0, 64);
    v7 = *(a2 + 16);
    *(a2 + 16) = 1;
    v823 = ((8 * (v7 & 7)) | 0x100080341) + 64;
    v8 = *(a2 + 1900);
    if (v8 == 0xFFFF)
    {
      v10 = *(a2 + 2004);
      v11 = *(a2 + 2004);
      *(a2 + 1900) = v10;
      *(a2 + 2004) = ++v11;
      *&v824[8] = (v10 << 48) | 0x1FE40;
      if ((v11 & 0x10000) != 0)
      {
        v10 = *(a2 + 2004);
        *(a2 + 1900) = v10;
        *(a2 + 2004) = v10 + 1;
      }

      v9 = v10 << 48;
    }

    else
    {
      v9 = v8 << 48;
      *&v824[8] = (v8 << 48) | 0x1FE40;
    }

    *v824 = v9 + 1918930944;
    (*(a2 + 2016))(a2, &v823);
  }

  v12 = v4 << 12;
  if (v6)
  {
    memset(v824, 0, sizeof(v824));
    v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
    *(a2 + 16) = 3;
    v16 = a2 + 260;
    v17 = *(a2 + 1644);
    if (v17 == 0xFFFF)
    {
      v18 = *(a2 + 1998);
      v17 = *(a2 + 1998);
      *(a2 + 1644) = v18;
      *(v16 + 4 * v18 + 2) = 346;
      *(a2 + 1998) = v18 + 1;
    }

    *&v824[8] = ((v17 << 48) | 0x19C840) + 64;
    v19 = *(a2 + 1612);
    if (v19 == 0xFFFF)
    {
      v20 = *(a2 + 1998);
      v19 = *(a2 + 1998);
      *(a2 + 1612) = v20;
      *(v16 + 4 * v20 + 2) = 338;
      *(a2 + 1998) = v20 + 1;
    }

    *&v824[16] = ((v19 << 48) | 0x19C840) + 64;
    *&v824[24] = (gleVStateProgram_GetAttrib(a2, 2) << 48) | 0x19C800;
    v15 = *(a2 + 1904);
  }

  else
  {
    if ((v6 & 2) != 0)
    {
      memset(v824, 0, sizeof(v824));
      v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
      *(a2 + 16) = 3;
      v29 = a2 + 260;
      v30 = *(a2 + 1644);
      if (v30 == 0xFFFF)
      {
        v31 = *(a2 + 1998);
        v30 = *(a2 + 1998);
        *(a2 + 1644) = v31;
        *(v29 + 4 * v31 + 2) = 346;
        *(a2 + 1998) = v31 + 1;
      }

      *&v824[8] = ((v30 << 48) | 0x19C840) + 64;
      *&v824[16] = (gleVStateProgram_GetAttrib(a2, 2) << 48) | 0x19C800;
      v32 = *(a2 + 1604);
      if (v32 == 0xFFFF)
      {
        v33 = *(a2 + 1998);
        v32 = *(a2 + 1998);
        *(a2 + 1604) = v33;
        *(v29 + 4 * v33 + 2) = 336;
        *(a2 + 1998) = v33 + 1;
      }

      *&v824[24] = ((v32 << 48) | 0x19C840) + 64;
      v15 = *(a2 + 1904);
      if (v15 == 0xFFFF)
      {
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    memset(&v824[16], 0, 56);
    v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
    *(a2 + 16) = 1;
    v13 = *(a2 + 1636);
    if (v13 == 0xFFFF)
    {
      v14 = *(a2 + 1998);
      v13 = *(a2 + 1998);
      *(a2 + 1636) = v14;
      *(a2 + 4 * v14 + 262) = 344;
      *(a2 + 1998) = v14 + 1;
    }

    *&v824[8] = ((v13 << 48) | 0x19C840) + 64;
    v15 = *(a2 + 1904);
  }

  if (v15 == 0xFFFF)
  {
LABEL_19:
    v15 = *(a2 + 2004);
    *(a2 + 1904) = v15;
    *(a2 + 2004) = v15 + 1;
  }

LABEL_20:
  v21 = v5 & (v12 >> 63);
  *v824 = (v15 << 48) | 0x72679000;
  (*(a2 + 2016))(a2, &v823);
  if (*(v3 + 8) || (v22 = *v3, (*v3 & 0x2000000000000) != 0))
  {
    memset(&v824[8], 0, 64);
    v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
    *(a2 + 16) = 2;
    v23 = *(a2 + 1900);
    if (v23 == 0xFFFF)
    {
      v25 = *(a2 + 2004);
      v26 = *(a2 + 2004);
      *(a2 + 1900) = v25;
      *(a2 + 2004) = ++v26;
      *&v824[8] = (v25 << 48) | 0x19C840;
      if ((v26 & 0x10000) != 0)
      {
        v27 = *(a2 + 2004);
        v28 = *(a2 + 2004);
        *(a2 + 1900) = v27;
        *(a2 + 2004) = ++v28;
        *&v824[16] = ((v27 << 48) | 0x1FE40) + 16;
        if ((v28 & 0x10000) != 0)
        {
          v27 = *(a2 + 2004);
          *(a2 + 1900) = v27;
          *(a2 + 2004) = v27 + 1;
        }

        v24 = v27 << 48;
        goto LABEL_36;
      }

      v24 = v25 << 48;
    }

    else
    {
      v24 = v23 << 48;
      *&v824[8] = (v23 << 48) | 0x19C840;
    }

    *&v824[16] = v24 + 130640;
LABEL_36:
    *v824 = v24 | 0x72679000;
    (*(a2 + 2016))(a2, &v823);
    v22 = *v3;
  }

  v799 = v21;
  if ((v22 & 0x1000000000000) == 0)
  {
    goto LABEL_51;
  }

  if (v21)
  {
    memset(v824, 0, sizeof(v824));
    v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
    *(a2 + 16) = 3;
    v37 = a2 + 260;
    v38 = *(a2 + 1644);
    if (v38 == 0xFFFF)
    {
      v39 = *(a2 + 1998);
      v38 = *(a2 + 1998);
      *(a2 + 1644) = v39;
      *(v37 + 4 * v39 + 2) = 346;
      *(a2 + 1998) = v39 + 1;
    }

    *&v824[8] = ((v38 << 48) | 0x19C840) + 64;
    v40 = *(a2 + 1616);
    if (v40 == 0xFFFF)
    {
      v41 = *(a2 + 1998);
      v40 = *(a2 + 1998);
      *(a2 + 1616) = v41;
      *(v37 + 4 * v41 + 2) = 339;
      *(a2 + 1998) = v41 + 1;
    }

    *&v824[16] = ((v40 << 48) | 0x19C840) + 64;
    *&v824[24] = (gleVStateProgram_GetAttrib(a2, 2) << 48) | 0x19C800;
    v36 = *(a2 + 1906);
  }

  else
  {
    if ((v21 & 2) != 0)
    {
      memset(v824, 0, sizeof(v824));
      v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
      *(a2 + 16) = 3;
      v51 = a2 + 260;
      v52 = *(a2 + 1644);
      if (v52 == 0xFFFF)
      {
        v53 = *(a2 + 1998);
        v52 = *(a2 + 1998);
        *(a2 + 1644) = v53;
        *(v51 + 4 * v53 + 2) = 346;
        *(a2 + 1998) = v53 + 1;
      }

      *&v824[8] = ((v52 << 48) | 0x19C840) + 64;
      *&v824[16] = (gleVStateProgram_GetAttrib(a2, 2) << 48) | 0x19C800;
      v54 = *(a2 + 1608);
      if (v54 == 0xFFFF)
      {
        v55 = *(a2 + 1998);
        v54 = *(a2 + 1998);
        *(a2 + 1608) = v55;
        *(v51 + 4 * v55 + 2) = 337;
        *(a2 + 1998) = v55 + 1;
      }

      *&v824[24] = ((v54 << 48) | 0x19C840) + 64;
      v36 = *(a2 + 1906);
      if (v36 != 0xFFFF)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }

    memset(&v824[16], 0, 56);
    v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
    *(a2 + 16) = 1;
    v34 = *(a2 + 1640);
    if (v34 == 0xFFFF)
    {
      v35 = *(a2 + 1998);
      v34 = *(a2 + 1998);
      *(a2 + 1640) = v35;
      *(a2 + 4 * v35 + 262) = 345;
      *(a2 + 1998) = v35 + 1;
    }

    *&v824[8] = ((v34 << 48) | 0x19C840) + 64;
    v36 = *(a2 + 1906);
  }

  if (v36 == 0xFFFF)
  {
LABEL_49:
    v36 = *(a2 + 2004);
    *(a2 + 1906) = v36;
    *(a2 + 2004) = v36 + 1;
  }

LABEL_50:
  *v824 = (v36 << 48) | 0x72679000;
  (*(a2 + 2016))(a2, &v823);
LABEL_51:
  v42 = *v3;
  if ((*v3 & 0x2000000000000) == 0)
  {
    goto LABEL_67;
  }

  memset(&v824[8], 0, 64);
  v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000A02;
  *(a2 + 16) = 2;
  v43 = *(a2 + 1900);
  if (v43 == 0xFFFF)
  {
    v46 = *(a2 + 2004);
    v47 = *(a2 + 2004);
    *(a2 + 1900) = v46;
    v48 = v47 + 1;
    *(a2 + 2004) = v47 + 1;
    v45 = (v46 << 48) | 0x19C840;
    *&v824[8] = v45;
    if ((v48 & 0x10000) != 0)
    {
      v49 = *(a2 + 2004);
      v50 = *(a2 + 2004);
      *(a2 + 1900) = v49;
      *(a2 + 2004) = ++v50;
      *&v824[16] = (v49 << 48) | 0x19C840;
      if ((v50 & 0x10000) != 0)
      {
        v49 = *(a2 + 2004);
        *(a2 + 1900) = v49;
        *(a2 + 2004) = v49 + 1;
      }

      v44 = v49 << 48;
      goto LABEL_66;
    }

    v44 = v46 << 48;
  }

  else
  {
    v44 = v43 << 48;
    v45 = (v43 << 48) | 0x19C840;
    *&v824[8] = v45;
  }

  *&v824[16] = v45;
LABEL_66:
  *v824 = v44 + 1918930944;
  (*(a2 + 2016))(a2, &v823);
  v42 = *v3;
LABEL_67:
  v56 = BYTE4(v42);
  v805 = v3;
  v801 = v6;
  if ((v42 & 0x800000000000000) != 0)
  {
    if (!BYTE4(v42))
    {
      goto LABEL_1330;
    }

    v60 = 0;
    v61 = 0;
    do
    {
      if (v56)
      {
        *(v825 + v60++) = v61;
      }

      ++v61;
      v62 = v56 >= 2;
      v56 >>= 1;
    }

    while (v62);
    if (!v60)
    {
      goto LABEL_1330;
    }

    v63 = 0;
    v64 = 0;
    v808 = (a2 + 1900);
    v795 = a2 + 260;
    v796 = v6 & 6;
    v794 = v21 & 6;
    v815 = a2 + 1924;
    v813 = a2 + 1932;
    v797 = a2 + 1970;
LABEL_78:
    v802 = v64;
    v65 = 0;
    v66 = 0;
    v803 = v63;
    v67 = v3;
    v68 = v825 + 4 * v64;
    v800 = v60;
    if (v60 - v64 >= 4)
    {
      v69 = 4;
    }

    else
    {
      v69 = v60 - v64;
    }

    v70 = vand_s8(vshl_u32(vdup_n_s32(*(v67 + 2)), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
    v71 = 0;
    do
    {
      v72 = *&v68[4 * v65];
      v66 |= ((*(v67 + 2) >> v72) & 1) << v65;
      v71 = vorr_s8(vshl_u32(vand_s8(vshl_u32(v70, vneg_s32(vdup_n_s32(v72))), 0x100000001), vdup_n_s32(v65++)), v71);
    }

    while (v65 < v69);
    v810 = v66 & 0xF ^ 0xF;
    v821 = v68;
    v73 = v71;
    v819 = v71;
    if ((v66 & 0xF) == 0xF)
    {
      goto LABEL_91;
    }

    v74 = 0;
    do
    {
      if ((v810 >> v74))
      {
        v75 = *&v68[4 * v74];
        memset(v824, 0, sizeof(v824));
        v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
        *(a2 + 16) = 1;
        *&v824[8] = ((gleVStateProgram_GetParam(a2, v75 + 320) << 48) | 0x19C840) + 64;
        v76 = a2 + 2 * v74;
        v77 = *(v76 + 1924);
        if (v77 == 0xFFFF)
        {
          v77 = *(a2 + 2004);
          *(v76 + 1924) = v77;
          *(a2 + 2004) = v77 + 1;
        }

        *v824 = (v77 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, &v823);
        v68 = v821;
        v73 = v819;
      }

      ++v74;
    }

    while (v74 < v69);
    if (v66)
    {
LABEL_91:
      v78 = 0;
      do
      {
        if ((v66 >> v78))
        {
          v79 = *&v68[4 * v78];
          memset(v824, 0, sizeof(v824));
          v823 = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
          *(a2 + 16) = 2;
          *&v824[8] = ((gleVStateProgram_GetParam(a2, v79 + 320) << 48) | 0x19C840) + 64;
          v80 = *(a2 + 1900);
          if (v80 == 0xFFFF)
          {
            v80 = *(a2 + 2004);
            *v808 = v80;
            *(a2 + 2004) = v80 + 1;
          }

          *&v824[16] = (v80 << 48) | 0x19C840;
          v81 = a2 + 2 * v78;
          v82 = *(v81 + 1924);
          if (v82 == 0xFFFF)
          {
            v82 = *(a2 + 2004);
            *(v81 + 1924) = v82;
            *(a2 + 2004) = v82 + 1;
          }

          *v824 = (v82 << 48) | 0x72679000;
          (*(a2 + 2016))(a2, &v823);
          v73 = v819;
        }

        ++v78;
      }

      while (v78 < v69);
      v83 = 0;
      v84 = 0;
      v85 = v805;
      do
      {
        if ((v66 >> v83))
        {
          memset(v824, 0, sizeof(v824));
          v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000A02;
          *(a2 + 16) = 2;
          v86 = *(v815 + 2 * v83);
          if (v86 == 0xFFFF)
          {
            v87 = *(a2 + 2004);
            *(v815 + 2 * v83) = v87;
            *(a2 + 2004) = v87 + 1;
            v86 = *(v815 + 2 * v83);
            *&v824[8] = (v87 << 48) | 0x19C840;
            if (v86 == 0xFFFF)
            {
              v86 = *(a2 + 2004);
              *(v815 + 2 * v83) = v86;
              *(a2 + 2004) = v86 + 1;
            }
          }

          else
          {
            *&v824[8] = (v86 << 48) | 0x19C840;
          }

          *&v824[16] = (v86 << 48) | 0x19C840;
          v88 = *(a2 + 1946);
          if (v84)
          {
            if (v88 == 0xFFFF)
            {
              v88 = *(a2 + 2004);
              *(a2 + 1946) = v88;
              *(a2 + 2004) = v88 + 1;
            }

            v89 = ((v83 == 1) << 17) | (v88 << 48) | ((v83 == 2) << 16) | ((v83 == 3) << 15) | 0x72601000;
          }

          else
          {
            if (v88 == 0xFFFF)
            {
              v88 = *(a2 + 2004);
              *(a2 + 1946) = v88;
              *(a2 + 2004) = v88 + 1;
            }

            v89 = (v88 << 48) | 0x72679000;
          }

          *v824 = v89;
          (*(a2 + 2016))(a2, &v823);
          v84 = 1;
          v73 = v819;
        }

        ++v83;
      }

      while (v83 < v69);
      v90 = 0;
    }

    else
    {
      v90 = 1;
      v85 = v805;
    }

    if (!v802 && (*(v85 + 6) & 2) != 0)
    {
      memset(&v824[8], 0, 64);
      v91 = 8 * (*(a2 + 16) & 7);
      *(a2 + 16) = 1;
      v823 = v91 | 0x100080341;
      v92 = *(a2 + 1900);
      if (v92 == 0xFFFF)
      {
        v94 = *(a2 + 2004);
        v95 = *(a2 + 2004);
        *v808 = v94;
        *(a2 + 2004) = ++v95;
        *&v824[8] = (v94 << 48) | 0x1FE40;
        if ((v95 & 0x10000) != 0)
        {
          v94 = *(a2 + 2004);
          *v808 = v94;
          *(a2 + 2004) = v94 + 1;
        }

        v93 = v94 << 48;
      }

      else
      {
        v93 = v92 << 48;
        *&v824[8] = (v92 << 48) | 0x1FE40;
      }

      *v824 = v93 + 1918930944;
      (*(a2 + 2016))(a2, &v823);
      v73 = v819;
    }

    if ((v90 & 1) == 0)
    {
      memset(&v824[16], 0, 56);
      v96 = 8 * (*(a2 + 16) & 7);
      *(a2 + 16) = 1;
      v823 = v96 | 0x3100080341;
      v97 = *(a2 + 1946);
      if (v97 == 0xFFFF)
      {
        v97 = *(a2 + 2004);
        *(a2 + 1946) = v97;
        *(a2 + 2004) = v97 + 1;
      }

      *&v824[8] = (v97 << 48) | 0x19C840;
      v98 = *(a2 + 1954);
      if (v98 == 0xFFFF)
      {
        v98 = *(a2 + 2004);
        *(a2 + 1954) = v98;
        *(a2 + 2004) = v98 + 1;
      }

      *v824 = (v98 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v823);
      v73 = v819;
    }

    if (!v802 && (*(v85 + 6) & 2) != 0)
    {
      memset(&v824[8], 0, 64);
      v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
      *(a2 + 16) = 2;
      v99 = *(a2 + 1900);
      if (v99 == 0xFFFF)
      {
        v101 = *(a2 + 2004);
        v102 = *(a2 + 2004);
        *v808 = v101;
        *(a2 + 2004) = ++v102;
        *&v824[8] = (v101 << 48) | 0x19C840;
        if ((v102 & 0x10000) != 0)
        {
          v101 = *(a2 + 2004);
          *v808 = v101;
          *(a2 + 2004) = v101 + 1;
        }

        v100 = v101 << 48;
      }

      else
      {
        v100 = v99 << 48;
        *&v824[8] = (v99 << 48) | 0x19C840;
      }

      *&v824[16] = v100 | 0x1FE40;
      v103 = *(a2 + 1942);
      if (v103 == 0xFFFF)
      {
        v103 = *(a2 + 2004);
        *(a2 + 1942) = v103;
        *(a2 + 2004) = v103 + 1;
      }

      *v824 = (v103 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v823);
      v73 = v819;
    }

    v104 = v73.i32[0] & v66;
    v798 = v90;
    v806 = v73.i32[0] & v66;
    if ((v90 & 1) == 0)
    {
      v105 = 0;
      v106 = 64;
      do
      {
        if ((v66 >> v105))
        {
          memset(&v824[24], 0, 48);
          v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
          *(a2 + 16) = 2;
          v107 = a2 + 2 * v105;
          v108 = *(v107 + 1924);
          if (v108 == 0xFFFF)
          {
            v108 = *(a2 + 2004);
            *(v107 + 1924) = v108;
            *(a2 + 2004) = v108 + 1;
          }

          *&v824[8] = (v108 << 48) | 0x19C840;
          v109 = *(a2 + 1954);
          if (v109 == 0xFFFF)
          {
            v109 = *(a2 + 2004);
            *(a2 + 1954) = v109;
            *(a2 + 2004) = v109 + 1;
          }

          *&v824[16] = v106 + (v109 << 48);
          v110 = *(v107 + 1924);
          if (v110 == 0xFFFF)
          {
            v110 = *(a2 + 2004);
            *(v107 + 1924) = v110;
            *(a2 + 2004) = v110 + 1;
          }

          *v824 = (v110 << 48) | 0x72679000;
          (*(a2 + 2016))(a2, &v823);
          v73.i32[1] = v819.i32[1];
        }

        ++v105;
        v106 += 43520;
      }

      while (v105 < v69);
      v104 = v806;
      if (v806)
      {
        memset(&v824[24], 0, 48);
        v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
        *(a2 + 16) = 2;
        v111 = *(a2 + 1946);
        if (v111 == 0xFFFF)
        {
          v111 = *(a2 + 2004);
          *(a2 + 1946) = v111;
          *(a2 + 2004) = v111 + 1;
        }

        *&v824[8] = (v111 << 48) | 0x19C840;
        v112 = *(a2 + 1954);
        v113 = v806;
        if (v112 == 0xFFFF)
        {
          v112 = *(a2 + 2004);
          *(a2 + 1954) = v112;
          *(a2 + 2004) = v112 + 1;
        }

        *&v824[16] = (v112 << 48) | 0x19C840;
        if (v111 == 0xFFFF)
        {
          v111 = *(a2 + 2004);
          *(a2 + 1946) = v111;
          *(a2 + 2004) = v111 + 1;
        }

        *v824 = (v111 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, &v823);
        v114 = 0;
        v115 = 0;
        do
        {
          if ((v113 >> v114))
          {
            v116 = *&v821[4 * v114];
            memset(v824, 0, sizeof(v824));
            v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
            *(a2 + 16) = 1;
            *&v824[8] = ((gleVStateProgram_GetParam(a2, v116 + 312) << 48) | 0x15440) + 64;
            v117 = *(a2 + 1954);
            if (v115)
            {
              if (v117 == 0xFFFF)
              {
                v117 = *(a2 + 2004);
                *(a2 + 1954) = v117;
                *(a2 + 2004) = v117 + 1;
              }

              v118 = ((v114 == 1) << 17) | (v117 << 48) | ((v114 == 2) << 16) | ((v114 == 3) << 15) | 0x72601000;
            }

            else
            {
              if (v117 == 0xFFFF)
              {
                v117 = *(a2 + 2004);
                *(a2 + 1954) = v117;
                *(a2 + 2004) = v117 + 1;
              }

              v118 = (v117 << 48) | 0x72679000;
            }

            *v824 = v118;
            (*(a2 + 2016))(a2, &v823);
            memset(v824, 0, sizeof(v824));
            v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
            *(a2 + 16) = 1;
            *&v824[8] = (gleVStateProgram_GetParam(a2, v116 + 312) << 48) | 0xAA80;
            v119 = *(a2 + 1962);
            if (v115)
            {
              if (v119 == 0xFFFF)
              {
                v119 = *(a2 + 2004);
                *(a2 + 1962) = v119;
                *(a2 + 2004) = v119 + 1;
              }

              v120 = ((v114 == 1) << 17) | (v119 << 48) | ((v114 == 2) << 16) | ((v114 == 3) << 15) | 0x72601000;
            }

            else
            {
              if (v119 == 0xFFFF)
              {
                v119 = *(a2 + 2004);
                *(a2 + 1962) = v119;
                *(a2 + 2004) = v119 + 1;
              }

              v120 = (v119 << 48) | 0x72679000;
            }

            *v824 = v120;
            (*(a2 + 2016))(a2, &v823);
            memset(v824, 0, sizeof(v824));
            v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
            *(a2 + 16) = 1;
            *&v824[8] = (gleVStateProgram_GetParam(a2, v116 + 312) << 48) | 0x80;
            v121 = *(a2 + 1970);
            if (v115)
            {
              v113 = v806;
              if (v121 == 0xFFFF)
              {
                v121 = *(a2 + 2004);
                *(a2 + 1970) = v121;
                *(a2 + 2004) = v121 + 1;
              }

              v122 = ((v114 == 1) << 17) | (v121 << 48) | ((v114 == 2) << 16) | ((v114 == 3) << 15) | 0x72601000;
            }

            else
            {
              v113 = v806;
              if (v121 == 0xFFFF)
              {
                v121 = *(a2 + 2004);
                *(a2 + 1970) = v121;
                *(a2 + 2004) = v121 + 1;
              }

              v122 = (v121 << 48) | 0x72679000;
            }

            *v824 = v122;
            (*(a2 + 2016))(a2, &v823);
            v115 = 1;
          }

          ++v114;
        }

        while (v114 < v69);
        memset(v824, 0, sizeof(v824));
        v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
        *(a2 + 16) = 3;
        v123 = *(a2 + 1946);
        if (v123 == 0xFFFF)
        {
          v123 = *(a2 + 2004);
          *(a2 + 1946) = v123;
          *(a2 + 2004) = v123 + 1;
        }

        *&v824[8] = (v123 << 48) | 0x19C840;
        v124 = *(a2 + 1954);
        if (v124 == 0xFFFF)
        {
          v124 = *(a2 + 2004);
          *(a2 + 1954) = v124;
          *(a2 + 2004) = v124 + 1;
        }

        *&v824[16] = (v124 << 48) | 0x19C840;
        v125 = *(a2 + 1962);
        if (v125 == 0xFFFF)
        {
          v125 = *(a2 + 2004);
          *(a2 + 1962) = v125;
          *(a2 + 2004) = v125 + 1;
        }

        *&v824[24] = (v125 << 48) | 0x19C840;
        if (v124 == 0xFFFF)
        {
          v124 = *(a2 + 2004);
          *(a2 + 1954) = v124;
          *(a2 + 2004) = v124 + 1;
        }

        *v824 = (v124 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, &v823);
        memset(v824, 0, sizeof(v824));
        v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
        *(a2 + 16) = 3;
        v126 = *(a2 + 1946);
        if (v126 == 0xFFFF)
        {
          v126 = *(a2 + 2004);
          *(a2 + 1946) = v126;
          *(a2 + 2004) = v126 + 1;
        }

        *&v824[8] = (v126 << 48) | 0x19C840;
        v127 = *(a2 + 1954);
        if (v127 == 0xFFFF)
        {
          v127 = *(a2 + 2004);
          *(a2 + 1954) = v127;
          *(a2 + 2004) = v127 + 1;
        }

        *&v824[16] = (v127 << 48) | 0x19C840;
        v128 = *(a2 + 1970);
        if (v128 == 0xFFFF)
        {
          v128 = *(a2 + 2004);
          *(a2 + 1970) = v128;
          *(a2 + 2004) = v128 + 1;
        }

        *&v824[24] = (v128 << 48) | 0x19C840;
        v129 = *(a2 + 1940);
        if (v129 == 0xFFFF)
        {
          v129 = *(a2 + 2004);
          *(a2 + 1940) = v129;
          *(a2 + 2004) = v129 + 1;
        }

        *v824 = (v129 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, &v823);
        memset(&v824[8], 0, 64);
        v130 = *(a2 + 16);
        *(a2 + 16) = 1;
        v823 = (8 * (v130 & 7)) | 0x3100100381;
        v131 = *(a2 + 1940);
        if (v131 == 0xFFFF)
        {
          v133 = *(a2 + 2004);
          v134 = *(a2 + 2004);
          *(a2 + 1940) = v133;
          *(a2 + 2004) = ++v134;
          *&v824[8] = (v133 << 48) | 0x19C840;
          if ((v134 & 0x10000) != 0)
          {
            v133 = *(a2 + 2004);
            *(a2 + 1940) = v133;
            *(a2 + 2004) = v133 + 1;
          }

          v132 = v133 << 48;
        }

        else
        {
          v132 = v131 << 48;
          *&v824[8] = (v131 << 48) | 0x19C840;
        }

        *v824 = v132 | 0x72679000;
        (*(a2 + 2016))(a2, &v823);
        v73.i32[1] = v819.i32[1];
        v104 = v806;
      }
    }

    v135 = 0;
    v136 = v73.u32[1];
    v817 = v104 | v73.i32[1];
    v137 = 1;
    do
    {
      memset(v824, 0, sizeof(v824));
      v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000A02;
      *(a2 + 16) = 2;
      v138 = *(a2 + 1902);
      if (v138 == 0xFFFF)
      {
        v138 = *(a2 + 2004);
        *(a2 + 1902) = v138;
        *(a2 + 2004) = v138 + 1;
      }

      *&v824[8] = (v138 << 48) | 0x19C840;
      v139 = *(v815 + 2 * v135);
      if (v139 == 0xFFFF)
      {
        v139 = *(a2 + 2004);
        *(v815 + 2 * v135) = v139;
        *(a2 + 2004) = v139 + 1;
      }

      *&v824[16] = (v139 << 48) | 0x19C840;
      v140 = *(a2 + 1920);
      if (v137)
      {
        if (v140 == 0xFFFF)
        {
          v140 = *(a2 + 2004);
          *(a2 + 1920) = v140;
          *(a2 + 2004) = v140 + 1;
        }

        v141 = (v140 << 48) | 0x72679000;
      }

      else
      {
        if (v140 == 0xFFFF)
        {
          v140 = *(a2 + 2004);
          *(a2 + 1920) = v140;
          *(a2 + 2004) = v140 + 1;
        }

        v141 = ((v135 == 1) << 17) | (v140 << 48) | ((v135 == 2) << 16) | ((v135 == 3) << 15) | 0x72601000;
      }

      *v824 = v141;
      (*(a2 + 2016))(a2, &v823);
      v137 = 0;
      ++v135;
    }

    while (v135 < v69);
    if (v136)
    {
      v142 = 0;
      v143 = 0;
      do
      {
        if ((v136 >> v142))
        {
          v144 = *&v821[4 * v142];
          memset(v824, 0, sizeof(v824));
          v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000A02;
          *(a2 + 16) = 2;
          *&v824[8] = ((gleVStateProgram_GetParam(a2, v144 + 328) << 48) | 0x19C840) + 64;
          v145 = *(v815 + 2 * v142);
          if (v145 == 0xFFFF)
          {
            v145 = *(a2 + 2004);
            *(v815 + 2 * v142) = v145;
            *(a2 + 2004) = v145 + 1;
          }

          *&v824[16] = ((v145 << 48) | 0x19C840) + 16;
          v146 = *(a2 + 1954);
          if (v143)
          {
            if (v146 == 0xFFFF)
            {
              v146 = *(a2 + 2004);
              *(a2 + 1954) = v146;
              *(a2 + 2004) = v146 + 1;
            }

            v147 = ((v142 == 1) << 17) | (v146 << 48) | ((v142 == 2) << 16) | ((v142 == 3) << 15) | 0x72601000;
          }

          else
          {
            if (v146 == 0xFFFF)
            {
              v146 = *(a2 + 2004);
              *(a2 + 1954) = v146;
              *(a2 + 2004) = v146 + 1;
            }

            v147 = (v146 << 48) | 0x72679000;
          }

          *v824 = v147;
          (*(a2 + 2016))(a2, &v823);
          v143 = 1;
        }

        ++v142;
      }

      while (v142 < v69);
      v148 = 0;
      v149 = 0;
      do
      {
        if ((v136 >> v148))
        {
          v150 = *&v821[4 * v148];
          memset(v824, 0, sizeof(v824));
          v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
          *(a2 + 16) = 1;
          *&v824[8] = ((gleVStateProgram_GetParam(a2, v150 + 296) << 48) | 0x1FE40) + 64;
          v151 = *(a2 + 1946);
          if (v149)
          {
            if (v151 == 0xFFFF)
            {
              v151 = *(a2 + 2004);
              *(a2 + 1946) = v151;
              *(a2 + 2004) = v151 + 1;
            }

            v152 = ((v148 == 1) << 17) | (v151 << 48) | ((v148 == 2) << 16) | ((v148 == 3) << 15) | 0x72601000;
          }

          else
          {
            if (v151 == 0xFFFF)
            {
              v151 = *(a2 + 2004);
              *(a2 + 1946) = v151;
              *(a2 + 2004) = v151 + 1;
            }

            v152 = (v151 << 48) | 0x72679000;
          }

          *v824 = v152;
          (*(a2 + 2016))(a2, &v823);
          memset(v824, 0, sizeof(v824));
          v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
          *(a2 + 16) = 1;
          *&v824[8] = ((gleVStateProgram_GetParam(a2, v150 + 312) << 48) | 0x1FE40) + 64;
          v153 = *(a2 + 1962);
          if (v149)
          {
            if (v153 == 0xFFFF)
            {
              v153 = *(a2 + 2004);
              *(a2 + 1962) = v153;
              *(a2 + 2004) = v153 + 1;
            }

            v154 = ((v148 == 1) << 17) | (v153 << 48) | ((v148 == 2) << 16) | ((v148 == 3) << 15) | 0x72601000;
          }

          else
          {
            if (v153 == 0xFFFF)
            {
              v153 = *(a2 + 2004);
              *(a2 + 1962) = v153;
              *(a2 + 2004) = v153 + 1;
            }

            v154 = (v153 << 48) | 0x72679000;
          }

          *v824 = v154;
          (*(a2 + 2016))(a2, &v823);
          v149 = 1;
        }

        ++v148;
      }

      while (v148 < v69);
      if ((v136 & ~v806) != 0)
      {
        memset(v824, 0, sizeof(v824));
        v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000C82;
        *(a2 + 16) = 2;
        v155 = *(a2 + 1954);
        if (v155 == 0xFFFF)
        {
          v155 = *(a2 + 2004);
          *(a2 + 1954) = v155;
          *(a2 + 2004) = v155 + 1;
        }

        *&v824[8] = (v155 << 48) | 0x19C840;
        v156 = *(a2 + 1946);
        if (v156 == 0xFFFF)
        {
          v156 = *(a2 + 2004);
          *(a2 + 1946) = v156;
          *(a2 + 2004) = v156 + 1;
        }

        *&v824[16] = (v156 << 48) | 0x19C840;
        v157 = *(a2 + 1940);
        if (v798)
        {
          if (v157 == 0xFFFF)
          {
            v157 = *(a2 + 2004);
            *(a2 + 1940) = v157;
            *(a2 + 2004) = v157 + 1;
          }

          v158 = (v157 << 48) | 0x72679000;
        }

        else
        {
          if (v157 == 0xFFFF)
          {
            v157 = *(a2 + 2004);
            *(a2 + 1940) = v157;
            *(a2 + 2004) = v157 + 1;
          }

          v159 = vandq_s8(vshlq_u32(vdupq_n_s32(v136 & ~v806), xmmword_23A301100), xmmword_23A300EF0);
          *v159.i8 = vorr_s8(*v159.i8, *&vextq_s8(v159, v159, 8uLL));
          v160.i64[0] = v159.u32[0];
          v160.i64[1] = v159.u32[1];
          v158 = *&vorr_s8(v159.u32[0], *&vextq_s8(v160, v160, 8uLL)) | (v157 << 48) | 0x72601000;
        }

        *v824 = v158;
        (*(a2 + 2016))(a2, &v823);
      }

      if ((v806 & v136) != 0)
      {
        memset(v824, 0, sizeof(v824));
        v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000C82;
        *(a2 + 16) = 2;
        v161 = *(a2 + 1954);
        if (v161 == 0xFFFF)
        {
          v161 = *(a2 + 2004);
          *(a2 + 1954) = v161;
          *(a2 + 2004) = v161 + 1;
        }

        *&v824[8] = (v161 << 48) | 0x19C840;
        v162 = *(a2 + 1946);
        if (v162 == 0xFFFF)
        {
          v164 = *(a2 + 2004);
          v165 = *(a2 + 2004);
          *(a2 + 1946) = v164;
          *(a2 + 2004) = ++v165;
          *&v824[16] = (v164 << 48) | 0x19C840;
          if ((v165 & 0x10000) != 0)
          {
            v164 = *(a2 + 2004);
            *(a2 + 1946) = v164;
            *(a2 + 2004) = v164 + 1;
          }

          v163 = v164 << 48;
        }

        else
        {
          v163 = v162 << 48;
          *&v824[16] = (v162 << 48) | 0x19C840;
        }

        *v824 = v163 | 0x72679000;
        (*(a2 + 2016))(a2, &v823);
        memset(&v824[24], 0, 48);
        v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
        *(a2 + 16) = 2;
        v166 = *(a2 + 1940);
        if (v166 == 0xFFFF)
        {
          v166 = *(a2 + 2004);
          *(a2 + 1940) = v166;
          *(a2 + 2004) = v166 + 1;
        }

        *&v824[8] = (v166 << 48) | 0x19C840;
        v167 = *(a2 + 1946);
        if (v167 == 0xFFFF)
        {
          v167 = *(a2 + 2004);
          *(a2 + 1946) = v167;
          *(a2 + 2004) = v167 + 1;
        }

        *&v824[16] = (v167 << 48) | 0x19C840;
        if (v166 == 0xFFFF)
        {
          v166 = *(a2 + 2004);
          *(a2 + 1940) = v166;
          *(a2 + 2004) = v166 + 1;
        }

        v168 = vandq_s8(vshlq_u32(vdupq_n_s32(v806 & v136), xmmword_23A301100), xmmword_23A300EF0);
        *v168.i8 = vorr_s8(*v168.i8, *&vextq_s8(v168, v168, 8uLL));
        v169.i64[0] = v168.u32[0];
        v169.i64[1] = v168.u32[1];
        *v824 = (*&vorr_s8(v168.u32[0], *&vextq_s8(v169, v169, 8uLL)) | (v166 << 48)) + 1918898176;
        (*(a2 + 2016))(a2, &v823);
      }

      memset(&v824[24], 0, 48);
      v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000E02;
      *(a2 + 16) = 2;
      v170 = *(a2 + 1954);
      if (v170 == 0xFFFF)
      {
        v170 = *(a2 + 2004);
        *(a2 + 1954) = v170;
        *(a2 + 2004) = v170 + 1;
      }

      *&v824[8] = (v170 << 48) | 0x19C840;
      v171 = *(a2 + 1962);
      if (v171 == 0xFFFF)
      {
        v171 = *(a2 + 2004);
        *(a2 + 1962) = v171;
        *(a2 + 2004) = v171 + 1;
      }

      *&v824[16] = (v171 << 48) | 0x19C840;
      v172 = *(a2 + 1946);
      if (v172 == 0xFFFF)
      {
        v172 = *(a2 + 2004);
        *(a2 + 1946) = v172;
        *(a2 + 2004) = v172 + 1;
      }

      *v824 = (v172 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v823);
      memset(&v824[24], 0, 48);
      v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
      *(a2 + 16) = 2;
      v173 = *(a2 + 1940);
      if (v173 == 0xFFFF)
      {
        v173 = *(a2 + 2004);
        *(a2 + 1940) = v173;
        *(a2 + 2004) = v173 + 1;
      }

      *&v824[8] = (v173 << 48) | 0x19C840;
      v174 = *(a2 + 1946);
      if (v174 == 0xFFFF)
      {
        v174 = *(a2 + 2004);
        *(a2 + 1946) = v174;
        *(a2 + 2004) = v174 + 1;
      }

      *&v824[16] = (v174 << 48) | 0x19C840;
      if (v173 == 0xFFFF)
      {
        v173 = *(a2 + 2004);
        *(a2 + 1940) = v173;
        *(a2 + 2004) = v173 + 1;
      }

      v175 = vandq_s8(vshlq_u32(vdupq_lane_s32(v819, 1), xmmword_23A301100), xmmword_23A300EF0);
      *v175.i8 = vorr_s8(*v175.i8, *&vextq_s8(v175, v175, 8uLL));
      v176.i64[0] = v175.u32[0];
      v176.i64[1] = v175.u32[1];
      *v824 = (*&vorr_s8(v175.u32[0], *&vextq_s8(v176, v176, 8uLL)) | (v173 << 48)) + 1918898176;
      (*(a2 + 2016))(a2, &v823);
    }

    v177 = v805;
    if ((*v805 & 0x400000000000000) == 0)
    {
      if ((*v805 & 0x2000000000000) != 0)
      {
        v221 = 0;
        do
        {
          memset(&v824[24], 0, 48);
          v823 = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
          *(a2 + 16) = 2;
          v222 = *(a2 + 1942);
          if (v222 == 0xFFFF)
          {
            v222 = *(a2 + 2004);
            *(a2 + 1942) = v222;
            *(a2 + 2004) = v222 + 1;
          }

          *&v824[8] = (v222 << 48) | 0x19C840;
          v223 = a2 + 2 * v221;
          v224 = *(v223 + 1924);
          if (v224 == 0xFFFF)
          {
            v224 = *(a2 + 2004);
            *(v223 + 1924) = v224;
            *(a2 + 2004) = v224 + 1;
          }

          *&v824[16] = (v224 << 48) | 0x19C840;
          v225 = *(v223 + 1932);
          if (v225 == 0xFFFF)
          {
            v225 = *(a2 + 2004);
            *(v223 + 1932) = v225;
            *(a2 + 2004) = v225 + 1;
          }

          *v824 = (v225 << 48) | 0x72679000;
          (*(a2 + 2016))(a2, &v823);
          ++v221;
        }

        while (v221 < v69);
        v226 = 0;
        v227 = 1;
        do
        {
          memset(v824, 0, sizeof(v824));
          v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000A02;
          *(a2 + 16) = 2;
          v228 = *(v813 + 2 * v226);
          if (v228 == 0xFFFF)
          {
            v229 = *(a2 + 2004);
            *(v813 + 2 * v226) = v229;
            *(a2 + 2004) = v229 + 1;
            v228 = *(v813 + 2 * v226);
            *&v824[8] = (v229 << 48) | 0x19C840;
            if (v228 == 0xFFFF)
            {
              v228 = *(a2 + 2004);
              *(v813 + 2 * v226) = v228;
              *(a2 + 2004) = v228 + 1;
            }
          }

          else
          {
            *&v824[8] = (v228 << 48) | 0x19C840;
          }

          *&v824[16] = (v228 << 48) | 0x19C840;
          v230 = *(a2 + 1946);
          if (v227)
          {
            if (v230 == 0xFFFF)
            {
              v230 = *(a2 + 2004);
              *(a2 + 1946) = v230;
              *(a2 + 2004) = v230 + 1;
            }

            v231 = (v230 << 48) | 0x72679000;
          }

          else
          {
            if (v230 == 0xFFFF)
            {
              v230 = *(a2 + 2004);
              *(a2 + 1946) = v230;
              *(a2 + 2004) = v230 + 1;
            }

            v231 = ((v226 == 1) << 17) | (v230 << 48) | ((v226 == 2) << 16) | ((v226 == 3) << 15) | 0x72601000;
          }

          *v824 = v231;
          (*(a2 + 2016))(a2, &v823);
          v227 = 0;
          ++v226;
        }

        while (v226 < v69);
        memset(&v824[8], 0, 64);
        v232 = 8 * (*(a2 + 16) & 7);
        *(a2 + 16) = 1;
        v823 = v232 | 0x3100080341;
        v233 = *(a2 + 1946);
        if (v233 == 0xFFFF)
        {
          v246 = *(a2 + 2004);
          v247 = *(a2 + 2004);
          *(a2 + 1946) = v246;
          *(a2 + 2004) = ++v247;
          *&v824[8] = (v246 << 48) | 0x19C840;
          if ((v247 & 0x10000) != 0)
          {
            v246 = *(a2 + 2004);
            *(a2 + 1946) = v246;
            *(a2 + 2004) = v246 + 1;
          }

          v234 = v246 << 48;
        }

        else
        {
          v234 = v233 << 48;
          *&v824[8] = (v233 << 48) | 0x19C840;
        }

        *v824 = v234 | 0x72679000;
        (*(a2 + 2016))(a2, &v823);
        v248 = 966;
        v249 = 64;
        do
        {
          memset(&v824[24], 0, 48);
          v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
          *(a2 + 16) = 2;
          v250 = *(a2 + 2 * v248);
          if (v250 == 0xFFFF)
          {
            v250 = *(a2 + 2004);
            *(a2 + 2 * v248) = v250;
            *(a2 + 2004) = v250 + 1;
          }

          *&v824[8] = (v250 << 48) | 0x19C840;
          v251 = *(a2 + 1946);
          if (v251 == 0xFFFF)
          {
            v251 = *(a2 + 2004);
            *(a2 + 1946) = v251;
            *(a2 + 2004) = v251 + 1;
          }

          *&v824[16] = v249 + (v251 << 48);
          v252 = *(a2 + 2 * v248);
          if (v252 == 0xFFFF)
          {
            v252 = *(a2 + 2004);
            *(a2 + 2 * v248) = v252;
            *(a2 + 2004) = v252 + 1;
          }

          *v824 = (v252 << 48) | 0x72679000;
          (*(a2 + 2016))(a2, &v823);
          v249 += 43520;
          v253 = v248 - 965;
          ++v248;
        }

        while (v253 < v69);
      }

      else
      {
        if ((v66 & 0xF) == 0xF)
        {
          goto LABEL_301;
        }

        v178 = 0;
        do
        {
          if ((v810 >> v178))
          {
            v179 = *&v821[4 * v178];
            memset(v824, 0, sizeof(v824));
            v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
            *(a2 + 16) = 1;
            *&v824[8] = ((gleVStateProgram_GetParam(a2, v179 + 304) << 48) | 0x19C840) + 64;
            v180 = a2 + 2 * v178;
            v181 = *(v180 + 1932);
            if (v181 == 0xFFFF)
            {
              v181 = *(a2 + 2004);
              *(v180 + 1932) = v181;
              *(a2 + 2004) = v181 + 1;
            }

            *v824 = (v181 << 48) | 0x72679000;
            (*(a2 + 2016))(a2, &v823);
          }

          ++v178;
        }

        while (v178 < v69);
        if ((v798 & 1) == 0)
        {
LABEL_301:
          memset(&v824[24], 0, 48);
          v182 = 8 * (*(a2 + 16) & 7);
          *(a2 + 16) = 2;
          v823 = v182 | 0x3100011042;
          v183 = *(a2 + 1904);
          if (v183 == 0xFFFF)
          {
            v183 = *(a2 + 2004);
            *(a2 + 1904) = v183;
            *(a2 + 2004) = v183 + 1;
          }

          *&v824[8] = (v183 << 48) | 0x19C840;
          *&v824[16] = 2560163840;
          v184 = *(a2 + 1946);
          if (v184 == 0xFFFF)
          {
            v184 = *(a2 + 2004);
            *(a2 + 1946) = v184;
            *(a2 + 2004) = v184 + 1;
          }

          *v824 = (v184 << 48) | 0x72679000;
          (*(a2 + 2016))(a2, &v823);
          v185 = 0;
          do
          {
            if ((v66 >> v185))
            {
              memset(&v824[24], 0, 48);
              v823 = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
              *(a2 + 16) = 2;
              v186 = *(a2 + 1946);
              if (v186 == 0xFFFF)
              {
                v186 = *(a2 + 2004);
                *(a2 + 1946) = v186;
                *(a2 + 2004) = v186 + 1;
              }

              *&v824[8] = (v186 << 48) | 0x19C840;
              v187 = a2 + 2 * v185;
              v188 = *(v187 + 1924);
              if (v188 == 0xFFFF)
              {
                v188 = *(a2 + 2004);
                *(v187 + 1924) = v188;
                *(a2 + 2004) = v188 + 1;
              }

              *&v824[16] = (v188 << 48) | 0x19C840;
              v189 = *(v187 + 1932);
              if (v189 == 0xFFFF)
              {
                v189 = *(a2 + 2004);
                *(v187 + 1932) = v189;
                *(a2 + 2004) = v189 + 1;
              }

              *v824 = (v189 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, &v823);
            }

            ++v185;
          }

          while (v185 < v69);
          v190 = 0;
          v191 = 0;
          do
          {
            if ((v66 >> v190))
            {
              memset(v824, 0, sizeof(v824));
              v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000A02;
              *(a2 + 16) = 2;
              v192 = *(v813 + 2 * v190);
              if (v192 == 0xFFFF)
              {
                v193 = *(a2 + 2004);
                *(v813 + 2 * v190) = v193;
                *(a2 + 2004) = v193 + 1;
                v192 = *(v813 + 2 * v190);
                *&v824[8] = (v193 << 48) | 0x19C840;
                if (v192 == 0xFFFF)
                {
                  v192 = *(a2 + 2004);
                  *(v813 + 2 * v190) = v192;
                  *(a2 + 2004) = v192 + 1;
                }
              }

              else
              {
                *&v824[8] = (v192 << 48) | 0x19C840;
              }

              *&v824[16] = (v192 << 48) | 0x19C840;
              v194 = *(a2 + 1946);
              if (v191)
              {
                if (v194 == 0xFFFF)
                {
                  v194 = *(a2 + 2004);
                  *(a2 + 1946) = v194;
                  *(a2 + 2004) = v194 + 1;
                }

                v195 = ((v190 == 1) << 17) | (v194 << 48) | ((v190 == 2) << 16) | ((v190 == 3) << 15) | 0x72601000;
              }

              else
              {
                if (v194 == 0xFFFF)
                {
                  v194 = *(a2 + 2004);
                  *(a2 + 1946) = v194;
                  *(a2 + 2004) = v194 + 1;
                }

                v195 = (v194 << 48) | 0x72679000;
              }

              *v824 = v195;
              (*(a2 + 2016))(a2, &v823);
              v191 = 1;
            }

            ++v190;
          }

          while (v190 < v69);
          memset(&v824[8], 0, 64);
          v196 = 8 * (*(a2 + 16) & 7);
          *(a2 + 16) = 1;
          v823 = v196 | 0x3100080341;
          v197 = *(a2 + 1946);
          if (v197 == 0xFFFF)
          {
            v254 = *(a2 + 2004);
            v255 = *(a2 + 2004);
            *(a2 + 1946) = v254;
            *(a2 + 2004) = ++v255;
            *&v824[8] = (v254 << 48) | 0x19C840;
            if ((v255 & 0x10000) != 0)
            {
              v254 = *(a2 + 2004);
              *(a2 + 1946) = v254;
              *(a2 + 2004) = v254 + 1;
            }

            v198 = v254 << 48;
          }

          else
          {
            v198 = v197 << 48;
            *&v824[8] = (v197 << 48) | 0x19C840;
          }

          *v824 = v198 | 0x72679000;
          (*(a2 + 2016))(a2, &v823);
          v256 = 0;
          v257 = 64;
          do
          {
            if ((v66 >> v256))
            {
              memset(&v824[24], 0, 48);
              v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
              *(a2 + 16) = 2;
              v258 = a2 + 2 * v256;
              v259 = *(v258 + 1932);
              if (v259 == 0xFFFF)
              {
                v259 = *(a2 + 2004);
                *(v258 + 1932) = v259;
                *(a2 + 2004) = v259 + 1;
              }

              *&v824[8] = (v259 << 48) | 0x19C840;
              v260 = *(a2 + 1946);
              if (v260 == 0xFFFF)
              {
                v260 = *(a2 + 2004);
                *(a2 + 1946) = v260;
                *(a2 + 2004) = v260 + 1;
              }

              *&v824[16] = v257 + (v260 << 48);
              v261 = *(v258 + 1932);
              if (v261 == 0xFFFF)
              {
                v261 = *(a2 + 2004);
                *(v258 + 1932) = v261;
                *(a2 + 2004) = v261 + 1;
              }

              *v824 = (v261 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, &v823);
            }

            ++v256;
            v257 += 43520;
          }

          while (v256 < v69);
        }
      }

      v262 = 0;
      v263 = 1;
      v177 = v805;
      do
      {
        memset(v824, 0, sizeof(v824));
        v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000A02;
        *(a2 + 16) = 2;
        v264 = *(a2 + 1902);
        if (v264 == 0xFFFF)
        {
          v264 = *(a2 + 2004);
          *(a2 + 1902) = v264;
          *(a2 + 2004) = v264 + 1;
        }

        *&v824[8] = (v264 << 48) | 0x19C840;
        v265 = *(v813 + 2 * v262);
        if (v265 == 0xFFFF)
        {
          v265 = *(a2 + 2004);
          *(v813 + 2 * v262) = v265;
          *(a2 + 2004) = v265 + 1;
        }

        *&v824[16] = (v265 << 48) | 0x19C840;
        v266 = *(a2 + 1922);
        if (v263)
        {
          if (v266 == 0xFFFF)
          {
            v266 = *(a2 + 2004);
            *(a2 + 1922) = v266;
            *(a2 + 2004) = v266 + 1;
          }

          v267 = (v266 << 48) | 0x72679000;
        }

        else
        {
          if (v266 == 0xFFFF)
          {
            v266 = *(a2 + 2004);
            *(a2 + 1922) = v266;
            *(a2 + 2004) = v266 + 1;
          }

          v267 = ((v262 == 1) << 17) | (v266 << 48) | ((v262 == 2) << 16) | ((v262 == 3) << 15) | 0x72601000;
        }

        *v824 = v267;
        (*(a2 + 2016))(a2, &v823);
        v263 = 0;
        ++v262;
      }

      while (v262 < v69);
      goto LABEL_455;
    }

    v199 = 0;
    do
    {
      memset(&v824[24], 0, 48);
      v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000B82;
      *(a2 + 16) = 2;
      v200 = *(a2 + 1902);
      if (v200 == 0xFFFF)
      {
        v200 = *(a2 + 2004);
        *(a2 + 1902) = v200;
        *(a2 + 2004) = v200 + 1;
      }

      *&v824[8] = (v200 << 48) | 0x19C840;
      v201 = a2 + 2 * v199;
      v202 = *(v201 + 1924);
      if (v202 == 0xFFFF)
      {
        v202 = *(a2 + 2004);
        *(v201 + 1924) = v202;
        *(a2 + 2004) = v202 + 1;
      }

      *&v824[16] = (v202 << 48) | 0x19C840;
      v203 = *(v201 + 1932);
      if (v203 == 0xFFFF)
      {
        v203 = *(a2 + 2004);
        *(v201 + 1932) = v203;
        *(a2 + 2004) = v203 + 1;
      }

      *v824 = (v203 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v823);
      ++v199;
    }

    while (v199 < v69);
    v204 = 966;
    do
    {
      memset(v824, 0, sizeof(v824));
      v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000B82;
      *(a2 + 16) = 2;
      v205 = *(a2 + 1902);
      if (v205 == 0xFFFF)
      {
        v205 = *(a2 + 2004);
        *(a2 + 1902) = v205;
        *(a2 + 2004) = v205 + 1;
      }

      *&v824[8] = (v205 << 48) | 0x19C840;
      v206 = *(a2 + 2 * v204);
      if (v206 == 0xFFFF)
      {
        v207 = *(a2 + 2004);
        *(a2 + 2 * v204) = v207;
        *(a2 + 2004) = v207 + 1;
        v206 = *(a2 + 2 * v204);
        *&v824[16] = (v207 << 48) | 0x19C840;
        if (v206 == 0xFFFF)
        {
          v206 = *(a2 + 2004);
          *(a2 + 2 * v204) = v206;
          *(a2 + 2004) = v206 + 1;
        }
      }

      else
      {
        *&v824[16] = (v206 << 48) | 0x19C840;
      }

      *v824 = (v206 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v823);
      v208 = v204 - 965;
      ++v204;
    }

    while (v208 < v69);
    v209 = 966;
    while (1)
    {
      memset(&v824[8], 0, 64);
      v823 = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
      *(a2 + 16) = 2;
      v210 = *(a2 + 2 * v209);
      if (v210 == 0xFFFF)
      {
        v211 = *(a2 + 2004);
        *(a2 + 2 * v209) = v211;
        *(a2 + 2004) = v211 + 1;
        v210 = *(a2 + 2 * v209);
        *&v824[8] = (v211 << 48) | 0x19C840;
        if (v210 == 0xFFFF)
        {
          v213 = *(a2 + 2004);
          *(a2 + 2 * v209) = v213;
          *(a2 + 2004) = v213 + 1;
          v210 = *(a2 + 2 * v209);
          *&v824[16] = (v213 << 48) | 0x19C840;
          if (v210 == 0xFFFF)
          {
            v210 = *(a2 + 2004);
            *(a2 + 2 * v209) = v210;
            *(a2 + 2004) = v210 + 1;
          }

          goto LABEL_353;
        }
      }

      else
      {
        *&v824[8] = (v210 << 48) | 0x19C840;
      }

      *&v824[16] = (v210 << 48) | 0x19C840;
LABEL_353:
      *v824 = (v210 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v823);
      v212 = v209 - 965;
      ++v209;
      if (v212 >= v69)
      {
        if ((*(v805 + 6) & 2) != 0)
        {
          v235 = 0;
          do
          {
            memset(&v824[24], 0, 48);
            v823 = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
            *(a2 + 16) = 2;
            v236 = a2 + 2 * v235;
            v237 = *(v236 + 1932);
            if (v237 == 0xFFFF)
            {
              v237 = *(a2 + 2004);
              *(v236 + 1932) = v237;
              *(a2 + 2004) = v237 + 1;
            }

            *&v824[8] = (v237 << 48) | 0x19C840;
            v238 = *(v236 + 1924);
            if (v238 == 0xFFFF)
            {
              v238 = *(a2 + 2004);
              *(v236 + 1924) = v238;
              *(a2 + 2004) = v238 + 1;
            }

            *&v824[16] = (v238 << 48) | 0x19C840;
            v239 = *(v236 + 1932);
            if (v239 == 0xFFFF)
            {
              v239 = *(a2 + 2004);
              *(v236 + 1932) = v239;
              *(a2 + 2004) = v239 + 1;
            }

            *v824 = (v239 << 48) | 0x72679000;
            (*(a2 + 2016))(a2, &v823);
            ++v235;
          }

          while (v235 < v69);
          v240 = 0;
          v241 = 1;
          do
          {
            memset(v824, 0, sizeof(v824));
            v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000A02;
            *(a2 + 16) = 2;
            v242 = *(v813 + 2 * v240);
            if (v242 == 0xFFFF)
            {
              v242 = *(a2 + 2004);
              *(v813 + 2 * v240) = v242;
              *(a2 + 2004) = v242 + 1;
            }

            *&v824[8] = (v242 << 48) | 0x19C840;
            v243 = *(a2 + 1942);
            if (v243 == 0xFFFF)
            {
              v243 = *(a2 + 2004);
              *(a2 + 1942) = v243;
              *(a2 + 2004) = v243 + 1;
            }

            *&v824[16] = (v243 << 48) | 0x19C840;
            v244 = *(a2 + 1922);
            if (v241)
            {
              if (v244 == 0xFFFF)
              {
                v244 = *(a2 + 2004);
                *(a2 + 1922) = v244;
                *(a2 + 2004) = v244 + 1;
              }

              v245 = (v244 << 48) | 0x72679000;
            }

            else
            {
              if (v244 == 0xFFFF)
              {
                v244 = *(a2 + 2004);
                *(a2 + 1922) = v244;
                *(a2 + 2004) = v244 + 1;
              }

              v245 = ((v240 == 1) << 17) | (v244 << 48) | ((v240 == 2) << 16) | ((v240 == 3) << 15) | 0x72601000;
            }

            *v824 = v245;
            (*(a2 + 2016))(a2, &v823);
            v241 = 0;
            ++v240;
          }

          while (v240 < v69);
        }

        else
        {
          v214 = 0;
          v215 = 1;
          v216 = (a2 + 1932);
          do
          {
            memset(v824, 0, sizeof(v824));
            v823 = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
            *(a2 + 16) = 2;
            v217 = *v216;
            if (v217 == 0xFFFF)
            {
              v217 = *(a2 + 2004);
              *v216 = v217;
              *(a2 + 2004) = v217 + 1;
            }

            *&v824[8] = (v217 << 48) | 0x15440;
            v218 = *(v216 - 4);
            if (v218 == 0xFFFF)
            {
              v218 = *(a2 + 2004);
              *(v216 - 4) = v218;
              *(a2 + 2004) = v218 + 1;
            }

            *&v824[16] = (v218 << 48) | 0x15440;
            v219 = *(a2 + 1922);
            if (v215)
            {
              if (v219 == 0xFFFF)
              {
                v219 = *(a2 + 2004);
                *(a2 + 1922) = v219;
                *(a2 + 2004) = v219 + 1;
              }

              v220 = (v219 << 48) | 0x72679000;
            }

            else
            {
              if (v219 == 0xFFFF)
              {
                v219 = *(a2 + 2004);
                *(a2 + 1922) = v219;
                *(a2 + 2004) = v219 + 1;
              }

              v220 = ((v214 == 1) << 17) | (v219 << 48) | ((v214 == 2) << 16) | ((v214 == 3) << 15) | 0x72601000;
            }

            *v824 = v220;
            (*(a2 + 2016))(a2, &v823);
            v215 = 0;
            ++v214;
            ++v216;
          }

          while (v214 < v69);
        }

LABEL_455:
        if (*(v177 + 6))
        {
          memset(v824, 0, sizeof(v824));
          v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000F83;
          *(a2 + 16) = 3;
          v268 = *(a2 + 1920);
          if (v268 == 0xFFFF)
          {
            v268 = *(a2 + 2004);
            *(a2 + 1920) = v268;
            *(a2 + 2004) = v268 + 1;
          }

          *&v824[8] = (v268 << 48) | 0x19C840;
          v269 = *(a2 + 1922);
          if (v269 != 0xFFFF)
          {
            v270 = v269 << 48;
            *&v824[16] = ((v269 << 48) | 0x19C840) + 16;
            goto LABEL_465;
          }

          v271 = *(a2 + 2004);
          v272 = *(a2 + 2004);
          *(a2 + 1922) = v271;
          *(a2 + 2004) = ++v272;
          *&v824[16] = ((v271 << 48) | 0x19C840) + 16;
          if ((v272 & 0x10000) != 0)
          {
            v273 = *(a2 + 2004);
            v274 = *(a2 + 2004);
            *(a2 + 1922) = v273;
            *(a2 + 2004) = ++v274;
            *&v824[24] = (v273 << 48) | 0x19C840;
            if ((v274 & 0x10000) != 0)
            {
              v273 = *(a2 + 2004);
              *(a2 + 1922) = v273;
              *(a2 + 2004) = v273 + 1;
            }

            v270 = v273 << 48;
          }

          else
          {
            v270 = v271 << 48;
LABEL_465:
            *&v824[24] = v270 | 0x19C840;
          }

          *v824 = v270 | 0x72679000;
          (*(a2 + 2016))(a2, &v823);
        }

        memset(v824, 0, sizeof(v824));
        v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000B42;
        *(a2 + 16) = 2;
        v275 = *(a2 + 1922);
        if (v275 == 0xFFFF)
        {
          v275 = *(a2 + 2004);
          *(a2 + 1922) = v275;
          *(a2 + 2004) = v275 + 1;
        }

        *&v824[8] = (v275 << 48) | 0x19C840;
        *&v824[16] = (gleVStateProgram_GetParam(a2, 351) << 48) | 0xAA80;
        v276 = *(a2 + 1922);
        if (v276 == 0xFFFF)
        {
          v276 = *(a2 + 2004);
          *(a2 + 1922) = v276;
          *(a2 + 2004) = v276 + 1;
        }

        *v824 = (v276 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, &v823);
        if (*(v177 + 6))
        {
          memset(v824, 0, sizeof(v824));
          v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000F83;
          *(a2 + 16) = 3;
          v281 = *(a2 + 1920);
          if (v281 == 0xFFFF)
          {
            v281 = *(a2 + 2004);
            *(a2 + 1920) = v281;
            *(a2 + 2004) = v281 + 1;
          }

          *&v824[8] = (v281 << 48) | 0x19C840;
          v282 = *(a2 + 1632);
          if (v282 == 0xFFFF)
          {
            v283 = *(a2 + 1998);
            v282 = *(a2 + 1998);
            *(a2 + 1632) = v283;
            *(v795 + 4 * v283 + 2) = 343;
            *(a2 + 1998) = v283 + 1;
          }

          *&v824[16] = (v282 << 48) | 0x80;
          v284 = *(a2 + 1628);
          if (v284 == 0xFFFF)
          {
            v285 = *(a2 + 1998);
            v284 = *(a2 + 1998);
            *(a2 + 1628) = v285;
            *(v795 + 4 * v285 + 2) = 342;
            *(a2 + 1998) = v285 + 1;
          }

          *&v824[24] = (v284 << 48) | 0x80;
          v286 = *(a2 + 1946);
          if (v286 == 0xFFFF)
          {
            v286 = *(a2 + 2004);
            *(a2 + 1946) = v286;
            *(a2 + 2004) = v286 + 1;
          }

          *v824 = (v286 << 48) | 0x72679000;
          (*(a2 + 2016))(a2, &v823);
          memset(&v824[24], 0, 48);
          v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000E02;
          *(a2 + 16) = 2;
          v278 = *(a2 + 1922);
          if (v278 == 0xFFFF)
          {
            v278 = *(a2 + 2004);
            *(a2 + 1922) = v278;
            *(a2 + 2004) = v278 + 1;
          }

          *&v824[8] = (v278 << 48) | 0x19C840;
          v287 = *(a2 + 1946);
          if (v287 == 0xFFFF)
          {
            v287 = *(a2 + 2004);
            *(a2 + 1946) = v287;
            *(a2 + 2004) = v287 + 1;
          }

          *&v824[16] = (v287 << 48) | 0x19C840;
          if (v278 == 0xFFFF)
          {
            v278 = *(a2 + 2004);
            *(a2 + 1922) = v278;
            *(a2 + 2004) = v278 + 1;
          }
        }

        else
        {
          memset(&v824[24], 0, 48);
          v277 = *(a2 + 16);
          *(a2 + 16) = 2;
          v823 = (8 * (v277 & 7)) | 0x100000E02;
          v278 = *(a2 + 1922);
          if (v278 == 0xFFFF)
          {
            v278 = *(a2 + 2004);
            *(a2 + 1922) = v278;
            *(a2 + 2004) = v278 + 1;
          }

          *&v824[8] = (v278 << 48) | 0x19C840;
          v279 = *(a2 + 1628);
          if (v279 == 0xFFFF)
          {
            v280 = *(a2 + 1998);
            v279 = *(a2 + 1998);
            *(a2 + 1628) = v280;
            *(v795 + 4 * v280 + 2) = 342;
            *(a2 + 1998) = v280 + 1;
            v278 = *(a2 + 1922);
          }

          *&v824[16] = (v279 << 48) | 0x80;
          if (v278 == 0xFFFF)
          {
            v278 = *(a2 + 2004);
            *(a2 + 1922) = v278;
            *(a2 + 2004) = v278 + 1;
          }
        }

        *v824 = (v278 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, &v823);
        memset(v824, 0, sizeof(v824));
        v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000F83;
        *(a2 + 16) = 3;
        v288 = *(a2 + 1920);
        if (v288 == 0xFFFF)
        {
          v290 = *(a2 + 2004);
          v291 = *(a2 + 2004);
          *(a2 + 1920) = v290;
          *(a2 + 2004) = ++v291;
          *&v824[8] = ((v290 << 48) | 0x19C840) + 16;
          if ((v291 & 0x10000) != 0)
          {
            v290 = *(a2 + 2004);
            *(a2 + 1920) = v290;
            *(a2 + 2004) = v290 + 1;
          }

          v289 = v290 << 48;
        }

        else
        {
          v289 = v288 << 48;
          *&v824[8] = ((v288 << 48) | 0x19C840) + 16;
        }

        *&v824[16] = v289 | 0x19C840;
        *&v824[24] = (gleVStateProgram_GetParam(a2, 351) << 48) | 0xAA80;
        v292 = *(a2 + 1916);
        if (v292 == 0xFFFF)
        {
          v292 = *(a2 + 2004);
          *(a2 + 1916) = v292;
          *(a2 + 2004) = v292 + 1;
        }

        *v824 = (v292 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, &v823);
        if (*(v177 + 6))
        {
          memset(v824, 0, sizeof(v824));
          v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000F83;
          *(a2 + 16) = 3;
          v293 = *(a2 + 1920);
          if (v293 == 0xFFFF)
          {
            v295 = *(a2 + 2004);
            v296 = *(a2 + 2004);
            *(a2 + 1920) = v295;
            *(a2 + 2004) = ++v296;
            *&v824[8] = (v295 << 48) | 0x19C840;
            if ((v296 & 0x10000) != 0)
            {
              v295 = *(a2 + 2004);
              *(a2 + 1920) = v295;
              *(a2 + 2004) = v295 + 1;
            }

            v294 = v295 << 48;
          }

          else
          {
            v294 = v293 << 48;
            *&v824[8] = (v293 << 48) | 0x19C840;
          }

          *&v824[16] = v294 + 1689680;
          *&v824[24] = (gleVStateProgram_GetParam(a2, 351) << 48) | 0xAA80;
          v297 = *(a2 + 1920);
          if (v297 == 0xFFFF)
          {
            v297 = *(a2 + 2004);
            *(a2 + 1920) = v297;
            *(a2 + 2004) = v297 + 1;
          }

          *v824 = (v297 << 48) | 0x72679000;
          (*(a2 + 2016))(a2, &v823);
        }

        if (v796 == 6)
        {
          v298 = 0;
          do
          {
            v299 = *&v821[4 * v298];
            memset(v824, 0, sizeof(v824));
            v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
            *(a2 + 16) = 2;
            *&v824[8] = ((gleVStateProgram_GetParam(a2, v299 + 272) << 48) | 0x19C840) + 64;
            *&v824[16] = (gleVStateProgram_GetAttrib(a2, 2) << 48) | 0x19C800;
            v300 = a2 + 2 * v298;
            v301 = *(v300 + 1946);
            if (v301 == 0xFFFF)
            {
              v301 = *(a2 + 2004);
              *(v300 + 1946) = v301;
              *(a2 + 2004) = v301 + 1;
            }

            *v824 = (v301 << 48) | 0x72679000;
            (*(a2 + 2016))(a2, &v823);
            ++v298;
          }

          while (v298 < v69);
          v302 = 0;
          do
          {
            v303 = *&v821[4 * v302];
            memset(v824, 0, sizeof(v824));
            v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
            *(a2 + 16) = 2;
            *&v824[8] = ((gleVStateProgram_GetParam(a2, v303 + 280) << 48) | 0x19C840) + 64;
            *&v824[16] = (gleVStateProgram_GetAttrib(a2, 2) << 48) | 0x19C800;
            v304 = a2 + 2 * v302;
            v305 = *(v304 + 1962);
            if (v305 == 0xFFFF)
            {
              v305 = *(a2 + 2004);
              *(v304 + 1962) = v305;
              *(a2 + 2004) = v305 + 1;
            }

            *v824 = (v305 << 48) | 0x72679000;
            (*(a2 + 2016))(a2, &v823);
            ++v302;
          }

          while (v302 < v69);
          v306 = 0;
          v307 = 64;
          do
          {
            memset(v824, 0, sizeof(v824));
            v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
            *(a2 + 16) = 3;
            v308 = *(a2 + 1916);
            if (v308 == 0xFFFF)
            {
              v308 = *(a2 + 2004);
              *(a2 + 1916) = v308;
              *(a2 + 2004) = v308 + 1;
            }

            *&v824[8] = v307 + (v308 << 48);
            v309 = a2 + 2 * v306;
            v310 = *(v309 + 1962);
            if (v310 == 0xFFFF)
            {
              v310 = *(a2 + 2004);
              *(v309 + 1962) = v310;
              *(a2 + 2004) = v310 + 1;
            }

            *&v824[16] = (v310 << 48) | 0x19C840;
            v311 = *(v309 + 1946);
            if (v311 == 0xFFFF)
            {
              v312 = *(a2 + 2004);
              *(v309 + 1946) = v312;
              *(a2 + 2004) = v312 + 1;
              v311 = *(v309 + 1946);
              *&v824[24] = (v312 << 48) | 0x19C840;
              if (v311 == 0xFFFF)
              {
                v311 = *(a2 + 2004);
                *(v309 + 1946) = v311;
                *(a2 + 2004) = v311 + 1;
              }
            }

            else
            {
              *&v824[24] = (v311 << 48) | 0x19C840;
            }

            *v824 = (v311 << 48) | 0x72679000;
            (*(a2 + 2016))(a2, &v823);
            ++v306;
            v307 += 43520;
          }

          while (v306 < v69);
        }

        else if ((v801 & 2) != 0)
        {
          v330 = 0;
          do
          {
            v331 = *&v821[4 * v330];
            memset(v824, 0, sizeof(v824));
            v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
            *(a2 + 16) = 2;
            *&v824[8] = ((gleVStateProgram_GetParam(a2, v331 + 272) << 48) | 0x19C840) + 64;
            *&v824[16] = (gleVStateProgram_GetAttrib(a2, 2) << 48) | 0x19C800;
            v332 = a2 + 2 * v330;
            v333 = *(v332 + 1946);
            if (v333 == 0xFFFF)
            {
              v333 = *(a2 + 2004);
              *(v332 + 1946) = v333;
              *(a2 + 2004) = v333 + 1;
            }

            *v824 = (v333 << 48) | 0x72679000;
            (*(a2 + 2016))(a2, &v823);
            ++v330;
          }

          while (v330 < v69);
          v334 = 0;
          v335 = 64;
          do
          {
            v336 = *&v821[4 * v334];
            memset(v824, 0, sizeof(v824));
            v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
            *(a2 + 16) = 3;
            v337 = *(a2 + 1916);
            if (v337 == 0xFFFF)
            {
              v337 = *(a2 + 2004);
              *(a2 + 1916) = v337;
              *(a2 + 2004) = v337 + 1;
            }

            *&v824[8] = v335 + (v337 << 48);
            *&v824[16] = ((gleVStateProgram_GetParam(a2, 2 * v336 + 240) << 48) | 0x19C840) + 64;
            v338 = a2 + 2 * v334;
            v339 = *(v338 + 1946);
            if (v339 == 0xFFFF)
            {
              v340 = *(a2 + 2004);
              *(v338 + 1946) = v340;
              *(a2 + 2004) = v340 + 1;
              v339 = *(v338 + 1946);
              *&v824[24] = (v340 << 48) | 0x19C840;
              if (v339 == 0xFFFF)
              {
                v339 = *(a2 + 2004);
                *(v338 + 1946) = v339;
                *(a2 + 2004) = v339 + 1;
              }
            }

            else
            {
              *&v824[24] = (v339 << 48) | 0x19C840;
            }

            *v824 = (v339 << 48) | 0x72679000;
            (*(a2 + 2016))(a2, &v823);
            ++v334;
            v335 += 43520;
          }

          while (v334 < v69);
        }

        else
        {
          v313 = 0;
          if ((v801 & 4) != 0)
          {
            do
            {
              v320 = *&v821[4 * v313];
              memset(v824, 0, sizeof(v824));
              v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
              *(a2 + 16) = 2;
              *&v824[8] = ((gleVStateProgram_GetParam(a2, v320 + 280) << 48) | 0x19C840) + 64;
              *&v824[16] = (gleVStateProgram_GetAttrib(a2, 2) << 48) | 0x19C800;
              v321 = a2 + 2 * v313;
              v322 = *(v321 + 1962);
              if (v322 == 0xFFFF)
              {
                v322 = *(a2 + 2004);
                *(v321 + 1962) = v322;
                *(a2 + 2004) = v322 + 1;
              }

              *v824 = (v322 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, &v823);
              ++v313;
            }

            while (v313 < v69);
            v323 = 0;
            v324 = 64;
            do
            {
              v325 = *&v821[4 * v323];
              memset(v824, 0, sizeof(v824));
              v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
              *(a2 + 16) = 3;
              v326 = *(a2 + 1916);
              if (v326 == 0xFFFF)
              {
                v326 = *(a2 + 2004);
                *(a2 + 1916) = v326;
                *(a2 + 2004) = v326 + 1;
              }

              *&v824[8] = v324 + (v326 << 48);
              v327 = a2 + 2 * v323;
              v328 = *(v327 + 1962);
              if (v328 == 0xFFFF)
              {
                v328 = *(a2 + 2004);
                *(v327 + 1962) = v328;
                *(a2 + 2004) = v328 + 1;
              }

              *&v824[16] = (v328 << 48) | 0x19C840;
              *&v824[24] = ((gleVStateProgram_GetParam(a2, 2 * v325 + 224) << 48) | 0x19C840) + 64;
              v329 = *(v327 + 1946);
              if (v329 == 0xFFFF)
              {
                v329 = *(a2 + 2004);
                *(v327 + 1946) = v329;
                *(a2 + 2004) = v329 + 1;
              }

              *v824 = (v329 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, &v823);
              ++v323;
              v324 += 43520;
            }

            while (v323 < v69);
          }

          else
          {
            v314 = 64;
            do
            {
              v315 = *&v821[4 * v313];
              memset(v824, 0, sizeof(v824));
              v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
              *(a2 + 16) = 3;
              v316 = *(a2 + 1916);
              if (v316 == 0xFFFF)
              {
                v316 = *(a2 + 2004);
                *(a2 + 1916) = v316;
                *(a2 + 2004) = v316 + 1;
              }

              *&v824[8] = v314 + (v316 << 48);
              v317 = 2 * v315;
              *&v824[16] = (gleVStateProgram_GetParam(a2, 2 * v315 + 240) << 48) | 0x19C880;
              *&v824[24] = (gleVStateProgram_GetParam(a2, v317 + 224) << 48) | 0x19C880;
              v318 = a2 + 2 * v313;
              v319 = *(v318 + 1946);
              if (v319 == 0xFFFF)
              {
                v319 = *(a2 + 2004);
                *(v318 + 1946) = v319;
                *(a2 + 2004) = v319 + 1;
              }

              *v824 = (v319 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, &v823);
              ++v313;
              v314 += 43520;
            }

            while (v313 < v69);
          }
        }

        if (*(v177 + 6))
        {
          if (v794 == 6)
          {
            v341 = 0;
            do
            {
              v342 = *&v821[4 * v341];
              memset(v824, 0, sizeof(v824));
              v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
              *(a2 + 16) = 2;
              *&v824[8] = ((gleVStateProgram_GetParam(a2, v342 + 272) << 48) | 0x19C840) + 64;
              *&v824[16] = (gleVStateProgram_GetAttrib(a2, 2) << 48) | 0x19C800;
              v343 = a2 + 2 * v341;
              v344 = *(v343 + 1954);
              if (v344 == 0xFFFF)
              {
                v344 = *(a2 + 2004);
                *(v343 + 1954) = v344;
                *(a2 + 2004) = v344 + 1;
              }

              *v824 = (v344 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, &v823);
              ++v341;
            }

            while (v341 < v69);
            v345 = 0;
            do
            {
              v346 = *&v821[4 * v345];
              memset(v824, 0, sizeof(v824));
              v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
              *(a2 + 16) = 2;
              *&v824[8] = ((gleVStateProgram_GetParam(a2, v346 + 280) << 48) | 0x19C840) + 64;
              *&v824[16] = (gleVStateProgram_GetAttrib(a2, 2) << 48) | 0x19C800;
              v347 = a2 + 2 * v345;
              v348 = *(v347 + 1970);
              if (v348 == 0xFFFF)
              {
                v348 = *(a2 + 2004);
                *(v347 + 1970) = v348;
                *(a2 + 2004) = v348 + 1;
              }

              *v824 = (v348 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, &v823);
              ++v345;
            }

            while (v345 < v69);
            v349 = 0;
            v350 = 64;
            do
            {
              memset(v824, 0, sizeof(v824));
              v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
              *(a2 + 16) = 3;
              v351 = *(a2 + 1920);
              if (v351 == 0xFFFF)
              {
                v351 = *(a2 + 2004);
                *(a2 + 1920) = v351;
                *(a2 + 2004) = v351 + 1;
              }

              *&v824[8] = v350 + (v351 << 48);
              v352 = a2 + 2 * v349;
              v353 = *(v352 + 1970);
              if (v353 == 0xFFFF)
              {
                v353 = *(a2 + 2004);
                *(v352 + 1970) = v353;
                *(a2 + 2004) = v353 + 1;
              }

              *&v824[16] = (v353 << 48) | 0x19C840;
              v354 = *(v352 + 1954);
              if (v354 == 0xFFFF)
              {
                v355 = *(a2 + 2004);
                *(v352 + 1954) = v355;
                *(a2 + 2004) = v355 + 1;
                v354 = *(v352 + 1954);
                *&v824[24] = (v355 << 48) | 0x19C840;
                if (v354 == 0xFFFF)
                {
                  v354 = *(a2 + 2004);
                  *(v352 + 1954) = v354;
                  *(a2 + 2004) = v354 + 1;
                }
              }

              else
              {
                *&v824[24] = (v354 << 48) | 0x19C840;
              }

              *v824 = (v354 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, &v823);
              ++v349;
              v350 += 43520;
            }

            while (v349 < v69);
          }

          else if ((v799 & 2) != 0)
          {
            v363 = 0;
            do
            {
              v364 = *&v821[4 * v363];
              memset(v824, 0, sizeof(v824));
              v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
              *(a2 + 16) = 2;
              *&v824[8] = ((gleVStateProgram_GetParam(a2, v364 + 272) << 48) | 0x19C840) + 64;
              *&v824[16] = (gleVStateProgram_GetAttrib(a2, 2) << 48) | 0x19C800;
              v365 = a2 + 2 * v363;
              v366 = *(v365 + 1954);
              if (v366 == 0xFFFF)
              {
                v366 = *(a2 + 2004);
                *(v365 + 1954) = v366;
                *(a2 + 2004) = v366 + 1;
              }

              *v824 = (v366 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, &v823);
              ++v363;
            }

            while (v363 < v69);
            v367 = 0;
            v368 = 64;
            do
            {
              v369 = *&v821[4 * v367];
              memset(v824, 0, sizeof(v824));
              v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
              *(a2 + 16) = 3;
              v370 = *(a2 + 1920);
              if (v370 == 0xFFFF)
              {
                v370 = *(a2 + 2004);
                *(a2 + 1920) = v370;
                *(a2 + 2004) = v370 + 1;
              }

              *&v824[8] = v368 + (v370 << 48);
              *&v824[16] = ((gleVStateProgram_GetParam(a2, 2 * v369 + 241) << 48) | 0x19C840) + 64;
              v371 = a2 + 2 * v367;
              v372 = *(v371 + 1954);
              if (v372 == 0xFFFF)
              {
                v373 = *(a2 + 2004);
                *(v371 + 1954) = v373;
                *(a2 + 2004) = v373 + 1;
                v372 = *(v371 + 1954);
                *&v824[24] = (v373 << 48) | 0x19C840;
                if (v372 == 0xFFFF)
                {
                  v372 = *(a2 + 2004);
                  *(v371 + 1954) = v372;
                  *(a2 + 2004) = v372 + 1;
                }
              }

              else
              {
                *&v824[24] = (v372 << 48) | 0x19C840;
              }

              *v824 = (v372 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, &v823);
              ++v367;
              v368 += 43520;
            }

            while (v367 < v69);
          }

          else if ((v799 & 4) != 0)
          {
            v374 = 0;
            do
            {
              v375 = *&v821[4 * v374];
              memset(v824, 0, sizeof(v824));
              v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
              *(a2 + 16) = 2;
              *&v824[8] = ((gleVStateProgram_GetParam(a2, v375 + 280) << 48) | 0x19C840) + 64;
              *&v824[16] = (gleVStateProgram_GetAttrib(a2, 2) << 48) | 0x19C800;
              v376 = a2 + 2 * v374;
              v377 = *(v376 + 1970);
              if (v377 == 0xFFFF)
              {
                v377 = *(a2 + 2004);
                *(v376 + 1970) = v377;
                *(a2 + 2004) = v377 + 1;
              }

              *v824 = (v377 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, &v823);
              ++v374;
            }

            while (v374 < v69);
            v378 = 0;
            v379 = 64;
            do
            {
              v380 = *&v821[4 * v378];
              memset(v824, 0, sizeof(v824));
              v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
              *(a2 + 16) = 3;
              v381 = *(a2 + 1920);
              if (v381 == 0xFFFF)
              {
                v381 = *(a2 + 2004);
                *(a2 + 1920) = v381;
                *(a2 + 2004) = v381 + 1;
              }

              *&v824[8] = v379 + (v381 << 48);
              v382 = a2 + 2 * v378;
              v383 = *(v382 + 1970);
              if (v383 == 0xFFFF)
              {
                v383 = *(a2 + 2004);
                *(v382 + 1970) = v383;
                *(a2 + 2004) = v383 + 1;
              }

              *&v824[16] = (v383 << 48) | 0x19C840;
              *&v824[24] = ((gleVStateProgram_GetParam(a2, 2 * v380 + 225) << 48) | 0x19C840) + 64;
              v384 = *(v382 + 1954);
              if (v384 == 0xFFFF)
              {
                v384 = *(a2 + 2004);
                *(v382 + 1954) = v384;
                *(a2 + 2004) = v384 + 1;
              }

              *v824 = (v384 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, &v823);
              ++v378;
              v379 += 43520;
            }

            while (v378 < v69);
          }

          else
          {
            v356 = 0;
            v357 = 64;
            do
            {
              v358 = *&v821[4 * v356];
              memset(v824, 0, sizeof(v824));
              v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
              *(a2 + 16) = 3;
              v359 = *(a2 + 1920);
              if (v359 == 0xFFFF)
              {
                v359 = *(a2 + 2004);
                *(a2 + 1920) = v359;
                *(a2 + 2004) = v359 + 1;
              }

              *&v824[8] = v357 + (v359 << 48);
              v360 = 2 * v358;
              *&v824[16] = (gleVStateProgram_GetParam(a2, 2 * v358 + 241) << 48) | 0x19C880;
              *&v824[24] = (gleVStateProgram_GetParam(a2, v360 + 225) << 48) | 0x19C880;
              v361 = a2 + 2 * v356;
              v362 = *(v361 + 1954);
              if (v362 == 0xFFFF)
              {
                v362 = *(a2 + 2004);
                *(v361 + 1954) = v362;
                *(a2 + 2004) = v362 + 1;
              }

              *v824 = (v362 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, &v823);
              ++v356;
              v357 += 43520;
            }

            while (v356 < v69);
          }
        }

        memset(v824, 0, sizeof(v824));
        v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000F83;
        *(a2 + 16) = 3;
        v385 = *(a2 + 1916);
        if (v385 == 0xFFFF)
        {
          v385 = *(a2 + 2004);
          *(a2 + 1916) = v385;
          *(a2 + 2004) = v385 + 1;
        }

        *&v824[8] = ((v385 << 48) | 0x19C840) + 16;
        v386 = *(a2 + 1922);
        if (v386 == 0xFFFF)
        {
          v386 = *(a2 + 2004);
          *(a2 + 1922) = v386;
          *(a2 + 2004) = v386 + 1;
        }

        *&v824[16] = (v386 << 48) | 0x19C840;
        *&v824[24] = (gleVStateProgram_GetParam(a2, 351) << 48) | 0xAA80;
        v387 = *(a2 + 1918);
        if (v387 == 0xFFFF)
        {
          v387 = *(a2 + 2004);
          *(a2 + 1918) = v387;
          *(a2 + 2004) = v387 + 1;
        }

        *v824 = (v387 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, &v823);
        v388 = *v177;
        if ((*v177 & 0x1000000000000) != 0)
        {
          memset(v824, 0, sizeof(v824));
          v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000F83;
          *(a2 + 16) = 3;
          v389 = *(a2 + 1920);
          if (v389 == 0xFFFF)
          {
            v389 = *(a2 + 2004);
            *(a2 + 1920) = v389;
            *(a2 + 2004) = v389 + 1;
          }

          *&v824[8] = ((v389 << 48) | 0x19C840) + 16;
          v390 = *(a2 + 1922);
          if (v390 == 0xFFFF)
          {
            v390 = *(a2 + 2004);
            *(a2 + 1922) = v390;
            *(a2 + 2004) = v390 + 1;
          }

          *&v824[16] = (v390 << 48) | 0x19C840;
          *&v824[24] = (gleVStateProgram_GetParam(a2, 351) << 48) | 0xAA80;
          v391 = *(a2 + 1922);
          if (v391 == 0xFFFF)
          {
            v391 = *(a2 + 2004);
            *(a2 + 1922) = v391;
            *(a2 + 2004) = v391 + 1;
          }

          *v824 = (v391 << 48) | 0x72679000;
          (*(a2 + 2016))(a2, &v823);
          v388 = *v177;
        }

        if (v388 < 0)
        {
          if (v801 >= 8)
          {
            v416 = 0;
            do
            {
              v417 = *&v821[4 * v416];
              memset(v824, 0, sizeof(v824));
              v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
              *(a2 + 16) = 2;
              *&v824[8] = ((gleVStateProgram_GetParam(a2, v417 + 288) << 48) | 0x19C840) + 64;
              *&v824[16] = (gleVStateProgram_GetAttrib(a2, 2) << 48) | 0x19C800;
              v418 = a2 + 2 * v416;
              v419 = *(v418 + 1962);
              if (v419 == 0xFFFF)
              {
                v419 = *(a2 + 2004);
                *(v418 + 1962) = v419;
                *(a2 + 2004) = v419 + 1;
              }

              *v824 = (v419 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, &v823);
              ++v416;
            }

            while (v416 < v69);
            v420 = 981;
            v421 = 64;
            do
            {
              memset(v824, 0, sizeof(v824));
              v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
              *(a2 + 16) = 2;
              v422 = *(a2 + 1918);
              if (v422 == 0xFFFF)
              {
                v422 = *(a2 + 2004);
                *(a2 + 1918) = v422;
                *(a2 + 2004) = v422 + 1;
              }

              *&v824[8] = v421 + (v422 << 48);
              v423 = *(a2 + 2 * v420);
              if (v423 == 0xFFFF)
              {
                v424 = *(a2 + 2004);
                *(a2 + 2 * v420) = v424;
                *(a2 + 2004) = v424 + 1;
                v423 = *(a2 + 2 * v420);
                *&v824[16] = (v424 << 48) | 0x19C840;
                if (v423 == 0xFFFF)
                {
                  v423 = *(a2 + 2004);
                  *(a2 + 2 * v420) = v423;
                  *(a2 + 2004) = v423 + 1;
                }
              }

              else
              {
                *&v824[16] = (v423 << 48) | 0x19C840;
              }

              *v824 = (v423 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, &v823);
              v421 += 43520;
              v425 = v420 - 980;
              ++v420;
            }

            while (v425 < v69);
          }

          else
          {
            v399 = 0;
            v400 = 64;
            do
            {
              v401 = *&v821[4 * v399];
              memset(v824, 0, sizeof(v824));
              v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
              *(a2 + 16) = 2;
              v402 = *(a2 + 1918);
              if (v402 == 0xFFFF)
              {
                v402 = *(a2 + 2004);
                *(a2 + 1918) = v402;
                *(a2 + 2004) = v402 + 1;
              }

              *&v824[8] = v400 + (v402 << 48);
              *&v824[16] = ((gleVStateProgram_GetParam(a2, 2 * v401 + 256) << 48) | 0x19C840) + 64;
              v403 = a2 + 2 * v399;
              v404 = *(v403 + 1962);
              if (v404 == 0xFFFF)
              {
                v404 = *(a2 + 2004);
                *(v403 + 1962) = v404;
                *(a2 + 2004) = v404 + 1;
              }

              *v824 = (v404 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, &v823);
              ++v399;
              v400 += 43520;
            }

            while (v399 < v69);
          }
        }

        else if (v801 >= 8)
        {
          v405 = 0;
          do
          {
            v406 = *&v821[4 * v405];
            memset(v824, 0, sizeof(v824));
            v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
            *(a2 + 16) = 2;
            *&v824[8] = ((gleVStateProgram_GetParam(a2, v406 + 288) << 48) | 0x19C840) + 64;
            *&v824[16] = (gleVStateProgram_GetAttrib(a2, 2) << 48) | 0x19C800;
            v407 = a2 + 2 * v405;
            v408 = *(v407 + 1962);
            if (v408 == 0xFFFF)
            {
              v408 = *(a2 + 2004);
              *(v407 + 1962) = v408;
              *(a2 + 2004) = v408 + 1;
            }

            *v824 = (v408 << 48) | 0x72679000;
            (*(a2 + 2016))(a2, &v823);
            ++v405;
          }

          while (v405 < v69);
          v409 = 0;
          v410 = 64;
          do
          {
            memset(v824, 0, sizeof(v824));
            v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
            *(a2 + 16) = 3;
            v411 = *(a2 + 1918);
            if (v411 == 0xFFFF)
            {
              v411 = *(a2 + 2004);
              *(a2 + 1918) = v411;
              *(a2 + 2004) = v411 + 1;
            }

            *&v824[8] = v410 + (v411 << 48);
            v412 = a2 + 2 * v409;
            v413 = *(v412 + 1962);
            if (v413 == 0xFFFF)
            {
              v413 = *(a2 + 2004);
              *(v412 + 1962) = v413;
              *(a2 + 2004) = v413 + 1;
            }

            *&v824[16] = (v413 << 48) | 0x19C840;
            v414 = *(v412 + 1946);
            if (v414 == 0xFFFF)
            {
              v415 = *(a2 + 2004);
              *(v412 + 1946) = v415;
              *(a2 + 2004) = v415 + 1;
              v414 = *(v412 + 1946);
              *&v824[24] = (v415 << 48) | 0x19C840;
              if (v414 == 0xFFFF)
              {
                v414 = *(a2 + 2004);
                *(v412 + 1946) = v414;
                *(a2 + 2004) = v414 + 1;
              }
            }

            else
            {
              *&v824[24] = (v414 << 48) | 0x19C840;
            }

            *v824 = (v414 << 48) | 0x72679000;
            (*(a2 + 2016))(a2, &v823);
            ++v409;
            v410 += 43520;
          }

          while (v409 < v69);
        }

        else
        {
          v392 = 0;
          v393 = 64;
          do
          {
            v394 = *&v821[4 * v392];
            memset(v824, 0, sizeof(v824));
            v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
            *(a2 + 16) = 3;
            v395 = *(a2 + 1918);
            if (v395 == 0xFFFF)
            {
              v395 = *(a2 + 2004);
              *(a2 + 1918) = v395;
              *(a2 + 2004) = v395 + 1;
            }

            *&v824[8] = v393 + (v395 << 48);
            *&v824[16] = ((gleVStateProgram_GetParam(a2, 2 * v394 + 256) << 48) | 0x19C840) + 64;
            v396 = a2 + 2 * v392;
            v397 = *(v396 + 1946);
            if (v397 == 0xFFFF)
            {
              v398 = *(a2 + 2004);
              *(v396 + 1946) = v398;
              *(a2 + 2004) = v398 + 1;
              v397 = *(v396 + 1946);
              *&v824[24] = (v398 << 48) | 0x19C840;
              if (v397 == 0xFFFF)
              {
                v397 = *(a2 + 2004);
                *(v396 + 1946) = v397;
                *(a2 + 2004) = v397 + 1;
              }
            }

            else
            {
              *&v824[24] = (v397 << 48) | 0x19C840;
            }

            *v824 = (v397 << 48) | 0x72679000;
            (*(a2 + 2016))(a2, &v823);
            ++v392;
            v393 += 43520;
          }

          while (v392 < v69);
        }

        v426 = *v177;
        v427 = v821;
        if ((v426 & 0x1000000000000) != 0)
        {
          if (v426 < 0)
          {
            if (v799 >= 8)
            {
              v452 = 0;
              do
              {
                v453 = *&v821[4 * v452];
                memset(v824, 0, sizeof(v824));
                v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
                *(a2 + 16) = 2;
                *&v824[8] = ((gleVStateProgram_GetParam(a2, v453 + 288) << 48) | 0x19C840) + 64;
                *&v824[16] = (gleVStateProgram_GetAttrib(a2, 2) << 48) | 0x19C800;
                v454 = a2 + 2 * v452;
                v455 = *(v454 + 1970);
                if (v455 == 0xFFFF)
                {
                  v455 = *(a2 + 2004);
                  *(v454 + 1970) = v455;
                  *(a2 + 2004) = v455 + 1;
                }

                *v824 = (v455 << 48) | 0x72679000;
                (*(a2 + 2016))(a2, &v823);
                ++v452;
              }

              while (v452 < v69);
              v456 = 985;
              v457 = 64;
              do
              {
                memset(v824, 0, sizeof(v824));
                v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
                *(a2 + 16) = 2;
                v458 = *(a2 + 1922);
                if (v458 == 0xFFFF)
                {
                  v458 = *(a2 + 2004);
                  *(a2 + 1922) = v458;
                  *(a2 + 2004) = v458 + 1;
                }

                *&v824[8] = v457 + (v458 << 48);
                v459 = *(a2 + 2 * v456);
                if (v459 == 0xFFFF)
                {
                  v460 = *(a2 + 2004);
                  *(a2 + 2 * v456) = v460;
                  *(a2 + 2004) = v460 + 1;
                  v459 = *(a2 + 2 * v456);
                  *&v824[16] = (v460 << 48) | 0x19C840;
                  if (v459 == 0xFFFF)
                  {
                    v459 = *(a2 + 2004);
                    *(a2 + 2 * v456) = v459;
                    *(a2 + 2004) = v459 + 1;
                  }
                }

                else
                {
                  *&v824[16] = (v459 << 48) | 0x19C840;
                }

                *v824 = (v459 << 48) | 0x72679000;
                (*(a2 + 2016))(a2, &v823);
                v457 += 43520;
                v461 = v456 - 984;
                ++v456;
              }

              while (v461 < v69);
            }

            else
            {
              v435 = 0;
              v436 = 64;
              do
              {
                v437 = *&v427[4 * v435];
                memset(v824, 0, sizeof(v824));
                v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
                *(a2 + 16) = 2;
                v438 = *(a2 + 1922);
                if (v438 == 0xFFFF)
                {
                  v438 = *(a2 + 2004);
                  *(a2 + 1922) = v438;
                  *(a2 + 2004) = v438 + 1;
                }

                *&v824[8] = v436 + (v438 << 48);
                *&v824[16] = ((gleVStateProgram_GetParam(a2, 2 * v437 + 257) << 48) | 0x19C840) + 64;
                v439 = a2 + 2 * v435;
                v440 = *(v439 + 1970);
                if (v440 == 0xFFFF)
                {
                  v440 = *(a2 + 2004);
                  *(v439 + 1970) = v440;
                  *(a2 + 2004) = v440 + 1;
                }

                *v824 = (v440 << 48) | 0x72679000;
                (*(a2 + 2016))(a2, &v823);
                ++v435;
                v436 += 43520;
                v427 = v821;
              }

              while (v435 < v69);
            }
          }

          else if (v799 >= 8)
          {
            v441 = 0;
            do
            {
              v442 = *&v821[4 * v441];
              memset(v824, 0, sizeof(v824));
              v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
              *(a2 + 16) = 2;
              *&v824[8] = ((gleVStateProgram_GetParam(a2, v442 + 288) << 48) | 0x19C840) + 64;
              *&v824[16] = (gleVStateProgram_GetAttrib(a2, 2) << 48) | 0x19C800;
              v443 = a2 + 2 * v441;
              v444 = *(v443 + 1970);
              if (v444 == 0xFFFF)
              {
                v444 = *(a2 + 2004);
                *(v443 + 1970) = v444;
                *(a2 + 2004) = v444 + 1;
              }

              *v824 = (v444 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, &v823);
              ++v441;
            }

            while (v441 < v69);
            v445 = 0;
            v446 = 64;
            do
            {
              memset(v824, 0, sizeof(v824));
              v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
              *(a2 + 16) = 3;
              v447 = *(a2 + 1922);
              if (v447 == 0xFFFF)
              {
                v447 = *(a2 + 2004);
                *(a2 + 1922) = v447;
                *(a2 + 2004) = v447 + 1;
              }

              *&v824[8] = v446 + (v447 << 48);
              v448 = a2 + 2 * v445;
              v449 = *(v448 + 1970);
              if (v449 == 0xFFFF)
              {
                v449 = *(a2 + 2004);
                *(v448 + 1970) = v449;
                *(a2 + 2004) = v449 + 1;
              }

              *&v824[16] = (v449 << 48) | 0x19C840;
              v450 = *(v448 + 1954);
              if (v450 == 0xFFFF)
              {
                v451 = *(a2 + 2004);
                *(v448 + 1954) = v451;
                *(a2 + 2004) = v451 + 1;
                v450 = *(v448 + 1954);
                *&v824[24] = (v451 << 48) | 0x19C840;
                if (v450 == 0xFFFF)
                {
                  v450 = *(a2 + 2004);
                  *(v448 + 1954) = v450;
                  *(a2 + 2004) = v450 + 1;
                }
              }

              else
              {
                *&v824[24] = (v450 << 48) | 0x19C840;
              }

              *v824 = (v450 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, &v823);
              ++v445;
              v446 += 43520;
            }

            while (v445 < v69);
          }

          else
          {
            v428 = 0;
            v429 = 64;
            do
            {
              v430 = *&v427[4 * v428];
              memset(v824, 0, sizeof(v824));
              v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
              *(a2 + 16) = 3;
              v431 = *(a2 + 1922);
              if (v431 == 0xFFFF)
              {
                v431 = *(a2 + 2004);
                *(a2 + 1922) = v431;
                *(a2 + 2004) = v431 + 1;
              }

              *&v824[8] = v429 + (v431 << 48);
              *&v824[16] = ((gleVStateProgram_GetParam(a2, 2 * v430 + 257) << 48) | 0x19C840) + 64;
              v432 = a2 + 2 * v428;
              v433 = *(v432 + 1954);
              if (v433 == 0xFFFF)
              {
                v434 = *(a2 + 2004);
                *(v432 + 1954) = v434;
                *(a2 + 2004) = v434 + 1;
                v433 = *(v432 + 1954);
                *&v824[24] = (v434 << 48) | 0x19C840;
                v427 = v821;
                if (v433 == 0xFFFF)
                {
                  v433 = *(a2 + 2004);
                  *(v432 + 1954) = v433;
                  *(a2 + 2004) = v433 + 1;
                }
              }

              else
              {
                *&v824[24] = (v433 << 48) | 0x19C840;
                v427 = v821;
              }

              *v824 = (v433 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, &v823);
              ++v428;
              v429 += 43520;
            }

            while (v428 < v69);
          }
        }

        if (v817)
        {
          v462 = 0;
          v463 = 64;
          do
          {
            if ((v817 >> v462))
            {
              memset(v824, 0, sizeof(v824));
              v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
              *(a2 + 16) = 3;
              v464 = *(a2 + 1940);
              if (v464 == 0xFFFF)
              {
                v464 = *(a2 + 2004);
                *(a2 + 1940) = v464;
                *(a2 + 2004) = v464 + 1;
              }

              *&v824[8] = v463 + (v464 << 48);
              v465 = a2 + 2 * v462;
              v466 = *(v465 + 1946);
              if (v466 == 0xFFFF)
              {
                v466 = *(a2 + 2004);
                *(v465 + 1946) = v466;
                *(a2 + 2004) = v466 + 1;
              }

              *&v824[16] = (v466 << 48) | 0x19C840;
              v467 = *(a2 + 1904);
              if (v467 == 0xFFFF)
              {
                v469 = *(a2 + 2004);
                v470 = *(a2 + 2004);
                *(a2 + 1904) = v469;
                *(a2 + 2004) = ++v470;
                *&v824[24] = (v469 << 48) | 0x19C840;
                if ((v470 & 0x10000) != 0)
                {
                  v469 = *(a2 + 2004);
                  *(a2 + 1904) = v469;
                  *(a2 + 2004) = v469 + 1;
                }

                v468 = v469 << 48;
              }

              else
              {
                v468 = v467 << 48;
                *&v824[24] = (v467 << 48) | 0x19C840;
              }

              *v824 = v468 | 0x72679000;
              (*(a2 + 2016))(a2, &v823);
            }

            ++v462;
            v463 += 43520;
          }

          while (v462 < v69);
          v471 = v817 & 0xF;
          if (v471 == 15)
          {
            v472 = 0;
            v811 = 1;
            goto LABEL_754;
          }

          v472 = v471 ^ 0xF;
        }

        else
        {
          v472 = 15;
        }

        v473 = 0;
        do
        {
          if ((v472 >> v473))
          {
            memset(v824, 0, sizeof(v824));
            v823 = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
            *(a2 + 16) = 2;
            v474 = a2 + 2 * v473;
            v475 = *(v474 + 1946);
            if (v475 == 0xFFFF)
            {
              v475 = *(a2 + 2004);
              *(v474 + 1946) = v475;
              *(a2 + 2004) = v475 + 1;
            }

            *&v824[8] = (v475 << 48) | 0x19C840;
            v476 = *(a2 + 1904);
            if (v476 == 0xFFFF)
            {
              v478 = *(a2 + 2004);
              v479 = *(a2 + 2004);
              *(a2 + 1904) = v478;
              *(a2 + 2004) = ++v479;
              *&v824[16] = (v478 << 48) | 0x19C840;
              if ((v479 & 0x10000) != 0)
              {
                v478 = *(a2 + 2004);
                *(a2 + 1904) = v478;
                *(a2 + 2004) = v478 + 1;
              }

              v477 = v478 << 48;
            }

            else
            {
              v477 = v476 << 48;
              *&v824[16] = (v476 << 48) | 0x19C840;
            }

            *v824 = v477 | 0x72679000;
            (*(a2 + 2016))(a2, &v823);
          }

          ++v473;
        }

        while (v473 < v69);
        v811 = 0;
LABEL_754:
        if ((*v805 & 0x8000000000000000) == 0)
        {
          goto LABEL_778;
        }

        if (v817)
        {
          v480 = 0;
          v481 = -v802;
          v482 = v481 + 31;
          while (((v817 >> v480) & 1) == 0)
          {
LABEL_773:
            if (++v480 >= v69)
            {
              goto LABEL_777;
            }
          }

          if (v480 == v481)
          {
            memset(&v824[24], 0, 48);
            v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
            *(a2 + 16) = 2;
            v483 = *(a2 + 1940);
            if (v483 == 0xFFFF)
            {
              v483 = *(a2 + 2004);
              *(a2 + 1940) = v483;
              *(a2 + 2004) = v483 + 1;
            }

            *&v824[8] = (-v802 << 9) | (v483 << 48) | (-v802 << 11) | (-v802 << 13) | (-v802 << 15) | 0x40;
            v484 = v808[v482];
            if (v484 == 0xFFFF)
            {
              v484 = *(a2 + 2004);
              v808[v482] = v484;
              *(a2 + 2004) = v484 + 1;
            }

            *&v824[16] = (v484 << 48) | 0x19C840;
            v485 = *(a2 + 1908);
            if (v485 == 0xFFFF)
            {
LABEL_764:
              v485 = *(a2 + 2004);
              *(a2 + 1908) = v485;
              *(a2 + 2004) = v485 + 1;
            }

LABEL_765:
            v486 = v485 << 48;
          }

          else
          {
            memset(v824, 0, sizeof(v824));
            v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
            *(a2 + 16) = 3;
            v487 = *(a2 + 1940);
            if (v487 == 0xFFFF)
            {
              v487 = *(a2 + 2004);
              *(a2 + 1940) = v487;
              *(a2 + 2004) = v487 + 1;
            }

            *&v824[8] = (v487 << 48) | (v480 << 9) | (v480 << 11) | (v480 << 13) | (v480 << 15) | 0x40;
            v488 = v808[v480 + 31];
            if (v488 == 0xFFFF)
            {
              v488 = *(a2 + 2004);
              v808[v480 + 31] = v488;
              *(a2 + 2004) = v488 + 1;
            }

            *&v824[16] = (v488 << 48) | 0x19C840;
            v489 = *(a2 + 1908);
            if (v489 == 0xFFFF)
            {
              v485 = *(a2 + 2004);
              v490 = *(a2 + 2004);
              *(a2 + 1908) = v485;
              *(a2 + 2004) = ++v490;
              *&v824[24] = (v485 << 48) | 0x19C840;
              if ((v490 & 0x10000) != 0)
              {
                goto LABEL_764;
              }

              goto LABEL_765;
            }

            v486 = v489 << 48;
            *&v824[24] = (v489 << 48) | 0x19C840;
          }

          *v824 = v486 | 0x72679000;
          (*(a2 + 2016))(a2, &v823);
          goto LABEL_773;
        }

LABEL_777:
        if (v811)
        {
LABEL_778:
          if ((*(v805 + 6) & 1) == 0)
          {
            goto LABEL_846;
          }

          if (v817)
          {
            v491 = 0;
            v492 = 64;
            do
            {
              if ((v817 >> v491))
              {
                memset(v824, 0, sizeof(v824));
                v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
                *(a2 + 16) = 3;
                v493 = *(a2 + 1940);
                if (v493 == 0xFFFF)
                {
                  v493 = *(a2 + 2004);
                  *(a2 + 1940) = v493;
                  *(a2 + 2004) = v493 + 1;
                }

                *&v824[8] = v492 + (v493 << 48);
                v494 = a2 + 2 * v491;
                v495 = *(v494 + 1954);
                if (v495 == 0xFFFF)
                {
                  v495 = *(a2 + 2004);
                  *(v494 + 1954) = v495;
                  *(a2 + 2004) = v495 + 1;
                }

                *&v824[16] = (v495 << 48) | 0x19C840;
                v496 = *(a2 + 1906);
                if (v496 == 0xFFFF)
                {
                  v498 = *(a2 + 2004);
                  v499 = *(a2 + 2004);
                  *(a2 + 1906) = v498;
                  *(a2 + 2004) = ++v499;
                  *&v824[24] = (v498 << 48) | 0x19C840;
                  if ((v499 & 0x10000) != 0)
                  {
                    v498 = *(a2 + 2004);
                    *(a2 + 1906) = v498;
                    *(a2 + 2004) = v498 + 1;
                  }

                  v497 = v498 << 48;
                }

                else
                {
                  v497 = v496 << 48;
                  *&v824[24] = (v496 << 48) | 0x19C840;
                }

                *v824 = v497 | 0x72679000;
                (*(a2 + 2016))(a2, &v823);
              }

              ++v491;
              v492 += 43520;
            }

            while (v491 < v69);
          }

          if ((v811 & 1) == 0)
          {
            v500 = 0;
            do
            {
              if ((v472 >> v500))
              {
                memset(v824, 0, sizeof(v824));
                v823 = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
                *(a2 + 16) = 2;
                v501 = a2 + 2 * v500;
                v502 = *(v501 + 1954);
                if (v502 == 0xFFFF)
                {
                  v502 = *(a2 + 2004);
                  *(v501 + 1954) = v502;
                  *(a2 + 2004) = v502 + 1;
                }

                *&v824[8] = (v502 << 48) | 0x19C840;
                v503 = *(a2 + 1906);
                if (v503 == 0xFFFF)
                {
                  v505 = *(a2 + 2004);
                  v506 = *(a2 + 2004);
                  *(a2 + 1906) = v505;
                  *(a2 + 2004) = ++v506;
                  *&v824[16] = (v505 << 48) | 0x19C840;
                  if ((v506 & 0x10000) != 0)
                  {
                    v505 = *(a2 + 2004);
                    *(a2 + 1906) = v505;
                    *(a2 + 2004) = v505 + 1;
                  }

                  v504 = v505 << 48;
                }

                else
                {
                  v504 = v503 << 48;
                  *&v824[16] = (v503 << 48) | 0x19C840;
                }

                *v824 = v504 | 0x72679000;
                (*(a2 + 2016))(a2, &v823);
              }

              ++v500;
            }

            while (v500 < v69);
          }

          if ((*v805 & 0x8000000000000000) == 0)
          {
            goto LABEL_846;
          }

          if (v817)
          {
            v507 = 0;
            v508 = -v802;
            v509 = v508 + 35;
            while (((v817 >> v507) & 1) == 0)
            {
LABEL_824:
              if (++v507 >= v69)
              {
                goto LABEL_845;
              }
            }

            if (v507 == v508)
            {
              memset(&v824[24], 0, 48);
              v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
              *(a2 + 16) = 2;
              v510 = *(a2 + 1940);
              if (v510 == 0xFFFF)
              {
                v510 = *(a2 + 2004);
                *(a2 + 1940) = v510;
                *(a2 + 2004) = v510 + 1;
              }

              *&v824[8] = (-v802 << 9) | (v510 << 48) | (-v802 << 11) | (-v802 << 13) | (-v802 << 15) | 0x40;
              v511 = v808[v509];
              if (v511 == 0xFFFF)
              {
                v511 = *(a2 + 2004);
                v808[v509] = v511;
                *(a2 + 2004) = v511 + 1;
              }

              *&v824[16] = (v511 << 48) | 0x19C840;
              v512 = *(a2 + 1910);
              if (v512 == 0xFFFF)
              {
LABEL_815:
                v512 = *(a2 + 2004);
                *(a2 + 1910) = v512;
                *(a2 + 2004) = v512 + 1;
              }

LABEL_816:
              v513 = v512 << 48;
            }

            else
            {
              memset(v824, 0, sizeof(v824));
              v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
              *(a2 + 16) = 3;
              v514 = *(a2 + 1940);
              if (v514 == 0xFFFF)
              {
                v514 = *(a2 + 2004);
                *(a2 + 1940) = v514;
                *(a2 + 2004) = v514 + 1;
              }

              *&v824[8] = (v514 << 48) | (v507 << 9) | (v507 << 11) | (v507 << 13) | (v507 << 15) | 0x40;
              v515 = v808[v507 + 35];
              if (v515 == 0xFFFF)
              {
                v515 = *(a2 + 2004);
                v808[v507 + 35] = v515;
                *(a2 + 2004) = v515 + 1;
              }

              *&v824[16] = (v515 << 48) | 0x19C840;
              v516 = *(a2 + 1910);
              if (v516 == 0xFFFF)
              {
                v512 = *(a2 + 2004);
                v517 = *(a2 + 2004);
                *(a2 + 1910) = v512;
                *(a2 + 2004) = ++v517;
                *&v824[24] = (v512 << 48) | 0x19C840;
                if ((v517 & 0x10000) != 0)
                {
                  goto LABEL_815;
                }

                goto LABEL_816;
              }

              v513 = v516 << 48;
              *&v824[24] = (v516 << 48) | 0x19C840;
            }

            *v824 = v513 | 0x72679000;
            (*(a2 + 2016))(a2, &v823);
            goto LABEL_824;
          }

LABEL_845:
          if (v811)
          {
LABEL_846:
            v64 = v802 + 4;
            v3 = v805;
            v63 = v803 - 4;
            v60 = v800;
            if (v802 + 4 >= v800)
            {
              goto LABEL_1333;
            }

            goto LABEL_78;
          }

          v527 = 0;
          v528 = -v802 + 35;
          while (2)
          {
            if ((v472 >> v527))
            {
              if (v803 == v527)
              {
                memset(&v824[16], 0, 56);
                v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
                *(a2 + 16) = 1;
                v529 = v808[v528];
                if (v529 == 0xFFFF)
                {
                  v529 = *(a2 + 2004);
                  v808[v528] = v529;
                  *(a2 + 2004) = v529 + 1;
                }

                *&v824[8] = (v529 << 48) | 0x19C840;
                v530 = *(a2 + 1910);
                if (v530 == 0xFFFF)
                {
LABEL_854:
                  v530 = *(a2 + 2004);
                  *(a2 + 1910) = v530;
                  *(a2 + 2004) = v530 + 1;
                }

LABEL_855:
                v531 = v530 << 48;
              }

              else
              {
                memset(v824, 0, sizeof(v824));
                v823 = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
                *(a2 + 16) = 2;
                v532 = *(v797 + 2 * v527);
                if (v532 == 0xFFFF)
                {
                  v532 = *(a2 + 2004);
                  *(v797 + 2 * v527) = v532;
                  *(a2 + 2004) = v532 + 1;
                }

                *&v824[8] = (v532 << 48) | 0x19C840;
                v533 = *(a2 + 1910);
                if (v533 == 0xFFFF)
                {
                  v530 = *(a2 + 2004);
                  v534 = *(a2 + 2004);
                  *(a2 + 1910) = v530;
                  *(a2 + 2004) = ++v534;
                  *&v824[16] = (v530 << 48) | 0x19C840;
                  if ((v534 & 0x10000) != 0)
                  {
                    goto LABEL_854;
                  }

                  goto LABEL_855;
                }

                v531 = v533 << 48;
                *&v824[16] = (v533 << 48) | 0x19C840;
              }

              *v824 = v531 | 0x72679000;
              (*(a2 + 2016))(a2, &v823);
            }

            if (++v527 >= v69)
            {
              goto LABEL_846;
            }

            continue;
          }
        }

        v518 = 0;
        v519 = -v802 + 31;
        while (2)
        {
          if ((v472 >> v518))
          {
            if (v803 == v518)
            {
              memset(&v824[16], 0, 56);
              v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
              *(a2 + 16) = 1;
              v520 = v808[v519];
              if (v520 == 0xFFFF)
              {
                v520 = *(a2 + 2004);
                v808[v519] = v520;
                *(a2 + 2004) = v520 + 1;
              }

              *&v824[8] = (v520 << 48) | 0x19C840;
              v521 = *(a2 + 1908);
              if (v521 == 0xFFFF)
              {
LABEL_834:
                v521 = *(a2 + 2004);
                *(a2 + 1908) = v521;
                *(a2 + 2004) = v521 + 1;
              }

LABEL_835:
              v522 = v521 << 48;
            }

            else
            {
              memset(v824, 0, sizeof(v824));
              v823 = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
              *(a2 + 16) = 2;
              v523 = a2 + 2 * v518;
              v524 = *(v523 + 1962);
              if (v524 == 0xFFFF)
              {
                v524 = *(a2 + 2004);
                *(v523 + 1962) = v524;
                *(a2 + 2004) = v524 + 1;
              }

              *&v824[8] = (v524 << 48) | 0x19C840;
              v525 = *(a2 + 1908);
              if (v525 == 0xFFFF)
              {
                v521 = *(a2 + 2004);
                v526 = *(a2 + 2004);
                *(a2 + 1908) = v521;
                *(a2 + 2004) = ++v526;
                *&v824[16] = (v521 << 48) | 0x19C840;
                if ((v526 & 0x10000) != 0)
                {
                  goto LABEL_834;
                }

                goto LABEL_835;
              }

              v522 = v525 << 48;
              *&v824[16] = (v525 << 48) | 0x19C840;
            }

            *v824 = v522 | 0x72679000;
            (*(a2 + 2016))(a2, &v823);
          }

          if (++v518 >= v69)
          {
            goto LABEL_778;
          }

          continue;
        }
      }
    }
  }

  if ((v42 & 0x2000000000000) != 0)
  {
    memset(&v824[8], 0, 64);
    v57 = *(a2 + 16);
    *(a2 + 16) = 1;
    v823 = (8 * (v57 & 7)) | 0x100080341;
    v58 = *(a2 + 1900);
    if (v58 == 0xFFFF)
    {
      v535 = *(a2 + 2004);
      v536 = *(a2 + 2004);
      *(a2 + 1900) = v535;
      *(a2 + 2004) = ++v536;
      *&v824[8] = (v535 << 48) | 0x1FE40;
      if ((v536 & 0x10000) != 0)
      {
        v535 = *(a2 + 2004);
        *(a2 + 1900) = v535;
        *(a2 + 2004) = v535 + 1;
      }

      v59 = v535 << 48;
    }

    else
    {
      v59 = v58 << 48;
      *&v824[8] = (v58 << 48) | 0x1FE40;
    }

    *v824 = v59 + 1918930944;
    (*(a2 + 2016))(a2, &v823);
    memset(&v824[8], 0, 64);
    v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
    *(a2 + 16) = 2;
    v537 = *(a2 + 1900);
    if (v537 == 0xFFFF)
    {
      v539 = *(a2 + 2004);
      v540 = *(a2 + 2004);
      *(a2 + 1900) = v539;
      *(a2 + 2004) = ++v540;
      *&v824[8] = (v539 << 48) | 0x19C840;
      if ((v540 & 0x10000) != 0)
      {
        v539 = *(a2 + 2004);
        *(a2 + 1900) = v539;
        *(a2 + 2004) = v539 + 1;
      }

      v538 = v539 << 48;
    }

    else
    {
      v538 = v537 << 48;
      *&v824[8] = (v537 << 48) | 0x19C840;
    }

    *&v824[16] = v538 | 0x1FE40;
    v541 = *(a2 + 1942);
    if (v541 == 0xFFFF)
    {
      v541 = *(a2 + 2004);
      *(a2 + 1942) = v541;
      *(a2 + 2004) = v541 + 1;
    }

    *v824 = (v541 << 48) | 0x72679000;
    (*(a2 + 2016))(a2, &v823);
  }

  if (!v56)
  {
LABEL_1330:
    memset(v824, 0, sizeof(v824));
    v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
    *(a2 + 16) = 1;
    *&v824[8] = (gleVStateProgram_GetParam(a2, 351) << 48) | 0xAA80;
    v773 = *(a2 + 1908);
    if (v773 == 0xFFFF)
    {
      v773 = *(a2 + 2004);
      *(a2 + 1908) = v773;
      *(a2 + 2004) = v773 + 1;
    }

    *v824 = (v773 << 48) | 0x72679000;
    (*(a2 + 2016))(a2, &v823);
    goto LABEL_1333;
  }

  v812 = 0;
  v820 = (a2 + 1924);
  v807 = v6 & 6;
  v804 = a2 + 260;
  v822 = 257;
  v542 = 328;
  v543 = 0uLL;
  do
  {
    if ((v56 & 1) == 0)
    {
      goto LABEL_1323;
    }

    v544 = v542;
    v545 = v542 - 72;
    v546 = *(v3 + 2);
    v547 = (1 << v545);
    v548 = v547 & v546;
    v549 = v547 & HIWORD(v546);
    if (v549)
    {
      v550 = (v547 & v546) != 0;
    }

    else
    {
      v550 = 0;
    }

    v816 = v550;
    v818 = v544;
    v551 = v544 - 8;
    *v824 = v543;
    *&v824[16] = v543;
    *&v824[32] = v543;
    *&v824[48] = v543;
    *&v824[64] = 0;
    v809 = v548;
    if (!v548)
    {
      v823 = 8 * (*(a2 + 16) & 7) + 0x3100000001;
      *(a2 + 16) = 1;
      *&v824[8] = ((gleVStateProgram_GetParam(a2, v551) << 48) | 0x19C840) + 64;
      v564 = *(a2 + 1924);
      v563 = (a2 + 1924);
LABEL_908:
      if (v564 == 0xFFFF)
      {
        v564 = *(a2 + 2004);
        *v563 = v564;
        *(a2 + 2004) = v564 + 1;
      }

      *v824 = (v564 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v823);
      goto LABEL_911;
    }

    v823 = 8 * (*(a2 + 16) & 7) + 0x31000007C2;
    *(a2 + 16) = 2;
    *&v824[8] = ((gleVStateProgram_GetParam(a2, v551) << 48) | 0x19C840) + 64;
    v552 = *(a2 + 1900);
    if (v552 == 0xFFFF)
    {
      v552 = *(a2 + 2004);
      *(a2 + 1900) = v552;
      *(a2 + 2004) = v552 + 1;
    }

    *&v824[16] = (v552 << 48) | 0x19C840;
    v553 = *v820;
    if (v553 == 0xFFFF)
    {
      v553 = *(a2 + 2004);
      *(a2 + 1924) = v553;
      *(a2 + 2004) = v553 + 1;
    }

    *v824 = (v553 << 48) | 0x72679000;
    (*(a2 + 2016))(a2, &v823);
    gleVStateProgram_NormalizeVector(a2, 12, 12, 23, 27);
    if (v549)
    {
      memset(&v824[24], 0, 48);
      v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
      *(a2 + 16) = 2;
      v554 = *(a2 + 1946);
      if (v554 == 0xFFFF)
      {
        v554 = *(a2 + 2004);
        *(a2 + 1946) = v554;
        *(a2 + 2004) = v554 + 1;
      }

      *&v824[8] = (v554 << 48) | 0x19C840;
      v555 = *(a2 + 1954);
      if (v555 == 0xFFFF)
      {
        v555 = *(a2 + 2004);
        *(a2 + 1954) = v555;
        *(a2 + 2004) = v555 + 1;
      }

      *&v824[16] = (v555 << 48) | 0x19C840;
      if (v554 == 0xFFFF)
      {
        v554 = *(a2 + 2004);
        *(a2 + 1946) = v554;
        *(a2 + 2004) = v554 + 1;
      }

      *v824 = (v554 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v823);
      memset(v824, 0, sizeof(v824));
      v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
      *(a2 + 16) = 3;
      v556 = *(a2 + 1946);
      if (v556 == 0xFFFF)
      {
        v556 = *(a2 + 2004);
        *(a2 + 1946) = v556;
        *(a2 + 2004) = v556 + 1;
      }

      *&v824[8] = (v556 << 48) | 0x19C840;
      *&v824[16] = ((gleVStateProgram_GetParam(a2, v818 - 16) << 48) | 0x15440) + 64;
      *&v824[24] = (gleVStateProgram_GetParam(a2, v818 - 16) << 48) | 0xAA80;
      v557 = *(a2 + 1954);
      if (v557 == 0xFFFF)
      {
        v557 = *(a2 + 2004);
        *(a2 + 1954) = v557;
        *(a2 + 2004) = v557 + 1;
      }

      *v824 = (v557 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v823);
      memset(v824, 0, sizeof(v824));
      v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
      *(a2 + 16) = 3;
      v558 = *(a2 + 1946);
      if (v558 == 0xFFFF)
      {
        v558 = *(a2 + 2004);
        *(a2 + 1946) = v558;
        *(a2 + 2004) = v558 + 1;
      }

      *&v824[8] = (v558 << 48) | 0x19C840;
      v559 = *(a2 + 1954);
      if (v559 == 0xFFFF)
      {
        v559 = *(a2 + 2004);
        *(a2 + 1954) = v559;
        *(a2 + 2004) = v559 + 1;
      }

      *&v824[16] = (v559 << 48) | 0x19C840;
      *&v824[24] = (gleVStateProgram_GetParam(a2, v818 - 16) << 48) | 0x80;
      v560 = *(a2 + 1954);
      if (v560 == 0xFFFF)
      {
        v560 = *(a2 + 2004);
        *(a2 + 1954) = v560;
        *(a2 + 2004) = v560 + 1;
      }

      *v824 = (v560 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v823);
      memset(&v824[16], 0, 56);
      v561 = *(a2 + 16);
      *(a2 + 16) = 1;
      v823 = (8 * (v561 & 7)) | 0x100100381;
      v562 = *(a2 + 1954);
      if (v562 == 0xFFFF)
      {
        v562 = *(a2 + 2004);
        *(a2 + 1954) = v562;
        *(a2 + 2004) = v562 + 1;
      }

      *&v824[8] = (v562 << 48) | 0x19C840;
      v563 = (a2 + 1940);
      v564 = *(a2 + 1940);
      goto LABEL_908;
    }

LABEL_911:
    memset(&v824[24], 0, 48);
    v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000A02;
    *(a2 + 16) = 2;
    v565 = *(a2 + 1902);
    if (v565 == 0xFFFF)
    {
      v565 = *(a2 + 2004);
      *(a2 + 1902) = v565;
      *(a2 + 2004) = v565 + 1;
    }

    *&v824[8] = (v565 << 48) | 0x19C840;
    v566 = *v820;
    if (v566 == 0xFFFF)
    {
      v566 = *(a2 + 2004);
      *(a2 + 1924) = v566;
      *(a2 + 2004) = v566 + 1;
    }

    *&v824[16] = (v566 << 48) | 0x19C840;
    v567 = *(a2 + 1912);
    if (v567 == 0xFFFF)
    {
      v567 = *(a2 + 2004);
      *(a2 + 1912) = v567;
      *(a2 + 2004) = v567 + 1;
    }

    v568 = BYTE1(v546) >> v545;
    *v824 = (v567 << 48) | 0x72679000;
    (*(a2 + 2016))(a2, &v823);
    v3 = v805;
    v542 = v818;
    v814 = v568;
    if (v568)
    {
      memset(v824, 0, sizeof(v824));
      v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
      *(a2 + 16) = 1;
      *&v824[8] = ((gleVStateProgram_GetParam(a2, v818) << 48) | 0x19C840) + 64;
      v569 = *(a2 + 1946);
      if (v569 == 0xFFFF)
      {
        v569 = *(a2 + 2004);
        *(a2 + 1946) = v569;
        *(a2 + 2004) = v569 + 1;
      }

      *v824 = (v569 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v823);
      memset(&v824[24], 0, 48);
      v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000A02;
      *(a2 + 16) = 2;
      v570 = *(a2 + 1946);
      if (v570 == 0xFFFF)
      {
        v570 = *(a2 + 2004);
        *(a2 + 1946) = v570;
        *(a2 + 2004) = v570 + 1;
      }

      *&v824[8] = (v570 << 48) | 0x19C840;
      v571 = *v820;
      v3 = v805;
      if (v571 == 0xFFFF)
      {
        v571 = *(a2 + 2004);
        *(a2 + 1924) = v571;
        *(a2 + 2004) = v571 + 1;
      }

      *&v824[16] = ((v571 << 48) | 0x19C840) + 16;
      v572 = *(a2 + 1954);
      if (v572 == 0xFFFF)
      {
        v572 = *(a2 + 2004);
        *(a2 + 1954) = v572;
        *(a2 + 2004) = v572 + 1;
      }

      *v824 = (v572 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v823);
      memset(v824, 0, sizeof(v824));
      v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000C82;
      *(a2 + 16) = 2;
      v573 = *(a2 + 1954);
      if (v816)
      {
        if (v573 == 0xFFFF)
        {
          v573 = *(a2 + 2004);
          *(a2 + 1954) = v573;
          *(a2 + 2004) = v573 + 1;
        }

        *&v824[8] = (v573 << 48) | 0x19C840;
        *&v824[16] = ((gleVStateProgram_GetParam(a2, v818 - 32) << 48) | 0x1FE40) + 64;
        v574 = *(a2 + 1946);
        if (v574 == 0xFFFF)
        {
          v574 = *(a2 + 2004);
          *(a2 + 1946) = v574;
          *(a2 + 2004) = v574 + 1;
        }

        *v824 = (v574 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, &v823);
        memset(&v824[24], 0, 48);
        v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
        *(a2 + 16) = 2;
        v575 = *(a2 + 1940);
        if (v575 == 0xFFFF)
        {
          v575 = *(a2 + 2004);
          *(a2 + 1940) = v575;
          *(a2 + 2004) = v575 + 1;
        }

        *&v824[8] = (v575 << 48) | 0x19C840;
        v576 = *(a2 + 1946);
        if (v576 == 0xFFFF)
        {
          v576 = *(a2 + 2004);
          *(a2 + 1946) = v576;
          *(a2 + 2004) = v576 + 1;
        }

        *&v824[16] = (v576 << 48) | 0x19C840;
      }

      else
      {
        if (v573 == 0xFFFF)
        {
          v573 = *(a2 + 2004);
          *(a2 + 1954) = v573;
          *(a2 + 2004) = v573 + 1;
        }

        *&v824[8] = (v573 << 48) | 0x19C840;
        *&v824[16] = ((gleVStateProgram_GetParam(a2, v818 - 32) << 48) | 0x1FE40) + 64;
        v575 = *(a2 + 1940);
      }

      if (v575 == 0xFFFF)
      {
        v575 = *(a2 + 2004);
        *(a2 + 1940) = v575;
        *(a2 + 2004) = v575 + 1;
      }

      *v824 = (v575 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v823);
      v577 = *v805;
      memset(v824, 0, sizeof(v824));
      v578 = 8 * *(a2 + 16);
      if ((v577 & 0x2000000000000000) != 0)
      {
        v823 = (v578 & 0x38) + 0x3100000001;
        *(a2 + 16) = 1;
        *&v824[8] = ((gleVStateProgram_GetParam(a2, v818 - 16) << 48) | 0x19C840) + 64;
        v584 = *(a2 + 1954);
        if (v584 == 0xFFFF)
        {
          v584 = *(a2 + 2004);
          *(a2 + 1954) = v584;
          *(a2 + 2004) = v584 + 1;
        }

        *v824 = (v584 << 48) | 0x72609000;
        (*(a2 + 2016))(a2, &v823);
        memset(&v824[8], 0, 64);
        v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000041;
        *(a2 + 16) = 1;
        v585 = *(a2 + 1954);
        if (v585 == 0xFFFF)
        {
          v587 = *(a2 + 2004);
          v588 = *(a2 + 2004);
          *(a2 + 1954) = v587;
          *(a2 + 2004) = ++v588;
          *&v824[8] = (v587 << 48) | 0x19C840;
          v3 = v805;
          if ((v588 & 0x10000) != 0)
          {
            v587 = *(a2 + 2004);
            *(a2 + 1954) = v587;
            *(a2 + 2004) = v587 + 1;
          }

          v586 = v587 << 48;
        }

        else
        {
          v586 = v585 << 48;
          *&v824[8] = (v585 << 48) | 0x19C840;
          v3 = v805;
        }

        *v824 = v586 + 1918963712;
        (*(a2 + 2016))(a2, &v823);
        memset(&v824[24], 0, 48);
        v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
        *(a2 + 16) = 2;
        v581 = *(a2 + 1940);
        if (v581 == 0xFFFF)
        {
          v581 = *(a2 + 2004);
          *(a2 + 1940) = v581;
          *(a2 + 2004) = v581 + 1;
        }

        *&v824[8] = (v581 << 48) | 0x19C840;
        v589 = *(a2 + 1954);
        if (v589 == 0xFFFF)
        {
          v589 = *(a2 + 2004);
          *(a2 + 1954) = v589;
          *(a2 + 2004) = v589 + 1;
        }

        v583 = (v589 << 48) | 0x15440;
      }

      else
      {
        *(a2 + 16) = 2;
        v823 = v578 & 0x38 | 0x100000E02;
        v579 = *(a2 + 1954);
        if (v579 == 0xFFFF)
        {
          v579 = *(a2 + 2004);
          *(a2 + 1954) = v579;
          *(a2 + 2004) = v579 + 1;
        }

        *&v824[8] = (v579 << 48) | 0x19C840;
        *&v824[16] = ((gleVStateProgram_GetParam(a2, v818 - 16) << 48) | 0x1FE40) + 64;
        v580 = *(a2 + 1946);
        if (v580 == 0xFFFF)
        {
          v580 = *(a2 + 2004);
          *(a2 + 1946) = v580;
          *(a2 + 2004) = v580 + 1;
        }

        *v824 = (v580 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, &v823);
        memset(&v824[24], 0, 48);
        v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
        *(a2 + 16) = 2;
        v581 = *(a2 + 1940);
        if (v581 == 0xFFFF)
        {
          v581 = *(a2 + 2004);
          *(a2 + 1940) = v581;
          *(a2 + 2004) = v581 + 1;
        }

        *&v824[8] = (v581 << 48) | 0x19C840;
        v582 = *(a2 + 1946);
        if (v582 == 0xFFFF)
        {
          v582 = *(a2 + 2004);
          *(a2 + 1946) = v582;
          *(a2 + 2004) = v582 + 1;
        }

        v583 = (v582 << 48) | 0x19C840;
      }

      *&v824[16] = v583;
      if (v581 == 0xFFFF)
      {
        v581 = *(a2 + 2004);
        *(a2 + 1940) = v581;
        *(a2 + 2004) = v581 + 1;
      }

      *v824 = (v581 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v823);
    }

    if ((*v3 & 0x400000000000000) == 0)
    {
      if ((*v3 & 0x2000000000000) != 0)
      {
        memset(&v824[24], 0, 48);
        v823 = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
        *(a2 + 16) = 2;
        v593 = *(a2 + 1942);
        if (v593 == 0xFFFF)
        {
          v593 = *(a2 + 2004);
          *(a2 + 1942) = v593;
          goto LABEL_987;
        }
      }

      else
      {
        if (!v809)
        {
          memset(v824, 0, sizeof(v824));
          v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
          *(a2 + 16) = 1;
          *&v824[8] = ((gleVStateProgram_GetParam(a2, v818 - 24) << 48) | 0x19C840) + 64;
          v614 = *(a2 + 1932);
          if (v614 == 0xFFFF)
          {
            v614 = *(a2 + 2004);
            *(a2 + 1932) = v614;
            *(a2 + 2004) = v614 + 1;
          }

          *v824 = (v614 << 48) | 0x72679000;
          (*(a2 + 2016))(a2, &v823);
          goto LABEL_993;
        }

        memset(&v824[24], 0, 48);
        v590 = 8 * (*(a2 + 16) & 7);
        *(a2 + 16) = 2;
        v823 = v590 | 0x3100011042;
        v591 = *(a2 + 1904);
        if (v591 == 0xFFFF)
        {
          v591 = *(a2 + 2004);
          *(a2 + 1904) = v591;
          *(a2 + 2004) = v591 + 1;
        }

        *&v824[8] = (v591 << 48) | 0x19C840;
        *&v824[16] = 2560163840;
        v592 = *(a2 + 1946);
        if (v592 == 0xFFFF)
        {
          v592 = *(a2 + 2004);
          *(a2 + 1946) = v592;
          *(a2 + 2004) = v592 + 1;
        }

        *v824 = (v592 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, &v823);
        memset(&v824[24], 0, 48);
        v823 = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
        *(a2 + 16) = 2;
        v593 = *(a2 + 1946);
        if (v593 == 0xFFFF)
        {
          v593 = *(a2 + 2004);
          *(a2 + 1946) = v593;
LABEL_987:
          *(a2 + 2004) = v593 + 1;
        }
      }

      *&v824[8] = (v593 << 48) | 0x19C840;
      v600 = *v820;
      if (v600 == 0xFFFF)
      {
        v600 = *(a2 + 2004);
        *(a2 + 1924) = v600;
        *(a2 + 2004) = v600 + 1;
      }

      *&v824[16] = (v600 << 48) | 0x19C840;
      v601 = *(a2 + 1932);
      if (v601 == 0xFFFF)
      {
        v601 = *(a2 + 2004);
        *(a2 + 1932) = v601;
        *(a2 + 2004) = v601 + 1;
      }

      *v824 = (v601 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v823);
      gleVStateProgram_NormalizeVector(a2, 16, 16, 23, 23);
LABEL_993:
      memset(&v824[24], 0, 48);
      v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000A02;
      *(a2 + 16) = 2;
      v602 = *(a2 + 1902);
      if (v602 == 0xFFFF)
      {
        v602 = *(a2 + 2004);
        *(a2 + 1902) = v602;
        *(a2 + 2004) = v602 + 1;
      }

      *&v824[8] = (v602 << 48) | 0x19C840;
      v603 = *(a2 + 1932);
      if (v603 != 0xFFFF)
      {
        goto LABEL_1028;
      }

      v603 = *(a2 + 2004);
      *(a2 + 1932) = v603;
LABEL_1027:
      *(a2 + 2004) = v603 + 1;
LABEL_1028:
      v618 = (v603 << 48) | 0x19C840;
      goto LABEL_1029;
    }

    memset(&v824[24], 0, 48);
    v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000B82;
    *(a2 + 16) = 2;
    v594 = *(a2 + 1902);
    if (v594 == 0xFFFF)
    {
      v594 = *(a2 + 2004);
      *(a2 + 1902) = v594;
      *(a2 + 2004) = v594 + 1;
    }

    *&v824[8] = (v594 << 48) | 0x19C840;
    v595 = *v820;
    if (v595 == 0xFFFF)
    {
      v595 = *(a2 + 2004);
      *(a2 + 1924) = v595;
      *(a2 + 2004) = v595 + 1;
    }

    *&v824[16] = (v595 << 48) | 0x19C840;
    v596 = *(a2 + 1932);
    if (v596 == 0xFFFF)
    {
      v596 = *(a2 + 2004);
      *(a2 + 1932) = v596;
      *(a2 + 2004) = v596 + 1;
    }

    *v824 = (v596 << 48) | 0x72679000;
    (*(a2 + 2016))(a2, &v823);
    memset(v824, 0, sizeof(v824));
    v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000B82;
    *(a2 + 16) = 2;
    v597 = *(a2 + 1902);
    if (v597 == 0xFFFF)
    {
      v597 = *(a2 + 2004);
      *(a2 + 1902) = v597;
      *(a2 + 2004) = v597 + 1;
    }

    *&v824[8] = (v597 << 48) | 0x19C840;
    v598 = *(a2 + 1932);
    if (v598 == 0xFFFF)
    {
      v604 = *(a2 + 2004);
      v605 = *(a2 + 2004);
      *(a2 + 1932) = v604;
      *(a2 + 2004) = ++v605;
      *&v824[16] = (v604 << 48) | 0x19C840;
      if ((v605 & 0x10000) != 0)
      {
        v604 = *(a2 + 2004);
        *(a2 + 1932) = v604;
        *(a2 + 2004) = v604 + 1;
      }

      v599 = v604 << 48;
    }

    else
    {
      v599 = v598 << 48;
      *&v824[16] = (v598 << 48) | 0x19C840;
    }

    *v824 = v599 | 0x72679000;
    (*(a2 + 2016))(a2, &v823);
    memset(&v824[8], 0, 64);
    v823 = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
    *(a2 + 16) = 2;
    v606 = *(a2 + 1932);
    if (v606 != 0xFFFF)
    {
      v607 = v606 << 48;
      v608 = (v606 << 48) | 0x19C840;
      *&v824[8] = v608;
LABEL_1010:
      *&v824[16] = v608;
      goto LABEL_1011;
    }

    v609 = *(a2 + 2004);
    v610 = *(a2 + 2004);
    *(a2 + 1932) = v609;
    v611 = v610 + 1;
    *(a2 + 2004) = v610 + 1;
    v608 = (v609 << 48) | 0x19C840;
    *&v824[8] = v608;
    if ((v611 & 0x10000) == 0)
    {
      v607 = v609 << 48;
      goto LABEL_1010;
    }

    v612 = *(a2 + 2004);
    v613 = *(a2 + 2004);
    *(a2 + 1932) = v612;
    *(a2 + 2004) = ++v613;
    *&v824[16] = (v612 << 48) | 0x19C840;
    if ((v613 & 0x10000) != 0)
    {
      v612 = *(a2 + 2004);
      *(a2 + 1932) = v612;
      *(a2 + 2004) = v612 + 1;
    }

    v607 = v612 << 48;
LABEL_1011:
    *v824 = v607 | 0x72679000;
    (*(a2 + 2016))(a2, &v823);
    v615 = *v3;
    memset(&v824[24], 0, 48);
    v823 = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
    *(a2 + 16) = 2;
    v616 = *(a2 + 1932);
    if ((v615 & 0x2000000000000) != 0)
    {
      if (v616 == 0xFFFF)
      {
        v616 = *(a2 + 2004);
        *(a2 + 1932) = v616;
        *(a2 + 2004) = v616 + 1;
      }

      *&v824[8] = (v616 << 48) | 0x19C840;
      v619 = *v820;
      if (v619 == 0xFFFF)
      {
        v619 = *(a2 + 2004);
        *(a2 + 1924) = v619;
        *(a2 + 2004) = v619 + 1;
      }

      *&v824[16] = (v619 << 48) | 0x19C840;
      if (v616 == 0xFFFF)
      {
        v616 = *(a2 + 2004);
        *(a2 + 1932) = v616;
        *(a2 + 2004) = v616 + 1;
      }

      *v824 = (v616 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v823);
      memset(&v824[24], 0, 48);
      v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000A02;
      *(a2 + 16) = 2;
      v620 = *(a2 + 1932);
      if (v620 == 0xFFFF)
      {
        v620 = *(a2 + 2004);
        *(a2 + 1932) = v620;
        *(a2 + 2004) = v620 + 1;
      }

      *&v824[8] = (v620 << 48) | 0x19C840;
      v603 = *(a2 + 1942);
      if (v603 != 0xFFFF)
      {
        goto LABEL_1028;
      }

      v603 = *(a2 + 2004);
      *(a2 + 1942) = v603;
      goto LABEL_1027;
    }

    if (v616 == 0xFFFF)
    {
      v616 = *(a2 + 2004);
      *(a2 + 1932) = v616;
      *(a2 + 2004) = v616 + 1;
    }

    *&v824[8] = (v616 << 48) | 0x15440;
    v617 = *v820;
    if (v617 == 0xFFFF)
    {
      v617 = *(a2 + 2004);
      *(a2 + 1924) = v617;
      *(a2 + 2004) = v617 + 1;
    }

    v618 = (v617 << 48) | 0x15440;
LABEL_1029:
    *&v824[16] = v618;
    v621 = *(a2 + 1912);
    if (v621 == 0xFFFF)
    {
      v621 = *(a2 + 2004);
      *(a2 + 1912) = v621;
      *(a2 + 2004) = v621 + 1;
    }

    *v824 = (v621 << 48) | 0x72621000;
    (*(a2 + 2016))(a2, &v823);
    v622 = *v3;
    if ((*v3 & 0x2000000000000000) != 0)
    {
      memset(&v824[16], 0, 56);
      v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
      *(a2 + 16) = 1;
      v623 = *(a2 + 1628);
      if (v623 == 0xFFFF)
      {
        v624 = *(a2 + 1998);
        v623 = *(a2 + 1998);
        *(a2 + 1628) = v624;
        *(v804 + 4 * v624 + 2) = 342;
        *(a2 + 1998) = v624 + 1;
      }

      *&v824[8] = (v623 << 48) | 0x80;
      v625 = *(a2 + 1912);
      if (v625 == 0xFFFF)
      {
        v625 = *(a2 + 2004);
        *(a2 + 1912) = v625;
        *(a2 + 2004) = v625 + 1;
      }

      *v824 = (v625 << 48) | 0x72609000;
      (*(a2 + 2016))(a2, &v823);
      v622 = *v3;
    }

    v626 = 0uLL;
    if ((v622 & 0x1000000000000) != 0)
    {
      memset(&v824[16], 0, 56);
      v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
      *(a2 + 16) = 1;
      v627 = *(a2 + 1912);
      if (v627 == 0xFFFF)
      {
        v627 = *(a2 + 2004);
        *(a2 + 1912) = v627;
        *(a2 + 2004) = v627 + 1;
      }

      *&v824[8] = ((v627 << 48) | 0x19C840) + 16;
      v628 = *(a2 + 1914);
      if (v628 == 0xFFFF)
      {
        v628 = *(a2 + 2004);
        *(a2 + 1914) = v628;
        *(a2 + 2004) = v628 + 1;
      }

      *v824 = (v628 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v823);
      v622 = *v3;
      v626 = 0uLL;
      if ((*v3 & 0x2000000000000000) != 0)
      {
        memset(&v824[16], 0, 56);
        v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
        *(a2 + 16) = 1;
        v629 = *(a2 + 1632);
        if (v629 == 0xFFFF)
        {
          v630 = *(a2 + 1998);
          v629 = *(a2 + 1998);
          *(a2 + 1632) = v630;
          *(v804 + 4 * v630 + 2) = 343;
          *(a2 + 1998) = v630 + 1;
        }

        *&v824[8] = (v629 << 48) | 0x80;
        v631 = *(a2 + 1914);
        if (v631 == 0xFFFF)
        {
          v631 = *(a2 + 2004);
          *(a2 + 1914) = v631;
          *(a2 + 2004) = v631 + 1;
        }

        *v824 = (v631 << 48) | 0x72609000;
        (*(a2 + 2016))(a2, &v823);
        v622 = *v3;
        v626 = 0uLL;
      }
    }

    if ((v622 & 0x2000000000000000) == 0)
    {
      *&v824[64] = 0;
      *&v824[48] = v626;
      *&v824[32] = v626;
      *&v824[16] = v626;
      *v824 = v626;
      v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000B42;
      *(a2 + 16) = 2;
      v632 = *(a2 + 1912);
      if (v632 == 0xFFFF)
      {
        v632 = *(a2 + 2004);
        *(a2 + 1912) = v632;
        *(a2 + 2004) = v632 + 1;
      }

      *&v824[8] = (v632 << 48) | 0x19C240;
      *&v824[16] = (gleVStateProgram_GetParam(a2, 351) << 48) | 0xAA80;
      v633 = *(a2 + 1912);
      if (v633 == 0xFFFF)
      {
        v633 = *(a2 + 2004);
        *(a2 + 1912) = v633;
        *(a2 + 2004) = v633 + 1;
      }

      *v824 = (v633 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v823);
      memset(&v824[24], 0, 48);
      v634 = *(a2 + 16);
      *(a2 + 16) = 2;
      v823 = (8 * (v634 & 7)) | 0x100000E02;
      v635 = *(a2 + 1912);
      if (v635 == 0xFFFF)
      {
        v635 = *(a2 + 2004);
        *(a2 + 1912) = v635;
        *(a2 + 2004) = v635 + 1;
      }

      *&v824[8] = (v635 << 48) | 0x40;
      v636 = *(a2 + 1628);
      if (v636 == 0xFFFF)
      {
        v637 = *(a2 + 1998);
        v636 = *(a2 + 1998);
        *(a2 + 1628) = v637;
        *(v804 + 4 * v637 + 2) = 342;
        *(a2 + 1998) = v637 + 1;
      }

      *&v824[16] = (v636 << 48) | 0x80;
      if (v635 == 0xFFFF)
      {
        v635 = *(a2 + 2004);
        *(a2 + 1912) = v635;
        *(a2 + 2004) = v635 + 1;
      }

      *v824 = (v635 << 48) + 1918963712;
      (*(a2 + 2016))(a2, &v823);
      memset(v824, 0, sizeof(v824));
      v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000F83;
      *(a2 + 16) = 3;
      v638 = *(a2 + 1912);
      if (v638 == 0xFFFF)
      {
        v642 = *(a2 + 2004);
        v643 = *(a2 + 2004);
        *(a2 + 1912) = v642;
        *(a2 + 2004) = ++v643;
        *&v824[8] = (v642 << 48) | 0xAA50;
        if ((v643 & 0x10000) != 0)
        {
          v642 = *(a2 + 2004);
          *(a2 + 1912) = v642;
          *(a2 + 2004) = v642 + 1;
        }

        v639 = v642 << 48;
      }

      else
      {
        v639 = v638 << 48;
        *&v824[8] = (v638 << 48) | 0xAA50;
      }

      *&v824[16] = v639 | 0x19C840;
      *&v824[24] = (gleVStateProgram_GetParam(a2, 351) << 48) | 0xAA80;
      v644 = *(a2 + 1912);
      if (v644 != 0xFFFF)
      {
        goto LABEL_1068;
      }

LABEL_1067:
      v644 = *(a2 + 2004);
      *(a2 + 1912) = v644;
      *(a2 + 2004) = v644 + 1;
      goto LABEL_1068;
    }

    *&v824[40] = v626;
    *&v824[56] = v626;
    *&v824[8] = v626;
    *&v824[24] = v626;
    v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000041;
    *(a2 + 16) = 1;
    v640 = *(a2 + 1912);
    if (v640 != 0xFFFF)
    {
      v641 = v640 << 48;
      *&v824[8] = (v640 << 48) | 0x19C840;
      goto LABEL_1069;
    }

    v644 = *(a2 + 2004);
    v655 = *(a2 + 2004);
    *(a2 + 1912) = v644;
    *(a2 + 2004) = ++v655;
    *&v824[8] = (v644 << 48) | 0x19C840;
    if ((v655 & 0x10000) != 0)
    {
      goto LABEL_1067;
    }

LABEL_1068:
    v641 = v644 << 48;
LABEL_1069:
    *v824 = v641 | 0x72679000;
    (*(a2 + 2016))(a2, &v823);
    if ((*v3 & 0x1000000000000) == 0)
    {
      goto LABEL_1094;
    }

    if ((*v3 & 0x2000000000000000) == 0)
    {
      memset(v824, 0, sizeof(v824));
      v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000B42;
      *(a2 + 16) = 2;
      v645 = *(a2 + 1914);
      if (v645 == 0xFFFF)
      {
        v645 = *(a2 + 2004);
        *(a2 + 1914) = v645;
        *(a2 + 2004) = v645 + 1;
      }

      *&v824[8] = (v645 << 48) | 0x19C240;
      *&v824[16] = (gleVStateProgram_GetParam(a2, 351) << 48) | 0xAA80;
      v646 = *(a2 + 1914);
      if (v646 == 0xFFFF)
      {
        v646 = *(a2 + 2004);
        *(a2 + 1914) = v646;
        *(a2 + 2004) = v646 + 1;
      }

      *v824 = (v646 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v823);
      memset(&v824[24], 0, 48);
      v647 = *(a2 + 16);
      *(a2 + 16) = 2;
      v823 = (8 * (v647 & 7)) | 0x100000E02;
      v648 = *(a2 + 1914);
      if (v648 == 0xFFFF)
      {
        v648 = *(a2 + 2004);
        *(a2 + 1914) = v648;
        *(a2 + 2004) = v648 + 1;
      }

      *&v824[8] = (v648 << 48) | 0x40;
      v649 = *(a2 + 1632);
      if (v649 == 0xFFFF)
      {
        v650 = *(a2 + 1998);
        v649 = *(a2 + 1998);
        *(a2 + 1632) = v650;
        *(v804 + 4 * v650 + 2) = 343;
        *(a2 + 1998) = v650 + 1;
        v648 = *(a2 + 1914);
      }

      *&v824[16] = (v649 << 48) | 0x80;
      if (v648 == 0xFFFF)
      {
        v648 = *(a2 + 2004);
        *(a2 + 1914) = v648;
        *(a2 + 2004) = v648 + 1;
      }

      *v824 = (v648 << 48) | 0x72611000;
      (*(a2 + 2016))(a2, &v823);
      memset(v824, 0, sizeof(v824));
      v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000F83;
      *(a2 + 16) = 3;
      v651 = *(a2 + 1914);
      if (v651 == 0xFFFF)
      {
        v656 = *(a2 + 2004);
        v657 = *(a2 + 2004);
        *(a2 + 1914) = v656;
        *(a2 + 2004) = ++v657;
        *&v824[8] = (v656 << 48) | 0xAA50;
        if ((v657 & 0x10000) != 0)
        {
          v656 = *(a2 + 2004);
          *(a2 + 1914) = v656;
          *(a2 + 2004) = v656 + 1;
        }

        v652 = v656 << 48;
      }

      else
      {
        v652 = v651 << 48;
        *&v824[8] = (v651 << 48) | 0xAA50;
      }

      *&v824[16] = v652 | 0x19C840;
      *&v824[24] = (gleVStateProgram_GetParam(a2, 351) << 48) | 0xAA80;
      v658 = *(a2 + 1914);
      if (v658 != 0xFFFF)
      {
        goto LABEL_1092;
      }

LABEL_1091:
      v658 = *(a2 + 2004);
      *(a2 + 1914) = v658;
      *(a2 + 2004) = v658 + 1;
LABEL_1092:
      v654 = v658 << 48;
      goto LABEL_1093;
    }

    memset(&v824[8], 0, 64);
    v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000041;
    *(a2 + 16) = 1;
    v653 = *(a2 + 1914);
    if (v653 == 0xFFFF)
    {
      v658 = *(a2 + 2004);
      v703 = *(a2 + 2004);
      *(a2 + 1914) = v658;
      *(a2 + 2004) = ++v703;
      *&v824[8] = (v658 << 48) | 0x19C840;
      if ((v703 & 0x10000) == 0)
      {
        goto LABEL_1092;
      }

      goto LABEL_1091;
    }

    v654 = v653 << 48;
    *&v824[8] = (v653 << 48) | 0x19C840;
LABEL_1093:
    *v824 = v654 | 0x72679000;
    (*(a2 + 2016))(a2, &v823);
LABEL_1094:
    memset(v824, 0, sizeof(v824));
    v659 = 8 * (*(a2 + 16) & 7);
    if (v807 == 6)
    {
      v823 = v659 | 0x3100000882;
      *(a2 + 16) = 2;
      *&v824[8] = ((gleVStateProgram_GetParam(a2, v818 - 56) << 48) | 0x19C840) + 64;
      *&v824[16] = (gleVStateProgram_GetAttrib(a2, 2) << 48) | 0x19C800;
      v660 = *(a2 + 1946);
      if (v660 == 0xFFFF)
      {
        v660 = *(a2 + 2004);
        *(a2 + 1946) = v660;
        *(a2 + 2004) = v660 + 1;
      }

      *v824 = (v660 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v823);
      memset(v824, 0, sizeof(v824));
      v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
      *(a2 + 16) = 2;
      *&v824[8] = ((gleVStateProgram_GetParam(a2, v818 - 48) << 48) | 0x19C840) + 64;
      *&v824[16] = (gleVStateProgram_GetAttrib(a2, 2) << 48) | 0x19C800;
      v661 = *(a2 + 1962);
      if (v661 == 0xFFFF)
      {
        v661 = *(a2 + 2004);
        *(a2 + 1962) = v661;
        *(a2 + 2004) = v661 + 1;
      }

      *v824 = (v661 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v823);
      memset(v824, 0, sizeof(v824));
      v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
      *(a2 + 16) = 3;
      v662 = *(a2 + 1912);
      if (v662 == 0xFFFF)
      {
        v662 = *(a2 + 2004);
        *(a2 + 1912) = v662;
        *(a2 + 2004) = v662 + 1;
      }

      *&v824[8] = (v662 << 48) | 0xAA40;
      v663 = *(a2 + 1962);
      v3 = v805;
      v542 = v818;
      if (v663 == 0xFFFF)
      {
        v663 = *(a2 + 2004);
        *(a2 + 1962) = v663;
        *(a2 + 2004) = v663 + 1;
      }

      *&v824[16] = (v663 << 48) | 0x19C840;
      v664 = *(a2 + 1946);
      if (v664 != 0xFFFF)
      {
        goto LABEL_1104;
      }

      goto LABEL_1117;
    }

    if ((v801 & 2) != 0)
    {
      v823 = v659 | 0x3100000882;
      *(a2 + 16) = 2;
      *&v824[8] = ((gleVStateProgram_GetParam(a2, v818 - 56) << 48) | 0x19C840) + 64;
      *&v824[16] = (gleVStateProgram_GetAttrib(a2, 2) << 48) | 0x19C800;
      v668 = *(a2 + 1946);
      if (v668 == 0xFFFF)
      {
        v668 = *(a2 + 2004);
        *(a2 + 1946) = v668;
        *(a2 + 2004) = v668 + 1;
      }

      *v824 = (v668 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v823);
      memset(v824, 0, sizeof(v824));
      v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
      *(a2 + 16) = 3;
      v669 = *(a2 + 1912);
      if (v669 == 0xFFFF)
      {
        v669 = *(a2 + 2004);
        *(a2 + 1912) = v669;
        *(a2 + 2004) = v669 + 1;
      }

      *&v824[8] = (v669 << 48) | 0xAA40;
      *&v824[16] = ((gleVStateProgram_GetParam(a2, v822 - 17) << 48) | 0x19C840) + 64;
      v664 = *(a2 + 1946);
      v3 = v805;
      if (v664 != 0xFFFF)
      {
LABEL_1104:
        v665 = v664 << 48;
        *&v824[24] = (v664 << 48) | 0x19C840;
        goto LABEL_1120;
      }

LABEL_1117:
      v670 = *(a2 + 2004);
      v671 = *(a2 + 2004);
      *(a2 + 1946) = v670;
      *(a2 + 2004) = ++v671;
      *&v824[24] = (v670 << 48) | 0x19C840;
      if ((v671 & 0x10000) == 0)
      {
LABEL_1119:
        v665 = v670 << 48;
        goto LABEL_1120;
      }

LABEL_1118:
      v670 = *(a2 + 2004);
      *(a2 + 1946) = v670;
      *(a2 + 2004) = v670 + 1;
      goto LABEL_1119;
    }

    if ((v801 & 4) != 0)
    {
      v823 = v659 | 0x3100000882;
      *(a2 + 16) = 2;
      *&v824[8] = ((gleVStateProgram_GetParam(a2, v818 - 48) << 48) | 0x19C840) + 64;
      *&v824[16] = (gleVStateProgram_GetAttrib(a2, 2) << 48) | 0x19C800;
      v682 = *(a2 + 1962);
      if (v682 == 0xFFFF)
      {
        v682 = *(a2 + 2004);
        *(a2 + 1962) = v682;
        *(a2 + 2004) = v682 + 1;
      }

      *v824 = (v682 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v823);
      memset(v824, 0, sizeof(v824));
      v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
      *(a2 + 16) = 3;
      v683 = *(a2 + 1912);
      if (v683 == 0xFFFF)
      {
        v683 = *(a2 + 2004);
        *(a2 + 1912) = v683;
        *(a2 + 2004) = v683 + 1;
      }

      *&v824[8] = (v683 << 48) | 0xAA40;
      v684 = *(a2 + 1962);
      v3 = v805;
      if (v684 == 0xFFFF)
      {
        v684 = *(a2 + 2004);
        *(a2 + 1962) = v684;
        *(a2 + 2004) = v684 + 1;
      }

      *&v824[16] = (v684 << 48) | 0x19C840;
      *&v824[24] = ((gleVStateProgram_GetParam(a2, v822 - 33) << 48) | 0x19C840) + 64;
      v670 = *(a2 + 1946);
      if (v670 != 0xFFFF)
      {
        goto LABEL_1119;
      }

      goto LABEL_1118;
    }

    v823 = v659 + 0x3100000FC3;
    *(a2 + 16) = 3;
    v666 = *(a2 + 1912);
    if (v666 == 0xFFFF)
    {
      v666 = *(a2 + 2004);
      *(a2 + 1912) = v666;
      *(a2 + 2004) = v666 + 1;
    }

    *&v824[8] = (v666 << 48) | 0xAA40;
    *&v824[16] = (gleVStateProgram_GetParam(a2, v822 - 17) << 48) | 0x19C880;
    *&v824[24] = (gleVStateProgram_GetParam(a2, v822 - 33) << 48) | 0x19C880;
    v667 = *(a2 + 1946);
    if (v667 == 0xFFFF)
    {
      v667 = *(a2 + 2004);
      *(a2 + 1946) = v667;
      *(a2 + 2004) = v667 + 1;
    }

    v665 = v667 << 48;
    v542 = v818;
LABEL_1120:
    *v824 = v665 | 0x72679000;
    (*(a2 + 2016))(a2, &v823);
    v672 = *v3;
    if ((*v3 & 0x1000000000000) == 0)
    {
      goto LABEL_1156;
    }

    memset(v824, 0, sizeof(v824));
    v673 = 8 * (*(a2 + 16) & 7);
    if ((v21 & 6) != 6)
    {
      if ((v21 & 2) != 0)
      {
        v823 = v673 | 0x3100000882;
        *(a2 + 16) = 2;
        *&v824[8] = ((gleVStateProgram_GetParam(a2, v542 - 56) << 48) | 0x19C840) + 64;
        *&v824[16] = (gleVStateProgram_GetAttrib(a2, 2) << 48) | 0x19C800;
        v685 = *(a2 + 1954);
        if (v685 == 0xFFFF)
        {
          v685 = *(a2 + 2004);
          *(a2 + 1954) = v685;
          *(a2 + 2004) = v685 + 1;
        }

        *v824 = (v685 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, &v823);
        memset(v824, 0, sizeof(v824));
        v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
        *(a2 + 16) = 3;
        v686 = *(a2 + 1914);
        if (v686 == 0xFFFF)
        {
          v686 = *(a2 + 2004);
          *(a2 + 1914) = v686;
          *(a2 + 2004) = v686 + 1;
        }

        *&v824[8] = (v686 << 48) | 0xAA40;
        *&v824[16] = ((gleVStateProgram_GetParam(a2, v822 - 16) << 48) | 0x19C840) + 64;
        v678 = *(a2 + 1954);
        v3 = v805;
        if (v678 != 0xFFFF)
        {
          goto LABEL_1131;
        }

LABEL_1152:
        v687 = *(a2 + 2004);
        v688 = *(a2 + 2004);
        *(a2 + 1954) = v687;
        *(a2 + 2004) = ++v688;
        *&v824[24] = (v687 << 48) | 0x19C840;
        if ((v688 & 0x10000) == 0)
        {
LABEL_1154:
          v679 = v687 << 48;
          goto LABEL_1155;
        }
      }

      else
      {
        if ((v21 & 4) == 0)
        {
          v823 = v673 + 0x3100000FC3;
          *(a2 + 16) = 3;
          v680 = *(a2 + 1914);
          if (v680 == 0xFFFF)
          {
            v680 = *(a2 + 2004);
            *(a2 + 1914) = v680;
            *(a2 + 2004) = v680 + 1;
          }

          *&v824[8] = (v680 << 48) | 0xAA40;
          *&v824[16] = (gleVStateProgram_GetParam(a2, v822 - 16) << 48) | 0x19C880;
          *&v824[24] = (gleVStateProgram_GetParam(a2, v822 - 32) << 48) | 0x19C880;
          v681 = *(a2 + 1954);
          if (v681 == 0xFFFF)
          {
            v681 = *(a2 + 2004);
            *(a2 + 1954) = v681;
            *(a2 + 2004) = v681 + 1;
          }

          v679 = v681 << 48;
          v542 = v818;
          goto LABEL_1155;
        }

        v823 = v673 | 0x3100000882;
        *(a2 + 16) = 2;
        *&v824[8] = ((gleVStateProgram_GetParam(a2, v542 - 48) << 48) | 0x19C840) + 64;
        *&v824[16] = (gleVStateProgram_GetAttrib(a2, 2) << 48) | 0x19C800;
        v720 = *(a2 + 1970);
        if (v720 == 0xFFFF)
        {
          v720 = *(a2 + 2004);
          *(a2 + 1970) = v720;
          *(a2 + 2004) = v720 + 1;
        }

        *v824 = (v720 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, &v823);
        memset(v824, 0, sizeof(v824));
        v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
        *(a2 + 16) = 3;
        v721 = *(a2 + 1914);
        if (v721 == 0xFFFF)
        {
          v721 = *(a2 + 2004);
          *(a2 + 1914) = v721;
          *(a2 + 2004) = v721 + 1;
        }

        *&v824[8] = (v721 << 48) | 0xAA40;
        v722 = *(a2 + 1970);
        v3 = v805;
        if (v722 == 0xFFFF)
        {
          v722 = *(a2 + 2004);
          *(a2 + 1970) = v722;
          *(a2 + 2004) = v722 + 1;
        }

        *&v824[16] = (v722 << 48) | 0x19C840;
        *&v824[24] = ((gleVStateProgram_GetParam(a2, v822 - 32) << 48) | 0x19C840) + 64;
        v687 = *(a2 + 1954);
        if (v687 != 0xFFFF)
        {
          goto LABEL_1154;
        }
      }

      v687 = *(a2 + 2004);
      *(a2 + 1954) = v687;
      *(a2 + 2004) = v687 + 1;
      goto LABEL_1154;
    }

    v823 = v673 | 0x3100000882;
    *(a2 + 16) = 2;
    *&v824[8] = ((gleVStateProgram_GetParam(a2, v542 - 56) << 48) | 0x19C840) + 64;
    *&v824[16] = (gleVStateProgram_GetAttrib(a2, 2) << 48) | 0x19C800;
    v674 = *(a2 + 1954);
    if (v674 == 0xFFFF)
    {
      v674 = *(a2 + 2004);
      *(a2 + 1954) = v674;
      *(a2 + 2004) = v674 + 1;
    }

    *v824 = (v674 << 48) | 0x72679000;
    (*(a2 + 2016))(a2, &v823);
    memset(v824, 0, sizeof(v824));
    v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
    *(a2 + 16) = 2;
    *&v824[8] = ((gleVStateProgram_GetParam(a2, v542 - 48) << 48) | 0x19C840) + 64;
    *&v824[16] = (gleVStateProgram_GetAttrib(a2, 2) << 48) | 0x19C800;
    v675 = *(a2 + 1970);
    if (v675 == 0xFFFF)
    {
      v675 = *(a2 + 2004);
      *(a2 + 1970) = v675;
      *(a2 + 2004) = v675 + 1;
    }

    *v824 = (v675 << 48) | 0x72679000;
    (*(a2 + 2016))(a2, &v823);
    memset(v824, 0, sizeof(v824));
    v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
    *(a2 + 16) = 3;
    v676 = *(a2 + 1914);
    if (v676 == 0xFFFF)
    {
      v676 = *(a2 + 2004);
      *(a2 + 1914) = v676;
      *(a2 + 2004) = v676 + 1;
    }

    *&v824[8] = (v676 << 48) | 0xAA40;
    v677 = *(a2 + 1970);
    v3 = v805;
    v542 = v818;
    if (v677 == 0xFFFF)
    {
      v677 = *(a2 + 2004);
      *(a2 + 1970) = v677;
      *(a2 + 2004) = v677 + 1;
    }

    *&v824[16] = (v677 << 48) | 0x19C840;
    v678 = *(a2 + 1954);
    if (v678 == 0xFFFF)
    {
      goto LABEL_1152;
    }

LABEL_1131:
    v679 = v678 << 48;
    *&v824[24] = (v678 << 48) | 0x19C840;
LABEL_1155:
    *v824 = v679 | 0x72679000;
    (*(a2 + 2016))(a2, &v823);
    v672 = *v3;
LABEL_1156:
    memset(v824, 0, sizeof(v824));
    v689 = 8 * (*(a2 + 16) & 7);
    if ((v672 & 0x8000000000000000) == 0)
    {
      if (v801 >= 8)
      {
        v823 = v689 | 0x3100000882;
        *(a2 + 16) = 2;
        *&v824[8] = ((gleVStateProgram_GetParam(a2, v542 - 40) << 48) | 0x19C840) + 64;
        *&v824[16] = (gleVStateProgram_GetAttrib(a2, 2) << 48) | 0x19C800;
        v694 = *(a2 + 1962);
        if (v694 == 0xFFFF)
        {
          v694 = *(a2 + 2004);
          *(a2 + 1962) = v694;
          *(a2 + 2004) = v694 + 1;
        }

        *v824 = (v694 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, &v823);
        memset(v824, 0, sizeof(v824));
        v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
        *(a2 + 16) = 3;
        v695 = *(a2 + 1912);
        if (v695 == 0xFFFF)
        {
          v695 = *(a2 + 2004);
          *(a2 + 1912) = v695;
          *(a2 + 2004) = v695 + 1;
        }

        *&v824[8] = (v695 << 48) | 0x15440;
        v696 = *(a2 + 1962);
        v3 = v805;
        if (v696 == 0xFFFF)
        {
          v696 = *(a2 + 2004);
          *(a2 + 1962) = v696;
          *(a2 + 2004) = v696 + 1;
        }

        v691 = (v696 << 48) | 0x19C840;
      }

      else
      {
        v823 = v689 + 0x3100000FC3;
        *(a2 + 16) = 3;
        v690 = *(a2 + 1912);
        if (v690 == 0xFFFF)
        {
          v690 = *(a2 + 2004);
          *(a2 + 1912) = v690;
          *(a2 + 2004) = v690 + 1;
        }

        *&v824[8] = (v690 << 48) | 0x15440;
        v691 = ((gleVStateProgram_GetParam(a2, v822 - 1) << 48) | 0x19C840) + 64;
      }

      *&v824[16] = v691;
      v697 = *(a2 + 1946);
      if (v697 != 0xFFFF)
      {
        v698 = v697 << 48;
        *&v824[24] = (v697 << 48) | 0x19C840;
        goto LABEL_1189;
      }

      v693 = *(a2 + 2004);
      v699 = *(a2 + 2004);
      *(a2 + 1946) = v693;
      *(a2 + 2004) = ++v699;
      *&v824[24] = (v693 << 48) | 0x19C840;
      if ((v699 & 0x10000) == 0)
      {
        goto LABEL_1188;
      }

      v693 = *(a2 + 2004);
      *(a2 + 1946) = v693;
      goto LABEL_1187;
    }

    v823 = v689 | 0x3100000882;
    *(a2 + 16) = 2;
    if (v801 < 8)
    {
      v692 = *(a2 + 1912);
      if (v692 == 0xFFFF)
      {
        v692 = *(a2 + 2004);
        *(a2 + 1912) = v692;
        *(a2 + 2004) = v692 + 1;
      }

      *&v824[8] = (v692 << 48) | 0x15440;
      *&v824[16] = ((gleVStateProgram_GetParam(a2, v822 - 1) << 48) | 0x19C840) + 64;
      v693 = *(a2 + 1962);
      if (v693 != 0xFFFF)
      {
        goto LABEL_1188;
      }

LABEL_1186:
      v693 = *(a2 + 2004);
      *(a2 + 1962) = v693;
LABEL_1187:
      *(a2 + 2004) = v693 + 1;
      goto LABEL_1188;
    }

    *&v824[8] = ((gleVStateProgram_GetParam(a2, v542 - 40) << 48) | 0x19C840) + 64;
    *&v824[16] = (gleVStateProgram_GetAttrib(a2, 2) << 48) | 0x19C800;
    v700 = *(a2 + 1962);
    if (v700 == 0xFFFF)
    {
      v700 = *(a2 + 2004);
      *(a2 + 1962) = v700;
      *(a2 + 2004) = v700 + 1;
    }

    *v824 = (v700 << 48) | 0x72679000;
    (*(a2 + 2016))(a2, &v823);
    memset(v824, 0, sizeof(v824));
    v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
    *(a2 + 16) = 2;
    v701 = *(a2 + 1912);
    if (v701 == 0xFFFF)
    {
      v701 = *(a2 + 2004);
      *(a2 + 1912) = v701;
      *(a2 + 2004) = v701 + 1;
    }

    *&v824[8] = (v701 << 48) | 0x15440;
    v702 = *(a2 + 1962);
    if (v702 != 0xFFFF)
    {
      v698 = v702 << 48;
      *&v824[16] = (v702 << 48) | 0x19C840;
      goto LABEL_1189;
    }

    v693 = *(a2 + 2004);
    v704 = *(a2 + 2004);
    *(a2 + 1962) = v693;
    *(a2 + 2004) = ++v704;
    *&v824[16] = (v693 << 48) | 0x19C840;
    if ((v704 & 0x10000) != 0)
    {
      goto LABEL_1186;
    }

LABEL_1188:
    v698 = v693 << 48;
LABEL_1189:
    *v824 = v698 | 0x72679000;
    (*(a2 + 2016))(a2, &v823);
    v705 = *v3;
    if ((*v3 & 0x1000000000000) == 0)
    {
      goto LABEL_1230;
    }

    memset(v824, 0, sizeof(v824));
    v706 = 8 * (*(a2 + 16) & 7);
    if (v705 < 0)
    {
      v823 = v706 | 0x3100000882;
      *(a2 + 16) = 2;
      if (v21 >= 8)
      {
        *&v824[8] = ((gleVStateProgram_GetParam(a2, v542 - 40) << 48) | 0x19C840) + 64;
        *&v824[16] = (gleVStateProgram_GetAttrib(a2, 2) << 48) | 0x19C800;
        v717 = *(a2 + 1970);
        if (v717 == 0xFFFF)
        {
          v717 = *(a2 + 2004);
          *(a2 + 1970) = v717;
          *(a2 + 2004) = v717 + 1;
        }

        *v824 = (v717 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, &v823);
        memset(v824, 0, sizeof(v824));
        v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
        *(a2 + 16) = 2;
        v718 = *(a2 + 1914);
        if (v718 == 0xFFFF)
        {
          v718 = *(a2 + 2004);
          *(a2 + 1914) = v718;
          *(a2 + 2004) = v718 + 1;
        }

        *&v824[8] = (v718 << 48) | 0x15440;
        v719 = *(a2 + 1970);
        if (v719 != 0xFFFF)
        {
          v715 = v719 << 48;
          *&v824[16] = (v719 << 48) | 0x19C840;
          goto LABEL_1229;
        }

        v710 = *(a2 + 2004);
        v723 = *(a2 + 2004);
        *(a2 + 1970) = v710;
        *(a2 + 2004) = ++v723;
        *&v824[16] = (v710 << 48) | 0x19C840;
        if ((v723 & 0x10000) == 0)
        {
          goto LABEL_1228;
        }
      }

      else
      {
        v709 = *(a2 + 1914);
        if (v709 == 0xFFFF)
        {
          v709 = *(a2 + 2004);
          *(a2 + 1914) = v709;
          *(a2 + 2004) = v709 + 1;
        }

        *&v824[8] = (v709 << 48) | 0x15440;
        *&v824[16] = ((gleVStateProgram_GetParam(a2, v822) << 48) | 0x19C840) + 64;
        v710 = *(a2 + 1970);
        if (v710 != 0xFFFF)
        {
          goto LABEL_1228;
        }
      }

      v710 = *(a2 + 2004);
      *(a2 + 1970) = v710;
      goto LABEL_1227;
    }

    if (v21 >= 8)
    {
      v823 = v706 | 0x3100000882;
      *(a2 + 16) = 2;
      *&v824[8] = ((gleVStateProgram_GetParam(a2, v542 - 40) << 48) | 0x19C840) + 64;
      *&v824[16] = (gleVStateProgram_GetAttrib(a2, 2) << 48) | 0x19C800;
      v711 = *(a2 + 1970);
      if (v711 == 0xFFFF)
      {
        v711 = *(a2 + 2004);
        *(a2 + 1970) = v711;
        *(a2 + 2004) = v711 + 1;
      }

      *v824 = (v711 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v823);
      memset(v824, 0, sizeof(v824));
      v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
      *(a2 + 16) = 3;
      v712 = *(a2 + 1914);
      if (v712 == 0xFFFF)
      {
        v712 = *(a2 + 2004);
        *(a2 + 1914) = v712;
        *(a2 + 2004) = v712 + 1;
      }

      *&v824[8] = (v712 << 48) | 0x15440;
      v713 = *(a2 + 1970);
      v3 = v805;
      if (v713 == 0xFFFF)
      {
        v713 = *(a2 + 2004);
        *(a2 + 1970) = v713;
        *(a2 + 2004) = v713 + 1;
      }

      v708 = (v713 << 48) | 0x19C840;
    }

    else
    {
      v823 = v706 + 0x3100000FC3;
      *(a2 + 16) = 3;
      v707 = *(a2 + 1914);
      if (v707 == 0xFFFF)
      {
        v707 = *(a2 + 2004);
        *(a2 + 1914) = v707;
        *(a2 + 2004) = v707 + 1;
      }

      *&v824[8] = (v707 << 48) | 0x15440;
      v708 = ((gleVStateProgram_GetParam(a2, v822) << 48) | 0x19C840) + 64;
    }

    *&v824[16] = v708;
    v714 = *(a2 + 1954);
    if (v714 == 0xFFFF)
    {
      v710 = *(a2 + 2004);
      v716 = *(a2 + 2004);
      *(a2 + 1954) = v710;
      *(a2 + 2004) = ++v716;
      *&v824[24] = (v710 << 48) | 0x19C840;
      if ((v716 & 0x10000) != 0)
      {
        v710 = *(a2 + 2004);
        *(a2 + 1954) = v710;
LABEL_1227:
        *(a2 + 2004) = v710 + 1;
      }

LABEL_1228:
      v715 = v710 << 48;
      goto LABEL_1229;
    }

    v715 = v714 << 48;
    *&v824[24] = (v714 << 48) | 0x19C840;
LABEL_1229:
    *v824 = v715 | 0x72679000;
    (*(a2 + 2016))(a2, &v823);
LABEL_1230:
    v724 = v816 | v568;
    memset(v824, 0, sizeof(v824));
    if ((v816 | v814))
    {
      v823 = 8 * (*(a2 + 16) & 7) + 0x3100000FC3;
      *(a2 + 16) = 3;
      v725 = *(a2 + 1940);
      if (v725 == 0xFFFF)
      {
        v725 = *(a2 + 2004);
        *(a2 + 1940) = v725;
        *(a2 + 2004) = v725 + 1;
      }

      *&v824[8] = (v725 << 48) | 0x19C840;
      v726 = *(a2 + 1946);
      if (v726 == 0xFFFF)
      {
        v726 = *(a2 + 2004);
        *(a2 + 1946) = v726;
        *(a2 + 2004) = v726 + 1;
      }

      *&v824[16] = (v726 << 48) | 0x19C840;
      v727 = *(a2 + 1904);
      if (v727 == 0xFFFF)
      {
        v732 = *(a2 + 2004);
        v733 = *(a2 + 2004);
        *(a2 + 1904) = v732;
        *(a2 + 2004) = ++v733;
        *&v824[24] = (v732 << 48) | 0x19C840;
        if ((v733 & 0x10000) != 0)
        {
          v732 = *(a2 + 2004);
          *(a2 + 1904) = v732;
          *(a2 + 2004) = v732 + 1;
        }

        v728 = v732 << 48;
      }

      else
      {
        v728 = v727 << 48;
        *&v824[24] = (v727 << 48) | 0x19C840;
      }

      *v824 = v728 | 0x72679000;
      (*(a2 + 2016))(a2, &v823);
      if (*v3 < 0)
      {
        if (v812)
        {
          memset(v824, 0, sizeof(v824));
          v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
          *(a2 + 16) = 3;
          v734 = *(a2 + 1940);
          if (v734 == 0xFFFF)
          {
            v734 = *(a2 + 2004);
            *(a2 + 1940) = v734;
            *(a2 + 2004) = v734 + 1;
          }

          *&v824[8] = (v734 << 48) | 0x19C840;
          v735 = *(a2 + 1962);
          if (v735 == 0xFFFF)
          {
            v735 = *(a2 + 2004);
            *(a2 + 1962) = v735;
            *(a2 + 2004) = v735 + 1;
          }

          *&v824[16] = (v735 << 48) | 0x19C840;
          v736 = *(a2 + 1908);
          if (v736 != 0xFFFF)
          {
            v737 = v736 << 48;
            *&v824[24] = (v736 << 48) | 0x19C840;
LABEL_1272:
            *v824 = v737 | 0x72679000;
            (*(a2 + 2016))(a2, &v823);
            goto LABEL_1273;
          }

          v745 = *(a2 + 2004);
          v764 = *(a2 + 2004);
          *(a2 + 1908) = v745;
          *(a2 + 2004) = ++v764;
          *&v824[24] = (v745 << 48) | 0x19C840;
          if ((v764 & 0x10000) == 0)
          {
            goto LABEL_1271;
          }

          goto LABEL_1270;
        }

        memset(&v824[24], 0, 48);
        v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
        *(a2 + 16) = 2;
        v742 = *(a2 + 1940);
        if (v742 == 0xFFFF)
        {
          v742 = *(a2 + 2004);
          *(a2 + 1940) = v742;
          *(a2 + 2004) = v742 + 1;
        }

        *&v824[8] = (v742 << 48) | 0x19C840;
        v743 = *(a2 + 1962);
        if (v743 == 0xFFFF)
        {
          v743 = *(a2 + 2004);
          *(a2 + 1962) = v743;
          *(a2 + 2004) = v743 + 1;
        }

        *&v824[16] = (v743 << 48) | 0x19C840;
        goto LABEL_1269;
      }
    }

    else
    {
      v823 = 8 * (*(a2 + 16) & 7) + 0x31000007C2;
      *(a2 + 16) = 2;
      v729 = *(a2 + 1946);
      if (v729 == 0xFFFF)
      {
        v729 = *(a2 + 2004);
        *(a2 + 1946) = v729;
        *(a2 + 2004) = v729 + 1;
      }

      *&v824[8] = (v729 << 48) | 0x19C840;
      v730 = *(a2 + 1904);
      if (v730 == 0xFFFF)
      {
        v738 = *(a2 + 2004);
        v739 = *(a2 + 2004);
        *(a2 + 1904) = v738;
        *(a2 + 2004) = ++v739;
        *&v824[16] = (v738 << 48) | 0x19C840;
        if ((v739 & 0x10000) != 0)
        {
          v738 = *(a2 + 2004);
          *(a2 + 1904) = v738;
          *(a2 + 2004) = v738 + 1;
        }

        v731 = v738 << 48;
      }

      else
      {
        v731 = v730 << 48;
        *&v824[16] = (v730 << 48) | 0x19C840;
      }

      *v824 = v731 | 0x72679000;
      (*(a2 + 2016))(a2, &v823);
      if (*v3 < 0)
      {
        if (v812)
        {
          memset(v824, 0, sizeof(v824));
          v823 = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
          *(a2 + 16) = 2;
          v740 = *(a2 + 1962);
          if (v740 == 0xFFFF)
          {
            v740 = *(a2 + 2004);
            *(a2 + 1962) = v740;
            *(a2 + 2004) = v740 + 1;
          }

          *&v824[8] = (v740 << 48) | 0x19C840;
          v741 = *(a2 + 1908);
          if (v741 != 0xFFFF)
          {
            v737 = v741 << 48;
            *&v824[16] = (v741 << 48) | 0x19C840;
            goto LABEL_1272;
          }

          v745 = *(a2 + 2004);
          v765 = *(a2 + 2004);
          *(a2 + 1908) = v745;
          *(a2 + 2004) = ++v765;
          *&v824[16] = (v745 << 48) | 0x19C840;
          if ((v765 & 0x10000) == 0)
          {
LABEL_1271:
            v737 = v745 << 48;
            goto LABEL_1272;
          }

LABEL_1270:
          v745 = *(a2 + 2004);
          *(a2 + 1908) = v745;
          *(a2 + 2004) = v745 + 1;
          goto LABEL_1271;
        }

        memset(&v824[16], 0, 56);
        v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
        *(a2 + 16) = 1;
        v744 = *(a2 + 1962);
        if (v744 == 0xFFFF)
        {
          v744 = *(a2 + 2004);
          *(a2 + 1962) = v744;
          *(a2 + 2004) = v744 + 1;
        }

        *&v824[8] = (v744 << 48) | 0x19C840;
LABEL_1269:
        v745 = *(a2 + 1908);
        if (v745 != 0xFFFF)
        {
          goto LABEL_1271;
        }

        goto LABEL_1270;
      }
    }

LABEL_1273:
    v543 = 0uLL;
    if ((*(v3 + 6) & 1) == 0)
    {
      v812 = 1;
      goto LABEL_1323;
    }

    memset(v824, 0, sizeof(v824));
    v746 = 8 * (*(a2 + 16) & 7);
    if (v724)
    {
      v823 = v746 + 0x3100000FC3;
      *(a2 + 16) = 3;
      v747 = *(a2 + 1940);
      if (v747 == 0xFFFF)
      {
        v747 = *(a2 + 2004);
        *(a2 + 1940) = v747;
        *(a2 + 2004) = v747 + 1;
      }

      *&v824[8] = (v747 << 48) | 0x19C840;
      v748 = *(a2 + 1954);
      if (v748 == 0xFFFF)
      {
        v748 = *(a2 + 2004);
        *(a2 + 1954) = v748;
        *(a2 + 2004) = v748 + 1;
      }

      *&v824[16] = (v748 << 48) | 0x19C840;
      v749 = *(a2 + 1906);
      if (v749 == 0xFFFF)
      {
        v754 = *(a2 + 2004);
        v755 = *(a2 + 2004);
        *(a2 + 1906) = v754;
        *(a2 + 2004) = ++v755;
        *&v824[24] = (v754 << 48) | 0x19C840;
        if ((v755 & 0x10000) != 0)
        {
          v754 = *(a2 + 2004);
          *(a2 + 1906) = v754;
          *(a2 + 2004) = v754 + 1;
        }

        v750 = v754 << 48;
      }

      else
      {
        v750 = v749 << 48;
        *&v824[24] = (v749 << 48) | 0x19C840;
      }

      *v824 = v750 | 0x72679000;
      (*(a2 + 2016))(a2, &v823);
      if ((*v3 & 0x8000000000000000) == 0)
      {
        goto LABEL_1322;
      }

      if (!v812)
      {
        memset(&v824[24], 0, 48);
        v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
        *(a2 + 16) = 2;
        v766 = *(a2 + 1940);
        if (v766 == 0xFFFF)
        {
          v766 = *(a2 + 2004);
          *(a2 + 1940) = v766;
          *(a2 + 2004) = v766 + 1;
        }

        *&v824[8] = (v766 << 48) | 0x19C840;
        v767 = *(a2 + 1970);
        if (v767 == 0xFFFF)
        {
          v767 = *(a2 + 2004);
          *(a2 + 1970) = v767;
          *(a2 + 2004) = v767 + 1;
        }

        *&v824[16] = (v767 << 48) | 0x19C840;
        goto LABEL_1318;
      }

      memset(v824, 0, sizeof(v824));
      v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
      *(a2 + 16) = 3;
      v756 = *(a2 + 1940);
      if (v756 == 0xFFFF)
      {
        v756 = *(a2 + 2004);
        *(a2 + 1940) = v756;
        *(a2 + 2004) = v756 + 1;
      }

      *&v824[8] = (v756 << 48) | 0x19C840;
      v757 = *(a2 + 1970);
      if (v757 == 0xFFFF)
      {
        v757 = *(a2 + 2004);
        *(a2 + 1970) = v757;
        *(a2 + 2004) = v757 + 1;
      }

      *&v824[16] = (v757 << 48) | 0x19C840;
      v758 = *(a2 + 1910);
      if (v758 == 0xFFFF)
      {
        v769 = *(a2 + 2004);
        v771 = *(a2 + 2004);
        *(a2 + 1910) = v769;
        *(a2 + 2004) = ++v771;
        *&v824[24] = (v769 << 48) | 0x19C840;
        if ((v771 & 0x10000) == 0)
        {
          goto LABEL_1320;
        }

LABEL_1319:
        v769 = *(a2 + 2004);
        *(a2 + 1910) = v769;
        *(a2 + 2004) = v769 + 1;
LABEL_1320:
        v759 = v769 << 48;
        goto LABEL_1321;
      }

      v759 = v758 << 48;
      *&v824[24] = (v758 << 48) | 0x19C840;
    }

    else
    {
      v823 = v746 + 0x31000007C2;
      *(a2 + 16) = 2;
      v751 = *(a2 + 1954);
      if (v751 == 0xFFFF)
      {
        v751 = *(a2 + 2004);
        *(a2 + 1954) = v751;
        *(a2 + 2004) = v751 + 1;
      }

      *&v824[8] = (v751 << 48) | 0x19C840;
      v752 = *(a2 + 1906);
      if (v752 == 0xFFFF)
      {
        v760 = *(a2 + 2004);
        v761 = *(a2 + 2004);
        *(a2 + 1906) = v760;
        *(a2 + 2004) = ++v761;
        *&v824[16] = (v760 << 48) | 0x19C840;
        if ((v761 & 0x10000) != 0)
        {
          v760 = *(a2 + 2004);
          *(a2 + 1906) = v760;
          *(a2 + 2004) = v760 + 1;
        }

        v753 = v760 << 48;
      }

      else
      {
        v753 = v752 << 48;
        *&v824[16] = (v752 << 48) | 0x19C840;
      }

      *v824 = v753 | 0x72679000;
      (*(a2 + 2016))(a2, &v823);
      if ((*v3 & 0x8000000000000000) == 0)
      {
        goto LABEL_1322;
      }

      if (!v812)
      {
        memset(&v824[16], 0, 56);
        v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
        *(a2 + 16) = 1;
        v768 = *(a2 + 1970);
        if (v768 == 0xFFFF)
        {
          v768 = *(a2 + 2004);
          *(a2 + 1970) = v768;
          *(a2 + 2004) = v768 + 1;
        }

        *&v824[8] = (v768 << 48) | 0x19C840;
LABEL_1318:
        v769 = *(a2 + 1910);
        if (v769 == 0xFFFF)
        {
          goto LABEL_1319;
        }

        goto LABEL_1320;
      }

      memset(v824, 0, sizeof(v824));
      v823 = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
      *(a2 + 16) = 2;
      v762 = *(a2 + 1970);
      if (v762 == 0xFFFF)
      {
        v762 = *(a2 + 2004);
        *(a2 + 1970) = v762;
        *(a2 + 2004) = v762 + 1;
      }

      *&v824[8] = (v762 << 48) | 0x19C840;
      v763 = *(a2 + 1910);
      if (v763 == 0xFFFF)
      {
        v769 = *(a2 + 2004);
        v772 = *(a2 + 2004);
        *(a2 + 1910) = v769;
        *(a2 + 2004) = ++v772;
        *&v824[16] = (v769 << 48) | 0x19C840;
        if ((v772 & 0x10000) == 0)
        {
          goto LABEL_1320;
        }

        goto LABEL_1319;
      }

      v759 = v763 << 48;
      *&v824[16] = (v763 << 48) | 0x19C840;
    }

LABEL_1321:
    *v824 = v759 | 0x72679000;
    (*(a2 + 2016))(a2, &v823);
LABEL_1322:
    v812 = 1;
    v543 = 0uLL;
LABEL_1323:
    v822 += 2;
    ++v542;
    v770 = v56 > 1;
    v56 >>= 1;
  }

  while (v770);
  if (!v812)
  {
    goto LABEL_1330;
  }

LABEL_1333:
  memset(&v824[16], 0, 56);
  v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
  *(a2 + 16) = 1;
  if ((v801 & 4) != 0)
  {
    *&v824[8] = (gleVStateProgram_GetAttrib(a2, 2) << 48) | 0x19C800;
    v776 = *(a2 + 1904);
  }

  else
  {
    v774 = *(a2 + 1636);
    if (v774 == 0xFFFF)
    {
      v775 = *(a2 + 1998);
      v774 = *(a2 + 1998);
      *(a2 + 1636) = v775;
      *(a2 + 4 * v775 + 262) = 344;
      *(a2 + 1998) = v775 + 1;
    }

    *&v824[8] = ((v774 << 48) | 0x19C840) + 64;
    v776 = *(a2 + 1904);
  }

  if (v776 == 0xFFFF)
  {
    v776 = *(a2 + 2004);
    *(a2 + 1904) = v776;
    *(a2 + 2004) = v776 + 1;
  }

  *v824 = (v776 << 48) | 0x72609000;
  (*(a2 + 2016))(a2, &v823);
  memset(&v824[16], 0, 56);
  v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
  *(a2 + 16) = 1;
  v777 = *(a2 + 1904);
  if (v777 == 0xFFFF)
  {
    v777 = *(a2 + 2004);
    *(a2 + 1904) = v777;
    *(a2 + 2004) = v777 + 1;
  }

  *&v824[8] = (v777 << 48) | 0x19C840;
  v778 = a2 + 1692;
  v779 = *(a2 + 1704);
  if (v779 == 0xFFFF)
  {
    v780 = *(a2 + 2000);
    v779 = *(a2 + 2000);
    *(a2 + 1704) = v780;
    *(v778 + 4 * v780 + 2) = 3;
    *(a2 + 2000) = v780 + 1;
  }

  *v824 = ((v779 << 48) | 0x72679000) + 0x2000;
  result = (*(a2 + 2016))(a2, &v823);
  if (*v3 < 0)
  {
    memset(&v824[16], 0, 56);
    v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
    *(a2 + 16) = 1;
    v782 = *(a2 + 1908);
    if (v782 == 0xFFFF)
    {
      v782 = *(a2 + 2004);
      *(a2 + 1908) = v782;
      *(a2 + 2004) = v782 + 1;
    }

    *&v824[8] = (v782 << 48) | 0x19C840;
    v783 = *(a2 + 1712);
    if (v783 == 0xFFFF)
    {
      v784 = *(a2 + 2000);
      v783 = *(a2 + 2000);
      *(a2 + 1712) = v784;
      *(v778 + 4 * v784 + 2) = 5;
      *(a2 + 2000) = v784 + 1;
    }

    *v824 = ((v783 << 48) | 0x72679000) + 0x2000;
    result = (*(a2 + 2016))(a2, &v823);
    if ((*v3 & 0x1000000000000) != 0)
    {
      goto LABEL_1352;
    }
  }

  else
  {
    if ((*v3 & 0x1000000000000) == 0)
    {
      return result;
    }

LABEL_1352:
    memset(&v824[16], 0, 56);
    v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
    *(a2 + 16) = 1;
    if ((v799 & 4) != 0)
    {
      *&v824[8] = (gleVStateProgram_GetAttrib(a2, 2) << 48) | 0x19C800;
      v787 = *(a2 + 1906);
    }

    else
    {
      v785 = *(a2 + 1640);
      if (v785 == 0xFFFF)
      {
        v786 = *(a2 + 1998);
        v785 = *(a2 + 1998);
        *(a2 + 1640) = v786;
        *(a2 + 4 * v786 + 262) = 345;
        *(a2 + 1998) = v786 + 1;
      }

      *&v824[8] = ((v785 << 48) | 0x19C840) + 64;
      v787 = *(a2 + 1906);
    }

    if (v787 == 0xFFFF)
    {
      v787 = *(a2 + 2004);
      *(a2 + 1906) = v787;
      *(a2 + 2004) = v787 + 1;
    }

    *v824 = (v787 << 48) | 0x72609000;
    (*(a2 + 2016))(a2, &v823);
    memset(&v824[16], 0, 56);
    v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
    *(a2 + 16) = 1;
    v788 = *(a2 + 1906);
    if (v788 == 0xFFFF)
    {
      v788 = *(a2 + 2004);
      *(a2 + 1906) = v788;
      *(a2 + 2004) = v788 + 1;
    }

    *&v824[8] = (v788 << 48) | 0x19C840;
    v789 = *(a2 + 1708);
    if (v789 == 0xFFFF)
    {
      v790 = *(a2 + 2000);
      v789 = *(a2 + 2000);
      *(a2 + 1708) = v790;
      *(v778 + 4 * v790 + 2) = 4;
      *(a2 + 2000) = v790 + 1;
    }

    *v824 = ((v789 << 48) | 0x72679000) + 0x2000;
    result = (*(a2 + 2016))(a2, &v823);
    if (*v3 < 0)
    {
      memset(&v824[16], 0, 56);
      v823 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
      *(a2 + 16) = 1;
      v791 = *(a2 + 1910);
      if (v791 == 0xFFFF)
      {
        v791 = *(a2 + 2004);
        *(a2 + 1910) = v791;
        *(a2 + 2004) = v791 + 1;
      }

      *&v824[8] = (v791 << 48) | 0x19C840;
      v792 = *(a2 + 1716);
      if (v792 == 0xFFFF)
      {
        v793 = *(a2 + 2000);
        v792 = *(a2 + 2000);
        *(a2 + 1716) = v793;
        *(v778 + 4 * v793 + 2) = 6;
        *(a2 + 2000) = v793 + 1;
      }

      *v824 = ((v792 << 48) | 0x72679000) + 0x2000;
      return (*(a2 + 2016))(a2, &v823);
    }
  }

  return result;
}