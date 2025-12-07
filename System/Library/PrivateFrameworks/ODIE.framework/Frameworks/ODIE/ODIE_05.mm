uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN4llvm2cl6parserISB_EEEC1IJNSD_4descEEEERS4_NSC_9StringRefEDpOT_EUlRKT_E_NS9_ISR_EEFvRKSB_EE7__cloneEPNS0_6__baseISV_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286E75EF8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions const&)>)::{lambda(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)#1},std::allocator<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions const&)>)::{lambda(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)#1}>,void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4[173] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v2 = *(a2 + 8);
  bzero(v4, 0x568uLL);
  v3(v2, v4);
}

void std::__function::__func<mlir::ODIE::Compiler::registerPassPipelines(void)::$_2,std::allocator<mlir::ODIE::Compiler::registerPassPipelines(void)::$_2>,void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)>::operator()(uint64_t a1, mlir::ODIE::Compiler::_anonymous_namespace_ *a2, uint64_t a3)
{
  v3 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::getRegisteredOptionsForPassManager(a2);
  mlir::ODIE::Compiler::Transforms::impl::createVerifyUniqueDebugInfoRecordOps();
}

uint64_t std::__function::__func<mlir::ODIE::Compiler::anonymous namespace::createCoreToODIXPassPipeline(mlir::OpPassManager &,mlir::ODIE::Compiler::Options const&,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)::$_0,std::allocator<mlir::ODIE::Compiler::anonymous namespace::createCoreToODIXPassPipeline(mlir::OpPassManager &,mlir::ODIE::Compiler::Options const&,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)::$_0>,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::~__func(uint64_t a1)
{
  *a1 = &unk_286E75758;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(mlir::ODIE::Compiler::ModuleRewriter::Payload &&)>::~__value_func[abi:nn200100](a1 + 8);
  return a1;
}

void std::__function::__func<mlir::ODIE::Compiler::anonymous namespace::createCoreToODIXPassPipeline(mlir::OpPassManager &,mlir::ODIE::Compiler::Options const&,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)::$_0,std::allocator<mlir::ODIE::Compiler::anonymous namespace::createCoreToODIXPassPipeline(mlir::OpPassManager &,mlir::ODIE::Compiler::Options const&,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)::$_0>,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::~__func(uint64_t a1)
{
  *a1 = &unk_286E75758;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(mlir::ODIE::Compiler::ModuleRewriter::Payload &&)>::~__value_func[abi:nn200100](a1 + 8);

  JUMPOUT(0x25F891040);
}

void std::__function::__func<mlir::ODIE::Compiler::anonymous namespace::createCoreToODIXPassPipeline(mlir::OpPassManager &,mlir::ODIE::Compiler::Options const&,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)::$_0,std::allocator<mlir::ODIE::Compiler::anonymous namespace::createCoreToODIXPassPipeline(mlir::OpPassManager &,mlir::ODIE::Compiler::Options const&,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)::$_0>,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_286E75758;
  v3 = (a2 + 5);
  std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(mlir::ODIE::Compiler::ModuleRewriter::Payload &&)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  if (*(a1 + 63) < 0)
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);

    std::string::__init_copy_ctor_external(v3, v5, v6);
  }

  else
  {
    v4 = *(a1 + 40);
    v3->__r_.__value_.__r.__words[2] = *(a1 + 56);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }
}

void std::__function::__func<mlir::ODIE::Compiler::anonymous namespace::createCoreToODIXPassPipeline(mlir::OpPassManager &,mlir::ODIE::Compiler::Options const&,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)::$_0,std::allocator<mlir::ODIE::Compiler::anonymous namespace::createCoreToODIXPassPipeline(mlir::OpPassManager &,mlir::ODIE::Compiler::Options const&,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)::$_0>,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::destroy_deallocate(char *a1)
{

  operator delete(a1);
}

void std::__function::__func<mlir::ODIE::Compiler::anonymous namespace::createCoreToODIXPassPipeline(mlir::OpPassManager &,mlir::ODIE::Compiler::Options const&,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)::$_0,std::allocator<mlir::ODIE::Compiler::anonymous namespace::createCoreToODIXPassPipeline(mlir::OpPassManager &,mlir::ODIE::Compiler::Options const&,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)::$_0>,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::operator()(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a3, *(a3 + 8));
  }

  else
  {
    v17 = *a3;
  }

  v8 = *a4;
  v7 = a4[1];
  v9 = *a2;
  *a2 = 0;
  v18 = v9;
  std::__fs::filesystem::__absolute(&__p, &v17, 0);
  v12 = *(a1 + 40);
  v11 = a1 + 40;
  v10 = v12;
  v13 = *(v11 + 23);
  if (v13 >= 0)
  {
    v10 = v11;
  }

  if (v13 < 0)
  {
    v13 = *(v11 + 8);
  }

  v20 = v10;
  v21 = v13;
  v22 = v8;
  v23 = v7;
  v14 = *(v11 - 8);
  if (v14)
  {
    (*(*v14 + 48))(v14, &v18);
    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    }

    v15 = v18;
    v18 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v16 = std::__throw_bad_function_call[abi:nn200100]();
  }
}

uint64_t std::__function::__alloc_func<mlir::ODIE::Compiler::anonymous namespace::createCoreToODIXPassPipeline(mlir::OpPassManager &,mlir::ODIE::Compiler::Options const&,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)::$_0,std::allocator<mlir::ODIE::Compiler::anonymous namespace::createCoreToODIXPassPipeline(mlir::OpPassManager &,mlir::ODIE::Compiler::Options const&,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)::$_0>,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::destroy[abi:nn200100](uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(mlir::ODIE::Compiler::ModuleRewriter::Payload &&)>::~__value_func[abi:nn200100](a1);
}

uint64_t *std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,0>(uint64_t a1)
{
  std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::~__value_func[abi:nn200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,std::__map_value_compare<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,true>,std::allocator<std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>,0>((a2 + 4));

    operator delete(a2);
  }
}

uint64_t std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)>::function(uint64_t a1, uint64_t a2)
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

void *std::__function::__func<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1},std::allocator<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1}>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::~__func(void *a1)
{
  *a1 = &unk_286E757A0;
  return a1;
}

void std::__function::__func<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1},std::allocator<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1}>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::~__func(void *a1)
{
  *a1 = &unk_286E757A0;

  JUMPOUT(0x25F891040);
}

void std::__function::__func<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1},std::allocator<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1}>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::destroy_deallocate(void *a1)
{

  operator delete(a1);
}

mlir::ODIE::Compiler::_anonymous_namespace_::ToOdixPipelineOptions *std::__function::__func<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1},std::allocator<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1}>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v13[131] = *MEMORY[0x277D85DE8];
  v5 = *a3;
  v6 = a3[1];
  v8 = llvm::errs(v7);
  if ((mlir::detail::PassOptions::parseFromString(v13, v5, v6, v8) & 1) == 0)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(*v9 + 48))(v9, a2, v13);
    v10 = 1;
LABEL_5:
    return v10;
  }

  v12 = std::__throw_bad_function_call[abi:nn200100]();
}

mlir::ODIE::Compiler::_anonymous_namespace_::ToOdixPipelineOptions *mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions::ToOdixPipelineOptions(mlir::ODIE::Compiler::_anonymous_namespace_::ToOdixPipelineOptions *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = this + 48;
  *(this + 5) = 0x400000000;
  *(this + 10) = this + 96;
  *(this + 11) = 0x400000000;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0x1000000000;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  v2 = (this + 184);
  v3 = llvm::cl::Option::Option(this + 184, 1, 0);
  *(this + 352) = 0;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 19) = 0u;
  *(this + 23) = &unk_286E758A8;
  *(this + 46) = 0;
  *(this + 47) = 0;
  *(this + 45) = 0;
  *(this + 48) = &unk_286E75958;
  *(this + 49) = &unk_286E75910;
  *(this + 52) = this + 392;
  llvm::cl::Option::setArgStr(v3, "compilers", 9, v4, v5, v6);
  llvm::SmallPtrSetImpl<llvm::cl::SubCommand *>::insert((this + 272), this, &v10);
  *(this + 27) = "A list of compilers to use during delegate compilation.";
  *(this + 28) = 55;
  llvm::cl::Option::addArgument(v2);
  *(this + 432) = 0;
  *(this + 23) = &unk_286E757E8;
  *(this + 53) = &unk_286E75868;
  *(this + 55) = &unk_286E75958;
  if ((*(this + 352) & 1) == 0)
  {
    *(this + 352) = 1;
  }

  *&v10 = this + 424;
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](this + 160, &v10);
  v8 = 1;
  v9 = &v8;
  *&v10 = "Erase all externalized graphs rather than writing them out.";
  *(&v10 + 1) = 59;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::initializer<BOOL>,llvm::cl::desc>(this + 448, this, "remove-externalized-graphs", 26, &v9, &v10);
  v8 = 0;
  v9 = &v8;
  *&v10 = "Const fold de-palletization op to speed up interpreter run";
  *(&v10 + 1) = 58;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::initializer<BOOL>,llvm::cl::desc>(this + 648, this, "fold-constexpr-ops", 18, &v9, &v10);
  v8 = 0;
  v9 = &v8;
  *&v10 = "Require full delegation, i.e. disallow any ops being interpreted using kernels";
  *(&v10 + 1) = 78;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::initializer<BOOL>,llvm::cl::desc>(this + 848, this, "require-full-delegation", 23, &v9, &v10);
  return this;
}

void mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions::~ToOdixPipelineOptions(mlir::ODIE::Compiler::_anonymous_namespace_::ToOdixPipelineOptions *this)
{
  v2 = (this + 848);
  *(this + 106) = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](this + 1000);
  llvm::cl::Option::~Option(v2);
  *(this + 81) = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](this + 800);
  llvm::cl::Option::~Option(this + 81);
  *(this + 56) = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](this + 600);
  llvm::cl::Option::~Option(this + 56);
  v3 = *(this + 20);
  if (v3)
  {
    *(this + 21) = v3;
    operator delete(v3);
  }

  llvm::StringMap<llvm::cl::Option *,llvm::MallocAllocator>::~StringMap(this + 128);
  v4 = *(this + 10);
  if (v4 != this + 96)
  {
    free(v4);
  }

  v5 = *(this + 4);
  if (v5 != this + 48)
  {
    free(v5);
  }
}

BOOL mlir::detail::PassOptions::ListOption<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions,mlir::detail::PassOptions::PassOptionsParser<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions>>::handleOccurrence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (*(a1 + 168) == 1)
  {
    *(a1 + 184) = *(a1 + 176);
    v12 = *(a1 + 120);
    {
      i -= 83;
    }

    *(a1 + 128) = v12;
    *(a1 + 168) = 0;
  }

  *(a1 + 248) = 1;
  v14 = a1;
  v15[0] = a1 + 256;
  v16[0] = a3;
  v16[1] = a4;
  v15[1] = a1;
  v15[2] = v16;
  v15[3] = &v14;
}

void mlir::detail::PassOptions::ListOption<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions,mlir::detail::PassOptions::PassOptionsParser<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions>>::~ListOption(llvm::cl::Option *a1)
{

  JUMPOUT(0x25F891040);
}

void llvm::cl::list<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions,BOOL,mlir::detail::PassOptions::PassOptionsParser<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions>>::setDefault(void *result)
{
  result[23] = result[22];
  v3 = result[15];
  {
    i -= 83;
  }

  result[16] = v3;
}

void mlir::detail::PassOptions::ListOption<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions,mlir::detail::PassOptions::PassOptionsParser<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions>>::print(llvm::raw_ostream *result, llvm::raw_ostream *this)
{
  if (*(result + 168) != 1 || (*(result + 16) == *(result + 15) ? (v4 = (*(result + 19) - *(result + 18)) >> 3 == 0xA3784A062B2E43DBLL * ((*(result + 16) - *(result + 15)) >> 3)) : (v4 = 0), !v4))
  {
    v5 = llvm::raw_ostream::operator<<(this, *(result + 2), *(result + 3));
    v6 = *(v5 + 4);
    if (*(v5 + 3) - v6 > 1uLL)
    {
      *v6 = 31549;
      *(v5 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v5, "={", 2uLL);
    }

    v7 = *(result + 15);
    v8 = *(result + 16);
    if (v7 != v8)
    {
      mlir::detail::PassOptions::print(*(result + 15), this);
      for (i = (v7 + 664); i != v8; i = (i + 664))
      {
        v10 = *(this + 4);
        if (*(this + 3) == v10)
        {
          llvm::raw_ostream::write(this, ",", 1uLL);
        }

        else
        {
          *v10 = 44;
          ++*(this + 4);
        }

        mlir::detail::PassOptions::print(i, this);
      }
    }

    v11 = *(this + 4);
    if (*(this + 3) == v11)
    {

      llvm::raw_ostream::write(this, "}", 1uLL);
    }

    else
    {
      *v11 = 125;
      ++*(this + 4);
    }
  }
}

void mlir::detail::PassOptions::ListOption<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions,mlir::detail::PassOptions::PassOptionsParser<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions>>::copyValueFrom(void *result, uint64_t a2)
{
  v4 = *(a2 - 120);
  v5 = *(a2 - 112);
  v6 = v5 - v4;
  v8 = (result + 15);
  v7 = result[15];
  v9 = result[17];
  if (v9 - v7 < v5 - v4)
  {
    v10 = 0xA3784A062B2E43DBLL * (v6 >> 3);
    if (v7)
    {
      v11 = result[16];
      v12 = result[15];
      if (v11 != v7)
      {
        do
        {
          v11 -= 83;
        }

        while (v11 != v7);
        v12 = *v8;
      }

      result[16] = v7;
      operator delete(v12);
      v9 = 0;
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
    }

    if (v10 <= 0x62B2E43DAFCEA6)
    {
      v13 = 0xA3784A062B2E43DBLL * (v9 >> 3);
      v14 = 2 * v13;
      if (2 * v13 <= v10)
      {
        v14 = v10;
      }

      if (v13 >= 0x3159721ED7E753)
      {
        v15 = 0x62B2E43DAFCEA6;
      }

      else
      {
        v15 = v14;
      }

      if (v15 <= 0x62B2E43DAFCEA6)
      {
      }
    }
  }

  v16 = result[16];
  v17 = v16 - v7;
  if (v16 - v7 >= v6)
  {
    if (v5 != v4)
    {
      do
      {
        mlir::detail::PassOptions::copyOptionValuesFrom(v7, v4);
        v4 += 664;
        v7 += 664;
      }

      while (v4 != v5);
      v16 = result[16];
    }

    while (v16 != v7)
    {
      v16 -= 83;
    }

    result[16] = v7;
  }

  else
  {
    v18 = &v17[v4];
    if (v16 != v7)
    {
      do
      {
        mlir::detail::PassOptions::copyOptionValuesFrom(v7, v4);
        v4 += 664;
        v7 += 664;
        v17 -= 664;
      }

      while (v17);
      v16 = result[16];
    }

    v19 = v16;
    do
    {
      v18 = (v18 + 664);
      v16 += 83;
      v19 += 83;
    }

    while (v18 != v5);
    result[16] = v19;
  }

  *(result + 248) = 1;
  *(result + 248) = *(a2 + 8);
}

void non-virtual thunk tomlir::detail::PassOptions::ListOption<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions,mlir::detail::PassOptions::PassOptionsParser<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions>>::~ListOption(uint64_t a1)
{
}

{

  JUMPOUT(0x25F891040);
}

uint64_t llvm::cl::list<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions,BOOL,mlir::detail::PassOptions::PassOptionsParser<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions>>::handleOccurrence(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = a2;
  v28[30] = *MEMORY[0x277D85DE8];
  v18 = a2;
  bzero(v19, 0x298uLL);
  if (*(a1 + 168) == 1)
  {
    *(a1 + 184) = *(a1 + 176);
    v12 = *(a1 + 120);
    {
      i -= 83;
    }

    *(a1 + 128) = v12;
    *(a1 + 168) = 0;
  }

  v13 = llvm::errs(v10);
  v14 = mlir::detail::PassOptions::parseFromString(v19, a5, a6, v13);
  if (v14)
  {
    *(a1 + 12) = v8;
    std::vector<unsigned int>::push_back[abi:nn200100]((a1 + 176), &v18);
    v15 = *(a1 + 232);
    if (!v15)
    {
      v17 = std::__throw_bad_function_call[abi:nn200100]();
    }

    (*(*v15 + 48))(v15, v19);
  }

  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(v28);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(&v27);
  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  llvm::StringMap<llvm::cl::Option *,llvm::MallocAllocator>::~StringMap(&v24);
  if (v22 != &v23)
  {
    free(v22);
  }

  if (v20 != &v21)
  {
    free(v20);
  }

  return (v14 & 1) == 0;
}

void llvm::cl::list<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions,BOOL,mlir::detail::PassOptions::PassOptionsParser<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions>>::~list(llvm::cl::Option *a1)
{

  JUMPOUT(0x25F891040);
}

void llvm::cl::list_storage<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions,BOOL>::addValue<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions>(const mlir::detail::PassOptions **a1, const mlir::detail::PassOptions *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v6 = 0xA3784A062B2E43DBLL * ((v3 - *a1) >> 3);
    if (v6 + 1 > 0x62B2E43DAFCEA6)
    {
    }

    v7 = 0xA3784A062B2E43DBLL * ((v4 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x3159721ED7E753)
    {
      v9 = 0x62B2E43DAFCEA6;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
    }

    v10 = 664 * v6;
    v5 = (v10 + 664);
    v11 = *a1;
    v12 = a1[1];
    v13 = (v10 + *a1 - v12);
    if (v12 != *a1)
    {
      v14 = *a1;
      v15 = v13;
      do
      {
        v14 = (v14 + 664);
        v15 = (v16 + 664);
      }

      while (v14 != v12);
      do
      {
        v11 = (v11 + 664);
      }

      while (v11 != v12);
      v11 = *a1;
    }

    *a1 = v13;
    a1[1] = v5;
    a1[2] = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
  }

  a1[1] = v5;
}

void std::allocator_traits<std::allocator<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions>>::destroy[abi:nn200100]<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions,0>(void *a1)
{
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option((a1 + 53));
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option((a1 + 23));
  v2 = a1[20];
  if (v2)
  {
    a1[21] = v2;
    operator delete(v2);
  }

  llvm::StringMap<llvm::cl::Option *,llvm::MallocAllocator>::~StringMap((a1 + 16));
  v3 = a1[10];
  if (v3 != a1 + 12)
  {
    free(v3);
  }

  v4 = a1[4];
  if (v4 != a1 + 6)
  {

    free(v4);
  }
}

_OWORD *mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions::ExternalRewriterOptions(_OWORD *a1, const mlir::detail::PassOptions *a2)
{
  *a1 = 0u;
  a1[1] = 0u;
  *(a1 + 4) = a1 + 3;
  *(a1 + 5) = 0x400000000;
  *(a1 + 10) = a1 + 6;
  *(a1 + 11) = 0x400000000;
  a1[8] = 0uLL;
  *(a1 + 18) = 0x1000000000;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *&v6 = "The name of the external rewriter (to look up in the registry).";
  *(&v6 + 1) = 63;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((a1 + 184), a1, "name", 4, &v6);
  v5 = &byte_25D0A27DF;
  *&v6 = "The arguments to the rewriter needed to perform the requested task.";
  *(&v6 + 1) = 67;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::initializer<char [1]>,llvm::cl::desc>(a1 + 424, a1, &v5, &v6);
  mlir::detail::PassOptions::copyOptionValuesFrom(a1, a2);
  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions>>(unint64_t a1)
{
  if (a1 < 0x62B2E43DAFCEA7)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void llvm::cl::list<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions,BOOL,mlir::detail::PassOptions::PassOptionsParser<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions>>::~list(llvm::cl::Option *this)
{
  *this = &unk_286E758A8;
  v2 = this + 208;
  v3 = *(this + 29);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *(this + 22);
  if (v4)
  {
    *(this + 23) = v4;
    operator delete(v4);
  }

  v5 = *(this + 18);
  if (v5)
  {
    *(this + 19) = v5;
    operator delete(v5);
  }

  v6 = *(this + 15);
  if (v6)
  {
    v7 = *(this + 16);
    v8 = *(this + 15);
    if (v7 != v6)
    {
      do
      {
        v7 -= 83;
      }

      while (v7 != v6);
      v8 = *(this + 15);
    }

    *(this + 16) = v6;
    operator delete(v8);
  }

  llvm::cl::Option::~Option(this);
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(llvm::StringRef)>::callback_fn<llvm::LogicalResult mlir::detail::pass_options::parseCommaSeparatedList<mlir::detail::PassOptions::PassOptionsParser<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions>,mlir::detail::PassOptions::ListOption<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions,mlir::detail::PassOptions::PassOptionsParser<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions const&)#1}>(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,mlir::detail::PassOptions::PassOptionsParser<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions> &,mlir::detail::PassOptions::ListOption<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions,mlir::detail::PassOptions::PassOptionsParser<mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(mlir::ODIE::Compiler::anonymous namespace::ExternalRewriterOptions const&)#1} &&)::{lambda(llvm::StringRef)#1}>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19[30] = *MEMORY[0x277D85DE8];
  bzero(v10, 0x298uLL);
  v7 = llvm::errs(v6);
  if (mlir::detail::PassOptions::parseFromString(v10, a2, a3, v7))
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(v19);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(&v18);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  llvm::StringMap<llvm::cl::Option *,llvm::MallocAllocator>::~StringMap(&v15);
  if (v13 != &v14)
  {
    free(v13);
  }

  if (v11 != &v12)
  {
    free(v11);
  }

  return v8;
}

uint64_t mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::initializer<BOOL>,llvm::cl::desc>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, _BYTE **a5, _OWORD *a6)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v19[0] = a2;
  v19[1] = 0;
  v12 = llvm::cl::Option::Option(a1, 0, 0);
  *(v12 + 120) = 0;
  *(v12 + 128) = &unk_286E76000;
  *(v12 + 136) = 0;
  *v12 = &unk_286E79348;
  *(v12 + 144) = &unk_286E79090;
  v13 = (v12 + 152);
  *(v12 + 152) = &unk_286E76020;
  *(v12 + 176) = v12 + 152;
  llvm::cl::Option::setArgStr(v12, a3, a4, v14, v15, v16);
  llvm::cl::sub::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>(v19, a1);
  v17 = *a5;
  *(a1 + 120) = **a5;
  *(a1 + 137) = 1;
  *(a1 + 136) = *v17;
  *(a1 + 32) = *a6;
  llvm::cl::Option::addArgument(a1);
  *(a1 + 192) = 0;
  *a1 = &unk_286E75F40;
  *(a1 + 184) = &unk_286E75FC0;
  v19[0] = (a1 + 184);
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100]((a2 + 160), v19);
  v20[0] = &unk_286E75988;
  v20[1] = a1;
  v20[3] = v20;
  std::function<void ()(BOOL const&)>::operator=(v13, v20);
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](v20);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEC1IJNS7_11initializerIbEENS7_4descEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISN_EEFvRKbEE7__cloneEPNS0_6__baseISS_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286E75988;
  a2[1] = v2;
  return result;
}

void std::__function::__func<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)>)::{lambda(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)#1},std::allocator<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)>)::{lambda(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)#1}>,void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4[131] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v2 = *(a2 + 8);
  bzero(v4, 0x418uLL);
  v3(v2, v4);
}

uint64_t std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions const&)>::function(uint64_t a1, uint64_t a2)
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

void *std::__function::__func<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1},std::allocator<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1}>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::~__func(void *a1)
{
  *a1 = &unk_286E75A60;
  return a1;
}

void std::__function::__func<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1},std::allocator<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1}>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::~__func(void *a1)
{
  *a1 = &unk_286E75A60;

  JUMPOUT(0x25F891040);
}

void std::__function::__func<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1},std::allocator<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1}>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::destroy_deallocate(void *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1},std::allocator<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1}>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v24[26] = *MEMORY[0x277D85DE8];
  v5 = *a3;
  v6 = a3[1];
  memset(v15, 0, sizeof(v15));
  v16 = v18;
  v17 = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[4] = 0;
  v19[5] = 0;
  v19[6] = 0x1000000000;
  v20 = 0u;
  v21 = 0u;
  v14.n128_u64[0] = "Materialize the given enumerated shapes into the graph as static-shaped functions. Example: 'main:(3x3;4x3),main:(4x3;4x3)'";
  v14.n128_u64[1] = 123;
  mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::ListOption<llvm::cl::desc>(&v22, v15, "shapes", 6, &v14);
  v14.n128_u64[0] = "If true, create new entry points for each shape. If false, retain the existing entry point(s) and generate logic to dispatch based in the runtime shapes of the inputs.";
  v14.n128_u64[1] = 167;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc>(&v23, v15, &v14);
  v14.n128_u64[1] = 63;
  v12 = 1;
  v13 = &v12;
  v7 = mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(v24, v15, "remove-unused-externalized-graphs", 33, &v14, &v13);
  v8 = llvm::errs(v7);
  if (mlir::detail::PassOptions::parseFromString(v15, v5, v6, v8))
  {
    v9 = *(a1 + 32);
    if (!v9)
    {
      std::__throw_bad_function_call[abi:nn200100]();
      JUMPOUT(0x25C8A1438);
    }

    (*(*v9 + 48))(v9, a2, v15);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void std::__function::__func<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions const&)>)::{lambda(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)#1},std::allocator<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions const&)>)::{lambda(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)#1}>,void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v17[25] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v2 = *(a2 + 8);
  bzero(v7, 0x350uLL);
  v8 = v10;
  v9 = 4;
  v10[4] = v12;
  v11 = 4;
  v12[4] = 0;
  v12[5] = 0;
  v12[6] = 0x1000000000;
  v13 = 0u;
  v14 = 0u;
  v6.n128_u64[0] = "Materialize the given enumerated shapes into the graph as static-shaped functions. Example: 'main:(3x3;4x3),main:(4x3;4x3)'";
  v6.n128_u64[1] = 123;
  mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::ListOption<llvm::cl::desc>(&v15, v7, "shapes", 6, &v6);
  v6.n128_u64[0] = "If true, create new entry points for each shape. If false, retain the existing entry point(s) and generate logic to dispatch based in the runtime shapes of the inputs.";
  v6.n128_u64[1] = 167;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc>(&v16, v7, &v6);
  v6.n128_u64[1] = 63;
  v4 = 1;
  v5 = &v4;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(v17, v7, "remove-unused-externalized-graphs", 33, &v6, &v5);
  v3(v2, v7);
}

uint64_t std::__function::__value_func<void ()(mlir::OpPassManager &)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(mlir::OpPassManager &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<void (*)(mlir::OpPassManager &),std::allocator<void (*)(mlir::OpPassManager &)>,void ()(mlir::OpPassManager &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286E760B0;
  a2[1] = v2;
  return result;
}

uint64_t mlir::ODIE::Compiler::FrontendRegistry::getInstance(mlir::ODIE::Compiler::FrontendRegistry *this)
{
  v1 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
  {
    v1 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    if (v3)
    {
      operator new();
    }
  }

  return v1[350];
}

unint64_t mlir::ODIE::Compiler::FrontendRegistry::registerExtension(mlir::ODIE::Compiler::FrontendRegistry *a1)
{
  Instance = mlir::ODIE::Compiler::FrontendRegistry::getInstance(a1);
  v3 = (*(**a1 + 24))();
  v5 = *Instance;
  v6 = Instance[2];
  if (v6)
  {
    v7 = v3;
    v8 = v4;
    v9 = 8 * v6;
    v10 = &v5[v6];
    while (1)
    {
      v11 = (*(**v5 + 24))();
      if (v12 == v8 && (!v8 || !memcmp(v11, v7, v8)))
      {
        break;
      }

      ++v5;
      v9 -= 8;
      if (!v9)
      {
        v5 = v10;
        break;
      }
    }

    v13 = v5;
    v5 = *Instance;
    v14 = Instance[2];
  }

  else
  {
    v14 = 0;
    v13 = *Instance;
  }

  if (v13 == &v5[v14])
  {
    result = llvm::SmallVectorTemplateCommon<std::unique_ptr<mlir::ODIE::Compiler::FrontendExtension>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::ODIE::Compiler::FrontendExtension>,false>>(Instance, a1, 1);
    v18 = *Instance;
    v19 = Instance[2];
    v20 = *result;
    *result = 0;
    v18[v19] = v20;
    Instance[2] = v19 + 1;
  }

  else
  {
    v15 = *a1;
    *a1 = 0;
    result = *v13;
    *v13 = v15;
    if (result)
    {
      v17 = *(*result + 8);

      return v17();
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::FrontendRegistry::getExtensionForDialect(mlir::ODIE::Compiler::FrontendRegistry *a1, size_t a2)
{
  Instance = mlir::ODIE::Compiler::FrontendRegistry::getInstance(a1);
  v5 = *Instance;
  v6 = *(Instance + 8);
  if (v6)
  {
    v7 = Instance;
    v8 = 8 * v6;
    v9 = v5 + 8 * v6;
    while (1)
    {
      v10 = (*(**v5 + 24))();
      if (v11 == a2 && (!a2 || !memcmp(v10, a1, a2)))
      {
        break;
      }

      v5 += 8;
      v8 -= 8;
      if (!v8)
      {
        v5 = v9;
        break;
      }
    }

    v12 = v5;
    v5 = *v7;
    v13 = *(v7 + 8);
  }

  else
  {
    v13 = 0;
    v12 = *Instance;
  }

  if (v12 == v5 + 8 * v13)
  {
    return 0;
  }

  else
  {
    return *v12;
  }
}

uint64_t mlir::ODIE::Compiler::FrontendRegistry::registerAllDialects(mlir::ODIE::Compiler::FrontendRegistry *a1)
{
  result = mlir::ODIE::Compiler::FrontendRegistry::getInstance(a1);
  v3 = *(result + 8);
  if (v3)
  {
    v4 = *result;
    v5 = 8 * v3;
    do
    {
      v6 = *v4++;
      result = (*(*v6 + 16))(v6, a1);
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

unint64_t llvm::SmallVectorTemplateCommon<std::unique_ptr<mlir::ODIE::Compiler::FrontendExtension>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::ODIE::Compiler::FrontendExtension>,false>>(unsigned int *a1, unint64_t a2, uint64_t a3)
{
  v4 = a1[2];
  v5 = v4 + a3;
  if (v4 + a3 > a1[3])
  {
    v7 = *a1 + 8 * v4;
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::ODIE::Compiler::FrontendExtension>,false>::grow(a1, v5);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::ODIE::Compiler::FrontendExtension>,false>::grow(a1, v5);
    }
  }

  return a2;
}

void llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::ODIE::Compiler::FrontendExtension>,false>::grow(unsigned int *a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 4;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 4, a2, 8, &v6);
  llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::ODIE::Compiler::FrontendExtension>,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  a1[3] = v5;
}

unsigned int *llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::ODIE::Compiler::FrontendExtension>,false>::moveElementsForGrow(unsigned int *result, void *a2)
{
  v2 = result[2];
  if (v2)
  {
    v3 = *result;
    v4 = 8 * v2;
    v5 = 8 * v2;
    v6 = *result;
    do
    {
      v7 = *v6;
      *v6++ = 0;
      *a2++ = v7;
      v5 -= 8;
    }

    while (v5);
    v8 = v3 - 8;
    do
    {
      result = *(v8 + v4);
      *(v8 + v4) = 0;
      if (result)
      {
        result = (*(*result + 8))(result, a2);
      }

      v4 -= 8;
    }

    while (v4);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::capi::detail::anonymous namespace::destroy_bytecode_blob(uint64_t *a1, uint64_t a2, BOOL a3)
{
  v6 = v5;
  if (v5)
  {
    v7 = *a1;
    if (!*a1)
    {
      llvm::report_fatal_error("cannot use null odiec_bytecode_blob_t", 1, v4);
    }

    v8 = v7 & 0xFFFFFFFFFFFFFFF8;
    v9 = *(v7 & 0xFFFFFFFFFFFFFFF8);
    *(v7 & 0xFFFFFFFFFFFFFFF8) = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    MEMORY[0x25F891040](v8, 0x20C4093837F09);
    *a1 = 0;
  }

  return v6 & 1;
}

uint64_t mlir::ODIE::Compiler::capi::detail::anonymous namespace::set_buffer(uint64_t a1, uint64_t a2, _BOOL8 a3)
{
  if ((v6 & 1) == 0 || v5[4])
  {
    return 0;
  }

  v5[3] = a2;
  v5[4] = a3;
  v5[1] = a2;
  v5[2] = a2 + a3;
  return 1;
}

uint64_t mlir::ODIE::Compiler::capi::detail::anonymous namespace::get_buffer(uint64_t result, void *a2, void *a3)
{
  if (!result)
  {
    llvm::report_fatal_error("cannot use null odiec_bytecode_blob_t", 1, a3);
  }

  *a2 = *(*(result & 0xFFFFFFFFFFFFFFF8) + 8);
  *a3 = *(*(result & 0xFFFFFFFFFFFFFFF8) + 16) - *(*(result & 0xFFFFFFFFFFFFFFF8) + 8);
  return result;
}

uint64_t mlir::ODIE::Compiler::capi::detail::anonymous namespace::set_buffer_deleter(uint64_t a1, uint64_t a2, _BOOL8 a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if ((v6 & 1) == 0 || *(v5 + 64))
  {
    return 0;
  }

  v8 = &unk_286E76130;
  *&v9 = a3;
  *(&v9 + 1) = a2;
  v10 = &v8;
  if ((v5 + 40) != &v8)
  {
    *(v5 + 40) = &unk_286E76130;
    *(v5 + 48) = v9;
    v10 = 0;
    *(v5 + 64) = v5 + 40;
  }

  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&v8);
  return 1;
}

void mlir::ODIE::Compiler::capi::detail::anonymous namespace::odiec_wrapped_buffer::~odiec_wrapped_buffer(mlir::ODIE::Compiler::capi::detail::_anonymous_namespace_::odiec_wrapped_buffer *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    (*(*v2 + 48))(v2);
  }

  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](this + 40);
}

{

  JUMPOUT(0x25F891040);
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t mlir::ODIE::Compiler::capi::detail::anonymous namespace::odiec_wrapped_buffer::mutate(uint64_t a1, uint64_t a2, BOOL a3)
{
  if (!a1)
  {
    llvm::report_fatal_error("cannot use null odiec_bytecode_blob_t", 1, a3);
  }

  if ((a1 & 4) != 0)
  {
    return *(a1 & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<mlir::ODIE::Compiler::capi::detail::anonymous namespace::set_buffer_deleter(odiec_bytecode_blob_t,void *,void (*)(void *))::$_0,std::allocator<mlir::ODIE::Compiler::capi::detail::anonymous namespace::set_buffer_deleter(odiec_bytecode_blob_t,void *,void (*)(void *))::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E76130;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t mlir::ODIE::Compiler::capi::detail::anonymous namespace::destroy_context(mlir::MLIRContextImpl ***a1, uint64_t a2, BOOL a3)
{
  v4 = *a1;
  if (!v4)
  {
  }

  mlir::MLIRContext::~MLIRContext(v4);
  MEMORY[0x25F891040]();
  *a1 = 0;
  return 1;
}

void mlir::ODIE::Compiler::capi::detail::anonymous namespace::invoke(mlir::Operation *a1, __int128 **a2, unint64_t a3, uint64_t a4)
{
  v44[4] = *MEMORY[0x277D85DE8];
  v8 = v39;
  v37 = v39;
  v38 = 0x100000000;
  if (a3 < 2)
  {
    if (!a3)
    {
      v19 = 0;
      goto LABEL_33;
    }

    v18 = 0;
    v10 = v39;
  }

  else
  {
    buffer = 0;
    v9 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(&v37, v39, a3, 80, &buffer);
    v10 = v9;
    v11 = v37;
    if (v38)
    {
      v34 = a1;
      v35 = v39;
      v12 = 80 * v38;
      v13 = v9;
      do
      {
        *v13 = 0;
        *(v13 + 18) = -1;
        v14 = v11[18];
        if (v14 != -1)
        {
          v44[0] = v13;
          (off_286E76178[v14])(v44, v11);
          *(v13 + 18) = v14;
        }

        v13 += 80;
        v11 += 20;
        v12 -= 80;
      }

      while (v12);
      v11 = v37;
      if (v38)
      {
        v15 = v37 + 80 * v38 - 80;
        v16 = -80 * v38;
        a1 = v34;
        do
        {
          v17 = *(v15 + 18);
          if (v17 != -1)
          {
            (off_286E76168[v17])(v44, v15);
          }

          *(v15 + 18) = -1;
          v15 -= 80;
          v16 += 80;
        }

        while (v16);
        v11 = v37;
        v8 = v35;
      }

      else
      {
        a1 = v34;
        v8 = v35;
      }
    }

    v20 = buffer;
    if (v11 != v8)
    {
      free(v11);
    }

    v37 = v10;
    HIDWORD(v38) = v20;
    v18 = v38;
  }

  v21 = &v10[80 * v18 + 72];
  v22 = 8 * a3;
  while (1)
  {
    v23 = *a2;
    if (!*a2)
    {
      break;
    }

    v24 = (v21 - 18);
    if (*(v23 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v24, *v23, *(v23 + 1));
    }

    else
    {
      v25 = *v23;
      *(v21 - 7) = *(v23 + 2);
      *&v24->__r_.__value_.__l.__data_ = v25;
    }

    v26 = (v21 - 12);
    if (*(v23 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(v26, *(v23 + 3), *(v23 + 4));
    }

    else
    {
      v27 = *(v23 + 24);
      *(v21 - 4) = *(v23 + 5);
      *&v26->__r_.__value_.__l.__data_ = v27;
    }

    v28 = (v21 - 6);
    if (*(v23 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(v28, *(v23 + 6), *(v23 + 7));
    }

    else
    {
      v29 = v23[3];
      *(v21 - 1) = *(v23 + 8);
      *&v28->__r_.__value_.__l.__data_ = v29;
    }

    *v21 = 0;
    v21 += 20;
    ++a2;
    v22 -= 8;
    if (!v22)
    {
      v19 = v38;
LABEL_33:
      v30 = v19 + a3;
      LODWORD(v38) = v30;
      if (a4)
      {
        if (*(a4 + 80))
        {
          if (a1)
          {
            v31 = *(***(a1 + 3) + 32);
            std::__function::__value_func<void ()(llvm::StringRef)>::__value_func[abi:nn200100](v36, a4 + 56);
            v32 = *v31;
            std::__function::__value_func<void ()(llvm::StringRef)>::__value_func[abi:nn200100](v40, v36);
            std::__function::__value_func<void ()(llvm::StringRef)>::__value_func[abi:nn200100](v44, v40);
            buffer = llvm::allocate_buffer(0x20, 8uLL);
            v42 = xmmword_25D0A0540;
            std::__function::__value_func<void ()(llvm::StringRef)>::__value_func[abi:nn200100](buffer, v44);
            v43 = &_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJRN4mlir10DiagnosticEEE15CallbacksHolderIZNS3_16DiagnosticEngine15registerHandlerIZNS3_4ODIE8Compiler4capi6detail12_GLOBAL__N_16invokeE14odiec_module_tPK12odiec_pass_tx22odiec_global_options_tE3__1vEENSt3__19enable_ifIXsr3std7is_sameIT0_vEE5valueEyE4typeEOT_EUlS5_E_SS_vE9CallbacksE + 4;
            std::__function::__value_func<void ()(llvm::StringRef)>::~__value_func[abi:nn200100](v44);
            mlir::DiagnosticEngine::registerHandler((v32 + 32), &buffer);
            llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::~UniqueFunctionBase(&buffer);
            std::__function::__value_func<void ()(llvm::StringRef)>::~__value_func[abi:nn200100](v40);
            std::__function::__value_func<void ()(llvm::StringRef)>::~__value_func[abi:nn200100](v36);
            v30 = v38;
            goto LABEL_38;
          }
        }

        else if (a1)
        {
LABEL_38:
          mlir::ODIE::Compiler::applyPasses(a1, v37, v30, a4);
        }
      }

      else
      {
      }

LABEL_40:
      llvm::report_fatal_error(v33, 1, a3);
    }
  }

  goto LABEL_40;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN4mlir4ODIE8Compiler9PassEntryENS_8functionIFN4llvm13LogicalResultERNS8_13OpPassManagerEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSB_SI_EEEEEEDcSM_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN4mlir4ODIE8Compiler9PassEntryENS_8functionIFN4llvm13LogicalResultERNS8_13OpPassManagerEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSB_SI_EEEEEEDcSM_DpT0_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 24);
  if (result == a2)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<mlir::ODIE::Compiler::PassEntry,std::function<llvm::LogicalResult ()(mlir::OpPassManager &)>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::ODIE::Compiler::PassEntry,std::function<llvm::LogicalResult ()(mlir::OpPassManager &)>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<mlir::ODIE::Compiler::PassEntry,std::function<llvm::LogicalResult ()(mlir::OpPassManager &)>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::ODIE::Compiler::PassEntry,std::function<llvm::LogicalResult ()(mlir::OpPassManager &)>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::ODIE::Compiler::PassEntry,std::function<llvm::LogicalResult ()(mlir::OpPassManager &)>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mlir::ODIE::Compiler::PassEntry,std::function<llvm::LogicalResult ()(mlir::OpPassManager &)>> &&>(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  *(v2 + 16) = *(a2 + 2);
  *v2 = v3;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  v4 = *(a2 + 24);
  *(v2 + 40) = *(a2 + 5);
  *(v2 + 24) = v4;
  a2[2] = 0uLL;
  *(a2 + 3) = 0;
  result = a2[3];
  *(v2 + 64) = *(a2 + 8);
  *(v2 + 48) = result;
  *(a2 + 56) = 0uLL;
  *(a2 + 6) = 0;
  return result;
}

uint64_t *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<mlir::ODIE::Compiler::PassEntry,std::function<llvm::LogicalResult ()(mlir::OpPassManager &)>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::ODIE::Compiler::PassEntry,std::function<llvm::LogicalResult ()(mlir::OpPassManager &)>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<mlir::ODIE::Compiler::PassEntry,std::function<llvm::LogicalResult ()(mlir::OpPassManager &)>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::ODIE::Compiler::PassEntry,std::function<llvm::LogicalResult ()(mlir::OpPassManager &)>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::ODIE::Compiler::PassEntry,std::function<llvm::LogicalResult ()(mlir::OpPassManager &)>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mlir::ODIE::Compiler::PassEntry,std::function<llvm::LogicalResult ()(mlir::OpPassManager &)>> &&>(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(v3 + 24) = v3;
      return (*(**(a2 + 24) + 24))();
    }

    else
    {
      *(v3 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(v3 + 24) = 0;
  }

  return result;
}

uint64_t _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJRN4mlir10DiagnosticEEE8CallImplIZNS3_16DiagnosticEngine15registerHandlerIZNS3_4ODIE8Compiler4capi6detail12_GLOBAL__N_16invokeE14odiec_module_tPK12odiec_pass_tx22odiec_global_options_tE3__1vEENSt3__19enable_ifIXsr3std7is_sameIT0_vEE5valueEyE4typeEOT_EUlS5_E_EES2_PvS5_(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v19 = 0;
  v20 = 0;
  v11 = 0;
  v15 = 0;
  v16 = 1;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v10 = &unk_286E79D28;
  p_p = &__p;
  llvm::raw_ostream::SetUnbuffered(&v10);
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 16);
    v6 = 24 * v4;
    do
    {
      mlir::DiagnosticArgument::print(v5, &v10);
      v5 = (v5 + 24);
      v6 -= 24;
    }

    while (v6);
  }

  if (v20 >= 0)
  {
    v7 = &__p;
  }

  else
  {
    v7 = __p;
  }

  if (v20 >= 0)
  {
    v8 = SHIBYTE(v20);
  }

  else
  {
    v8 = v19;
  }

  std::function<void ()(llvm::StringRef)>::operator()(a1, v7, v8);
  llvm::raw_ostream::~raw_ostream(&v10);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p);
  }

  return 1;
}

void *llvm::raw_ostream::SetUnbuffered(void *this)
{
  v1 = this;
  v3 = this + 2;
  v2 = this[2];
  v4 = this[4];
  v5 = v4 - v2;
  if (v4 != v2)
  {
    this[4] = v2;
    this = (*(*this + 72))(this);
  }

  if (*(v1 + 11) == 1)
  {
    this = *v3;
    if (*v3)
    {
      this = MEMORY[0x25F891010](this, 0x1000C8077774924, v5);
    }
  }

  *(v1 + 11) = 0;
  v3[1] = 0;
  v3[2] = 0;
  *v3 = 0;
  return this;
}

void *llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::~UniqueFunctionBase(void *a1)
{
  v1 = a1;
  v2 = a1[3];
  if (v2 >= 8)
  {
    if ((v2 & 4) != 0)
    {
      if ((v2 & 2) == 0)
      {
        a1 = *a1;
      }

      (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16))(a1);
    }

    if ((v2 & 2) == 0)
    {
      MEMORY[0x25F891030](*v1, v1[2]);
    }
  }

  return v1;
}

uint64_t std::__function::__value_func<void ()(llvm::StringRef)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(llvm::StringRef)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t mlir::ODIE::Compiler::capi::detail::anonymous namespace::destroy_external_rewriter(uint64_t *a1, uint64_t a2, BOOL a3)
{
  v4 = *a1;
  if (!v4)
  {
    llvm::report_fatal_error("cannot use null odiec_external_rewriter_t", 1, a3);
  }

  v5 = std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(mlir::ODIE::Compiler::ModuleRewriter::Payload &&)>::~__value_func[abi:nn200100](v4);
  MEMORY[0x25F891040](v5, 0x1020C40A5B76CDFLL);
  *a1 = 0;
  return 1;
}

BOOL mlir::ODIE::Compiler::capi::detail::anonymous namespace::set_callback(uint64_t a1, uint64_t a2, _BOOL8 a3)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    llvm::report_fatal_error("cannot use null odiec_external_rewriter_t", 1, a3);
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    v5 = &unk_286E76198;
    *&v6 = a3;
    *(&v6 + 1) = a2;
    v7 = &v5;
    if (&v5 != a1)
    {
      *a1 = &unk_286E76198;
      *(a1 + 8) = v6;
      v7 = 0;
      *(a1 + 24) = a1;
    }

    std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(mlir::ODIE::Compiler::ModuleRewriter::Payload &&)>::~__value_func[abi:nn200100](&v5);
  }

  return v3 == 0;
}

__n128 std::__function::__func<mlir::ODIE::Compiler::capi::detail::anonymous namespace::set_callback(odiec_external_rewriter_t,void *,odiec_bytecode_blob_t (*)(void *,odiec_external_rewriter_payload_t))::$_0,std::allocator<mlir::ODIE::Compiler::capi::detail::anonymous namespace::set_callback(odiec_external_rewriter_t,void *,odiec_bytecode_blob_t (*)(void *,odiec_external_rewriter_payload_t))::$_0>,std::unique_ptr<llvm::MemoryBuffer> ()(mlir::ODIE::Compiler::ModuleRewriter::Payload &&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E76198;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t mlir::ODIE::Compiler::capi::detail::anonymous namespace::get_bytecode_blob(uint64_t a1, uint64_t a2, BOOL a3)
{
  if (!a1)
  {
  }

  return a1 + 8;
}

void mlir::ODIE::Compiler::capi::detail::anonymous namespace::get_binary_directory(uint64_t *a1, void *a2, std::string::size_type *a3)
{
  if (!a1)
  {
  }

  v4 = *a1;
  v5 = (*a1 + 8);
  v6 = v5;
  if (*(*a1 + 31) < 0)
  {
    v6 = *v5;
  }

  *a2 = v6;
  if (*(v4 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *(v4 + 8), *(v4 + 16));
  }

  else
  {
    v7 = *v5;
    v9.__r_.__value_.__r.__words[2] = v5[2];
    *&v9.__r_.__value_.__l.__data_ = v7;
  }

  if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v8 = v9.__r_.__value_.__r.__words[0];
    *a3 = v9.__r_.__value_.__l.__size_;
    operator delete(v8);
  }

  else
  {
    *a3 = SHIBYTE(v9.__r_.__value_.__r.__words[2]);
  }
}

uint64_t mlir::ODIE::Compiler::capi::detail::anonymous namespace::report_error(uint64_t *a1, uint64_t a2, _BOOL8 a3)
{
  if (!a1)
  {
  }

  v3 = *a1;
  v6 = 261;
  v5[0] = a2;
  v5[1] = a3;
  return (*(v3 + 48))(*(v3 + 56), v5);
}

uint64_t mlir::ODIE::Compiler::capi::detail::anonymous namespace::odiec_rewriter_payload_wrapper::destroy(uint64_t *a1, uint64_t a2, _BOOL8 a3)
{
  v3 = *a1;
  if (!*a1)
  {
  }

  v5 = *(v3 + 16);
  if (v5)
  {
    v5(v3 + 8, a2, a3);
  }

  MEMORY[0x25F891040](v3, 0xA0C402214FCE6, a3);
  *a1 = 0;
  return 1;
}

uint64_t mlir::ODIE::Compiler::capi::detail::anonymous namespace::destroy_global_options(uint64_t *a1, uint64_t a2, BOOL a3)
{
  v3 = *a1;
  if (!*a1)
  {
  }

  std::__function::__value_func<void ()(llvm::StringRef)>::~__value_func[abi:nn200100](v3 + 56);
  if (*(v3 + 36))
  {
    v5 = *(v3 + 32);
    if (v5)
    {
      v6 = 0;
      v7 = 8 * v5;
      do
      {
        v8 = *(*(v3 + 24) + v6);
        if (v8 != -8 && v8 != 0)
        {
          std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(mlir::ODIE::Compiler::ModuleRewriter::Payload &&)>::~__value_func[abi:nn200100](v8 + 8);
          MEMORY[0x25F891030](v8, 8);
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  free(*(v3 + 24));
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  MEMORY[0x25F891040](v3, 0x10B2C40790A4C40);
  *a1 = 0;
  return 1;
}

uint64_t mlir::ODIE::Compiler::capi::detail::anonymous namespace::set_output_directory(uint64_t a1, std::string *a2, _BOOL8 a3)
{
  if (!a1)
  {
  }

  if (*(a1 + 23) < 0)
  {
    if (!*(a1 + 8))
    {
      **a1 = 0;
      *(a1 + 8) = 0;
      goto LABEL_8;
    }

    return 0;
  }

  if (*(a1 + 23))
  {
    return 0;
  }

  *a1 = 0;
LABEL_8:
  std::string::append[abi:nn200100]<char const*,0>(a1, a2, (a2 + a3));
  return 1;
}

uint64_t mlir::ODIE::Compiler::capi::detail::anonymous namespace::add_external_rewriter(_DWORD *a1, unsigned __int8 *a2, const unsigned __int8 *a3, unint64_t a4)
{
  if (!a1)
  {
    goto LABEL_12;
  }

  if (!a4)
  {
    v18 = "cannot use null odiec_external_rewriter_t";
LABEL_12:
    llvm::report_fatal_error(v18, 1, a3);
  }

  v8 = llvm::xxh3_64bits(a2, a3, a3, a4);
  v9 = llvm::StringMapImpl::LookupBucketFor((a1 + 6), a2, a3, v8);
  v10 = *(a1 + 3);
  v11 = *(v10 + 8 * v9);
  if (v11)
  {
    if (v11 != -8)
    {
      return 0;
    }

    --a1[10];
  }

  v12 = v9;
  buffer = llvm::allocate_buffer((a3 + 41), 8uLL);
  v14 = buffer;
  v15 = buffer + 5;
  if (a3)
  {
    memcpy(buffer + 5, a2, a3);
  }

  a3[v15] = 0;
  *v14 = a3;
  std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(mlir::ODIE::Compiler::ModuleRewriter::Payload &&)>::__value_func[abi:nn200100]((v14 + 1), a4);
  *(v10 + 8 * v12) = v14;
  ++a1[9];
  llvm::StringMapImpl::RehashTable((a1 + 6), v12, v16);
  return 1;
}

BOOL mlir::ODIE::Compiler::capi::detail::anonymous namespace::set_debug_printer(uint64_t a1, uint64_t a2, _BOOL8 a3)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
  }

  v3 = *(a1 + 80);
  if (!v3)
  {
    v5 = &unk_286E761E0;
    *&v6 = a3;
    *(&v6 + 1) = a2;
    v7 = &v5;
    if ((a1 + 56) != &v5)
    {
      *(a1 + 56) = &unk_286E761E0;
      *(a1 + 64) = v6;
      v7 = 0;
      *(a1 + 80) = a1 + 56;
    }

    std::__function::__value_func<void ()(llvm::StringRef)>::~__value_func[abi:nn200100](&v5);
  }

  return v3 == 0;
}

uint64_t mlir::ODIE::Compiler::capi::detail::anonymous namespace::set_debug_option(uint64_t result, int a2, BOOL a3)
{
  if (!result)
  {
  }

  if (a2)
  {
    abort();
  }

  *(result + 88) |= 1uLL;
  return result;
}

std::string *std::string::append[abi:nn200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v6 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v10 = this->__r_.__value_.__r.__words[2];
    v7 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v9 = this->__r_.__value_.__r.__words[0];
    v8 = HIBYTE(v10);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v7 = 22;
    LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    v9 = this;
  }

  if (v9 > __src || (&v9->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v7 - size < v6)
    {
      std::string::__grow_by(this, v7, size + v6 - v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    }

    v13 = this;
    if ((v8 & 0x80) != 0)
    {
      v13 = this->__r_.__value_.__r.__words[0];
    }

    v14 = v13 + size;
    memmove(v13 + size, __src, v6);
    v14[v6] = 0;
    v15 = size + v6;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v15;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v15 & 0x7F;
    }
  }

  else
  {
    std::string::__init_with_size[abi:nn200100]<char const*,char const*>(__p, __src, a3, v6);
    if ((v18 & 0x80u) == 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    if ((v18 & 0x80u) == 0)
    {
      v12 = v18;
    }

    else
    {
      v12 = __p[1];
    }

    std::string::append(this, v11, v12);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void *std::string::__init_with_size[abi:nn200100]<char const*,char const*>(void *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  *(__dst + 23) = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  *(v4 + v5) = 0;
  return __dst;
}

__n128 std::__function::__func<mlir::ODIE::Compiler::capi::detail::anonymous namespace::set_debug_printer(odiec_global_options_t,void *,void (*)(void *,char const*,long long))::$_0,std::allocator<mlir::ODIE::Compiler::capi::detail::anonymous namespace::set_debug_printer(odiec_global_options_t,void *,void (*)(void *,char const*,long long))::$_0>,void ()(llvm::StringRef)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E761E0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void mlir::ODIE::Compiler::capi::detail::anonymous namespace::create_module_from_bytecode(uint64_t a1, void *a2, BOOL a3)
{
  if (a1)
  {
    if (*a2)
    {
      *(*a2 & 0xFFFFFFFFFFFFFFF8) = 0;
      off_281E38340(a2);
      mlir::ODIE::Compiler::Serialization::deserializeModule();
    }

    v3 = "cannot use null odiec_bytecode_blob_t";
  }

  else
  {
  }

  llvm::report_fatal_error(v3, 1, a3);
}

mlir::Operation *mlir::ODIE::Compiler::capi::detail::anonymous namespace::create_module_from_asm(mlir::StringAttr *a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
  }

  v9 = a1;
  v10 = 1;
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  v13 = 0;
  v14[0] = &v15;
  v14[1] = 0x600000000;
  v16[0] = &v17;
  v16[1] = 0x600000000;
  v7 = 0;
  memset(v18, 0, sizeof(v18));
  v19 = &v19;
  v20 = &v19;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v3 = 0;
  if (mlir::parseSourceString(a2, a3, v18, &v9, &byte_25D0A27DF, 0, &v7))
  {
    v3 = v20;
    if (v20 == &v19 || (v4 = v20[1], v4 != &v19) || *(v20[6] + 16) != &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      v8[0] = v9;
      memset(&v8[1], 0, 24);
      mlir::OpBuilder::create<mlir::ModuleOp>(v8, v7);
    }

    if (v20[2])
    {
      v20[2] = 0;
      v6 = *v3;
      *v4 = *v3;
      *(v6 + 8) = v4;
      *v3 = 0;
      v3[1] = 0;
    }
  }

  mlir::Block::~Block(v18);
  llvm::SmallVector<std::unique_ptr<mlir::AttrTypeBytecodeReader<mlir::Type>>,6u>::~SmallVector(v16);
  llvm::SmallVector<std::unique_ptr<mlir::AttrTypeBytecodeReader<mlir::Attribute>>,6u>::~SmallVector(v14);
  llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>,llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>::destroyAll(v11);
  MEMORY[0x25F891030](v11[0], 8);
  return v3;
}

uint64_t mlir::ODIE::Compiler::capi::detail::anonymous namespace::destroy_module(mlir::Operation **a1, uint64_t a2, BOOL a3)
{
  v4 = *a1;
  if (!v4)
  {
  }

  if (*(v4 + 2))
  {
    *(v4 + 2) = 0;
    v6 = *v4;
    v5 = *(v4 + 1);
    *v5 = *v4;
    *(v6 + 8) = v5;
    *v4 = 0;
    *(v4 + 1) = 0;
  }

  mlir::Operation::destroy(v4);
  *a1 = 0;
  return 1;
}

void mlir::ODIE::Compiler::capi::detail::anonymous namespace::combine_modules(void *a1, unint64_t a2, BOOL a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  if (a2 <= 1)
  {
    v10 = "cannot combine fewer than 2 modules";
  }

  else
  {
    v13 = v15;
    v14 = 0x600000000;
    if (a2 < 7)
    {
      v5 = 0;
      v6 = v15;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v13, v15, a2, 8);
      v5 = v14;
      v6 = v13;
    }

    v7 = 8 * a2;
    v8 = &v6[v5];
    while (*a1)
    {
      *v8++ = *a1++;
      v7 -= 8;
      if (!v7)
      {
        LODWORD(v14) = v14 + a2;
        v9 = *(*v13 + 24);
        v12[0] = *(**v9 + 32);
        memset(&v12[1], 0, 24);
        v11 = &unk_286E76228;
        mlir::OpBuilder::create<mlir::ModuleOp>(v12, v9);
      }
    }
  }

  llvm::report_fatal_error(v10, 1, a3);
}

void mlir::ODIE::Compiler::capi::detail::anonymous namespace::print(llvm *a1, uint64_t a2, BOOL a3)
{
  if (a1)
  {
    v4 = llvm::outs(a1);
    mlir::OpPrintingFlags::OpPrintingFlags(v5);
    mlir::Operation::print(a1, v4, v5);
  }
}

BOOL mlir::ODIE::Compiler::capi::detail::anonymous namespace::serialize(mlir::Operation *a1, int a2, void *__src, size_t __len)
{
  v28 = *MEMORY[0x277D85DE8];
  switch(a2)
  {
    case 2:
      if (!a1)
      {
        goto LABEL_22;
      }

      std::string::basic_string[abi:nn200100](__p, __src, __len);
      *v23 = *__p;
      v24 = v17;
      __p[1] = 0;
      v17 = 0;
      __p[0] = 0;
      v4 = mlir::ODIE::Compiler::Serialization::serializeODIXIRToPackage(a1, v23);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(v23[0]);
      }

      if (SHIBYTE(v17) < 0)
      {
        operator delete(__p[0]);
      }

      break;
    case 1:
      std::string::basic_string[abi:nn200100](__p, __src, __len);
      v27 = 0;
      v10 = (MEMORY[0x277D82860] + 24);
      v11 = MEMORY[0x277D82860] + 64;
      v26 = MEMORY[0x277D82860] + 64;
      v12 = *(MEMORY[0x277D82810] + 16);
      v23[0] = *(MEMORY[0x277D82810] + 8);
      *(v23 + *(v23[0] - 3)) = v12;
      v13 = (v23 + *(v23[0] - 3));
      std::ios_base::init(v13, &v23[1]);
      v13[1].__vftable = 0;
      v13[1].__fmtflags_ = -1;
      v23[0] = v10;
      v26 = v11;
      MEMORY[0x25F890BD0](&v23[1]);
      if (!std::filebuf::open())
      {
        std::ios_base::clear((v23 + *(v23[0] - 3)), *&v25[*(v23[0] - 3)] | 4);
      }

      if (SHIBYTE(v17) < 0)
      {
        operator delete(__p[0]);
      }

      LODWORD(__p[1]) = 0;
      v20 = 0;
      v21 = 1;
      v18 = 0;
      v19 = 0;
      v17 = 0;
      __p[0] = &unk_286E79BB8;
      v22 = v23;
      if (a1)
      {
        mlir::OpPrintingFlags::OpPrintingFlags(v15);
        mlir::Operation::print(a1, __p, v15);
      }

LABEL_22:
    case 0:
      std::string::basic_string[abi:nn200100](__p, __src, __len);
      v27 = 0;
      v6 = (MEMORY[0x277D82860] + 24);
      v7 = MEMORY[0x277D82860] + 64;
      v26 = MEMORY[0x277D82860] + 64;
      v8 = *(MEMORY[0x277D82810] + 16);
      v23[0] = *(MEMORY[0x277D82810] + 8);
      *(v23 + *(v23[0] - 3)) = v8;
      v9 = (v23 + *(v23[0] - 3));
      std::ios_base::init(v9, &v23[1]);
      v9[1].__vftable = 0;
      v9[1].__fmtflags_ = -1;
      v23[0] = v6;
      v26 = v7;
      MEMORY[0x25F890BD0](&v23[1]);
      if (!std::filebuf::open())
      {
        std::ios_base::clear((v23 + *(v23[0] - 3)), *&v25[*(v23[0] - 3)] | 4);
      }

      if (SHIBYTE(v17) < 0)
      {
        operator delete(__p[0]);
      }

      LODWORD(__p[1]) = 0;
      v20 = 0;
      v21 = 1;
      v18 = 0;
      v19 = 0;
      v17 = 0;
      __p[0] = &unk_286E79BB8;
      v22 = v23;
      if (a1)
      {
        mlir::BytecodeWriterConfig::BytecodeWriterConfig(v15, "MLIR21.0.0git", 13);
      }

      goto LABEL_22;
  }

  return v4;
}

char ***llvm::SmallVector<std::unique_ptr<mlir::AttrTypeBytecodeReader<mlir::Type>>,6u>::~SmallVector(char ***a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = v3;
    v5 = v2 - 1;
    do
    {
      v6 = v5[v4];
      v5[v4] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      --v4;
    }

    while (v4 * 8);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

char ***llvm::SmallVector<std::unique_ptr<mlir::AttrTypeBytecodeReader<mlir::Attribute>>,6u>::~SmallVector(char ***a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = v3;
    v5 = v2 - 1;
    do
    {
      v6 = v5[v4];
      v5[v4] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      --v4;
    }

    while (v4 * 8);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

unsigned int *llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>,llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>::destroyAll(unsigned int *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = 24 * v1;
    v3 = (*result + 16);
    do
    {
      if (*(v3 - 2) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        result = *v3;
        *v3 = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }
      }

      v3 += 3;
      v2 -= 24;
    }

    while (v2);
  }

  return result;
}

void mlir::OpBuilder::create<mlir::ModuleOp>(mlir::StringAttr **a1, uint64_t a2)
{
  v11[8] = *MEMORY[0x277D85DE8];
  v4 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ModuleOp>(a1, *(**a2 + 32));
  v6[0] = a2;
  v6[1] = v4;
  v6[2] = v7;
  v6[3] = 0x400000000;
  v7[4] = v8;
  v7[5] = 0x400000000;
  v8[4] = v9;
  v8[5] = 0x400000000;
  v9[8] = 4;
  v9[9] = v10;
  v9[10] = 0x100000000;
  v10[1] = v11;
  v10[2] = 0x100000000;
  v11[1] = 0;
  v11[2] = 0;
  v11[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v11[4] = 0;
  v11[6] = 0;
  v5[0] = 0;
  v5[16] = 0;
  mlir::ModuleOp::build(a1, v6, v5);
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ModuleOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "builtin.module";
    v6[3] = 14;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t *llvm::operator+@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 32);
  if (!*(result + 32) || (v4 = *(a2 + 32), !*(a2 + 32)))
  {
    *(a3 + 32) = 256;
    return result;
  }

  if (v3 == 1)
  {
    v5 = *(a2 + 1);
    *a3 = *a2;
    *(a3 + 16) = v5;
    v6 = a2[4];
LABEL_8:
    *(a3 + 32) = v6;
    return result;
  }

  if (v4 == 1)
  {
    v7 = *(result + 1);
    *a3 = *result;
    *(a3 + 16) = v7;
    v6 = result[4];
    goto LABEL_8;
  }

  v8 = *result;
  v9 = result[1];
  if (*(result + 33) != 1)
  {
    LOBYTE(v3) = 2;
    v8 = result;
  }

  v10 = a2[1];
  if (*(a2 + 33) == 1)
  {
    v11 = *a2;
  }

  else
  {
    LOBYTE(v4) = 2;
    v11 = a2;
  }

  *a3 = v8;
  *(a3 + 8) = v9;
  *(a3 + 16) = v11;
  *(a3 + 24) = v10;
  *(a3 + 32) = v3;
  *(a3 + 33) = v4;
  return result;
}

uint64_t llvm::iplist_impl<llvm::simple_ilist<mlir::Operation>,llvm::ilist_traits<mlir::Operation>>::transfer(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 != a5)
  {
    *(result - 8) &= ~4uLL;
    if (result != a3 && a4 != a5)
    {
      v5 = a4;
      do
      {
        v5[2] = result - 32;
        v5 = v5[1];
      }

      while (v5 != a5);
    }

    if (a4 != a5)
    {
      v6 = *a5;
      v7 = *a4;
      *(v7 + 8) = a5;
      *a5 = v7;
      v8 = *a2;
      *(v6 + 8) = a2;
      *a4 = v8;
      *(v8 + 8) = a4;
      *a2 = v6;
    }
  }

  return result;
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

double odiec_initialize@<D0>(mlir::ODIE::Compiler *a1@<X0>, uint64_t a2@<X8>)
{
  mlir::ODIE::Compiler::initialize(a1);
  v3 = *&off_281E38348;
  *a2 = mlir::ODIE::Compiler::capi::detail::bytecodeBlobApi;
  *(a2 + 16) = v3;
  *(a2 + 40) = mlir::ODIE::Compiler::capi::detail::rewriterPayloadApi;
  *(a2 + 64) = mlir::ODIE::Compiler::capi::detail::externalRewriterApi;
  v4 = xmmword_281E383D0;
  *(a2 + 120) = *&off_281E383E0;
  v5 = mlir::ODIE::Compiler::capi::detail::globalOptionsApi;
  *(a2 + 104) = v4;
  *(a2 + 88) = v5;
  v6 = xmmword_281E38400;
  *(a2 + 168) = *&off_281E38410;
  v7 = mlir::ODIE::Compiler::capi::detail::moduleApi;
  *(a2 + 152) = v6;
  *(a2 + 32) = off_281E38358;
  *(a2 + 56) = off_281E383B8;
  *(a2 + 80) = off_281E383A0;
  *(a2 + 136) = v7;
  *(a2 + 184) = mlir::ODIE::Compiler::capi::detail::passApi;
  *(a2 + 216) = off_281E38370;
  result = *&mlir::ODIE::Compiler::capi::detail::compilerApi;
  *(a2 + 200) = mlir::ODIE::Compiler::capi::detail::compilerApi;
  return result;
}

uint64_t mlir::ODIE::Compiler::capi::detail::anonymous namespace::destroy_pass_descriptor(uint64_t *a1, uint64_t a2, _BOOL8 a3)
{
  v3 = *a1;
  if (!*a1)
  {
  }

  if (*(v3 + 71) < 0)
  {
    operator delete(*(v3 + 48));
  }

  if (*(v3 + 47) < 0)
  {
    operator delete(*(v3 + 24));
  }

  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  MEMORY[0x25F891040](v3, 0x1012C409633A12CLL, a3);
  *a1 = 0;
  return 1;
}

void mlir::ODIE::Compiler::CoreML::impl::createEnumeratedShapeEntryPoints()
{
  v1 = *MEMORY[0x277D85DE8];
  operator new();
}

{
  v2 = *MEMORY[0x277D85DE8];
  operator new();
}

void mlir::ODIE::Compiler::CoreML::createEnumeratedShapeEntryPoints(uint64_t a1)
{
  v2[9] = *MEMORY[0x277D85DE8];
  v1[0] = v2;
  v1[1] = 0x100000000;
  if (*(a1 + 8))
  {
    llvm::SmallVectorImpl<mlir::ODIE::FuncShape>::operator=(v1, a1);
  }

  mlir::ODIE::Compiler::CoreML::impl::createEnumeratedShapeEntryPoints();
}

uint64_t llvm::SmallVectorImpl<mlir::ODIE::FuncShape>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<mlir::ODIE::FuncShape>::assignRemote(a1, a2);
      return a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a1 + 8);
    if (v7 >= v6)
    {
      v8 = *a1;
      if (v6)
      {
        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<mlir::ODIE::FuncShape *,mlir::ODIE::FuncShape *,mlir::ODIE::FuncShape *>(&v20, v4, (v4 + 72 * v6), v8);
        v10 = v9;
        v8 = *a1;
        LODWORD(v7) = *(a1 + 8);
      }

      else
      {
        v10 = *a1;
      }

      llvm::SmallVectorTemplateBase<mlir::ODIE::FuncShape,false>::destroy_range(v10, (v8 + 72 * v7));
      *(a1 + 8) = v6;
      v11 = *a2;
      v18 = (*a2 + 72 * *(a2 + 8));
LABEL_19:
      llvm::SmallVectorTemplateBase<mlir::ODIE::FuncShape,false>::destroy_range(v11, v18);
      *(a2 + 8) = 0;
      return a1;
    }

    if (*(a1 + 12) >= v6)
    {
      if (v7)
      {
        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<mlir::ODIE::FuncShape *,mlir::ODIE::FuncShape *,mlir::ODIE::FuncShape *>(&v21, v4, (v4 + 72 * v7), *a1);
LABEL_12:
        v11 = *a2;
        v12 = *(a2 + 8);
        if (v7 != v12)
        {
          v13 = &v11[9 * v12];
          v14 = *a1 + 72 * v7;
          v15 = &v11[9 * v7];
          do
          {
            v16 = *v15;
            *(v14 + 16) = v15[2];
            *v14 = v16;
            v15[1] = 0;
            v15[2] = 0;
            *v15 = 0;
            v17 = *(v15 + 3);
            *(v14 + 40) = v15[5];
            *(v14 + 24) = v17;
            v15[4] = 0;
            v15[5] = 0;
            v15[3] = 0;
            *(v14 + 48) = 0;
            *(v14 + 56) = 0;
            *(v14 + 64) = 0;
            *(v14 + 48) = *(v15 + 3);
            *(v14 + 64) = v15[8];
            v15[6] = 0;
            v15[7] = 0;
            v15[8] = 0;
            v14 += 72;
            v15 += 9;
          }

          while (v15 != v13);
          v11 = *a2;
        }

        *(a1 + 8) = v6;
        v18 = &v11[9 * *(a2 + 8)];
        goto LABEL_19;
      }
    }

    else
    {
      llvm::SmallVectorTemplateBase<mlir::ODIE::FuncShape,false>::destroy_range(*a1, (*a1 + 72 * v7));
      *(a1 + 8) = 0;
      llvm::SmallVectorTemplateBase<mlir::ODIE::FuncShape,false>::grow(a1, v6);
    }

    v7 = 0;
    goto LABEL_12;
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        std::__copy_impl::operator()[abi:nn200100]<mlir::ODIE::FuncShape const*,mlir::ODIE::FuncShape const*,mlir::ODIE::FuncShape*>(&v23, *a2, (*a2 + 72 * v4), *a1);
        v7 = v6;
        v8 = *a1;
        LODWORD(v5) = *(a1 + 8);
      }

      else
      {
        v8 = *a1;
        v7 = *a1;
      }

      llvm::SmallVectorTemplateBase<mlir::ODIE::FuncShape,false>::destroy_range(&v7->__r_.__value_.__l.__data_, &v8[3 * v5].__r_.__value_.__l.__data_);
LABEL_22:
      *(a1 + 8) = v4;
      return a1;
    }

    if (*(a1 + 12) >= v4)
    {
      if (v5)
      {
        std::__copy_impl::operator()[abi:nn200100]<mlir::ODIE::FuncShape const*,mlir::ODIE::FuncShape const*,mlir::ODIE::FuncShape*>(&v24, *a2, (*a2 + 72 * v5), *a1);
        goto LABEL_10;
      }
    }

    else
    {
      llvm::SmallVectorTemplateBase<mlir::ODIE::FuncShape,false>::destroy_range(*a1, (*a1 + 72 * v5));
      *(a1 + 8) = 0;
      llvm::SmallVectorTemplateBase<mlir::ODIE::FuncShape,false>::grow(a1, v4);
    }

    v5 = 0;
LABEL_10:
    v9 = *(a2 + 8);
    if (v5 != v9)
    {
      v10 = *a2;
      v11 = *a1;
      v12 = 72 * v5;
      v13 = 72 * v9;
      do
      {
        v14 = &v11[v12 / 0x18];
        v15 = &v10[v12 / 0x18];
        if (SHIBYTE(v10[v12 / 0x18].__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(v14, v15->__r_.__value_.__l.__data_, v15->__r_.__value_.__l.__size_);
        }

        else
        {
          v16 = *&v15->__r_.__value_.__l.__data_;
          v14->__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
          *&v14->__r_.__value_.__l.__data_ = v16;
        }

        v17 = &v11[v12 / 0x18];
        v18 = &v10[v12 / 0x18];
        if (SHIBYTE(v10[v12 / 0x18 + 1].__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(v17 + 1, v18[1].__r_.__value_.__l.__data_, v18[1].__r_.__value_.__l.__size_);
        }

        else
        {
          v19 = *&v18[1].__r_.__value_.__l.__data_;
          v17[1].__r_.__value_.__r.__words[2] = v18[1].__r_.__value_.__r.__words[2];
          *&v17[1].__r_.__value_.__l.__data_ = v19;
        }

        v20 = &v11[v12 / 0x18];
        v20[2].__r_.__value_.__r.__words[0] = 0;
        v20[2].__r_.__value_.__l.__size_ = 0;
        v21 = &v11[v12 / 0x18 + 2];
        v21[2] = 0;
        std::vector<mlir::ODIE::ArgShape>::__init_with_size[abi:nn200100]<mlir::ODIE::ArgShape*,mlir::ODIE::ArgShape*>(v21, v10[v12 / 0x18 + 2].__r_.__value_.__l.__data_, v10[v12 / 0x18 + 2].__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v10[v12 / 0x18 + 2].__r_.__value_.__l.__size_ - v10[v12 / 0x18 + 2].__r_.__value_.__r.__words[0]) >> 3));
        v11 += 3;
        v13 -= 72;
        v10 += 3;
      }

      while (v12 != v13);
    }

    goto LABEL_22;
  }

  return a1;
}

double llvm::SmallVectorImpl<mlir::ODIE::FuncShape>::assignRemote(uint64_t a1, uint64_t a2)
{
  llvm::SmallVectorTemplateBase<mlir::ODIE::FuncShape,false>::destroy_range(*a1, (*a1 + 72 * *(a1 + 8)));
  if (*a1 != a1 + 16)
  {
    free(*a1);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<mlir::ODIE::FuncShape *,mlir::ODIE::FuncShape *,mlir::ODIE::FuncShape *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      *(v5 + 23) = 0;
      *v5 = 0;
      if (*(a4 + 47) < 0)
      {
        operator delete(*(a4 + 24));
      }

      v8 = *(v5 + 24);
      *(a4 + 40) = *(v5 + 5);
      *(a4 + 24) = v8;
      *(v5 + 47) = 0;
      *(v5 + 24) = 0;
      std::vector<mlir::ODIE::ArgShape>::__vdeallocate((a4 + 48));
      *(a4 + 48) = v5[3];
      *(a4 + 64) = *(v5 + 8);
      *(v5 + 6) = 0;
      *(v5 + 7) = 0;
      *(v5 + 8) = 0;
      v5 = (v5 + 72);
      a4 += 72;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t mlir::ODIE::Compiler::CoreML::impl::EnumeratedShapeEntryPointsBase<mlir::ODIE::Compiler::CoreML::anonymous namespace::EnumeratedShapeEntryPointsPass>::EnumeratedShapeEntryPointsBase(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = "builtin.module";
  *(a1 + 24) = 14;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1 + 192;
  *(a1 + 184) = 0x400000000;
  *(a1 + 224) = a1 + 240;
  *(a1 + 232) = 0x400000000;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0x1000000000;
  *(a1 + 328) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *a1 = &unk_286E762F8;
  *&v5 = "Provide a predefined list of input shapes which will be used to generate static alternatives for a dynamic function";
  *(&v5 + 1) = 115;
  mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::ListOption<llvm::cl::desc>((a1 + 336), (a1 + 144), "shapes", 6, &v5);
  *(a1 + 336) = &unk_286E76368;
  *(a1 + 576) = &unk_286E763E8;
  std::vector<mlir::ODIE::FuncShape>::__assign_with_size[abi:nn200100]<mlir::ODIE::FuncShape const*,mlir::ODIE::FuncShape const*>((a1 + 456), *a2, (*a2 + 72 * *(a2 + 8)), *(a2 + 8));
  *(a1 + 584) = 1;
  return a1;
}

void mlir::ODIE::Compiler::CoreML::anonymous namespace::EnumeratedShapeEntryPointsPass::~EnumeratedShapeEntryPointsPass(mlir::ODIE::Compiler::CoreML::_anonymous_namespace_::EnumeratedShapeEntryPointsPass *this)
{
  *this = &unk_286E762F8;
  mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::~ListOption(this + 336);

  mlir::Pass::~Pass(this);
}

{
  *this = &unk_286E762F8;
  mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::~ListOption(this + 336);
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

void *mlir::ODIE::Compiler::CoreML::anonymous namespace::EnumeratedShapeEntryPointsPass::runOnOperation(void *this)
{
  v151[8] = *MEMORY[0x277D85DE8];
  v1 = this[57];
  v2 = this[58];
  if (v2 == v1)
  {
    return this;
  }

  v131[0] = 0;
  v131[1] = 0;
  v132 = 0;
  v115 = this;
  v110 = (this[5] & 0xFFFFFFFFFFFFFFF8);
  v130[0] = *(***(v110 + 3) + 32);
  memset(&v130[1], 0, 24);
  v127 = 0;
  v126 = 0u;
  v128 = v130;
  v129 = 0;
  do
  {
    *&v142 = &p_dst;
    *(&v142 + 1) = 0x300000000;
    v3 = *(v1 + 23);
    v4 = *v1;
    if (v3 >= 0)
    {
      v4 = v1;
    }

    if (v3 < 0)
    {
      v3 = *(v1 + 8);
    }

    v138 = v4;
    v139 = v3;
    llvm::StringRef::split(&v138, &v142, 46, -1, 1);
    v138 = v140;
    v139 = 0x600000000;
    llvm::SmallVectorImpl<mlir::FlatSymbolRefAttr>::resizeImpl<false>(&v138, DWORD2(v142) - 1);
    v6 = v142;
    v7 = v115[5] & 0xFFFFFFFFFFFFFFF8;
    if (DWORD2(v142) != 1)
    {
      v8 = (v142 + 16 * DWORD2(v142));
      v9 = *(***(v7 + 24) + 32);
      v10 = v138;
      v11 = (v142 + 16);
      do
      {
        v12 = *v11;
        v13 = v11[1];
        v11 += 2;
        v137 = 261;
        __dst.__r_.__value_.__r.__words[0] = v12;
        __dst.__r_.__value_.__l.__size_ = v13;
        v14 = mlir::StringAttr::get(v9, &__dst.__r_.__value_.__l.__data_, v5);
        *v10++ = mlir::SymbolRefAttr::get(v14, 0, 0, v15);
      }

      while (v11 != v8);
      v6 = v142;
      v7 = v115[5] & 0xFFFFFFFFFFFFFFF8;
    }

    v16 = *(***(v7 + 24) + 32);
    v18 = *v6;
    v17 = v6[1];
    v19 = v138;
    v20 = v139;
    v137 = 261;
    __dst.__r_.__value_.__r.__words[0] = v18;
    __dst.__r_.__value_.__l.__size_ = v17;
    v21 = mlir::StringAttr::get(v16, &__dst.__r_.__value_.__l.__data_, v5);
    v23 = mlir::SymbolRefAttr::get(v21, v19, v20, v22);
    v133 = v23;
    v24 = *(v1 + 47);
    if (v24 >= 0)
    {
      v25 = *(v1 + 47);
    }

    else
    {
      v25 = *(v1 + 32);
    }

    v26 = *(v1 + 23);
    v27 = v26;
    if ((v26 & 0x80u) != 0)
    {
      v26 = *(v1 + 8);
    }

    if (v25 == v26)
    {
      v28 = (v1 + 24);
      v29 = v24 >= 0 ? (v1 + 24) : *(v1 + 24);
      v30 = v27 >= 0 ? v1 : *v1;
      if (!memcmp(v29, v30, v25))
      {
        v31 = v142 + 16 * DWORD2(v142);
        v32 = *(v31 - 16);
        if (v32)
        {
          v33 = *(v31 - 8);
          if (v33 >= 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          if (v33 >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = *(v31 - 8);
          if (v33)
          {
            memmove(&__dst, v32, v33);
          }

          __dst.__r_.__value_.__s.__data_[v33] = 0;
          if ((*(v1 + 47) & 0x80) == 0)
          {
            goto LABEL_35;
          }
        }

        else
        {
          memset(&__dst, 0, sizeof(__dst));
          if ((v24 & 0x80) == 0)
          {
LABEL_35:
            *v28 = *&__dst.__r_.__value_.__l.__data_;
            *(v1 + 40) = *(&__dst.__r_.__value_.__l + 2);
            v23 = v133;
            goto LABEL_36;
          }
        }

        operator delete(*v28);
        goto LABEL_35;
      }
    }

LABEL_36:
    *&__dst.__r_.__value_.__l.__data_ = v23;
    __dst.__r_.__value_.__r.__words[2] = 0;
    v136 = 0;
    memset(v117, 0, 24);
    llvm::MapVector<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>,llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,llvm::SmallVector<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,0u>>::try_emplace<std::vector<mlir::ODIE::FuncShape>>(&v126, &__dst, &__dst.__r_.__value_.__l.__size_);
    p_size = &__dst.__r_.__value_.__l.__size_;
    std::vector<mlir::ODIE::FuncShape>::__destroy_vector::operator()[abi:nn200100](&p_size);
    p_size = v117;
    std::vector<mlir::ODIE::FuncShape>::__destroy_vector::operator()[abi:nn200100](&p_size);
    v34 = llvm::MapVector<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>,llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,llvm::SmallVector<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,0u>>::operator[](&v126, &v133);
    std::vector<mlir::ODIE::FuncShape>::push_back[abi:nn200100](v34, v1);
    if (v138 != v140)
    {
      free(v138);
    }

    if (v142 != &p_dst)
    {
      free(v142);
    }

    v1 += 72;
  }

  while (v1 != v2);
  if (!v129)
  {
    goto LABEL_130;
  }

  v35 = v128;
  v108 = &v128[4 * v129];
  while (1)
  {
    p_size = *v35;
    v124 = 0;
    v125 = 0;
    v123 = 0;
    std::vector<mlir::ODIE::FuncShape>::__init_with_size[abi:nn200100]<mlir::ODIE::FuncShape*,mlir::ODIE::FuncShape*>(&v123, v35[1], v35[2], 0x8E38E38E38E38E39 * ((v35[2] - v35[1]) >> 3));
    v36 = mlir::SymbolTableCollection::lookupSymbolIn(v131, v110, p_size);
    if (!v36)
    {
      v121 = 0;
LABEL_133:
      v141 = 257;
      mlir::Operation::emitError(&v142, v110, &v138);
      if (v142)
      {
        mlir::Diagnostic::operator<<<40ul>(&v142 + 8, "Shape specified for undefined function ");
        if (v142)
        {
          mlir::Diagnostic::operator<<<mlir::SymbolRefAttr &>(&v142 + 8, &p_size);
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v142);
      v115[5] |= 4uLL;
      *&v142 = &v123;
      goto LABEL_129;
    }

    v37 = *(*(v36 + 48) + 16);
    v38 = v37 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id;
    if (v37 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
    {
      v39 = v36;
    }

    else
    {
      v39 = 0;
    }

    v121 = v39;
    if (!v38)
    {
      goto LABEL_133;
    }

    v109 = v35;
    v40 = (v36 + 16 * ((*(v36 + 44) >> 23) & 1));
    v41 = v40[15];
    v42 = *(v41 + 24);
    __s2 = *(v41 + 16);
    v112 = v40[8];
    v113 = v40[14];
    mlir::Operation::getAttrDictionary(v36);
    v44 = v123;
    if (v123 != v124)
    {
      break;
    }

    *&v142 = &v123;
    std::vector<mlir::ODIE::FuncShape>::__destroy_vector::operator()[abi:nn200100](&v142);
    v35 = v109 + 4;
    if (v109 + 4 == v108)
    {
      if (v129)
      {
        v103 = v128;
        v104 = &v128[4 * v129];
        do
        {
          v142 = *v103;
          p_dst = 0;
          v144 = 0;
          std::vector<mlir::ODIE::FuncShape>::__init_with_size[abi:nn200100]<mlir::ODIE::FuncShape*,mlir::ODIE::FuncShape*>(&v142 + 1, v103[1], v103[2], 0x8E38E38E38E38E39 * ((v103[2] - v103[1]) >> 3));
          v105 = mlir::SymbolTable::lookupSymbolIn(v110, v142);
          if (v105 && *(*(v105 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
          {
            v105 = 0;
          }

          if (*(v105 + 2))
          {
            *(v105 + 2) = 0;
            v107 = *v105;
            v106 = *(v105 + 1);
            *v106 = *v105;
            *(v107 + 8) = v106;
            *v105 = 0;
            *(v105 + 1) = 0;
          }

          mlir::Operation::destroy(v105);
          v138 = &v142 + 8;
          std::vector<mlir::ODIE::FuncShape>::__destroy_vector::operator()[abi:nn200100](&v138);
          v103 += 4;
        }

        while (v103 != v104);
      }

      goto LABEL_130;
    }
  }

  v45 = *(***((v115[5] & 0xFFFFFFFFFFFFFFF8) + 24) + 32);
  LOWORD(v145) = 260;
  *&v142 = v123 + 24;
  v114 = mlir::StringAttr::get(v45, &v142, v43);
  if (*(v114 + 24) == v42 && (!v42 || !memcmp(*(v114 + 16), __s2, v42)))
  {
    v46 = *(***((v115[5] & 0xFFFFFFFFFFFFFFF8) + 24) + 32);
    v141 = 773;
    v138 = __s2;
    v139 = v42;
    v140[0] = "_shape";
    std::to_string(&__dst, 0);
    v48 = v141;
    if (v141)
    {
      if (v141 == 1)
      {
        *&v142 = &__dst;
        v49 = 1;
        v48 = 4;
      }

      else
      {
        if (HIBYTE(v141) != 1)
        {
          v48 = 2;
        }

        v50 = &v138;
        if (HIBYTE(v141) == 1)
        {
          v50 = v138;
        }

        *&v142 = v50;
        *(&v142 + 1) = v139;
        p_dst = &__dst;
        v49 = 4;
      }
    }

    else
    {
      v49 = 1;
    }

    LOBYTE(v145) = v48;
    BYTE1(v145) = v49;
    v114 = mlir::StringAttr::get(v46, &v142, v47);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  v138 = v140;
  v139 = 0x600000000;
  Arguments = mlir::detail::FunctionOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::GraphOp>::getArguments(&v121);
  if (!v52)
  {
LABEL_114:
    v96 = *(*(v121 + 2 * ((*(v121 + 11) >> 23) & 1) + 10) + 8);
    v97 = *(v96 + 12);
    v98 = (*(v96 + 16) + 8 * *(v96 + 8)) & 0xFFFFFFFFFFFFFFF9 | 2;
    v99 = *(**v96 + 32);
    *&v142 = v138 & 0xFFFFFFFFFFFFFFF9 | 2;
    *(&v142 + 1) = v139;
    __dst.__r_.__value_.__r.__words[0] = v98;
    __dst.__r_.__value_.__l.__size_ = v97;
    v100 = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v99, &v142, &__dst);
    v101 = *(v121 + 3);
    v102 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::GraphOp>(v130, *(**v101 + 32));
    *&v142 = v101;
    *(&v142 + 1) = v102;
    p_dst = &v145;
    v144 = 0x400000000;
    v146 = v148;
    v147 = 0x400000000;
    v148[4] = v149;
    v148[5] = 0x400000000;
    v149[8] = 4;
    v149[9] = v150;
    v149[10] = 0x100000000;
    v150[1] = v151;
    v150[2] = 0x100000000;
    v151[1] = 0;
    v151[2] = 0;
    v151[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v151[4] = 0;
    v151[6] = 0;
    mlir::ODIE::Compiler::CoreML::GraphOp::build(v130, &v142, *(v114 + 16), *(v114 + 24), v100, 0, 0, 0, 0, 0, v112, v113);
  }

  v53 = Arguments;
  v54 = 0;
  v55 = Arguments + 8 * v52;
  while (2)
  {
    v120 = v54;
    v56 = *(v44 + 48);
    if (v56 == *(v44 + 56))
    {
      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v138, *(*v53 + 8) & 0xFFFFFFFFFFFFFFF8);
      goto LABEL_103;
    }

    std::vector<int>::vector[abi:nn200100](__p, (v56 + 24 * v54));
    if (__p[0] == __p[1])
    {
      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v138, *(*v53 + 8) & 0xFFFFFFFFFFFFFFF8);
      v70 = 9;
    }

    else
    {
      __dst.__r_.__value_.__r.__words[0] = &__dst.__r_.__value_.__r.__words[2];
      __dst.__r_.__value_.__l.__size_ = 0x600000000;
      llvm::SmallVectorImpl<long long>::append<std::__wrap_iter<int *>,void>(&__dst, __p[0], __p[1]);
      v57 = __dst.__r_.__value_.__r.__words[0];
      v58 = LODWORD(__dst.__r_.__value_.__r.__words[1]);
      v59 = (*(*v53 + 8) & 0xFFFFFFFFFFFFFFF8);
      v60 = *v59;
      v61 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v62 = mlir::detail::InterfaceMap::lookup(v60 + 8, v61);
      v63 = (*(v62 + 8))(v62, v59);
      *&v142 = v57;
      *(&v142 + 1) = v58;
      v117[0] = v63;
      v133 = 0;
      v64 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v63 + 32), &v142, v117, &v133);
      v65 = (*(*v53 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (*(*v65 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v118 = 257;
        mlir::Operation::emitError(&v142, v121, v117);
        if (v142)
        {
          mlir::Diagnostic::operator<<<14ul>(&v142 + 8, "For function ");
          if (v142)
          {
            LODWORD(v133) = 0;
            v134 = p_size;
            v66 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v144, &v133, 1);
            v67 = v144 + 24 * v145;
            v68 = *v66;
            *(v67 + 16) = *(v66 + 16);
            *v67 = v68;
            ++v145;
            if (v142)
            {
              mlir::Diagnostic::operator<<<37ul>(&v142 + 8, " new shape specified for argument # ");
            }
          }
        }

        v69 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v142, &v120);
        if (*v69)
        {
          mlir::Diagnostic::operator<<<36ul>((v69 + 1), " but it is not a ranked tensor type");
        }

        goto LABEL_96;
      }

      v71 = v64;
      v72 = v65[2];
      if (v72 != *(v64 + 16))
      {
        v118 = 257;
        mlir::Operation::emitError(&v142, v121, v117);
        if (v142)
        {
          mlir::Diagnostic::operator<<<14ul>(&v142 + 8, "For function ");
          if (v142)
          {
            LODWORD(v133) = 0;
            v134 = p_size;
            v78 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v144, &v133, 1);
            v79 = v144 + 24 * v145;
            v80 = *v78;
            *(v79 + 16) = *(v78 + 16);
            *v79 = v80;
            ++v145;
            if (v142)
            {
              mlir::Diagnostic::operator<<<17ul>(&v142 + 8, " for argument # ");
            }
          }
        }

        v81 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v142, &v120);
        v82 = v81;
        if (*v81)
        {
          mlir::Diagnostic::operator<<<49ul>((v81 + 1), "  new shape has a different rank. Original rank ");
        }

        v133 = v65[2];
        v83 = mlir::InFlightDiagnostic::operator<<<long long>(v82, &v133);
        v84 = v83;
        if (*v83)
        {
          mlir::Diagnostic::operator<<<11ul>((v83 + 1), " new rank ");
        }

        v116 = *(v71 + 16);
        mlir::InFlightDiagnostic::operator<<<long long>(v84, &v116);
        goto LABEL_96;
      }

      if (v72)
      {
        v73 = *(v64 + 8);
        v74 = v65[1];
        v75 = 8 * v72 - 8;
        while (1)
        {
          v76 = v75;
          if (*v74 != 0x8000000000000000 && *v74 != *v73)
          {
            break;
          }

          ++v74;
          ++v73;
          v75 -= 8;
          if (!v76)
          {
            goto LABEL_86;
          }
        }

        v118 = 257;
        mlir::Operation::emitError(&v142, v121, v117);
        if (v142)
        {
          mlir::Diagnostic::operator<<<14ul>(&v142 + 8, "For function ");
          if (v142)
          {
            LODWORD(v133) = 0;
            v134 = p_size;
            v85 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v144, &v133, 1);
            v86 = v144 + 24 * v145;
            v87 = *v85;
            *(v86 + 16) = *(v85 + 16);
            *v86 = v87;
            ++v145;
            if (v142)
            {
              mlir::Diagnostic::operator<<<17ul>(&v142 + 8, " for argument # ");
            }
          }
        }

        v88 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v142, &v120);
        if (*v88)
        {
          v89 = v88;
          mlir::Diagnostic::operator<<<12ul>((v88 + 1), "  new type ");
          if (*v89)
          {
            LODWORD(v133) = 4;
            v134 = v71;
            v90 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v89 + 3), &v133, 1);
            v91 = v89[3] + 24 * *(v89 + 8);
            v92 = *v90;
            *(v91 + 16) = *(v90 + 16);
            *v91 = v92;
            ++*(v89 + 8);
            if (*v89)
            {
              mlir::Diagnostic::operator<<<51ul>((v89 + 1), " is modifying a static dimension of original type ");
              if (*v89)
              {
                LODWORD(v133) = 4;
                v134 = v65;
                v93 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v89 + 3), &v133, 1);
                v94 = v89[3] + 24 * *(v89 + 8);
                v95 = *v93;
                *(v94 + 16) = *(v93 + 16);
                *v94 = v95;
                ++*(v89 + 8);
              }
            }
          }
        }

LABEL_96:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v142);
        v115[5] |= 4uLL;
        v70 = 1;
      }

      else
      {
LABEL_86:
        llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v138, v64);
        v70 = 0;
      }

      if (__dst.__r_.__value_.__l.__data_ != &__dst.__r_.__value_.__r.__words[2])
      {
        free(__dst.__r_.__value_.__l.__data_);
      }
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v70 == 9 || !v70)
    {
LABEL_103:
      ++v54;
      v53 += 8;
      if (v53 == v55)
      {
        goto LABEL_114;
      }

      continue;
    }

    break;
  }

  if (v138 != v140)
  {
    free(v138);
  }

  *&v142 = &v123;
LABEL_129:
  std::vector<mlir::ODIE::FuncShape>::__destroy_vector::operator()[abi:nn200100](&v142);
LABEL_130:
  llvm::SmallVector<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,0u>::~SmallVector(&v128);
  MEMORY[0x25F891030](v126, 8);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(v131);
  return MEMORY[0x25F891030](v131[0], 8);
}

BOOL mlir::OperationPass<mlir::ModuleOp>::canScheduleOn(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    return 0;
  }

  v2 = *(a2 + 8);
  v3 = *(v2 + 24);
  if (v3 != *(a1 + 24))
  {
    return 0;
  }

  if (v3)
  {
    return memcmp(*(v2 + 16), *(a1 + 16), v3) == 0;
  }

  return 1;
}

void mlir::Pass::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::~ListOption(uint64_t a1)
{
  mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::~ListOption(a1);

  JUMPOUT(0x25F891040);
}

void non-virtual thunk tomlir::Pass::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::~ListOption(uint64_t a1)
{
  mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::~ListOption(a1 - 240);
}

{
  mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::~ListOption(a1 - 240);

  JUMPOUT(0x25F891040);
}

void mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::~ListOption(uint64_t a1)
{
  *a1 = &unk_286E75BB0;
  std::__function::__value_func<void ()(mlir::ODIE::FuncShape const&)>::~__value_func[abi:nn200100](a1 + 208);
  v2 = *(a1 + 176);
  if (v2)
  {
    *(a1 + 184) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 144);
  if (v3)
  {
    *(a1 + 152) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 120);
  std::vector<mlir::ODIE::FuncShape>::__destroy_vector::operator()[abi:nn200100](&v4);
  llvm::cl::Option::~Option(a1);
}

void mlir::Pass::~Pass(mlir::Pass *this)
{
  *this = &unk_286E84940;
  v2 = *(this + 38);
  if (v2)
  {
    *(this + 39) = v2;
    operator delete(v2);
  }

  llvm::StringMap<llvm::cl::Option *,llvm::MallocAllocator>::~StringMap(this + 272);
  v3 = *(this + 28);
  if (v3 != this + 240)
  {
    free(v3);
  }

  v4 = *(this + 22);
  if (v4 != this + 192)
  {
    free(v4);
  }

  v5 = *(this + 15);
  if (v5)
  {
    *(this + 16) = v5;
    operator delete(v5);
  }

  if (*(this + 112) == 1 && (*(this + 76) & 1) == 0)
  {
    free(*(this + 7));
  }
}

uint64_t llvm::MapVector<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>,llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,llvm::SmallVector<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,0u>>::operator[](uint64_t a1, uint64_t *a2)
{
  v12 = *a2;
  v13 = 0;
  llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>::try_emplace<unsigned int const&>(a1, &v12, &v13, &v10);
  v4 = v10;
  if (v11)
  {
    v8 = *a2;
    memset(v9, 0, sizeof(v9));
    memset(v7, 0, sizeof(v7));
    llvm::SmallVectorTemplateBase<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,false>::push_back(a1 + 24, &v8);
    v14 = v9;
    std::vector<mlir::ODIE::FuncShape>::__destroy_vector::operator()[abi:nn200100](&v14);
    v14 = v7;
    std::vector<mlir::ODIE::FuncShape>::__destroy_vector::operator()[abi:nn200100](&v14);
    v5 = *(a1 + 32) - 1;
    *(v4 + 8) = v5;
  }

  else
  {
    v5 = *(v10 + 8);
  }

  return *(a1 + 24) + 32 * v5 + 8;
}

uint64_t mlir::detail::FunctionOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::GraphOp>::getArguments(uint64_t a1)
{
  v1 = (((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40));
  if (*v1 == v1)
  {
    return 0;
  }

  v2 = v1[1];
  if (v2)
  {
    v3 = v2 - 8;
  }

  else
  {
    v3 = 0;
  }

  return *(v3 + 48);
}

void llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(uint64_t result, uint64_t a2)
{
  v4 = *(result + 8);
  if (v4 >= *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v4 + 1, 8);
    LODWORD(v4) = *(result + 8);
  }

  *(*result + 8 * v4) = a2;
  ++*(result + 8);
}

uint64_t mlir::InFlightDiagnostic::operator<<<unsigned long &>(uint64_t a1, uint64_t *a2)
{
  if (*a1)
  {
    v3 = *a2;
    v8 = 5;
    v9 = v3;
    v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 24, &v8, 1);
    v5 = *(a1 + 24) + 24 * *(a1 + 32);
    v6 = *v4;
    *(v5 + 16) = *(v4 + 16);
    *v5 = v6;
    ++*(a1 + 32);
  }

  return a1;
}

uint64_t mlir::InFlightDiagnostic::operator<<<long long>(uint64_t a1, uint64_t *a2)
{
  if (*a1)
  {
    v3 = *a2;
    v8 = 2;
    v9 = v3;
    v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 24, &v8, 1);
    v5 = *(a1 + 24) + 24 * *(a1 + 32);
    v6 = *v4;
    *(v5 + 16) = *(v4 + 16);
    *v5 = v6;
    ++*(a1 + 32);
  }

  return a1;
}

uint64_t mlir::Operation::getParentWithTrait<mlir::OpTrait::SymbolTable>(uint64_t a1)
{
  while (1)
  {
    v2 = *(a1 + 16);
    if (!v2)
    {
      break;
    }

    v3 = *(v2 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v3)
    {
      break;
    }

    a1 = *(v3 + 16);
    if (a1)
    {
      v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID();
      if (!(*(**(a1 + 48) + 32))(*(a1 + 48), v4))
      {
        continue;
      }
    }

    return a1;
  }

  return 0;
}

void llvm::SmallVectorImpl<mlir::FlatSymbolRefAttr>::resizeImpl<false>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      if (*(a1 + 12) < a2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), a2, 8);
        v2 = *(a1 + 8);
      }

      if (v2 != a2)
      {
        bzero((*a1 + 8 * v2), 8 * a2 - 8 * v2);
      }
    }

    *(a1 + 8) = a2;
  }
}

uint64_t llvm::MapVector<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>,llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,llvm::SmallVector<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,0u>>::try_emplace<std::vector<mlir::ODIE::FuncShape>>(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = *a2;
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>::try_emplace<unsigned int>(a1, &v8, &v9, &v10);
  if (v11 != 1)
  {
    return *(a1 + 24) + 32 * *(v10 + 8);
  }

  *(v10 + 8) = *(a1 + 32);
  v7 = a3;
  v8 = a2;
  llvm::SmallVectorImpl<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>>::emplace_back<std::piecewise_construct_t const&,std::tuple<mlir::SymbolRefAttr&&>,std::tuple<std::vector<mlir::ODIE::FuncShape>&&>>(a1 + 24, &std::piecewise_construct, &v8, &v7);
  return *(a1 + 24) + 32 * *(a1 + 32) - 32;
}

void *llvm::SmallVectorImpl<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>>::emplace_back<std::piecewise_construct_t const&,std::tuple<mlir::SymbolRefAttr&&>,std::tuple<std::vector<mlir::ODIE::FuncShape>&&>>(uint64_t a1, uint64_t a2, void **a3, uint64_t *a4)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::SymbolRefAttr&&>,std::tuple<std::vector<mlir::ODIE::FuncShape>&&>>(a1, a2, a3, a4);
  }

  v5 = (*a1 + 32 * v4);
  v6 = *a4;
  *v5 = **a3;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = 0;
  *(v5 + 1) = *v6;
  v5[3] = *(v6 + 16);
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  v7 = (*(a1 + 8) + 1);
  *(a1 + 8) = v7;
  return (*a1 + 32 * v7 - 32);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>::try_emplace<unsigned int>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>::LookupBucketFor<mlir::SymbolRefAttr>(a1, a2, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>::InsertIntoBucketImpl<mlir::SymbolRefAttr>(a1, a2, v12);
    v9 = result;
    *result = *a2;
    *(result + 8) = *a3;
    v10 = 1;
  }

  v11 = *a1 + 16 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>::LookupBucketFor<mlir::SymbolRefAttr>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 16 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>::InsertIntoBucketImpl<mlir::SymbolRefAttr>(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>::grow(a1, v6, a3);
  llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>::LookupBucketFor<mlir::SymbolRefAttr>(a1, a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t *llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>::grow(uint64_t *a1, int a2, unint64_t a3)
{
  v4 = *(a1 + 4);
  v5 = *a1;
  v6 = (a2 - 1) | ((a2 - 1) >> 1);
  v7 = v6 | (v6 >> 2) | ((v6 | (v6 >> 2)) >> 4);
  v8 = ((v7 | (v7 >> 8)) >> 16) | v7 | (v7 >> 8);
  if ((v8 + 1) > 0x40)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 64;
  }

  *(a1 + 4) = v9;
  result = llvm::allocate_buffer((16 * v9), 8uLL);
  *a1 = result;
  if (v5)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>::moveFromOldBuckets(a1, v5, v5 + 16 * v4);

    JUMPOUT(0x25F891030);
  }

  a1[1] = 0;
  v11 = *(a1 + 4);
  if (v11)
  {
    v12 = 0;
    v13 = v11 + 0xFFFFFFFFFFFFFFFLL;
    v14 = v13 & 0xFFFFFFFFFFFFFFFLL;
    v15 = (v13 & 0xFFFFFFFFFFFFFFFLL) - (v13 & 1) + 2;
    v16 = vdupq_n_s64(v14);
    v17 = result + 2;
    do
    {
      v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_25D0A0500)));
      if (v18.i8[0])
      {
        *(v17 - 2) = -4096;
      }

      if (v18.i8[4])
      {
        *v17 = -4096;
      }

      v12 += 2;
      v17 += 4;
    }

    while (v15 != v12);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>::moveFromOldBuckets(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0xFFFFFFFFFFFFFFFLL;
    v9 = v8 & 0xFFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0xFFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 16);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_25D0A0500)));
      if (v13.i8[0])
      {
        *(v12 - 2) = -4096;
      }

      if (v13.i8[4])
      {
        *v12 = -4096;
      }

      v7 += 2;
      v12 += 4;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v14 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>::LookupBucketFor<mlir::SymbolRefAttr>(v5, a2, &v14);
      *v14 = *a2;
      *(v14 + 8) = *(a2 + 8);
      ++*(v5 + 8);
    }

    a2 += 16;
  }

  return result;
}

void *llvm::SmallVectorTemplateBase<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::SymbolRefAttr&&>,std::tuple<std::vector<mlir::ODIE::FuncShape>&&>>(uint64_t a1, uint64_t a2, void **a3, uint64_t *a4)
{
  v14 = 0;
  v7 = a1 + 16;
  v8 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 32, &v14);
  v9 = &v8[4 * *(a1 + 8)];
  v10 = *a4;
  *v9 = **a3;
  v9[1] = 0;
  v9[2] = 0;
  v9[3] = 0;
  *(v9 + 1) = *v10;
  v9[3] = *(v10 + 16);
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  llvm::SmallVectorTemplateBase<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,false>::moveElementsForGrow(a1, v8);
  v11 = v14;
  if (*a1 != v7)
  {
    free(*a1);
  }

  *a1 = v8;
  v12 = (*(a1 + 8) + 1);
  *(a1 + 8) = v12;
  *(a1 + 12) = v11;
  return &v8[4 * v12 - 4];
}

void llvm::SmallVectorTemplateBase<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,false>::moveElementsForGrow(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *a1;
    v4 = *a1 + 32 * v2;
    do
    {
      *a2 = *v3;
      a2[1] = 0;
      a2[2] = 0;
      a2[3] = 0;
      *(a2 + 1) = *(v3 + 8);
      a2[3] = *(v3 + 24);
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      *(v3 + 24) = 0;
      a2 += 4;
      v3 += 32;
    }

    while (v3 != v4);
    v5 = *(a1 + 2);
    if (v5)
    {
      v6 = (*a1 + 32 * v5 - 24);
      v7 = -32 * v5;
      do
      {
        v8 = v6;
        std::vector<mlir::ODIE::FuncShape>::__destroy_vector::operator()[abi:nn200100](&v8);
        v6 -= 4;
        v7 += 32;
      }

      while (v7);
    }
  }
}

__n128 llvm::SmallVectorTemplateBase<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,false>::push_back(uint64_t a1, unint64_t a2)
{
  v3 = llvm::SmallVectorTemplateCommon<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,false>>(a1, a2, 1);
  v4 = (*a1 + 32 * *(a1 + 8));
  v5 = *v3;
  v4[2] = 0;
  v4[3] = 0;
  *v4 = v5;
  v4[1] = 0;
  result = *(v3 + 8);
  *(v4 + 1) = result;
  v4[3] = *(v3 + 24);
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  ++*(a1 + 8);
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>::try_emplace<unsigned int const&>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>::LookupBucketFor<mlir::SymbolRefAttr>(a1, a2, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>::InsertIntoBucketImpl<mlir::SymbolRefAttr>(a1, a2, v12);
    v9 = result;
    *result = *a2;
    *(result + 8) = *a3;
    v10 = 1;
  }

  v11 = *a1 + 16 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  return result;
}

unint64_t llvm::SmallVectorTemplateCommon<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,false>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v4 + a3 > *(a1 + 12))
  {
    v7 = *a1 + 32 * v4;
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorTemplateBase<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,false>::grow(a1, v5);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorTemplateBase<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,false>::grow(a1, v5);
    }
  }

  return a2;
}

void llvm::SmallVectorTemplateBase<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 32, &v6);
  llvm::SmallVectorTemplateBase<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

uint64_t *std::vector<mlir::ODIE::FuncShape>::__init_with_size[abi:nn200100]<mlir::ODIE::FuncShape*,mlir::ODIE::FuncShape*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<mlir::ODIE::FuncShape>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:nn200100]<std::allocator<mlir::ODIE::FuncShape>,mlir::ODIE::FuncShape*,mlir::ODIE::FuncShape*,mlir::ODIE::FuncShape*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = (a4 + v7);
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        v8->__r_.__value_.__r.__words[2] = *(v9 + 2);
        *&v8->__r_.__value_.__l.__data_ = v10;
      }

      v11 = (a4 + v7);
      v12 = a2 + v7;
      if (*(a2 + v7 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v11 + 1, *(v12 + 24), *(v12 + 32));
      }

      else
      {
        v13 = *(v12 + 24);
        v11[1].__r_.__value_.__r.__words[2] = *(v12 + 40);
        *&v11[1].__r_.__value_.__l.__data_ = v13;
      }

      v14 = a4 + v7;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      v15 = (a4 + v7 + 48);
      v15[2] = 0;
      std::vector<mlir::ODIE::ArgShape>::__init_with_size[abi:nn200100]<mlir::ODIE::ArgShape*,mlir::ODIE::ArgShape*>(v15, *(a2 + v7 + 48), *(a2 + v7 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + v7 + 56) - *(a2 + v7 + 48)) >> 3));
      v7 += 72;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

uint64_t mlir::Diagnostic::operator<<<40ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<mlir::SymbolRefAttr &>(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v8 = 0;
  v9 = v3;
  v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v8, 1);
  v5 = *(a1 + 16) + 24 * *(a1 + 24);
  v6 = *v4;
  *(v5 + 16) = *(v4 + 16);
  *v5 = v6;
  ++*(a1 + 24);
  return a1;
}

void llvm::SmallVectorImpl<long long>::append<std::__wrap_iter<int *>,void>(uint64_t result, char *a2, int *a3)
{
  v4 = a2;
  v6 = a3 - a2;
  v7 = *(result + 8);
  v8 = v7 + ((a3 - a2) >> 2);
  if (v8 > *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v8, 8);
    LODWORD(v7) = *(result + 8);
  }

  if (a3 != v4)
  {
    v9 = (*result + 8 * v7);
    do
    {
      v10 = *v4++;
      *v9++ = v10;
    }

    while (v4 != a3);
  }

  *(result + 8) = v7 + (v6 >> 2);
}

uint64_t mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ShapedType>();
      mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 824);
}

uint64_t llvm::getTypeName<mlir::ShapedType>()
{
  {
    llvm::getTypeName<mlir::ShapedType>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ShapedType>();
    unk_27FC17350 = v1;
  }

  return llvm::getTypeName<mlir::ShapedType>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ShapedType>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ShapedType]";
  v6 = 78;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::Diagnostic::operator<<<14ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<37ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<36ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<17ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<49ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<11ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<mlir::RankedTensorType &>(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v8 = 4;
  v9 = v3;
  v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v8, 1);
  v5 = *(a1 + 16) + 24 * *(a1 + 24);
  v6 = *v4;
  *(v5 + 16) = *(v4 + 16);
  *v5 = v6;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<51ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::GraphOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.graph";
    v6[3] = 12;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 864);
}

uint64_t llvm::getTypeName<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>>();
    *algn_27FC17378 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::SymbolTable<Empty>]";
  v6 = 95;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::TransformCastOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TransformCastOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.transform.cast";
    v6[3] = 21;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

char ***llvm::SmallVector<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,0u>::~SmallVector(char ***a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = &v2[4 * v3 - 3];
    v5 = -32 * v3;
    do
    {
      v7 = v4;
      std::vector<mlir::ODIE::FuncShape>::__destroy_vector::operator()[abi:nn200100](&v7);
      v4 -= 4;
      v5 += 32;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

unsigned int *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(unsigned int *result)
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
        v4 = *v3;
        *v3 = 0;
        if (v4)
        {
          MEMORY[0x25F891030](*(v4 + 8), 8);
          result = MEMORY[0x25F891040](v4, 0x1020C40F2E7009FLL);
        }
      }

      v3 += 2;
      v2 -= 16;
    }

    while (v2);
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::impl::createMaterializeEnumeratedShapes()
{
  v1 = *MEMORY[0x277D85DE8];
  operator new();
}

{
  v2 = *MEMORY[0x277D85DE8];
  operator new();
}

void mlir::ODIE::Compiler::CoreML::createMaterializeEnumeratedShapes(uint64_t a1)
{
  v2[9] = *MEMORY[0x277D85DE8];
  v1[0] = v2;
  v1[1] = 0x100000000;
  if (*(a1 + 8))
  {
    llvm::SmallVectorImpl<mlir::ODIE::FuncShape>::operator=(v1, a1);
  }

  mlir::ODIE::Compiler::CoreML::impl::createMaterializeEnumeratedShapes();
}

uint64_t mlir::ODIE::Compiler::CoreML::impl::MaterializeEnumeratedShapesBase<mlir::ODIE::Compiler::CoreML::anonymous namespace::MaterializeEnumeratedShapesPass>::MaterializeEnumeratedShapesBase(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = "builtin.module";
  *(a1 + 24) = 14;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1 + 192;
  *(a1 + 184) = 0x400000000;
  *(a1 + 224) = a1 + 240;
  *(a1 + 232) = 0x400000000;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0x1000000000;
  *(a1 + 328) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *a1 = &unk_286E76498;
  *&v5 = "Provide a predefined list of input shapes which will be used to generate static alternatives for a dynamic function";
  *(&v5 + 1) = 115;
  mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::ListOption<llvm::cl::desc>((a1 + 336), (a1 + 144), "shapes", 6, &v5);
  *(a1 + 336) = &unk_286E76368;
  *(a1 + 576) = &unk_286E763E8;
  std::vector<mlir::ODIE::FuncShape>::__assign_with_size[abi:nn200100]<mlir::ODIE::FuncShape const*,mlir::ODIE::FuncShape const*>((a1 + 456), *a2, (*a2 + 72 * *(a2 + 8)), *(a2 + 8));
  *(a1 + 584) = 1;
  return a1;
}

void mlir::ODIE::Compiler::CoreML::anonymous namespace::MaterializeEnumeratedShapesPass::~MaterializeEnumeratedShapesPass(mlir::ODIE::Compiler::CoreML::_anonymous_namespace_::MaterializeEnumeratedShapesPass *this)
{
  *this = &unk_286E76498;
  mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::~ListOption(this + 336);

  mlir::Pass::~Pass(this);
}

{
  *this = &unk_286E76498;
  mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::~ListOption(this + 336);
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

void *mlir::ODIE::Compiler::CoreML::anonymous namespace::MaterializeEnumeratedShapesPass::runOnOperation(void *this)
{
  v116[8] = *MEMORY[0x277D85DE8];
  v1 = this[57];
  v75 = this[58];
  if (v75 != v1)
  {
    v2 = this;
    v92[0] = 0;
    v92[1] = 0;
    v93 = 0;
    v76 = (this[5] & 0xFFFFFFFFFFFFFFF8);
    v91[0] = *(***(v76 + 3) + 32);
    memset(&v91[1], 0, 24);
    v88 = 0;
    v87 = 0u;
    v89 = v91;
    v90 = 0;
    v85[0] = 0;
    v85[1] = 0;
    v86 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v77 = this;
    do
    {
      v104 = &v105 + 8;
      *&v105 = 0x300000000;
      v3 = *(v1 + 23);
      v4 = *v1;
      if (v3 >= 0)
      {
        v4 = v1;
      }

      if (v3 < 0)
      {
        v3 = v1[1];
      }

      *&__src = v4;
      *(&__src + 1) = v3;
      llvm::StringRef::split(&__src, &v104, 46, -1, 1);
      v101 = v103;
      v102 = 0x600000000;
      llvm::SmallVectorImpl<mlir::FlatSymbolRefAttr>::resizeImpl<false>(&v101, v105 - 1);
      v6 = v104;
      v7 = v2[5] & 0xFFFFFFFFFFFFFFF8;
      if (v105 != 1)
      {
        v8 = v104 + 16 * v105;
        v9 = *(***(v7 + 24) + 32);
        v10 = v101;
        v11 = v104 + 16;
        do
        {
          v12 = *v11;
          v13 = *(v11 + 1);
          v11 += 16;
          LOWORD(v110) = 261;
          *&__src = v12;
          *(&__src + 1) = v13;
          v14 = mlir::StringAttr::get(v9, &__src, v5);
          *v10++ = mlir::SymbolRefAttr::get(v14, 0, 0, v15);
        }

        while (v11 != v8);
        v2 = v77;
        v6 = v104;
        v7 = v77[5] & 0xFFFFFFFFFFFFFFF8;
      }

      v16 = *(***(v7 + 24) + 32);
      v18 = *v6;
      v17 = v6[1];
      v19 = v101;
      v20 = v102;
      LOWORD(v110) = 261;
      *&__src = v18;
      *(&__src + 1) = v17;
      v21 = mlir::StringAttr::get(v16, &__src, v5);
      v94[0] = mlir::SymbolRefAttr::get(v21, v19, v20, v22);
      __src = v94[0];
      v108 = 0;
      v109 = 0;
      v99[1] = 0;
      __p = 0;
      v99[0] = 0;
      llvm::MapVector<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>,llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,llvm::SmallVector<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,0u>>::try_emplace<std::vector<mlir::ODIE::FuncShape>>(&v87, &__src, &__src + 8);
      p_p = &__src + 1;
      std::vector<mlir::ODIE::FuncShape>::__destroy_vector::operator()[abi:nn200100](&p_p);
      p_p = &__p;
      std::vector<mlir::ODIE::FuncShape>::__destroy_vector::operator()[abi:nn200100](&p_p);
      v23 = v94[0];
      *&__src = v94[0];
      BYTE8(__src) = 0;
      __p = 0;
      if ((llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>,mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>::LookupBucketFor<mlir::SymbolRefAttr>(v85[0], v86, v94[0], &__p) & 1) == 0)
      {
        v24 = llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>,mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>::InsertIntoBucketImpl<mlir::SymbolRefAttr>(v85, &__src, __p);
        *v24 = v23;
        *(v24 + 8) = 0;
      }

      if (v1[7] == v1[6])
      {
        *llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>,mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>::operator[](v85, v94) = 1;
      }

      else
      {
        v25 = llvm::MapVector<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>,llvm::DenseMap<mlir::SymbolRefAttr,unsigned int,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,unsigned int>>,llvm::SmallVector<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,0u>>::operator[](&v87, v94);
        std::vector<mlir::ODIE::FuncShape>::push_back[abi:nn200100](v25, v1);
      }

      v26 = mlir::SymbolTableCollection::lookupSymbolIn(v92, v76, v94[0]);
      if (*(*(v26 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      v78[0] = v27;
      if (0xAAAAAAAAAAAAAAABLL * ((v1[7] - v1[6]) >> 3) == *(*(*&v27[4 * ((v27[11] >> 23) & 1) + 20] + 8) + 8) || (*llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>,mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>::operator[](v85, v94) & 1) != 0)
      {
        Arguments = mlir::detail::FunctionOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::GraphOp>::getArguments(v78);
        v30 = 1;
        if (v29)
        {
          v31 = v1[6];
          v32 = v1[7];
          if (v31 != v32)
          {
            v33 = Arguments;
            v34 = v31 + 24;
            v35 = 8 * v29 - 8;
            while (1)
            {
              if (*(v34 - 24) != *(v34 - 16))
              {
                v37 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(*v33 + 8) & 0xFFFFFFFFFFFFFFF8));
                if (!v37 && *(v34 - 24) != *(v34 - 16))
                {
                  break;
                }

                (*(v36 + 24))(v36, v37);
                if (v38 != (*(v34 - 16) - *(v34 - 24)) >> 2)
                {
                  break;
                }
              }

              v30 = 1;
              if (v35)
              {
                v33 += 8;
                v35 -= 8;
                v39 = v34 == v32;
                v34 += 24;
                if (!v39)
                {
                  continue;
                }
              }

              goto LABEL_50;
            }

            v48 = *(*v33 + 32);
            v97 = 257;
            emitDiag(v48, 2, &p_p, &__p);
            if (__p)
            {
              mlir::Diagnostic::operator<<<24ul>(v99, "provided invalid dims {");
            }

            mlir::InFlightDiagnostic::InFlightDiagnostic(&__src, &__p);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&__p);
            v49 = *(v34 - 24);
            v50 = *(v34 - 16);
            if (v49 != v50)
            {
LABEL_41:
              if (__src)
              {
                v51 = *v49;
                LODWORD(__p) = 2;
                v99[0] = v51;
                v52 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v109, &__p, 1);
                v53 = v109 + 24 * v110;
                v54 = *v52;
                *(v53 + 16) = *(v52 + 16);
                *v53 = v54;
                ++v110;
              }

              while (++v49 != v50)
              {
                if (__src)
                {
                  v100 = 261;
                  __p = ", ";
                  v99[0] = 2;
                  mlir::Diagnostic::operator<<(&__src + 8, &__p);
                  goto LABEL_41;
                }
              }
            }

            if (__src)
            {
              mlir::Diagnostic::operator<<<21ul>(&__src + 8, "} for arg with type ");
              if (__src)
              {
                v55 = *(*v33 + 8) & 0xFFFFFFFFFFFFFFF8;
                LODWORD(__p) = 4;
                v99[0] = v55;
                v56 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v109, &__p, 1);
                v57 = v109 + 24 * v110;
                v58 = *v56;
                *(v57 + 16) = *(v56 + 16);
                *v57 = v58;
                ++v110;
              }
            }

            v77[5] |= 4uLL;
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
            v30 = 0;
          }
        }
      }

      else
      {
        v100 = 257;
        mlir::Operation::emitError(&__src, v78[0], &__p);
        if (__src)
        {
          v40 = 0xAAAAAAAAAAAAAAABLL * ((v1[7] - v1[6]) >> 3);
          LODWORD(p_p) = 5;
          v96 = v40;
          v41 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v109, &p_p, 1);
          v42 = v109 + 24 * v110;
          v43 = *v41;
          *(v42 + 16) = *(v41 + 16);
          *v42 = v43;
          ++v110;
          if (__src)
          {
            mlir::Diagnostic::operator<<<43ul>(&__src + 8, " arguments provided for a graph with only ");
            if (__src)
            {
              v44 = *(*(*(v78[0] + 2 * ((*(v78[0] + 11) >> 23) & 1) + 10) + 8) + 8);
              LODWORD(p_p) = 5;
              v96 = v44;
              v45 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v109, &p_p, 1);
              v46 = v109 + 24 * v110;
              v47 = *v45;
              *(v46 + 16) = *(v45 + 16);
              *v46 = v47;
              ++v110;
              if (__src)
              {
                mlir::Diagnostic::operator<<<13ul>(&__src + 8, " argument(s)");
              }
            }
          }
        }

        mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
        v30 = 0;
        v2[5] |= 4uLL;
      }

LABEL_50:
      if (v101 != v103)
      {
        free(v101);
      }

      if (v104 != &v105 + 8)
      {
        free(v104);
      }

      v2 = v77;
      if ((v30 & 1) == 0)
      {
        v70 = 0;
        v71 = 0;
        goto LABEL_66;
      }

      v1 += 9;
    }

    while (v1 != v75);
    v59 = mlir::IntegerType::get(v91[0], 1, 0);
    __src = 0uLL;
    __p = v59;
    v104 = 0;
    v78[4] = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v59 + 32), &__src, &__p, &v104);
    if (v90)
    {
      v104 = *v89;
      v106 = 0;
      v105 = 0uLL;
      std::vector<mlir::ODIE::FuncShape>::__init_with_size[abi:nn200100]<mlir::ODIE::FuncShape*,mlir::ODIE::FuncShape*>(&v105, v89[1], v89[2], 0x8E38E38E38E38E39 * ((v89[2] - v89[1]) >> 3));
      v60 = mlir::SymbolTableCollection::lookupSymbolIn(v92, v76, v104);
      if (v60 && *(*(v60 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
      {
        v61 = (v60 + 64 + 16 * ((*(v60 + 44) >> 23) & 1));
        v63 = v61[6];
        v62 = v61[7];
        v64 = *(v62 + 16);
        v65 = *(v62 + 24);
        v66 = *v61;
        v67 = *(v60 + 24);
        v68 = *(v61[2] + 8);
        v69 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::GraphOp>(v91, *(**v67 + 32));
        *&__src = v67;
        *(&__src + 1) = v69;
        v108 = &v110;
        v109 = 0x400000000;
        v111 = v113;
        v112 = 0x400000000;
        v113[4] = v114;
        v113[5] = 0x400000000;
        v114[8] = 4;
        v114[9] = v115;
        v114[10] = 0x100000000;
        v115[1] = v116;
        v115[2] = 0x100000000;
        v116[1] = 0;
        v116[2] = 0;
        v116[3] = &mlir::detail::TypeIDResolver<void,void>::id;
        v116[4] = 0;
        v116[6] = 0;
        mlir::ODIE::Compiler::CoreML::GraphOp::build(v91, &__src, v64, v65, v68, 0, 0, 0, 0, 0, v66, v63);
      }

      v100 = 257;
      mlir::Operation::emitError(&__src, v76, &__p);
      if (__src)
      {
        mlir::Diagnostic::operator<<<40ul>(&__src + 8, "Shape specified for undefined function ");
        if (__src)
        {
          LODWORD(v101) = 0;
          v102 = v104;
          v72 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v109, &v101, 1);
          v73 = v109 + 24 * v110;
          v74 = *v72;
          *(v73 + 16) = *(v72 + 16);
          *v73 = v74;
          ++v110;
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
      v77[5] |= 4uLL;
      *&__src = &v105;
      std::vector<mlir::ODIE::FuncShape>::__destroy_vector::operator()[abi:nn200100](&__src);
    }

    v71 = v79;
    v70 = v82;
LABEL_66:
    MEMORY[0x25F891030](v71, 8);
    MEMORY[0x25F891030](v70, 8);
    MEMORY[0x25F891030](v85[0], 8);
    llvm::SmallVector<std::pair<mlir::SymbolRefAttr,std::vector<mlir::ODIE::FuncShape>>,0u>::~SmallVector(&v89);
    MEMORY[0x25F891030](v87, 8);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(v92);
    return MEMORY[0x25F891030](v92[0], 8);
  }

  return this;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>,mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>::operator[](uint64_t a1, uint64_t *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>,mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>::LookupBucketFor<mlir::SymbolRefAttr>(*a1, *(a1 + 16), *a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>,mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>::InsertIntoBucketImpl<mlir::SymbolRefAttr>(a1, a2, v7);
    *v5 = *a2;
    *(v5 + 8) = 0;
  }

  return v5 + 1;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp>>::operator[](void *a1, uint64_t *a2)
{
  v10 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp>>::LookupBucketFor<mlir::SymbolRefAttr>(*a1, *(a1 + 4), *a2, &v10);
  v6 = v10;
  if (v4)
  {
    return v6 + 1;
  }

  v11 = v10;
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
    llvm::DenseMap<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp>>::grow(a1, v8, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp>>::LookupBucketFor<mlir::SymbolRefAttr>(*a1, *(a1 + 4), *a2, &v11);
    v7 = *(a1 + 2);
    v6 = v11;
  }

  *(a1 + 2) = v7 + 1;
  if (*v6 != -4096)
  {
    --*(a1 + 3);
  }

  *v6 = *a2;
  v6[1] = 0;
  return v6 + 1;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t **a3)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConstantOp>(a1, *(**a2 + 32));
  v13[0] = a2;
  v13[1] = v6;
  v13[2] = v14;
  v13[3] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[8] = 4;
  v16[9] = v17;
  v16[10] = 0x100000000;
  v17[1] = v18;
  v17[2] = 0x100000000;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v18[4] = 0;
  v18[6] = 0;
  v8 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(a3);
  if (v8)
  {
    v9 = *(v7 + 24);
  }

  else
  {
    v9 = 0;
  }

  mlir::ODIE::Compiler::CoreML::ConstantOp::build(a1, v13, v8, v9);
  v10 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v10);
  if (*(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::OperationState::~OperationState(v13);
  return v11;
}

uint64_t *mlir::TensorType::operator mlir::ShapedType(uint64_t **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = *v1;
    v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return v1;
}

void llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(uint64_t result, uint64_t a2)
{
  v4 = *(result + 8);
  if (v4 >= *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v4 + 1, 8);
    LODWORD(v4) = *(result + 8);
  }

  *(*result + 8 * v4) = a2;
  ++*(result + 8);
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseIntElementsAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t **a3)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConstantOp>(a1, *(**a2 + 32));
  v13[0] = a2;
  v13[1] = v6;
  v13[2] = v14;
  v13[3] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[8] = 4;
  v16[9] = v17;
  v16[10] = 0x100000000;
  v17[1] = v18;
  v17[2] = 0x100000000;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v18[4] = 0;
  v18[6] = 0;
  v8 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(a3);
  if (v8)
  {
    v9 = *(v7 + 24);
  }

  else
  {
    v9 = 0;
  }

  mlir::ODIE::Compiler::CoreML::ConstantOp::build(a1, v13, v8, v9);
  v10 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v10);
  if (*(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::OperationState::~OperationState(v13);
  return v11;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AndOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::AndOp>(a1, *(**a2 + 32));
  v12[0] = a2;
  v12[1] = v8;
  v12[2] = v13;
  v12[3] = 0x400000000;
  v13[4] = v14;
  v13[5] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[8] = 4;
  v15[9] = v16;
  v15[10] = 0x100000000;
  v16[1] = v17;
  v16[2] = 0x100000000;
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v17[4] = 0;
  v17[6] = 0;
  mlir::ODIE::Compiler::CoreML::AndOp::build(a1, v12, *a3, *a4);
  v9 = mlir::Operation::create(v12);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AndOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v12);
  return v10;
}

void mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::IfOp,llvm::ArrayRef<mlir::Type>,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v14[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::IfOp>(a1, *(**a2 + 32));
  v9[0] = a2;
  v9[1] = v8;
  v9[2] = v10;
  v9[3] = 0x400000000;
  v10[4] = v11;
  v10[5] = 0x400000000;
  v11[4] = v12;
  v11[5] = 0x400000000;
  v12[8] = 4;
  v12[9] = v13;
  v12[10] = 0x100000000;
  v13[1] = v14;
  v13[2] = 0x100000000;
  v14[1] = 0;
  v14[2] = 0;
  v14[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v14[4] = 0;
  v14[6] = 0;
  mlir::ODIE::Compiler::CoreML::IfOp::build(a1, v9, *a3 & 0xFFFFFFFFFFFFFFF9 | 2, a3[1], *a4);
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::InvokeOp,mlir::ODIE::Compiler::CoreML::GraphOp &,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, mlir::SymbolOpInterface **a3, uint64_t a4)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::InvokeOp>(a1, *(**a2 + 32));
  v12[0] = a2;
  v12[1] = v8;
  v12[2] = v13;
  v12[3] = 0x400000000;
  v13[4] = v14;
  v13[5] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[8] = 4;
  v15[9] = v16;
  v15[10] = 0x100000000;
  v16[1] = v17;
  v16[2] = 0x100000000;
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v17[4] = 0;
  v17[6] = 0;
  mlir::ODIE::Compiler::CoreML::InvokeOp::build(a1, v12, *a3, *a4 & 0xFFFFFFFFFFFFFFF9, *(a4 + 8));
  v9 = mlir::Operation::create(v12);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InvokeOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v12);
  return v10;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::YieldOp,mlir::ResultRange>(mlir::OpBuilder *a1, uint64_t a2, void *a3)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::YieldOp>(a1, *(**a2 + 32));
  v12[0] = a2;
  v12[1] = v6;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[8] = 4;
  v16[9] = v17;
  v16[10] = 0x100000000;
  v17[1] = v18;
  v17[2] = 0x100000000;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v18[4] = 0;
  v7 = a3[1];
  v8 = *a3 & 0xFFFFFFFFFFFFFFF9;
  v18[6] = 0;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v13, v8 | 4, 0, v8 | 4, v7);
  v9 = mlir::Operation::create(v12);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::YieldOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v12);
  return v10;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>,mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>::LookupBucketFor<mlir::SymbolRefAttr>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 16 * v5);
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
        v6 = (a1 + 16 * (v13 & v4));
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>,mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>::InsertIntoBucketImpl<mlir::SymbolRefAttr>(uint64_t a1, uint64_t *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>::grow(a1, v6, a3);
  llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>,mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>::LookupBucketFor<mlir::SymbolRefAttr>(*a1, *(a1 + 16), *a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t *llvm::DenseMap<mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>::grow(uint64_t a1, int a2, unint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  v6 = (a2 - 1) | ((a2 - 1) >> 1);
  v7 = v6 | (v6 >> 2) | ((v6 | (v6 >> 2)) >> 4);
  v8 = ((v7 | (v7 >> 8)) >> 16) | v7 | (v7 >> 8);
  if ((v8 + 1) > 0x40)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 64;
  }

  *(a1 + 16) = v9;
  result = llvm::allocate_buffer((16 * v9), 8uLL);
  *a1 = result;
  if (v5)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = 0;
      v13 = v11 + 0xFFFFFFFFFFFFFFFLL;
      v14 = v13 & 0xFFFFFFFFFFFFFFFLL;
      v15 = (v13 & 0xFFFFFFFFFFFFFFFLL) - (v13 & 1) + 2;
      v16 = vdupq_n_s64(v14);
      v17 = result + 2;
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_25D0A0500)));
        if (v18.i8[0])
        {
          *(v17 - 2) = -4096;
        }

        if (v18.i8[4])
        {
          *v17 = -4096;
        }

        v12 += 2;
        v17 += 4;
      }

      while (v15 != v12);
    }

    if (v4)
    {
      v19 = 16 * v4;
      v20 = v5;
      do
      {
        v21 = *v20;
        if ((*v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v31 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>,mlir::SymbolRefAttr,BOOL,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BOOL>>::LookupBucketFor<mlir::SymbolRefAttr>(*a1, *(a1 + 16), v21, &v31);
          v22 = v31;
          *v31 = *v20;
          *(v22 + 8) = *(v20 + 8);
          ++*(a1 + 8);
        }

        v20 += 16;
        v19 -= 16;
      }

      while (v19);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v23 + 0xFFFFFFFFFFFFFFFLL;
    v26 = v25 & 0xFFFFFFFFFFFFFFFLL;
    v27 = (v25 & 0xFFFFFFFFFFFFFFFLL) - (v25 & 1) + 2;
    v28 = vdupq_n_s64(v26);
    v29 = result + 2;
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v24), xmmword_25D0A0500)));
      if (v30.i8[0])
      {
        *(v29 - 2) = -4096;
      }

      if (v30.i8[4])
      {
        *v29 = -4096;
      }

      v24 += 2;
      v29 += 4;
    }

    while (v27 != v24);
  }

  return result;
}

uint64_t mlir::Diagnostic::operator<<<43ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<13ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t *llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v2 + 8, v3))
  {
    return 0;
  }

  if (v1)
  {
    v4 = *v1;
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  }

  return v1;
}

uint64_t mlir::Diagnostic::operator<<<24ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::InFlightDiagnostic::InFlightDiagnostic(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = 0;
  v5 = a1 + 8;
  *a1 = v4;
  *(a1 + 200) = 0;
  v6 = a2 + 25;
  if (*(a2 + 200) == 1)
  {
    mlir::Diagnostic::Diagnostic(v5, a2 + 1);
    *(a1 + 200) = 1;
    if (a2[25])
    {
      v7 = a2[23];
      if (v7 != v6)
      {
        free(v7);
      }

      v10 = (a2 + 20);
      std::vector<std::unique_ptr<mlir::Diagnostic>>::__destroy_vector::operator()[abi:nn200100](&v10);
      v10 = (a2 + 17);
      std::vector<std::unique_ptr<char []>>::__destroy_vector::operator()[abi:nn200100](&v10);
      v8 = a2[3];
      if (v8 != a2 + 5)
      {
        free(v8);
      }

      *v6 = 0;
    }
  }

  *a2 = 0;
  return a1;
}

uint64_t mlir::Diagnostic::Diagnostic(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  *(a1 + 16) = a1 + 32;
  v5 = a1 + 16;
  *(a1 + 24) = 0x400000000;
  if (*(a2 + 6))
  {
    llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v5, (a2 + 2));
  }

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = *(a2 + 8);
  *(a1 + 144) = a2[18];
  a2[16] = 0;
  a2[17] = 0;
  a2[18] = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = *(a2 + 19);
  *(a1 + 168) = a2[21];
  a2[19] = 0;
  a2[20] = 0;
  a2[21] = 0;
  *(a1 + 176) = a1 + 192;
  *(a1 + 184) = 0;
  if (*(a2 + 46))
  {
    llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(a1 + 176, (a2 + 22));
  }

  return a1;
}

uint64_t llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<mlir::DiagnosticArgument>::assignRemote(a1, a2);
      return a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a1 + 8);
    if (v7 >= v6)
    {
      if (v6)
      {
        memmove(*a1, v4, 24 * v6);
      }

      goto LABEL_14;
    }

    if (*(a1 + 12) >= v6)
    {
      if (v7)
      {
        memmove(*a1, v4, 24 * v7);
        goto LABEL_12;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6, 24);
    }

    v7 = 0;
LABEL_12:
    v8 = *(a2 + 8) - v7;
    if (v8)
    {
      memcpy((*a1 + 24 * v7), (*a2 + 24 * v7), 24 * v8);
    }

LABEL_14:
    *(a1 + 8) = v6;
    *(a2 + 8) = 0;
  }

  return a1;
}

double llvm::SmallVectorImpl<mlir::DiagnosticArgument>::assignRemote(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 16);
  v4 = *a1;
  if (v4 != v5)
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

uint64_t mlir::Diagnostic::operator<<<21ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<mlir::Type>(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v8 = 4;
  v9 = v3;
  v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v8, 1);
  v5 = *(a1 + 16) + 24 * *(a1 + 24);
  v6 = *v4;
  *(v5 + 16) = *(v4 + 16);
  *v5 = v6;
  ++*(a1 + 24);
  return a1;
}

void llvm::SmallVectorImpl<mlir::Location>::assign(_DWORD *result, unint64_t a2, uint64_t a3)
{
  if (result[3] >= a2)
  {
    v3 = result[2];
    if (v3 >= a2)
    {
      v4 = a2;
    }

    else
    {
      v4 = result[2];
    }

    if (v4)
    {
      v5 = 0;
      v6 = vdupq_n_s64(v4 - 1);
      v7 = (*result + 8);
      do
      {
        v8 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(vdupq_n_s64(v5), xmmword_25D0A0500)));
        if (v8.i8[0])
        {
          *(v7 - 1) = a3;
        }

        if (v8.i8[4])
        {
          *v7 = a3;
        }

        v5 += 2;
        v7 += 2;
      }

      while (((v4 + 1) & 0x1FFFFFFFELL) != v5);
      v3 = result[2];
    }

    v9 = a2 - v3;
    if (a2 > v3)
    {
      v10 = 0;
      v11 = vdupq_n_s64(v9 - 1);
      v12 = (*result + 8 * v3 + 8);
      do
      {
        v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v10), xmmword_25D0A0500)));
        if (v13.i8[0])
        {
          *(v12 - 1) = a3;
        }

        if (v13.i8[4])
        {
          *v12 = a3;
        }

        v10 += 2;
        v12 += 2;
      }

      while (((v9 + 1) & 0xFFFFFFFFFFFFFFFELL) != v10);
    }

    result[2] = a2;
  }

  else
  {
    llvm::SmallVectorTemplateBase<mlir::Location,true>::growAndAssign(result, a2, a3);
  }
}

void llvm::SmallVectorTemplateBase<mlir::Location,true>::growAndAssign(_DWORD *a1, unint64_t a2, uint64_t a3)
{
  a1[2] = 0;
  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 4, a2, 8);
  if (a2)
  {
    v6 = 0;
    v7 = vdupq_n_s64(a2 - 1);
    v8 = (*a1 + 8);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v6), xmmword_25D0A0500)));
      if (v9.i8[0])
      {
        *(v8 - 1) = a3;
      }

      if (v9.i8[4])
      {
        *v8 = a3;
      }

      v6 += 2;
      v8 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v6);
  }

  a1[2] = a2;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp>>::LookupBucketFor<mlir::SymbolRefAttr>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 16 * v5);
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
        v6 = (a1 + 16 * (v13 & v4));
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

uint64_t *llvm::DenseMap<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp>>::grow(uint64_t a1, int a2, unint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  v6 = (a2 - 1) | ((a2 - 1) >> 1);
  v7 = v6 | (v6 >> 2) | ((v6 | (v6 >> 2)) >> 4);
  v8 = ((v7 | (v7 >> 8)) >> 16) | v7 | (v7 >> 8);
  if ((v8 + 1) > 0x40)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 64;
  }

  *(a1 + 16) = v9;
  result = llvm::allocate_buffer((16 * v9), 8uLL);
  *a1 = result;
  if (v5)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = 0;
      v13 = v11 + 0xFFFFFFFFFFFFFFFLL;
      v14 = v13 & 0xFFFFFFFFFFFFFFFLL;
      v15 = (v13 & 0xFFFFFFFFFFFFFFFLL) - (v13 & 1) + 2;
      v16 = vdupq_n_s64(v14);
      v17 = result + 2;
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_25D0A0500)));
        if (v18.i8[0])
        {
          *(v17 - 2) = -4096;
        }

        if (v18.i8[4])
        {
          *v17 = -4096;
        }

        v12 += 2;
        v17 += 4;
      }

      while (v15 != v12);
    }

    if (v4)
    {
      v19 = 16 * v4;
      v20 = v5;
      do
      {
        v21 = *v20;
        if ((*v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v31 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,mlir::ODIE::Compiler::CoreML::GraphOp>>::LookupBucketFor<mlir::SymbolRefAttr>(*a1, *(a1 + 16), v21, &v31);
          v22 = v31;
          *v31 = *v20;
          v22[1] = v20[1];
          ++*(a1 + 8);
        }

        v20 += 2;
        v19 -= 16;
      }

      while (v19);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v23 + 0xFFFFFFFFFFFFFFFLL;
    v26 = v25 & 0xFFFFFFFFFFFFFFFLL;
    v27 = (v25 & 0xFFFFFFFFFFFFFFFLL) - (v25 & 1) + 2;
    v28 = vdupq_n_s64(v26);
    v29 = result + 2;
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v24), xmmword_25D0A0500)));
      if (v30.i8[0])
      {
        *(v29 - 2) = -4096;
      }

      if (v30.i8[4])
      {
        *v29 = -4096;
      }

      v24 += 2;
      v29 += 4;
    }

    while (v27 != v24);
  }

  return result;
}

void llvm::SmallVectorImpl<BOOL>::append<BOOL const*,void>(void *result, _BYTE *__src, _BYTE *a3)
{
  v6 = a3 - __src;
  v7 = result[1];
  v8 = v7 + a3 - __src;
  if (result[2] < v8)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(result, result + 3, v8, 1);
    v7 = result[1];
  }

  if (__src != a3)
  {
    memcpy((*result + v7), __src, v6);
    v7 = result[1];
  }

  result[1] = v7 + v6;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConstantOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.constant";
    v6[3] = 15;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t *mlir::DenseElementsAttr::operator mlir::ElementsAttr(uint64_t **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = *v1;
    v3 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return v1;
}

uint64_t mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ElementsAttr>();
      mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 904);
}

uint64_t llvm::getTypeName<mlir::ElementsAttr>()
{
  {
    llvm::getTypeName<mlir::ElementsAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ElementsAttr>();
    unk_27FC173A0 = v1;
  }

  return llvm::getTypeName<mlir::ElementsAttr>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ElementsAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ElementsAttr]";
  v6 = 80;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::GetShapeOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GetShapeOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.get_shape";
    v6[3] = 16;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::EqualOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::EqualOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.equal";
    v6[3] = 12;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::AndOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AndOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.and";
    v6[3] = 10;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::IfOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IfOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.if";
    v6[3] = 9;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CastOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.cast";
    v6[3] = 11;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::InvokeOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InvokeOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.invoke";
    v6[3] = 13;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::YieldOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::YieldOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.yield";
    v6[3] = 12;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ErrorOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ErrorOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.error";
    v6[3] = 12;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::OutputOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OutputOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.output";
    v6[3] = 13;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::OptimizePass::~OptimizePass(mlir::ODIE::Compiler::CoreML::OptimizePass *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::CoreML::impl::OptimizeBase<mlir::ODIE::Compiler::CoreML::OptimizePass>::getDependentDialects(uint64_t a1, uint64_t **a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  mlir::DialectRegistry::insert<mlir::ODIE::Compiler::CoreML::CoreMLDialect>(a2);
  v4[0] = &unk_286E765A8;
  v4[3] = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::arith::ArithDialect,void>::id, "arith", 5uLL, v4);
  return std::__function::__value_func<mlir::Dialect * ()(mlir::MLIRContext *)>::~__value_func[abi:nn200100](v4);
}

void mlir::ODIE::Compiler::CoreML::OptimizePass::runOnOperation(mlir::ODIE::Compiler::CoreML::OptimizePass *this)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(this + 5);
  if ((v1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(v1 & 0xFFFFFFFFFFFFFFF8);
    v3 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(***(v3 + 24) + 32);
  *__src = 0u;
  *v6 = 0u;
  v7 = v9;
  v8 = 0x600000000;
  v9[6] = 0;
  v9[7] = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0x2800000000;
  v14 = 0;
  v15 = 0;
  v16 = 0x2800000000;
  operator new();
}

uint64_t mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::FunctionOpInterface>();
      mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 952);
}

uint64_t llvm::getTypeName<mlir::FunctionOpInterface>()
{
  {
    llvm::getTypeName<mlir::FunctionOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::FunctionOpInterface>();
    unk_27FC173D0 = v1;
  }

  return llvm::getTypeName<mlir::FunctionOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::FunctionOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::FunctionOpInterface]";
  v6 = 87;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void mlir::ODIE::Compiler::CoreML::SingleInputStackOpToReshapeOp::~SingleInputStackOpToReshapeOp(mlir::ODIE::Compiler::CoreML::SingleInputStackOpToReshapeOp *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::CoreML::SingleInputStackOpToReshapeOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  mlir::ODIE::Compiler::CoreML::StackOp::getODSOperands(&v23, 1u);
  if (v4 != 1)
  {
    return 0;
  }

  v5 = *(mlir::ODIE::Compiler::CoreML::StackOp::getODSOperands(&v23, 1u) + 24);
  if ((*(v5 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v6 = *(*(*(v5 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id ? (*(v5 + 8) & 0xFFFFFFFFFFFFFFF8) : 0;
  }

  else
  {
    v6 = 0;
  }

  if ((*(v23 - 8) & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    return 0;
  }

  result = 0;
  if (*(*(*(v23 - 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v8 = (*(v23 - 8) & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
    v8 = 0;
  }

  if (!v6 || !v8)
  {
    return result;
  }

  if (*(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 0;
  }

  v9 = v6[2];
  if (v9)
  {
    v10 = v6[1];
    v11 = 8 * v9;
    while (*v10 != 0x8000000000000000)
    {
      ++v10;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_18;
      }
    }

    return 0;
  }

LABEL_18:
  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 0;
  }

  v12 = v8[1];
  v13 = v8[2];
  if (v13)
  {
    v14 = 8 * v13;
    v15 = v12;
    while (*v15 != 0x8000000000000000)
    {
      v15 += 2;
      v14 -= 8;
      if (!v14)
      {
        goto LABEL_23;
      }
    }

    return 0;
  }

LABEL_23:
  v16 = *(v23 + 24);
  v25 = v5;
  I32Constant = mlir::ODIE::Compiler::CoreML::createI32Constant(v12, v13, a3, v16);
  v17 = (*(v5 + 8) & 0xFFFFFFFFFFFFFFF8);
  v18 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v17);
  v20 = v18;
  if (v18)
  {
    v18 = (*(v19 + 8))(v19, v18);
  }

  if (v20)
  {
    v21 = v18;
  }

  else
  {
    v21 = v17;
  }

  *&v28 = v12;
  *(&v28 + 1) = v13;
  v26 = 0;
  v27 = v21;
  *&v28 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v21 + 32), &v28, &v27, &v26);
  v22 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType &,mlir::Value &,mlir::Value &>((a3 + 8), v16, &v28, &v25, &I32Constant);
  mlir::RewriterBase::replaceAllUsesWith(a3, (v23 - 16), v22 - 16);
  return 1;
}

void mlir::RewritePattern::~RewritePattern(mlir::RewritePattern *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

uint64_t mlir::RewriterBase::replaceAllUsesWith(uint64_t result, uint64_t **a2, uint64_t a3)
{
  v8 = a3;
  v3 = *a2;
  if (*a2)
  {
    v4 = result;
    do
    {
      v5 = *v3;
      v6 = v3[2];
      v7[0] = v3;
      v7[1] = &v8;
      result = mlir::RewriterBase::modifyOpInPlace<mlir::RewriterBase::replaceAllUsesWith(mlir::Value,mlir::Value)::{lambda(void)#1}>(v4, v6, v7);
      v3 = v5;
    }

    while (v5);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::StackOp::getODSOperands(mlir::ODIE::Compiler::CoreML::StackOp *this, unsigned int a2)
{
  ODSOperandIndexAndLength = mlir::ODIE::Compiler::CoreML::StackOp::getODSOperandIndexAndLength(this, a2);
  if ((*(*this + 46) & 0x80) != 0)
  {
    v4 = *(*this + 72);
  }

  else
  {
    v4 = 0;
  }

  return v4 + 32 * ODSOperandIndexAndLength;
}

char *mlir::ODIE::Compiler::CoreML::createI32Constant(int *a1, uint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v47[8] = *MEMORY[0x277D85DE8];
  Raw = a2;
  v6 = (a3 + 8);
  v7 = mlir::IntegerType::get(*(a3 + 8), 32, 1);
  *&v39 = &Raw;
  *(&v39 + 1) = 1;
  __src = v7;
  v37 = 0;
  v8 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v7 + 32), &v39, &__src, &v37);
  __src = 0;
  v35 = 0;
  v36 = 0;
  v9 = 0;
  if (a2)
  {
    v10 = 8 * a2;
    do
    {
      v11 = *a1;
      if (v9 >= v36)
      {
        v12 = __src;
        v13 = v9 - __src;
        v14 = (v9 - __src) >> 2;
        v15 = v14 + 1;
        if ((v14 + 1) >> 62)
        {
          std::vector<int>::__throw_length_error[abi:nn200100]();
        }

        v16 = v36 - __src;
        if ((v36 - __src) >> 1 > v15)
        {
          v15 = v16 >> 1;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v17 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<int>>(&__src, v17);
        }

        v18 = (v9 - __src) >> 2;
        v19 = (4 * v14);
        v20 = (4 * v14 - 4 * v18);
        *v19 = v11;
        v9 = (v19 + 1);
        memcpy(v20, v12, v13);
        v21 = __src;
        __src = v20;
        v35 = v9;
        v36 = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v9 = v11;
        v9 += 4;
      }

      v35 = v9;
      a1 += 2;
      v10 -= 8;
    }

    while (v10);
  }

  if (v8)
  {
    v22 = *v8;
    v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v24 = mlir::detail::InterfaceMap::lookup(v22 + 8, v23);
    v9 = v35;
  }

  else
  {
    v24 = 0;
  }

  Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v8, v24, __src, v9 - __src);
  v25 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConstantOp>(v6, *(**a4 + 32));
  *&v39 = a4;
  *(&v39 + 1) = v25;
  v40 = &v42;
  v41 = 0x400000000;
  v43[0] = v44;
  v43[1] = 0x400000000;
  v44[4] = v45;
  v44[5] = 0x400000000;
  v45[8] = 4;
  v45[9] = v46;
  v45[10] = 0x100000000;
  v46[1] = v47;
  v46[2] = 0x100000000;
  v47[1] = 0;
  v47[2] = 0;
  v47[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v47[4] = 0;
  v47[6] = 0;
  v27 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&Raw);
  if (v27)
  {
    v28 = *(v26 + 24);
  }

  else
  {
    v28 = 0;
  }

  v37 = v8;
  v29 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>(&v39);
  *v29 = v27;
  v29[1] = v28;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v43, &v37, &Raw);
  v30 = mlir::Operation::create(&v39);
  mlir::OpBuilder::insert(v6, v30);
  v31 = *(*(v30 + 6) + 16);
  mlir::OperationState::~OperationState(&v39);
  if (__src)
  {
    v35 = __src;
    operator delete(__src);
  }

  if (v31 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
  {
    return v30 - 16;
  }

  else
  {
    return -16;
  }
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ReshapeOp>(a1, *(**a2 + 32));
  v14[0] = a2;
  v14[1] = v10;
  v14[2] = v15;
  v14[3] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[8] = 4;
  v17[9] = v18;
  v17[10] = 0x100000000;
  v18[1] = v19;
  v18[2] = 0x100000000;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v19[4] = 0;
  v19[6] = 0;
  mlir::ODIE::Compiler::CoreML::ReshapeOp::build(a1, v14, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReshapeOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v12;
}

uint64_t *llvm::cast<mlir::ShapedType,mlir::TensorType>(uint64_t **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = *v1;
    v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return v1;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ReshapeOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReshapeOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.reshape";
    v6[3] = 14;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::RewriterBase::modifyOpInPlace<mlir::RewriterBase::replaceAllUsesWith(mlir::Value,mlir::Value)::{lambda(void)#1}>(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  (*(*a1 + 40))(a1);
  v6 = *a3;
  v7 = *a3[1];
  v8 = (*a3)[1];
  if (v8)
  {
    v9 = *v6;
    *v8 = *v6;
    if (v9)
    {
      *(v9 + 8) = v6[1];
    }
  }

  v6[3] = v7;
  v10 = *v7;
  *v6 = *v7;
  v6[1] = v7;
  if (v10)
  {
    *(v10 + 8) = v6;
  }

  *v7 = v6;
  v11 = *(*a1 + 48);

  return v11(a1, a2);
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::SingleInputStackOpToReshapeOp>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::SingleInputStackOpToReshapeOp]";
  v6 = 121;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<mlir::RewritePattern>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<mlir::RewritePattern>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<mlir::RewritePattern>>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<mlir::RewritePattern>>::__destruct_at_end[abi:nn200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::RedundantShrinkToExpand::~RedundantShrinkToExpand(mlir::ODIE::Compiler::CoreML::RedundantShrinkToExpand *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::CoreML::RedundantShrinkToExpand::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a2 + 72) + 24);
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 8) & 7;
  if (v4 == 6)
  {
    v5 = v3 + 24 * *(v3 + 16);
    v6 = v5 + 120;
    if (v5 == -120 || *(*(v5 + 168) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp,void>::id)
    {
      return 0;
    }
  }

  else
  {
    v7 = v3 + 16 * v4;
    if (*(*(v7 + 64) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp,void>::id)
    {
      return 0;
    }

    v6 = v7 + 16;
  }

  if (*(*(v6 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp,void>::id)
  {
    v6 = 0;
  }

  v8 = *(*(v6 + 72) + 24);
  v9 = *(a2 + 36);
  v10 = (a2 - 16);
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if ((v11[1] ^ *(v8 + 8)) <= 7)
  {
    mlir::RewriterBase::replaceAllUsesWith(a3, v10, v8);
    return 1;
  }

  return 0;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::RedundantShrinkToExpand>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::RedundantShrinkToExpand]";
  v6 = 115;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void mlir::ODIE::Compiler::CoreML::RedundantExpandToShrink::~RedundantExpandToShrink(mlir::ODIE::Compiler::CoreML::RedundantExpandToShrink *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::CoreML::RedundantExpandToShrink::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a2 + 72) + 24);
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 8) & 7;
  if (v4 == 6)
  {
    v5 = v3 + 24 * *(v3 + 16);
    v6 = v5 + 120;
    if (v5 == -120 || *(*(v5 + 168) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExpandDimsOp,void>::id)
    {
      return 0;
    }
  }

  else
  {
    v7 = v3 + 16 * v4;
    if (*(*(v7 + 64) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExpandDimsOp,void>::id)
    {
      return 0;
    }

    v6 = v7 + 16;
  }

  if (*(*(v6 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExpandDimsOp,void>::id)
  {
    v6 = 0;
  }

  v8 = *(*(v6 + 72) + 24);
  v9 = *(a2 + 36);
  v10 = (a2 - 16);
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if ((v11[1] ^ *(v8 + 8)) <= 7)
  {
    mlir::RewriterBase::replaceAllUsesWith(a3, v10, v8);
    return 1;
  }

  return 0;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::RedundantExpandToShrink>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::RedundantExpandToShrink]";
  v6 = 115;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void mlir::ODIE::Compiler::CoreML::RepeatedTranspose::~RepeatedTranspose(mlir::ODIE::Compiler::CoreML::RepeatedTranspose *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

void mlir::ODIE::Compiler::CoreML::RepeatedTranspose::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v87 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 72);
  v4 = *(v3 + 24);
  v5 = *(v3 + 56);
  v64 = 0;
  v65 = 0;
  v61 = &v64;
  if ((~*(v5 + 8) & 7) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v9 = *(v6 + 8) & 7;
    if (v9 == 6)
    {
      v10 = v6 + 24 * *(v6 + 16);
      v11 = v10 + 120;
      if (v10 == -120)
      {
        return;
      }
    }

    else
    {
      v11 = v6 + 16 * v9 + 16;
    }

    if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v61, v11))
    {
      v12 = (~*(v4 + 8) & 7) != 0 ? v4 : 0;
      if (v12)
      {
        v13 = *(v12 + 8) & 7;
        if (v13 == 6)
        {
          v14 = v12 + 24 * *(v12 + 16);
          v15 = v14 + 120;
          if (v14 == -120 || *(*(v14 + 168) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TransposeOp,void>::id)
          {
            return;
          }
        }

        else
        {
          v16 = v12 + 16 * v13;
          if (*(*(v16 + 64) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TransposeOp,void>::id)
          {
            return;
          }

          v15 = v16 + 16;
        }

        if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TransposeOp,void>::id)
        {
          v17 = v15;
        }

        else
        {
          v17 = 0;
        }

        v18 = *(*(v17 + 72) + 56);
        v64 = 0;
        v65 = 0;
        v61 = &v64;
        if ((~*(v18 + 8) & 7) != 0)
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }

        if (v19)
        {
          v20 = *(v19 + 8) & 7;
          if (v20 == 6)
          {
            v21 = v19 + 24 * *(v19 + 16);
            v22 = v21 + 120;
            if (v21 == -120)
            {
              return;
            }
          }

          else
          {
            v22 = v19 + 16 * v20 + 16;
          }

          if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v61, v22))
          {
            mlir::ODIE::Compiler::extract1DIntVector<int>(v5, &v64);
            if ((v69 & 1) == 0)
            {
              goto LABEL_67;
            }

            v61 = v63;
            v62 = 0xC00000000;
            if (!v65 || (llvm::SmallVectorImpl<int>::operator=(&v61, &v64), (v69 & 1) != 0))
            {
              if (v64 != &v66)
              {
                free(v64);
              }
            }

            mlir::ODIE::Compiler::extract1DIntVector<int>(v18, &v64);
            if (v69)
            {
              v59[0] = v60;
              v59[1] = 0xC00000000;
              if (!v65 || (llvm::SmallVectorImpl<int>::operator=(v59, &v64), (v69 & 1) != 0))
              {
                if (v64 != &v66)
                {
                  free(v64);
                }
              }

              v56 = v58;
              v57 = 0xC00000000;
              llvm::SmallVectorImpl<int>::resizeImpl<false>(&v56, v62);
              if (v62)
              {
                v23 = v61;
                v24 = v59[0];
                v25 = 4 * v62;
                v26 = v56;
                do
                {
                  v27 = *v23++;
                  *v26++ = v24[v27];
                  v25 -= 4;
                }

                while (v25);
              }

              v28 = *(a2 + 24);
              v29 = (*(v5 + 8) & 0xFFFFFFFFFFFFFFF8);
              if (v29)
              {
                v30 = *v29;
                v31 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
                v32 = mlir::detail::InterfaceMap::lookup(v30 + 8, v31);
              }

              else
              {
                v32 = 0;
              }

              Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v29, v32, v56, 4 * v57);
              v33 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConstantOp>(a3 + 8, *(**v28 + 32));
              v64 = v28;
              v65 = v33;
              v66 = v68;
              v67 = 0x400000000;
              v69 = v71;
              v70 = 0x400000000;
              v72 = v74;
              v73 = 0x400000000;
              v75 = 4;
              v76 = &v78;
              v77 = 0x100000000;
              v79 = &v81;
              v80 = 0x100000000;
              v82 = 0;
              v83 = 0;
              v84 = &mlir::detail::TypeIDResolver<void,void>::id;
              v85 = 0;
              v86 = 0;
              v35 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&Raw);
              if (v35)
              {
                v36 = *(v34 + 24);
              }

              else
              {
                v36 = 0;
              }

              __src = v29;
              v37 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>(&v64);
              *v37 = v35;
              v37[1] = v36;
              llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v69, &__src, &v56);
              v38 = mlir::Operation::create(&v64);
              mlir::OpBuilder::insert((a3 + 8), v38);
              v39 = *(*(v38 + 6) + 16);
              mlir::OperationState::~OperationState(&v64);
              if (v39 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
              {
                v40 = v38;
              }

              else
              {
                v40 = 0;
              }

              v41 = *(a2 + 24);
              v42 = *(a2 + 36);
              v43 = (a2 - 16);
              if (v42)
              {
                v44 = v43;
              }

              else
              {
                v44 = 0;
              }

              v45 = v44[1];
              v46 = *(*(v17 + 72) + 24);
              v47 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::TransposeOp>(a3 + 8, *(**v41 + 32));
              v64 = v41;
              v65 = v47;
              v66 = v68;
              v67 = 0x400000000;
              v69 = v71;
              v70 = 0x400000000;
              v72 = v74;
              v73 = 0x400000000;
              v75 = 4;
              v76 = &v78;
              v77 = 0x100000000;
              v79 = &v81;
              v80 = 0x100000000;
              v82 = 0;
              v83 = 0;
              v84 = &mlir::detail::TypeIDResolver<void,void>::id;
              v85 = 0;
              v86 = 0;
              mlir::ODIE::Compiler::CoreML::TransposeOp::build(a3 + 8, &v64, v45 & 0xFFFFFFFFFFFFFFF8, v46, (v40 - 16));
              v48 = mlir::Operation::create(&v64);
              mlir::OpBuilder::insert((a3 + 8), v48);
              v49 = *(*(v48 + 6) + 16);
              v50 = v48 - 16;
              mlir::OperationState::~OperationState(&v64);
              if (v49 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TransposeOp,void>::id)
              {
                v51 = v50;
              }

              else
              {
                v51 = -16;
              }

              mlir::RewriterBase::replaceAllUsesWith(a3, v43, v51);
              if (v56 != v58)
              {
                free(v56);
              }

              if (v59[0] != v60)
              {
                free(v59[0]);
              }

              if (v61 != v63)
              {
                free(v61);
              }
            }

            else
            {
LABEL_67:
              v52 = std::__throw_bad_optional_access[abi:nn200100]();
              mlir::ODIE::Compiler::extract1DIntVector<int>(v52, v53);
            }
          }
        }
      }
    }
  }
}

void mlir::ODIE::Compiler::extract1DIntVector<int>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10[6] = *MEMORY[0x277D85DE8];
  v7 = 0;
  v8 = &v7;
  if ((~*(a1 + 8) & 7) != 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = *(v3 + 8) & 7;
  if (v4 == 6)
  {
    v5 = v3 + 24 * *(v3 + 16);
    v6 = v5 + 120;
    if (v5 == -120)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v6 = v3 + 16 * v4 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v8, v6))
  {
LABEL_14:
    *a2 = 0;
    *(a2 + 64) = 0;
    return;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v7, &v8);
  *a2 = a2 + 16;
  *(a2 + 8) = 0xC00000000;
  if (v9)
  {
    llvm::SmallVectorImpl<int>::operator=(a2, &v8);
  }

  *(a2 + 64) = 1;
  if (v8 != v10)
  {
    free(v8);
  }
}

uint64_t *llvm::cast<mlir::ShapedType,mlir::Type>(uint64_t **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = *v1;
    v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return v1;
}

{
  v1 = *a1;
  if (*a1)
  {
    v2 = *v1;
    v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return v1;
}

BOOL mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(uint64_t ***a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
  if (!(*(**(a2 + 48) + 32))(*(a2 + 48), v4))
  {
    return 0;
  }

  v10[0] = v11;
  v10[1] = 0x100000000;
  mlir::Operation::fold(a2, 0, 0, v10);
  v5 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible((*v10[0] & 0xFFFFFFFFFFFFFFF8));
  v7 = v5 != 0;
  if (v5)
  {
    v8 = *a1;
    if (*a1)
    {
      *v8 = v5;
      v8[1] = v6;
    }
  }

  if (v10[0] != v11)
  {
    free(v10[0]);
  }

  return v7;
}

uint64_t *llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v2 + 8, v3))
  {
    return 0;
  }

  if (v1)
  {
    v4 = *v1;
    v5 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  }

  return v1;
}

void mlir::ODIE::Compiler::extract1DIntVector<int>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a2 + 2;
  a2[1] = 0xC00000000;
  v4 = *(a1 + 24);
  v16[0] = *(a1 + 32);
  v16[1] = v4;
  v17 = 0;
  v5 = (*(*(a1 + 16) + 8))();
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(v5);
  v6 = (*(*(a1 + 16) + 24))();
  if (v7)
  {
    v8 = 8 * v7;
    v9 = 1;
    do
    {
      v10 = *v6++;
      v9 *= v10;
      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    v9 = 1;
  }

  v11 = (*(*(a1 + 16) + 8))();
  mlir::detail::getDenseElementBitWidth(v11);
  if (v9)
  {
    v12 = 1;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v16, &v14);
      LimitedValue = llvm::APInt::getLimitedValue(&v14, 0xFFFFFFFFFFFFFFFFLL);
      llvm::SmallVectorTemplateBase<int,true>::push_back(a2, LimitedValue);
      if (v15 >= 0x41)
      {
        if (v14)
        {
          MEMORY[0x25F891010](v14, 0x1000C8000313F17);
        }
      }

      v17 = v12++;
      --v9;
    }

    while (v9);
  }
}

BOOL mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(unint64_t **a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
  if (!(*(**(a2 + 48) + 32))(*(a2 + 48), v4))
  {
    return 0;
  }

  v9[0] = v10;
  v9[1] = 0x100000000;
  mlir::Operation::fold(a2, 0, 0, v9);
  v5 = (*v9[0] & 0xFFFFFFFFFFFFFFF8);
  if (mlir::DenseIntElementsAttr::classof(v5))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 != 0;
  if (v6 && *a1)
  {
    **a1 = v6;
  }

  if (v9[0] != v10)
  {
    free(v9[0]);
  }

  return v7;
}

void llvm::SmallVectorTemplateBase<int,true>::push_back(uint64_t result, int a2)
{
  v4 = *(result + 8);
  if (v4 >= *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v4 + 1, 4);
    LODWORD(v4) = *(result + 8);
  }

  *(*result + 4 * v4) = a2;
  ++*(result + 8);
}

uint64_t *llvm::APInt::getLimitedValue(uint64_t ***this, unint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= 0x41)
  {
    if (v4 - llvm::APInt::countLeadingZerosSlowCase(this) > 0x40)
    {
      return a2;
    }

    v5 = **this;
  }

  else
  {
    v5 = *this;
  }

  if (v5 <= a2)
  {
    return v5;
  }

  return a2;
}

uint64_t llvm::SmallVectorImpl<int>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<int>::assignRemote(a1, a2);
      return a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a1 + 8);
    if (v7 >= v6)
    {
      if (v6)
      {
        memmove(*a1, v4, 4 * v6);
      }

      goto LABEL_14;
    }

    if (*(a1 + 12) >= v6)
    {
      if (v7)
      {
        memmove(*a1, v4, 4 * v7);
        goto LABEL_12;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6, 4);
    }

    v7 = 0;
LABEL_12:
    v8 = *(a2 + 8) - v7;
    if (v8)
    {
      memcpy((*a1 + 4 * v7), (*a2 + 4 * v7), 4 * v8);
    }

LABEL_14:
    *(a1 + 8) = v6;
    *(a2 + 8) = 0;
  }

  return a1;
}

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

      goto LABEL_12;
    }

    if (*(a1 + 12) >= v4)
    {
      if (v5)
      {
        memmove(*a1, *a2, 4 * v5);
        goto LABEL_10;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4, 4);
    }

    v5 = 0;
LABEL_10:
    v6 = *(a2 + 8) - v5;
    if (v6)
    {
      memcpy((*a1 + 4 * v5), (*a2 + 4 * v5), 4 * v6);
    }

LABEL_12:
    *(a1 + 8) = v4;
  }

  return a1;
}

double llvm::SmallVectorImpl<int>::assignRemote(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 16);
  v4 = *a1;
  if (v4 != v5)
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

void llvm::SmallVectorImpl<int>::resizeImpl<false>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      if (*(a1 + 12) < a2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), a2, 4);
        v2 = *(a1 + 8);
      }

      if (a2 != v2)
      {
        bzero((*a1 + 4 * v2), 4 * (a2 - v2));
      }
    }

    *(a1 + 8) = a2;
  }
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::TransposeOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TransposeOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.transpose";
    v6[3] = 16;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::RepeatedTranspose>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::RepeatedTranspose]";
  v6 = 109;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void mlir::ODIE::Compiler::CoreML::RedundantReshape::~RedundantReshape(mlir::ODIE::Compiler::CoreML::RedundantReshape *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::CoreML::RedundantReshape::matchAndRewrite(uint64_t a1, mlir::Operation *a2, uint64_t a3)
{
  v5 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::TensorType const,llvm::CastInfo<mlir::ShapedType,mlir::TensorType const,void>>::doCastIfPossible((*(*(*(a2 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  if (v5)
  {
    v7 = v5;
    v8 = v6;
    if ((*(v6 + 16))(v6, v5))
    {
      v9 = (*(v8 + 24))(v8, v7);
      if (v10)
      {
        v11 = 8 * v10;
        while (*v9 != 0x8000000000000000)
        {
          ++v9;
          v11 -= 8;
          if (!v11)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
LABEL_7:
        v12 = (*(v8 + 24))(v8, v7);
        v14 = v13;
        mlir::Operation::getUsers(v33, a2);
        v15 = v34;
        v16 = v35;
        v32 = v34;
        v31[0] = v33[0];
        for (v31[1] = v33[1]; v32 != v16; v15 = v32)
        {
          v17 = *(v15 + 16);
          if (v17)
          {
            v18 = *(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReshapeOp,void>::id;
          }

          else
          {
            v18 = 0;
          }

          if (v18)
          {
            v19 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v17 - 8) & 0xFFFFFFFFFFFFFFF8));
            if (v19)
            {
              v21 = v19;
              v22 = v20;
              if ((*(v20 + 16))(v20, v19))
              {
                v23 = (*(v22 + 24))(v22, v21);
                if (v24)
                {
                  v25 = 8 * v24;
                  while (*v23 != 0x8000000000000000)
                  {
                    ++v23;
                    v25 -= 8;
                    if (!v25)
                    {
                      goto LABEL_19;
                    }
                  }
                }

                else
                {
LABEL_19:
                  v26 = (*(v22 + 24))(v22, v21);
                  if (v14 == v27 && !memcmp(v12, v26, 8 * v14))
                  {
                    v30 = *(*(a2 + 9) + 24);
                    v28 = 1;
                    mlir::RewriterBase::replaceAllOpUsesWith(a3, v17, &v30, 1);
                    return v28;
                  }
                }
              }
            }
          }

          mlir::ResultRange::UseIterator::operator++(v31);
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::ShapedType::hasStaticShape(mlir::ShapedType *this)
{
  if (!(*(*(this + 1) + 16))())
  {
    return 0;
  }

  v2 = (*(*(this + 1) + 24))();
  if (!v3)
  {
    return 1;
  }

  v4 = 8 * v3 - 8;
  do
  {
    v5 = *v2++;
    v6 = v5 != 0x8000000000000000;
    v7 = v5 == 0x8000000000000000 || v4 == 0;
    v4 -= 8;
  }

  while (!v7);
  return v6;
}

double mlir::Operation::getUsers@<D0>(uint64_t *__return_ptr a1@<X8>, mlir::Operation *this@<X0>)
{
  v3 = *(this + 9);
  v4 = this - 16;
  if (v3)
  {
    v5 = this - 16;
  }

  else
  {
    v5 = 0;
  }

  v10 = v5;
  *&v11 = v5;
  *(&v11 + 1) = v3;
  v12 = 0;
  if (!v3)
  {
    v7 = 0;
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  mlir::ResultRange::UseIterator::skipOverResultsWithNoUsers(&v10);
  v7 = *(this + 9);
  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_9:
  a1[6] = v7;
  a1[7] = v4;
  a1[8] = v7;
  a1[9] = 0;
  result = *&v10;
  v9 = v11;
  *a1 = v10;
  *(a1 + 1) = v9;
  a1[4] = v12;
  a1[5] = v4;
  return result;
}

uint64_t *llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::TensorType const,llvm::CastInfo<mlir::ShapedType,mlir::TensorType const,void>>::doCastIfPossible(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v2 + 8, v3))
  {
    return 0;
  }

  if (v1)
  {
    v4 = *v1;
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  }

  return v1;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::RedundantReshape>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::RedundantReshape]";
  v6 = 108;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void mlir::ODIE::Compiler::CoreML::RedundantSelectFromStack::~RedundantSelectFromStack(mlir::ODIE::Compiler::CoreML::RedundantSelectFromStack *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::CoreML::RedundantSelectFromStack::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 72);
  v4 = v3[3];
  if ((~*(v4 + 8) & 7) == 0)
  {
    v4 = 0;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = *(v4 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v4 + 24 * *(v4 + 16);
    v9 = v8 + 120;
    if (v8 == -120)
    {
      return 0;
    }
  }

  else
  {
    v9 = v4 + 16 * v7 + 16;
  }

  if (*(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::StackOp,void>::id)
  {
    return 0;
  }

  if (*(*(v9 + 72) + 24) != v3[7])
  {
    return 0;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v3[11], &v11);
  if (v13 != 1)
  {
    return 0;
  }

  mlir::RewriterBase::replaceAllUsesWith(a3, (a2 - 16), *(*(v9 + 72) + 32 * (*v11 + 1) + 24));
  if ((v13 & 1) != 0 && v11 != &v12)
  {
    free(v11);
  }

  return 1;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::RedundantSelectFromStack>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::RedundantSelectFromStack]";
  v6 = 116;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void mlir::ODIE::Compiler::CoreML::RedundantSelectFromConcat::~RedundantSelectFromConcat(mlir::ODIE::Compiler::CoreML::RedundantSelectFromConcat *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::CoreML::RedundantSelectFromConcat::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 72);
  v4 = v3[3];
  if ((~*(v4 + 8) & 7) == 0)
  {
    v4 = 0;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = *(v4 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v4 + 24 * *(v4 + 16);
    v9 = v8 + 120;
    if (v8 == -120)
    {
      return 0;
    }
  }

  else
  {
    v9 = v4 + 16 * v7 + 16;
  }

  if (*(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConcatOp,void>::id)
  {
    return 0;
  }

  if (*(*(v9 + 72) + 24) != v3[7])
  {
    return 0;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v3[11], &v20);
  if (v22 != 1)
  {
    return 0;
  }

  v10 = *(*(v9 + 72) + 32 * (*v20 + 1) + 24);
  if ((~*(v10 + 8) & 7) == 0)
  {
    v10 = 0;
  }

  if (!v10)
  {
    goto LABEL_27;
  }

  v11 = *(v10 + 8) & 7;
  if (v11 == 6)
  {
    v12 = v10 + 24 * *(v10 + 16) + 120;
    if (!v12)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v12 = v10 + 16 * v11 + 16;
  }

  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReshapeOp,void>::id)
  {
    v15 = *(*(v12 + 72) + 24);
    v17 = *(a2 + 36);
    v18 = (a2 - 16);
    v19 = v17 ? v18 : 0;
    v16 = *(v15 + 8);
    if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v19, 0) + 8) ^ v16) <= 7)
    {
      mlir::RewriterBase::replaceAllUsesWith(a3, v18, v15);
      v13 = 1;
      if ((v22 & 1) == 0)
      {
        return v13;
      }

      goto LABEL_28;
    }
  }

LABEL_27:
  v13 = 0;
LABEL_28:
  if (v20 != &v21)
  {
    free(v20);
  }

  return v13;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::RedundantSelectFromConcat>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::RedundantSelectFromConcat]";
  v6 = 117;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void mlir::ODIE::Compiler::CoreML::SquashSliceUpdates::~SquashSliceUpdates(mlir::ODIE::Compiler::CoreML::SquashSliceUpdates *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::CoreML::SquashSliceUpdates::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v72[5] = *MEMORY[0x277D85DE8];
  v5 = *(*(a2 + 72) + 24);
  v62 = v5;
  v63 = a2;
  v6 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::TensorType const,llvm::CastInfo<mlir::ShapedType,mlir::TensorType const,void>>::doCastIfPossible((*(a2 - 8) & 0xFFFFFFFFFFFFFFF8));
  if (!v6)
  {
    return 0;
  }

  v8 = *(a2 + 72);
  v9 = v8[7];
  v10 = v8[11];
  v11 = v8[15];
  v61 = v11;
  v12 = v8[19];
  if ((~*(v12 + 8) & 7) == 0)
  {
    v12 = 0;
  }

  if (!v12)
  {
    return 0;
  }

  v13 = *(v12 + 8) & 7;
  if (v13 == 6)
  {
    v14 = v12 + 24 * *(v12 + 16);
    v15 = v14 + 120;
    if (v14 == -120)
    {
      return 0;
    }
  }

  else
  {
    v15 = v12 + 16 * v13 + 16;
  }

  if (*(*(v15 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SliceUpdateOp,void>::id)
  {
    return 0;
  }

  v18 = *(v15 + 72);
  v19 = v18[3];
  if ((~*(v19 + 8) & 7) == 0)
  {
    v19 = 0;
  }

  if (!v19)
  {
    return 0;
  }

  v20 = *(v19 + 8) & 7;
  if (v20 == 6)
  {
    v21 = v19 + 24 * *(v19 + 16) + 120;
    if (!v21)
    {
      return 0;
    }
  }

  else
  {
    v21 = v19 + 16 * v20 + 16;
  }

  if (*(*(v21 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SliceOp,void>::id)
  {
    return 0;
  }

  v22 = *(v21 + 72);
  if (v22[3] != v5)
  {
    return 0;
  }

  if (v22[7] != v9)
  {
    return 0;
  }

  if (v22[11] != v10)
  {
    return 0;
  }

  if (v22[15] != v11)
  {
    return 0;
  }

  v59[0] = a3;
  v59[1] = &v63;
  v59[2] = &v60;
  if (v18[15] != v11)
  {
    return 0;
  }

  v23 = v18[7];
  v24 = v18[11];
  (*(v7 + 24))(v7, v6);
  v71[0] = v72;
  v71[1] = 0x500000000;
  v69[0] = v70;
  v69[1] = 0x500000000;
  v56 = v25;
  if (v25 < 1)
  {
LABEL_44:
    v16 = 1;
    v47 = mlir::IntegerType::get(*(a3 + 8), 32, 1);
    v48 = *(v63 + 24);
    v57 = mlir::RankedTensorType::get(0, 0, v47, 0);
    v49 = llvm::cast<mlir::ShapedType,mlir::TensorType>(&v57);
    LODWORD(v68) = 0;
    *&v64 = mlir::DenseIntOrFPElementsAttr::getRaw(v49, v50, &v68, 4);
    v58 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>((a3 + 8), v48, &v64);
    v51 = *(v63 + 24);
    v68 = v56;
    *&v64 = mlir::RankedTensorType::get(&v68, 1, v47, 0);
    v57 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::RankedTensorType,mlir::ODIE::Compiler::CoreML::ConstantOp &,llvm::SmallVector<mlir::Value,5u> &>((a3 + 8), v51, &v64, &v58, v71);
    v52 = *(v63 + 24);
    v67 = v56;
    *&v64 = mlir::RankedTensorType::get(&v67, 1, v47, 0);
    v53 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::RankedTensorType,mlir::ODIE::Compiler::CoreML::ConstantOp &,llvm::SmallVector<mlir::Value,5u> &>((a3 + 8), v52, &v64, &v58, v69);
    v54 = *(v63 + 36);
    v55 = v63 - 16;
    if (!v54)
    {
      v55 = 0;
    }

    v64 = v55;
    v65 = v55;
    v66 = v54;
    v67 = *(*(v15 + 72) + 152);
    v68 = v53;
    mlir::RewriterBase::replaceOpWithNewOp<mlir::ODIE::Compiler::CoreML::SliceUpdateOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::detail::TypedValue<mlir::TensorType> &,mlir::ODIE::Compiler::CoreML::ConcatOp &,mlir::ODIE::Compiler::CoreML::ConcatOp &,mlir::detail::TypedValue<mlir::RankedTensorType> &,mlir::detail::TypedValue<mlir::TensorType>>(a3, v63, &v64, &v62, &v57, &v68, &v61, &v67);
  }

  else
  {
    v26 = 0;
    while (1)
    {
      v27 = mlir::ODIE::Compiler::CoreML::SquashSliceUpdates::matchAndRewrite(mlir::ODIE::Compiler::CoreML::SliceUpdateOp,mlir::PatternRewriter &)const::{lambda(mlir::Value,unsigned long)#2}::operator()(v9, v26);
      v29 = v28;
      v30 = mlir::ODIE::Compiler::CoreML::SquashSliceUpdates::matchAndRewrite(mlir::ODIE::Compiler::CoreML::SliceUpdateOp,mlir::PatternRewriter &)const::{lambda(mlir::Value,unsigned long)#2}::operator()(v10, v26);
      v32 = 0;
      if ((v29 & 1) != 0 && (v31 & 1) != 0 && !v27)
      {
        v32 = v30 == 0x7FFFFFFF;
      }

      v33 = mlir::ODIE::Compiler::CoreML::SquashSliceUpdates::matchAndRewrite(mlir::ODIE::Compiler::CoreML::SliceUpdateOp,mlir::PatternRewriter &)const::{lambda(mlir::Value,unsigned long)#2}::operator()(v23, v26);
      v35 = v34;
      v36 = mlir::ODIE::Compiler::CoreML::SquashSliceUpdates::matchAndRewrite(mlir::ODIE::Compiler::CoreML::SliceUpdateOp,mlir::PatternRewriter &)const::{lambda(mlir::Value,unsigned long)#2}::operator()(v24, v26);
      v38 = 0;
      if ((v35 & 1) != 0 && (v37 & 1) != 0 && !v33)
      {
        v38 = v36 == 0x7FFFFFFF;
      }

      if (!v32 && !v38)
      {
        break;
      }

      if (v32 && v38)
      {
        *&v64 = 0;
        I32Constant = mlir::ODIE::Compiler::CoreML::createI32Constant(&v64, 1, a3, *(v63 + 24));
        *&v64 = 0x7FFFFFFFLL;
        v40 = mlir::ODIE::Compiler::CoreML::createI32Constant(&v64, 1, a3, *(v63 + 24));
      }

      else
      {
        if (v32)
        {
          I32Constant = mlir::ODIE::Compiler::CoreML::SquashSliceUpdates::matchAndRewrite(mlir::ODIE::Compiler::CoreML::SliceUpdateOp,mlir::PatternRewriter &)const::{lambda(mlir::Value,unsigned long)#1}::operator()(v59, v23, v26);
          v42 = v41;
          v43 = v24;
        }

        else
        {
          I32Constant = mlir::ODIE::Compiler::CoreML::SquashSliceUpdates::matchAndRewrite(mlir::ODIE::Compiler::CoreML::SliceUpdateOp,mlir::PatternRewriter &)const::{lambda(mlir::Value,unsigned long)#1}::operator()(v59, v9, v26);
          v42 = v44;
          v43 = v10;
        }

        v40 = mlir::ODIE::Compiler::CoreML::SquashSliceUpdates::matchAndRewrite(mlir::ODIE::Compiler::CoreML::SliceUpdateOp,mlir::PatternRewriter &)const::{lambda(mlir::Value,unsigned long)#1}::operator()(v59, v43, v26);
        if ((v42 & 1) == 0 || (v45 & 1) == 0)
        {
          break;
        }
      }

      v46 = v40;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v71, I32Constant);
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v69, v46);
      if (v56 == ++v26)
      {
        goto LABEL_44;
      }
    }

    v16 = 0;
  }

  if (v69[0] != v70)
  {
    free(v69[0]);
  }

  if (v71[0] != v72)
  {
    free(v71[0]);
  }

  return v16;
}

unint64_t mlir::ODIE::Compiler::CoreML::SquashSliceUpdates::matchAndRewrite(mlir::ODIE::Compiler::CoreML::SliceUpdateOp,mlir::PatternRewriter &)const::{lambda(mlir::Value,unsigned long)#1}::operator()(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v37 = 0;
  v38 = &v37;
  v6 = *(a2 + 8) & 7;
  if (v6 == 7)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = *(v7 + 8) & 7;
  if (v8 == 6)
  {
    v9 = v7 + 24 * *(v7 + 16);
    v10 = v9 + 120;
    if (v9 == -120)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v10 = v7 + 16 * v8 + 16;
  }

  if (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v38, v10))
  {
    mlir::DenseElementsAttr::tryGetValues<int,void>(&v37, &v38);
    if (v39)
    {
      v11 = 0;
    }

    else
    {
      v11 = v40 + a3;
    }

    v38 = *(v38 + v11);
    v12 = *a1;
    v13 = *(**(a1 + 8) + 24);
    goto LABEL_14;
  }

  v6 = *(a2 + 8) & 7;
LABEL_16:
  if (v6 == 7)
  {
    v16 = 0;
  }

  else
  {
    v16 = a2;
  }

  if (!v16)
  {
    LOBYTE(v15) = 0;
    return v16 | v15;
  }

  v17 = *(v16 + 8) & 7;
  if (v17 == 6)
  {
    v18 = v16 + 24 * *(v16 + 16);
    v19 = v18 + 120;
    if (v18 == -120)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v19 = v16 + 16 * v17 + 16;
  }

  v20 = *(*(v19 + 48) + 16);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConcatOp,void>::id)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  if (v20 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConcatOp,void>::id)
  {
    goto LABEL_48;
  }

  mlir::ODIE::Compiler::CoreML::SquashSliceUpdates::matchAndRewrite(mlir::ODIE::Compiler::CoreML::SliceUpdateOp,mlir::PatternRewriter &)const::{lambda(mlir::ODIE::Compiler::CoreML::ConcatOp,unsigned long)#1}::operator()(v35, v19, a3);
  if (v36 != 1)
  {
    goto LABEL_48;
  }

  v15 = v35[0];
  v22 = v35[1];
  v34 = 0;
  v38 = &v34;
  v23 = *(v35[0] + 8);
  if ((~*(v35[0] + 8) & 7) != 0)
  {
    v24 = v35[0];
  }

  else
  {
    v24 = 0;
  }

  if (!v24)
  {
    goto LABEL_44;
  }

  v25 = *(v24 + 8) & 7;
  if (v25 == 6)
  {
    v26 = v24 + 24 * *(v24 + 16);
    v27 = v26 + 120;
    if (v26 == -120)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v27 = v24 + 16 * v25 + 16;
  }

  if (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v38, v27))
  {
    mlir::DenseElementsAttr::tryGetValues<int,void>(&v34, &v38);
    if (v39)
    {
      v28 = 0;
    }

    else
    {
      v28 = v40 + v22;
    }

    v38 = *(v38 + v28);
    v12 = *a1;
    v13 = *(v21 + 24);
LABEL_14:
    I32Constant = mlir::ODIE::Compiler::CoreML::createI32Constant(&v38, 1, v12, v13);
    LOBYTE(v15) = I32Constant;
    v16 = I32Constant & 0xFFFFFFFFFFFFFF00;
    return v16 | v15;
  }

  v23 = *(v15 + 8);
LABEL_44:
  v30 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((v23 & 0xFFFFFFFFFFFFFFF8));
  if (!v30)
  {
    LOBYTE(v15) = 0;
    goto LABEL_49;
  }

  v31 = v29;
  (*(v29 + 24))(v29, v30);
  if (v32 != 1 || *(*(v31 + 24))(v31, v30) != 1)
  {
LABEL_48:
    LOBYTE(v15) = 0;
LABEL_49:
    v16 = 0;
    return v16 | v15;
  }

  v16 = v15 & 0xFFFFFFFFFFFFFF00;
  return v16 | v15;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::RankedTensorType,mlir::ODIE::Compiler::CoreML::ConstantOp &,llvm::SmallVector<mlir::Value,5u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConcatOp>(a1, *(**a2 + 32));
  v14[0] = a2;
  v14[1] = v10;
  v14[2] = v15;
  v14[3] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[8] = 4;
  v17[9] = v18;
  v17[10] = 0x100000000;
  v18[1] = v19;
  v18[2] = 0x100000000;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v19[4] = 0;
  v19[6] = 0;
  mlir::ODIE::Compiler::CoreML::ConcatOp::build(a1, v14, *a3, *a4 - 16, *a5 & 0xFFFFFFFFFFFFFFF9, *(a5 + 8));
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConcatOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v12;
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::ODIE::Compiler::CoreML::SliceUpdateOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::detail::TypedValue<mlir::TensorType> &,mlir::ODIE::Compiler::CoreML::ConcatOp &,mlir::ODIE::Compiler::CoreML::ConcatOp &,mlir::detail::TypedValue<mlir::RankedTensorType> &,mlir::detail::TypedValue<mlir::TensorType>>(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t *a4, void *a5, void *a6, uint64_t *a7, uint64_t *a8)
{
  v31[8] = *MEMORY[0x277D85DE8];
  v16 = *(a2 + 24);
  updated = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SliceUpdateOp>(a1 + 8, *(**v16 + 32));
  v26[0] = v16;
  v26[1] = updated;
  v26[2] = v27;
  v26[3] = 0x400000000;
  v27[4] = v28;
  v27[5] = 0x400000000;
  v28[4] = v29;
  v28[5] = 0x400000000;
  v29[8] = 4;
  v29[9] = v30;
  v29[10] = 0x100000000;
  v30[1] = v31;
  v30[2] = 0x100000000;
  v31[1] = 0;
  v31[2] = 0;
  v31[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v31[4] = 0;
  v31[6] = 0;
  v18 = a3[1];
  v24[0] = *a3;
  v24[1] = v18;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(v25, v24);
  mlir::ODIE::Compiler::CoreML::SliceUpdateOp::build(a1 + 8, v26, v25[0], v25[1], *a4, *a5 - 16, *a6 - 16, *a7, *a8);
  v19 = mlir::Operation::create(v26);
  mlir::OpBuilder::insert((a1 + 8), v19);
  v20 = *(*(v19 + 6) + 16);
  mlir::OperationState::~OperationState(v26);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SliceUpdateOp,void>::id)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(*a1 + 8);

  return v22(a1, a2, v21);
}

unint64_t mlir::ODIE::Compiler::CoreML::SquashSliceUpdates::matchAndRewrite(mlir::ODIE::Compiler::CoreML::SliceUpdateOp,mlir::PatternRewriter &)const::{lambda(mlir::Value,unsigned long)#2}::operator()(uint64_t a1, unint64_t a2)
{
  v24 = 0;
  v25 = &v24;
  v4 = *(a1 + 8) & 7;
  if (v4 == 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1;
  }

  if (v5)
  {
    v6 = *(v5 + 8) & 7;
    if (v6 == 6)
    {
      v7 = v5 + 24 * *(v5 + 16);
      v8 = v7 + 120;
      if (v7 == -120)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v8 = v5 + 16 * v6 + 16;
    }

    if (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v25, v8))
    {
      v9 = &v24;
      goto LABEL_11;
    }

    v4 = *(a1 + 8) & 7;
  }

LABEL_16:
  if (v4 == 7)
  {
    v12 = 0;
  }

  else
  {
    v12 = a1;
  }

  if (!v12)
  {
    LOBYTE(v11) = 0;
    return v11 | (v12 << 8);
  }

  v13 = *(v12 + 8) & 7;
  if (v13 == 6)
  {
    v14 = v12 + 24 * *(v12 + 16);
    v15 = v14 + 120;
    if (v14 == -120)
    {
      LOBYTE(v11) = 0;
LABEL_37:
      v12 = 0;
      return v11 | (v12 << 8);
    }
  }

  else
  {
    v15 = v12 + 16 * v13 + 16;
  }

  if (*(*(v15 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConcatOp,void>::id)
  {
    goto LABEL_36;
  }

  mlir::ODIE::Compiler::CoreML::SquashSliceUpdates::matchAndRewrite(mlir::ODIE::Compiler::CoreML::SliceUpdateOp,mlir::PatternRewriter &)const::{lambda(mlir::ODIE::Compiler::CoreML::ConcatOp,unsigned long)#1}::operator()(v22, v15, a2);
  if (v23 != 1)
  {
    goto LABEL_36;
  }

  v16 = v22[0];
  a2 = v22[1];
  v21 = 0;
  v25 = &v21;
  if ((~*(v22[0] + 8) & 7) == 0)
  {
    v16 = 0;
  }

  if (!v16)
  {
    goto LABEL_36;
  }

  v17 = *(v16 + 8) & 7;
  if (v17 == 6)
  {
    v18 = v16 + 24 * *(v16 + 16);
    v19 = v18 + 120;
    if (v18 == -120)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v19 = v16 + 16 * v17 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v25, v19))
  {
LABEL_36:
    LOBYTE(v11) = 0;
    goto LABEL_37;
  }

  v9 = &v21;
LABEL_11:
  mlir::DenseElementsAttr::tryGetValues<int,void>(v9, &v25);
  if (v26)
  {
    v10 = 0;
  }

  else
  {
    v10 = v27 + a2;
  }

  v11 = *(v25 + v10);
  v12 = v11 >> 8;
  return v11 | (v12 << 8);
}

void mlir::ODIE::Compiler::CoreML::SquashSliceUpdates::matchAndRewrite(mlir::ODIE::Compiler::CoreML::SliceUpdateOp,mlir::PatternRewriter &)const::{lambda(mlir::ODIE::Compiler::CoreML::ConcatOp,unsigned long)#1}::operator()(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v17 = a2;
  if (*((*(a2 - 8) & 0xFFFFFFFFFFFFFFF8) + 16) == 1)
  {
    ODSOperands = mlir::ODIE::Compiler::CoreML::ConcatOp::getODSOperands(&v17, 1u);
    v18 = v20;
    v19 = 0x600000000;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v18, ODSOperands, 0, ODSOperands, v6);
    if (v19)
    {
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v9 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(*(v18 + v8) + 8) & 0xFFFFFFFFFFFFFFF8));
        if (!v9 || (v11 = v9, v12 = v10, (*(v10 + 24))(v10, v9), v13 != 1))
        {
          *a1 = 0;
          *(a1 + 16) = 0;
          v16 = v18;
          goto LABEL_14;
        }

        v14 = (*(v12 + 24))(v12, v11);
        v15 = *v14 + v7;
        if (v15 > a3)
        {
          break;
        }

        ++v8;
        v7 += *v14;
        if (v8 >= v19)
        {
          goto LABEL_13;
        }
      }

      v15 = v7;
    }

    else
    {
      v8 = 0;
      v15 = 0;
    }

LABEL_13:
    v16 = v18;
    *a1 = *(v18 + v8);
    *(a1 + 8) = a3 - v15;
    *(a1 + 16) = 1;
LABEL_14:
    if (v16 != v20)
    {
      free(v16);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 16) = 0;
  }
}

uint64_t mlir::DenseElementsAttr::tryGetValues<int,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*(*a1 + 16) + 8))();
  result = isValidIntOrFloat(v4, 4, 1, 1u);
  if (result)
  {
    v6 = *a1;
    v7 = *(*a1 + 32);
    v8 = *(*a1 + 24);
    v9 = *(*a1 + 8);
    v10 = *(v6 + 16);
    result = (*(v10 + 24))(v10, v9);
    if (v11)
    {
      v12 = 8 * v11;
      v13 = 1;
      do
      {
        v14 = *result;
        result += 8;
        v13 *= v14;
        v12 -= 8;
      }

      while (v12);
    }

    else
    {
      v13 = 1;
    }

    *a2 = v7;
    *(a2 + 8) = v8;
    *(a2 + 16) = 0;
    *(a2 + 24) = v7;
    *(a2 + 32) = v8;
    *(a2 + 40) = v13;
    v15 = 1;
    *(a2 + 48) = v9;
    *(a2 + 56) = v10;
  }

  else
  {
    v15 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v15;
  return result;
}

void llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a5 - a3;
  v10 = *(result + 8);
  v11 = a5 - a3 + v10;
  if (v11 > *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v11, 8);
    v10 = *(result + 8);
  }

  v12 = a5 - a3;
  if (a5 != a3)
  {
    v13 = (*result + 8 * v10);
    v14 = (a2 + 32 * a3 + 24);
    do
    {
      v15 = *v14;
      v14 += 4;
      *v13++ = v15;
      --v12;
    }

    while (v12);
    LODWORD(v10) = *(result + 8);
  }

  *(result + 8) = v10 + v9;
}

uint64_t mlir::ODIE::Compiler::CoreML::ConcatOp::getODSOperands(mlir::ODIE::Compiler::CoreML::ConcatOp *this, unsigned int a2)
{
  ODSOperandIndexAndLength = mlir::ODIE::Compiler::CoreML::ConcatOp::getODSOperandIndexAndLength(this, a2);
  if ((*(*this + 46) & 0x80) != 0)
  {
    v4 = *(*this + 72);
  }

  else
  {
    v4 = 0;
  }

  return v4 + 32 * ODSOperandIndexAndLength;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConcatOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConcatOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.concat";
    v6[3] = 13;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SliceUpdateOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SliceUpdateOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.slice_update";
    v6[3] = 19;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t *mlir::TypeRange::TypeRange<mlir::ResultRange>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    v4 = *(v2 + 8) & 7;
    if (v2)
    {
      v5 = v4 == 6;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      v6 = a2[1];
LABEL_10:
      v2 -= 24 * v6;
      goto LABEL_12;
    }

    v7 = (5 - v4);
    v6 = v3 - v7;
    if (v3 > v7)
    {
      v2 -= 16 * v7;
      goto LABEL_10;
    }

    v2 -= 16 * v3;
  }

LABEL_12:
  v8 = a2[3] - v3;
  *result = 0;
  result[1] = v8;
  if (v8)
  {
    v9 = v2 & 0xFFFFFFFFFFFFFFF8;
    v5 = v9 == 0;
    v10 = v9 | 6;
    if (v5)
    {
      v10 = 0;
    }

    *result = v10;
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::SquashSliceUpdates>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::SquashSliceUpdates]";
  v6 = 110;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void mlir::ODIE::Compiler::CoreML::RedundantWriteHandle::~RedundantWriteHandle(mlir::ODIE::Compiler::CoreML::RedundantWriteHandle *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::CoreML::RedundantWriteHandle::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 72);
  v4 = v3[11];
  v5 = v3[7];
  if ((~*(v5 + 8) & 7) != 0)
  {
    v6 = v3[7];
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = v6[1] & 7;
  if (v7 == 6)
  {
    v6 += 3 * v6[2] + 15;
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 += 2 * v7 + 2;
  }

  if (*(v6[6] + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReadHandleOp,void>::id)
  {
    v6 = 0;
  }

LABEL_11:
  if ((~*(v4 + 8) & 7) != 0)
  {
    v8 = v3[11];
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    return 0;
  }

  v9 = v3[3];
  v10 = *(v8 + 8) & 7;
  if (v10 == 6)
  {
    v11 = v8 + 24 * *(v8 + 16) + 120;
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    v11 = v8 + 16 * v10 + 16;
  }

  result = 0;
  v13 = *(*(v11 + 48) + 16);
  if (v13 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReadHandleOp,void>::id)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v13 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReadHandleOp,void>::id && v6 == v11)
    {
      if (v9 == *(v6[9] + 24))
      {
        v15 = *v5;
        if (v15)
        {
          v16 = 1;
          do
          {
            v15 = *v15;
            --v16;
          }

          while (v15);
          v17 = v16 != 0;
        }

        else
        {
          LOBYTE(v17) = 1;
        }

        v18 = *v4;
        if (*v4)
        {
          v19 = 1;
          do
          {
            v18 = *v18;
            --v19;
          }

          while (v18);
          if (v19)
          {
            LOBYTE(v17) = 1;
          }

          if (!v17)
          {
            mlir::RewriterBase::replaceAllUsesWith(a3, (a2 - 16), v4);
            return 1;
          }
        }
      }

      return 0;
    }
  }

  return result;
}